import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A383000: a(n) = Sum_{d|n} phi(n/d) * (-3)^(d-1).

The programs for A383000, the canonical program `A383000.P344369250117156454` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383000 has offset 1).

The definition of A383000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383000.P344369250117156454

`∑{#}[n, (-3)^(gcd(n+1, #+1)-1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383000

/-- `∑{#}[n, (-3)^(gcd(n+1, #+1)-1)]` -/
def P344369250117156454.Spec : Prop :=
  ∀ n, P344369250117156454.a n = (A383000 (n + 1) : ℚ)

end A383000

/-! ## A383000.P4006934156176495964

`∑{d}[n+1, A000010((n+1)/#)*(-3)^(#-1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383000.P4006934156176495964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℚ) * (-3 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A383000.P4006934156176495964

namespace A383000

/-- `∑{d}[n+1, A000010((n+1)/#)*(-3)^(#-1)]` -/
def P4006934156176495964.Spec : Prop :=
  ∀ n, P4006934156176495964.a n = (A383000 (n + 1) : ℚ)

end A383000

/-! ## A383000.P7657320108756467433

`(n+1)/3*A343465(n+1)`
-/

namespace A383000.P7657320108756467433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A343465 (n + 1) : ℚ)

end

end A383000.P7657320108756467433

namespace A383000

/-- `(n+1)/3*A343465(n+1)` -/
def P7657320108756467433.Spec : Prop :=
  ∀ n, P7657320108756467433.a n = (A383000 (n + 1) : ℚ)

end A383000

/-! ## A383000.P12243369598570131924

`A382995(∑[n+3]+1)`
-/

namespace A383000.P12243369598570131924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382995 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A383000.P12243369598570131924

namespace A383000

/-- `A382995(∑[n+3]+1)` -/
def P12243369598570131924.Spec : Prop :=
  ∀ n, P12243369598570131924.a n = A383000 (n + 1)

end A383000

/-!
# A383002: Number of integers with a shortest addition-multiplication chain of length n.

The programs for A383002, there is no canonical definition to state claims against.
-/

/-! ## A383002.P2456070382432919682

`A111852(A000272(n))+A107589(n)`
-/

namespace A383002.P2456070382432919682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111852 (A000272 n).toNat + A107589 n

end

end A383002.P2456070382432919682

/-! ## A383002.P678971068142987469

`A008615(A326211(n))+A001519(n)`
-/

namespace A383002.P678971068142987469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A326211 n).toNat + A001519 n

end

end A383002.P678971068142987469

/-! ## A383002.P15907007830769827862

`A167262(A343018(n))+A000112(n)`
-/

namespace A383002.P15907007830769827862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167262 (A343018 n).toNat + A000112 n

end

end A383002.P15907007830769827862

/-!
# A383003: a(n) = Sum_{d|n} (-n)^(d-1).

The programs for A383003, the canonical program `A383003.P10010423534835484146` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383003 has offset 1).

The definition of A383003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383003.P10010423534835484146

`∑{d}[n+1, (-(n+1))^(#-1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383003

/-- `∑{d}[n+1, (-(n+1))^(#-1)]` -/
def P10010423534835484146.Spec : Prop :=
  ∀ n, P10010423534835484146.a n = (A383003 (n + 1) : ℚ)

end A383003

/-! ## A383003.P11771680976050448529

`1/(n+1)*A383010(n+1)`
-/

namespace A383003.P11771680976050448529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A383010 (n + 1) : ℚ)

end

end A383003.P11771680976050448529

namespace A383003

/-- `1/(n+1)*A383010(n+1)` -/
def P11771680976050448529.Spec : Prop :=
  ∀ n, P11771680976050448529.a n = (A383003 (n + 1) : ℚ)

end A383003

/-! ## A383003.P17936446204792499285

`∑{d}[n+1, -(-(n+1))^#]/(n+1)`
-/

namespace A383003.P17936446204792499285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (-((-(n + 1 : ℤ)) ^ d)) : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A383003.P17936446204792499285

namespace A383003

/-- `∑{d}[n+1, -(-(n+1))^#]/(n+1)` -/
def P17936446204792499285.Spec : Prop :=
  ∀ n, P17936446204792499285.a n = (A383003 (n + 1) : ℚ)

end A383003

/-! ## A383003.P11322639893925866662

`A383010(n+1)/(n+1)`
-/

namespace A383003.P11322639893925866662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383010 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A383003.P11322639893925866662

namespace A383003

/-- `A383010(n+1)/(n+1)` -/
def P11322639893925866662.Spec : Prop :=
  ∀ n, P11322639893925866662.a n = (A383003 (n + 1) : ℚ)

end A383003

/-!
# A383004: Exponent of the highest power of 2 dividing the n-th cubefree number.

The programs for A383004, the canonical program `A383004.P7561396610622061570` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383004 has offset 1).

The definition of A383004 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A383004.P7561396610622061570

`A007814(A004709(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A383004

/-- `A007814(A004709(n+1))` -/
def P7561396610622061570.Spec : Prop :=
  ∀ n, P7561396610622061570.a n = A383004 (n + 1)

theorem P7561396610622061570.correct : P7561396610622061570.Spec := by
  intro n
  simp only [A383004, Nat.add_sub_cancel]

end A383004

/-! ## A383004.P4962837952077071409

`val(A004709(n+1), 2)`
-/

namespace A383004.P4962837952077071409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004709 (n + 1)).toNat 2

end

end A383004.P4962837952077071409

namespace A383004

/-- `val(A004709(n+1), 2)` -/
def P4962837952077071409.Spec : Prop :=
  ∀ n, (P4962837952077071409.a n : ℤ) = A383004 (n + 1)

end A383004

/-! ## A383004.P12537619454492118066

`val(A392365(n+1), 4)`
-/

namespace A383004.P12537619454492118066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A392365 (n + 1)).toNat 4

end

end A383004.P12537619454492118066

namespace A383004

/-- `val(A392365(n+1), 4)` -/
def P12537619454492118066.Spec : Prop :=
  ∀ n, (P12537619454492118066.a n : ℤ) = A383004 (n + 1)

end A383004

/-! ## A383004.P12221886530816839185

`val(record[A007948(n+1)], 2)`
-/

namespace A383004.P12221886530816839185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A383004.P12221886530816839185

namespace A383004

/-- `val(record[A007948(n+1)], 2)` -/
def P12221886530816839185.Spec : Prop :=
  ∀ n, (P12221886530816839185.a n : ℤ) = A383004 (n + 1)

end A383004

/-! ## A383004.P6564628549701890330

`val(record[A066990(n+1)], 2)`
-/

namespace A383004.P6564628549701890330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A383004.P6564628549701890330

namespace A383004

/-- `val(record[A066990(n+1)], 2)` -/
def P6564628549701890330.Spec : Prop :=
  ∀ n, (P6564628549701890330.a n : ℤ) = A383004 (n + 1)

end A383004

/-! ## A383004.P11297546717131452312

`val(record[A355261(n+1)], 2)`
-/

namespace A383004.P11297546717131452312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A383004.P11297546717131452312

namespace A383004

/-- `val(record[A355261(n+1)], 2)` -/
def P11297546717131452312.Spec : Prop :=
  ∀ n, (P11297546717131452312.a n : ℤ) = A383004 (n + 1)

end A383004

/-! ## A383004.P5581534587628754221

`A007814(record[A007948(n+1)])`
-/

namespace A383004.P5581534587628754221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A383004.P5581534587628754221

namespace A383004

/-- `A007814(record[A007948(n+1)])` -/
def P5581534587628754221.Spec : Prop :=
  ∀ n, P5581534587628754221.a n = A383004 (n + 1)

end A383004

/-! ## A383004.P8396419317395590896

`A007814(record[A050985(n+1)])`
-/

namespace A383004.P8396419317395590896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A383004.P8396419317395590896

namespace A383004

/-- `A007814(record[A050985(n+1)])` -/
def P8396419317395590896.Spec : Prop :=
  ∀ n, P8396419317395590896.a n = A383004 (n + 1)

end A383004

/-! ## A383004.P14944240596896602926

`A131743(A004709(n+1)-1)`
-/

namespace A383004.P14944240596896602926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131743 (A004709 (n + 1) - 1).toNat

end

end A383004.P14944240596896602926

namespace A383004

/-- `A131743(A004709(n+1)-1)` -/
def P14944240596896602926.Spec : Prop :=
  ∀ n, P14944240596896602926.a n = A383004 (n + 1)

end A383004

/-! ## A383004.P16086310569966058576

`A001359(n+1)%A001511(A004709(n+1))`
-/

namespace A383004.P16086310569966058576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (n + 1)) (A001511 (A004709 (n + 1)).toNat)

end

end A383004.P16086310569966058576

namespace A383004

/-- `A001359(n+1)%A001511(A004709(n+1))` -/
def P16086310569966058576.Spec : Prop :=
  ∀ n, P16086310569966058576.a n = A383004 (n + 1)

end A383004

/-! ## A383004.P3799533784793504397

`A001511(A004709(n+1))-A000035(2*n+1)`
-/

namespace A383004.P3799533784793504397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A004709 (n + 1)).toNat - A000035 (2 * n + 1)

end

end A383004.P3799533784793504397

namespace A383004

/-- `A001511(A004709(n+1))-A000035(2*n+1)` -/
def P3799533784793504397.Spec : Prop :=
  ∀ n, P3799533784793504397.a n = A383004 (n + 1)

end A383004

/-! ## A383004.P2139218620149776022

`A001511(A004709(n+1))-A001511(2*n+5)`
-/

namespace A383004.P2139218620149776022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A004709 (n + 1)).toNat - A001511 (2 * n + 5)

end

end A383004.P2139218620149776022

namespace A383004

/-- `A001511(A004709(n+1))-A001511(2*n+5)` -/
def P2139218620149776022.Spec : Prop :=
  ∀ n, P2139218620149776022.a n = A383004 (n + 1)

end A383004

/-! ## A383004.P5333288680237711937

`A046800(gcd(A004709(n+1), A072376(3*n+1)))`
-/

namespace A383004.P5333288680237711937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (Int.gcd (A004709 (n + 1)) (A072376 (3 * n + 1)))

end

end A383004.P5333288680237711937

namespace A383004

/-- `A046800(gcd(A004709(n+1), A072376(3*n+1)))` -/
def P5333288680237711937.Spec : Prop :=
  ∀ n, P5333288680237711937.a n = A383004 (n + 1)

end A383004

/-! ## A383004.P901155619185712900

`A235127(A392365(n+1))`
-/

namespace A383004.P901155619185712900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A392365 (n + 1)).toNat

end

end A383004.P901155619185712900

namespace A383004

/-- `A235127(A392365(n+1))` -/
def P901155619185712900.Spec : Prop :=
  ∀ n, P901155619185712900.a n = A383004 (n + 1)

end A383004

/-!
# A383005: Exponent of the highest power of 2 dividing the n-th biquadratefree number.

The programs for A383005, the canonical program `A383005.P1801605340694019833` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383005 has offset 1).

The definition of A383005 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A383005.P1801605340694019833

`A007814(A046100(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A383005

/-- `A007814(A046100(n+1))` -/
def P1801605340694019833.Spec : Prop :=
  ∀ n, P1801605340694019833.a n = A383005 (n + 1)

theorem P1801605340694019833.correct : P1801605340694019833.Spec := by
  intro n
  simp only [A383005, Nat.add_sub_cancel]

end A383005

/-! ## A383005.P16894716101296222933

`val(A046100(1+n), 2)`
-/

namespace A383005.P16894716101296222933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046100 (1 + n)).toNat 2

end

end A383005.P16894716101296222933

namespace A383005

/-- `val(A046100(1+n), 2)` -/
def P16894716101296222933.Spec : Prop :=
  ∀ n, (P16894716101296222933.a n : ℤ) = A383005 (n + 1)

end A383005

/-! ## A383005.P6535419552640702104

`A191255(5*A046100(n+1))`
-/

namespace A383005.P6535419552640702104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191255 (5 * A046100 (n + 1)).toNat

end

end A383005.P6535419552640702104

namespace A383005

/-- `A191255(5*A046100(n+1))` -/
def P6535419552640702104.Spec : Prop :=
  ∀ n, P6535419552640702104.a n = A383005 (n + 1)

end A383005

/-! ## A383005.P7095652871984266379

`val(record[A053165(n+1)], 2)`
-/

namespace A383005.P7095652871984266379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A383005.P7095652871984266379

namespace A383005

/-- `val(record[A053165(n+1)], 2)` -/
def P7095652871984266379.Spec : Prop :=
  ∀ n, (P7095652871984266379.a n : ℤ) = A383005 (n + 1)

end A383005

/-! ## A383005.P10380495266408413679

`A007814(record[A117657(n+1)])`
-/

namespace A383005.P10380495266408413679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A383005.P10380495266408413679

namespace A383005

/-- `A007814(record[A117657(n+1)])` -/
def P10380495266408413679.Spec : Prop :=
  ∀ n, P10380495266408413679.a n = A383005 (n + 1)

end A383005

/-! ## A383005.P10376615106220805447

`A007814(eq[1, A008835(n+1)]+1)`
-/

namespace A383005.P10376615106220805447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A383005.P10376615106220805447

namespace A383005

/-- `A007814(eq[1, A008835(n+1)]+1)` -/
def P10376615106220805447.Spec : Prop :=
  ∀ n, P10376615106220805447.a n = A383005 (n + 1)

end A383005

/-! ## A383005.P8365772384241935446

`A191255(A048340(n+1))`
-/

namespace A383005.P8365772384241935446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191255 (A048340 (n + 1)).toNat

end

end A383005.P8365772384241935446

namespace A383005

/-- `A191255(A048340(n+1))` -/
def P8365772384241935446.Spec : Prop :=
  ∀ n, P8365772384241935446.a n = A383005 (n + 1)

end A383005

/-! ## A383005.P6330556284908716990

`A007814(lt[A137793(n+1), A253102(n)])`
-/

namespace A383005.P6330556284908716990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383005.P6330556284908716990

namespace A383005

/-- `A007814(lt[A137793(n+1), A253102(n)])` -/
def P6330556284908716990.Spec : Prop :=
  ∀ n, P6330556284908716990.a n = A383005 (n + 1)

end A383005

/-! ## A383005.P8895155136515762841

`A007814(lt[A340693(n+3), A253102(n)])`
-/

namespace A383005.P8895155136515762841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340693 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383005.P8895155136515762841

namespace A383005

/-- `A007814(lt[A340693(n+3), A253102(n)])` -/
def P8895155136515762841.Spec : Prop :=
  ∀ n, P8895155136515762841.a n = A383005 (n + 1)

end A383005

/-!
# A383006: Exponent of the highest power of 2 dividing the n-th powerful number.

The programs for A383006, there is no canonical definition to state claims against.
-/

/-! ## A383006.P3952314168244361145

`A007814(A001694(n+1))`
-/

namespace A383006.P3952314168244361145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A001694 (n + 1)).toNat

end

end A383006.P3952314168244361145

/-! ## A383006.P6326622819718315985

`val(A001694(n+1), 2)`
-/

namespace A383006.P6326622819718315985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001694 (n + 1)).toNat 2

end

end A383006.P6326622819718315985

/-! ## A383006.P6750991173205438703

`val(A374291(n+1), 4)`
-/

namespace A383006.P6750991173205438703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A374291 (n + 1)).toNat 4

end

end A383006.P6750991173205438703

