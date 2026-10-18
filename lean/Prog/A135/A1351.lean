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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A135100: Numbers which divide their digital sumorial (see A131383).

The programs for A135100, there is no canonical definition to state claims against.
-/

/-! ## A135100.P17567356406677506637

`xor(A007504(n), A100936(A155020(n)))`
-/

namespace A135100.P17567356406677506637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007504 n) (A100936 (A155020 n).toNat)

end

end A135100.P17567356406677506637

/-!
# A135106: Number of physical trees of alkane structures with n carbon vertices.

The programs for A135106, there is no canonical definition to state claims against.
-/

/-! ## A135106.P162997249626034528

`∏{e}[A131577(n), A248837(#)]`
-/

namespace A135106.P162997249626034528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A248837 (Nat.factorization (f1 n).natAbs p)

end

end A135106.P162997249626034528

/-! ## A135106.P11113909796408358720

`∏{e}[∑[A166444(n)], A248837(#)]`
-/

namespace A135106.P11113909796408358720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A248837 (Nat.factorization (f1 n).natAbs p)

end

end A135106.P11113909796408358720

/-! ## A135106.P17613711870801165885

`∏{e}[A166444(n+1), A248837(#)]`
-/

namespace A135106.P17613711870801165885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A248837 (Nat.factorization (f1 n).natAbs p)

end

end A135106.P17613711870801165885

/-! ## A135106.P18067119053309604004

`A000010(a(A035168(n)))*A248837(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A135106.P18067119053309604004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000010 (a (A035168 n).toNat).toNat * A248837 (n - 1)

end

end A135106.P18067119053309604004

/-!
# A135110: Positive numbers such that the digital sum base 2 and the digital sum base 10 are in a ratio of 2:10.

The programs for A135110, the canonical program `A135110.P13140174536284070670` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135110 has offset 1).

The definition of A135110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135110.P12777217091218822528

`eq[A007953(n), A008706(A000120(n))]`
-/

namespace A135110.P12777217091218822528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135110.P12777217091218822528

namespace A135110

/-- `eq[A007953(n), A008706(A000120(n))]` -/
def P12777217091218822528.Spec : Prop :=
  ∀ n, (P12777217091218822528.a n : ℤ) = A135110 (n + 1)

end A135110

/-! ## A135110.P13140174536284070670

`eq[A008574(A000120(n)), A180018(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135110

/-- `eq[A008574(A000120(n)), A180018(n)]` -/
def P13140174536284070670.Spec : Prop :=
  ∀ n, (P13140174536284070670.a n : ℤ) = A135110 (n + 1)

theorem P13140174536284070670.correct : P13140174536284070670.Spec := by
  intro n
  simp only [A135110, Nat.add_sub_cancel]

end A135110

/-!
# A135111: Numbers such that the digital sum base 2 and the digital sum base 3 are in a ratio of 2:3.

The programs for A135111, the canonical program `A135111.P10146640050812540402` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135111 has offset 1).

The definition of A135111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 530 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135111.P10146640050812540402

`eq[A053735(n), A280167(A000120(n))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135111

/-- `eq[A053735(n), A280167(A000120(n))]` -/
def P10146640050812540402.Spec : Prop :=
  ∀ n, (P10146640050812540402.a n : ℤ) = A135111 (n + 1)

theorem P10146640050812540402.correct : P10146640050812540402.Spec := by
  intro n
  simp only [A135111, Nat.add_sub_cancel]

end A135111

/-! ## A135111.P14538967109008710017

`eq[A004277(A053735(n)), A324467(n)]`
-/

namespace A135111.P14538967109008710017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A053735 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135111.P14538967109008710017

namespace A135111

/-- `eq[A004277(A053735(n)), A324467(n)]` -/
def P14538967109008710017.Spec : Prop :=
  ∀ n, (P14538967109008710017.a n : ℤ) = A135111 (n + 1)

end A135111

/-!
# A135117: Integers k such that 10^k + 87 is a prime number.

The programs for A135117, there is no canonical definition to state claims against.
-/

/-! ## A135117.P16072537248456854963

`A134332(A320172(n+1))+A039943(n)`
-/

namespace A135117.P16072537248456854963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134332 (A320172 (n + 1)).toNat + A039943 n

end

end A135117.P16072537248456854963

/-!
# A135120: Numbers such that the digital sum base 2 and the digital sum base 3 and the digital sum base 10 all are equal.

The programs for A135120, there is no canonical definition to state claims against.
-/

/-! ## A135120.P7320980627542503706

`∩[A037308(n+1), A037315(n+1)]`
-/

namespace A135120.P7320980627542503706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135120.P7320980627542503706

/-! ## A135120.P16487943402005853731

`∩[A037301(n+1), A037315(n+1)]`
-/

namespace A135120.P16487943402005853731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135120.P16487943402005853731

/-! ## A135120.P5431622970451394849

`∩[A037301(n+1), A037308(n+2)]`
-/

namespace A135120.P5431622970451394849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037308 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135120.P5431622970451394849

/-!
# A135123: Numbers such that the digital sum base 2 and the digital sum base 3 and the digital sum base 6 all are equal.

The programs for A135123, the canonical program `A135123.P16247896730909029180` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135123 has offset 1).

The definition of A135123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 646 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135123.P16247896730909029180

`∩[A037304(n+1), A037311(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135123

/-- `∩[A037304(n+1), A037311(n+1)]` -/
def P16247896730909029180.Spec : Prop :=
  ∀ n, (P16247896730909029180.a n : ℤ) = A135123 (n + 1)

theorem P16247896730909029180.correct : P16247896730909029180.Spec := by
  intro n
  simp only [A135123, Nat.add_sub_cancel]

end A135123

/-! ## A135123.P7925485949268871969

`∩[A037301(n+1), A037304(n+1)]`
-/

namespace A135123.P7925485949268871969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135123.P7925485949268871969

namespace A135123

/-- `∩[A037301(n+1), A037304(n+1)]` -/
def P7925485949268871969.Spec : Prop :=
  ∀ n, (P7925485949268871969.a n : ℤ) = A135123 (n + 1)

end A135123

/-! ## A135123.P17966047966735153916

`∩[A037301(n+1), A037311(n+1)]`
-/

namespace A135123.P17966047966735153916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135123.P17966047966735153916

namespace A135123

/-- `∩[A037301(n+1), A037311(n+1)]` -/
def P17966047966735153916.Spec : Prop :=
  ∀ n, (P17966047966735153916.a n : ℤ) = A135123 (n + 1)

end A135123

/-!
# A135124: Numbers such that the digital sums in base 2, base 4 and base 8 are all equal.

The programs for A135124, the canonical program `A135124.P15966436925166688135` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135124 has offset 1).

The definition of A135124 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135124.P15966436925166688135

`A033045(A000695(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135124

/-- `A033045(A000695(n+1))` -/
def P15966436925166688135.Spec : Prop :=
  ∀ n, P15966436925166688135.a n = A135124 (n + 1)

theorem P15966436925166688135.correct : P15966436925166688135.Spec := by
  intro n
  simp only [A135124, Nat.add_sub_cancel]

end A135124

/-! ## A135124.P12987284612263742582

`∑[A284927(2^val(n+1, 2))]`
-/

namespace A135124.P12987284612263742582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284927 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135124.P12987284612263742582

namespace A135124

/-- `∑[A284927(2^val(n+1, 2))]` -/
def P12987284612263742582.Spec : Prop :=
  ∀ n, P12987284612263742582.a n = A135124 (n + 1)

end A135124

/-! ## A135124.P14579047804589652179

`∑[A371878(2^val(n+1, 2))]`
-/

namespace A135124.P14579047804589652179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371878 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135124.P14579047804589652179

namespace A135124

/-- `∑[A371878(2^val(n+1, 2))]` -/
def P14579047804589652179.Spec : Prop :=
  ∀ n, P14579047804589652179.a n = A135124 (n + 1)

end A135124

/-! ## A135124.P8685286244189751684

`∑[A284927(A006519(n+1))]`
-/

namespace A135124.P8685286244189751684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284927 (A006519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135124.P8685286244189751684

namespace A135124

/-- `∑[A284927(A006519(n+1))]` -/
def P8685286244189751684.Spec : Prop :=
  ∀ n, P8685286244189751684.a n = A135124 (n + 1)

end A135124

/-! ## A135124.P8896689737000104993

`∑[A284927(n+1)/A321810(n+1)]`
-/

namespace A135124.P8896689737000104993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284927 (n + 1) : ℚ) / (A321810 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135124.P8896689737000104993

namespace A135124

/-- `∑[A284927(n+1)/A321810(n+1)]` -/
def P8896689737000104993.Spec : Prop :=
  ∀ n, P8896689737000104993.a n = (A135124 (n + 1) : ℚ)

end A135124

/-! ## A135124.P10829567118367729337

`A033045(∑[(∑{d}[2^val(n+1, 2), #²]+1)/2])`
-/

namespace A135124.P10829567118367729337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 + 1 : ℕ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A135124.P10829567118367729337

namespace A135124

/-- `A033045(∑[(∑{d}[2^val(n+1, 2), #²]+1)/2])` -/
def P10829567118367729337.Spec : Prop :=
  ∀ n, P10829567118367729337.a n = A135124 (n + 1)

end A135124

/-! ## A135124.P16978316042272766512

`A033045(A054238(∑[n+1]))`
-/

namespace A135124.P16978316042272766512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (A054238 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A135124.P16978316042272766512

namespace A135124

/-- `A033045(A054238(∑[n+1]))` -/
def P16978316042272766512.Spec : Prop :=
  ∀ n, P16978316042272766512.a n = A135124 (n + 1)

end A135124

/-! ## A135124.P18429485632359642865

`A033045(∑[A276391(n+1)])`
-/

namespace A135124.P18429485632359642865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135124.P18429485632359642865

namespace A135124

/-- `A033045(∑[A276391(n+1)])` -/
def P18429485632359642865.Spec : Prop :=
  ∀ n, P18429485632359642865.a n = A135124 (n + 1)

end A135124

/-!
# A135125: Numbers such that the digital sum base 2 and the digital sum base 5 and the digital sum base 10 all are equal.

The programs for A135125, the canonical program `A135125.P7973860443630960552` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135125 has offset 1).

The definition of A135125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135125.P9738391387111723569

`∩[A037303(n+1), A037308(n+1)]`
-/

namespace A135125.P9738391387111723569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135125.P9738391387111723569

namespace A135125

/-- `∩[A037303(n+1), A037308(n+1)]` -/
def P9738391387111723569.Spec : Prop :=
  ∀ n, (P9738391387111723569.a n : ℤ) = A135125 (n + 1)

end A135125

/-! ## A135125.P7973860443630960552

`∩[A037303(n+1), A037326(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135125

/-- `∩[A037303(n+1), A037326(n+1)]` -/
def P7973860443630960552.Spec : Prop :=
  ∀ n, (P7973860443630960552.a n : ℤ) = A135125 (n + 1)

theorem P7973860443630960552.correct : P7973860443630960552.Spec := by
  intro n
  simp only [A135125, Nat.add_sub_cancel]

end A135125

/-! ## A135125.P15273895407141940660

`∩[A037308(n+1), A037326(n+1)]`
-/

namespace A135125.P15273895407141940660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135125.P15273895407141940660

namespace A135125

/-- `∩[A037308(n+1), A037326(n+1)]` -/
def P15273895407141940660.Spec : Prop :=
  ∀ n, (P15273895407141940660.a n : ℤ) = A135125 (n + 1)

end A135125

/-!
# A135126: Numbers such that the digital sums in bases 3, 4, 5 and 6 all are equal.

The programs for A135126, there is no canonical definition to state claims against.
-/

/-! ## A135126.P1336933930048103144

`A290305(A290300(3*(n+1)))%A003383(n+1)`
-/

namespace A135126.P1336933930048103144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290305 (A290300 (3 * (n + 1))).toNat) (A003383 (n + 1))

end

end A135126.P1336933930048103144

/-!
# A135128: Numbers such that the digital sums in bases 2, 3, 5 and 10 all are equal.

The programs for A135128, there is no canonical definition to state claims against.
-/

/-! ## A135128.P12027961370415460646

`∩[A135120(n+1), A135125(n+1)]`
-/

namespace A135128.P12027961370415460646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135128.P12027961370415460646

/-! ## A135128.P14510858087662453349

`∩[A135120(n+1), A135121(n+1)]`
-/

namespace A135128.P14510858087662453349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135128.P14510858087662453349

/-! ## A135128.P6580307400920972694

`∩[A135121(n+1), A135125(n+1)]`
-/

namespace A135128.P6580307400920972694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135128.P6580307400920972694

/-!
# A135129: Numbers such that the digital sums in bases 3, 4, 5, 6 and 7 all are equal.

The programs for A135129, there is no canonical definition to state claims against.
-/

/-! ## A135129.P13553669314531931841

`∩[A135126(n+1), A390225(n+1)]`
-/

namespace A135129.P13553669314531931841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135129.P13553669314531931841

/-! ## A135129.P5642898737254346935

`∩[A037327(n+1), A135126(n+1)]`
-/

namespace A135129.P5642898737254346935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135129.P5642898737254346935

/-! ## A135129.P2872148758038045826

`∩[A037312(n+1), A135126(n+1)]`
-/

namespace A135129.P2872148758038045826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135129.P2872148758038045826

/-!
# A135130: Let n = Product_{p} p ^ e_p be the prime factorization of n and let M = max{e_p + 1 }. Then n is in the sequence iff for all primes q in the range 3 <= q <= M we have e_q >= Sum_{r} floor( log_q (e_r + 1) ).

The programs for A135130, there is no canonical definition to state claims against.
-/

/-! ## A135130.P476979508763364624

`comp[A143718(n+1)-1]+1`
-/

namespace A135130.P476979508763364624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143718 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A135130.P476979508763364624

/-! ## A135130.P2202624827631006165

`comp[A023443(A143718(n+1))]+1`
-/

namespace A135130.P2202624827631006165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A143718 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A135130.P2202624827631006165

/-! ## A135130.P13763688296057036481

`eq[1, A000265(A323761(n+1))]+1`
-/

namespace A135130.P13763688296057036481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A323761 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A135130.P13763688296057036481

/-! ## A135130.P15180551042626393798

`eq[1, A000120(A324507(n+1))]+1`
-/

namespace A135130.P15180551042626393798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A324507 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A135130.P15180551042626393798

/-! ## A135130.P17605891233185556629

`comp[A105570(comp[A117657(3*(n+1))])]`
-/

namespace A135130.P17605891233185556629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117657 (3 * (n + 1))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A135130.P17605891233185556629

/-! ## A135130.P1455804766943220920

`record[A000027(n+1)/A000265(A323761(n+1))]`
-/

namespace A135130.P1455804766943220920
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000265 (A323761 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135130.P1455804766943220920

/-! ## A135130.P15236355513633992083

`record[A000027(n+1)/A000265(A324507(n+1))]`
-/

namespace A135130.P15236355513633992083
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000265 (A324507 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135130.P15236355513633992083

/-! ## A135130.P9071312303461620306

`record[A130446(n+1)/A000265(A323761(n+1))]`
-/

namespace A135130.P9071312303461620306
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130446 (n + 1) : ℚ) / (A000265 (A323761 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135130.P9071312303461620306

/-! ## A135130.P13077369317612895989

`record[A130446(n+1)/A000265(A324507(n+1))]`
-/

namespace A135130.P13077369317612895989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130446 (n + 1) : ℚ) / (A000265 (A324507 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135130.P13077369317612895989

/-! ## A135130.P10287090116883649038

`record[(A023443(n)+2)/A000265(A324507(n+1))]`
-/

namespace A135130.P10287090116883649038
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023443 n + 2 : ℚ) / (A000265 (A324507 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135130.P10287090116883649038

/-!
# A135132: Integers k such that 10^k + 73 is a prime number.

The programs for A135132, there is no canonical definition to state claims against.
-/

/-! ## A135132.P10591423361697247287

`A109738(a(n-1))` with `a(0)=1, a(1)=2, a(2)=8, a(3)=11`
-/

namespace A135132.P10591423361697247287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8, 11] fun n a =>
  A109738 (a (n - 1)).toNat

end

end A135132.P10591423361697247287

/-!
# A135133: a(n) = floor(S2(n)/3) mod 2, where S2(n) denotes the binary weight of n.

The programs for A135133, the canonical program `A135133.P13033452460133963726` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135133 has offset 0).

The definition of A135133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135133.P13033452460133963726

`and(1, val(A001316(n), 8))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135133

/-- `and(1, val(A001316(n), 8))` -/
def P13033452460133963726.Spec : Prop :=
  ∀ n, (P13033452460133963726.a n : ℤ) = A135133 n

theorem P13033452460133963726.correct : P13033452460133963726.Spec := by
  intro n
  simp only [A135133]

end A135133

/-! ## A135133.P8348391878313279283

`floor(A000120(n)/3)%2`
-/

namespace A135133.P8348391878313279283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A000120 n : ℚ) / 3⌋ 2

end

end A135133.P8348391878313279283

namespace A135133

/-- `floor(A000120(n)/3)%2` -/
def P8348391878313279283.Spec : Prop :=
  ∀ n, P8348391878313279283.a n = A135133 n

end A135133

/-! ## A135133.P14121517033539356276

`(ceil(A063787(n+1)/3)+1)%2`
-/

namespace A135133.P14121517033539356276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(A063787 (n + 1) : ℚ) / 3⌉ + 1) 2

end

end A135133.P14121517033539356276

namespace A135133

/-- `(ceil(A063787(n+1)/3)+1)%2` -/
def P14121517033539356276.Spec : Prop :=
  ∀ n, P14121517033539356276.a n = A135133 n

end A135133

/-! ## A135133.P983148655233363829

`A011670(A038573(n))`
-/

namespace A135133.P983148655233363829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011670 (A038573 n).toNat

end

end A135133.P983148655233363829

namespace A135133

/-- `A011670(A038573(n))` -/
def P983148655233363829.Spec : Prop :=
  ∀ n, P983148655233363829.a n = A135133 n

end A135133

/-! ## A135133.P5159021904760296040

`1-A088911(A000120(n))`
-/

namespace A135133.P5159021904760296040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088911 (A000120 n).toNat

end

end A135133.P5159021904760296040

namespace A135133

/-- `1-A088911(A000120(n))` -/
def P5159021904760296040.Spec : Prop :=
  ∀ n, P5159021904760296040.a n = A135133 n

end A135133

/-! ## A135133.P1510526321361117786

`A088911(A000120(n)+3)`
-/

namespace A135133.P1510526321361117786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (A000120 n + 3).toNat

end

end A135133.P1510526321361117786

namespace A135133

/-- `A088911(A000120(n)+3)` -/
def P1510526321361117786.Spec : Prop :=
  ∀ n, P1510526321361117786.a n = A135133 n

end A135133

/-! ## A135133.P15377945353545796571

`A196564(val(A001316(n), 8))`
-/

namespace A135133.P15377945353545796571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (SequenceMachineLib.valuation (A001316 n).toNat 8)

end

end A135133.P15377945353545796571

namespace A135133

/-- `A196564(val(A001316(n), 8))` -/
def P15377945353545796571.Spec : Prop :=
  ∀ n, P15377945353545796571.a n = A135133 n

end A135133

/-! ## A135133.P10213379718180864312

`A221168(val(A001316(n), 8))`
-/

namespace A135133.P10213379718180864312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221168 (SequenceMachineLib.valuation (A001316 n).toNat 8)

end

end A135133.P10213379718180864312

namespace A135133

/-- `A221168(val(A001316(n), 8))` -/
def P10213379718180864312.Spec : Prop :=
  ∀ n, P10213379718180864312.a n = A135133 n

end A135133

/-! ## A135133.P15521518495523138871

`A221170(val(A001316(n), 8))`
-/

namespace A135133.P15521518495523138871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221170 (SequenceMachineLib.valuation (A001316 n).toNat 8)

end

end A135133.P15521518495523138871

namespace A135133

/-- `A221170(val(A001316(n), 8))` -/
def P15521518495523138871.Spec : Prop :=
  ∀ n, P15521518495523138871.a n = A135133 n

end A135133

/-! ## A135133.P6373296404690396653

`A002264((1-A000120(n))²)%2`
-/

namespace A135133.P6373296404690396653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002264 ((1 - A000120 n) ^ 2).toNat) 2

end

end A135133.P6373296404690396653

namespace A135133

/-- `A002264((1-A000120(n))²)%2` -/
def P6373296404690396653.Spec : Prop :=
  ∀ n, P6373296404690396653.a n = A135133 n

end A135133

/-! ## A135133.P16958496394582321838

`(A000069(A001316(n)+1)%9)²%4`
-/

namespace A135133.P16958496394582321838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000069 (A001316 n + 1).toNat) 9 ^ 2) 4

end

end A135133.P16958496394582321838

namespace A135133

/-- `(A000069(A001316(n)+1)%9)²%4` -/
def P16958496394582321838.Spec : Prop :=
  ∀ n, P16958496394582321838.a n = A135133 n

end A135133

/-! ## A135133.P13691595521492430048

`A030308(A000120(n)-A000120(n)%3)`
-/

namespace A135133.P13691595521492430048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A000120 n - Int.tmod (A000120 n) 3).toNat

end

end A135133.P13691595521492430048

namespace A135133

/-- `A030308(A000120(n)-A000120(n)%3)` -/
def P13691595521492430048.Spec : Prop :=
  ∀ n, P13691595521492430048.a n = A135133 n

end A135133

/-! ## A135133.P25113470325797413

`A035464(ceil(((2*n-A005187(n))*A014077(n+2)²+1)/3)+2)`
-/

namespace A135133.P25113470325797413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035464 (⌈(((2 * n : ℤ) - A005187 n) * A014077 (n + 2) ^ 2 + 1 : ℚ) / 3⌉ + 2).toNat

end

end A135133.P25113470325797413

namespace A135133

/-- `A035464(ceil(((2*n-A005187(n))*A014077(n+2)²+1)/3)+2)` -/
def P25113470325797413.Spec : Prop :=
  ∀ n, P25113470325797413.a n = A135133 n

end A135133

/-! ## A135133.P15008327914037515853

`A002264(A000120(2*n))%2`
-/

namespace A135133.P15008327914037515853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002264 (A000120 (2 * n)).toNat) 2

end

end A135133.P15008327914037515853

namespace A135133

/-- `A002264(A000120(2*n))%2` -/
def P15008327914037515853.Spec : Prop :=
  ∀ n, P15008327914037515853.a n = A135133 n

end A135133

/-! ## A135133.P2975502468770937813

`and(A000225(n+1)², A153234(A000120(n)+1))`
-/

namespace A135133.P2975502468770937813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (n + 1) ^ 2) (A153234 (A000120 n + 1).toNat)

end

end A135133.P2975502468770937813

namespace A135133

/-- `and(A000225(n+1)², A153234(A000120(n)+1))` -/
def P2975502468770937813.Spec : Prop :=
  ∀ n, P2975502468770937813.a n = A135133 n

end A135133

/-! ## A135133.P2081066617402577208

`A057333(A057334(n))%2`
-/

namespace A135133.P2081066617402577208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057333 (A057334 n).toNat) 2

end

end A135133.P2081066617402577208

namespace A135133

/-- `A057333(A057334(n))%2` -/
def P2081066617402577208.Spec : Prop :=
  ∀ n, P2081066617402577208.a n = A135133 n

end A135133

/-!
# A135135: Numbers n such that A111426(n) is even.

The programs for A135135, there is no canonical definition to state claims against.
-/

/-! ## A135135.P5245119680447902801

`lt[A085273(n+1)%2, 1]+1`
-/

namespace A135135.P5245119680447902801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085273 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A135135.P5245119680447902801

/-! ## A135135.P11491176987088799122

`eq[1, A000034(A111426(n+1))]+1`
-/

namespace A135135.P11491176987088799122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A111426 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A135135.P11491176987088799122

