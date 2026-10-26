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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A308100: Sum of the largest sides of all integer-sided triangles with prime sides and perimeter n.

The programs for A308100, there is no canonical definition to state claims against.
-/

/-! ## A308100.P9485009519103244172

`A308165(n+1)-(A308120(n+1)+A308119(n+1))`
-/

namespace A308100.P9485009519103244172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308165 (n + 1) - (A308120 (n + 1) + A308119 (n + 1))

end

end A308100.P9485009519103244172

/-!
# A308102: Sum of the perimeters of all integer-sided scalene triangles with perimeter n.

The programs for A308102, the canonical program `A308102.P16020769950966667102` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308102 has offset 1).

The definition of A308102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308102.P16020769950966667102

`(n+1)*A211540(ceil(xor(1, n)/2))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A308102

/-- `(n+1)*A211540(ceil(xor(1, n)/2))` -/
def P16020769950966667102.Spec : Prop :=
  ∀ n, P16020769950966667102.a n = A308102 (n + 1)

theorem P16020769950966667102.correct : P16020769950966667102.Spec := by
  intro n
  simp only [A308102, Nat.add_sub_cancel]

end A308102

/-! ## A308102.P17495237610964565094

`(n+1)*A211540(round(xor(1, n)/2))`
-/

namespace A308102.P17495237610964565094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A211540 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)).toNat

end

end A308102.P17495237610964565094

namespace A308102

/-- `(n+1)*A211540(round(xor(1, n)/2))` -/
def P17495237610964565094.Spec : Prop :=
  ∀ n, P17495237610964565094.a n = A308102 (n + 1)

end A308102

/-! ## A308102.P15492934400048853522

`A308089(n+1)-(n+1)*floor((xor(1, n)+1)/4)`
-/

namespace A308102.P15492934400048853522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - (n + 1 : ℤ) * ⌊(Nat.xor 1 n + 1 : ℚ) / 4⌋

end

end A308102.P15492934400048853522

namespace A308102

/-- `A308089(n+1)-(n+1)*floor((xor(1, n)+1)/4)` -/
def P15492934400048853522.Spec : Prop :=
  ∀ n, P15492934400048853522.a n = A308102 (n + 1)

end A308102

/-! ## A308102.P10326774571355140317

`(n+1)*A211540(A028242(n))`
-/

namespace A308102.P10326774571355140317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A211540 (A028242 n).toNat

end

end A308102.P10326774571355140317

namespace A308102

/-- `(n+1)*A211540(A028242(n))` -/
def P10326774571355140317.Spec : Prop :=
  ∀ n, P10326774571355140317.a n = A308102 (n + 1)

end A308102

/-! ## A308102.P7021913281298283025

`A308089(n+1)-A308123(n+1)`
-/

namespace A308102.P7021913281298283025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - A308123 (n + 1)

end

end A308102.P7021913281298283025

namespace A308102

/-- `A308089(n+1)-A308123(n+1)` -/
def P7021913281298283025.Spec : Prop :=
  ∀ n, P7021913281298283025.a n = A308102 (n + 1)

end A308102

/-! ## A308102.P7681735799168283461

`(n+1)*(A008769(n)-A008770(n))`
-/

namespace A308102.P7681735799168283461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008769 n - A008770 n)

end

end A308102.P7681735799168283461

namespace A308102

/-- `(n+1)*(A008769(n)-A008770(n))` -/
def P7681735799168283461.Spec : Prop :=
  ∀ n, P7681735799168283461.a n = A308102 (n + 1)

end A308102

/-! ## A308102.P7496377285137392755

`(n+1)*(A325691(n)-A002264(n))`
-/

namespace A308102.P7496377285137392755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A325691 n - A002264 n)

end

end A308102.P7496377285137392755

namespace A308102

/-- `(n+1)*(A325691(n)-A002264(n))` -/
def P7496377285137392755.Spec : Prop :=
  ∀ n, P7496377285137392755.a n = A308102 (n + 1)

end A308102

/-! ## A308102.P16289174524578706456

`A308089(n+1)-(n+1)*(∑[A008683(gcd(n+3, n-1))]-1)`
-/

namespace A308102.P16289174524578706456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A308102.P16289174524578706456

namespace A308102

/-- `A308089(n+1)-(n+1)*(∑[A008683(gcd(n+3, n-1))]-1)` -/
def P16289174524578706456.Spec : Prop :=
  ∀ n, P16289174524578706456.a n = A308102 (n + 1)

end A308102

/-! ## A308102.P12236989656501618943

`(A008743(n+1)-A142150(n+1))*(n+1)`
-/

namespace A308102.P12236989656501618943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008743 (n + 1) - A142150 (n + 1)) * (n + 1 : ℤ)

end

end A308102.P12236989656501618943

namespace A308102

/-- `(A008743(n+1)-A142150(n+1))*(n+1)` -/
def P12236989656501618943.Spec : Prop :=
  ∀ n, P12236989656501618943.a n = A308102 (n + 1)

end A308102

/-! ## A308102.P4590449869008677727

`(n+1)*A211540(A110657(2*n+1))`
-/

namespace A308102.P4590449869008677727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A211540 (A110657 (2 * n + 1)).toNat

end

end A308102.P4590449869008677727

namespace A308102

/-- `(n+1)*A211540(A110657(2*n+1))` -/
def P4590449869008677727.Spec : Prop :=
  ∀ n, P4590449869008677727.a n = A308102 (n + 1)

end A308102

/-!
# A308103: Number of scalene triangles with perimeter n whose side lengths are squarefree.

The programs for A308103, there is no canonical definition to state claims against.
-/

/-! ## A308103.P6656043314725690819

`A308122(n+1)/(n+1)`
-/

namespace A308103.P6656043314725690819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308122 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A308103.P6656043314725690819

/-! ## A308103.P8929536906820526404

`round(acot(A000027(n+1))*A308122(n+1))`
-/

namespace A308103.P8929536906820526404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A000027 (n + 1) : ℝ) * (A308122 (n + 1) : ℝ))

end

end A308103.P8929536906820526404

/-! ## A308103.P5780309359695165051

`A005843(A308122(n+1))%A005408(n)`
-/

namespace A308103.P5780309359695165051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A308122 (n + 1)).toNat) (A005408 n)

end

end A308103.P5780309359695165051

/-!
# A308104: Distinct values taken by the DENEAT operator (A073053) in increasing order.

The programs for A308104, there is no canonical definition to state claims against.
-/

/-! ## A308104.P16740923897328155780

`∪[A020338(n+1), A214527(n+1)]`
-/

namespace A308104.P16740923897328155780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308104.P16740923897328155780

/-! ## A308104.P4090248297248892679

`∪[A033008(n+1), A214527(n+1)]`
-/

namespace A308104.P4090248297248892679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308104.P4090248297248892679

/-! ## A308104.P13467457180041733876

`∪[A044836(n+1), A214527(n+1)]`
-/

namespace A308104.P13467457180041733876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308104.P13467457180041733876

/-! ## A308104.P12099221045833462656

`∪[A214527(n+1), A302438(n+1)]`
-/

namespace A308104.P12099221045833462656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308104.P12099221045833462656

/-! ## A308104.P802170251775925848

`A108203(n+1)+A056965(A051340(n))`
-/

namespace A308104.P802170251775925848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108203 (n + 1) + A056965 (A051340 n).toNat

end

end A308104.P802170251775925848

/-! ## A308104.P13876591739833694603

`A108782(A025826(n))+A108203(n+1)`
-/

namespace A308104.P13876591739833694603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (A025826 n).toNat + A108203 (n + 1)

end

end A308104.P13876591739833694603

/-! ## A308104.P5832838002930402261

`A108203(n+1)+A056965(A002260(n+1))`
-/

namespace A308104.P5832838002930402261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108203 (n + 1) + A056965 (A002260 (n + 1)).toNat

end

end A308104.P5832838002930402261

/-! ## A308104.P13358388841453832430

`A108203(n+1)+A056965(A050873(n+1))`
-/

namespace A308104.P13358388841453832430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108203 (n + 1) + A056965 (A050873 (n + 1)).toNat

end

end A308104.P13358388841453832430

/-! ## A308104.P7655806967104079914

`A108203(n+1)+A056965(A051237(n+1))`
-/

namespace A308104.P7655806967104079914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108203 (n + 1) + A056965 (A051237 (n + 1)).toNat

end

end A308104.P7655806967104079914

/-!
# A308105: Numbers m such that m is greater than the sum of the k-th powers of its digits, where k is the number of digits of m.

The programs for A308105, the canonical program `A308105.P3201978903205892723` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308105 has offset 1).

The definition of A308105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4791 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308105.P7563488381479412578

`lt[A101337(round(sqrt(n²+1))), n]`
-/

namespace A308105.P7563488381479412578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308105.P7563488381479412578

namespace A308105

/-- `lt[A101337(round(sqrt(n²+1))), n]` -/
def P7563488381479412578.Spec : Prop :=
  ∀ n, (P7563488381479412578.a n : ℤ) = A308105 (n + 1)

end A308105

/-! ## A308105.P3201978903205892723

`lt[A101337(n+1), n+1]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A308105

/-- `lt[A101337(n+1), n+1]+1` -/
def P3201978903205892723.Spec : Prop :=
  ∀ n, (P3201978903205892723.a n : ℤ) = A308105 (n + 1)

theorem P3201978903205892723.correct : P3201978903205892723.Spec := by
  intro n
  simp only [A308105, Nat.add_sub_cancel]

end A308105

/-! ## A308105.P6548342067922331697

`lt[A003132(n)+A124735(n+1)/2, n]`
-/

namespace A308105.P6548342067922331697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003132 n : ℚ) + (A124735 (n + 1) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A308105.P6548342067922331697

namespace A308105

/-- `lt[A003132(n)+A124735(n+1)/2, n]` -/
def P6548342067922331697.Spec : Prop :=
  ∀ n, (P6548342067922331697.a n : ℤ) = A308105 (n + 1)

end A308105

/-! ## A308105.P8681748852825132345

`lt[A069940(n)-A257297(n), n]`
-/

namespace A308105.P8681748852825132345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069940 n - A257297 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308105.P8681748852825132345

namespace A308105

/-- `lt[A069940(n)-A257297(n), n]` -/
def P8681748852825132345.Spec : Prop :=
  ∀ n, (P8681748852825132345.a n : ℤ) = A308105 (n + 1)

end A308105

/-! ## A308105.P8882173949173154700

`lt[A118881(n)-2*A257297(n), n]`
-/

namespace A308105.P8882173949173154700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n - 2 * A257297 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308105.P8882173949173154700

namespace A308105

/-- `lt[A118881(n)-2*A257297(n), n]` -/
def P8882173949173154700.Spec : Prop :=
  ∀ n, (P8882173949173154700.a n : ℤ) = A308105 (n + 1)

end A308105

/-! ## A308105.P5198233156027785713

`lt[A007953(n)²-2*A257297(n), n]`
-/

namespace A308105.P5198233156027785713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2 - 2 * A257297 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308105.P5198233156027785713

namespace A308105

/-- `lt[A007953(n)²-2*A257297(n), n]` -/
def P5198233156027785713.Spec : Prop :=
  ∀ n, (P5198233156027785713.a n : ℤ) = A308105 (n + 1)

end A308105

/-! ## A308105.P12526540748210335534

`lt[A118881(n), A005843(A257297(n))+n]`
-/

namespace A308105.P12526540748210335534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A257297 n).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308105.P12526540748210335534

namespace A308105

/-- `lt[A118881(n), A005843(A257297(n))+n]` -/
def P12526540748210335534.Spec : Prop :=
  ∀ n, (P12526540748210335534.a n : ℤ) = A308105 (n + 1)

end A308105

/-!
# A308106: Distinct values taken by the DENEAT operator (A073053) in order of appearance.

The programs for A308106, there is no canonical definition to state claims against.
-/

/-! ## A308106.P15017306168238731964

`A073053(A005265(n+2)*A066815(n))`
-/

namespace A308106.P15017306168238731964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073053 (A005265 (n + 2) * A066815 n).toNat

end

end A308106.P15017306168238731964

/-! ## A308106.P6779163906839878114

`A073053(A317204(n)%A067863(n+1))`
-/

namespace A308106.P6779163906839878114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073053 (Int.tmod (A317204 n) (A067863 (n + 1))).toNat

end

end A308106.P6779163906839878114

/-! ## A308106.P15622035188384649961

`A073053(A123104(2*n+1)+A000108(n))`
-/

namespace A308106.P15622035188384649961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073053 (A123104 (2 * n + 1 + 31) + A000108 n).toNat

end

end A308106.P15622035188384649961

/-!
# A308107: Sum of the smallest side lengths of all integer-sided scalene triangles with perimeter n.

The programs for A308107, there is no canonical definition to state claims against.
-/

/-! ## A308107.P15728006100453534958

`A308089(n+1)-(A336974(n+1)+A308158(n+1))`
-/

namespace A308107.P15728006100453534958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - (A336974 (n + 1) + A308158 (n + 1))

end

end A308107.P15728006100453534958

/-! ## A308107.P6602490841403408976

`A308102(n+1)-(A308109(n+1)+A308108(n+1))`
-/

namespace A308107.P6602490841403408976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308102 (n + 1) - (A308109 (n + 1) + A308108 (n + 1))

end

end A308107.P6602490841403408976

/-! ## A308107.P10034091924482696711

`A336973(n+1)-(A308158(n+1)+A307966(n+1))`
-/

namespace A308107.P10034091924482696711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336973 (n + 1) - (A308158 (n + 1) + A307966 (n + 1))

end

end A308107.P10034091924482696711

/-! ## A308107.P11216183909905947622

`A336972(n+1)-(A308158(n+1)+A308096(n+1))`
-/

namespace A308107.P11216183909905947622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336972 (n + 1) - (A308158 (n + 1) + A308096 (n + 1))

end

end A308107.P11216183909905947622

/-! ## A308107.P8533938487413136652

`A307686(n+1)-A308158(n+1)`
-/

namespace A308107.P8533938487413136652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (n + 1) - A308158 (n + 1)

end

end A308107.P8533938487413136652

/-!
# A308108: Sum of the largest side lengths of all integer-sided scalene triangles with perimeter n.

The programs for A308108, there is no canonical definition to state claims against.
-/

/-! ## A308108.P13565725126087139328

`A307966(n+1)-A308159(n+1)`
-/

namespace A308108.P13565725126087139328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307966 (n + 1) - A308159 (n + 1)

end

end A308108.P13565725126087139328

/-! ## A308108.P11589237884121929556

`A308089(n+1)-(A336972(n+1)+A308159(n+1))`
-/

namespace A308108.P11589237884121929556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - (A336972 (n + 1) + A308159 (n + 1))

end

end A308108.P11589237884121929556

/-! ## A308108.P13664673123058278164

`A308102(n+1)-(A308109(n+1)+A308107(n+1))`
-/

namespace A308108.P13664673123058278164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308102 (n + 1) - (A308109 (n + 1) + A308107 (n + 1))

end

end A308108.P13664673123058278164

/-! ## A308108.P18303868328665841380

`A336974(n+1)-(A308160(n+1)+A308109(n+1))-A308159(n+1)`
-/

namespace A308108.P18303868328665841380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336974 (n + 1) - (A308160 (n + 1) + A308109 (n + 1)) - A308159 (n + 1)

end

end A308108.P18303868328665841380

/-! ## A308108.P11036429983754528316

`A336973(n+1)+A336974(n+1)-A308089(n+1)-A308159(n+1)`
-/

namespace A308108.P11036429983754528316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336973 (n + 1) + (A336974 (n + 1) - A308089 (n + 1)) - A308159 (n + 1)

end

end A308108.P11036429983754528316

/-! ## A308108.P5397198446919454932

`A336974(n+1)-(A308159(n+1)+A308096(n+1))`
-/

namespace A308108.P5397198446919454932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336974 (n + 1) - (A308159 (n + 1) + A308096 (n + 1))

end

end A308108.P5397198446919454932

/-! ## A308108.P15230834603039118398

`A336973(n+1)-(A308159(n+1)+A307686(n+1))`
-/

namespace A308108.P15230834603039118398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336973 (n + 1) - (A308159 (n + 1) + A307686 (n + 1))

end

end A308108.P15230834603039118398

/-! ## A308108.P16295157986540907547

`A307686(n+1)+A336974(n+1)-A336972(n+1)-A308159(n+1)`
-/

namespace A308108.P16295157986540907547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (n + 1) + (A336974 (n + 1) - A336972 (n + 1)) - A308159 (n + 1)

end

end A308108.P16295157986540907547

/-!
# A308109: Take all the integer-sided triangles with perimeter n and sides a, b, and c such that a < b < c. a(n) is the sum of all the b's.

The programs for A308109, there is no canonical definition to state claims against.
-/

/-! ## A308109.P15182310274953431350

`A308089(n+1)-(A336973(n+1)+A308160(n+1))`
-/

namespace A308109.P15182310274953431350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - (A336973 (n + 1) + A308160 (n + 1))

end

end A308109.P15182310274953431350

/-! ## A308109.P7766781718936581420

`A308096(n+1)-A308160(n+1)`
-/

namespace A308109.P7766781718936581420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (n + 1) - A308160 (n + 1)

end

end A308109.P7766781718936581420

/-! ## A308109.P1593247994397635091

`A336972(n+1)-(A308160(n+1)+A307686(n+1))`
-/

namespace A308109.P1593247994397635091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336972 (n + 1) - (A308160 (n + 1) + A307686 (n + 1))

end

end A308109.P1593247994397635091

/-! ## A308109.P1655327477981516098

`A307686(n+1)+A181120(A028242(n))-A308160(n+1)`
-/

namespace A308109.P1655327477981516098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (n + 1) + (A181120 (A028242 n).toNat - A308160 (n + 1))

end

end A308109.P1655327477981516098

/-! ## A308109.P1142193808215709220

`(A340760(n)+A336973(n+1))/2-A308160(n+1)`
-/

namespace A308109.P1142193808215709220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340760 n + A336973 (n + 1) : ℚ) / 2 - (A308160 (n + 1) : ℚ)

end

end A308109.P1142193808215709220

/-! ## A308109.P9820693941905429334

`A001057(A296805(n+1))+A336972(n+1)-A307686(n+1)`
-/

namespace A308109.P9820693941905429334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A296805 (n + 1)).toNat + (A336972 (n + 1) - A307686 (n + 1))

end

end A308109.P9820693941905429334

/-! ## A308109.P4028750411147873855

`A001057(A296805(n+1))+A308089(n+1)-A336973(n+1)`
-/

namespace A308109.P4028750411147873855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A296805 (n + 1)).toNat + (A308089 (n + 1) - A336973 (n + 1))

end

end A308109.P4028750411147873855

/-! ## A308109.P16089794881370732740

`A001057(A296805(n+1))+(A340760(n)+A336973(n+1))/2`
-/

namespace A308109.P16089794881370732740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001057 (A296805 (n + 1)).toNat : ℚ) + (A340760 n + A336973 (n + 1) : ℚ) / 2

end

end A308109.P16089794881370732740

/-! ## A308109.P2696901011952495641

`A025480(A340760(n)+A336973(n+1))-A308160(n+1)`
-/

namespace A308109.P2696901011952495641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A340760 n + A336973 (n + 1)).toNat - A308160 (n + 1)

end

end A308109.P2696901011952495641

/-! ## A308109.P4815489065540944684

`A110654(A340760(n)+A336973(n+1))-A308160(n+1)`
-/

namespace A308109.P4815489065540944684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A340760 n + A336973 (n + 1)).toNat - A308160 (n + 1)

end

end A308109.P4815489065540944684

/-!
# A308110: Least number k such that the determinant of the symmetric Hankel matrix formed by its decimal digits is equal to n.

The programs for A308110, there is no canonical definition to state claims against.
-/

/-! ## A308110.P3284282451030577266

`A029804(A143573(n))+n`
-/

namespace A308110.P3284282451030577266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029804 (A143573 n).toNat + (n : ℤ)

end

end A308110.P3284282451030577266

/-! ## A308110.P712417603477224687

`A337085(A168291(n+1))+n`
-/

namespace A308110.P712417603477224687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337085 (A168291 (n + 1)).toNat + (n : ℤ)

end

end A308110.P712417603477224687

/-! ## A308110.P4365315618659754672

`A221361(A296643(n+1))+n`
-/

namespace A308110.P4365315618659754672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221361 (A296643 (n + 1)).toNat + (n : ℤ)

end

end A308110.P4365315618659754672

/-! ## A308110.P5682320566556959070

`A321452(A255380(n+1))+n`
-/

namespace A308110.P5682320566556959070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321452 (A255380 (n + 1)).toNat + (n : ℤ)

end

end A308110.P5682320566556959070

/-! ## A308110.P3544363176310240186

`or(n, A195143(A185255(3*n)))`
-/

namespace A308110.P3544363176310240186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A195143 (A185255 (3 * n)).toNat)

end

end A308110.P3544363176310240186

/-!
# A308111: Isomorphism classes of Eulerian digraphs with n vertices, allowing loops.

The programs for A308111, there is no canonical definition to state claims against.
-/

/-! ## A308111.P12328288108060722889

`∑[A000792(n)*A317080(n)]`
-/

namespace A308111.P12328288108060722889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 n * A317080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308111.P12328288108060722889

/-! ## A308111.P6079677119034549485

`∑[A000793(n)*A317080(n)]`
-/

namespace A308111.P6079677119034549485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n * A317080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308111.P6079677119034549485

/-!
# A308112: Total number of nodes summed over all lattice paths from (0,0) to (n,n) that consist of steps (h,v) with min(h,v) > 0 and gcd(h,v) = 1.

The programs for A308112, there is no canonical definition to state claims against.
-/

/-! ## A308112.P13050601164103421614

`A002487(xor(∑[n^n], ∑[n]))`
-/

namespace A308112.P13050601164103421614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Nat.xor (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A308112.P13050601164103421614

/-!
# A308113: Number of lattice paths from (0,0) to (n,n) that do not go above the diagonal x=y and consist of steps (h,v) with min(h,v) > 0 and gcd(h,v) = 1.

The programs for A308113, there is no canonical definition to state claims against.
-/

/-! ## A308113.P13113793493391303764

`A023193(A326355(n))`
-/

namespace A308113.P13113793493391303764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A326355 n).toNat

end

end A308113.P13113793493391303764

/-! ## A308113.P1149829174769456154

`A033182(12*A074407(n+1))`
-/

namespace A308113.P1149829174769456154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (12 * A074407 (n + 1)).toNat

end

end A308113.P1149829174769456154

/-! ## A308113.P14327550455824721922

`A259575(A080878(n)+A080874(n))`
-/

namespace A308113.P14327550455824721922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259575 (A080878 n + A080874 n).toNat

end

end A308113.P14327550455824721922

/-! ## A308113.P1779370770338044042

`A210043(n)-A001222(A089415(n))`
-/

namespace A308113.P1779370770338044042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210043 n - A001222 (A089415 n).toNat

end

end A308113.P1779370770338044042

/-!
# A308114: Total number of nodes summed over all lattice paths from (0,0) to (n,n) that do not go above the diagonal x=y and consist of steps (h,v) with min(h,v) > 0 and gcd(h,v) = 1.

The programs for A308114, there is no canonical definition to state claims against.
-/

/-! ## A308114.P14332811515518831802

`A247983(A263997(n+1)+A148843(n))`
-/

namespace A308114.P14332811515518831802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (A263997 (n + 1) + A148843 n).toNat

end

end A308114.P14332811515518831802

/-! ## A308114.P17610218242313276093

`A350849(n+1)+A324588(A011782(n))`
-/

namespace A308114.P17610218242313276093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350849 (n + 1) + A324588 (A011782 n).toNat

end

end A308114.P17610218242313276093

/-! ## A308114.P1349675122512706840

`A330466(A226852(n+1))+A277973(n+2)`
-/

namespace A308114.P1349675122512706840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330466 (A226852 (n + 1)).toNat + A277973 (n + 2)

end

end A308114.P1349675122512706840

/-!
# A308115: Rhythmic numbers: each number in this list is the least common multiple of some set of numbers S such that 1 is in S and every element of S except for 1 is a sum of two other elements of S.

The programs for A308115, there is no canonical definition to state claims against.
-/

/-! ## A308115.P12821767750728834301

`A057427(A008000(n))*A331828(n+1)`
-/

namespace A308115.P12821767750728834301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008000 n).toNat * A331828 (n + 1)

end

end A308115.P12821767750728834301

/-! ## A308115.P9081117928630725690

`A331828(n+1)+A316341(A002385(n+2))`
-/

namespace A308115.P9081117928630725690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331828 (n + 1) + A316341 (A002385 (n + 2)).toNat

end

end A308115.P9081117928630725690

/-! ## A308115.P11855919812655932397

`A331828(n+1)%A273890(A114570(n+1))`
-/

namespace A308115.P11855919812655932397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331828 (n + 1)) (A273890 (A114570 (n + 1)).toNat)

end

end A308115.P11855919812655932397

/-! ## A308115.P16370289901226182864

`A331828(n+1)+A000038(A331896(n+1))`
-/

namespace A308115.P16370289901226182864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331828 (n + 1) + A000038 (A331896 (n + 1)).toNat

end

end A308115.P16370289901226182864

/-! ## A308115.P6606958555130935240

`A331828(n+1)+A000038(A123496(n+2))`
-/

namespace A308115.P6606958555130935240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331828 (n + 1) + A000038 (A123496 (n + 2)).toNat

end

end A308115.P6606958555130935240

/-! ## A308115.P13201437105473050650

`A331828(n+1)+A000038(A195932(n+4))`
-/

namespace A308115.P13201437105473050650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331828 (n + 1) + A000038 (A195932 (n + 4)).toNat

end

end A308115.P13201437105473050650

/-! ## A308115.P3490295132937548322

`A355443(A005891(3*n+1))+A331828(n+1)`
-/

namespace A308115.P3490295132937548322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355443 (A005891 (3 * n + 1)).toNat + A331828 (n + 1)

end

end A308115.P3490295132937548322

/-! ## A308115.P271067719957869951

`A331828(n+1)+A000122(A308874(n+1))`
-/

namespace A308115.P271067719957869951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331828 (n + 1) + A000122 (A308874 (n + 1)).toNat

end

end A308115.P271067719957869951

/-! ## A308115.P11656057953217482275

`A331828(n+1)+A000038(A335080(n+1))`
-/

