import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A046700: a(1) = a(2) = a(3) = 1, a(n) = a(n - a(n-1)) + a(n - a(n-3)) for 3 < n < 165.

The programs for A046700, there is no canonical definition to state claims against.
-/

/-! ## A046700.P7609740511024574541

`A070939(A371794(n)^A110591(n))`
-/

namespace A046700.P7609740511024574541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A371794 n : ℚ) ^ (A110591 n : ℤ))).toNat

end

end A046700.P7609740511024574541

/-! ## A046700.P13902141725722146030

`A259549(n+1)-A112713(A038504(n))`
-/

namespace A046700.P13902141725722146030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259549 (n + 1) - A112713 (A038504 n).toNat

end

end A046700.P13902141725722146030

/-! ## A046700.P5923363541206762534

`A081604(lcm(2, A192959(n)))`
-/

namespace A046700.P5923363541206762534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Int.lcm 2 (A192959 n))

end

end A046700.P5923363541206762534

/-! ## A046700.P10744893217907904445

`A134021(A000045(n)*A007439(n+1))`
-/

namespace A046700.P10744893217907904445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A000045 n * A007439 (n + 1)).toNat

end

end A046700.P10744893217907904445

/-! ## A046700.P2784405318331780451

`A134021(lcm(A000045(n), A007439(n+1)))`
-/

namespace A046700.P2784405318331780451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (Int.lcm (A000045 n) (A007439 (n + 1)))

end

end A046700.P2784405318331780451

/-!
# A046701: a(1) = a(2) = a(3) = 1, a(n) = a(n - a(n-1)) + a(n-1 - a(n-3)) (n > 3).

The programs for A046701, the canonical program `A046701.P14779156326507527591` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046701 has offset 1).

The definition of A046701 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-1-a(n-3))` (program `A046701.P14779156326507527591`, by `A046701.P14779156326507527591.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A046701.P14779156326507527591

`a(n-a(n-1))+a(n-1-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046701

/-- `a(n-a(n-1))+a(n-1-a(n-3))` -/
def P14779156326507527591.Spec : Prop :=
  ∀ n, (P14779156326507527591.a n : ℤ) = A046701 (n + 1)

theorem P14779156326507527591.correct : P14779156326507527591.Spec := by
  intro n
  simp only [A046701, Nat.add_sub_cancel]

end A046701

/-!
# A046702: a(n)=a(n-a(n-1))+a(n-1-a(n-2))+a(n-2-a(n-3)), n>3. a(1)=a(2)=a(3)=1.

The programs for A046702, the canonical program `A046702.P12328443417442244157` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046702 has offset 1).

The definition of A046702 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-1-a(n-2))+a(n-2-a(n-3))` (program `A046702.P12328443417442244157`, by `A046702.P12328443417442244157.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A046702.P12328443417442244157

`a(n-a(n-1))+a(n-1-a(n-2))+a(n-2-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046702

/-- `a(n-a(n-1))+a(n-1-a(n-2))+a(n-2-a(n-3))` -/
def P12328443417442244157.Spec : Prop :=
  ∀ n, (P12328443417442244157.a n : ℤ) = A046702 (n + 1)

theorem P12328443417442244157.correct : P12328443417442244157.Spec := by
  intro n
  simp only [A046702, Nat.add_sub_cancel]

end A046702

/-! ## A046702.P16157573985669180905

`2-A240834(n+2)+n`
-/

namespace A046702.P16157573985669180905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A240834 (n + 2) + (n : ℤ)

end

end A046702.P16157573985669180905

namespace A046702

/-- `2-A240834(n+2)+n` -/
def P16157573985669180905.Spec : Prop :=
  ∀ n, P16157573985669180905.a n = A046702 (n + 1)

end A046702

/-! ## A046702.P17197103397353952994

`n-A023444(A240834(n+2))`
-/

namespace A046702.P17197103397353952994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023444 (A240834 (n + 2)).toNat

end

end A046702.P17197103397353952994

namespace A046702

/-- `n-A023444(A240834(n+2))` -/
def P17197103397353952994.Spec : Prop :=
  ∀ n, P17197103397353952994.a n = A046702 (n + 1)

end A046702

/-! ## A046702.P9103624669117379547

`A004736(A240834(n+2)+∑[n])`
-/

namespace A046702.P9103624669117379547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A240834 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A046702.P9103624669117379547

namespace A046702

/-- `A004736(A240834(n+2)+∑[n])` -/
def P9103624669117379547.Spec : Prop :=
  ∀ n, P9103624669117379547.a n = A046702 (n + 1)

end A046702

/-! ## A046702.P7990441630193939759

`abs(A240834(n+2)+A024000(n+3))`
-/

namespace A046702.P7990441630193939759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A240834 (n + 2) + A024000 (n + 3)|

end

end A046702.P7990441630193939759

namespace A046702

/-- `abs(A240834(n+2)+A024000(n+3))` -/
def P7990441630193939759.Spec : Prop :=
  ∀ n, P7990441630193939759.a n = A046702 (n + 1)

end A046702

/-! ## A046702.P6532418185159378134

`A004442(∑[n+1]%(A240834(n+2)+∑[n]))`
-/

namespace A046702.P6532418185159378134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A240834 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))).toNat

end

end A046702.P6532418185159378134

namespace A046702

/-- `A004442(∑[n+1]%(A240834(n+2)+∑[n]))` -/
def P6532418185159378134.Spec : Prop :=
  ∀ n, P6532418185159378134.a n = A046702 (n + 1)

end A046702

/-! ## A046702.P5724808745648127398

`A025581(A240834(n+2)+A000096(n))`
-/

namespace A046702.P5724808745648127398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A240834 (n + 2) + A000096 n).toNat

end

end A046702.P5724808745648127398

namespace A046702

/-- `A025581(A240834(n+2)+A000096(n))` -/
def P5724808745648127398.Spec : Prop :=
  ∀ n, P5724808745648127398.a n = A046702 (n + 1)

end A046702

/-! ## A046702.P2485944006668345254

`A028310(n+2)+A001489(A240834(n+2))`
-/

namespace A046702.P2485944006668345254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 2) + A001489 (A240834 (n + 2)).toNat

end

end A046702.P2485944006668345254

namespace A046702

/-- `A028310(n+2)+A001489(A240834(n+2))` -/
def P2485944006668345254.Spec : Prop :=
  ∀ n, P2485944006668345254.a n = A046702 (n + 1)

end A046702

/-! ## A046702.P17867539520587815045

`A008619(2*(n+1))+A001489(A240834(n+2))`
-/

namespace A046702.P17867539520587815045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (n + 1)) + A001489 (A240834 (n + 2)).toNat

end

end A046702.P17867539520587815045

namespace A046702

/-- `A008619(2*(n+1))+A001489(A240834(n+2))` -/
def P17867539520587815045.Spec : Prop :=
  ∀ n, P17867539520587815045.a n = A046702 (n + 1)

end A046702

/-! ## A046702.P12077725357538040693

`A028242(2*(n+1))+A001489(A240834(n+2))`
-/

namespace A046702.P12077725357538040693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * (n + 1)) + A001489 (A240834 (n + 2)).toNat

end

end A046702.P12077725357538040693

namespace A046702

/-- `A028242(2*(n+1))+A001489(A240834(n+2))` -/
def P12077725357538040693.Spec : Prop :=
  ∀ n, P12077725357538040693.a n = A046702 (n + 1)

end A046702

/-!
# A046703: Multiplicative primes: product of digits is a prime.

The programs for A046703, there is no canonical definition to state claims against.
-/

/-! ## A046703.P12951182833388509428

`∩[A028842(n+1), A030291(n+1)]`
-/

namespace A046703.P12951182833388509428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046703.P12951182833388509428

/-! ## A046703.P17824387376194802993

`A117835(A099260(n))`
-/

namespace A046703.P17824387376194802993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117835 (A099260 n).toNat

end

end A046703.P17824387376194802993

/-! ## A046703.P14792134708480546457

`A117835(comp[A169964(n+1)])`
-/

namespace A046703.P14792134708480546457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169964 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117835 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A046703.P14792134708480546457

/-!
# A046704: Additive primes: sum of digits is a prime.

The programs for A046704, the canonical program `A046704.P5960300289646636336` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046704 has offset 1).

The definition of A046704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4086 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046704.P11836185181687502139

`A000040(A075177(n+1))`
-/

namespace A046704.P11836185181687502139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A075177 (n + 1)).toNat

end

end A046704.P11836185181687502139

namespace A046704

/-- `A000040(A075177(n+1))` -/
def P11836185181687502139.Spec : Prop :=
  ∀ n, P11836185181687502139.a n = A046704 (n + 1)

end A046704

/-! ## A046704.P5960300289646636336