/-! ## A383006.P11443860442674610721

`val(A224866(n+1)-1, 2)`
-/

namespace A383006.P11443860442674610721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A224866 (n + 1) - 1).toNat 2

end

end A383006.P11443860442674610721

/-! ## A383006.P17851659137170429956

`val(A369429(n+1)*A369430(n+1), 2)`
-/

namespace A383006.P17851659137170429956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A369429 (n + 1) * A369430 (n + 1)).toNat 2

end

end A383006.P17851659137170429956

/-! ## A383006.P17567509738047563943

`val(∪[A001597(n+1), A216427(n+1)], 2)`
-/

namespace A383006.P17567509738047563943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) 2

end

end A383006.P17567509738047563943

/-! ## A383006.P5188102962820528061

`val(∪[A025475(n+1), A286708(n+1)], 2)`
-/

namespace A383006.P5188102962820528061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) 2

end

end A383006.P5188102962820528061

/-! ## A383006.P820453660733420603

`val(record[A057521(n+1)], 2)`
-/

namespace A383006.P820453660733420603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A383006.P820453660733420603

/-! ## A383006.P14625537188508491987

`A007814(record[A057521(n+1)])`
-/

namespace A383006.P14625537188508491987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A383006.P14625537188508491987

/-! ## A383006.P10662130158949458105

`A007814(A224866(n+1)-1)`
-/

namespace A383006.P10662130158949458105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A224866 (n + 1) - 1).toNat

end

end A383006.P10662130158949458105

/-! ## A383006.P9503507573891852195

`A007814(∪[A001597(n+1), A216427(n+1)])`
-/

namespace A383006.P9503507573891852195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A383006.P9503507573891852195

/-! ## A383006.P1275516603454452523

`A001511(A001694(n+1))-A001511(2*n+1)`
-/

namespace A383006.P1275516603454452523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001694 (n + 1)).toNat - A001511 (2 * n + 1)

end

end A383006.P1275516603454452523

/-! ## A383006.P11339728574590591208

`A153284(2*(n+1))-A088705(A001694(n+1))`
-/

namespace A383006.P11339728574590591208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (2 * (n + 1)) - A088705 (A001694 (n + 1)).toNat

end

end A383006.P11339728574590591208

/-!
# A383007: Exponent of the highest power of 2 dividing the n-th cubefull number.

The programs for A383007, there is no canonical definition to state claims against.
-/

/-! ## A383007.P5854322125225394641

`A007814(A036966(n+1))`
-/

namespace A383007.P5854322125225394641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A036966 (n + 1)).toNat

end

end A383007.P5854322125225394641

/-! ## A383007.P9679668149952332866

`val(A036966(n+1), 2)`
-/

namespace A383007.P9679668149952332866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036966 (n + 1)).toNat 2

end

end A383007.P9679668149952332866

/-! ## A383007.P8259026499843310359

`val(∪[A076467(n+1), A389551(n+1)], 2)`
-/

namespace A383007.P8259026499843310359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) 2

end

end A383007.P8259026499843310359

/-! ## A383007.P6424070270980474157

`val(∪[A370787(n+1), A370788(n+1)], 2)`
-/

namespace A383007.P6424070270980474157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) 2

end

end A383007.P6424070270980474157

/-! ## A383007.P15859828350416791218

`A383006(A371185(n+1))`
-/

namespace A383007.P15859828350416791218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383006 (A371185 (n + 1)).toNat

end

end A383007.P15859828350416791218

/-! ## A383007.P13460854937679188153

`A001222(gcd(A036966(n+1), A056450(3*(n+1))))`
-/

namespace A383007.P13460854937679188153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A036966 (n + 1)) (A056450 (3 * (n + 1))))

end

end A383007.P13460854937679188153

/-! ## A383007.P9518002006297987559

`A135523(3*A036966(n+1))`
-/

namespace A383007.P9518002006297987559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (3 * A036966 (n + 1)).toNat

end

end A383007.P9518002006297987559

/-! ## A383007.P4150008714097882968

`val(record[(n+1)/A360539(n+1)], 2)`
-/

namespace A383007.P4150008714097882968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A360539 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat 2

end

end A383007.P4150008714097882968

/-! ## A383007.P17529673178705947205

`A001511(A036966(n+1))-A054977(n+4)`
-/

namespace A383007.P17529673178705947205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A036966 (n + 1)).toNat - A054977 (n + 4)

end

end A383007.P17529673178705947205

/-! ## A383007.P9526755944709362107

`A007814(∪[A036967(n+1), A376173(n+1)])`
-/

namespace A383007.P9526755944709362107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376173 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A383007.P9526755944709362107

/-!
# A383008: Indices of the even terms in the sequence of squarefree numbers.

The programs for A383008, the canonical program `A383008.P10745250568338898044` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383008 has offset 1).

The definition of A383008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383008.P7447697056164705401

`eq[0, A005117(1+n)%2]+1`
-/

namespace A383008.P7447697056164705401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005117 (1 + n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383008.P7447697056164705401

namespace A383008

/-- `eq[0, A005117(1+n)%2]+1` -/
def P7447697056164705401.Spec : Prop :=
  ∀ n, (P7447697056164705401.a n : ℤ) = A383008 (n + 1)

end A383008

/-! ## A383008.P2745925249225858960

`lt[A005117(n+1)%2, 1]+1`
-/

namespace A383008.P2745925249225858960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005117 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A383008.P2745925249225858960

namespace A383008

/-- `lt[A005117(n+1)%2, 1]+1` -/
def P2745925249225858960.Spec : Prop :=
  ∀ n, (P2745925249225858960.a n : ℤ) = A383008 (n + 1)

end A383008

/-! ## A383008.P10745250568338898044

`A013928(A160785(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A383008

/-- `A013928(A160785(n+1))` -/
def P10745250568338898044.Spec : Prop :=
  ∀ n, P10745250568338898044.a n = A383008 (n + 1)

theorem P10745250568338898044.correct : P10745250568338898044.Spec := by
  intro n
  simp only [A383008, Nat.add_sub_cancel]

end A383008

/-! ## A383008.P5519803854736234739

`A013928(A039956(n+1)+1)`
-/

namespace A383008.P5519803854736234739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A039956 (n + 1) + 1).toNat

end

end A383008.P5519803854736234739

namespace A383008

/-- `A013928(A039956(n+1)+1)` -/
def P5519803854736234739.Spec : Prop :=
  ∀ n, P5519803854736234739.a n = A383008 (n + 1)

end A383008

/-! ## A383008.P11092041431736268433

`lt[A400524(n+1), 1]+1`
-/

namespace A383008.P11092041431736268433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400524 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A383008.P11092041431736268433

namespace A383008

/-- `lt[A400524(n+1), 1]+1` -/
def P11092041431736268433.Spec : Prop :=
  ∀ n, (P11092041431736268433.a n : ℤ) = A383008 (n + 1)

end A383008

/-! ## A383008.P11131567399979352915

`lt[7*A373550(n+1), 5]+1`
-/

namespace A383008.P11131567399979352915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A373550 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A383008.P11131567399979352915

namespace A383008

/-- `lt[7*A373550(n+1), 5]+1` -/
def P11131567399979352915.Spec : Prop :=
  ∀ n, (P11131567399979352915.a n : ℤ) = A383008 (n + 1)

end A383008

/-! ## A383008.P3885256031067010081

`lt[A062503(n+1)%4, 1]+1`
-/

namespace A383008.P3885256031067010081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062503 (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A383008.P3885256031067010081

namespace A383008

/-- `lt[A062503(n+1)%4, 1]+1` -/
def P3885256031067010081.Spec : Prop :=
  ∀ n, (P3885256031067010081.a n : ℤ) = A383008 (n + 1)

end A383008

/-! ## A383008.P17828080684090484167

`record[A100112(2*(n+1))]`
-/

namespace A383008.P17828080684090484167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383008.P17828080684090484167

namespace A383008

/-- `record[A100112(2*(n+1))]` -/
def P17828080684090484167.Spec : Prop :=
  ∀ n, P17828080684090484167.a n = A383008 (n + 1)

end A383008

/-! ## A383008.P7117263958500036764

`A100112(A039956(n+1))`
-/

namespace A383008.P7117263958500036764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (A039956 (n + 1)).toNat

end

end A383008.P7117263958500036764

namespace A383008

/-- `A100112(A039956(n+1))` -/
def P7117263958500036764.Spec : Prop :=
  ∀ n, P7117263958500036764.a n = A383008 (n + 1)

end A383008

/-! ## A383008.P15659706187320874282

`A100112(2*A056911(n+1))`
-/

namespace A383008.P15659706187320874282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (2 * A056911 (n + 1)).toNat

end

end A383008.P15659706187320874282

namespace A383008

/-- `A100112(2*A056911(n+1))` -/
def P15659706187320874282.Spec : Prop :=
  ∀ n, P15659706187320874282.a n = A383008 (n + 1)

end A383008

/-! ## A383008.P10753779391691116851

`A100112(A056911(n+1)+A056911(n+1))`
-/

namespace A383008.P10753779391691116851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (A056911 (n + 1) + A056911 (n + 1)).toNat

end

end A383008.P10753779391691116851

namespace A383008

/-- `A100112(A056911(n+1)+A056911(n+1))` -/
def P10753779391691116851.Spec : Prop :=
  ∀ n, P10753779391691116851.a n = A383008 (n + 1)

end A383008

/-! ## A383008.P7518138040603540586

`A262869(A081770(n+1))`
-/

namespace A383008.P7518138040603540586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A081770 (n + 1)).toNat

end

end A383008.P7518138040603540586

namespace A383008

/-- `A262869(A081770(n+1))` -/
def P7518138040603540586.Spec : Prop :=
  ∀ n, P7518138040603540586.a n = A383008 (n + 1)

end A383008

/-!
# A383009: Indices of the even terms in the sequence of cubefree numbers.

The programs for A383009, the canonical program `A383009.P17608928829645689233` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383009 has offset 1).

The definition of A383009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383009.P17608928829645689233

`lt[A004709(n+1)%2, 1]+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A383009

/-- `lt[A004709(n+1)%2, 1]+1` -/
def P17608928829645689233.Spec : Prop :=
  ∀ n, (P17608928829645689233.a n : ℤ) = A383009 (n + 1)

theorem P17608928829645689233.correct : P17608928829645689233.Spec := by
  intro n
  simp only [A383009, Nat.add_sub_cancel]

end A383009

/-! ## A383009.P11265030574043708845

`record[(A242867(n+1)%2+1)*(n+1)]`
-/

namespace A383009.P11265030574043708845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A242867 (n + 1)) 2 + 1) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383009.P11265030574043708845

namespace A383009

/-- `record[(A242867(n+1)%2+1)*(n+1)]` -/
def P11265030574043708845.Spec : Prop :=
  ∀ n, P11265030574043708845.a n = A383009 (n + 1)

end A383009

/-! ## A383009.P14092910256776565978

`eq[2, A020639(A004709(n+1))]+1`
-/

namespace A383009.P14092910256776565978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004709 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383009.P14092910256776565978

namespace A383009

/-- `eq[2, A020639(A004709(n+1))]+1` -/
def P14092910256776565978.Spec : Prop :=
  ∀ n, (P14092910256776565978.a n : ℤ) = A383009 (n + 1)

end A383009

/-! ## A383009.P13095192028347869059

`eq[0, record[A050985(n+1)]%2]+1`
-/

namespace A383009.P13095192028347869059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383009.P13095192028347869059

namespace A383009

/-- `eq[0, record[A050985(n+1)]%2]+1` -/
def P13095192028347869059.Spec : Prop :=
  ∀ n, (P13095192028347869059.a n : ℤ) = A383009 (n + 1)

end A383009

/-! ## A383009.P2286865452175562340

`eq[1, A000034(A277803(n+1))]+1`
-/

namespace A383009.P2286865452175562340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A277803 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383009.P2286865452175562340

namespace A383009

/-- `eq[1, A000034(A277803(n+1))]+1` -/
def P2286865452175562340.Spec : Prop :=
  ∀ n, (P2286865452175562340.a n : ℤ) = A383009 (n + 1)

end A383009

/-!
# A383010: a(n) = -Sum_{d|n} (-n)^d.

The programs for A383010, the canonical program `A383010.P10645676301101535176` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383010 has offset 1).

The definition of A383010 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-∑{d}[n+1, (-(n+1))^#]` (program `A383010.P10645676301101535176`, by `A383010.P10645676301101535176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383010.P10645676301101535176

`-∑{d}[n+1, (-(n+1))^#]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383010

/-- `-∑{d}[n+1, (-(n+1))^#]` -/
def P10645676301101535176.Spec : Prop :=
  ∀ n, P10645676301101535176.a n = A383010 (n + 1)

theorem P10645676301101535176.correct : P10645676301101535176.Spec := by
  intro n
  simp only [A383010, Nat.add_sub_cancel]

end A383010

/-! ## A383010.P5109531291678626537

`∑{d}[n+1, -(-(n+1))^#]`
-/

namespace A383010.P5109531291678626537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-((-(n + 1 : ℤ)) ^ d))

end

end A383010.P5109531291678626537

namespace A383010

/-- `∑{d}[n+1, -(-(n+1))^#]` -/
def P5109531291678626537.Spec : Prop :=
  ∀ n, P5109531291678626537.a n = A383010 (n + 1)

theorem P5109531291678626537.correct : P5109531291678626537.Spec := by
  intro n
  simp only [A383010, Nat.add_sub_cancel, A383010.P5109531291678626537.f1, A383010.P5109531291678626537.a, A383010.P10645676301101535176.f1, A383010.P10645676301101535176.a, SequenceMachineLib.memo_apply]
  try simp

end A383010

/-! ## A383010.P1010059402363627246

`(n+1)*A383003(n+1)`
-/

namespace A383010.P1010059402363627246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A383003 (n + 1)

end

end A383010.P1010059402363627246

namespace A383010

/-- `(n+1)*A383003(n+1)` -/
def P1010059402363627246.Spec : Prop :=
  ∀ n, P1010059402363627246.a n = A383010 (n + 1)

end A383010

/-!
# A383012: a(n) = Sum_{d|n} mu(n/d) * (-n)^(d-1).

The programs for A383012, the canonical program `A383012.P15133058864581982057` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383012 has offset 1).

The definition of A383012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383012.P15133058864581982057

