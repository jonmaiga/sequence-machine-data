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
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
# A366600: a(n) = (1 + A033264(n))*a(A053645(n)) for n > 0 with a(0) = 1.

The programs for A366600, the canonical program `A366600.P10655762037839471457` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366600 has offset 0).

The definition of A366600 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033264, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366600.P10655762037839471457

`(1+A033264(n))*a(A053645(n))` with `a(0)=1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366600

/-- `(1+A033264(n))*a(A053645(n))` -/
def P10655762037839471457.Spec : Prop :=
  ∀ n, P10655762037839471457.a n = A366600 n

theorem P10655762037839471457.correct : P10655762037839471457.Spec := by
  intro n
  simp only [A366600]

end A366600

/-! ## A366600.P3234373056416316775

`A243499(A090078(n))`
-/

namespace A366600.P3234373056416316775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (A090078 n).toNat

end

end A366600.P3234373056416316775

namespace A366600

/-- `A243499(A090078(n))` -/
def P3234373056416316775.Spec : Prop :=
  ∀ n, P3234373056416316775.a n = A366600 n

end A366600

/-! ## A366600.P1866765334640591113

`A278222(floor(n/(xor(n, n+1)+1))*A016116(n))`
-/

namespace A366600.P1866765334640591113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ * A016116 n).toNat

end

end A366600.P1866765334640591113

namespace A366600

/-- `A278222(floor(n/(xor(n, n+1)+1))*A016116(n))` -/
def P1866765334640591113.Spec : Prop :=
  ∀ n, P1866765334640591113.a n = A366600 n

end A366600

/-! ## A366600.P2592881502764208975

`A278222(floor(n/(xor(n, n+1)+1))*A060546(n))`
-/

namespace A366600.P2592881502764208975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ * A060546 n).toNat

end

end A366600.P2592881502764208975

namespace A366600

/-- `A278222(floor(n/(xor(n, n+1)+1))*A060546(n))` -/
def P2592881502764208975.Spec : Prop :=
  ∀ n, P2592881502764208975.a n = A366600 n

end A366600

/-! ## A366600.P12105414801467665023

`A278222(floor(n/(xor(n, n+1)+1))%A265151(n+1))`
-/

namespace A366600.P12105414801467665023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (Int.tmod ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ (A265151 (n + 1))).toNat

end

end A366600.P12105414801467665023

namespace A366600

/-- `A278222(floor(n/(xor(n, n+1)+1))%A265151(n+1))` -/
def P12105414801467665023.Spec : Prop :=
  ∀ n, P12105414801467665023.a n = A366600 n

end A366600

/-!
# A366601: a(0) = 0. For a(n-1) a novel term a(n) = a(A025480(a(n-1))), and if a(n-1) has occurred k (>1) times, a(n) = k-1 (the number of repetitions of a(n-1) in all prior terms).

The programs for A366601, there is no canonical definition to state claims against.
-/

/-! ## A366601.P14149258535876276903

`gcd(A000120(A184983(n)), A326834(n))`
-/

namespace A366601.P14149258535876276903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A184983 n).toNat) (A326834 n)

end

end A366601.P14149258535876276903

/-! ## A366601.P11355548442012703051

`A334153(A320009(n)+A002113(n+1)+1)`
-/

namespace A366601.P11355548442012703051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334153 (A320009 n + A002113 (n + 1) + 1).toNat

end

end A366601.P11355548442012703051

/-! ## A366601.P12729041348411113578

`A376773(A376773(n+1))%A267110(n+2)`
-/

namespace A366601.P12729041348411113578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376773 (A376773 (n + 1)).toNat) (A267110 (n + 2))

end

end A366601.P12729041348411113578

/-! ## A366601.P14347681734890968597

`A003108(3*n+1)%A060502(A015954(n+1))`
-/

namespace A366601.P14347681734890968597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003108 (3 * n + 1)) (A060502 (A015954 (n + 1)).toNat)

end

end A366601.P14347681734890968597

/-! ## A366601.P14102151256274652624

`A239241(n+1)%A002577(A083824(n))`
-/

namespace A366601.P14102151256274652624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239241 (n + 1)) (A002577 (A083824 n).toNat)

end

end A366601.P14102151256274652624

/-!
# A366602: Number of divisors of 4^n-1.

The programs for A366602, there is no canonical definition to state claims against.
-/

/-! ## A366602.P128364681725489184

`A046801(2*(n+1))`
-/

namespace A366602.P128364681725489184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046801 (2 * (n + 1))

end

end A366602.P128364681725489184

/-! ## A366602.P2731036423606884362

`∑{d}[n+1, A059886(#)]`
-/

namespace A366602.P2731036423606884362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059886 d

end

end A366602.P2731036423606884362

/-! ## A366602.P835583461573635940

`∑{d}[A000027(2*(n+1)), A059499(#)]`
-/

namespace A366602.P835583461573635940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059499 d

end

end A366602.P835583461573635940

/-! ## A366602.P3703112727760274048

`∑{d}[A023443(2*n+3), A059499(#)]`
-/

namespace A366602.P3703112727760274048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059499 d

end

end A366602.P3703112727760274048

/-!
# A366603: Sum of the divisors of 4^n-1.

The programs for A366603, the canonical program `A366603.P3579980380335303809` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366603 has offset 1).

The definition of A366603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366603.P3579980380335303809

`A069061(n+1)*A075708(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A366603

/-- `A069061(n+1)*A075708(n+1)` -/
def P3579980380335303809.Spec : Prop :=
  ∀ n, P3579980380335303809.a n = A366603 (n + 1)

theorem P3579980380335303809.correct : P3579980380335303809.Spec := by
  intro n
  simp only [A366603, Nat.add_sub_cancel]

end A366603

/-! ## A366603.P3926888335927032257

`A000203(A024036(n+1))`
-/

namespace A366603.P3926888335927032257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A024036 (n + 1)).toNat

end

end A366603.P3926888335927032257

namespace A366603

/-- `A000203(A024036(n+1))` -/
def P3926888335927032257.Spec : Prop :=
  ∀ n, P3926888335927032257.a n = A366603 (n + 1)

end A366603

/-! ## A366603.P12694710264001224104

`A075708(2*(n+1))`
-/

namespace A366603.P12694710264001224104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075708 (2 * (n + 1))

end

end A366603.P12694710264001224104

namespace A366603

/-- `A075708(2*(n+1))` -/
def P12694710264001224104.Spec : Prop :=
  ∀ n, P12694710264001224104.a n = A366603 (n + 1)

end A366603

/-! ## A366603.P17398053310389751964

`record[A075708(n^(n%2)+1)]`
-/

namespace A366603.P17398053310389751964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075708 (n ^ (n % 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366603.P17398053310389751964

namespace A366603

/-- `record[A075708(n^(n%2)+1)]` -/
def P17398053310389751964.Spec : Prop :=
  ∀ n, P17398053310389751964.a n = A366603 (n + 1)

end A366603

/-! ## A366603.P18352244383793268789

`record[A075708(A004442(n)+1)]`
-/

namespace A366603.P18352244383793268789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075708 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366603.P18352244383793268789

namespace A366603

/-- `record[A075708(A004442(n)+1)]` -/
def P18352244383793268789.Spec : Prop :=
  ∀ n, P18352244383793268789.a n = A366603 (n + 1)

end A366603

/-! ## A366603.P4485268429929230214

`∑[A329890(2*n+1)+A329890(2*(n+1))]`
-/

namespace A366603.P4485268429929230214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329890 (2 * n + 1) + A329890 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366603.P4485268429929230214

namespace A366603

/-- `∑[A329890(2*n+1)+A329890(2*(n+1))]` -/
def P4485268429929230214.Spec : Prop :=
  ∀ n, P4485268429929230214.a n = A366603 (n + 1)

end A366603

/-!
# A366604: Number of distinct prime divisors of 4^n - 1.

The programs for A366604, there is no canonical definition to state claims against.
-/

/-! ## A366604.P8405402574952182119

`A046799(n+1)+A046800(n+1)`
-/

namespace A366604.P8405402574952182119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (n + 1) + A046800 (n + 1)

end

end A366604.P8405402574952182119

/-! ## A366604.P12739137730727183305

`A046800(2*(n+1))`
-/

namespace A366604.P12739137730727183305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (2 * (n + 1))

end

end A366604.P12739137730727183305

/-! ## A366604.P1622982536547683961

`A322811(A073582(n+2))+A046800(n+1)`
-/

namespace A366604.P1622982536547683961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A073582 (n + 2)).toNat + A046800 (n + 1)

end

end A366604.P1622982536547683961

/-! ## A366604.P11961080284279357931

`A322811(A100484(n+2))+A046800(n+1)`
-/

namespace A366604.P11961080284279357931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A100484 (n + 2)).toNat + A046800 (n + 1)

end

end A366604.P11961080284279357931

/-! ## A366604.P2689415395241854490

`A324119(A001747(n+2))+A046800(n+1)`
-/

namespace A366604.P2689415395241854490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324119 (A001747 (n + 2)).toNat + A046800 (n + 1)

end

end A366604.P2689415395241854490

/-! ## A366604.P6131987841902227984

`A324119(A161344(n+2))+A046800(n+1)`
-/

namespace A366604.P6131987841902227984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324119 (A161344 (n + 2)).toNat + A046800 (n + 1)

end

end A366604.P6131987841902227984

/-!
# A366605: Number of distinct prime divisors of 4^n + 1.

The programs for A366605, the canonical program `A366605.P16691471640151617697` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366605 has offset 0).

The definition of A366605 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046799, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366605.P16691471640151617697

`A046799(2*n)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A366605

/-- `A046799(2*n)` -/
def P16691471640151617697.Spec : Prop :=
  ∀ n, P16691471640151617697.a n = A366605 n

theorem P16691471640151617697.correct : P16691471640151617697.Spec := by
  intro n
  simp only [A366605]

end A366605

/-! ## A366605.P9088498035111625698

`A322811(A001747(2*(n+1)))`
-/

namespace A366605.P9088498035111625698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A001747 (2 * (n + 1))).toNat

end

end A366605.P9088498035111625698

namespace A366605

/-- `A322811(A001747(2*(n+1)))` -/
def P9088498035111625698.Spec : Prop :=
  ∀ n, P9088498035111625698.a n = A366605 n

end A366605

/-! ## A366605.P5552873823378869540

`A322811(A073582(2*n+1))`
-/

namespace A366605.P5552873823378869540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A073582 (2 * n + 1)).toNat

end

end A366605.P5552873823378869540

namespace A366605

/-- `A322811(A073582(2*n+1))` -/
def P5552873823378869540.Spec : Prop :=
  ∀ n, P5552873823378869540.a n = A366605 n

end A366605

/-! ## A366605.P3165068485803856201

`A322811(A074845(2*(n+1)))`
-/

namespace A366605.P3165068485803856201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A074845 (2 * (n + 1))).toNat

end

end A366605.P3165068485803856201

namespace A366605

/-- `A322811(A074845(2*(n+1)))` -/
def P3165068485803856201.Spec : Prop :=
  ∀ n, P3165068485803856201.a n = A366605 n

end A366605

/-! ## A366605.P11324381833954213881

`A322811(A100484(2*n+1))`
-/

namespace A366605.P11324381833954213881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A100484 (2 * n + 1)).toNat

end

end A366605.P11324381833954213881

namespace A366605

/-- `A322811(A100484(2*n+1))` -/
def P11324381833954213881.Spec : Prop :=
  ∀ n, P11324381833954213881.a n = A366605 n

end A366605

/-! ## A366605.P6864252198954889826

`A322811(A161344(2*(n+1)))`
-/

namespace A366605.P6864252198954889826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A161344 (2 * (n + 1))).toNat

end

end A366605.P6864252198954889826

namespace A366605

/-- `A322811(A161344(2*(n+1)))` -/
def P6864252198954889826.Spec : Prop :=
  ∀ n, P6864252198954889826.a n = A366605 n

end A366605

/-! ## A366605.P16888184443152374072

`A322812(A161425(2*(n+1)))`
-/

namespace A366605.P16888184443152374072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (A161425 (2 * (n + 1))).toNat

end

end A366605.P16888184443152374072

namespace A366605

/-- `A322812(A161425(2*(n+1)))` -/
def P16888184443152374072.Spec : Prop :=
  ∀ n, P16888184443152374072.a n = A366605 n

end A366605

/-! ## A366605.P17425001391413165841

`A322811(2*A000040(2*n+1))`
-/

namespace A366605.P17425001391413165841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (2 * A000040 (2 * n + 1)).toNat

end

end A366605.P17425001391413165841

namespace A366605

/-- `A322811(2*A000040(2*n+1))` -/
def P17425001391413165841.Spec : Prop :=
  ∀ n, P17425001391413165841.a n = A366605 n

end A366605

/-! ## A366605.P11805882129842227209

`A322812(2*A000040(2*n+1))`
-/

namespace A366605.P11805882129842227209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (2 * A000040 (2 * n + 1)).toNat

end

end A366605.P11805882129842227209

namespace A366605

/-- `A322812(2*A000040(2*n+1))` -/
def P11805882129842227209.Spec : Prop :=
  ∀ n, P11805882129842227209.a n = A366605 n

end A366605

/-! ## A366605.P7364682761366851944

`A322811(2*A008578(2*(n+1)))`
-/

namespace A366605.P7364682761366851944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (2 * A008578 (2 * (n + 1))).toNat

end

end A366605.P7364682761366851944

namespace A366605

/-- `A322811(2*A008578(2*(n+1)))` -/
def P7364682761366851944.Spec : Prop :=
  ∀ n, P7364682761366851944.a n = A366605 n

end A366605

/-! ## A366605.P845278843330749037

`A324119(A161344(2*n+1))`
-/

namespace A366605.P845278843330749037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324119 (A161344 (2 * n + 1)).toNat

end

end A366605.P845278843330749037

namespace A366605

/-- `A324119(A161344(2*n+1))` -/
def P845278843330749037.Spec : Prop :=
  ∀ n, P845278843330749037.a n = A366605 n

end A366605

/-! ## A366605.P2155284280158404862

`A086257(A086258(A046799(n+n)))`
-/

namespace A366605.P2155284280158404862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086257 (A086258 (A046799 (n + n)).toNat).toNat

end

end A366605.P2155284280158404862

namespace A366605

/-- `A086257(A086258(A046799(n+n)))` -/
def P2155284280158404862.Spec : Prop :=
  ∀ n, P2155284280158404862.a n = A366605 n

end A366605

/-!
# A366606: Number of divisors of 4^n+1.

The programs for A366606, the canonical program `A366606.P16159170449788144016` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366606 has offset 0).

The definition of A366606 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046798, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366606.P16159170449788144016