`p?[A000040(n+1)*A001222(A007605(n+1))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046704

/-- `p?[A000040(n+1)*A001222(A007605(n+1))]` -/
def P5960300289646636336.Spec : Prop :=
  ∀ n, P5960300289646636336.a n = A046704 (n + 1)

theorem P5960300289646636336.correct : P5960300289646636336.Spec := by
  intro n
  simp only [A046704, Nat.add_sub_cancel]

end A046704

/-! ## A046704.P8940519154895765617

`A182986(A075177(n+1)+1)`
-/

namespace A046704.P8940519154895765617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A075177 (n + 1) + 1).toNat

end

end A046704.P8940519154895765617

namespace A046704

/-- `A182986(A075177(n+1)+1)` -/
def P8940519154895765617.Spec : Prop :=
  ∀ n, P8940519154895765617.a n = A046704 (n + 1)

end A046704

/-! ## A046704.P6620438572203514601

`p?[A028834(n+1)]`
-/

namespace A046704.P6620438572203514601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046704.P6620438572203514601

namespace A046704

/-- `p?[A028834(n+1)]` -/
def P6620438572203514601.Spec : Prop :=
  ∀ n, P6620438572203514601.a n = A046704 (n + 1)

end A046704

/-! ## A046704.P9505004797508404541

`filter[A028834(n+1), A010051(#)]`
-/

namespace A046704.P9505004797508404541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A046704.P9505004797508404541

namespace A046704

/-- `filter[A028834(n+1), A010051(#)]` -/
def P9505004797508404541.Spec : Prop :=
  ∀ n, P9505004797508404541.a n = A046704 (n + 1)

end A046704

/-! ## A046704.P16877122085409363699

`∩[A000040(n+1), A028834(n+1)]`
-/

namespace A046704.P16877122085409363699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046704.P16877122085409363699

namespace A046704

/-- `∩[A000040(n+1), A028834(n+1)]` -/
def P16877122085409363699.Spec : Prop :=
  ∀ n, (P16877122085409363699.a n : ℤ) = A046704 (n + 1)

end A046704

/-! ## A046704.P8009384902838779906

`∩[A008578(n+1), A028834(n+1)]`
-/

namespace A046704.P8009384902838779906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046704.P8009384902838779906

namespace A046704

/-- `∩[A008578(n+1), A028834(n+1)]` -/
def P8009384902838779906.Spec : Prop :=
  ∀ n, (P8009384902838779906.a n : ℤ) = A046704 (n + 1)

end A046704

/-! ## A046704.P17823557573854212525

`∩[A028834(n+1), A033946(n+1)]`
-/

namespace A046704.P17823557573854212525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046704.P17823557573854212525

namespace A046704

/-- `∩[A028834(n+1), A033946(n+1)]` -/
def P17823557573854212525.Spec : Prop :=
  ∀ n, (P17823557573854212525.a n : ℤ) = A046704 (n + 1)

end A046704

/-! ## A046704.P5872579367840226342

`∩[A028834(n+1), A046022(n+1)]`
-/

namespace A046704.P5872579367840226342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046704.P5872579367840226342

namespace A046704

/-- `∩[A028834(n+1), A046022(n+1)]` -/
def P5872579367840226342.Spec : Prop :=
  ∀ n, (P5872579367840226342.a n : ℤ) = A046704 (n + 1)

end A046704

/-! ## A046704.P13463271209832001667

`∩[A028834(n+1), A051948(n+1)]`
-/

namespace A046704.P13463271209832001667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046704.P13463271209832001667

namespace A046704

/-- `∩[A028834(n+1), A051948(n+1)]` -/
def P13463271209832001667.Spec : Prop :=
  ∀ n, (P13463271209832001667.a n : ℤ) = A046704 (n + 1)

end A046704

/-! ## A046704.P169945607085433440

`∩[A028834(n+1), A062972(n+1)]`
-/

namespace A046704.P169945607085433440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046704.P169945607085433440

namespace A046704

/-- `∩[A028834(n+1), A062972(n+1)]` -/
def P169945607085433440.Spec : Prop :=
  ∀ n, (P169945607085433440.a n : ℤ) = A046704 (n + 1)

end A046704

/-! ## A046704.P872081483064280137

`∩[A028834(n+1), A066050(n+1)]`
-/

namespace A046704.P872081483064280137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046704.P872081483064280137

namespace A046704

/-- `∩[A028834(n+1), A066050(n+1)]` -/
def P872081483064280137.Spec : Prop :=
  ∀ n, (P872081483064280137.a n : ℤ) = A046704 (n + 1)

end A046704

/-! ## A046704.P6971332298372466498

`∩[A028834(n+1), A067126(n+1)]`
-/

namespace A046704.P6971332298372466498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046704.P6971332298372466498

namespace A046704

/-- `∩[A028834(n+1), A067126(n+1)]` -/
def P6971332298372466498.Spec : Prop :=
  ∀ n, (P6971332298372466498.a n : ℤ) = A046704 (n + 1)

end A046704

/-! ## A046704.P12815123935320792649

`∩[A028834(n+1), A116974(n+1)]`
-/

namespace A046704.P12815123935320792649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046704.P12815123935320792649

namespace A046704

/-- `∩[A028834(n+1), A116974(n+1)]` -/
def P12815123935320792649.Spec : Prop :=
  ∀ n, (P12815123935320792649.a n : ℤ) = A046704 (n + 1)

end A046704

/-! ## A046704.P9230451403991200492

`∩[A028834(n+1), A158611(n+1)]`
-/

namespace A046704.P9230451403991200492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046704.P9230451403991200492

namespace A046704

/-- `∩[A028834(n+1), A158611(n+1)]` -/
def P9230451403991200492.Spec : Prop :=
  ∀ n, (P9230451403991200492.a n : ℤ) = A046704 (n + 1)

end A046704

/-! ## A046704.P17491239960870490188

`∩[A028834(n+1), A072227(n+1)]`
-/

namespace A046704.P17491239960870490188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046704.P17491239960870490188

namespace A046704

/-- `∩[A028834(n+1), A072227(n+1)]` -/
def P17491239960870490188.Spec : Prop :=
  ∀ n, (P17491239960870490188.a n : ℤ) = A046704 (n + 1)

end A046704

/-! ## A046704.P15793474744725342602

`p?[A129630(n+1)+1]`
-/

namespace A046704.P15793474744725342602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129630 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046704.P15793474744725342602

namespace A046704

/-- `p?[A129630(n+1)+1]` -/
def P15793474744725342602.Spec : Prop :=
  ∀ n, P15793474744725342602.a n = A046704 (n + 1)

end A046704

/-! ## A046704.P7264403344027832864

`p?[n*A322968(A007953(n))]`
-/

namespace A046704.P7264403344027832864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A322968 (A007953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046704.P7264403344027832864

namespace A046704

/-- `p?[n*A322968(A007953(n))]` -/
def P7264403344027832864.Spec : Prop :=
  ∀ n, P7264403344027832864.a n = A046704 (n + 1)

end A046704

/-! ## A046704.P13863576369084085410

`filter[A028834(n+1), A080339(#)]`
-/

namespace A046704.P13863576369084085410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A046704.P13863576369084085410

namespace A046704

/-- `filter[A028834(n+1), A080339(#)]` -/
def P13863576369084085410.Spec : Prop :=
  ∀ n, P13863576369084085410.a n = A046704 (n + 1)

end A046704

/-! ## A046704.P10265515860473524523

`∩[A005180(n+1), A028834(n+1)]`
-/

namespace A046704.P10265515860473524523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046704.P10265515860473524523

namespace A046704

/-- `∩[A005180(n+1), A028834(n+1)]` -/
def P10265515860473524523.Spec : Prop :=
  ∀ n, (P10265515860473524523.a n : ℤ) = A046704 (n + 1)

end A046704

/-!
# A046705: Palindromic primes whose product of digits is a prime.

The programs for A046705, there is no canonical definition to state claims against.
-/

/-! ## A046705.P3459314014739276208

`∩[A046703(n+1), A117058(n+1)]`
-/

namespace A046705.P3459314014739276208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046705.P3459314014739276208

/-! ## A046705.P15484740736506060012

`∩[A046713(n+1), A117058(n+1)]`
-/

namespace A046705.P15484740736506060012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046705.P15484740736506060012

/-! ## A046705.P2433264224548744338

`∩[A046703(n+1), A082207(n+1)]`
-/

namespace A046705.P2433264224548744338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046705.P2433264224548744338

/-! ## A046705.P4645394328568730606

`∩[A046713(n+1), A082207(n+1)]`
-/

namespace A046705.P4645394328568730606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046705.P4645394328568730606

/-! ## A046705.P6074175759942082264

`∩[A046703(n+1), A088562(n+1)]`
-/

namespace A046705.P6074175759942082264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046705.P6074175759942082264

/-!
# A046706: a(n) = (1/2)*(n+1)!*Sum_{k=0..floor(n/2)} n^(2k+1)/(2k+1)!.

The programs for A046706, there is no canonical definition to state claims against.
-/

/-! ## A046706.P9112893152956134852

`A126168(n!*ceil(15^(n/3)))`
-/

namespace A046706.P9112893152956134852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 ((Nat.factorial n : ℤ) * ⌈(15 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉).toNat

end

end A046706.P9112893152956134852

/-!
# A046707: a(n) = n!*Sum_{k=0..n/2} n^(2k)/(2k)!.

The programs for A046707, there is no canonical definition to state claims against.
-/

/-! ## A046707.P871903312191796048

`A260355(A288309(n))`
-/

namespace A046707.P871903312191796048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260355 (A288309 n).toNat

end

end A046707.P871903312191796048

/-!
# A046711: From the Bruck-Ryser theorem: numbers n == 1 or 2 (mod 4) which are also the sum of 2 squares.

The programs for A046711, the canonical program `A046711.P9858808999613053756` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046711 has offset 1).

The definition of A046711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046711.P9858808999613053756

`∪[A057653(n+1), A097269(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A046711

/-- `∪[A057653(n+1), A097269(n+1)]` -/
def P9858808999613053756.Spec : Prop :=
  ∀ n, (P9858808999613053756.a n : ℤ) = A046711 (n + 1)

theorem P9858808999613053756.correct : P9858808999613053756.Spec := by
  intro n
  simp only [A046711, Nat.add_sub_cancel]

end A046711

/-! ## A046711.P14295241810086511230

`filter[A001481(n+1), A098725(#)]`
-/

namespace A046711.P14295241810086511230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A046711.P14295241810086511230

namespace A046711

/-- `filter[A001481(n+1), A098725(#)]` -/
def P14295241810086511230.Spec : Prop :=
  ∀ n, P14295241810086511230.a n = A046711 (n + 1)

end A046711

/-! ## A046711.P7381469430597866561

`filter[A001481(n+1), A166486(#)]`
-/

namespace A046711.P7381469430597866561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A046711.P7381469430597866561

namespace A046711

/-- `filter[A001481(n+1), A166486(#)]` -/
def P7381469430597866561.Spec : Prop :=
  ∀ n, P7381469430597866561.a n = A046711 (n + 1)

end A046711

/-! ## A046711.P232114394130856314

`filter[A047619(n+1), A229062(#)]`
-/

namespace A046711.P232114394130856314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A046711.P232114394130856314

namespace A046711

/-- `filter[A047619(n+1), A229062(#)]` -/
def P232114394130856314.Spec : Prop :=
  ∀ n, P232114394130856314.a n = A046711 (n + 1)

end A046711

/-! ## A046711.P16035984398982729110

`∩[A001481(n+1), A047619(n+1)]`
-/

namespace A046711.P16035984398982729110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046711.P16035984398982729110

namespace A046711

/-- `∩[A001481(n+1), A047619(n+1)]` -/
def P16035984398982729110.Spec : Prop :=
  ∀ n, (P16035984398982729110.a n : ℤ) = A046711 (n + 1)

end A046711

/-! ## A046711.P4553463436422018826

`∩[A005792(n+1), A047619(n+1)]`
-/

namespace A046711.P4553463436422018826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046711.P4553463436422018826

namespace A046711

/-- `∩[A005792(n+1), A047619(n+1)]` -/
def P4553463436422018826.Spec : Prop :=
  ∀ n, (P4553463436422018826.a n : ℤ) = A046711 (n + 1)

end A046711

/-! ## A046711.P14347922246507512705

`filter[A042963(n+1), A229062(#)]`
-/

namespace A046711.P14347922246507512705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A046711.P14347922246507512705

namespace A046711

/-- `filter[A042963(n+1), A229062(#)]` -/
def P14347922246507512705.Spec : Prop :=
  ∀ n, P14347922246507512705.a n = A046711 (n + 1)

end A046711

/-! ## A046711.P10870423800717429613

`filter[A047482(n+1), A229062(#)]`
-/

namespace A046711.P10870423800717429613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A046711.P10870423800717429613

namespace A046711

/-- `filter[A047482(n+1), A229062(#)]` -/
def P10870423800717429613.Spec : Prop :=
  ∀ n, P10870423800717429613.a n = A046711 (n + 1)

end A046711

/-! ## A046711.P17311445398175915947

`filter[A047606(n+1), A229062(#)]`
-/

namespace A046711.P17311445398175915947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A046711.P17311445398175915947

namespace A046711

/-- `filter[A047606(n+1), A229062(#)]` -/
def P17311445398175915947.Spec : Prop :=
  ∀ n, P17311445398175915947.a n = A046711 (n + 1)

end A046711

/-! ## A046711.P9186765500492983764

`eq[(2-A010127(n))², A229062(n)]`
-/

namespace A046711.P9186765500492983764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010127 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046711.P9186765500492983764

namespace A046711

/-- `eq[(2-A010127(n))², A229062(n)]` -/
def P9186765500492983764.Spec : Prop :=
  ∀ n, (P9186765500492983764.a n : ℤ) = A046711 (n + 1)

end A046711

/-! ## A046711.P8457490037042067008

`∩[A001481(n+1), A042948(n)+1]`
-/

namespace A046711.P8457490037042067008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046711.P8457490037042067008

namespace A046711

/-- `∩[A001481(n+1), A042948(n)+1]` -/
def P8457490037042067008.Spec : Prop :=
  ∀ n, (P8457490037042067008.a n : ℤ) = A046711 (n + 1)

end A046711

/-! ## A046711.P4810037808735571036

`∩[A001481(n+1), A042963(n+1)]`
-/

namespace A046711.P4810037808735571036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046711.P4810037808735571036

namespace A046711

/-- `∩[A001481(n+1), A042963(n+1)]` -/
def P4810037808735571036.Spec : Prop :=
  ∀ n, (P4810037808735571036.a n : ℤ) = A046711 (n + 1)

end A046711

/-! ## A046711.P8501771465030224992

`∩[A005792(n+1), A042963(n+1)]`
-/

namespace A046711.P8501771465030224992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046711.P8501771465030224992

namespace A046711

/-- `∩[A005792(n+1), A042963(n+1)]` -/
def P8501771465030224992.Spec : Prop :=
  ∀ n, (P8501771465030224992.a n : ℤ) = A046711 (n + 1)

end A046711

/-! ## A046711.P5434541031003259429

`∩[A001481(n+1), A047482(n+1)]`
-/

namespace A046711.P5434541031003259429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046711.P5434541031003259429

namespace A046711

/-- `∩[A001481(n+1), A047482(n+1)]` -/
def P5434541031003259429.Spec : Prop :=
  ∀ n, (P5434541031003259429.a n : ℤ) = A046711 (n + 1)

end A046711

/-! ## A046711.P2994624315584834513

`∩[A001481(n+1), A047606(n+1)]`
-/

namespace A046711.P2994624315584834513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046711.P2994624315584834513

namespace A046711

/-- `∩[A001481(n+1), A047606(n+1)]` -/
def P2994624315584834513.Spec : Prop :=
  ∀ n, (P2994624315584834513.a n : ℤ) = A046711 (n + 1)

end A046711

/-! ## A046711.P2527397715690693490

`∩[A005792(n+1), A047482(n+1)]`
-/

namespace A046711.P2527397715690693490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046711.P2527397715690693490

namespace A046711

/-- `∩[A005792(n+1), A047482(n+1)]` -/
def P2527397715690693490.Spec : Prop :=
  ∀ n, (P2527397715690693490.a n : ℤ) = A046711 (n + 1)

end A046711

/-! ## A046711.P187219962556918038

`filter[A047449(n+1), A229062(#)]`
-/

namespace A046711.P187219962556918038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A046711.P187219962556918038

namespace A046711

/-- `filter[A047449(n+1), A229062(#)]` -/
def P187219962556918038.Spec : Prop :=
  ∀ n, P187219962556918038.a n = A046711 (n + 1)

end A046711

/-! ## A046711.P8092403332891665221

`filter[A047489(n+1), A229062(#)]`
-/

namespace A046711.P8092403332891665221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A046711.P8092403332891665221

namespace A046711

/-- `filter[A047489(n+1), A229062(#)]` -/
def P8092403332891665221.Spec : Prop :=
  ∀ n, P8092403332891665221.a n = A046711 (n + 1)

end A046711

/-! ## A046711.P6384356647794212972

`filter[A047580(n+1), A229062(#)]`
-/

namespace A046711.P6384356647794212972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A046711.P6384356647794212972

namespace A046711

/-- `filter[A047580(n+1), A229062(#)]` -/
def P6384356647794212972.Spec : Prop :=
  ∀ n, P6384356647794212972.a n = A046711 (n + 1)

end A046711

/-! ## A046711.P2102014902016594553

`∩[A001481(n+1), A047449(n+1)]`
-/

namespace A046711.P2102014902016594553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046711.P2102014902016594553

namespace A046711

/-- `∩[A001481(n+1), A047449(n+1)]` -/
def P2102014902016594553.Spec : Prop :=
  ∀ n, (P2102014902016594553.a n : ℤ) = A046711 (n + 1)

end A046711

/-!
# A046712: From the Bruck-Ryser theorem: n == 1 or 2 (mod 4) which are not the sum of 2 squares.

The programs for A046712, the canonical program `A046712.P13167474089854067030` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046712 has offset 1).

The definition of A046712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046712.P13167474089854067030

`∪[A062316(n+1), A084109(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A046712

/-- `∪[A062316(n+1), A084109(n+1)]` -/
def P13167474089854067030.Spec : Prop :=
  ∀ n, (P13167474089854067030.a n : ℤ) = A046712 (n + 1)

theorem P13167474089854067030.correct : P13167474089854067030.Spec := by
  intro n
  simp only [A046712, Nat.add_sub_cancel]

end A046712

/-! ## A046712.P3129080553576097458

`∩[or(1, n)+n, A000419(n+1)]`
-/

namespace A046712.P3129080553576097458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046712.P3129080553576097458

namespace A046712

/-- `∩[or(1, n)+n, A000419(n+1)]` -/
def P3129080553576097458.Spec : Prop :=
  ∀ n, (P3129080553576097458.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P4287081053739634637

`∩[A000419(n+1), A042963(n+1)]`
-/

namespace A046712.P4287081053739634637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046712.P4287081053739634637

namespace A046712

/-- `∩[A000419(n+1), A042963(n+1)]` -/
def P4287081053739634637.Spec : Prop :=
  ∀ n, (P4287081053739634637.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P11491845720049058443

`∩[A000419(n+1), A274918(n+1)]`
-/

namespace A046712.P11491845720049058443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046712.P11491845720049058443

namespace A046712

/-- `∩[A000419(n+1), A274918(n+1)]` -/
def P11491845720049058443.Spec : Prop :=
  ∀ n, (P11491845720049058443.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P4316868814418745630

`∩[A000419(n+1), A047580(n+1)]`
-/

namespace A046712.P4316868814418745630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046712.P4316868814418745630

namespace A046712

/-- `∩[A000419(n+1), A047580(n+1)]` -/
def P4316868814418745630.Spec : Prop :=
  ∀ n, (P4316868814418745630.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P15896163504373703169

`∩[or(1, n)+n, A022544(n+1)]`
-/

namespace A046712.P15896163504373703169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046712.P15896163504373703169

namespace A046712

/-- `∩[or(1, n)+n, A022544(n+1)]` -/
def P15896163504373703169.Spec : Prop :=
  ∀ n, (P15896163504373703169.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P9347223070041296260

`∩[A022544(n+1), A042963(n+1)]`
-/

namespace A046712.P9347223070041296260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046712.P9347223070041296260

namespace A046712

/-- `∩[A022544(n+1), A042963(n+1)]` -/
def P9347223070041296260.Spec : Prop :=
  ∀ n, (P9347223070041296260.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P5005754466782711120

`∩[A022544(n+1), A274918(n+1)]`
-/

namespace A046712.P5005754466782711120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046712.P5005754466782711120

namespace A046712

/-- `∩[A022544(n+1), A274918(n+1)]` -/
def P5005754466782711120.Spec : Prop :=
  ∀ n, (P5005754466782711120.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P3667163284966254940

`eq[A000161(n), A003784(n)]`
-/

namespace A046712.P3667163284966254940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003784 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046712.P3667163284966254940

namespace A046712

/-- `eq[A000161(n), A003784(n)]` -/
def P3667163284966254940.Spec : Prop :=
  ∀ n, (P3667163284966254940.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P13842622626650636049

`eq[A000925(n), A003784(n)]`
-/

namespace A046712.P13842622626650636049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003784 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046712.P13842622626650636049

namespace A046712

/-- `eq[A000925(n), A003784(n)]` -/
def P13842622626650636049.Spec : Prop :=
  ∀ n, (P13842622626650636049.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P13659721933463972403

`eq[A003784(n), A004018(n)]`
-/

namespace A046712.P13659721933463972403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003784 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046712.P13659721933463972403

namespace A046712

/-- `eq[A003784(n), A004018(n)]` -/
def P13659721933463972403.Spec : Prop :=
  ∀ n, (P13659721933463972403.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P4213508705674057822

`eq[A003784(n), A104794(n)]`
-/

namespace A046712.P4213508705674057822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003784 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046712.P4213508705674057822

namespace A046712

/-- `eq[A003784(n), A104794(n)]` -/
def P4213508705674057822.Spec : Prop :=
  ∀ n, (P4213508705674057822.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P3921472643534908923

`eq[A003784(n), A133573(n)]`
-/

namespace A046712.P3921472643534908923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003784 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046712.P3921472643534908923

namespace A046712

/-- `eq[A003784(n), A133573(n)]` -/
def P3921472643534908923.Spec : Prop :=
  ∀ n, (P3921472643534908923.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P17599305700791152104

`eq[A003784(n), A133574(n)]`
-/

namespace A046712.P17599305700791152104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003784 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046712.P17599305700791152104

namespace A046712

/-- `eq[A003784(n), A133574(n)]` -/
def P17599305700791152104.Spec : Prop :=
  ∀ n, (P17599305700791152104.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P7371863859313948412

`eq[A008434(n), A143574(n)]`
-/

namespace A046712.P7371863859313948412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046712.P7371863859313948412

namespace A046712

/-- `eq[A008434(n), A143574(n)]` -/
def P7371863859313948412.Spec : Prop :=
  ∀ n, (P7371863859313948412.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P13394016295084499259

`eq[A058305(n), A143574(n)]`
-/

namespace A046712.P13394016295084499259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046712.P13394016295084499259

namespace A046712

/-- `eq[A058305(n), A143574(n)]` -/
def P13394016295084499259.Spec : Prop :=
  ∀ n, (P13394016295084499259.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P13871722539030543097

`eq[A003784(n), A229062(n)]`
-/

namespace A046712.P13871722539030543097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003784 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046712.P13871722539030543097

namespace A046712

/-- `eq[A003784(n), A229062(n)]` -/
def P13871722539030543097.Spec : Prop :=
  ∀ n, (P13871722539030543097.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P173722962381604876

`eq[A102560(n), A143574(n)]`
-/

namespace A046712.P173722962381604876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046712.P173722962381604876

namespace A046712

/-- `eq[A102560(n), A143574(n)]` -/
def P173722962381604876.Spec : Prop :=
  ∀ n, (P173722962381604876.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P17425657163946426939

`eq[A000161(n), A259825(n)]`
-/

namespace A046712.P17425657163946426939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046712.P17425657163946426939

namespace A046712

/-- `eq[A000161(n), A259825(n)]` -/
def P17425657163946426939.Spec : Prop :=
  ∀ n, (P17425657163946426939.a n : ℤ) = A046712 (n + 1)

end A046712

/-! ## A046712.P5248046283634011162

`eq[A003784(n), A256282(n)]`
-/

namespace A046712.P5248046283634011162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003784 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256282 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046712.P5248046283634011162

namespace A046712

/-- `eq[A003784(n), A256282(n)]` -/
def P5248046283634011162.Spec : Prop :=
  ∀ n, (P5248046283634011162.a n : ℤ) = A046712 (n + 1)

end A046712

/-!
# A046713: Multiplicative and additive primes: primes where the product and sum of digits are also prime.

The programs for A046713, there is no canonical definition to state claims against.
-/

/-! ## A046713.P4863257645806950273

`∩[A046703(n+1), A052430(n+1)]`
-/

namespace A046713.P4863257645806950273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046713.P4863257645806950273

/-! ## A046713.P7378003117578161141

`∩[A030291(n+1), A052430(n+1)]`
-/

namespace A046713.P7378003117578161141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046713.P7378003117578161141

/-! ## A046713.P6792440291122545551

`∩[A052430(n+1), A206159(n+1)]`
-/

namespace A046713.P6792440291122545551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046713.P6792440291122545551

/-! ## A046713.P12263193563130726508

`∩[A052430(n+1), A243535(n+1)]`
-/

namespace A046713.P12263193563130726508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046713.P12263193563130726508

/-! ## A046713.P11456673435005466227

`∩[A038617(n+1), A052430(n+1)]`
-/

namespace A046713.P11456673435005466227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046713.P11456673435005466227

/-!
# A046714: Convolution of A000108 (Catalan) with A000351 (powers of 5).

The programs for A046714, the canonical program `A046714.P9061747162202465969` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046714 has offset 0).

The definition of A046714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046714.P114277329404147466

`Δ[A116391(2*n+1)/2]`
-/

namespace A046714.P114277329404147466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116391 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046714.P114277329404147466

namespace A046714

/-- `Δ[A116391(2*n+1)/2]` -/
def P114277329404147466.Spec : Prop :=
  ∀ n, P114277329404147466.a n = (A046714 n : ℚ)

end A046714

/-! ## A046714.P9061747162202465969

`A000108(n)+5*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046714

/-- `A000108(n)+5*a(n-1)` -/
def P9061747162202465969.Spec : Prop :=
  ∀ n, P9061747162202465969.a n = A046714 n

theorem P9061747162202465969.correct : P9061747162202465969.Spec := by
  intro n
  simp only [A046714]

end A046714

/-! ## A046714.P2909853642555596127

`abs(A168491(n))+5*a(n-1)` with `a(0)=1`
-/

namespace A046714.P2909853642555596127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A168491 n| + 5 * a (n - 1)

end

end A046714.P2909853642555596127

namespace A046714

/-- `abs(A168491(n))+5*a(n-1)` -/
def P2909853642555596127.Spec : Prop :=
  ∀ n, P2909853642555596127.a n = A046714 n

end A046714

/-! ## A046714.P14007810551459691852

`A120588(n+1)+5*a(n-1)` with `a(0)=1`
-/

namespace A046714.P14007810551459691852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120588 (n + 1) + 5 * a (n - 1)

end

end A046714.P14007810551459691852

namespace A046714

/-- `A120588(n+1)+5*a(n-1)` -/
def P14007810551459691852.Spec : Prop :=
  ∀ n, P14007810551459691852.a n = A046714 n

end A046714

/-! ## A046714.P10979938335204418080

`5*a(n-1)-A115140(n+1)` with `a(0)=1`
-/

namespace A046714.P10979938335204418080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A115140 (n + 1)

end

end A046714.P10979938335204418080

namespace A046714

/-- `5*a(n-1)-A115140(n+1)` -/
def P10979938335204418080.Spec : Prop :=
  ∀ n, P10979938335204418080.a n = A046714 n

end A046714

/-! ## A046714.P1481115636579390040

`5*a(n-1)+A120304(n)+2` with `a(0)=1`
-/

namespace A046714.P1481115636579390040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (A120304 n + 2)

end

end A046714.P1481115636579390040

namespace A046714

/-- `5*a(n-1)+A120304(n)+2` -/
def P1481115636579390040.Spec : Prop :=
  ∀ n, P1481115636579390040.a n = A046714 n

end A046714

/-! ## A046714.P9712028112654293580

`A028304(2*n)+5*a(n-1)` with `a(0)=1`
-/

namespace A046714.P9712028112654293580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028304 (2 * n) + 5 * a (n - 1)

end

end A046714.P9712028112654293580

namespace A046714

/-- `A028304(2*n)+5*a(n-1)` -/
def P9712028112654293580.Spec : Prop :=
  ∀ n, P9712028112654293580.a n = A046714 n

end A046714

/-! ## A046714.P8107331423104216846

`5*a(n-1)+A246604(n)+n` with `a(0)=1`
-/

namespace A046714.P8107331423104216846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (A246604 n + (n : ℤ))

end

end A046714.P8107331423104216846

namespace A046714

/-- `5*a(n-1)+A246604(n)+n` -/
def P8107331423104216846.Spec : Prop :=
  ∀ n, P8107331423104216846.a n = A046714 n

end A046714

/-! ## A046714.P6555839645809350164

`A046814(n+1)-A000108(n+1)`
-/

namespace A046714.P6555839645809350164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046814 (n + 1) - A000108 (n + 1)

end

end A046714.P6555839645809350164

namespace A046714

/-- `A046814(n+1)-A000108(n+1)` -/
def P6555839645809350164.Spec : Prop :=
  ∀ n, P6555839645809350164.a n = A046714 n

end A046714

/-! ## A046714.P14705000805951160607

`2*A000351(n)-A046885(n+1)`
-/

namespace A046714.P14705000805951160607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000351 n - A046885 (n + 1)

end

end A046714.P14705000805951160607

namespace A046714

/-- `2*A000351(n)-A046885(n+1)` -/
def P14705000805951160607.Spec : Prop :=
  ∀ n, P14705000805951160607.a n = A046714 n

end A046714

/-! ## A046714.P9145828187008739406

`A126120(A005843(n))+5*a(n-1)` with `a(0)=1`
-/

namespace A046714.P9145828187008739406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126120 (A005843 n).toNat + 5 * a (n - 1)

end

end A046714.P9145828187008739406

namespace A046714

/-- `A126120(A005843(n))+5*a(n-1)` -/
def P9145828187008739406.Spec : Prop :=
  ∀ n, P9145828187008739406.a n = A046714 n

end A046714

/-! ## A046714.P8122936917898978654

`A039599(A000217(n))+5*a(n-1)` with `a(0)=1`
-/

namespace A046714.P8122936917898978654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039599 (A000217 n).toNat + 5 * a (n - 1)

end

end A046714.P8122936917898978654

namespace A046714

/-- `A039599(A000217(n))+5*a(n-1)` -/
def P8122936917898978654.Spec : Prop :=
  ∀ n, P8122936917898978654.a n = A046714 n

end A046714

/-! ## A046714.P11158366994997267821

`A033184(A133263(n))+5*a(n-1)` with `a(0)=1`
-/

namespace A046714.P11158366994997267821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033184 (A133263 n).toNat + 5 * a (n - 1)

end

end A046714.P11158366994997267821

namespace A046714

/-- `A033184(A133263(n))+5*a(n-1)` -/
def P11158366994997267821.Spec : Prop :=
  ∀ n, P11158366994997267821.a n = A046714 n

end A046714

/-!
# A046715: Secondary root edges in doubly rooted tree maps with n edges.

The programs for A046715, the canonical program `A046715.P11392715437854579428` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046715 has offset 0).

The definition of A046715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046715.P11392715437854579428

`(2*n)!*(2*n+2)!*n/(2*n!*(n+1)!²*(n+2)!)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046715

/-- `(2*n)!*(2*n+2)!*n/(2*n!*(n+1)!²*(n+2)!)` -/
def P11392715437854579428.Spec : Prop :=
  ∀ n, P11392715437854579428.a n = (A046715 n : ℚ)

end A046715

/-! ## A046715.P6651877742929716547

`C(2*n+1, n+2)/(n+1)*C(2*n, n)`
-/

namespace A046715.P6651877742929716547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) (n + 2) : ℚ) / (n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ)

end

end A046715.P6651877742929716547

namespace A046715

/-- `C(2*n+1, n+2)/(n+1)*C(2*n, n)` -/
def P6651877742929716547.Spec : Prop :=
  ∀ n, P6651877742929716547.a n = (A046715 n : ℚ)

end A046715

/-! ## A046715.P12920850405453297746

`n/2*A005568(n)`
-/

namespace A046715.P12920850405453297746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A005568 n : ℚ)

end

end A046715.P12920850405453297746

namespace A046715

/-- `n/2*A005568(n)` -/
def P12920850405453297746.Spec : Prop :=
  ∀ n, P12920850405453297746.a n = (A046715 n : ℚ)

end A046715

/-! ## A046715.P10942022001515682824

`n*A005817(2*n)/2`
-/

namespace A046715.P10942022001515682824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A005817 (2 * n) : ℚ) / 2)

end

end A046715.P10942022001515682824

namespace A046715

/-- `n*A005817(2*n)/2` -/
def P10942022001515682824.Spec : Prop :=
  ∀ n, P10942022001515682824.a n = (A046715 n : ℚ)

end A046715

/-! ## A046715.P7899504809229183593

`C(Δ[n²], n+2)*A000108(n)`
-/

namespace A046715.P7899504809229183593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat (n + 2) : ℤ) * A000108 n

end

end A046715.P7899504809229183593

namespace A046715

/-- `C(Δ[n²], n+2)*A000108(n)` -/
def P7899504809229183593.Spec : Prop :=
  ∀ n, P7899504809229183593.a n = A046715 n

end A046715

/-! ## A046715.P13046374892409991122

`A000891(n)-A005568(n)`
-/

namespace A046715.P13046374892409991122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000891 n - A005568 n

end

end A046715.P13046374892409991122

namespace A046715

/-- `A000891(n)-A005568(n)` -/
def P13046374892409991122.Spec : Prop :=
  ∀ n, P13046374892409991122.a n = A046715 n

end A046715

/-! ## A046715.P9617248805378174349

`n*A000356(A028310(n))`
-/

namespace A046715.P9617248805378174349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000356 (A028310 n).toNat

end

end A046715.P9617248805378174349

namespace A046715

/-- `n*A000356(A028310(n))` -/
def P9617248805378174349.Spec : Prop :=
  ∀ n, P9617248805378174349.a n = A046715 n

end A046715

/-! ## A046715.P16603155907226337958

`A000891(n)-A005817(2*n)`
-/

namespace A046715.P16603155907226337958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000891 n - A005817 (2 * n)

end

end A046715.P16603155907226337958

namespace A046715

/-- `A000891(n)-A005817(2*n)` -/
def P16603155907226337958.Spec : Prop :=
  ∀ n, P16603155907226337958.a n = A046715 n

end A046715

/-! ## A046715.P6808472506492112908

`A005558(2*n)-A005568(n)`
-/

namespace A046715.P6808472506492112908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005558 (2 * n) - A005568 n

end

end A046715.P6808472506492112908

namespace A046715

/-- `A005558(2*n)-A005568(n)` -/
def P6808472506492112908.Spec : Prop :=
  ∀ n, P6808472506492112908.a n = A046715 n

end A046715

/-! ## A046715.P14215230985992845674

`A000108(n)*A116385(2*n)`
-/

namespace A046715.P14215230985992845674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A116385 (2 * n)

end

end A046715.P14215230985992845674

namespace A046715

/-- `A000108(n)*A116385(2*n)` -/
def P14215230985992845674.Spec : Prop :=
  ∀ n, P14215230985992845674.a n = A046715 n

end A046715

/-!
# A046716: Coefficients of a special case of Poisson-Charlier polynomials.

The programs for A046716, there is no canonical definition to state claims against.
-/

/-! ## A046716.P12088686351301218650

`A094816(∑[2*n]%A080036(n))`
-/

namespace A046716.P12088686351301218650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094816 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A046716.P12088686351301218650

/-! ## A046716.P1357614220665382850

`A094816(gcd(A010816(n), A061579(n)))`
-/

namespace A046716.P1357614220665382850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094816 (Int.gcd (A010816 n) (A061579 n))

end

end A046716.P1357614220665382850

/-! ## A046716.P15677015797599691906

`A094816(A038722(n+1)-A131821(n+1))`
-/

namespace A046716.P15677015797599691906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094816 (A038722 (n + 1) - A131821 (n + 1)).toNat

end

end A046716.P15677015797599691906

/-! ## A046716.P9595533960073150688

`A094816(A061579(n))`
-/

namespace A046716.P9595533960073150688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094816 (A061579 n).toNat

end

end A046716.P9595533960073150688

/-! ## A046716.P18114572022572356025

`A094816(A114327(n)+n)`
-/

namespace A046716.P18114572022572356025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094816 (A114327 n + (n : ℤ)).toNat

end

end A046716.P18114572022572356025

/-! ## A046716.P3019544944588395794

`A094816(A038722(n+1)-1)`
-/

namespace A046716.P3019544944588395794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094816 (A038722 (n + 1) - 1).toNat

end

end A046716.P3019544944588395794

/-! ## A046716.P12980731825426664530

`A094816(A038722(n+2))`
-/

namespace A046716.P12980731825426664530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094816 (A038722 (n + 2)).toNat

end

end A046716.P12980731825426664530

/-!
# A046717: a(n) = 2*a(n-1) + 3*a(n-2), a(0) = a(1) = 1.

The programs for A046717, the canonical program `A046717.P6816879839242327483` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046717 has offset 0).

The definition of A046717 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)` (program `A046717.P6816879839242327483`, by `A046717.P6816879839242327483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A046717.P6816879839242327483

`2*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046717

/-- `2*a(n-1)+3*a(n-2)` -/
def P6816879839242327483.Spec : Prop :=
  ∀ n, (P6816879839242327483.a n : ℤ) = A046717 n

theorem P6816879839242327483.correct : P6816879839242327483.Spec := by
  intro n
  simp only [A046717]

end A046717

/-! ## A046717.P14312619700437005417

`2*A015518(n)+(-1)^n`
-/

namespace A046717.P14312619700437005417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015518 n + (-1) ^ n

end

end A046717.P14312619700437005417

namespace A046717

/-- `2*A015518(n)+(-1)^n` -/
def P14312619700437005417.Spec : Prop :=
  ∀ n, P14312619700437005417.a n = A046717 n

end A046717

/-! ## A046717.P16157048110667549036

`(3^n+(-1)^n)/2`
-/

namespace A046717.P16157048110667549036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) + (-1) ^ n : ℚ) / 2

end

end A046717.P16157048110667549036

namespace A046717

/-- `(3^n+(-1)^n)/2` -/
def P16157048110667549036.Spec : Prop :=
  ∀ n, P16157048110667549036.a n = (A046717 n : ℚ)

theorem P16157048110667549036.correct : P16157048110667549036.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A046717, Nat.add_sub_cancel, A046717.P16157048110667549036.a, A046717.P6816879839242327483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A046717, Nat.add_sub_cancel, A046717.P16157048110667549036.a, A046717.P6816879839242327483.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A046717

/-! ## A046717.P13577149915834230857

`ogf((-1+x)/(-1+2x+3x^2))`
-/

namespace A046717.P13577149915834230857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -3] n

end

end A046717.P13577149915834230857

namespace A046717

/-- `ogf((-1+x)/(-1+2x+3x^2))` -/
def P13577149915834230857.Spec : Prop :=
  ∀ n, P13577149915834230857.a n = A046717 n

end A046717

/-! ## A046717.P7355039921735506196

`or(1, ∑[floor(3^(n-1))])`
-/

namespace A046717.P7355039921735506196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046717.P7355039921735506196

namespace A046717

/-- `or(1, ∑[floor(3^(n-1))])` -/
def P7355039921735506196.Spec : Prop :=
  ∀ n, P7355039921735506196.a n = A046717 n

end A046717

/-! ## A046717.P1843849222304842032

`∑[xor(4, 3*a(n-1))]` with `a(0)=1, a(1)=0`
-/

namespace A046717.P1843849222304842032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Nat.xor 4 (3 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046717.P1843849222304842032

namespace A046717

/-- `∑[xor(4, 3*a(n-1))]` -/
def P1843849222304842032.Spec : Prop :=
  ∀ n, (P1843849222304842032.a n : ℤ) = A046717 n

end A046717

/-! ## A046717.P11148298389573682497

`or(3, ∑[ceil(3^(n-1))])-2`
-/

namespace A046717.P11148298389573682497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A046717.P11148298389573682497

namespace A046717

/-- `or(3, ∑[ceil(3^(n-1))])-2` -/
def P11148298389573682497.Spec : Prop :=
  ∀ n, P11148298389573682497.a n = A046717 n

end A046717

/-! ## A046717.P4100589183432999869

`∑[ceil(3^(n-1))]-n%2`
-/

namespace A046717.P4100589183432999869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n % 2 : ℕ) : ℤ)