namespace A308115.P11656057953217482275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331828 (n + 1) + A000038 (A335080 (n + 1)).toNat

end

end A308115.P11656057953217482275

/-!
# A308116: Sum of the perimeters of the integer-sided triangles with perimeter n whose side lengths are squarefree.

The programs for A308116, there is no canonical definition to state claims against.
-/

/-! ## A308116.P11288437040954857518

`(n+1)*A308061(n+1)`
-/

namespace A308116.P11288437040954857518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308061 (n + 1)

end

end A308116.P11288437040954857518

/-! ## A308116.P13419609004970759917

`(n+1)*(A005044(n+1)-A307987(n+1))`
-/

namespace A308116.P13419609004970759917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A005044 (n + 1) - A307987 (n + 1))

end

end A308116.P13419609004970759917

/-! ## A308116.P4923454170048396569

`(n+1)*(Δ[A026810(n+1)]-A307987(n+1))`
-/

namespace A308116.P4923454170048396569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n - A307987 (n + 1))

end

end A308116.P4923454170048396569

/-! ## A308116.P3310044365856441716

`A308133(n+1)+A308143(n+1)+A308140(n+1)`
-/

namespace A308116.P3310044365856441716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308133 (n + 1) + (A308143 (n + 1) + A308140 (n + 1))

end

end A308116.P3310044365856441716

/-! ## A308116.P1163494997788422518

`(n+1)*(A308118(n+1)+A308117(n+1))`
-/

namespace A308116.P1163494997788422518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A308118 (n + 1) + A308117 (n + 1))

end

end A308116.P1163494997788422518

/-!
# A308117: Number of acute integer-sided triangles with perimeter n and squarefree sides.

The programs for A308117, there is no canonical definition to state claims against.
-/

/-! ## A308117.P7280318156827163639

`A308061(n+1)-A308118(n+1)`
-/

namespace A308117.P7280318156827163639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308061 (n + 1) - A308118 (n + 1)

end

end A308117.P7280318156827163639

/-! ## A308117.P6360833242163911042

`A308116(n+1)/(n+1)-A308118(n+1)`
-/

namespace A308117.P6360833242163911042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308116 (n + 1) : ℚ) / (n + 1 : ℚ) - (A308118 (n + 1) : ℚ)

end

end A308117.P6360833242163911042

/-! ## A308117.P4705337431289195078

`A005044(n+1)-A307987(n+1)-A308118(n+1)`
-/

namespace A308117.P4705337431289195078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A307987 (n + 1) - A308118 (n + 1)

end

end A308117.P4705337431289195078

/-! ## A308117.P12973653279111552415

`Δ[A026810(n+1)]-A307987(n+1)-A308118(n+1)`
-/

namespace A308117.P12973653279111552415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A307987 (n + 1) - A308118 (n + 1)

end

end A308117.P12973653279111552415

/-! ## A308117.P8029162255667516078

`(A308133(n+1)+A308143(n+1)+A308140(n+1))/(n+1)-A308118(n+1)`
-/

namespace A308117.P8029162255667516078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308133 (n + 1) + (A308143 (n + 1) + A308140 (n + 1)) : ℚ) / (n + 1 : ℚ) - (A308118 (n + 1) : ℚ)

end

end A308117.P8029162255667516078

/-! ## A308117.P2184255190983619952

`A308116(n+1)%A007318(∑[n]+1)-A308118(n+1)`
-/

namespace A308117.P2184255190983619952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308116 (n + 1)) (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) - A308118 (n + 1)

end

end A308117.P2184255190983619952

/-! ## A308117.P11267619040824428611

`A005843(A308116(n+1))%A005408(n)-A308118(n+1)`
-/

namespace A308117.P11267619040824428611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A308116 (n + 1)).toNat) (A005408 n) - A308118 (n + 1)

end

end A308117.P11267619040824428611

/-!
# A308118: Number of obtuse integer-sided triangles with perimeter n and squarefree sides.

The programs for A308118, there is no canonical definition to state claims against.
-/

/-! ## A308118.P10296199878981396239

`A308061(n+1)-A308117(n+1)`
-/

namespace A308118.P10296199878981396239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308061 (n + 1) - A308117 (n + 1)

end

end A308118.P10296199878981396239

/-! ## A308118.P16881326691220110286

`A005044(n+1)-A307987(n+1)-A308117(n+1)`
-/

namespace A308118.P16881326691220110286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) - A307987 (n + 1) - A308117 (n + 1)

end

end A308118.P16881326691220110286

/-! ## A308118.P3608024686890130581

`Δ[A026810(n+1)]-A307987(n+1)-A308117(n+1)`
-/

namespace A308118.P3608024686890130581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A307987 (n + 1) - A308117 (n + 1)

end

end A308118.P3608024686890130581

/-! ## A308118.P3383497130335075487

`(A308133(n+1)+A308143(n+1)+A308140(n+1))/(n+1)-A308117(n+1)`
-/

namespace A308118.P3383497130335075487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308133 (n + 1) + (A308143 (n + 1) + A308140 (n + 1)) : ℚ) / (n + 1 : ℚ) - (A308117 (n + 1) : ℚ)

end

end A308118.P3383497130335075487

/-! ## A308118.P17385156725494894230

`A005843(A308116(n+1))%A005408(n)-A308117(n+1)`
-/

namespace A308118.P17385156725494894230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A308116 (n + 1)).toNat) (A005408 n) - A308117 (n + 1)

end

end A308118.P17385156725494894230

/-!
# A308119: Sum of the smallest side lengths of all integer-sided triangles with prime side lengths and perimeter n.

The programs for A308119, there is no canonical definition to state claims against.
-/

/-! ## A308119.P16904894828294585824

`A308165(n+1)-(A308120(n+1)+A308100(n+1))`
-/

namespace A308119.P16904894828294585824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308165 (n + 1) - (A308120 (n + 1) + A308100 (n + 1))

end

end A308119.P16904894828294585824

/-!
# A308120: Take all the integer-sided triangles with perimeter n and prime sides a, b, and c such that a <= b <= c. a(n) is the sum of all the b's.

The programs for A308120, there is no canonical definition to state claims against.
-/

/-! ## A308120.P9724755119851840756

`A308165(n+1)-(A308119(n+1)+A308100(n+1))`
-/

namespace A308120.P9724755119851840756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308165 (n + 1) - (A308119 (n + 1) + A308100 (n + 1))

end

end A308120.P9724755119851840756

/-!
# A308121: Irregular triangle read by rows: T(n,k) = A109395(n)*k-A076512(n)*A038566(n,k).

The programs for A308121, there is no canonical definition to state claims against.
-/

/-! ## A308121.P10119787100732892035

`A305079(∑[A166249(n)])`
-/

namespace A308121.P10119787100732892035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308121.P10119787100732892035

/-! ## A308121.P1214175342152113023

`A305079(A166022(n+1))`
-/

namespace A308121.P1214175342152113023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A166022 (n + 1)).toNat

end

end A308121.P1214175342152113023

/-! ## A308121.P8683057794742287006

`∑{e}[A032798(A210736(n+2)), #]`
-/

namespace A308121.P8683057794742287006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032798 (A210736 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A308121.P8683057794742287006

/-! ## A308121.P3709603760290337525

`A051903(A005291(3*(n+1))+ceil(9*n/10))`
-/

namespace A308121.P3709603760290337525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A005291 (3 * (n + 1)) + ⌈9 * ((n : ℚ) / 10)⌉).toNat

end

end A308121.P3709603760290337525

/-! ## A308121.P6821195548092554303

`A305079(A010892(n)+A000975(n))`
-/

namespace A308121.P6821195548092554303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A010892 n + A000975 n).toNat

end

end A308121.P6821195548092554303

/-!
# A308122: Sum of the perimeters of all scalene triangles with perimeter n whose side lengths are squarefree.

The programs for A308122, there is no canonical definition to state claims against.
-/

/-! ## A308122.P11998874070089459131

`(n+1)*A308103(n+1)`
-/

namespace A308122.P11998874070089459131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308103 (n + 1)

end

end A308122.P11998874070089459131

/-! ## A308122.P4028455704118090925

`A308103(n+1)*A326178(n)`
-/

namespace A308122.P4028455704118090925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308103 (n + 1) * A326178 n

end

end A308122.P4028455704118090925

/-! ## A308122.P10723768484587429906

`lcm(A308103(n+1)^A122843(n+1), xor(n, -1))`
-/

namespace A308122.P10723768484587429906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A308103 (n + 1) : ℚ) ^ (A122843 (n + 1) : ℤ))) (Int.xor (n : ℤ) (-1))

end

end A308122.P10723768484587429906

/-! ## A308122.P7859551541964415035

`A289507(A006005(n+1)^A308103(n+1))`
-/

namespace A308122.P7859551541964415035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289507 (SequenceMachineLib.roundAway ((A006005 (n + 1) : ℚ) ^ (A308103 (n + 1) : ℤ))).toNat

end

end A308122.P7859551541964415035

/-! ## A308122.P3971932449692970057

`lcm(A308103(n+1), A367587(A000040(n+1)))`
-/

namespace A308122.P3971932449692970057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A308103 (n + 1)) (A367587 (A000040 (n + 1)).toNat)

end

end A308122.P3971932449692970057

/-!
# A308123: Sum of the perimeters of all integer-sided isosceles triangles with perimeter n.

The programs for A308123, the canonical program `A308123.P1148586269331515030` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308123 has offset 1).

The definition of A308123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308123.P1148586269331515030

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=0, a(4)=5, a(5)=6, a(6)=14, a(7)=8, a(8)=18`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A308123

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P1148586269331515030.Spec : Prop :=
  ∀ n, P1148586269331515030.a n = A308123 (n + 1)

theorem P1148586269331515030.correct : P1148586269331515030.Spec := by
  intro n
  simp only [A308123, Nat.add_sub_cancel]

end A308123

/-! ## A308123.P12337181973161933848

`(n+1)*A059169(n+1)`
-/

namespace A308123.P12337181973161933848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059169 (n + 1)

end

end A308123.P12337181973161933848

namespace A308123

/-- `(n+1)*A059169(n+1)` -/
def P12337181973161933848.Spec : Prop :=
  ∀ n, P12337181973161933848.a n = A308123 (n + 1)

end A308123

/-! ## A308123.P6798088502535039484

`(n+1)*floor(abs(xor(n, -2))/4)`
-/

namespace A308123.P6798088502535039484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(|Int.xor (n : ℤ) (-2)| : ℚ) / 4⌋

end

end A308123.P6798088502535039484

namespace A308123

/-- `(n+1)*floor(abs(xor(n, -2))/4)` -/
def P6798088502535039484.Spec : Prop :=
  ∀ n, P6798088502535039484.a n = A308123 (n + 1)

end A308123

/-! ## A308123.P9997473254766183342

`(n+1)*floor((xor(1, n)+1)/4)`
-/

namespace A308123.P9997473254766183342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(Nat.xor 1 n + 1 : ℚ) / 4⌋

end

end A308123.P9997473254766183342

namespace A308123

/-- `(n+1)*floor((xor(1, n)+1)/4)` -/
def P9997473254766183342.Spec : Prop :=
  ∀ n, P9997473254766183342.a n = A308123 (n + 1)

end A308123

/-! ## A308123.P13590079947015534060

`(n+1)*ceil(xor(1, n-2)/4)`
-/

namespace A308123.P13590079947015534060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(Int.xor 1 ((n : ℤ) - 2) : ℚ) / 4⌉

end

end A308123.P13590079947015534060

namespace A308123

/-- `(n+1)*ceil(xor(1, n-2)/4)` -/
def P13590079947015534060.Spec : Prop :=
  ∀ n, P13590079947015534060.a n = A308123 (n + 1)

end A308123

/-! ## A308123.P10661737070880550737

`(n+1)*round((xor(1, n)-1)/4)`
-/

namespace A308123.P10661737070880550737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway (((Nat.xor 1 n : ℤ) - 1 : ℚ) / 4)

end

end A308123.P10661737070880550737

namespace A308123

/-- `(n+1)*round((xor(1, n)-1)/4)` -/
def P10661737070880550737.Spec : Prop :=
  ∀ n, P10661737070880550737.a n = A308123 (n + 1)

end A308123

/-! ## A308123.P18442345465056415832

`(n+1)*(ceil(n/4)-n%2)`
-/

namespace A308123.P18442345465056415832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (⌈(n : ℚ) / 4⌉ - ((n % 2 : ℕ) : ℤ))

end

end A308123.P18442345465056415832

namespace A308123

/-- `(n+1)*(ceil(n/4)-n%2)` -/
def P18442345465056415832.Spec : Prop :=
  ∀ n, P18442345465056415832.a n = A308123 (n + 1)

end A308123

/-! ## A308123.P954443290465183362

`(n+1)*ceil(n/4-and(1, n))`
-/

namespace A308123.P954443290465183362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(n : ℚ) / 4 - (Nat.land 1 n : ℚ)⌉

end

end A308123.P954443290465183362

namespace A308123

/-- `(n+1)*ceil(n/4-and(1, n))` -/
def P954443290465183362.Spec : Prop :=
  ∀ n, P954443290465183362.a n = A308123 (n + 1)

end A308123

/-! ## A308123.P3741144980196720089

`abs((n+1)*ceil(xor(n, -2)/4))`
-/

namespace A308123.P3741144980196720089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ⌈(Int.xor (n : ℤ) (-2) : ℚ) / 4⌉|

end

end A308123.P3741144980196720089

namespace A308123

/-- `abs((n+1)*ceil(xor(n, -2)/4))` -/
def P3741144980196720089.Spec : Prop :=
  ∀ n, P3741144980196720089.a n = A308123 (n + 1)

end A308123

/-! ## A308123.P3768996729811141835

`-((n+1)*ceil(xor(n, -2)/4))`
-/

namespace A308123.P3768996729811141835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * ⌈(Int.xor (n : ℤ) (-2) : ℚ) / 4⌉)

end

end A308123.P3768996729811141835

namespace A308123

/-- `-((n+1)*ceil(xor(n, -2)/4))` -/
def P3768996729811141835.Spec : Prop :=
  ∀ n, P3768996729811141835.a n = A308123 (n + 1)

end A308123

/-! ## A308123.P10131507838446803677

`(n+1)*(n-∑[log2(gcd(4, n+1))])`
-/

namespace A308123.P10131507838446803677
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 4 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * ((n : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308123.P10131507838446803677

namespace A308123

/-- `(n+1)*(n-∑[log2(gcd(4, n+1))])` -/
def P10131507838446803677.Spec : Prop :=
  ∀ n, P10131507838446803677.a n = (A308123 (n + 1) : ℝ)

end A308123

/-! ## A308123.P5587416768338644191

`(n+1)*(floor(n/2)-∑[char[or(3, n)]])`
-/

namespace A308123.P5587416768338644191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (⌊(n : ℚ) / 2⌋ - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A308123.P5587416768338644191

namespace A308123

/-- `(n+1)*(floor(n/2)-∑[char[or(3, n)]])` -/
def P5587416768338644191.Spec : Prop :=
  ∀ n, P5587416768338644191.a n = A308123 (n + 1)

end A308123

/-! ## A308123.P17654653643540614904

`(n+1)*∑[floor(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=-1, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A308123.P17654653643540614904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, -1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308123.P17654653643540614904

namespace A308123

/-- `(n+1)*∑[floor(a(n-4))]` -/
def P17654653643540614904.Spec : Prop :=
  ∀ n, P17654653643540614904.a n = A308123 (n + 1)

end A308123

/-! ## A308123.P13106381792601379840

`(n+1)*floor(ceil((n+1)/2)²/(n+2))`
-/

namespace A308123.P13106381792601379840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(⌈(n + 1 : ℚ) / 2⌉ ^ 2 : ℚ) / (n + 2 : ℚ)⌋

end

end A308123.P13106381792601379840

namespace A308123

/-- `(n+1)*floor(ceil((n+1)/2)²/(n+2))` -/
def P13106381792601379840.Spec : Prop :=
  ∀ n, P13106381792601379840.a n = A308123 (n + 1)

end A308123

/-! ## A308123.P15796455252929937367

`A296805(n+1)+A296141(n+1)`
-/

namespace A308123.P15796455252929937367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296805 (n + 1) + A296141 (n + 1)

end

end A308123.P15796455252929937367

namespace A308123

/-- `A296805(n+1)+A296141(n+1)` -/
def P15796455252929937367.Spec : Prop :=
  ∀ n, P15796455252929937367.a n = A308123 (n + 1)

end A308123

/-! ## A308123.P12192427657891328008

`A308089(n+1)-A308102(n+1)`
-/

namespace A308123.P12192427657891328008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - A308102 (n + 1)

end

end A308123.P12192427657891328008

namespace A308123

/-- `A308089(n+1)-A308102(n+1)` -/
def P12192427657891328008.Spec : Prop :=
  ∀ n, P12192427657891328008.a n = A308123 (n + 1)

end A308123

/-! ## A308123.P11514405945750618579

`A308158(n+1)+A308160(n+1)+A308159(n+1)`
-/

namespace A308123.P11514405945750618579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308158 (n + 1) + (A308160 (n + 1) + A308159 (n + 1))

end

end A308123.P11514405945750618579

namespace A308123

/-- `A308158(n+1)+A308160(n+1)+A308159(n+1)` -/
def P11514405945750618579.Spec : Prop :=
  ∀ n, P11514405945750618579.a n = A308123 (n + 1)

end A308123

/-!
# A308124: a(n) = (2 + 7*4^n)/3.

The programs for A308124, the canonical program `A308124.P478977024137646259` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308124 has offset 0).

The definition of A308124 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2+7*4^n)/3` (program `A308124.P12772977427001097704`, by `A308124.P12772977427001097704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A308124.P478977024137646259

`4*a(n-1)-2` with `a(0)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A308124

/-- `4*a(n-1)-2` -/
def P478977024137646259.Spec : Prop :=
  ∀ n, P478977024137646259.a n = A308124 n

theorem P478977024137646259.correct : P478977024137646259.Spec := by
  intro n
  simp only [A308124]

end A308124

/-! ## A308124.P12772977427001097704

`(2+7*4^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A308124.P12772977427001097704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + 7 * 4 ^ n : ℚ) / 3

end

end A308124.P12772977427001097704

namespace A308124

/-- `(2+7*4^n)/3` -/
def P12772977427001097704.Spec : Prop :=
  ∀ n, P12772977427001097704.a n = (A308124 n : ℚ)

theorem P12772977427001097704.correct : P12772977427001097704.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A308124, Nat.add_sub_cancel, A308124.P12772977427001097704.a, A308124.P478977024137646259.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A308124, Nat.add_sub_cancel, A308124.P12772977427001097704.a, A308124.P478977024137646259.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A308124

/-! ## A308124.P17564462072747068857

`ogf((3-5x)/(1-5x+4x^2))`
-/

namespace A308124.P17564462072747068857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -5] [1, -5, 4] n

end

end A308124.P17564462072747068857

namespace A308124

/-- `ogf((3-5x)/(1-5x+4x^2))` -/
def P17564462072747068857.Spec : Prop :=
  ∀ n, P17564462072747068857.a n = A308124 n

end A308124

/-! ## A308124.P15226954870831920369

`lcm(8, a(n-1))-2` with `a(0)=3, a(1)=10`
-/

namespace A308124.P15226954870831920369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  (Int.lcm 8 (a (n - 1)) : ℤ) - 2

end

end A308124.P15226954870831920369

namespace A308124

/-- `lcm(8, a(n-1))-2` -/
def P15226954870831920369.Spec : Prop :=
  ∀ n, P15226954870831920369.a n = A308124 n

end A308124

/-! ## A308124.P8012370312492781654

`a(n-1)/(1/2)²-2` with `a(0)=3`
-/

namespace A308124.P8012370312492781654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - 2

end

end A308124.P8012370312492781654

namespace A308124

/-- `a(n-1)/(1/2)²-2` -/
def P8012370312492781654.Spec : Prop :=
  ∀ n, P8012370312492781654.a n = (A308124 n : ℚ)

end A308124

/-! ## A308124.P16034394912342640945

`or(2*4^n, ceil(4^n/3))`
-/

namespace A308124.P16034394912342640945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * 4 ^ n : ℤ) ⌈(4 ^ n : ℚ) / 3⌉

end

end A308124.P16034394912342640945

namespace A308124

/-- `or(2*4^n, ceil(4^n/3))` -/
def P16034394912342640945.Spec : Prop :=
  ∀ n, P16034394912342640945.a n = A308124 n

end A308124

/-! ## A308124.P15202114248440107152

`record[2-a(n-1)-a(n-1)]` with `a(0)=3`
-/

namespace A308124.P15202114248440107152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  2 - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308124.P15202114248440107152

namespace A308124

/-- `record[2-a(n-1)-a(n-1)]` -/
def P15202114248440107152.Spec : Prop :=
  ∀ n, P15202114248440107152.a n = A308124 n

end A308124

/-! ## A308124.P521911161920211126

`floor(a(n-1)/(1-3/4))-2` with `a(0)=3`
-/

namespace A308124.P521911161920211126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℚ) / (1 - (3 : ℚ) / 4)⌋ - 2

end

end A308124.P521911161920211126

namespace A308124

/-- `floor(a(n-1)/(1-3/4))-2` -/
def P521911161920211126.Spec : Prop :=
  ∀ n, P521911161920211126.a n = A308124 n

end A308124

/-! ## A308124.P3908966801785640169

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-2` with `a(0)=3`
-/

namespace A308124.P3908966801785640169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - 2)))

end

end A308124.P3908966801785640169

namespace A308124

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-2` -/
def P3908966801785640169.Spec : Prop :=
  ∀ n, P3908966801785640169.a n = A308124 n

theorem P3908966801785640169.correct : P3908966801785640169.Spec := by
  intro n
  simp only [A308124, Nat.add_sub_cancel, A308124.P3908966801785640169.a, A308124.P478977024137646259.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A308124

/-! ## A308124.P16154936603480435336

`a(n-1)-(2-a(n-1)-a(n-1)-a(n-1))` with `a(0)=3`
-/

namespace A308124.P16154936603480435336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - (2 - a (n - 1) - a (n - 1) - a (n - 1))

end

end A308124.P16154936603480435336

namespace A308124

/-- `a(n-1)-(2-a(n-1)-a(n-1)-a(n-1))` -/
def P16154936603480435336.Spec : Prop :=
  ∀ n, P16154936603480435336.a n = A308124 n

theorem P16154936603480435336.correct : P16154936603480435336.Spec := by
  intro n
  simp only [A308124, Nat.add_sub_cancel, A308124.P16154936603480435336.a, A308124.P478977024137646259.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A308124

/-! ## A308124.P11256918565857202983

`A206374(n)+1`
-/

namespace A308124.P11256918565857202983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206374 n + 1

end

end A308124.P11256918565857202983

namespace A308124

/-- `A206374(n)+1` -/
def P11256918565857202983.Spec : Prop :=
  ∀ n, P11256918565857202983.a n = A308124 n

end A308124

/-! ## A308124.P13070948920108129957

`A083597(n)+2`
-/

namespace A308124.P13070948920108129957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083597 n + 2

end

end A308124.P13070948920108129957

namespace A308124

/-- `A083597(n)+2` -/
def P13070948920108129957.Spec : Prop :=
  ∀ n, P13070948920108129957.a n = A308124 n

end A308124

/-! ## A308124.P6939938049039274236

`A171160(2*n)`
-/

namespace A308124.P6939938049039274236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171160 (2 * n)

end

end A308124.P6939938049039274236

namespace A308124

/-- `A171160(2*n)` -/
def P6939938049039274236.Spec : Prop :=
  ∀ n, P6939938049039274236.a n = A308124 n

end A308124

/-! ## A308124.P11488277517553848605

`A137208(Δ[n²])`
-/

namespace A308124.P11488277517553848605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137208 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A308124.P11488277517553848605

namespace A308124

/-- `A137208(Δ[n²])` -/
def P11488277517553848605.Spec : Prop :=
  ∀ n, P11488277517553848605.a n = A308124 n

end A308124

/-! ## A308124.P8481109618941080330

`Δ[record[A082383(n)]]`
-/

namespace A308124.P8481109618941080330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308124.P8481109618941080330

namespace A308124

/-- `Δ[record[A082383(n)]]` -/
def P8481109618941080330.Spec : Prop :=
  ∀ n, P8481109618941080330.a n = A308124 n

end A308124

/-! ## A308124.P6782669606258907479

`Δ[A082383(2*n)]`
-/

namespace A308124.P6782669606258907479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082383 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308124.P6782669606258907479

namespace A308124

/-- `Δ[A082383(2*n)]` -/
def P6782669606258907479.Spec : Prop :=
  ∀ n, P6782669606258907479.a n = A308124 n

end A308124

/-! ## A308124.P423352234647989477

`A062092(2*n)+1`
-/

namespace A308124.P423352234647989477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 (2 * n) + 1

end

end A308124.P423352234647989477

namespace A308124

/-- `A062092(2*n)+1` -/
def P423352234647989477.Spec : Prop :=
  ∀ n, P423352234647989477.a n = A308124 n

end A308124

/-! ## A308124.P10237781709927433766

`A290604(2*n)+1`
-/

namespace A308124.P10237781709927433766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290604 (2 * n) + 1

end

end A308124.P10237781709927433766

namespace A308124

/-- `A290604(2*n)+1` -/
def P10237781709927433766.Spec : Prop :=
  ∀ n, P10237781709927433766.a n = A308124 n

end A308124

/-! ## A308124.P7009140095791894397

`A083595(2*n)+2`
-/

namespace A308124.P7009140095791894397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083595 (2 * n) + 2

end

end A308124.P7009140095791894397

namespace A308124

/-- `A083595(2*n)+2` -/
def P7009140095791894397.Spec : Prop :=
  ∀ n, P7009140095791894397.a n = A308124 n

end A308124

/-! ## A308124.P7976210840394596750

`A097164(2*n)+2`
-/

namespace A308124.P7976210840394596750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097164 (2 * n) + 2

end

end A308124.P7976210840394596750

namespace A308124

/-- `A097164(2*n)+2` -/
def P7976210840394596750.Spec : Prop :=
  ∀ n, P7976210840394596750.a n = A308124 n

end A308124

/-!
# A308125: Numbers k that are a multiple of the DENEAT operator applied to k (A073053).

The programs for A308125, there is no canonical definition to state claims against.
-/

/-! ## A308125.P12154028927902845168

`A329447(eq[2, A126572(n+3)])`
-/

namespace A308125.P12154028927902845168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126572 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A308125.P12154028927902845168

/-!
# A308126: Positive integers equal to the permanent of Hankel matrix formed by their decimal digits.

The programs for A308126, there is no canonical definition to state claims against.
-/

/-! ## A308126.P14252886395715465728

`A002863(A306860(n))+n`
-/

namespace A308126.P14252886395715465728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (A306860 n).toNat + (n : ℤ)

end

end A308126.P14252886395715465728

/-! ## A308126.P658180857137044388

`A249517(n+1)%A000292(Δ[n²])`
-/

namespace A308126.P658180857137044388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249517 (n + 1)) (A000292 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A308126.P658180857137044388

/-! ## A308126.P8537556299833374341

`and(A282792(n+3)+n, A282782(n+1))`
-/

namespace A308126.P8537556299833374341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282792 (n + 3) + (n : ℤ)) (A282782 (n + 1))

end

end A308126.P8537556299833374341

/-! ## A308126.P15778229547217499619

`C(A002863(n+1), A155173(2*(n+2)))+n`
-/

namespace A308126.P15778229547217499619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002863 (n + 1)).toNat (A155173 (2 * (n + 2))).toNat + n