`∑{d}[n+1, A008683((n+1)/#)*(-(n+1))^(#-1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A383012

/-- `∑{d}[n+1, A008683((n+1)/#)*(-(n+1))^(#-1)]` -/
def P15133058864581982057.Spec : Prop :=
  ∀ n, P15133058864581982057.a n = (A383012 (n + 1) : ℚ)

end A383012

/-! ## A383012.P166395560542708410

`A383011((n+1)²+n²)`
-/

namespace A383012.P166395560542708410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383011 ((n + 1) ^ 2 + n ^ 2)

end

end A383012.P166395560542708410

namespace A383012

/-- `A383011((n+1)²+n²)` -/
def P166395560542708410.Spec : Prop :=
  ∀ n, P166395560542708410.a n = A383012 (n + 1)

end A383012

/-! ## A383012.P5521555122526846059

`A383011(A001844(n))+A000007(2*n+1)`
-/

namespace A383012.P5521555122526846059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383011 (A001844 n).toNat + A000007 (2 * n + 1)

end

end A383012.P5521555122526846059

namespace A383012

/-- `A383011(A001844(n))+A000007(2*n+1)` -/
def P5521555122526846059.Spec : Prop :=
  ∀ n, P5521555122526846059.a n = A383012 (n + 1)

end A383012

/-!
# A383013: Number of integer partitions of n having a permutation with all equal run-lengths.

The programs for A383013, there is no canonical definition to state claims against.
-/

/-! ## A383013.P13955049187056389806

`A000041(n)-A382915(n)`
-/

namespace A383013.P13955049187056389806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A382915 n

end

end A383013.P13955049187056389806

/-! ## A383013.P15113085027120403264

`∑[A002865(n)]-A382915(n)`
-/

namespace A383013.P15113085027120403264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A382915 n

end

end A383013.P15113085027120403264

/-! ## A383013.P8137043946782766401

`A035363(2*n)-A382915(n)`
-/

namespace A383013.P8137043946782766401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A382915 n

end

end A383013.P8137043946782766401

/-! ## A383013.P5363798065506612988

`∑[A085811(n+3)]-A382915(n)`
-/

namespace A383013.P5363798065506612988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A382915 n

end

end A383013.P5363798065506612988

/-! ## A383013.P7468368678873744785

`∑{d}[n+1, A133732(#)]-A382915(n)`
-/

namespace A383013.P7468368678873744785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133732 d - A382915 n

end

end A383013.P7468368678873744785

/-! ## A383013.P15196901449619252451

`A119620(A005843(n))-A382915(n)`
-/

namespace A383013.P15196901449619252451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (A005843 n).toNat - A382915 n

end

end A383013.P15196901449619252451

/-! ## A383013.P8971010892098391340

`A383094(n)+A383090(n)`
-/

namespace A383013.P8971010892098391340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383094 n + A383090 n

end

end A383013.P8971010892098391340

/-! ## A383013.P15792099978661042702

`A383096(n)+A383098(n)-A382915(n)`
-/

namespace A383013.P15792099978661042702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383096 n + (A383098 n - A382915 n)

end

end A383013.P15792099978661042702

/-!
# A383014: Numbers whose prime indices can be partitioned into constant blocks with a common sum.

The programs for A383014, there is no canonical definition to state claims against.
-/

/-! ## A383014.P14775338891704897135

`filter[A326841(1+n), A340372(#)]`
-/

namespace A383014.P14775338891704897135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A383014.P14775338891704897135

/-! ## A383014.P13838487931948329079

`∪[A001394(n), A383110(n+1)]`
-/

namespace A383014.P13838487931948329079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383014.P13838487931948329079

/-! ## A383014.P14126873617756806013

`∪[A003946(n), A383110(n+1)]`
-/

namespace A383014.P14126873617756806013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383014.P14126873617756806013

/-! ## A383014.P17104392158132636799

`∪[A006817(n), A383110(n+1)]`
-/

namespace A383014.P17104392158132636799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006817 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383014.P17104392158132636799

/-! ## A383014.P9882750331496603848

`∪[A026726(n), A383110(n+1)]`
-/

namespace A383014.P9882750331496603848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383014.P9882750331496603848

/-! ## A383014.P3273201767169500684

`∪[A027327(n), A383110(n+1)]`
-/

namespace A383014.P3273201767169500684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027327 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383014.P3273201767169500684

/-! ## A383014.P17523823629525627561

`∪[A041120(n), A383110(n+1)]`
-/

namespace A383014.P17523823629525627561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383014.P17523823629525627561

/-! ## A383014.P2455730931606743833

`∪[A383110(n+1), A052254(n)]`
-/

namespace A383014.P2455730931606743833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052254 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383014.P2455730931606743833

/-! ## A383014.P5744015472103739808

`∪[A383110(n+1), A056001(n)]`
-/

namespace A383014.P5744015472103739808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056001 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383014.P5744015472103739808

/-! ## A383014.P16832808293523308338

`∪[A383110(n+1), A062749(n)]`
-/

namespace A383014.P16832808293523308338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062749 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383014.P16832808293523308338

/-!
# A383015: Numbers whose prime indices have more than one permutation with all equal run-sums.

The programs for A383015, there is no canonical definition to state claims against.
-/

/-! ## A383015.P12132290544043591746

`filter[A353834(n+1), A065202(#)]`
-/

namespace A383015.P12132290544043591746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A383015.P12132290544043591746

/-! ## A383015.P11198640062652195538

`filter[A353834(n+1), A143731(#)]`
-/

namespace A383015.P11198640062652195538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A383015.P11198640062652195538

/-! ## A383015.P1523896023292496444

`filter[A353834(n+1), A355447(#)]`
-/

namespace A383015.P1523896023292496444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A383015.P1523896023292496444

/-! ## A383015.P11252846324938342212

`∩[A024619(n+1), A353834(n+1)]`
-/

namespace A383015.P11252846324938342212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383015.P11252846324938342212

/-! ## A383015.P2376416672451838316

`∩[A027854(n+1), A353834(n+1)]`
-/

namespace A383015.P2376416672451838316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383015.P2376416672451838316

/-!
# A383016: Numbers k such that A382883(k) = 1.

The programs for A383016, there is no canonical definition to state claims against.
-/

/-! ## A383016.P4503224729324148118

`eq[1, A382883(n+1)]+1`
-/

namespace A383016.P4503224729324148118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382883 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383016.P4503224729324148118

/-! ## A383016.P9513319113604265711

`eq[1, A383575(1+n)]+1`
-/

namespace A383016.P9513319113604265711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383575 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383016.P9513319113604265711

/-! ## A383016.P9870616753030122231

`filter[A077156(n), A382883(#)]`
-/

namespace A383016.P9870616753030122231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A382883 (f1 j).toNat = 1) n)

end

end A383016.P9870616753030122231

/-! ## A383016.P9377813970246591866

`filter[A077156(n), A383575(#)]`
-/

namespace A383016.P9377813970246591866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383575 (f1 j).toNat = 1) n)

end

end A383016.P9377813970246591866

/-! ## A383016.P16389282675810445769

`filter[A077157(n), A383575(#)]`
-/

namespace A383016.P16389282675810445769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383575 (f1 j).toNat = 1) n)

end

end A383016.P16389282675810445769

/-! ## A383016.P9110548452955986279

`filter[A085924(n), A383575(#)]`
-/

namespace A383016.P9110548452955986279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383575 (f1 j).toNat = 1) n)

end

end A383016.P9110548452955986279

/-! ## A383016.P2108902809766820027

`filter[A085924(n), A385055(#)]`
-/

namespace A383016.P2108902809766820027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385055 (f1 j).toNat = 1) n)

end

end A383016.P2108902809766820027

/-! ## A383016.P17715640471045497171

`filter[A089088(n), A383575(#)]`
-/

namespace A383016.P17715640471045497171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383575 (f1 j).toNat = 1) n)

end

end A383016.P17715640471045497171

/-! ## A383016.P7951397336130977026

`filter[A003619(n+1), A383575(#)]`
-/

namespace A383016.P7951397336130977026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383575 (f1 j).toNat = 1) n)

end

end A383016.P7951397336130977026

/-! ## A383016.P4486439260889284034

`filter[A018252(n+1), A383575(#)]`
-/

namespace A383016.P4486439260889284034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383575 (f1 j).toNat = 1) n)

end

end A383016.P4486439260889284034

/-!
# A383017: Numbers k such that A382883(k) = -1.

The programs for A383017, there is no canonical definition to state claims against.
-/

/-! ## A383017.P17723341545120326637

`lt[A382883(n+1), 0]+1`
-/

namespace A383017.P17723341545120326637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382883 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A383017.P17723341545120326637

/-! ## A383017.P15163542028571561133

`eq[1, A383576(n+1)]+1`
-/

namespace A383017.P15163542028571561133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383017.P15163542028571561133

/-! ## A383017.P8633833468266237615

`filter[A085924(n), A383576(#)]`
-/

namespace A383017.P8633833468266237615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383576 (f1 j).toNat = 1) n)

end

end A383017.P8633833468266237615

/-! ## A383017.P736989597517112183

`filter[A152271(n), A383576(#)]`
-/

namespace A383017.P736989597517112183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383576 (f1 j).toNat = 1) n)

end

end A383017.P736989597517112183

/-! ## A383017.P9081053241363128965

`filter[A158416(n), A383576(#)]`
-/

namespace A383017.P9081053241363128965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383576 (f1 j).toNat = 1) n)

end

end A383017.P9081053241363128965

/-! ## A383017.P15099393866396630035

`filter[A248182(n), A383576(#)]`
-/

namespace A383017.P15099393866396630035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383576 (f1 j).toNat = 1) n)

end

end A383017.P15099393866396630035

/-! ## A383017.P7243371905086036840

`filter[A344180(n), A383576(#)]`
-/

namespace A383017.P7243371905086036840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383576 (f1 j).toNat = 1) n)

end

end A383017.P7243371905086036840

/-! ## A383017.P13837807121297440973

`filter[A031980(n+1), A383576(#)]`
-/

namespace A383017.P13837807121297440973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383576 (f1 j).toNat = 1) n)

end

end A383017.P13837807121297440973

/-! ## A383017.P17633722327635041679

`filter[A054027(n+1), A383576(#)]`
-/

namespace A383017.P17633722327635041679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383576 (f1 j).toNat = 1) n)

end

end A383017.P17633722327635041679

/-! ## A383017.P6994099535780145597

`filter[A062770(n+1), A383576(#)]`
-/

namespace A383017.P6994099535780145597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383576 (f1 j).toNat = 1) n)

end

end A383017.P6994099535780145597

/-!
# A383018: Numbers k such that A008683(k) = 0 and A382883(k) = -1.

The programs for A383018, there is no canonical definition to state claims against.
-/

/-! ## A383018.P15962196200454859216

`∪[A085986(n+1), A186637(n+1)]`
-/

namespace A383018.P15962196200454859216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383018.P15962196200454859216

/-! ## A383018.P3782238765130664491

`∪[A186637(n+1), A272190(n+1)]`
-/

namespace A383018.P3782238765130664491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383018.P3782238765130664491

/-! ## A383018.P1819593668524509275

`filter[A000379(n+1), A383576(#)]`
-/

namespace A383018.P1819593668524509275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383576 (f1 j).toNat = 1) n)

end

end A383018.P1819593668524509275

/-! ## A383018.P7167669013579126458

`filter[A001597(n+1), A383576(#)]`
-/

namespace A383018.P7167669013579126458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383576 (f1 j).toNat = 1) n)

end

end A383018.P7167669013579126458

/-! ## A383018.P10704502996289384839

`filter[A001694(n+1), A383576(#)]`
-/

namespace A383018.P10704502996289384839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383576 (f1 j).toNat = 1) n)

end

end A383018.P10704502996289384839

/-!
# A383023: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where A(n,k) is the n-th term of the inverse Weigh transform of j-> k^j.

The programs for A383023, there is no canonical definition to state claims against.
-/

/-! ## A383023.P6986415844785354089

`A212139(n+1)-A353528(A233374(n+1))`
-/

namespace A383023.P6986415844785354089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212139 (n + 1) - A353528 (A233374 (n + 1)).toNat

end

end A383023.P6986415844785354089

/-! ## A383023.P5121415544979675281

`A093430(n+1)%A111521(A226387(n+4))`
-/

namespace A383023.P5121415544979675281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093430 (n + 1)) (A111521 (A226387 (n + 4)).toNat)

end

end A383023.P5121415544979675281

/-!
# A383025: Centered pentagonal numbers that are deficient.

The programs for A383025, the canonical program `A383025.P585027559849338286` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383025 has offset 1).

The definition of A383025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383025.P585027559849338286

`filter[A005891(n), A294934(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A383025

/-- `filter[A005891(n), A294934(#)]` -/
def P585027559849338286.Spec : Prop :=
  ∀ n, P585027559849338286.a n = A383025 (n + 1)

theorem P585027559849338286.correct : P585027559849338286.Spec := by
  intro n
  simp only [A383025, Nat.add_sub_cancel]

end A383025

/-! ## A383025.P5436099910429301722

`filter[A087099(2*n+1), A294934(#)]`
-/

namespace A383025.P5436099910429301722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087099 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A383025.P5436099910429301722

namespace A383025

/-- `filter[A087099(2*n+1), A294934(#)]` -/
def P5436099910429301722.Spec : Prop :=
  ∀ n, P5436099910429301722.a n = A383025 (n + 1)

end A383025

/-! ## A383025.P6254070357617808261

`filter[A111712(2*n+1), A294934(#)]`
-/

namespace A383025.P6254070357617808261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111712 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A383025.P6254070357617808261

namespace A383025

/-- `filter[A111712(2*n+1), A294934(#)]` -/
def P6254070357617808261.Spec : Prop :=
  ∀ n, P6254070357617808261.a n = A383025 (n + 1)

end A383025

/-! ## A383025.P3103637313921657487

`filter[A330133(2*n+1), A294934(#)]`
-/

namespace A383025.P3103637313921657487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330133 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A383025.P3103637313921657487

namespace A383025

/-- `filter[A330133(2*n+1), A294934(#)]` -/
def P3103637313921657487.Spec : Prop :=
  ∀ n, P3103637313921657487.a n = A383025 (n + 1)

end A383025

/-! ## A383025.P2875218385854117956

`∩[A083210(n+1), A005891(n)]`
-/

namespace A383025.P2875218385854117956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383025.P2875218385854117956

namespace A383025

/-- `∩[A083210(n+1), A005891(n)]` -/
def P2875218385854117956.Spec : Prop :=
  ∀ n, (P2875218385854117956.a n : ℤ) = A383025 (n + 1)

end A383025

/-! ## A383025.P11848120508715398520

`∩[A005100(n+1), A005891(n)]`
-/

namespace A383025.P11848120508715398520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383025.P11848120508715398520

namespace A383025

/-- `∩[A005100(n+1), A005891(n)]` -/
def P11848120508715398520.Spec : Prop :=
  ∀ n, (P11848120508715398520.a n : ℤ) = A383025 (n + 1)

end A383025

/-! ## A383025.P2965201263812040711

`∩[A136447(n+1), A005891(n)]`
-/

namespace A383025.P2965201263812040711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383025.P2965201263812040711

namespace A383025

/-- `∩[A136447(n+1), A005891(n)]` -/
def P2965201263812040711.Spec : Prop :=
  ∀ n, (P2965201263812040711.a n : ℤ) = A383025 (n + 1)

end A383025

/-! ## A383025.P17408164938311538871

`∩[A094520(n+1), A005891(n)]`
-/

namespace A383025.P17408164938311538871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383025.P17408164938311538871

namespace A383025

/-- `∩[A094520(n+1), A005891(n)]` -/
def P17408164938311538871.Spec : Prop :=
  ∀ n, (P17408164938311538871.a n : ℤ) = A383025 (n + 1)

end A383025

/-!
# A383027: a(n) is the number whose reversed n-digit square is the largest among all reversals of n-digit squares.

The programs for A383027, there is no canonical definition to state claims against.
-/

/-! ## A383027.P16995193843237459180

`A163466(A301696(n))`
-/

namespace A383027.P16995193843237459180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163466 (A301696 n).toNat

end

end A383027.P16995193843237459180

/-!
# A383028: Third center column of elementary triangular automaton rule 146, starting from a lone 1 cell.

The programs for A383028, there is no canonical definition to state claims against.
-/

/-! ## A383028.P10329685276894472420

`1-Δ[A382972(n)]²`
-/

namespace A383028.P10329685276894472420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) ^ 2

end

end A383028.P10329685276894472420

/-! ## A383028.P1598983339684953158

`1-A382972(A109613(n))`
-/

namespace A383028.P1598983339684953158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A382972 (A109613 n).toNat

end

end A383028.P1598983339684953158

/-! ## A383028.P16635883226524026883

`A014375(abs(Δ[A382972(n)]))`
-/

namespace A383028.P16635883226524026883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014375 |f1 (n + 1) - f1 n|.toNat

end

end A383028.P16635883226524026883

/-! ## A383028.P4111283766123589220

`A084938(abs(Δ[A382972(n)]))`
-/

namespace A383028.P4111283766123589220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 |f1 (n + 1) - f1 n|.toNat

end

end A383028.P4111283766123589220

/-! ## A383028.P16373207347402444132

`A059841(Δ[A382972(n)]²)`
-/

namespace A383028.P16373207347402444132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A383028.P16373207347402444132

/-! ## A383028.P598071955647659121

`A084938(Δ[A382972(n)]²)`
-/

namespace A383028.P598071955647659121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A383028.P598071955647659121

/-! ## A383028.P15652612996766581898

`A382972(Δ[A382972(n)]+1)`
-/

namespace A383028.P15652612996766581898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382972 (f1 (n + 1) - f1 n + 1).toNat

end

end A383028.P15652612996766581898

/-!
# A383029: Exponent of the highest power of 2 dividing the n-th exponentially odd number.

The programs for A383029, the canonical program `A383029.P14010590280283821526` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383029 has offset 1).