end

end A046717.P4100589183432999869

namespace A046717

/-- `∑[ceil(3^(n-1))]-n%2` -/
def P4100589183432999869.Spec : Prop :=
  ∀ n, P4100589183432999869.a n = A046717 n

end A046717

/-! ## A046717.P1332956867910331390

`∑[ceil(3^(n-1))]-and(1, n)`
-/

namespace A046717.P1332956867910331390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land 1 n : ℤ)

end

end A046717.P1332956867910331390

namespace A046717

/-- `∑[ceil(3^(n-1))]-and(1, n)` -/
def P1332956867910331390.Spec : Prop :=
  ∀ n, P1332956867910331390.a n = A046717 n

end A046717

/-! ## A046717.P4788905346061704488

`∑[floor(3^(n-1))]+log2(gcd(2, n))`
-/

namespace A046717.P4788905346061704488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A046717.P4788905346061704488

namespace A046717

/-- `∑[floor(3^(n-1))]+log2(gcd(2, n))` -/
def P4788905346061704488.Spec : Prop :=
  ∀ n, P4788905346061704488.a n = (A046717 n : ℝ)

end A046717

/-! ## A046717.P15282191659766024591

`xor((n+1)%2, ∑[floor(3^(n-1))])`
-/

namespace A046717.P15282191659766024591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((n + 1) % 2 : ℕ) : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046717.P15282191659766024591

namespace A046717

/-- `xor((n+1)%2, ∑[floor(3^(n-1))])` -/
def P15282191659766024591.Spec : Prop :=
  ∀ n, P15282191659766024591.a n = A046717 n

end A046717

/-! ## A046717.P3515587546250424162

`xor(∑[(-1)^n], ∑[floor(3^(n-1))])`
-/

namespace A046717.P3515587546250424162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A046717.P3515587546250424162

namespace A046717

/-- `xor(∑[(-1)^n], ∑[floor(3^(n-1))])` -/
def P3515587546250424162.Spec : Prop :=
  ∀ n, P3515587546250424162.a n = A046717 n

end A046717

/-! ## A046717.P8845916615678079971

`2*(-1)^n+3*a(n-1)` with `a(0)=1`
-/

namespace A046717.P8845916615678079971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (-1) ^ n + 3 * a (n - 1)

end

end A046717.P8845916615678079971

namespace A046717

/-- `2*(-1)^n+3*a(n-1)` -/
def P8845916615678079971.Spec : Prop :=
  ∀ n, P8845916615678079971.a n = A046717 n

end A046717

/-! ## A046717.P14562358380718420660

`a(n-2)-3*(a(n-3)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A046717.P14562358380718420660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  a (n - 2) - 3 * (a (n - 3) - a (n - 1))

end

end A046717.P14562358380718420660

namespace A046717

/-- `a(n-2)-3*(a(n-3)-a(n-1))` -/
def P14562358380718420660.Spec : Prop :=
  ∀ n, P14562358380718420660.a n = A046717 n

end A046717

/-! ## A046717.P1858923851565624144

`a(n-1)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A046717.P1858923851565624144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2))))

end

end A046717.P1858923851565624144

namespace A046717

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P1858923851565624144.Spec : Prop :=
  ∀ n, (P1858923851565624144.a n : ℤ) = A046717 n

theorem P1858923851565624144.correct : P1858923851565624144.Spec := by
  intro n
  simp only [A046717, Nat.add_sub_cancel, A046717.P1858923851565624144.a, A046717.P6816879839242327483.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A046717

/-! ## A046717.P11002382841091581911

`abs(2-A165553(n))`
-/

namespace A046717.P11002382841091581911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A165553 n|

end

end A046717.P11002382841091581911

namespace A046717

/-- `abs(2-A165553(n))` -/
def P11002382841091581911.Spec : Prop :=
  ∀ n, P11002382841091581911.a n = A046717 n

end A046717

/-! ## A046717.P841703680476715839

`abs(or(1, A076040(n)))`
-/

namespace A046717.P841703680476715839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (A076040 n)|

end

end A046717.P841703680476715839

namespace A046717

/-- `abs(or(1, A076040(n)))` -/
def P841703680476715839.Spec : Prop :=
  ∀ n, P841703680476715839.a n = A046717 n

end A046717

/-! ## A046717.P15791084564810759664

`and(-3, A103425(n))`
-/

namespace A046717.P15791084564810759664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A103425 n)

end

end A046717.P15791084564810759664

namespace A046717

/-- `and(-3, A103425(n))` -/
def P15791084564810759664.Spec : Prop :=
  ∀ n, P15791084564810759664.a n = A046717 n

end A046717

/-! ## A046717.P13183002304011675337

`2*A122983(n)-1`
-/

namespace A046717.P13183002304011675337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122983 n - 1

end

end A046717.P13183002304011675337

namespace A046717

/-- `2*A122983(n)-1` -/
def P13183002304011675337.Spec : Prop :=
  ∀ n, P13183002304011675337.a n = A046717 n

end A046717

/-! ## A046717.P6928649194972700529

`A164907((n-1)%(n+1))`
-/

namespace A046717.P6928649194972700529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164907 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A046717.P6928649194972700529

namespace A046717

/-- `A164907((n-1)%(n+1))` -/
def P6928649194972700529.Spec : Prop :=
  ∀ n, P6928649194972700529.a n = A046717 n

end A046717

/-!
# A046718: Number of permutations of [ n ] with exactly one 132-pattern and two 123-patterns.

The programs for A046718, the canonical program `A046718.P8818794748337422131` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046718 has offset 4).

The definition of A046718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046718.P8818794748337422131

`2^(n-4)*((n+4)^3-11*(n+4)²+54*(n+4)-88)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046718

/-- `2^(n-4)*((n+4)^3-11*(n+4)²+54*(n+4)-88)` -/
def P8818794748337422131.Spec : Prop :=
  ∀ n, P8818794748337422131.a n = (A046718 (n + 4) : ℚ)

end A046718

/-! ## A046718.P12525271903371888172

`A383778(n)+A104270(n+1)`
-/

namespace A046718.P12525271903371888172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383778 n + A104270 (n + 1)

end

end A046718.P12525271903371888172

namespace A046718

/-- `A383778(n)+A104270(n+1)` -/
def P12525271903371888172.Spec : Prop :=
  ∀ n, P12525271903371888172.a n = A046718 (n + 4)

end A046718

/-! ## A046718.P16392745313484350270

`A224289(n+4)-∑[A001792(n)]`
-/

namespace A046718.P16392745313484350270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224289 (n + 4) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046718.P16392745313484350270

namespace A046718

/-- `A224289(n+4)-∑[A001792(n)]` -/
def P16392745313484350270.Spec : Prop :=
  ∀ n, P16392745313484350270.a n = A046718 (n + 4)

end A046718

/-! ## A046718.P4263231780881534319

`A224289(n+4)-record[A097067(n)]`
-/

namespace A046718.P4263231780881534319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224289 (n + 4) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046718.P4263231780881534319

namespace A046718

/-- `A224289(n+4)-record[A097067(n)]` -/
def P4263231780881534319.Spec : Prop :=
  ∀ n, P4263231780881534319.a n = A046718 (n + 4)

end A046718

/-! ## A046718.P12829093452024402336

`A224289(n+4)-A001787(n+1)`
-/

namespace A046718.P12829093452024402336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224289 (n + 4) - A001787 (n + 1)

end

end A046718.P12829093452024402336

namespace A046718

/-- `A224289(n+4)-A001787(n+1)` -/
def P12829093452024402336.Spec : Prop :=
  ∀ n, P12829093452024402336.a n = A046718 (n + 4)

end A046718

/-! ## A046718.P8997573013465812895

`A224289(n+4)-A097067(n+2)`
-/

namespace A046718.P8997573013465812895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224289 (n + 4) - A097067 (n + 2)

end

end A046718.P8997573013465812895

namespace A046718

/-- `A224289(n+4)-A097067(n+2)` -/
def P8997573013465812895.Spec : Prop :=
  ∀ n, P8997573013465812895.a n = A046718 (n + 4)

end A046718

/-! ## A046718.P16422532085788940856

`A224289(n+4)-A139756(n+2)`
-/

namespace A046718.P16422532085788940856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224289 (n + 4) - A139756 (n + 2)

end

end A046718.P16422532085788940856

namespace A046718

/-- `A224289(n+4)-A139756(n+2)` -/
def P16422532085788940856.Spec : Prop :=
  ∀ n, P16422532085788940856.a n = A046718 (n + 4)

end A046718

/-!
# A046719: Total number of digits in all primes with n digits.

The programs for A046719, there is no canonical definition to state claims against.
-/

/-! ## A046719.P2194524596730296572

`Δ[A097952(n)]`
-/

namespace A046719.P2194524596730296572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046719.P2194524596730296572

/-! ## A046719.P13305610309416518782

`(n+1)*Δ[A006880(n)]`
-/

namespace A046719.P13305610309416518782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A046719.P13305610309416518782

/-! ## A046719.P15627021597069663516

`(n+1)*A006879(n+1)`
-/

namespace A046719.P15627021597069663516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006879 (n + 1)

end

end A046719.P15627021597069663516

/-! ## A046719.P3658068600621766900

`(n+1)*Δ[A090226(n+1)]`
-/

namespace A046719.P3658068600621766900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A046719.P3658068600621766900

/-! ## A046719.P16967750037697839552

`(n+1)*Δ[A122121(2*n)]`
-/

namespace A046719.P16967750037697839552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122121 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A046719.P16967750037697839552

/-!
# A046721: Number of semi-meanders of order n with 2 components.

The programs for A046721, there is no canonical definition to state claims against.
-/

/-! ## A046721.P14926357852613533517

`A046726(∑[n+2])`
-/

namespace A046721.P14926357852613533517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046721.P14926357852613533517

/-! ## A046721.P12435405278967075690

`record[A046726(A165157(n)+2)]`
-/

namespace A046721.P12435405278967075690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (A165157 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046721.P12435405278967075690

/-! ## A046721.P865719843689972683

`record[A046726(n+1)/A101479(n)]`
-/

namespace A046721.P865719843689972683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046726 (n + 1) : ℚ) / (A101479 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046721.P865719843689972683

/-! ## A046721.P4808841612142765526

`record[A046726(A000096(A263274(n)))]`
-/

namespace A046721.P4808841612142765526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (A000096 (A263274 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046721.P4808841612142765526

/-! ## A046721.P8442371633137497618

`record[A046726(A000096(A004736(n+1)))]`
-/

namespace A046721.P8442371633137497618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046721.P8442371633137497618

/-!
# A046722: Number of semi-meanders of order n with 3 components.

The programs for A046722, there is no canonical definition to state claims against.
-/

/-! ## A046722.P659435948015870241

`A046726(∑[n+3]+1)`
-/

namespace A046722.P659435948015870241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A046722.P659435948015870241

/-! ## A046722.P15164120111420000580

`xor(1, xor(1, A046726(A055999(n)+4)))`
-/

namespace A046722.P15164120111420000580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A046726 (A055999 n + 4).toNat))

end

end A046722.P15164120111420000580

/-! ## A046722.P2693522997759563650

`record[A046726(n+1)/A046757(n+2)]`
-/

namespace A046722.P2693522997759563650
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046726 (n + 1) : ℚ) / (A046757 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046722.P2693522997759563650

/-! ## A046722.P10742285471295726672

`A046726(A055999(n)+4)%A087130(n)`
-/

namespace A046722.P10742285471295726672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046726 (A055999 n + 4).toNat) (A087130 n)

end

end A046722.P10742285471295726672

/-! ## A046722.P16238432875204010874

`gcd(A000038(n), A046726(A055999(n)+4))`
-/

namespace A046722.P16238432875204010874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A046726 (A055999 n + 4).toNat)

end

end A046722.P16238432875204010874

/-!
# A046723: Number of semi-meanders of order n with 4 components.

The programs for A046723, there is no canonical definition to state claims against.
-/

/-! ## A046723.P5875224001942195132

`A046726(A027379(n+2))`
-/

namespace A046723.P5875224001942195132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (A027379 (n + 2)).toNat

end

end A046723.P5875224001942195132

/-! ## A046723.P5578799026617293060

`A046726(A055998(n+2))`
-/

namespace A046723.P5578799026617293060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (A055998 (n + 2)).toNat

end

end A046723.P5578799026617293060

/-! ## A046723.P11385593700098375365

`A046726(A056000(n)+7)`
-/

namespace A046723.P11385593700098375365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (A056000 n + 7).toNat

end

end A046723.P11385593700098375365

/-! ## A046723.P230292226674592659

`A046726(A046691(n+2)+1)`
-/

namespace A046723.P230292226674592659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (A046691 (n + 2) + 1).toNat

end

end A046723.P230292226674592659

/-! ## A046723.P13478774900595204554

`A046726(A052905(n+1)+2)`
-/

namespace A046723.P13478774900595204554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (A052905 (n + 1) + 2).toNat

end

end A046723.P13478774900595204554

/-!
# A046724: Number of semi-meanders of order n with 5 components.

The programs for A046724, there is no canonical definition to state claims against.
-/

/-! ## A046724.P17152451584757905863

`A046726(Δ[A264443(n)])`
-/

namespace A046724.P17152451584757905863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (f1 (n + 1) - f1 n).toNat

end

end A046724.P17152451584757905863

/-! ## A046724.P8688133885365278992

`A046726(A046691(n+3))`
-/

namespace A046724.P8688133885365278992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (A046691 (n + 3)).toNat

end

end A046724.P8688133885365278992

/-! ## A046724.P462074780525435843

`A046726(Δ[A023545(n+1)])`
-/

namespace A046724.P462074780525435843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (f1 (n + 1) - f1 n).toNat

end

end A046724.P462074780525435843

/-! ## A046724.P13893718199366188117

`A046726(A027379(n+3)-1)`
-/

namespace A046724.P13893718199366188117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (A027379 (n + 3) - 1).toNat

end

end A046724.P13893718199366188117

/-! ## A046724.P8396645279107811158

`A046726(A055998(n+3)-1)`
-/

namespace A046724.P8396645279107811158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (A055998 (n + 3) - 1).toNat

end

end A046724.P8396645279107811158

/-!
# A046725: Number of semi-meanders of order n with 6 components.

The programs for A046725, there is no canonical definition to state claims against.
-/

/-! ## A046725.P898504083369426935

`A046726(A052905(n+3))`
-/

namespace A046725.P898504083369426935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (A052905 (n + 3)).toNat

end

end A046725.P898504083369426935

/-! ## A046725.P11647076133631010400

`A046726(A000124(n+6)-6)`
-/

namespace A046725.P11647076133631010400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (A000124 (n + 6) - 6).toNat

end

end A046725.P11647076133631010400

/-! ## A046725.P12000136375978633792

`A046726(Δ[A264443(n+1)]-1)`
-/

namespace A046725.P12000136375978633792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (f1 (n + 1) - f1 n - 1).toNat

end

end A046725.P12000136375978633792

/-! ## A046725.P6355933107881319907

`A046726(Δ[A023545(n+2)]-1)`
-/

namespace A046725.P6355933107881319907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 (f1 (n + 1) - f1 n - 1).toNat

end

end A046725.P6355933107881319907

/-! ## A046725.P2112712249742757577

`A046726(Δ[n²]+A000124(n+4)+4)`
-/

namespace A046725.P2112712249742757577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046726 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000124 (n + 4) + 4)).toNat

end

end A046725.P2112712249742757577

/-!
# A046726: Triangle of numbers of semi-meanders of order n with k components.

The programs for A046726, there is no canonical definition to state claims against.
-/

/-! ## A046726.P1058341638273728474

`A082137(n)-A353495(A138540(n))`
-/

namespace A046726.P1058341638273728474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 n - A353495 (A138540 n).toNat

end

end A046726.P1058341638273728474

/-!
# A046727: Related to Pythagorean triples: alternate terms of A001652 and A046090.

The programs for A046727, the canonical program `A046727.P15587156919046296702` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046727 has offset 0).

The definition of A046727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046727.P15587156919046296702

`5*a(n-1)+5*a(n-2)-a(n-3)` with `a(0)=0, a(1)=3, a(2)=21, a(3)=119`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046727

/-- `5*a(n-1)+5*a(n-2)-a(n-3)` -/
def P15587156919046296702.Spec : Prop :=
  ∀ n, P15587156919046296702.a n = A046727 n

theorem P15587156919046296702.correct : P15587156919046296702.Spec := by
  intro n
  simp only [A046727]

end A046727

/-! ## A046727.P2423133709480943939

`ogf((3x+6x^2-x^3)/(1-5x-5x^2+x^3))`
-/

namespace A046727.P2423133709480943939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 6, -1] [1, -5, -5, 1] n

end

end A046727.P2423133709480943939

namespace A046727

/-- `ogf((3x+6x^2-x^3)/(1-5x-5x^2+x^3))` -/
def P2423133709480943939.Spec : Prop :=
  ∀ n, P2423133709480943939.a n = A046727 n

end A046727

/-! ## A046727.P2447619914339770099

`Δ[A215928(n)²]`
-/

namespace A046727.P2447619914339770099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046727.P2447619914339770099

namespace A046727

/-- `Δ[A215928(n)²]` -/
def P2447619914339770099.Spec : Prop :=
  ∀ n, P2447619914339770099.a n = A046727 n

end A046727

/-! ## A046727.P14022399108963942508

`A084159(n)-floor(acot(n))`
-/

namespace A046727.P14022399108963942508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084159 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A046727.P14022399108963942508

namespace A046727

/-- `A084159(n)-floor(acot(n))` -/
def P14022399108963942508.Spec : Prop :=
  ∀ n, P14022399108963942508.a n = A046727 n

end A046727

/-! ## A046727.P9953558597590218315

`floor(Δ[(A052542(n)/2)²])`
-/

namespace A046727.P9953558597590218315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A052542 n : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A046727.P9953558597590218315

namespace A046727

/-- `floor(Δ[(A052542(n)/2)²])` -/
def P9953558597590218315.Spec : Prop :=
  ∀ n, P9953558597590218315.a n = A046727 n

end A046727

/-! ## A046727.P6969684042092742504

`or(ceil(sin(n)²), A001652(n))`
-/

namespace A046727.P6969684042092742504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈Real.sin (n : ℝ) ^ 2⌉ (A001652 n)

end

end A046727.P6969684042092742504

namespace A046727

/-- `or(ceil(sin(n)²), A001652(n))` -/
def P6969684042092742504.Spec : Prop :=
  ∀ n, P6969684042092742504.a n = A046727 n

end A046727

/-! ## A046727.P7908023921713252941

`Δ[A079291(floor(acot(n)+n))]`
-/

namespace A046727.P7908023921713252941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079291 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046727.P7908023921713252941

namespace A046727

/-- `Δ[A079291(floor(acot(n)+n))]` -/
def P7908023921713252941.Spec : Prop :=
  ∀ n, P7908023921713252941.a n = A046727 n

end A046727

/-! ## A046727.P2129943006543435840

`Δ[A079291(round(sqrt(n²+1)))]`
-/

namespace A046727.P2129943006543435840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079291 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046727.P2129943006543435840

namespace A046727

/-- `Δ[A079291(round(sqrt(n²+1)))]` -/
def P2129943006543435840.Spec : Prop :=
  ∀ n, P2129943006543435840.a n = A046727 n

end A046727

/-! ## A046727.P8787523567022601602

`Δ[A000129(n)^(2%(n+1))]`
-/

namespace A046727.P8787523567022601602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n ^ (2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046727.P8787523567022601602

namespace A046727

/-- `Δ[A000129(n)^(2%(n+1))]` -/
def P8787523567022601602.Spec : Prop :=
  ∀ n, P8787523567022601602.a n = A046727 n

end A046727

/-! ## A046727.P15487607563711380798

`Δ[A000129(round(sqrt(n²+1)))²]`
-/

namespace A046727.P15487607563711380798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046727.P15487607563711380798

namespace A046727

/-- `Δ[A000129(round(sqrt(n²+1)))²]` -/
def P15487607563711380798.Spec : Prop :=
  ∀ n, P15487607563711380798.a n = A046727 n

end A046727

/-! ## A046727.P15435068841298416725

`Δ[(A361732(n+1)/(n+1))²]`
-/

namespace A046727.P15435068841298416725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A361732 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046727.P15435068841298416725

namespace A046727

/-- `Δ[(A361732(n+1)/(n+1))²]` -/
def P15435068841298416725.Spec : Prop :=
  ∀ n, P15435068841298416725.a n = (A046727 n : ℚ)

end A046727

/-! ## A046727.P15089393022534856382

`Δ[(A052542(round(sqrt(n²+1)))/2)²]`
-/

namespace A046727.P15089393022534856382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A052542 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046727.P15089393022534856382

namespace A046727

/-- `Δ[(A052542(round(sqrt(n²+1)))/2)²]` -/
def P15089393022534856382.Spec : Prop :=
  ∀ n, P15089393022534856382.a n = (A046727 n : ℚ)

end A046727

/-! ## A046727.P10800243862276462351

`or(A001652(n), A057427(n))`
-/

namespace A046727.P10800243862276462351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001652 n) (A057427 n)

end

end A046727.P10800243862276462351

namespace A046727

/-- `or(A001652(n), A057427(n))` -/
def P10800243862276462351.Spec : Prop :=
  ∀ n, P10800243862276462351.a n = A046727 n

end A046727

/-! ## A046727.P5395056003870158162

`Δ[A002965(A004277(n))²]`
-/

namespace A046727.P5395056003870158162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A004277 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046727.P5395056003870158162

namespace A046727

/-- `Δ[A002965(A004277(n))²]` -/
def P5395056003870158162.Spec : Prop :=
  ∀ n, P5395056003870158162.a n = A046727 n

end A046727

/-! ## A046727.P8435092772051439432

`Δ[A116560(A008458(n))²]`
-/

namespace A046727.P8435092772051439432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (A008458 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046727.P8435092772051439432

namespace A046727

/-- `Δ[A116560(A008458(n))²]` -/
def P8435092772051439432.Spec : Prop :=
  ∀ n, P8435092772051439432.a n = A046727 n

end A046727

/-! ## A046727.P1498321283577236195

`Δ[A249576(A008486(n))²]`
-/

namespace A046727.P1498321283577236195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A008486 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046727.P1498321283577236195

namespace A046727

/-- `Δ[A249576(A008486(n))²]` -/
def P1498321283577236195.Spec : Prop :=
  ∀ n, P1498321283577236195.a n = A046727 n

end A046727

/-! ## A046727.P10600654589242176655

`Δ[A215928(n)]*A078057(n)`
-/

namespace A046727.P10600654589242176655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A078057 n

end

end A046727.P10600654589242176655

namespace A046727

/-- `Δ[A215928(n)]*A078057(n)` -/
def P10600654589242176655.Spec : Prop :=
  ∀ n, P10600654589242176655.a n = A046727 n

end A046727

/-! ## A046727.P4687942314759512284

`A001652(n)+char[A028326(n)]`
-/

namespace A046727.P4687942314759512284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A046727.P4687942314759512284

namespace A046727

/-- `A001652(n)+char[A028326(n)]` -/
def P4687942314759512284.Spec : Prop :=
  ∀ n, P4687942314759512284.a n = A046727 n

end A046727

/-! ## A046727.P1860934428974898234

`A046090(n)-char[A004273(n)]`
-/

namespace A046727.P1860934428974898234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046090 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A046727.P1860934428974898234

namespace A046727

/-- `A046090(n)-char[A004273(n)]` -/
def P1860934428974898234.Spec : Prop :=
  ∀ n, P1860934428974898234.a n = A046727 n

end A046727

/-!
# A046728: Let p1, p2 be first pair of consecutive primes with difference 2n; let p3, p4 be 2nd such pair; sequence gives "wadi" value p3-p1.

The programs for A046728, there is no canonical definition to state claims against.
-/

/-! ## A046728.P13174868472413016652

`A046789(n+1)-A000230(n+1)`
-/

namespace A046728.P13174868472413016652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046789 (n + 1) - A000230 (n + 1)

end

end A046728.P13174868472413016652

/-! ## A046728.P4207164385369504630

`A046789(n+1)+1-A045881(n+1)`
-/

namespace A046728.P4207164385369504630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046789 (n + 1) + (1 - A045881 (n + 1))

end

end A046728.P4207164385369504630

/-! ## A046728.P9587392965615774531

`A046789(n+1)+1-(A001632(n+1)-A131843(A000217(n)))`
-/

namespace A046728.P9587392965615774531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046789 (n + 1) + 1 - (A001632 (n + 1) - A131843 (A000217 n).toNat)

end

end A046728.P9587392965615774531

/-! ## A046728.P13749232900360855347

`A046789(n+1)-A174350(∑[n+1])`
-/

namespace A046728.P13749232900360855347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046789 (n + 1) - A174350 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046728.P13749232900360855347

/-! ## A046728.P2131334182574291777

`A174350(∑[n+1]+n+1)-A000230(n+1)`
-/

namespace A046728.P2131334182574291777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)) - A000230 (n + 1)

end

end A046728.P2131334182574291777

/-! ## A046728.P12839007476284079101

`A046789(n+1)-A231609(A000124(n))`
-/

namespace A046728.P12839007476284079101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046789 (n + 1) - A231609 (A000124 n).toNat

end

end A046728.P12839007476284079101

/-! ## A046728.P12002251867639786611

`A046789(n+1)-A231609(∑[A028310(n)])`
-/

namespace A046728.P12002251867639786611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046789 (n + 1) - A231609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A046728.P12002251867639786611

/-!
# A046729: Expansion of 4*x/((1+x)*(1-6*x+x^2)).

The programs for A046729, the canonical program `A046729.P14746519959816745462` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046729 has offset 0).

The definition of A046729 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(4x/(1-5x-5x^2+x^3))` (program `A046729.P14746519959816745462`, by `A046729.P14746519959816745462.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A046729.P14746519959816745462

`ogf(4x/(1-5x-5x^2+x^3))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A046729

/-- `ogf(4x/(1-5x-5x^2+x^3))` -/
def P14746519959816745462.Spec : Prop :=
  ∀ n, P14746519959816745462.a n = A046729 n

theorem P14746519959816745462.correct : P14746519959816745462.Spec := by
  intro n
  simp only [A046729]

end A046729

/-! ## A046729.P14061385333835913401

`2*A114620(n)`
-/

namespace A046729.P14061385333835913401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114620 n

end

end A046729.P14061385333835913401

namespace A046729

/-- `2*A114620(n)` -/
def P14061385333835913401.Spec : Prop :=
  ∀ n, P14061385333835913401.a n = A046729 n

end A046729

/-! ## A046729.P17896179045655246055

`4*A084158(n)`
-/

namespace A046729.P17896179045655246055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A084158 n

end

end A046729.P17896179045655246055

namespace A046729

/-- `4*A084158(n)` -/
def P17896179045655246055.Spec : Prop :=
  ∀ n, P17896179045655246055.a n = A046729 n

end A046729

/-! ## A046729.P4906610579416028882

`A084159(n)-(-1)^n`
-/

namespace A046729.P4906610579416028882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084159 n - (-1) ^ n

end

end A046729.P4906610579416028882

namespace A046729

/-- `A084159(n)-(-1)^n` -/
def P4906610579416028882.Spec : Prop :=
  ∀ n, P4906610579416028882.a n = A046729 n

end A046729

/-! ## A046729.P10706831931558524161

`A001652(n)+(1-(-1)^n)/2`
-/

namespace A046729.P10706831931558524161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001652 n : ℚ) + (1 - (-1) ^ n : ℚ) / 2

