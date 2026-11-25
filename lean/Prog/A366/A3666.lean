import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A366600: a(n) = (1 + A033264(n))*a(A053645(n)) for n > 0 with a(0) = 1.

The programs for A366600, the canonical program `A366600.P7705734904773832928` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366600 has offset 0).

The definition of A366600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366600.P7705734904773832928

`(1+A033264(n))*a(A053645(n))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366600

/-- `(1+A033264(n))*a(A053645(n))` -/
def P7705734904773832928.Spec : Prop :=
  ∀ n, P7705734904773832928.a n = A366600 n

theorem P7705734904773832928.correct : P7705734904773832928.Spec := by
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

/-! ## A366600.P10831523344651439910

`A046523(A064989(A322863(A122111(2*n+1))))`
-/

namespace A366600.P10831523344651439910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A064989 (A322863 (A122111 (2 * n + 1)).toNat).toNat).toNat

end

end A366600.P10831523344651439910

namespace A366600

/-- `A046523(A064989(A322863(A122111(2*n+1))))` -/
def P10831523344651439910.Spec : Prop :=
  ∀ n, P10831523344651439910.a n = A366600 n

end A366600

/-! ## A366600.P4960928367986635076

`A152423(A181733(n+1))`
-/

namespace A366600.P4960928367986635076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152423 (A181733 (n + 1)).toNat

end

end A366600.P4960928367986635076

namespace A366600

/-- `A152423(A181733(n+1))` -/
def P4960928367986635076.Spec : Prop :=
  ∀ n, P4960928367986635076.a n = A366600 n

end A366600

/-!
# A366601: a(0) = 0. For a(n-1) a novel term a(n) = a(A025480(a(n-1))), and if a(n-1) has occurred k (>1) times, a(n) = k-1 (the number of repetitions of a(n-1) in all prior terms).

The programs for A366601, there is no canonical definition to state claims against.
-/

/-! ## A366601.P16687274857351154380

`A342441(n+1)%A046951(2^n)`
-/

namespace A366601.P16687274857351154380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342441 (n + 1)) (A046951 (2 ^ n))

end

end A366601.P16687274857351154380

/-! ## A366601.P5254271430939459516

`A401735(A303989(n))`
-/

namespace A366601.P5254271430939459516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401735 (A303989 n).toNat

end

end A366601.P5254271430939459516

/-! ## A366601.P14149258535876276903

`gcd(A000120(A184983(n)), A326834(n))`
-/

namespace A366601.P14149258535876276903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A184983 n).toNat) (A326834 n)

end

end A366601.P14149258535876276903

/-! ## A366601.P16635256717568585351

`A151543(A001463(n+1))%A106466(n)`
-/

namespace A366601.P16635256717568585351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151543 (A001463 (n + 1)).toNat) (A106466 n)

end

end A366601.P16635256717568585351

/-! ## A366601.P14916520670883579394

`A346700(A223925(n+1)+A067232(n+1))`
-/

namespace A366601.P14916520670883579394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A223925 (n + 1) + A067232 (n + 1)).toNat

end

end A366601.P14916520670883579394

/-!
# A366602: Number of divisors of 4^n-1.

The programs for A366602, the canonical program `A366602.P128364681725489184` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366602 has offset 1).

The definition of A366602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366602.P128364681725489184

`A046801(2*(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366602

/-- `A046801(2*(n+1))` -/
def P128364681725489184.Spec : Prop :=
  ∀ n, P128364681725489184.a n = A366602 (n + 1)

theorem P128364681725489184.correct : P128364681725489184.Spec := by
  intro n
  simp only [A366602, Nat.add_sub_cancel]

end A366602

/-! ## A366602.P4597444425965254764

`∑{d}[1+n, A059886(#)]`
-/

namespace A366602.P4597444425965254764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059886 d

end

end A366602.P4597444425965254764

namespace A366602

/-- `∑{d}[1+n, A059886(#)]` -/
def P4597444425965254764.Spec : Prop :=
  ∀ n, P4597444425965254764.a n = A366602 (n + 1)

end A366602

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

namespace A366602

/-- `∑{d}[A000027(2*(n+1)), A059499(#)]` -/
def P835583461573635940.Spec : Prop :=
  ∀ n, P835583461573635940.a n = A366602 (n + 1)

end A366602

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

namespace A366602

/-- `∑{d}[A023443(2*n+3), A059499(#)]` -/
def P3703112727760274048.Spec : Prop :=
  ∀ n, P3703112727760274048.a n = A366602 (n + 1)

end A366602

/-! ## A366602.P1591398496642218405

`A401468(2*(n+1))-A401468(2*n+1)`
-/

namespace A366602.P1591398496642218405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401468 (2 * (n + 1)) - A401468 (2 * n + 1)

end

end A366602.P1591398496642218405

namespace A366602

/-- `A401468(2*(n+1))-A401468(2*n+1)` -/
def P1591398496642218405.Spec : Prop :=
  ∀ n, P1591398496642218405.a n = A366602 (n + 1)

end A366602

/-!
# A366603: Sum of the divisors of 4^n-1.

The programs for A366603, the canonical program `A366603.P3579980380335303809` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366603 has offset 1).

The definition of A366603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366603.P3579980380335303809

`A069061(n+1)*A075708(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A366603

/-- `A069061(n+1)*A075708(n+1)` -/
def P3579980380335303809.Spec : Prop :=
  ∀ n, P3579980380335303809.a n = A366603 (n + 1)

theorem P3579980380335303809.correct : P3579980380335303809.Spec := by
  intro n
  simp only [A366603, Nat.add_sub_cancel]

end A366603

/-! ## A366603.P12601122680408156904

`A000203(4^(n+1)-1)`
-/

namespace A366603.P12601122680408156904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (4 ^ (n + 1) - 1)

end

end A366603.P12601122680408156904

namespace A366603

/-- `A000203(4^(n+1)-1)` -/
def P12601122680408156904.Spec : Prop :=
  ∀ n, P12601122680408156904.a n = A366603 (n + 1)

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

/-! ## A366604.P2542873225240322594

`log2(∏{d}[2*(n+1), 2^A086251(#)])`
-/

namespace A366604.P2542873225240322594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (A086251 d : ℤ) : ℚ) : ℝ)

end

end A366604.P2542873225240322594

/-!
# A366605: Number of distinct prime divisors of 4^n + 1.

The programs for A366605, the canonical program `A366605.P16691471640151617697` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366605 has offset 0).

The definition of A366605 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046799, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366605.P16691471640151617697

`A046799(2*n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A366605

/-- `A046799(2*n)` -/
def P16691471640151617697.Spec : Prop :=
  ∀ n, P16691471640151617697.a n = A366605 n

theorem P16691471640151617697.correct : P16691471640151617697.Spec := by
  intro n
  simp only [A366605]

end A366605

/-! ## A366605.P6883959276493258558

`A322811(A073582(Δ[n²]))`
-/

namespace A366605.P6883959276493258558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A073582 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A366605.P6883959276493258558

namespace A366605

/-- `A322811(A073582(Δ[n²]))` -/
def P6883959276493258558.Spec : Prop :=
  ∀ n, P6883959276493258558.a n = A366605 n

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

/-! ## A366605.P7006068762978616615

`A186437(A366606(n))`
-/

namespace A366605.P7006068762978616615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186437 (A366606 n).toNat

end

end A366605.P7006068762978616615

namespace A366605

/-- `A186437(A366606(n))` -/
def P7006068762978616615.Spec : Prop :=
  ∀ n, P7006068762978616615.a n = A366605 n

end A366605

/-!
# A366606: Number of divisors of 4^n+1.

The programs for A366606, the canonical program `A366606.P16159170449788144016` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366606 has offset 0).

The definition of A366606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366606.P16159170449788144016

`A046798(2*n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366606

/-- `A046798(2*n)` -/
def P16159170449788144016.Spec : Prop :=
  ∀ n, P16159170449788144016.a n = A366606 n

theorem P16159170449788144016.correct : P16159170449788144016.Spec := by
  intro n
  simp only [A366606]

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

/-! ## A366606.P9519668497273621732

`A000005(A278242(2*n))`
-/

namespace A366606.P9519668497273621732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278242 (2 * n)).toNat

end

end A366606.P9519668497273621732

namespace A366606

/-- `A000005(A278242(2*n))` -/
def P9519668497273621732.Spec : Prop :=
  ∀ n, P9519668497273621732.a n = A366606 n

end A366606

/-!
# A366607: Sum of the divisors of 4^n+1.

The programs for A366607, the canonical program `A366607.P8039607299791983886` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366607 has offset 0).

The definition of A366607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366607.P8039607299791983886