/-! ## A135135.P6756448929190711788

`eq[0, A128975(A018252(n+2))]+1`
-/

namespace A135135.P6756448929190711788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128975 (A018252 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A135135.P6756448929190711788

/-! ## A135135.P915643777632869937

`lt[A085273(A000038(n)+n)%2, 1]`
-/

namespace A135135.P915643777632869937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085273 (A000038 n + (n : ℤ)).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A135135.P915643777632869937

/-! ## A135135.P15688338126882994246

`record[A118827(A085273(n+1)+1)+n]`
-/

namespace A135135.P15688338126882994246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (A085273 (n + 1) + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135135.P15688338126882994246

/-! ## A135135.P10836868826098612981

`A026238(eq[A020513(n), A107393(n)])`
-/

namespace A135135.P10836868826098612981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A135135.P10836868826098612981

/-! ## A135135.P1631045812286566748

`A066246(eq[A020513(n), A107393(n)])`
-/

namespace A135135.P1631045812286566748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A135135.P1631045812286566748

/-! ## A135135.P8436993748479415379

`A000720(p?[A026239(A088948(n+1))])`
-/

namespace A135135.P8436993748479415379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A088948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135135.P8436993748479415379

/-! ## A135135.P14941638942359692659

`eq[A000007(n), A128975(A018252(n+1))]`
-/

namespace A135135.P14941638942359692659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128975 (A018252 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135135.P14941638942359692659

/-! ## A135135.P17676618560378964155

`eq[A000038(n), A128975(A018252(n+1))]`
-/

namespace A135135.P17676618560378964155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128975 (A018252 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135135.P17676618560378964155

/-!
# A135136: a(n) = floor(S2(n)/2) mod 2, where S2(n) is the binary weight of n.

The programs for A135136, the canonical program `A135136.P11582502789863798801` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135136 has offset 0).

The definition of A135136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135136.P10481286676164861149

`and(2, A000120(n))/2`
-/

namespace A135136.P10481286676164861149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A000120 n) : ℚ) / 2

end

end A135136.P10481286676164861149

namespace A135136

/-- `and(2, A000120(n))/2` -/
def P10481286676164861149.Spec : Prop :=
  ∀ n, P10481286676164861149.a n = (A135136 n : ℚ)

end A135136

/-! ## A135136.P7757662949342117005

`and(2, A033042(n))/2`
-/

namespace A135136.P7757662949342117005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A033042 n) : ℚ) / 2

end

end A135136.P7757662949342117005

namespace A135136

/-- `and(2, A033042(n))/2` -/
def P7757662949342117005.Spec : Prop :=
  ∀ n, P7757662949342117005.a n = (A135136 n : ℚ)

end A135136

/-! ## A135136.P926812959539822440

`and(2, A033046(n))/2`
-/

namespace A135136.P926812959539822440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A033046 n) : ℚ) / 2

end

end A135136.P926812959539822440

namespace A135136

/-- `and(2, A033046(n))/2` -/
def P926812959539822440.Spec : Prop :=
  ∀ n, P926812959539822440.a n = (A135136 n : ℚ)

end A135136

/-! ## A135136.P8341979551315335645

`and(2, A033049(n))/2`
-/

namespace A135136.P8341979551315335645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A033049 n) : ℚ) / 2

end

end A135136.P8341979551315335645

namespace A135136

/-- `and(2, A033049(n))/2` -/
def P8341979551315335645.Spec : Prop :=
  ∀ n, P8341979551315335645.a n = (A135136 n : ℚ)

end A135136

/-! ## A135136.P1389326435403125770

`and(2, A342802(n))/2`
-/

namespace A135136.P1389326435403125770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A342802 n) : ℚ) / 2

end

end A135136.P1389326435403125770

namespace A135136

/-- `and(2, A342802(n))/2` -/
def P1389326435403125770.Spec : Prop :=
  ∀ n, P1389326435403125770.a n = (A135136 n : ℚ)

end A135136

/-! ## A135136.P18079125831936577057

`A135947(and(n, n-1))`
-/

namespace A135136.P18079125831936577057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135947 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A135136.P18079125831936577057

namespace A135136

/-- `A135947(and(n, n-1))` -/
def P18079125831936577057.Spec : Prop :=
  ∀ n, P18079125831936577057.a n = A135136 n

end A135136

/-! ## A135136.P16693360395437343084

`and(2, log2(A001316(n)))/2`
-/

namespace A135136.P16693360395437343084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))) : ℚ) / 2

end

end A135136.P16693360395437343084

namespace A135136

/-- `and(2, log2(A001316(n)))/2` -/
def P16693360395437343084.Spec : Prop :=
  ∀ n, P16693360395437343084.a n = (A135136 n : ℚ)

end A135136

/-! ## A135136.P6817931548552467152

`and(2, ∑[A088705(n)])/2`
-/

namespace A135136.P6817931548552467152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A135136.P6817931548552467152

namespace A135136

/-- `and(2, ∑[A088705(n)])/2` -/
def P6817931548552467152.Spec : Prop :=
  ∀ n, P6817931548552467152.a n = (A135136 n : ℚ)

end A135136

/-! ## A135136.P11264829898394391594

`and(2, A132680(n+1))/2`
-/

namespace A135136.P11264829898394391594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A132680 (n + 1)) : ℚ) / 2

end

end A135136.P11264829898394391594

namespace A135136

/-- `and(2, A132680(n+1))/2` -/
def P11264829898394391594.Spec : Prop :=
  ∀ n, P11264829898394391594.a n = (A135136 n : ℚ)

end A135136

/-! ## A135136.P1825031502884875357

`and(2, A005187(2*n+1))/2`
-/

namespace A135136.P1825031502884875357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A005187 (2 * n + 1)) : ℚ) / 2

end

end A135136.P1825031502884875357

namespace A135136

/-- `and(2, A005187(2*n+1))/2` -/
def P1825031502884875357.Spec : Prop :=
  ∀ n, P1825031502884875357.a n = (A135136 n : ℚ)

end A135136

/-! ## A135136.P11582502789863798801

`A011658(A001316(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135136

/-- `A011658(A001316(n))` -/
def P11582502789863798801.Spec : Prop :=
  ∀ n, P11582502789863798801.a n = A135136 n

theorem P11582502789863798801.correct : P11582502789863798801.Spec := by
  intro n
  simp only [A135136]

end A135136

/-! ## A135136.P4470864798474552322

`A021913(A000120(n))`
-/

namespace A135136.P4470864798474552322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A000120 n).toNat

end

end A135136.P4470864798474552322

namespace A135136

/-- `A021913(A000120(n))` -/
def P4470864798474552322.Spec : Prop :=
  ∀ n, P4470864798474552322.a n = A135136 n

end A135136

/-! ## A135136.P10594986587670736173

`A133872(A000120(n)+2)`
-/

namespace A135136.P10594986587670736173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A000120 n + 2).toNat

end

end A135136.P10594986587670736173

namespace A135136

/-- `A133872(A000120(n)+2)` -/
def P10594986587670736173.Spec : Prop :=
  ∀ n, P10594986587670736173.a n = A135136 n

end A135136

/-! ## A135136.P7078543401950107263

`A175337(A001316(n)-1)`
-/

namespace A135136.P7078543401950107263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175337 (A001316 n - 1).toNat

end

end A135136.P7078543401950107263

namespace A135136

/-- `A175337(A001316(n)-1)` -/
def P7078543401950107263.Spec : Prop :=
  ∀ n, P7078543401950107263.a n = A135136 n

end A135136

/-! ## A135136.P14415661663496124839

`A269723(A001316(n)-1)`
-/

namespace A135136.P14415661663496124839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269723 (A001316 n - 1).toNat

end

end A135136.P14415661663496124839

namespace A135136

/-- `A269723(A001316(n)-1)` -/
def P14415661663496124839.Spec : Prop :=
  ∀ n, P14415661663496124839.a n = A135136 n

end A135136

/-! ## A135136.P14388222320361950662

`A320006(A000120(n)+2)`
-/

namespace A135136.P14388222320361950662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 (A000120 n + 2).toNat

end

end A135136.P14388222320361950662

namespace A135136

/-- `A320006(A000120(n)+2)` -/
def P14388222320361950662.Spec : Prop :=
  ∀ n, P14388222320361950662.a n = A135136 n

end A135136

/-! ## A135136.P826134553678184037

`A115971(2*A000120(n))`
-/

namespace A135136.P826134553678184037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115971 (2 * A000120 n).toNat

end

end A135136.P826134553678184037

namespace A135136

/-- `A115971(2*A000120(n))` -/
def P826134553678184037.Spec : Prop :=
  ∀ n, P826134553678184037.a n = A135136 n

end A135136

/-! ## A135136.P16592843907939734732

`A345021(2*A000120(n))`
-/

namespace A135136.P16592843907939734732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345021 (2 * A000120 n).toNat

end

end A135136.P16592843907939734732

namespace A135136

/-- `A345021(2*A000120(n))` -/
def P16592843907939734732.Spec : Prop :=
  ∀ n, P16592843907939734732.a n = A135136 n

end A135136

/-! ## A135136.P10896740882238548394

`A011658(A117973(n)/2)`
-/

namespace A135136.P10896740882238548394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011658 (SequenceMachineLib.roundAway ((A117973 n : ℚ) / 2)).toNat

end

end A135136.P10896740882238548394

namespace A135136

/-- `A011658(A117973(n)/2)` -/
def P10896740882238548394.Spec : Prop :=
  ∀ n, P10896740882238548394.a n = A135136 n

end A135136

/-! ## A135136.P16986526674636160459

`A010060(xor(n, A135947(n)))`
-/

namespace A135136.P16986526674636160459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.xor (n : ℤ) (A135947 n)).toNat

end

end A135136.P16986526674636160459

namespace A135136

/-- `A010060(xor(n, A135947(n)))` -/
def P16986526674636160459.Spec : Prop :=
  ∀ n, P16986526674636160459.a n = A135136 n

end A135136

/-!
# A135138: a(n) = 5*a(n-2) + 2*a(n-3).

The programs for A135138, the canonical program `A135138.P10219639732083187201` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135138 has offset 0).

The definition of A135138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-2)+2*a(n-3)` (program `A135138.P10219639732083187201`, by `A135138.P10219639732083187201.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135138.P10219639732083187201

`5*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135138

/-- `5*a(n-2)+2*a(n-3)` -/
def P10219639732083187201.Spec : Prop :=
  ∀ n, (P10219639732083187201.a n : ℤ) = A135138 n

theorem P10219639732083187201.correct : P10219639732083187201.Spec := by
  intro n
  simp only [A135138]

end A135138

/-! ## A135138.P16328035812590267271

`((-2)^n+A078343(n))/7`
-/

namespace A135138.P16328035812590267271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-2) ^ n + A078343 n : ℚ) / 7

end

end A135138.P16328035812590267271

namespace A135138

/-- `((-2)^n+A078343(n))/7` -/
def P16328035812590267271.Spec : Prop :=
  ∀ n, P16328035812590267271.a n = (A135138 n : ℚ)

end A135138

/-! ## A135138.P11859926570062133008

`ogf(x^2/(1-5x^2-2x^3))`
-/

namespace A135138.P11859926570062133008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, 0, -5, -2] n

end

end A135138.P11859926570062133008

namespace A135138

/-- `ogf(x^2/(1-5x^2-2x^3))` -/
def P11859926570062133008.Spec : Prop :=
  ∀ n, P11859926570062133008.a n = A135138 n

end A135138

/-! ## A135138.P2174670128686336685

`∑[A001333(n)]-A135139(n)`
-/

namespace A135138.P2174670128686336685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A135139 n

end

end A135138.P2174670128686336685

namespace A135138

/-- `∑[A001333(n)]-A135139(n)` -/
def P2174670128686336685.Spec : Prop :=
  ∀ n, P2174670128686336685.a n = A135138 n

end A135138

/-! ## A135138.P6756248494021670441

`A000129(n+1)-A135139(n)`
-/

namespace A135138.P6756248494021670441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - A135139 n

end

end A135138.P6756248494021670441

namespace A135138

/-- `A000129(n+1)-A135139(n)` -/
def P6756248494021670441.Spec : Prop :=
  ∀ n, P6756248494021670441.a n = A135138 n

end A135138

/-! ## A135138.P3564082045646453996

`A000129(n+1)%(A000129(n)+a(n-1))` with `a(0)=0`
-/

namespace A135138.P3564082045646453996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A000129 (n + 1)) (A000129 n + a (n - 1))

end

end A135138.P3564082045646453996

namespace A135138

/-- `A000129(n+1)%(A000129(n)+a(n-1))` -/
def P3564082045646453996.Spec : Prop :=
  ∀ n, P3564082045646453996.a n = A135138 n

end A135138

/-!
# A135139: a(n) = 5*a(n-2) + 2*a(n-3).

The programs for A135139, the canonical program `A135139.P4969428664915780255` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135139 has offset 0).

The definition of A135139 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-2)+2*a(n-3)` (program `A135139.P4969428664915780255`, by `A135139.P4969428664915780255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135139.P4969428664915780255

`5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135139

/-- `5*a(n-2)+2*a(n-3)` -/
def P4969428664915780255.Spec : Prop :=
  ∀ n, (P4969428664915780255.a n : ℤ) = A135139 n

theorem P4969428664915780255.correct : P4969428664915780255.Spec := by
  intro n
  simp only [A135139]

end A135139

/-! ## A135139.P6473784643785037995

`A135138(n+2)+2*A135138(n+1)-A135138(n)`
-/

namespace A135139.P6473784643785037995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135138 (n + 2) + 2 * A135138 (n + 1) - A135138 n

end

end A135139.P6473784643785037995

namespace A135139

/-- `A135138(n+2)+2*A135138(n+1)-A135138(n)` -/
def P6473784643785037995.Spec : Prop :=
  ∀ n, P6473784643785037995.a n = A135139 n

end A135139

/-! ## A135139.P12639026719474641757

`(4*A078343(n+1)-(-2)^n)/7`
-/

namespace A135139.P12639026719474641757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A078343 (n + 1) - (-2) ^ n : ℚ) / 7

end

end A135139.P12639026719474641757

namespace A135139

/-- `(4*A078343(n+1)-(-2)^n)/7` -/
def P12639026719474641757.Spec : Prop :=
  ∀ n, P12639026719474641757.a n = (A135139 n : ℚ)

end A135139

/-! ## A135139.P12350111458204285553

`ogf((1+2x-x^2)/(1-5x^2-2x^3))`
-/

namespace A135139.P12350111458204285553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 0, -5, -2] n

end

end A135139.P12350111458204285553

namespace A135139

/-- `ogf((1+2x-x^2)/(1-5x^2-2x^3))` -/
def P12350111458204285553.Spec : Prop :=
  ∀ n, P12350111458204285553.a n = A135139 n

end A135139

/-! ## A135139.P11447564020906305625

`2*(A052542(n)-a(n-1))` with `a(0)=1`
-/

namespace A135139.P11447564020906305625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A052542 n - a (n - 1))

end

end A135139.P11447564020906305625

namespace A135139

/-- `2*(A052542(n)-a(n-1))` -/
def P11447564020906305625.Spec : Prop :=
  ∀ n, P11447564020906305625.a n = A135139 n

end A135139

/-! ## A135139.P10440685654092372750

`2*(Δ[A001333(n)]-a(n-1))` with `a(0)=1`
-/

namespace A135139.P10440685654092372750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (f1 (n + 1) - f1 n - a (n - 1))

end

end A135139.P10440685654092372750

namespace A135139

/-- `2*(Δ[A001333(n)]-a(n-1))` -/
def P10440685654092372750.Spec : Prop :=
  ∀ n, P10440685654092372750.a n = A135139 n

end A135139

/-! ## A135139.P10959250461059193850

`2*(A163271(n+1)-a(n-1))` with `a(0)=1`
-/

namespace A135139.P10959250461059193850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A163271 (n + 1) - a (n - 1))

end

end A135139.P10959250461059193850

namespace A135139

/-- `2*(A163271(n+1)-a(n-1))` -/
def P10959250461059193850.Spec : Prop :=
  ∀ n, P10959250461059193850.a n = A135139 n

end A135139

/-! ## A135139.P2803244300910880524

`∑[A001333(n)]-A135138(n)`
-/

namespace A135139.P2803244300910880524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A135138 n

end

end A135139.P2803244300910880524

namespace A135139

/-- `∑[A001333(n)]-A135138(n)` -/
def P2803244300910880524.Spec : Prop :=
  ∀ n, P2803244300910880524.a n = A135139 n

end A135139

/-! ## A135139.P4325793346207585307

`A000129(n+1)-A135138(n)`
-/

namespace A135139.P4325793346207585307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - A135138 n

end

end A135139.P4325793346207585307

namespace A135139

/-- `A000129(n+1)-A135138(n)` -/
def P4325793346207585307.Spec : Prop :=
  ∀ n, P4325793346207585307.a n = A135139 n

end A135139

/-! ## A135139.P5553314973290596363

`A163271(n+1)-a(n-1)+A052542(n)-a(n-1)` with `a(0)=1`
-/

namespace A135139.P5553314973290596363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163271 (n + 1) - a (n - 1) + (A052542 n - a (n - 1))

end

end A135139.P5553314973290596363

namespace A135139

/-- `A163271(n+1)-a(n-1)+A052542(n)-a(n-1)` -/
def P5553314973290596363.Spec : Prop :=
  ∀ n, P5553314973290596363.a n = A135139 n

end A135139

/-! ## A135139.P3672225282995104336

`A000129(n)+A135138(n)+A112685(n)`
-/

namespace A135139.P3672225282995104336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A135138 n + A112685 n)

end

end A135139.P3672225282995104336

namespace A135139

/-- `A000129(n)+A135138(n)+A112685(n)` -/
def P3672225282995104336.Spec : Prop :=
  ∀ n, P3672225282995104336.a n = A135139 n

end A135139

/-! ## A135139.P18083733167944433166

`A097075(n+1)+A097075(n)-A135138(n)`
-/

namespace A135139.P18083733167944433166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 (n + 1) + (A097075 n - A135138 n)

end

end A135139.P18083733167944433166

namespace A135139

/-- `A097075(n+1)+A097075(n)-A135138(n)` -/
def P18083733167944433166.Spec : Prop :=
  ∀ n, P18083733167944433166.a n = A135139 n

end A135139

/-! ## A135139.P5945996202223882329

`A097076(n+1)+A097076(n)-A135138(n)`
-/

namespace A135139.P5945996202223882329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 (n + 1) + (A097076 n - A135138 n)

end

end A135139.P5945996202223882329

namespace A135139

/-- `A097076(n+1)+A097076(n)-A135138(n)` -/
def P5945996202223882329.Spec : Prop :=
  ∀ n, P5945996202223882329.a n = A135139 n

end A135139

/-! ## A135139.P1152144443416126827

`A112685(n+2)-A111108(n+1)`
-/

namespace A135139.P1152144443416126827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112685 (n + 2) - A111108 (n + 1)

end

end A135139.P1152144443416126827

namespace A135139

/-- `A112685(n+2)-A111108(n+1)` -/
def P1152144443416126827.Spec : Prop :=
  ∀ n, P1152144443416126827.a n = A135139 n

end A135139

/-! ## A135139.P3573750815081490144

`(A135138(n+1)+A078343(n+1))/2`
-/

namespace A135139.P3573750815081490144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135138 (n + 1) + A078343 (n + 1) : ℚ) / 2

end

end A135139.P3573750815081490144

namespace A135139

/-- `(A135138(n+1)+A078343(n+1))/2` -/
def P3573750815081490144.Spec : Prop :=
  ∀ n, P3573750815081490144.a n = (A135139 n : ℚ)

end A135139

/-!
# A135140: Numbers n such that n and n^2 do not contain successive identical digits.

The programs for A135140, there is no canonical definition to state claims against.
-/

/-! ## A135140.P118084157844662279

`filter[A050741(n+1), A196368(#)]`
-/

namespace A135140.P118084157844662279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A135140.P118084157844662279

/-! ## A135140.P15100086141930731851

`∩[A043096(n+1), A050741(n+1)]`
-/

namespace A135140.P15100086141930731851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135140.P15100086141930731851

/-! ## A135140.P9097517972562987034

`lt[2, A217157(A233583(n+1))]`
-/

namespace A135140.P9097517972562987034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217157 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A135140.P9097517972562987034

/-! ## A135140.P17120948375481180910

`lt[A107846(n), A196368(n²)]`
-/

namespace A135140.P17120948375481180910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135140.P17120948375481180910

/-! ## A135140.P127695662918578104

`record[sqrt(A321802(A321802(n)²))]`
-/

namespace A135140.P127695662918578104
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A321802 (A321802 n ^ 2).toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135140.P127695662918578104

/-!
# A135141: a(1)=1, a(p_n)=2*a(n), a(c_n)=2*a(n)+1, where p_n = n-th prime, c_n = n-th composite number.

The programs for A135141, there is no canonical definition to state claims against.
-/

/-! ## A135141.P14121736467997168608

`A055010(A246348(n+1))-A246377(n+1)`
-/

namespace A135141.P14121736467997168608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (A246348 (n + 1)).toNat - A246377 (n + 1)

end

end A135141.P14121736467997168608

/-! ## A135141.P4427046458046656975

`A246363(A064216(n+1))`
-/

namespace A135141.P4427046458046656975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246363 (A064216 (n + 1)).toNat

end

end A135141.P4427046458046656975

/-! ## A135141.P12806793871389307540

`A246363(A290099(Δ[n²]))`
-/

namespace A135141.P12806793871389307540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246363 (A290099 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A135141.P12806793871389307540

/-! ## A135141.P10354073856003312624

`A246363(A064989(2*n+1))`
-/

namespace A135141.P10354073856003312624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246363 (A064989 (2 * n + 1)).toNat

end

end A135141.P10354073856003312624

/-! ## A135141.P8965027814098737650

`A245701(A245703(n+1))`
-/

namespace A135141.P8965027814098737650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245701 (A245703 (n + 1)).toNat

end

end A135141.P8965027814098737650

/-! ## A135141.P6713914590755222479

`A245701(A245819(n+2)-1)`
-/

namespace A135141.P6713914590755222479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245701 (A245819 (n + 2) - 1).toNat

end

end A135141.P6713914590755222479

/-! ## A135141.P7272043580011403019

`A054429(A246377(n+1))`
-/

namespace A135141.P7272043580011403019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A246377 (n + 1)).toNat

end

end A135141.P7272043580011403019

/-! ## A135141.P11460051533193163768

`A156552(A246681(n+1))`
-/

namespace A135141.P11460051533193163768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A246681 (n + 1)).toNat

end

end A135141.P11460051533193163768

/-! ## A135141.P10069457178571219719

`A005941(A246367(n+1))`
-/

namespace A135141.P10069457178571219719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A246367 (n + 1)).toNat

end

end A135141.P10069457178571219719

/-!
# A135142: Number of trisubstituted alkanes C_n H_{2n-1} X_2 Y with n carbon atoms.

The programs for A135142, there is no canonical definition to state claims against.
-/

/-! ## A135142.P2363799154537412015

`A002265(A346158(n)+A078844(n))`
-/

namespace A135142.P2363799154537412015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A346158 n + A078844 n).toNat

end

end A135142.P2363799154537412015

/-! ## A135142.P13582488005112086673

`A002265(A078844(n)-(A002265(n)-A346158(n)))`
-/

namespace A135142.P13582488005112086673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A078844 n - (A002265 n - A346158 n)).toNat

end

end A135142.P13582488005112086673

/-! ## A135142.P17987522580214578313

`A247971(A217616(n))-1`
-/

namespace A135142.P17987522580214578313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A217616 n).toNat - 1

end

end A135142.P17987522580214578313

/-!
# A135143: Values of A020482 where A020482(m) != A060308(m-1).

The programs for A135143, there is no canonical definition to state claims against.
-/

/-! ## A135143.P3204774207613186171