end

end A046729.P10706831931558524161

namespace A046729

/-- `A001652(n)+(1-(-1)^n)/2` -/
def P10706831931558524161.Spec : Prop :=
  ∀ n, P10706831931558524161.a n = (A046729 n : ℚ)

end A046729

/-! ## A046729.P4509909164263036899

`A046090(n)-(1+(-1)^n)/2`
-/

namespace A046729.P4509909164263036899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046090 n : ℚ) - (1 + (-1) ^ n : ℚ) / 2

end

end A046729.P4509909164263036899

namespace A046729

/-- `A046090(n)-(1+(-1)^n)/2` -/
def P4509909164263036899.Spec : Prop :=
  ∀ n, P4509909164263036899.a n = (A046729 n : ℚ)

end A046729

/-! ## A046729.P2832073183859430075

`A002315(n)-A084159(n)`
-/

namespace A046729.P2832073183859430075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n - A084159 n

end

end A046729.P2832073183859430075

namespace A046729

/-- `A002315(n)-A084159(n)` -/
def P2832073183859430075.Spec : Prop :=
  ∀ n, P2832073183859430075.a n = A046729 n

end A046729

/-! ## A046729.P10344316493018533032

`A089499(n)*A089499(n+1)`
-/

namespace A046729.P10344316493018533032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089499 n * A089499 (n + 1)

end

end A046729.P10344316493018533032

namespace A046729

/-- `A089499(n)*A089499(n+1)` -/
def P10344316493018533032.Spec : Prop :=
  ∀ n, P10344316493018533032.a n = A046729 n

end A046729

/-! ## A046729.P13054985740897401070

`1/2*(A001109(n+1)+A001109(n)-(-1)^n)`
-/

namespace A046729.P13054985740897401070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A001109 (n + 1) + A001109 n - (-1) ^ n : ℚ)

end

end A046729.P13054985740897401070

namespace A046729

/-- `1/2*(A001109(n+1)+A001109(n)-(-1)^n)` -/
def P13054985740897401070.Spec : Prop :=
  ∀ n, P13054985740897401070.a n = (A046729 n : ℚ)

end A046729

/-! ## A046729.P6469501722577422909

`(sqrt(1+8*A029549(n))-(-1)^n)/2`
-/

namespace A046729.P6469501722577422909
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (1 + 8 * A029549 n : ℝ) - ((-1) ^ n : ℝ)) / 2

end

end A046729.P6469501722577422909

namespace A046729

/-- `(sqrt(1+8*A029549(n))-(-1)^n)/2` -/
def P6469501722577422909.Spec : Prop :=
  ∀ n, P6469501722577422909.a n = (A046729 n : ℝ)

end A046729

/-! ## A046729.P6470629820877578953

`∑[Δ[round((sqrt(2)+1)^n/2)]²]`
-/

namespace A046729.P6470629820877578953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n / 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046729.P6470629820877578953

namespace A046729

/-- `∑[Δ[round((sqrt(2)+1)^n/2)]²]` -/
def P6470629820877578953.Spec : Prop :=
  ∀ n, P6470629820877578953.a n = A046729 n

end A046729

/-! ## A046729.P2185051862960162844

`Δ[(lcm(2, round((sqrt(2)+1)^n))/2)²]/2`
-/

namespace A046729.P2185051862960162844
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 2 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n)) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / 2

end

end A046729.P2185051862960162844

namespace A046729

/-- `Δ[(lcm(2, round((sqrt(2)+1)^n))/2)²]/2` -/
def P2185051862960162844.Spec : Prop :=
  ∀ n, P2185051862960162844.a n = (A046729 n : ℚ)

end A046729

/-! ## A046729.P2877978278491970625

`floor(ceil(∑[((sqrt(2)+1)^n)²])/2)+n%2`
-/

namespace A046729.P2877978278491970625
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ : ℚ) / 2⌋ + ((n % 2 : ℕ) : ℤ)

end

end A046729.P2877978278491970625

namespace A046729

/-- `floor(ceil(∑[((sqrt(2)+1)^n)²])/2)+n%2` -/
def P2877978278491970625.Spec : Prop :=
  ∀ n, P2877978278491970625.a n = A046729 n

end A046729

/-! ## A046729.P8212877961421833633

`and(-2, A046090(n))`
-/

namespace A046729.P8212877961421833633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A046090 n)

end

end A046729.P8212877961421833633

namespace A046729

/-- `and(-2, A046090(n))` -/
def P8212877961421833633.Spec : Prop :=
  ∀ n, P8212877961421833633.a n = A046729 n

end A046729

/-! ## A046729.P12155305467115719784

`2*∑[A114619(n)]`
-/

namespace A046729.P12155305467115719784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046729.P12155305467115719784

namespace A046729

/-- `2*∑[A114619(n)]` -/
def P12155305467115719784.Spec : Prop :=
  ∀ n, P12155305467115719784.a n = A046729 n

end A046729

/-! ## A046729.P13755295739668073564

`Δ[A090390(n)/2]`
-/

namespace A046729.P13755295739668073564
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090390 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046729.P13755295739668073564

namespace A046729

/-- `Δ[A090390(n)/2]` -/
def P13755295739668073564.Spec : Prop :=
  ∀ n, P13755295739668073564.a n = (A046729 n : ℚ)

end A046729

/-! ## A046729.P8781612510993573692

`∑[A052542(n)²]-1`
-/

namespace A046729.P8781612510993573692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A046729.P8781612510993573692

namespace A046729

/-- `∑[A052542(n)²]-1` -/
def P8781612510993573692.Spec : Prop :=
  ∀ n, P8781612510993573692.a n = A046729 n

end A046729

/-! ## A046729.P8249497223065620610

`Δ[A001333(n)²/2]`
-/

namespace A046729.P8249497223065620610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 n ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046729.P8249497223065620610

namespace A046729

/-- `Δ[A001333(n)²/2]` -/
def P8249497223065620610.Spec : Prop :=
  ∀ n, P8249497223065620610.a n = (A046729 n : ℚ)

end A046729

/-! ## A046729.P17215613626729532489

`Δ[A123335(n)²/2]`
-/

namespace A046729.P17215613626729532489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123335 n ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046729.P17215613626729532489

namespace A046729

/-- `Δ[A123335(n)²/2]` -/
def P17215613626729532489.Spec : Prop :=
  ∀ n, P17215613626729532489.a n = (A046729 n : ℚ)

end A046729

/-! ## A046729.P15927385029836028719

`and(-2, ∑[A001541(n)])`
-/

namespace A046729.P15927385029836028719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046729.P15927385029836028719

namespace A046729

/-- `and(-2, ∑[A001541(n)])` -/
def P15927385029836028719.Spec : Prop :=
  ∀ n, P15927385029836028719.a n = A046729 n

end A046729

/-!
# A046730: a(n) = A002172(n) / 2.

The programs for A046730, there is no canonical definition to state claims against.
-/

/-! ## A046730.P7013625708186600446

`A002172(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046730.P7013625708186600446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002172 (n + 1) : ℚ) / 2

end

end A046730.P7013625708186600446

/-! ## A046730.P5111575091183676460

`A278720(A080147(n+1))/2`
-/

namespace A046730.P5111575091183676460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278720 (A080147 (n + 1)).toNat : ℚ) / 2

end

end A046730.P5111575091183676460

/-! ## A046730.P3396762857715434029

`A278720(A138970(n+1)+1)/2`
-/

namespace A046730.P3396762857715434029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278720 (A138970 (n + 1) + 1).toNat : ℚ) / 2

end

end A046730.P3396762857715434029

/-! ## A046730.P5074169788019440461

`A278720(eq[0, A282038(n+1)]+1)/2`
-/

namespace A046730.P5074169788019440461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2

end

end A046730.P5074169788019440461

/-! ## A046730.P1888801324997843758

`A278720(eq[1, A039702(n+1)]+1)/2`
-/

namespace A046730.P1888801324997843758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2

end

end A046730.P1888801324997843758

/-! ## A046730.P1946872783053959806

`A278720(eq[1, A070750(n+1)]+1)/2`
-/

namespace A046730.P1946872783053959806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2

end

end A046730.P1946872783053959806

/-! ## A046730.P11631907847996504083

`A278720(lt[1, A088978(n+1)]+1)/2`
-/

namespace A046730.P11631907847996504083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088978 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℚ) / 2

end

end A046730.P11631907847996504083

/-! ## A046730.P9271991975509424614

`A002171(A005098(n+1))/2`
-/

namespace A046730.P9271991975509424614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002171 (A005098 (n + 1)).toNat : ℚ) / 2

end

end A046730.P9271991975509424614

/-! ## A046730.P8711284917352226512

`(A002972(n+1)+A002172(n+1))%A002172(n+1)`
-/

namespace A046730.P8711284917352226512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002972 (n + 1) + A002172 (n + 1)) (A002172 (n + 1))

end

end A046730.P8711284917352226512

/-!
# A046731: a(n) = sum of primes < 10^n.

The programs for A046731, there is no canonical definition to state claims against.
-/

/-! ## A046731.P15417454456821791950

`A077645(n)+a(n-1)` with `a(0)=0`
-/

namespace A046731.P15417454456821791950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A077645 n + a (n - 1)

end

end A046731.P15417454456821791950

/-! ## A046731.P15412380837025444538

`∑[A077645(n+1)]-A077645(n+1)`
-/

namespace A046731.P15412380837025444538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A077645 (n + 1)

end

end A046731.P15412380837025444538

/-! ## A046731.P5410236172768565429

`∑[A077645(A160793(2*n+1))]%A077645(n+1)`
-/

namespace A046731.P5410236172768565429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077645 (A160793 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A077645 (n + 1))

end

end A046731.P5410236172768565429

/-! ## A046731.P8612071836411378992

`A006880(2*n)-A139564(n)`
-/

namespace A046731.P8612071836411378992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (2 * n) - A139564 n

end

end A046731.P8612071836411378992

/-!
# A046732: "Norep emirps": primes with distinct digits which remain prime when reversed.

The programs for A046732, there is no canonical definition to state claims against.
-/

/-! ## A046732.P9102297208680990647

`∩[A007500(n+1), A029743(n+1)]`
-/

namespace A046732.P9102297208680990647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046732.P9102297208680990647

/-! ## A046732.P6102499293996467815

`∩[A029743(n+1), A085869(n+1)]`
-/

namespace A046732.P6102499293996467815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046732.P6102499293996467815

/-! ## A046732.P12958645742717184143

`∩[A029743(n+1), A095179(n+1)]`
-/

namespace A046732.P12958645742717184143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046732.P12958645742717184143

/-! ## A046732.P9186700654195085811

`∩[A029743(n+1), A062895(n+1)]`
-/

namespace A046732.P9186700654195085811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046732.P9186700654195085811

/-! ## A046732.P7102566123722384237

`∩[A007500(n+1), A010784(n+1)]`
-/

namespace A046732.P7102566123722384237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046732.P7102566123722384237

/-! ## A046732.P4498839820432382898

`record[A137564(A007500(n+1))]`
-/

namespace A046732.P4498839820432382898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A007500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046732.P4498839820432382898

/-! ## A046732.P2600571574148377263

`p?[A151764(A029743(n+1))]`
-/

namespace A046732.P2600571574148377263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151764 (A029743 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046732.P2600571574148377263

/-! ## A046732.P9044452751547828906

`filter[A007500(n+1), A178788(#)]`
-/

namespace A046732.P9044452751547828906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A046732.P9044452751547828906

/-! ## A046732.P5519991530612467941

`record[p?[A151765(A137564(n+1))]]`
-/

namespace A046732.P5519991530612467941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151765 (A137564 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046732.P5519991530612467941

/-! ## A046732.P12445024538062876788

`record[A320486(A007500(ceil((n+2)/3)))]`
-/

namespace A046732.P12445024538062876788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (A007500 ⌈(n + 2 : ℚ) / 3⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046732.P12445024538062876788

/-! ## A046732.P9509268845248008364

`A004086(p?[A004086(A029743(n+1))])`
-/

namespace A046732.P9509268845248008364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A029743 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046732.P9509268845248008364

/-!
# A046733: Periods for divisibility of A000213 by n.

The programs for A046733, there is no canonical definition to state claims against.
-/

/-! ## A046733.P6238167199665881004

`gcd(A046737(n+1), A056594(A082275(n+1)))`
-/

namespace A046733.P6238167199665881004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046737 (n + 1)) (A056594 (A082275 (n + 1)).toNat)

end

end A046733.P6238167199665881004

/-! ## A046733.P16252788101217255377

`A046737(n+1)^A028653(n)^A266437(n)`
-/

namespace A046733.P16252788101217255377
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A046737 (n + 1) : ℝ) ^ ((A028653 n : ℚ) ^ (A266437 n : ℤ) : ℝ)

end

end A046733.P16252788101217255377

/-! ## A046733.P752484555623524736

`A046737(n+1)^A028653(n)^A183063(n+1)`
-/

namespace A046733.P752484555623524736
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A046737 (n + 1) : ℝ) ^ ((A028653 n : ℚ) ^ (A183063 (n + 1) : ℤ) : ℝ)

end

end A046733.P752484555623524736

/-! ## A046733.P17481290120586588023

`A046737(n+1)^A189245(A134869(n+1))`
-/

namespace A046733.P17481290120586588023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046737 (n + 1) : ℚ) ^ (A189245 (A134869 (n + 1)).toNat : ℤ)

end

end A046733.P17481290120586588023

/-! ## A046733.P12264047718822301415

`A046737(n+1)^A001221(A134829(n))`
-/

namespace A046733.P12264047718822301415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046737 (n + 1) : ℚ) ^ (A001221 (A134829 n).toNat : ℤ)

end

end A046733.P12264047718822301415

/-!
# A046734: Period of A000213 mod n.

The programs for A046734, there is no canonical definition to state claims against.
-/

/-! ## A046734.P7214856255714660264

`A046738(gcd(n+1, ∑[n]))`
-/

namespace A046734.P7214856255714660264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046738 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A046734.P7214856255714660264

/-! ## A046734.P15142271560797356096

`A046738((∑[n]-1)%(n+1)+1)`
-/

namespace A046734.P15142271560797356096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046738 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

end

end A046734.P15142271560797356096

/-! ## A046734.P8351017147455154519

`A046738(Δ[A001318(n)])`
-/

namespace A046734.P8351017147455154519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046738 (f1 (n + 1) - f1 n).toNat

end

end A046734.P8351017147455154519

/-! ## A046734.P4794452348787879314

`A046738(A026741(n+1))`
-/

namespace A046734.P4794452348787879314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046738 (A026741 (n + 1)).toNat

end

end A046734.P4794452348787879314

/-! ## A046734.P8092182593036411822

`A046738(A065423(n+1)+1)`
-/

namespace A046734.P8092182593036411822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046738 (A065423 (n + 1) + 1).toNat

end

end A046734.P8092182593036411822

/-! ## A046734.P12555274014122832717

`A046738((n+1)/A000034(n))`
-/

namespace A046734.P12555274014122832717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046738 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A046734.P12555274014122832717

/-! ## A046734.P254289104818829590

`lcm(A106293(n+1), A268357(n+1))`
-/

namespace A046734.P254289104818829590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106293 (n + 1)) (A268357 (n + 1))

end

end A046734.P254289104818829590

/-! ## A046734.P1448077565179299843

`A106293((n+1)*A268357(n+1))`
-/

namespace A046734.P1448077565179299843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106293 ((n + 1 : ℤ) * A268357 (n + 1)).toNat

end

end A046734.P1448077565179299843

/-!
# A046736: Number of ways to place non-intersecting diagonals in convex n-gon so as to create no triangles.

The programs for A046736, the canonical program `A046736.P811384115133273399` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046736 has offset 2).

The definition of A046736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046736.P3947043212340138398

`A052524(n+1)/(n+1)!`
-/

namespace A046736.P3947043212340138398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052524 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A046736.P3947043212340138398

namespace A046736

/-- `A052524(n+1)/(n+1)!` -/
def P3947043212340138398.Spec : Prop :=
  ∀ n, P3947043212340138398.a n = (A046736 (n + 2) : ℚ)

end A046736

/-! ## A046736.P10663397738257482732

`A222763(n)/(n+1)`
-/

namespace A046736.P10663397738257482732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222763 n : ℚ) / (n + 1 : ℚ)

end

end A046736.P10663397738257482732

namespace A046736

/-- `A222763(n)/(n+1)` -/
def P10663397738257482732.Spec : Prop :=
  ∀ n, P10663397738257482732.a n = (A046736 (n + 2) : ℚ)

end A046736

/-! ## A046736.P811384115133273399