`A000203(4^n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A366607

/-- `A000203(4^n+1)` -/
def P8039607299791983886.Spec : Prop :=
  ∀ n, P8039607299791983886.a n = A366607 n

theorem P8039607299791983886.correct : P8039607299791983886.Spec := by
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

/-! ## A366607.P1379872817496170262

`A193433(2^n)`
-/

namespace A366607.P1379872817496170262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193433 (2 ^ n)

end

end A366607.P1379872817496170262

namespace A366607

/-- `A193433(2^n)` -/
def P1379872817496170262.Spec : Prop :=
  ∀ n, P1379872817496170262.a n = A366607 n

end A366607

/-! ## A366607.P14152933341672026982

`∑{d}[4^n+1, #]`
-/

namespace A366607.P14152933341672026982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366607.P14152933341672026982

namespace A366607

/-- `∑{d}[4^n+1, #]` -/
def P14152933341672026982.Spec : Prop :=
  ∀ n, (P14152933341672026982.a n : ℤ) = A366607 n

end A366607

/-!
# A366608: a(n) = phi(4^n+1), where phi is Euler's totient function (A000010).

The programs for A366608, the canonical program `A366608.P14428264045241228728` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366608 has offset 0).

The definition of A366608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(4^n+1)` (program `A366608.P14428264045241228728`, by `A366608.P14428264045241228728.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366608.P1002265853707931672

`A053285(2*n)`
-/

namespace A366608.P1002265853707931672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053285 (2 * n)

end

end A366608.P1002265853707931672

namespace A366608

/-- `A053285(2*n)` -/
def P1002265853707931672.Spec : Prop :=
  ∀ n, P1002265853707931672.a n = A366608 n

end A366608

/-! ## A366608.P14428264045241228728

`A000010(4^n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366608

/-- `A000010(4^n+1)` -/
def P14428264045241228728.Spec : Prop :=
  ∀ n, P14428264045241228728.a n = A366608 n

theorem P14428264045241228728.correct : P14428264045241228728.Spec := by
  intro n
  simp only [A366608]

end A366608

/-! ## A366608.P2596879897137398695

`record[A053285(A014681(n))]`
-/

namespace A366608.P2596879897137398695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053285 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366608.P2596879897137398695

namespace A366608

/-- `record[A053285(A014681(n))]` -/
def P2596879897137398695.Spec : Prop :=
  ∀ n, P2596879897137398695.a n = A366608 n

end A366608

/-! ## A366608.P7826687720994703735

`record[A053285(n)/A000034(n)]`
-/

namespace A366608.P7826687720994703735
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053285 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366608.P7826687720994703735

namespace A366608

/-- `record[A053285(n)/A000034(n)]` -/
def P7826687720994703735.Spec : Prop :=
  ∀ n, P7826687720994703735.a n = (A366608 n : ℚ)

end A366608

/-! ## A366608.P8210317661818580363

`record[A053285(n)/A033999(n)]`
-/

namespace A366608.P8210317661818580363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053285 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366608.P8210317661818580363

namespace A366608

/-- `record[A053285(n)/A033999(n)]` -/
def P8210317661818580363.Spec : Prop :=
  ∀ n, P8210317661818580363.a n = (A366608 n : ℚ)

end A366608

/-! ## A366608.P8307184448807222241

`record[A053285(n)/A038712(n+1)]`
-/

namespace A366608.P8307184448807222241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053285 n : ℚ) / (A038712 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366608.P8307184448807222241

namespace A366608

/-- `record[A053285(n)/A038712(n+1)]` -/
def P8307184448807222241.Spec : Prop :=
  ∀ n, P8307184448807222241.a n = (A366608 n : ℚ)

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

/-! ## A366609.P6349727420841834530

`A089120(2^n)`
-/

namespace A366609.P6349727420841834530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (2 ^ n)

end

end A366609.P6349727420841834530

/-! ## A366609.P15514137334736570091

`A020639(A052539(n))`
-/

namespace A366609.P15514137334736570091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A052539 n).toNat

end

end A366609.P15514137334736570091

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

/-! ## A366611.P7159890501739781643

`A337383(A042467(n))+A000005(n+1)`
-/

namespace A366611.P7159890501739781643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337383 (A042467 n).toNat + A000005 (n + 1)

end

end A366611.P7159890501739781643

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

The programs for A366613, the canonical program `A366613.P1524079771343598178` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366613 has offset 1).

The definition of A366613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366613.P1524079771343598178

`A000203(5^(n+1)-1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A366613

/-- `A000203(5^(n+1)-1)` -/
def P1524079771343598178.Spec : Prop :=
  ∀ n, P1524079771343598178.a n = A366613 (n + 1)

theorem P1524079771343598178.correct : P1524079771343598178.Spec := by
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

/-! ## A366613.P16434869366937698939

`record[A000203(A024049(((n+1)/2^val(n+1, 2)+1)/2))]`
-/

namespace A366613.P16434869366937698939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A024049 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366613.P16434869366937698939

namespace A366613

/-- `record[A000203(A024049(((n+1)/2^val(n+1, 2)+1)/2))]` -/
def P16434869366937698939.Spec : Prop :=
  ∀ n, P16434869366937698939.a n = A366613 (n + 1)

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

/-! ## A366614.P26604414466234812

`and(A001222(n+4), A093641(A113405(n+3)))`
-/

namespace A366614.P26604414466234812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (n + 4)) (A093641 (A113405 (n + 3)).toNat)

end

end A366614.P26604414466234812

/-! ## A366614.P2949900063178021979

`A001222(n+4)%A020497(A107876(2*n+1))`
-/

namespace A366614.P2949900063178021979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (n + 4)) (A020497 (A107876 (2 * n + 1)).toNat)

end

end A366614.P2949900063178021979

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

/-! ## A366615.P7494083905483549655

`A083399(A007910(n))`
-/

namespace A366615.P7494083905483549655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (A007910 n).toNat

end

end A366615.P7494083905483549655

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

/-! ## A366616.P6906833335002433628

`A000005((n+1)*(A096617(n+1)+2))`
-/

namespace A366616.P6906833335002433628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * (A096617 (n + 1) + 2)).toNat

end

end A366616.P6906833335002433628

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

/-!
# A366617: Sum of the divisors of 5^n+1.

The programs for A366617, the canonical program `A366617.P8465372973054877366` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366617 has offset 0).

The definition of A366617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366617.P8465372973054877366

`A000203(5^n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A366617

/-- `A000203(5^n+1)` -/
def P8465372973054877366.Spec : Prop :=
  ∀ n, P8465372973054877366.a n = A366617 n

theorem P8465372973054877366.correct : P8465372973054877366.Spec := by
  intro n
  simp only [A366617]

end A366617

/-! ## A366617.P5065399303945563390

`∑{d}[1+5^n, #]`
-/

namespace A366617.P5065399303945563390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366617.P5065399303945563390

namespace A366617

/-- `∑{d}[1+5^n, #]` -/
def P5065399303945563390.Spec : Prop :=
  ∀ n, (P5065399303945563390.a n : ℤ) = A366617 n

theorem P5065399303945563390.correct : P5065399303945563390.Spec := by
  intro n
  simp only [A366617, Nat.add_sub_cancel, A366617.P5065399303945563390.f1, A366617.P5065399303945563390.a, A366617.P8465372973054877366.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

/-!
# A366618: a(n) = phi(5^n+1), where phi is Euler's totient function (A000010).

The programs for A366618, the canonical program `A366618.P1242546695547909899` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366618 has offset 0).

The definition of A366618 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(5^n+1)` (program `A366618.P1242546695547909899`, by `A366618.P1242546695547909899.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366618.P1242546695547909899

`A000010(5^n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366618

/-- `A000010(5^n+1)` -/
def P1242546695547909899.Spec : Prop :=
  ∀ n, P1242546695547909899.a n = A366618 n

theorem P1242546695547909899.correct : P1242546695547909899.Spec := by
  intro n
  simp only [A366618]

end A366618

/-! ## A366618.P9303542886529041101

`A027741(2*n)/A027741(n)`
-/

namespace A366618.P9303542886529041101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027741 (2 * n) : ℚ) / (A027741 n : ℚ)

end

end A366618.P9303542886529041101

namespace A366618

/-- `A027741(2*n)/A027741(n)` -/
def P9303542886529041101.Spec : Prop :=
  ∀ n, P9303542886529041101.a n = (A366618 n : ℚ)

end A366618

/-! ## A366618.P2035693773850943195

`A062570(A034478(n))`
-/

namespace A366618.P2035693773850943195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A034478 n).toNat

end

end A366618.P2035693773850943195

namespace A366618

/-- `A062570(A034478(n))` -/
def P2035693773850943195.Spec : Prop :=
  ∀ n, P2035693773850943195.a n = A366618 n

end A366618

/-!
# A366619: Group the natural numbers into blocks of size 2: [1,2], [3,4], ... and reverse the order of the numbers within each block. Then group into blocks of size 3 and reverse the order in each block.

The programs for A366619, the canonical program `A366619.P16516630886687197366` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366619 has offset 1).

The definition of A366619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366619.P11131105981959412965

`ogf((4+x-2x^2+3x^4)/(1-x^2-x^3+x^5))`
-/

namespace A366619.P11131105981959412965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, -2, 0, 3] [1, 0, -1, -1, 0, 1] n

end

end A366619.P11131105981959412965

namespace A366619

/-- `ogf((4+x-2x^2+3x^4)/(1-x^2-x^3+x^5))` -/
def P11131105981959412965.Spec : Prop :=
  ∀ n, P11131105981959412965.a n = A366619 (n + 1)

end A366619

/-! ## A366619.P16516630886687197366

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=4, a(1)=1, a(2)=2, a(3)=5, a(4)=6`

The canonical program, it is in `Seq.B000.C047`.
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

/-! ## A366619.P6620453097419231874

`xor(1, A330396(n))+1`
-/

namespace A366619.P6620453097419231874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A330396 n) + 1