`A020482(A135145(n+1))`
-/

namespace A135143.P3204774207613186171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A135145 (n + 1)).toNat

end

end A135143.P3204774207613186171

/-! ## A135143.P13688605328805761446

`A210957(A244207(n+1)-1)`
-/

namespace A135143.P13688605328805761446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210957 (A244207 (n + 1) - 1).toNat

end

end A135143.P13688605328805761446

/-! ## A135143.P6391813752771709330

`A020482(A244207(n+1)/2)`
-/

namespace A135143.P6391813752771709330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (SequenceMachineLib.roundAway ((A244207 (n + 1) : ℚ) / 2)).toNat

end

end A135143.P6391813752771709330

/-! ## A135143.P13039756423576699956

`A159482(A244207(n+1)/2)`
-/

namespace A135143.P13039756423576699956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159482 (SequenceMachineLib.roundAway ((A244207 (n + 1) : ℚ) / 2)).toNat

end

end A135143.P13039756423576699956

/-! ## A135143.P7487559740710524306

`A159482(A135145(2*n+1-n))`
-/

namespace A135143.P7487559740710524306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159482 (A135145 (2 * n + 1 - n)).toNat

end

end A135143.P7487559740710524306

/-! ## A135143.P1932894776550707672

`p?[A020482(n+2)%A060308(n+1)]`
-/

namespace A135143.P1932894776550707672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020482 (n + 2)) (A060308 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135143.P1932894776550707672

/-! ## A135143.P17314690467223564739

`p?[A020482(n+3)%A060265(n+2)]`
-/

namespace A135143.P17314690467223564739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020482 (n + 3)) (A060265 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135143.P17314690467223564739

/-! ## A135143.P5087643621252157505

`A159482(or(C(n, n²), A135145(n+1)))`
-/

namespace A135143.P5087643621252157505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159482 (Int.lor (Nat.choose n (n ^ 2) : ℤ) (A135145 (n + 1))).toNat

end

end A135143.P5087643621252157505

/-! ## A135143.P17746896716030012078

`A020482(A025480(A244207(n+1)))`
-/

namespace A135143.P17746896716030012078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A025480 (A244207 (n + 1)).toNat).toNat

end

end A135143.P17746896716030012078

/-! ## A135143.P12303010921044262834

`A244207(n+1)-A020481(A135145(n+1))`
-/

namespace A135143.P12303010921044262834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244207 (n + 1) - A020481 (A135145 (n + 1)).toNat

end

end A135143.P12303010921044262834

/-!
# A135144: Values of A060308 where A020482(m) != A060308(m-1).

The programs for A135144, there is no canonical definition to state claims against.
-/

/-! ## A135144.P17613415456968344335

`A335285(A244207(n+1))`
-/

namespace A135144.P17613415456968344335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (A244207 (n + 1)).toNat

end

end A135144.P17613415456968344335

/-! ## A135144.P2533420400193892547

`A020482(A135145(n+1)-1)`
-/

namespace A135144.P2533420400193892547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A135145 (n + 1) - 1).toNat

end

end A135144.P2533420400193892547

/-! ## A135144.P3963831876195603836

`A060265(A135145(n+1)-1)`
-/

namespace A135144.P3963831876195603836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (A135145 (n + 1) - 1).toNat

end

end A135144.P3963831876195603836

/-! ## A135144.P542330869815852106

`A060308(A135145(n+1)-1)`
-/

namespace A135144.P542330869815852106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A135145 (n + 1) - 1).toNat

end

end A135144.P542330869815852106

/-! ## A135144.P14909074964268408547

`A120303(A135145(n+1)-1)`
-/

namespace A135144.P14909074964268408547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120303 (A135145 (n + 1) - 1).toNat

end

end A135144.P14909074964268408547

/-! ## A135144.P5785407418262043359

`A159482(A135145(n+1)-1)`
-/

namespace A135144.P5785407418262043359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159482 (A135145 (n + 1) - 1).toNat

end

end A135144.P5785407418262043359

/-! ## A135144.P15414385001353754818

`A136548(A244207(n+1)-1)`
-/

namespace A135144.P15414385001353754818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A244207 (n + 1) - 1).toNat

end

end A135144.P15414385001353754818

/-! ## A135144.P9082103473994327188

`A007917(A244207(n+1)-2)`
-/

namespace A135144.P9082103473994327188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A244207 (n + 1) - 2).toNat

end

end A135144.P9082103473994327188

/-! ## A135144.P1093746797929943461

`A020482(A244207(n+1)/2-1)`
-/

namespace A135144.P1093746797929943461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (SequenceMachineLib.roundAway ((A244207 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A135144.P1093746797929943461

/-!
# A135145: Values of m where A020482(m) != A060308(m-1).

The programs for A135145, there is no canonical definition to state claims against.
-/

/-! ## A135145.P3480322231571145483

`A244207(n+1)/2`
-/

namespace A135145.P3480322231571145483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244207 (n + 1) : ℚ) / 2

end

end A135145.P3480322231571145483

/-! ## A135145.P2213141691858338077

`A026741(A244207(n+1))`
-/

namespace A135145.P2213141691858338077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A244207 (n + 1)).toNat

end

end A135145.P2213141691858338077

/-! ## A135145.P11938498737736144634

`A003602(A244207(n+1)-1)`
-/

namespace A135145.P11938498737736144634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A244207 (n + 1) - 1).toNat

end

end A135145.P11938498737736144634

/-! ## A135145.P1022125402058092889

`A110654(A244207(n+1)-1)`
-/

namespace A135145.P1022125402058092889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A244207 (n + 1) - 1).toNat

end

end A135145.P1022125402058092889

/-! ## A135145.P1902204521010967751

`A004526(A244207(n+1)-1)+1`
-/

namespace A135145.P1902204521010967751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A244207 (n + 1) - 1).toNat + 1

end

end A135145.P1902204521010967751

/-! ## A135145.P14156583018442517390

`A300068(A244207(n+1)-1)+1`
-/

namespace A135145.P14156583018442517390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (A244207 (n + 1) - 1).toNat + 1

end

end A135145.P14156583018442517390

/-! ## A135145.P4483450586920487602

`A025480(A244207(n+1)-2)+1`
-/

namespace A135145.P4483450586920487602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A244207 (n + 1) - 2).toNat + 1

end

end A135145.P4483450586920487602

/-! ## A135145.P13323507690454151427

`A110654(xor(1, A244207(n+1)+1))`
-/

namespace A135145.P13323507690454151427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.xor 1 (A244207 (n + 1) + 1)).toNat

end

end A135145.P13323507690454151427

/-! ## A135145.P5558901575304179140

`A035608(A244207(n+1)-1)%A244207(n+1)`
-/

namespace A135145.P5558901575304179140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035608 (A244207 (n + 1) - 1).toNat) (A244207 (n + 1))

end

end A135145.P5558901575304179140

/-! ## A135145.P14016526380950333008

`A004526(A244207(n+1)+1)`
-/

namespace A135145.P14016526380950333008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A244207 (n + 1) + 1).toNat

end

end A135145.P14016526380950333008

/-! ## A135145.P16643104089765686540

`A300068(A244207(n+1)+1)`
-/

namespace A135145.P16643104089765686540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (A244207 (n + 1) + 1).toNat

end

end A135145.P16643104089765686540

/-! ## A135145.P6672592043004549284

`A001281(A244207(n+1)+2)-1`
-/

namespace A135145.P6672592043004549284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A244207 (n + 1) + 2).toNat - 1

end

end A135145.P6672592043004549284

/-! ## A135145.P15220881339282586423

`A025480(2*A244207(n+1)+1)`
-/

namespace A135145.P15220881339282586423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (2 * A244207 (n + 1) + 1).toNat

end

end A135145.P15220881339282586423

/-! ## A135145.P7297743994341449709

`A025480(A244207(n+1)+A244207(n+1)+1)`
-/

namespace A135145.P7297743994341449709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A244207 (n + 1) + (A244207 (n + 1) + 1)).toNat

end

end A135145.P7297743994341449709

/-!
# A135147: A binomial recursion : a(n) = p(n) (see formula).

The programs for A135147, there is no canonical definition to state claims against.
-/

/-! ## A135147.P14262558953271142345

`A004396(A196545(2*(n+1)))+n`
-/

namespace A135147.P14262558953271142345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A196545 (2 * (n + 1))).toNat + (n : ℤ)

end

end A135147.P14262558953271142345

/-!
# A135148: A binomial recursion: a(n) = q(n) (see formula).

The programs for A135148, there is no canonical definition to state claims against.
-/

/-! ## A135148.P10921083832137220679

`A049472(A362549(2*n))`
-/

namespace A135148.P10921083832137220679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A362549 (2 * n)).toNat

end

end A135148.P10921083832137220679

/-!
# A135149: A binomial recursion: a(n) = p(n) (see formula).

The programs for A135149, there is no canonical definition to state claims against.
-/

/-! ## A135149.P16161649640618486193

`A061229(∑[∏[A013947(n+1)]])`
-/

namespace A135149.P16161649640618486193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061229 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135149.P16161649640618486193

/-!
# A135150: A binomial recursion: a(n) = q(n) (see formula).

The programs for A135150, there is no canonical definition to state claims against.
-/

/-! ## A135150.P15965108233539012453

`Δ[n*A265527(a(n-1))]` with `a(0)=1`
-/

namespace A135150.P15965108233539012453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * A265527 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135150.P15965108233539012453

/-!
# A135151: A002260 + A128174 - I, I = Identity matrix.

The programs for A135151, the canonical program `A135151.P16759562844649267622` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135151 has offset 1).

The definition of A135151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135151.P15815748222571319845

`A135152(n+1)-(∑[2*n]%comp[∑[n]]-n)`
-/

namespace A135151.P15815748222571319845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135152 (n + 1) - ((((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) - (n : ℤ))

end

end A135151.P15815748222571319845

namespace A135151

/-- `A135152(n+1)-(∑[2*n]%comp[∑[n]]-n)` -/
def P15815748222571319845.Spec : Prop :=
  ∀ n, P15815748222571319845.a n = A135151 (n + 1)

end A135151

/-! ## A135151.P14832449628634125235

`A040001(C(comp[∑[n]]-n, 2)-(n+1))+n-C(∑[char[∑[n]]], 2)`
-/

namespace A135151.P14832449628634125235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ))

end

end A135151.P14832449628634125235

namespace A135151

/-- `A040001(C(comp[∑[n]]-n, 2)-(n+1))+n-C(∑[char[∑[n]]], 2)` -/
def P14832449628634125235.Spec : Prop :=
  ∀ n, P14832449628634125235.a n = A135151 (n + 1)

end A135151

/-! ## A135151.P16759562844649267622

`A135152(n+1)-A114327(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A135151

/-- `A135152(n+1)-A114327(n)` -/
def P16759562844649267622.Spec : Prop :=
  ∀ n, P16759562844649267622.a n = A135151 (n + 1)

theorem P16759562844649267622.correct : P16759562844649267622.Spec := by
  intro n
  simp only [A135151, Nat.add_sub_cancel]

end A135151

/-! ## A135151.P18326925528276766111

`A193738(comp[∑[n-1]]+2-gcd(2, comp[∑[4*n]]))`
-/

namespace A135151.P18326925528276766111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n) : ℤ))).toNat

end

end A135151.P18326925528276766111

namespace A135151

/-- `A193738(comp[∑[n-1]]+2-gcd(2, comp[∑[4*n]]))` -/
def P18326925528276766111.Spec : Prop :=
  ∀ n, P18326925528276766111.a n = A135151 (n + 1)

end A135151

/-! ## A135151.P15676661592263106075

`A193738(comp[∑[n-1]]+comp[2*(n²+n)]%2)`
-/

namespace A135151.P15676661592263106075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n % 2)

end

end A135151.P15676661592263106075

namespace A135151

/-- `A193738(comp[∑[n-1]]+comp[2*(n²+n)]%2)` -/
def P15676661592263106075.Spec : Prop :=
  ∀ n, P15676661592263106075.a n = A135151 (n + 1)

end A135151

/-! ## A135151.P11308668506926803704

`A277013(A018900(n+1))`
-/

namespace A135151.P11308668506926803704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (A018900 (n + 1)).toNat

end

end A135151.P11308668506926803704

namespace A135151

/-- `A277013(A018900(n+1))` -/
def P11308668506926803704.Spec : Prop :=
  ∀ n, P11308668506926803704.a n = A135151 (n + 1)

end A135151

/-! ## A135151.P14186282842348307748

`A277013(eq[2, A000120(n)])`
-/

namespace A135151.P14186282842348307748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135151.P14186282842348307748

namespace A135151

/-- `A277013(eq[2, A000120(n)])` -/
def P14186282842348307748.Spec : Prop :=
  ∀ n, P14186282842348307748.a n = A135151 (n + 1)

end A135151

/-! ## A135151.P7693972898840272910

`A285099(lcm(3, A130328(n)))`
-/

namespace A135151.P7693972898840272910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (Int.lcm 3 (A130328 n))

end

end A135151.P7693972898840272910

namespace A135151

/-- `A285099(lcm(3, A130328(n)))` -/
def P7693972898840272910.Spec : Prop :=
  ∀ n, P7693972898840272910.a n = A135151 (n + 1)

end A135151

/-!
# A135152: A004736 + A128174 - I, I = Identity matrix.

The programs for A135152, the canonical program `A135152.P7420640362526774959` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135152 has offset 1).

The definition of A135152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135152.P10350367029097767917

`A134444(n)+char[comp[∑[n-1]]]`
-/

namespace A135152.P10350367029097767917
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134444 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A135152.P10350367029097767917

namespace A135152

/-- `A134444(n)+char[comp[∑[n-1]]]` -/
def P10350367029097767917.Spec : Prop :=
  ∀ n, P10350367029097767917.a n = A135152 (n + 1)

end A135152

/-! ## A135152.P9785491503403519321

`A063196(C(comp[∑[n]]-n, 2)-n)+1`
-/

namespace A135152.P9785491503403519321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) + 1

end

end A135152.P9785491503403519321

namespace A135152

/-- `A063196(C(comp[∑[n]]-n, 2)-n)+1` -/
def P9785491503403519321.Spec : Prop :=
  ∀ n, P9785491503403519321.a n = A135152 (n + 1)

end A135152

/-! ## A135152.P16701161249788449467

`A265283(C(comp[∑[n]]-n, 2)-n)-2`
-/

namespace A135152.P16701161249788449467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265283 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) - 2

end

end A135152.P16701161249788449467

namespace A135152

/-- `A265283(C(comp[∑[n]]-n, 2)-n)-2` -/
def P16701161249788449467.Spec : Prop :=
  ∀ n, P16701161249788449467.a n = A135152 (n + 1)

end A135152

/-! ## A135152.P7420640362526774959

`A092038(A099375(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135152

/-- `A092038(A099375(n))` -/
def P7420640362526774959.Spec : Prop :=
  ∀ n, P7420640362526774959.a n = A135152 (n + 1)

theorem P7420640362526774959.correct : P7420640362526774959.Spec := by
  intro n
  simp only [A135152, Nat.add_sub_cancel]

end A135152

/-! ## A135152.P1490706413608466694

`A135151(n+1)+A114327(n)`
-/

namespace A135152.P1490706413608466694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135151 (n + 1) + A114327 n

end

end A135152.P1490706413608466694

namespace A135152

/-- `A135151(n+1)+A114327(n)` -/
def P1490706413608466694.Spec : Prop :=
  ∀ n, P1490706413608466694.a n = A135152 (n + 1)

end A135152

/-! ## A135152.P10336142563412126233

`A040001(A025581(n))+A025581(n)`
-/

namespace A135152.P10336142563412126233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A025581 n).toNat + A025581 n

end

end A135152.P10336142563412126233

namespace A135152

/-- `A040001(A025581(n))+A025581(n)` -/
def P10336142563412126233.Spec : Prop :=
  ∀ n, P10336142563412126233.a n = A135152 (n + 1)

end A135152

/-! ## A135152.P4006567111926856339

`A227147(A104792(n+1))`
-/

namespace A135152.P4006567111926856339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227147 (A104792 (n + 1)).toNat

end

end A135152.P4006567111926856339

namespace A135152

/-- `A227147(A104792(n+1))` -/
def P4006567111926856339.Spec : Prop :=
  ∀ n, P4006567111926856339.a n = A135152 (n + 1)

end A135152

/-! ## A135152.P597891701337291148

`A365348(A130321(n))`
-/

namespace A135152.P597891701337291148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365348 (A130321 n).toNat

end

end A135152.P597891701337291148

namespace A135152

/-- `A365348(A130321(n))` -/
def P597891701337291148.Spec : Prop :=
  ∀ n, P597891701337291148.a n = A135152 (n + 1)

end A135152

/-! ## A135152.P14927917185566171983

`A345380(A130330(n))`
-/

namespace A135152.P14927917185566171983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345380 (A130330 n).toNat

end

end A135152.P14927917185566171983

namespace A135152

/-- `A345380(A130330(n))` -/
def P14927917185566171983.Spec : Prop :=
  ∀ n, P14927917185566171983.a n = A135152 (n + 1)

end A135152

/-! ## A135152.P10725991311017946272

`A368104(A090988(n+1))`
-/

namespace A135152.P10725991311017946272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368104 (A090988 (n + 1)).toNat

end

end A135152.P10725991311017946272

namespace A135152

/-- `A368104(A090988(n+1))` -/
def P10725991311017946272.Spec : Prop :=
  ∀ n, P10725991311017946272.a n = A135152 (n + 1)

end A135152

/-!
# A135153: Repeat Pell numbers A000129.

The programs for A135153, the canonical program `A135153.P17321168764094808209` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135153 has offset 0).

The definition of A135153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135153.P17321168764094808209

`2*a(n-2)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135153

/-- `2*a(n-2)+a(n-4)` -/
def P17321168764094808209.Spec : Prop :=
  ∀ n, (P17321168764094808209.a n : ℤ) = A135153 n

theorem P17321168764094808209.correct : P17321168764094808209.Spec := by
  intro n
  simp only [A135153]

end A135153

/-! ## A135153.P3700642488043059386

`ogf((x^2+x^3)/(1-2x^2-x^4))`
-/

namespace A135153.P3700642488043059386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1] [1, 0, -2, 0, -1] n

end

end A135153.P3700642488043059386

namespace A135153

/-- `ogf((x^2+x^3)/(1-2x^2-x^4))` -/
def P3700642488043059386.Spec : Prop :=
  ∀ n, P3700642488043059386.a n = A135153 n

end A135153

/-! ## A135153.P11305066846543459985

`a(n-2)+a(n-2)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A135153.P11305066846543459985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 4))

end

end A135153.P11305066846543459985

namespace A135153

/-- `a(n-2)+a(n-2)+a(n-4)` -/
def P11305066846543459985.Spec : Prop :=
  ∀ n, (P11305066846543459985.a n : ℤ) = A135153 n

theorem P11305066846543459985.correct : P11305066846543459985.Spec := by
  intro n
  simp only [A135153, Nat.add_sub_cancel, A135153.P11305066846543459985.a, A135153.P17321168764094808209.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135153

/-! ## A135153.P8620831390426876638

`A000129(floor(n/2))`
-/

namespace A135153.P8620831390426876638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 ⌊(n : ℚ) / 2⌋.toNat

end

end A135153.P8620831390426876638

namespace A135153

/-- `A000129(floor(n/2))` -/
def P8620831390426876638.Spec : Prop :=
  ∀ n, P8620831390426876638.a n = A135153 n

end A135153

/-! ## A135153.P4704099378857801893

`A002965(or(1, n)-1)`
-/

namespace A135153.P4704099378857801893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (Nat.lor 1 n - 1)

end

end A135153.P4704099378857801893

namespace A135153

/-- `A002965(or(1, n)-1)` -/
def P4704099378857801893.Spec : Prop :=
  ∀ n, P4704099378857801893.a n = A135153 n

end A135153

/-! ## A135153.P2139303847530990439

`A002965(n-and(1, n))`
-/

namespace A135153.P2139303847530990439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (n - Nat.land 1 n)

end

end A135153.P2139303847530990439

namespace A135153

/-- `A002965(n-and(1, n))` -/
def P2139303847530990439.Spec : Prop :=
  ∀ n, P2139303847530990439.a n = A135153 n

end A135153

/-! ## A135153.P6019121741790368033

`abs(A176981(∑[char[2*n]]))`
-/

namespace A135153.P6019121741790368033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A135153.P6019121741790368033

namespace A135153

/-- `abs(A176981(∑[char[2*n]]))` -/
def P6019121741790368033.Spec : Prop :=
  ∀ n, P6019121741790368033.a n = A135153 n

end A135153

/-! ## A135153.P3272579952847532610

`A002965(A052928(n))`
-/

namespace A135153.P3272579952847532610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A052928 n).toNat

end

end A135153.P3272579952847532610

namespace A135153

/-- `A002965(A052928(n))` -/
def P3272579952847532610.Spec : Prop :=
  ∀ n, P3272579952847532610.a n = A135153 n

end A135153

/-! ## A135153.P15388067802900523456

`A249576(A168237(n))`
-/

namespace A135153.P15388067802900523456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A168237 n).toNat

end

end A135153.P15388067802900523456

namespace A135153

/-- `A249576(A168237(n))` -/
def P15388067802900523456.Spec : Prop :=
  ∀ n, P15388067802900523456.a n = A135153 n

end A135153

/-! ## A135153.P9257163247796604536

`A002965(A109613(n)-1)`
-/

namespace A135153.P9257163247796604536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A109613 n - 1).toNat

end

end A135153.P9257163247796604536

namespace A135153

/-- `A002965(A109613(n)-1)` -/
def P9257163247796604536.Spec : Prop :=
  ∀ n, P9257163247796604536.a n = A135153 n

end A135153

/-! ## A135153.P5365254312809779237

`A249576(3*A002265(2*n))`
-/

namespace A135153.P5365254312809779237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * A002265 (2 * n)).toNat

end

end A135153.P5365254312809779237

namespace A135153

/-- `A249576(3*A002265(2*n))` -/
def P5365254312809779237.Spec : Prop :=
  ∀ n, P5365254312809779237.a n = A135153 n

end A135153

/-! ## A135153.P3076592449503509015

`A002965(1-A000034(n)+n)`
-/

namespace A135153.P3076592449503509015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (1 - A000034 n + (n : ℤ)).toNat

end

end A135153.P3076592449503509015

namespace A135153

/-- `A002965(1-A000034(n)+n)` -/
def P3076592449503509015.Spec : Prop :=
  ∀ n, P3076592449503509015.a n = A135153 n

end A135153

/-! ## A135153.P15845380380753550305

`A002965(1-(A000034(n)-n))`
-/

namespace A135153.P15845380380753550305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (1 - (A000034 n - (n : ℤ))).toNat

end

end A135153.P15845380380753550305

namespace A135153

/-- `A002965(1-(A000034(n)-n))` -/
def P15845380380753550305.Spec : Prop :=
  ∀ n, P15845380380753550305.a n = A135153 n

end A135153

/-! ## A135153.P12190243475015806127

`A002965(n-A010673(n)/2)`
-/

namespace A135153.P12190243475015806127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (SequenceMachineLib.roundAway ((n : ℚ) - (A010673 n : ℚ) / 2)).toNat

end

end A135153.P12190243475015806127

namespace A135153

/-- `A002965(n-A010673(n)/2)` -/
def P12190243475015806127.Spec : Prop :=
  ∀ n, P12190243475015806127.a n = A135153 n

end A135153

/-! ## A135153.P18080207022053079478

`A002965(A042963(n+1)-(n+1))`
-/

namespace A135153.P18080207022053079478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A042963 (n + 1) - (n + 1 : ℤ)).toNat

end

end A135153.P18080207022053079478

namespace A135153

/-- `A002965(A042963(n+1)-(n+1))` -/
def P18080207022053079478.Spec : Prop :=
  ∀ n, P18080207022053079478.a n = A135153 n