`A046798(2*n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A366606

/-- `A046798(2*n)` -/
def P16159170449788144016.Spec : Prop :=
  ∀ n, P16159170449788144016.a n = A366606 n

theorem P16159170449788144016.correct : P16159170449788144016.Spec := by
  intro n
  simp only [A366606]

end A366606

/-! ## A366606.P4922383875414394859

`A046798(A005843(n))+A000007(n+4)`
-/

namespace A366606.P4922383875414394859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 (A005843 n).toNat + A000007 (n + 4)

end

end A366606.P4922383875414394859

namespace A366606

/-- `A046798(A005843(n))+A000007(n+4)` -/
def P4922383875414394859.Spec : Prop :=
  ∀ n, P4922383875414394859.a n = A366606 n

end A366606

/-! ## A366606.P1311578579190903440

`A324105(A161344(2*n+1))`
-/

namespace A366606.P1311578579190903440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (A161344 (2 * n + 1)).toNat

end

end A366606.P1311578579190903440

namespace A366606

/-- `A324105(A161344(2*n+1))` -/
def P1311578579190903440.Spec : Prop :=
  ∀ n, P1311578579190903440.a n = A366606 n

end A366606

/-! ## A366606.P11106958065424533555

`A324105(A001747(2*n+1)+A000007(n))`
-/

namespace A366606.P11106958065424533555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (A001747 (2 * n + 1) + A000007 n).toNat

end

end A366606.P11106958065424533555

namespace A366606

/-- `A324105(A001747(2*n+1)+A000007(n))` -/
def P11106958065424533555.Spec : Prop :=
  ∀ n, P11106958065424533555.a n = A366606 n

end A366606

/-! ## A366606.P9266094252201096863

`A324117(A074845(2*n+1))`
-/

namespace A366606.P9266094252201096863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A074845 (2 * n + 1)).toNat

end

end A366606.P9266094252201096863

namespace A366606

/-- `A324117(A074845(2*n+1))` -/
def P9266094252201096863.Spec : Prop :=
  ∀ n, P9266094252201096863.a n = A366606 n

end A366606

/-! ## A366606.P4733307459632869831

`A324117(A001747(2*n+1)+A000038(n))`
-/

namespace A366606.P4733307459632869831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A001747 (2 * n + 1) + A000038 n).toNat

end

end A366606.P4733307459632869831

namespace A366606

/-- `A324117(A001747(2*n+1)+A000038(n))` -/
def P4733307459632869831.Spec : Prop :=
  ∀ n, P4733307459632869831.a n = A366606 n

end A366606

/-! ## A366606.P11881308206434803978

`A324117(A001748(2*n+1))`
-/

namespace A366606.P11881308206434803978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A001748 (2 * n + 1)).toNat

end

end A366606.P11881308206434803978

namespace A366606

/-- `A324117(A001748(2*n+1))` -/
def P11881308206434803978.Spec : Prop :=
  ∀ n, P11881308206434803978.a n = A366606 n

end A366606

/-! ## A366606.P11436374680079968721

`A324117(A063534(2*n+1))`
-/

namespace A366606.P11436374680079968721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A063534 (2 * n + 1)).toNat

end

end A366606.P11436374680079968721

namespace A366606

/-- `A324117(A063534(2*n+1))` -/
def P11436374680079968721.Spec : Prop :=
  ∀ n, P11436374680079968721.a n = A366606 n

end A366606

/-! ## A366606.P9427569886444745630

`A324117(A112773(2*(n+1)))`
-/

namespace A366606.P9427569886444745630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A112773 (2 * (n + 1))).toNat

end

end A366606.P9427569886444745630

namespace A366606

/-- `A324117(A112773(2*(n+1)))` -/
def P9427569886444745630.Spec : Prop :=
  ∀ n, P9427569886444745630.a n = A366606 n

end A366606

/-! ## A366606.P1239548759521035852

`A324117(A288313(2*(n+1)))`
-/

namespace A366606.P1239548759521035852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A288313 (2 * (n + 1))).toNat

end

end A366606.P1239548759521035852

namespace A366606

/-- `A324117(A288313(2*(n+1)))` -/
def P1239548759521035852.Spec : Prop :=
  ∀ n, P1239548759521035852.a n = A366606 n

end A366606

/-! ## A366606.P11137783071583549326

`A324117(A001750(2*(n+1)))`
-/

namespace A366606.P11137783071583549326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A001750 (2 * (n + 1))).toNat

end

end A366606.P11137783071583549326

namespace A366606

/-- `A324117(A001750(2*(n+1)))` -/
def P11137783071583549326.Spec : Prop :=
  ∀ n, P11137783071583549326.a n = A366606 n

end A366606

/-!
# A366607: Sum of the divisors of 4^n+1.

The programs for A366607, the canonical program `A366607.P1860068673342325867` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366607 has offset 0).

The definition of A366607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366607.P1860068673342325867

`A000203(A052539(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366607

/-- `A000203(A052539(n))` -/
def P1860068673342325867.Spec : Prop :=
  ∀ n, P1860068673342325867.a n = A366607 n

theorem P1860068673342325867.correct : P1860068673342325867.Spec := by
  intro n
  simp only [A366607]

end A366607

/-! ## A366607.P4772350889848134289

`A324542(A001747(2*n+1))+2`
-/

namespace A366607.P4772350889848134289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324542 (A001747 (2 * n + 1)).toNat + 2

end

end A366607.P4772350889848134289

namespace A366607

/-- `A324542(A001747(2*n+1))+2` -/
def P4772350889848134289.Spec : Prop :=
  ∀ n, P4772350889848134289.a n = A366607 n

end A366607

/-! ## A366607.P5128232307326230342

`A324573(2*A031368(n+1))`
-/

namespace A366607.P5128232307326230342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324573 (2 * A031368 (n + 1)).toNat

end

end A366607.P5128232307326230342

namespace A366607

/-- `A324573(2*A031368(n+1))` -/
def P5128232307326230342.Spec : Prop :=
  ∀ n, P5128232307326230342.a n = A366607 n

end A366607

/-! ## A366607.P7532690567831908513

`A324573(A100484(2*n+1))`
-/

namespace A366607.P7532690567831908513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324573 (A100484 (2 * n + 1)).toNat

end

end A366607.P7532690567831908513

namespace A366607

/-- `A324573(A100484(2*n+1))` -/
def P7532690567831908513.Spec : Prop :=
  ∀ n, P7532690567831908513.a n = A366607 n

end A366607

/-! ## A366607.P12511013663084100777

`A324573(2*A000040(2*n+1))`
-/

namespace A366607.P12511013663084100777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324573 (2 * A000040 (2 * n + 1)).toNat

end

end A366607.P12511013663084100777

namespace A366607

/-- `A324573(2*A000040(2*n+1))` -/
def P12511013663084100777.Spec : Prop :=
  ∀ n, P12511013663084100777.a n = A366607 n

end A366607

/-!
# A366608: a(n) = phi(4^n+1), where phi is Euler's totient function (A000010).

The programs for A366608, the canonical program `A366608.P1002265853707931672` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366608 has offset 0).

The definition of A366608 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053285, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366608.P1002265853707931672

`A053285(2*n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A366608

/-- `A053285(2*n)` -/
def P1002265853707931672.Spec : Prop :=
  ∀ n, P1002265853707931672.a n = A366608 n

theorem P1002265853707931672.correct : P1002265853707931672.Spec := by
  intro n
  simp only [A366608]

end A366608

/-! ## A366608.P6366329632629589939

`A000051(2*n)-A053286(2*n)`
-/

namespace A366608.P6366329632629589939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (2 * n) - A053286 (2 * n)

end

end A366608.P6366329632629589939

namespace A366608

/-- `A000051(2*n)-A053286(2*n)` -/
def P6366329632629589939.Spec : Prop :=
  ∀ n, P6366329632629589939.a n = A366608 n

end A366608

/-! ## A366608.P4499187253870535014

`A004277(2*n)*A069925(A028310(2*n))`
-/

namespace A366608.P4499187253870535014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) * A069925 (A028310 (2 * n)).toNat

end

end A366608.P4499187253870535014

namespace A366608

/-- `A004277(2*n)*A069925(A028310(2*n))` -/
def P4499187253870535014.Spec : Prop :=
  ∀ n, P4499187253870535014.a n = A366608 n

end A366608

/-! ## A366608.P18051942687355083535

`A324104(A001747(2*n+1))`
-/

namespace A366608.P18051942687355083535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (A001747 (2 * n + 1)).toNat

end

end A366608.P18051942687355083535

namespace A366608

/-- `A324104(A001747(2*n+1))` -/
def P18051942687355083535.Spec : Prop :=
  ∀ n, P18051942687355083535.a n = A366608 n

end A366608

/-! ## A366608.P14706713277142439784

`A324104(A076274(2*n+1)+1)`
-/

namespace A366608.P14706713277142439784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (A076274 (2 * n + 1) + 1).toNat

end

end A366608.P14706713277142439784

namespace A366608

/-- `A324104(A076274(2*n+1)+1)` -/
def P14706713277142439784.Spec : Prop :=
  ∀ n, P14706713277142439784.a n = A366608 n

end A366608

/-! ## A366608.P1950882781841822195

`A324104(2*A008578(2*n+1))`
-/

namespace A366608.P1950882781841822195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (2 * A008578 (2 * n + 1)).toNat

end

end A366608.P1950882781841822195

namespace A366608

/-- `A324104(2*A008578(2*n+1))` -/
def P1950882781841822195.Spec : Prop :=
  ∀ n, P1950882781841822195.a n = A366608 n

end A366608

/-! ## A366608.P4296944156791109592

`A324104(2*A158611(2*(n+1)))`
-/

namespace A366608.P4296944156791109592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (2 * A158611 (2 * (n + 1))).toNat

end

end A366608.P4296944156791109592

namespace A366608

/-- `A324104(2*A158611(2*(n+1)))` -/
def P4296944156791109592.Spec : Prop :=
  ∀ n, P4296944156791109592.a n = A366608 n

end A366608

/-!
# A366609: Smallest prime dividing 4^n + 1.

The programs for A366609, there is no canonical definition to state claims against.
-/

/-! ## A366609.P4541539083799105705

`A002586(A028310(2*n))-A000007(n)`
-/

namespace A366609.P4541539083799105705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (A028310 (2 * n)).toNat - A000007 n

end

end A366609.P4541539083799105705

/-! ## A366609.P6579699572565628942

`A260218(A008574(n))`
-/

namespace A366609.P6579699572565628942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260218 (A008574 n).toNat

end

end A366609.P6579699572565628942

/-! ## A366609.P13227721192270711311

`A260218(A008486(n)+n)`
-/

namespace A366609.P13227721192270711311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260218 (A008486 n + (n : ℤ)).toNat

end

end A366609.P13227721192270711311

/-! ## A366609.P11719426887830379895

`A260218(A008706(n)-n)`
-/

namespace A366609.P11719426887830379895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260218 (A008706 n - (n : ℤ)).toNat

end

end A366609.P11719426887830379895

/-! ## A366609.P7587740919034494534

`A260218(A004273(2*n)+1)`
-/

namespace A366609.P7587740919034494534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260218 (A004273 (2 * n) + 1).toNat

end

end A366609.P7587740919034494534

/-!
# A366611: Number of distinct prime divisors of 5^n - 1.

The programs for A366611, there is no canonical definition to state claims against.
-/

/-! ## A366611.P502918791416232382

`∑{d}[A161953(n+1), A353742(#)]`
-/

namespace A366611.P502918791416232382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A353742 d

end

end A366611.P502918791416232382

/-! ## A366611.P12868804751816195959

`A000035(A010452(2*n+1))+∏{e}[n+1, #+1]`
-/

namespace A366611.P12868804751816195959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A010452 (2 * n + 1)).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A366611.P12868804751816195959

/-! ## A366611.P4176968842704291617

`A103589(A001973(n))+A000005(n+1)`
-/

namespace A366611.P4176968842704291617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103589 (A001973 n).toNat + A000005 (n + 1)

end

end A366611.P4176968842704291617

/-! ## A366611.P366559182549458454

`A157687(A157702(n))+A000005(n+1)`
-/

namespace A366611.P366559182549458454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157687 (A157702 n).toNat + A000005 (n + 1)

end

end A366611.P366559182549458454

/-! ## A366611.P11604488421475945610

`A169671(A335242(n))+A000005(n+1)`
-/

namespace A366611.P11604488421475945610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169671 (A335242 n).toNat + A000005 (n + 1)

end

end A366611.P11604488421475945610

/-!
# A366612: Number of divisors of 5^n-1.

The programs for A366612, there is no canonical definition to state claims against.
-/

/-! ## A366612.P6499571737691621076

`∑{d}[n+1, A059887(#)]`
-/

namespace A366612.P6499571737691621076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059887 d

end

end A366612.P6499571737691621076

/-!
# A366613: Sum of the divisors of 5^n-1.

The programs for A366613, the canonical program `A366613.P6189055455832998167` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366613 has offset 1).

The definition of A366613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366613.P6189055455832998167

`A000203(A024049(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366613

/-- `A000203(A024049(n+1))` -/
def P6189055455832998167.Spec : Prop :=
  ∀ n, P6189055455832998167.a n = A366613 (n + 1)

theorem P6189055455832998167.correct : P6189055455832998167.Spec := by
  intro n
  simp only [A366613, Nat.add_sub_cancel]

end A366613

/-! ## A366613.P3456365228449511594

`∑{d}[∑[4*5^n], #]`
-/

namespace A366613.P3456365228449511594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * 5 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366613.P3456365228449511594

namespace A366613

/-- `∑{d}[∑[4*5^n], #]` -/
def P3456365228449511594.Spec : Prop :=
  ∀ n, (P3456365228449511594.a n : ℤ) = A366613 (n + 1)

end A366613

/-! ## A366613.P10206370324744908353

`A000203(∑[4*5^n])`
-/

namespace A366613.P10206370324744908353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * 5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A366613.P10206370324744908353

namespace A366613

/-- `A000203(∑[4*5^n])` -/
def P10206370324744908353.Spec : Prop :=
  ∀ n, P10206370324744908353.a n = A366613 (n + 1)

end A366613

/-!
# A366614: Irregular triangular array, read by rows: row n gives the numbers max(p) - min(p), in nondecreasing order, where p ranges through the strict partitions p of n.

The programs for A366614, there is no canonical definition to state claims against.
-/

/-! ## A366614.P10453751271708992019

`A000389(A131689(2*n+3))%5`
-/

namespace A366614.P10453751271708992019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000389 (A131689 (2 * n + 3)).toNat) 5

end

end A366614.P10453751271708992019

/-! ## A366614.P5101922315279347524

`A031346(A031346(3*n+2)*A226513(2*n+3))`
-/

namespace A366614.P5101922315279347524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A031346 (3 * n + 2) * A226513 (2 * n + 3)).toNat