`floor(A232665(n)/(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046736

/-- `floor(A232665(n)/(n+1))` -/
def P811384115133273399.Spec : Prop :=
  ∀ n, P811384115133273399.a n = A046736 (n + 2)

theorem P811384115133273399.correct : P811384115133273399.Spec := by
  intro n
  simp only [A046736, Nat.add_sub_cancel]

end A046736

/-! ## A046736.P5004388154904438197

`A357182(Δ[n²])/(n+1)`
-/

namespace A046736.P5004388154904438197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357182 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A046736.P5004388154904438197

namespace A046736

/-- `A357182(Δ[n²])/(n+1)` -/
def P5004388154904438197.Spec : Prop :=
  ∀ n, P5004388154904438197.a n = (A046736 (n + 2) : ℚ)

end A046736

/-! ## A046736.P9066775771250525396

`A222283(A004277(n))/(n+1)`
-/

namespace A046736.P9066775771250525396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222283 (A004277 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A046736.P9066775771250525396

namespace A046736

/-- `A222283(A004277(n))/(n+1)` -/
def P9066775771250525396.Spec : Prop :=
  ∀ n, P9066775771250525396.a n = (A046736 (n + 2) : ℚ)

end A046736

/-! ## A046736.P9416896273045794135

`A222283(A028310(2*n))/(n+1)`
-/

namespace A046736.P9416896273045794135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222283 (A028310 (2 * n)).toNat : ℚ) / (n + 1 : ℚ)

end

end A046736.P9416896273045794135

namespace A046736

/-- `A222283(A028310(2*n))/(n+1)` -/
def P9416896273045794135.Spec : Prop :=
  ∀ n, P9416896273045794135.a n = (A046736 (n + 2) : ℚ)

end A046736

/-! ## A046736.P9178226671478619214

`A331332(2*(n+1)²)/(n+1)`
-/

namespace A046736.P9178226671478619214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331332 (2 * (n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A046736.P9178226671478619214

namespace A046736

/-- `A331332(2*(n+1)²)/(n+1)` -/
def P9178226671478619214.Spec : Prop :=
  ∀ n, P9178226671478619214.a n = (A046736 (n + 2) : ℚ)

end A046736

/-! ## A046736.P8638304820986704872

`A105422(2*(n²+n))/(n+1)`
-/

namespace A046736.P8638304820986704872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105422 (2 * (n ^ 2 + n)) : ℚ) / (n + 1 : ℚ)

end

end A046736.P8638304820986704872

namespace A046736

/-- `A105422(2*(n²+n))/(n+1)` -/
def P8638304820986704872.Spec : Prop :=
  ∀ n, P8638304820986704872.a n = (A046736 (n + 2) : ℚ)

end A046736

/-! ## A046736.P10057114070616853587

`A052524(n+1)/A000142(n+1)`
-/

namespace A046736.P10057114070616853587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052524 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A046736.P10057114070616853587

namespace A046736

/-- `A052524(n+1)/A000142(n+1)` -/
def P10057114070616853587.Spec : Prop :=
  ∀ n, P10057114070616853587.a n = (A046736 (n + 2) : ℚ)

end A046736

/-!
# A046737: Reduced period of A000073 mod n.

The programs for A046737, there is no canonical definition to state claims against.
-/

/-! ## A046737.P11153080674486768923

`A046738(n+1)/A386236(n+1)`
-/

namespace A046737.P11153080674486768923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046738 (n + 1) : ℚ) / (A386236 (n + 1) : ℚ)

end

end A046737.P11153080674486768923

/-! ## A046737.P13715729700510615267

`A046738(n+1)/A336651(A100371(n+1))`
-/

namespace A046737.P13715729700510615267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046738 (n + 1) : ℚ) / (A336651 (A100371 (n + 1)).toNat : ℚ)

end

end A046737.P13715729700510615267

/-! ## A046737.P2148824212934268660

`A046734(2*(n+1))/A336651(A100371(n+1))`
-/

namespace A046737.P2148824212934268660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046734 (2 * (n + 1)) : ℚ) / (A336651 (A100371 (n + 1)).toNat : ℚ)

end

end A046737.P2148824212934268660

/-! ## A046737.P14416541941729528012

`A172500(A046738(n+1))%A172498(n+1)`
-/

namespace A046737.P14416541941729528012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172500 (A046738 (n + 1)).toNat) (A172498 (n + 1))

end

end A046737.P14416541941729528012

/-! ## A046737.P17023521218012690403

`A046738(n+1)/A082064(A029985(n+3))`
-/

namespace A046737.P17023521218012690403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046738 (n + 1) : ℚ) / (A082064 (A029985 (n + 3)).toNat : ℚ)

end

end A046737.P17023521218012690403

/-!
# A046738: Period of Fibonacci 3-step sequence A000073 mod n.

The programs for A046738, there is no canonical definition to state claims against.
-/

/-! ## A046738.P6555603603040828091

`A046737(n+1)*A386236(n+1)`
-/

namespace A046738.P6555603603040828091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046737 (n + 1) * A386236 (n + 1)

end

end A046738.P6555603603040828091

/-! ## A046738.P10824839960228358070

`lcm(A046734(n+1), A046737(n+1))`
-/

namespace A046738.P10824839960228358070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046734 (n + 1)) (A046737 (n + 1))

end

end A046738.P10824839960228358070

/-! ## A046738.P8228470365274753467

`A046734(2*(n+1))`
-/

namespace A046738.P8228470365274753467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046734 (2 * (n + 1))

end

end A046738.P8228470365274753467

/-! ## A046738.P15753549047495247001

`lcm(A000034(n), A046734(A103517(n)))`
-/

namespace A046738.P15753549047495247001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A046734 (A103517 n).toNat)

end

end A046738.P15753549047495247001

/-! ## A046738.P8474209796624401778

`A000034(2*n)*A046734(A103517(n))`
-/

namespace A046738.P8474209796624401778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A046734 (A103517 n).toNat

end

end A046738.P8474209796624401778

/-! ## A046738.P10777769479075835236

`A046734(A103517(n))%A111192(n+1)`
-/

namespace A046738.P10777769479075835236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046734 (A103517 n).toNat) (A111192 (n + 1))

end

end A046738.P10777769479075835236

/-!
# A046739: Triangle read by rows, related to number of permutations of [n] with 0 successions and k rises.

The programs for A046739, there is no canonical definition to state claims against.
-/

/-! ## A046739.P3013623189532368704

`A271697(comp[A101881(n)]+1)`
-/

namespace A046739.P3013623189532368704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271697 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A046739.P3013623189532368704

/-! ## A046739.P8260869001079762225

`A271697(lt[A008624(n), A008459(n)])`
-/

namespace A046739.P8260869001079762225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271697 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046739.P8260869001079762225

/-! ## A046739.P7289853452229744135

`A271697(lt[A028834(n+1), A208142(n+1)])`
-/

namespace A046739.P7289853452229744135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271697 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046739.P7289853452229744135

/-! ## A046739.P3219071773898220738

`A271697(lt[A005117(n+2), A208142(n+1)])`
-/

namespace A046739.P3219071773898220738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271697 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046739.P3219071773898220738

/-! ## A046739.P13050211096600631780

`A271697(lt[A295664(2*n+3), A009998(n)])`
-/

namespace A046739.P13050211096600631780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271697 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046739.P13050211096600631780

/-! ## A046739.P16205803743989249912

`A271697(lt[A271697(n+1), A123125(n+1)])`
-/

namespace A046739.P16205803743989249912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271697 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046739.P16205803743989249912

/-! ## A046739.P14998499382919094088

`A145881(n+1)+A145880(n+1)`
-/

namespace A046739.P14998499382919094088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145881 (n + 1) + A145880 (n + 1)

end

end A046739.P14998499382919094088

/-!
# A046741: Triangle read by rows giving number of arrangements of k dumbbells on 2 X n grid (n >= 0, k >= 0).

The programs for A046741, there is no canonical definition to state claims against.
-/

/-! ## A046741.P11728674101472221208

`abs(A308244(A061579(n)))`
-/

namespace A046741.P11728674101472221208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A308244 (A061579 n).toNat|

end

end A046741.P11728674101472221208

/-! ## A046741.P14795197527754107750

`gcd(A000038(n), A308244(A061579(n)))`
-/

namespace A046741.P14795197527754107750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A308244 (A061579 n).toNat)

end

end A046741.P14795197527754107750

/-! ## A046741.P8389422145683209142

`lcm(A020985(n), A308244(A061579(n)))`
-/

namespace A046741.P8389422145683209142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A308244 (A061579 n).toNat)

end

end A046741.P8389422145683209142

/-! ## A046741.P573530376191693803

`abs(A308244(A057944(n)+A025581(n)))`
-/

namespace A046741.P573530376191693803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A308244 (A057944 n + A025581 n).toNat|

end

end A046741.P573530376191693803

/-! ## A046741.P2640935552338930445

`lcm(-A308244(A061579(n)), A000034(2*n))`
-/

namespace A046741.P2640935552338930445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A308244 (A061579 n).toNat) (A000034 (2 * n))

end

end A046741.P2640935552338930445

/-! ## A046741.P14963691684667491504

`∑{d}[A308244(A061579(n)), A000010(#)]`
-/

namespace A046741.P14963691684667491504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308244 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A046741.P14963691684667491504

/-!
# A046742: Triangle of number of connected graphs with k >= 1 edges and n nodes (2 <= n <= k+1).

The programs for A046742, there is no canonical definition to state claims against.
-/

/-! ## A046742.P1028828528500306794

`A054923(comp[∑[n]])`
-/

namespace A046742.P1028828528500306794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A046742.P1028828528500306794

/-! ## A046742.P9672368556957823292

`or(char[2], A054923(A014132(n+1)))`
-/

namespace A046742.P9672368556957823292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A054923 (A014132 (n + 1)).toNat)

end

end A046742.P9672368556957823292

/-! ## A046742.P17621394441213129116

`A054923(A080036(n))+A000007(n)`
-/

namespace A046742.P17621394441213129116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 (A080036 n).toNat + A000007 n

end

end A046742.P17621394441213129116

/-! ## A046742.P15194151643038818276

`gcd(A000038(n), A054923(A014132(n+1)))`
-/

namespace A046742.P15194151643038818276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A054923 (A014132 (n + 1)).toNat)

end

end A046742.P15194151643038818276

/-! ## A046742.P6025244429600180973

`and(A054923(A014132(n+1)), A260196(n))`
-/

namespace A046742.P6025244429600180973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054923 (A014132 (n + 1)).toNat) (A260196 n)

end

end A046742.P6025244429600180973

/-! ## A046742.P8916444043191796506

`A054923(A014132(n+1))+A000007(n+1)`
-/

namespace A046742.P8916444043191796506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 (A014132 (n + 1)).toNat + A000007 (n + 1)

end

end A046742.P8916444043191796506

/-! ## A046742.P14883103302448688349

`A054923(A014132(n+1))*A093178(2*n)`
-/

namespace A046742.P14883103302448688349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 (A014132 (n + 1)).toNat * A093178 (2 * n)

end

end A046742.P14883103302448688349

/-! ## A046742.P17977385731061282837

`A054923(A014132(n+1))%A000041(n+2)`
-/

namespace A046742.P17977385731061282837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054923 (A014132 (n + 1)).toNat) (A000041 (n + 2))

end

end A046742.P17977385731061282837

/-! ## A046742.P141634079145709044

`A014963(A008458(n))*A054923(A014132(n+1))`
-/

namespace A046742.P141634079145709044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A054923 (A014132 (n + 1)).toNat

end

end A046742.P141634079145709044

/-! ## A046742.P2468233381379950711

`A001222(A019357(n+1))*A054923(A014132(n+1))`
-/

namespace A046742.P2468233381379950711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019357 (n + 1)).toNat * A054923 (A014132 (n + 1)).toNat

end

end A046742.P2468233381379950711

/-! ## A046742.P10759134584175136198

`A033630(A000265(n+1))*A054923(A014132(n+1))`
-/

namespace A046742.P10759134584175136198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A000265 (n + 1)).toNat * A054923 (A014132 (n + 1)).toNat

end

end A046742.P10759134584175136198

/-! ## A046742.P15796609668439551727

`A001222(A274504(n+1))*A054923(A014132(n+1))`
-/

namespace A046742.P15796609668439551727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A274504 (n + 1)).toNat * A054923 (A014132 (n + 1)).toNat

end

end A046742.P15796609668439551727

/-! ## A046742.P1846147545034385071

`A001222(A274505(n+1))*A054923(A014132(n+1))`
-/

namespace A046742.P1846147545034385071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A274505 (n + 1)).toNat * A054923 (A014132 (n + 1)).toNat

end

end A046742.P1846147545034385071

/-!
# A046745: Number of connected graphs with <= n edges.

The programs for A046745, there is no canonical definition to state claims against.
-/

/-! ## A046745.P8437776683189038010

`∑[A002905(n+1)]`
-/

namespace A046745.P8437776683189038010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046745.P8437776683189038010

/-! ## A046745.P15384486811859557940

`∑[A275421(∑[n]+1)]`
-/

namespace A046745.P15384486811859557940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275421 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046745.P15384486811859557940

/-! ## A046745.P17678324807020718592

`∑[A003089(n+1)+char[2]]`
-/

namespace A046745.P17678324807020718592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003089 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046745.P17678324807020718592

/-! ## A046745.P2156734858992986611

`∑[and(1, n)!*A275421(A000124(n))]`
-/

namespace A046745.P2156734858992986611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A275421 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046745.P2156734858992986611

/-! ## A046745.P459254596842586504

`∑[A275421(A000124(n))%A081069(n)]`
-/

namespace A046745.P459254596842586504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275421 (A000124 n).toNat) (A081069 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046745.P459254596842586504

/-!
# A046746: Sum of smallest parts of all partitions of n.

The programs for A046746, there is no canonical definition to state claims against.
-/

/-! ## A046746.P1245787658397111378

`A222045(n)+A222044(n)`
-/

namespace A046746.P1245787658397111378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222045 n + A222044 n

end

end A046746.P1245787658397111378

/-! ## A046746.P1433379437518499348

`A222046(n)+2*A222045(n)`
-/

namespace A046746.P1433379437518499348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222046 n + 2 * A222045 n

end

end A046746.P1433379437518499348

/-! ## A046746.P3849049573830888466

`2*A222044(n)-A222046(n)`
-/

namespace A046746.P3849049573830888466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222044 n - A222046 n

end

end A046746.P3849049573830888466

/-! ## A046746.P2294589720840372310

`Δ[A196039(n-ceil(n/(n+1)))]`
-/

namespace A046746.P2294589720840372310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196039 ((n : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046746.P2294589720840372310

/-! ## A046746.P14650230397425644848

`A006128(n)-(A211881(n)+A211870(n))`
-/

namespace A046746.P14650230397425644848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - (A211881 n + A211870 n)

end

end A046746.P14650230397425644848

/-! ## A046746.P5224782494031320286

`A222045(n)+A222047(n)-A211870(n)`
-/

namespace A046746.P5224782494031320286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222045 n + (A222047 n - A211870 n)

end

end A046746.P5224782494031320286

/-! ## A046746.P578224900134117405

`A222044(n)+A222048(n)-A211881(n)`
-/

namespace A046746.P578224900134117405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222044 n + (A222048 n - A211881 n)

end

end A046746.P578224900134117405

/-!
# A046747: Number of n X n rational {0,1}-matrices of determinant 0.

The programs for A046747, there is no canonical definition to state claims against.
-/

/-! ## A046747.P14600622580130931252

`2^(n+1)²-(n+1)!*C(2^(n+1)-1, n+1)+(n+1)!*A000410(n+1)`
-/

namespace A046747.P14600622580130931252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) ^ 2 : ℤ) - (Nat.factorial (n + 1) * Nat.choose ((2 ^ (n + 1) : ℤ) - 1).toNat (n + 1) : ℤ) + (Nat.factorial (n + 1) : ℤ) * A000410 (n + 1)

end

end A046747.P14600622580130931252

/-! ## A046747.P11314834609982478051

`record[A089478(n+1)]`
-/

namespace A046747.P11314834609982478051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046747.P11314834609982478051

/-! ## A046747.P9214837364143451669

`record[or(A000007(n), A089478(n))]`
-/

namespace A046747.P9214837364143451669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A089478 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046747.P9214837364143451669

/-! ## A046747.P3462964294809320476

`record[or(A010815(n), A089478(n))]`
-/

namespace A046747.P3462964294809320476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010815 n) (A089478 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046747.P3462964294809320476

/-!
# A046748: Row sums of triangle A046521.

The programs for A046748, the canonical program `A046748.P11181252808619968199` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046748 has offset 0).

The definition of A046748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046748.P11181252808619968199