end

end A308126.P15778229547217499619

/-! ## A308126.P3207529566217731317

`A185203(A236912(n))+A009993(n+1)`
-/

namespace A308126.P3207529566217731317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185203 (A236912 n).toNat + A009993 (n + 1)

end

end A308126.P3207529566217731317

/-!
# A308127: Non-coreful abundant numbers: numbers k such that ncsigma(k) > k, where ncsigma(k) is the sum of the non-coreful divisors of k (A308135).

The programs for A308127, the canonical program `A308127.P13327846023797537183` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308127 has offset 1).

The definition of A308127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308127.P13327846023797537183

`lt[A336564(n+2), 0]+2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A308127

/-- `lt[A336564(n+2), 0]+2` -/
def P13327846023797537183.Spec : Prop :=
  ∀ n, (P13327846023797537183.a n : ℤ) = A308127 (n + 1)

theorem P13327846023797537183.correct : P13327846023797537183.Spec := by
  intro n
  simp only [A308127, Nat.add_sub_cancel]

end A308127

/-! ## A308127.P13697337311368102393

`lt[A336564(abs(1-2*n)-(n-1)), 0]`
-/

namespace A308127.P13697337311368102393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (|1 - (2 * n : ℤ)| - ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308127.P13697337311368102393

namespace A308127

/-- `lt[A336564(abs(1-2*n)-(n-1)), 0]` -/
def P13697337311368102393.Spec : Prop :=
  ∀ n, (P13697337311368102393.a n : ℤ) = A308127 (n + 1)

end A308127

/-! ## A308127.P5564343324114526960

`lt[n+1, A308135(n+1)]+1`
-/

namespace A308127.P5564343324114526960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A308127.P5564343324114526960

namespace A308127

/-- `lt[n+1, A308135(n+1)]+1` -/
def P5564343324114526960.Spec : Prop :=
  ∀ n, (P5564343324114526960.a n : ℤ) = A308127 (n + 1)

end A308127

/-! ## A308127.P8564869474290468083

`lt[n, A308135(A028310(n))]`
-/

namespace A308127.P8564869474290468083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308135 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A308127.P8564869474290468083

namespace A308127

/-- `lt[n, A308135(A028310(n))]` -/
def P8564869474290468083.Spec : Prop :=
  ∀ n, (P8564869474290468083.a n : ℤ) = A308127 (n + 1)

end A308127

/-! ## A308127.P771121932191177709

`A065475(lt[n+1, A308135(n+1)])`
-/

namespace A308127.P771121932191177709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A308127.P771121932191177709

namespace A308127

/-- `A065475(lt[n+1, A308135(n+1)])` -/
def P771121932191177709.Spec : Prop :=
  ∀ n, P771121932191177709.a n = A308127 (n + 1)

end A308127

/-!
# A308128: Isomorphism classes of connected Eulerian digraphs with n vertices, allowing loops.

The programs for A308128, there is no canonical definition to state claims against.
-/

/-! ## A308128.P16828491109497917765

`∑[A333751(n!²)]`
-/

namespace A308128.P16828491109497917765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333751 (Nat.factorial n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308128.P16828491109497917765

/-!
# A308129: Number of (undirected) Hamiltonian paths on the n X n king graph.

The programs for A308129, there is no canonical definition to state claims against.
-/

/-! ## A308129.P6987887439192914956

`ceil(A158651(n+1)/2)`
-/

namespace A308129.P6987887439192914956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158651 (n + 1) : ℚ) / 2⌉

end

end A308129.P6987887439192914956

/-! ## A308129.P482746668264467770

`A350729((n+1)²+n²)`
-/

namespace A308129.P482746668264467770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350729 ((n + 1) ^ 2 + n ^ 2)

end

end A308129.P482746668264467770

/-! ## A308129.P15096415846407263677

`record[A003982(n)*A350729(n+1)]`
-/

namespace A308129.P15096415846407263677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A350729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308129.P15096415846407263677

/-! ## A308129.P17031405314725977811

`A158651(n+1)/A003059(A003059(n+1))`
-/

namespace A308129.P17031405314725977811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158651 (n + 1) : ℚ) / (A003059 (A003059 (n + 1)).toNat : ℚ)

end

end A308129.P17031405314725977811

/-!
# A308130: Number of (undirected) Hamiltonian paths in the n-halved cube graph.

The programs for A308130, there is no canonical definition to state claims against.
-/

/-! ## A308130.P4716421505473501344

`A137888(n+1)/2`
-/

namespace A308130.P4716421505473501344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137888 (n + 1) : ℚ) / 2

end

end A308130.P4716421505473501344

/-!
# A308131: Number of (undirected) Hamiltonian paths in the n X n knight graph.

The programs for A308131, there is no canonical definition to state claims against.
-/

/-! ## A308131.P4037726370765984415

`floor(A165134(n+1)/2)`
-/

namespace A308131.P4037726370765984415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165134 (n + 1) : ℚ) / 2⌋

end

end A308131.P4037726370765984415

/-! ## A308131.P18436893184498338745

`A390833((n+1)²+n²)`
-/

namespace A308131.P18436893184498338745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390833 ((n + 1) ^ 2 + n ^ 2)

end

end A308131.P18436893184498338745

/-! ## A308131.P14956846996262308440

`A165134(abs(1-n)+2)/2`
-/

namespace A308131.P14956846996262308440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165134 (|1 - (n : ℤ)| + 2).toNat : ℚ) / 2

end

end A308131.P14956846996262308440

/-! ## A308131.P8995100839852962699

`A165134(n+1)/2*A057427(n)`
-/

namespace A308131.P8995100839852962699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165134 (n + 1) : ℚ) / 2 * (A057427 n : ℚ)

end

end A308131.P8995100839852962699

/-!
# A308132: Number of (undirected) Hamiltonian paths in the n-Mycielski graph.

The programs for A308132, there is no canonical definition to state claims against.
-/

/-! ## A308132.P9217398187728580406

`A137890(n+1)/2`
-/

namespace A308132.P9217398187728580406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137890 (n + 1) : ℚ) / 2

end

end A308132.P9217398187728580406

/-!
# A308133: Sum of the smallest sides of all integer-sided triangles with squarefree sides and perimeter n.

The programs for A308133, there is no canonical definition to state claims against.
-/

/-! ## A308133.P7017967402590903603

`A308116(n+1)-(A308143(n+1)+A308140(n+1))`
-/

namespace A308133.P7017967402590903603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308116 (n + 1) - (A308143 (n + 1) + A308140 (n + 1))

end

end A308133.P7017967402590903603

/-!
# A308134: Number of (undirected) Hamiltonian paths in the n-Hanoi graph.

The programs for A308134, the canonical program `A308134.P11044730314277676641` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308134 has offset 1).

The definition of A308134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308134.P11044730314277676641

`A137889(n+1)/2`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A308134

/-- `A137889(n+1)/2` -/
def P11044730314277676641.Spec : Prop :=
  ∀ n, P11044730314277676641.a n = (A308134 (n + 1) : ℚ)

end A308134

/-! ## A308134.P1370043038543089755

`(208+16*3^(2+n+1)+13*4^(2+n+1)+25*16^(n+1))/624`
-/

namespace A308134.P1370043038543089755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (208 + 16 * 3 ^ (2 + (n + 1)) + 13 * 4 ^ (2 + (n + 1)) + 25 * 16 ^ (n + 1) : ℚ) / 624

end

end A308134.P1370043038543089755

namespace A308134

/-- `(208+16*3^(2+n+1)+13*4^(2+n+1)+25*16^(n+1))/624` -/
def P1370043038543089755.Spec : Prop :=
  ∀ n, P1370043038543089755.a n = (A308134 (n + 1) : ℚ)

end A308134

/-!
# A308135: Sum of non-coreful divisors of n.

The programs for A308135, the canonical program `A308135.P17632068956087446165` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308135 has offset 1).

The definition of A308135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308135.P17632068956087446165

`A000203(n+1)-A057723(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A308135

/-- `A000203(n+1)-A057723(n+1)` -/
def P17632068956087446165.Spec : Prop :=
  ∀ n, P17632068956087446165.a n = A308135 (n + 1)

theorem P17632068956087446165.correct : P17632068956087446165.Spec := by
  intro n
  simp only [A308135, Nat.add_sub_cancel]

end A308135

/-! ## A308135.P1334358022550083040

`1-A336564(n+1)+n`
-/

namespace A308135.P1334358022550083040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A336564 (n + 1) + (n : ℤ)

end

end A308135.P1334358022550083040

namespace A308135

/-- `1-A336564(n+1)+n` -/
def P1334358022550083040.Spec : Prop :=
  ∀ n, P1334358022550083040.a n = A308135 (n + 1)

theorem P1334358022550083040.correct : P1334358022550083040.Spec := by
  intro n
  simp only [A308135, Nat.add_sub_cancel, A308135.P1334358022550083040.a, A308135.P17632068956087446165.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A057723, A057723.P9092718560045484766.a, A336564, A336564.P7523591857433776956.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308135

/-! ## A308135.P1199255205335057847

`Δ[A160664(n)]-A057723(n+1)`
-/

namespace A308135.P1199255205335057847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A057723 (n + 1)

end

end A308135.P1199255205335057847

namespace A308135

/-- `Δ[A160664(n)]-A057723(n+1)` -/
def P1199255205335057847.Spec : Prop :=
  ∀ n, P1199255205335057847.a n = A308135 (n + 1)

end A308135

/-! ## A308135.P5202785548588874031

`A389171(n+1)+A034460(n+1)`
-/

namespace A308135.P5202785548588874031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389171 (n + 1) + A034460 (n + 1)

end

end A308135.P5202785548588874031

namespace A308135

/-- `A389171(n+1)+A034460(n+1)` -/
def P5202785548588874031.Spec : Prop :=
  ∀ n, P5202785548588874031.a n = A308135 (n + 1)

theorem P5202785548588874031.correct : P5202785548588874031.Spec := by
  intro n
  simp only [A308135, Nat.add_sub_cancel, A308135.P5202785548588874031.a, A308135.P17632068956087446165.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034460, A034460.P1958235575820581513.a, A057723, A057723.P9092718560045484766.a, A389171, A389171.P8921738463794581484.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308135

/-! ## A308135.P10380232324071018389

`A001065(n+1)-A336563(n+1)`
-/

namespace A308135.P10380232324071018389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A336563 (n + 1)

end

end A308135.P10380232324071018389

namespace A308135

/-- `A001065(n+1)-A336563(n+1)` -/
def P10380232324071018389.Spec : Prop :=
  ∀ n, P10380232324071018389.a n = A308135 (n + 1)

end A308135

/-! ## A308135.P14498646417702530856

`A034448(n+1)-A389170(n+1)`
-/

namespace A308135.P14498646417702530856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A389170 (n + 1)

end

end A308135.P14498646417702530856

namespace A308135

/-- `A034448(n+1)-A389170(n+1)` -/
def P14498646417702530856.Spec : Prop :=
  ∀ n, P14498646417702530856.a n = A308135 (n + 1)

theorem P14498646417702530856.correct : P14498646417702530856.Spec := by
  intro n
  simp only [A308135, Nat.add_sub_cancel, A308135.P14498646417702530856.a, A308135.P17632068956087446165.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A057723, A057723.P9092718560045484766.a, A389170, A389170.P11666675562721126669.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048146, A048146.P9985884013456677192.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308135

/-! ## A308135.P8910824945243130651

`sqrt(A072861(n+1))-A057723(n+1)`
-/

namespace A308135.P8910824945243130651
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A057723 (n + 1) : ℝ)

end

end A308135.P8910824945243130651

namespace A308135

/-- `sqrt(A072861(n+1))-A057723(n+1)` -/
def P8910824945243130651.Spec : Prop :=
  ∀ n, P8910824945243130651.a n = (A308135 (n + 1) : ℝ)

end A308135

/-! ## A308135.P2340621289210567087

`floor(A294628(n+1)/8)-A336563(n+1)`
-/

namespace A308135.P2340621289210567087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A294628 (n + 1) : ℚ) / 8⌋ - A336563 (n + 1)

end

end A308135.P2340621289210567087

namespace A308135

/-- `floor(A294628(n+1)/8)-A336563(n+1)` -/
def P2340621289210567087.Spec : Prop :=
  ∀ n, P2340621289210567087.a n = A308135 (n + 1)

end A308135

/-! ## A308135.P7494972605992747638

`∑[A340793(n+1)-1]-A336563(n+1)`
-/

namespace A308135.P7494972605992747638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A336563 (n + 1)

end

end A308135.P7494972605992747638

namespace A308135

/-- `∑[A340793(n+1)-1]-A336563(n+1)` -/
def P7494972605992747638.Spec : Prop :=
  ∀ n, P7494972605992747638.a n = A308135 (n + 1)

end A308135

/-! ## A308135.P9832363405379908744

`A000203(n+1)-(A336563(n+1)+n+1)`
-/

namespace A308135.P9832363405379908744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A336563 (n + 1) + (n + 1 : ℤ))

end

end A308135.P9832363405379908744

namespace A308135

/-- `A000203(n+1)-(A336563(n+1)+n+1)` -/
def P9832363405379908744.Spec : Prop :=
  ∀ n, P9832363405379908744.a n = A308135 (n + 1)

end A308135

/-! ## A308135.P13509058594320149536

`A034448(n+1)+A048146(n+1)-A057723(n+1)`
-/

namespace A308135.P13509058594320149536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A057723 (n + 1))

end

end A308135.P13509058594320149536

namespace A308135

/-- `A034448(n+1)+A048146(n+1)-A057723(n+1)` -/
def P13509058594320149536.Spec : Prop :=
  ∀ n, P13509058594320149536.a n = A308135 (n + 1)

theorem P13509058594320149536.correct : P13509058594320149536.Spec := by
  intro n
  simp only [A308135, Nat.add_sub_cancel, A308135.P13509058594320149536.a, A308135.P17632068956087446165.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A057723, A057723.P9092718560045484766.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308135

/-! ## A308135.P11218250811640340961

`A007947(n+1)+A326142(n+1)-A057723(n+1)`
-/

namespace A308135.P11218250811640340961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + (A326142 (n + 1) - A057723 (n + 1))

end

end A308135.P11218250811640340961

namespace A308135

/-- `A007947(n+1)+A326142(n+1)-A057723(n+1)` -/
def P11218250811640340961.Spec : Prop :=
  ∀ n, P11218250811640340961.a n = A308135 (n + 1)

theorem P11218250811640340961.correct : P11218250811640340961.Spec := by
  intro n
  simp only [A308135, Nat.add_sub_cancel, A308135.P11218250811640340961.a, A308135.P17632068956087446165.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A057723, A057723.P9092718560045484766.a, A326142, A326142.P15415912859726343761.a, A003557, A003557.P6364735403900941810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308135

/-! ## A308135.P12614568339159318854

`A007503(n+1)-(A336563(n+1)+A062249(n+1))`
-/

namespace A308135.P12614568339159318854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - (A336563 (n + 1) + A062249 (n + 1))

end

end A308135.P12614568339159318854

namespace A308135

/-- `A007503(n+1)-(A336563(n+1)+A062249(n+1))` -/
def P12614568339159318854.Spec : Prop :=
  ∀ n, P12614568339159318854.a n = A308135 (n + 1)

end A308135

/-! ## A308135.P16753231557760682073

`A079535(n+1)-(A336563(n+1)+A079536(n+1))`
-/

namespace A308135.P16753231557760682073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079535 (n + 1) - (A336563 (n + 1) + A079536 (n + 1))

end

end A308135.P16753231557760682073

namespace A308135

/-- `A079535(n+1)-(A336563(n+1)+A079536(n+1))` -/
def P16753231557760682073.Spec : Prop :=
  ∀ n, P16753231557760682073.a n = A308135 (n + 1)

end A308135

/-! ## A308135.P2699113771437285494

`A326126(n+1)-(A336563(n+1)+A326128(n+1))`
-/

namespace A308135.P2699113771437285494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (n + 1) - (A336563 (n + 1) + A326128 (n + 1))

end

end A308135.P2699113771437285494

namespace A308135

/-- `A326126(n+1)-(A336563(n+1)+A326128(n+1))` -/
def P2699113771437285494.Spec : Prop :=
  ∀ n, P2699113771437285494.a n = A308135 (n + 1)

end A308135

/-! ## A308135.P7150395017128416785

`A000203(n+1)-A007947(n+1)*A335341(n+1)`
-/

namespace A308135.P7150395017128416785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A007947 (n + 1) * A335341 (n + 1)

end

end A308135.P7150395017128416785

namespace A308135

/-- `A000203(n+1)-A007947(n+1)*A335341(n+1)` -/
def P7150395017128416785.Spec : Prop :=
  ∀ n, P7150395017128416785.a n = A308135 (n + 1)

end A308135

/-! ## A308135.P2411621161106991649

`A001065(n+1)-A007947(n+1)*A336567(n+1)`
-/

namespace A308135.P2411621161106991649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A007947 (n + 1) * A336567 (n + 1)

end

end A308135.P2411621161106991649

namespace A308135

/-- `A001065(n+1)-A007947(n+1)*A336567(n+1)` -/
def P2411621161106991649.Spec : Prop :=
  ∀ n, P2411621161106991649.a n = A308135 (n + 1)

end A308135

/-! ## A308135.P18213946108577615957

`A000203(n+1)-A389446(n+1)*A389448(n+1)`
-/

namespace A308135.P18213946108577615957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A389446 (n + 1) * A389448 (n + 1)

end

end A308135.P18213946108577615957

namespace A308135

/-- `A000203(n+1)-A389446(n+1)*A389448(n+1)` -/
def P18213946108577615957.Spec : Prop :=
  ∀ n, P18213946108577615957.a n = A308135 (n + 1)

end A308135

/-! ## A308135.P17039610043363481456

`A389446(n+1)*A389447(n+1)-A057723(n+1)`
-/

namespace A308135.P17039610043363481456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389446 (n + 1) * A389447 (n + 1) - A057723 (n + 1)

end

end A308135.P17039610043363481456

namespace A308135

/-- `A389446(n+1)*A389447(n+1)-A057723(n+1)` -/
def P17039610043363481456.Spec : Prop :=
  ∀ n, P17039610043363481456.a n = A308135 (n + 1)

end A308135

/-! ## A308135.P6443149385353078069

`(A389447(n+1)-A389448(n+1))*A389446(n+1)`
-/

namespace A308135.P6443149385353078069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A389447 (n + 1) - A389448 (n + 1)) * A389446 (n + 1)

end

end A308135.P6443149385353078069

namespace A308135

/-- `(A389447(n+1)-A389448(n+1))*A389446(n+1)` -/
def P6443149385353078069.Spec : Prop :=
  ∀ n, P6443149385353078069.a n = A308135 (n + 1)

end A308135

/-!
# A308136: Number of (undirected) Hamiltonian paths in the 2n-crossed prism graph.

The programs for A308136, the canonical program `A308136.P2667834203208277222` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308136 has offset 2).

The definition of A308136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308136.P12153190780997855938

`3*2^(n+2)*(n+2)*(1+n+2)`
-/

namespace A308136.P12153190780997855938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 2 ^ (n + 2) * (n + 2) * (1 + (n + 2))

end

end A308136.P12153190780997855938

namespace A308136

/-- `3*2^(n+2)*(n+2)*(1+n+2)` -/
def P12153190780997855938.Spec : Prop :=
  ∀ n, (P12153190780997855938.a n : ℤ) = A308136 (n + 2)

theorem P12153190780997855938.correct : P12153190780997855938.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A308136, Nat.add_sub_cancel, A308136.P12153190780997855938.a, A308136.P2667834203208277222.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A308136, Nat.add_sub_cancel, A308136.P12153190780997855938.a, A308136.P2667834203208277222.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A308136

/-! ## A308136.P17821093790045075396

`A137885(n+2)/2`
-/

namespace A308136.P17821093790045075396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137885 (n + 2) : ℚ) / 2

end

end A308136.P17821093790045075396

namespace A308136

/-- `A137885(n+2)/2` -/
def P17821093790045075396.Spec : Prop :=
  ∀ n, P17821093790045075396.a n = (A308136 (n + 2) : ℚ)

theorem P17821093790045075396.correct : P17821093790045075396.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A308136, Nat.add_sub_cancel, A308136.P17821093790045075396.a, A308136.P2667834203208277222.a, A137885, A137885.P12562094174147591560.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A308136, Nat.add_sub_cancel, A308136.P17821093790045075396.a, A308136.P2667834203208277222.a, A137885, A137885.P12562094174147591560.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A308136

/-! ## A308136.P2667834203208277222

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=72, a(1)=288, a(2)=960`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A308136

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P2667834203208277222.Spec : Prop :=
  ∀ n, P2667834203208277222.a n = A308136 (n + 2)

theorem P2667834203208277222.correct : P2667834203208277222.Spec := by
  intro n
  simp only [A308136, Nat.add_sub_cancel]

end A308136

/-! ## A308136.P13568118208907582960

`Δ[3*A196514(n+1)]`
-/

namespace A308136.P13568118208907582960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A196514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308136.P13568118208907582960

namespace A308136

/-- `Δ[3*A196514(n+1)]` -/
def P13568118208907582960.Spec : Prop :=
  ∀ n, P13568118208907582960.a n = A308136 (n + 2)

theorem P13568118208907582960.correct : P13568118208907582960.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A308136, Nat.add_sub_cancel, A308136.P13568118208907582960.f1, A308136.P13568118208907582960.a, A308136.P2667834203208277222.a, A196514, A196514.P10306210964865599694.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A308136, Nat.add_sub_cancel, A308136.P13568118208907582960.f1, A308136.P13568118208907582960.a, A308136.P2667834203208277222.a, A196514, A196514.P10306210964865599694.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A308136

/-!
# A308137: Number of (undirected) Hamiltonian paths on the n-prism graph.

The programs for A308137, the canonical program `A308137.P11361518075608229815` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308137 has offset 3).

The definition of A308137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308137.P11361518075608229815

`(n+3)*(3+(-1)^(n+3)+2*(n+3)²)/2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A308137

/-- `(n+3)*(3+(-1)^(n+3)+2*(n+3)²)/2` -/
def P11361518075608229815.Spec : Prop :=
  ∀ n, P11361518075608229815.a n = (A308137 (n + 3) : ℚ)

end A308137

/-! ## A308137.P13774278934446227860

`(or(1, (n+3)²)+1)*(n+3)`
-/

namespace A308137.P13774278934446227860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 ((n + 3) ^ 2) + 1) * (n + 3)

end

end A308137.P13774278934446227860

namespace A308137

/-- `(or(1, (n+3)²)+1)*(n+3)` -/
def P13774278934446227860.Spec : Prop :=
  ∀ n, (P13774278934446227860.a n : ℤ) = A308137 (n + 3)

end A308137

/-! ## A308137.P17774066870646948968

`(gcd(2, n+1)+(n+3)²)*(n+3)`
-/

namespace A308137.P17774066870646948968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) + (n + 3) ^ 2) * (n + 3)

end

end A308137.P17774066870646948968

namespace A308137

/-- `(gcd(2, n+1)+(n+3)²)*(n+3)` -/
def P17774066870646948968.Spec : Prop :=
  ∀ n, (P17774066870646948968.a n : ℤ) = A308137 (n + 3)

end A308137

/-! ## A308137.P7684145539137933776

`2*A074149(n+3)`
-/

namespace A308137.P7684145539137933776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074149 (n + 3)

end

end A308137.P7684145539137933776

namespace A308137

/-- `2*A074149(n+3)` -/
def P7684145539137933776.Spec : Prop :=
  ∀ n, P7684145539137933776.a n = A308137 (n + 3)

end A308137

/-! ## A308137.P2712738477086076832

`A022998(n+3)+(n+3)^3`
-/

namespace A308137.P2712738477086076832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (n + 3) + ((n + 3) ^ 3 : ℤ)

end

end A308137.P2712738477086076832

namespace A308137

/-- `A022998(n+3)+(n+3)^3` -/
def P2712738477086076832.Spec : Prop :=
  ∀ n, P2712738477086076832.a n = A308137 (n + 3)

end A308137

/-! ## A308137.P1791088415617728915

`A296070(n+3)+(n+3)^3`
-/

namespace A308137.P1791088415617728915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296070 (n + 3) + ((n + 3) ^ 3 : ℤ)

end

end A308137.P1791088415617728915

namespace A308137

/-- `A296070(n+3)+(n+3)^3` -/
def P1791088415617728915.Spec : Prop :=
  ∀ n, P1791088415617728915.a n = A308137 (n + 3)

end A308137

/-! ## A308137.P12982223200855816933

`(n+3)*A248800(n+3)`
-/

namespace A308137.P12982223200855816933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A248800 (n + 3)

end

end A308137.P12982223200855816933

namespace A308137

/-- `(n+3)*A248800(n+3)` -/
def P12982223200855816933.Spec : Prop :=
  ∀ n, P12982223200855816933.a n = A308137 (n + 3)

end A308137

/-! ## A308137.P6654015972787675999

`A257088(n+3)+(n+3)^3`
-/

namespace A308137.P6654015972787675999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (n + 3) + ((n + 3) ^ 3 : ℤ)

end

end A308137.P6654015972787675999

namespace A308137