end

end A366614.P5101922315279347524

/-! ## A366614.P14731415002627308979

`A339871(A189595(n+1))`
-/

namespace A366614.P14731415002627308979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339871 (A189595 (n + 1)).toNat

end

end A366614.P14731415002627308979

/-! ## A366614.P2949900063178021979

`A001222(n+4)%A020497(A107876(2*n+1))`
-/

namespace A366614.P2949900063178021979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (n + 4)) (A020497 (A107876 (2 * n + 1)).toNat)

end

end A366614.P2949900063178021979

/-! ## A366614.P9845605456982619728

`A039653(A099759(2*(n+1)))%A105560(n+4)`
-/

namespace A366614.P9845605456982619728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039653 (A099759 (2 * (n + 1))).toNat) (A105560 (n + 4))

end

end A366614.P9845605456982619728

/-!
# A366615: Number of distinct prime divisors of 5^n + 1.

The programs for A366615, there is no canonical definition to state claims against.
-/

/-! ## A366615.P5667202139574005024

`A124768(n)+A001285(A332727(n))`
-/

namespace A366615.P5667202139574005024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 n + A001285 (A332727 n).toNat

end

end A366615.P5667202139574005024

/-! ## A366615.P2721989664900706179

`A329313(2*n+1)+A329313(A350861(n+4))`
-/

namespace A366615.P2721989664900706179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (2 * n + 1) + A329313 (A350861 (n + 4)).toNat

end

end A366615.P2721989664900706179

/-! ## A366615.P18376356677665984840

`A327490(A094587(n))+A060130(n)`
-/

namespace A366615.P18376356677665984840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327490 (A094587 n).toNat + A060130 n

end

end A366615.P18376356677665984840

/-! ## A366615.P11484186059651396116

`A001221(A019565(n+4)*A057977(n))`
-/

namespace A366615.P11484186059651396116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A019565 (n + 4) * A057977 n).toNat

end

end A366615.P11484186059651396116

/-! ## A366615.P11302631926286539377

`A001221(A018818(n+1)*A068379(n+1))`
-/

namespace A366615.P11302631926286539377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A018818 (n + 1) * A068379 (n + 1)).toNat

end

end A366615.P11302631926286539377

/-!
# A366616: Number of divisors of 5^n+1.

The programs for A366616, there is no canonical definition to state claims against.
-/

/-! ## A366616.P12120123134832640066

`A062011(A046672(n))`
-/

namespace A366616.P12120123134832640066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (A046672 n).toNat

end

end A366616.P12120123134832640066

/-! ## A366616.P7472000845830677727

`A259935(A149920(n))`
-/

namespace A366616.P7472000845830677727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259935 (A149920 n).toNat

end

end A366616.P7472000845830677727

/-! ## A366616.P15533784850768560234

`∏{e}[A000045(A171888(2*n+1))+1, #+1]`
-/

namespace A366616.P15533784850768560234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A171888 (2 * n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A366616.P15533784850768560234

/-! ## A366616.P5137584358065068446

`∏{e}[A345939(n+2)+A000045(3*n+2), #+1]`
-/

namespace A366616.P5137584358065068446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345939 (n + 2) + A000045 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A366616.P5137584358065068446

/-! ## A366616.P18029594029405808969

`A001511(n+1)*A100008(A007051(n))`
-/

namespace A366616.P18029594029405808969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A100008 (A007051 n).toNat

end

end A366616.P18029594029405808969

/-!
# A366617: Sum of the divisors of 5^n+1.

The programs for A366617, the canonical program `A366617.P11566951996595092433` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366617 has offset 0).

The definition of A366617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366617.P11566951996595092433

`A000203(A034474(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366617

/-- `A000203(A034474(n))` -/
def P11566951996595092433.Spec : Prop :=
  ∀ n, P11566951996595092433.a n = A366617 n

theorem P11566951996595092433.correct : P11566951996595092433.Spec := by
  intro n
  simp only [A366617]

end A366617

/-! ## A366617.P12578877515926497839

`∑{d}[5^n+1, #]`
-/

namespace A366617.P12578877515926497839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366617.P12578877515926497839

namespace A366617

/-- `∑{d}[5^n+1, #]` -/
def P12578877515926497839.Spec : Prop :=
  ∀ n, (P12578877515926497839.a n : ℤ) = A366617 n

end A366617

/-! ## A366617.P2064579308811807779

`lcm(3, ∑{d}[A000351(n)+1, #])`
-/

namespace A366617.P2064579308811807779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A366617.P2064579308811807779

namespace A366617

/-- `lcm(3, ∑{d}[A000351(n)+1, #])` -/
def P2064579308811807779.Spec : Prop :=
  ∀ n, (P2064579308811807779.a n : ℤ) = A366617 n

end A366617

/-! ## A366617.P4574773792946594091

`record[∑{d}[A191702(n+1)+1, #]]`
-/

namespace A366617.P4574773792946594091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191702 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366617.P4574773792946594091

namespace A366617

/-- `record[∑{d}[A191702(n+1)+1, #]]` -/
def P4574773792946594091.Spec : Prop :=
  ∀ n, (P4574773792946594091.a n : ℤ) = A366617 n

end A366617

/-! ## A366617.P2253697130878454388

`∑{d}[A000351(n)+1, #]*A139551(n)`
-/

namespace A366617.P2253697130878454388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) * A139551 n

end

end A366617.P2253697130878454388

namespace A366617

/-- `∑{d}[A000351(n)+1, #]*A139551(n)` -/
def P2253697130878454388.Spec : Prop :=
  ∀ n, P2253697130878454388.a n = A366617 n

end A366617

/-!
# A366618: a(n) = phi(5^n+1), where phi is Euler's totient function (A000010).

The programs for A366618, there is no canonical definition to state claims against.
-/

/-! ## A366618.P9303542886529041101

`A027741(2*n)/A027741(n)`
-/

namespace A366618.P9303542886529041101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027741 (2 * n) : ℚ) / (A027741 n : ℚ)

end

end A366618.P9303542886529041101

/-! ## A366618.P1242546695547909899

`A000010(5^n+1)`
-/

namespace A366618.P1242546695547909899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (5 ^ n + 1)

end

end A366618.P1242546695547909899

/-! ## A366618.P12595163431308141836

`A000010(ceil(5^n/2))%(2*7^n)`
-/

namespace A366618.P12595163431308141836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 ⌈(5 ^ n : ℚ) / 2⌉.toNat) (2 * 7 ^ n : ℤ)

end

end A366618.P12595163431308141836

/-! ## A366618.P2035693773850943195

`A062570(A034478(n))`
-/

namespace A366618.P2035693773850943195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A034478 n).toNat

end

end A366618.P2035693773850943195

/-!
# A366619: Group the natural numbers into blocks of size 2: [1,2], [3,4], ... and reverse the order of the numbers within each block. Then group into blocks of size 3 and reverse the order in each block.

The programs for A366619, the canonical program `A366619.P16516630886687197366` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366619 has offset 1).

The definition of A366619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366619.P16516630886687197366

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=4, a(1)=1, a(2)=2, a(3)=5, a(4)=6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A366619

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P16516630886687197366.Spec : Prop :=
  ∀ n, P16516630886687197366.a n = A366619 (n + 1)

theorem P16516630886687197366.correct : P16516630886687197366.Spec := by
  intro n
  simp only [A366619, Nat.add_sub_cancel]

end A366619

/-! ## A366619.P13900657255897434712

`Δ[or(1, n-gcd(3, n))]+n`
-/

namespace A366619.P13900657255897434712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - (Nat.gcd 3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A366619.P13900657255897434712

namespace A366619

/-- `Δ[or(1, n-gcd(3, n))]+n` -/
def P13900657255897434712.Spec : Prop :=
  ∀ n, P13900657255897434712.a n = A366619 (n + 1)

end A366619

/-! ## A366619.P4798231994390890971

`A067061(A131042(n+1))`
-/

namespace A366619.P4798231994390890971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067061 (A131042 (n + 1)).toNat

end

end A366619.P4798231994390890971

namespace A366619

/-- `A067061(A131042(n+1))` -/
def P4798231994390890971.Spec : Prop :=
  ∀ n, P4798231994390890971.a n = A366619 (n + 1)

end A366619

/-! ## A366619.P11956865728606461512

`A366626(A113778(n+1))`
-/

namespace A366619.P11956865728606461512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366626 (A113778 (n + 1)).toNat

end

end A366619.P11956865728606461512

namespace A366619

/-- `A366626(A113778(n+1))` -/
def P11956865728606461512.Spec : Prop :=
  ∀ n, P11956865728606461512.a n = A366619 (n + 1)

end A366619

/-! ## A366619.P10413897038525662742

`A113655(n+1)+A033999(n)`
-/

namespace A366619.P10413897038525662742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (n + 1) + A033999 n

end

end A366619.P10413897038525662742

namespace A366619

/-- `A113655(n+1)+A033999(n)` -/
def P10413897038525662742.Spec : Prop :=
  ∀ n, P10413897038525662742.a n = A366619 (n + 1)

end A366619

/-! ## A366619.P17064280002429257440

`A033999(n)+A330396(n)+1`
-/

namespace A366619.P17064280002429257440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + (A330396 n + 1)

end

end A366619.P17064280002429257440

namespace A366619

/-- `A033999(n)+A330396(n)+1` -/
def P17064280002429257440.Spec : Prop :=
  ∀ n, P17064280002429257440.a n = A366619 (n + 1)

end A366619

/-! ## A366619.P11344796959535978155

`A014681(A113655(n+1))`
-/

namespace A366619.P11344796959535978155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A113655 (n + 1)).toNat

end

end A366619.P11344796959535978155

namespace A366619

/-- `A014681(A113655(n+1))` -/
def P11344796959535978155.Spec : Prop :=
  ∀ n, P11344796959535978155.a n = A366619 (n + 1)

end A366619

/-! ## A366619.P11960689880490808931

`A004442(A330396(n))+1`
-/

namespace A366619.P11960689880490808931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A330396 n).toNat + 1

end

end A366619.P11960689880490808931

namespace A366619

/-- `A004442(A330396(n))+1` -/
def P11960689880490808931.Spec : Prop :=
  ∀ n, P11960689880490808931.a n = A366619 (n + 1)

end A366619

/-! ## A366619.P7292468090797310502

`A014681(A330396(n)+1)`
-/

namespace A366619.P7292468090797310502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A330396 n + 1).toNat

end

end A366619.P7292468090797310502

namespace A366619

/-- `A014681(A330396(n)+1)` -/
def P7292468090797310502.Spec : Prop :=
  ∀ n, P7292468090797310502.a n = A366619 (n + 1)

end A366619

/-! ## A366619.P13759904177768096442

`A373546(A130509(n+1))`
-/

namespace A366619.P13759904177768096442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373546 (A130509 (n + 1)).toNat

end

end A366619.P13759904177768096442

namespace A366619

/-- `A373546(A130509(n+1))` -/
def P13759904177768096442.Spec : Prop :=
  ∀ n, P13759904177768096442.a n = A366619 (n + 1)

end A366619

/-! ## A366619.P9942865137480640542

`A004442(A074066(n+2))-1`
-/

namespace A366619.P9942865137480640542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A074066 (n + 2)).toNat - 1

end

end A366619.P9942865137480640542

namespace A366619

/-- `A004442(A074066(n+2))-1` -/
def P9942865137480640542.Spec : Prop :=
  ∀ n, P9942865137480640542.a n = A366619 (n + 1)

end A366619

/-! ## A366619.P8389295627153073542

`A113655(n+1)+A057077(2*n)`
-/

namespace A366619.P8389295627153073542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (n + 1) + A057077 (2 * n)

end

end A366619.P8389295627153073542

namespace A366619

/-- `A113655(n+1)+A057077(2*n)` -/
def P8389295627153073542.Spec : Prop :=
  ∀ n, P8389295627153073542.a n = A366619 (n + 1)

end A366619

/-!
# A366620: Number of distinct prime divisors of 6^n - 1.

The programs for A366620, there is no canonical definition to state claims against.
-/

/-! ## A366620.P2453816477621151739

`A001222(A366621(n+1)%A198452(2*(n+1)))`
-/

namespace A366620.P2453816477621151739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A366621 (n + 1)) (A198452 (2 * (n + 1)))).toNat

end

end A366620.P2453816477621151739

/-! ## A366620.P1219693853882140809

`A000523(A366621(n+1))%A162820(n+1)`
-/

namespace A366620.P1219693853882140809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000523 (A366621 (n + 1)).toNat) (A162820 (n + 1))

end

end A366620.P1219693853882140809

/-! ## A366620.P10158408274811341842

`A001222(A366621(n+1))%A279190(n+1)`
-/

namespace A366620.P10158408274811341842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A366621 (n + 1)).toNat) (A279190 (n + 1))

end

end A366620.P10158408274811341842

/-! ## A366620.P2188770331847074060

`A357622(A366621(n+1)/2)`
-/

namespace A366620.P2188770331847074060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357622 (SequenceMachineLib.roundAway ((A366621 (n + 1) : ℚ) / 2)).toNat

end

end A366620.P2188770331847074060

/-! ## A366620.P2903195267809869819

`A001222(A366621(n+1)²)/2`
-/

namespace A366620.P2903195267809869819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A366621 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A366620.P2903195267809869819

/-!
# A366621: Number of divisors of 6^n-1.

The programs for A366621, there is no canonical definition to state claims against.
-/

/-! ## A366621.P2176490082381751976

`∑{d}[n+1, A059888(#)]`
-/

namespace A366621.P2176490082381751976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059888 d

end

end A366621.P2176490082381751976

/-!
# A366622: Sum of the divisors of 6^n-1.

The programs for A366622, the canonical program `A366622.P3381570416348288794` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366622 has offset 1).

The definition of A366622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366622.P3381570416348288794