`5*a(n-1)-2*A000108(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046748

/-- `5*a(n-1)-2*A000108(n-1)` -/
def P11181252808619968199.Spec : Prop :=
  ∀ n, P11181252808619968199.a n = A046748 n

theorem P11181252808619968199.correct : P11181252808619968199.Spec := by
  intro n
  simp only [A046748]

end A046748

/-! ## A046748.P14569899325508932628

`A098615(2*n)`
-/

namespace A046748.P14569899325508932628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098615 (2 * n)

end

end A046748.P14569899325508932628

namespace A046748

/-- `A098615(2*n)` -/
def P14569899325508932628.Spec : Prop :=
  ∀ n, P14569899325508932628.a n = A046748 n

end A046748

/-! ## A046748.P4418941375066823393

`4*a(n-1)+A002420(n)+a(n-1)` with `a(0)=1`
-/

namespace A046748.P4418941375066823393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + A002420 n + a (n - 1)

end

end A046748.P4418941375066823393

namespace A046748

/-- `4*a(n-1)+A002420(n)+a(n-1)` -/
def P4418941375066823393.Spec : Prop :=
  ∀ n, P4418941375066823393.a n = A046748 n

end A046748

/-! ## A046748.P12880061892133905599

`3*(3*n-2)*a(n-1)/n-10*(2*n-3)*a(n-2)/n` with `a(0)=1, a(1)=3`
-/

namespace A046748.P12880061892133905599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (3 * ((3 * n : ℤ) - 2) : ℚ) * a (n - 1) / (n : ℚ) - (10 * ((2 * n : ℤ) - 3) : ℚ) * a (n - 2) / (n : ℚ)

end

end A046748.P12880061892133905599

namespace A046748

/-- `3*(3*n-2)*a(n-1)/n-10*(2*n-3)*a(n-2)/n` -/
def P12880061892133905599.Spec : Prop :=
  ∀ n, P12880061892133905599.a n = (A046748 n : ℚ)

end A046748

/-!
# A046751: Triangle read by rows of number of connected graphs with n nodes and k edges (n >= 2, 1 <= k <= n(n-1)/2).

The programs for A046751, there is no canonical definition to state claims against.
-/

/-! ## A046751.P5037335756890466770

`A054924(lt[2, A129178(n)])`
-/

namespace A046751.P5037335756890466770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046751.P5037335756890466770

/-! ## A046751.P1008477440830808571

`A054924(A194847(n)+1+n)`
-/

namespace A046751.P1008477440830808571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054924 (A194847 n + 1 + (n : ℤ)).toNat

end

end A046751.P1008477440830808571

/-! ## A046751.P13737839374572216545

`A054924(comp[∑[A020943(2^n)]])`
-/

namespace A046751.P13737839374572216545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020943 (2 ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054924 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A046751.P13737839374572216545

/-! ## A046751.P16799125801134321921

`A054924(A172284(n+1)+1)`
-/

namespace A046751.P16799125801134321921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054924 (A172284 (n + 1) + 1).toNat

end

end A046751.P16799125801134321921

/-! ## A046751.P223397313711874476

`A054924(∑[ceil(2/A125205(n+1))]+1)`
-/

namespace A046751.P223397313711874476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A125205 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054924 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A046751.P223397313711874476

/-! ## A046751.P17615495370245447562

`A054924(∑[ceil(2/A125206(n+2))]+1)`
-/

namespace A046751.P17615495370245447562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A125206 (n + 2) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054924 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A046751.P17615495370245447562

/-!
# A046753: Prime factors of |numerator(B(2n))| which are >= 2n+3.

The programs for A046753, there is no canonical definition to state claims against.
-/

/-! ## A046753.P15130826262785800524

`A189683(Δ[n²])`
-/

namespace A046753.P15130826262785800524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046753.P15130826262785800524

/-! ## A046753.P2798152445438466819

`or(1, A189683(A005408(n)))`
-/

namespace A046753.P2798152445438466819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A189683 (A005408 n).toNat)

end

end A046753.P2798152445438466819

/-! ## A046753.P12103698194621423901

`or(1, A189683(Δ[A189836(n)]))`
-/

namespace A046753.P12103698194621423901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A189683 (f1 (n + 1) - f1 n).toNat)

end

end A046753.P12103698194621423901

/-! ## A046753.P8116436666562985249

`A189683(2*n+1)%A250450(n+1)`
-/

namespace A046753.P8116436666562985249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189683 (2 * n + 1)) (A250450 (n + 1))

end

end A046753.P8116436666562985249

/-! ## A046753.P11687177754920840460

`A189683(2*n+1)+A047659(n)%2`
-/

namespace A046753.P11687177754920840460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189683 (2 * n + 1) + Int.tmod (A047659 n) 2

end

end A046753.P11687177754920840460

/-! ## A046753.P2755065416089149577

`A189683(2*n+1)+A022083(n+1)%2`
-/

namespace A046753.P2755065416089149577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189683 (2 * n + 1) + Int.tmod (A022083 (n + 1)) 2

end

end A046753.P2755065416089149577

/-! ## A046753.P8114787304912646552

`A189683(2*n+1)+A090789(n+1)%2`
-/

namespace A046753.P8114787304912646552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189683 (2 * n + 1) + Int.tmod (A090789 (n + 1)) 2

end

end A046753.P8114787304912646552

/-! ## A046753.P3908745225614382713

`lcm(A250461(n+1)%2, A189683(2*n+1))`
-/

namespace A046753.P3908745225614382713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A250461 (n + 1)) 2) (A189683 (2 * n + 1))

end

end A046753.P3908745225614382713

/-!
# A046754: Numbers k such that the square of d(k) (number of divisors) divides k.

The programs for A046754, there is no canonical definition to state claims against.
-/

/-! ## A046754.P18028798572584282799

`record[A003557(A087293(n+1))]`
-/

namespace A046754.P18028798572584282799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A087293 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046754.P18028798572584282799

/-!
# A046756: Numbers k such that d(k)^4 divides k.

The programs for A046756, there is no canonical definition to state claims against.
-/

/-! ## A046756.P16816166499421384920

`A180936(A189134(n+1)^A001221(n+1))`
-/

namespace A046756.P16816166499421384920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180936 (SequenceMachineLib.roundAway ((A189134 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ))).toNat

end

end A046756.P16816166499421384920

/-!
# A046758: Equidigital numbers.

The programs for A046758, there is no canonical definition to state claims against.
-/

/-! ## A046758.P12239156732415455931

`∪[A008578(n+1), A280032(n+1)]`
-/

namespace A046758.P12239156732415455931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046758.P12239156732415455931

/-! ## A046758.P10184955176056083603

`∪[A280032(n+1), A372059(n+1)]`
-/

namespace A046758.P10184955176056083603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046758.P10184955176056083603

/-! ## A046758.P1454874766656117846

`eq[A004218(n+1), A050252(A028310(n))]`
-/

namespace A046758.P1454874766656117846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046758.P1454874766656117846

/-! ## A046758.P2274544490597836518

`eq[A004218(n+1), A050252(A233583(n+1))]`
-/

namespace A046758.P2274544490597836518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046758.P2274544490597836518

/-! ## A046758.P3191550880079718606

`∪[A280032(n+1), A323520(n+1)]`
-/

namespace A046758.P3191550880079718606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046758.P3191550880079718606

/-! ## A046758.P17292507077479440259

`∪[A106317(n+1), A280032(n+1)]`
-/

namespace A046758.P17292507077479440259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046758.P17292507077479440259

/-! ## A046758.P16867697416882958437

`A379373(n+1)%A225319(n+1)`
-/

namespace A046758.P16867697416882958437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379373 (n + 1)) (A225319 (n + 1))

end

end A046758.P16867697416882958437

/-! ## A046758.P11615479423384304042

`A379373(n+1)%A006037(A384887(n))`
-/

namespace A046758.P11615479423384304042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379373 (n + 1)) (A006037 (A384887 n).toNat)

end

end A046758.P11615479423384304042

/-! ## A046758.P11666918073691397580

`A379373(n+1)+A010060(A246147(n))`
-/

namespace A046758.P11666918073691397580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379373 (n + 1) + A010060 (A246147 n).toNat

end

end A046758.P11666918073691397580

/-!
# A046759: Economical numbers: write n as a product of primes raised to powers, let D(n) = number of digits in product, l(n) = number of digits in n; sequence gives n such that D(n) < l(n).

The programs for A046759, there is no canonical definition to state claims against.
-/

/-! ## A046759.P6331386125671098455

`∩[A104233(n+1), A195330(n+1)]`
-/

namespace A046759.P6331386125671098455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046759.P6331386125671098455

/-! ## A046759.P2600431511196932053

`A113570(A045918(n+1))`
-/

namespace A046759.P2600431511196932053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113570 (A045918 (n + 1)).toNat

end

end A046759.P2600431511196932053

/-! ## A046759.P5677764741960135977

`A113570(A047842(n+1))`
-/

namespace A046759.P5677764741960135977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113570 (A047842 (n + 1)).toNat

end

end A046759.P5677764741960135977

/-! ## A046759.P5747975498846146011

`A113570(A097598(n+1))`
-/

namespace A046759.P5747975498846146011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113570 (A097598 (n + 1)).toNat

end

end A046759.P5747975498846146011

/-! ## A046759.P13082024276565098392

`A113570(A162672(n+1))`
-/

namespace A046759.P13082024276565098392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113570 (A162672 (n + 1)).toNat

end

end A046759.P13082024276565098392

/-!
# A046760: Wasteful numbers.

The programs for A046760, there is no canonical definition to state claims against.
-/

/-! ## A046760.P12950050140530445466

`lt[A055642(n), A050252(A028310(n))]`
-/

namespace A046760.P12950050140530445466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046760.P12950050140530445466

/-! ## A046760.P4719888633026626005

`lt[A055642(n), A050252(A000038(n)+n)]`
-/

namespace A046760.P4719888633026626005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046760.P4719888633026626005

/-! ## A046760.P2271863814637977385

`A020725(lt[A055642(n+1), A050252(n+1)])`
-/

namespace A046760.P2271863814637977385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046760.P2271863814637977385

/-! ## A046760.P3751373640253780109

`A020725(lt[A004218(n+2), A050252(n+1)])`
-/

namespace A046760.P3751373640253780109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046760.P3751373640253780109

/-! ## A046760.P8470963621596996353

`lt[A055642(n), A050252(A233583(n+1))]`
-/

namespace A046760.P8470963621596996353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046760.P8470963621596996353

/-! ## A046760.P11717627542097464343

`lt[A262190(n), A050252(A233583(n+1))]`
-/

namespace A046760.P11717627542097464343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262190 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046760.P11717627542097464343

/-! ## A046760.P17091370342310482307

`lt[A276502(n+1), A050252(n+1)]+1`
-/

namespace A046760.P17091370342310482307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A046760.P17091370342310482307

/-! ## A046760.P3150801383493463733

`A020725(lt[A276502(n+1), A050252(n+1)])`
-/

namespace A046760.P3150801383493463733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046760.P3150801383493463733

/-! ## A046760.P11513274977050666117

`lt[A138902(n), A050252(A028310(n))]`
-/

namespace A046760.P11513274977050666117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046760.P11513274977050666117

/-! ## A046760.P2521394630951242256

`lt[A138902(n), A050252(A233583(n+1))]`
-/

namespace A046760.P2521394630951242256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046760.P2521394630951242256

/-!
# A046761: Largest number that is equal to sum of n-th powers of its digits.

The programs for A046761, there is no canonical definition to state claims against.
-/

/-! ## A046761.P13765403627985773315

`A252648(∑[A255668(n)]-1)`
-/

namespace A046761.P13765403627985773315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A046761.P13765403627985773315

/-! ## A046761.P6468016167073084042

`A252648(lt[Δ[A252648(n)], 0])`
-/

namespace A046761.P6468016167073084042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A046761.P6468016167073084042

/-! ## A046761.P6985802015454076491

`A252648(eq[0, A252648(n+1)])`
-/

namespace A046761.P6985802015454076491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046761.P6985802015454076491

/-! ## A046761.P14374252528078905340

`A252648(lt[A252648(n+1), 1])`
-/

namespace A046761.P14374252528078905340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A046761.P14374252528078905340

/-! ## A046761.P8337261029045594570

`A252648(lt[A252648(n), 1]-1)`
-/

namespace A046761.P8337261029045594570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A046761.P8337261029045594570

/-!
# A046762: Numbers k such that the sum of the squares of the divisors of k is divisible by k.

The programs for A046762, there is no canonical definition to state claims against.
-/

/-! ## A046762.P2108156667797952453

`eq[n, A179930(round(acot(n)+n))]`
-/

namespace A046762.P2108156667797952453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179930 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046762.P2108156667797952453

/-! ## A046762.P9600800533260735943

`record[A179930(A055714(n+1))]`
-/

namespace A046762.P9600800533260735943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179930 (A055714 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046762.P9600800533260735943

/-! ## A046762.P951917907136044112

`record[A179930(A179930(n+1))]`
-/

namespace A046762.P951917907136044112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179930 (A179930 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046762.P951917907136044112

/-! ## A046762.P6557512794141884593

`eq[n, A179930(A028310(n))]`
-/

namespace A046762.P6557512794141884593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179930 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046762.P6557512794141884593

/-! ## A046762.P6691509889473388864

`eq[A138153(n+1), A138153(A179930(n+1))]+1`
-/

namespace A046762.P6691509889473388864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138153 (A179930 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046762.P6691509889473388864

/-!
# A046763: Numbers that divide the sum of cubes of their divisors.

The programs for A046763, there is no canonical definition to state claims against.
-/

/-! ## A046763.P1402171338031391415

`eq[0, A001158(n+1)%(n+1)]+1`
-/

namespace A046763.P1402171338031391415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001158 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046763.P1402171338031391415

/-! ## A046763.P3490968935993027641

`lt[n, gcd(n+1, A276634(n+1))]+1`
-/

namespace A046763.P3490968935993027641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A276634 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A046763.P3490968935993027641

/-! ## A046763.P2104880160293103628

`eq[n, gcd(n, A001158(A028310(n)))]`
-/

namespace A046763.P2104880160293103628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A001158 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046763.P2104880160293103628

/-! ## A046763.P1640975231535353928

`eq[n+1, gcd(A000027(n+1), A001158(n+1))]+1`
-/

namespace A046763.P1640975231535353928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A001158 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046763.P1640975231535353928

/-!
# A046764: Sum of the 4th powers of the divisors of n is divisible by n.

The programs for A046764, there is no canonical definition to state claims against.
-/

/-! ## A046764.P7451409575778334049

`A326733(n+1)+A001462(A209080(n))`
-/

namespace A046764.P7451409575778334049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326733 (n + 1) + A001462 (A209080 n).toNat

end

end A046764.P7451409575778334049

/-!
# A046765: Number of partitions of n with equal number of parts congruent to each of 0, 1 and 2 (mod 3).

The programs for A046765, there is no canonical definition to state claims against.
-/

/-! ## A046765.P8798673097454059719

`A046777(gcd(n, 2*a(n-1)))` with `a(0)=1`
-/

namespace A046765.P8798673097454059719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046777 (Int.gcd (n : ℤ) (2 * a (n - 1)))

end

end A046765.P8798673097454059719

/-! ## A046765.P1971249614232575433

`A046777(gcd(a(n-1), A028310(n)))` with `a(0)=1`
-/

namespace A046765.P1971249614232575433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046777 (Int.gcd (a (n - 1)) (A028310 n))

end

end A046765.P1971249614232575433

/-! ## A046765.P8947440766081030288

`floor(A046777(n)+acot(n))`
-/

namespace A046765.P8947440766081030288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046777 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A046765.P8947440766081030288

/-! ## A046765.P8675669821168726304

`A046777(n)+A000007(n)`
-/

namespace A046765.P8675669821168726304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046777 n + A000007 n

end

end A046765.P8675669821168726304

/-! ## A046765.P5835208135836443182

`A046777(n)^A101825(n)`
-/

namespace A046765.P5835208135836443182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046777 n : ℚ) ^ (A101825 n : ℤ)

end

end A046765.P5835208135836443182

/-! ## A046765.P8223618010594212239

`C(A046777(n), A294619(n))`
-/

namespace A046765.P8223618010594212239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046777 n).toNat (A294619 n).toNat

end

end A046765.P8223618010594212239

/-! ## A046765.P14421968430613328892

`A046777(n)+1-A057427(n)`
-/

namespace A046765.P14421968430613328892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046777 n + (1 - A057427 n)

end

end A046765.P14421968430613328892

/-! ## A046765.P470889429797344461

`A046777(n)+A000038(n)/2`
-/

namespace A046765.P470889429797344461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046777 n : ℚ) + (A000038 n : ℚ) / 2

end

end A046765.P470889429797344461

/-! ## A046765.P4134920380757967004

`A046777(n)+and(1, A005901(n))`
-/

namespace A046765.P4134920380757967004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046777 n + Int.land 1 (A005901 n)

end

end A046765.P4134920380757967004

/-! ## A046765.P1479220969133258943

`A046777(n)+and(1, A089798(n))`
-/

namespace A046765.P1479220969133258943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046777 n + Int.land 1 (A089798 n)

end

end A046765.P1479220969133258943

/-! ## A046765.P16275828587913064629

`or(A000007(2*n), A046777(n))`
-/

namespace A046765.P16275828587913064629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (2 * n)) (A046777 n)

end

end A046765.P16275828587913064629

/-! ## A046765.P10552431142437427423

`xor(A000007(4*n), A046777(n))`
-/

namespace A046765.P10552431142437427423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (4 * n)) (A046777 n)

end

end A046765.P10552431142437427423

/-! ## A046765.P7269017607243768399

`A046777(n*a(A000038(n)))` with `a(0)=1`
-/

namespace A046765.P7269017607243768399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046777 ((n : ℤ) * a (A000038 n).toNat).toNat

end

end A046765.P7269017607243768399

/-! ## A046765.P14178122168070792532

`A046777(n/a(A000038(n)))` with `a(0)=1`
-/

namespace A046765.P14178122168070792532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046777 (SequenceMachineLib.roundAway ((n : ℚ) / (a (A000038 n).toNat : ℚ))).toNat

end

end A046765.P14178122168070792532

/-! ## A046765.P5664611233036588188

`A028310(n)+A046777(n)-n`
-/

namespace A046765.P5664611233036588188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A046777 n - (n : ℤ))

end

end A046765.P5664611233036588188

/-! ## A046765.P10051642037785983419

`A046777(n)+char[A046788(n+1)]`
-/

namespace A046765.P10051642037785983419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046788 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046777 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A046765.P10051642037785983419

/-! ## A046765.P13849156474892815496

`A046777(n)+val(A000040(n+1), 2)`
-/

namespace A046765.P13849156474892815496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046777 n + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A046765.P13849156474892815496

/-! ## A046765.P7041784913209531195

`A046777(n)+A000045(C(2, n+2))`
-/

namespace A046765.P7041784913209531195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046777 n + A000045 (Nat.choose 2 (n + 2))

end

end A046765.P7041784913209531195

/-!
# A046766: Number of partitions of n with equal number of parts congruent to each of 0, 1 and 2 (mod 4).

The programs for A046766, there is no canonical definition to state claims against.
-/

/-! ## A046766.P16906404436840007819

`A046778(n)+A035462(n)`
-/

namespace A046766.P16906404436840007819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046778 n + A035462 n

end

end A046766.P16906404436840007819

/-! ## A046766.P3400882361833811376

`A029315(n)+A046778(n)-A137331(A184628(n+1))`
-/

namespace A046766.P3400882361833811376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029315 n + (A046778 n - A137331 (A184628 (n + 1)).toNat)

end

end A046766.P3400882361833811376

/-! ## A046766.P404454950782774588

`A097795(A051916(n+1))+A046778(n)`
-/

namespace A046766.P404454950782774588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A051916 (n + 1)).toNat + A046778 n

end

end A046766.P404454950782774588

/-! ## A046766.P4679499161179692529

`A322390(2^A263136(n))`
-/

namespace A046766.P4679499161179692529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322390 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A263136 n : ℤ))).toNat

end

end A046766.P4679499161179692529

/-! ## A046766.P11592801809620981791

`and(A010876(A000079(n)), A364350(n))`
-/

namespace A046766.P11592801809620981791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010876 (A000079 n).toNat) (A364350 n)

end

end A046766.P11592801809620981791

/-!
# A046767: Number of partitions of n with equal number of parts congruent to each of 0, 1 and 3 (mod 4).

The programs for A046767, there is no canonical definition to state claims against.
-/

/-! ## A046767.P13486547920559540658

`A046779(n)+A035457(n)`
-/

namespace A046767.P13486547920559540658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046779 n + A035457 n

end

end A046767.P13486547920559540658

/-! ## A046767.P4824583754656265872

`A117409(A319702(n+1))+A046779(n)`
-/

namespace A046767.P4824583754656265872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (A319702 (n + 1)).toNat + A046779 n

end

end A046767.P4824583754656265872

/-! ## A046767.P6291331232884258837

`A116675(A327672(n))+A046779(n)`
-/

namespace A046767.P6291331232884258837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116675 (A327672 n).toNat + A046779 n

end

end A046767.P6291331232884258837

/-! ## A046767.P417485565065592676

`A046779(n)+A172033(n)%A052552(n)`
-/

namespace A046767.P417485565065592676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046779 n + Int.tmod (A172033 n) (A052552 n)

end

end A046767.P417485565065592676

/-! ## A046767.P2835435572222166358

`A046779(n)+and(A172033(n), A278755(n))`
-/

namespace A046767.P2835435572222166358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046779 n + Int.land (A172033 n) (A278755 n)

end

end A046767.P2835435572222166358

/-! ## A046767.P16821970738582312610

`A046779(n)+and(A172033(n), A279872(n))`
-/

namespace A046767.P16821970738582312610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046779 n + Int.land (A172033 n) (A279872 n)

end

end A046767.P16821970738582312610

/-! ## A046767.P4648970712105046918

`A286653(A101881(n))+A046779(n)`
-/

namespace A046767.P4648970712105046918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A101881 n).toNat + A046779 n

end

end A046767.P4648970712105046918

/-!
# A046768: Number of partitions of n with equal number of parts congruent to each of 0, 2 and 3 (mod 4).

The programs for A046768, there is no canonical definition to state claims against.
-/

/-! ## A046768.P13036969128473707188

`A046780(n)+A035451(n)`
-/

namespace A046768.P13036969128473707188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046780 n + A035451 n

end

end A046768.P13036969128473707188

/-! ## A046768.P960020316356919442

`A046780(n)+∑[A117957(n)]`
-/

namespace A046768.P960020316356919442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046780 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046768.P960020316356919442

/-! ## A046768.P17314963855811899859

`A046780(n)+A007814(2^A363337(n))`
-/

namespace A046768.P17314963855811899859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046780 n + A007814 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A363337 n : ℤ))).toNat

end

end A046768.P17314963855811899859

/-! ## A046768.P2812249290363628741

`A067029(2^A363337(n))+A046780(n)`
-/

namespace A046768.P2812249290363628741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A363337 n : ℤ))).toNat + A046780 n

end

end A046768.P2812249290363628741

/-! ## A046768.P6161053368341631803

`A000038(A133033(n+1))+A321423(n)+A046780(n)`
-/

namespace A046768.P6161053368341631803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A133033 (n + 1)).toNat + (A321423 n + A046780 n)

end

end A046768.P6161053368341631803

/-!
# A046769: Number of partitions of n with equal number of parts congruent to each of 1, 2 and 3 (mod 4).

The programs for A046769, there is no canonical definition to state claims against.
-/

/-! ## A046769.P10172005594927820502

`A046781(n)+A035444(n)`
-/

namespace A046769.P10172005594927820502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046781 n + A035444 n

end

end A046769.P10172005594927820502

/-! ## A046769.P1871489534546859358

`A046781(n)+A035363(A004525(n))`
-/

namespace A046769.P1871489534546859358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046781 n + A035363 (A004525 n).toNat

end

end A046769.P1871489534546859358

/-! ## A046769.P2424358848703048754

`A046781(n)+A035363(A026741(n))`
-/

namespace A046769.P2424358848703048754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046781 n + A035363 (A026741 n).toNat

end

end A046769.P2424358848703048754

/-! ## A046769.P15588900990700879020

`A046781(n)+A035363(A186813(n))`
-/

namespace A046769.P15588900990700879020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046781 n + A035363 (A186813 n).toNat

end

end A046769.P15588900990700879020

/-! ## A046769.P16124607778819729807

`A114099(A242660(n+1))+A046781(n)`
-/

namespace A046769.P16124607778819729807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (A242660 (n + 1)).toNat + A046781 n

end

end A046769.P16124607778819729807

/-!
# A046770: Number of partitions of n with equal number of parts congruent to each of 0, 1, 2 and 3 (mod 4).

The programs for A046770, there is no canonical definition to state claims against.
-/

/-! ## A046770.P13416403881062854680

`A046782(gcd(n, a(n-1)))` with `a(0)=1`
-/

namespace A046770.P13416403881062854680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046782 (Int.gcd (n : ℤ) (a (n - 1)))

end

end A046770.P13416403881062854680

/-! ## A046770.P2305446376303717783

`floor(A046782(n)+acot(n))`
-/

namespace A046770.P2305446376303717783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046782 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A046770.P2305446376303717783

/-! ## A046770.P2881198382913445256

`A046782(n)+A000007(n)`
-/

namespace A046770.P2881198382913445256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046782 n + A000007 n

end

end A046770.P2881198382913445256

/-! ## A046770.P12342051549921241699

`A046782(n)^A019425(n)`
-/

namespace A046770.P12342051549921241699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046782 n : ℚ) ^ (A019425 n : ℤ)

end

end A046770.P12342051549921241699

/-! ## A046770.P7641333397694642837

`A046782(n)^A019426(n)`
-/

namespace A046770.P7641333397694642837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046782 n : ℚ) ^ (A019426 n : ℤ)

end

end A046770.P7641333397694642837

/-! ## A046770.P3907948898262788684

`A046782(n)^A019427(n)`
-/

namespace A046770.P3907948898262788684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046782 n : ℚ) ^ (A019427 n : ℤ)

end

end A046770.P3907948898262788684

/-! ## A046770.P17127301218135725758

`A046782(n)^A019430(n)`
-/

namespace A046770.P17127301218135725758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046782 n : ℚ) ^ (A019430 n : ℤ)

end

end A046770.P17127301218135725758

/-! ## A046770.P6953692345532970981

`or(A000007(2*n), A046782(n))`
-/

namespace A046770.P6953692345532970981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (2 * n)) (A046782 n)

end

end A046770.P6953692345532970981

/-! ## A046770.P5487477787107500553

`A046782(n)+A008966((n+1)²)`
-/

namespace A046770.P5487477787107500553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046782 n + A008966 ((n + 1) ^ 2)

end

end A046770.P5487477787107500553

/-! ## A046770.P17583007120543336455

`A046782(n)+and(1, A000010(n+2))`
-/

namespace A046770.P17583007120543336455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046782 n + Int.land 1 (A000010 (n + 2))

end

end A046770.P17583007120543336455

/-! ## A046770.P3012926408297871020

`A046782(n)+A000045(C(2, n+2))`
-/

namespace A046770.P3012926408297871020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046782 n + A000045 (Nat.choose 2 (n + 2))

end

end A046770.P3012926408297871020

/-! ## A046770.P2915050399925573689

`A046782(n)^and(1, A000040(n+1))`
-/

namespace A046770.P2915050399925573689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046782 n : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A046770.P2915050399925573689

/-! ## A046770.P13216286856211185713

`A046782(n)-A008683(2*(n+1)²)`
-/

namespace A046770.P13216286856211185713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046782 n - A008683 (2 * (n + 1) ^ 2)

end

end A046770.P13216286856211185713

/-! ## A046770.P17034983730565516549

`A046782(n)+A000035(A000010(n+2))`
-/

namespace A046770.P17034983730565516549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046782 n + A000035 (A000010 (n + 2)).toNat

end

end A046770.P17034983730565516549

/-! ## A046770.P17839826162916458267

`A046782(n)^A001221(A000961(n+1))`
-/

namespace A046770.P17839826162916458267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046782 n : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A046770.P17839826162916458267

/-! ## A046770.P4160269006059759203

`A046782(n)+C(A046782(n), A000045(n))`
-/

namespace A046770.P4160269006059759203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046782 n + (Nat.choose (A046782 n).toNat (A000045 n).toNat : ℤ)

end

end A046770.P4160269006059759203

/-! ## A046770.P6834609643334545183

`A046782(n)^A008683(2*A000040(n+1))`
-/

namespace A046770.P6834609643334545183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046782 n : ℚ) ^ (A008683 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A046770.P6834609643334545183

/-!
# A046771: Number of partitions of n with equal number of parts congruent to each of 0, 1, 2 and 3 (mod 5).

The programs for A046771, there is no canonical definition to state claims against.
-/

/-! ## A046771.P8069131327107821572

`A109700(n)+A046783(n)`
-/

namespace A046771.P8069131327107821572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109700 n + A046783 n

end

end A046771.P8069131327107821572

/-! ## A046771.P18065323367201085193

`A117479(2^A263141(n))+A046783(n)`
-/

namespace A046771.P18065323367201085193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117479 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A263141 n : ℤ))).toNat + A046783 n

end

end A046771.P18065323367201085193

/-! ## A046771.P8572619945427257895

`A046783(n)+A122921(A263141(n))%A330996(3*n+4)`
-/

namespace A046771.P8572619945427257895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046783 n + Int.tmod (A122921 (A263141 n).toNat) (A330996 (3 * n + 4))

end

end A046771.P8572619945427257895

/-!
# A046772: Number of partitions of n with equal number of parts congruent to each of 0, 1, 2 and 4 (mod 5).

The programs for A046772, there is no canonical definition to state claims against.
-/

/-! ## A046772.P9180533046916188189

`A109699(n)+A046784(n)`
-/

namespace A046772.P9180533046916188189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109699 n + A046784 n

end

end A046772.P9180533046916188189

/-! ## A046772.P7101801278735227671

`A046784(n)+A046776(n)%A263643(A167614(n+1))`
-/

namespace A046772.P7101801278735227671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046784 n + Int.tmod (A046776 n) (A263643 (A167614 (n + 1)).toNat)

end

end A046772.P7101801278735227671

/-! ## A046772.P17769675518391843004

`A046784(n)+A005136(3*A263142(n))`
-/

namespace A046772.P17769675518391843004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046784 n + A005136 (3 * A263142 n).toNat

end

end A046772.P17769675518391843004

/-! ## A046772.P5819292251122054245

`A115604(A033748(n))`
-/

namespace A046772.P5819292251122054245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115604 (A033748 n).toNat

end

end A046772.P5819292251122054245

/-! ## A046772.P14093035053150759390

`A375107(A022356(n))`
-/

namespace A046772.P14093035053150759390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375107 (A022356 n).toNat

end

end A046772.P14093035053150759390

/-!
# A046773: Number of partitions of n with equal number of parts congruent to each of 0, 1, 3 and 4 (mod 5).

The programs for A046773, there is no canonical definition to state claims against.
-/

/-! ## A046773.P4953148502377939602

`A109698(n)+A046785(n)`
-/

namespace A046773.P4953148502377939602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109698 n + A046785 n

end

end A046773.P4953148502377939602

/-! ## A046773.P9334277215614245968

`A046785(n)+A202087(n)%A168092(A225943(n+1))`
-/

namespace A046773.P9334277215614245968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046785 n + Int.tmod (A202087 n) (A168092 (A225943 (n + 1)).toNat)

end

end A046773.P9334277215614245968

/-! ## A046773.P10339488729425287838

`A046785(n)+A202087(n)%A168092(A006128(n))`
-/

namespace A046773.P10339488729425287838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046785 n + Int.tmod (A202087 n) (A168092 (A006128 n).toNat)

end

end A046773.P10339488729425287838

/-! ## A046773.P17661225713848317332

`A109698(n)+A046206(n+1)%A076269(A076269(n))`
-/

namespace A046773.P17661225713848317332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109698 n + Int.tmod (A046206 (n + 1)) (A076269 (A076269 n).toNat)

end

end A046773.P17661225713848317332

/-! ## A046773.P10768488173368133939

`A029213(abs(2-n))%A105813(n+2)`
-/

namespace A046773.P10768488173368133939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029213 |2 - (n : ℤ)|.toNat) (A105813 (n + 2))

end

end A046773.P10768488173368133939

/-!
# A046774: Number of partitions of n with equal number of parts congruent to each of 0, 2, 3 and 4 (mod 5).

The programs for A046774, there is no canonical definition to state claims against.
-/

/-! ## A046774.P13881034635514583904

`A109697(n)+A046786(n)`
-/

namespace A046774.P13881034635514583904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109697 n + A046786 n

end

end A046774.P13881034635514583904

/-! ## A046774.P11736304826307473669

`A046786(n)+∑[A277264(n)]`
-/

namespace A046774.P11736304826307473669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046786 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046774.P11736304826307473669

/-!
# A046776: Number of partitions of 5n with equal number of parts congruent to each of 0, 1, 2, 3 and 4 (mod 5).

The programs for A046776, there is no canonical definition to state claims against.
-/

/-! ## A046776.P11417845849459057897

`A202087(n)-A202088(n)`
-/

namespace A046776.P11417845849459057897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202087 n - A202088 n

end

end A046776.P11417845849459057897

/-! ## A046776.P8571387601945332775

`A202087(n)+A202088(n)*A260196(n)`
-/

namespace A046776.P8571387601945332775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202087 n + A202088 n * A260196 n

end

end A046776.P8571387601945332775

/-! ## A046776.P15179426381720177297

`A202085(A028310(n))+A202087(n)-A202192(n)`
-/

namespace A046776.P15179426381720177297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202085 (A028310 n).toNat + (A202087 n - A202192 n)

end

end A046776.P15179426381720177297

/-! ## A046776.P10647792892713085829

`A202087(n)-(A046775(5*n)-A202085(A028310(n)))`
-/

namespace A046776.P10647792892713085829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202087 n - (A046775 (5 * n) - A202085 (A028310 n).toNat)

end

end A046776.P10647792892713085829

/-! ## A046776.P6800654139350203305

`A202087(n)-(A202192(n)-A202085(A000007(n)+n))`
-/

namespace A046776.P6800654139350203305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202087 n - (A202192 n - A202085 (A000007 n + (n : ℤ)).toNat)

end

end A046776.P6800654139350203305

/-!
# A046777: Number of partitions of n with equal nonzero number of parts congruent to each of 0, 1 and 2 (mod 3).

The programs for A046777, there is no canonical definition to state claims against.
-/

/-! ## A046777.P1476465276550988150

`A046765(C(2, n)+n)`
-/

namespace A046777.P1476465276550988150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 (Nat.choose 2 n + n)

end

end A046777.P1476465276550988150

/-! ## A046777.P3136910784704343329

`A046765(xor(n, C(2, n)))`
-/

namespace A046777.P3136910784704343329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 (Nat.xor n (Nat.choose 2 n))

end

end A046777.P3136910784704343329

/-! ## A046777.P6752317381741556193

`floor(atan(n))*A046765(n)`
-/

namespace A046777.P6752317381741556193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋ * A046765 n

end

end A046777.P6752317381741556193

/-! ## A046777.P7683677624028874756

`A046765(floor(acot(n)+n))`
-/

namespace A046777.P7683677624028874756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A046777.P7683677624028874756

/-! ## A046777.P3528293293878758790

`A046765(round(acot(n)+n))`
-/

namespace A046777.P3528293293878758790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A046777.P3528293293878758790

/-! ## A046777.P14138051596475275113

`A046765(n^floor(atan(n)))`
-/

namespace A046777.P14138051596475275113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A046777.P14138051596475275113

/-! ## A046777.P15572020527461775816

`A046765(or(n, floor(acot(n))))`
-/

namespace A046777.P15572020527461775816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A046777.P15572020527461775816

/-! ## A046777.P15282762454309831767

`A046765(xor(n, floor(acot(n))))`
-/

namespace A046777.P15282762454309831767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A046777.P15282762454309831767

/-! ## A046777.P7869842729977245672

`A046765(abs(1-n)+1)`
-/

namespace A046777.P7869842729977245672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 (|1 - (n : ℤ)| + 1).toNat

end

end A046777.P7869842729977245672

/-! ## A046777.P8374109018199076310

`A046765(n)-A000007(n)`
-/

namespace A046777.P8374109018199076310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 n - A000007 n

end

end A046777.P8374109018199076310

/-! ## A046777.P3545390559877484899

`A046765(n)*A057427(n)`
-/

namespace A046777.P3545390559877484899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 n * A057427 n

end

end A046777.P3545390559877484899

/-! ## A046777.P18162593965986421205

`A046765(n)*A101825(n)`
-/

namespace A046777.P18162593965986421205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 n * A101825 n

end

end A046777.P18162593965986421205

/-! ## A046777.P343856304226285656

`A046765(n)*A130543(n)`
-/

namespace A046777.P343856304226285656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 n * A130543 n

end

end A046777.P343856304226285656

/-! ## A046777.P18218956808254482101

`A046765(n)*A157928(n)`
-/

namespace A046777.P18218956808254482101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 n * A157928 n

end

end A046777.P18218956808254482101

/-! ## A046777.P13351894558461534818

`A046765(n)*A294619(n)`
-/

namespace A046777.P13351894558461534818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 n * A294619 n

end

end A046777.P13351894558461534818

/-! ## A046777.P15271743771242324467

`A046765(n)%A000011(n)`
-/

namespace A046777.P15271743771242324467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046765 n) (A000011 n)

end

end A046777.P15271743771242324467

/-! ## A046777.P11375622313597140141

`and(A000225(n), A046765(n))`
-/

namespace A046777.P11375622313597140141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A046765 n)

end

end A046777.P11375622313597140141

/-! ## A046777.P17033167322769982

`and(A005665(n), A046765(n))`
-/

namespace A046777.P17033167322769982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005665 n) (A046765 n)

end

end A046777.P17033167322769982

/-! ## A046777.P7214598582269526904

`and(A005666(n), A046765(n))`
-/

namespace A046777.P7214598582269526904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005666 n) (A046765 n)

end

end A046777.P7214598582269526904

/-! ## A046777.P16922539323902603778

`and(A010737(n), A046765(n))`
-/

namespace A046777.P16922539323902603778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010737 n) (A046765 n)

end

end A046777.P16922539323902603778

/-!
# A046778: Number of partitions of n with equal nonzero number of parts congruent to each of 0, 1 and 2 (mod 4).

The programs for A046778, there is no canonical definition to state claims against.
-/

/-! ## A046778.P17375424117199610992

`A046766(n)-A035462(n)`
-/

namespace A046778.P17375424117199610992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046766 n - A035462 n

end

end A046778.P17375424117199610992

/-! ## A046778.P7715092622180573962

`A046766(n)-A005136(∑{d}[A046766(n), #])`
-/

namespace A046778.P7715092622180573962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046766 n - A005136 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A046778.P7715092622180573962

/-! ## A046778.P6175850970023988659

`A137331(A184628(n+1))+A046766(n)-A029315(n)`
-/

namespace A046778.P6175850970023988659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137331 (A184628 (n + 1)).toNat + (A046766 n - A029315 n)

end

end A046778.P6175850970023988659

/-! ## A046778.P17860839653928309498

`A046766(n)-A097795(A051916(n+1))`
-/

namespace A046778.P17860839653928309498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046766 n - A097795 (A051916 (n + 1)).toNat

end

end A046778.P17860839653928309498

/-! ## A046778.P13769166209295630109

`∑{e}[A132472(A263136(n)), #]`
-/

namespace A046778.P13769166209295630109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132472 (A263136 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A046778.P13769166209295630109

/-!
# A046779: Number of partitions of n with equal nonzero number of parts congruent to each of 0, 1 and 3 (mod 4).

The programs for A046779, there is no canonical definition to state claims against.
-/

/-! ## A046779.P16260208673109410016

`A046767(n)-A035457(n)`
-/

namespace A046779.P16260208673109410016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046767 n - A035457 n

end

end A046779.P16260208673109410016

/-! ## A046779.P5142360463955020955

`A046767(n)-A117409(A319702(n+1))`
-/

namespace A046779.P5142360463955020955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046767 n - A117409 (A319702 (n + 1)).toNat

end

end A046779.P5142360463955020955

/-! ## A046779.P288255309283906742

`A046767(n)-A059841(n)*A172033(n)`
-/

namespace A046779.P288255309283906742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046767 n - A059841 n * A172033 n

end

end A046779.P288255309283906742

/-! ## A046779.P6869648951647915876

`A046767(n)-lcm(A056594(n), A172033(n))`
-/

namespace A046779.P6869648951647915876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046767 n - (Int.lcm (A056594 n) (A172033 n) : ℤ)

end

end A046779.P6869648951647915876

/-! ## A046779.P12218294252655093372

`A046767(n)-A116675(A327672(n))`
-/

namespace A046779.P12218294252655093372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046767 n - A116675 (A327672 n).toNat

end

end A046779.P12218294252655093372

/-! ## A046779.P8808121235045694859

`A046767(n)-and(A172033(n), A288663(n))`
-/

namespace A046779.P8808121235045694859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046767 n - Int.land (A172033 n) (A288663 n)

end

end A046779.P8808121235045694859

/-! ## A046779.P8011421681238244585

`A046767(n)-A286653(A101881(n))`
-/

namespace A046779.P8011421681238244585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046767 n - A286653 (A101881 n).toNat

end

end A046779.P8011421681238244585

/-!
# A046780: Number of partitions of n with equal nonzero number of parts congruent to each of 0, 2 and 3 (mod 4).

The programs for A046780, there is no canonical definition to state claims against.
-/

/-! ## A046780.P5337103926375823401

`A046768(n)-A035451(n)`
-/

namespace A046780.P5337103926375823401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046768 n - A035451 n

end

end A046780.P5337103926375823401

/-! ## A046780.P7566874836994175005

`A046768(n)-∑[A117957(n)]`
-/

namespace A046780.P7566874836994175005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046768 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046780.P7566874836994175005

/-!
# A046781: Number of partitions of n with equal nonzero number of parts congruent to each of 1, 2 and 3 (mod 4).

The programs for A046781, there is no canonical definition to state claims against.
-/

/-! ## A046781.P11794540101146018059

`A046769(n)-A035444(n)`
-/

namespace A046781.P11794540101146018059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046769 n - A035444 n

end

end A046781.P11794540101146018059

/-! ## A046781.P6076832604970234538

`A046769(n)-A035363(A004525(n))`
-/

namespace A046781.P6076832604970234538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046769 n - A035363 (A004525 n).toNat

end

end A046781.P6076832604970234538

/-! ## A046781.P17006178294492347540

`A046769(n)-A035363(A026741(n))`
-/

namespace A046781.P17006178294492347540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046769 n - A035363 (A026741 n).toNat

end

end A046781.P17006178294492347540

/-! ## A046781.P139421342151474569

`A046769(n)-A035363(A186813(n))`
-/

namespace A046781.P139421342151474569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046769 n - A035363 (A186813 n).toNat

end

end A046781.P139421342151474569

/-! ## A046781.P3907627926185780650

`A046769(n)-A114099(A242660(n+1))`
-/

namespace A046781.P3907627926185780650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046769 n - A114099 (A242660 (n + 1)).toNat

end

end A046781.P3907627926185780650

/-!
# A046782: Number of partitions of n with equal nonzero number of parts congruent to each of 0, 1, 2 and 3 (mod 4).

The programs for A046782, there is no canonical definition to state claims against.
-/

/-! ## A046782.P3134739761753507143

`A046770(C(2, n)+n)`
-/

namespace A046782.P3134739761753507143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046770 (Nat.choose 2 n + n)

end

end A046782.P3134739761753507143

/-! ## A046782.P13843815324725654292

`C(A046770(n), gcd(73, n))`
-/

namespace A046782.P13843815324725654292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046770 n).toNat (Nat.gcd 73 n)

end

end A046782.P13843815324725654292

/-! ## A046782.P7979154497538601752

`A046770(floor(acot(n)+n))`
-/

namespace A046782.P7979154497538601752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046770 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A046782.P7979154497538601752

/-! ## A046782.P15751053800292563254

`A046770(round(acot(n)+n))`
-/

namespace A046782.P15751053800292563254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046770 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A046782.P15751053800292563254

/-! ## A046782.P10699748286015730894

`A046770(n^floor(atan(n)))`
-/

namespace A046782.P10699748286015730894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046770 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A046782.P10699748286015730894

/-! ## A046782.P7849987547437450687

`A046770(C(n, floor(atan(n))))`
-/

namespace A046782.P7849987547437450687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046770 (Nat.choose n ⌊Real.arctan (n : ℝ)⌋.toNat)

end

end A046782.P7849987547437450687

/-! ## A046782.P9463925151861280183

`A046770(or(n, floor(acot(n))))`
-/

namespace A046782.P9463925151861280183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046770 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A046782.P9463925151861280183

/-! ## A046782.P15627399867774605778

`A046770(xor(n, floor(acot(n))))`
-/

namespace A046782.P15627399867774605778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046770 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A046782.P15627399867774605778

/-! ## A046782.P6909392526419111954

`A046770(abs(1-n)+1)`
-/

namespace A046782.P6909392526419111954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046770 (|1 - (n : ℤ)| + 1).toNat

end

end A046782.P6909392526419111954

/-! ## A046782.P8466936305572038334

`A046770(n)-A000007(n)`
-/

namespace A046782.P8466936305572038334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046770 n - A000007 n

end

end A046782.P8466936305572038334

/-! ## A046782.P16351964458070608896

`A003272(n)*A046770(n)`
-/

namespace A046782.P16351964458070608896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003272 n * A046770 n

end

end A046782.P16351964458070608896

/-! ## A046782.P3256536439343317634

`A019425(n)*A046770(n)`
-/

namespace A046782.P3256536439343317634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n * A046770 n

end

end A046782.P3256536439343317634

/-! ## A046782.P670807747198512170

`A019426(n)*A046770(n)`
-/

namespace A046782.P670807747198512170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n * A046770 n

end

end A046782.P670807747198512170

/-! ## A046782.P4058070018276228812

`A019427(n)*A046770(n)`
-/

namespace A046782.P4058070018276228812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n * A046770 n

end

end A046782.P4058070018276228812

/-! ## A046782.P9196115788336448892

`A019428(n)*A046770(n)`
-/

namespace A046782.P9196115788336448892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n * A046770 n

end

end A046782.P9196115788336448892

/-! ## A046782.P4478587206085058503

`A019429(n)*A046770(n)`
-/

namespace A046782.P4478587206085058503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n * A046770 n

end

end A046782.P4478587206085058503

/-! ## A046782.P3738319688135677727

`A019430(n)*A046770(n)`
-/

namespace A046782.P3738319688135677727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 n * A046770 n

end

end A046782.P3738319688135677727

/-! ## A046782.P3402718428658240197

`A019431(n)*A046770(n)`
-/

namespace A046782.P3402718428658240197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 n * A046770 n

end

end A046782.P3402718428658240197

/-! ## A046782.P13426931253752337769

`A019432(n)*A046770(n)`
-/

namespace A046782.P13426931253752337769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 n * A046770 n

end

end A046782.P13426931253752337769

/-! ## A046782.P13918484234511692170

`A019433(n)*A046770(n)`
-/

namespace A046782.P13918484234511692170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019433 n * A046770 n

end

end A046782.P13918484234511692170

/-!
# A046783: Number of partitions of n with equal nonzero number of parts congruent to each of 0, 1, 2 and 3 (mod 5).

The programs for A046783, there is no canonical definition to state claims against.
-/

/-! ## A046783.P7492336495231325137

`A046771(n)-A109700(n)`
-/

namespace A046783.P7492336495231325137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046771 n - A109700 n

end

end A046783.P7492336495231325137

/-! ## A046783.P4713682793266292636

`A046771(n)-∑{e}[A083329(A263141(n)), #]`
-/

namespace A046783.P4713682793266292636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (A263141 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046771 n - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A046783.P4713682793266292636

/-! ## A046783.P12385302497468455534

`A046771(n)-abs(A374076(n)^A353976(n+1))`
-/

namespace A046783.P12385302497468455534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046771 n : ℚ) - |(A374076 n : ℚ) ^ (A353976 (n + 1) : ℤ)|

end

end A046783.P12385302497468455534

/-!
# A046784: Number of partitions of n with equal nonzero number of parts congruent to each of 0, 1, 2 and 4 (mod 5).

The programs for A046784, there is no canonical definition to state claims against.
-/

/-! ## A046784.P9556130342133018129

`A046772(n)-A109699(n)`
-/

namespace A046784.P9556130342133018129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046772 n - A109699 n

end

end A046784.P9556130342133018129

/-! ## A046784.P4262285039933029068

`A046772(n)-A046776(n)%A263643(A167614(n+1))`
-/

namespace A046784.P4262285039933029068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046772 n - Int.tmod (A046776 n) (A263643 (A167614 (n + 1)).toNat)

end

end A046784.P4262285039933029068

/-! ## A046784.P1627134636206104838

`A046772(n)-A005136(3*A263142(n))`
-/

namespace A046784.P1627134636206104838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046772 n - A005136 (3 * A263142 n).toNat

end

end A046784.P1627134636206104838

/-!
# A046785: Number of partitions of n with equal nonzero number of parts congruent to each of 0, 1, 3 and 4 (mod 5).

The programs for A046785, there is no canonical definition to state claims against.
-/

/-! ## A046785.P12953578627041914501

`A046773(n)-A109698(n)`
-/

namespace A046785.P12953578627041914501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046773 n - A109698 n

end

end A046785.P12953578627041914501

/-! ## A046785.P6663100782143586209

`A046773(n)+A109698(n)/A004174(gcd(n, n+1))`
-/

namespace A046785.P6663100782143586209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046773 n : ℚ) + (A109698 n : ℚ) / (A004174 (Nat.gcd n (n + 1)) : ℚ)

end

end A046785.P6663100782143586209

/-! ## A046785.P13279175422911288961

`A046773(n)+A024000(A109698(n)+1)`
-/

namespace A046785.P13279175422911288961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046773 n + A024000 (A109698 n + 1).toNat

end

end A046785.P13279175422911288961

/-! ## A046785.P5405297876182972303

`A046773(n)+A001489(A109698(n)+1)+1`
-/

namespace A046785.P5405297876182972303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046773 n + A001489 (A109698 n + 1).toNat + 1

end

end A046785.P5405297876182972303

/-! ## A046785.P14815180073547336674

`A046773(n)-A202087(n)%A168092(A225943(n+1))`
-/

namespace A046785.P14815180073547336674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046773 n - Int.tmod (A202087 n) (A168092 (A225943 (n + 1)).toNat)

end

end A046785.P14815180073547336674

/-!
# A046786: Number of partitions of n with equal nonzero number of parts congruent to each of 0, 2, 3 and 4 (mod 5).

The programs for A046786, there is no canonical definition to state claims against.
-/

/-! ## A046786.P6776861963410268350

`A046774(n)-A109697(n)`
-/

namespace A046786.P6776861963410268350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046774 n - A109697 n

end

end A046786.P6776861963410268350

/-! ## A046786.P1925711692938507704

`A046774(n)-∑[A277264(n)]`
-/

namespace A046786.P1925711692938507704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046774 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046786.P1925711692938507704

/-! ## A046786.P1533417899356795779

`A046774(n)+∑[A277264(n)]*A153881(n+2)`
-/

namespace A046786.P1533417899356795779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046774 n + (∑ j ∈ Finset.range (n + 1), f1 j) * A153881 (n + 2)

end

end A046786.P1533417899356795779

/-!
# A046787: Number of partitions of 5n with equal nonzero number of parts congruent to each of 1, 2, 3 and 4 modulo 5.

The programs for A046787, there is no canonical definition to state claims against.
-/

/-! ## A046787.P15884766856387780616

`A202192(n)-A000041(n)`
-/

namespace A046787.P15884766856387780616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202192 n - A000041 n

end

end A046787.P15884766856387780616

/-! ## A046787.P16706184510181574318

`A046775(5*n)-A000041(n)`
-/

namespace A046787.P16706184510181574318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046775 (5 * n) - A000041 n

end

end A046787.P16706184510181574318

/-! ## A046787.P17088374405619103449

`A202192(n)-(A000065(n)+1)`
-/

namespace A046787.P17088374405619103449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202192 n - (A000065 n + 1)

end

end A046787.P17088374405619103449

/-! ## A046787.P17346000390760862125

`A202192(n)-A035363(2*n)`
-/

namespace A046787.P17346000390760862125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202192 n - A035363 (2 * n)

end

end A046787.P17346000390760862125

/-! ## A046787.P4486625855511720498

`A202192(n)-A035444(4*n)`
-/

namespace A046787.P4486625855511720498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202192 n - A035444 (4 * n)

end

end A046787.P4486625855511720498

/-!
# A046788: Configurations of linear chains in a 4-dimensional hypercubic lattice.

The programs for A046788, there is no canonical definition to state claims against.
-/

/-! ## A046788.P3651988064625089533

`A028655(A099449(n))`
-/

namespace A046788.P3651988064625089533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028655 (A099449 n).toNat

end

end A046788.P3651988064625089533

/-! ## A046788.P885315535399796563

`A003415(A023444(2*(n+1))*A172519(n+1))`
-/

namespace A046788.P885315535399796563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A023444 (2 * (n + 1)) * A172519 (n + 1)).toNat