/-- `A257088(n+3)+(n+3)^3` -/
def P6654015972787675999.Spec : Prop :=
  ∀ n, P6654015972787675999.a n = A308137 (n + 3)

end A308137

/-!
# A308140: Sum of the largest side lengths of all integer-sided triangles with squarefree side lengths and perimeter n.

The programs for A308140, there is no canonical definition to state claims against.
-/

/-! ## A308140.P12031838012235180564

`A308116(n+1)-(A308143(n+1)+A308133(n+1))`
-/

namespace A308140.P12031838012235180564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308116 (n + 1) - (A308143 (n + 1) + A308133 (n + 1))

end

end A308140.P12031838012235180564

/-!
# A308141: Number of (undirected) Hamiltonian paths in the n X n rook graph.

The programs for A308141, there is no canonical definition to state claims against.
-/

/-! ## A308141.P14001047285574764426

`floor(A096970(n+1)/2)`
-/

namespace A308141.P14001047285574764426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096970 (n + 1) : ℚ) / 2⌋

end

end A308141.P14001047285574764426

/-!
# A308142: Number of (undirected) Hamiltonian paths in the n-triangular graph.

The programs for A308142, there is no canonical definition to state claims against.
-/

/-! ## A308142.P16865488254950618967

`A137892(n+2)/2`
-/

namespace A308142.P16865488254950618967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137892 (n + 2) : ℚ) / 2

end

end A308142.P16865488254950618967

/-!
# A308143: Take all the integer-sided triangles with perimeter n and squarefree sides a, b, and c such that a <= b <= c. a(n) is the sum of all the b's.

The programs for A308143, there is no canonical definition to state claims against.
-/

/-! ## A308143.P15202940947207337958

`A308116(n+1)-(A308140(n+1)+A308133(n+1))`
-/

namespace A308143.P15202940947207337958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308116 (n + 1) - (A308140 (n + 1) + A308133 (n + 1))

end

end A308143.P15202940947207337958

/-!
# A308144: Number of (undirected) Hamiltonian paths on the triangular grid with n vertices on each side.

The programs for A308144, there is no canonical definition to state claims against.
-/

/-! ## A308144.P16799291975410327311

`ceil(A112675(n+1)/2)`
-/

namespace A308144.P16799291975410327311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112675 (n + 1) : ℚ) / 2⌉

end

end A308144.P16799291975410327311

/-! ## A308144.P4531427799910150405

`A112675(n+1)/∑[A108658(n)]`
-/

namespace A308144.P4531427799910150405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108658 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112675 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A308144.P4531427799910150405

/-! ## A308144.P8566470811544099367

`A112675(n+1)/A036453(n+1)`
-/

namespace A308144.P8566470811544099367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112675 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A308144.P8566470811544099367

/-! ## A308144.P16039969913094086790

`(A112675(n+1)+A014376(n))/2`
-/

namespace A308144.P16039969913094086790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112675 (n + 1) + A014376 n : ℚ) / 2

end

end A308144.P16039969913094086790

/-! ## A308144.P6361106351415230875

`A112675(n+1)/A000032(A014376(n))`
-/

namespace A308144.P6361106351415230875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112675 (n + 1) : ℚ) / (A000032 (A014376 n).toNat : ℚ)

end

end A308144.P6361106351415230875

/-!
# A308146: Number of (undirected) Hamiltonian paths in the n X n white bishop graph.

The programs for A308146, there is no canonical definition to state claims against.
-/

/-! ## A308146.P7209968274931776361

`A234637(n+2)/2`
-/

namespace A308146.P7209968274931776361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234637 (n + 2) : ℚ) / 2

end

end A308146.P7209968274931776361

/-!
# A308147: Sum of the perimeters of all integer-sided isosceles triangles with perimeter n and prime side lengths.

The programs for A308147, there is no canonical definition to state claims against.
-/

/-! ## A308147.P10052421790148065151

`A070092(n+1)*A131209(n)`
-/

namespace A308147.P10052421790148065151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070092 (n + 1) * A131209 n

end

end A308147.P10052421790148065151

/-! ## A308147.P13875473808489299029

`A070092(n+1)*A182659(n)`
-/

namespace A308147.P13875473808489299029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070092 (n + 1) * A182659 n

end

end A308147.P13875473808489299029

/-!
# A308148: Number of length-n binary words avoiding (5+sqrt(5))/2-powers.

The programs for A308148, there is no canonical definition to state claims against.
-/

/-! ## A308148.P8583001718433952880

`A273154(n)-A137579(A316953(n+1))`
-/

namespace A308148.P8583001718433952880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273154 n - A137579 (A316953 (n + 1)).toNat

end

end A308148.P8583001718433952880

/-!
# A308149: Positive integers with Collatz trajectories that do not include the number 5.

The programs for A308149, there is no canonical definition to state claims against.
-/

/-! ## A308149.P7781978603804130284

`∪[A355406(n+1), A000079(n)]`
-/

namespace A308149.P7781978603804130284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308149.P7781978603804130284

/-! ## A308149.P3908974759589517143

`∪[A355406(n+1), A008862(n)]`
-/

namespace A308149.P3908974759589517143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308149.P3908974759589517143

/-! ## A308149.P8190657333617649887

`∪[A355406(n+1), A008863(n)]`
-/

namespace A308149.P8190657333617649887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308149.P8190657333617649887

/-! ## A308149.P6860993542091390804

`∪[A355406(n+1), A051535(n)]`
-/

namespace A308149.P6860993542091390804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308149.P6860993542091390804

/-! ## A308149.P4909864549937266158

`∪[A355406(n+1), A145116(n)]`
-/

namespace A308149.P4909864549937266158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145116 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308149.P4909864549937266158

/-! ## A308149.P7780731161276683950

`∪[A355406(n+1), A145117(n)]`
-/

namespace A308149.P7780731161276683950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145117 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308149.P7780731161276683950

/-! ## A308149.P6106807366502721752

`∪[A355406(n+1), A172319(n)]`
-/

namespace A308149.P6106807366502721752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172319 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308149.P6106807366502721752

/-! ## A308149.P8598948990137800499

`∪[A355406(n+1), A172320(n)]`
-/

namespace A308149.P8598948990137800499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172320 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308149.P8598948990137800499

/-! ## A308149.P15935842898589377468

`∪[A355406(n+1), A219531(n)]`
-/

namespace A308149.P15935842898589377468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219531 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308149.P15935842898589377468

/-! ## A308149.P10677718083572344971

`∪[A355406(n+1), A219615(n)]`
-/

namespace A308149.P10677718083572344971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219615 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308149.P10677718083572344971

/-!
# A308150: Numbers k such that sigma(k) mod k is prime, where sigma = A000203.

The programs for A308150, the canonical program `A308150.P6415626369365081280` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308150 has offset 1).

The definition of A308150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4677 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308150.P6415626369365081280

`eq[3, a(A054024(n))+1]` with `a(0)=4, a(1)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A308150

/-- `eq[3, a(A054024(n))+1]` -/
def P6415626369365081280.Spec : Prop :=
  ∀ n, (P6415626369365081280.a n : ℤ) = A308150 (n + 1)

theorem P6415626369365081280.correct : P6415626369365081280.Spec := by
  intro n
  simp only [A308150, Nat.add_sub_cancel]

end A308150

/-! ## A308150.P16398626001143456977

`eq[3, A242482(a(A054024(n)))]` with `a(0)=30, a(1)=1`
-/

namespace A308150.P16398626001143456977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [30, 1] fun n f2 =>
  A242482 (f2 (A054024 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308150.P16398626001143456977

namespace A308150

/-- `eq[3, A242482(a(A054024(n)))]` -/
def P16398626001143456977.Spec : Prop :=
  ∀ n, (P16398626001143456977.a n : ℤ) = A308150 (n + 1)

end A308150

/-! ## A308150.P4061101062186275405

`eq[1, A018783(A054024(n+1))]+1`
-/

namespace A308150.P4061101062186275405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A054024 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308150.P4061101062186275405

namespace A308150

/-- `eq[1, A018783(A054024(n+1))]+1` -/
def P4061101062186275405.Spec : Prop :=
  ∀ n, (P4061101062186275405.a n : ℤ) = A308150 (n + 1)

end A308150

/-! ## A308150.P17823917222315286169

`eq[1, A001065(A054013(n+1)+1)]+1`
-/

namespace A308150.P17823917222315286169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A054013 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308150.P17823917222315286169

namespace A308150

/-- `eq[1, A001065(A054013(n+1)+1)]+1` -/
def P17823917222315286169.Spec : Prop :=
  ∀ n, (P17823917222315286169.a n : ℤ) = A308150 (n + 1)

end A308150

/-! ## A308150.P16918377980595912334

`eq[3, A249602(a(A054024(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A308150.P16918377980595912334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A249602 (f2 (A054024 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308150.P16918377980595912334

namespace A308150

/-- `eq[3, A249602(a(A054024(n)))]` -/
def P16918377980595912334.Spec : Prop :=
  ∀ n, (P16918377980595912334.a n : ℤ) = A308150 (n + 1)

end A308150

/-!
# A308151: Triangular array: each row partitions the partitions of n into n parts; of which the k-th part is the number of partitions having stay number k-1; see Comments.

The programs for A308151, there is no canonical definition to state claims against.
-/

/-! ## A308151.P1233176879723321941

`A001840(A307432(n)^A050315(n+5))%4`
-/

namespace A308151.P1233176879723321941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001840 (SequenceMachineLib.roundAway ((A307432 n : ℚ) ^ (A050315 (n + 5) : ℤ))).toNat) 4

end

end A308151.P1233176879723321941

/-! ## A308151.P1708373747920724703

`A060500(A307432(n)^A097724(n))`
-/

namespace A308151.P1708373747920724703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (SequenceMachineLib.roundAway ((A307432 n : ℚ) ^ (A097724 n : ℤ))).toNat

end

end A308151.P1708373747920724703

/-! ## A308151.P18035714343733395411

`A152487(A307432(n)^A000720(n+1))`
-/

namespace A308151.P18035714343733395411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152487 (SequenceMachineLib.roundAway ((A307432 n : ℚ) ^ (A000720 (n + 1) : ℤ))).toNat

end

end A308151.P18035714343733395411

/-! ## A308151.P9776111816244348344

`A071074(A307432(n)^A002186(n+2))`
-/

namespace A308151.P9776111816244348344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071074 (SequenceMachineLib.roundAway ((A307432 n : ℚ) ^ (A002186 (n + 2) : ℤ))).toNat

end

end A308151.P9776111816244348344

/-! ## A308151.P6905388803657544615

`A332677(A319730(n+1))`
-/

namespace A308151.P6905388803657544615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332677 (A319730 (n + 1)).toNat

end

end A308151.P6905388803657544615

/-!
# A308152: G.f.: x * Product_{j>=1, k>=1} ((1 + x^(j*k))/(1 - x^(j*k)))^a(j).

The programs for A308152, there is no canonical definition to state claims against.
-/

/-! ## A308152.P7042568897756597042

`A004001(A150804(n)+A150784(n))`
-/

namespace A308152.P7042568897756597042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A150804 n + A150784 n).toNat

end

end A308152.P7042568897756597042

/-! ## A308152.P9341942623772570492

`A006949(A150838(n)+A150824(n))`
-/

namespace A308152.P9341942623772570492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (A150838 n + A150824 n).toNat

end

end A308152.P9341942623772570492

/-!
# A308153: G.f.: x * Product_{j>=1, k>=1} 1/(1 - a(j)*x^(j*k)).

The programs for A308153, there is no canonical definition to state claims against.
-/

/-! ## A308153.P9345981304423530590

`A301467(n+1)-A351014(A029907(n))`
-/

namespace A308153.P9345981304423530590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301467 (n + 1) - A351014 (A029907 n).toNat

end

end A308153.P9345981304423530590

/-! ## A308153.P13022205307708137921

`A301467(n+1)-A351014(A056654(n+1))`
-/

namespace A308153.P13022205307708137921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301467 (n + 1) - A351014 (A056654 (n + 1)).toNat

end

end A308153.P13022205307708137921

/-! ## A308153.P3859512693165554907

`A289496(A003006(n+1)*A003022(n+2))`
-/

namespace A308153.P3859512693165554907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (A003006 (n + 1) * A003022 (n + 2)).toNat

end

end A308153.P3859512693165554907

/-!
# A308154: G.f.: x * Product_{j>=1, k>=1} (1 + a(j)*x^(j*k)).

The programs for A308154, there is no canonical definition to state claims against.
-/

/-! ## A308154.P15251317928142739903

`A320536(A197467(n+1))`
-/

namespace A308154.P15251317928142739903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A197467 (n + 1)).toNat

end

end A308154.P15251317928142739903

/-! ## A308154.P11415908632562537265

`A081753(A001844(n)+A001788(n))`
-/

namespace A308154.P11415908632562537265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A001844 n + A001788 n).toNat

end

end A308154.P11415908632562537265

/-! ## A308154.P6115826819642038945

`xor(A033909(A022345(n)), A192400(n))`
-/

namespace A308154.P6115826819642038945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033909 (A022345 n).toNat) (A192400 n)

end

end A308154.P6115826819642038945

/-!
# A308156: Number of (undirected) cycles in the n-triangular honeycomb obtuse knight graph.

The programs for A308156, there is no canonical definition to state claims against.
-/

/-! ## A308156.P2338783834119866107

`A025839(A114303(n))`
-/

namespace A308156.P2338783834119866107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025839 (A114303 n).toNat

end

end A308156.P2338783834119866107

/-! ## A308156.P8076000983496584955

`Δ[A108561(Δ[A075834(n)])]`
-/

namespace A308156.P8076000983496584955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075834 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308156.P8076000983496584955

/-!
# A308157: Sum of the perimeters of all integer-sided obtuse triangles with perimeter n.

The programs for A308157, there is no canonical definition to state claims against.
-/

/-! ## A308157.P17241391373581639625

`(n+1)*A070101(n+1)`
-/

namespace A308157.P17241391373581639625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A070101 (n + 1)

end

end A308157.P17241391373581639625

/-! ## A308157.P10779901771707152415

`∑{d}[n+1, (n+1)*A070102(#)]`
-/

namespace A308157.P10779901771707152415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * A070102 d

end

end A308157.P10779901771707152415

/-! ## A308157.P14578756788285515363

`A070101(n+1)*A326178(n)`
-/

namespace A308157.P14578756788285515363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070101 (n + 1) * A326178 n

end

end A308157.P14578756788285515363

/-! ## A308157.P11345328206073425387

`(n+1)*(A070106(n+1)+A024156(n+1))`
-/

namespace A308157.P11345328206073425387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A070106 (n + 1) + A024156 (n + 1))

end

end A308157.P11345328206073425387

/-! ## A308157.P3564292319075429113

`(n+1)*(A005044(n+1)-(A070093(n+1)+A024155(n+1)))`
-/

namespace A308157.P3564292319075429113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A005044 (n + 1) - (A070093 (n + 1) + A024155 (n + 1)))

end

end A308157.P3564292319075429113

/-! ## A308157.P8965401661739107532

`A308214(n+1)+A308218(n+1)+A308216(n+1)`
-/

namespace A308157.P8965401661739107532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308214 (n + 1) + (A308218 (n + 1) + A308216 (n + 1))

end

end A308157.P8965401661739107532

/-! ## A308157.P1793000127781317311

`A070101(n+1)*A131209(n)`
-/

namespace A308157.P1793000127781317311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070101 (n + 1) * A131209 n

end

end A308157.P1793000127781317311

/-! ## A308157.P15399164449513292610

`∑{d}[n+1, A070102(#)]*A131209(n)`
-/

namespace A308157.P15399164449513292610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A070102 d) * A131209 n

end

end A308157.P15399164449513292610

/-! ## A308157.P11282836999249522199

`∑{d}[A131209(n), A070102(#)*A131209(n)]`
-/

namespace A308157.P11282836999249522199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A070102 d * A131209 n

end

end A308157.P11282836999249522199

/-!
# A308158: Sum of the smallest side lengths of all integer-sided isosceles triangles with perimeter n.

The programs for A308158, the canonical program `A308158.P1496558067925969562` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308158 has offset 1).

The definition of A308158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308158.P1496558067925969562

`A211524(A271324(n+1)+2)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A308158

/-- `A211524(A271324(n+1)+2)` -/
def P1496558067925969562.Spec : Prop :=
  ∀ n, P1496558067925969562.a n = A308158 (n + 1)

theorem P1496558067925969562.correct : P1496558067925969562.Spec := by
  intro n
  simp only [A308158, Nat.add_sub_cancel]

end A308158

/-! ## A308158.P1873074481761332609

`A307686(n+1)-A308107(n+1)`
-/

namespace A308158.P1873074481761332609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307686 (n + 1) - A308107 (n + 1)

end

end A308158.P1873074481761332609

namespace A308158

/-- `A307686(n+1)-A308107(n+1)` -/
def P1873074481761332609.Spec : Prop :=
  ∀ n, P1873074481761332609.a n = A308158 (n + 1)

end A308158

/-! ## A308158.P11516562547964918731

`A073458(A033641(n+1))`
-/

namespace A308158.P11516562547964918731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073458 (A033641 (n + 1)).toNat

end

end A308158.P11516562547964918731

namespace A308158

/-- `A073458(A033641(n+1))` -/
def P11516562547964918731.Spec : Prop :=
  ∀ n, P11516562547964918731.a n = A308158 (n + 1)

end A308158

/-! ## A308158.P1776217185820679959

`A253589(A002309(n+1)%A217863(n+1))`
-/

namespace A308158.P1776217185820679959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253589 (Int.tmod (A002309 (n + 1)) (A217863 (n + 1))).toNat

end

end A308158.P1776217185820679959

namespace A308158

/-- `A253589(A002309(n+1)%A217863(n+1))` -/
def P1776217185820679959.Spec : Prop :=
  ∀ n, P1776217185820679959.a n = A308158 (n + 1)

end A308158

/-! ## A308158.P4142704419008323930

`A329697(ceil(A196232(n+9)/A283691(n+1)))`
-/

namespace A308158.P4142704419008323930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 ⌈(A196232 (n + 9) : ℚ) / (A283691 (n + 1) : ℚ)⌉.toNat

end

end A308158.P4142704419008323930

namespace A308158

/-- `A329697(ceil(A196232(n+9)/A283691(n+1)))` -/
def P4142704419008323930.Spec : Prop :=
  ∀ n, P4142704419008323930.a n = A308158 (n + 1)

end A308158

/-!
# A308159: Sum of the largest sides of all integer-sided isosceles triangles with perimeter n.

The programs for A308159, the canonical program `A308159.P13651073618713551582` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308159 has offset 1).

The definition of A308159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308159.P636299070052248429

`A307966(n+1)-A308108(n+1)`
-/

namespace A308159.P636299070052248429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307966 (n + 1) - A308108 (n + 1)

end

end A308159.P636299070052248429

namespace A308159

/-- `A307966(n+1)-A308108(n+1)` -/
def P636299070052248429.Spec : Prop :=
  ∀ n, P636299070052248429.a n = A308159 (n + 1)

end A308159

/-! ## A308159.P13651073618713551582

`A008619(n)*A059169(n+1)-A005044(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A308159

/-- `A008619(n)*A059169(n+1)-A005044(n+1)` -/
def P13651073618713551582.Spec : Prop :=
  ∀ n, P13651073618713551582.a n = A308159 (n + 1)

theorem P13651073618713551582.correct : P13651073618713551582.Spec := by
  intro n
  simp only [A308159, Nat.add_sub_cancel]

end A308159

/-! ## A308159.P11802309131698925966

`A308123(n+1)-(A308160(n+1)+A308158(n+1))`
-/

namespace A308159.P11802309131698925966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308123 (n + 1) - (A308160 (n + 1) + A308158 (n + 1))

end

end A308159.P11802309131698925966

namespace A308159

/-- `A308123(n+1)-(A308160(n+1)+A308158(n+1))` -/
def P11802309131698925966.Spec : Prop :=
  ∀ n, P11802309131698925966.a n = A308159 (n + 1)

end A308159

/-! ## A308159.P16864309373891736680

`A059169(n+1)*A110654(n+1)-A005044(n+1)`
-/

namespace A308159.P16864309373891736680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1) * A110654 (n + 1) - A005044 (n + 1)

end

end A308159.P16864309373891736680

namespace A308159

/-- `A059169(n+1)*A110654(n+1)-A005044(n+1)` -/
def P16864309373891736680.Spec : Prop :=
  ∀ n, P16864309373891736680.a n = A308159 (n + 1)

end A308159

/-! ## A308159.P5240995369033923862

`A308089(n+1)-(A336972(n+1)+A308108(n+1))`
-/

namespace A308159.P5240995369033923862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308089 (n + 1) - (A336972 (n + 1) + A308108 (n + 1))

end

end A308159.P5240995369033923862

namespace A308159

/-- `A308089(n+1)-(A336972(n+1)+A308108(n+1))` -/
def P5240995369033923862.Spec : Prop :=
  ∀ n, P5240995369033923862.a n = A308159 (n + 1)

end A308159

/-! ## A308159.P3075981495381490183

`A336974(n+1)-(A308108(n+1)+A308096(n+1))`
-/

namespace A308159.P3075981495381490183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336974 (n + 1) - (A308108 (n + 1) + A308096 (n + 1))

end

end A308159.P3075981495381490183

namespace A308159

/-- `A336974(n+1)-(A308108(n+1)+A308096(n+1))` -/
def P3075981495381490183.Spec : Prop :=
  ∀ n, P3075981495381490183.a n = A308159 (n + 1)

end A308159

/-! ## A308159.P16806132245727309032

`A336973(n+1)-(A308108(n+1)+A307686(n+1))`
-/

namespace A308159.P16806132245727309032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336973 (n + 1) - (A308108 (n + 1) + A307686 (n + 1))

end

end A308159.P16806132245727309032

namespace A308159

/-- `A336973(n+1)-(A308108(n+1)+A307686(n+1))` -/
def P16806132245727309032.Spec : Prop :=
  ∀ n, P16806132245727309032.a n = A308159 (n + 1)

end A308159

/-! ## A308159.P13346409861880588491

`A002264((A059169(n+1)+n+1)*A059169(n+1))`
-/

namespace A308159.P13346409861880588491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((A059169 (n + 1) + (n + 1 : ℤ)) * A059169 (n + 1)).toNat

end

end A308159.P13346409861880588491

namespace A308159

/-- `A002264((A059169(n+1)+n+1)*A059169(n+1))` -/
def P13346409861880588491.Spec : Prop :=
  ∀ n, P13346409861880588491.a n = A308159 (n + 1)

end A308159

/-!
# A308160: Take all the integer-sided isosceles triangles with perimeter n and sides a, b, and c such that a <= b <= c. a(n) is the sum of all the b's.

The programs for A308160, the canonical program `A308160.P2832969002386944529` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308160 has offset 1).

The definition of A308160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308160.P3116388974615975926

`∑[floor(2*n/gcd(n+1, n-3)-n)]/2`
-/