`A000203(A024062(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366622

/-- `A000203(A024062(n+1))` -/
def P3381570416348288794.Spec : Prop :=
  ∀ n, P3381570416348288794.a n = A366622 (n + 1)

theorem P3381570416348288794.correct : P3381570416348288794.Spec := by
  intro n
  simp only [A366622, Nat.add_sub_cancel]

end A366622

/-! ## A366622.P17581646215626515623

`∑{d}[1-6^(n+1), #]`
-/

namespace A366622.P17581646215626515623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (6 ^ (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366622.P17581646215626515623

namespace A366622

/-- `∑{d}[1-6^(n+1), #]` -/
def P17581646215626515623.Spec : Prop :=
  ∀ n, (P17581646215626515623.a n : ℤ) = A366622 (n + 1)

end A366622

/-! ## A366622.P15672685227712975722

`A000027(∑{d}[A024062(n+1), #])`
-/

namespace A366622.P15672685227712975722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A366622.P15672685227712975722

namespace A366622

/-- `A000027(∑{d}[A024062(n+1), #])` -/
def P15672685227712975722.Spec : Prop :=
  ∀ n, P15672685227712975722.a n = A366622 (n + 1)

end A366622

/-!
# A366623: a(n) = phi(6^n-1), where phi is Euler's totient function (A000010).

The programs for A366623, the canonical program `A366623.P5821396399983570635` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366623 has offset 1).

The definition of A366623 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366623.P5821396399983570635

`A000010(A024062(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A366623

/-- `A000010(A024062(n+1))` -/
def P5821396399983570635.Spec : Prop :=
  ∀ n, P5821396399983570635.a n = A366623 (n + 1)

theorem P5821396399983570635.correct : P5821396399983570635.Spec := by
  intro n
  simp only [A366623, Nat.add_sub_cancel]

end A366623

/-! ## A366623.P15964808282009207851

`(n+1)*A295496(n+1)`
-/

namespace A366623.P15964808282009207851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A295496 (n + 1)

end

end A366623.P15964808282009207851

namespace A366623

/-- `(n+1)*A295496(n+1)` -/
def P15964808282009207851.Spec : Prop :=
  ∀ n, P15964808282009207851.a n = A366623 (n + 1)

end A366623

/-! ## A366623.P15077841854623406539

`(n+1)*A369291(Δ[A264443(n)])`
-/

namespace A366623.P15077841854623406539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369291 (f1 (n + 1) - f1 n).toNat

end

end A366623.P15077841854623406539

namespace A366623

/-- `(n+1)*A369291(Δ[A264443(n)])` -/
def P15077841854623406539.Spec : Prop :=
  ∀ n, P15077841854623406539.a n = A366623 (n + 1)

end A366623

/-! ## A366623.P17085611862526639365

`(n+1)*A369291(A052905(n+2)+1)`
-/

namespace A366623.P17085611862526639365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369291 (A052905 (n + 2) + 1).toNat

end

end A366623.P17085611862526639365

namespace A366623

/-- `(n+1)*A369291(A052905(n+2)+1)` -/
def P17085611862526639365.Spec : Prop :=
  ∀ n, P17085611862526639365.a n = A366623 (n + 1)

end A366623

/-!
# A366624: Lexicographically earliest sequence of positive integers such that each subsequence enclosed by two equal terms, not including the endpoints, is distinct.

The programs for A366624, there is no canonical definition to state claims against.
-/

/-! ## A366624.P6029672762030643042

`A329313(eq[A325687(n+5), A329325(n+1)])`
-/

namespace A366624.P6029672762030643042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325687 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A366624.P6029672762030643042

/-! ## A366624.P5204317672790585283

`A000005(2*n+5)-A011655(A271146(2*n+1))`
-/

namespace A366624.P5204317672790585283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 5) - A011655 (A271146 (2 * n + 1)).toNat

end

end A366624.P5204317672790585283

/-! ## A366624.P742902604234418907

`A366625(A077168(n))`
-/

namespace A366624.P742902604234418907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366625 (A077168 n).toNat

end

end A366624.P742902604234418907

/-! ## A366624.P16221792046356298256

`A355770(A044907(n+1))`
-/

namespace A366624.P16221792046356298256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355770 (A044907 (n + 1)).toNat

end

end A366624.P16221792046356298256

/-! ## A366624.P11373610562264895121

`A369363(2^A366625(n+1))`
-/

namespace A366624.P11373610562264895121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369363 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A366625 (n + 1) : ℤ))).toNat

end

end A366624.P11373610562264895121

/-!
# A366625: Lexicographically earliest sequence of positive integers such that each multiset enclosed by two equal terms, excluding the endpoints, is distinct.

The programs for A366625, there is no canonical definition to state claims against.
-/

/-! ## A366625.P10057991212253249617

`gcd(A049084(2*n+5), A257991(A304660(3*(n+1))))`
-/

namespace A366625.P10057991212253249617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049084 (2 * n + 5)) (A257991 (A304660 (3 * (n + 1))).toNat)

end

end A366625.P10057991212253249617

/-!
# A366626: Group the natural numbers into blocks of size 2: [1,2], [3,4], ... and then reverse the order of the numbers within each block. Then group and reverse for each block size up to 4.

The programs for A366626, the canonical program `A366626.P3641504166637669905` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366626 has offset 1).

The definition of A366626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366626.P3641504166637669905

`A366619(A113778(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366626

/-- `A366619(A113778(n+1))` -/
def P3641504166637669905.Spec : Prop :=
  ∀ n, P3641504166637669905.a n = A366626 (n + 1)

theorem P3641504166637669905.correct : P3641504166637669905.Spec := by
  intro n
  simp only [A366626, Nat.add_sub_cancel]

end A366626

/-!
# A366627: Number of distinct prime divisors of 6^n + 1.

The programs for A366627, there is no canonical definition to state claims against.
-/

/-! ## A366627.P4305668588043399223

`A001222(A366628(n))%A128155(n+1)`
-/

namespace A366627.P4305668588043399223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A366628 n).toNat) (A128155 (n + 1))

end

end A366627.P4305668588043399223

/-! ## A366627.P15299426045880883504

`A001222(A366628(n)%A187645(n+1))`
-/

namespace A366627.P15299426045880883504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A366628 n) (A187645 (n + 1))).toNat

end

end A366627.P15299426045880883504

/-! ## A366627.P4658250616217987451

`A000523(A366628(n))%A299964(n+1)`
-/

namespace A366627.P4658250616217987451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000523 (A366628 n).toNat) (A299964 (n + 1))

end

end A366627.P4658250616217987451

/-! ## A366627.P4773629682815876983

`A001222(A366628(n)-A090784(n+1)%2)`
-/

namespace A366627.P4773629682815876983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A366628 n - Int.tmod (A090784 (n + 1)) 2).toNat

end

end A366627.P4773629682815876983

/-! ## A366627.P6218351384676882545

`A001222(A379668(2*(n+2))+A366628(n))`
-/

namespace A366627.P6218351384676882545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A379668 (2 * (n + 2)) + A366628 n).toNat

end

end A366627.P6218351384676882545

/-!
# A366629: Sum of the divisors of 6^n+1.

The programs for A366629, the canonical program `A366629.P4393599482427692148` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366629 has offset 0).

The definition of A366629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366629.P4393599482427692148

`A000203(A062394(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366629

/-- `A000203(A062394(n))` -/
def P4393599482427692148.Spec : Prop :=
  ∀ n, P4393599482427692148.a n = A366629 n

theorem P4393599482427692148.correct : P4393599482427692148.Spec := by
  intro n
  simp only [A366629]

end A366629

/-! ## A366629.P2047379922536398538

`∑{d}[6^n+1, #]`
-/

namespace A366629.P2047379922536398538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366629.P2047379922536398538

namespace A366629

/-- `∑{d}[6^n+1, #]` -/
def P2047379922536398538.Spec : Prop :=
  ∀ n, (P2047379922536398538.a n : ℤ) = A366629 n

end A366629

/-! ## A366629.P208583621924573111

`record[∑{d}[A038255(n)+1, #]]`
-/

namespace A366629.P208583621924573111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038255 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366629.P208583621924573111

namespace A366629

/-- `record[∑{d}[A038255(n)+1, #]]` -/
def P208583621924573111.Spec : Prop :=
  ∀ n, (P208583621924573111.a n : ℤ) = A366629 n

end A366629

/-! ## A366629.P2657162529573227363

`A000027(∑{d}[A062394(n), #])`
-/

namespace A366629.P2657162529573227363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A366629.P2657162529573227363

namespace A366629

/-- `A000027(∑{d}[A062394(n), #])` -/
def P2657162529573227363.Spec : Prop :=
  ∀ n, P2657162529573227363.a n = A366629 n

end A366629

/-!
# A366630: a(n) = phi(6^n+1), where phi is Euler's totient function (A000010).

The programs for A366630, the canonical program `A366630.P5479247099964849779` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366630 has offset 0).

The definition of A366630 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366630.P5479247099964849779

`A000010(A062394(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A366630

/-- `A000010(A062394(n))` -/
def P5479247099964849779.Spec : Prop :=
  ∀ n, P5479247099964849779.a n = A366630 n

theorem P5479247099964849779.correct : P5479247099964849779.Spec := by
  intro n
  simp only [A366630]

end A366630

/-! ## A366630.P13337030297905637639

`record[∏{p}[6^n+1, #-1]]`
-/

namespace A366630.P13337030297905637639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366630.P13337030297905637639

namespace A366630

/-- `record[∏{p}[6^n+1, #-1]]` -/
def P13337030297905637639.Spec : Prop :=
  ∀ n, P13337030297905637639.a n = A366630 n

end A366630

/-! ## A366630.P7833096479860234076

`A000010(6^n+1)`
-/

namespace A366630.P7833096479860234076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (6 ^ n + 1)

end

end A366630.P7833096479860234076

namespace A366630

/-- `A000010(6^n+1)` -/
def P7833096479860234076.Spec : Prop :=
  ∀ n, P7833096479860234076.a n = A366630 n

end A366630

/-!
# A366633: Number of divisors of 7^n-1.

The programs for A366633, there is no canonical definition to state claims against.
-/

/-! ## A366633.P17316641773015038176

`∑{d}[n+1, A059889(#)]`
-/

namespace A366633.P17316641773015038176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059889 d

end

end A366633.P17316641773015038176

/-!
# A366634: Sum of the divisors of 7^n-1.

The programs for A366634, the canonical program `A366634.P10934828708652104607` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366634 has offset 1).

The definition of A366634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366634.P10934828708652104607

`A000203(A024075(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366634

/-- `A000203(A024075(n+1))` -/
def P10934828708652104607.Spec : Prop :=
  ∀ n, P10934828708652104607.a n = A366634 (n + 1)

theorem P10934828708652104607.correct : P10934828708652104607.Spec := by
  intro n
  simp only [A366634, Nat.add_sub_cancel]

end A366634

/-! ## A366634.P8981906091271942564

`∑{d}[1-7^(n+1), #]`
-/

namespace A366634.P8981906091271942564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (7 ^ (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366634.P8981906091271942564

namespace A366634

/-- `∑{d}[1-7^(n+1), #]` -/
def P8981906091271942564.Spec : Prop :=
  ∀ n, (P8981906091271942564.a n : ℤ) = A366634 (n + 1)

end A366634

/-!
# A366635: a(n) = phi(7^n-1), where phi is Euler's totient function (A000010).

The programs for A366635, there is no canonical definition to state claims against.
-/

/-! ## A366635.P15951540015081486496

`(n+1)*A027743(n+1)`
-/

namespace A366635.P15951540015081486496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A027743 (n + 1)

end

end A366635.P15951540015081486496

/-! ## A366635.P13757239898091751990

`A027743(A077168(n))*A077168(n)`
-/

namespace A366635.P13757239898091751990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027743 (A077168 n).toNat * A077168 n

end

end A366635.P13757239898091751990

/-!
# A366638: Sum of the divisors of 7^n+1.

The programs for A366638, the canonical program `A366638.P1387904705816823933` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366638 has offset 0).

The definition of A366638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366638.P1387904705816823933

`A000203(A034491(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366638

/-- `A000203(A034491(n))` -/
def P1387904705816823933.Spec : Prop :=
  ∀ n, P1387904705816823933.a n = A366638 n

theorem P1387904705816823933.correct : P1387904705816823933.Spec := by
  intro n
  simp only [A366638]

end A366638

/-! ## A366638.P10027448284455010149

`∑{d}[7^n+1, #]`
-/

namespace A366638.P10027448284455010149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366638.P10027448284455010149

namespace A366638

/-- `∑{d}[7^n+1, #]` -/
def P10027448284455010149.Spec : Prop :=
  ∀ n, (P10027448284455010149.a n : ℤ) = A366638 n

end A366638

/-! ## A366638.P5067345518003802059

`record[∑{d}[A034491(A056239(n+1)), #]]`
-/

namespace A366638.P5067345518003802059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034491 (A056239 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366638.P5067345518003802059

namespace A366638

/-- `record[∑{d}[A034491(A056239(n+1)), #]]` -/
def P5067345518003802059.Spec : Prop :=
  ∀ n, (P5067345518003802059.a n : ℤ) = A366638 n

end A366638

/-! ## A366638.P7357117217708054912

`A332671(n+1)+∑{d}[A034491(n), #]`
-/

namespace A366638.P7357117217708054912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A366638.P7357117217708054912

namespace A366638

/-- `A332671(n+1)+∑{d}[A034491(n), #]` -/
def P7357117217708054912.Spec : Prop :=
  ∀ n, P7357117217708054912.a n = A366638 n

end A366638

/-!
# A366639: a(n) = phi(7^n+1), where phi is Euler's totient function (A000010).

The programs for A366639, the canonical program `A366639.P16325030738299286529` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366639 has offset 0).

The definition of A366639 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366639.P16325030738299286529

`A000010(A034491(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A366639

/-- `A000010(A034491(n))` -/
def P16325030738299286529.Spec : Prop :=
  ∀ n, P16325030738299286529.a n = A366639 n

theorem P16325030738299286529.correct : P16325030738299286529.Spec := by
  intro n
  simp only [A366639]

end A366639

/-! ## A366639.P14052783880799513804

`A027743(2*n)/A027743(n)`
-/

namespace A366639.P14052783880799513804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027743 (2 * n) : ℚ) / (A027743 n : ℚ)

end

end A366639.P14052783880799513804

namespace A366639

/-- `A027743(2*n)/A027743(n)` -/
def P14052783880799513804.Spec : Prop :=
  ∀ n, P14052783880799513804.a n = (A366639 n : ℚ)

end A366639

/-! ## A366639.P9819443470892483391

`A000010(A000034(n)*A034494(n))`
-/

namespace A366639.P9819443470892483391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000034 n * A034494 n).toNat

end

end A366639.P9819443470892483391

namespace A366639

/-- `A000010(A000034(n)*A034494(n))` -/
def P9819443470892483391.Spec : Prop :=
  ∀ n, P9819443470892483391.a n = A366639 n

end A366639

/-!
# A366642: Lexicographically earliest sequence of distinct primes such that the sequence of ratios (number of divisors of n that are coprime to these primes)/(number of divisors of n) has an asymptotic mean 1/2.

The programs for A366642, there is no canonical definition to state claims against.
-/

/-! ## A366642.P6924944961940800269

`A000040(and(A146313(n+1), A358944(n)))`
-/

namespace A366642.P6924944961940800269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.land (A146313 (n + 1)) (A358944 n)).toNat

end

end A366642.P6924944961940800269

/-!
# A366643: a(n) is the number of divisors of n that are coprime to the terms of A366642.

The programs for A366643, the canonical program `A366643.P15455375307676145949` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366643 has offset 1).

The definition of A366643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366643.P8239885402184398518

`A000005(A165725(n+1))%A366628(3*n+1)`
-/

namespace A366643.P8239885402184398518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A165725 (n + 1)).toNat) (A366628 (3 * n + 1))

end

end A366643.P8239885402184398518

namespace A366643

/-- `A000005(A165725(n+1))%A366628(3*n+1)` -/
def P8239885402184398518.Spec : Prop :=
  ∀ n, P8239885402184398518.a n = A366643 (n + 1)

end A366643

/-! ## A366643.P15123276364295105445

`A073184(A165725(n+1)^A326028(n+1))`
-/

namespace A366643.P15123276364295105445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073184 (SequenceMachineLib.roundAway ((A165725 (n + 1) : ℚ) ^ (A326028 (n + 1) : ℤ))).toNat

end

end A366643.P15123276364295105445

namespace A366643

/-- `A073184(A165725(n+1)^A326028(n+1))` -/
def P15123276364295105445.Spec : Prop :=
  ∀ n, P15123276364295105445.a n = A366643 (n + 1)

end A366643

/-! ## A366643.P12469900699466283445

`A000005(A165725(n+1))*A080305(A272186(n+1))`
-/

namespace A366643.P12469900699466283445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A165725 (n + 1)).toNat * A080305 (A272186 (n + 1)).toNat

end

end A366643.P12469900699466283445

namespace A366643

/-- `A000005(A165725(n+1))*A080305(A272186(n+1))` -/
def P12469900699466283445.Spec : Prop :=
  ∀ n, P12469900699466283445.a n = A366643 (n + 1)

end A366643

/-! ## A366643.P15455375307676145949

`A046951(A165725(n+1)*A165725(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366643

/-- `A046951(A165725(n+1)*A165725(n+1))` -/
def P15455375307676145949.Spec : Prop :=
  ∀ n, P15455375307676145949.a n = A366643 (n + 1)

theorem P15455375307676145949.correct : P15455375307676145949.Spec := by
  intro n
  simp only [A366643, Nat.add_sub_cancel]

end A366643

/-! ## A366643.P8717673451726968089

`A035218(A064989(n+1)*A327343(n+1))`
-/

namespace A366643.P8717673451726968089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A064989 (n + 1) * A327343 (n + 1)).toNat

end

end A366643.P8717673451726968089

namespace A366643

/-- `A035218(A064989(n+1)*A327343(n+1))` -/
def P8717673451726968089.Spec : Prop :=
  ∀ n, P8717673451726968089.a n = A366643 (n + 1)

end A366643

/-! ## A366643.P14952324905354646617

`A035218(2^A327342(n+1)*A064989(n+1))`
-/

namespace A366643.P14952324905354646617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A327342 (n + 1) : ℤ) * (A064989 (n + 1) : ℚ))).toNat

end

end A366643.P14952324905354646617

namespace A366643

/-- `A035218(2^A327342(n+1)*A064989(n+1))` -/
def P14952324905354646617.Spec : Prop :=
  ∀ n, P14952324905354646617.a n = A366643 (n + 1)

end A366643

/-! ## A366643.P6551791380992144112

`A000005(A165725(n+1)%A344857(n+4))`
-/

namespace A366643.P6551791380992144112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A165725 (n + 1)) (A344857 (n + 4))).toNat