end

end A046788.P885315535399796563

/-!
# A046789: Lower prime of the second gap of 2n between primes.

The programs for A046789, there is no canonical definition to state claims against.
-/

/-! ## A046789.P8891379812513922547

`A000230(n+1)+A046728(n+1)`
-/

namespace A046789.P8891379812513922547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (n + 1) + A046728 (n + 1)

end

end A046789.P8891379812513922547

/-! ## A046789.P14812992389431299039

`A045881(n+1)+A046728(n+1)-1`
-/

namespace A046789.P14812992389431299039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (n + 1) + (A046728 (n + 1) - 1)

end

end A046789.P14812992389431299039

/-! ## A046789.P10929997543856528160

`A174350(∑[n+1])+A046728(n+1)`
-/

namespace A046789.P10929997543856528160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (∑ j ∈ Finset.range (n + 1), f1 j) + A046728 (n + 1)

end

end A046789.P10929997543856528160

/-! ## A046789.P2573207316402443592

`A174350(∑[n+2])`
-/

namespace A046789.P2573207316402443592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046789.P2573207316402443592

/-! ## A046789.P6703525052035120820

`A057427(n+1)*A174350(A000096(n+1))`
-/

namespace A046789.P6703525052035120820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A174350 (A000096 (n + 1)).toNat

end

end A046789.P6703525052035120820

/-! ## A046789.P9339991574197075488

`A231609(∑[n+1]+2)`
-/

namespace A046789.P9339991574197075488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A046789.P9339991574197075488

/-!
# A046790: Positive numbers divisible by 8 or by the square of an odd prime.

The programs for A046790, the canonical program `A046790.P4041262412351420373` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046790 has offset 1).

The definition of A046790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046790.P3818477018419587340

`lt[0, A078771(n+1)]+1`
-/

namespace A046790.P3818477018419587340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046790.P3818477018419587340

namespace A046790