namespace A308160.P3116388974615975926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 3) : ℚ) - (n : ℚ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A308160.P3116388974615975926

namespace A308160

/-- `∑[floor(2*n/gcd(n+1, n-3)-n)]/2` -/
def P3116388974615975926.Spec : Prop :=
  ∀ n, P3116388974615975926.a n = (A308160 (n + 1) : ℚ)

end A308160

/-! ## A308160.P2832969002386944529

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=2, a(5)=2, a(6)=5, a(7)=3, a(8)=7`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A308160

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P2832969002386944529.Spec : Prop :=
  ∀ n, P2832969002386944529.a n = A308160 (n + 1)

theorem P2832969002386944529.correct : P2832969002386944529.Spec := by
  intro n
  simp only [A308160, Nat.add_sub_cancel]

end A308160

/-! ## A308160.P6850317674634538191

`A296805(n+1)/2`
-/

namespace A308160.P6850317674634538191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296805 (n + 1) : ℚ) / 2

end

end A308160.P6850317674634538191

namespace A308160

/-- `A296805(n+1)/2` -/
def P6850317674634538191.Spec : Prop :=
  ∀ n, P6850317674634538191.a n = (A308160 (n + 1) : ℚ)

end A308160

/-! ## A308160.P13411810597549466834

`∑[lcm(4, n+1)/4-A008619(n)]`
-/

namespace A308160.P13411810597549466834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) : ℚ) / 4 - (A008619 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308160.P13411810597549466834

namespace A308160

/-- `∑[lcm(4, n+1)/4-A008619(n)]` -/
def P13411810597549466834.Spec : Prop :=
  ∀ n, P13411810597549466834.a n = (A308160 (n + 1) : ℚ)

end A308160

/-! ## A308160.P3212442861287771021

`∑[A060819(n+1)-ceil((n+1)/2)]`
-/

namespace A308160.P3212442861287771021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1) - ⌈(n + 1 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308160.P3212442861287771021

namespace A308160

/-- `∑[A060819(n+1)-ceil((n+1)/2)]` -/
def P3212442861287771021.Spec : Prop :=
  ∀ n, P3212442861287771021.a n = A308160 (n + 1)

end A308160

/-! ## A308160.P5380398154113640935

`(A272212(n)+A059169(n+1))/2`
-/

namespace A308160.P5380398154113640935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272212 n + A059169 (n + 1) : ℚ) / 2

end

end A308160.P5380398154113640935

namespace A308160

/-- `(A272212(n)+A059169(n+1))/2` -/
def P5380398154113640935.Spec : Prop :=
  ∀ n, P5380398154113640935.a n = (A308160 (n + 1) : ℚ)

end A308160

/-! ## A308160.P13365538983556904927

`A059169(n+1)/2*A037915(n)`
-/

namespace A308160.P13365538983556904927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059169 (n + 1) : ℚ) / 2 * (A037915 n : ℚ)

end

end A308160.P13365538983556904927

namespace A308160

/-- `A059169(n+1)/2*A037915(n)` -/
def P13365538983556904927.Spec : Prop :=
  ∀ n, P13365538983556904927.a n = (A308160 (n + 1) : ℚ)

end A308160

/-! ## A308160.P5904200330096566436

`(A308123(n+1)-A296141(n+1))/2`
-/

namespace A308160.P5904200330096566436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308123 (n + 1) - A296141 (n + 1) : ℚ) / 2

end

end A308160.P5904200330096566436

namespace A308160

/-- `(A308123(n+1)-A296141(n+1))/2` -/
def P5904200330096566436.Spec : Prop :=
  ∀ n, P5904200330096566436.a n = (A308160 (n + 1) : ℚ)

end A308160

/-! ## A308160.P4888494266950408306

`∑[A142150(n)-A142150(A152271(n))]`
-/

namespace A308160.P4888494266950408306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n - A142150 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308160.P4888494266950408306

namespace A308160

/-- `∑[A142150(n)-A142150(A152271(n))]` -/
def P4888494266950408306.Spec : Prop :=
  ∀ n, P4888494266950408306.a n = A308160 (n + 1)

end A308160

/-! ## A308160.P15892837499132650086

`∑[A158416(n)-A158416(A152271(n))]`
-/

namespace A308160.P15892837499132650086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n - A158416 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308160.P15892837499132650086

namespace A308160

/-- `∑[A158416(n)-A158416(A152271(n))]` -/
def P15892837499132650086.Spec : Prop :=
  ∀ n, P15892837499132650086.a n = A308160 (n + 1)

end A308160

/-! ## A308160.P261261713668017273

`(A110660(n)-A110660(A110654(n)))/2`
-/

namespace A308160.P261261713668017273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 n - A110660 (A110654 n).toNat : ℚ) / 2

end

end A308160.P261261713668017273

namespace A308160

/-- `(A110660(n)-A110660(A110654(n)))/2` -/
def P261261713668017273.Spec : Prop :=
  ∀ n, P261261713668017273.a n = (A308160 (n + 1) : ℚ)

end A308160

/-! ## A308160.P13277649154935121800

`∑[A026741(A026741(n+1))-A110654(n+1)]`
-/

namespace A308160.P13277649154935121800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (n + 1)).toNat - A110654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308160.P13277649154935121800

namespace A308160

/-- `∑[A026741(A026741(n+1))-A110654(n+1)]` -/
def P13277649154935121800.Spec : Prop :=
  ∀ n, P13277649154935121800.a n = A308160 (n + 1)

end A308160

/-! ## A308160.P7659540055284915081

`abs(Δ[(A215495(n)/2)²]/2)`
-/

namespace A308160.P7659540055284915081
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A215495 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) / 2|

end

end A308160.P7659540055284915081

namespace A308160

/-- `abs(Δ[(A215495(n)/2)²]/2)` -/
def P7659540055284915081.Spec : Prop :=
  ∀ n, P7659540055284915081.a n = (A308160 (n + 1) : ℚ)

end A308160

/-! ## A308160.P15547283110363480601

`abs(Δ[A000124(A130722(n))])`
-/

namespace A308160.P15547283110363480601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A130722 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A308160.P15547283110363480601

namespace A308160

/-- `abs(Δ[A000124(A130722(n))])` -/
def P15547283110363480601.Spec : Prop :=
  ∀ n, P15547283110363480601.a n = A308160 (n + 1)

end A308160

/-! ## A308160.P2345347483200583662

`abs(Δ[A001971(A215495(n))])`
-/

namespace A308160.P2345347483200583662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A215495 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A308160.P2345347483200583662

namespace A308160

/-- `abs(Δ[A001971(A215495(n))])` -/
def P2345347483200583662.Spec : Prop :=
  ∀ n, P2345347483200583662.a n = A308160 (n + 1)

end A308160

/-! ## A308160.P10131038087794552845

`(A038714(2*n)-A038714(n+1))/2`
-/

namespace A308160.P10131038087794552845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038714 (2 * n) - A038714 (n + 1) : ℚ) / 2

end

end A308160.P10131038087794552845

namespace A308160

/-- `(A038714(2*n)-A038714(n+1))/2` -/
def P10131038087794552845.Spec : Prop :=
  ∀ n, P10131038087794552845.a n = (A308160 (n + 1) : ℚ)

end A308160

/-! ## A308160.P15150576479771365498

`A101883(2*(n+1))-(A101883(n+2)+n)`
-/

namespace A308160.P15150576479771365498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101883 (2 * (n + 1)) - (A101883 (n + 2) + (n : ℤ))

end

end A308160.P15150576479771365498

namespace A308160

/-- `A101883(2*(n+1))-(A101883(n+2)+n)` -/
def P15150576479771365498.Spec : Prop :=
  ∀ n, P15150576479771365498.a n = A308160 (n + 1)

end A308160

/-! ## A308160.P14604596052174657090

`A000124(A002265(2*n))-A000124(A002265(n+1))`
-/

namespace A308160.P14604596052174657090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A002265 (2 * n)).toNat - A000124 (A002265 (n + 1)).toNat

end

end A308160.P14604596052174657090

namespace A308160

/-- `A000124(A002265(2*n))-A000124(A002265(n+1))` -/
def P14604596052174657090.Spec : Prop :=
  ∀ n, P14604596052174657090.a n = A308160 (n + 1)

end A308160

/-! ## A308160.P6246446931204951359

`A161680(A008621(2*n))-A161680(A008621(n+1))`
-/

namespace A308160.P6246446931204951359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A008621 (2 * n)).toNat - A161680 (A008621 (n + 1)).toNat

end

end A308160.P6246446931204951359

namespace A308160

/-- `A161680(A008621(2*n))-A161680(A008621(n+1))` -/
def P6246446931204951359.Spec : Prop :=
  ∀ n, P6246446931204951359.a n = A308160 (n + 1)

end A308160

/-! ## A308160.P8220952438652929957

`A308096(n+1)-A308109(n+1)`
-/

namespace A308160.P8220952438652929957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (n + 1) - A308109 (n + 1)

end

end A308160.P8220952438652929957

namespace A308160

/-- `A308096(n+1)-A308109(n+1)` -/
def P8220952438652929957.Spec : Prop :=
  ∀ n, P8220952438652929957.a n = A308160 (n + 1)

end A308160

/-!
# A308161: Number of isomorphism classes of Eulerian oriented graphs with n vertices.

The programs for A308161, there is no canonical definition to state claims against.
-/

/-! ## A308161.P2868939799415836259

`A256156(A166297(n))+A166297(n)`
-/

namespace A308161.P2868939799415836259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256156 (A166297 n).toNat + A166297 n

end

end A308161.P2868939799415836259

/-! ## A308161.P3171807296073652488

`A018653(A198518(n))-A091247(n)`
-/

namespace A308161.P3171807296073652488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018653 (A198518 n).toNat - A091247 n

end

end A308161.P3171807296073652488

/-!
# A308162: Area of the largest unpainted rectangle that is guaranteed to exist in every n X n grid with n painted cells.

The programs for A308162, there is no canonical definition to state claims against.
-/

/-! ## A308162.P5518179481250900028

`A026922(A320924(n+1))`
-/

namespace A308162.P5518179481250900028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A320924 (n + 1)).toNat

end

end A308162.P5518179481250900028

/-! ## A308162.P3639719302444844515

`A004524(∑[A258571(n+1)])`
-/

namespace A308162.P3639719302444844515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A308162.P3639719302444844515

/-! ## A308162.P9663809975678324987

`A059169(A320924(n+1)+1)`
-/

namespace A308162.P9663809975678324987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A320924 (n + 1) + 1).toNat

end

end A308162.P9663809975678324987

/-!
# A308163: Numbers for which the sum of the digits of any divisor is a power of 2.

The programs for A308163, there is no canonical definition to state claims against.
-/

/-! ## A308163.P17831124648576378186

`∩[A028838(n+1), A072227(n+1)]`
-/

namespace A308163.P17831124648576378186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308163.P17831124648576378186

/-! ## A308163.P3850537835194741335

`∩[A028838(n+1), A161597(n+1)]`
-/

namespace A308163.P3850537835194741335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308163.P3850537835194741335

/-! ## A308163.P15959647766399259172

`∩[A028838(n+1), A165209(n+1)]`
-/

namespace A308163.P15959647766399259172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A308163.P15959647766399259172

/-! ## A308163.P3505686589758237878

`∑[A357072(A178734(n+2))]`
-/

namespace A308163.P3505686589758237878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357072 (A178734 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308163.P3505686589758237878

/-! ## A308163.P15069459404184467958

`lt[A194323(n+4), A194597(n+1)]`
-/

namespace A308163.P15069459404184467958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194323 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308163.P15069459404184467958

/-!
# A308164: a(n) is the number of irreducible element forms for Z/pZ, with p = prime(n).

The programs for A308164, there is no canonical definition to state claims against.
-/

/-! ## A308164.P2108342885826037515

`A028242(or(A029874(n), A345445(n+1)))`
-/

namespace A308164.P2108342885826037515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor (A029874 n) (A345445 (n + 1))).toNat

end

end A308164.P2108342885826037515

/-!
# A308165: Sum of the perimeters of all integer-sided triangles with perimeter n and prime sides.

The programs for A308165, there is no canonical definition to state claims against.
-/

/-! ## A308165.P2260907274946598340

`(n+1)*A070088(n+1)`
-/

namespace A308165.P2260907274946598340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A070088 (n + 1)

end

end A308165.P2260907274946598340

/-! ## A308165.P17212818911365037781

`A070088(n+1)*A326178(n)`
-/

namespace A308165.P17212818911365037781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) * A326178 n

end

end A308165.P17212818911365037781

/-! ## A308165.P569775966025049849

`(n+1)*(A070092(n+1)+A070090(n+1))`
-/

namespace A308165.P569775966025049849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A070092 (n + 1) + A070090 (n + 1))

end

end A308165.P569775966025049849

/-! ## A308165.P12774669748718124169

`(n+1)*(A070103(n+1)+A070095(n+1))`
-/

namespace A308165.P12774669748718124169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A070103 (n + 1) + A070095 (n + 1))

end

end A308165.P12774669748718124169

/-! ## A308165.P1272454047621698153

`A070088(n+1)*A131209(n)`
-/

namespace A308165.P1272454047621698153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) * A131209 n

end

end A308165.P1272454047621698153

/-! ## A308165.P6943162463313266974

`A070088(n+1)*A182659(n)`
-/

namespace A308165.P6943162463313266974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1) * A182659 n

end

end A308165.P6943162463313266974

/-!
# A308166: Number of integer-sided triangles with perimeter n such that the smallest side divides the largest.

The programs for A308166, there is no canonical definition to state claims against.
-/

/-! ## A308166.P16870950596099208366

`∑[∑{d}[n, (-1)^#]]+n-Δ[round((2-n)²/12)]`
-/

namespace A308166.P16870950596099208366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-1) ^ d

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 - (n : ℤ)) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) - (f3 (n + 1) - f3 n)

end

end A308166.P16870950596099208366

/-! ## A308166.P13002792680720824837

`ceil(n/2)-round(2*n/3)+∑[∑{d}[n, (-1)^#]]+n`
-/

namespace A308166.P13002792680720824837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-1) ^ d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ - SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A308166.P13002792680720824837

/-! ## A308166.P2404618839956334669

`A075997(n)-Δ[A211540(n)]`
-/

namespace A308166.P2404618839956334669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075997 n - (f1 (n + 1) - f1 n)

end

end A308166.P2404618839956334669

/-! ## A308166.P5782552155429150803

`A010761(n+1)-A059851(n)`
-/

namespace A308166.P5782552155429150803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010761 (n + 1) - A059851 n

end

end A308166.P5782552155429150803

/-! ## A308166.P6605433617223612281

`A330926(n+1)-A103221(n+2)`
-/

namespace A308166.P6605433617223612281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330926 (n + 1) - A103221 (n + 2)

end

end A308166.P6605433617223612281

/-! ## A308166.P9822859501976813521

`A008615(A016861(n))-A059851(n)`
-/

namespace A308166.P9822859501976813521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A016861 n).toNat - A059851 n

end

end A308166.P9822859501976813521

/-! ## A308166.P11932546102384726798

`A008615(A090771(n+1))-A059851(n)`
-/

namespace A308166.P11932546102384726798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A090771 (n + 1)).toNat - A059851 n

end

end A308166.P11932546102384726798

/-! ## A308166.P13791528363008615555

`A075997(n)+A110654(n)-A004396(n)`
-/

namespace A308166.P13791528363008615555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075997 n + (A110654 n - A004396 n)

end

end A308166.P13791528363008615555

/-! ## A308166.P14195539401124687405

`A004526(A008611(2*(n+1))-A271860(n))`
-/

namespace A308166.P14195539401124687405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008611 (2 * (n + 1)) - A271860 n).toNat

end

end A308166.P14195539401124687405

/-!
# A308167: Number of integer-sided triangles with perimeter n and sides a, b, and c such that a <= b <= c and a|b.

The programs for A308167, there is no canonical definition to state claims against.
-/

/-! ## A308167.P13576480939226159289

`∑[floor(∑{d}[n+1, -(-1)^#]/log(π))]`
-/

namespace A308167.P13576480939226159289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d)) : ℤ) : ℝ) / Real.log Real.pi⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308167.P13576480939226159289

/-! ## A308167.P13212802581968406907

`∑[n%2-(∑{d}[n+1, (-1)^#]+1)]`
-/

namespace A308167.P13212802581968406907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - (∑ d ∈ Nat.divisors (f2 n), (-1) ^ d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308167.P13212802581968406907

/-! ## A308167.P17905675018501846499

`∑[and(1, n)-(∑{d}[n+1, (-1)^#]+1)]`
-/

namespace A308167.P17905675018501846499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - (∑ d ∈ Nat.divisors (f2 n), (-1) ^ d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308167.P17905675018501846499

/-! ## A308167.P14555896242484501123

`∑[∑{d}[n+1, -(-1)^#]-log2(gcd(2, n))]`
-/

namespace A308167.P14555896242484501123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d)) : ℤ) : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308167.P14555896242484501123

/-! ## A308167.P32759936585144352

`∑[∑{d}[n+1, -(-1)^#]-char[2*n]]`
-/

namespace A308167.P32759936585144352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d)) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308167.P32759936585144352

/-! ## A308167.P17309028569360999437

`ceil(n/2)-∑[∑{d}[n+1, (-1)^#]+1]`
-/

namespace A308167.P17309028569360999437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-1) ^ d + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308167.P17309028569360999437

/-! ## A308167.P16737128876124520545

`∑[-(∑{d}[n+1, (-1)^#]+1)]+ceil(n/2)`
-/

namespace A308167.P16737128876124520545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f2 n), (-1) ^ d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌈(n : ℚ) / 2⌉

end

end A308167.P16737128876124520545

/-! ## A308167.P12411863888749522410

`∑[∑{d}[n+1, -(-1)^#]]%∑[∑[(-1)^n]]`
-/

namespace A308167.P12411863888749522410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d))

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A308167.P12411863888749522410

/-! ## A308167.P15311800432276323811

`floor(A271860(n+1)/2)`
-/

namespace A308167.P15311800432276323811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A271860 (n + 1) : ℚ) / 2⌋

end

end A308167.P15311800432276323811

/-! ## A308167.P9155222956370893441

`floor(A275495(n+1)-n/2)`
-/

namespace A308167.P9155222956370893441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A275495 (n + 1) : ℚ) - (n : ℚ) / 2⌋

end

end A308167.P9155222956370893441

/-!
# A308168: Numbers m that cannot be represented as a k-tuple factorial b!k for any b and k < m-1.

The programs for A308168, there is no canonical definition to state claims against.
-/

/-! ## A308168.P14417025414169544219

`lt[A078898(n)², A103506(n+1)]`
-/

namespace A308168.P14417025414169544219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308168.P14417025414169544219

/-! ## A308168.P18221398207759849086

`lt[A274174(A078898(n)), A103509(n+1)]`
-/

namespace A308168.P18221398207759849086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274174 (A078898 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308168.P18221398207759849086

/-! ## A308168.P11363574987938151615

`ceil(A327782(n+3)-atan(A168578(n+2))²/3)`
-/

namespace A308168.P11363574987938151615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327782 (n + 3) : ℝ) - Real.arctan (A168578 (n + 2) : ℝ) ^ 2 / 3⌉

end

end A308168.P11363574987938151615

/-! ## A308168.P4934198725672188540

`A008835(A120108(n))*A327782(n+3)`
-/

namespace A308168.P4934198725672188540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (A120108 n).toNat * A327782 (n + 3)

end

end A308168.P4934198725672188540

/-! ## A308168.P1788830225452735207

`A327782(n+3)+A000007(A140140(n+13))`
-/

namespace A308168.P1788830225452735207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327782 (n + 3) + A000007 (A140140 (n + 13)).toNat

end

end A308168.P1788830225452735207

/-!
# A308169: Numbers k such that A023896(k) mod A000203(k) is prime.

The programs for A308169, there is no canonical definition to state claims against.
-/

/-! ## A308169.P5058260483923286852

`eq[2, A053204(A341933(n+1))]+1`
-/

namespace A308169.P5058260483923286852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (A341933 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A308169.P5058260483923286852

/-! ## A308169.P3635247303451694748

`eq[2, A053204(A341933(A233583(n+1)))]`
-/

namespace A308169.P3635247303451694748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (A341933 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308169.P3635247303451694748

/-! ## A308169.P14304698054435006349

`lt[A270339(A318060(n+5)), n]`
-/

namespace A308169.P14304698054435006349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (A318060 (n + 5)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308169.P14304698054435006349

/-! ## A308169.P11040052612333831702

`A268335(n+3)+A256993(A077225(n))`
-/

namespace A308169.P11040052612333831702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 3) + A256993 (A077225 n).toNat

end

end A308169.P11040052612333831702

/-!
# A308170: Start with the number 7, repeatedly square every digit in place to get a new number; in the limit this process converges (reading from right to left) to the string shown here.

The programs for A308170, there is no canonical definition to state claims against.
-/

/-! ## A308170.P11644537120584169106

`A308171(A327376(n+1))`
-/

namespace A308170.P11644537120584169106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308171 (A327376 (n + 1)).toNat

end

end A308170.P11644537120584169106

/-! ## A308170.P7692437447966221274

`A308171(A093182(n+1))`
-/

namespace A308170.P7692437447966221274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308171 (A093182 (n + 1)).toNat

end

end A308170.P7692437447966221274

/-!
# A308174: Let EM denote the Ehrenfeucht-Mycielski sequence A038219, and let P(n) = [EM(1),...,EM(n)]. To compute EM(n+1) for n>=3, we find the longest suffix S (say) of P(n) which has previously appeared in P(n). Suppose the most recent appearance of S began at index n-t(n). Then a(n) = length of S, while t(n) is given in A308175.

The programs for A308174, there is no canonical definition to state claims against.
-/

/-! ## A308174.P9851693802106864798

`A160093(A004275(record[A033932(n)]))`
-/

namespace A308174.P9851693802106864798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160093 (A004275 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A308174.P9851693802106864798

/-! ## A308174.P17204917558083564426

`A306433(A219209(n)+5)`
-/

namespace A308174.P17204917558083564426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306433 (A219209 n + 5).toNat

end

end A308174.P17204917558083564426

/-! ## A308174.P9724087836153049296

`A297770(A341131(n)^A033630(3*n+2))`
-/

namespace A308174.P9724087836153049296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (SequenceMachineLib.roundAway ((A341131 (n + 10) : ℚ) ^ (A033630 (3 * n + 2) : ℤ))).toNat

end

end A308174.P9724087836153049296

/-! ## A308174.P11007294330521150860

`A297770(C(A341131(n), A033630(3*n+2)))`
-/

namespace A308174.P11007294330521150860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (Nat.choose (A341131 (n + 10)).toNat (A033630 (3 * n + 2)).toNat)

end

end A308174.P11007294330521150860

/-!
# A308176: Number of factors when x^3-x-1 is factorized mod the n-th prime.

The programs for A308176, there is no canonical definition to state claims against.
-/

/-! ## A308176.P229046755112469224

`ceil(cosh(sqrt(A086965(n+1))))`
-/

namespace A308176.P229046755112469224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sqrt (A086965 (n + 1) : ℝ))⌉

end

end A308176.P229046755112469224

/-! ## A308176.P732974607555299398

`A003558(A343215(A261461(n))+A086965(n+1))`
-/

namespace A308176.P732974607555299398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A343215 (A261461 n).toNat + A086965 (n + 1)).toNat

end

end A308176.P732974607555299398

/-! ## A308176.P4758677754585237176

`A070939(A020639(A036693(n))*A086965(n+1))`
-/

namespace A308176.P4758677754585237176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A020639 (A036693 n).toNat * A086965 (n + 1)).toNat

end

end A308176.P4758677754585237176

/-! ## A308176.P6538218112606182220

`A152980(A086965(n+1)*A343215(A261461(n)))`
-/

namespace A308176.P6538218112606182220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 (A086965 (n + 1) * A343215 (A261461 n).toNat).toNat

end

end A308176.P6538218112606182220

/-! ## A308176.P4417403804326439130

`A152980(A086965(n+1)/A343215(A261461(n)))`
-/

namespace A308176.P4417403804326439130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 (SequenceMachineLib.roundAway ((A086965 (n + 1) : ℚ) / (A343215 (A261461 n).toNat : ℚ))).toNat

end

end A308176.P4417403804326439130

/-! ## A308176.P5427277197590113066

`A152980(A086965(n+1)^A343215(A261461(n)))`
-/

namespace A308176.P5427277197590113066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 (SequenceMachineLib.roundAway ((A086965 (n + 1) : ℚ) ^ (A343215 (A261461 n).toNat : ℤ))).toNat

end

end A308176.P5427277197590113066

/-! ## A308176.P4643362389100168221

`A070939(A020639(A027691(n))*A086965(n+1))`
-/

namespace A308176.P4643362389100168221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A020639 (A027691 n).toNat * A086965 (n + 1)).toNat

end

end A308176.P4643362389100168221

/-! ## A308176.P4182476496811952637

`A007306(A086965(n+1)+A007306(A151933(n)))`
-/

namespace A308176.P4182476496811952637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A086965 (n + 1) + A007306 (A151933 n).toNat).toNat

end

end A308176.P4182476496811952637

/-!
# A308177: Numbers x congruent to 1 mod 6 such that for all k >= 1 the values (x*4^k - 1)/3 are composite integers.

The programs for A308177, there is no canonical definition to state claims against.
-/

/-! ## A308177.P3210495788435914372

`lt[round((∑[n+5]+6)/21), lcm(12, n)/12]²`
-/

namespace A308177.P3210495788435914372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j + 6 : ℕ) : ℚ) / 21)

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 12 n : ℚ) / 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n ^ 2

end

end A308177.P3210495788435914372

/-! ## A308177.P17730732827996183497

`Δ[A035936((n+1)²²)]²`
-/

namespace A308177.P17730732827996183497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (((n + 1) ^ 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A308177.P17730732827996183497

/-! ## A308177.P7267593565828504938

`Δ[A061266((n+1)²²)]²`
-/

namespace A308177.P7267593565828504938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061266 (((n + 1) ^ 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A308177.P7267593565828504938

/-! ## A308177.P14026109780317253793

`Δ[A144968((n+1)²²)]²`
-/

namespace A308177.P14026109780317253793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 (((n + 1) ^ 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A308177.P14026109780317253793

/-! ## A308177.P4963287750788437384

`Δ[A201206((n+1)²²)]²`
-/

namespace A308177.P4963287750788437384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201206 (((n + 1) ^ 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A308177.P4963287750788437384

/-!
# A308178: Scan an infinite 45-degree triangular chessboard (cells (x,y) with 0 <= y <= x) by upwards antidiagonals, filling in each cell with the smallest nonnegative number already placed that cannot be seen by a chess queen at (x,y); sequence gives numbers along the successive antidiagonals.

The programs for A308178, there is no canonical definition to state claims against.
-/

/-! ## A308178.P14761739066863922943

`A308179(A091018(n))`
-/

namespace A308178.P14761739066863922943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308179 (A091018 n).toNat

end

end A308178.P14761739066863922943

/-! ## A308178.P12195669230146848194

`A308179(A056536(n+1)-1)`
-/

namespace A308178.P12195669230146848194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308179 (A056536 (n + 1) - 1).toNat

end

end A308178.P12195669230146848194

/-!
# A308179: The triangle defined in A308178, but read across rows.

The programs for A308179, there is no canonical definition to state claims against.
-/

/-! ## A308179.P4846357864490158387

`A293190(A293183(n+3))%A293170(n)`
-/

namespace A308179.P4846357864490158387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293190 (A293183 (n + 3)).toNat) (A293170 n)

end

end A308179.P4846357864490158387

/-!
# A308180: Main diagonal of triangle defined in A308178.

The programs for A308180, there is no canonical definition to state claims against.
-/

/-! ## A308180.P13898305836854279821

`A308179(∑[n]+n)`
-/

namespace A308180.P13898305836854279821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308179 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A308180.P13898305836854279821

/-! ## A308180.P3492759048898117699

`or(char[1], A308179(A000096(n)))`
-/

namespace A308180.P3492759048898117699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A308179 (A000096 n).toNat)

end

end A308180.P3492759048898117699

/-! ## A308180.P6870140853769012431

`A057427(n)*A308179(A000096(n))`
-/

namespace A308180.P6870140853769012431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A308179 (A000096 n).toNat

end

end A308180.P6870140853769012431

/-! ## A308180.P7718591552550871797

`A308179(A000096(n))%A001545(n)`
-/

namespace A308180.P7718591552550871797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308179 (A000096 n).toNat) (A001545 n)

end

end A308180.P7718591552550871797

/-! ## A308180.P3724241211905528624

`and(A057428(n), A308179(A000096(n)))`
-/

namespace A308180.P3724241211905528624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A308179 (A000096 n).toNat)

end

end A308180.P3724241211905528624

/-! ## A308180.P18138959549033306555

`A033999(n)²*A308179(A000096(n))`
-/

namespace A308180.P18138959549033306555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A308179 (A000096 n).toNat

end

end A308180.P18138959549033306555

/-! ## A308180.P3637821837554403648

`A308179(A000096(n))+A000007(n+1)`
-/

namespace A308180.P3637821837554403648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308179 (A000096 n).toNat + A000007 (n + 1)

end

end A308180.P3637821837554403648

/-! ## A308180.P9072852637909516334

`A308179(A000096(n))+A000038(n+1)`
-/

namespace A308180.P9072852637909516334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308179 (A000096 n).toNat + A000038 (n + 1)

end

end A308180.P9072852637909516334

/-! ## A308180.P5899357252168514127

`A000034(2*n)*A308179(A000096(n))`
-/

namespace A308180.P5899357252168514127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A308179 (A000096 n).toNat

end

end A308180.P5899357252168514127

/-! ## A308180.P17267961257119886527

`A007318(C(2, n))*A308179(A000096(n))`
-/

namespace A308180.P17267961257119886527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A308179 (A000096 n).toNat

end

end A308180.P17267961257119886527

/-! ## A308180.P8137474990010559

`A308179(A000096(n))+A008683(4*(n+1))`
-/

namespace A308180.P8137474990010559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308179 (A000096 n).toNat + A008683 (4 * (n + 1))

end

end A308180.P8137474990010559

/-! ## A308180.P3130733101553196238

`A014963(6*(n+1))*A308179(A000096(n))`
-/

namespace A308180.P3130733101553196238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A308179 (A000096 n).toNat

end

end A308180.P3130733101553196238

/-! ## A308180.P9810293485073427540

`A308179(A000096(n))/gcd(2, A000040(n+1))`
-/

namespace A308180.P9810293485073427540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308179 (A000096 n).toNat : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)

end

end A308180.P9810293485073427540

/-! ## A308180.P17477529155095346684

`A308179(A000096(n))/A007318(and(2, n-2))`
-/

namespace A308180.P17477529155095346684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308179 (A000096 n).toNat : ℚ) / (A007318 (Int.land 2 ((n : ℤ) - 2)).toNat : ℚ)

end

end A308180.P17477529155095346684

/-! ## A308180.P4941553156850348466

`A308178(n*(n+2))`
-/

namespace A308180.P4941553156850348466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308178 (n * (n + 2))

end

end A308180.P4941553156850348466

/-!
# A308181: Triangle in A274650 read by upwards antidiagonals.

The programs for A308181, there is no canonical definition to state claims against.
-/

/-! ## A308181.P18201995483156125539

`A274650(A091018(n))`
-/

namespace A308181.P18201995483156125539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274650 (A091018 n).toNat

end

end A308181.P18201995483156125539

/-! ## A308181.P13267581353343144270

`A274650(A056536(n+1)-1)`
-/

namespace A308181.P13267581353343144270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274650 (A056536 (n + 1) - 1).toNat

end

end A308181.P13267581353343144270

/-! ## A308181.P7841798377189466068

`A274651(A056536(n+1))-A093178(2*n)`
-/

namespace A308181.P7841798377189466068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (A056536 (n + 1)).toNat - A093178 (2 * n)

end

end A308181.P7841798377189466068

/-! ## A308181.P11834874296826637964

`(A274651(A056536(n+1))-1)%A250120(n)`
-/

namespace A308181.P11834874296826637964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274651 (A056536 (n + 1)).toNat - 1) (A250120 n)

end

end A308181.P11834874296826637964

/-! ## A308181.P9565879231693683861

`A274651(A056536(n+1))-A028495(C(2, 2*n))`
-/

namespace A308181.P9565879231693683861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (A056536 (n + 1)).toNat - A028495 (Nat.choose 2 (2 * n))

end

end A308181.P9565879231693683861

/-! ## A308181.P1319752204615763780

`A274651(A056536(n+1))-A006530(gcd(n, n+1))`
-/

namespace A308181.P1319752204615763780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (A056536 (n + 1)).toNat - A006530 (Nat.gcd n (n + 1))

end

end A308181.P1319752204615763780

/-! ## A308181.P13591114663320874828

`A274651(A056536(n+1))-A000041(round(1/(n+1)))`
-/

namespace A308181.P13591114663320874828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (A056536 (n + 1)).toNat - A000041 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ))).toNat