end

end A366643.P6551791380992144112

namespace A366643

/-- `A000005(A165725(n+1)%A344857(n+4))` -/
def P6551791380992144112.Spec : Prop :=
  ∀ n, P6551791380992144112.a n = A366643 (n + 1)

end A366643

/-!
# A366646: G.f. A(x) satisfies A(x) = 1 + (x * A(x) / (1 - x))^4.

The programs for A366646, there is no canonical definition to state claims against.
-/

/-! ## A366646.P4472526430207152216

`A131138(A368475(n))`
-/

namespace A366646.P4472526430207152216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131138 (A368475 n).toNat

end

end A366646.P4472526430207152216

/-! ## A366646.P14976066613456537256

`A131138(A243739(n+4))`
-/

namespace A366646.P14976066613456537256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131138 (A243739 (n + 4)).toNat

end

end A366646.P14976066613456537256

/-! ## A366646.P525059811824157355

`A204164(A025192(n))-n`
-/

namespace A366646.P525059811824157355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A025192 n).toNat - (n : ℤ)

end

end A366646.P525059811824157355

/-! ## A366646.P9130168525061087085

`A353838(A129852(n))-n`
-/

namespace A366646.P9130168525061087085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353838 (A129852 n).toNat - (n : ℤ)

end

end A366646.P9130168525061087085

/-! ## A366646.P6839752896954204980

`A369525(n)+A057428(A062161(n))`
-/

namespace A366646.P6839752896954204980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369525 n + A057428 (A062161 n).toNat

end

end A366646.P6839752896954204980

/-!
# A366647: G.f. A(x) satisfies A(x) = 1 + x * (A(x) / (1 - x))^5.

The programs for A366647, there is no canonical definition to state claims against.
-/

/-! ## A366647.P8205187665912150269

`A123895(A000894(n))`
-/

namespace A366647.P8205187665912150269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 (A000894 n).toNat

end

end A366647.P8205187665912150269

/-!
# A366648: Numbers k such that 4^k + 1 is a semiprime.

The programs for A366648, there is no canonical definition to state claims against.
-/

/-! ## A366648.P8328325353637267270

`eq[4, A366606(n)]`
-/

namespace A366648.P8328325353637267270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366606 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366648.P8328325353637267270

/-! ## A366648.P10573033481543432351

`eq[4, A046798(2*n)]`
-/

namespace A366648.P10573033481543432351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366648.P10573033481543432351

/-! ## A366648.P1187968766836315879

`eq[6, A278242(2*n)]`
-/

namespace A366648.P1187968766836315879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278242 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366648.P1187968766836315879

/-! ## A366648.P268612169848849433

`eq[2, A057940(n+1)]+1`
-/

namespace A366648.P268612169848849433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366648.P268612169848849433

/-!
# A366649: Largest prime power (including 1) proper divisor of n, for n >= 2; a(1) = 1.

The programs for A366649, there is no canonical definition to state claims against.
-/

/-! ## A366649.P9409081544106110799

`A034699(A048671(n+1))`
-/

namespace A366649.P9409081544106110799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A048671 (n + 1)).toNat

end

end A366649.P9409081544106110799

/-! ## A366649.P15445104494615541733

`A048671(n+1)-A081805(n+1)`
-/

namespace A366649.P15445104494615541733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1) - A081805 (n + 1)

end

end A366649.P15445104494615541733

/-! ## A366649.P1840778059873314447

`A034699((n+1)/A014963(n+1))`
-/

namespace A366649.P1840778059873314447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat

end

end A366649.P1840778059873314447

/-! ## A366649.P11044218541522018025

`A048671(n+1)/A284600(n+1)`
-/

namespace A366649.P11044218541522018025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048671 (n + 1) : ℚ) / (A284600 (n + 1) : ℚ)

end

end A366649.P11044218541522018025

/-! ## A366649.P8021335393838052383

`gcd(A139082(n+1), A205959(n+1))`
-/

namespace A366649.P8021335393838052383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139082 (n + 1)) (A205959 (n + 1))

end

end A366649.P8021335393838052383

/-! ## A366649.P2565552001926599939

`A034699((n+1)/A006530(A034684(n+1)))`
-/

namespace A366649.P2565552001926599939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (A034684 (n + 1)).toNat : ℚ))).toNat

end

end A366649.P2565552001926599939

/-! ## A366649.P1133235892317058404

`A034699((n+1)/A020639(A034684(n+1)))`
-/

namespace A366649.P1133235892317058404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (A034684 (n + 1)).toNat : ℚ))).toNat

end

end A366649.P1133235892317058404

/-! ## A366649.P11967418862271819479

`A034699((n+1)/A067695(A034684(n+1)))`
-/

namespace A366649.P11967418862271819479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A067695 (A034684 (n + 1)).toNat : ℚ))).toNat

end

end A366649.P11967418862271819479

/-! ## A366649.P10404342838065110442

`A034699((n+1)/A088387(A034684(n+1)))`
-/

namespace A366649.P10404342838065110442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A088387 (A034684 (n + 1)).toNat : ℚ))).toNat

end

end A366649.P10404342838065110442

/-! ## A366649.P6666820128583898221

`gcd(A048671(n+1), A081472(n+1))`
-/

namespace A366649.P6666820128583898221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048671 (n + 1)) (A081472 (n + 1))

end

end A366649.P6666820128583898221

/-! ## A366649.P7425862186725203074

`gcd(A034699(n+1), A263673(n))`
-/

namespace A366649.P7425862186725203074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034699 (n + 1)) (A263673 n)

end

end A366649.P7425862186725203074

/-! ## A366649.P2783463048272763586

`A034699(A003418(n)/A002944(n+1))`
-/

namespace A366649.P2783463048272763586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((A003418 n : ℚ) / (A002944 (n + 1) : ℚ))).toNat

end

end A366649.P2783463048272763586

/-! ## A366649.P2808507871178408491

`A034699(n+1)/A003418(n+1)*A003418(n)`
-/

namespace A366649.P2808507871178408491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034699 (n + 1) : ℚ) / (A003418 (n + 1) : ℚ) * (A003418 n : ℚ)

end

end A366649.P2808507871178408491

/-!
# A366651: Number of distinct prime divisors of 8^n - 1.

The programs for A366651, there is no canonical definition to state claims against.
-/

/-! ## A366651.P3126168302747065267

`A046800(3*(n+1))`
-/

namespace A366651.P3126168302747065267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (3 * (n + 1))

end

end A366651.P3126168302747065267

/-! ## A366651.P1269114887594968135

`A001222(A297294(3*(n+1)))+1`
-/

namespace A366651.P1269114887594968135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A297294 (3 * (n + 1))).toNat + 1

end

end A366651.P1269114887594968135

/-! ## A366651.P15640067228361772079

`A003434(A366652(n+1))-A122841(n+1)`
-/

namespace A366651.P15640067228361772079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A366652 (n + 1)).toNat - A122841 (n + 1)

end

end A366651.P15640067228361772079

/-! ## A366651.P3216055085891335866

`A240975(2^(n+1))`
-/

namespace A366651.P3216055085891335866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240975 (2 ^ (n + 1))

end

end A366651.P3216055085891335866

/-! ## A366651.P129231096739059083

`A323889(n)+A122840(A026644(n))`
-/

namespace A366651.P129231096739059083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323889 n + A122840 (A026644 n).toNat

end

end A366651.P129231096739059083

/-!
# A366652: Number of divisors of 8^n-1.

The programs for A366652, there is no canonical definition to state claims against.
-/

/-! ## A366652.P6334443311420927637

`A046801(3*(n+1))`
-/

namespace A366652.P6334443311420927637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046801 (3 * (n + 1))

end

end A366652.P6334443311420927637

/-! ## A366652.P17909894688177820804

`∑{d}[n+1, A059890(#)]`
-/

namespace A366652.P17909894688177820804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059890 d

end

end A366652.P17909894688177820804

/-!
# A366653: Sum of the divisors of 8^n-1.

The programs for A366653, the canonical program `A366653.P16437631560606292113` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366653 has offset 1).

The definition of A366653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366653.P16437631560606292113

`A075708(3*(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A366653

/-- `A075708(3*(n+1))` -/
def P16437631560606292113.Spec : Prop :=
  ∀ n, P16437631560606292113.a n = A366653 (n + 1)

theorem P16437631560606292113.correct : P16437631560606292113.Spec := by
  intro n
  simp only [A366653, Nat.add_sub_cancel]

end A366653

/-!
# A366654: a(n) = phi(8^n-1), where phi is Euler's totient function (A000010).

The programs for A366654, the canonical program `A366654.P3224767880021133943` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366654 has offset 1).

The definition of A366654 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053287, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366654.P3224767880021133943

`A053287(3*(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A366654

/-- `A053287(3*(n+1))` -/
def P3224767880021133943.Spec : Prop :=
  ∀ n, P3224767880021133943.a n = A366654 (n + 1)

theorem P3224767880021133943.correct : P3224767880021133943.Spec := by
  intro n
  simp only [A366654, Nat.add_sub_cancel]

end A366654

/-! ## A366654.P3256377134235267822

`2*A056742(3*(n+1))`
-/

namespace A366654.P3256377134235267822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056742 (3 * (n + 1))

end

end A366654.P3256377134235267822

namespace A366654

/-- `2*A056742(3*(n+1))` -/
def P3256377134235267822.Spec : Prop :=
  ∀ n, P3256377134235267822.a n = A366654 (n + 1)

end A366654

/-! ## A366654.P2312110670867820618

`(n+1)*A027744(n+1)`
-/

namespace A366654.P2312110670867820618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A027744 (n + 1)

end

end A366654.P2312110670867820618

namespace A366654

/-- `(n+1)*A027744(n+1)` -/
def P2312110670867820618.Spec : Prop :=
  ∀ n, P2312110670867820618.a n = A366654 (n + 1)

end A366654

/-! ## A366654.P17475122021166464410

`A000020(A000027(3*(n+1)))*A000027(3*(n+1))`
-/

namespace A366654.P17475122021166464410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (A000027 (3 * (n + 1))).toNat * A000027 (3 * (n + 1))

end

end A366654.P17475122021166464410

namespace A366654

/-- `A000020(A000027(3*(n+1)))*A000027(3*(n+1))` -/
def P17475122021166464410.Spec : Prop :=
  ∀ n, P17475122021166464410.a n = A366654 (n + 1)

end A366654

/-! ## A366654.P13916385853876497441

`A011260(A028310(3*(n+1)))*A028310(3*(n+1))`
-/

namespace A366654.P13916385853876497441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A028310 (3 * (n + 1))).toNat * A028310 (3 * (n + 1))

end

end A366654.P13916385853876497441

namespace A366654

/-- `A011260(A028310(3*(n+1)))*A028310(3*(n+1))` -/
def P13916385853876497441.Spec : Prop :=
  ∀ n, P13916385853876497441.a n = A366654 (n + 1)

end A366654

/-! ## A366654.P426846272275975553

`A011260(3*(n+1))*A338835(A338835(3*(n+1)))`
-/

namespace A366654.P426846272275975553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (3 * (n + 1)) * A338835 (A338835 (3 * (n + 1))).toNat

end

end A366654.P426846272275975553

namespace A366654

/-- `A011260(3*(n+1))*A338835(A338835(3*(n+1)))` -/
def P426846272275975553.Spec : Prop :=
  ∀ n, P426846272275975553.a n = A366654 (n + 1)

end A366654

/-!
# A366655: Number of distinct prime divisors of 8^n + 1.

The programs for A366655, the canonical program `A366655.P3595836475585718572` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366655 has offset 0).