end

end A366619.P6620453097419231874

namespace A366619

/-- `xor(1, A330396(n))+1` -/
def P6620453097419231874.Spec : Prop :=
  ∀ n, P6620453097419231874.a n = A366619 (n + 1)

end A366619

/-! ## A366619.P6500210891460985576

`A113655(n+1)+(-1)^n`
-/

namespace A366619.P6500210891460985576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (n + 1) + (-1) ^ n

end

end A366619.P6500210891460985576

namespace A366619

/-- `A113655(n+1)+(-1)^n` -/
def P6500210891460985576.Spec : Prop :=
  ∀ n, P6500210891460985576.a n = A366619 (n + 1)

end A366619

/-! ## A366619.P759539045577758001

`a(n-3)+a(A176040(n))` with `a(0)=4, a(1)=1, a(2)=2`
-/

namespace A366619.P759539045577758001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 1, 2] fun n a =>
  a (n - 3) + a (A176040 n).toNat

end

end A366619.P759539045577758001

namespace A366619

/-- `a(n-3)+a(A176040(n))` -/
def P759539045577758001.Spec : Prop :=
  ∀ n, (P759539045577758001.a n : ℤ) = A366619 (n + 1)

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

/-!
# A366620: Number of distinct prime divisors of 6^n - 1.

The programs for A366620, there is no canonical definition to state claims against.
-/

/-! ## A366620.P10498164640393506757

`A000523(A366621(n+1))`
-/

namespace A366620.P10498164640393506757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A366621 (n + 1)).toNat

end

end A366620.P10498164640393506757

/-! ## A366620.P9107402628481097634

`∑{e}[A366621(n+1)%A198452(2*n+3), #]`
-/

namespace A366620.P9107402628481097634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366621 (n + 1)) (A198452 (2 * n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A366620.P9107402628481097634

/-! ## A366620.P2453816477621151739

`A001222(A366621(n+1)%A198452(2*(n+1)))`
-/

namespace A366620.P2453816477621151739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A366621 (n + 1)) (A198452 (2 * (n + 1)))).toNat

end

end A366620.P2453816477621151739

/-! ## A366620.P16289859829831166526

`A338652(A009441(n+1))`
-/

namespace A366620.P16289859829831166526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338652 (A009441 (n + 1)).toNat

end

end A366620.P16289859829831166526

/-! ## A366620.P13021555560107847184

`A050252(A367864(n+1))`
-/

namespace A366620.P13021555560107847184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A367864 (n + 1)).toNat

end

end A366620.P13021555560107847184

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

The programs for A366622, the canonical program `A366622.P13100210814763586360` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366622 has offset 1).

The definition of A366622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366622.P13100210814763586360