end A135153

/-! ## A135153.P788238357653374870

`A002965(A042964(n+1)-(n+2))`
-/

namespace A135153.P788238357653374870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A042964 (n + 1) - (n + 2 : ℤ)).toNat

end

end A135153.P788238357653374870

namespace A135153

/-- `A002965(A042964(n+1)-(n+2))` -/
def P788238357653374870.Spec : Prop :=
  ∀ n, P788238357653374870.a n = A135153 n

end A135153

/-! ## A135153.P14797063064319012208

`A116560(3*n)`
-/

namespace A135153.P14797063064319012208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (3 * n)

end

end A135153.P14797063064319012208

namespace A135153

/-- `A116560(3*n)` -/
def P14797063064319012208.Spec : Prop :=
  ∀ n, P14797063064319012208.a n = A135153 n

end A135153

/-! ## A135153.P668211473373770764

`A119016(n)-a(n-1)` with `a(0)=0`
-/

namespace A135153.P668211473373770764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A119016 n - a (n - 1)

end

end A135153.P668211473373770764

namespace A135153

/-- `A119016(n)-a(n-1)` -/
def P668211473373770764.Spec : Prop :=
  ∀ n, P668211473373770764.a n = A135153 n

end A135153

/-! ## A135153.P2074849922078585063

`A119016(n)-Δ[A002965(n)]`
-/

namespace A135153.P2074849922078585063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 n - (f1 (n + 1) - f1 n)

end

end A135153.P2074849922078585063

namespace A135153

/-- `A119016(n)-Δ[A002965(n)]` -/
def P2074849922078585063.Spec : Prop :=
  ∀ n, P2074849922078585063.a n = A135153 n

end A135153

/-!
# A135156: a(n) = number of strings of length n that can be obtained by starting with abc and repeatedly doubling any substring of length >= 2 in place.

The programs for A135156, there is no canonical definition to state claims against.
-/

/-! ## A135156.P7336127188952196514

`A025480(A014681(record[A291581(n+1)]))`
-/

namespace A135156.P7336127188952196514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A014681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A135156.P7336127188952196514

/-! ## A135156.P4581697143154130277

`round(or(1, n)/A057580(val(n+1, 2)+1))`
-/

namespace A135156.P4581697143154130277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 n : ℚ) / (A057580 (SequenceMachineLib.valuation (n + 1) 2 + 1) : ℚ))

end

end A135156.P4581697143154130277

/-! ## A135156.P5851691624142125965

`A103582(∑[n])+floor(n/(xor(n, n+1)+1))`
-/

namespace A135156.P5851691624142125965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103582 (∑ j ∈ Finset.range (n + 1), f1 j) + ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A135156.P5851691624142125965

/-! ## A135156.P1669711190094762081

`A349375(2^n)+floor(n/(xor(n, n+1)+1))`
-/

namespace A135156.P1669711190094762081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349375 (2 ^ n) + ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A135156.P1669711190094762081

/-! ## A135156.P10711085125859007316

`floor(n/(xor(n, n+1)+1))+1-A025426(2^n)`
-/

namespace A135156.P10711085125859007316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1 - A025426 (2 ^ n)

end

end A135156.P10711085125859007316

/-!
# A135157: Number of primitive (no repeated characters) and irreducible (not the concatenation of generatable strings) strings obtained from abc by iterated repetition of substrings in place.

The programs for A135157, there is no canonical definition to state claims against.
-/

/-! ## A135157.P18268669238452084184

`lcm(A077267(A138364(n)), A110514(n))`
-/

namespace A135157.P18268669238452084184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077267 (A138364 n).toNat) (A110514 n)

end

end A135157.P18268669238452084184

/-! ## A135157.P11700127246362222353

`A003602(n+1)-A328616(A131577(n))`
-/

namespace A135157.P11700127246362222353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) - A328616 (A131577 n).toNat

end

end A135157.P11700127246362222353

/-! ## A135157.P18365647105459937701

`A135156(n)%A019428(A208986(n+1))`
-/

namespace A135157.P18365647105459937701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135156 n) (A019428 (A208986 (n + 1)).toNat)

end

end A135157.P18365647105459937701

/-! ## A135157.P306806517054708378

`A002324(A005179(n+1))*A135156(n)`
-/

namespace A135157.P306806517054708378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A005179 (n + 1)).toNat * A135156 n

end

end A135157.P306806517054708378

/-! ## A135157.P5643986699626933889

`A360692(A187829(n+1)+2)`
-/

namespace A135157.P5643986699626933889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360692 (A187829 (n + 1) + 2).toNat

end

end A135157.P5643986699626933889

/-!
# A135158: a(n) = 5^n - 3^n - 2^n.

The programs for A135158, the canonical program `A135158.P15168331972815538896` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135158 has offset 0).

The definition of A135158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-3^n-2^n` (program `A135158.P15168331972815538896`, by `A135158.P15168331972815538896.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135158.P15168331972815538896

`5^n-3^n-2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135158

/-- `5^n-3^n-2^n` -/
def P15168331972815538896.Spec : Prop :=
  ∀ n, P15168331972815538896.a n = A135158 n

theorem P15168331972815538896.correct : P15168331972815538896.Spec := by
  intro n
  simp only [A135158]

end A135158

/-! ## A135158.P249170209787992270

`Δ[A007798(n)-A000051(n)]`
-/

namespace A135158.P249170209787992270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n - A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135158.P249170209787992270

namespace A135158

/-- `Δ[A007798(n)-A000051(n)]` -/
def P249170209787992270.Spec : Prop :=
  ∀ n, P249170209787992270.a n = A135158 n

end A135158

/-! ## A135158.P9134937392063226001

`Δ[A007798(n)-A000079(n)]`
-/

namespace A135158.P9134937392063226001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135158.P9134937392063226001

namespace A135158

/-- `Δ[A007798(n)-A000079(n)]` -/
def P9134937392063226001.Spec : Prop :=
  ∀ n, P9134937392063226001.a n = A135158 n

end A135158

/-! ## A135158.P8985887037135037404

`Δ[A007798(n)-A000225(n)]`
-/

namespace A135158.P8985887037135037404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135158.P8985887037135037404

namespace A135158

/-- `Δ[A007798(n)-A000225(n)]` -/
def P8985887037135037404.Spec : Prop :=
  ∀ n, P8985887037135037404.a n = A135158 n

end A135158

/-! ## A135158.P7954494591071222438

`Δ[A003463(n)-A094374(n)]`
-/

namespace A135158.P7954494591071222438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A094374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135158.P7954494591071222438

namespace A135158

/-- `Δ[A003463(n)-A094374(n)]` -/
def P7954494591071222438.Spec : Prop :=
  ∀ n, P7954494591071222438.a n = A135158 n

end A135158

/-! ## A135158.P10173861003479559599

`Δ[A003463(n)-A099754(n)]`
-/

namespace A135158.P10173861003479559599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135158.P10173861003479559599

namespace A135158

/-- `Δ[A003463(n)-A099754(n)]` -/
def P10173861003479559599.Spec : Prop :=
  ∀ n, P10173861003479559599.a n = A135158 n

end A135158

/-! ## A135158.P2896410830869603321

`Δ[A047850(n)-A094374(n)]`
-/

namespace A135158.P2896410830869603321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 n - A094374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135158.P2896410830869603321

namespace A135158

/-- `Δ[A047850(n)-A094374(n)]` -/
def P2896410830869603321.Spec : Prop :=
  ∀ n, P2896410830869603321.a n = A135158 n

end A135158

/-! ## A135158.P12687320746515237274

`Δ[A047850(n)-A099754(n)]`
-/

namespace A135158.P12687320746515237274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 n - A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135158.P12687320746515237274

namespace A135158

/-- `Δ[A047850(n)-A099754(n)]` -/
def P12687320746515237274.Spec : Prop :=
  ∀ n, P12687320746515237274.a n = A135158 n

end A135158

/-!
# A135159: a(n) = 5^n - 3^n + 2^n.

The programs for A135159, the canonical program `A135159.P5210251331806841024` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135159 has offset 0).

The definition of A135159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-3^n+2^n` (program `A135159.P5210251331806841024`, by `A135159.P5210251331806841024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135159.P5210251331806841024

`5^n-3^n+2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135159

/-- `5^n-3^n+2^n` -/
def P5210251331806841024.Spec : Prop :=
  ∀ n, P5210251331806841024.a n = A135159 n

theorem P5210251331806841024.correct : P5210251331806841024.Spec := by
  intro n
  simp only [A135159]

end A135159

/-! ## A135159.P10046216494612452759

`abs(3^n-A074600(n))`
-/

namespace A135159.P10046216494612452759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - A074600 n|

end

end A135159.P10046216494612452759

namespace A135159

/-- `abs(3^n-A074600(n))` -/
def P10046216494612452759.Spec : Prop :=
  ∀ n, P10046216494612452759.a n = A135159 n

end A135159

/-! ## A135159.P14175804244371151971

`abs(3^n+1-A074501(n))`
-/

namespace A135159.P14175804244371151971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n + 1 : ℤ) - A074501 n|

end

end A135159.P14175804244371151971

namespace A135159

/-- `abs(3^n+1-A074501(n))` -/
def P14175804244371151971.Spec : Prop :=
  ∀ n, P14175804244371151971.a n = A135159 n

end A135159

/-! ## A135159.P16977879793404333845

`abs(3^n-1-A155588(n))`
-/

namespace A135159.P16977879793404333845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - 1 - A155588 n|

end

end A135159.P16977879793404333845

namespace A135159

/-- `abs(3^n-1-A155588(n))` -/
def P16977879793404333845.Spec : Prop :=
  ∀ n, P16977879793404333845.a n = A135159 n

end A135159

/-! ## A135159.P15030752013658642178

`abs(3^n-2^n-A000351(n))`
-/

namespace A135159.P15030752013658642178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - (2 ^ n : ℤ) - A000351 n|

end

end A135159.P15030752013658642178

namespace A135159

/-- `abs(3^n-2^n-A000351(n))` -/
def P15030752013658642178.Spec : Prop :=
  ∀ n, P15030752013658642178.a n = A135159 n

end A135159

/-! ## A135159.P13011808976567105886

`abs(A000351(n)-A001047(n))`
-/

namespace A135159.P13011808976567105886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - A001047 n|

end

end A135159.P13011808976567105886

namespace A135159

/-- `abs(A000351(n)-A001047(n))` -/
def P13011808976567105886.Spec : Prop :=
  ∀ n, P13011808976567105886.a n = A135159 n

end A135159

/-! ## A135159.P9997702138420916991

`Δ[A007798(n)+2^n]`
-/

namespace A135159.P9997702138420916991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135159.P9997702138420916991

namespace A135159

/-- `Δ[A007798(n)+2^n]` -/
def P9997702138420916991.Spec : Prop :=
  ∀ n, P9997702138420916991.a n = A135159 n

end A135159

/-! ## A135159.P11194978013626632631

`Δ[A003463(n)-A000392(n+1)]`
-/

namespace A135159.P11194978013626632631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A000392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135159.P11194978013626632631

namespace A135159

/-- `Δ[A003463(n)-A000392(n+1)]` -/
def P11194978013626632631.Spec : Prop :=
  ∀ n, P11194978013626632631.a n = A135159 n

end A135159

/-! ## A135159.P7904634096901649186

`Δ[A003463(n)-A003063(n+1)/2]`
-/

namespace A135159.P7904634096901649186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003463 n : ℚ) - (A003063 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135159.P7904634096901649186

namespace A135159

/-- `Δ[A003463(n)-A003063(n+1)/2]` -/
def P7904634096901649186.Spec : Prop :=
  ∀ n, P7904634096901649186.a n = (A135159 n : ℚ)

end A135159

/-!
# A135160: a(n) = 5^n + 3^n - 2^n.

The programs for A135160, the canonical program `A135160.P5933358160612183267` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135160 has offset 0).

The definition of A135160 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+3^n-2^n` (program `A135160.P5933358160612183267`, by `A135160.P5933358160612183267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135160.P5933358160612183267

`5^n+3^n-2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135160

/-- `5^n+3^n-2^n` -/
def P5933358160612183267.Spec : Prop :=
  ∀ n, P5933358160612183267.a n = A135160 n

theorem P5933358160612183267.correct : P5933358160612183267.Spec := by
  intro n
  simp only [A135160]

end A135160

/-! ## A135160.P2675046002041411156

`abs(2^n-A074606(n))`
-/

namespace A135160.P2675046002041411156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A074606 n|

end

end A135160.P2675046002041411156

namespace A135160

/-- `abs(2^n-A074606(n))` -/
def P2675046002041411156.Spec : Prop :=
  ∀ n, P2675046002041411156.a n = A135160 n

end A135160

/-! ## A135160.P14680574104858744304

`abs(2^(n+1)-A074527(n))`
-/

namespace A135160.P14680574104858744304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ (n + 1) : ℤ) - A074527 n|

end

end A135160.P14680574104858744304

namespace A135160

/-- `abs(2^(n+1)-A074527(n))` -/
def P14680574104858744304.Spec : Prop :=
  ∀ n, P14680574104858744304.a n = A135160 n

end A135160

/-! ## A135160.P14894360994277596155

`abs(A155596(n)+3^n-1)`
-/

namespace A135160.P14894360994277596155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155596 n + ((3 ^ n : ℤ) - 1)|

end

end A135160.P14894360994277596155

namespace A135160

/-- `abs(A155596(n)+3^n-1)` -/
def P14894360994277596155.Spec : Prop :=
  ∀ n, P14894360994277596155.a n = A135160 n

end A135160

/-! ## A135160.P13061811628986564071

`abs(2^n-1-A155603(n))`
-/

namespace A135160.P13061811628986564071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - 1 - A155603 n|

end

end A135160.P13061811628986564071

namespace A135160

/-- `abs(2^n-1-A155603(n))` -/
def P13061811628986564071.Spec : Prop :=
  ∀ n, P13061811628986564071.a n = A135160 n

end A135160

/-! ## A135160.P6835763196713187309

`abs(A000051(n)-A074507(n))`
-/

namespace A135160.P6835763196713187309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A074507 n|

end

end A135160.P6835763196713187309

namespace A135160

/-- `abs(A000051(n)-A074507(n))` -/
def P6835763196713187309.Spec : Prop :=
  ∀ n, P6835763196713187309.a n = A135160 n

end A135160

/-! ## A135160.P12960565313195806091

`abs(A074606(n)-A000079(n))`
-/

namespace A135160.P12960565313195806091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074606 n - A000079 n|

end

end A135160.P12960565313195806091

namespace A135160

/-- `abs(A074606(n)-A000079(n))` -/
def P12960565313195806091.Spec : Prop :=
  ∀ n, P12960565313195806091.a n = A135160 n

end A135160

/-! ## A135160.P12093749305229767507

`Δ[A007798(n)+A001047(n)]`
-/

namespace A135160.P12093749305229767507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n + A001047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135160.P12093749305229767507

namespace A135160

/-- `Δ[A007798(n)+A001047(n)]` -/
def P12093749305229767507.Spec : Prop :=
  ∀ n, P12093749305229767507.a n = A135160 n

end A135160

/-! ## A135160.P14509969766341111620

`Δ[A003463(n)+A000392(n+1)]`
-/

namespace A135160.P14509969766341111620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + A000392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135160.P14509969766341111620

namespace A135160

/-- `Δ[A003463(n)+A000392(n+1)]` -/
def P14509969766341111620.Spec : Prop :=
  ∀ n, P14509969766341111620.a n = A135160 n

end A135160

/-! ## A135160.P13830681852596915539

`Δ[A003463(n)+A003063(n+1)/2]`
-/

namespace A135160.P13830681852596915539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003463 n : ℚ) + (A003063 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135160.P13830681852596915539

namespace A135160

/-- `Δ[A003463(n)+A003063(n+1)/2]` -/
def P13830681852596915539.Spec : Prop :=
  ∀ n, P13830681852596915539.a n = (A135160 n : ℚ)

end A135160

/-! ## A135160.P15821216962608262237

`abs(A000420(n)-A135167(n))`
-/

namespace A135160.P15821216962608262237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n - A135167 n|

end

end A135160.P15821216962608262237

namespace A135160

/-- `abs(A000420(n)-A135167(n))` -/
def P15821216962608262237.Spec : Prop :=
  ∀ n, P15821216962608262237.a n = A135160 n

end A135160

/-! ## A135160.P10186473132983833671

`(A135167(n)-A135162(n))/2`
-/

namespace A135160.P10186473132983833671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135167 n - A135162 n : ℚ) / 2

end

end A135160.P10186473132983833671

namespace A135160

/-- `(A135167(n)-A135162(n))/2` -/
def P10186473132983833671.Spec : Prop :=
  ∀ n, P10186473132983833671.a n = (A135160 n : ℚ)

end A135160

/-! ## A135160.P5450395605622727

`A155648(n)%A074507(n)`
-/

namespace A135160.P5450395605622727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155648 n) (A074507 n)

end

end A135160.P5450395605622727

namespace A135160

/-- `A155648(n)%A074507(n)` -/
def P5450395605622727.Spec : Prop :=
  ∀ n, P5450395605622727.a n = A135160 n

end A135160

/-!
# A135161: a(n) = 7^n - 5^n - 3^n - 2^n. Constants are the prime numbers in decreasing order.

The programs for A135161, the canonical program `A135161.P4233540043947978321` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135161 has offset 0).

The definition of A135161 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-5^n-3^n-2^n` (program `A135161.P4233540043947978321`, by `A135161.P4233540043947978321.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135161.P4233540043947978321

`7^n-5^n-3^n-2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135161

/-- `7^n-5^n-3^n-2^n` -/
def P4233540043947978321.Spec : Prop :=
  ∀ n, P4233540043947978321.a n = A135161 n

theorem P4233540043947978321.correct : P4233540043947978321.Spec := by
  intro n
  simp only [A135161]

end A135161

/-! ## A135161.P14065378642715967826

`or(A000420(n)-A074527(n), char[2])`
-/

namespace A135161.P14065378642715967826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000420 n - A074527 n) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A135161.P14065378642715967826

namespace A135161

/-- `or(A000420(n)-A074527(n), char[2])` -/
def P14065378642715967826.Spec : Prop :=
  ∀ n, P14065378642715967826.a n = A135161 n

end A135161

/-! ## A135161.P11611782549295599586

`(A000420(n)-A074527(n))%A135168(n)`
-/

namespace A135161.P11611782549295599586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000420 n - A074527 n) (A135168 n)

end

end A135161.P11611782549295599586

namespace A135161

/-- `(A000420(n)-A074527(n))%A135168(n)` -/
def P11611782549295599586.Spec : Prop :=
  ∀ n, P11611782549295599586.a n = A135161 n

end A135161

/-! ## A135161.P5211084891828438848

`(A000420(n)-A074527(n))*A020985(n)²`
-/

namespace A135161.P5211084891828438848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A074527 n) * A020985 n ^ 2

end

end A135161.P5211084891828438848

namespace A135161

/-- `(A000420(n)-A074527(n))*A020985(n)²` -/
def P5211084891828438848.Spec : Prop :=
  ∀ n, P5211084891828438848.a n = A135161 n

end A135161

/-! ## A135161.P12886731063651307628

`(A000420(n)-A074527(n))*char[A114327(n)]`
-/

namespace A135161.P12886731063651307628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A074527 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A135161.P12886731063651307628

namespace A135161

/-- `(A000420(n)-A074527(n))*char[A114327(n)]` -/
def P12886731063651307628.Spec : Prop :=
  ∀ n, P12886731063651307628.a n = A135161 n

end A135161

/-! ## A135161.P6080807541021593609

`(A000420(n)-A074527(n))*A000034(2*n)`
-/

namespace A135161.P6080807541021593609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A074527 n) * A000034 (2 * n)

end

end A135161.P6080807541021593609

namespace A135161

/-- `(A000420(n)-A074527(n))*A000034(2*n)` -/
def P6080807541021593609.Spec : Prop :=
  ∀ n, P6080807541021593609.a n = A135161 n

end A135161

/-! ## A135161.P2816958922553692865

`(A000420(n)-A074527(n))*A000041(C(2, n+2))`
-/

namespace A135161.P2816958922553692865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A074527 n) * A000041 (Nat.choose 2 (n + 2))

end

end A135161.P2816958922553692865

namespace A135161

/-- `(A000420(n)-A074527(n))*A000041(C(2, n+2))` -/
def P2816958922553692865.Spec : Prop :=
  ∀ n, P2816958922553692865.a n = A135161 n

end A135161

/-! ## A135161.P5124419057372604709

`(A000420(n)-A074527(n))*A000108(C(2, n+2))`
-/

namespace A135161.P5124419057372604709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A074527 n) * A000108 (Nat.choose 2 (n + 2))

end

end A135161.P5124419057372604709

namespace A135161

/-- `(A000420(n)-A074527(n))*A000108(C(2, n+2))` -/
def P5124419057372604709.Spec : Prop :=
  ∀ n, P5124419057372604709.a n = A135161 n

end A135161

/-! ## A135161.P2204886870773148173

`xor(A000420(n)-A074527(n), A008683(4*(n+1)))`
-/

namespace A135161.P2204886870773148173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000420 n - A074527 n) (A008683 (4 * (n + 1)))

end

end A135161.P2204886870773148173

namespace A135161

/-- `xor(A000420(n)-A074527(n), A008683(4*(n+1)))` -/
def P2204886870773148173.Spec : Prop :=
  ∀ n, P2204886870773148173.a n = A135161 n

end A135161

/-! ## A135161.P6692502210577645996

`(A000420(n)-A074527(n))*A007318(A072344(n+1))`
-/

namespace A135161.P6692502210577645996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A074527 n) * A007318 (A072344 (n + 1)).toNat

end

end A135161.P6692502210577645996

namespace A135161

/-- `(A000420(n)-A074527(n))*A007318(A072344(n+1))` -/
def P6692502210577645996.Spec : Prop :=
  ∀ n, P6692502210577645996.a n = A135161 n

end A135161

/-!
# A135162: a(n) = 7^n - 5^n - 3^n + 2^n. Constants are the prime numbers in decreasing order.

The programs for A135162, the canonical program `A135162.P18110289017313730113` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135162 has offset 0).

The definition of A135162 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-5^n-3^n+2^n` (program `A135162.P18110289017313730113`, by `A135162.P18110289017313730113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135162.P18110289017313730113