/-- `lt[0, A078771(n+1)]+1` -/
def P3818477018419587340.Spec : Prop :=
  ∀ n, (P3818477018419587340.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P2127083198004246748

`lt[1, A336551(n+1)]+1`
-/

namespace A046790.P2127083198004246748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046790.P2127083198004246748

namespace A046790

/-- `lt[1, A336551(n+1)]+1` -/
def P2127083198004246748.Spec : Prop :=
  ∀ n, (P2127083198004246748.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P4041262412351420373

`lt[7, A065745(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046790

/-- `lt[7, A065745(n+1)]+1` -/
def P4041262412351420373.Spec : Prop :=
  ∀ n, (P4041262412351420373.a n : ℤ) = A046790 (n + 1)

theorem P4041262412351420373.correct : P4041262412351420373.Spec := by
  intro n
  simp only [A046790, Nat.add_sub_cancel]

end A046790

/-! ## A046790.P15842638911199813027

`lt[6, A008833(2*(n+1))]+1`
-/

namespace A046790.P15842638911199813027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046790.P15842638911199813027

namespace A046790

/-- `lt[6, A008833(2*(n+1))]+1` -/
def P15842638911199813027.Spec : Prop :=
  ∀ n, (P15842638911199813027.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P15124144572269115097

`lt[A007947(n+1), n/2]+1`
-/

namespace A046790.P15124144572269115097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A046790.P15124144572269115097

namespace A046790

/-- `lt[A007947(n+1), n/2]+1` -/
def P15124144572269115097.Spec : Prop :=
  ∀ n, (P15124144572269115097.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P16067956327170131518

`∪[A335437(n+1), A051062(n)]`
-/

namespace A046790.P16067956327170131518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051062 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046790.P16067956327170131518

namespace A046790

/-- `∪[A335437(n+1), A051062(n)]` -/
def P16067956327170131518.Spec : Prop :=
  ∀ n, (P16067956327170131518.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P16635506048473212508

`∪[A038838(n+1), A046099(n+1)]`
-/

namespace A046790.P16635506048473212508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046790.P16635506048473212508

namespace A046790

/-- `∪[A038838(n+1), A046099(n+1)]` -/
def P16635506048473212508.Spec : Prop :=
  ∀ n, (P16635506048473212508.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P4369922115954402837

`∪[A038838(n+1), A048108(n+1)]`
-/

namespace A046790.P4369922115954402837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046790.P4369922115954402837

namespace A046790

/-- `∪[A038838(n+1), A048108(n+1)]` -/
def P4369922115954402837.Spec : Prop :=
  ∀ n, (P4369922115954402837.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P12222124831292960933

`∪[A038838(n+1), A185359(n+1)]`
-/

namespace A046790.P12222124831292960933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046790.P12222124831292960933

namespace A046790

/-- `∪[A038838(n+1), A185359(n+1)]` -/
def P12222124831292960933.Spec : Prop :=
  ∀ n, (P12222124831292960933.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P8140987654880406850

`∪[A335437(n+1), A046099(n+1)]`
-/

namespace A046790.P8140987654880406850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046790.P8140987654880406850

namespace A046790

/-- `∪[A335437(n+1), A046099(n+1)]` -/
def P8140987654880406850.Spec : Prop :=
  ∀ n, (P8140987654880406850.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P1162880700620101952

`∪[A176297(n+1), A335437(n+1)]`
-/

namespace A046790.P1162880700620101952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046790.P1162880700620101952

namespace A046790

/-- `∪[A176297(n+1), A335437(n+1)]` -/
def P1162880700620101952.Spec : Prop :=
  ∀ n, (P1162880700620101952.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P4700974413793959987

`∪[A177899(n+1), A335437(n+1)]`
-/

namespace A046790.P4700974413793959987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046790.P4700974413793959987

namespace A046790

/-- `∪[A177899(n+1), A335437(n+1)]` -/
def P4700974413793959987.Spec : Prop :=
  ∀ n, (P4700974413793959987.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P8390988689287045387

`∪[A195086(n+1), A335437(n+1)]`
-/

namespace A046790.P8390988689287045387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046790.P8390988689287045387

namespace A046790

/-- `∪[A195086(n+1), A335437(n+1)]` -/
def P8390988689287045387.Spec : Prop :=
  ∀ n, (P8390988689287045387.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P9787217429923774423

`∪[A336593(n+1), A335437(n+1)]`
-/

namespace A046790.P9787217429923774423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046790.P9787217429923774423

namespace A046790

/-- `∪[A336593(n+1), A335437(n+1)]` -/
def P9787217429923774423.Spec : Prop :=
  ∀ n, (P9787217429923774423.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P5762852867452887001

`∪[A382292(n+1), A335437(n+1)]`
-/

namespace A046790.P5762852867452887001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046790.P5762852867452887001

namespace A046790

/-- `∪[A382292(n+1), A335437(n+1)]` -/
def P5762852867452887001.Spec : Prop :=
  ∀ n, (P5762852867452887001.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P7892488372197342350

`lt[2, A280292(n+1)]+1`
-/

namespace A046790.P7892488372197342350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046790.P7892488372197342350

namespace A046790

/-- `lt[2, A280292(n+1)]+1` -/
def P7892488372197342350.Spec : Prop :=
  ∀ n, (P7892488372197342350.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P4104711757207098992

`lt[1, A058190(n+1)]+1`
-/

namespace A046790.P4104711757207098992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058190 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046790.P4104711757207098992

namespace A046790

/-- `lt[1, A058190(n+1)]+1` -/
def P4104711757207098992.Spec : Prop :=
  ∀ n, (P4104711757207098992.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P1869097758587328260

`lt[1, A292380(n+1)]+1`
-/

namespace A046790.P1869097758587328260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046790.P1869097758587328260

namespace A046790

/-- `lt[1, A292380(n+1)]+1` -/
def P1869097758587328260.Spec : Prop :=
  ∀ n, (P1869097758587328260.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P9661092265827268867

`lt[2, A000010(A057521(n+1))]+1`
-/

namespace A046790.P9661092265827268867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A057521 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046790.P9661092265827268867

namespace A046790

/-- `lt[2, A000010(A057521(n+1))]+1` -/
def P9661092265827268867.Spec : Prop :=
  ∀ n, (P9661092265827268867.a n : ℤ) = A046790 (n + 1)

end A046790

/-! ## A046790.P1716595740117778230

`lt[2, A000189(n+1)]+1`
-/

namespace A046790.P1716595740117778230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046790.P1716595740117778230

namespace A046790

/-- `lt[2, A000189(n+1)]+1` -/
def P1716595740117778230.Spec : Prop :=
  ∀ n, (P1716595740117778230.a n : ℤ) = A046790 (n + 1)

end A046790

/-!
# A046791: A046790 has several definitions, one of which is: "Numbers i such that there is a smaller positive number j such that (i+j)/2 and sqrt(i*j) are integers". The present sequence gives the smallest choice for j.

The programs for A046791, the canonical program `A046791.P4309065801860843159` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046791 has offset 1).

The definition of A046791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2902 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046791.P4309065801860843159

`A038387(A046790(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A046791

/-- `A038387(A046790(n+1))` -/
def P4309065801860843159.Spec : Prop :=
  ∀ n, P4309065801860843159.a n = A046791 (n + 1)

theorem P4309065801860843159.correct : P4309065801860843159.Spec := by
  intro n
  simp only [A046791, Nat.add_sub_cancel]

end A046791

/-! ## A046791.P3763101533155176141

`A038387(lt[1, A292380(n+1)]+1)`
-/

namespace A046791.P3763101533155176141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046791.P3763101533155176141

namespace A046791

/-- `A038387(lt[1, A292380(n+1)]+1)` -/
def P3763101533155176141.Spec : Prop :=
  ∀ n, P3763101533155176141.a n = A046791 (n + 1)

end A046791

/-! ## A046791.P9831510046438690597

`A038387(lt[1, A336551(n+1)]+1)`
-/

namespace A046791.P9831510046438690597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046791.P9831510046438690597

namespace A046791

/-- `A038387(lt[1, A336551(n+1)]+1)` -/
def P9831510046438690597.Spec : Prop :=
  ∀ n, P9831510046438690597.a n = A046791 (n + 1)

end A046791

/-! ## A046791.P16899513982141910270

`A038387(lt[2, A000190(n+1)]+1)`
-/

namespace A046791.P16899513982141910270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046791.P16899513982141910270

namespace A046791

/-- `A038387(lt[2, A000190(n+1)]+1)` -/
def P16899513982141910270.Spec : Prop :=
  ∀ n, P16899513982141910270.a n = A046791 (n + 1)

end A046791

/-! ## A046791.P12872847024441006593

`A038387(lt[2, A003557(n+1)]+1)`
-/

namespace A046791.P12872847024441006593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046791.P12872847024441006593

namespace A046791

/-- `A038387(lt[2, A003557(n+1)]+1)` -/
def P12872847024441006593.Spec : Prop :=
  ∀ n, P12872847024441006593.a n = A046791 (n + 1)

end A046791

/-! ## A046791.P14845447237800146544

`A038387(lt[A000026(n+1), n]+1)`
-/

namespace A046791.P14845447237800146544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A046791.P14845447237800146544

namespace A046791

/-- `A038387(lt[A000026(n+1), n]+1)` -/
def P14845447237800146544.Spec : Prop :=
  ∀ n, P14845447237800146544.a n = A046791 (n + 1)

end A046791

/-! ## A046791.P2733919425182161881

`A038387(lt[A038387(n+1), n]+1)`
-/

namespace A046791.P2733919425182161881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A046791.P2733919425182161881

namespace A046791

/-- `A038387(lt[A038387(n+1), n]+1)` -/
def P2733919425182161881.Spec : Prop :=
  ∀ n, P2733919425182161881.a n = A046791 (n + 1)

end A046791

/-! ## A046791.P12199276561784800750

`A038387(eq[A038387(n+1)%(n+1), A038387(n+1)]+1)`
-/

namespace A046791.P12199276561784800750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038387 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A046791.P12199276561784800750

namespace A046791

/-- `A038387(eq[A038387(n+1)%(n+1), A038387(n+1)]+1)` -/
def P12199276561784800750.Spec : Prop :=
  ∀ n, P12199276561784800750.a n = A046791 (n + 1)

end A046791

/-! ## A046791.P8212685642857215844

`A038387(comp[C(A038387(n+1), n)])`
-/

namespace A046791.P8212685642857215844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A038387 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A046791.P8212685642857215844

namespace A046791

/-- `A038387(comp[C(A038387(n+1), n)])` -/
def P8212685642857215844.Spec : Prop :=
  ∀ n, P8212685642857215844.a n = A046791 (n + 1)

end A046791

/-! ## A046791.P15858760129795641511

`A038387(A335248(n+1)/2)`
-/

namespace A046791.P15858760129795641511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (SequenceMachineLib.roundAway ((A335248 (n + 1) : ℚ) / 2)).toNat

end

end A046791.P15858760129795641511

namespace A046791

/-- `A038387(A335248(n+1)/2)` -/
def P15858760129795641511.Spec : Prop :=
  ∀ n, P15858760129795641511.a n = A046791 (n + 1)

end A046791

/-!
# A046792: Triangle of numbers where k-th row contains (ij)!/(i!j!) with i+j = k+1, 1 <= i <= k.

The programs for A046792, the canonical program `A046792.P13304464133605671692` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046792 has offset 1).

The definition of A046792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046792.P11529917493537309662

`A060854(n+1)*A156584(n)`
-/

namespace A046792.P11529917493537309662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060854 (n + 1) * A156584 n

end

end A046792.P11529917493537309662

namespace A046792

/-- `A060854(n+1)*A156584(n)` -/
def P11529917493537309662.Spec : Prop :=
  ∀ n, P11529917493537309662.a n = A046792 (n + 1)

end A046792

/-! ## A046792.P8359879280313920977

`A066991(n+1)/A166350(n+1)`
-/

namespace A046792.P8359879280313920977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066991 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A046792.P8359879280313920977

namespace A046792

/-- `A066991(n+1)/A166350(n+1)` -/
def P8359879280313920977.Spec : Prop :=
  ∀ n, P8359879280313920977.a n = (A046792 (n + 1) : ℚ)

end A046792

/-! ## A046792.P257219226676404861

`A060540(n+1)/A060538(n+1)*A066991(n+1)`
-/

namespace A046792.P257219226676404861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060540 (n + 1) : ℚ) / (A060538 (n + 1) : ℚ) * (A066991 (n + 1) : ℚ)

end

end A046792.P257219226676404861

namespace A046792

/-- `A060540(n+1)/A060538(n+1)*A066991(n+1)` -/
def P257219226676404861.Spec : Prop :=
  ∀ n, P257219226676404861.a n = (A046792 (n + 1) : ℚ)

end A046792

/-! ## A046792.P2199173336209428053

`A009963(A003056(n)+1+n)*A060854(n+1)/A166350(n+1)`
-/

namespace A046792.P2199173336209428053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009963 (A003056 n + 1 + (n : ℤ)).toNat * A060854 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A046792.P2199173336209428053

namespace A046792

/-- `A009963(A003056(n)+1+n)*A060854(n+1)/A166350(n+1)` -/
def P2199173336209428053.Spec : Prop :=
  ∀ n, P2199173336209428053.a n = (A046792 (n + 1) : ℚ)

end A046792

/-! ## A046792.P13304464133605671692

`A098361(A000124(A003991(n+1)))/A098361(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046792

/-- `A098361(A000124(A003991(n+1)))/A098361(n)` -/
def P13304464133605671692.Spec : Prop :=
  ∀ n, P13304464133605671692.a n = (A046792 (n + 1) : ℚ)

end A046792

/-! ## A046792.P17966688183636943740

`A156584(n)*A290252(A089633(n)+1)`
-/

namespace A046792.P17966688183636943740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156584 n * A290252 (A089633 n + 1).toNat

end

end A046792.P17966688183636943740

namespace A046792

/-- `A156584(n)*A290252(A089633(n)+1)` -/
def P17966688183636943740.Spec : Prop :=
  ∀ n, P17966688183636943740.a n = A046792 (n + 1)

end A046792

/-! ## A046792.P14662028095409538062

`A156584(n)*A290252(A023758(n+2))`
-/

namespace A046792.P14662028095409538062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156584 n * A290252 (A023758 (n + 2)).toNat

end

end A046792.P14662028095409538062

namespace A046792

/-- `A156584(n)*A290252(A023758(n+2))` -/
def P14662028095409538062.Spec : Prop :=
  ∀ n, P14662028095409538062.a n = A046792 (n + 1)

end A046792

/-! ## A046792.P8293138043834937668

`A156584(n)*A290252(A043569(n+1)/2)`
-/

namespace A046792.P8293138043834937668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156584 n * A290252 (SequenceMachineLib.roundAway ((A043569 (n + 1) : ℚ) / 2)).toNat

end

end A046792.P8293138043834937668

namespace A046792

/-- `A156584(n)*A290252(A043569(n+1)/2)` -/
def P8293138043834937668.Spec : Prop :=
  ∀ n, P8293138043834937668.a n = A046792 (n + 1)

end A046792

/-! ## A046792.P13190255386291578949

`A156584(n)*A290252((A081118(n+1)+1)/2)`
-/

namespace A046792.P13190255386291578949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156584 n * A290252 (SequenceMachineLib.roundAway ((A081118 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A046792.P13190255386291578949

namespace A046792

/-- `A156584(n)*A290252((A081118(n+1)+1)/2)` -/
def P13190255386291578949.Spec : Prop :=
  ∀ n, P13190255386291578949.a n = A046792 (n + 1)

end A046792

/-! ## A046792.P9385398953693874960

`A156584(n)*A290252(A130328(n))`
-/

namespace A046792.P9385398953693874960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156584 n * A290252 (A130328 n).toNat

end

end A046792.P9385398953693874960

namespace A046792

/-- `A156584(n)*A290252(A130328(n))` -/
def P9385398953693874960.Spec : Prop :=
  ∀ n, P9385398953693874960.a n = A046792 (n + 1)

end A046792

/-!
# A046794: Geometric and harmonic means of A046795(n) and a(n) both integers.

The programs for A046794, there is no canonical definition to state claims against.
-/

/-! ## A046794.P17768436464426935243

`record[A025480(A046796(n+1))]`
-/

namespace A046794.P17768436464426935243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A046796 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046794.P17768436464426935243

/-! ## A046794.P1107314655498284708

`record[A063041(A046796(A008621(n)))]`
-/

namespace A046794.P1107314655498284708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (A046796 (A008621 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046794.P1107314655498284708

/-! ## A046794.P12324306476219523447

`record[A260437(A046796(A008619(n)))]`
-/

namespace A046794.P12324306476219523447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (A046796 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046794.P12324306476219523447

/-! ## A046794.P9486990332947565247

`record[A252463(A046796(A065033(n)))]`
-/

namespace A046794.P9486990332947565247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A046796 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046794.P9486990332947565247

/-! ## A046794.P7199278302700834719

`record[A260437(A046796(A080513(n)))]`
-/

namespace A046794.P7199278302700834719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (A046796 (A080513 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046794.P7199278302700834719

/-! ## A046794.P9012898475911450665

`record[A063041(A046796(A344180(n)))]`
-/

namespace A046794.P9012898475911450665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063041 (A046796 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046794.P9012898475911450665

/-!
# A046795: Geometric and harmonic means of a(n) and A046794(n) both integers.

The programs for A046795, there is no canonical definition to state claims against.
-/

/-! ## A046795.P2322276320102096516

`A289508(p?[A073846(A046797(n+1))])`
-/

namespace A046795.P2322276320102096516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A046797 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046795.P2322276320102096516

/-!
# A046796: Arithmetic, geometric and harmonic means of A046797(n) and a(n) all integers.

The programs for A046796, there is no canonical definition to state claims against.
-/

/-! ## A046796.P17387610858116813192

`∩[A102749(n+1), A120686(n)]`
-/

namespace A046796.P17387610858116813192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120686 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046796.P17387610858116813192

/-! ## A046796.P12693103368232585950

`∩[A102749(n+1), A115839(n+1)]`
-/

namespace A046796.P12693103368232585950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046796.P12693103368232585950

/-!
# A046797: Arithmetic, geometric and harmonic means of a(n) and A046796(n) all integers.

The programs for A046797, there is no canonical definition to state claims against.
-/

/-! ## A046797.P14217645433096327012

`5*A138036((n+2)²)`
-/

namespace A046797.P14217645433096327012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A138036 ((n + 2) ^ 2)

end

end A046797.P14217645433096327012

/-! ## A046797.P4108231908325378118

`5*eq[5, A195079(n+1)]%(n+3)`
-/

namespace A046797.P4108231908325378118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % (n + 3))

end

end A046797.P4108231908325378118

/-! ## A046797.P4331142174079984306

`5*A187141(A038754(n))`
-/

namespace A046797.P4331142174079984306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A187141 (A038754 n).toNat

end

end A046797.P4331142174079984306

/-! ## A046797.P2934814869496557679

`A181762(A077739(n+1))+2*(n+1)`
-/

namespace A046797.P2934814869496557679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181762 (A077739 (n + 1)).toNat + (2 * (n + 1) : ℤ)

end

end A046797.P2934814869496557679

/-! ## A046797.P8681836155262795024

`5*A146532(A000035(n+1)+∑[n+3])`
-/

namespace A046797.P8681836155262795024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A146532 (A000035 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A046797.P8681836155262795024

/-!
# A046798: Number of divisors of 2^n + 1.

The programs for A046798, the canonical program `A046798.P1283499417333976298` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046798 has offset 0).

The definition of A046798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046798.P1283499417333976298

`A000005(2^n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A046798

/-- `A000005(2^n+1)` -/
def P1283499417333976298.Spec : Prop :=
  ∀ n, P1283499417333976298.a n = A046798 n

theorem P1283499417333976298.correct : P1283499417333976298.Spec := by
  intro n
  simp only [A046798]

end A046798

/-! ## A046798.P17957814727116787907

`A324105(A161344(n+1))`
-/

namespace A046798.P17957814727116787907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (A161344 (n + 1)).toNat

end

end A046798.P17957814727116787907

namespace A046798

/-- `A324105(A161344(n+1))` -/
def P17957814727116787907.Spec : Prop :=
  ∀ n, P17957814727116787907.a n = A046798 n

end A046798

/-! ## A046798.P9021925829120079860

`A324105(2*p?[A083920(n)])`
-/

namespace A046798.P9021925829120079860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046798.P9021925829120079860

namespace A046798

/-- `A324105(2*p?[A083920(n)])` -/
def P9021925829120079860.Spec : Prop :=
  ∀ n, P9021925829120079860.a n = A046798 n

end A046798

/-! ## A046798.P13547545812206670080

`A324105(lcm(2, A074845(n+1)))`
-/

namespace A046798.P13547545812206670080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (Int.lcm 2 (A074845 (n + 1)))

end

end A046798.P13547545812206670080

namespace A046798

/-- `A324105(lcm(2, A074845(n+1)))` -/
def P13547545812206670080.Spec : Prop :=
  ∀ n, P13547545812206670080.a n = A046798 n

end A046798

/-! ## A046798.P3375458413499809721

`A324105(A005843(p?[A083920(n)]))`
-/

namespace A046798.P3375458413499809721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (A005843 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A046798.P3375458413499809721

namespace A046798

/-- `A324105(A005843(p?[A083920(n)]))` -/
def P3375458413499809721.Spec : Prop :=
  ∀ n, P3375458413499809721.a n = A046798 n

end A046798

/-! ## A046798.P11870933608706101403

`A324105(A001747(n+1)+A000007(n))`
-/

namespace A046798.P11870933608706101403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324105 (A001747 (n + 1) + A000007 n).toNat

end

end A046798.P11870933608706101403

namespace A046798

/-- `A324105(A001747(n+1)+A000007(n))` -/
def P11870933608706101403.Spec : Prop :=
  ∀ n, P11870933608706101403.a n = A046798 n

end A046798

/-! ## A046798.P15497733713340848210

`A324117(A074845(n+1))`
-/

namespace A046798.P15497733713340848210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A074845 (n + 1)).toNat

end

end A046798.P15497733713340848210

namespace A046798

/-- `A324117(A074845(n+1))` -/
def P15497733713340848210.Spec : Prop :=
  ∀ n, P15497733713340848210.a n = A046798 n

end A046798

/-! ## A046798.P17729141565147351977

`A324117(A001747(n+1)+A000038(n))`
-/

namespace A046798.P17729141565147351977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A001747 (n + 1) + A000038 n).toNat

end

end A046798.P17729141565147351977

namespace A046798

/-- `A324117(A001747(n+1)+A000038(n))` -/
def P17729141565147351977.Spec : Prop :=
  ∀ n, P17729141565147351977.a n = A046798 n

end A046798

/-! ## A046798.P5462558970519261547

`A324117(A001747(n+1)*A054977(n))`
-/

namespace A046798.P5462558970519261547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A001747 (n + 1) * A054977 n).toNat

end

end A046798.P5462558970519261547

namespace A046798

/-- `A324117(A001747(n+1)*A054977(n))` -/
def P5462558970519261547.Spec : Prop :=
  ∀ n, P5462558970519261547.a n = A046798 n

end A046798

/-! ## A046798.P14429169712634509342

`A324117(A001748(n+1))`
-/

namespace A046798.P14429169712634509342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A001748 (n + 1)).toNat

end

end A046798.P14429169712634509342

namespace A046798

/-- `A324117(A001748(n+1))` -/
def P14429169712634509342.Spec : Prop :=
  ∀ n, P14429169712634509342.a n = A046798 n

end A046798

/-! ## A046798.P16475124321604213245

`A324117(A063534(n+1))`
-/

namespace A046798.P16475124321604213245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A063534 (n + 1)).toNat

end

end A046798.P16475124321604213245

namespace A046798

/-- `A324117(A063534(n+1))` -/
def P16475124321604213245.Spec : Prop :=
  ∀ n, P16475124321604213245.a n = A046798 n

end A046798

/-! ## A046798.P10086616250668817141

`A324117(A112773(n+2))`
-/

namespace A046798.P10086616250668817141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A112773 (n + 2)).toNat

end

end A046798.P10086616250668817141

namespace A046798

/-- `A324117(A112773(n+2))` -/
def P10086616250668817141.Spec : Prop :=
  ∀ n, P10086616250668817141.a n = A046798 n

end A046798

/-! ## A046798.P12310949967150030642

`A324117(A288313(n+2))`
-/

namespace A046798.P12310949967150030642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A288313 (n + 2)).toNat

end

end A046798.P12310949967150030642

namespace A046798

/-- `A324117(A288313(n+2))` -/
def P12310949967150030642.Spec : Prop :=
  ∀ n, P12310949967150030642.a n = A046798 n

end A046798

/-! ## A046798.P5794806003370832257

`A324117(3*A000040(n+1))`
-/

namespace A046798.P5794806003370832257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (3 * A000040 (n + 1)).toNat

end

end A046798.P5794806003370832257

namespace A046798

/-- `A324117(3*A000040(n+1))` -/
def P5794806003370832257.Spec : Prop :=
  ∀ n, P5794806003370832257.a n = A046798 n

end A046798

/-! ## A046798.P4106402355933409950

`A324117(A001750(n+2))`
-/

namespace A046798.P4106402355933409950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (A001750 (n + 2)).toNat

end

end A046798.P4106402355933409950

namespace A046798

/-- `A324117(A001750(n+2))` -/
def P4106402355933409950.Spec : Prop :=
  ∀ n, P4106402355933409950.a n = A046798 n

end A046798

/-!
# A046799: Number of distinct prime factors of 2^n+1.

The programs for A046799, the canonical program `A046799.P14243968354502214682` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046799 has offset 0).

The definition of A046799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046799.P16509573271492975209

`A322811(A073582(n+1))`
-/

namespace A046799.P16509573271492975209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A073582 (n + 1)).toNat

end

end A046799.P16509573271492975209

namespace A046799

/-- `A322811(A073582(n+1))` -/
def P16509573271492975209.Spec : Prop :=
  ∀ n, P16509573271492975209.a n = A046799 n

end A046799

/-! ## A046799.P968287415050531410

`A322811(A100484(n+1))`
-/

namespace A046799.P968287415050531410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A100484 (n + 1)).toNat

end

end A046799.P968287415050531410

namespace A046799

/-- `A322811(A100484(n+1))` -/
def P968287415050531410.Spec : Prop :=
  ∀ n, P968287415050531410.a n = A046799 n

end A046799

/-! ## A046799.P2533631267427185739

`A322811(A001747(n+2))`
-/

namespace A046799.P2533631267427185739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A001747 (n + 2)).toNat

end

end A046799.P2533631267427185739

namespace A046799

/-- `A322811(A001747(n+2))` -/
def P2533631267427185739.Spec : Prop :=
  ∀ n, P2533631267427185739.a n = A046799 n

end A046799

/-! ## A046799.P4353363685327004055

`A322811(A074845(n+2))`
-/

namespace A046799.P4353363685327004055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A074845 (n + 2)).toNat

end

end A046799.P4353363685327004055

namespace A046799

/-- `A322811(A074845(n+2))` -/
def P4353363685327004055.Spec : Prop :=
  ∀ n, P4353363685327004055.a n = A046799 n

end A046799

/-! ## A046799.P14613130618787114494

`A322811(A161344(n+2))`
-/

namespace A046799.P14613130618787114494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A161344 (n + 2)).toNat

end

end A046799.P14613130618787114494

namespace A046799

/-- `A322811(A161344(n+2))` -/
def P14613130618787114494.Spec : Prop :=
  ∀ n, P14613130618787114494.a n = A046799 n

end A046799

/-! ## A046799.P9517106424723624213

`A322812(A161425(n+2))`
-/

namespace A046799.P9517106424723624213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322812 (A161425 (n + 2)).toNat

end

end A046799.P9517106424723624213

namespace A046799

/-- `A322812(A161425(n+2))` -/
def P9517106424723624213.Spec : Prop :=
  ∀ n, P9517106424723624213.a n = A046799 n

end A046799

/-! ## A046799.P16005137923499449737

`A322811(2*A000040(n+1))`
-/

namespace A046799.P16005137923499449737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (2 * A000040 (n + 1)).toNat

end

end A046799.P16005137923499449737

namespace A046799

/-- `A322811(2*A000040(n+1))` -/
def P16005137923499449737.Spec : Prop :=
  ∀ n, P16005137923499449737.a n = A046799 n

end A046799

/-! ## A046799.P14243968354502214682

`A322812(2*A000040(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A046799

/-- `A322812(2*A000040(n+1))` -/
def P14243968354502214682.Spec : Prop :=
  ∀ n, P14243968354502214682.a n = A046799 n

theorem P14243968354502214682.correct : P14243968354502214682.Spec := by
  intro n
  simp only [A046799]

end A046799

/-! ## A046799.P8511864830105305397

`A322811(2*A008578(n+2))`
-/

namespace A046799.P8511864830105305397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (2 * A008578 (n + 2)).toNat

end

end A046799.P8511864830105305397

namespace A046799

/-- `A322811(2*A008578(n+2))` -/
def P8511864830105305397.Spec : Prop :=
  ∀ n, P8511864830105305397.a n = A046799 n

end A046799

/-! ## A046799.P6640240009113371270

`A322811(2*(A006093(n+1)+1))`
-/

namespace A046799.P6640240009113371270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (2 * (A006093 (n + 1) + 1)).toNat

end

end A046799.P6640240009113371270

namespace A046799

/-- `A322811(2*(A006093(n+1)+1))` -/
def P6640240009113371270.Spec : Prop :=
  ∀ n, P6640240009113371270.a n = A046799 n

end A046799

/-! ## A046799.P17331958567976199743

`A322811(2*(A156037(n+1)+1))`
-/

namespace A046799.P17331958567976199743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (2 * (A156037 (n + 1) + 1)).toNat

end

end A046799.P17331958567976199743

namespace A046799

/-- `A322811(2*(A156037(n+1)+1))` -/
def P17331958567976199743.Spec : Prop :=
  ∀ n, P17331958567976199743.a n = A046799 n

end A046799

/-! ## A046799.P8300033203532953404

`A322811(A006093(n+1)+A006093(n+1)+2)`
-/

namespace A046799.P8300033203532953404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A006093 (n + 1) + (A006093 (n + 1) + 2)).toNat

end

end A046799.P8300033203532953404

namespace A046799

/-- `A322811(A006093(n+1)+A006093(n+1)+2)` -/
def P8300033203532953404.Spec : Prop :=
  ∀ n, P8300033203532953404.a n = A046799 n

end A046799

/-! ## A046799.P9847272789074953930

`A322811(A156037(n+1)+A156037(n+1)+2)`
-/

namespace A046799.P9847272789074953930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A156037 (n + 1) + (A156037 (n + 1) + 2)).toNat

end

end A046799.P9847272789074953930

namespace A046799

/-- `A322811(A156037(n+1)+A156037(n+1)+2)` -/
def P9847272789074953930.Spec : Prop :=
  ∀ n, P9847272789074953930.a n = A046799 n

end A046799

/-! ## A046799.P5436095444702117625

`A324119(A161344(n+1))`
-/

namespace A046799.P5436095444702117625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324119 (A161344 (n + 1)).toNat

end

end A046799.P5436095444702117625

namespace A046799

/-- `A324119(A161344(n+1))` -/
def P5436095444702117625.Spec : Prop :=
  ∀ n, P5436095444702117625.a n = A046799 n

end A046799

/-! ## A046799.P14209668043923598197

`A028310(A046800(2*n)-A046800(n))`
-/

namespace A046799.P14209668043923598197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A046800 (2 * n) - A046800 n).toNat

end

end A046799.P14209668043923598197

namespace A046799

/-- `A028310(A046800(2*n)-A046800(n))` -/
def P14209668043923598197.Spec : Prop :=
  ∀ n, P14209668043923598197.a n = A046799 n

end A046799