end

end A308181.P13591114663320874828

/-! ## A308181.P16214803379034362636

`A274651(A056536(n+1))-A010121(A000040(2*n+1))`
-/

namespace A308181.P16214803379034362636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (A056536 (n + 1)).toNat - A010121 (A000040 (2 * n + 1)).toNat

end

end A308181.P16214803379034362636

/-! ## A308181.P4938514308867567189

`A274651(A056536(n+1))-A308993(A309005(n+1))`
-/

namespace A308181.P4938514308867567189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (A056536 (n + 1)).toNat - A308993 (A309005 (n + 1)).toNat

end

end A308181.P4938514308867567189

/-! ## A308181.P10064928717371756466

`A274651(A056536(n+1))-A032741(A020639(17*n+7))`
-/

namespace A308181.P10064928717371756466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (A056536 (n + 1)).toNat - A032741 (A020639 (17 * n + 7)).toNat

end

end A308181.P10064928717371756466

/-! ## A308181.P8295212660387783206

`A274651(A056536(n+1))-A007318(A000096(n))`
-/

namespace A308181.P8295212660387783206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (A056536 (n + 1)).toNat - A007318 (A000096 n).toNat

end

end A308181.P8295212660387783206

/-! ## A308181.P14443403171479127243

`A274651(A056536(n+1))-A007318(A000217(n))`
-/

namespace A308181.P14443403171479127243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274651 (A056536 (n + 1)).toNat - A007318 (A000217 n).toNat

end

end A308181.P14443403171479127243

/-!
# A308183: S_oo, where S_1 = bc, S_n = S_{n-1} a^n S_{n-1} for n > 1, over the alphabet {a,b,c} = {0,1,2}.

The programs for A308183, the canonical program `A308183.P3604475339994477846` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308183 has offset 1).

The definition of A308183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308183.P3604475339994477846

`Δ[comp[A005187(comp[4*n])]]-1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A308183

/-- `Δ[comp[A005187(comp[4*n])]]-1` -/
def P3604475339994477846.Spec : Prop :=
  ∀ n, P3604475339994477846.a n = A308183 (n + 1)

theorem P3604475339994477846.correct : P3604475339994477846.Spec := by
  intro n
  simp only [A308183, Nat.add_sub_cancel]

end A308183

/-! ## A308183.P9763320098016163142

`val(Δ[A288735(4*n+1)]+1, 2)`
-/

namespace A308183.P9763320098016163142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288735 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n + 1).toNat 2

end

end A308183.P9763320098016163142

namespace A308183

/-- `val(Δ[A288735(4*n+1)]+1, 2)` -/
def P9763320098016163142.Spec : Prop :=
  ∀ n, (P9763320098016163142.a n : ℤ) = A308183 (n + 1)

end A308183

/-! ## A308183.P17015929209061965248

`A055029(Δ[A288734(Δ[n²])])`
-/

namespace A308183.P17015929209061965248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (f1 (n + 1) - f1 n).toNat

end

end A308183.P17015929209061965248

namespace A308183

/-- `A055029(Δ[A288734(Δ[n²])])` -/
def P17015929209061965248.Spec : Prop :=
  ∀ n, P17015929209061965248.a n = A308183 (n + 1)

end A308183

/-! ## A308183.P13626711721011481510

`A122890(Δ[A288734(Δ[n²])])`
-/

namespace A308183.P13626711721011481510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 (f1 (n + 1) - f1 n).toNat

end

end A308183.P13626711721011481510

namespace A308183

/-- `A122890(Δ[A288734(Δ[n²])])` -/
def P13626711721011481510.Spec : Prop :=
  ∀ n, P13626711721011481510.a n = A308183 (n + 1)

end A308183

/-! ## A308183.P5959347286909975527

`A163510(Δ[A288734(Δ[n²])])`
-/

namespace A308183.P5959347286909975527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163510 (f1 (n + 1) - f1 n).toNat

end

end A308183.P5959347286909975527

namespace A308183

/-- `A163510(Δ[A288734(Δ[n²])])` -/
def P5959347286909975527.Spec : Prop :=
  ∀ n, P5959347286909975527.a n = A308183 (n + 1)

end A308183

/-! ## A308183.P3685176094962761827

`A096271(Δ[A288735(4*n+1)])`
-/

namespace A308183.P3685176094962761827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288735 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (f1 (n + 1) - f1 n).toNat

end

end A308183.P3685176094962761827

namespace A308183

/-- `A096271(Δ[A288735(4*n+1)])` -/
def P3685176094962761827.Spec : Prop :=
  ∀ n, P3685176094962761827.a n = A308183 (n + 1)

end A308183

/-! ## A308183.P5236601905104462676

`A073091(5*Δ[A288734(2*n+1)])`
-/

namespace A308183.P5236601905104462676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073091 (5 * (f1 (n + 1) - f1 n)).toNat

end

end A308183.P5236601905104462676

namespace A308183

/-- `A073091(5*Δ[A288734(2*n+1)])` -/
def P5236601905104462676.Spec : Prop :=
  ∀ n, P5236601905104462676.a n = A308183 (n + 1)

end A308183

/-! ## A308183.P15906536476133953385

`A025426(Δ[A288734(2*n+1)]^3)`
-/

namespace A308183.P15906536476133953385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 ((f1 (n + 1) - f1 n) ^ 3).toNat

end

end A308183.P15906536476133953385

namespace A308183

/-- `A025426(Δ[A288734(2*n+1)]^3)` -/
def P15906536476133953385.Spec : Prop :=
  ∀ n, P15906536476133953385.a n = A308183 (n + 1)

end A308183

/-! ## A308183.P6168009571728645618

`A073081(Δ[A288734(2*n+1)])%3`
-/

namespace A308183.P6168009571728645618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073081 (f1 (n + 1) - f1 n).toNat) 3

end

end A308183.P6168009571728645618

namespace A308183

/-- `A073081(Δ[A288734(2*n+1)])%3` -/
def P6168009571728645618.Spec : Prop :=
  ∀ n, P6168009571728645618.a n = A308183 (n + 1)

end A308183

/-! ## A308183.P11706846926439656117

`A085900(Δ[A288734(2*n+1)])%3`
-/

namespace A308183.P11706846926439656117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085900 (f1 (n + 1) - f1 n).toNat) 3

end

end A308183.P11706846926439656117

namespace A308183

/-- `A085900(Δ[A288734(2*n+1)])%3` -/
def P11706846926439656117.Spec : Prop :=
  ∀ n, P11706846926439656117.a n = A308183 (n + 1)

end A308183

/-! ## A308183.P7359765766603637406

`A053121(lcm(2, Δ[A288734(2*n+1)]))`
-/

namespace A308183.P7359765766603637406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (Int.lcm 2 (f1 (n + 1) - f1 n))

end

end A308183.P7359765766603637406

namespace A308183

/-- `A053121(lcm(2, Δ[A288734(2*n+1)]))` -/
def P7359765766603637406.Spec : Prop :=
  ∀ n, P7359765766603637406.a n = A308183 (n + 1)

end A308183

/-! ## A308183.P3057918700466332047

`val(A004057(Δ[A288734(2*n+1)]), 3)`
-/

namespace A308183.P3057918700466332047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004057 (f1 (n + 1) - f1 n).toNat).toNat 3

end

end A308183.P3057918700466332047

namespace A308183

/-- `val(A004057(Δ[A288734(2*n+1)]), 3)` -/
def P3057918700466332047.Spec : Prop :=
  ∀ n, (P3057918700466332047.a n : ℤ) = A308183 (n + 1)

end A308183

/-! ## A308183.P1413883740774526503

`val(A004273(Δ[A288734(2*n+1)]), 3)`
-/

namespace A308183.P1413883740774526503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004273 (f1 (n + 1) - f1 n).toNat).toNat 3

end

end A308183.P1413883740774526503

namespace A308183

/-- `val(A004273(Δ[A288734(2*n+1)]), 3)` -/
def P1413883740774526503.Spec : Prop :=
  ∀ n, (P1413883740774526503.a n : ℤ) = A308183 (n + 1)

end A308183

/-! ## A308183.P13718142853251703887

`val(A000124(Δ[A288734(2*n+1)]), 4)`
-/

namespace A308183.P13718142853251703887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000124 (f1 (n + 1) - f1 n).toNat).toNat 4

end

end A308183.P13718142853251703887

namespace A308183

/-- `val(A000124(Δ[A288734(2*n+1)]), 4)` -/
def P13718142853251703887.Spec : Prop :=
  ∀ n, (P13718142853251703887.a n : ℤ) = A308183 (n + 1)

end A308183

/-! ## A308183.P12991164958964836321

`val(A007588(Δ[A288734(2*n+1)]), 7)`
-/

namespace A308183.P12991164958964836321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007588 (f1 (n + 1) - f1 n).toNat).toNat 7

end

end A308183.P12991164958964836321

namespace A308183

/-- `val(A007588(Δ[A288734(2*n+1)]), 7)` -/
def P12991164958964836321.Spec : Prop :=
  ∀ n, (P12991164958964836321.a n : ℤ) = A308183 (n + 1)

end A308183

/-! ## A308183.P6411785651520065362

`A308184(n+1)-1`
-/

namespace A308183.P6411785651520065362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308184 (n + 1) - 1

end

end A308183.P6411785651520065362

namespace A308183

/-- `A308184(n+1)-1` -/
def P6411785651520065362.Spec : Prop :=
  ∀ n, P6411785651520065362.a n = A308183 (n + 1)

theorem P6411785651520065362.correct : P6411785651520065362.Spec := by
  intro n
  simp only [A308183, Nat.add_sub_cancel, A308183.P6411785651520065362.a, A308183.P3604475339994477846.f3, A308183.P3604475339994477846.f2, A308183.P3604475339994477846.f1, A308183.P3604475339994477846.a, A005187, A005187.P3874015513960485494.a, A308184, A308184.P13568587787613628160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308183

/-! ## A308183.P14862681921604875062

`5%A308184(A000027(n+1))`
-/

namespace A308183.P14862681921604875062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A308184 (A000027 (n + 1)).toNat)

end

end A308183.P14862681921604875062

namespace A308183

/-- `5%A308184(A000027(n+1))` -/
def P14862681921604875062.Spec : Prop :=
  ∀ n, P14862681921604875062.a n = A308183 (n + 1)

end A308183

/-! ## A308183.P2158535883390720378

`A001513(n)%A308184(n+1)`
-/

namespace A308183.P2158535883390720378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A308184 (n + 1))

end

end A308183.P2158535883390720378

namespace A308183

/-- `A001513(n)%A308184(n+1)` -/
def P2158535883390720378.Spec : Prop :=
  ∀ n, P2158535883390720378.a n = A308183 (n + 1)

end A308183

/-! ## A308183.P16774184295611818853

`A001538(n)%A308184(n+1)`
-/

namespace A308183.P16774184295611818853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A308184 (n + 1))

end

end A308183.P16774184295611818853

namespace A308183

/-- `A001538(n)%A308184(n+1)` -/
def P16774184295611818853.Spec : Prop :=
  ∀ n, P16774184295611818853.a n = A308183 (n + 1)

end A308183

/-!
# A308184: S_oo, where S_1 = bc, S_n = S_{n-1} a^n S_{n-1} for n > 1, over the alphabet {a,b,c} = {1,2,3}.

The programs for A308184, the canonical program `A308184.P13568587787613628160` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308184 has offset 1).

The definition of A308184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308184.P13568587787613628160

`A308183(n+1)+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A308184

/-- `A308183(n+1)+1` -/
def P13568587787613628160.Spec : Prop :=
  ∀ n, P13568587787613628160.a n = A308184 (n + 1)

theorem P13568587787613628160.correct : P13568587787613628160.Spec := by
  intro n
  simp only [A308184, Nat.add_sub_cancel]

end A308184

/-! ## A308184.P9053805393067458656

`Δ[comp[A005187(comp[4*n])]]`
-/

namespace A308184.P9053805393067458656
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A308184.P9053805393067458656

namespace A308184

/-- `Δ[comp[A005187(comp[4*n])]]` -/
def P9053805393067458656.Spec : Prop :=
  ∀ n, P9053805393067458656.a n = A308184 (n + 1)

end A308184

/-! ## A308184.P9975276930682775895

`val(Δ[A288735(4*n+1)]+1, 2)+1`
-/

namespace A308184.P9975276930682775895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288735 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n + 1).toNat 2 + 1

end

end A308184.P9975276930682775895

namespace A308184

/-- `val(Δ[A288735(4*n+1)]+1, 2)+1` -/
def P9975276930682775895.Spec : Prop :=
  ∀ n, (P9975276930682775895.a n : ℤ) = A308184 (n + 1)

end A308184

/-! ## A308184.P16941962385898158041

`Δ[eq[1, A219977(A213714(n))]]`
-/

namespace A308184.P16941962385898158041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A213714 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A308184.P16941962385898158041

namespace A308184

/-- `Δ[eq[1, A219977(A213714(n))]]` -/
def P16941962385898158041.Spec : Prop :=
  ∀ n, P16941962385898158041.a n = A308184 (n + 1)

end A308184

/-! ## A308184.P6392675145565177818

`A055029(Δ[A288734(2*n+1)])+1`
-/

namespace A308184.P6392675145565177818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (f1 (n + 1) - f1 n).toNat + 1

end

end A308184.P6392675145565177818

namespace A308184

/-- `A055029(Δ[A288734(2*n+1)])+1` -/
def P6392675145565177818.Spec : Prop :=
  ∀ n, P6392675145565177818.a n = A308184 (n + 1)

end A308184

/-! ## A308184.P4796860716412168203

`A083312(Δ[A288734(2*n+1)]+1)`
-/

namespace A308184.P4796860716412168203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083312 (f1 (n + 1) - f1 n + 1).toNat

end

end A308184.P4796860716412168203

namespace A308184

/-- `A083312(Δ[A288734(2*n+1)]+1)` -/
def P4796860716412168203.Spec : Prop :=
  ∀ n, P4796860716412168203.a n = A308184 (n + 1)

end A308184

/-! ## A308184.P16344796203580255413

`A122890(Δ[A288734(2*n+1)])+1`
-/

namespace A308184.P16344796203580255413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 (f1 (n + 1) - f1 n).toNat + 1

end

end A308184.P16344796203580255413

namespace A308184

/-- `A122890(Δ[A288734(2*n+1)])+1` -/
def P16344796203580255413.Spec : Prop :=
  ∀ n, P16344796203580255413.a n = A308184 (n + 1)

end A308184

/-! ## A308184.P5040455710166760383

`A163510(Δ[A288734(2*n+1)])+1`
-/

namespace A308184.P5040455710166760383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163510 (f1 (n + 1) - f1 n).toNat + 1

end

end A308184.P5040455710166760383

namespace A308184

/-- `A163510(Δ[A288734(2*n+1)])+1` -/
def P5040455710166760383.Spec : Prop :=
  ∀ n, P5040455710166760383.a n = A308184 (n + 1)

end A308184

/-! ## A308184.P13433626182448028096

`A261095(Δ[A288734(2*n+1)]+2)`
-/

namespace A308184.P13433626182448028096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 (f1 (n + 1) - f1 n + 2).toNat

end

end A308184.P13433626182448028096

namespace A308184

/-- `A261095(Δ[A288734(2*n+1)]+2)` -/
def P13433626182448028096.Spec : Prop :=
  ∀ n, P13433626182448028096.a n = A308184 (n + 1)

end A308184

/-! ## A308184.P17672828652306244337

`A122713(Δ[A288734(2*n+1)])%5`
-/

namespace A308184.P17672828652306244337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122713 (f1 (n + 1) - f1 n).toNat) 5

end

end A308184.P17672828652306244337

namespace A308184

/-- `A122713(Δ[A288734(2*n+1)])%5` -/
def P17672828652306244337.Spec : Prop :=
  ∀ n, P17672828652306244337.a n = A308184 (n + 1)

end A308184

/-! ## A308184.P8174134597351218252

`gcd(6, A032492(Δ[A288734(2*n+1)]))`
-/

namespace A308184.P8174134597351218252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A032492 (f1 (n + 1) - f1 n).toNat)

end

end A308184.P8174134597351218252

namespace A308184

/-- `gcd(6, A032492(Δ[A288734(2*n+1)]))` -/
def P8174134597351218252.Spec : Prop :=
  ∀ n, (P8174134597351218252.a n : ℤ) = A308184 (n + 1)

end A308184

/-! ## A308184.P3372874734007675936

`A035426(xor(1, Δ[A288734(2*n+1)]))`
-/

namespace A308184.P3372874734007675936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035426 (Int.xor 1 (f1 (n + 1) - f1 n)).toNat

end

end A308184.P3372874734007675936

namespace A308184

/-- `A035426(xor(1, Δ[A288734(2*n+1)]))` -/
def P3372874734007675936.Spec : Prop :=
  ∀ n, P3372874734007675936.a n = A308184 (n + 1)

end A308184

/-! ## A308184.P7689177579007797520

`A329515(or(2, Δ[A288734(2*n+1)]))`
-/

namespace A308184.P7689177579007797520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329515 (Int.lor 2 (f1 (n + 1) - f1 n)).toNat

end

end A308184.P7689177579007797520

namespace A308184

/-- `A329515(or(2, Δ[A288734(2*n+1)]))` -/
def P7689177579007797520.Spec : Prop :=
  ∀ n, P7689177579007797520.a n = A308184 (n + 1)

end A308184

/-! ## A308184.P9665753508402410524

`∏{p}[A127648(Δ[A288734(2*n+1)]), #]`
-/

namespace A308184.P9665753508402410524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A308184.P9665753508402410524

namespace A308184

/-- `∏{p}[A127648(Δ[A288734(2*n+1)]), #]` -/
def P9665753508402410524.Spec : Prop :=
  ∀ n, (P9665753508402410524.a n : ℤ) = A308184 (n + 1)

end A308184

/-! ## A308184.P5232301490418889697

`∏{e}[A136336(Δ[A288734(2*n+1)]), #]`
-/

namespace A308184.P5232301490418889697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136336 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A308184.P5232301490418889697

namespace A308184

/-- `∏{e}[A136336(Δ[A288734(2*n+1)]), #]` -/
def P5232301490418889697.Spec : Prop :=
  ∀ n, (P5232301490418889697.a n : ℤ) = A308184 (n + 1)

end A308184

/-!
# A308185: Fixed point (beginning with a) of the morphism a -> abab, b -> b, over the alphabet {a,b} = {0,1}.

The programs for A308185, the canonical program `A308185.P8843334864342572495` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308185 has offset 1).

The definition of A308185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308185.P8843334864342572495

`char[comp[a(n-1)+val(n, 2)+2]]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A308185

/-- `char[comp[a(n-1)+val(n, 2)+2]]` -/
def P8843334864342572495.Spec : Prop :=
  ∀ n, (P8843334864342572495.a n : ℤ) = A308185 (n + 1)

theorem P8843334864342572495.correct : P8843334864342572495.Spec := by
  intro n
  simp only [A308185, Nat.add_sub_cancel]

end A308185

/-! ## A308185.P15000726813952527596

`1-char[a(n-1)+val(n, 2)+2]` with `a(0)=0`
-/

namespace A308185.P15000726813952527596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (SequenceMachineLib.valuation n 2 + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A308185.P15000726813952527596

namespace A308185

/-- `1-char[a(n-1)+val(n, 2)+2]` -/
def P15000726813952527596.Spec : Prop :=
  ∀ n, P15000726813952527596.a n = A308185 (n + 1)

end A308185

/-! ## A308185.P16843906657054158551

`char[comp[A004134(n)]]`
-/

namespace A308185.P16843906657054158551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A308185.P16843906657054158551

namespace A308185

/-- `char[comp[A004134(n)]]` -/
def P16843906657054158551.Spec : Prop :=
  ∀ n, (P16843906657054158551.a n : ℤ) = A308185 (n + 1)

end A308185

/-! ## A308185.P8557184994050368488

`log2(A308186(n+1))`
-/

namespace A308185.P8557184994050368488
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A308186 (n + 1) : ℝ)

end

end A308185.P8557184994050368488

namespace A308185

/-- `log2(A308186(n+1))` -/
def P8557184994050368488.Spec : Prop :=
  ∀ n, P8557184994050368488.a n = (A308185 (n + 1) : ℝ)

end A308185

/-! ## A308185.P9087844393036958687

`char[∑[A079559(n)]+n]`
-/

namespace A308185.P9087844393036958687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A308185.P9087844393036958687

namespace A308185

/-- `char[∑[A079559(n)]+n]` -/
def P9087844393036958687.Spec : Prop :=
  ∀ n, (P9087844393036958687.a n : ℤ) = A308185 (n + 1)

end A308185

/-! ## A308185.P18170193241374427853

`char[comp[A005187(n)+n]]`
-/

namespace A308185.P18170193241374427853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A308185.P18170193241374427853

namespace A308185

/-- `char[comp[A005187(n)+n]]` -/
def P18170193241374427853.Spec : Prop :=
  ∀ n, (P18170193241374427853.a n : ℤ) = A308185 (n + 1)

end A308185

/-! ## A308185.P15293605965588393874

`char[A288934(n+1)-2]`
-/

namespace A308185.P15293605965588393874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288934 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A308185.P15293605965588393874

namespace A308185

/-- `char[A288934(n+1)-2]` -/
def P15293605965588393874.Spec : Prop :=
  ∀ n, (P15293605965588393874.a n : ℤ) = A308185 (n + 1)

end A308185

/-! ## A308185.P15141470211165224714

`char[A046699(n+2)+n]`
-/

namespace A308185.P15141470211165224714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A308185.P15141470211165224714

namespace A308185

/-- `char[A046699(n+2)+n]` -/
def P15141470211165224714.Spec : Prop :=
  ∀ n, (P15141470211165224714.a n : ℤ) = A308185 (n + 1)

end A308185

/-! ## A308185.P13608183896057221080

`1-char[A120738(n)-n]`
-/

namespace A308185.P13608183896057221080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 n - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308185.P13608183896057221080

namespace A308185

/-- `1-char[A120738(n)-n]` -/
def P13608183896057221080.Spec : Prop :=
  ∀ n, P13608183896057221080.a n = A308185 (n + 1)

end A308185

/-! ## A308185.P2847700125212941945

`char[comp[A011371(2*n)+n]]`
-/

namespace A308185.P2847700125212941945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * n) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A308185.P2847700125212941945

namespace A308185

/-- `char[comp[A011371(2*n)+n]]` -/
def P2847700125212941945.Spec : Prop :=
  ∀ n, (P2847700125212941945.a n : ℤ) = A308185 (n + 1)

end A308185

/-! ## A308185.P10018703790948487357

`1-char[A288933(n+1)-2]`
-/

namespace A308185.P10018703790948487357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288933 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308185.P10018703790948487357

namespace A308185

/-- `1-char[A288933(n+1)-2]` -/
def P10018703790948487357.Spec : Prop :=
  ∀ n, P10018703790948487357.a n = A308185 (n + 1)

end A308185

/-! ## A308185.P14318010352692836431

`A008379(n)%A308186(n+1)`
-/

namespace A308185.P14318010352692836431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008379 n) (A308186 (n + 1))

end

end A308185.P14318010352692836431

namespace A308185

/-- `A008379(n)%A308186(n+1)` -/
def P14318010352692836431.Spec : Prop :=
  ∀ n, P14318010352692836431.a n = A308185 (n + 1)

end A308185

/-! ## A308185.P10826012839832918711

`A016760(n)%A308186(n+1)`
-/

namespace A308185.P10826012839832918711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A308186 (n + 1))

end

end A308185.P10826012839832918711

namespace A308185

/-- `A016760(n)%A308186(n+1)` -/
def P10826012839832918711.Spec : Prop :=
  ∀ n, P10826012839832918711.a n = A308185 (n + 1)

end A308185

/-! ## A308185.P1136363430799929043

`A016761(n)%A308186(n+1)`
-/

namespace A308185.P1136363430799929043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016761 n) (A308186 (n + 1))

end

end A308185.P1136363430799929043

namespace A308185

/-- `A016761(n)%A308186(n+1)` -/
def P1136363430799929043.Spec : Prop :=
  ∀ n, P1136363430799929043.a n = A308185 (n + 1)

end A308185

/-! ## A308185.P9154386079903375399

`A016819(n)%A308186(n+1)`
-/

namespace A308185.P9154386079903375399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016819 n) (A308186 (n + 1))

end

end A308185.P9154386079903375399

namespace A308185

/-- `A016819(n)%A308186(n+1)` -/
def P9154386079903375399.Spec : Prop :=
  ∀ n, P9154386079903375399.a n = A308185 (n + 1)

end A308185

/-! ## A308185.P5503033750747045599

`A016820(n)%A308186(n+1)`
-/

namespace A308185.P5503033750747045599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016820 n) (A308186 (n + 1))

end

end A308185.P5503033750747045599

namespace A308185

/-- `A016820(n)%A308186(n+1)` -/
def P5503033750747045599.Spec : Prop :=
  ∀ n, P5503033750747045599.a n = A308185 (n + 1)

end A308185

/-! ## A308185.P4121376436367234938

`A016843(n)%A308186(n+1)`
-/

namespace A308185.P4121376436367234938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016843 n) (A308186 (n + 1))

end

end A308185.P4121376436367234938

namespace A308185

/-- `A016843(n)%A308186(n+1)` -/
def P4121376436367234938.Spec : Prop :=
  ∀ n, P4121376436367234938.a n = A308185 (n + 1)

end A308185

/-!
# A308186: Fixed point (beginning with a) of the morphism a -> abab, b -> b, over the alphabet {a,b} = {1,2}.

The programs for A308186, the canonical program `A308186.P4188807853655826539` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308186 has offset 1).

The definition of A308186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308186.P5814594840369819340

`2-char[a(n-1)+val(n, 2)+2]` with `a(0)=0`
-/

namespace A308186.P5814594840369819340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (SequenceMachineLib.valuation n 2 + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A308186.P5814594840369819340

namespace A308186

/-- `2-char[a(n-1)+val(n, 2)+2]` -/
def P5814594840369819340.Spec : Prop :=
  ∀ n, P5814594840369819340.a n = A308186 (n + 1)

end A308186

/-! ## A308186.P774412310476432478

`2-char[A004134(n)]`
-/

namespace A308186.P774412310476432478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308186.P774412310476432478

namespace A308186

/-- `2-char[A004134(n)]` -/
def P774412310476432478.Spec : Prop :=
  ∀ n, P774412310476432478.a n = A308186 (n + 1)

end A308186

/-! ## A308186.P4188807853655826539

`A308185(n+1)+1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A308186