The definition of A366655 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046799, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366655.P3595836475585718572

`A046799(3*n)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A366655

/-- `A046799(3*n)` -/
def P3595836475585718572.Spec : Prop :=
  ∀ n, P3595836475585718572.a n = A366655 n

theorem P3595836475585718572.correct : P3595836475585718572.Spec := by
  intro n
  simp only [A366655]

end A366655

/-! ## A366655.P13334455832707222952

`A046799(A008486(n))%48`
-/

namespace A366655.P13334455832707222952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046799 (A008486 n).toNat) 48

end

end A366655.P13334455832707222952

namespace A366655

/-- `A046799(A008486(n))%48` -/
def P13334455832707222952.Spec : Prop :=
  ∀ n, P13334455832707222952.a n = A366655 n

end A366655

/-! ## A366655.P3577179282205769529

`A046799(A008585(n))%A151800(n)`
-/

namespace A366655.P3577179282205769529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046799 (A008585 n).toNat) (A151800 n)

end

end A366655.P3577179282205769529

namespace A366655

/-- `A046799(A008585(n))%A151800(n)` -/
def P3577179282205769529.Spec : Prop :=
  ∀ n, P3577179282205769529.a n = A366655 n

end A366655

/-! ## A366655.P12780078183591489646

`A046799(A008585(n))+char[A199547(n+1)]`
-/

namespace A366655.P12780078183591489646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199547 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (A008585 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A366655.P12780078183591489646

namespace A366655

/-- `A046799(A008585(n))+char[A199547(n+1)]` -/
def P12780078183591489646.Spec : Prop :=
  ∀ n, P12780078183591489646.a n = A366655 n

end A366655

/-! ## A366655.P14846872973432206312

`A046799(A008585(n))+char[A326255(n+1)]`
-/

namespace A366655.P14846872973432206312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326255 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (A008585 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A366655.P14846872973432206312

namespace A366655

/-- `A046799(A008585(n))+char[A326255(n+1)]` -/
def P14846872973432206312.Spec : Prop :=
  ∀ n, P14846872973432206312.a n = A366655 n

end A366655

/-! ## A366655.P13156323952364949047

`A046799(A008585(n))+char[A038596(n+2)]`
-/

namespace A366655.P13156323952364949047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038596 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (A008585 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A366655.P13156323952364949047

namespace A366655

/-- `A046799(A008585(n))+char[A038596(n+2)]` -/
def P13156323952364949047.Spec : Prop :=
  ∀ n, P13156323952364949047.a n = A366655 n

end A366655

/-! ## A366655.P6872429460704814927

`A322811(A073582(3*n+1))`
-/

namespace A366655.P6872429460704814927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A073582 (3 * n + 1)).toNat

end

end A366655.P6872429460704814927

namespace A366655

/-- `A322811(A073582(3*n+1))` -/
def P6872429460704814927.Spec : Prop :=
  ∀ n, P6872429460704814927.a n = A366655 n

end A366655

/-! ## A366655.P14505025476484140510

`A322811(A100484(3*n+1))`
-/

namespace A366655.P14505025476484140510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A100484 (3 * n + 1)).toNat

end

end A366655.P14505025476484140510

namespace A366655

/-- `A322811(A100484(3*n+1))` -/
def P14505025476484140510.Spec : Prop :=
  ∀ n, P14505025476484140510.a n = A366655 n

end A366655

/-! ## A366655.P6814251575797367299

`A322811(2*A000040(3*n+1))`
-/

namespace A366655.P6814251575797367299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (2 * A000040 (3 * n + 1)).toNat

end

end A366655.P6814251575797367299

namespace A366655

/-- `A322811(2*A000040(3*n+1))` -/
def P6814251575797367299.Spec : Prop :=
  ∀ n, P6814251575797367299.a n = A366655 n

end A366655

/-! ## A366655.P1499286188161857458

`A322812(2*A000040(3*n+1))`
-/

namespace A366655.P1499286188161857458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (2 * A000040 (3 * n + 1)).toNat

end

end A366655.P1499286188161857458

namespace A366655

/-- `A322812(2*A000040(3*n+1))` -/
def P1499286188161857458.Spec : Prop :=
  ∀ n, P1499286188161857458.a n = A366655 n

end A366655

/-!
# A366656: Number of divisors of 8^n+1.

The programs for A366656, the canonical program `A366656.P9970264767175051345` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366656 has offset 0).

The definition of A366656 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046798, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366656.P9970264767175051345

`A046798(3*n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A366656

/-- `A046798(3*n)` -/
def P9970264767175051345.Spec : Prop :=
  ∀ n, P9970264767175051345.a n = A366656 n

theorem P9970264767175051345.correct : P9970264767175051345.Spec := by
  intro n
  simp only [A366656]

end A366656

/-! ## A366656.P6742527557706103900

`A046798(A008585(n))%A020449(n+1)`
-/

namespace A366656.P6742527557706103900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046798 (A008585 n).toNat) (A020449 (n + 1))

end

end A366656.P6742527557706103900

namespace A366656

/-- `A046798(A008585(n))%A020449(n+1)` -/
def P6742527557706103900.Spec : Prop :=
  ∀ n, P6742527557706103900.a n = A366656 n

end A366656

/-! ## A366656.P7791033863114042391

`A046798(A008585(n))+A000122(A000040(n+1))`
-/

namespace A366656.P7791033863114042391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 (A008585 n).toNat + A000122 (A000040 (n + 1)).toNat

end

end A366656.P7791033863114042391

namespace A366656

/-- `A046798(A008585(n))+A000122(A000040(n+1))` -/
def P7791033863114042391.Spec : Prop :=
  ∀ n, P7791033863114042391.a n = A366656 n

end A366656

/-! ## A366656.P2324885362243317554

`A046798(A008585(n))+A000122(A100118(n+1))`
-/

namespace A366656.P2324885362243317554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 (A008585 n).toNat + A000122 (A100118 (n + 1)).toNat

end

end A366656.P2324885362243317554

namespace A366656

/-- `A046798(A008585(n))+A000122(A100118(n+1))` -/
def P2324885362243317554.Spec : Prop :=
  ∀ n, P2324885362243317554.a n = A366656 n

end A366656

/-! ## A366656.P6717884941523690842

`A046798(A008585(n))/A054576(A001358(n+1))`
-/

namespace A366656.P6717884941523690842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046798 (A008585 n).toNat : ℚ) / (A054576 (A001358 (n + 1)).toNat : ℚ)

end

end A366656.P6717884941523690842

namespace A366656

/-- `A046798(A008585(n))/A054576(A001358(n+1))` -/
def P6717884941523690842.Spec : Prop :=
  ∀ n, P6717884941523690842.a n = (A366656 n : ℚ)

end A366656

/-! ## A366656.P15806496535278585326

`A046798(A008585(n))%A336738(A008747(n))`
-/

namespace A366656.P15806496535278585326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046798 (A008585 n).toNat) (A336738 (A008747 n).toNat)

end

end A366656.P15806496535278585326

namespace A366656

/-- `A046798(A008585(n))%A336738(A008747(n))` -/
def P15806496535278585326.Spec : Prop :=
  ∀ n, P15806496535278585326.a n = A366656 n

end A366656

/-! ## A366656.P9252555983068237680

`A324117(A074845(3*n+1))`
-/

namespace A366656.P9252555983068237680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A074845 (3 * n + 1)).toNat

end

end A366656.P9252555983068237680

namespace A366656

/-- `A324117(A074845(3*n+1))` -/
def P9252555983068237680.Spec : Prop :=
  ∀ n, P9252555983068237680.a n = A366656 n

end A366656

/-! ## A366656.P12630801302350051697

`A324117(3*A000040(3*n+1))`
-/

namespace A366656.P12630801302350051697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (3 * A000040 (3 * n + 1)).toNat

end

end A366656.P12630801302350051697

namespace A366656

/-- `A324117(3*A000040(3*n+1))` -/
def P12630801302350051697.Spec : Prop :=
  ∀ n, P12630801302350051697.a n = A366656 n

end A366656

/-!
# A366657: Sum of the divisors of 8^n+1.

The programs for A366657, the canonical program `A366657.P7731269126698207783` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366657 has offset 0).

The definition of A366657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366657.P7731269126698207783

`A000203(A062395(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366657

/-- `A000203(A062395(n))` -/
def P7731269126698207783.Spec : Prop :=
  ∀ n, P7731269126698207783.a n = A366657 n

theorem P7731269126698207783.correct : P7731269126698207783.Spec := by
  intro n
  simp only [A366657]

end A366657

/-! ## A366657.P11573272208517086480

`A324542(A001747(3*n+1))+2`
-/

namespace A366657.P11573272208517086480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324542 (A001747 (3 * n + 1)).toNat + 2

end

end A366657.P11573272208517086480

namespace A366657

/-- `A324542(A001747(3*n+1))+2` -/
def P11573272208517086480.Spec : Prop :=
  ∀ n, P11573272208517086480.a n = A366657 n

end A366657

/-! ## A366657.P6849196151236157677

`A324573(2*A000040(3*n+1))`
-/

namespace A366657.P6849196151236157677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324573 (2 * A000040 (3 * n + 1)).toNat

end

end A366657.P6849196151236157677

namespace A366657

/-- `A324573(2*A000040(3*n+1))` -/
def P6849196151236157677.Spec : Prop :=
  ∀ n, P6849196151236157677.a n = A366657 n

end A366657

/-! ## A366657.P12295152800302526244

`A234645(2^n)`
-/

namespace A366657.P12295152800302526244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234645 (2 ^ n)

end

end A366657.P12295152800302526244

namespace A366657

/-- `A234645(2^n)` -/
def P12295152800302526244.Spec : Prop :=
  ∀ n, P12295152800302526244.a n = A366657 n

end A366657

/-! ## A366657.P3955227562145795824

`lcm(A007318(n+2), A234645(A000079(n)))`
-/

namespace A366657.P3955227562145795824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (n + 2)) (A234645 (A000079 n).toNat)

end

end A366657.P3955227562145795824

namespace A366657

/-- `lcm(A007318(n+2), A234645(A000079(n)))` -/
def P3955227562145795824.Spec : Prop :=
  ∀ n, (P3955227562145795824.a n : ℤ) = A366657 n

end A366657

/-!
# A366658: a(n) = phi(8^n+1), where phi is Euler's totient function (A000010).

The programs for A366658, the canonical program `A366658.P16706741294913406214` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366658 has offset 0).

The definition of A366658 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053285, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366658.P16706741294913406214

`A053285(3*n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A366658

/-- `A053285(3*n)` -/
def P16706741294913406214.Spec : Prop :=
  ∀ n, P16706741294913406214.a n = A366658 n

theorem P16706741294913406214.correct : P16706741294913406214.Spec := by
  intro n
  simp only [A366658]

end A366658

/-! ## A366658.P8095365814871241933

`A000010(A062395(n))`
-/

namespace A366658.P8095365814871241933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A062395 n).toNat

end

end A366658.P8095365814871241933

namespace A366658

/-- `A000010(A062395(n))` -/
def P8095365814871241933.Spec : Prop :=
  ∀ n, P8095365814871241933.a n = A366658 n

end A366658

/-!
# A366659: a(n) = Sum_{k=1..n} (-1)^(k-1) * binomial(floor(n/k)+3,4).

The programs for A366659, the canonical program `A366659.P2927659781479291372` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366659 has offset 1).

The definition of A366659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366659.P2927659781479291372