`7^n-5^n-3^n+2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135162

/-- `7^n-5^n-3^n+2^n` -/
def P18110289017313730113.Spec : Prop :=
  ∀ n, P18110289017313730113.a n = A135162 n

theorem P18110289017313730113.correct : P18110289017313730113.Spec := by
  intro n
  simp only [A135162]

end A135162

/-! ## A135162.P8195995914479489672

`abs(7^n-A135160(n))`
-/

namespace A135162.P8195995914479489672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 ^ n : ℤ) - A135160 n|

end

end A135162.P8195995914479489672

namespace A135162

/-- `abs(7^n-A135160(n))` -/
def P8195995914479489672.Spec : Prop :=
  ∀ n, P8195995914479489672.a n = A135162 n

end A135162

/-! ## A135162.P6915854316968264977

`abs(2*5^n-A135166(n))`
-/

namespace A135162.P6915854316968264977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * 5 ^ n : ℤ) - A135166 n|

end

end A135162.P6915854316968264977

namespace A135162

/-- `abs(2*5^n-A135166(n))` -/
def P6915854316968264977.Spec : Prop :=
  ∀ n, P6915854316968264977.a n = A135162 n

end A135162

/-! ## A135162.P8515649700620616076

`abs(2^n+7^n-1-A155603(n))`
-/

namespace A135162.P8515649700620616076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) + ((7 ^ n : ℤ) - 1) - A155603 n|

end

end A135162.P8515649700620616076

namespace A135162

/-- `abs(2^n+7^n-1-A155603(n))` -/
def P8515649700620616076.Spec : Prop :=
  ∀ n, P8515649700620616076.a n = A135162 n

end A135162

/-! ## A135162.P12487845281967203370

`abs(A074503(n)-A074507(n))`
-/

namespace A135162.P12487845281967203370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074503 n - A074507 n|

end

end A135162.P12487845281967203370

namespace A135162

/-- `abs(A074503(n)-A074507(n))` -/
def P12487845281967203370.Spec : Prop :=
  ∀ n, P12487845281967203370.a n = A135162 n

end A135162

/-! ## A135162.P892311151347822492

`abs(A074534(n)-A074547(n))`
-/

namespace A135162.P892311151347822492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074534 n - A074547 n|

end

end A135162.P892311151347822492

namespace A135162

/-- `abs(A074534(n)-A074547(n))` -/
def P892311151347822492.Spec : Prop :=
  ∀ n, P892311151347822492.a n = A135162 n

end A135162

/-! ## A135162.P16136847358309133349

`abs(A074602(n)-A074606(n))`
-/

namespace A135162.P16136847358309133349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074602 n - A074606 n|

end

end A135162.P16136847358309133349

namespace A135162

/-- `abs(A074602(n)-A074606(n))` -/
def P16136847358309133349.Spec : Prop :=
  ∀ n, P16136847358309133349.a n = A135162 n

end A135162

/-! ## A135162.P8441843061929828070

`abs(A155596(n)-A155612(n))`
-/

namespace A135162.P8441843061929828070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155596 n - A155612 n|

end

end A135162.P8441843061929828070

namespace A135162

/-- `abs(A155596(n)-A155612(n))` -/
def P8441843061929828070.Spec : Prop :=
  ∀ n, P8441843061929828070.a n = A135162 n

end A135162

/-! ## A135162.P5974192320077186267

`abs(A135161(n)+A000079(n+1))`
-/

namespace A135162.P5974192320077186267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135161 n + A000079 (n + 1)|

end

end A135162.P5974192320077186267

namespace A135162

/-- `abs(A135161(n)+A000079(n+1))` -/
def P5974192320077186267.Spec : Prop :=
  ∀ n, P5974192320077186267.a n = A135162 n

end A135162

/-! ## A135162.P10276615313416698065

`(A155590(n)-A155603(n))%A155590(n)`
-/

namespace A135162.P10276615313416698065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155590 n - A155603 n) (A155590 n)

end

end A135162.P10276615313416698065

namespace A135162

/-- `(A155590(n)-A155603(n))%A155590(n)` -/
def P10276615313416698065.Spec : Prop :=
  ∀ n, P10276615313416698065.a n = A135162 n

end A135162

/-! ## A135162.P12318389894601147121

`A074544(n)%A074553(n)`
-/

namespace A135162.P12318389894601147121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074544 n) (A074553 n)

end

end A135162.P12318389894601147121

namespace A135162

/-- `A074544(n)%A074553(n)` -/
def P12318389894601147121.Spec : Prop :=
  ∀ n, P12318389894601147121.a n = A135162 n

end A135162

/-! ## A135162.P4153932424112598806

`A074545(n)%A074554(n)`
-/

namespace A135162.P4153932424112598806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074545 n) (A074554 n)

end

end A135162.P4153932424112598806

namespace A135162

/-- `A074545(n)%A074554(n)` -/
def P4153932424112598806.Spec : Prop :=
  ∀ n, P4153932424112598806.a n = A135162 n

end A135162

/-!
# A135163: a(n) = 7^n - 5^n + 3^n - 2^n.

The programs for A135163, the canonical program `A135163.P10048772331164165063` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135163 has offset 0).

The definition of A135163 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-5^n+3^n-2^n` (program `A135163.P10048772331164165063`, by `A135163.P10048772331164165063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135163.P10048772331164165063

`7^n-5^n+3^n-2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135163

/-- `7^n-5^n+3^n-2^n` -/
def P10048772331164165063.Spec : Prop :=
  ∀ n, P10048772331164165063.a n = A135163 n

theorem P10048772331164165063.correct : P10048772331164165063.Spec := by
  intro n
  simp only [A135163]

end A135163

/-! ## A135163.P8642949530120015594

`abs(2*5^n-A135167(n))`
-/

namespace A135163.P8642949530120015594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * 5 ^ n : ℤ) - A135167 n|

end

end A135163.P8642949530120015594

namespace A135163

/-- `abs(2*5^n-A135167(n))` -/
def P8642949530120015594.Spec : Prop :=
  ∀ n, P8642949530120015594.a n = A135163 n

end A135163

/-! ## A135163.P18427175357522753766

`abs(A074501(n)-A074509(n))`
-/

namespace A135163.P18427175357522753766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074501 n - A074509 n|

end

end A135163.P18427175357522753766

namespace A135163

/-- `abs(A074501(n)-A074509(n))` -/
def P18427175357522753766.Spec : Prop :=
  ∀ n, P18427175357522753766.a n = A135163 n

end A135163

/-! ## A135163.P2448243384467092758

`abs(A074532(n)-A074549(n))`
-/

namespace A135163.P2448243384467092758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074532 n - A074549 n|

end

end A135163.P2448243384467092758

namespace A135163

/-- `abs(A074532(n)-A074549(n))` -/
def P2448243384467092758.Spec : Prop :=
  ∀ n, P2448243384467092758.a n = A135163 n

end A135163

/-! ## A135163.P1787206198200305504

`abs(A074537(n)-A074555(n))`
-/

namespace A135163.P1787206198200305504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074537 n - A074555 n|

end

end A135163.P1787206198200305504

namespace A135163

/-- `abs(A074537(n)-A074555(n))` -/
def P1787206198200305504.Spec : Prop :=
  ∀ n, P1787206198200305504.a n = A135163 n

end A135163

/-! ## A135163.P4889069832471247141

`abs(A074600(n)-A074608(n))`
-/

namespace A135163.P4889069832471247141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074600 n - A074608 n|

end

end A135163.P4889069832471247141

namespace A135163

/-- `abs(A074600(n)-A074608(n))` -/
def P4889069832471247141.Spec : Prop :=
  ∀ n, P4889069832471247141.a n = A135163 n

end A135163

/-! ## A135163.P10999056070223053395

`A074558(n)%A074539(n)`
-/

namespace A135163.P10999056070223053395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074558 n) (A074539 n)

end

end A135163.P10999056070223053395

namespace A135163

/-- `A074558(n)%A074539(n)` -/
def P10999056070223053395.Spec : Prop :=
  ∀ n, P10999056070223053395.a n = A135163 n

end A135163

/-! ## A135163.P11225255471629254968

`A074559(n)%A074540(n)`
-/

namespace A135163.P11225255471629254968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074559 n) (A074540 n)

end

end A135163.P11225255471629254968

namespace A135163

/-- `A074559(n)%A074540(n)` -/
def P11225255471629254968.Spec : Prop :=
  ∀ n, P11225255471629254968.a n = A135163 n

end A135163

/-!
# A135164: a(n) = 7^n - 5^n + 3^n + 2^n.

The programs for A135164, the canonical program `A135164.P3152880949450682328` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135164 has offset 0).

The definition of A135164 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-5^n+3^n+2^n` (program `A135164.P3152880949450682328`, by `A135164.P3152880949450682328.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135164.P3152880949450682328

`7^n-5^n+3^n+2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135164

/-- `7^n-5^n+3^n+2^n` -/
def P3152880949450682328.Spec : Prop :=
  ∀ n, P3152880949450682328.a n = A135164 n

theorem P3152880949450682328.correct : P3152880949450682328.Spec := by
  intro n
  simp only [A135164]

end A135164

/-! ## A135164.P3460218077009514327

`abs(A000420(n)-A135158(n))`
-/

namespace A135164.P3460218077009514327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n - A135158 n|

end

end A135164.P3460218077009514327

namespace A135164

/-- `abs(A000420(n)-A135158(n))` -/
def P3460218077009514327.Spec : Prop :=
  ∀ n, P3460218077009514327.a n = A135164 n

end A135164

/-! ## A135164.P16325040671589033277

`or(A000420(n)-A135158(n), A304577(n))`
-/

namespace A135164.P16325040671589033277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000420 n - A135158 n) (A304577 n)

end

end A135164.P16325040671589033277

namespace A135164

/-- `or(A000420(n)-A135158(n), A304577(n))` -/
def P16325040671589033277.Spec : Prop :=
  ∀ n, P16325040671589033277.a n = A135164 n

end A135164

/-! ## A135164.P17412100918146249274

`(A000420(n)-A135158(n))*char[A026729(n)]`
-/

namespace A135164.P17412100918146249274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A135158 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A135164.P17412100918146249274

namespace A135164

/-- `(A000420(n)-A135158(n))*char[A026729(n)]` -/
def P17412100918146249274.Spec : Prop :=
  ∀ n, P17412100918146249274.a n = A135164 n

end A135164

/-! ## A135164.P8456860822396242891

`(A000420(n)-A135158(n))*char[A028242(n)]`
-/

namespace A135164.P8456860822396242891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A135158 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A135164.P8456860822396242891

namespace A135164

/-- `(A000420(n)-A135158(n))*char[A028242(n)]` -/
def P8456860822396242891.Spec : Prop :=
  ∀ n, P8456860822396242891.a n = A135164 n

end A135164

/-! ## A135164.P1985659726943889195

`(A000420(n)-A135158(n))*char[A263268(n)]`
-/

namespace A135164.P1985659726943889195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263268 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A135158 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A135164.P1985659726943889195

namespace A135164

/-- `(A000420(n)-A135158(n))*char[A263268(n)]` -/
def P1985659726943889195.Spec : Prop :=
  ∀ n, P1985659726943889195.a n = A135164 n

end A135164

/-! ## A135164.P18105471772519366943

`(A000420(n)-A135158(n))*char[A265354(n)]`
-/

namespace A135164.P18105471772519366943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A135158 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A135164.P18105471772519366943

namespace A135164

/-- `(A000420(n)-A135158(n))*char[A265354(n)]` -/
def P18105471772519366943.Spec : Prop :=
  ∀ n, P18105471772519366943.a n = A135164 n

end A135164

/-! ## A135164.P15269757940874074578

`or(A000420(n)-A135158(n), A304571(n+1))`
-/

namespace A135164.P15269757940874074578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000420 n - A135158 n) (A304571 (n + 1))

end

end A135164.P15269757940874074578

namespace A135164

/-- `or(A000420(n)-A135158(n), A304571(n+1))` -/
def P15269757940874074578.Spec : Prop :=
  ∀ n, P15269757940874074578.a n = A135164 n

end A135164

/-! ## A135164.P14387123448054318406

`(A000420(n)-A135158(n))*A002260(∑[n]+1)`
-/

namespace A135164.P14387123448054318406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000420 n - A135158 n) * A002260 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A135164.P14387123448054318406

namespace A135164

/-- `(A000420(n)-A135158(n))*A002260(∑[n]+1)` -/
def P14387123448054318406.Spec : Prop :=
  ∀ n, P14387123448054318406.a n = A135164 n

end A135164

/-!
# A135165: a(n) = 7^n + 5^n - 3^n - 2^n.

The programs for A135165, the canonical program `A135165.P17492196934273928556` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135165 has offset 0).

The definition of A135165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+5^n-3^n-2^n` (program `A135165.P17492196934273928556`, by `A135165.P17492196934273928556.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135165.P17492196934273928556

`7^n+5^n-3^n-2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135165

/-- `7^n+5^n-3^n-2^n` -/
def P17492196934273928556.Spec : Prop :=
  ∀ n, P17492196934273928556.a n = A135165 n

theorem P17492196934273928556.correct : P17492196934273928556.Spec := by
  intro n
  simp only [A135165]

end A135165

/-! ## A135165.P7901887847217963642

`abs(A135161(n)+2*5^n)`
-/

namespace A135165.P7901887847217963642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135161 n + (2 * 5 ^ n : ℤ)|

end

end A135165.P7901887847217963642

namespace A135165

/-- `abs(A135161(n)+2*5^n)` -/
def P7901887847217963642.Spec : Prop :=
  ∀ n, P7901887847217963642.a n = A135165 n

end A135165

/-! ## A135165.P14650657225343505148

`abs(A135158(n)+A000420(n))`
-/

namespace A135165.P14650657225343505148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135158 n + A000420 n|

end

end A135165.P14650657225343505148

namespace A135165

/-- `abs(A135158(n)+A000420(n))` -/
def P14650657225343505148.Spec : Prop :=
  ∀ n, P14650657225343505148.a n = A135165 n

end A135165

/-! ## A135165.P17438976797168463028

`abs(A001550(n)-A074517(n))`
-/

namespace A135165.P17438976797168463028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001550 n - A074517 n|

end

end A135165.P17438976797168463028

namespace A135165

/-- `abs(A001550(n)-A074517(n))` -/
def P17438976797168463028.Spec : Prop :=
  ∀ n, P17438976797168463028.a n = A135165 n

end A135165

/-! ## A135165.P8659177854371360617

`abs(A007689(n)-A074616(n))`
-/

namespace A135165.P8659177854371360617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007689 n - A074616 n|

end

end A135165.P8659177854371360617

namespace A135165

/-- `abs(A007689(n)-A074616(n))` -/
def P8659177854371360617.Spec : Prop :=
  ∀ n, P8659177854371360617.a n = A135165 n

end A135165

/-! ## A135165.P7329225508404287784

`lcm(A007689(n)-A074616(n), A186032(n))`
-/

namespace A135165.P7329225508404287784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007689 n - A074616 n) (A186032 n)

end

end A135165.P7329225508404287784

namespace A135165

/-- `lcm(A007689(n)-A074616(n), A186032(n))` -/
def P7329225508404287784.Spec : Prop :=
  ∀ n, (P7329225508404287784.a n : ℤ) = A135165 n

end A135165

/-! ## A135165.P13709253008803458339

`or(A135158(n)+A000420(n), A000035(n))`
-/

namespace A135165.P13709253008803458339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135158 n + A000420 n) (A000035 n)

end

end A135165.P13709253008803458339

namespace A135165

/-- `or(A135158(n)+A000420(n), A000035(n))` -/
def P13709253008803458339.Spec : Prop :=
  ∀ n, P13709253008803458339.a n = A135165 n

end A135165

/-! ## A135165.P2368177920225886366

`-or(A007689(n)-A074616(n), A046145(n))`
-/

namespace A135165.P2368177920225886366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (A007689 n - A074616 n) (A046145 n)

end

end A135165.P2368177920225886366

namespace A135165

/-- `-or(A007689(n)-A074616(n), A046145(n))` -/
def P2368177920225886366.Spec : Prop :=
  ∀ n, P2368177920225886366.a n = A135165 n

end A135165

/-! ## A135165.P8834198385491701853

`(A135158(n)+A000420(n))*char[A003986(n)]`
-/

namespace A135165.P8834198385491701853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135158 n + A000420 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A135165.P8834198385491701853

namespace A135165

/-- `(A135158(n)+A000420(n))*char[A003986(n)]` -/
def P8834198385491701853.Spec : Prop :=
  ∀ n, P8834198385491701853.a n = A135165 n

end A135165

/-! ## A135165.P1312487407777070622

`(A007689(n)-A074616(n))*A153881(n+1)`
-/

namespace A135165.P1312487407777070622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007689 n - A074616 n) * A153881 (n + 1)

end

end A135165.P1312487407777070622

namespace A135165

/-- `(A007689(n)-A074616(n))*A153881(n+1)` -/
def P1312487407777070622.Spec : Prop :=
  ∀ n, P1312487407777070622.a n = A135165 n

end A135165

/-! ## A135165.P1680159685471884268

`gcd(A135158(n)+A000420(n), A010673(2*n))`
-/

namespace A135165.P1680159685471884268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135158 n + A000420 n) (A010673 (2 * n))

end

end A135165.P1680159685471884268

namespace A135165

/-- `gcd(A135158(n)+A000420(n), A010673(2*n))` -/
def P1680159685471884268.Spec : Prop :=
  ∀ n, (P1680159685471884268.a n : ℤ) = A135165 n

end A135165

/-! ## A135165.P14439741795304382934

`or(A135158(n)+A000420(n), A059841(n+1))`
-/

namespace A135165.P14439741795304382934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135158 n + A000420 n) (A059841 (n + 1))

end

end A135165.P14439741795304382934

namespace A135165

/-- `or(A135158(n)+A000420(n), A059841(n+1))` -/
def P14439741795304382934.Spec : Prop :=
  ∀ n, P14439741795304382934.a n = A135165 n

end A135165

/-! ## A135165.P8772603796632834537

`-(A007689(n)-A074616(n))*A000045(n²%(n+1))`
-/

namespace A135165.P8772603796632834537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A007689 n - A074616 n) * A000045 (n ^ 2 % (n + 1)))

end

end A135165.P8772603796632834537

namespace A135165

/-- `-(A007689(n)-A074616(n))*A000045(n²%(n+1))` -/
def P8772603796632834537.Spec : Prop :=
  ∀ n, P8772603796632834537.a n = A135165 n

end A135165

/-! ## A135165.P3832104355439056485

`(A135158(n)+A000420(n))*A001221(A001316(n))`
-/

namespace A135165.P3832104355439056485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135158 n + A000420 n) * A001221 (A001316 n).toNat

end

end A135165.P3832104355439056485

namespace A135165

/-- `(A135158(n)+A000420(n))*A001221(A001316(n))` -/
def P3832104355439056485.Spec : Prop :=
  ∀ n, P3832104355439056485.a n = A135165 n

end A135165

/-! ## A135165.P4024851899088315269

`(A007689(n)-A074616(n))*A008683(A031388(n+1))`
-/

namespace A135165.P4024851899088315269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007689 n - A074616 n) * A008683 (A031388 (n + 1)).toNat

end

end A135165.P4024851899088315269

namespace A135165

/-- `(A007689(n)-A074616(n))*A008683(A031388(n+1))` -/
def P4024851899088315269.Spec : Prop :=
  ∀ n, P4024851899088315269.a n = A135165 n

end A135165

/-! ## A135165.P5146675486338976796

`(A007689(n)-A074616(n))*A008683(A031928(n+1))`
-/

namespace A135165.P5146675486338976796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007689 n - A074616 n) * A008683 (A031928 (n + 1)).toNat

end

end A135165.P5146675486338976796

namespace A135165

/-- `(A007689(n)-A074616(n))*A008683(A031928(n+1))` -/
def P5146675486338976796.Spec : Prop :=
  ∀ n, P5146675486338976796.a n = A135165 n

end A135165

/-! ## A135165.P9389729486418289583

`(A007689(n)-A074616(n))*A008683(A086006(n+1))`
-/

namespace A135165.P9389729486418289583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007689 n - A074616 n) * A008683 (A086006 (n + 1)).toNat

end

end A135165.P9389729486418289583

namespace A135165

/-- `(A007689(n)-A074616(n))*A008683(A086006(n+1))` -/
def P9389729486418289583.Spec : Prop :=
  ∀ n, P9389729486418289583.a n = A135165 n

end A135165

/-! ## A135165.P7975572844311468632

`(A135167(n)+A135166(n))%A135168(n)`
-/

namespace A135165.P7975572844311468632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135167 n + A135166 n) (A135168 n)

end

end A135165.P7975572844311468632

namespace A135165

/-- `(A135167(n)+A135166(n))%A135168(n)` -/
def P7975572844311468632.Spec : Prop :=
  ∀ n, P7975572844311468632.a n = A135165 n

end A135165

/-!
# A135166: a(n) = 7^n + 5^n - 3^n + 2^n.

The programs for A135166, the canonical program `A135166.P6805597353140494519` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135166 has offset 0).

The definition of A135166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+5^n-3^n+2^n` (program `A135166.P6805597353140494519`, by `A135166.P6805597353140494519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135166.P6805597353140494519

`7^n+5^n-3^n+2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135166

/-- `7^n+5^n-3^n+2^n` -/
def P6805597353140494519.Spec : Prop :=
  ∀ n, P6805597353140494519.a n = A135166 n

theorem P6805597353140494519.correct : P6805597353140494519.Spec := by
  intro n
  simp only [A135166]

end A135166

/-! ## A135166.P1975008766147828259

`abs(3^n-2^n-A074616(n))`
-/

namespace A135166.P1975008766147828259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) - (2 ^ n : ℤ) - A074616 n|

end

end A135166.P1975008766147828259

namespace A135166

/-- `abs(3^n-2^n-A074616(n))` -/
def P1975008766147828259.Spec : Prop :=
  ∀ n, P1975008766147828259.a n = A135166 n

end A135166

/-! ## A135166.P13470984454207896846

`abs(5^n+7^n-A001047(n))`
-/

namespace A135166.P13470984454207896846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n + 7 ^ n : ℤ) - A001047 n|

end

end A135166.P13470984454207896846

namespace A135166

/-- `abs(5^n+7^n-A001047(n))` -/
def P13470984454207896846.Spec : Prop :=
  ∀ n, P13470984454207896846.a n = A135166 n

end A135166

/-! ## A135166.P17408399791833368182

`abs(A155588(n)+7^n+1-3^n)`
-/

namespace A135166.P17408399791833368182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155588 n + ((7 ^ n : ℤ) + (1 - (3 ^ n : ℤ)))|

end

end A135166.P17408399791833368182

namespace A135166

/-- `abs(A155588(n)+7^n+1-3^n)` -/
def P17408399791833368182.Spec : Prop :=
  ∀ n, P17408399791833368182.a n = A135166 n

end A135166

/-! ## A135166.P4416599993933278241

`abs(A000244(n)-A074538(n))`
-/

namespace A135166.P4416599993933278241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A074538 n|

end

end A135166.P4416599993933278241

namespace A135166

/-- `abs(A000244(n)-A074538(n))` -/
def P4416599993933278241.Spec : Prop :=
  ∀ n, P4416599993933278241.a n = A135166 n

end A135166

/-! ## A135166.P14216439724198067567

`abs(A056182(n)-A135167(n))`
-/

namespace A135166.P14216439724198067567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056182 n - A135167 n|

end

end A135166.P14216439724198067567

namespace A135166

/-- `abs(A056182(n)-A135167(n))` -/
def P14216439724198067567.Spec : Prop :=
  ∀ n, P14216439724198067567.a n = A135166 n

end A135166

/-! ## A135166.P1392723537428886360

`abs(A020729(n)-(A155596(n)-A155612(n)))`
-/

namespace A135166.P1392723537428886360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020729 n - (A155596 n - A155612 n)|

end

end A135166.P1392723537428886360

namespace A135166

/-- `abs(A020729(n)-(A155596(n)-A155612(n)))` -/
def P1392723537428886360.Spec : Prop :=
  ∀ n, P1392723537428886360.a n = A135166 n

end A135166

/-!
# A135167: a(n) = 7^n + 5^n + 3^n - 2^n. Constants are the prime numbers in decreasing order.

The programs for A135167, the canonical program `A135167.P2904130348192986132` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135167 has offset 0).

The definition of A135167 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+5^n+3^n-2^n` (program `A135167.P2904130348192986132`, by `A135167.P2904130348192986132.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135167.P2904130348192986132

`7^n+5^n+3^n-2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135167

/-- `7^n+5^n+3^n-2^n` -/
def P2904130348192986132.Spec : Prop :=
  ∀ n, P2904130348192986132.a n = A135167 n

theorem P2904130348192986132.correct : P2904130348192986132.Spec := by
  intro n
  simp only [A135167]

end A135167

/-! ## A135167.P3514769312427360949

`abs(2^n-A074552(n))`
-/

namespace A135167.P3514769312427360949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A074552 n|

end

end A135167.P3514769312427360949

namespace A135167

/-- `abs(2^n-A074552(n))` -/
def P3514769312427360949.Spec : Prop :=
  ∀ n, P3514769312427360949.a n = A135167 n

end A135167

/-! ## A135167.P14236950931245058620

`abs(A135165(n)+Δ[3^n])`
-/

namespace A135167.P14236950931245058620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135165 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A135167.P14236950931245058620

namespace A135167

/-- `abs(A135165(n)+Δ[3^n])` -/
def P14236950931245058620.Spec : Prop :=
  ∀ n, P14236950931245058620.a n = A135167 n

end A135167

/-! ## A135167.P12076071961856444546

`abs(A074616(n)+3^n-2^n)`
-/

namespace A135167.P12076071961856444546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074616 n + ((3 ^ n : ℤ) - (2 ^ n : ℤ))|

end

end A135167.P12076071961856444546

namespace A135167

/-- `abs(A074616(n)+3^n-2^n)` -/
def P12076071961856444546.Spec : Prop :=
  ∀ n, P12076071961856444546.a n = A135167 n

end A135167

/-! ## A135167.P17362528928891294066

`abs(A000051(n)-A134006(n))`
-/

namespace A135167.P17362528928891294066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A134006 n|

end

end A135167.P17362528928891294066

namespace A135167

/-- `abs(A000051(n)-A134006(n))` -/
def P17362528928891294066.Spec : Prop :=
  ∀ n, P17362528928891294066.a n = A135167 n

end A135167

/-! ## A135167.P496716506753437483

`abs(A000079(n)+A011782(n+1)-A135168(n))`
-/

namespace A135167.P496716506753437483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n + (A011782 (n + 1) - A135168 n)|

end

end A135167.P496716506753437483

namespace A135167

/-- `abs(A000079(n)+A011782(n+1)-A135168(n))` -/
def P496716506753437483.Spec : Prop :=
  ∀ n, P496716506753437483.a n = A135167 n

end A135167

/-!
# A135168: a(n) = 7^n + 5^n + 3^n + 2^n.

The programs for A135168, the canonical program `A135168.P15537448099565087146` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135168 has offset 0).