The definition of A383029 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268335, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A383029.P14010590280283821526

`A007814(A268335(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A383029

/-- `A007814(A268335(n+1))` -/
def P14010590280283821526.Spec : Prop :=
  ∀ n, P14010590280283821526.a n = A383029 (n + 1)

theorem P14010590280283821526.correct : P14010590280283821526.Spec := by
  intro n
  simp only [A383029, Nat.add_sub_cancel]

end A383029

/-! ## A383029.P9197329897417244173

`val(A268335(n+1), 2)`
-/

namespace A383029.P9197329897417244173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A268335 (n + 1)).toNat 2

end

end A383029.P9197329897417244173

namespace A383029

/-- `val(A268335(n+1), 2)` -/
def P9197329897417244173.Spec : Prop :=
  ∀ n, (P9197329897417244173.a n : ℤ) = A383029 (n + 1)

end A383029

/-! ## A383029.P7767109510632121262

`val(A374458(n+1), 4)`
-/

namespace A383029.P7767109510632121262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A374458 (n + 1)).toNat 4

end

end A383029.P7767109510632121262

namespace A383029

/-- `val(A374458(n+1), 4)` -/
def P7767109510632121262.Spec : Prop :=
  ∀ n, (P7767109510632121262.a n : ℤ) = A383029 (n + 1)

end A383029

/-! ## A383029.P1542865461812744286

`val(eq[1, gcd(2, A072411(n+1))]+1, 2)`
-/

namespace A383029.P1542865461812744286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A072411 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) 2

end

end A383029.P1542865461812744286

namespace A383029

/-- `val(eq[1, gcd(2, A072411(n+1))]+1, 2)` -/
def P1542865461812744286.Spec : Prop :=
  ∀ n, (P1542865461812744286.a n : ℤ) = A383029 (n + 1)

end A383029

/-! ## A383029.P5718686278722482224

`val(record[A350389(n+1)], 2)`
-/

namespace A383029.P5718686278722482224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A383029.P5718686278722482224

namespace A383029

/-- `val(record[A350389(n+1)], 2)` -/
def P5718686278722482224.Spec : Prop :=
  ∀ n, (P5718686278722482224.a n : ℤ) = A383029 (n + 1)

end A383029

/-! ## A383029.P3360080845501599431

`val(record[A350390(n+1)], 2)`
-/

namespace A383029.P3360080845501599431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A383029.P3360080845501599431

namespace A383029

/-- `val(record[A350390(n+1)], 2)` -/
def P3360080845501599431.Spec : Prop :=
  ∀ n, (P3360080845501599431.a n : ℤ) = A383029 (n + 1)

end A383029

/-! ## A383029.P14690740081085548684

`A007814(record[A350389(n+1)])`
-/

namespace A383029.P14690740081085548684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A383029.P14690740081085548684

namespace A383029

/-- `A007814(record[A350389(n+1)])` -/
def P14690740081085548684.Spec : Prop :=
  ∀ n, P14690740081085548684.a n = A383029 (n + 1)

end A383029

/-! ## A383029.P4416212418028952143

`A001511(record[A331737(n+1)])-1`
-/

namespace A383029.P4416212418028952143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A383029.P4416212418028952143

namespace A383029

/-- `A001511(record[A331737(n+1)])-1` -/
def P4416212418028952143.Spec : Prop :=
  ∀ n, P4416212418028952143.a n = A383029 (n + 1)

end A383029

/-! ## A383029.P8200363081260989708

`A001511(eq[0, A351572(n+1)]+1)-1`
-/

namespace A383029.P8200363081260989708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A383029.P8200363081260989708

namespace A383029

/-- `A001511(eq[0, A351572(n+1)]+1)-1` -/
def P8200363081260989708.Spec : Prop :=
  ∀ n, P8200363081260989708.a n = A383029 (n + 1)

end A383029

/-! ## A383029.P5012834514934148055

`A001511(eq[1, A331738(n+1)]+1)-1`
-/

namespace A383029.P5012834514934148055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A383029.P5012834514934148055

namespace A383029

/-- `A001511(eq[1, A331738(n+1)]+1)-1` -/
def P5012834514934148055.Spec : Prop :=
  ∀ n, P5012834514934148055.a n = A383029 (n + 1)

end A383029

/-! ## A383029.P2804004879330331703

`A001511(eq[1, A351568(n+1)]+1)-1`
-/

namespace A383029.P2804004879330331703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A383029.P2804004879330331703

namespace A383029

/-- `A001511(eq[1, A351568(n+1)]+1)-1` -/
def P2804004879330331703.Spec : Prop :=
  ∀ n, P2804004879330331703.a n = A383029 (n + 1)

end A383029

/-! ## A383029.P11227427536582468459

`A001511(lt[A351570(n+1), 1]+1)-1`
-/

namespace A383029.P11227427536582468459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351570 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - 1

end

end A383029.P11227427536582468459

namespace A383029

/-- `A001511(lt[A351570(n+1), 1]+1)-1` -/
def P11227427536582468459.Spec : Prop :=
  ∀ n, P11227427536582468459.a n = A383029 (n + 1)

end A383029

/-! ## A383029.P2830796232176141394

`∑{e}[A006519(eq[1, A331738(n+1)]+1), #]`
-/

namespace A383029.P2830796232176141394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A383029.P2830796232176141394

namespace A383029

/-- `∑{e}[A006519(eq[1, A331738(n+1)]+1), #]` -/
def P2830796232176141394.Spec : Prop :=
  ∀ n, (P2830796232176141394.a n : ℤ) = A383029 (n + 1)

end A383029

/-! ## A383029.P11471603753603503211

`∑{e}[A006519(A367417(n+1)*A367418(n+1)), #]`
-/

namespace A383029.P11471603753603503211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A367417 (n + 1) * A367418 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A383029.P11471603753603503211

namespace A383029

/-- `∑{e}[A006519(A367417(n+1)*A367418(n+1)), #]` -/
def P11471603753603503211.Spec : Prop :=
  ∀ n, (P11471603753603503211.a n : ℤ) = A383029 (n + 1)

end A383029

/-! ## A383029.P9221041606814581991

`A001222(gcd(A000079(n), A268335(n+1)))`
-/

namespace A383029.P9221041606814581991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000079 n) (A268335 (n + 1)))

end

end A383029.P9221041606814581991

namespace A383029

/-- `A001222(gcd(A000079(n), A268335(n+1)))` -/
def P9221041606814581991.Spec : Prop :=
  ∀ n, P9221041606814581991.a n = A383029 (n + 1)

end A383029

/-! ## A383029.P4239891320313979928

`A235127(A374458(n+1))`
-/

namespace A383029.P4239891320313979928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A374458 (n + 1)).toNat

end

end A383029.P4239891320313979928

namespace A383029

/-- `A235127(A374458(n+1))` -/
def P4239891320313979928.Spec : Prop :=
  ∀ n, P4239891320313979928.a n = A383029 (n + 1)

end A383029

/-!
# A383030: Indices of the even terms in the sequence of exponentially odd numbers.

The programs for A383030, the canonical program `A383030.P6017071897384222791` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383030 has offset 1).

The definition of A383030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383030.P6017071897384222791