`A000203(6^(n+1)-1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A366622

/-- `A000203(6^(n+1)-1)` -/
def P13100210814763586360.Spec : Prop :=
  ∀ n, P13100210814763586360.a n = A366622 (n + 1)

theorem P13100210814763586360.correct : P13100210814763586360.Spec := by
  intro n
  simp only [A366622, Nat.add_sub_cancel]

end A366622

/-! ## A366622.P8703984535066537196

`∑{d}[∑[5*6^n], #]`
-/

namespace A366622.P8703984535066537196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * 6 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366622.P8703984535066537196

namespace A366622

/-- `∑{d}[∑[5*6^n], #]` -/
def P8703984535066537196.Spec : Prop :=
  ∀ n, (P8703984535066537196.a n : ℤ) = A366622 (n + 1)

end A366622

/-! ## A366622.P3688667864215155310

`record[∑{d}[A024062(A366580(n)), #]]`
-/

namespace A366622.P3688667864215155310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024062 (A366580 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366622.P3688667864215155310

namespace A366622

/-- `record[∑{d}[A024062(A366580(n)), #]]` -/
def P3688667864215155310.Spec : Prop :=
  ∀ n, (P3688667864215155310.a n : ℤ) = A366622 (n + 1)

end A366622

/-!
# A366623: a(n) = phi(6^n-1), where phi is Euler's totient function (A000010).

The programs for A366623, the canonical program `A366623.P10921304423502030396` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366623 has offset 1).

The definition of A366623 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(6^(n+1)-1)` (program `A366623.P10921304423502030396`, by `A366623.P10921304423502030396.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366623.P10921304423502030396

`A000010(6^(n+1)-1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366623

/-- `A000010(6^(n+1)-1)` -/
def P10921304423502030396.Spec : Prop :=
  ∀ n, P10921304423502030396.a n = A366623 (n + 1)

theorem P10921304423502030396.correct : P10921304423502030396.Spec := by
  intro n
  simp only [A366623, Nat.add_sub_cancel]

end A366623

/-! ## A366623.P13117424388495196592

`(1+n)*A295496(n+1)`
-/

namespace A366623.P13117424388495196592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A295496 (n + 1)

end

end A366623.P13117424388495196592

namespace A366623

/-- `(1+n)*A295496(n+1)` -/
def P13117424388495196592.Spec : Prop :=
  ∀ n, P13117424388495196592.a n = A366623 (n + 1)

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

/-! ## A366623.P14569902314901931196

`(1+n)*A369291(A052905(n+2)+1)`
-/

namespace A366623.P14569902314901931196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A369291 (A052905 (n + 2) + 1).toNat

end

end A366623.P14569902314901931196

namespace A366623

/-- `(1+n)*A369291(A052905(n+2)+1)` -/
def P14569902314901931196.Spec : Prop :=
  ∀ n, P14569902314901931196.a n = A366623 (n + 1)

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

/-! ## A366624.P8097582461876250906

`A366625(n+1)`
-/

namespace A366624.P8097582461876250906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366625 (n + 1)

end

end A366624.P8097582461876250906

/-! ## A366624.P16221792046356298256

`A355770(A044907(n+1))`
-/

namespace A366624.P16221792046356298256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355770 (A044907 (n + 1)).toNat

end

end A366624.P16221792046356298256

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

The programs for A366626, the canonical program `A366626.P3641504166637669905` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366626 has offset 1).

The definition of A366626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366626.P3641504166637669905

`A366619(A113778(n+1))`

The canonical program, it is in `Seq.B001.C014`.
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

/-! ## A366627.P7709868353770706680

`A001222(A366628(n))`
-/

namespace A366627.P7709868353770706680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A366628 n).toNat

end

end A366627.P7709868353770706680

/-! ## A366627.P2416730902395382007

`A000523(A366628(n))`
-/

namespace A366627.P2416730902395382007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A366628 n).toNat

end

end A366627.P2416730902395382007

/-! ## A366627.P3463396877872478218

`A345874(A366628(n)/2)`
-/

namespace A366627.P3463396877872478218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345874 (SequenceMachineLib.roundAway ((A366628 n : ℚ) / 2)).toNat

end

end A366627.P3463396877872478218

/-!
# A366629: Sum of the divisors of 6^n+1.

The programs for A366629, the canonical program `A366629.P5747124109508838067` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366629 has offset 0).

The definition of A366629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366629.P5747124109508838067

`A000203(6^n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A366629

/-- `A000203(6^n+1)` -/
def P5747124109508838067.Spec : Prop :=
  ∀ n, P5747124109508838067.a n = A366629 n

theorem P5747124109508838067.correct : P5747124109508838067.Spec := by
  intro n
  simp only [A366629]

end A366629

/-! ## A366629.P8294956880121679784

`∑{d}[1+6^n, #]`
-/

namespace A366629.P8294956880121679784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 6 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366629.P8294956880121679784

namespace A366629

/-- `∑{d}[1+6^n, #]` -/
def P8294956880121679784.Spec : Prop :=
  ∀ n, (P8294956880121679784.a n : ℤ) = A366629 n

theorem P8294956880121679784.correct : P8294956880121679784.Spec := by
  intro n
  simp only [A366629, Nat.add_sub_cancel, A366629.P8294956880121679784.f1, A366629.P8294956880121679784.a, A366629.P5747124109508838067.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

/-!
# A366630: a(n) = phi(6^n+1), where phi is Euler's totient function (A000010).

The programs for A366630, the canonical program `A366630.P7833096479860234076` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366630 has offset 0).

The definition of A366630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(6^n+1)` (program `A366630.P7833096479860234076`, by `A366630.P7833096479860234076.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366630.P7833096479860234076

`A000010(6^n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366630

/-- `A000010(6^n+1)` -/
def P7833096479860234076.Spec : Prop :=
  ∀ n, P7833096479860234076.a n = A366630 n

theorem P7833096479860234076.correct : P7833096479860234076.Spec := by
  intro n
  simp only [A366630]

end A366630

/-! ## A366630.P13716604061318045466

`record[∏{p}[6^row(n)+1, #-1]]`
-/

namespace A366630.P13716604061318045466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ SequenceMachineLib.triRow n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366630.P13716604061318045466

namespace A366630

/-- `record[∏{p}[6^row(n)+1, #-1]]` -/
def P13716604061318045466.Spec : Prop :=
  ∀ n, P13716604061318045466.a n = A366630 n

end A366630

/-! ## A366630.P860582627017077141

`A003958(1+6^n)`
-/

namespace A366630.P860582627017077141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (1 + 6 ^ n)

end

end A366630.P860582627017077141

namespace A366630

/-- `A003958(1+6^n)` -/
def P860582627017077141.Spec : Prop :=
  ∀ n, P860582627017077141.a n = A366630 n

end A366630

/-!
# A366633: Number of divisors of 7^n-1.

The programs for A366633, there is no canonical definition to state claims against.
-/

/-! ## A366633.P17805447024213533096

`∑{d}[1+n, A059889(#)]`
-/

namespace A366633.P17805447024213533096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059889 d

end

end A366633.P17805447024213533096

/-!
# A366634: Sum of the divisors of 7^n-1.

The programs for A366634, the canonical program `A366634.P17183935044073380383` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366634 has offset 1).

The definition of A366634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366634.P17183935044073380383

`A000203(7^(n+1)-1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A366634

/-- `A000203(7^(n+1)-1)` -/
def P17183935044073380383.Spec : Prop :=
  ∀ n, P17183935044073380383.a n = A366634 (n + 1)

theorem P17183935044073380383.correct : P17183935044073380383.Spec := by
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

The programs for A366635, the canonical program `A366635.P16262625894692020405` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366635 has offset 1).

The definition of A366635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(7^(n+1)-1)` (program `A366635.P16262625894692020405`, by `A366635.P16262625894692020405.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366635.P16262625894692020405

`A000010(7^(n+1)-1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366635

/-- `A000010(7^(n+1)-1)` -/
def P16262625894692020405.Spec : Prop :=
  ∀ n, P16262625894692020405.a n = A366635 (n + 1)

theorem P16262625894692020405.correct : P16262625894692020405.Spec := by
  intro n
  simp only [A366635, Nat.add_sub_cancel]

end A366635

/-! ## A366635.P15951540015081486496

`(n+1)*A027743(n+1)`
-/

namespace A366635.P15951540015081486496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A027743 (n + 1)

end

end A366635.P15951540015081486496

namespace A366635

/-- `(n+1)*A027743(n+1)` -/
def P15951540015081486496.Spec : Prop :=
  ∀ n, P15951540015081486496.a n = A366635 (n + 1)

end A366635

/-! ## A366635.P13757239898091751990

`A027743(A077168(n))*A077168(n)`
-/

namespace A366635.P13757239898091751990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027743 (A077168 n).toNat * A077168 n

end

end A366635.P13757239898091751990

namespace A366635

/-- `A027743(A077168(n))*A077168(n)` -/
def P13757239898091751990.Spec : Prop :=
  ∀ n, P13757239898091751990.a n = A366635 (n + 1)

end A366635

/-!
# A366638: Sum of the divisors of 7^n+1.

The programs for A366638, the canonical program `A366638.P17400523273831283738` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366638 has offset 0).

The definition of A366638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366638.P17400523273831283738

`A000203(7^n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A366638

/-- `A000203(7^n+1)` -/
def P17400523273831283738.Spec : Prop :=
  ∀ n, P17400523273831283738.a n = A366638 n

theorem P17400523273831283738.correct : P17400523273831283738.Spec := by
  intro n
  simp only [A366638]

end A366638

/-! ## A366638.P2382225110477325904

`∑{d}[1+7^n, #]`
-/

namespace A366638.P2382225110477325904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 7 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366638.P2382225110477325904

namespace A366638

/-- `∑{d}[1+7^n, #]` -/
def P2382225110477325904.Spec : Prop :=
  ∀ n, (P2382225110477325904.a n : ℤ) = A366638 n

theorem P2382225110477325904.correct : P2382225110477325904.Spec := by
  intro n
  simp only [A366638, Nat.add_sub_cancel, A366638.P2382225110477325904.f1, A366638.P2382225110477325904.a, A366638.P17400523273831283738.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

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

/-!
# A366639: a(n) = phi(7^n+1), where phi is Euler's totient function (A000010).

The programs for A366639, the canonical program `A366639.P15705943546318512133` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366639 has offset 0).

The definition of A366639 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(7^n+1)` (program `A366639.P15705943546318512133`, by `A366639.P15705943546318512133.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366639.P15705943546318512133

`A000010(7^n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366639

/-- `A000010(7^n+1)` -/
def P15705943546318512133.Spec : Prop :=
  ∀ n, P15705943546318512133.a n = A366639 n

theorem P15705943546318512133.correct : P15705943546318512133.Spec := by
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

/-! ## A366643.P17843712032828601990

`A000005(A165725(n+1))`
-/

namespace A366643.P17843712032828601990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A165725 (n + 1)).toNat

end

end A366643.P17843712032828601990

namespace A366643

/-- `A000005(A165725(n+1))` -/
def P17843712032828601990.Spec : Prop :=
  ∀ n, P17843712032828601990.a n = A366643 (n + 1)

end A366643

/-! ## A366643.P16251781410207133218

`A035218(A064989(n+1)/1)`
-/

namespace A366643.P16251781410207133218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (SequenceMachineLib.roundAway ((A064989 (n + 1) : ℚ) / 1)).toNat

end

end A366643.P16251781410207133218

namespace A366643

/-- `A035218(A064989(n+1)/1)` -/
def P16251781410207133218.Spec : Prop :=
  ∀ n, P16251781410207133218.a n = A366643 (n + 1)

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

/-! ## A366643.P2547660495945076409

`A395530(n+1)`
-/

namespace A366643.P2547660495945076409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395530 (n + 1)

end

end A366643.P2547660495945076409

namespace A366643

/-- `A395530(n+1)` -/
def P2547660495945076409.Spec : Prop :=
  ∀ n, P2547660495945076409.a n = A366643 (n + 1)

end A366643

/-!
# A366645: G.f. A(x) satisfies A(x) = 1 + x^3 * (A(x) / (1 - x))^4.

The programs for A366645, the canonical program `A366645.P7359595234068910875` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366645 has offset 0).

The definition of A366645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366645.P7359595234068910875

`Δ[∑{#}[n-1, C(n-1, #)*A376486(#)]]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A366645

/-- `Δ[∑{#}[n-1, C(n-1, #)*A376486(#)]]` -/
def P7359595234068910875.Spec : Prop :=
  ∀ n, P7359595234068910875.a n = A366645 n

theorem P7359595234068910875.correct : P7359595234068910875.Spec := by
  intro n
  simp only [A366645]

end A366645

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

/-! ## A366648.P17260520006662324819

`A040000(n)*A195439(A028310(n))`
-/

namespace A366648.P17260520006662324819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A195439 (A028310 n).toNat

end

end A366648.P17260520006662324819

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

/-! ## A366649.P12002016469853219632

`A034699(gcd(n+1, ∏{p}[n+1, ceil(n/#)]))`
-/

namespace A366649.P12002016469853219632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Int.gcd (n + 1 : ℤ) (∏ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉))

end

end A366649.P12002016469853219632

/-! ## A366649.P11926939527398189668

`A034699(n+1)/ceil((n+1)*∏{p}[n+1, #/(n+1)])`
-/

namespace A366649.P11926939527398189668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034699 (n + 1) : ℚ) / (⌈(n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (n + 1 : ℚ))⌉ : ℚ)

end

end A366649.P11926939527398189668

/-! ## A366649.P15445104494615541733

`A048671(n+1)-A081805(n+1)`
-/

namespace A366649.P15445104494615541733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1) - A081805 (n + 1)

end

end A366649.P15445104494615541733

/-! ## A366649.P4585220615677287448

`A034699(n+1)/A014963(n+1)`
-/

namespace A366649.P4585220615677287448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034699 (n + 1) : ℚ) / (A014963 (n + 1) : ℚ)

end

end A366649.P4585220615677287448

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

/-! ## A366649.P16092891250350350133

`min(A032742(n+1), A034699(n+1))`
-/

namespace A366649.P16092891250350350133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A032742 (n + 1)) (A034699 (n + 1))

end

end A366649.P16092891250350350133

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

/-! ## A366649.P601996493285635483

`gcd(A034699(n+1), A073618(n))`
-/

namespace A366649.P601996493285635483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034699 (n + 1)) (A073618 n)

end

end A366649.P601996493285635483

/-! ## A366649.P17043852635994568865

`gcd(A003418(n), A034699(n+1))`
-/

namespace A366649.P17043852635994568865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A034699 (n + 1))