/-- `A308185(n+1)+1` -/
def P4188807853655826539.Spec : Prop :=
  ∀ n, P4188807853655826539.a n = A308186 (n + 1)

theorem P4188807853655826539.correct : P4188807853655826539.Spec := by
  intro n
  simp only [A308186, Nat.add_sub_cancel]

end A308186

/-! ## A308186.P16684956384115910351

`2-char[A005187(n)+n]`
-/

namespace A308186.P16684956384115910351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308186.P16684956384115910351

namespace A308186

/-- `2-char[A005187(n)+n]` -/
def P16684956384115910351.Spec : Prop :=
  ∀ n, P16684956384115910351.a n = A308186 (n + 1)

end A308186

/-! ## A308186.P18201828918855502515

`2-char[A120738(n)-n]`
-/

namespace A308186.P18201828918855502515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 n - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308186.P18201828918855502515

namespace A308186

/-- `2-char[A120738(n)-n]` -/
def P18201828918855502515.Spec : Prop :=
  ∀ n, P18201828918855502515.a n = A308186 (n + 1)

end A308186

/-! ## A308186.P3722519865991757249

`char[∑[A079559(n)]+n]+1`
-/

namespace A308186.P3722519865991757249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A308186.P3722519865991757249

namespace A308186

/-- `char[∑[A079559(n)]+n]+1` -/
def P3722519865991757249.Spec : Prop :=
  ∀ n, (P3722519865991757249.a n : ℤ) = A308186 (n + 1)

end A308186

/-! ## A308186.P6792876698259393516

`char[A288934(n+1)-2]+1`
-/

namespace A308186.P6792876698259393516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288934 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A308186.P6792876698259393516

namespace A308186

/-- `char[A288934(n+1)-2]+1` -/
def P6792876698259393516.Spec : Prop :=
  ∀ n, (P6792876698259393516.a n : ℤ) = A308186 (n + 1)

end A308186

/-! ## A308186.P18222338657039805667

`2-char[A288933(n+1)-2]`
-/

namespace A308186.P18222338657039805667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288933 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308186.P18222338657039805667

namespace A308186

/-- `2-char[A288933(n+1)-2]` -/
def P18222338657039805667.Spec : Prop :=
  ∀ n, P18222338657039805667.a n = A308186 (n + 1)

end A308186

/-! ## A308186.P1203529618899038093

`char[A046699(n+2)+n]+1`
-/

namespace A308186.P1203529618899038093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A308186.P1203529618899038093

namespace A308186

/-- `char[A046699(n+2)+n]+1` -/
def P1203529618899038093.Spec : Prop :=
  ∀ n, (P1203529618899038093.a n : ℤ) = A308186 (n + 1)

end A308186

/-! ## A308186.P5364712888210103967

`2-char[∑[A007814(n+1)+n%2]]`
-/

namespace A308186.P5364712888210103967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308186.P5364712888210103967

namespace A308186

/-- `2-char[∑[A007814(n+1)+n%2]]` -/
def P5364712888210103967.Spec : Prop :=
  ∀ n, P5364712888210103967.a n = A308186 (n + 1)

end A308186

/-! ## A308186.P5790185854493649382

`gcd(2, A300834(A082691(n+1)))`
-/

namespace A308186.P5790185854493649382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A300834 (A082691 (n + 1)).toNat)

end

end A308186.P5790185854493649382

namespace A308186

/-- `gcd(2, A300834(A082691(n+1)))` -/
def P5790185854493649382.Spec : Prop :=
  ∀ n, (P5790185854493649382.a n : ℤ) = A308186 (n + 1)

end A308186

/-! ## A308186.P16773306922173844100

`((2*n+1)*comp[A004277(comp[A005187(n)])])%2+1`
-/

namespace A308186.P16773306922173844100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2 + 1

end

end A308186.P16773306922173844100

namespace A308186

/-- `((2*n+1)*comp[A004277(comp[A005187(n)])])%2+1` -/
def P16773306922173844100.Spec : Prop :=
  ∀ n, (P16773306922173844100.a n : ℤ) = A308186 (n + 1)

end A308186

/-! ## A308186.P4228504060440984941

`A040001(A082691(n+1)²-A082691(n+1))`
-/

namespace A308186.P4228504060440984941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A082691 (n + 1) ^ 2 - A082691 (n + 1)).toNat

end

end A308186.P4228504060440984941

namespace A308186

/-- `A040001(A082691(n+1)²-A082691(n+1))` -/
def P4228504060440984941.Spec : Prop :=
  ∀ n, P4228504060440984941.a n = A308186 (n + 1)

end A308186

/-! ## A308186.P4123591064529684350

`A040001(xor(A082691(n+1)², A082691(n+1)))`
-/

namespace A308186.P4123591064529684350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Int.xor (A082691 (n + 1) ^ 2) (A082691 (n + 1))).toNat

end

end A308186.P4123591064529684350

namespace A308186

/-- `A040001(xor(A082691(n+1)², A082691(n+1)))` -/
def P4123591064529684350.Spec : Prop :=
  ∀ n, P4123591064529684350.a n = A308186 (n + 1)

end A308186

/-! ## A308186.P4036847169073941494

`A288932(n+2)+1`
-/

namespace A308186.P4036847169073941494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288932 (n + 2) + 1

end

end A308186.P4036847169073941494

namespace A308186

/-- `A288932(n+2)+1` -/
def P4036847169073941494.Spec : Prop :=
  ∀ n, P4036847169073941494.a n = A308186 (n + 1)

end A308186

/-!
# A308187: Fixed point (beginning with a) of the morphism a -> aab, b -> b, over the alphabet {a,b} = {0,1}.

The programs for A308187, the canonical program `A308187.P8950308941474047097` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308187 has offset 1).

The definition of A308187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308187.P2897812624827855137

`char[comp[a(floor(n/2))+n]]` with `a(0)=0`
-/

namespace A308187.P2897812624827855137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A308187.P2897812624827855137

namespace A308187

/-- `char[comp[a(floor(n/2))+n]]` -/
def P2897812624827855137.Spec : Prop :=
  ∀ n, (P2897812624827855137.a n : ℤ) = A308187 (n + 1)

end A308187

/-! ## A308187.P9584366461914101130

`1-char[a(floor(n/2))+n]` with `a(0)=0`
-/

namespace A308187.P9584366461914101130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A308187.P9584366461914101130

namespace A308187

/-- `1-char[a(floor(n/2))+n]` -/
def P9584366461914101130.Spec : Prop :=
  ∀ n, P9584366461914101130.a n = A308187 (n + 1)

end A308187

/-! ## A308187.P12117669746148349649

`xor(1, char[a(floor(n/2))+n])` with `a(0)=0`
-/

namespace A308187.P12117669746148349649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A308187.P12117669746148349649

namespace A308187

/-- `xor(1, char[a(floor(n/2))+n])` -/
def P12117669746148349649.Spec : Prop :=
  ∀ n, (P12117669746148349649.a n : ℤ) = A308187 (n + 1)

end A308187

/-! ## A308187.P4301376931417755676

`1-char[record[val(n, 2)-a(n-1)]]` with `a(0)=0`
-/

namespace A308187.P4301376931417755676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (SequenceMachineLib.valuation n 2 : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308187.P4301376931417755676

namespace A308187

/-- `1-char[record[val(n, 2)-a(n-1)]]` -/
def P4301376931417755676.Spec : Prop :=
  ∀ n, P4301376931417755676.a n = A308187 (n + 1)

end A308187

/-! ## A308187.P8950308941474047097

`1-A079559(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A308187

/-- `1-A079559(n)` -/
def P8950308941474047097.Spec : Prop :=
  ∀ n, P8950308941474047097.a n = A308187 (n + 1)

theorem P8950308941474047097.correct : P8950308941474047097.Spec := by
  intro n
  simp only [A308187, Nat.add_sub_cancel]

end A308187

/-! ## A308187.P8144042589032290518

`A151860(n)%2`
-/

namespace A308187.P8144042589032290518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151860 n) 2

end

end A308187.P8144042589032290518

namespace A308187

/-- `A151860(n)%2` -/
def P8144042589032290518.Spec : Prop :=
  ∀ n, P8144042589032290518.a n = A308187 (n + 1)

end A308187

/-! ## A308187.P12869761042205659532

`A151864(n)%2`
-/

namespace A308187.P12869761042205659532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151864 n) 2

end

end A308187.P12869761042205659532

namespace A308187

/-- `A151864(n)%2` -/
def P12869761042205659532.Spec : Prop :=
  ∀ n, P12869761042205659532.a n = A308187 (n + 1)

end A308187

/-! ## A308187.P3711913169393088110

`char[comp[A005187(n)]]`
-/

namespace A308187.P3711913169393088110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A308187.P3711913169393088110

namespace A308187

/-- `char[comp[A005187(n)]]` -/
def P3711913169393088110.Spec : Prop :=
  ∀ n, (P3711913169393088110.a n : ℤ) = A308187 (n + 1)

end A308187

/-! ## A308187.P5526415742274792768

`log2(A308188(n+1))`
-/

namespace A308187.P5526415742274792768
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A308188 (n + 1) : ℝ)

end

end A308187.P5526415742274792768

namespace A308187

/-- `log2(A308188(n+1))` -/
def P5526415742274792768.Spec : Prop :=
  ∀ n, P5526415742274792768.a n = (A308187 (n + 1) : ℝ)

end A308187

/-! ## A308187.P1166135267073462126

`char[A055938(n+1)]`
-/

namespace A308187.P1166135267073462126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A308187.P1166135267073462126

namespace A308187

/-- `char[A055938(n+1)]` -/
def P1166135267073462126.Spec : Prop :=
  ∀ n, (P1166135267073462126.a n : ℤ) = A308187 (n + 1)

end A308187

/-! ## A308187.P205269428543243005

`char[lt[A257265(n), 1]]`
-/

namespace A308187.P205269428543243005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257265 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A308187.P205269428543243005

namespace A308187

/-- `char[lt[A257265(n), 1]]` -/
def P205269428543243005.Spec : Prop :=
  ∀ n, (P205269428543243005.a n : ℤ) = A308187 (n + 1)

end A308187

/-! ## A308187.P1082454904379260009

`gcd(2, A151550(n))-1`
-/

namespace A308187.P1082454904379260009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A151550 n) : ℤ) - 1

end

end A308187.P1082454904379260009

namespace A308187

/-- `gcd(2, A151550(n))-1` -/
def P1082454904379260009.Spec : Prop :=
  ∀ n, P1082454904379260009.a n = A308187 (n + 1)

end A308187

/-! ## A308187.P5853143936538617079

`C(C(2, A213725(n)), 2)`
-/

namespace A308187.P5853143936538617079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A213725 n).toNat) 2

end

end A308187.P5853143936538617079

namespace A308187

/-- `C(C(2, A213725(n)), 2)` -/
def P5853143936538617079.Spec : Prop :=
  ∀ n, (P5853143936538617079.a n : ℤ) = A308187 (n + 1)

end A308187

/-! ## A308187.P14602668105731493365

`C(C(2, A213727(n)), 2)`
-/

namespace A308187.P14602668105731493365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A213727 n).toNat) 2

end

end A308187.P14602668105731493365

namespace A308187

/-- `C(C(2, A213727(n)), 2)` -/
def P14602668105731493365.Spec : Prop :=
  ∀ n, (P14602668105731493365.a n : ℤ) = A308187 (n + 1)

end A308187

/-! ## A308187.P16079053032945098982

`Δ[A234016(abs(1-n))]`
-/

namespace A308187.P16079053032945098982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234016 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A308187.P16079053032945098982

namespace A308187

/-- `Δ[A234016(abs(1-n))]` -/
def P16079053032945098982.Spec : Prop :=
  ∀ n, P16079053032945098982.a n = A308187 (n + 1)

end A308187

/-! ## A308187.P4289870991361731870

`char[comp[A004134(n)-n]]`
-/

namespace A308187.P4289870991361731870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A308187.P4289870991361731870

namespace A308187

/-- `char[comp[A004134(n)-n]]` -/
def P4289870991361731870.Spec : Prop :=
  ∀ n, (P4289870991361731870.a n : ℤ) = A308187 (n + 1)

end A308187

/-! ## A308187.P17928091165766639638

`1-char[A155689(n+1)]`
-/

namespace A308187.P17928091165766639638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155689 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308187.P17928091165766639638

namespace A308187

/-- `1-char[A155689(n+1)]` -/
def P17928091165766639638.Spec : Prop :=
  ∀ n, P17928091165766639638.a n = A308187 (n + 1)

end A308187

/-! ## A308187.P2700345143745824362

`1-char[A101925(n)-1]`
-/

namespace A308187.P2700345143745824362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308187.P2700345143745824362

namespace A308187

/-- `1-char[A101925(n)-1]` -/
def P2700345143745824362.Spec : Prop :=
  ∀ n, P2700345143745824362.a n = A308187 (n + 1)

end A308187

/-!
# A308188: Fixed point (beginning with a) of the morphism a -> aab, b -> b, over the alphabet {a,b} = {1,2}.

The programs for A308188, the canonical program `A308188.P1668237942996527319` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308188 has offset 1).

The definition of A308188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308188.P13413548805848324017

`2-char[a(floor(n/2))+n]` with `a(0)=0`
-/

namespace A308188.P13413548805848324017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A308188.P13413548805848324017

namespace A308188

/-- `2-char[a(floor(n/2))+n]` -/
def P13413548805848324017.Spec : Prop :=
  ∀ n, P13413548805848324017.a n = A308188 (n + 1)

end A308188

/-! ## A308188.P14623040732152485555

`char[comp[a(floor(n/2))+n]]+1` with `a(0)=0`
-/

namespace A308188.P14623040732152485555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A308188.P14623040732152485555

namespace A308188

/-- `char[comp[a(floor(n/2))+n]]+1` -/
def P14623040732152485555.Spec : Prop :=
  ∀ n, (P14623040732152485555.a n : ℤ) = A308188 (n + 1)

end A308188

/-! ## A308188.P15298788189376388461

`2/(char[a(floor(n/2))+n]+1)` with `a(0)=0`
-/

namespace A308188.P15298788189376388461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)

end

end A308188.P15298788189376388461

namespace A308188

/-- `2/(char[a(floor(n/2))+n]+1)` -/
def P15298788189376388461.Spec : Prop :=
  ∀ n, P15298788189376388461.a n = (A308188 (n + 1) : ℚ)

end A308188

/-! ## A308188.P141170504696448398

`2-char[record[val(n, 2)-a(n-1)]]` with `a(0)=0`
-/

namespace A308188.P141170504696448398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (SequenceMachineLib.valuation n 2 : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308188.P141170504696448398

namespace A308188

/-- `2-char[record[val(n, 2)-a(n-1)]]` -/
def P141170504696448398.Spec : Prop :=
  ∀ n, P141170504696448398.a n = A308188 (n + 1)

end A308188

/-! ## A308188.P1668237942996527319

`2-A079559(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A308188

/-- `2-A079559(n)` -/
def P1668237942996527319.Spec : Prop :=
  ∀ n, P1668237942996527319.a n = A308188 (n + 1)

theorem P1668237942996527319.correct : P1668237942996527319.Spec := by
  intro n
  simp only [A308188, Nat.add_sub_cancel]

end A308188

/-! ## A308188.P5258231415248542871

`gcd(2, A082386(n))`
-/

namespace A308188.P5258231415248542871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A082386 n)

end

end A308188.P5258231415248542871

namespace A308188

/-- `gcd(2, A082386(n))` -/
def P5258231415248542871.Spec : Prop :=
  ∀ n, (P5258231415248542871.a n : ℤ) = A308188 (n + 1)

end A308188

/-! ## A308188.P2487037238566298772

`2-char[A005187(n)]`
-/

namespace A308188.P2487037238566298772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308188.P2487037238566298772

namespace A308188

/-- `2-char[A005187(n)]` -/
def P2487037238566298772.Spec : Prop :=
  ∀ n, P2487037238566298772.a n = A308188 (n + 1)

end A308188

/-! ## A308188.P8919098095222400464

`A308187(n+1)+1`
-/

namespace A308188.P8919098095222400464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308187 (n + 1) + 1

end

end A308188.P8919098095222400464

namespace A308188

/-- `A308187(n+1)+1` -/
def P8919098095222400464.Spec : Prop :=
  ∀ n, P8919098095222400464.a n = A308188 (n + 1)

theorem P8919098095222400464.correct : P8919098095222400464.Spec := by
  intro n
  simp only [A308188, Nat.add_sub_cancel, A308188.P8919098095222400464.a, A308188.P1668237942996527319.a, A079559, A079559.P6833565121082423031.a, A308187, A308187.P8950308941474047097.a, A043545, A043545.P6199121594405564387.a, A053644, A053644.P1707366427427647095.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308188

/-! ## A308188.P11711255063768230675

`and(1, A151860(n))+1`
-/

namespace A308188.P11711255063768230675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A151860 n) + 1

end

end A308188.P11711255063768230675

namespace A308188

/-- `and(1, A151860(n))+1` -/
def P11711255063768230675.Spec : Prop :=
  ∀ n, P11711255063768230675.a n = A308188 (n + 1)

end A308188

/-! ## A308188.P2499051859422064780

`and(1, A151864(n))+1`
-/

namespace A308188.P2499051859422064780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A151864 n) + 1

end

end A308188.P2499051859422064780

namespace A308188

/-- `and(1, A151864(n))+1` -/
def P2499051859422064780.Spec : Prop :=
  ∀ n, P2499051859422064780.a n = A308188 (n + 1)

end A308188

/-! ## A308188.P4725052523909761243

`gcd(6, A182105(n+1))`
-/

namespace A308188.P4725052523909761243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A182105 (n + 1))

end

end A308188.P4725052523909761243

namespace A308188

/-- `gcd(6, A182105(n+1))` -/
def P4725052523909761243.Spec : Prop :=
  ∀ n, (P4725052523909761243.a n : ℤ) = A308188 (n + 1)

end A308188

/-! ## A308188.P9228739211564035450

`2-floor(sqrt(A257265(n)))`
-/

namespace A308188.P9228739211564035450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.sqrt (A257265 n)

end

end A308188.P9228739211564035450

namespace A308188

/-- `2-floor(sqrt(A257265(n)))` -/
def P9228739211564035450.Spec : Prop :=
  ∀ n, P9228739211564035450.a n = A308188 (n + 1)

end A308188

/-! ## A308188.P12489118768674246056

`char[A055938(n+1)]+1`
-/

namespace A308188.P12489118768674246056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A308188.P12489118768674246056

namespace A308188

/-- `char[A055938(n+1)]+1` -/
def P12489118768674246056.Spec : Prop :=
  ∀ n, (P12489118768674246056.a n : ℤ) = A308188 (n + 1)

end A308188

/-! ## A308188.P16881297756906863890

`2-char[A155689(n+1)]`
-/

namespace A308188.P16881297756906863890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155689 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308188.P16881297756906863890

namespace A308188

/-- `2-char[A155689(n+1)]` -/
def P16881297756906863890.Spec : Prop :=
  ∀ n, P16881297756906863890.a n = A308188 (n + 1)

end A308188

/-! ## A308188.P17954185029280298139

`2-char[A101925(n)-1]`
-/

namespace A308188.P17954185029280298139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308188.P17954185029280298139

namespace A308188

/-- `2-char[A101925(n)-1]` -/
def P17954185029280298139.Spec : Prop :=
  ∀ n, P17954185029280298139.a n = A308188 (n + 1)

end A308188

/-! ## A308188.P15869505413990539053

`2-and(1, ∑[A152980(n)])`
-/

namespace A308188.P15869505413990539053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308188.P15869505413990539053

namespace A308188

/-- `2-and(1, ∑[A152980(n)])` -/
def P15869505413990539053.Spec : Prop :=
  ∀ n, P15869505413990539053.a n = A308188 (n + 1)

end A308188

/-! ## A308188.P9856365974801607440

`2-char[A004134(n)-n]`
-/

namespace A308188.P9856365974801607440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A308188.P9856365974801607440

namespace A308188

/-- `2-char[A004134(n)-n]` -/
def P9856365974801607440.Spec : Prop :=
  ∀ n, P9856365974801607440.a n = A308188 (n + 1)

end A308188

/-! ## A308188.P10396098931708800192

`2-and(1, A153006(n+1))`
-/

namespace A308188.P10396098931708800192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 1 (A153006 (n + 1))

end

end A308188.P10396098931708800192

namespace A308188

/-- `2-and(1, A153006(n+1))` -/
def P10396098931708800192.Spec : Prop :=
  ∀ n, P10396098931708800192.a n = A308188 (n + 1)

end A308188

/-! ## A308188.P4554871025446443987

`2-floor(1/A082850(n+1))`
-/

namespace A308188.P4554871025446443987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊1 / (A082850 (n + 1) : ℚ)⌋

end

end A308188.P4554871025446443987

namespace A308188

/-- `2-floor(1/A082850(n+1))` -/
def P4554871025446443987.Spec : Prop :=
  ∀ n, P4554871025446443987.a n = A308188 (n + 1)

end A308188

/-!
# A308189: Numbers of the form t_n or t_n + t_{n+1} where {t_n} are the tribonacci numbers A000073.

The programs for A308189, the canonical program `A308189.P11944451942465338396` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308189 has offset 1).

The definition of A308189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308189.P11944451942465338396

`a(n-2)+a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6, a(6)=7, a(7)=11`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A308189

/-- `a(n-2)+a(n-4)+a(n-6)` -/
def P11944451942465338396.Spec : Prop :=
  ∀ n, (P11944451942465338396.a n : ℤ) = A308189 (n + 1)

theorem P11944451942465338396.correct : P11944451942465338396.Spec := by
  intro n
  simp only [A308189, Nat.add_sub_cancel]

end A308189

/-! ## A308189.P13498535735270070044

`record[and(1, n)*A213816(A004525(n+1))]`
-/