`lt[A268335(n+1)%2, 1]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A383030

/-- `lt[A268335(n+1)%2, 1]+1` -/
def P6017071897384222791.Spec : Prop :=
  ∀ n, (P6017071897384222791.a n : ℤ) = A383030 (n + 1)

theorem P6017071897384222791.correct : P6017071897384222791.Spec := by
  intro n
  simp only [A383030, Nat.add_sub_cancel]

end A383030

/-! ## A383030.P7263767499943044680

`eq[0, A166698(A268335(n+1))]+1`
-/

namespace A383030.P7263767499943044680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A268335 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383030.P7263767499943044680

namespace A383030

/-- `eq[0, A166698(A268335(n+1))]+1` -/
def P7263767499943044680.Spec : Prop :=
  ∀ n, (P7263767499943044680.a n : ℤ) = A383030 (n + 1)

end A383030

/-! ## A383030.P4248624320501318018

`lt[A000806(A383029(n+1)), 1]+1`
-/

namespace A383030.P4248624320501318018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000806 (A383029 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A383030.P4248624320501318018

namespace A383030

/-- `lt[A000806(A383029(n+1)), 1]+1` -/
def P4248624320501318018.Spec : Prop :=
  ∀ n, (P4248624320501318018.a n : ℤ) = A383030 (n + 1)

end A383030

/-! ## A383030.P8891250611515241516

`lt[2, A020639(A268335(n+1)+1)]+1`
-/

namespace A383030.P8891250611515241516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A268335 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A383030.P8891250611515241516

namespace A383030

/-- `lt[2, A020639(A268335(n+1)+1)]+1` -/
def P8891250611515241516.Spec : Prop :=
  ∀ n, (P8891250611515241516.a n : ℤ) = A383030 (n + 1)

end A383030

/-! ## A383030.P1914423633469074553

`lt[A007814((A268335(n+1)-A076479(n+2))²), 1]+1`
-/

namespace A383030.P1914423633469074553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((A268335 (n + 1) - A076479 (n + 2)) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A383030.P1914423633469074553

namespace A383030

/-- `lt[A007814((A268335(n+1)-A076479(n+2))²), 1]+1` -/
def P1914423633469074553.Spec : Prop :=
  ∀ n, (P1914423633469074553.a n : ℤ) = A383030 (n + 1)

end A383030

/-!
# A383031: Indices of the squarefree terms in the sequence of exponentially odd numbers.

The programs for A383031, the canonical program `A383031.P8911448093977400013` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383031 has offset 1).

The definition of A383031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8620 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383031.P10391660366772893822

`eq[1, A367418(n+1)]+1`
-/

namespace A383031.P10391660366772893822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383031.P10391660366772893822

namespace A383031

/-- `eq[1, A367418(n+1)]+1` -/
def P10391660366772893822.Spec : Prop :=
  ∀ n, (P10391660366772893822.a n : ℤ) = A383031 (n + 1)

end A383031

/-! ## A383031.P15045806136415965544

`eq[1, A367419(n+1)]+1`
-/

namespace A383031.P15045806136415965544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383031.P15045806136415965544

namespace A383031

/-- `eq[1, A367419(n+1)]+1` -/
def P15045806136415965544.Spec : Prop :=
  ∀ n, (P15045806136415965544.a n : ℤ) = A383031 (n + 1)

end A383031

/-! ## A383031.P8911448093977400013

`eq[1, A368472(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A383031

/-- `eq[1, A368472(n+1)]+1` -/
def P8911448093977400013.Spec : Prop :=
  ∀ n, (P8911448093977400013.a n : ℤ) = A383031 (n + 1)

theorem P8911448093977400013.correct : P8911448093977400013.Spec := by
  intro n
  simp only [A383031, Nat.add_sub_cancel]

end A383031

/-! ## A383031.P10141046226127393701

`eq[1, A380323(n+1)]+1`
-/

namespace A383031.P10141046226127393701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383031.P10141046226127393701

namespace A383031

/-- `eq[1, A380323(n+1)]+1` -/
def P10141046226127393701.Spec : Prop :=
  ∀ n, (P10141046226127393701.a n : ℤ) = A383031 (n + 1)

end A383031

/-! ## A383031.P17553698169015512209

`eq[1, A380324(n+1)]+1`
-/

namespace A383031.P17553698169015512209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A383031.P17553698169015512209

namespace A383031

/-- `eq[1, A380324(n+1)]+1` -/
def P17553698169015512209.Spec : Prop :=
  ∀ n, (P17553698169015512209.a n : ℤ) = A383031 (n + 1)

end A383031

/-! ## A383031.P9880573874918829978

`lt[A368711(n+1), 2]+1`
-/

namespace A383031.P9880573874918829978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368711 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A383031.P9880573874918829978

namespace A383031

/-- `lt[A368711(n+1), 2]+1` -/
def P9880573874918829978.Spec : Prop :=
  ∀ n, (P9880573874918829978.a n : ℤ) = A383031 (n + 1)

end A383031

/-! ## A383031.P10893256472005150202

`lt[n, A367417(n+1)]+1`
-/

namespace A383031.P10893256472005150202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A383031.P10893256472005150202

namespace A383031

/-- `lt[n, A367417(n+1)]+1` -/
def P10893256472005150202.Spec : Prop :=
  ∀ n, (P10893256472005150202.a n : ℤ) = A383031 (n + 1)

end A383031

/-!
# A383032: Exponent of the highest power of 2 dividing the n-th number that is either a square or twice a square.

The programs for A383032, the canonical program `A383032.P9967081723231949955` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383032 has offset 1).

The definition of A383032 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028982, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A383032.P9967081723231949955

`A007814(A028982(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A383032

/-- `A007814(A028982(n+1))` -/
def P9967081723231949955.Spec : Prop :=
  ∀ n, P9967081723231949955.a n = A383032 (n + 1)

theorem P9967081723231949955.correct : P9967081723231949955.Spec := by
  intro n
  simp only [A383032, Nat.add_sub_cancel]

end A383032

/-! ## A383032.P1088042047258134500

`val(∪[2*(n+1)², (n+1)²], 2)`
-/

namespace A383032.P1088042047258134500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n) 2

end

end A383032.P1088042047258134500

namespace A383032

/-- `val(∪[2*(n+1)², (n+1)²], 2)` -/
def P1088042047258134500.Spec : Prop :=
  ∀ n, (P1088042047258134500.a n : ℤ) = A383032 (n + 1)

end A383032

/-! ## A383032.P16309839113678773205

`val(A028982(n+1), 2)`
-/

namespace A383032.P16309839113678773205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028982 (n + 1)).toNat 2

end

end A383032.P16309839113678773205

namespace A383032

/-- `val(A028982(n+1), 2)` -/
def P16309839113678773205.Spec : Prop :=
  ∀ n, (P16309839113678773205.a n : ℤ) = A383032 (n + 1)

end A383032

/-! ## A383032.P11529942217685352661

`val(A088827(n+1)/2, 2)`
-/

namespace A383032.P11529942217685352661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A088827 (n + 1) : ℚ) / 2)).toNat 2

end

end A383032.P11529942217685352661

namespace A383032

/-- `val(A088827(n+1)/2, 2)` -/
def P11529942217685352661.Spec : Prop :=
  ∀ n, (P11529942217685352661.a n : ℤ) = A383032 (n + 1)

end A383032

/-! ## A383032.P9801040047717022944

`A001222(gcd(A028982(n+1), A115639(2*(n+1))))`
-/

namespace A383032.P9801040047717022944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A028982 (n + 1)) (A115639 (2 * (n + 1))))

end

end A383032.P9801040047717022944

namespace A383032

/-- `A001222(gcd(A028982(n+1), A115639(2*(n+1))))` -/
def P9801040047717022944.Spec : Prop :=
  ∀ n, P9801040047717022944.a n = A383032 (n + 1)

end A383032

/-! ## A383032.P18112001826685008852

`A007814(∪[2*(n+1)², (n+1)²])`
-/

namespace A383032.P18112001826685008852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A383032.P18112001826685008852

namespace A383032

/-- `A007814(∪[2*(n+1)², (n+1)²])` -/
def P18112001826685008852.Spec : Prop :=
  ∀ n, P18112001826685008852.a n = A383032 (n + 1)

end A383032

/-! ## A383032.P18127662603288992868

`A007814(A088827(n+1)/2)`
-/

namespace A383032.P18127662603288992868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A088827 (n + 1) : ℚ) / 2)).toNat

end

end A383032.P18127662603288992868

namespace A383032

/-- `A007814(A088827(n+1)/2)` -/
def P18127662603288992868.Spec : Prop :=
  ∀ n, P18127662603288992868.a n = A383032 (n + 1)

end A383032

/-! ## A383032.P293379169404639410

`A001511(A028982(n+1))-A000035(2*n+3)`
-/

namespace A383032.P293379169404639410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A028982 (n + 1)).toNat - A000035 (2 * n + 3)

end

end A383032.P293379169404639410

namespace A383032

/-- `A001511(A028982(n+1))-A000035(2*n+3)` -/
def P293379169404639410.Spec : Prop :=
  ∀ n, P293379169404639410.a n = A383032 (n + 1)

end A383032

/-! ## A383032.P14007343687425757725

`A050605(A088827(n+1)-1)`
-/

namespace A383032.P14007343687425757725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A088827 (n + 1) - 1).toNat

end

end A383032.P14007343687425757725

namespace A383032

/-- `A050605(A088827(n+1)-1)` -/
def P14007343687425757725.Spec : Prop :=
  ∀ n, P14007343687425757725.a n = A383032 (n + 1)

end A383032

/-! ## A383032.P6481133181290803316

`A050605(lt[A109753(n), A093709(n+2)])`
-/

namespace A383032.P6481133181290803316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109753 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383032.P6481133181290803316

namespace A383032

/-- `A050605(lt[A109753(n), A093709(n+2)])` -/
def P6481133181290803316.Spec : Prop :=
  ∀ n, P6481133181290803316.a n = A383032 (n + 1)

end A383032

/-!
# A383033: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where A(n,k) is the n-th term of the inverse Weigh transform of j-> k^(j-1).

The programs for A383033, there is no canonical definition to state claims against.
-/

/-! ## A383033.P13620813089879853580

`A050447(n)-A010060(A115981(n))`
-/

namespace A383033.P13620813089879853580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050447 n - A010060 (A115981 n).toNat

end

end A383033.P13620813089879853580

/-! ## A383033.P6672027229386352501

`xor(A007318(n), A124762(A193722(n+3)))`
-/

namespace A383033.P6672027229386352501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 n) (A124762 (A193722 (n + 3)).toNat)

end

end A383033.P6672027229386352501

/-! ## A383033.P10989201507262000097

`xor(A007318(n), A059841(A336976(n)))`
-/

namespace A383033.P10989201507262000097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 n) (A059841 (A336976 n).toNat)

end

end A383033.P10989201507262000097

/-! ## A383033.P5079534776107380003

`xor(A028657(n), A282317(A341247(n+8)))`
-/

namespace A383033.P5079534776107380003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028657 n) (A282317 (A341247 (n + 8)).toNat)

end

end A383033.P5079534776107380003

/-! ## A383033.P13201585895032337784

`xor(A007318(n), A373973(A000041(3*n+4)))`
-/

namespace A383033.P13201585895032337784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 n) (A373973 (A000041 (3 * n + 4)).toNat)

end

end A383033.P13201585895032337784

/-!
# A383034: Inverse Weigh transform of 2^(n-1).

The programs for A383034, the canonical program `A383034.P16762733124447717769` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383034 has offset 1).

The definition of A383034 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A306156, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A383034.P16762733124447717769

`A306156(n+1)-A209229(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A383034

/-- `A306156(n+1)-A209229(n+1)` -/
def P16762733124447717769.Spec : Prop :=
  ∀ n, P16762733124447717769.a n = A383034 (n + 1)

theorem P16762733124447717769.correct : P16762733124447717769.Spec := by
  intro n
  simp only [A383034, Nat.add_sub_cancel]

end A383034

/-! ## A383034.P6756115272342873254

`A306156(n+1)-A036987(n)`
-/

namespace A383034.P6756115272342873254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306156 (n + 1) - A036987 n

end

end A383034.P6756115272342873254

namespace A383034

/-- `A306156(n+1)-A036987(n)` -/
def P6756115272342873254.Spec : Prop :=
  ∀ n, P6756115272342873254.a n = A383034 (n + 1)

end A383034

/-! ## A383034.P17923188284555171836

`A306156(n+1)-A154269(n+1)²`
-/

namespace A383034.P17923188284555171836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306156 (n + 1) - A154269 (n + 1) ^ 2

end

end A383034.P17923188284555171836

namespace A383034

/-- `A306156(n+1)-A154269(n+1)²` -/
def P17923188284555171836.Spec : Prop :=
  ∀ n, P17923188284555171836.a n = A383034 (n + 1)

end A383034

/-! ## A383034.P2453395609376635552

`∑{d}[n+1, A008965(#)*A087003((n+1)/#)]`
-/

namespace A383034.P2453395609376635552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008965 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383034.P2453395609376635552

namespace A383034

/-- `∑{d}[n+1, A008965(#)*A087003((n+1)/#)]` -/
def P2453395609376635552.Spec : Prop :=
  ∀ n, P2453395609376635552.a n = A383034 (n + 1)

end A383034

/-! ## A383034.P1829362550544077033

`∑{d}[n+1, A001511(#)*A318731((n+1)/#)]`
-/

namespace A383034.P1829362550544077033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A318731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383034.P1829362550544077033

namespace A383034

/-- `∑{d}[n+1, A001511(#)*A318731((n+1)/#)]` -/
def P1829362550544077033.Spec : Prop :=
  ∀ n, P1829362550544077033.a n = A383034 (n + 1)

end A383034

/-! ## A383034.P10721851222514793320

`∑{d}[n+1, A036987(#-1)*A059966((n+1)/#)]`
-/

namespace A383034.P10721851222514793320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A059966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383034.P10721851222514793320

namespace A383034

/-- `∑{d}[n+1, A036987(#-1)*A059966((n+1)/#)]` -/
def P10721851222514793320.Spec : Prop :=
  ∀ n, P10721851222514793320.a n = A383034 (n + 1)

end A383034

/-! ## A383034.P5201841097722553297

`A306156(n+1)-A154269((n+1)²)`
-/

namespace A383034.P5201841097722553297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306156 (n + 1) - A154269 ((n + 1) ^ 2)

end

end A383034.P5201841097722553297

namespace A383034

/-- `A306156(n+1)-A154269((n+1)²)` -/
def P5201841097722553297.Spec : Prop :=
  ∀ n, P5201841097722553297.a n = A383034 (n + 1)

end A383034

/-!
# A383035: Inverse Weigh transform of 3^(n-1).

The programs for A383035, the canonical program `A383035.P5927521060712911379` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383035 has offset 1).

The definition of A383035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383035.P4436523780982586886

`A306157(n+1)-A306156(n+1)`
-/

namespace A383035.P4436523780982586886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306157 (n + 1) - A306156 (n + 1)

end

end A383035.P4436523780982586886

namespace A383035

/-- `A306157(n+1)-A306156(n+1)` -/
def P4436523780982586886.Spec : Prop :=
  ∀ n, P4436523780982586886.a n = A383035 (n + 1)

theorem P4436523780982586886.correct : P4436523780982586886.Spec := by
  intro n
  simp only [A383035, Nat.add_sub_cancel, A383035.P4436523780982586886.a, A383035.P5927521060712911379.f1, A383035.P5927521060712911379.a, A036987, A036987.P1789601236562705309.a, A065178, A065178.P1159598168978168199.a, A306156, A306156.P7321451468610362585.f1, A306156.P7321451468610362585.a, A306157, A306157.P7780927257187570198.a, A001037, A001037.P3072020637183991904.a, A006519, A006519.P10435570611646570274.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A185171, A185171.P3311004766963218986.f1, A185171.P3311004766963218986.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A045664, A045664.P10163269847227854319.a, A171977, A171977.P14092944863121073856.a, A253909, A253909.P4396033400827970723.a, A000007, A000007.P6599383543502402472.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383035

/-! ## A383035.P5927521060712911379

`∑{d}[n+1, A036987(#-1)*A065178((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A383035

/-- `∑{d}[n+1, A036987(#-1)*A065178((n+1)/#)]` -/
def P5927521060712911379.Spec : Prop :=
  ∀ n, P5927521060712911379.a n = A383035 (n + 1)

theorem P5927521060712911379.correct : P5927521060712911379.Spec := by
  intro n
  simp only [A383035, Nat.add_sub_cancel]

end A383035

/-! ## A383035.P14271596138421769111

`A306157(n+1)-(A383034(n+1)+A036987(n))`
-/

namespace A383035.P14271596138421769111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306157 (n + 1) - (A383034 (n + 1) + A036987 n)

end

end A383035.P14271596138421769111

namespace A383035

/-- `A306157(n+1)-(A383034(n+1)+A036987(n))` -/
def P14271596138421769111.Spec : Prop :=
  ∀ n, P14271596138421769111.a n = A383035 (n + 1)

end A383035

/-! ## A383035.P15278566317226176486

`A306157(n+1)-∑{d}[A006519(n+1), A001037((n+1)/#)]`
-/

namespace A383035.P15278566317226176486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306157 (n + 1) - ∑ d ∈ Nat.divisors (f1 n).natAbs, A001037 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383035.P15278566317226176486

namespace A383035

/-- `A306157(n+1)-∑{d}[A006519(n+1), A001037((n+1)/#)]` -/
def P15278566317226176486.Spec : Prop :=
  ∀ n, P15278566317226176486.a n = A383035 (n + 1)

theorem P15278566317226176486.correct : P15278566317226176486.Spec := by
  intro n
  simp only [A383035, Nat.add_sub_cancel, A383035.P15278566317226176486.f1, A383035.P15278566317226176486.a, A383035.P5927521060712911379.f1, A383035.P5927521060712911379.a, A001037, A001037.P3072020637183991904.a, A006519, A006519.P10435570611646570274.a, A036987, A036987.P1789601236562705309.a, A065178, A065178.P1159598168978168199.a, A306157, A306157.P7780927257187570198.a, A045664, A045664.P10163269847227854319.a, A059966, A059966.P16360813507758205577.f1, A059966.P16360813507758205577.a, A171977, A171977.P14092944863121073856.a, A185171, A185171.P3311004766963218986.f1, A185171.P3311004766963218986.a, A253909, A253909.P4396033400827970723.a, A306156, A306156.P7321451468610362585.f1, A306156.P7321451468610362585.a, A000007, A000007.P6599383543502402472.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A027375, A027375.P9636017658255068744.f1, A027375.P9636017658255068744.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383035

/-! ## A383035.P17011853331940824576

`A306157(n+1)-A383023(A000217(n+1)+n+1)`
-/

namespace A383035.P17011853331940824576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306157 (n + 1) - A383023 (A000217 (n + 1) + (n + 1 : ℤ)).toNat

end

end A383035.P17011853331940824576

namespace A383035

/-- `A306157(n+1)-A383023(A000217(n+1)+n+1)` -/
def P17011853331940824576.Spec : Prop :=
  ∀ n, P17011853331940824576.a n = A383035 (n + 1)

end A383035

/-!
# A383036: The determinant of the matrix representing a totally anti-symmetric quasigroup of order 2*n+1.

The programs for A383036, the canonical program `A383036.P17808583928915640712` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383036 has offset 0).

The definition of A383036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383036.P17808583928915640712

`n*(2*n+1)^(2*n)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383036

/-- `n*(2*n+1)^(2*n)` -/
def P17808583928915640712.Spec : Prop :=
  ∀ n, (P17808583928915640712.a n : ℤ) = A383036 n

theorem P17808583928915640712.correct : P17808583928915640712.Spec := by
  intro n
  simp only [A383036]

end A383036

/-! ## A383036.P4943681160260890947

`A081131(2*n+1)`
-/

namespace A383036.P4943681160260890947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081131 (2 * n + 1)

end

end A383036.P4943681160260890947

namespace A383036

/-- `A081131(2*n+1)` -/
def P4943681160260890947.Spec : Prop :=
  ∀ n, P4943681160260890947.a n = A383036 n

end A383036

/-! ## A383036.P9859099183836561338

`lcm(n, (Δ[n²]^n)²)`
-/

namespace A383036.P9859099183836561338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n) ^ 2)

end

end A383036.P9859099183836561338

namespace A383036

/-- `lcm(n, (Δ[n²]^n)²)` -/
def P9859099183836561338.Spec : Prop :=
  ∀ n, (P9859099183836561338.a n : ℤ) = A383036 n

end A383036

/-! ## A383036.P17737372388108888053

`record[(-(n+1))^n]*n`
-/

namespace A383036.P17737372388108888053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 1 : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (n : ℤ)

end

end A383036.P17737372388108888053

namespace A383036

/-- `record[(-(n+1))^n]*n` -/
def P17737372388108888053.Spec : Prop :=
  ∀ n, P17737372388108888053.a n = A383036 n

end A383036

/-! ## A383036.P15677101422355332864

`n*(record[xor(1, n)]^n)²`
-/

namespace A383036.P15677101422355332864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n) ^ 2

end

end A383036.P15677101422355332864

namespace A383036

/-- `n*(record[xor(1, n)]^n)²` -/
def P15677101422355332864.Spec : Prop :=
  ∀ n, (P15677101422355332864.a n : ℤ) = A383036 n

end A383036

/-!
# A383037: a(n) is the excess of composites over primes in the first n odd positive integers.

The programs for A383037, the canonical program `A383037.P13364932948584734470` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383037 has offset 1).

The definition of A383037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383037.P8965034790542196009

`n+1-2*A000720(2*(n+1))+1`
-/

namespace A383037.P8965034790542196009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A000720 (2 * (n + 1)) + 1

end

end A383037.P8965034790542196009

namespace A383037

/-- `n+1-2*A000720(2*(n+1))+1` -/
def P8965034790542196009.Spec : Prop :=
  ∀ n, P8965034790542196009.a n = A383037 (n + 1)

theorem P8965034790542196009.correct : P8965034790542196009.Spec := by
  intro n
  simp only [A383037, Nat.add_sub_cancel, A383037.P8965034790542196009.a, A383037.P13364932948584734470.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A210469, A210469.P5188979352257746080.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A383037

/-! ## A383037.P13364932948584734470

`A210469(n+1)-A000720(2*(n+1))+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A383037

/-- `A210469(n+1)-A000720(2*(n+1))+1` -/
def P13364932948584734470.Spec : Prop :=
  ∀ n, P13364932948584734470.a n = A383037 (n + 1)

theorem P13364932948584734470.correct : P13364932948584734470.Spec := by
  intro n
  simp only [A383037, Nat.add_sub_cancel]

end A383037

/-! ## A383037.P17720241718404060706

`∑[A107393(2*n+1)]`
-/

namespace A383037.P17720241718404060706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383037.P17720241718404060706

namespace A383037

/-- `∑[A107393(2*n+1)]` -/
def P17720241718404060706.Spec : Prop :=
  ∀ n, P17720241718404060706.a n = A383037 (n + 1)

end A383037

/-! ## A383037.P2722841206939316007

`2*A210469(n+1)-n`
-/

namespace A383037.P2722841206939316007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210469 (n + 1) - (n : ℤ)

end

end A383037.P2722841206939316007

namespace A383037

/-- `2*A210469(n+1)-n` -/
def P2722841206939316007.Spec : Prop :=
  ∀ n, P2722841206939316007.a n = A383037 (n + 1)

theorem P2722841206939316007.correct : P2722841206939316007.Spec := by
  intro n
  simp only [A383037, Nat.add_sub_cancel, A383037.P2722841206939316007.a, A383037.P13364932948584734470.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A210469, A210469.P5188979352257746080.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A383037

/-! ## A383037.P2914023447308137683

`A097454(2*(n+1))-n`
-/

namespace A383037.P2914023447308137683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097454 (2 * (n + 1)) - (n : ℤ)

end

end A383037.P2914023447308137683

namespace A383037

/-- `A097454(2*(n+1))-n` -/
def P2914023447308137683.Spec : Prop :=
  ∀ n, P2914023447308137683.a n = A383037 (n + 1)

end A383037

/-! ## A383037.P175162063176732996

`A118777(2*(n+1))-(n+1)`
-/

namespace A383037.P175162063176732996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A383037.P175162063176732996

namespace A383037

/-- `A118777(2*(n+1))-(n+1)` -/
def P175162063176732996.Spec : Prop :=
  ∀ n, P175162063176732996.a n = A383037 (n + 1)

end A383037

/-! ## A383037.P17218264226098125789

`A033271(2*n+1)-A000720(2*(n+1))`
-/

namespace A383037.P17218264226098125789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033271 (2 * n + 1) - A000720 (2 * (n + 1))

end

end A383037.P17218264226098125789

namespace A383037

/-- `A033271(2*n+1)-A000720(2*(n+1))` -/
def P17218264226098125789.Spec : Prop :=
  ∀ n, P17218264226098125789.a n = A383037 (n + 1)

end A383037

/-! ## A383037.P13944255966717763778

`n-∑[A283183((n+1)²)]`
-/

namespace A383037.P13944255966717763778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283183 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383037.P13944255966717763778

namespace A383037

/-- `n-∑[A283183((n+1)²)]` -/
def P13944255966717763778.Spec : Prop :=
  ∀ n, P13944255966717763778.a n = A383037 (n + 1)

end A383037

/-!
# A383038: Positive integers which can be expressed in the form b^r - b^s where b, r, and s are positive integers.

The programs for A383038, there is no canonical definition to state claims against.
-/

/-! ## A383038.P11107661933867982502

`A181672(A095100(n+1))`
-/

namespace A383038.P11107661933867982502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181672 (A095100 (n + 1)).toNat

end

end A383038.P11107661933867982502

/-! ## A383038.P6265767625424003255

`A031285(A359080(n+1))`
-/

namespace A383038.P6265767625424003255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A359080 (n + 1)).toNat

end

end A383038.P6265767625424003255

/-! ## A383038.P17739937950921659948

`eq[A192082(n), A255852(n)]`
-/

namespace A383038.P17739937950921659948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192082 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383038.P17739937950921659948

/-! ## A383038.P8932725956540814985

`∑[A000005(A261584(n)+1)]`
-/

namespace A383038.P8932725956540814985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A261584 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383038.P8932725956540814985

/-! ## A383038.P16675843048797829845

`filter[A090110(2*(n+1)), A192082(#)]`
-/

namespace A383038.P16675843048797829845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090110 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192082 (f1 j).toNat = 1) n)

end

end A383038.P16675843048797829845

/-!
# A383039: Sum of the legs of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000032(n) and its long leg and hypotenuse are consecutive natural numbers.

The programs for A383039, the canonical program `A383039.P9143552430524653141` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383039 has offset 0).

The definition of A383039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383039.P5593952660717063637

`ogf((7-20x+14x^2+x^3)/(1-3x+3x^3-x^4))`
-/

namespace A383039.P5593952660717063637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -20, 14, 1] [1, -3, 0, 3, -1] n