The definition of A135168 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+5^n+3^n+2^n` (program `A135168.P15537448099565087146`, by `A135168.P15537448099565087146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135168.P15537448099565087146

`7^n+5^n+3^n+2^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135168

/-- `7^n+5^n+3^n+2^n` -/
def P15537448099565087146.Spec : Prop :=
  ∀ n, (P15537448099565087146.a n : ℤ) = A135168 n

theorem P15537448099565087146.correct : P15537448099565087146.Spec := by
  intro n
  simp only [A135168]

end A135168

/-! ## A135168.P12955480809287835464

`∑{p}[A147571(n+1), #^n]`
-/

namespace A135168.P12955480809287835464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ n

end

end A135168.P12955480809287835464

namespace A135168

/-- `∑{p}[A147571(n+1), #^n]` -/
def P12955480809287835464.Spec : Prop :=
  ∀ n, (P12955480809287835464.a n : ℤ) = A135168 n

end A135168

/-! ## A135168.P5221531504977415722

`abs(A135166(n)+Δ[A000244(n)])`
-/

namespace A135168.P5221531504977415722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135166 n + (f1 (n + 1) - f1 n)|

end

end A135168.P5221531504977415722

namespace A135168

/-- `abs(A135166(n)+Δ[A000244(n)])` -/
def P5221531504977415722.Spec : Prop :=
  ∀ n, P5221531504977415722.a n = A135168 n

end A135168

/-! ## A135168.P13979518564984234976

`abs(1-A134006(n)-A000079(n))`
-/

namespace A135168.P13979518564984234976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A134006 n - A000079 n|

end

end A135168.P13979518564984234976

namespace A135168

/-- `abs(1-A134006(n)-A000079(n))` -/
def P13979518564984234976.Spec : Prop :=
  ∀ n, P13979518564984234976.a n = A135168 n

end A135168

/-! ## A135168.P1201259579756076656

`abs(3^n+A074501(n)+A000420(n)-1)`
-/

namespace A135168.P1201259579756076656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 ^ n : ℤ) + (A074501 n + (A000420 n - 1))|

end

end A135168.P1201259579756076656

namespace A135168

/-- `abs(3^n+A074501(n)+A000420(n)-1)` -/
def P1201259579756076656.Spec : Prop :=
  ∀ n, P1201259579756076656.a n = A135168 n

end A135168

/-!
# A135169: Period 4: repeat [1, 5, 9, 5].

The programs for A135169, the canonical program `A135169.P14182867187768277157` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135169 has offset 0).

The definition of A135169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135169.P14182867187768277157

`a(n-4)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=5`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A135169

/-- `a(n-4)` -/
def P14182867187768277157.Spec : Prop :=
  ∀ n, (P14182867187768277157.a n : ℤ) = A135169 n

theorem P14182867187768277157.correct : P14182867187768277157.Spec := by
  intro n
  simp only [A135169]

end A135169

/-!
# A135170: Primes equal to a sum c1+c2 of two consecutive composite numbers such that lpf(c1)-spf(c1)+lpf(c2)-spf(c2) from their largest and smallest prime factors is prime.

The programs for A135170, there is no canonical definition to state claims against.
-/

/-! ## A135170.P13478659586186857769

`A060254(lt[A075256(3*n+5)/8, n]+1)`
-/

namespace A135170.P13478659586186857769
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075256 (3 * n + 5) : ℚ) / 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1)

end

end A135170.P13478659586186857769

/-! ## A135170.P13562313572766429577

`A060254(lt[A014591(n), A067581(n)])`
-/

namespace A135170.P13562313572766429577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135170.P13562313572766429577

/-! ## A135170.P738168337611588120

`A060254(lt[A081362(2*(n+1)), A067581(n)])`
-/

namespace A135170.P738168337611588120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135170.P738168337611588120

/-! ## A135170.P7154862692840221994

`A050921(A096784(n+2))`
-/

namespace A135170.P7154862692840221994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050921 (A096784 (n + 2)).toNat

end

end A135170.P7154862692840221994

/-! ## A135170.P17037815179035361933

`A095171(A060254(n+2))`
-/

namespace A135170.P17037815179035361933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095171 (A060254 (n + 2)).toNat

end

end A135170.P17037815179035361933

/-!
# A135171: 3^p - 2^p, where p = prime(n).

The programs for A135171, the canonical program `A135171.P10397032383344473501` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135171 has offset 1).

The definition of A135171 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034785, A057901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135171.P10397032383344473501

`A057901(n+1)-A034785(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135171

/-- `A057901(n+1)-A034785(n+1)` -/
def P10397032383344473501.Spec : Prop :=
  ∀ n, P10397032383344473501.a n = A135171 (n + 1)

theorem P10397032383344473501.correct : P10397032383344473501.Spec := by
  intro n
  simp only [A135171, Nat.add_sub_cancel]

end A135171

/-! ## A135171.P8967319639208547794

`3^A000040(n+1)-2^A000040(n+1)`
-/

namespace A135171.P8967319639208547794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000040 (n + 1) : ℤ) - (2 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A135171.P8967319639208547794

namespace A135171

/-- `3^A000040(n+1)-2^A000040(n+1)` -/
def P8967319639208547794.Spec : Prop :=
  ∀ n, P8967319639208547794.a n = (A135171 (n + 1) : ℚ)

end A135171

/-! ## A135171.P3173377403423512591

`A242083(n+1)+1`
-/

namespace A135171.P3173377403423512591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242083 (n + 1) + 1

end

end A135171.P3173377403423512591

namespace A135171

/-- `A242083(n+1)+1` -/
def P3173377403423512591.Spec : Prop :=
  ∀ n, P3173377403423512591.a n = A135171 (n + 1)

end A135171

/-! ## A135171.P6018655539107693572

`A001047(A000040(n+1))`
-/

namespace A135171.P6018655539107693572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A000040 (n + 1)).toNat

end

end A135171.P6018655539107693572

namespace A135171

/-- `A001047(A000040(n+1))` -/
def P6018655539107693572.Spec : Prop :=
  ∀ n, P6018655539107693572.a n = A135171 (n + 1)

end A135171

/-! ## A135171.P6288483230951763285

`record[3^A006530(n+2)]-record[2^A006530(n+2)]`
-/

namespace A135171.P6288483230951763285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A006530 (n + 2) : ℤ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006530 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A135171.P6288483230951763285

namespace A135171

/-- `record[3^A006530(n+2)]-record[2^A006530(n+2)]` -/
def P6288483230951763285.Spec : Prop :=
  ∀ n, P6288483230951763285.a n = (A135171 (n + 1) : ℚ)

end A135171

/-!
# A135172: a(n) = 3^prime(n) + 2^prime(n).

The programs for A135172, the canonical program `A135172.P17366594049466022931` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135172 has offset 1).

The definition of A135172 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135172.P17366594049466022931

`3^A000040(n+1)+2^A000040(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135172

/-- `3^A000040(n+1)+2^A000040(n+1)` -/
def P17366594049466022931.Spec : Prop :=
  ∀ n, P17366594049466022931.a n = (A135172 (n + 1) : ℚ)

end A135172

/-! ## A135172.P6584544143092144290

`A007689(A000040(n+1))`
-/

namespace A135172.P6584544143092144290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 (A000040 (n + 1)).toNat

end

end A135172.P6584544143092144290

namespace A135172

/-- `A007689(A000040(n+1))` -/
def P6584544143092144290.Spec : Prop :=
  ∀ n, P6584544143092144290.a n = A135172 (n + 1)

end A135172

/-! ## A135172.P10721398108917962704

`A057901(n+1)+A034785(n+1)`
-/

namespace A135172.P10721398108917962704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057901 (n + 1) + A034785 (n + 1)

end

end A135172.P10721398108917962704

namespace A135172

/-- `A057901(n+1)+A034785(n+1)` -/
def P10721398108917962704.Spec : Prop :=
  ∀ n, P10721398108917962704.a n = A135172 (n + 1)

end A135172

/-! ## A135172.P14467624511499287045

`record[2^A006530(n+2)]+record[3^A006530(n+2)]`
-/

namespace A135172.P14467624511499287045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006530 (n + 2) : ℤ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A006530 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A135172.P14467624511499287045

namespace A135172

/-- `record[2^A006530(n+2)]+record[3^A006530(n+2)]` -/
def P14467624511499287045.Spec : Prop :=
  ∀ n, P14467624511499287045.a n = (A135172 (n + 1) : ℚ)

end A135172

/-! ## A135172.P13275292182397037295

`A154692(A034953(n+1))`
-/

namespace A135172.P13275292182397037295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154692 (A034953 (n + 1)).toNat

end

end A135172.P13275292182397037295

namespace A135172

/-- `A154692(A034953(n+1))` -/
def P13275292182397037295.Spec : Prop :=
  ∀ n, P13275292182397037295.a n = A135172 (n + 1)

end A135172

/-!
# A135173: a(n) = 5^p - 3^p - 2^p, where p = prime(n).

The programs for A135173, the canonical program `A135173.P4341705398435944029` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135173 has offset 1).

The definition of A135173 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034785, A057901, A057902, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135173.P4341705398435944029

`A057902(n+1)-A057901(n+1)-A034785(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135173

/-- `A057902(n+1)-A057901(n+1)-A034785(n+1)` -/
def P4341705398435944029.Spec : Prop :=
  ∀ n, P4341705398435944029.a n = A135173 (n + 1)

theorem P4341705398435944029.correct : P4341705398435944029.Spec := by
  intro n
  simp only [A135173, Nat.add_sub_cancel]

end A135173

/-! ## A135173.P6424243098036194230

`A135158(p?[comp[n²]])`
-/

namespace A135173.P6424243098036194230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135158 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A135173.P6424243098036194230

namespace A135173

/-- `A135158(p?[comp[n²]])` -/
def P6424243098036194230.Spec : Prop :=
  ∀ n, P6424243098036194230.a n = A135173 (n + 1)

end A135173

/-! ## A135173.P6580243265210699340

`A090020(p?[xor(1, n)+1])-1`
-/

namespace A135173.P6580243265210699340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090020 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1

end

end A135173.P6580243265210699340

namespace A135173

/-- `A090020(p?[xor(1, n)+1])-1` -/
def P6580243265210699340.Spec : Prop :=
  ∀ n, P6580243265210699340.a n = A135173 (n + 1)

end A135173

/-! ## A135173.P8453013640597864927

`A130072(A000040(n+1))`
-/

namespace A135173.P8453013640597864927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130072 (A000040 (n + 1)).toNat

end

end A135173.P8453013640597864927

namespace A135173

/-- `A130072(A000040(n+1))` -/
def P8453013640597864927.Spec : Prop :=
  ∀ n, P8453013640597864927.a n = A135173 (n + 1)

end A135173

/-! ## A135173.P1364643138481356311

`A135158(record[A006530(n+2)])`
-/

namespace A135173.P1364643138481356311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135158 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135173.P1364643138481356311

namespace A135173

/-- `A135158(record[A006530(n+2)])` -/
def P1364643138481356311.Spec : Prop :=
  ∀ n, P1364643138481356311.a n = A135173 (n + 1)

end A135173

/-!
# A135174: a(n) = 5^prime(n) - 3^prime(n) + 2^prime(n).

The programs for A135174, the canonical program `A135174.P17089642035438683001` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135174 has offset 1).

The definition of A135174 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135174.P17089642035438683001

`5^A000040(n+1)-3^A000040(n+1)+2^A000040(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135174

/-- `5^A000040(n+1)-3^A000040(n+1)+2^A000040(n+1)` -/
def P17089642035438683001.Spec : Prop :=
  ∀ n, P17089642035438683001.a n = (A135174 (n + 1) : ℚ)

end A135174

/-! ## A135174.P1363643878002259318

`A135159(eq[n+1, ∑{d}[n, #]])`
-/

namespace A135174.P1363643878002259318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135159 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A135174.P1363643878002259318

namespace A135174

/-- `A135159(eq[n+1, ∑{d}[n, #]])` -/
def P1363643878002259318.Spec : Prop :=
  ∀ n, P1363643878002259318.a n = A135174 (n + 1)

end A135174

/-! ## A135174.P107478088614978175

`A135159(A000040(n+1))`
-/

namespace A135174.P107478088614978175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135159 (A000040 (n + 1)).toNat

end

end A135174.P107478088614978175

namespace A135174

/-- `A135159(A000040(n+1))` -/
def P107478088614978175.Spec : Prop :=
  ∀ n, P107478088614978175.a n = A135174 (n + 1)

end A135174

/-! ## A135174.P1299575100548710955

`A135159(A008578(n+2))`
-/

namespace A135174.P1299575100548710955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135159 (A008578 (n + 2)).toNat

end

end A135174.P1299575100548710955

namespace A135174

/-- `A135159(A008578(n+2))` -/
def P1299575100548710955.Spec : Prop :=
  ∀ n, P1299575100548710955.a n = A135174 (n + 1)

end A135174

/-! ## A135174.P13157342809055226204

`A135159(record[A006530(n+2)])`
-/

namespace A135174.P13157342809055226204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135159 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135174.P13157342809055226204

namespace A135174

/-- `A135159(record[A006530(n+2)])` -/
def P13157342809055226204.Spec : Prop :=
  ∀ n, P13157342809055226204.a n = A135174 (n + 1)

end A135174

/-!
# A135175: a(n) = 5^p + 3^p - 2^p, where p = prime(n).

The programs for A135175, there is no canonical definition to state claims against.
-/

/-! ## A135175.P6011921092229959842

`A135160(p?[comp[n²]])`
-/

namespace A135175.P6011921092229959842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135160 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A135175.P6011921092229959842

/-! ## A135175.P5746017314818631344

`A135160(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A135175.P5746017314818631344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135160 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A135175.P5746017314818631344

/-! ## A135175.P1385156433866454223

`A135160(A000040(n+1))`
-/

namespace A135175.P1385156433866454223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135160 (A000040 (n + 1)).toNat

end

end A135175.P1385156433866454223

/-! ## A135175.P10991379607052800644

`A135160(record[A006530(n+2)])`
-/

namespace A135175.P10991379607052800644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135160 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135175.P10991379607052800644

/-! ## A135175.P9579031728430397626

`A135160(record[A020639(n+2)])`
-/

namespace A135175.P9579031728430397626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135160 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135175.P9579031728430397626

/-!
# A135176: 5^p + 3^p + 2^p, where p = prime(n).

The programs for A135176, there is no canonical definition to state claims against.
-/

/-! ## A135176.P5769860884822628800

`A074527(p?[comp[n²]])`
-/

namespace A135176.P5769860884822628800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074527 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A135176.P5769860884822628800

/-! ## A135176.P16994251389780192642

`A074527(A000040(n+1))`
-/

namespace A135176.P16994251389780192642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074527 (A000040 (n + 1)).toNat

end

end A135176.P16994251389780192642

/-! ## A135176.P14593007685178557198

`A074527(record[A006530(n+2)])`
-/

namespace A135176.P14593007685178557198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074527 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135176.P14593007685178557198

/-! ## A135176.P5327012216556668410

`A074527(record[A014963(n+2)])`
-/

namespace A135176.P5327012216556668410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074527 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135176.P5327012216556668410

/-! ## A135176.P15257092164650248433

`A074527(record[A020639(n+2)])`
-/

namespace A135176.P15257092164650248433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074527 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135176.P15257092164650248433

/-!
# A135177: a(n) = p^2*(p-1), where p = prime(n).

The programs for A135177, the canonical program `A135177.P13258641397500885273` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135177 has offset 1).

The definition of A135177 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030078, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135177.P5027244179845211524

`2*A138416(n+1)`
-/

namespace A135177.P5027244179845211524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138416 (n + 1)

end

end A135177.P5027244179845211524

namespace A135177

/-- `2*A138416(n+1)` -/
def P5027244179845211524.Spec : Prop :=
  ∀ n, P5027244179845211524.a n = A135177 (n + 1)

end A135177

/-! ## A135177.P13258641397500885273

`A030078(n+1)-A001248(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135177

/-- `A030078(n+1)-A001248(n+1)` -/
def P13258641397500885273.Spec : Prop :=
  ∀ n, P13258641397500885273.a n = A135177 (n + 1)

theorem P13258641397500885273.correct : P13258641397500885273.Spec := by
  intro n
  simp only [A135177, Nat.add_sub_cancel]

end A135177

/-! ## A135177.P4066332391074725473

`Δ[A007504(n)]*A036689(n+1)`
-/

namespace A135177.P4066332391074725473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A036689 (n + 1)

end

end A135177.P4066332391074725473

namespace A135177

/-- `Δ[A007504(n)]*A036689(n+1)` -/
def P4066332391074725473.Spec : Prop :=
  ∀ n, P4066332391074725473.a n = A135177 (n + 1)

end A135177

/-! ## A135177.P15581697782308093186

`A083558(n+1)-A000040(n+1)`
-/

namespace A135177.P15581697782308093186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083558 (n + 1) - A000040 (n + 1)

end

end A135177.P15581697782308093186

namespace A135177

/-- `A083558(n+1)-A000040(n+1)` -/
def P15581697782308093186.Spec : Prop :=
  ∀ n, P15581697782308093186.a n = A135177 (n + 1)

end A135177

/-! ## A135177.P13549576446373310127

`A127917(n+1)-A036689(n+1)`
-/

namespace A135177.P13549576446373310127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127917 (n + 1) - A036689 (n + 1)

end

end A135177.P13549576446373310127

namespace A135177

/-- `A127917(n+1)-A036689(n+1)` -/
def P13549576446373310127.Spec : Prop :=
  ∀ n, P13549576446373310127.a n = A135177 (n + 1)

end A135177

/-! ## A135177.P12997740217464210764

`A050997(n+1)-A135180(n+1)`
-/

namespace A135177.P12997740217464210764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) - A135180 (n + 1)

end

end A135177.P12997740217464210764

namespace A135177

/-- `A050997(n+1)-A135180(n+1)` -/
def P12997740217464210764.Spec : Prop :=
  ∀ n, P12997740217464210764.a n = A135177 (n + 1)

end A135177

/-! ## A135177.P4843114356882253525

`A135181(n+1)-A050997(n+1)`
-/

namespace A135177.P4843114356882253525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135181 (n + 1) - A050997 (n + 1)

end

end A135177.P4843114356882253525

namespace A135177

/-- `A135181(n+1)-A050997(n+1)` -/
def P4843114356882253525.Spec : Prop :=
  ∀ n, P4843114356882253525.a n = A135177 (n + 1)

end A135177

/-! ## A135177.P15177641758917574595

`A153481(n+1)-A049001(n+1)`
-/

namespace A135177.P15177641758917574595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153481 (n + 1) - A049001 (n + 1)

end

end A135177.P15177641758917574595

namespace A135177

/-- `A153481(n+1)-A049001(n+1)` -/
def P15177641758917574595.Spec : Prop :=
  ∀ n, P15177641758917574595.a n = A135177 (n + 1)

end A135177

/-! ## A135177.P15380521482362065387

`A135178(n+1)-A079704(n+1)`
-/

namespace A135177.P15380521482362065387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) - A079704 (n + 1)

end

end A135177.P15380521482362065387

namespace A135177

/-- `A135178(n+1)-A079704(n+1)` -/
def P15380521482362065387.Spec : Prop :=
  ∀ n, P15380521482362065387.a n = A135177 (n + 1)

end A135177

/-! ## A135177.P17263366473989726656

`A181150(n+1)-A060800(n+1)`
-/

namespace A135177.P17263366473989726656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181150 (n + 1) - A060800 (n + 1)

end

end A135177.P17263366473989726656

namespace A135177

/-- `A181150(n+1)-A060800(n+1)` -/
def P17263366473989726656.Spec : Prop :=
  ∀ n, P17263366473989726656.a n = A135177 (n + 1)

end A135177

/-! ## A135177.P4417554620555684776

`A138402(n+1)-A138403(n+1)`
-/

namespace A135177.P4417554620555684776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138402 (n + 1) - A138403 (n + 1)

end

end A135177.P4417554620555684776

namespace A135177

/-- `A138402(n+1)-A138403(n+1)` -/
def P4417554620555684776.Spec : Prop :=
  ∀ n, P4417554620555684776.a n = A135177 (n + 1)

end A135177

/-! ## A135177.P22666764373401423

`A138405(n+1)-A138406(n+1)`
-/

namespace A135177.P22666764373401423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138405 (n + 1) - A138406 (n + 1)

end

end A135177.P22666764373401423

namespace A135177

/-- `A138405(n+1)-A138406(n+1)` -/
def P22666764373401423.Spec : Prop :=
  ∀ n, P22666764373401423.a n = A135177 (n + 1)

end A135177

/-! ## A135177.P18033832082560867041

`A138409(n+1)-A138410(n+1)`
-/

namespace A135177.P18033832082560867041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138409 (n + 1) - A138410 (n + 1)

end

end A135177.P18033832082560867041

namespace A135177

/-- `A138409(n+1)-A138410(n+1)` -/
def P18033832082560867041.Spec : Prop :=
  ∀ n, P18033832082560867041.a n = A135177 (n + 1)

end A135177

/-! ## A135177.P10270634314139941988

`A172190(n+1)-A135178(n+1)`
-/

namespace A135177.P10270634314139941988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172190 (n + 1) - A135178 (n + 1)

end

end A135177.P10270634314139941988

namespace A135177

/-- `A172190(n+1)-A135178(n+1)` -/
def P10270634314139941988.Spec : Prop :=
  ∀ n, P10270634314139941988.a n = A135177 (n + 1)

end A135177

/-! ## A135177.P16148431598037108760

`A001248(n+1)*A006093(n+1)`
-/

namespace A135177.P16148431598037108760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A006093 (n + 1)

end

end A135177.P16148431598037108760

namespace A135177

/-- `A001248(n+1)*A006093(n+1)` -/
def P16148431598037108760.Spec : Prop :=
  ∀ n, P16148431598037108760.a n = A135177 (n + 1)

end A135177

/-! ## A135177.P8582949201414999605

`A000040(n+1)*A036689(n+1)`
-/

namespace A135177.P8582949201414999605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A036689 (n + 1)

end

end A135177.P8582949201414999605

namespace A135177