`∑[A366813(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366659

/-- `∑[A366813(n+1)]` -/
def P2927659781479291372.Spec : Prop :=
  ∀ n, P2927659781479291372.a n = A366659 (n + 1)

theorem P2927659781479291372.correct : P2927659781479291372.Spec := by
  intro n
  simp only [A366659, Nat.add_sub_cancel]

end A366659

/-! ## A366659.P5359870954954654069

`∑[∑{d}[n+1, A048272(#)*A117108((n+1)/#)]]`
-/

namespace A366659.P5359870954954654069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A048272 d * A117108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366659.P5359870954954654069

namespace A366659

/-- `∑[∑{d}[n+1, A048272(#)*A117108((n+1)/#)]]` -/
def P5359870954954654069.Spec : Prop :=
  ∀ n, P5359870954954654069.a n = A366659 (n + 1)

end A366659

/-! ## A366659.P14783454281059264634

`A366813(n+1)+a(A004526(A004273(n)))` with `a(0)=1`
-/

namespace A366659.P14783454281059264634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366813 (n + 1) + a (A004526 (A004273 n).toNat).toNat

end

end A366659.P14783454281059264634

namespace A366659

/-- `A366813(n+1)+a(A004526(A004273(n)))` -/
def P14783454281059264634.Spec : Prop :=
  ∀ n, P14783454281059264634.a n = A366659 (n + 1)

end A366659

/-!
# A366660: Number of distinct prime divisors of 9^n - 1.

The programs for A366660, there is no canonical definition to state claims against.
-/

/-! ## A366660.P17220787740508341074

`A133801(n+1)+A366580(n+1)-1`
-/

namespace A366660.P17220787740508341074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133801 (n + 1) + A366580 (n + 1) - 1

end

end A366660.P17220787740508341074

/-! ## A366660.P16039415488447560248

`A133801(2*(n+1))`
-/

namespace A366660.P16039415488447560248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133801 (2 * (n + 1))

end

end A366660.P16039415488447560248

/-! ## A366660.P17279517677429072730

`A133801(A103517(n))%A078370(n)`
-/

namespace A366660.P17279517677429072730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133801 (A103517 n).toNat) (A078370 n)

end

end A366660.P17279517677429072730

/-! ## A366660.P539690732879396090

`A133801(A103517(n))^gcd(n, A086708(n+1))`
-/

namespace A366660.P539690732879396090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133801 (A103517 n).toNat ^ Int.gcd (n : ℤ) (A086708 (n + 1))

end

end A366660.P539690732879396090

/-! ## A366660.P10116587832332522215

`A133801(A103517(n))-A326456(A270073(n))`
-/

namespace A366660.P10116587832332522215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133801 (A103517 n).toNat - A326456 (A270073 n).toNat

end

end A366660.P10116587832332522215

/-!
# A366661: Number of divisors of 9^n-1.

The programs for A366661, there is no canonical definition to state claims against.
-/

/-! ## A366661.P10710611486684620149

`A366575(2*(n+1))`
-/

namespace A366661.P10710611486684620149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366575 (2 * (n + 1))

end

end A366661.P10710611486684620149

/-! ## A366661.P13651241942541110775

`∑{d}[n+1, A059891(#)]`
-/

namespace A366661.P13651241942541110775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059891 d

end

end A366661.P13651241942541110775

/-! ## A366661.P11700788032212089349

`∑{d}[A005843(n+1), A059885(#)]`
-/

namespace A366661.P11700788032212089349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059885 d

end

end A366661.P11700788032212089349

/-! ## A366661.P3856528376398479837

`∑{d}[A020725(2*n+1), A059885(#)]`
-/

namespace A366661.P3856528376398479837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059885 d

end

end A366661.P3856528376398479837

/-!
# A366662: Sum of the divisors of 9^n-1.

The programs for A366662, there is no canonical definition to state claims against.
-/

/-! ## A366662.P10540337059653051103

`A366576(2*(n+1))`
-/

namespace A366662.P10540337059653051103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366576 (2 * (n + 1))

end

end A366662.P10540337059653051103

/-!
# A366663: a(n) = phi(9^n-1), where phi is Euler's totient function (A000010).

The programs for A366663, the canonical program `A366663.P12097496331306047741` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366663 has offset 1).

The definition of A366663 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295500, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366663.P12097496331306047741

`A295500(2*(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A366663

/-- `A295500(2*(n+1))` -/
def P12097496331306047741.Spec : Prop :=
  ∀ n, P12097496331306047741.a n = A366663 (n + 1)

theorem P12097496331306047741.correct : P12097496331306047741.Spec := by
  intro n
  simp only [A366663, Nat.add_sub_cancel]

end A366663

/-! ## A366663.P15104652964030166830

`(n+1)*A027745(n+1)`
-/

namespace A366663.P15104652964030166830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A027745 (n + 1)

end

end A366663.P15104652964030166830

namespace A366663

/-- `(n+1)*A027745(n+1)` -/
def P15104652964030166830.Spec : Prop :=
  ∀ n, P15104652964030166830.a n = A366663 (n + 1)

end A366663

/-! ## A366663.P853962659306591786

`record[A295500(A000265(n+1)+1)]`
-/

namespace A366663.P853962659306591786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295500 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366663.P853962659306591786

namespace A366663

/-- `record[A295500(A000265(n+1)+1)]` -/
def P853962659306591786.Spec : Prop :=
  ∀ n, P853962659306591786.a n = A366663 (n + 1)

end A366663

/-! ## A366663.P6810665171182023233

`A004277(n+1)*A027385(2*(n+1))`
-/

namespace A366663.P6810665171182023233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) * A027385 (2 * (n + 1))

end

end A366663.P6810665171182023233

namespace A366663

/-- `A004277(n+1)*A027385(2*(n+1))` -/
def P6810665171182023233.Spec : Prop :=
  ∀ n, P6810665171182023233.a n = A366663 (n + 1)

end A366663

/-! ## A366663.P6451040245521176448

`record[A165472(2*(n+1))]*A027385(2*(n+1))`
-/

namespace A366663.P6451040245521176448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165472 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A027385 (2 * (n + 1))

end

end A366663.P6451040245521176448

namespace A366663

/-- `record[A165472(2*(n+1))]*A027385(2*(n+1))` -/
def P6451040245521176448.Spec : Prop :=
  ∀ n, P6451040245521176448.a n = A366663 (n + 1)

end A366663

/-!
# A366664: Number of distinct prime divisors of 9^n + 1.

The programs for A366664, there is no canonical definition to state claims against.
-/

/-! ## A366664.P10369130707547524071

`A366580(2*n)`
-/

namespace A366664.P10369130707547524071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366580 (2 * n)

end

end A366664.P10369130707547524071

/-! ## A366664.P3248552791423711649

`A366580(gcd(n, C(2, n))+n)%A000040(n+1)`
-/

namespace A366664.P3248552791423711649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366580 (Nat.gcd n (Nat.choose 2 n) + n)) (A000040 (n + 1))

end

end A366664.P3248552791423711649

/-! ## A366664.P14865698099120712646

`A366580(A005843(n))%A062988(n)`
-/

namespace A366664.P14865698099120712646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366580 (A005843 n).toNat) (A062988 n)

end

end A366664.P14865698099120712646

/-! ## A366664.P16059715923958650181

`or(A000007(n), A366580(A005843(n)))`
-/

namespace A366664.P16059715923958650181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A366580 (A005843 n).toNat)

end

end A366664.P16059715923958650181

/-! ## A366664.P1443114272045072530

`A366580(A004277(n))%A068231(n+1)`
-/

namespace A366664.P1443114272045072530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366580 (A004277 n).toNat) (A068231 (n + 1))

end

end A366664.P1443114272045072530

/-! ## A366664.P15109918026784599000

`A366580(gcd(n, C(2, n))+n)%A083683(n)`
-/

namespace A366664.P15109918026784599000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366580 (Nat.gcd n (Nat.choose 2 n) + n)) (A083683 n)

end

end A366664.P15109918026784599000

/-! ## A366664.P9672782781218246001

`A366580(A004277(n))%A005807(n)`
-/

namespace A366664.P9672782781218246001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366580 (A004277 n).toNat) (A005807 n)

end

end A366664.P9672782781218246001

/-!
# A366665: Number of divisors of 9^n+1.

The programs for A366665, there is no canonical definition to state claims against.
-/

/-! ## A366665.P10875033480039896995

`A366577(2*n)`
-/

namespace A366665.P10875033480039896995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366577 (2 * n)

end

end A366665.P10875033480039896995

/-! ## A366665.P85539918313425910

`lcm(2, A366577(A005843(n)))`
-/

namespace A366665.P85539918313425910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A366577 (A005843 n).toNat)

end

end A366665.P85539918313425910

/-! ## A366665.P8254948851135745625

`A366577(A005843(n))+A000007(A047705(n))`
-/

namespace A366665.P8254948851135745625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366577 (A005843 n).toNat + A000007 (A047705 n).toNat

end

end A366665.P8254948851135745625

/-! ## A366665.P11606457809837314386

`A366577(A005843(n))+A000007(A000005(n+1))`
-/

namespace A366665.P11606457809837314386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366577 (A005843 n).toNat + A000007 (A000005 (n + 1)).toNat

end

end A366665.P11606457809837314386

/-! ## A366665.P3716852379160672898

`A366577(A005843(n))+A000007(A000040(n+1))`
-/

namespace A366665.P3716852379160672898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366577 (A005843 n).toNat + A000007 (A000040 (n + 1)).toNat

end

end A366665.P3716852379160672898

/-! ## A366665.P14868546099216419970

`A366577(A005843(n))+A000007(A000203(n+1))`
-/

namespace A366665.P14868546099216419970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366577 (A005843 n).toNat + A000007 (A000203 (n + 1)).toNat

end

end A366665.P14868546099216419970

/-! ## A366665.P15352177213384591332

`A366577(A005843(n))+A000007(A054429(n+1))`
-/

namespace A366665.P15352177213384591332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366577 (A005843 n).toNat + A000007 (A054429 (n + 1)).toNat

end

end A366665.P15352177213384591332

/-! ## A366665.P11842943815506335728

`A366577(A005843(n))+A000007(A071904(n+1))`
-/

namespace A366665.P11842943815506335728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366577 (A005843 n).toNat + A000007 (A071904 (n + 1)).toNat

end

end A366665.P11842943815506335728

/-! ## A366665.P10562565442413149174

`A366577(A005843(n))%A007283(n)`
-/

namespace A366665.P10562565442413149174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366577 (A005843 n).toNat) (A007283 n)

end

end A366665.P10562565442413149174

/-! ## A366665.P15644780050822590408

`A366577(A005843(n))+A000007(A118939(n+1))`
-/

namespace A366665.P15644780050822590408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366577 (A005843 n).toNat + A000007 (A118939 (n + 1)).toNat

end

end A366665.P15644780050822590408

/-! ## A366665.P6213591658857095980

`A242420(A366577(comp[Δ[n²]]))`
-/

namespace A366665.P6213591658857095980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (A366577 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A366665.P6213591658857095980

/-!
# A366666: Sum of the divisors of 9^n+1.

The programs for A366666, the canonical program `A366666.P7420732063156862119` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366666 has offset 0).

The definition of A366666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366666.P7420732063156862119

`A366578(2*n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A366666

/-- `A366578(2*n)` -/
def P7420732063156862119.Spec : Prop :=
  ∀ n, P7420732063156862119.a n = A366666 n

theorem P7420732063156862119.correct : P7420732063156862119.Spec := by
  intro n
  simp only [A366666]

end A366666

/-! ## A366666.P4356244389096717827

`A000203(A062396(n))`
-/

namespace A366666.P4356244389096717827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A062396 n).toNat

end

end A366666.P4356244389096717827

namespace A366666

/-- `A000203(A062396(n))` -/
def P4356244389096717827.Spec : Prop :=
  ∀ n, P4356244389096717827.a n = A366666 n

end A366666

/-! ## A366666.P144658975422719269

`record[A366578(floor(n/2^val(n+1, 2)))]`
-/

namespace A366666.P144658975422719269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366578 ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366666.P144658975422719269

namespace A366666

/-- `record[A366578(floor(n/2^val(n+1, 2)))]` -/
def P144658975422719269.Spec : Prop :=
  ∀ n, P144658975422719269.a n = A366666 n

end A366666

/-! ## A366666.P6054020279489520828

`and(-1, A366578(A005843(n)))`
-/

namespace A366666.P6054020279489520828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A366578 (A005843 n).toNat)

end

end A366666.P6054020279489520828

namespace A366666

/-- `and(-1, A366578(A005843(n)))` -/
def P6054020279489520828.Spec : Prop :=
  ∀ n, P6054020279489520828.a n = A366666 n

end A366666

/-! ## A366666.P6968430383429859960

`record[gcd(A272727(n), A366578(n))]`
-/

namespace A366666.P6968430383429859960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A272727 n) (A366578 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366666.P6968430383429859960

namespace A366666

/-- `record[gcd(A272727(n), A366578(n))]` -/
def P6968430383429859960.Spec : Prop :=
  ∀ n, (P6968430383429859960.a n : ℤ) = A366666 n

end A366666

/-!
# A366667: a(n) = phi(9^n+1), where phi is Euler's totient function (A000010).

The programs for A366667, the canonical program `A366667.P18363183813397785951` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366667 has offset 0).

The definition of A366667 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366579, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366667.P18363183813397785951

`A366579(2*n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A366667

/-- `A366579(2*n)` -/
def P18363183813397785951.Spec : Prop :=
  ∀ n, P18363183813397785951.a n = A366667 n

theorem P18363183813397785951.correct : P18363183813397785951.Spec := by
  intro n
  simp only [A366667]

end A366667

/-! ## A366667.P2305660776459665553

`A000010(A062396(n))`
-/

namespace A366667.P2305660776459665553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A062396 n).toNat

end

end A366667.P2305660776459665553

namespace A366667

/-- `A000010(A062396(n))` -/
def P2305660776459665553.Spec : Prop :=
  ∀ n, P2305660776459665553.a n = A366667 n

end A366667

/-! ## A366667.P4126141156052501006

`record[A366579(n)/A033999(n)]`
-/

namespace A366667.P4126141156052501006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366579 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366667.P4126141156052501006

namespace A366667

/-- `record[A366579(n)/A033999(n)]` -/
def P4126141156052501006.Spec : Prop :=
  ∀ n, P4126141156052501006.a n = (A366667 n : ℚ)

end A366667

/-! ## A366667.P3948838835778891339

`A366579(A005843(n))%A003617(n+1)`
-/

namespace A366667.P3948838835778891339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366579 (A005843 n).toNat) (A003617 (n + 1))

end

end A366667.P3948838835778891339

namespace A366667

/-- `A366579(A005843(n))%A003617(n+1)` -/
def P3948838835778891339.Spec : Prop :=
  ∀ n, P3948838835778891339.a n = A366667 n

end A366667

/-! ## A366667.P9628503353477941325

`A027745(2*n)/A027745(n)`
-/

namespace A366667.P9628503353477941325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027745 (2 * n) : ℚ) / (A027745 n : ℚ)

end

end A366667.P9628503353477941325

namespace A366667

/-- `A027745(2*n)/A027745(n)` -/
def P9628503353477941325.Spec : Prop :=
  ∀ n, P9628503353477941325.a n = (A366667 n : ℚ)

end A366667

/-! ## A366667.P17814138301826003793

`record[A366579(n+1)-A277927(n+1)]`
-/

namespace A366667.P17814138301826003793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366579 (n + 1) - A277927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366667.P17814138301826003793

namespace A366667

/-- `record[A366579(n+1)-A277927(n+1)]` -/
def P17814138301826003793.Spec : Prop :=
  ∀ n, P17814138301826003793.a n = A366667 n

end A366667

/-!
# A366668: Sum of the divisors of 10^n+1.

The programs for A366668, the canonical program `A366668.P5995148134161548215` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366668 has offset 0).

The definition of A366668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366668.P5995148134161548215

`A000203(A062397(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366668

/-- `A000203(A062397(n))` -/
def P5995148134161548215.Spec : Prop :=
  ∀ n, P5995148134161548215.a n = A366668 n

theorem P5995148134161548215.correct : P5995148134161548215.Spec := by
  intro n
  simp only [A366668]

end A366668

/-! ## A366668.P8079045019815754497

`lcm(A066099(2*n+5), A077810(A083318(n)))`
-/

namespace A366668.P8079045019815754497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066099 (2 * n + 5)) (A077810 (A083318 n).toNat)

end

end A366668.P8079045019815754497

namespace A366668

/-- `lcm(A066099(2*n+5), A077810(A083318(n)))` -/
def P8079045019815754497.Spec : Prop :=
  ∀ n, (P8079045019815754497.a n : ℤ) = A366668 n

end A366668

/-!
# A366669: a(n) = phi(10^n+1), where phi is Euler's totient function (A000010).

The programs for A366669, the canonical program `A366669.P7554268896085898891` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366669 has offset 0).

The definition of A366669 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366669.P7554268896085898891