end

end A383039.P5593952660717063637

namespace A383039

/-- `ogf((7-20x+14x^2+x^3)/(1-3x+3x^3-x^4))` -/
def P5593952660717063637.Spec : Prop :=
  ∀ n, P5593952660717063637.a n = A383039 n

end A383039

/-! ## A383039.P9143552430524653141

`2*A001254(n)-1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A383039

/-- `2*A001254(n)-1` -/
def P9143552430524653141.Spec : Prop :=
  ∀ n, P9143552430524653141.a n = A383039 n

theorem P9143552430524653141.correct : P9143552430524653141.Spec := by
  intro n
  simp only [A383039]

end A383039

/-! ## A383039.P656386212440031778

`2*A000032(n)²-1`
-/

namespace A383039.P656386212440031778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n ^ 2 - 1

end

end A383039.P656386212440031778

namespace A383039

/-- `2*A000032(n)²-1` -/
def P656386212440031778.Spec : Prop :=
  ∀ n, P656386212440031778.a n = A383039 n

end A383039

/-! ## A383039.P17311061212662487573

`2*A001638(2*n)-1`
-/

namespace A383039.P17311061212662487573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001638 (2 * n) - 1

end

end A383039.P17311061212662487573

namespace A383039

/-- `2*A001638(2*n)-1` -/
def P17311061212662487573.Spec : Prop :=
  ∀ n, P17311061212662487573.a n = A383039 n

end A383039

/-! ## A383039.P17504830625026910381

`A386201(n)-A380821(n)`
-/

namespace A383039.P17504830625026910381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386201 n - A380821 n

end

end A383039.P17504830625026910381

namespace A383039

/-- `A386201(n)-A380821(n)` -/
def P17504830625026910381.Spec : Prop :=
  ∀ n, P17504830625026910381.a n = A383039 n

end A383039

/-! ## A383039.P3652022609398039996

`A381721(n)-2*A380821(n)`
-/

namespace A383039.P3652022609398039996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381721 n - 2 * A380821 n

end

end A383039.P3652022609398039996

namespace A383039

/-- `A381721(n)-2*A380821(n)` -/
def P3652022609398039996.Spec : Prop :=
  ∀ n, P3652022609398039996.a n = A383039 n

end A383039

/-! ## A383039.P5677091059773334509

`A386201(n)+A386201(n)-A381721(n)`
-/

namespace A383039.P5677091059773334509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386201 n + (A386201 n - A381721 n)

end

end A383039.P5677091059773334509

namespace A383039

/-- `A386201(n)+A386201(n)-A381721(n)` -/
def P5677091059773334509.Spec : Prop :=
  ∀ n, P5677091059773334509.a n = A383039 n

end A383039

/-! ## A383039.P7686236646745230835

`A382379(n)+A382409(n)/A000032(n)`
-/

namespace A383039.P7686236646745230835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382379 n : ℚ) + (A382409 n : ℚ) / (A000032 n : ℚ)

end

end A383039.P7686236646745230835

namespace A383039

/-- `A382379(n)+A382409(n)/A000032(n)` -/
def P7686236646745230835.Spec : Prop :=
  ∀ n, P7686236646745230835.a n = (A383039 n : ℚ)

end A383039

/-! ## A383039.P14658043180295995321

`A022319(n+1)+A382379(n)-A022112(n)`
-/

namespace A383039.P14658043180295995321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 (n + 1) + (A382379 n - A022112 n)

end

end A383039.P14658043180295995321

namespace A383039

/-- `A022319(n+1)+A382379(n)-A022112(n)` -/
def P14658043180295995321.Spec : Prop :=
  ∀ n, P14658043180295995321.a n = A383039 n

end A383039

/-! ## A383039.P16811652839863343433

`A382409(n)+A382410(n)/A382409(n)`
-/

namespace A383039.P16811652839863343433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382409 n : ℚ) + (A382410 n : ℚ) / (A382409 n : ℚ)

end

end A383039.P16811652839863343433

namespace A383039

/-- `A382409(n)+A382410(n)/A382409(n)` -/
def P16811652839863343433.Spec : Prop :=
  ∀ n, P16811652839863343433.a n = (A383039 n : ℚ)

end A383039

/-!
# A383040: Number of king permutations on n elements avoiding the mesh pattern (12, {(0,1),(0,2),(1,0),(2,0)}).

The programs for A383040, there is no canonical definition to state claims against.
-/

/-! ## A383040.P16909575485180238706

`A382651(abs(1-n))+A382651(n)`
-/

namespace A383040.P16909575485180238706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382651 |1 - (n : ℤ)|.toNat + A382651 n

end

end A383040.P16909575485180238706

/-! ## A383040.P1728196460747815606

`A382644(n)^A299432(n)²`
-/

namespace A383040.P1728196460747815606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382644 n : ℚ) ^ (A299432 n ^ 2 : ℤ)

end

end A383040.P1728196460747815606

/-! ## A383040.P10557380294936108719

`A382644(n)^A334029(abs(ceil((-2)^(n-2))))`
-/

namespace A383040.P10557380294936108719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382644 n : ℚ) ^ (A334029 |⌈(-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉|.toNat : ℤ)

end

end A383040.P10557380294936108719

/-! ## A383040.P893001460836771614

`A382644(n)^A334297(abs(ceil((-2)^(n-2))))`
-/

namespace A383040.P893001460836771614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382644 n : ℚ) ^ (A334297 |⌈(-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉|.toNat : ℤ)

end

end A383040.P893001460836771614

/-! ## A383040.P5159016342719887437

`A382644(n)+A010051(A007582(n))`
-/

namespace A383040.P5159016342719887437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382644 n + A010051 (A007582 n).toNat

end

end A383040.P5159016342719887437

/-!
# A383042: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where A(n,k) is the n-th term of the inverse Euler transform of j-> k^(j-1).

The programs for A383042, there is no canonical definition to state claims against.
-/

/-! ## A383042.P17883270853600932846

`A065177(∑[char[∑[n]]]²-(n+1))`
-/

namespace A383042.P17883270853600932846
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065177 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A383042.P17883270853600932846

/-! ## A383042.P15863352985646855582

`A353495(A014545(n+1))+A246935(n)`
-/

namespace A383042.P15863352985646855582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (A014545 (n + 1)).toNat + A246935 n

end

end A383042.P15863352985646855582

/-! ## A383042.P11033746662900821961

`A246935(n)+A010060(A271437(n+1))`
-/

namespace A383042.P11033746662900821961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 n + A010060 (A271437 (n + 1)).toNat

end

end A383042.P11033746662900821961

/-! ## A383042.P15145624202392144509

`A246935(n)+A186716(A299879(n+4))`
-/

namespace A383042.P15145624202392144509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 n + A186716 (A299879 (n + 4)).toNat

end

end A383042.P15145624202392144509

/-!
# A383044: Numbers m such that phi(m) + phi(m+phi(m)) = m where phi is the Euler totient function.

The programs for A383044, there is no canonical definition to state claims against.
-/

/-! ## A383044.P12752459241612211511

`filter[A029750(n+2), A174889(#)]`
-/

namespace A383044.P12752459241612211511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A383044.P12752459241612211511

/-! ## A383044.P2200996292374261294

`filter[A371477(2*(n+1)), A174889(#)]`
-/

namespace A383044.P2200996292374261294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371477 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A383044.P2200996292374261294

/-! ## A383044.P10762559581923456292

`∩[A029750(n+1), A115683(n+1)]`
-/

namespace A383044.P10762559581923456292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383044.P10762559581923456292

/-! ## A383044.P3404118961880130566

`∩[A029750(n+1), A228651(n+1)]`
-/

namespace A383044.P3404118961880130566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383044.P3404118961880130566

/-! ## A383044.P11280414466421318571

`lt[A334031(n), A008458(A117248(n))]`
-/

namespace A383044.P11280414466421318571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334031 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A117248 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383044.P11280414466421318571

/-!
# A383045: Integers k for which the sum of digits of Fibonacci(k) is a Fibonacci number.

The programs for A383045, there is no canonical definition to state claims against.
-/

/-! ## A383045.P15944815437895166138

`eq[1, A010056(A004090(n))]`
-/

namespace A383045.P15944815437895166138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A004090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A383045.P15944815437895166138

/-! ## A383045.P3160258854967650037

`lt[A007318(A194944(n+1)), 9]`
-/

namespace A383045.P3160258854967650037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A194944 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A383045.P3160258854967650037

/-! ## A383045.P7000878103149861021

`record[gcd(A022998(n), A270890(n+1))]`
-/

namespace A383045.P7000878103149861021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022998 n) (A270890 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383045.P7000878103149861021

/-! ## A383045.P14117784799269373620

`eq[A351357(3*n+5), A352514(n)]`
-/

namespace A383045.P14117784799269373620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351357 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383045.P14117784799269373620

/-!
# A383047: Squarefree d such that x^3+y^3=z^3 has non-trivial solution in Q(sqrt(d)).

The programs for A383047, there is no canonical definition to state claims against.
-/

/-! ## A383047.P5609317903817190640

`lt[A033739(n)*A178057(n+1), A269518(n)]`
-/

namespace A383047.P5609317903817190640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033739 n * A178057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269518 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383047.P5609317903817190640

/-! ## A383047.P7876262131783331221

`lt[A033739(n)*A063045(n+2), A269518(n)]`
-/

namespace A383047.P7876262131783331221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033739 n * A063045 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269518 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383047.P7876262131783331221

/-! ## A383047.P3919213838391602146

`lt[A033739(n), A269518(n)/A127821(n+1)]`
-/

namespace A383047.P3919213838391602146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033739 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269518 n : ℚ) / (A127821 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A383047.P3919213838391602146

/-! ## A383047.P14965040967796073925

`lt[A033739(n), A269518(n)/A333966(n+1)]`
-/

namespace A383047.P14965040967796073925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033739 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269518 n : ℚ) / (A333966 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A383047.P14965040967796073925

/-! ## A383047.P12098081785859606965

`A319242(n+1)-A319227(A319251(2*(n+1)))`
-/

namespace A383047.P12098081785859606965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319242 (n + 1) - A319227 (A319251 (2 * (n + 1))).toNat

end

end A383047.P12098081785859606965

/-!
# A383049: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) is the n-th term of the inverse Stirling transform of j-> (j+1)^k.

The programs for A383049, there is no canonical definition to state claims against.
-/

/-! ## A383049.P16632483433876944977

`C(A278984(n+1), A257992(A092269(2*n+3)))`
-/

namespace A383049.P16632483433876944977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A278984 (n + 1)).toNat (A257992 (A092269 (2 * n + 3)).toNat).toNat

end

end A383049.P16632483433876944977

/-!
# A383051: a(n) is the n-th term of the inverse Stirling transform of j-> (j+1)^n.

The programs for A383051, there is no canonical definition to state claims against.
-/

/-! ## A383051.P1683154719350881891

`A383049(∑[4*n])`
-/

namespace A383051.P1683154719350881891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383049 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383051.P1683154719350881891

/-!
# A383052: a(n) = Sum_{k=0..n} (k+1)^3 * Stirling2(n,k).

The programs for A383052, there is no canonical definition to state claims against.
-/

/-! ## A383052.P13570890531377050182

`A362924(A167614(n+1))`
-/

namespace A383052.P13570890531377050182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362924 (A167614 (n + 1)).toNat

end

end A383052.P13570890531377050182

/-! ## A383052.P5903751614463945553

`A362925(A167614(n+2))`
-/

namespace A383052.P5903751614463945553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 (A167614 (n + 2)).toNat

end

end A383052.P5903751614463945553

/-! ## A383052.P14344124865130623409

`A113547(A155212(n)+5)`
-/

namespace A383052.P14344124865130623409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (A155212 n + 5).toNat

end

end A383052.P14344124865130623409

/-! ## A383052.P16427570200978047821

`A113547(A056000(n)+7)`
-/

namespace A383052.P16427570200978047821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (A056000 n + 7).toNat

end

end A383052.P16427570200978047821

/-! ## A383052.P11916007949191984861

`A362924(A034856(n+1)+5)`
-/

namespace A383052.P11916007949191984861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362924 (A034856 (n + 1) + 5).toNat

end

end A383052.P11916007949191984861

/-! ## A383052.P5977289366433510759

`A113547(A000124(n+3)+n)`
-/

namespace A383052.P5977289366433510759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (A000124 (n + 3) + (n : ℤ)).toNat

end

end A383052.P5977289366433510759

/-! ## A383052.P14755625736567490235

`A362924(A000217(n+3)-n)`
-/

namespace A383052.P14755625736567490235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362924 (A000217 (n + 3) - (n : ℤ)).toNat

end

end A383052.P14755625736567490235

/-! ## A383052.P5893377780327868071

`A113547(A000217(n+3)+n+1)`
-/

namespace A383052.P5893377780327868071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A383052.P5893377780327868071

/-! ## A383052.P8682038599103046368

`A005493(n+1)+A033452(n)-A011968(n+1)`
-/

namespace A383052.P8682038599103046368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 (n + 1) + (A033452 n - A011968 (n + 1))

end

end A383052.P8682038599103046368

/-! ## A383052.P2069873975757820464

`A271754(n+2)-(A271755(n+1)+A271754(n+1))`
-/

namespace A383052.P2069873975757820464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271754 (n + 2) - (A271755 (n + 1) + A271754 (n + 1))

end

end A383052.P2069873975757820464

/-!
# A383053: a(n) = Sum_{k=0..n} (k+1)^4 * Stirling2(n,k).

The programs for A383053, there is no canonical definition to state claims against.
-/

/-! ## A383053.P9657563997953689231

`A113547(∑[n+5]+6)`
-/

namespace A383053.P9657563997953689231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A383053.P9657563997953689231

/-! ## A383053.P892962989521254521

`A362925(A000217(4+n)+4)`
-/

namespace A383053.P892962989521254521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 (A000217 (4 + n) + 4).toNat

end

end A383053.P892962989521254521

/-! ## A383053.P114197038531984202

`A362925(A034856(n+3)+6)`
-/

namespace A383053.P114197038531984202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362925 (A034856 (n + 3) + 6).toNat

end

end A383053.P114197038531984202

/-! ## A383053.P15182875489909804769

`A362924(A000217(n+4)-n)`
-/

namespace A383053.P15182875489909804769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362924 (A000217 (n + 4) - (n : ℤ)).toNat

end

end A383053.P15182875489909804769

/-!
# A383059: Lexicographically earliest sequence of distinct nonnegative integers such that if a digit d in the digit stream (ignoring commas) is odd, the previous digit is < d.

The programs for A383059, there is no canonical definition to state claims against.
-/

/-! ## A383059.P12529931686544655965

`∑[A383060(n+1)]-A383060(n+1)`
-/

namespace A383059.P12529931686544655965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A383060 (n + 1)

end

end A383059.P12529931686544655965

/-!
# A383060: First differences of A383059.

The programs for A383060, there is no canonical definition to state claims against.
-/

/-! ## A383060.P11714831025642304467

`Δ[A383059(n+1)]`
-/

namespace A383060.P11714831025642304467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383060.P11714831025642304467

/-! ## A383060.P3068416611911830780

`A383059(n+2)-A383059(n+1)`
-/

namespace A383060.P3068416611911830780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383059 (n + 2) - A383059 (n + 1)

end

end A383060.P3068416611911830780

/-!
# A383061: Positive integers that contain an odd digit d immediately preceded by a digit >= d.

The programs for A383061, there is no canonical definition to state claims against.
-/

/-! ## A383061.P1398352791179578818

`comp[A383062(n+1)]`
-/

namespace A383061.P1398352791179578818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383061.P1398352791179578818

/-! ## A383061.P14130187578518552949

`comp[A383059(n+1)]`
-/

namespace A383061.P14130187578518552949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383061.P14130187578518552949

/-! ## A383061.P4917199430990885675

`eq[A152178(n), A343639(n)]`
-/

namespace A383061.P4917199430990885675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383061.P4917199430990885675

/-! ## A383061.P7948691280271509690

`eq[A152178(n), A380706(n)]`
-/

namespace A383061.P7948691280271509690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383061.P7948691280271509690

/-! ## A383061.P6571832224785218971

`eq[A004442(n), A073730(n+1)]+1`
-/

namespace A383061.P6571832224785218971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A383061.P6571832224785218971

/-!
# A383062: Nonnegative integers such that every odd digit except the leftmost is immediately preceded by a smaller digit.

The programs for A383062, there is no canonical definition to state claims against.
-/

/-! ## A383062.P17128410614511320469

`comp[A383061(n+1)]`
-/

namespace A383062.P17128410614511320469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383062.P17128410614511320469

/-! ## A383062.P7785678680794104862

`lt[A193581(A338824(n+1)), A095827(n+5)]`
-/

namespace A383062.P7785678680794104862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A338824 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383062.P7785678680794104862

/-! ## A383062.P2816992310336401315

`lt[A181983(3*n+4), A008593(A244158(n))]`
-/

namespace A383062.P2816992310336401315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A244158 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383062.P2816992310336401315

/-! ## A383062.P6249523303819761206

`comp[eq[A152178(n), A380706(n)]]`
-/

namespace A383062.P6249523303819761206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152178 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380706 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A383062.P6249523303819761206

/-! ## A383062.P13569471696518642904

`lt[11*floor(n/10)-n, A128145((n+3)²)]`
-/

namespace A383062.P13569471696518642904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128145 ((n + 3) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383062.P13569471696518642904

/-! ## A383062.P18404171436411634010

`lt[n, A073730(A103889(n+1))]`
-/

namespace A383062.P18404171436411634010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073730 (A103889 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A383062.P18404171436411634010

/-! ## A383062.P12085225131697041244

`∪[A239088(2*n+1), 2*n]`
-/

namespace A383062.P12085225131697041244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239088 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A383062.P12085225131697041244

/-! ## A383062.P15236725320492210045

`lt[(n%2)^n, A366375(A260526(n))]`
-/

namespace A383062.P15236725320492210045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366375 (A260526 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A383062.P15236725320492210045

/-!
# A383064: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where column k is the expansion of e.g.f. Sum_{j>=0} (j+1)^k * (-log(1-x))^j / j!.

The programs for A383064, there is no canonical definition to state claims against.
-/

/-! ## A383064.P8640624003618047629

`A344639(A061579(n))`
-/

namespace A383064.P8640624003618047629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344639 (A061579 n).toNat

end

end A383064.P8640624003618047629

/-! ## A383064.P2627581009466500856

`A344639(A038722(1+n)-1)`
-/

namespace A383064.P2627581009466500856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344639 (A038722 (1 + n) - 1).toNat

end

end A383064.P2627581009466500856

/-!
# A383070: Number of n-digit positive integers where all pairs of consecutive digits have a difference of at least 2.

The programs for A383070, the canonical program `A383070.P13816816615136769951` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383070 has offset 1).

The definition of A383070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383070.P13816816615136769951

`ogf((9+28x+9x^2-18x^3-3x^4)/(1-4x-22x^2-11x^3+14x^4+3x^5))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383070

/-- `ogf((9+28x+9x^2-18x^3-3x^4)/(1-4x-22x^2-11x^3+14x^4+3x^5))` -/
def P13816816615136769951.Spec : Prop :=
  ∀ n, P13816816615136769951.a n = A383070 (n + 1)

theorem P13816816615136769951.correct : P13816816615136769951.Spec := by
  intro n
  simp only [A383070, Nat.add_sub_cancel]

end A383070

/-!
# A383071: Number of n-digit positive integers where all pairs of consecutive digits have a difference of at least 3.

The programs for A383071, the canonical program `A383071.P6026536646187026421` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383071 has offset 1).

The definition of A383071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383071.P6026536646187026421

`ogf((9+22x-2x^3)/(1-3x-15x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383071

/-- `ogf((9+22x-2x^3)/(1-3x-15x^2-2x^3+x^4))` -/
def P6026536646187026421.Spec : Prop :=
  ∀ n, P6026536646187026421.a n = A383071 (n + 1)

theorem P6026536646187026421.correct : P6026536646187026421.Spec := by
  intro n
  simp only [A383071, Nat.add_sub_cancel]

end A383071

/-!
# A383072: Number of n-digit positive integers where all pairs of consecutive digits have a difference of at least 4.

The programs for A383072, the canonical program `A383072.P55324045092166782` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383072 has offset 1).

The definition of A383072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383072.P55324045092166782

`ogf((9+9x-14x^2-10x^3)/(1-3x-8x^2+6x^3+6x^4))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383072

/-- `ogf((9+9x-14x^2-10x^3)/(1-3x-8x^2+6x^3+6x^4))` -/
def P55324045092166782.Spec : Prop :=
  ∀ n, P55324045092166782.a n = A383072 (n + 1)

theorem P55324045092166782.correct : P55324045092166782.Spec := by
  intro n
  simp only [A383072, Nat.add_sub_cancel]

end A383072

/-!
# A383073: a(n) = [x^n] Product_{k=1..n} (1 + x^k)^binomial(n,k).

The programs for A383073, there is no canonical definition to state claims against.
-/

/-! ## A383073.P15132925886001276478

`A084242(or(n, A001147(n)))`
-/

namespace A383073.P15132925886001276478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084242 (Int.lor (n : ℤ) (A001147 n)).toNat

end

end A383073.P15132925886001276478

/-! ## A383073.P16407722905638856758

`A038566(∑[A189064(n+1)^n+1])`
-/

namespace A383073.P16407722905638856758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (n + 1) ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A383073.P16407722905638856758

/-!
# A383076: Triangle T(n,k) read by rows: where T(n,k) is the number of the k-th eliminated person in the variation of the Josephus elimination process for n people, where the elimination pattern is eliminate-skip-eliminate.

The programs for A383076, there is no canonical definition to state claims against.
-/

/-! ## A383076.P11253061425118066348

`filter[A199204(2*(n+1)), A102460(#)]`
-/

namespace A383076.P11253061425118066348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199204 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102460 (f1 j).toNat = 1) n)

end

end A383076.P11253061425118066348

/-! ## A383076.P18159240666962847113

`A194980(n+1)-A265744(A185213(n))`
-/

namespace A383076.P18159240666962847113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (n + 1) - A265744 (A185213 n).toNat

end

end A383076.P18159240666962847113

/-! ## A383076.P5938315727548628943

`gcd(A135014(n+1), A211100(A271969(n+1)))`
-/

namespace A383076.P5938315727548628943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135014 (n + 1)) (A211100 (A271969 (n + 1)).toNat)

end

end A383076.P5938315727548628943

/-! ## A383076.P8674122313531793479

`gcd(A000005(A276085(n+5)), A053270(2*n))`
-/

namespace A383076.P8674122313531793479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A276085 (n + 5)).toNat) (A053270 (2 * n))

end

end A383076.P8674122313531793479

/-! ## A383076.P5140073816025599961

`A194968(n+1)-A083892(A225816(2*n+3))`
-/

namespace A383076.P5140073816025599961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (n + 1) - A083892 (A225816 (2 * n + 3)).toNat

end

end A383076.P5140073816025599961

/-!
# A383077: Number of n-digit positive integers where all pairs of consecutive digits have a difference of at least 5.

The programs for A383077, the canonical program `A383077.P5443867319586345586` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383077 has offset 1).