/-- `A000040(n+1)*A036689(n+1)` -/
def P8582949201414999605.Spec : Prop :=
  ∀ n, P8582949201414999605.a n = A135177 (n + 1)

end A135177

/-! ## A135177.P8584801567943129890

`A138403(n+1)/A000040(n+1)`
-/

namespace A135177.P8584801567943129890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138403 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A135177.P8584801567943129890

namespace A135177

/-- `A138403(n+1)/A000040(n+1)` -/
def P8584801567943129890.Spec : Prop :=
  ∀ n, P8584801567943129890.a n = (A135177 (n + 1) : ℚ)

end A135177

/-! ## A135177.P3186882502877927410

`A138407(n+1)/A001248(n+1)`
-/

namespace A135177.P3186882502877927410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138407 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A135177.P3186882502877927410

namespace A135177

/-- `A138407(n+1)/A001248(n+1)` -/
def P3186882502877927410.Spec : Prop :=
  ∀ n, P3186882502877927410.a n = (A135177 (n + 1) : ℚ)

end A135177

/-! ## A135177.P9779301477612588397

`A030514(n+1)%A083558(n+1)`
-/

namespace A135177.P9779301477612588397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030514 (n + 1)) (A083558 (n + 1))

end

end A135177.P9779301477612588397

namespace A135177

/-- `A030514(n+1)%A083558(n+1)` -/
def P9779301477612588397.Spec : Prop :=
  ∀ n, P9779301477612588397.a n = A135177 (n + 1)

end A135177

/-! ## A135177.P13469309078277375772

`A098935(n+1)%A030078(n+1)`
-/

namespace A135177.P13469309078277375772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098935 (n + 1)) (A030078 (n + 1))

end

end A135177.P13469309078277375772

namespace A135177

/-- `A098935(n+1)%A030078(n+1)` -/
def P13469309078277375772.Spec : Prop :=
  ∀ n, P13469309078277375772.a n = A135177 (n + 1)

end A135177

/-!
# A135178: a(n) = p^3 + p^2 where p = prime(n).

The programs for A135178, the canonical program `A135178.P2117100385622879640` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135178 has offset 1).

The definition of A135178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135178.P4296187455772833249

`A181151(n+1)-1`
-/

namespace A135178.P4296187455772833249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181151 (n + 1) - 1

end

end A135178.P4296187455772833249

namespace A135178

/-- `A181151(n+1)-1` -/
def P4296187455772833249.Spec : Prop :=
  ∀ n, P4296187455772833249.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P17476064756976210701

`Δ[A007504(n)]*A036690(n+1)`
-/

namespace A135178.P17476064756976210701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A036690 (n + 1)

end

end A135178.P17476064756976210701

namespace A135178

/-- `Δ[A007504(n)]*A036690(n+1)` -/
def P17476064756976210701.Spec : Prop :=
  ∀ n, P17476064756976210701.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P2117100385622879640

`A001248(n+1)+A030078(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135178

/-- `A001248(n+1)+A030078(n+1)` -/
def P2117100385622879640.Spec : Prop :=
  ∀ n, P2117100385622879640.a n = A135178 (n + 1)

theorem P2117100385622879640.correct : P2117100385622879640.Spec := by
  intro n
  simp only [A135178, Nat.add_sub_cancel]

end A135178

/-! ## A135178.P1582171975022953729

`A127917(n+1)+A036690(n+1)`
-/

namespace A135178.P1582171975022953729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127917 (n + 1) + A036690 (n + 1)

end

end A135178.P1582171975022953729

namespace A135178

/-- `A127917(n+1)+A036690(n+1)` -/
def P1582171975022953729.Spec : Prop :=
  ∀ n, P1582171975022953729.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P16650105773569093940

`A117961(n+1)+A083558(n+1)`
-/

namespace A135178.P16650105773569093940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 1) + A083558 (n + 1)

end

end A135178.P16650105773569093940

namespace A135178

/-- `A117961(n+1)+A083558(n+1)` -/
def P16650105773569093940.Spec : Prop :=
  ∀ n, P16650105773569093940.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P8761842103888808714

`A135177(n+1)+A079704(n+1)`
-/

namespace A135178.P8761842103888808714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135177 (n + 1) + A079704 (n + 1)

end

end A135178.P8761842103888808714

namespace A135178

/-- `A135177(n+1)+A079704(n+1)` -/
def P8761842103888808714.Spec : Prop :=
  ∀ n, P8761842103888808714.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P14481368999785058884

`A153481(n+1)+A061725(n+1)`
-/

namespace A135178.P14481368999785058884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153481 (n + 1) + A061725 (n + 1)

end

end A135178.P14481368999785058884

namespace A135178

/-- `A153481(n+1)+A061725(n+1)` -/
def P14481368999785058884.Spec : Prop :=
  ∀ n, P14481368999785058884.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P11532867141769228007

`A179546(n+1)+A138416(n+1)`
-/

namespace A135178.P11532867141769228007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179546 (n + 1) + A138416 (n + 1)

end

end A135178.P11532867141769228007

namespace A135178

/-- `A179546(n+1)+A138416(n+1)` -/
def P11532867141769228007.Spec : Prop :=
  ∀ n, P11532867141769228007.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P18164682014522765955

`A306190(n+1)+A181150(n+1)`
-/

namespace A135178.P18164682014522765955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1) + A181150 (n + 1)

end

end A135178.P18164682014522765955

namespace A135178

/-- `A306190(n+1)+A181150(n+1)` -/
def P18164682014522765955.Spec : Prop :=
  ∀ n, P18164682014522765955.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P7380708323340362671

`A131991(n+1)-A008864(n+1)`
-/

namespace A135178.P7380708323340362671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131991 (n + 1) - A008864 (n + 1)

end

end A135178.P7380708323340362671

namespace A135178

/-- `A131991(n+1)-A008864(n+1)` -/
def P7380708323340362671.Spec : Prop :=
  ∀ n, P7380708323340362671.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P3423587630744241397

`A181149(n+1)-A000040(n+1)`
-/

namespace A135178.P3423587630744241397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181149 (n + 1) - A000040 (n + 1)

end

end A135178.P3423587630744241397

namespace A135178

/-- `A181149(n+1)-A000040(n+1)` -/
def P3423587630744241397.Spec : Prop :=
  ∀ n, P3423587630744241397.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P12330980254738694386

`A050997(n+1)-A135179(n+1)`
-/

namespace A135178.P12330980254738694386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) - A135179 (n + 1)

end

end A135178.P12330980254738694386

namespace A135178

/-- `A050997(n+1)-A135179(n+1)` -/
def P12330980254738694386.Spec : Prop :=
  ∀ n, P12330980254738694386.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P17163165696752455103

`A135182(n+1)-A050997(n+1)`
-/

namespace A135178.P17163165696752455103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135182 (n + 1) - A050997 (n + 1)

end

end A135178.P17163165696752455103

namespace A135178

/-- `A135182(n+1)-A050997(n+1)` -/
def P17163165696752455103.Spec : Prop :=
  ∀ n, P17163165696752455103.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P10260670183940867584

`A178398(n+1)-A036690(n+1)`
-/

namespace A135178.P10260670183940867584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178398 (n + 1) - A036690 (n + 1)

end

end A135178.P10260670183940867584

namespace A135178

/-- `A178398(n+1)-A036690(n+1)` -/
def P10260670183940867584.Spec : Prop :=
  ∀ n, P10260670183940867584.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P7076047663378718085

`A098996(n+1)-A178398(n+1)`
-/

namespace A135178.P7076047663378718085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098996 (n + 1) - A178398 (n + 1)

end

end A135178.P7076047663378718085

namespace A135178

/-- `A098996(n+1)-A178398(n+1)` -/
def P7076047663378718085.Spec : Prop :=
  ∀ n, P7076047663378718085.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P1185257430350151500

`A172190(n+1)-A135177(n+1)`
-/

namespace A135178.P1185257430350151500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172190 (n + 1) - A135177 (n + 1)

end

end A135178.P1185257430350151500

namespace A135178

/-- `A172190(n+1)-A135177(n+1)` -/
def P1185257430350151500.Spec : Prop :=
  ∀ n, P1185257430350151500.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P16553095866226560576

`A001248(n+1)*A008864(n+1)`
-/

namespace A135178.P16553095866226560576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A008864 (n + 1)

end

end A135178.P16553095866226560576

namespace A135178

/-- `A001248(n+1)*A008864(n+1)` -/
def P16553095866226560576.Spec : Prop :=
  ∀ n, P16553095866226560576.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P12438236189308845945

`A000040(n+1)*A036690(n+1)`
-/

namespace A135178.P12438236189308845945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A036690 (n + 1)

end

end A135178.P12438236189308845945

namespace A135178

/-- `A000040(n+1)*A036690(n+1)` -/
def P12438236189308845945.Spec : Prop :=
  ∀ n, P12438236189308845945.a n = A135178 (n + 1)

end A135178

/-! ## A135178.P1310095220055401592

`A138402(n+1)/A006093(n+1)`
-/

namespace A135178.P1310095220055401592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138402 (n + 1) : ℚ) / (A006093 (n + 1) : ℚ)

end

end A135178.P1310095220055401592

namespace A135178

/-- `A138402(n+1)/A006093(n+1)` -/
def P1310095220055401592.Spec : Prop :=
  ∀ n, P1310095220055401592.a n = (A135178 (n + 1) : ℚ)

end A135178

/-! ## A135178.P9159420153558023655

`A138406(n+1)/A036689(n+1)`
-/

namespace A135178.P9159420153558023655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / (A036689 (n + 1) : ℚ)

end

end A135178.P9159420153558023655

namespace A135178

/-- `A138406(n+1)/A036689(n+1)` -/
def P9159420153558023655.Spec : Prop :=
  ∀ n, P9159420153558023655.a n = (A135178 (n + 1) : ℚ)

end A135178

/-!
# A135179: p^5 - p^3 - p^2. Exponents are the prime numbers in decreasing order and p is the n-th prime.

The programs for A135179, the canonical program `A135179.P4376560334268819902` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135179 has offset 1).

The definition of A135179 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030078, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135179.P4376560334268819902

`A050997(n+1)-A030078(n+1)-A001248(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135179

/-- `A050997(n+1)-A030078(n+1)-A001248(n+1)` -/
def P4376560334268819902.Spec : Prop :=
  ∀ n, P4376560334268819902.a n = A135179 (n + 1)

theorem P4376560334268819902.correct : P4376560334268819902.Spec := by
  intro n
  simp only [A135179, Nat.add_sub_cancel]

end A135179

/-! ## A135179.P4915062417821112686

`A138406(n+1)-p?[round(8*n/7)]²`
-/

namespace A135179.P4915062417821112686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138406 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A135179.P4915062417821112686

namespace A135179

/-- `A138406(n+1)-p?[round(8*n/7)]²` -/
def P4915062417821112686.Spec : Prop :=
  ∀ n, P4915062417821112686.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P9018780272804488986

`A138406(n+1)-A001248(n+1)`
-/

namespace A135179.P9018780272804488986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138406 (n + 1) - A001248 (n + 1)

end

end A135179.P9018780272804488986

namespace A135179

/-- `A138406(n+1)-A001248(n+1)` -/
def P9018780272804488986.Spec : Prop :=
  ∀ n, P9018780272804488986.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P3464190238176716090

`A138405(n+1)-A030078(n+1)`
-/

namespace A135179.P3464190238176716090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138405 (n + 1) - A030078 (n + 1)

end

end A135179.P3464190238176716090

namespace A135179

/-- `A138405(n+1)-A030078(n+1)` -/
def P3464190238176716090.Spec : Prop :=
  ∀ n, P3464190238176716090.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P10931243451070516946

`A050997(n+1)-A135178(n+1)`
-/

namespace A135179.P10931243451070516946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) - A135178 (n + 1)

end

end A135179.P10931243451070516946

namespace A135179

/-- `A050997(n+1)-A135178(n+1)` -/
def P10931243451070516946.Spec : Prop :=
  ∀ n, P10931243451070516946.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P1453785168592909512

`A135180(n+1)-A079704(n+1)`
-/

namespace A135179.P1453785168592909512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135180 (n + 1) - A079704 (n + 1)

end

end A135179.P1453785168592909512

namespace A135179

/-- `A135180(n+1)-A079704(n+1)` -/
def P1453785168592909512.Spec : Prop :=
  ∀ n, P1453785168592909512.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P3573779200494558724

`A135181(n+1)-A172190(n+1)`
-/

namespace A135179.P3573779200494558724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135181 (n + 1) - A172190 (n + 1)

end

end A135179.P3573779200494558724

namespace A135179

/-- `A135181(n+1)-A172190(n+1)` -/
def P3573779200494558724.Spec : Prop :=
  ∀ n, P3573779200494558724.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P16841799028596951479

`A098935(n+1)%A050997(n+1)`
-/

namespace A135179.P16841799028596951479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098935 (n + 1)) (A050997 (n + 1))

end

end A135179.P16841799028596951479

namespace A135179

/-- `A098935(n+1)%A050997(n+1)` -/
def P16841799028596951479.Spec : Prop :=
  ∀ n, P16841799028596951479.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P8553776059090401355

`A138406(n+1)-A000040(n+1)²`
-/

namespace A135179.P8553776059090401355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138406 (n + 1) - A000040 (n + 1) ^ 2

end

end A135179.P8553776059090401355

namespace A135179

/-- `A138406(n+1)-A000040(n+1)²` -/
def P8553776059090401355.Spec : Prop :=
  ∀ n, P8553776059090401355.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P17744165152229903298

`A050997(n+1)+1-A181151(n+1)`
-/

namespace A135179.P17744165152229903298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) + (1 - A181151 (n + 1))

end

end A135179.P17744165152229903298

namespace A135179

/-- `A050997(n+1)+1-A181151(n+1)` -/
def P17744165152229903298.Spec : Prop :=
  ∀ n, P17744165152229903298.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P17025435253465973350

`(A127917(n+1)-1)*A001248(n+1)`
-/

namespace A135179.P17025435253465973350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127917 (n + 1) - 1) * A001248 (n + 1)

end

end A135179.P17025435253465973350

namespace A135179

/-- `(A127917(n+1)-1)*A001248(n+1)` -/
def P17025435253465973350.Spec : Prop :=
  ∀ n, P17025435253465973350.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P9079401285547910583

`A135180(n+1)-2*A001248(n+1)`
-/

namespace A135179.P9079401285547910583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135180 (n + 1) - 2 * A001248 (n + 1)

end

end A135179.P9079401285547910583

namespace A135179

/-- `A135180(n+1)-2*A001248(n+1)` -/
def P9079401285547910583.Spec : Prop :=
  ∀ n, P9079401285547910583.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P16025532208578593655

`2*A138431(n+1)-A030078(n+1)`
-/

namespace A135179.P16025532208578593655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138431 (n + 1) - A030078 (n + 1)

end

end A135179.P16025532208578593655

namespace A135179

/-- `2*A138431(n+1)-A030078(n+1)` -/
def P16025532208578593655.Spec : Prop :=
  ∀ n, P16025532208578593655.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P3542374306024429307

`2*A050997(n+1)-A135182(n+1)`
-/

namespace A135179.P3542374306024429307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050997 (n + 1) - A135182 (n + 1)

end

end A135179.P3542374306024429307

namespace A135179

/-- `2*A050997(n+1)-A135182(n+1)` -/
def P3542374306024429307.Spec : Prop :=
  ∀ n, P3542374306024429307.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P9080935389956774454

`A135182(n+1)-2*A135178(n+1)`
-/

namespace A135179.P9080935389956774454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135182 (n + 1) - 2 * A135178 (n + 1)

end

end A135179.P9080935389956774454

namespace A135179

/-- `A135182(n+1)-2*A135178(n+1)` -/
def P9080935389956774454.Spec : Prop :=
  ∀ n, P9080935389956774454.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P5127793171620411000

`A135181(n+1)-A030078(n+1)-A030078(n+1)`
-/

namespace A135179.P5127793171620411000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135181 (n + 1) - A030078 (n + 1) - A030078 (n + 1)

end

end A135179.P5127793171620411000

namespace A135179

/-- `A135181(n+1)-A030078(n+1)-A030078(n+1)` -/
def P5127793171620411000.Spec : Prop :=
  ∀ n, P5127793171620411000.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P2588766526962522131

`(A138402(n+1)-A000040(n+1))*A000040(n+1)`
-/

namespace A135179.P2588766526962522131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138402 (n + 1) - A000040 (n + 1)) * A000040 (n + 1)

end

end A135179.P2588766526962522131

namespace A135179

/-- `(A138402(n+1)-A000040(n+1))*A000040(n+1)` -/
def P2588766526962522131.Spec : Prop :=
  ∀ n, P2588766526962522131.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P102152354913697309

`(A138401(n+1)-A001248(n+1))*A000040(n+1)`
-/

namespace A135179.P102152354913697309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138401 (n + 1) - A001248 (n + 1)) * A000040 (n + 1)

end

end A135179.P102152354913697309

namespace A135179

/-- `(A138401(n+1)-A001248(n+1))*A000040(n+1)` -/
def P102152354913697309.Spec : Prop :=
  ∀ n, P102152354913697309.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P17925082946116987984

`A001248(n+1)*A030078(n+1)-A135178(n+1)`
-/

namespace A135179.P17925082946116987984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A030078 (n + 1) - A135178 (n + 1)

end

end A135179.P17925082946116987984

namespace A135179

/-- `A001248(n+1)*A030078(n+1)-A135178(n+1)` -/
def P17925082946116987984.Spec : Prop :=
  ∀ n, P17925082946116987984.a n = A135179 (n + 1)

end A135179

/-! ## A135179.P11561804179420550344

`A000040(n+1)*A138401(n+1)-A030078(n+1)`
-/

namespace A135179.P11561804179420550344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138401 (n + 1) - A030078 (n + 1)

end

end A135179.P11561804179420550344

namespace A135179

/-- `A000040(n+1)*A138401(n+1)-A030078(n+1)` -/
def P11561804179420550344.Spec : Prop :=
  ∀ n, P11561804179420550344.a n = A135179 (n + 1)

end A135179

/-!
# A135180: a(n) = p^5 - p^3 + p^2, where p = prime(n).

The programs for A135180, the canonical program `A135180.P11010931225065724081` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135180 has offset 1).

The definition of A135180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135180.P4434619651032304391

`A138406(n+1)+A001248(n+1)`
-/

namespace A135180.P4434619651032304391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138406 (n + 1) + A001248 (n + 1)

end

end A135180.P4434619651032304391

namespace A135180

/-- `A138406(n+1)+A001248(n+1)` -/
def P4434619651032304391.Spec : Prop :=
  ∀ n, P4434619651032304391.a n = A135180 (n + 1)

end A135180

/-! ## A135180.P11010931225065724081