`A000010(A062397(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A366669

/-- `A000010(A062397(n))` -/
def P7554268896085898891.Spec : Prop :=
  ∀ n, P7554268896085898891.a n = A366669 n

theorem P7554268896085898891.correct : P7554268896085898891.Spec := by
  intro n
  simp only [A366669]

end A366669

/-! ## A366669.P13373693713399194241

`A077811(A083318(n))`
-/

namespace A366669.P13373693713399194241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077811 (A083318 n).toNat

end

end A366669.P13373693713399194241

namespace A366669

/-- `A077811(A083318(n))` -/
def P13373693713399194241.Spec : Prop :=
  ∀ n, P13373693713399194241.a n = A366669 n

end A366669

/-! ## A366669.P5287836766236104241

`A077811(A127904(n+1))`
-/

namespace A366669.P5287836766236104241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077811 (A127904 (n + 1)).toNat

end

end A366669.P5287836766236104241

namespace A366669

/-- `A077811(A127904(n+1))` -/
def P5287836766236104241.Spec : Prop :=
  ∀ n, P5287836766236104241.a n = A366669 n

end A366669

/-!
# A366670: Smallest prime dividing 6^n + 1.

The programs for A366670, there is no canonical definition to state claims against.
-/

/-! ## A366670.P7478398631019225824

`A103221(6^∏{p}[n+1, #])`
-/

namespace A366670.P7478398631019225824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (6 ^ (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A366670.P7478398631019225824

/-!
# A366671: Smallest prime dividing 8^n + 1.

The programs for A366671, there is no canonical definition to state claims against.
-/

/-! ## A366671.P10713998596774628405

`A260218(A035877(n))`
-/

namespace A366671.P10713998596774628405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260218 (A035877 n).toNat

end

end A366671.P10713998596774628405

/-! ## A366671.P3716725088612032477

`A260218(A008458(n))`
-/

namespace A366671.P3716725088612032477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260218 (A008458 n).toNat

end

end A366671.P3716725088612032477

/-! ## A366671.P14096113065035380983

`A260218(A008486(2*n))`
-/

namespace A366671.P14096113065035380983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260218 (A008486 (2 * n)).toNat

end

end A366671.P14096113065035380983

/-! ## A366671.P8871309766854369592

`A260218(A008706(n)+n)`
-/

namespace A366671.P8871309766854369592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260218 (A008706 n + (n : ℤ)).toNat

end

end A366671.P8871309766854369592

/-! ## A366671.P12328417454136827607

`A260218(A004273(3*n)+1)`
-/

namespace A366671.P12328417454136827607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260218 (A004273 (3 * n) + 1).toNat

end

end A366671.P12328417454136827607

/-!
# A366672: a(n) = A002720(n)^n.

The programs for A366672, the canonical program `A366672.P17060177360912263348` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366672 has offset 0).

The definition of A366672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366672.P17060177360912263348

`A002720(n)^n`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A366672

/-- `A002720(n)^n` -/
def P17060177360912263348.Spec : Prop :=
  ∀ n, P17060177360912263348.a n = A366672 n

theorem P17060177360912263348.correct : P17060177360912263348.Spec := by
  intro n
  simp only [A366672]

end A366672

/-! ## A366672.P364189436414371555

`A056953(2*n)^n`
-/

namespace A366672.P364189436414371555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056953 (2 * n) ^ n

end

end A366672.P364189436414371555

namespace A366672

/-- `A056953(2*n)^n` -/
def P364189436414371555.Spec : Prop :=
  ∀ n, P364189436414371555.a n = A366672 n

end A366672

/-!
# A366673: a(n) is the least triprime k such that k + n is the next triprime after k.

The programs for A366673, there is no canonical definition to state claims against.
-/

/-! ## A366673.P17398118735781590495

`A014612(A131939(n+1))`
-/

namespace A366673.P17398118735781590495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A131939 (n + 1)).toNat

end

end A366673.P17398118735781590495

/-!
# A366676: G.f. satisfies A(x) = 1 + x^3 + x*A(x)^3.

The programs for A366676, there is no canonical definition to state claims against.
-/

/-! ## A366676.P996058237946288445

`A319436(n+1)+A004526(A096571(3*n+1))`
-/

namespace A366676.P996058237946288445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319436 (n + 1) + A004526 (A096571 (3 * n + 1)).toNat

end

end A366676.P996058237946288445

/-! ## A366676.P4548107673736245513

`A102664(A073063(n))`
-/

namespace A366676.P4548107673736245513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102664 (A073063 n).toNat

end

end A366676.P4548107673736245513

/-!
# A366677: G.f. satisfies A(x) = 1 + x^4 + x*A(x)^4.

The programs for A366677, there is no canonical definition to state claims against.
-/

/-! ## A366677.P18121952955250262854

`A079197(A005134(3*n))+A002293(n)`
-/

namespace A366677.P18121952955250262854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079197 (A005134 (3 * n)).toNat + A002293 n

end

end A366677.P18121952955250262854

/-! ## A366677.P16878521592415144997

`A137579(floor(sqrt(3)*2^n))+A002293(n)`
-/

namespace A366677.P16878521592415144997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 ⌊Real.sqrt (3 : ℝ) * (2 ^ n : ℝ)⌋.toNat + A002293 n

end

end A366677.P16878521592415144997

/-!
# A366683: Number of divisors of 11^n-1.

The programs for A366683, there is no canonical definition to state claims against.
-/

/-! ## A366683.P4527959392394587127

`gcd(A000010(A103277(3*n+2)), A374982(n+1))`
-/

namespace A366683.P4527959392394587127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A103277 (3 * n + 2)).toNat) (A374982 (n + 1))

end

end A366683.P4527959392394587127

/-!
# A366684: Sum of the divisors of 11^n-1.

The programs for A366684, there is no canonical definition to state claims against.
-/

/-! ## A366684.P9566060282553514041

`∑{d}[11*a(n-1)+10, #]` with `a(0)=10`
-/

namespace A366684.P9566060282553514041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  11 * f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366684.P9566060282553514041

/-!
# A366685: a(n) = phi(11^n-1), where phi is Euler's totient function (A000010).

The programs for A366685, there is no canonical definition to state claims against.
-/

/-! ## A366685.P6992438029562118302

`(n+1)*A319166(n+1)`
-/

namespace A366685.P6992438029562118302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A319166 (n + 1)

end

end A366685.P6992438029562118302

/-! ## A366685.P11942747146603611668

`(n+1)*A158502(Δ[A023545(n+1)])`
-/

namespace A366685.P11942747146603611668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158502 (f1 (n + 1) - f1 n).toNat

end

end A366685.P11942747146603611668

/-! ## A366685.P3972121451675436153

`(n+1)*A158502(A000124(n+5)-5)`
-/

namespace A366685.P3972121451675436153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158502 (A000124 (n + 5) - 5).toNat

end

end A366685.P3972121451675436153

/-!
# A366686: Number of distinct prime divisors of 11^n + 1.

The programs for A366686, there is no canonical definition to state claims against.
-/

/-! ## A366686.P12222400328315036309

`A091954(A219044(2*n+3)+A047679(n))`
-/

namespace A366686.P12222400328315036309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (A219044 (2 * n + 3) + A047679 n).toNat

end

end A366686.P12222400328315036309

/-! ## A366686.P17779557027256386429

`A070081(lt[A108290(n+2), A002618(2*n+1)])`
-/

namespace A366686.P17779557027256386429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108290 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070081 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A366686.P17779557027256386429

/-! ## A366686.P2026988324510751097

`A129251(A008956(n))+A070081(n+1)`
-/

namespace A366686.P2026988324510751097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A008956 n).toNat + A070081 (n + 1)

end

end A366686.P2026988324510751097

/-! ## A366686.P2297559068287928970

`A093313(A068045(n))+A070081(n+1)`
-/

namespace A366686.P2297559068287928970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093313 (A068045 n).toNat + A070081 (n + 1)

end

end A366686.P2297559068287928970

/-! ## A366686.P13632960345164775382

`A280751(A000041(n))+A070081(n+1)`
-/

namespace A366686.P13632960345164775382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280751 (A000041 n).toNat + A070081 (n + 1)

end

end A366686.P13632960345164775382

/-!
# A366689: Sum of the divisors of 11^n+1.

The programs for A366689, the canonical program `A366689.P2925135001322419960` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366689 has offset 0).

The definition of A366689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366689.P2925135001322419960

`A000203(A034524(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366689

/-- `A000203(A034524(n))` -/
def P2925135001322419960.Spec : Prop :=
  ∀ n, P2925135001322419960.a n = A366689 n

theorem P2925135001322419960.correct : P2925135001322419960.Spec := by
  intro n
  simp only [A366689]

end A366689

/-! ## A366689.P17687308905537149708

`∑{d}[11^n+1, #]`
-/

namespace A366689.P17687308905537149708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366689.P17687308905537149708

namespace A366689

/-- `∑{d}[11^n+1, #]` -/
def P17687308905537149708.Spec : Prop :=
  ∀ n, (P17687308905537149708.a n : ℤ) = A366689 n

end A366689

/-!
# A366690: a(n) = phi(11^n+1), where phi is Euler's totient function (A000010).

The programs for A366690, the canonical program `A366690.P10786875140119176482` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366690 has offset 0).

The definition of A366690 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366690.P10786875140119176482

`A000010(A034524(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A366690

/-- `A000010(A034524(n))` -/
def P10786875140119176482.Spec : Prop :=
  ∀ n, P10786875140119176482.a n = A366690 n

theorem P10786875140119176482.correct : P10786875140119176482.Spec := by
  intro n
  simp only [A366690]

end A366690

/-!
# A366691: Lexicographically earliest sequence such that each set of terms enclosed by two equal values, excluding the endpoints, contains a distinct number of elements.

The programs for A366691, there is no canonical definition to state claims against.
-/

/-! ## A366691.P17032194631190981092

`A000120(A264534(3*(n+1))+A027611(n+1))`
-/

namespace A366691.P17032194631190981092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A264534 (3 * (n + 1)) + A027611 (n + 1)).toNat

end

end A366691.P17032194631190981092

/-! ## A366691.P12351202763599749599

`A106466(lt[A047930(n+1), A141214(2*n+3)])`
-/

namespace A366691.P12351202763599749599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A366691.P12351202763599749599

/-!
# A366692: Primes that have more even digits than the next prime.

The programs for A366692, there is no canonical definition to state claims against.
-/

/-! ## A366692.P4691015873045152490

`A122072(2*n+1)%A065091(A003358(n+1))`
-/

namespace A366692.P4691015873045152490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122072 (2 * n + 1)) (A065091 (A003358 (n + 1)).toNat)

end

end A366692.P4691015873045152490

/-! ## A366692.P10255936320388046261

`filter[A045350(3*n+1), A303300(#)]`
-/

namespace A366692.P10255936320388046261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045350 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A303300 (f1 j).toNat = 1) n)

end

end A366692.P10255936320388046261

/-!
# A366693: Minimal number of primorials or their negatives that add to n.

The programs for A366693, there is no canonical definition to state claims against.
-/

/-! ## A366693.P17449600821621223896

`A034968(n-A144201(3*n+4))`
-/

namespace A366693.P17449600821621223896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 ((n : ℤ) - A144201 (3 * n + 4)).toNat

end

end A366693.P17449600821621223896

/-! ## A366693.P10599718895519760048

`A021913(A104221(n))+A008615(n+3)`
-/

namespace A366693.P10599718895519760048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A104221 n).toNat + A008615 (n + 3)

end

end A366693.P10599718895519760048

/-! ## A366693.P13854962604359415910

`A007302(2*A331865(n+1))`
-/

namespace A366693.P13854962604359415910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (2 * A331865 (n + 1)).toNat

end

end A366693.P13854962604359415910

/-!
# A366694: G.f. satisfies A(x) = (1 + x)^2 + x*A(x)^2.

The programs for A366694, there is no canonical definition to state claims against.
-/

/-! ## A366694.P6769635110071659642

`abs(Δ[A366356(n)])`
-/

namespace A366694.P6769635110071659642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A366694.P6769635110071659642

/-! ## A366694.P15395646662977869168

`Δ[A366356(n)]*A033999(n)`
-/

namespace A366694.P15395646662977869168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A366694.P15395646662977869168

/-! ## A366694.P10585998670595829613

`abs(A366356(n+1)-A366356(n))`
-/

namespace A366694.P10585998670595829613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A366356 (n + 1) - A366356 n|

end

end A366694.P10585998670595829613

/-! ## A366694.P8619731368629659844

`lcm(Δ[A366356(n)], A008836(n+1))`
-/

namespace A366694.P8619731368629659844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A008836 (n + 1))

end

end A366694.P8619731368629659844

/-! ## A366694.P541927258201895272

`gcd(Δ[A366356(n)], A230642(2*n+3))`
-/

namespace A366694.P541927258201895272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A230642 (2 * n + 3))

end

end A366694.P541927258201895272

/-!
# A366695: G.f. satisfies A(x) = (1 + x)^3 + x*A(x)^2.

The programs for A366695, there is no canonical definition to state claims against.
-/

/-! ## A366695.P17147288759903845695

`A219652(A339226(n+1)-A003242(n))`
-/

namespace A366695.P17147288759903845695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (A339226 (n + 1) - A003242 n).toNat

end

end A366695.P17147288759903845695

/-!
# A366696: G.f. satisfies A(x) = (1 + x)^2 + x*A(x)^3.

The programs for A366696, there is no canonical definition to state claims against.
-/

/-! ## A366696.P11140487194406580367

`A195119(A002893(n)+A000788(n))`
-/

namespace A366696.P11140487194406580367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A002893 n + A000788 n).toNat

end

end A366696.P11140487194406580367

/-! ## A366696.P2014135633937991564

`A195119(A002893(n)+comp[A184922(n+1)+1])`
-/

namespace A366696.P2014135633937991564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A002893 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A366696.P2014135633937991564

/-!
# A366697: G.f. satisfies A(x) = (1 + x)^3 + x*A(x)^3.

The programs for A366697, there is no canonical definition to state claims against.
-/

/-! ## A366697.P15626508192338033224

`A110654(∑[A318433(n)+n])`
-/

namespace A366697.P15626508192338033224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318433 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A366697.P15626508192338033224

/-!
# A366698: G.f. satisfies A(x) = (1 + x)^2 + x*A(x)^4.

The programs for A366698, there is no canonical definition to state claims against.
-/

/-! ## A366698.P12726283910668908577

`A350840(A301673(n))`
-/

namespace A366698.P12726283910668908577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350840 (A301673 n).toNat

end

end A366698.P12726283910668908577

/-!
# A366699: G.f. satisfies A(x) = (1 + x)^3 + x*A(x)^4.

The programs for A366699, there is no canonical definition to state claims against.
-/

/-! ## A366699.P18138855012967162822

`A092038(A371675(n))+A007089(n)`
-/

namespace A366699.P18138855012967162822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (A371675 n).toNat + A007089 n

end

end A366699.P18138855012967162822