The definition of A383077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383077.P5443867319586345586

`ogf((9-2x-7x^2+x^3+x^4)/(1-3x-3x^2+4x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383077

/-- `ogf((9-2x-7x^2+x^3+x^4)/(1-3x-3x^2+4x^3+x^4-x^5))` -/
def P5443867319586345586.Spec : Prop :=
  ∀ n, P5443867319586345586.a n = A383077 (n + 1)

theorem P5443867319586345586.correct : P5443867319586345586.Spec := by
  intro n
  simp only [A383077, Nat.add_sub_cancel]

end A383077

/-! ## A383077.P12520996747514148992

`A006358(n+1)+Δ[A006358(n)]`
-/

namespace A383077.P12520996747514148992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006358 (n + 1) + (f1 (n + 1) - f1 n)

end

end A383077.P12520996747514148992

namespace A383077

/-- `A006358(n+1)+Δ[A006358(n)]` -/
def P12520996747514148992.Spec : Prop :=
  ∀ n, P12520996747514148992.a n = A383077 (n + 1)

end A383077

/-!
# A383078: Number of n-digit positive integers where all pairs of consecutive digits have a difference of at least 6.

The programs for A383078, the canonical program `A383078.P3020711650924406500` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383078 has offset 1).

The definition of A383078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383078.P3020711650924406500

`ogf((9-2x-9x^2+x^3+2x^4)/(1-2x-3x^2+x^3+x^4))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383078

/-- `ogf((9-2x-9x^2+x^3+2x^4)/(1-2x-3x^2+x^3+x^4))` -/
def P3020711650924406500.Spec : Prop :=
  ∀ n, P3020711650924406500.a n = A383078 (n + 1)

theorem P3020711650924406500.correct : P3020711650924406500.Spec := by
  intro n
  simp only [A383078, Nat.add_sub_cancel]

end A383078

/-! ## A383078.P12298779047005222962

`A373568(n+1)+A373568(n+1)-A006357(n)`
-/

namespace A383078.P12298779047005222962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373568 (n + 1) + (A373568 (n + 1) - A006357 n)

end

end A383078.P12298779047005222962

namespace A383078

/-- `A373568(n+1)+A373568(n+1)-A006357(n)` -/
def P12298779047005222962.Spec : Prop :=
  ∀ n, P12298779047005222962.a n = A383078 (n + 1)

end A383078

/-!
# A383079: Number of n-digit positive integers where all pairs of consecutive digits have a difference of at least 7.

The programs for A383079, the canonical program `A383079.P832653657058932327` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383079 has offset 1).

The definition of A383079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383079.P832653657058932327