end

end A366649.P17043852635994568865

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

/-! ## A366651.P12809685681906292272

`A000005(A297294(3*(n+1)))`
-/

namespace A366651.P12809685681906292272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A297294 (3 * (n + 1))).toNat

end

end A366651.P12809685681906292272

/-! ## A366651.P2460690248746715528

`A001222(A297294(3*(1+n)))+1`
-/

namespace A366651.P2460690248746715528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A297294 (3 * (1 + n))).toNat + 1

end

end A366651.P2460690248746715528

/-! ## A366651.P4851978930704231263

`A393760(∑{e}[A297294(3*(n+1)), C(#+1, 2)])`
-/

namespace A366651.P4851978930704231263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297294 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393760 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose (Nat.factorization (f1 n).natAbs p + 1) 2)

end

end A366651.P4851978930704231263

/-! ## A366651.P3216055085891335866

`A240975(2^(n+1))`
-/

namespace A366651.P3216055085891335866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240975 (2 ^ (n + 1))

end

end A366651.P3216055085891335866

/-!
# A366652: Number of divisors of 8^n-1.

The programs for A366652, the canonical program `A366652.P6334443311420927637` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366652 has offset 1).

The definition of A366652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366652.P6334443311420927637

`A046801(3*(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366652

/-- `A046801(3*(n+1))` -/
def P6334443311420927637.Spec : Prop :=
  ∀ n, P6334443311420927637.a n = A366652 (n + 1)

theorem P6334443311420927637.correct : P6334443311420927637.Spec := by
  intro n
  simp only [A366652, Nat.add_sub_cancel]

end A366652

/-! ## A366652.P6649925792968899426

`∑{d}[1+n, A059890(#)]`
-/

namespace A366652.P6649925792968899426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059890 d

end

end A366652.P6649925792968899426

namespace A366652

/-- `∑{d}[1+n, A059890(#)]` -/
def P6649925792968899426.Spec : Prop :=
  ∀ n, P6649925792968899426.a n = A366652 (n + 1)

end A366652

/-! ## A366652.P11330349918449383228

`∑{d}[A000027(3*(1+n)), A059499(#)]`
-/

namespace A366652.P11330349918449383228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (3 * (1 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059499 d

end

end A366652.P11330349918449383228

namespace A366652

/-- `∑{d}[A000027(3*(1+n)), A059499(#)]` -/
def P11330349918449383228.Spec : Prop :=
  ∀ n, P11330349918449383228.a n = A366652 (n + 1)

end A366652

/-!
# A366653: Sum of the divisors of 8^n-1.

The programs for A366653, the canonical program `A366653.P16437631560606292113` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366653 has offset 1).

The definition of A366653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366653.P16437631560606292113

`A075708(3*(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A366653

/-- `A075708(3*(n+1))` -/
def P16437631560606292113.Spec : Prop :=
  ∀ n, P16437631560606292113.a n = A366653 (n + 1)

theorem P16437631560606292113.correct : P16437631560606292113.Spec := by
  intro n
  simp only [A366653, Nat.add_sub_cancel]

end A366653

/-! ## A366653.P5261998553710491797

`A234860(2^(n+1))`
-/

namespace A366653.P5261998553710491797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234860 (2 ^ (n + 1))

end

end A366653.P5261998553710491797

namespace A366653

/-- `A234860(2^(n+1))` -/
def P5261998553710491797.Spec : Prop :=
  ∀ n, P5261998553710491797.a n = A366653 (n + 1)

end A366653

/-!
# A366654: a(n) = phi(8^n-1), where phi is Euler's totient function (A000010).

The programs for A366654, the canonical program `A366654.P17838431318588604415` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366654 has offset 1).

The definition of A366654 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(8^(n+1)-1)` (program `A366654.P17838431318588604415`, by `A366654.P17838431318588604415.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366654.P3224767880021133943

`A053287(3*(n+1))`
-/

namespace A366654.P3224767880021133943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053287 (3 * (n + 1))

end

end A366654.P3224767880021133943

namespace A366654

/-- `A053287(3*(n+1))` -/
def P3224767880021133943.Spec : Prop :=
  ∀ n, P3224767880021133943.a n = A366654 (n + 1)

end A366654

/-! ## A366654.P17838431318588604415

`A000010(8^(n+1)-1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366654

/-- `A000010(8^(n+1)-1)` -/
def P17838431318588604415.Spec : Prop :=
  ∀ n, P17838431318588604415.a n = A366654 (n + 1)

theorem P17838431318588604415.correct : P17838431318588604415.Spec := by
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

/-! ## A366654.P18150730191291405503

`3*(n+1)*A000020(3*(n+1))`
-/

namespace A366654.P18150730191291405503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) * A000020 (3 * (n + 1))

end

end A366654.P18150730191291405503

namespace A366654

/-- `3*(n+1)*A000020(3*(n+1))` -/
def P18150730191291405503.Spec : Prop :=
  ∀ n, P18150730191291405503.a n = A366654 (n + 1)

end A366654

/-! ## A366654.P9232399553471910889

`record[A053287(A008486(abs(1-n)))]`
-/

namespace A366654.P9232399553471910889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053287 (A008486 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366654.P9232399553471910889

namespace A366654

/-- `record[A053287(A008486(abs(1-n)))]` -/
def P9232399553471910889.Spec : Prop :=
  ∀ n, P9232399553471910889.a n = A366654 (n + 1)

end A366654

/-! ## A366654.P17918302779921355374

`A000020(3*(n+1))*A008585(n+1)`
-/

namespace A366654.P17918302779921355374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (3 * (n + 1)) * A008585 (n + 1)

end

end A366654.P17918302779921355374

namespace A366654

/-- `A000020(3*(n+1))*A008585(n+1)` -/
def P17918302779921355374.Spec : Prop :=
  ∀ n, P17918302779921355374.a n = A366654 (n + 1)

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

The programs for A366655, the canonical program `A366655.P3595836475585718572` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366655 has offset 0).

The definition of A366655 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046799, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366655.P3595836475585718572

`A046799(3*n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A366655

/-- `A046799(3*n)` -/
def P3595836475585718572.Spec : Prop :=
  ∀ n, P3595836475585718572.a n = A366655 n

theorem P3595836475585718572.correct : P3595836475585718572.Spec := by
  intro n
  simp only [A366655]

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

The programs for A366656, the canonical program `A366656.P9970264767175051345` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366656 has offset 0).

The definition of A366656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366656.P9970264767175051345

`A046798(3*n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366656

/-- `A046798(3*n)` -/
def P9970264767175051345.Spec : Prop :=
  ∀ n, P9970264767175051345.a n = A366656 n

theorem P9970264767175051345.correct : P9970264767175051345.Spec := by
  intro n
  simp only [A366656]

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

/-! ## A366656.P15260701676676588902

`A000005(A278242(3*n))`
-/

namespace A366656.P15260701676676588902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278242 (3 * n)).toNat

end

end A366656.P15260701676676588902

namespace A366656

/-- `A000005(A278242(3*n))` -/
def P15260701676676588902.Spec : Prop :=
  ∀ n, P15260701676676588902.a n = A366656 n

end A366656

/-! ## A366656.P11016629074441255739

`A396945(2^n)`
-/

namespace A366656.P11016629074441255739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396945 (2 ^ n)

end

end A366656.P11016629074441255739

namespace A366656

/-- `A396945(2^n)` -/
def P11016629074441255739.Spec : Prop :=
  ∀ n, P11016629074441255739.a n = A366656 n

theorem P11016629074441255739.correct : P11016629074441255739.Spec := by
  intro n
  simp only [A366656, Nat.add_sub_cancel, A366656.P11016629074441255739.a, A366656.P9970264767175051345.a, A046798, A046798.P1283499417333976298.a, A396945, A396945.P1470108520854866059.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A366656

/-!
# A366657: Sum of the divisors of 8^n+1.

The programs for A366657, the canonical program `A366657.P6363442434255801566` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366657 has offset 0).

The definition of A366657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366657.P6363442434255801566

`A000203(8^n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A366657

/-- `A000203(8^n+1)` -/
def P6363442434255801566.Spec : Prop :=
  ∀ n, P6363442434255801566.a n = A366657 n

theorem P6363442434255801566.correct : P6363442434255801566.Spec := by
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

/-!
# A366658: a(n) = phi(8^n+1), where phi is Euler's totient function (A000010).

The programs for A366658, the canonical program `A366658.P7749406703637050937` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366658 has offset 0).

The definition of A366658 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(8^n+1)` (program `A366658.P7749406703637050937`, by `A366658.P7749406703637050937.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366658.P16706741294913406214

`A053285(3*n)`
-/

namespace A366658.P16706741294913406214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053285 (3 * n)

end

end A366658.P16706741294913406214

namespace A366658

/-- `A053285(3*n)` -/
def P16706741294913406214.Spec : Prop :=
  ∀ n, P16706741294913406214.a n = A366658 n

end A366658

/-! ## A366658.P7749406703637050937

`A000010(8^n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366658

/-- `A000010(8^n+1)` -/
def P7749406703637050937.Spec : Prop :=
  ∀ n, P7749406703637050937.a n = A366658 n

theorem P7749406703637050937.correct : P7749406703637050937.Spec := by
  intro n
  simp only [A366658]

end A366658

/-! ## A366658.P8751604536994554373

`record[A053285(n)/A100402(n)]`
-/

namespace A366658.P8751604536994554373
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053285 n : ℚ) / (A100402 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366658.P8751604536994554373

namespace A366658

/-- `record[A053285(n)/A100402(n)]` -/
def P8751604536994554373.Spec : Prop :=
  ∀ n, P8751604536994554373.a n = (A366658 n : ℚ)

end A366658

/-!
# A366659: a(n) = Sum_{k=1..n} (-1)^(k-1) * binomial(floor(n/k)+3,4).

The programs for A366659, the canonical program `A366659.P11942156544130813685` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366659 has offset 1).

The definition of A366659 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(floor((n+1)/(#+1))+3, 4)]` (program `A366659.P11942156544130813685`, by `A366659.P11942156544130813685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366659.P11942156544130813685

`∑{#}[n, (-1)^#*C(floor((n+1)/(#+1))+3, 4)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A366659

/-- `∑{#}[n, (-1)^#*C(floor((n+1)/(#+1))+3, 4)]` -/
def P11942156544130813685.Spec : Prop :=
  ∀ n, P11942156544130813685.a n = A366659 (n + 1)

theorem P11942156544130813685.correct : P11942156544130813685.Spec := by
  intro n
  simp only [A366659, Nat.add_sub_cancel]

end A366659

/-! ## A366659.P8822923101108990803

`∑[A366813(1+n)]`
-/

namespace A366659.P8822923101108990803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366813 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366659.P8822923101108990803

namespace A366659

/-- `∑[A366813(1+n)]` -/
def P8822923101108990803.Spec : Prop :=
  ∀ n, P8822923101108990803.a n = A366659 (n + 1)

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

/-! ## A366659.P17539296675776061284

`∑[∑{d}[n+1, A230074(#)*A338046((n+1)/#)]]`
-/

namespace A366659.P17539296675776061284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A230074 d * A338046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366659.P17539296675776061284

namespace A366659

/-- `∑[∑{d}[n+1, A230074(#)*A338046((n+1)/#)]]` -/
def P17539296675776061284.Spec : Prop :=
  ∀ n, P17539296675776061284.a n = A366659 (n + 1)

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

/-! ## A366661.P1015294955375424915

`∑{d}[2*(n+1), A059885(#)]`
-/

namespace A366661.P1015294955375424915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059885 d

end

end A366661.P1015294955375424915

/-! ## A366661.P15930218478096238716

`A347191(3^(1+n))`
-/

namespace A366661.P15930218478096238716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347191 (3 ^ (1 + n))

end

end A366661.P15930218478096238716

/-!
# A366662: Sum of the divisors of 9^n-1.

The programs for A366662, the canonical program `A366662.P10540337059653051103` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366662 has offset 1).

The definition of A366662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366662.P10540337059653051103

`A366576(2*(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A366662

/-- `A366576(2*(n+1))` -/
def P10540337059653051103.Spec : Prop :=
  ∀ n, P10540337059653051103.a n = A366662 (n + 1)

theorem P10540337059653051103.correct : P10540337059653051103.Spec := by
  intro n
  simp only [A366662, Nat.add_sub_cancel]

end A366662

/-! ## A366662.P15247721877162431514

`record[A366576(2*A065648(n))]`
-/

namespace A366662.P15247721877162431514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366576 (2 * A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366662.P15247721877162431514

namespace A366662

/-- `record[A366576(2*A065648(n))]` -/
def P15247721877162431514.Spec : Prop :=
  ∀ n, P15247721877162431514.a n = A366662 (n + 1)

end A366662

/-! ## A366662.P9502662612453392650

`record[A366576(A065648(n)+A065648(n))]`
-/

namespace A366662.P9502662612453392650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366576 (A065648 n + A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366662.P9502662612453392650

namespace A366662

/-- `record[A366576(A065648(n)+A065648(n))]` -/
def P9502662612453392650.Spec : Prop :=
  ∀ n, P9502662612453392650.a n = A366662 (n + 1)

end A366662

/-! ## A366662.P15737616656590877429

`A062835(3^(n+1))`
-/

namespace A366662.P15737616656590877429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062835 (3 ^ (n + 1))

end

end A366662.P15737616656590877429

namespace A366662

/-- `A062835(3^(n+1))` -/
def P15737616656590877429.Spec : Prop :=
  ∀ n, P15737616656590877429.a n = A366662 (n + 1)

end A366662

/-!
# A366663: a(n) = phi(9^n-1), where phi is Euler's totient function (A000010).

The programs for A366663, the canonical program `A366663.P7873663613885470208` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366663 has offset 1).

The definition of A366663 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(9^(n+1)-1)` (program `A366663.P7873663613885470208`, by `A366663.P7873663613885470208.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366663.P12097496331306047741

`A295500(2*(n+1))`
-/

namespace A366663.P12097496331306047741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295500 (2 * (n + 1))

end

end A366663.P12097496331306047741

namespace A366663

/-- `A295500(2*(n+1))` -/
def P12097496331306047741.Spec : Prop :=
  ∀ n, P12097496331306047741.a n = A366663 (n + 1)

end A366663

/-! ## A366663.P7873663613885470208

`A000010(9^(n+1)-1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366663

/-- `A000010(9^(n+1)-1)` -/
def P7873663613885470208.Spec : Prop :=
  ∀ n, P7873663613885470208.a n = A366663 (n + 1)

theorem P7873663613885470208.correct : P7873663613885470208.Spec := by
  intro n
  simp only [A366663, Nat.add_sub_cancel]

end A366663

/-! ## A366663.P14415340512987346192

`A027745(1+n)*(n+1)`
-/

namespace A366663.P14415340512987346192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027745 (1 + n) * (n + 1 : ℤ)

end

end A366663.P14415340512987346192

namespace A366663

/-- `A027745(1+n)*(n+1)` -/
def P14415340512987346192.Spec : Prop :=
  ∀ n, P14415340512987346192.a n = A366663 (n + 1)

end A366663

/-! ## A366663.P1693316669111701150

`2*(n+1)*A027385(2*(n+1))`
-/

namespace A366663.P1693316669111701150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A027385 (2 * (n + 1))

end

end A366663.P1693316669111701150

namespace A366663

/-- `2*(n+1)*A027385(2*(n+1))` -/
def P1693316669111701150.Spec : Prop :=
  ∀ n, P1693316669111701150.a n = A366663 (n + 1)

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

/-! ## A366663.P13225611695794321855

`record[A295500(runs[A121373(n)])]`
-/

namespace A366663.P13225611695794321855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295500 (SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366663.P13225611695794321855

namespace A366663

/-- `record[A295500(runs[A121373(n)])]` -/
def P13225611695794321855.Spec : Prop :=
  ∀ n, P13225611695794321855.a n = A366663 (n + 1)

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

/-! ## A366664.P3870029839128246497

`A086833(A366665(n))`
-/

namespace A366664.P3870029839128246497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086833 (A366665 n).toNat

end

end A366664.P3870029839128246497

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

/-!
# A366666: Sum of the divisors of 9^n+1.

The programs for A366666, the canonical program `A366666.P7420732063156862119` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366666 has offset 0).

The definition of A366666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366666.P7420732063156862119

`A366578(2*n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A366666

/-- `A366578(2*n)` -/
def P7420732063156862119.Spec : Prop :=
  ∀ n, P7420732063156862119.a n = A366666 n

theorem P7420732063156862119.correct : P7420732063156862119.Spec := by
  intro n
  simp only [A366666]

end A366666

/-! ## A366666.P4085288207172119795

`A000203(9^n+1)`
-/

namespace A366666.P4085288207172119795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (9 ^ n + 1)

end

end A366666.P4085288207172119795

namespace A366666

/-- `A000203(9^n+1)` -/
def P4085288207172119795.Spec : Prop :=
  ∀ n, P4085288207172119795.a n = A366666 n

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

/-! ## A366666.P7004707836013450676

`A193433(3^n)`
-/

namespace A366666.P7004707836013450676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193433 (3 ^ n)

end

end A366666.P7004707836013450676

namespace A366666

/-- `A193433(3^n)` -/
def P7004707836013450676.Spec : Prop :=
  ∀ n, P7004707836013450676.a n = A366666 n

theorem P7004707836013450676.correct : P7004707836013450676.Spec := by
  intro n
  simp only [A366666, Nat.add_sub_cancel, A366666.P7004707836013450676.a, A366666.P7420732063156862119.a, A193433, A193433.P10219355296769695026.a, A366578, A366578.P16985884551155518971.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366666

/-!
# A366667: a(n) = phi(9^n+1), where phi is Euler's totient function (A000010).

The programs for A366667, the canonical program `A366667.P5330459095434243766` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366667 has offset 0).

The definition of A366667 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(9^n+1)` (program `A366667.P5330459095434243766`, by `A366667.P5330459095434243766.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366667.P18363183813397785951

`A366579(2*n)`
-/

namespace A366667.P18363183813397785951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366579 (2 * n)

end

end A366667.P18363183813397785951

namespace A366667

/-- `A366579(2*n)` -/
def P18363183813397785951.Spec : Prop :=
  ∀ n, P18363183813397785951.a n = A366667 n

end A366667

/-! ## A366667.P5330459095434243766

`A000010(9^n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366667

/-- `A000010(9^n+1)` -/
def P5330459095434243766.Spec : Prop :=
  ∀ n, P5330459095434243766.a n = A366667 n

theorem P5330459095434243766.correct : P5330459095434243766.Spec := by
  intro n
  simp only [A366667]

end A366667

/-! ## A366667.P1410118692187975633

`record[A366579(n)^((n+1)%2)]`
-/

namespace A366667.P1410118692187975633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366579 n ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366667.P1410118692187975633

namespace A366667

/-- `record[A366579(n)^((n+1)%2)]` -/
def P1410118692187975633.Spec : Prop :=
  ∀ n, P1410118692187975633.a n = A366667 n

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

The programs for A366668, the canonical program `A366668.P14104649623985614454` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366668 has offset 0).

The definition of A366668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366668.P14104649623985614454

`A000203(10^n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A366668

/-- `A000203(10^n+1)` -/
def P14104649623985614454.Spec : Prop :=
  ∀ n, P14104649623985614454.a n = A366668 n

theorem P14104649623985614454.correct : P14104649623985614454.Spec := by
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

The programs for A366669, the canonical program `A366669.P17181409498340462994` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366669 has offset 0).

The definition of A366669 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(10^n+1)` (program `A366669.P17181409498340462994`, by `A366669.P17181409498340462994.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366669.P17181409498340462994

`A000010(10^n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366669

/-- `A000010(10^n+1)` -/
def P17181409498340462994.Spec : Prop :=
  ∀ n, P17181409498340462994.a n = A366669 n

theorem P17181409498340462994.correct : P17181409498340462994.Spec := by
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

/-!
# A366670: Smallest prime dividing 6^n + 1.

The programs for A366670, there is no canonical definition to state claims against.
-/

/-! ## A366670.P1097859352920297572

`A346704(2*(6^n+1))`
-/

namespace A366670.P1097859352920297572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346704 (2 * (6 ^ n + 1))

end

end A366670.P1097859352920297572

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

/-! ## A366671.P10343279349502378359

`A260218(1+floor(abs(6*n+1-ϕ)))`
-/

namespace A366671.P10343279349502378359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260218 (1 + ⌊|(6 * n + 1 : ℝ) - Real.goldenRatio|⌋).toNat

end

end A366671.P10343279349502378359

/-! ## A366671.P2029896687378476943

`A002586(n*a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A366671.P2029896687378476943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A002586 ((n : ℤ) * a (n - 1)).toNat

end

end A366671.P2029896687378476943

/-!
# A366672: a(n) = A002720(n)^n.

The programs for A366672, the canonical program `A366672.P17060177360912263348` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366672 has offset 0).

The definition of A366672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366672.P17060177360912263348

`A002720(n)^n`

The canonical program, it is in `Seq.B002.C007`.
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
# A366675: A366428 corresponding values for max(u, v) of Pythagorean triples (u, v, w) for which (u^2, v^2, w^2) is an "abc-hit".

The programs for A366675, there is no canonical definition to state claims against.
-/

/-! ## A366675.P6238682147536025374

`A375399(A375399(n+1)+A281850(2*(n+1)))`
-/

namespace A366675.P6238682147536025374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375399 (A375399 (n + 1) + A281850 (2 * (n + 1))).toNat

end

end A366675.P6238682147536025374

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

/-! ## A366677.P9844098610341583193

`A083891(∑{#}[n, (-1)^#*C(3*n+#, n-#)])+C(4*n, n)/(3*n+1)`
-/

namespace A366677.P9844098610341583193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083891 (∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (3 * n + k) ((n : ℤ) - (k : ℤ)).toNat : ℤ)).toNat : ℚ) + (Nat.choose (4 * n) n : ℚ) / (3 * n + 1 : ℚ)

end

end A366677.P9844098610341583193

/-!
# A366681: Number of distinct prime divisors of 11^n - 1.

The programs for A366681, there is no canonical definition to state claims against.
-/

/-! ## A366681.P11388457293681624662

`A000005(n+1)+∑{e}[A305154(n)+1, #]-1`
-/

namespace A366681.P11388457293681624662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305154 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1)

end

end A366681.P11388457293681624662

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

/-! ## A366684.P9735547970821532242

`∑{d}[1-11^(n+1), #]`
-/

namespace A366684.P9735547970821532242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (11 ^ (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366684.P9735547970821532242

/-!
# A366685: a(n) = phi(11^n-1), where phi is Euler's totient function (A000010).

The programs for A366685, there is no canonical definition to state claims against.
-/

/-! ## A366685.P7492737898053353167

`(1+n)*A319166(1+n)`
-/

namespace A366685.P7492737898053353167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A319166 (1 + n)

end

end A366685.P7492737898053353167

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

/-! ## A366685.P18317421306242461345

`(1+n)*A158502(A000096(n+3)+n+2)`
-/

namespace A366685.P18317421306242461345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A158502 (A000096 (n + 3) + (n + 2 : ℤ)).toNat

end

end A366685.P18317421306242461345

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

/-! ## A366686.P9863990462924433907

`A043558(5+A200745(3*n+4)*2*n)`
-/

namespace A366686.P9863990462924433907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043558 (5 + A200745 (3 * n + 4) * (2 * n : ℤ)).toNat

end

end A366686.P9863990462924433907

/-! ## A366686.P5504538379635107875

`∑{e}[A270613(3*n+1)+A083031(n+1), #]+1`
-/

namespace A366686.P5504538379635107875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270613 (3 * n + 1) + A083031 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A366686.P5504538379635107875

/-! ## A366686.P2026988324510751097

`A129251(A008956(n))+A070081(n+1)`
-/

namespace A366686.P2026988324510751097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A008956 n).toNat + A070081 (n + 1)

end

end A366686.P2026988324510751097

/-!
# A366687: Number of prime factors of 11^n + 1 (counted with multiplicity).

The programs for A366687, there is no canonical definition to state claims against.
-/

/-! ## A366687.P14269434643596227731

`A001222(A385644(n+1)+A000252(2*(n+1)))`
-/

namespace A366687.P14269434643596227731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A385644 (n + 1) + A000252 (2 * (n + 1))).toNat

end

end A366687.P14269434643596227731

/-!
# A366689: Sum of the divisors of 11^n+1.

The programs for A366689, the canonical program `A366689.P13230568648629321439` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366689 has offset 0).

The definition of A366689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366689.P13230568648629321439

`A000203(11^n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A366689

/-- `A000203(11^n+1)` -/
def P13230568648629321439.Spec : Prop :=
  ∀ n, P13230568648629321439.a n = A366689 n

theorem P13230568648629321439.correct : P13230568648629321439.Spec := by
  intro n
  simp only [A366689]

end A366689

/-! ## A366689.P5886865301324418994

`∑{d}[1+11^n, #]`
-/

namespace A366689.P5886865301324418994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 11 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366689.P5886865301324418994

namespace A366689

/-- `∑{d}[1+11^n, #]` -/
def P5886865301324418994.Spec : Prop :=
  ∀ n, (P5886865301324418994.a n : ℤ) = A366689 n

theorem P5886865301324418994.correct : P5886865301324418994.Spec := by
  intro n
  simp only [A366689, Nat.add_sub_cancel, A366689.P5886865301324418994.f1, A366689.P5886865301324418994.a, A366689.P13230568648629321439.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A366689

/-!
# A366690: a(n) = phi(11^n+1), where phi is Euler's totient function (A000010).

The programs for A366690, the canonical program `A366690.P16892203957467446152` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366690 has offset 0).

The definition of A366690 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(11^n+1)` (program `A366690.P16892203957467446152`, by `A366690.P16892203957467446152.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366690.P16892203957467446152

`A000010(11^n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366690

/-- `A000010(11^n+1)` -/
def P16892203957467446152.Spec : Prop :=
  ∀ n, P16892203957467446152.a n = A366690 n

theorem P16892203957467446152.correct : P16892203957467446152.Spec := by
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

/-! ## A366693.P3167666138834188367

`∑[floor(1/(1+Δ[A206768(n+1)]))]`
-/

namespace A366693.P3167666138834188367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206768 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (1 + (f2 (n + 1) - f2 n) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366693.P3167666138834188367

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

/-! ## A366693.P5458550200719633909

`A034968(n)-A366247(A000045(n+1))`
-/

namespace A366693.P5458550200719633909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 n - A366247 (A000045 (n + 1)).toNat

end

end A366693.P5458550200719633909

/-!
# A366694: G.f. A(x) satisfies A(x) = (1 + x)^2 + x*A(x)^2.

The programs for A366694, the canonical program `A366694.P4312701160944805245` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366694 has offset 0).

The definition of A366694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366694.P4312701160944805245

`∑{#}[n, C(2*(#+1), n-#)*C(2*#, #)/(#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A366694

/-- `∑{#}[n, C(2*(#+1), n-#)*C(2*#, #)/(#+1)]` -/
def P4312701160944805245.Spec : Prop :=
  ∀ n, P4312701160944805245.a n = (A366694 n : ℚ)

end A366694

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

namespace A366694

/-- `abs(Δ[A366356(n)])` -/
def P6769635110071659642.Spec : Prop :=
  ∀ n, P6769635110071659642.a n = A366694 n

end A366694

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

namespace A366694

/-- `Δ[A366356(n)]*A033999(n)` -/
def P15395646662977869168.Spec : Prop :=
  ∀ n, P15395646662977869168.a n = A366694 n

end A366694

/-! ## A366694.P10713573571987984989

`gcd(Δ[A366356(n)], A000038(n))`
-/

namespace A366694.P10713573571987984989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A366694.P10713573571987984989

namespace A366694

/-- `gcd(Δ[A366356(n)], A000038(n))` -/
def P10713573571987984989.Spec : Prop :=
  ∀ n, (P10713573571987984989.a n : ℤ) = A366694 n

end A366694

/-! ## A366694.P10585998670595829613

`abs(A366356(n+1)-A366356(n))`
-/

namespace A366694.P10585998670595829613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A366356 (n + 1) - A366356 n|

end

end A366694.P10585998670595829613

namespace A366694

/-- `abs(A366356(n+1)-A366356(n))` -/
def P10585998670595829613.Spec : Prop :=
  ∀ n, P10585998670595829613.a n = A366694 n

end A366694

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

namespace A366694

/-- `lcm(Δ[A366356(n)], A008836(n+1))` -/
def P8619731368629659844.Spec : Prop :=
  ∀ n, (P8619731368629659844.a n : ℤ) = A366694 n

end A366694

/-! ## A366694.P10956935141090393425

`∑{#}[n, (-1)^(n-#)*C(n, #)*A162481(#)]`
-/

namespace A366694.P10956935141090393425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A162481 k : ℚ)

end

end A366694.P10956935141090393425

namespace A366694

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A162481(#)]` -/
def P10956935141090393425.Spec : Prop :=
  ∀ n, P10956935141090393425.a n = (A366694 n : ℚ)

end A366694

/-!
# A366695: G.f. A(x) satisfies A(x) = (1 + x)^3 + x*A(x)^2.

The programs for A366695, the canonical program `A366695.P11805854539456379492` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366695 has offset 0).

The definition of A366695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366695.P11805854539456379492

`∑{#}[n, C(3*(#+1), n-#)*C(2*#, #)/(#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A366695

/-- `∑{#}[n, C(3*(#+1), n-#)*C(2*#, #)/(#+1)]` -/
def P11805854539456379492.Spec : Prop :=
  ∀ n, P11805854539456379492.a n = (A366695 n : ℚ)

end A366695

/-! ## A366695.P489509305487076741

`∑{#}[n, (-1)^(n-#)*C(n, #)*A358518(#)]`
-/

namespace A366695.P489509305487076741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A358518 k : ℚ)

end

end A366695.P489509305487076741

namespace A366695

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A358518(#)]` -/
def P489509305487076741.Spec : Prop :=
  ∀ n, P489509305487076741.a n = (A366695 n : ℚ)

end A366695

/-!
# A366696: G.f. A(x) satisfies A(x) = (1 + x)^2 + x*A(x)^3.

The programs for A366696, the canonical program `A366696.P6528156230933307916` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366696 has offset 0).

The definition of A366696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366696.P6528156230933307916

`∑{#}[n, C(2*(2*#+1), n-#)*C(3*#, #)/(2*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A366696

/-- `∑{#}[n, C(2*(2*#+1), n-#)*C(3*#, #)/(2*#+1)]` -/
def P6528156230933307916.Spec : Prop :=
  ∀ n, P6528156230933307916.a n = (A366696 n : ℚ)

end A366696

/-! ## A366696.P11140487194406580367

`A195119(A002893(n)+A000788(n))`
-/

namespace A366696.P11140487194406580367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A002893 n + A000788 n).toNat

end

end A366696.P11140487194406580367

namespace A366696

/-- `A195119(A002893(n)+A000788(n))` -/
def P11140487194406580367.Spec : Prop :=
  ∀ n, P11140487194406580367.a n = A366696 n

end A366696

/-!
# A366697: G.f. A(x) satisfies A(x) = (1 + x)^3 + x*A(x)^3.

The programs for A366697, the canonical program `A366697.P9820696575009153003` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366697 has offset 0).

The definition of A366697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366697.P9820696575009153003

`∑{#}[n, C(3*(2*#+1), n-#)*C(3*#, #)/(2*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A366697

/-- `∑{#}[n, C(3*(2*#+1), n-#)*C(3*#, #)/(2*#+1)]` -/
def P9820696575009153003.Spec : Prop :=
  ∀ n, P9820696575009153003.a n = (A366697 n : ℚ)

end A366697

/-!
# A366698: G.f. A(x) satisfies A(x) = (1 + x)^2 + x*A(x)^4.

The programs for A366698, the canonical program `A366698.P7422572990812211516` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366698 has offset 0).

The definition of A366698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366698.P7422572990812211516

`∑{#}[n, C(2*(3*#+1), n-#)*C(4*#, #)/(3*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A366698

/-- `∑{#}[n, C(2*(3*#+1), n-#)*C(4*#, #)/(3*#+1)]` -/
def P7422572990812211516.Spec : Prop :=
  ∀ n, P7422572990812211516.a n = (A366698 n : ℚ)

end A366698

/-!
# A366699: G.f. A(x) satisfies A(x) = (1 + x)^3 + x*A(x)^4.

The programs for A366699, the canonical program `A366699.P17921514062194001464` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366699 has offset 0).

The definition of A366699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366699.P17921514062194001464

`∑{#}[n, C(3*(3*#+1), n-#)*C(4*#, #)/(3*#+1)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A366699

/-- `∑{#}[n, C(3*(3*#+1), n-#)*C(4*#, #)/(3*#+1)]` -/
def P17921514062194001464.Spec : Prop :=
  ∀ n, P17921514062194001464.a n = (A366699 n : ℚ)

end A366699