`A135179(n+1)+A079704(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135180

/-- `A135179(n+1)+A079704(n+1)` -/
def P11010931225065724081.Spec : Prop :=
  ∀ n, P11010931225065724081.a n = A135180 (n + 1)

theorem P11010931225065724081.correct : P11010931225065724081.Spec := by
  intro n
  simp only [A135180, Nat.add_sub_cancel]

end A135180

/-! ## A135180.P2165695949311204789

`A050997(n+1)-A135177(n+1)`
-/

namespace A135180.P2165695949311204789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) - A135177 (n + 1)

end

end A135180.P2165695949311204789

namespace A135180

/-- `A050997(n+1)-A135177(n+1)` -/
def P2165695949311204789.Spec : Prop :=
  ∀ n, P2165695949311204789.a n = A135180 (n + 1)

end A135180

/-! ## A135180.P4380393821570261097

`A135182(n+1)-A172190(n+1)`
-/

namespace A135180.P4380393821570261097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135182 (n + 1) - A172190 (n + 1)

end

end A135180.P4380393821570261097

namespace A135180

/-- `A135182(n+1)-A172190(n+1)` -/
def P4380393821570261097.Spec : Prop :=
  ∀ n, P4380393821570261097.a n = A135180 (n + 1)

end A135180

/-! ## A135180.P2561690575153452474

`A138406(n+1)+A000040(n+1)²`
-/

namespace A135180.P2561690575153452474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138406 (n + 1) + A000040 (n + 1) ^ 2

end

end A135180.P2561690575153452474

namespace A135180

/-- `A138406(n+1)+A000040(n+1)²` -/
def P2561690575153452474.Spec : Prop :=
  ∀ n, P2561690575153452474.a n = A135180 (n + 1)

end A135180

/-! ## A135180.P852891986940610280

`(A127917(n+1)+1)*A001248(n+1)`
-/

namespace A135180.P852891986940610280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127917 (n + 1) + 1) * A001248 (n + 1)

end

end A135180.P852891986940610280

namespace A135180

/-- `(A127917(n+1)+1)*A001248(n+1)` -/
def P852891986940610280.Spec : Prop :=
  ∀ n, P852891986940610280.a n = A135180 (n + 1)

end A135180

/-! ## A135180.P12271695837672025930

`A135179(n+1)+2*A001248(n+1)`
-/

namespace A135180.P12271695837672025930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135179 (n + 1) + 2 * A001248 (n + 1)

end

end A135180.P12271695837672025930

namespace A135180

/-- `A135179(n+1)+2*A001248(n+1)` -/
def P12271695837672025930.Spec : Prop :=
  ∀ n, P12271695837672025930.a n = A135180 (n + 1)

end A135180

/-! ## A135180.P5621186635475130606

`A135182(n+1)-2*A030078(n+1)`
-/

namespace A135180.P5621186635475130606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135182 (n + 1) - 2 * A030078 (n + 1)

end

end A135180.P5621186635475130606

namespace A135180

/-- `A135182(n+1)-2*A030078(n+1)` -/
def P5621186635475130606.Spec : Prop :=
  ∀ n, P5621186635475130606.a n = A135180 (n + 1)

end A135180

/-! ## A135180.P5816083042217857868

`A050997(n+1)-2*A138416(n+1)`
-/

namespace A135180.P5816083042217857868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) - 2 * A138416 (n + 1)

end

end A135180.P5816083042217857868

namespace A135180

/-- `A050997(n+1)-2*A138416(n+1)` -/
def P5816083042217857868.Spec : Prop :=
  ∀ n, P5816083042217857868.a n = A135180 (n + 1)

end A135180

/-! ## A135180.P14372989098263368304

`A138406(n+1)+(1-A008864(n+1))²`
-/

namespace A135180.P14372989098263368304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138406 (n + 1) + (1 - A008864 (n + 1)) ^ 2

end

end A135180.P14372989098263368304

namespace A135180

/-- `A138406(n+1)+(1-A008864(n+1))²` -/
def P14372989098263368304.Spec : Prop :=
  ∀ n, P14372989098263368304.a n = A135180 (n + 1)

end A135180

/-! ## A135180.P3080713945356559945

`(A127917(n+1)+1)*A000040(n+1)²`
-/

namespace A135180.P3080713945356559945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127917 (n + 1) + 1) * A000040 (n + 1) ^ 2

end

end A135180.P3080713945356559945

namespace A135180

/-- `(A127917(n+1)+1)*A000040(n+1)²` -/
def P3080713945356559945.Spec : Prop :=
  ∀ n, P3080713945356559945.a n = A135180 (n + 1)

end A135180

/-! ## A135180.P7182402095933018692

`A000040(n+1)²+2*A138432(n+1)`
-/

namespace A135180.P7182402095933018692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + 2 * A138432 (n + 1)

end

end A135180.P7182402095933018692

namespace A135180

/-- `A000040(n+1)²+2*A138432(n+1)` -/
def P7182402095933018692.Spec : Prop :=
  ∀ n, P7182402095933018692.a n = A135180 (n + 1)

end A135180

/-! ## A135180.P9244694961199299764

`A001248(n+1)+A050997(n+1)-A030078(n+1)`
-/

namespace A135180.P9244694961199299764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A050997 (n + 1) - A030078 (n + 1))

end

end A135180.P9244694961199299764

namespace A135180

/-- `A001248(n+1)+A050997(n+1)-A030078(n+1)` -/
def P9244694961199299764.Spec : Prop :=
  ∀ n, P9244694961199299764.a n = A135180 (n + 1)

end A135180

/-! ## A135180.P10538987223488398723

`A050997(n+1)+A050997(n+1)-A135181(n+1)`
-/

namespace A135180.P10538987223488398723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) + (A050997 (n + 1) - A135181 (n + 1))

end

end A135180.P10538987223488398723

namespace A135180

/-- `A050997(n+1)+A050997(n+1)-A135181(n+1)` -/
def P10538987223488398723.Spec : Prop :=
  ∀ n, P10538987223488398723.a n = A135180 (n + 1)

end A135180

/-! ## A135180.P16827529557276451452

`(A138402(n+1)+A000040(n+1))*A000040(n+1)`
-/

namespace A135180.P16827529557276451452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138402 (n + 1) + A000040 (n + 1)) * A000040 (n + 1)

end

end A135180.P16827529557276451452

namespace A135180

/-- `(A138402(n+1)+A000040(n+1))*A000040(n+1)` -/
def P16827529557276451452.Spec : Prop :=
  ∀ n, P16827529557276451452.a n = A135180 (n + 1)

end A135180

/-! ## A135180.P7585402442832356939

`(A030078(n+1)-A006093(n+1))*A001248(n+1)`
-/

namespace A135180.P7585402442832356939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) - A006093 (n + 1)) * A001248 (n + 1)

end

end A135180.P7585402442832356939

namespace A135180

/-- `(A030078(n+1)-A006093(n+1))*A001248(n+1)` -/
def P7585402442832356939.Spec : Prop :=
  ∀ n, P7585402442832356939.a n = A135180 (n + 1)

end A135180

/-! ## A135180.P17108016454756480542

`A001248(n+1)*A030078(n+1)-A135177(n+1)`
-/

namespace A135180.P17108016454756480542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A030078 (n + 1) - A135177 (n + 1)

end

end A135180.P17108016454756480542

namespace A135180

/-- `A001248(n+1)*A030078(n+1)-A135177(n+1)` -/
def P17108016454756480542.Spec : Prop :=
  ∀ n, P17108016454756480542.a n = A135180 (n + 1)

end A135180

/-! ## A135180.P16598866023061027958

`A138406(n+1)+A138406(n+1)/A127917(n+1)`
-/

namespace A135180.P16598866023061027958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) + (A138406 (n + 1) : ℚ) / (A127917 (n + 1) : ℚ)

end

end A135180.P16598866023061027958

namespace A135180

/-- `A138406(n+1)+A138406(n+1)/A127917(n+1)` -/
def P16598866023061027958.Spec : Prop :=
  ∀ n, P16598866023061027958.a n = (A135180 (n + 1) : ℚ)

end A135180

/-! ## A135180.P2892071404081677831

`A050997(n+1)-A138407(n+1)/A001248(n+1)`
-/

namespace A135180.P2892071404081677831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050997 (n + 1) : ℚ) - (A138407 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A135180.P2892071404081677831

namespace A135180

/-- `A050997(n+1)-A138407(n+1)/A001248(n+1)` -/
def P2892071404081677831.Spec : Prop :=
  ∀ n, P2892071404081677831.a n = (A135180 (n + 1) : ℚ)

end A135180

/-! ## A135180.P11602631881722755944

`(A001248(n+1)²-A036689(n+1))*A000040(n+1)`
-/

namespace A135180.P11602631881722755944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) ^ 2 - A036689 (n + 1)) * A000040 (n + 1)

end

end A135180.P11602631881722755944

namespace A135180

/-- `(A001248(n+1)²-A036689(n+1))*A000040(n+1)` -/
def P11602631881722755944.Spec : Prop :=
  ∀ n, P11602631881722755944.a n = A135180 (n + 1)

end A135180

/-!
# A135181: p^5 + p^3 - p^2. Exponents are the prime numbers in decreasing order and p is the n-th prime.

The programs for A135181, the canonical program `A135181.P6699023682953178213` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135181 has offset 1).

The definition of A135181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135181.P394679529070966685

`A138405(n+1)+A030078(n+1)`
-/

namespace A135181.P394679529070966685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138405 (n + 1) + A030078 (n + 1)

end

end A135181.P394679529070966685

namespace A135181

/-- `A138405(n+1)+A030078(n+1)` -/
def P394679529070966685.Spec : Prop :=
  ∀ n, P394679529070966685.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P6699023682953178213

`A135177(n+1)+A050997(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135181

/-- `A135177(n+1)+A050997(n+1)` -/
def P6699023682953178213.Spec : Prop :=
  ∀ n, P6699023682953178213.a n = A135181 (n + 1)

theorem P6699023682953178213.correct : P6699023682953178213.Spec := by
  intro n
  simp only [A135181, Nat.add_sub_cancel]

end A135181

/-! ## A135181.P6697760551046696530

`A138404(n+1)+A083558(n+1)`
-/

namespace A135181.P6697760551046696530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138404 (n + 1) + A083558 (n + 1)

end

end A135181.P6697760551046696530

namespace A135181

/-- `A138404(n+1)+A083558(n+1)` -/
def P6697760551046696530.Spec : Prop :=
  ∀ n, P6697760551046696530.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P11271601843317184893

`A172190(n+1)+A135179(n+1)`
-/

namespace A135181.P11271601843317184893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172190 (n + 1) + A135179 (n + 1)

end

end A135181.P11271601843317184893

namespace A135181

/-- `A172190(n+1)+A135179(n+1)` -/
def P11271601843317184893.Spec : Prop :=
  ∀ n, P11271601843317184893.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P17082767481892874583

`A135182(n+1)-A079704(n+1)`
-/

namespace A135181.P17082767481892874583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135182 (n + 1) - A079704 (n + 1)

end

end A135181.P17082767481892874583

namespace A135181

/-- `A135182(n+1)-A079704(n+1)` -/
def P17082767481892874583.Spec : Prop :=
  ∀ n, P17082767481892874583.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P9752035431555632441

`A135179(n+1)+2*A030078(n+1)`
-/

namespace A135181.P9752035431555632441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135179 (n + 1) + 2 * A030078 (n + 1)

end

end A135181.P9752035431555632441

namespace A135181

/-- `A135179(n+1)+2*A030078(n+1)` -/
def P9752035431555632441.Spec : Prop :=
  ∀ n, P9752035431555632441.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P13529465906923495056

`A030078(n+1)+2*A138431(n+1)`
-/

namespace A135181.P13529465906923495056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) + 2 * A138431 (n + 1)

end

end A135181.P13529465906923495056

namespace A135181

/-- `A030078(n+1)+2*A138431(n+1)` -/
def P13529465906923495056.Spec : Prop :=
  ∀ n, P13529465906923495056.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P9531407245655813087

`A050997(n+1)+2*A138416(n+1)`
-/

namespace A135181.P9531407245655813087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) + 2 * A138416 (n + 1)

end

end A135181.P9531407245655813087

namespace A135181

/-- `A050997(n+1)+2*A138416(n+1)` -/
def P9531407245655813087.Spec : Prop :=
  ∀ n, P9531407245655813087.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P14627652338676084553

`A135180(n+1)+2*A135177(n+1)`
-/

namespace A135181.P14627652338676084553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135180 (n + 1) + 2 * A135177 (n + 1)

end

end A135181.P14627652338676084553

namespace A135181

/-- `A135180(n+1)+2*A135177(n+1)` -/
def P14627652338676084553.Spec : Prop :=
  ∀ n, P14627652338676084553.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P17234765253933877786

`A135182(n+1)-2*A001248(n+1)`
-/

namespace A135181.P17234765253933877786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135182 (n + 1) - 2 * A001248 (n + 1)

end

end A135181.P17234765253933877786

namespace A135181

/-- `A135182(n+1)-2*A001248(n+1)` -/
def P17234765253933877786.Spec : Prop :=
  ∀ n, P17234765253933877786.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P10078818640698417933

`(A181150(n+1)-2)*A001248(n+1)`
-/

namespace A135181.P10078818640698417933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181150 (n + 1) - 2) * A001248 (n + 1)

end

end A135181.P10078818640698417933

namespace A135181

/-- `(A181150(n+1)-2)*A001248(n+1)` -/
def P10078818640698417933.Spec : Prop :=
  ∀ n, P10078818640698417933.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P7191078824822475028

`A030078(n+1)+A050997(n+1)-A001248(n+1)`
-/

namespace A135181.P7191078824822475028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) + (A050997 (n + 1) - A001248 (n + 1))

end

end A135181.P7191078824822475028

namespace A135181

/-- `A030078(n+1)+A050997(n+1)-A001248(n+1)` -/
def P7191078824822475028.Spec : Prop :=
  ∀ n, P7191078824822475028.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P10120107681578741518

`A050997(n+1)+A050997(n+1)-A135180(n+1)`
-/

namespace A135181.P10120107681578741518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) + (A050997 (n + 1) - A135180 (n + 1))

end

end A135181.P10120107681578741518

namespace A135181

/-- `A050997(n+1)+A050997(n+1)-A135180(n+1)` -/
def P10120107681578741518.Spec : Prop :=
  ∀ n, P10120107681578741518.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P17224534958336936401

`(A030078(n+1)+A006093(n+1))*A001248(n+1)`
-/

namespace A135181.P17224534958336936401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) + A006093 (n + 1)) * A001248 (n + 1)

end

end A135181.P17224534958336936401

namespace A135181

/-- `(A030078(n+1)+A006093(n+1))*A001248(n+1)` -/
def P17224534958336936401.Spec : Prop :=
  ∀ n, P17224534958336936401.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P8234196487729649788

`(A138401(n+1)+A001248(n+1))*A000040(n+1)`
-/

namespace A135181.P8234196487729649788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138401 (n + 1) + A001248 (n + 1)) * A000040 (n + 1)

end

end A135181.P8234196487729649788

namespace A135181

/-- `(A138401(n+1)+A001248(n+1))*A000040(n+1)` -/
def P8234196487729649788.Spec : Prop :=
  ∀ n, P8234196487729649788.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P9208770862415710803

`A135177(n+1)+A001248(n+1)*A030078(n+1)`
-/

namespace A135181.P9208770862415710803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135177 (n + 1) + A001248 (n + 1) * A030078 (n + 1)

end

end A135181.P9208770862415710803

namespace A135181

/-- `A135177(n+1)+A001248(n+1)*A030078(n+1)` -/
def P9208770862415710803.Spec : Prop :=
  ∀ n, P9208770862415710803.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P15617082171422190669

`A030078(n+1)+A000040(n+1)*A138401(n+1)`
-/

namespace A135181.P15617082171422190669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) + A000040 (n + 1) * A138401 (n + 1)

end

end A135181.P15617082171422190669

namespace A135181

/-- `A030078(n+1)+A000040(n+1)*A138401(n+1)` -/
def P15617082171422190669.Spec : Prop :=
  ∀ n, P15617082171422190669.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P15042803140736560967

`A138405(n+1)+A050997(n+1)/A001248(n+1)`
-/

namespace A135181.P15042803140736560967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138405 (n + 1) : ℚ) + (A050997 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A135181.P15042803140736560967

namespace A135181

/-- `A138405(n+1)+A050997(n+1)/A001248(n+1)` -/
def P15042803140736560967.Spec : Prop :=
  ∀ n, P15042803140736560967.a n = (A135181 (n + 1) : ℚ)

end A135181

/-! ## A135181.P12338052249036460452

`A133072(p?[comp[n²]])`
-/

namespace A135181.P12338052249036460452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133072 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A135181.P12338052249036460452

namespace A135181

/-- `A133072(p?[comp[n²]])` -/
def P12338052249036460452.Spec : Prop :=
  ∀ n, P12338052249036460452.a n = A135181 (n + 1)

end A135181

/-! ## A135181.P10950111576863705887

`A133072(A000040(n+1))`
-/

namespace A135181.P10950111576863705887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133072 (A000040 (n + 1)).toNat

end

end A135181.P10950111576863705887

namespace A135181

/-- `A133072(A000040(n+1))` -/
def P10950111576863705887.Spec : Prop :=
  ∀ n, P10950111576863705887.a n = A135181 (n + 1)

end A135181

/-!
# A135182: p^5 + p^3 + p^2. Exponents are prime numbers and p = prime(n).

The programs for A135182, the canonical program `A135182.P14277112270970235389` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135182 has offset 1).

The definition of A135182 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A030078, A050997, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135182.P14277112270970235389

`A001248(n+1)+A030078(n+1)+A050997(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135182

/-- `A001248(n+1)+A030078(n+1)+A050997(n+1)` -/
def P14277112270970235389.Spec : Prop :=
  ∀ n, P14277112270970235389.a n = A135182 (n + 1)

theorem P14277112270970235389.correct : P14277112270970235389.Spec := by
  intro n
  simp only [A135182, Nat.add_sub_cancel]

end A135182

/-! ## A135182.P12773299544798734516

`A135178(n+1)+A050997(n+1)`
-/

namespace A135182.P12773299544798734516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) + A050997 (n + 1)

end

end A135182.P12773299544798734516

namespace A135182

/-- `A135178(n+1)+A050997(n+1)` -/
def P12773299544798734516.Spec : Prop :=
  ∀ n, P12773299544798734516.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P11558422004373674478

`A135181(n+1)+A079704(n+1)`
-/

namespace A135182.P11558422004373674478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135181 (n + 1) + A079704 (n + 1)

end

end A135182.P11558422004373674478

namespace A135182

/-- `A135181(n+1)+A079704(n+1)` -/
def P11558422004373674478.Spec : Prop :=
  ∀ n, P11558422004373674478.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P4471076849201050634

`A172190(n+1)+A135180(n+1)`
-/

namespace A135182.P4471076849201050634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172190 (n + 1) + A135180 (n + 1)

end

end A135182.P4471076849201050634

namespace A135182

/-- `A172190(n+1)+A135180(n+1)` -/
def P4471076849201050634.Spec : Prop :=
  ∀ n, P4471076849201050634.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P5720541317171032652

`A181149(n+1)+A138404(n+1)`
-/

namespace A135182.P5720541317171032652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181149 (n + 1) + A138404 (n + 1)

end

end A135182.P5720541317171032652

namespace A135182

/-- `A181149(n+1)+A138404(n+1)` -/
def P5720541317171032652.Spec : Prop :=
  ∀ n, P5720541317171032652.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P2800412780186367331

`A092759(n+1)-A098935(n+1)`
-/

namespace A135182.P2800412780186367331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092759 (n + 1) - A098935 (n + 1)

end

end A135182.P2800412780186367331

namespace A135182

/-- `A092759(n+1)-A098935(n+1)` -/
def P2800412780186367331.Spec : Prop :=
  ∀ n, P2800412780186367331.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P8902008406395948198

`A001248(n+1)*A181150(n+1)`
-/

namespace A135182.P8902008406395948198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A181150 (n + 1)

end

end A135182.P8902008406395948198

namespace A135182

/-- `A001248(n+1)*A181150(n+1)` -/
def P8902008406395948198.Spec : Prop :=
  ∀ n, P8902008406395948198.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P13933576629970517843

`A000040(n+1)²*A181150(n+1)`
-/

namespace A135182.P13933576629970517843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A181150 (n + 1)

end

end A135182.P13933576629970517843

namespace A135182

/-- `A000040(n+1)²*A181150(n+1)` -/
def P13933576629970517843.Spec : Prop :=
  ∀ n, P13933576629970517843.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P4127326796076037565

`A050997(n+1)+A181151(n+1)-1`
-/

namespace A135182.P4127326796076037565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) + (A181151 (n + 1) - 1)

end

end A135182.P4127326796076037565

namespace A135182

/-- `A050997(n+1)+A181151(n+1)-1` -/
def P4127326796076037565.Spec : Prop :=
  ∀ n, P4127326796076037565.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P18054135568011822590

`(A084920(n+1)+1)*A181150(n+1)`
-/

namespace A135182.P18054135568011822590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084920 (n + 1) + 1) * A181150 (n + 1)

end

end A135182.P18054135568011822590

namespace A135182

/-- `(A084920(n+1)+1)*A181150(n+1)` -/
def P18054135568011822590.Spec : Prop :=
  ∀ n, P18054135568011822590.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P4866639261558571361

`A135180(n+1)+2*A030078(n+1)`
-/

namespace A135182.P4866639261558571361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135180 (n + 1) + 2 * A030078 (n + 1)

end

end A135182.P4866639261558571361

namespace A135182

/-- `A135180(n+1)+2*A030078(n+1)` -/
def P4866639261558571361.Spec : Prop :=
  ∀ n, P4866639261558571361.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P16365725939527747369

`(A066872(n+1)-1)*A181150(n+1)`
-/

namespace A135182.P16365725939527747369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066872 (n + 1) - 1) * A181150 (n + 1)

end

end A135182.P16365725939527747369

namespace A135182

/-- `(A066872(n+1)-1)*A181150(n+1)` -/
def P16365725939527747369.Spec : Prop :=
  ∀ n, P16365725939527747369.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P15842039331751924274

`A135179(n+1)+2*A135178(n+1)`
-/

namespace A135182.P15842039331751924274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135179 (n + 1) + 2 * A135178 (n + 1)

end

end A135182.P15842039331751924274

namespace A135182

/-- `A135179(n+1)+2*A135178(n+1)` -/
def P15842039331751924274.Spec : Prop :=
  ∀ n, P15842039331751924274.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P1351029586963402447

`2*A050997(n+1)-A135179(n+1)`
-/

namespace A135182.P1351029586963402447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050997 (n + 1) - A135179 (n + 1)

end

end A135182.P1351029586963402447

namespace A135182

/-- `2*A050997(n+1)-A135179(n+1)` -/
def P1351029586963402447.Spec : Prop :=
  ∀ n, P1351029586963402447.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P5655887531250564686

`(1-A008864(n+1))²*A181150(n+1)`
-/

namespace A135182.P5655887531250564686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A008864 (n + 1)) ^ 2 * A181150 (n + 1)

end

end A135182.P5655887531250564686

namespace A135182

/-- `(1-A008864(n+1))²*A181150(n+1)` -/
def P5655887531250564686.Spec : Prop :=
  ∀ n, P5655887531250564686.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P6270420067217373174

`A001248(n+1)+A135181(n+1)+A001248(n+1)`
-/

namespace A135182.P6270420067217373174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A135181 (n + 1) + A001248 (n + 1))

end

end A135182.P6270420067217373174

namespace A135182

/-- `A001248(n+1)+A135181(n+1)+A001248(n+1)` -/
def P6270420067217373174.Spec : Prop :=
  ∀ n, P6270420067217373174.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P5493171673153030240

`A131993(n+1)-(A030514(n+1)+A008864(n+1))`
-/

namespace A135182.P5493171673153030240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131993 (n + 1) - (A030514 (n + 1) + A008864 (n + 1))

end

end A135182.P5493171673153030240

namespace A135182

/-- `A131993(n+1)-(A030514(n+1)+A008864(n+1))` -/
def P5493171673153030240.Spec : Prop :=
  ∀ n, P5493171673153030240.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P10997735174151401758

`A135178(n+1)+A001248(n+1)*A030078(n+1)`
-/

namespace A135182.P10997735174151401758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) + A001248 (n + 1) * A030078 (n + 1)

end

end A135182.P10997735174151401758

namespace A135182

/-- `A135178(n+1)+A001248(n+1)*A030078(n+1)` -/
def P10997735174151401758.Spec : Prop :=
  ∀ n, P10997735174151401758.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P4567939696086066335

`(A131991(n+1)-A001248(n+1))*A001248(n+1)`
-/

namespace A135182.P4567939696086066335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131991 (n + 1) - A001248 (n + 1)) * A001248 (n + 1)

end

end A135182.P4567939696086066335

namespace A135182

/-- `(A131991(n+1)-A001248(n+1))*A001248(n+1)` -/
def P4567939696086066335.Spec : Prop :=
  ∀ n, P4567939696086066335.a n = A135182 (n + 1)

end A135182

/-! ## A135182.P15455774892068988627

`A133073(p?[comp[n²]])`
-/

namespace A135182.P15455774892068988627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133073 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A135182.P15455774892068988627

namespace A135182

/-- `A133073(p?[comp[n²]])` -/
def P15455774892068988627.Spec : Prop :=
  ∀ n, P15455774892068988627.a n = A135182 (n + 1)

end A135182

/-!
# A135184: Triangle read by rows: A000012 * A128229^2 as infinite lower triangular matrices.

The programs for A135184, there is no canonical definition to state claims against.
-/

/-! ## A135184.P14658120963514364173

`A126615(n+2)-∑[A127899(n+1)]`
-/

namespace A135184.P14658120963514364173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126615 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135184.P14658120963514364173

/-! ## A135184.P2101666611837601192

`A143865(A137593(n+2))`
-/

namespace A135184.P2101666611837601192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143865 (A137593 (n + 2)).toNat

end

end A135184.P2101666611837601192

/-! ## A135184.P10272281414797613926

`A046660(4^A209334(n+2))`
-/

namespace A135184.P10272281414797613926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A209334 (n + 2) : ℤ))).toNat

end

end A135184.P10272281414797613926

/-! ## A135184.P10750520869438703059

`A132424(C(A179069(n+2), 3))`
-/

namespace A135184.P10750520869438703059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132424 (Nat.choose (A179069 (n + 2)).toNat 3)

end

end A135184.P10750520869438703059

/-! ## A135184.P1685992306719822161

`A000005(A059268(n+1)^A131818(n+4))`
-/

namespace A135184.P1685992306719822161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A059268 (n + 1) : ℚ) ^ (A131818 (n + 4) : ℤ))).toNat

end

end A135184.P1685992306719822161

/-!
# A135186: Numbers n that raised to the powers from 1 to k (with k>=1) are multiples of the sums of their digits (and n raised to the power k+1 is not such a multiple). Case k=1.

The programs for A135186, there is no canonical definition to state claims against.
-/

/-! ## A135186.P17374801139933514257

`eq[2, A195860(n+1)]+1`
-/

namespace A135186.P17374801139933514257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195860 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A135186.P17374801139933514257

/-! ## A135186.P14683722673041875152

`eq[2, A195860(A028310(n))]`
-/

namespace A135186.P14683722673041875152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195860 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A135186.P14683722673041875152

/-! ## A135186.P8309566992754074701

`A020725(eq[2, A195860(n+1)])`
-/

namespace A135186.P8309566992754074701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135186.P8309566992754074701

/-! ## A135186.P2604703583462633651

`A065475(eq[2, A195860(n+1)])`
-/

namespace A135186.P2604703583462633651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135186.P2604703583462633651

/-! ## A135186.P5132357311441437819

`eq[2, A195860(A066182(n+1))]`
-/

namespace A135186.P5132357311441437819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195860 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A135186.P5132357311441437819

/-!
# A135187: Numbers n that raised to the powers from 1 to k (with k>=1) are multiple of the sum of their digits (n raised to k+1 must not be a multiple). Case k=2.

The programs for A135187, there is no canonical definition to state claims against.
-/

/-! ## A135187.P10591652352523125333

`A020137(record[A112933(n)])`
-/

namespace A135187.P10591652352523125333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135187.P10591652352523125333

/-!
# A135190: Numbers n that raised to the powers from 1 to k (with k>=1) are multiple of the sum of their digits (n raised to k+1 must not be a multiple). Case k=5.

The programs for A135190, there is no canonical definition to state claims against.
-/

/-! ## A135190.P2497177849477157127

`record[A005885(A008976(n+1))]`
-/

namespace A135190.P2497177849477157127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005885 (A008976 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135190.P2497177849477157127

/-! ## A135190.P7230149400492264398

`A004086(3*(n+1))*A099774(A004987(n))`
-/

namespace A135190.P7230149400492264398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (3 * (n + 1)) * A099774 (A004987 n).toNat

end

end A135190.P7230149400492264398