namespace A308189.P13498535735270070044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A213816 (A004525 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308189.P13498535735270070044

namespace A308189

/-- `record[and(1, n)*A213816(A004525(n+1))]` -/
def P13498535735270070044.Spec : Prop :=
  ∀ n, P13498535735270070044.a n = A308189 (n + 1)

end A308189

/-! ## A308189.P11608402087028644782

`record[A179081(n)*A213816(A008619(n))]`
-/

namespace A308189.P11608402087028644782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n * A213816 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308189.P11608402087028644782

namespace A308189

/-- `record[A179081(n)*A213816(A008619(n))]` -/
def P11608402087028644782.Spec : Prop :=
  ∀ n, P11608402087028644782.a n = A308189 (n + 1)

end A308189

/-! ## A308189.P9764383567692750899

`record[A213816(A320011(n+1))-A000007(n)]`
-/

namespace A308189.P9764383567692750899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (A320011 (n + 1)).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308189.P9764383567692750899

namespace A308189

/-- `record[A213816(A320011(n+1))-A000007(n)]` -/
def P9764383567692750899.Spec : Prop :=
  ∀ n, P9764383567692750899.a n = A308189 (n + 1)

end A308189

/-! ## A308189.P7257255195899496955

`∪[A047081(n), A282718(n)]`
-/

namespace A308189.P7257255195899496955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308189.P7257255195899496955

namespace A308189

/-- `∪[A047081(n), A282718(n)]` -/
def P7257255195899496955.Spec : Prop :=
  ∀ n, (P7257255195899496955.a n : ℤ) = A308189 (n + 1)

end A308189

/-! ## A308189.P16721851241907807958

`record[A213816(n+1)%A213816(n+2)]`
-/

namespace A308189.P16721851241907807958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213816 (n + 1)) (A213816 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308189.P16721851241907807958

namespace A308189

/-- `record[A213816(n+1)%A213816(n+2)]` -/
def P16721851241907807958.Spec : Prop :=
  ∀ n, P16721851241907807958.a n = A308189 (n + 1)

end A308189

/-! ## A308189.P4483891215304967807

`record[A213816(n+1)%A016116(n)]`
-/

namespace A308189.P4483891215304967807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213816 (n + 1)) (A016116 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308189.P4483891215304967807

namespace A308189

/-- `record[A213816(n+1)%A016116(n)]` -/
def P4483891215304967807.Spec : Prop :=
  ∀ n, P4483891215304967807.a n = A308189 (n + 1)

end A308189

/-! ## A308189.P6559436191269848491

`record[and(A078485(n), A213816(n+1))]`
-/

namespace A308189.P6559436191269848491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078485 n) (A213816 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308189.P6559436191269848491

namespace A308189

/-- `record[and(A078485(n), A213816(n+1))]` -/
def P6559436191269848491.Spec : Prop :=
  ∀ n, P6559436191269848491.a n = A308189 (n + 1)

end A308189

/-!
# A308190: Number of steps to reach 5 when iterating x -> A111234(x) starting at x=n.

The programs for A308190, there is no canonical definition to state claims against.
-/

/-! ## A308190.P13319913131278286602

`A001222(lcm(A005994(n), A097006(n)))`
-/

namespace A308190.P13319913131278286602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A005994 n) (A097006 n))

end

end A308190.P13319913131278286602

/-! ## A308190.P750236364364854807

`A296658(A249508(n+1))-A157686(n+1)`
-/

namespace A308190.P750236364364854807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296658 (A249508 (n + 1)).toNat - A157686 (n + 1)

end

end A308190.P750236364364854807

/-! ## A308190.P17598656873671692234

`A296658(A249508(n+1))-log2(A000002(n+2))`
-/

namespace A308190.P17598656873671692234
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A296658 (A249508 (n + 1)).toNat : ℝ) - Real.logb 2 (A000002 (n + 2) : ℝ)

end

end A308190.P17598656873671692234

/-! ## A308190.P16670794379290876785

`A296658(A249508(n+1))-A156351(n+1)%2`
-/

namespace A308190.P16670794379290876785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296658 (A249508 (n + 1)).toNat - Int.tmod (A156351 (n + 1)) 2

end

end A308190.P16670794379290876785

/-!
# A308192: Record values in A308190.

The programs for A308192, there is no canonical definition to state claims against.
-/

/-! ## A308192.P13750288080610966181

`lt[0, Δ[A308191(n)]]`
-/

namespace A308192.P13750288080610966181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A308192.P13750288080610966181

/-! ## A308192.P13202511679158217090

`lt[A308191(n), A308191(n+1)]`
-/

namespace A308192.P13202511679158217090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A308192.P13202511679158217090

/-!
# A308193: Indices of records in A308190.

The programs for A308193, there is no canonical definition to state claims against.
-/

/-! ## A308193.P16099953503566288734

`A308191(A308192(n+1))`
-/

namespace A308193.P16099953503566288734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308191 (A308192 (n + 1)).toNat

end

end A308193.P16099953503566288734

/-! ## A308193.P16705350476977603756

`A308191(lt[0, Δ[A308191(n)]])`
-/

namespace A308193.P16705350476977603756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A308193.P16705350476977603756

/-! ## A308193.P10166149169178258042

`record[A308191(n)%A308191(n+1)]`
-/

namespace A308193.P10166149169178258042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308191 n) (A308191 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A308193.P10166149169178258042

/-! ## A308193.P16917156566022974245

`A308191(lt[A308191(n), A308191(n+1)])`
-/

namespace A308193.P16917156566022974245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308191 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A308193.P16917156566022974245

/-! ## A308193.P16567166771549762570

`A308191(record[A308190(n+5)])`
-/

namespace A308193.P16567166771549762570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308190 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308191 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A308193.P16567166771549762570

/-!
# A308196: Partial sums of A063808.

The programs for A308196, the canonical program `A308196.P1349513473670739889` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308196 has offset 0).

The definition of A308196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A308196.P1349513473670739889

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=19`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A308196

/-- `2*a(n-1)-a(n-2)` -/
def P1349513473670739889.Spec : Prop :=
  ∀ n, P1349513473670739889.a n = A308196 n

theorem P1349513473670739889.correct : P1349513473670739889.Spec := by
  intro n
  simp only [A308196]

end A308196

/-!
# A308197: Numbers m such that the tribonacci representation of m (A278038) ends in an even number of 0's.

The programs for A308197, the canonical program `A308197.P12884528608171429358` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308197 has offset 1).

The definition of A308197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308197.P10861500545409127194

`comp[A308198(n+1)]`
-/

namespace A308197.P10861500545409127194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A308197.P10861500545409127194

namespace A308197

/-- `comp[A308198(n+1)]` -/
def P10861500545409127194.Spec : Prop :=
  ∀ n, (P10861500545409127194.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P12884528608171429358

`eq[0, A000035(A278045(n))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A308197

/-- `eq[0, A000035(A278045(n))]` -/
def P12884528608171429358.Spec : Prop :=
  ∀ n, (P12884528608171429358.a n : ℤ) = A308197 (n + 1)

theorem P12884528608171429358.correct : P12884528608171429358.Spec := by
  intro n
  simp only [A308197, Nat.add_sub_cancel]

end A308197

/-! ## A308197.P16243195720716070849

`eq[0, A010673(A278045(n)²)]`
-/

namespace A308197.P16243195720716070849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A278045 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308197.P16243195720716070849

namespace A308197

/-- `eq[0, A010673(A278045(n)²)]` -/
def P16243195720716070849.Spec : Prop :=
  ∀ n, (P16243195720716070849.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P13928368273903494407

`eq[1, A000034(A278045(n)²)]`
-/

namespace A308197.P13928368273903494407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A278045 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308197.P13928368273903494407

namespace A308197

/-- `eq[1, A000034(A278045(n)²)]` -/
def P13928368273903494407.Spec : Prop :=
  ∀ n, (P13928368273903494407.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P12278805279186284202

`eq[1, A010685(A278045(n)²)]`
-/

namespace A308197.P12278805279186284202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A278045 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308197.P12278805279186284202

namespace A308197

/-- `eq[1, A010685(A278045(n)²)]` -/
def P12278805279186284202.Spec : Prop :=
  ∀ n, (P12278805279186284202.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P4600491137060805445

`eq[1, A033999(A278045(n)²)]`
-/

namespace A308197.P4600491137060805445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A278045 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308197.P4600491137060805445

namespace A308197

/-- `eq[1, A033999(A278045(n)²)]` -/
def P4600491137060805445.Spec : Prop :=
  ∀ n, (P4600491137060805445.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P12293135612480843939

`eq[1, A057979(A278045(n)²)]`
-/

namespace A308197.P12293135612480843939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A278045 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308197.P12293135612480843939

namespace A308197

/-- `eq[1, A057979(A278045(n)²)]` -/
def P12293135612480843939.Spec : Prop :=
  ∀ n, (P12293135612480843939.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P14737820756507811003

`eq[1, A087960(A278045(n)²)]`
-/

namespace A308197.P14737820756507811003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A278045 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308197.P14737820756507811003

namespace A308197

/-- `eq[1, A087960(A278045(n)²)]` -/
def P14737820756507811003.Spec : Prop :=
  ∀ n, (P14737820756507811003.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P2106055469223589910

`lt[A000035(A278045(n)²), 1]`
-/

namespace A308197.P2106055469223589910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A278045 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308197.P2106055469223589910

namespace A308197

/-- `lt[A000035(A278045(n)²), 1]` -/
def P2106055469223589910.Spec : Prop :=
  ∀ n, (P2106055469223589910.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P7061180297808911984

`eq[1, A001511(A278045(n)+1)]`
-/

namespace A308197.P7061180297808911984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A278045 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308197.P7061180297808911984

namespace A308197

/-- `eq[1, A001511(A278045(n)+1)]` -/
def P7061180297808911984.Spec : Prop :=
  ∀ n, (P7061180297808911984.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P2327771771487141300

`eq[2, A010149(A278045(n)+1)]`
-/

namespace A308197.P2327771771487141300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010149 (A278045 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308197.P2327771771487141300

namespace A308197

/-- `eq[2, A010149(A278045(n)+1)]` -/
def P2327771771487141300.Spec : Prop :=
  ∀ n, (P2327771771487141300.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P4582379854399228062

`eq[2, A010673(A278045(n)+1)]`
-/

namespace A308197.P4582379854399228062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A278045 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308197.P4582379854399228062

namespace A308197

/-- `eq[2, A010673(A278045(n)+1)]` -/
def P4582379854399228062.Spec : Prop :=
  ∀ n, (P4582379854399228062.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P2180589414373926432

`eq[1, A010685(A278045(n)+2)]`
-/

namespace A308197.P2180589414373926432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A278045 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308197.P2180589414373926432

namespace A308197

/-- `eq[1, A010685(A278045(n)+2)]` -/
def P2180589414373926432.Spec : Prop :=
  ∀ n, (P2180589414373926432.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P2044777241203054844

`eq[1, A033999(A278045(n)+2)]`
-/

namespace A308197.P2044777241203054844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A278045 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308197.P2044777241203054844

namespace A308197

/-- `eq[1, A033999(A278045(n)+2)]` -/
def P2044777241203054844.Spec : Prop :=
  ∀ n, (P2044777241203054844.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P1428217034716668962

`lt[A000035(A278045(n)+2), 1]`
-/

namespace A308197.P1428217034716668962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A278045 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308197.P1428217034716668962

namespace A308197

/-- `lt[A000035(A278045(n)+2), 1]` -/
def P1428217034716668962.Spec : Prop :=
  ∀ n, (P1428217034716668962.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P10178037693731487419

`eq[1, A087960(2*A278045(n))]`
-/

namespace A308197.P10178037693731487419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * A278045 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308197.P10178037693731487419

namespace A308197

/-- `eq[1, A087960(2*A278045(n))]` -/
def P10178037693731487419.Spec : Prop :=
  ∀ n, (P10178037693731487419.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P892305196569269265

`eq[A000007(n), A010673(A278045(n))]`
-/

namespace A308197.P892305196569269265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A278045 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308197.P892305196569269265

namespace A308197

/-- `eq[A000007(n), A010673(A278045(n))]` -/
def P892305196569269265.Spec : Prop :=
  ∀ n, (P892305196569269265.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P3868611342491092745

`A276796(A308198(n+2))`
-/

namespace A308197.P3868611342491092745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A308198 (n + 2)).toNat

end

end A308197.P3868611342491092745

namespace A308197

/-- `A276796(A308198(n+2))` -/
def P3868611342491092745.Spec : Prop :=
  ∀ n, P3868611342491092745.a n = A308197 (n + 1)

end A308197

/-! ## A308197.P1086377360053921977

`eq[A010673(2*n), A010673(A278045(n))]`
-/

namespace A308197.P1086377360053921977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A278045 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308197.P1086377360053921977

namespace A308197

/-- `eq[A010673(2*n), A010673(A278045(n))]` -/
def P1086377360053921977.Spec : Prop :=
  ∀ n, (P1086377360053921977.a n : ℤ) = A308197 (n + 1)

end A308197

/-! ## A308197.P3817354119916334604

`eq[A010685(2*n), A010685(A278045(n))]`
-/

namespace A308197.P3817354119916334604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A278045 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308197.P3817354119916334604

namespace A308197

/-- `eq[A010685(2*n), A010685(A278045(n))]` -/
def P3817354119916334604.Spec : Prop :=
  ∀ n, (P3817354119916334604.a n : ℤ) = A308197 (n + 1)

end A308197

/-!
# A308198: Numbers m such that the tribonacci representation of m (A278038) ends in an odd number of 0's.

The programs for A308198, the canonical program `A308198.P813162304771468293` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308198 has offset 1).

The definition of A308198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7044 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308198.P813162304771468293

`eq[1, A278045(n)%2]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A308198

/-- `eq[1, A278045(n)%2]` -/
def P813162304771468293.Spec : Prop :=
  ∀ n, (P813162304771468293.a n : ℤ) = A308198 (n + 1)

theorem P813162304771468293.correct : P813162304771468293.Spec := by
  intro n
  simp only [A308198, Nat.add_sub_cancel]

end A308198

/-! ## A308198.P18098090344799942548

`eq[1, A000035(A278045(n))]`
-/

namespace A308198.P18098090344799942548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A278045 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P18098090344799942548

namespace A308198

/-- `eq[1, A000035(A278045(n))]` -/
def P18098090344799942548.Spec : Prop :=
  ∀ n, (P18098090344799942548.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P17436452526842084112

`eq[1, A010121(A278045(n)²)]`
-/

namespace A308198.P17436452526842084112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (A278045 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P17436452526842084112

namespace A308198

/-- `eq[1, A010121(A278045(n)²)]` -/
def P17436452526842084112.Spec : Prop :=
  ∀ n, (P17436452526842084112.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P11147762986996770325

`eq[1, A040364(A278045(n)²)]`
-/

namespace A308198.P11147762986996770325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040364 (A278045 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P11147762986996770325

namespace A308198

/-- `eq[1, A040364(A278045(n)²)]` -/
def P11147762986996770325.Spec : Prop :=
  ∀ n, (P11147762986996770325.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P10777471413380506489

`eq[2, A000034(A278045(n)²)]`
-/

namespace A308198.P10777471413380506489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A278045 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P10777471413380506489

namespace A308198

/-- `eq[2, A000034(A278045(n)²)]` -/
def P10777471413380506489.Spec : Prop :=
  ∀ n, (P10777471413380506489.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P4636450629256139060

`eq[2, A010149(A278045(n)²)]`
-/

namespace A308198.P4636450629256139060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010149 (A278045 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P4636450629256139060

namespace A308198

/-- `eq[2, A010149(A278045(n)²)]` -/
def P4636450629256139060.Spec : Prop :=
  ∀ n, (P4636450629256139060.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P17471318891185317980

`eq[2, A010673(A278045(n)²)]`
-/

namespace A308198.P17471318891185317980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A278045 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P17471318891185317980

namespace A308198

/-- `eq[2, A010673(A278045(n)²)]` -/
def P17471318891185317980.Spec : Prop :=
  ∀ n, (P17471318891185317980.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P17826267366782170916

`eq[1, A010685(A278045(n)+1)]`
-/

namespace A308198.P17826267366782170916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A278045 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P17826267366782170916

namespace A308198

/-- `eq[1, A010685(A278045(n)+1)]` -/
def P17826267366782170916.Spec : Prop :=
  ∀ n, (P17826267366782170916.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P3173264314333412083

`eq[1, A033999(A278045(n)+1)]`
-/

namespace A308198.P3173264314333412083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A278045 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P3173264314333412083

namespace A308198

/-- `eq[1, A033999(A278045(n)+1)]` -/
def P3173264314333412083.Spec : Prop :=
  ∀ n, (P3173264314333412083.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P2341063567205067664

`lt[A000035(A278045(n)+1), 1]`
-/

namespace A308198.P2341063567205067664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A278045 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A308198.P2341063567205067664

namespace A308198

/-- `lt[A000035(A278045(n)+1), 1]` -/
def P2341063567205067664.Spec : Prop :=
  ∀ n, (P2341063567205067664.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P10332374068219528547

`eq[1, A001511(A278045(n)+2)]`
-/

namespace A308198.P10332374068219528547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A278045 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P10332374068219528547

namespace A308198

/-- `eq[1, A001511(A278045(n)+2)]` -/
def P10332374068219528547.Spec : Prop :=
  ∀ n, (P10332374068219528547.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P7036941763908205876

`eq[2, A010149(A278045(n)+2)]`
-/

namespace A308198.P7036941763908205876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010149 (A278045 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P7036941763908205876

namespace A308198

/-- `eq[2, A010149(A278045(n)+2)]` -/
def P7036941763908205876.Spec : Prop :=
  ∀ n, (P7036941763908205876.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P1463559891326656025

`eq[2, A010673(A278045(n)+2)]`
-/

namespace A308198.P1463559891326656025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A278045 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P1463559891326656025

namespace A308198

/-- `eq[2, A010673(A278045(n)+2)]` -/
def P1463559891326656025.Spec : Prop :=
  ∀ n, (P1463559891326656025.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P8203266953849028312

`eq[0, A022074(2*A278045(n))]`
-/

namespace A308198.P8203266953849028312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022074 (2 * A278045 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P8203266953849028312

namespace A308198

/-- `eq[0, A022074(2*A278045(n))]` -/
def P8203266953849028312.Spec : Prop :=
  ∀ n, (P8203266953849028312.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P3971068207068777494

`eq[3, A002586(A278045(n)+2)]`
-/

namespace A308198.P3971068207068777494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (A278045 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P3971068207068777494

namespace A308198

/-- `eq[3, A002586(A278045(n)+2)]` -/
def P3971068207068777494.Spec : Prop :=
  ∀ n, (P3971068207068777494.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P1103776613040265155

`eq[1, A010121(2*A278045(n))]`
-/

namespace A308198.P1103776613040265155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (2 * A278045 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P1103776613040265155

namespace A308198

/-- `eq[1, A010121(2*A278045(n))]` -/
def P1103776613040265155.Spec : Prop :=
  ∀ n, (P1103776613040265155.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P2228408406965405224

`eq[1, A040364(2*A278045(n))]`
-/

namespace A308198.P2228408406965405224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040364 (2 * A278045 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308198.P2228408406965405224

namespace A308198

/-- `eq[1, A040364(2*A278045(n))]` -/
def P2228408406965405224.Spec : Prop :=
  ∀ n, (P2228408406965405224.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P13694506932186890815

`comp[A308197(n+1)]`
-/

namespace A308198.P13694506932186890815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A308198.P13694506932186890815

namespace A308198

/-- `comp[A308197(n+1)]` -/
def P13694506932186890815.Spec : Prop :=
  ∀ n, (P13694506932186890815.a n : ℤ) = A308198 (n + 1)

end A308198

/-! ## A308198.P10114465777044000057

`lt[A000035(n)/2, A000035(A278045(n))]`
-/

namespace A308198.P10114465777044000057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A278045 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A308198.P10114465777044000057

namespace A308198

/-- `lt[A000035(n)/2, A000035(A278045(n))]` -/
def P10114465777044000057.Spec : Prop :=
  ∀ n, (P10114465777044000057.a n : ℤ) = A308198 (n + 1)

end A308198

/-!
# A308199: The tribonacci representation of a(n) is obtained by appending 0,0 to the tribonacci representation of n (cf. A278038).

The programs for A308199, the canonical program `A308199.P4084788755827198599` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A308199 has offset 0).

The definition of A308199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A308199.P4084788755827198599

`A278040(n)-1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A308199

/-- `A278040(n)-1` -/
def P4084788755827198599.Spec : Prop :=
  ∀ n, P4084788755827198599.a n = A308199 n

theorem P4084788755827198599.correct : P4084788755827198599.Spec := by
  intro n
  simp only [A308199]

end A308199

/-! ## A308199.P16213625588797901510

`A003145(n+1)-2`
-/

namespace A308199.P16213625588797901510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1) - 2

end

end A308199.P16213625588797901510

namespace A308199

/-- `A003145(n+1)-2` -/
def P16213625588797901510.Spec : Prop :=
  ∀ n, P16213625588797901510.a n = A308199 n

theorem P16213625588797901510.correct : P16213625588797901510.Spec := by
  intro n
  simp only [A308199, Nat.add_sub_cancel, A308199.P16213625588797901510.a, A308199.P4084788755827198599.a, A003145, A003145.P16204300471705086444.f1, A003145.P16204300471705086444.f2, A003145.P16204300471705086444.a, A278040, A278040.P10650196326427599491.a, A317193, A317193.P13677178970524234186.a, A057078, A057078.P4951435475119423572.a, A278045, A278045.P7038591754817271268.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A308199

/-! ## A308199.P61344429770834193

`lt[1, A305393(n+2)]`
-/

namespace A308199.P61344429770834193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305393 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A308199.P61344429770834193

namespace A308199

/-- `lt[1, A305393(n+2)]` -/
def P61344429770834193.Spec : Prop :=
  ∀ n, (P61344429770834193.a n : ℤ) = A308199 n

end A308199

/-! ## A308199.P8749940752490908389

`eq[4, A305394(n+2)]`
-/

namespace A308199.P8749940752490908389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305394 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308199.P8749940752490908389

namespace A308199

/-- `eq[4, A305394(n+2)]` -/
def P8749940752490908389.Spec : Prop :=
  ∀ n, (P8749940752490908389.a n : ℤ) = A308199 n

end A308199

/-! ## A308199.P1891076718441191520

`eq[5, A275925(n+3)]`
-/

namespace A308199.P1891076718441191520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308199.P1891076718441191520

namespace A308199

/-- `eq[5, A275925(n+3)]` -/
def P1891076718441191520.Spec : Prop :=
  ∀ n, (P1891076718441191520.a n : ℤ) = A308199 n

end A308199

/-! ## A308199.P9090112300471745738

`eq[2, A305393(n+1)]-1`
-/

namespace A308199.P9090112300471745738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A308199.P9090112300471745738

namespace A308199

/-- `eq[2, A305393(n+1)]-1` -/
def P9090112300471745738.Spec : Prop :=
  ∀ n, P9090112300471745738.a n = A308199 n

end A308199

/-! ## A308199.P2051434955009972525

`eq[1, A317193(n+2)+2]`
-/

namespace A308199.P2051434955009972525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (n + 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308199.P2051434955009972525

namespace A308199

/-- `eq[1, A317193(n+2)+2]` -/
def P2051434955009972525.Spec : Prop :=
  ∀ n, (P2051434955009972525.a n : ℤ) = A308199 n

end A308199

/-! ## A308199.P2418393995020285159

`A140103(n+1)-(n+3)`
-/

namespace A308199.P2418393995020285159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1) - (n + 3 : ℤ)

end

end A308199.P2418393995020285159

namespace A308199

/-- `A140103(n+1)-(n+3)` -/
def P2418393995020285159.Spec : Prop :=
  ∀ n, P2418393995020285159.a n = A308199 n

end A308199

/-! ## A308199.P3577398173015908048

`A278039(A278039(n))`
-/

namespace A308199.P3577398173015908048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A278039 n).toNat

end

end A308199.P3577398173015908048

namespace A308199

/-- `A278039(A278039(n))` -/
def P3577398173015908048.Spec : Prop :=
  ∀ n, P3577398173015908048.a n = A308199 n

end A308199

/-! ## A308199.P16998667330063166652

`∪[A003146(n+1), A308200(n)]`
-/

namespace A308199.P16998667330063166652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A308199.P16998667330063166652

namespace A308199

/-- `∪[A003146(n+1), A308200(n)]` -/
def P16998667330063166652.Spec : Prop :=
  ∀ n, (P16998667330063166652.a n : ℤ) = A308199 n

end A308199

/-! ## A308199.P15854735009053895849

`A385455(A140101(n+1))`
-/

namespace A308199.P15854735009053895849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385455 (A140101 (n + 1)).toNat

end

end A308199.P15854735009053895849

namespace A308199

/-- `A385455(A140101(n+1))` -/
def P15854735009053895849.Spec : Prop :=
  ∀ n, P15854735009053895849.a n = A308199 n

end A308199

/-! ## A308199.P15187213605141646857

`A003265(A140100(n+1))-1`
-/

namespace A308199.P15187213605141646857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003265 (A140100 (n + 1)).toNat - 1

end

end A308199.P15187213605141646857

namespace A308199

/-- `A003265(A140100(n+1))-1` -/
def P15187213605141646857.Spec : Prop :=
  ∀ n, P15187213605141646857.a n = A308199 n

end A308199

/-! ## A308199.P15626151145259183041

`lt[atan(n), A278045(n)]`
-/

namespace A308199.P15626151145259183041
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A308199.P15626151145259183041

namespace A308199

/-- `lt[atan(n), A278045(n)]` -/
def P15626151145259183041.Spec : Prop :=
  ∀ n, (P15626151145259183041.a n : ℤ) = A308199 n

end A308199

/-! ## A308199.P10873980837219169180

`eq[1, A080843(n+1)]`
-/

namespace A308199.P10873980837219169180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308199.P10873980837219169180

namespace A308199

/-- `eq[1, A080843(n+1)]` -/
def P10873980837219169180.Spec : Prop :=
  ∀ n, (P10873980837219169180.a n : ℤ) = A308199 n

end A308199

/-! ## A308199.P6274786500931661310

`eq[1, A080843(n)]-1`
-/

namespace A308199.P6274786500931661310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A308199.P6274786500931661310

namespace A308199

/-- `eq[1, A080843(n)]-1` -/
def P6274786500931661310.Spec : Prop :=
  ∀ n, P6274786500931661310.a n = A308199 n

end A308199

/-! ## A308199.P2427217092437346321

`eq[2, A092782(n+2)]`
-/

namespace A308199.P2427217092437346321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A308199.P2427217092437346321

namespace A308199

/-- `eq[2, A092782(n+2)]` -/
def P2427217092437346321.Spec : Prop :=
  ∀ n, (P2427217092437346321.a n : ℤ) = A308199 n

end A308199

/-! ## A308199.P985726745170556675

`A003144(A003144(n+1))-1`
-/

namespace A308199.P985726745170556675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (A003144 (n + 1)).toNat - 1

end

end A308199.P985726745170556675

namespace A308199

/-- `A003144(A003144(n+1))-1` -/
def P985726745170556675.Spec : Prop :=
  ∀ n, P985726745170556675.a n = A308199 n

end A308199

/-! ## A308199.P8403614915949031595

`eq[1, A295561(n+1)]+n`
-/

namespace A308199.P8403614915949031595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n

end

end A308199.P8403614915949031595

namespace A308199

/-- `eq[1, A295561(n+1)]+n` -/
def P8403614915949031595.Spec : Prop :=
  ∀ n, (P8403614915949031595.a n : ℤ) = A308199 n

end A308199