`ogf((9-9x-5x^2+4x^3)/(1-2x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383079

/-- `ogf((9-9x-5x^2+4x^3)/(1-2x-x^2+x^3))` -/
def P832653657058932327.Spec : Prop :=
  ∀ n, P832653657058932327.a n = A383079 (n + 1)

theorem P832653657058932327.correct : P832653657058932327.Spec := by
  intro n
  simp only [A383079, Nat.add_sub_cancel]

end A383079

/-!
# A383082: The number of distinct straightedge-and-compass constructions that can be made with a total of n lines and circles.

The programs for A383082, there is no canonical definition to state claims against.
-/

/-! ## A383082.P16297467407703921446

`A001462(4^round(2^n/e))`
-/

namespace A383082.P16297467407703921446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (SequenceMachineLib.roundAway ((2 ^ n : ℝ) / Real.exp 1) : ℤ))).toNat

end

end A383082.P16297467407703921446

/-!
# A383083: The number of distinct straightedge-and-compass constructions that can be made with no lines and n circles.

The programs for A383083, there is no canonical definition to state claims against.
-/

/-! ## A383083.P10890283162389201628

`A383273(∑[n]+n)`
-/

namespace A383083.P10890283162389201628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383273 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A383083.P10890283162389201628

/-! ## A383083.P17402243401711008308

`A091602(A305869(n))+A025581(n)`
-/

namespace A383083.P17402243401711008308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (A305869 n).toNat + A025581 n

end

end A383083.P17402243401711008308

/-!
# A383084: The number of points in the Euclidean plane that can be determined via a straightedge-and-compass construction using n or fewer lines and circles.

The programs for A383084, there is no canonical definition to state claims against.
-/

/-! ## A383084.P15482806805578159411

`A152222(A036675(n))`
-/

namespace A383084.P15482806805578159411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152222 (A036675 n).toNat

end

end A383084.P15482806805578159411

/-!
# A383086: The number of distinct distances between points in the Euclidean plane where the points are constructed via a straightedge-and-compass construction using n circles and no lines.

The programs for A383086, there is no canonical definition to state claims against.
-/

/-! ## A383086.P3170235711461893887

`A361401(A361401(n)^A000045(n))`
-/

namespace A383086.P3170235711461893887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361401 (SequenceMachineLib.roundAway ((A361401 n : ℚ) ^ (A000045 n : ℤ))).toNat

end

end A383086.P3170235711461893887

/-!
# A383088: Numbers whose multiset of prime indices does not have all equal run-sums.

The programs for A383088, there is no canonical definition to state claims against.
-/

/-! ## A383088.P12481790904633455109

`lt[1, A353835(n+1)]+1`
-/

namespace A383088.P12481790904633455109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A383088.P12481790904633455109

/-! ## A383088.P11045775529953879722

`comp[A353833(n+1)-1]+1`
-/

namespace A383088.P11045775529953879722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A383088.P11045775529953879722

/-! ## A383088.P3710041362604449444

`lt[1, A353835(A028310(n))]`
-/

namespace A383088.P3710041362604449444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353835 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A383088.P3710041362604449444

/-! ## A383088.P16043432695260127440

`comp[∪[A353833(n+1), A000578(n)]]`
-/

namespace A383088.P16043432695260127440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A383088.P16043432695260127440

/-! ## A383088.P12739418642797139832

`comp[∪[A353833(n+1), A000584(n)]]`
-/

namespace A383088.P12739418642797139832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A383088.P12739418642797139832

/-! ## A383088.P3602109681454533913

`∪[A024411(n+1), A381871(n+1)]`
-/

namespace A383088.P3602109681454533913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383088.P3602109681454533913

/-! ## A383088.P4882623250810501760

`∪[A024411(n+1), A383100(n+1)]`
-/

namespace A383088.P4882623250810501760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383088.P4882623250810501760

/-! ## A383088.P2609319968356862949

`∪[A054775(n+1), A381871(n+1)]`
-/

namespace A383088.P2609319968356862949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383088.P2609319968356862949

/-! ## A383088.P17211947686096578233

`∪[A054775(n+1), A383100(n+1)]`
-/

namespace A383088.P17211947686096578233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383088.P17211947686096578233

/-! ## A383088.P2037849170735633113

`∪[A064597(n+1), A381871(n+1)]`
-/

namespace A383088.P2037849170735633113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383088.P2037849170735633113

/-!
# A383090: Number of integer partitions of n having more than one permutation with all equal run-lengths.

The programs for A383090, there is no canonical definition to state claims against.
-/

/-! ## A383090.P6218851317773459

`A000041(n)-A383092(n)`
-/

namespace A383090.P6218851317773459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A383092 n

end

end A383090.P6218851317773459

/-! ## A383090.P4903358733905871696

`A383013(n)-A383094(n)`
-/

namespace A383090.P4903358733905871696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383013 n - A383094 n

end

end A383090.P4903358733905871696

/-! ## A383090.P2046740529167740140

`∑[A002865(n)]-A383092(n)`
-/

namespace A383090.P2046740529167740140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A383092 n

end

end A383090.P2046740529167740140

/-! ## A383090.P14091373242968305177

`∑{d}[n+1, A133732(#)]-A383092(n)`
-/

namespace A383090.P14091373242968305177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133732 d - A383092 n

end

end A383090.P14091373242968305177

/-! ## A383090.P13487819110897308952

`A194543(A000217(n))-A383092(n)`
-/

namespace A383090.P13487819110897308952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A000217 n).toNat - A383092 n

end

end A383090.P13487819110897308952

/-! ## A383090.P4420455602260071948

`A282750(A001844(n))-A383092(n)`
-/

namespace A383090.P4420455602260071948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A001844 n).toNat - A383092 n

end

end A383090.P4420455602260071948

/-! ## A383090.P7841459131058550453

`A000041(n)-A382915(n)-A383094(n)`
-/

namespace A383090.P7841459131058550453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A382915 n - A383094 n

end

end A383090.P7841459131058550453

/-!
# A383092: Number of integer partitions of n having at most one permutation with all equal run-lengths.

The programs for A383092, there is no canonical definition to state claims against.
-/

/-! ## A383092.P11189719812288542602

`A382915(n)+A383094(n)`
-/

namespace A383092.P11189719812288542602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382915 n + A383094 n

end

end A383092.P11189719812288542602

/-! ## A383092.P12431818466271396103

`A000041(n)-A383090(n)`
-/

namespace A383092.P12431818466271396103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A383090 n

end

end A383092.P12431818466271396103

/-! ## A383092.P18435380057033409926

`A194543(∑[n])-A383090(n)`
-/

namespace A383092.P18435380057033409926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (∑ j ∈ Finset.range (n + 1), f1 j) - A383090 n

end

end A383092.P18435380057033409926

/-! ## A383092.P2772878162614439896

`1+A000065(n)-A383090(n)`
-/

namespace A383092.P2772878162614439896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000065 n - A383090 n

end

end A383092.P2772878162614439896

/-! ## A383092.P15879496812992587952

`A133041(n)-n-A383090(n)`
-/

namespace A383092.P15879496812992587952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ) - A383090 n

end

end A383092.P15879496812992587952

/-! ## A383092.P11913439792127702763

`A238121(A000217(n))-A383090(n)`
-/

namespace A383092.P11913439792127702763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A000217 n).toNat - A383090 n

end

end A383092.P11913439792127702763

/-!
# A383093: Number of integer partitions of n that can be partitioned into constant blocks with a common sum.

The programs for A383093, there is no canonical definition to state claims against.
-/

/-! ## A383093.P15395403602896590523

`A000041(n)-A381993(n)`
-/

namespace A383093.P15395403602896590523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A381993 n

end

end A383093.P15395403602896590523

/-! ## A383093.P14936804348641363219

`∑[A002865(n)]-A381993(n)`
-/

namespace A383093.P14936804348641363219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A381993 n

end

end A383093.P14936804348641363219

/-! ## A383093.P12050348962583231040

`∑[A085811(n+3)]-A381993(n)`
-/

namespace A383093.P12050348962583231040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A381993 n

end

end A383093.P12050348962583231040

/-! ## A383093.P16280380968420849590

`A039900(n)+A003106(n)-A381993(n)`
-/

namespace A383093.P16280380968420849590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 n + A003106 n - A381993 n

end

end A383093.P16280380968420849590

/-! ## A383093.P7146022762829985075

`A383308(n)+A381994(n)-A381993(n)`
-/

namespace A383093.P7146022762829985075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383308 n + A381994 n - A381993 n

end

end A383093.P7146022762829985075

/-!
# A383094: Number of integer partitions of n having exactly one permutation with all equal run-lengths.

The programs for A383094, there is no canonical definition to state claims against.
-/

/-! ## A383094.P2622655392357646225

`A383092(n)-A382915(n)`
-/

namespace A383094.P2622655392357646225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383092 n - A382915 n

end

end A383094.P2622655392357646225

/-! ## A383094.P9787936135994554366

`A383013(n)-(A000041(n)-A383092(n))`
-/

namespace A383094.P9787936135994554366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383013 n - (A000041 n - A383092 n)

end

end A383094.P9787936135994554366

/-! ## A383094.P329079559409993597

`A383013(n)-A383090(n)`
-/

namespace A383094.P329079559409993597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383013 n - A383090 n

end

end A383094.P329079559409993597

/-!
# A383095: Number of integer partitions of n having exactly one permutation with all equal run-sums.

The programs for A383095, there is no canonical definition to state claims against.
-/

/-! ## A383095.P7689648057693883660

`A383098(n)-A383097(n)`
-/

namespace A383095.P7689648057693883660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383098 n - A383097 n

end

end A383095.P7689648057693883660

/-! ## A383095.P10618485360095037573

`A383098(n)-A359677(A007500(n+1)-(n+1))`
-/

namespace A383095.P10618485360095037573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383098 n - A359677 (A007500 (n + 1) - (n + 1 : ℤ)).toNat

end

end A383095.P10618485360095037573

/-! ## A383095.P15290603135555728782

`A106486(A300549(n))`
-/

namespace A383095.P15290603135555728782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (A300549 n).toNat

end

end A383095.P15290603135555728782

/-! ## A383095.P16915769622633068252

`A331460(A103314(n))`
-/

namespace A383095.P16915769622633068252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331460 (A103314 n).toNat

end

end A383095.P16915769622633068252

/-! ## A383095.P4694103259518639321

`A399119(A213278(n+1))`
-/

namespace A383095.P4694103259518639321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399119 (A213278 (n + 1)).toNat

end

end A383095.P4694103259518639321

/-!
# A383096: Number of integer partitions of n having no permutation with all equal run-sums.

The programs for A383096, there is no canonical definition to state claims against.
-/

/-! ## A383096.P12230034980499741875

`A000041(n)-A383098(n)`
-/

namespace A383096.P12230034980499741875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A383098 n

end

end A383096.P12230034980499741875

/-! ## A383096.P14890896228076672521

`∑[A002865(n)]-A383098(n)`
-/

namespace A383096.P14890896228076672521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A383098 n

end

end A383096.P14890896228076672521

/-! ## A383096.P17342323534412359574

`A054225(A000217(n))-A383098(n)`
-/

namespace A383096.P17342323534412359574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000217 n).toNat - A383098 n

end

end A383096.P17342323534412359574

/-! ## A383096.P4326875229080457335

`A000041(n)-(A383095(n)+A248174(A387508(n)))`
-/

namespace A383096.P4326875229080457335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A383095 n + A248174 (A387508 n).toNat)

end

end A383096.P4326875229080457335

/-! ## A383096.P6019916144633948407

`A001055(A000079(n))-A383098(n)`
-/

namespace A383096.P6019916144633948407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A000079 n).toNat - A383098 n

end

end A383096.P6019916144633948407

/-!
# A383097: Number of integer partitions of n having more than one permutation with all equal run-sums.

The programs for A383097, there is no canonical definition to state claims against.
-/

/-! ## A383097.P91264736526914853

`A383098(n)-A383095(n)`
-/

namespace A383097.P91264736526914853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383098 n - A383095 n

end

end A383097.P91264736526914853

/-! ## A383097.P17750658930794158308

`A000124(2*(n+2))%A194055(A387330(n))`
-/

namespace A383097.P17750658930794158308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 (2 * (n + 2))) (A194055 (A387330 n).toNat)

end

end A383097.P17750658930794158308

/-! ## A383097.P10109339116758243037

`A248174(A387508(n))`
-/

namespace A383097.P10109339116758243037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248174 (A387508 n).toNat

end

end A383097.P10109339116758243037

/-! ## A383097.P2857626783053626628

`(A006519(3*n+4)-1)%A325108(n)`
-/

namespace A383097.P2857626783053626628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006519 (3 * n + 4) - 1) (A325108 n)

end

end A383097.P2857626783053626628

/-! ## A383097.P7001276032698091602

`A032741(A371796(n*A059841(n)))`
-/

namespace A383097.P7001276032698091602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A371796 ((n : ℤ) * A059841 n).toNat).toNat

end

end A383097.P7001276032698091602

/-!
# A383098: Number of integer partitions of n having at least one permutation with all equal run-sums.

The programs for A383098, there is no canonical definition to state claims against.
-/

/-! ## A383098.P344035788064684171

`A383097(n)+A383095(n)`
-/

namespace A383098.P344035788064684171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383097 n + A383095 n

end

end A383098.P344035788064684171

/-! ## A383098.P2761220015883448638

`A000041(n)-A383096(n)`
-/

namespace A383098.P2761220015883448638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A383096 n

end

end A383098.P2761220015883448638

/-! ## A383098.P7626541573851879977

`∑[A002865(n)]-A383096(n)`
-/

namespace A383098.P7626541573851879977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A383096 n

end

end A383098.P7626541573851879977

/-! ## A383098.P11204283613519599200

`A119620(A005843(n))-A383096(n)`
-/

namespace A383098.P11204283613519599200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (A005843 n).toNat - A383096 n

end

end A383098.P11204283613519599200

/-! ## A383098.P1774295313132111145

`A383095(n)+A248174(A387508(n))`
-/

namespace A383098.P1774295313132111145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383095 n + A248174 (A387508 n).toNat

end

end A383098.P1774295313132111145

/-!
# A383099: Numbers whose prime indices have exactly one permutation with all equal run-sums.

The programs for A383099, there is no canonical definition to state claims against.
-/

/-! ## A383099.P16040340931315796638

`∪[A000961(n+1), A032835(n+1)]`
-/

namespace A383099.P16040340931315796638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383099.P16040340931315796638

/-! ## A383099.P14013807677964999836

`∪[A032835(n+1), A036116(n+1)]`
-/

namespace A383099.P14013807677964999836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383099.P14013807677964999836

/-! ## A383099.P2007498087798788317

`∪[A000961(n+1), A073771(n+1)]`
-/

namespace A383099.P2007498087798788317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383099.P2007498087798788317

/-! ## A383099.P6759379542543509824

`∪[A036116(n+1), A073771(n+1)]`
-/

namespace A383099.P6759379542543509824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383099.P6759379542543509824

/-! ## A383099.P14070481008935436199

`∪[A000961(n+1), A235054(A235054(n+1))]`
-/

namespace A383099.P14070481008935436199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235054 (A235054 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383099.P14070481008935436199

/-! ## A383099.P17964480786904269788

`∪[A000961(n+1), A014198(A106421(3*n+1))]`
-/

namespace A383099.P17964480786904269788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (A106421 (3 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383099.P17964480786904269788

