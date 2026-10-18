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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B008.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A073800: Remainder of division 2^n/c(n), where c(n)=A002808(n), the n-th composite.

The programs for A073800, the canonical program `A073800.P4820594876694067768` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073800 has offset 1).

The definition of A073800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073800.P4820594876694067768

`(2^(n+1))%A002808(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073800

/-- `(2^(n+1))%A002808(n+1)` -/
def P4820594876694067768.Spec : Prop :=
  ∀ n, P4820594876694067768.a n = A073800 (n + 1)

theorem P4820594876694067768.correct : P4820594876694067768.Spec := by
  intro n
  simp only [A073800, Nat.add_sub_cancel]

end A073800

/-! ## A073800.P17285408576301619992

`A000079(n+1)%Δ[A053767(n)]`
-/

namespace A073800.P17285408576301619992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (n + 1)) (f1 (n + 1) - f1 n)

end

end A073800.P17285408576301619992

namespace A073800

/-- `A000079(n+1)%Δ[A053767(n)]` -/
def P17285408576301619992.Spec : Prop :=
  ∀ n, P17285408576301619992.a n = A073800 (n + 1)

end A073800

/-! ## A073800.P132665538577227271

`A060546(2*(n+1))%A018252(n+2)`
-/

namespace A073800.P132665538577227271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060546 (2 * (n + 1))) (A018252 (n + 2))

end

end A073800.P132665538577227271

namespace A073800

/-- `A060546(2*(n+1))%A018252(n+2)` -/
def P132665538577227271.Spec : Prop :=
  ∀ n, P132665538577227271.a n = A073800 (n + 1)

end A073800

/-! ## A073800.P11686181168048745855

`A011782(n+2)%(lt[2, A000005(n+3)]+3)`
-/

namespace A073800.P11686181168048745855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (n + 2)) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3 : ℤ)

end

end A073800.P11686181168048745855

namespace A073800

/-- `A011782(n+2)%(lt[2, A000005(n+3)]+3)` -/
def P11686181168048745855.Spec : Prop :=
  ∀ n, P11686181168048745855.a n = A073800 (n + 1)

end A073800

/-! ## A073800.P9472863947725595501

`sqrt(A000079(2*(n+1)))%A141468(n+3)`
-/

namespace A073800.P9472863947725595501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A000079 (2 * (n + 1)) : ℝ))) (A141468 (n + 3))

end

end A073800.P9472863947725595501

namespace A073800

/-- `sqrt(A000079(2*(n+1)))%A141468(n+3)` -/
def P9472863947725595501.Spec : Prop :=
  ∀ n, P9472863947725595501.a n = A073800 (n + 1)

end A073800

/-!
# A073802: Number of common divisors of n and sigma(n).

The programs for A073802, the canonical program `A073802.P5532415741210097139` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073802 has offset 1).

The definition of A073802 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073802.P5532415741210097139

`A000005(A009194(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073802

/-- `A000005(A009194(n+1))` -/
def P5532415741210097139.Spec : Prop :=
  ∀ n, P5532415741210097139.a n = A073802 (n + 1)

theorem P5532415741210097139.correct : P5532415741210097139.Spec := by
  intro n
  simp only [A073802, Nat.add_sub_cancel]

end A073802

/-! ## A073802.P2256224240448807231

`A000005(gcd(∑{d}[n+1, #], n+1))`
-/

namespace A073802.P2256224240448807231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd (∑ d ∈ Nat.divisors (f1 n), d) (n + 1))

end

end A073802.P2256224240448807231

namespace A073802

/-- `A000005(gcd(∑{d}[n+1, #], n+1))` -/
def P2256224240448807231.Spec : Prop :=
  ∀ n, P2256224240448807231.a n = A073802 (n + 1)

end A073802

/-! ## A073802.P17622313510403414755

`A000005(gcd(n+1, Δ[A160664(n)]))`
-/

namespace A073802.P17622313510403414755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n))

end

end A073802.P17622313510403414755

namespace A073802

/-- `A000005(gcd(n+1, Δ[A160664(n)]))` -/
def P17622313510403414755.Spec : Prop :=
  ∀ n, P17622313510403414755.a n = A073802 (n + 1)

end A073802

/-! ## A073802.P17220530077145919229

`A000005(n+1)-A173438(n+1)`
-/

namespace A073802.P17220530077145919229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A173438 (n + 1)

end

end A073802.P17220530077145919229

namespace A073802

/-- `A000005(n+1)-A173438(n+1)` -/
def P17220530077145919229.Spec : Prop :=
  ∀ n, P17220530077145919229.a n = A073802 (n + 1)

end A073802

/-! ## A073802.P14367922242595147262

`A000005((n+1)/A017666(n+1))`
-/

namespace A073802.P14367922242595147262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A017666 (n + 1) : ℚ))).toNat

end

end A073802.P14367922242595147262

namespace A073802

/-- `A000005((n+1)/A017666(n+1))` -/
def P14367922242595147262.Spec : Prop :=
  ∀ n, P14367922242595147262.a n = A073802 (n + 1)

end A073802

/-! ## A073802.P10170883324613965737

`A000005(A000203(n+1)/A017665(n+1))`
-/

namespace A073802.P10170883324613965737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A017665 (n + 1) : ℚ))).toNat

end

end A073802.P10170883324613965737

namespace A073802

/-- `A000005(A000203(n+1)/A017665(n+1))` -/
def P10170883324613965737.Spec : Prop :=
  ∀ n, P10170883324613965737.a n = A073802 (n + 1)

end A073802

/-! ## A073802.P6568025771775532046

`A000005(A388270(n+1)/A000005(n+1))`
-/

namespace A073802.P6568025771775532046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A388270 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ))).toNat

end

end A073802.P6568025771775532046

namespace A073802

/-- `A000005(A388270(n+1)/A000005(n+1))` -/
def P6568025771775532046.Spec : Prop :=
  ∀ n, P6568025771775532046.a n = A073802 (n + 1)

end A073802

/-! ## A073802.P15220026955975422740

`A000005(gcd(A000027(n+1), A001065(n+1)))`
-/

namespace A073802.P15220026955975422740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000027 (n + 1)) (A001065 (n + 1)))

end

end A073802.P15220026955975422740

namespace A073802

/-- `A000005(gcd(A000027(n+1), A001065(n+1)))` -/
def P15220026955975422740.Spec : Prop :=
  ∀ n, P15220026955975422740.a n = A073802 (n + 1)

end A073802

/-! ## A073802.P14471918428948699439

`A000005(gcd(A001065(n+1)+n+1, A155085(n+1)))`
-/

namespace A073802.P14471918428948699439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A001065 (n + 1) + (n + 1 : ℤ)) (A155085 (n + 1)))

end

end A073802.P14471918428948699439

namespace A073802

/-- `A000005(gcd(A001065(n+1)+n+1, A155085(n+1)))` -/
def P14471918428948699439.Spec : Prop :=
  ∀ n, P14471918428948699439.a n = A073802 (n + 1)

end A073802

/-! ## A073802.P18058667543180825023

`A000005(A324544(A250245(n+1)))`
-/

namespace A073802.P18058667543180825023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A324544 (A250245 (n + 1)).toNat).toNat

end

end A073802.P18058667543180825023

namespace A073802

/-- `A000005(A324544(A250245(n+1)))` -/
def P18058667543180825023.Spec : Prop :=
  ∀ n, P18058667543180825023.a n = A073802 (n + 1)

end A073802

/-! ## A073802.P13533023107200449778

`A001222(A327155(n+1))+1`
-/

namespace A073802.P13533023107200449778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A327155 (n + 1)).toNat + 1

end

end A073802.P13533023107200449778

namespace A073802

/-- `A001222(A327155(n+1))+1` -/
def P13533023107200449778.Spec : Prop :=
  ∀ n, P13533023107200449778.a n = A073802 (n + 1)

end A073802

/-! ## A073802.P8622510151958584437

`A272171(A286591(n+1))`
-/

namespace A073802.P8622510151958584437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272171 (A286591 (n + 1)).toNat

end

end A073802.P8622510151958584437

namespace A073802

/-- `A272171(A286591(n+1))` -/
def P8622510151958584437.Spec : Prop :=
  ∀ n, P8622510151958584437.a n = A073802 (n + 1)

end A073802

/-! ## A073802.P13429785094617184245

`A000005(A324396(A005940(n+2)))`
-/

namespace A073802.P13429785094617184245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A324396 (A005940 (n + 2)).toNat).toNat

end

end A073802.P13429785094617184245

namespace A073802

/-- `A000005(A324396(A005940(n+2)))` -/
def P13429785094617184245.Spec : Prop :=
  ∀ n, P13429785094617184245.a n = A073802 (n + 1)

end A073802

/-! ## A073802.P2417529257079011364

`A073093(A327154(n+1))`
-/

namespace A073802.P2417529257079011364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A327154 (n + 1)).toNat

end

end A073802.P2417529257079011364

namespace A073802

/-- `A073093(A327154(n+1))` -/
def P2417529257079011364.Spec : Prop :=
  ∀ n, P2417529257079011364.a n = A073802 (n + 1)

end A073802

/-! ## A073802.P7005439240201666315

`A272171(A286570(n+1))`
-/

namespace A073802.P7005439240201666315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272171 (A286570 (n + 1)).toNat

end

end A073802.P7005439240201666315

namespace A073802

/-- `A272171(A286570(n+1))` -/
def P7005439240201666315.Spec : Prop :=
  ∀ n, P7005439240201666315.a n = A073802 (n + 1)

end A073802

/-! ## A073802.P10135145426050588404

`∑{d}[A009194(n+1), A009194(A009194(#²))]`
-/

namespace A073802.P10135145426050588404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A009194 (A009194 (d ^ 2)).toNat

end

end A073802.P10135145426050588404

namespace A073802

/-- `∑{d}[A009194(n+1), A009194(A009194(#²))]` -/
def P10135145426050588404.Spec : Prop :=
  ∀ n, P10135145426050588404.a n = A073802 (n + 1)

end A073802

/-!
# A073803: Numbers k such that the number of divisors of k is smaller than that of sigma(k).

The programs for A073803, the canonical program `A073803.P4157823894038143292` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073803 has offset 1).

The definition of A073803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9631 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073803.P8593413653687239135

`eq[1, A295306(n+1)]+1`
-/

namespace A073803.P8593413653687239135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073803.P8593413653687239135

namespace A073803

/-- `eq[1, A295306(n+1)]+1` -/
def P8593413653687239135.Spec : Prop :=
  ∀ n, (P8593413653687239135.a n : ℤ) = A073803 (n + 1)

end A073803

/-! ## A073803.P3130625053599856699

`record[A295306(n+3)+n+2]`
-/

namespace A073803.P3130625053599856699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (n + 3) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073803.P3130625053599856699

namespace A073803

/-- `record[A295306(n+3)+n+2]` -/
def P3130625053599856699.Spec : Prop :=
  ∀ n, P3130625053599856699.a n = A073803 (n + 1)

end A073803

/-! ## A073803.P11727557830005467287

`∪[A056912(n+1), A082092(n+1)]`
-/

namespace A073803.P11727557830005467287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073803.P11727557830005467287

namespace A073803

/-- `∪[A056912(n+1), A082092(n+1)]` -/
def P11727557830005467287.Spec : Prop :=
  ∀ n, (P11727557830005467287.a n : ℤ) = A073803 (n + 1)

end A073803

/-! ## A073803.P13311321969432524604

`∪[A065091(n+1), A082092(n+1)]`
-/

namespace A073803.P13311321969432524604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073803.P13311321969432524604

namespace A073803

/-- `∪[A065091(n+1), A082092(n+1)]` -/
def P13311321969432524604.Spec : Prop :=
  ∀ n, (P13311321969432524604.a n : ℤ) = A073803 (n + 1)

end A073803

/-! ## A073803.P7872959503349348947

`∪[A075763(n+1), A082092(n+1)]`
-/

namespace A073803.P7872959503349348947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A073803.P7872959503349348947

namespace A073803

/-- `∪[A075763(n+1), A082092(n+1)]` -/
def P7872959503349348947.Spec : Prop :=
  ∀ n, (P7872959503349348947.a n : ℤ) = A073803 (n + 1)

end A073803

/-! ## A073803.P8398924976799248471

`lt[A000005(n+1), A000005(A000203(n+1))]+1`
-/

namespace A073803.P8398924976799248471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A073803.P8398924976799248471

namespace A073803

/-- `lt[A000005(n+1), A000005(A000203(n+1))]+1` -/
def P8398924976799248471.Spec : Prop :=
  ∀ n, (P8398924976799248471.a n : ℤ) = A073803 (n + 1)

end A073803

/-! ## A073803.P8646314877991391353

`A020725(eq[1, A295306(n+1)])`
-/

namespace A073803.P8646314877991391353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073803.P8646314877991391353

namespace A073803

/-- `A020725(eq[1, A295306(n+1)])` -/
def P8646314877991391353.Spec : Prop :=
  ∀ n, P8646314877991391353.a n = A073803 (n + 1)

end A073803

/-! ## A073803.P1657453807183990009

`A065475(eq[1, A295306(n+1)])`
-/

namespace A073803.P1657453807183990009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073803.P1657453807183990009

namespace A073803

/-- `A065475(eq[1, A295306(n+1)])` -/
def P1657453807183990009.Spec : Prop :=
  ∀ n, P1657453807183990009.a n = A073803 (n + 1)

end A073803

/-! ## A073803.P3856787848613576260

`eq[1, A295306(A028310(n))]`
-/

namespace A073803.P3856787848613576260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073803.P3856787848613576260

namespace A073803

/-- `eq[1, A295306(A028310(n))]` -/
def P3856787848613576260.Spec : Prop :=
  ∀ n, (P3856787848613576260.a n : ℤ) = A073803 (n + 1)

end A073803

/-! ## A073803.P9550741826647821378

`eq[1, A295306(A000007(n)+n)]`
-/

namespace A073803.P9550741826647821378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073803.P9550741826647821378

namespace A073803

/-- `eq[1, A295306(A000007(n)+n)]` -/
def P9550741826647821378.Spec : Prop :=
  ∀ n, (P9550741826647821378.a n : ℤ) = A073803 (n + 1)

end A073803

/-! ## A073803.P6265718047150247104

`lt[A000005(n+1), A000005(∑{d}[n+1, #])]+1`
-/

namespace A073803.P6265718047150247104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A073803.P6265718047150247104

namespace A073803

/-- `lt[A000005(n+1), A000005(∑{d}[n+1, #])]+1` -/
def P6265718047150247104.Spec : Prop :=
  ∀ n, (P6265718047150247104.a n : ℤ) = A073803 (n + 1)

end A073803

/-! ## A073803.P4157823894038143292

`A020725(lt[A334954(n+1), A062068(n+1)+1])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073803

/-- `A020725(lt[A334954(n+1), A062068(n+1)+1])` -/
def P4157823894038143292.Spec : Prop :=
  ∀ n, P4157823894038143292.a n = A073803 (n + 1)

theorem P4157823894038143292.correct : P4157823894038143292.Spec := by
  intro n
  simp only [A073803, Nat.add_sub_cancel]

end A073803

/-! ## A073803.P6010207272654512228

`A065475(lt[A334954(n+1), A062068(n+1)+1])`
-/

namespace A073803.P6010207272654512228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073803.P6010207272654512228

namespace A073803

/-- `A065475(lt[A334954(n+1), A062068(n+1)+1])` -/
def P6010207272654512228.Spec : Prop :=
  ∀ n, P6010207272654512228.a n = A073803 (n + 1)

end A073803

/-! ## A073803.P2867735893794383639

`lt[A000005(n+1), A000005(A245092(2*n+1))]+1`
-/

namespace A073803.P2867735893794383639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A245092 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A073803.P2867735893794383639

namespace A073803

/-- `lt[A000005(n+1), A000005(A245092(2*n+1))]+1` -/
def P2867735893794383639.Spec : Prop :=
  ∀ n, (P2867735893794383639.a n : ℤ) = A073803 (n + 1)

end A073803

/-! ## A073803.P13023959787522255712

`lt[A032741(n+1), A032741(A000203(n+1))]+1`
-/

namespace A073803.P13023959787522255712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A073803.P13023959787522255712

namespace A073803

/-- `lt[A032741(n+1), A032741(A000203(n+1))]+1` -/
def P13023959787522255712.Spec : Prop :=
  ∀ n, (P13023959787522255712.a n : ℤ) = A073803 (n + 1)

end A073803

/-! ## A073803.P1581018586775322788

`lt[A200213(n+1), A161840(A000203(n+1))]+1`
-/

namespace A073803.P1581018586775322788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161840 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A073803.P1581018586775322788

namespace A073803

/-- `lt[A200213(n+1), A161840(A000203(n+1))]+1` -/
def P1581018586775322788.Spec : Prop :=
  ∀ n, (P1581018586775322788.a n : ℤ) = A073803 (n + 1)

end A073803

/-! ## A073803.P6763609076705722923

`eq[1, A295306(A233583(n+1))]`
-/

namespace A073803.P6763609076705722923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073803.P6763609076705722923

namespace A073803

/-- `eq[1, A295306(A233583(n+1))]` -/
def P6763609076705722923.Spec : Prop :=
  ∀ n, (P6763609076705722923.a n : ℤ) = A073803 (n + 1)

end A073803

/-!
# A073804: Numbers k such that the number of divisors of k is greater than that of sigma(k).

The programs for A073804, the canonical program `A073804.P4353422266090088354` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073804 has offset 1).

The definition of A073804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 885 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073804.P4353422266090088354

`eq[1-4/2, A295306(n+2)]+2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A073804

/-- `eq[1-4/2, A295306(n+2)]+2` -/
def P4353422266090088354.Spec : Prop :=
  ∀ n, (P4353422266090088354.a n : ℤ) = A073804 (n + 1)

theorem P4353422266090088354.correct : P4353422266090088354.Spec := by
  intro n
  simp only [A073804, Nat.add_sub_cancel]

end A073804

/-! ## A073804.P2742976502672743897

`lt[A000005(A000203(n+1)), A000005(n+1)]+1`
-/

namespace A073804.P2742976502672743897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A073804.P2742976502672743897

namespace A073804

/-- `lt[A000005(A000203(n+1)), A000005(n+1)]+1` -/
def P2742976502672743897.Spec : Prop :=
  ∀ n, (P2742976502672743897.a n : ℤ) = A073804 (n + 1)

end A073804

/-! ## A073804.P13355642395186306009

`eq[1, A295306(A028310(n))+2]`
-/

namespace A073804.P13355642395186306009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (A028310 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073804.P13355642395186306009

namespace A073804

/-- `eq[1, A295306(A028310(n))+2]` -/
def P13355642395186306009.Spec : Prop :=
  ∀ n, (P13355642395186306009.a n : ℤ) = A073804 (n + 1)

end A073804

/-! ## A073804.P12851950248709469622

`A020725(eq[1, A295306(n+1)+2])`
-/

namespace A073804.P12851950248709469622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073804.P12851950248709469622

namespace A073804

/-- `A020725(eq[1, A295306(n+1)+2])` -/
def P12851950248709469622.Spec : Prop :=
  ∀ n, P12851950248709469622.a n = A073804 (n + 1)

end A073804

/-! ## A073804.P17148215365199430648

`A065475(eq[1, A295306(n+1)+2])`
-/

namespace A073804.P17148215365199430648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073804.P17148215365199430648

namespace A073804

/-- `A065475(eq[1, A295306(n+1)+2])` -/
def P17148215365199430648.Spec : Prop :=
  ∀ n, P17148215365199430648.a n = A073804 (n + 1)

end A073804

/-! ## A073804.P264288031482292971

`A020725(lt[A062068(n+1)+1, A334954(n+1)])`
-/

namespace A073804.P264288031482292971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073804.P264288031482292971

namespace A073804

/-- `A020725(lt[A062068(n+1)+1, A334954(n+1)])` -/
def P264288031482292971.Spec : Prop :=
  ∀ n, P264288031482292971.a n = A073804 (n + 1)

end A073804

/-! ## A073804.P3614543114508320330

`A065475(lt[A062068(n+1)+1, A334954(n+1)])`
-/

namespace A073804.P3614543114508320330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A073804.P3614543114508320330

namespace A073804

/-- `A065475(lt[A062068(n+1)+1, A334954(n+1)])` -/
def P3614543114508320330.Spec : Prop :=
  ∀ n, P3614543114508320330.a n = A073804 (n + 1)

end A073804

/-! ## A073804.P2050164836165434683

`lt[A161840(A000203(n+1)), A161840(n+1)]+1`
-/

namespace A073804.P2050164836165434683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161840 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161840 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A073804.P2050164836165434683

namespace A073804

/-- `lt[A161840(A000203(n+1)), A161840(n+1)]+1` -/
def P2050164836165434683.Spec : Prop :=
  ∀ n, (P2050164836165434683.a n : ℤ) = A073804 (n + 1)

end A073804

/-! ## A073804.P9172930594518844608

`eq[1, -A295306(A233583(n+1))]`
-/

namespace A073804.P9172930594518844608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A295306 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073804.P9172930594518844608

namespace A073804

/-- `eq[1, -A295306(A233583(n+1))]` -/
def P9172930594518844608.Spec : Prop :=
  ∀ n, (P9172930594518844608.a n : ℤ) = A073804 (n + 1)

end A073804

/-! ## A073804.P14024139923949688534

`eq[A033999(2*n+1), A295306(A233583(n+1))]`
-/

namespace A073804.P14024139923949688534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073804.P14024139923949688534

namespace A073804

/-- `eq[A033999(2*n+1), A295306(A233583(n+1))]` -/
def P14024139923949688534.Spec : Prop :=
  ∀ n, (P14024139923949688534.a n : ℤ) = A073804 (n + 1)

end A073804

/-!
# A073805: Numbers k such that 1 + k*R(k) is prime, where R(k) is the reverse of k.

The programs for A073805, there is no canonical definition to state claims against.
-/

/-! ## A073805.P9501563501245700748

`eq[1, A001222(A061205(n)+1)]`
-/

namespace A073805.P9501563501245700748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061205 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073805.P9501563501245700748

/-! ## A073805.P16428280015074741553

`eq[2, A000005(A061205(n)+1)]`
-/

namespace A073805.P16428280015074741553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A061205 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073805.P16428280015074741553

/-! ## A073805.P1946393325061794906

`eq[1, A001222(n*A004086(n)+1)]`
-/

namespace A073805.P1946393325061794906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n : ℤ) * A004086 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073805.P1946393325061794906

/-! ## A073805.P16559328736727686700

`eq[2, A000005(n*A004086(n)+1)]`
-/

namespace A073805.P16559328736727686700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n : ℤ) * A004086 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073805.P16559328736727686700

/-! ## A073805.P6307886768402697358

`eq[2, A000005(n*(n-A056965(n))+1)]`
-/

namespace A073805.P6307886768402697358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n : ℤ) * ((n : ℤ) - A056965 n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073805.P6307886768402697358

/-!
# A073806: Number of divisors of sum of square of divisors.

The programs for A073806, the canonical program `A073806.P9628583595315297770` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073806 has offset 1).

The definition of A073806 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001157, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073806.P9628583595315297770

`A000005(A001157(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073806

/-- `A000005(A001157(n+1))` -/
def P9628583595315297770.Spec : Prop :=
  ∀ n, P9628583595315297770.a n = A073806 (n + 1)

theorem P9628583595315297770.correct : P9628583595315297770.Spec := by
  intro n
  simp only [A073806, Nat.add_sub_cancel]

end A073806

/-! ## A073806.P8128331030217233864

`∏{e}[∑{d}[n+1, #²], #+1]`
-/

namespace A073806.P8128331030217233864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A073806.P8128331030217233864

namespace A073806

/-- `∏{e}[∑{d}[n+1, #²], #+1]` -/
def P8128331030217233864.Spec : Prop :=
  ∀ n, (P8128331030217233864.a n : ℤ) = A073806 (n + 1)

end A073806

/-! ## A073806.P15397197672501596937

`A000005(∑{d}[n+1, #²])`
-/

namespace A073806.P15397197672501596937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n), d ^ 2)

end

end A073806.P15397197672501596937

namespace A073806

/-- `A000005(∑{d}[n+1, #²])` -/
def P15397197672501596937.Spec : Prop :=
  ∀ n, P15397197672501596937.a n = A073806 (n + 1)

end A073806

/-! ## A073806.P13943021605046011664

`A000005((n+1)*∑{d}[n+1, #]-∑{d}[n+1, #*(n+1-#)])`
-/

namespace A073806.P13943021605046011664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * ((n + 1 : ℤ) - (d : ℤ))).toNat

end

end A073806.P13943021605046011664

namespace A073806

/-- `A000005((n+1)*∑{d}[n+1, #]-∑{d}[n+1, #*(n+1-#)])` -/
def P13943021605046011664.Spec : Prop :=
  ∀ n, P13943021605046011664.a n = A073806 (n + 1)

end A073806

/-! ## A073806.P8837376394112487599

`A000005(sqrt(A356533(n+1)))`
-/

namespace A073806.P8837376394112487599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A356533 (n + 1) : ℝ))).toNat

end

end A073806.P8837376394112487599

namespace A073806

/-- `A000005(sqrt(A356533(n+1)))` -/
def P8837376394112487599.Spec : Prop :=
  ∀ n, P8837376394112487599.a n = A073806 (n + 1)

end A073806

/-! ## A073806.P1186809375551191527

`A000005(A053807(n+2)+1)`
-/

namespace A073806.P1186809375551191527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053807 (n + 2) + 1).toNat

end

end A073806.P1186809375551191527

namespace A073806

/-- `A000005(A053807(n+2)+1)` -/
def P1186809375551191527.Spec : Prop :=
  ∀ n, P1186809375551191527.a n = A073806 (n + 1)

end A073806

/-! ## A073806.P11270281471936781034

`A000005(A328259(n+1)/(n+1))`
-/

namespace A073806.P11270281471936781034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A328259 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A073806.P11270281471936781034

namespace A073806

/-- `A000005(A328259(n+1)/(n+1))` -/
def P11270281471936781034.Spec : Prop :=
  ∀ n, P11270281471936781034.a n = A073806 (n + 1)

end A073806

/-! ## A073806.P10590882543644989993

`A000005(A067558(n+1)+(n+1)²)`
-/

namespace A073806.P10590882543644989993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A067558 (n + 1) + ((n + 1) ^ 2 : ℤ)).toNat

end

end A073806.P10590882543644989993

namespace A073806

/-- `A000005(A067558(n+1)+(n+1)²)` -/
def P10590882543644989993.Spec : Prop :=
  ∀ n, P10590882543644989993.a n = A073806 (n + 1)

end A073806

/-! ## A073806.P596499533983353366

`A000005(A086666(n+1)+A000203(n+1))`
-/

namespace A073806.P596499533983353366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A086666 (n + 1) + A000203 (n + 1)).toNat

end

end A073806.P596499533983353366

namespace A073806

/-- `A000005(A086666(n+1)+A000203(n+1))` -/
def P596499533983353366.Spec : Prop :=
  ∀ n, P596499533983353366.a n = A073806 (n + 1)

end A073806

/-! ## A073806.P17914391750920155588

`A000005(A189835(n+1)+A038040(n+1))`
-/

namespace A073806.P17914391750920155588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A189835 (n + 1) + A038040 (n + 1)).toNat

end

end A073806.P17914391750920155588

namespace A073806

/-- `A000005(A189835(n+1)+A038040(n+1))` -/
def P17914391750920155588.Spec : Prop :=
  ∀ n, P17914391750920155588.a n = A073806 (n + 1)

end A073806

/-! ## A073806.P5956506545538267304

`A000005(A092346(n+1)-A000203(n+1))`
-/

namespace A073806.P5956506545538267304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A092346 (n + 1) - A000203 (n + 1)).toNat

end

end A073806.P5956506545538267304

namespace A073806

/-- `A000005(A092346(n+1)-A000203(n+1))` -/
def P5956506545538267304.Spec : Prop :=
  ∀ n, P5956506545538267304.a n = A073806 (n + 1)

end A073806

/-! ## A073806.P13980451470888786205

`A000005(A072861(n+1)-A066293(n+1))`
-/

namespace A073806.P13980451470888786205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A072861 (n + 1) - A066293 (n + 1)).toNat

end

end A073806.P13980451470888786205

namespace A073806

/-- `A000005(A072861(n+1)-A066293(n+1))` -/
def P13980451470888786205.Spec : Prop :=
  ∀ n, P13980451470888786205.a n = A073806 (n + 1)

end A073806

/-! ## A073806.P3015317462452389223

`A000005(A067692(n+1)-A119616(n+1))`
-/

namespace A073806.P3015317462452389223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A067692 (n + 1) - A119616 (n + 1)).toNat

end

end A073806.P3015317462452389223

namespace A073806

/-- `A000005(A067692(n+1)-A119616(n+1))` -/
def P3015317462452389223.Spec : Prop :=
  ∀ n, P3015317462452389223.a n = A073806 (n + 1)

end A073806

/-! ## A073806.P16606688659018799748

`A000005(A000330(n+1)-A276984(n+1))`
-/

namespace A073806.P16606688659018799748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000330 (n + 1) - A276984 (n + 1)).toNat

end

end A073806.P16606688659018799748

namespace A073806

/-- `A000005(A000330(n+1)-A276984(n+1))` -/
def P16606688659018799748.Spec : Prop :=
  ∀ n, P16606688659018799748.a n = A073806 (n + 1)

end A073806

/-! ## A073806.P179357140413954139

`A000005(A059358(n+1)-A363607(n+1))`
-/

namespace A073806.P179357140413954139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059358 (n + 1) - A363607 (n + 1)).toNat

end

end A073806.P179357140413954139

namespace A073806

/-- `A000005(A059358(n+1)-A363607(n+1))` -/
def P179357140413954139.Spec : Prop :=
  ∀ n, P179357140413954139.a n = A073806 (n + 1)

end A073806

/-! ## A073806.P15417497935745441050

`A000005(A203849(n+1)/A000045(n+1))`
-/

namespace A073806.P15417497935745441050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A203849 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ))).toNat

end

end A073806.P15417497935745441050

namespace A073806

/-- `A000005(A203849(n+1)/A000045(n+1))` -/
def P15417497935745441050.Spec : Prop :=
  ∀ n, P15417497935745441050.a n = A073806 (n + 1)

end A073806

/-! ## A073806.P15968938758282464405

`A000005(2*A007437(n+1)-A000203(n+1))`
-/

namespace A073806.P15968938758282464405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A007437 (n + 1) - A000203 (n + 1)).toNat

end

end A073806.P15968938758282464405

namespace A073806

/-- `A000005(2*A007437(n+1)-A000203(n+1))` -/
def P15968938758282464405.Spec : Prop :=
  ∀ n, P15968938758282464405.a n = A073806 (n + 1)

end A073806

/-! ## A073806.P16019774989306326123

`A000005(A007437(n+1)+A007437(n+1)-A000203(n+1))`
-/

namespace A073806.P16019774989306326123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007437 (n + 1) + (A007437 (n + 1) - A000203 (n + 1))).toNat

end

end A073806.P16019774989306326123

namespace A073806

/-- `A000005(A007437(n+1)+A007437(n+1)-A000203(n+1))` -/
def P16019774989306326123.Spec : Prop :=
  ∀ n, P16019774989306326123.a n = A073806 (n + 1)

end A073806

/-! ## A073806.P3485428242430861111

`A000005(A035316((n+1)²))`
-/

namespace A073806.P3485428242430861111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A035316 ((n + 1) ^ 2)).toNat

end

end A073806.P3485428242430861111

namespace A073806

/-- `A000005(A035316((n+1)²))` -/
def P3485428242430861111.Spec : Prop :=
  ∀ n, P3485428242430861111.a n = A073806 (n + 1)

end A073806

/-!
# A073807: Number of divisors of sum of cube of divisors.

The programs for A073807, the canonical program `A073807.P6967064192508235977` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073807 has offset 1).

The definition of A073807 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073807.P6967064192508235977

`A000005(A001158(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073807

/-- `A000005(A001158(n+1))` -/
def P6967064192508235977.Spec : Prop :=
  ∀ n, P6967064192508235977.a n = A073807 (n + 1)

theorem P6967064192508235977.correct : P6967064192508235977.Spec := by
  intro n
  simp only [A073807, Nat.add_sub_cancel]

end A073807

/-! ## A073807.P5080426251395633263

`∏{e}[∑{d}[n+1, #^3], #+1]`
-/

namespace A073807.P5080426251395633263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A073807.P5080426251395633263

namespace A073807

/-- `∏{e}[∑{d}[n+1, #^3], #+1]` -/
def P5080426251395633263.Spec : Prop :=
  ∀ n, (P5080426251395633263.a n : ℤ) = A073807 (n + 1)

end A073807

/-! ## A073807.P15794814523719603388

`∑{d}[∑{d}[n+1, #^3], gcd(41, #)]`
-/

namespace A073807.P15794814523719603388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd 41 d

end

end A073807.P15794814523719603388

namespace A073807

/-- `∑{d}[∑{d}[n+1, #^3], gcd(41, #)]` -/
def P15794814523719603388.Spec : Prop :=
  ∀ n, (P15794814523719603388.a n : ℤ) = A073807 (n + 1)

end A073807

/-! ## A073807.P16247104151457405447

`∑{d}[∑{d}[n+1, #^3], ceil(acot(#))]`
-/

namespace A073807.P16247104151457405447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

end

end A073807.P16247104151457405447

namespace A073807

/-- `∑{d}[∑{d}[n+1, #^3], ceil(acot(#))]` -/
def P16247104151457405447.Spec : Prop :=
  ∀ n, P16247104151457405447.a n = A073807 (n + 1)

end A073807

/-! ## A073807.P16506579280021814204

`∑{d}[∑{d}[n+1, #^3], ceil(1/#)]`
-/

namespace A073807.P16506579280021814204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A073807.P16506579280021814204

namespace A073807

/-- `∑{d}[∑{d}[n+1, #^3], ceil(1/#)]` -/
def P16506579280021814204.Spec : Prop :=
  ∀ n, P16506579280021814204.a n = A073807 (n + 1)

end A073807

/-! ## A073807.P17850466441065146550

`∑{d}[A001158(n+1), A000010(ceil(1/#))]`
-/

namespace A073807.P17850466441065146550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 ⌈1 / (d : ℚ)⌉.toNat

end

end A073807.P17850466441065146550

namespace A073807

/-- `∑{d}[A001158(n+1), A000010(ceil(1/#))]` -/
def P17850466441065146550.Spec : Prop :=
  ∀ n, P17850466441065146550.a n = A073807 (n + 1)

end A073807

/-! ## A073807.P6465741305217413752

`∑{d}[A001158(n+1), A000045(ceil(1/#))]`
-/

namespace A073807.P6465741305217413752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000045 ⌈1 / (d : ℚ)⌉.toNat

end

end A073807.P6465741305217413752

namespace A073807

/-- `∑{d}[A001158(n+1), A000045(ceil(1/#))]` -/
def P6465741305217413752.Spec : Prop :=
  ∀ n, P6465741305217413752.a n = A073807 (n + 1)

end A073807

/-! ## A073807.P18048309331704450641

`∑{d}[A001158(n+1), A020639(ceil(1/#))]`
-/

namespace A073807.P18048309331704450641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A020639 ⌈1 / (d : ℚ)⌉.toNat

end

end A073807.P18048309331704450641

namespace A073807

/-- `∑{d}[A001158(n+1), A020639(ceil(1/#))]` -/
def P18048309331704450641.Spec : Prop :=
  ∀ n, P18048309331704450641.a n = A073807 (n + 1)

end A073807

/-!
# A073808: Number of common divisors of sigma_1(n) and sigma_2(n).

The programs for A073808, the canonical program `A073808.P10399761724564126745` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073808 has offset 1).

The definition of A073808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073808.P10399761724564126745

`A000005(A179931(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073808

/-- `A000005(A179931(n+1))` -/
def P10399761724564126745.Spec : Prop :=
  ∀ n, P10399761724564126745.a n = A073808 (n + 1)

theorem P10399761724564126745.correct : P10399761724564126745.Spec := by
  intro n
  simp only [A073808, Nat.add_sub_cancel]

end A073808

/-! ## A073808.P10653055306041177681

`A000005(gcd(A000203(n+1), ∑{d}[n+1, #²]))`
-/

namespace A073808.P10653055306041177681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000203 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ))

end

end A073808.P10653055306041177681

namespace A073808

/-- `A000005(gcd(A000203(n+1), ∑{d}[n+1, #²]))` -/
def P10653055306041177681.Spec : Prop :=
  ∀ n, P10653055306041177681.a n = A073808 (n + 1)

end A073808

/-! ## A073808.P14122934838249762742

`A000005(A000203(n+1)/A158275(n+1))`
-/

namespace A073808.P14122934838249762742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A158275 (n + 1) : ℚ))).toNat

end

end A073808.P14122934838249762742

namespace A073808

/-- `A000005(A000203(n+1)/A158275(n+1))` -/
def P14122934838249762742.Spec : Prop :=
  ∀ n, P14122934838249762742.a n = A073808 (n + 1)

end A073808

/-! ## A073808.P3440743228187652500

`A000005(A001157(n+1)/A158274(n+1))`
-/

namespace A073808.P3440743228187652500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A001157 (n + 1) : ℚ) / (A158274 (n + 1) : ℚ))).toNat

end

end A073808.P3440743228187652500

namespace A073808

/-- `A000005(A001157(n+1)/A158274(n+1))` -/
def P3440743228187652500.Spec : Prop :=
  ∀ n, P3440743228187652500.a n = A073808 (n + 1)

end A073808

/-! ## A073808.P17656715201060370419

`A000005(gcd(A000203(n+1), A001157(n+1)))`
-/

namespace A073808.P17656715201060370419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000203 (n + 1)) (A001157 (n + 1)))

end

end A073808.P17656715201060370419

namespace A073808

/-- `A000005(gcd(A000203(n+1), A001157(n+1)))` -/
def P17656715201060370419.Spec : Prop :=
  ∀ n, P17656715201060370419.a n = A073808 (n + 1)

end A073808

/-!
# A073809: Number of common divisors of sigma_1(n) and sigma_3(n).

The programs for A073809, the canonical program `A073809.P76428896373836633` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073809 has offset 1).

The definition of A073809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073809.P76428896373836633

`A000005(gcd(∑{d}[n+1, #^3], ∑{d}[n+1, #]))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073809

/-- `A000005(gcd(∑{d}[n+1, #^3], ∑{d}[n+1, #]))` -/
def P76428896373836633.Spec : Prop :=
  ∀ n, P76428896373836633.a n = A073809 (n + 1)

theorem P76428896373836633.correct : P76428896373836633.Spec := by
  intro n
  simp only [A073809, Nat.add_sub_cancel]

end A073809

/-! ## A073809.P3971295493181485172

`A000005(A000203(n+1)/A091258(n+1))`
-/

namespace A073809.P3971295493181485172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A091258 (n + 1) : ℚ))).toNat

end

end A073809.P3971295493181485172

namespace A073809

/-- `A000005(A000203(n+1)/A091258(n+1))` -/
def P3971295493181485172.Spec : Prop :=
  ∀ n, P3971295493181485172.a n = A073809 (n + 1)

end A073809

/-! ## A073809.P5834502002281081506

`A000005(A001158(n+1)/A091259(n+1))`
-/

namespace A073809.P5834502002281081506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A001158 (n + 1) : ℚ) / (A091259 (n + 1) : ℚ))).toNat

end

end A073809.P5834502002281081506

namespace A073809

/-- `A000005(A001158(n+1)/A091259(n+1))` -/
def P5834502002281081506.Spec : Prop :=
  ∀ n, P5834502002281081506.a n = A073809 (n + 1)

end A073809

/-! ## A073809.P16863171458641574984

`A000005(gcd(A000203(n+1), A001158(n+1)))`
-/

namespace A073809.P16863171458641574984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000203 (n + 1)) (A001158 (n + 1)))

end

end A073809.P16863171458641574984

namespace A073809

/-- `A000005(gcd(A000203(n+1), A001158(n+1)))` -/
def P16863171458641574984.Spec : Prop :=
  ∀ n, P16863171458641574984.a n = A073809 (n + 1)

end A073809

/-! ## A073809.P8481345160475300495

`A069157(A074400(n+1)/A091258(n+1))`
-/

namespace A073809.P8481345160475300495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / (A091258 (n + 1) : ℚ))).toNat

end

end A073809.P8481345160475300495

namespace A073809

/-- `A069157(A074400(n+1)/A091258(n+1))` -/
def P8481345160475300495.Spec : Prop :=
  ∀ n, P8481345160475300495.a n = A073809 (n + 1)

end A073809

/-! ## A073809.P5835851827769757579

`A183063(A074400(n+1)/A091258(n+1))`
-/

namespace A073809.P5835851827769757579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / (A091258 (n + 1) : ℚ))).toNat

end

end A073809.P5835851827769757579

namespace A073809

/-- `A183063(A074400(n+1)/A091258(n+1))` -/
def P5835851827769757579.Spec : Prop :=
  ∀ n, P5835851827769757579.a n = A073809 (n + 1)

end A073809

/-!
# A073810: Number of common divisors of sigma(2,n) and sigma(3,n).

The programs for A073810, the canonical program `A073810.P16325406888385012119` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073810 has offset 1).

The definition of A073810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073810.P16325406888385012119

`A000005(gcd(∑{d}[n+1, #^3], ∑{d}[n+1, #²]))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073810

/-- `A000005(gcd(∑{d}[n+1, #^3], ∑{d}[n+1, #²]))` -/
def P16325406888385012119.Spec : Prop :=
  ∀ n, P16325406888385012119.a n = A073810 (n + 1)

theorem P16325406888385012119.correct : P16325406888385012119.Spec := by
  intro n
  simp only [A073810, Nat.add_sub_cancel]

end A073810

/-! ## A073810.P14735310813197334762

`A000005(gcd(∑{d}[n+1, #²], A001158(n+1)))`
-/

namespace A073810.P14735310813197334762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) (A001158 (n + 1)))

end

end A073810.P14735310813197334762

namespace A073810

/-- `A000005(gcd(∑{d}[n+1, #²], A001158(n+1)))` -/
def P14735310813197334762.Spec : Prop :=
  ∀ n, P14735310813197334762.a n = A073810 (n + 1)

end A073810

/-! ## A073810.P9314350508499722618

`A000005(∑{d}[n+1, #^3]/A298754(n+1))`
-/

namespace A073810.P9314350508499722618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℚ) / (A298754 (n + 1) : ℚ))).toNat

end

end A073810.P9314350508499722618

namespace A073810

/-- `A000005(∑{d}[n+1, #^3]/A298754(n+1))` -/
def P9314350508499722618.Spec : Prop :=
  ∀ n, P9314350508499722618.a n = A073810 (n + 1)

end A073810

/-! ## A073810.P3930313716517304898

`A000005(A001158(n+1)/A298754(n+1))`
-/

namespace A073810.P3930313716517304898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A001158 (n + 1) : ℚ) / (A298754 (n + 1) : ℚ))).toNat

end

end A073810.P3930313716517304898

namespace A073810

/-- `A000005(A001158(n+1)/A298754(n+1))` -/
def P3930313716517304898.Spec : Prop :=
  ∀ n, P3930313716517304898.a n = A073810 (n + 1)

end A073810

/-! ## A073810.P12681584485116457053

`A000005(gcd(A001157(n+1), A001158(n+1)))`
-/

namespace A073810.P12681584485116457053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A001157 (n + 1)) (A001158 (n + 1)))

end

end A073810.P12681584485116457053

namespace A073810

/-- `A000005(gcd(A001157(n+1), A001158(n+1)))` -/
def P12681584485116457053.Spec : Prop :=
  ∀ n, P12681584485116457053.a n = A073810 (n + 1)

end A073810

/-! ## A073810.P12433833629418955937

`A000005(∑{d}[n+1, #²]/A091260(n+1))`
-/

namespace A073810.P12433833629418955937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℚ) / (A091260 (n + 1) : ℚ))).toNat

end

end A073810.P12433833629418955937

namespace A073810

/-- `A000005(∑{d}[n+1, #²]/A091260(n+1))` -/
def P12433833629418955937.Spec : Prop :=
  ∀ n, P12433833629418955937.a n = A073810 (n + 1)

end A073810

/-! ## A073810.P15937552737533763634

`A000005(A001157(n+1)/A091260(n+1))`
-/

namespace A073810.P15937552737533763634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A001157 (n + 1) : ℚ) / (A091260 (n + 1) : ℚ))).toNat

end

end A073810.P15937552737533763634

namespace A073810

/-- `A000005(A001157(n+1)/A091260(n+1))` -/
def P15937552737533763634.Spec : Prop :=
  ∀ n, P15937552737533763634.a n = A073810 (n + 1)

end A073810

/-! ## A073810.P475388727300785322

`A000005((A067558(n+1)+(n+1)²)/A091260(n+1))`
-/

namespace A073810.P475388727300785322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A067558 (n + 1) + ((n + 1) ^ 2 : ℤ) : ℚ) / (A091260 (n + 1) : ℚ))).toNat

end

end A073810.P475388727300785322

namespace A073810

/-- `A000005((A067558(n+1)+(n+1)²)/A091260(n+1))` -/
def P475388727300785322.Spec : Prop :=
  ∀ n, P475388727300785322.a n = A073810 (n + 1)

end A073810

/-! ## A073810.P16305038943757746938

`A000005((A086666(n+1)+A000203(n+1))/A091260(n+1))`
-/

namespace A073810.P16305038943757746938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A086666 (n + 1) + A000203 (n + 1) : ℚ) / (A091260 (n + 1) : ℚ))).toNat

end

end A073810.P16305038943757746938

namespace A073810

/-- `A000005((A086666(n+1)+A000203(n+1))/A091260(n+1))` -/
def P16305038943757746938.Spec : Prop :=
  ∀ n, P16305038943757746938.a n = A073810 (n + 1)

end A073810

/-! ## A073810.P8485641209704410376

`A000005((A072861(n+1)-A066293(n+1))/A091260(n+1))`
-/

namespace A073810.P8485641209704410376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A072861 (n + 1) - A066293 (n + 1) : ℚ) / (A091260 (n + 1) : ℚ))).toNat

end

end A073810.P8485641209704410376

namespace A073810

/-- `A000005((A072861(n+1)-A066293(n+1))/A091260(n+1))` -/
def P8485641209704410376.Spec : Prop :=
  ∀ n, P8485641209704410376.a n = A073810 (n + 1)

end A073810

/-! ## A073810.P17663918632064517974

`A000005((2*A007437(n+1)-A000203(n+1))/A091260(n+1))`
-/

namespace A073810.P17663918632064517974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 * A007437 (n + 1) - A000203 (n + 1) : ℚ) / (A091260 (n + 1) : ℚ))).toNat

end

end A073810.P17663918632064517974

namespace A073810

/-- `A000005((2*A007437(n+1)-A000203(n+1))/A091260(n+1))` -/
def P17663918632064517974.Spec : Prop :=
  ∀ n, P17663918632064517974.a n = A073810 (n + 1)

end A073810

/-!
# A073811: Number of common divisors of n and phi(n).

The programs for A073811, the canonical program `A073811.P16080894711694834372` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073811 has offset 1).

The definition of A073811 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009195, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073811.P16080894711694834372

`A000005(A009195(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A073811

/-- `A000005(A009195(n+1))` -/
def P16080894711694834372.Spec : Prop :=
  ∀ n, P16080894711694834372.a n = A073811 (n + 1)

theorem P16080894711694834372.correct : P16080894711694834372.Spec := by
  intro n
  simp only [A073811, Nat.add_sub_cancel]

end A073811

/-! ## A073811.P5828817293025035603

`A183063(2*A009195(n+1))`
-/

namespace A073811.P5828817293025035603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A009195 (n + 1)).toNat

end

end A073811.P5828817293025035603

namespace A073811

/-- `A183063(2*A009195(n+1))` -/
def P5828817293025035603.Spec : Prop :=
  ∀ n, P5828817293025035603.a n = A073811 (n + 1)

end A073811

/-! ## A073811.P6779221465555782034

`∑{d}[A009195(n+1), A057427(#)]`
-/

namespace A073811.P6779221465555782034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A073811.P6779221465555782034

namespace A073811

/-- `∑{d}[A009195(n+1), A057427(#)]` -/
def P6779221465555782034.Spec : Prop :=
  ∀ n, P6779221465555782034.a n = A073811 (n + 1)

end A073811

/-! ## A073811.P8298979529407742426

`A000005((n+1)/A109395(n+1))`
-/

namespace A073811.P8298979529407742426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A109395 (n + 1) : ℚ))).toNat

end

end A073811.P8298979529407742426

namespace A073811

/-- `A000005((n+1)/A109395(n+1))` -/
def P8298979529407742426.Spec : Prop :=
  ∀ n, P8298979529407742426.a n = A073811 (n + 1)

end A073811

/-! ## A073811.P13378656875019483452

`A000005(gcd(n+1, A000010(n+1)))`
-/

namespace A073811.P13378656875019483452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n + 1 : ℤ) (A000010 (n + 1)))

end

end A073811.P13378656875019483452

namespace A073811

/-- `A000005(gcd(n+1, A000010(n+1)))` -/
def P13378656875019483452.Spec : Prop :=
  ∀ n, P13378656875019483452.a n = A073811 (n + 1)

end A073811

/-! ## A073811.P18148240192283243527

`A000005(Δ[A002088(n)]/A076512(n+1))`
-/

namespace A073811.P18148240192283243527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A076512 (n + 1) : ℚ))).toNat

end

end A073811.P18148240192283243527

namespace A073811

/-- `A000005(Δ[A002088(n)]/A076512(n+1))` -/
def P18148240192283243527.Spec : Prop :=
  ∀ n, P18148240192283243527.a n = A073811 (n + 1)

end A073811

/-! ## A073811.P10956526479884886358

`A000005(A002618(n+1)/A009262(n+1))`
-/

namespace A073811.P10956526479884886358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (A009262 (n + 1) : ℚ))).toNat

end

end A073811.P10956526479884886358

namespace A073811

/-- `A000005(A002618(n+1)/A009262(n+1))` -/
def P10956526479884886358.Spec : Prop :=
  ∀ n, P10956526479884886358.a n = A073811 (n + 1)

end A073811

/-! ## A073811.P4651605273369094251

`A000005(gcd(A002246(n+1), A048671(n+1)))`
-/

namespace A073811.P4651605273369094251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A002246 (n + 1)) (A048671 (n + 1)))

end

end A073811.P4651605273369094251

namespace A073811

/-- `A000005(gcd(A002246(n+1), A048671(n+1)))` -/
def P4651605273369094251.Spec : Prop :=
  ∀ n, P4651605273369094251.a n = A073811 (n + 1)

end A073811

/-! ## A073811.P9170591008834743455

`A000005(gcd(A000027(n+1), A051953(n+1)))`
-/

namespace A073811.P9170591008834743455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000027 (n + 1)) (A051953 (n + 1)))

end

end A073811.P9170591008834743455

namespace A073811

/-- `A000005(gcd(A000027(n+1), A051953(n+1)))` -/
def P9170591008834743455.Spec : Prop :=
  ∀ n, P9170591008834743455.a n = A073811 (n + 1)

end A073811

/-! ## A073811.P12919339684395547369

`A000005(gcd(1-A051953(n+1)+n, A083254(n+1)))`
-/

namespace A073811.P12919339684395547369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (1 - A051953 (n + 1) + (n : ℤ)) (A083254 (n + 1)))

end

end A073811.P12919339684395547369

namespace A073811

/-- `A000005(gcd(1-A051953(n+1)+n, A083254(n+1)))` -/
def P12919339684395547369.Spec : Prop :=
  ∀ n, P12919339684395547369.a n = A073811 (n + 1)

end A073811

/-! ## A073811.P1605795652336696079

`A005361((n+1)*A007947(A003958(n+1)))`
-/

namespace A073811.P1605795652336696079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 ((n + 1 : ℤ) * A007947 (A003958 (n + 1)).toNat).toNat

end

end A073811.P1605795652336696079

namespace A073811

/-- `A005361((n+1)*A007947(A003958(n+1)))` -/
def P1605795652336696079.Spec : Prop :=
  ∀ n, P1605795652336696079.a n = A073811 (n + 1)

end A073811

/-! ## A073811.P12859953892766093060

`A005361((n+1)*A007947(A173557(n+1)))`
-/

namespace A073811.P12859953892766093060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 ((n + 1 : ℤ) * A007947 (A173557 (n + 1)).toNat).toNat

end

end A073811.P12859953892766093060

namespace A073811

/-- `A005361((n+1)*A007947(A173557(n+1)))` -/
def P12859953892766093060.Spec : Prop :=
  ∀ n, P12859953892766093060.a n = A073811 (n + 1)

end A073811

/-! ## A073811.P13440292222725042837

`A046951(A009195(n+1)²)`
-/

namespace A073811.P13440292222725042837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A009195 (n + 1) ^ 2).toNat

end

end A073811.P13440292222725042837

namespace A073811

/-- `A046951(A009195(n+1)²)` -/
def P13440292222725042837.Spec : Prop :=
  ∀ n, P13440292222725042837.a n = A073811 (n + 1)

end A073811

/-! ## A073811.P16316749112503202560

`A046951((n+1)*A009195(n+1))`
-/

namespace A073811.P16316749112503202560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((n + 1 : ℤ) * A009195 (n + 1)).toNat

end

end A073811.P16316749112503202560

namespace A073811

/-- `A046951((n+1)*A009195(n+1))` -/
def P16316749112503202560.Spec : Prop :=
  ∀ n, P16316749112503202560.a n = A073811 (n + 1)

end A073811

/-! ## A073811.P11530893974280957905

`A051194(A000010(n+1)+∑[n])`
-/

namespace A073811.P11530893974280957905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (A000010 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A073811.P11530893974280957905

namespace A073811

/-- `A051194(A000010(n+1)+∑[n])` -/
def P11530893974280957905.Spec : Prop :=
  ∀ n, P11530893974280957905.a n = A073811 (n + 1)

end A073811

/-!
# A073812: Number of common divisors of sigma(n) and phi(n).

The programs for A073812, the canonical program `A073812.P9999802940170027054` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073812 has offset 1).

The definition of A073812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073812.P6797178745785274031

`A000005(A009223(n+1))`
-/

namespace A073812.P6797178745785274031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A009223 (n + 1)).toNat

end

end A073812.P6797178745785274031

namespace A073812

/-- `A000005(A009223(n+1))` -/
def P6797178745785274031.Spec : Prop :=
  ∀ n, P6797178745785274031.a n = A073812 (n + 1)

end A073812

/-! ## A073812.P7822575501189897739

`A000005(gcd(∑{d}[n+1, #], A051612(n+1)))`
-/

namespace A073812.P7822575501189897739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A051612 (n + 1)))

end

end A073812.P7822575501189897739

namespace A073812

/-- `A000005(gcd(∑{d}[n+1, #], A051612(n+1)))` -/
def P7822575501189897739.Spec : Prop :=
  ∀ n, P7822575501189897739.a n = A073812 (n + 1)

end A073812

/-! ## A073812.P9999802940170027054

`∑{d}[A009223(n+1), A323166(A006530(#))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A073812

/-- `∑{d}[A009223(n+1), A323166(A006530(#))]` -/
def P9999802940170027054.Spec : Prop :=
  ∀ n, P9999802940170027054.a n = A073812 (n + 1)

theorem P9999802940170027054.correct : P9999802940170027054.Spec := by
  intro n
  simp only [A073812, Nat.add_sub_cancel]

end A073812

/-! ## A073812.P6074217665926789890

`A000005(A066087(n+1)+A066086(n+1))`
-/

namespace A073812.P6074217665926789890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A066087 (n + 1) + A066086 (n + 1)).toNat

end

end A073812.P6074217665926789890

namespace A073812

/-- `A000005(A066087(n+1)+A066086(n+1))` -/
def P6074217665926789890.Spec : Prop :=
  ∀ n, P6074217665926789890.a n = A073812 (n + 1)

end A073812

/-! ## A073812.P13580599556034226408

`A000005(A062354(n+1)/A009286(n+1))`
-/

namespace A073812.P13580599556034226408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A062354 (n + 1) : ℚ) / (A009286 (n + 1) : ℚ))).toNat

end

end A073812.P13580599556034226408

namespace A073812

/-- `A000005(A062354(n+1)/A009286(n+1))` -/
def P13580599556034226408.Spec : Prop :=
  ∀ n, P13580599556034226408.a n = A073812 (n + 1)

end A073812

/-! ## A073812.P3081533075153317822

`A000005(gcd(A000010(n+1), A000203(n+1)))`
-/

namespace A073812.P3081533075153317822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000010 (n + 1)) (A000203 (n + 1)))

end

end A073812.P3081533075153317822

namespace A073812

/-- `A000005(gcd(A000010(n+1), A000203(n+1)))` -/
def P3081533075153317822.Spec : Prop :=
  ∀ n, P3081533075153317822.a n = A073812 (n + 1)

end A073812

/-! ## A073812.P15508524720582672105

`A000005(gcd(A039653(n+1)+1, A065387(n+1)))`
-/

namespace A073812.P15508524720582672105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A039653 (n + 1) + 1) (A065387 (n + 1)))

end

end A073812.P15508524720582672105

namespace A073812

/-- `A000005(gcd(A039653(n+1)+1, A065387(n+1)))` -/
def P15508524720582672105.Spec : Prop :=
  ∀ n, P15508524720582672105.a n = A073812 (n + 1)

end A073812

/-! ## A073812.P13972820871109489814

`∑{d}[A009223(n+1), A323166(A000040(#))]`
-/

namespace A073812.P13972820871109489814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323166 (A000040 d).toNat

end

end A073812.P13972820871109489814

namespace A073812

/-- `∑{d}[A009223(n+1), A323166(A000040(#))]` -/
def P13972820871109489814.Spec : Prop :=
  ∀ n, P13972820871109489814.a n = A073812 (n + 1)

end A073812

/-!
# A073813: Difference between n and largest unrelated number belonging to n, when n runs over composite numbers. For primes and for 4, unrelated set is empty.

The programs for A073813, there is no canonical definition to state claims against.
-/

/-! ## A073813.P16723748035254505425

`A056608(n+1)%(n+2)`
-/

namespace A073813.P16723748035254505425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056608 (n + 1)) (n + 2 : ℤ)

end

end A073813.P16723748035254505425

/-! ## A073813.P7251691849227801359

`p?[A020639(n+1)%(n+1)]%(n+1)²`
-/

namespace A073813.P7251691849227801359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((n + 1) ^ 2 : ℤ)

end

end A073813.P7251691849227801359

/-! ## A073813.P15845814224338340239

`A056608(n+1)-A000038(n)`
-/

namespace A073813.P15845814224338340239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) - A000038 n

end

end A073813.P15845814224338340239

/-! ## A073813.P1990181053686396001

`A056608(n+1)*A057427(n)`
-/

namespace A073813.P1990181053686396001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) * A057427 n

end

end A073813.P1990181053686396001

/-! ## A073813.P13620218472481466867

`and(A056608(n+1), A057428(n))`
-/

namespace A073813.P13620218472481466867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056608 (n + 1)) (A057428 n)

end

end A073813.P13620218472481466867

/-! ## A073813.P402778026603379372

`p?[A107286(n)]*A019426(2*n)`
-/

namespace A073813.P402778026603379372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A019426 (2 * n)

end

end A073813.P402778026603379372

/-! ## A073813.P6618221370707317680

`A002808(n+1)%A085271(n+1)`
-/

namespace A073813.P6618221370707317680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) (A085271 (n + 1))

end

end A073813.P6618221370707317680

/-! ## A073813.P14366606299772732223

`A079772(n+1)%A056653(n+1)`
-/

namespace A073813.P14366606299772732223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079772 (n + 1)) (A056653 (n + 1))

end

end A073813.P14366606299772732223

/-! ## A073813.P14210283757714573243

`A020639(A018252(n+2))%(n+2)`
-/

namespace A073813.P14210283757714573243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A018252 (n + 2)).toNat) (n + 2 : ℤ)

end

end A073813.P14210283757714573243

/-! ## A073813.P12151198998809098825

`and(A056608(n+1), A112714(n+1))`
-/

namespace A073813.P12151198998809098825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056608 (n + 1)) (A112714 (n + 1))

end

end A073813.P12151198998809098825

/-! ## A073813.P3903768931951121168

`A056608(n+1)-C(2, A020639(n+1)²)`
-/

namespace A073813.P3903768931951121168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) - (Nat.choose 2 (A020639 (n + 1) ^ 2).toNat : ℤ)

end

end A073813.P3903768931951121168

/-! ## A073813.P15351493080063077986

`A020639(lt[A000010(n+1)+1, n+1]+1)%(n+2)`
-/

namespace A073813.P15351493080063077986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)) (n + 2 : ℤ)

end

end A073813.P15351493080063077986

/-! ## A073813.P14320619653641527397

`p?[A107286(n)]*A107286(A107286(n))`
-/

namespace A073813.P14320619653641527397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A107286 (A107286 n).toNat

end

end A073813.P14320619653641527397

/-! ## A073813.P11288423614109616791

`A056608(n+1)*A069157(A020639(n+1))`
-/

namespace A073813.P11288423614109616791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) * A069157 (A020639 (n + 1)).toNat

end

end A073813.P11288423614109616791

/-! ## A073813.P6455654044920629980

`A020639(lt[1, A328847(n)])%A000040(n+1)`
-/

namespace A073813.P6455654044920629980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (A000040 (n + 1))

end

end A073813.P6455654044920629980

/-! ## A073813.P8890834787966482297

`∑{e}[A020639(n+1), A020639(A079696(n+1)-#)]`
-/

namespace A073813.P8890834787966482297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 (A079696 (n + 1) - (Nat.factorization (f1 n).natAbs p : ℤ)).toNat

end

end A073813.P8890834787966482297

/-! ## A073813.P7204824405843689018

`A020639(lt[1, A001222(n+1)]+1)%A000040(n+1)`
-/

namespace A073813.P7204824405843689018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)) (A000040 (n + 1))

end

end A073813.P7204824405843689018

/-! ## A073813.P15595151869140392406

`A020639(lt[2, A000005(n+1)]+1)%A000040(n+1)`
-/

namespace A073813.P15595151869140392406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)) (A000040 (n + 1))

end

end A073813.P15595151869140392406

/-! ## A073813.P4491381783871671785

`A020639(lt[A000010(n+1), n]+1)%A000040(n+1)`
-/

namespace A073813.P4491381783871671785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)) (A000040 (n + 1))

end

end A073813.P4491381783871671785

/-! ## A073813.P17157714575722336928

`A020639(comp[A000040(n+1)-2]+2)%A000040(n+1)`
-/

namespace A073813.P17157714575722336928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)) (A000040 (n + 1))

end

end A073813.P17157714575722336928

/-!
# A073814: a(n) is the smallest number k such that A073813(k) = prime(n).

The programs for A073814, there is no canonical definition to state claims against.
-/

/-! ## A073814.P7092371519862447280

`floor(A120389(n+1)+acot(n))`
-/

namespace A073814.P7092371519862447280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120389 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A073814.P7092371519862447280

/-! ## A073814.P6901742061186743249

`A335135(n)+a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A073814.P6901742061186743249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  A335135 n + a (n - 1)

end

end A073814.P6901742061186743249

/-! ## A073814.P15017233444873356825

`A053683(n+1)-ceil(abs(sin(n)))`
-/

namespace A073814.P15017233444873356825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053683 (n + 1) - ⌈|Real.sin (n : ℝ)|⌉

end

end A073814.P15017233444873356825

/-! ## A073814.P13433568569424565067

`A120389(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A073814.P13433568569424565067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A120389 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A073814.P13433568569424565067

/-! ## A073814.P14396158698735098370

`A057428(n)+A053683(n+1)`
-/

namespace A073814.P14396158698735098370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A053683 (n + 1)

end

end A073814.P14396158698735098370

/-! ## A073814.P9005471906697469857

`A120389(n+1)+A000007(n)`
-/

namespace A073814.P9005471906697469857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120389 (n + 1) + A000007 n

end

end A073814.P9005471906697469857

/-! ## A073814.P8577588432604219830

`A151878(n)+A120389(n+1)`
-/

namespace A073814.P8577588432604219830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A120389 (n + 1)

end

end A073814.P8577588432604219830

/-! ## A073814.P7806527402840610827

`A151909(n)+A120389(n+1)`
-/

namespace A073814.P7806527402840610827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n + A120389 (n + 1)

end

end A073814.P7806527402840610827

/-! ## A073814.P13292464031867086198

`A151933(n)+A120389(n+1)`
-/

namespace A073814.P13292464031867086198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + A120389 (n + 1)

end

end A073814.P13292464031867086198

/-! ## A073814.P1335848491306166045

`A053683(n+1)-A057427(n)`
-/

namespace A073814.P1335848491306166045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053683 (n + 1) - A057427 n

end

end A073814.P1335848491306166045

/-!
# A073815: Least number x such that gcd(phi(x), sigma(x)) = n.

The programs for A073815, there is no canonical definition to state claims against.
-/

/-! ## A073815.P4674493710901735413

`A074390(3^C(a(n-1), 68)+n)` with `a(0)=1, a(1)=3`
-/

namespace A073815.P4674493710901735413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A074390 (3 ^ Nat.choose (a (n - 1)).toNat 68 + n)

end

end A073815.P4674493710901735413

/-!
# A073816: a(n) = 2^sigma(n) mod n.

The programs for A073816, the canonical program `A073816.P2148805944832520576` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073816 has offset 1).

The definition of A073816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073816.P10842522175188530250

`(2^A051612(n+1))%(n+1)`
-/

namespace A073816.P10842522175188530250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A051612 (n + 1) : ℤ))) (n + 1 : ℤ)

end

end A073816.P10842522175188530250

namespace A073816

/-- `(2^A051612(n+1))%(n+1)` -/
def P10842522175188530250.Spec : Prop :=
  ∀ n, P10842522175188530250.a n = A073816 (n + 1)

end A073816

/-! ## A073816.P267242605185228330

`A000079(A051612(n+1))%(n+1)`
-/

namespace A073816.P267242605185228330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A051612 (n + 1)).toNat) (n + 1 : ℤ)

end

end A073816.P267242605185228330

namespace A073816

/-- `A000079(A051612(n+1))%(n+1)` -/
def P267242605185228330.Spec : Prop :=
  ∀ n, P267242605185228330.a n = A073816 (n + 1)

end A073816

/-! ## A073816.P16486258589091620314

`A000079(A000203(n+1)-A000010(n+1))%(n+1)`
-/

namespace A073816.P16486258589091620314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A000203 (n + 1) - A000010 (n + 1)).toNat) (n + 1 : ℤ)

end

end A073816.P16486258589091620314

namespace A073816

/-- `A000079(A000203(n+1)-A000010(n+1))%(n+1)` -/
def P16486258589091620314.Spec : Prop :=
  ∀ n, P16486258589091620314.a n = A073816 (n + 1)

end A073816

/-! ## A073816.P13338388832261882344

`(2^∑{d}[n+1, #])%(n+1)`
-/

namespace A073816.P13338388832261882344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ d ∈ Nat.divisors (f1 n), d) % (n + 1)

end

end A073816.P13338388832261882344

namespace A073816

/-- `(2^∑{d}[n+1, #])%(n+1)` -/
def P13338388832261882344.Spec : Prop :=
  ∀ n, (P13338388832261882344.a n : ℤ) = A073816 (n + 1)

end A073816

/-! ## A073816.P2148805944832520576

`∏{d}[n+1, 2^#]%(n+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073816

/-- `∏{d}[n+1, 2^#]%(n+1)` -/
def P2148805944832520576.Spec : Prop :=
  ∀ n, (P2148805944832520576.a n : ℤ) = A073816 (n + 1)

theorem P2148805944832520576.correct : P2148805944832520576.Spec := by
  intro n
  simp only [A073816, Nat.add_sub_cancel]

end A073816

/-! ## A073816.P11374502637398362080

`(2^A000203(n+1))%(n+1)`
-/

namespace A073816.P11374502637398362080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000203 (n + 1) : ℤ))) (n + 1 : ℤ)

end

end A073816.P11374502637398362080

namespace A073816

/-- `(2^A000203(n+1))%(n+1)` -/
def P11374502637398362080.Spec : Prop :=
  ∀ n, P11374502637398362080.a n = A073816 (n + 1)

end A073816

/-! ## A073816.P2423872548454055635

`A000079(∑{d}[n+1, #])%(n+1)`
-/

namespace A073816.P2423872548454055635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (∑ d ∈ Nat.divisors (f1 n), d)) (n + 1 : ℤ)

end

end A073816.P2423872548454055635

namespace A073816

/-- `A000079(∑{d}[n+1, #])%(n+1)` -/
def P2423872548454055635.Spec : Prop :=
  ∀ n, P2423872548454055635.a n = A073816 (n + 1)

end A073816

/-! ## A073816.P18047786700853672098

`A000079(A000203(n+1))%(n+1)`
-/

namespace A073816.P18047786700853672098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A000203 (n + 1)).toNat) (n + 1 : ℤ)

end

end A073816.P18047786700853672098

namespace A073816

/-- `A000079(A000203(n+1))%(n+1)` -/
def P18047786700853672098.Spec : Prop :=
  ∀ n, P18047786700853672098.a n = A073816 (n + 1)

end A073816

/-! ## A073816.P12406734910810845514

`A000079(A097863(n+1))%(n+1)`
-/

namespace A073816.P12406734910810845514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A097863 (n + 1)).toNat) (n + 1 : ℤ)

end

end A073816.P12406734910810845514

namespace A073816

/-- `A000079(A097863(n+1))%(n+1)` -/
def P12406734910810845514.Spec : Prop :=
  ∀ n, P12406734910810845514.a n = A073816 (n + 1)

end A073816

/-! ## A073816.P8238174459428870012

`A000079(A000217(n+1)-A024816(n+1))%(n+1)`
-/

namespace A073816.P8238174459428870012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A000217 (n + 1) - A024816 (n + 1)).toNat) (n + 1 : ℤ)

end

end A073816.P8238174459428870012

namespace A073816

/-- `A000079(A000217(n+1)-A024816(n+1))%(n+1)` -/
def P8238174459428870012.Spec : Prop :=
  ∀ n, P8238174459428870012.a n = A073816 (n + 1)

end A073816

/-!
# A073817: Tetranacci numbers with different initial conditions: a(n) = a(n-1) + a(n-2) + a(n-3) + a(n-4) starting with a(0)=4, a(1)=1, a(2)=3, a(3)=7.

The programs for A073817, the canonical program `A073817.P5848142379474078233` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073817 has offset 0).

The definition of A073817 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)` (program `A073817.P5848142379474078233`, by `A073817.P5848142379474078233.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073817.P1372149208185629412

`2*a(n-1)-a(n-5)` with `a(0)=4, a(1)=1, a(2)=3, a(3)=7, a(4)=15`
-/

namespace A073817.P1372149208185629412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1, 3, 7, 15] fun n a =>
  2 * a (n - 1) - a (n - 5)

end

end A073817.P1372149208185629412

namespace A073817

/-- `2*a(n-1)-a(n-5)` -/
def P1372149208185629412.Spec : Prop :=
  ∀ n, P1372149208185629412.a n = A073817 n

end A073817

/-! ## A073817.P5848142379474078233

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=4, a(1)=1, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073817

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P5848142379474078233.Spec : Prop :=
  ∀ n, (P5848142379474078233.a n : ℤ) = A073817 n

theorem P5848142379474078233.correct : P5848142379474078233.Spec := by
  intro n
  simp only [A073817]

end A073817

/-! ## A073817.P12778618687240168157

`abs(A074081(n))`
-/

namespace A073817.P12778618687240168157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074081 n|

end

end A073817.P12778618687240168157

namespace A073817

/-- `abs(A074081(n))` -/
def P12778618687240168157.Spec : Prop :=
  ∀ n, P12778618687240168157.a n = A073817 n

end A073817

/-! ## A073817.P3540399359807054537

`A033999(n)*A074081(n)`
-/

namespace A073817.P3540399359807054537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A074081 n

end

end A073817.P3540399359807054537

namespace A073817

/-- `A033999(n)*A074081(n)` -/
def P3540399359807054537.Spec : Prop :=
  ∀ n, P3540399359807054537.a n = A073817 n

end A073817

/-! ## A073817.P10999074209044535546

`lcm(A020985(n), A074081(n))`
-/

namespace A073817.P10999074209044535546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A074081 n)

end

end A073817.P10999074209044535546

namespace A073817

/-- `lcm(A020985(n), A074081(n))` -/
def P10999074209044535546.Spec : Prop :=
  ∀ n, (P10999074209044535546.a n : ℤ) = A073817 n

end A073817

/-! ## A073817.P4855039307593373223

`A073937(n)/A074058(n)*A074081(n)`
-/

namespace A073817.P4855039307593373223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073937 n : ℚ) / (A074058 n : ℚ) * (A074081 n : ℚ)

end

end A073817.P4855039307593373223

namespace A073817

/-- `A073937(n)/A074058(n)*A074081(n)` -/
def P4855039307593373223.Spec : Prop :=
  ∀ n, P4855039307593373223.a n = (A073817 n : ℚ)

end A073817

/-! ## A073817.P16360035785605945210

`A074081(n)/A074193(n)*A074453(n)`
-/

namespace A073817.P16360035785605945210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074081 n : ℚ) / (A074193 n : ℚ) * (A074453 n : ℚ)

end

end A073817.P16360035785605945210

namespace A073817

/-- `A074081(n)/A074193(n)*A074453(n)` -/
def P16360035785605945210.Spec : Prop :=
  ∀ n, P16360035785605945210.a n = (A073817 n : ℚ)

end A073817

/-! ## A073817.P5640477258990795607

`A001648(n+4)-Δ[A001648(n+4)]`
-/

namespace A073817.P5640477258990795607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001648 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001648 (n + 4) - (f1 (n + 1) - f1 n)

end

end A073817.P5640477258990795607

namespace A073817

/-- `A001648(n+4)-Δ[A001648(n+4)]` -/
def P5640477258990795607.Spec : Prop :=
  ∀ n, P5640477258990795607.a n = A073817 n

end A073817

/-! ## A073817.P18345143700150359189

`A001648(n+4)-(A001648(n+5)-A001648(n+4))`
-/

namespace A073817.P18345143700150359189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001648 (n + 4) - (A001648 (n + 5) - A001648 (n + 4))

end

end A073817.P18345143700150359189

namespace A073817

/-- `A001648(n+4)-(A001648(n+5)-A001648(n+4))` -/
def P18345143700150359189.Spec : Prop :=
  ∀ n, P18345143700150359189.a n = A073817 n

end A073817

/-! ## A073817.P1579061968301531981

`A106627(n)/A000032(n)`
-/

namespace A073817.P1579061968301531981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106627 n : ℚ) / (A000032 n : ℚ)

end

end A073817.P1579061968301531981

namespace A073817

/-- `A106627(n)/A000032(n)` -/
def P1579061968301531981.Spec : Prop :=
  ∀ n, P1579061968301531981.a n = (A073817 n : ℚ)

end A073817

/-! ## A073817.P4489875730984652922

`gcd(A074081(n), A106627(n))`
-/

namespace A073817.P4489875730984652922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074081 n) (A106627 n)

end

end A073817.P4489875730984652922

namespace A073817

/-- `gcd(A074081(n), A106627(n))` -/
def P4489875730984652922.Spec : Prop :=
  ∀ n, (P4489875730984652922.a n : ℤ) = A073817 n

end A073817

/-! ## A073817.P3641989840417776748

`A001644(n)/A073446(n)*A106627(n)`
-/

namespace A073817.P3641989840417776748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 n : ℚ) / (A073446 n : ℚ) * (A106627 n : ℚ)

end

end A073817.P3641989840417776748

namespace A073817

/-- `A001644(n)/A073446(n)*A106627(n)` -/
def P3641989840417776748.Spec : Prop :=
  ∀ n, P3641989840417776748.a n = (A073817 n : ℚ)

end A073817

/-! ## A073817.P16803186951460827320

`A106627(n)/(A000204(n+2)-A000204(n+1))`
-/

namespace A073817.P16803186951460827320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106627 n : ℚ) / (A000204 (n + 2) - A000204 (n + 1) : ℚ)

end

end A073817.P16803186951460827320

namespace A073817

/-- `A106627(n)/(A000204(n+2)-A000204(n+1))` -/
def P16803186951460827320.Spec : Prop :=
  ∀ n, P16803186951460827320.a n = (A073817 n : ℚ)

end A073817

/-!
# A073818: a(n) = max(prime(i)*(n+1-i) | 1 <= i <= n).

The programs for A073818, there is no canonical definition to state claims against.
-/

/-! ## A073818.P14904165768556968777

`A073819(n+1)*A073820(n+1)`
-/

namespace A073818.P14904165768556968777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073819 (n + 1) * A073820 (n + 1)

end

end A073818.P14904165768556968777

/-! ## A073818.P2451355826004292445

`A000040(2-A073820(n+1)+n)*A073820(n+1)`
-/

namespace A073818.P2451355826004292445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 - A073820 (n + 1) + (n : ℤ)).toNat * A073820 (n + 1)

end

end A073818.P2451355826004292445

/-! ## A073818.P11164768665045567820

`A008578(n+3-A073820(n+1))*A073820(n+1)`
-/

namespace A073818.P11164768665045567820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((n + 3 : ℤ) - A073820 (n + 1)).toNat * A073820 (n + 1)

end

end A073818.P11164768665045567820

/-! ## A073818.P6461762612238630061

`(1-A033270(A073819(n-or(n, -1)))+n)*A073819(n+1)`
-/

namespace A073818.P6461762612238630061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A033270 (A073819 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat).toNat + (n : ℤ)) * A073819 (n + 1)

end

end A073818.P6461762612238630061

/-! ## A073818.P13557129350273423750

`(A325794(A073819(n+1))+n)*A073819(A000027(n+1))`
-/

namespace A073818.P13557129350273423750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A325794 (A073819 (n + 1)).toNat + (n : ℤ)) * A073819 (A000027 (n + 1)).toNat

end

end A073818.P13557129350273423750

/-! ## A073818.P11277058827622798743

`(A008683(A007304(n+1))*A033270(A073819(n+1))+n+1)*A073819(n+1)`
-/

namespace A073818.P11277058827622798743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (A007304 (n + 1)).toNat * A033270 (A073819 (n + 1)).toNat + (n + 1 : ℤ)) * A073819 (n + 1)

end

end A073818.P11277058827622798743

/-! ## A073818.P3110863139714244054

`A073820(n+1)*A104887(A073820(n+1)+∑[n])`
-/

namespace A073818.P3110863139714244054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073820 (n + 1) * A104887 (A073820 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A073818.P3110863139714244054

/-!
# A073819: a(n) = prime(i) such that prime(i)*(n+1-i) is maximized (1 <= i <= n).

The programs for A073819, there is no canonical definition to state claims against.
-/

/-! ## A073819.P13525398139590487789

`A073818(n+1)/A073820(n+1)`
-/

namespace A073819.P13525398139590487789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073818 (n + 1) : ℚ) / (A073820 (n + 1) : ℚ)

end

end A073819.P13525398139590487789

/-! ## A073819.P8212110175384470113

`A000040(2-A073820(n+1)+n)`
-/

namespace A073819.P8212110175384470113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 - A073820 (n + 1) + (n : ℤ)).toNat

end

end A073819.P8212110175384470113

/-! ## A073819.P2846922942098457663

`A008578(n+3-A073820(n+1))`
-/

namespace A073819.P2846922942098457663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((n + 3 : ℤ) - A073820 (n + 1)).toNat

end

end A073819.P2846922942098457663

/-! ## A073819.P5617555124959003343

`A100484(2-A073820(n+1)+n)/2`
-/

namespace A073819.P5617555124959003343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (2 - A073820 (n + 1) + (n : ℤ)).toNat : ℚ) / 2

end

end A073819.P5617555124959003343

/-! ## A073819.P12577684556389316885

`A006530(A073818(n+1))-char[2]`
-/

namespace A073819.P12577684556389316885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A073818 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A073819.P12577684556389316885

/-! ## A073819.P2014562553079340674

`A006530(lcm(3, A073818(n+1))/3)`
-/

namespace A073819.P2014562553079340674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((Int.lcm 3 (A073818 (n + 1)) : ℚ) / 3)).toNat

end

end A073819.P2014562553079340674

/-! ## A073819.P10365035297533167659

`A006530(A073818(n+1)-and(4, A000051(n)))`
-/

namespace A073819.P10365035297533167659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A073818 (n + 1) - Int.land 4 (A000051 n)).toNat

end

end A073819.P10365035297533167659

/-! ## A073819.P3545896033970765344

`A104887(A073820(n+1)+∑[n])`
-/

namespace A073819.P3545896033970765344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (A073820 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A073819.P3545896033970765344

/-! ## A073819.P2057943987317275901

`A006530(A038502(A073818(n+1)))`
-/

namespace A073819.P2057943987317275901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A038502 (A073818 (n + 1)).toNat).toNat

end

end A073819.P2057943987317275901

/-!
# A073820: a(n) = n+1-i such that prime(i)*(n+1-i) is maximized (1 <= i <= n).

The programs for A073820, there is no canonical definition to state claims against.
-/

/-! ## A073820.P12875237253672307755

`A073818(n+1)/A073819(n+1)`
-/

namespace A073820.P12875237253672307755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073818 (n + 1) : ℚ) / (A073819 (n + 1) : ℚ)

end

end A073820.P12875237253672307755

/-! ## A073820.P11724684762904486844

`A325794(A073819(n+1))+n`
-/

namespace A073820.P11724684762904486844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (A073819 (n + 1)).toNat + (n : ℤ)

end

end A073820.P11724684762904486844

/-! ## A073820.P3463860110722417882

`1-A033270(A073819(Δ[n²]-n))+n`
-/

namespace A073820.P3463860110722417882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033270 (A073819 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat + (n : ℤ)

end

end A073820.P3463860110722417882

/-! ## A073820.P17489219346465990320

`n+1-A033270(A073819(2*n+1-n))`
-/

namespace A073820.P17489219346465990320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A033270 (A073819 (2 * n + 1 - n)).toNat

end

end A073820.P17489219346465990320

/-! ## A073820.P17939497854145963476

`A026741(2*(n+1))-A252735(A073819(n+1))`
-/

namespace A073820.P17939497854145963476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * (n + 1)) - A252735 (A073819 (n + 1)).toNat

end

end A073820.P17939497854145963476

/-! ## A073820.P8273097037853118920

`A008683(A007304(n+1))*A033270(A073819(n+1))+n+1`
-/

namespace A073820.P8273097037853118920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007304 (n + 1)).toNat * A033270 (A073819 (n + 1)).toNat + (n + 1 : ℤ)

end

end A073820.P8273097037853118920

/-! ## A073820.P9430139352045685659

`A094522(A073818(n+1))`
-/

namespace A073820.P9430139352045685659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094522 (A073818 (n + 1)).toNat

end

end A073820.P9430139352045685659

/-!
# A073826: 

The programs for A073826, there is no canonical definition to state claims against.
-/

/-! ## A073826.P9314527944018467820

`record[A175232(n+2)]`
-/

namespace A073826.P9314527944018467820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175232 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073826.P9314527944018467820

/-!
# A073828: Primes of the form 1 + 0!*1!*2!*...*k! (subsequence of A019515).

The programs for A073828, there is no canonical definition to state claims against.
-/

/-! ## A073828.P9582943182009539886

`A000178(A165433(n))+1`
-/

namespace A073828.P9582943182009539886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 (A165433 n).toNat + 1

end

end A073828.P9582943182009539886

/-!
# A073829: a(n) = 4*((n-1)! + 1) + n.

The programs for A073829, the canonical program `A073829.P11572805840465512018` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073829 has offset 1).

The definition of A073829 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n!+1)+n+1` (program `A073829.P11572805840465512018`, by `A073829.P11572805840465512018.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073829.P11572805840465512018

`4*(n!+1)+n+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073829

/-- `4*(n!+1)+n+1` -/
def P11572805840465512018.Spec : Prop :=
  ∀ n, (P11572805840465512018.a n : ℤ) = A073829 (n + 1)

theorem P11572805840465512018.correct : P11572805840465512018.Spec := by
  intro n
  simp only [A073829, Nat.add_sub_cancel]

end A073829

/-! ## A073829.P17776550830548776005

`4*n!+5+n`
-/

namespace A073829.P17776550830548776005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.factorial n + 5 + n

end

end A073829.P17776550830548776005

namespace A073829

/-- `4*n!+5+n` -/
def P17776550830548776005.Spec : Prop :=
  ∀ n, (P17776550830548776005.a n : ℤ) = A073829 (n + 1)

theorem P17776550830548776005.correct : P17776550830548776005.Spec := by
  intro n
  simp only [A073829, Nat.add_sub_cancel, A073829.P17776550830548776005.a, A073829.P11572805840465512018.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073829

/-! ## A073829.P13654738380253750708

`n!/(1/2)²+5+n`
-/

namespace A073829.P13654738380253750708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((1 : ℚ) / 2) ^ 2 + 5 + (n : ℚ)

end

end A073829.P13654738380253750708

namespace A073829

/-- `n!/(1/2)²+5+n` -/
def P13654738380253750708.Spec : Prop :=
  ∀ n, P13654738380253750708.a n = (A073829 (n + 1) : ℚ)

theorem P13654738380253750708.correct : P13654738380253750708.Spec := by
  intro n
  simp only [A073829, Nat.add_sub_cancel, A073829.P13654738380253750708.a, A073829.P11572805840465512018.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A073829

/-! ## A073829.P13963911232618571705

`∏[a(n-1)+1]+n+5` with `a(0)=4, a(1)=1`
-/

namespace A073829.P13963911232618571705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n + 5)

end

end A073829.P13963911232618571705

namespace A073829

/-- `∏[a(n-1)+1]+n+5` -/
def P13963911232618571705.Spec : Prop :=
  ∀ n, (P13963911232618571705.a n : ℤ) = A073829 (n + 1)

end A073829

/-! ## A073829.P8767385511506337339

`2*(∏[abs(1-n)+1]+1)+3+n`
-/

namespace A073829.P8767385511506337339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j + 1) + 3 + (n : ℤ)

end

end A073829.P8767385511506337339

namespace A073829

/-- `2*(∏[abs(1-n)+1]+1)+3+n` -/
def P8767385511506337339.Spec : Prop :=
  ∀ n, P8767385511506337339.a n = A073829 (n + 1)

end A073829

/-!
# A073830: a(n) = 4*((n-1)! + 1) + n (mod n*(n + 2)).

The programs for A073830, there is no canonical definition to state claims against.
-/

/-! ## A073830.P516551942135620110

`(4*n!+5+n)%((n+2)²-1)`
-/

namespace A073830.P516551942135620110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * Nat.factorial n + 5 + n : ℤ) (((n + 2) ^ 2 : ℤ) - 1)

end

end A073830.P516551942135620110

/-! ## A073830.P11458360746108770993

`(4*(n!+1)+n+1)%((n+1)*(n+3))`
-/

namespace A073830.P11458360746108770993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * (Nat.factorial n + 1) + (n + 1)) % ((n + 1) * (n + 3))

end

end A073830.P11458360746108770993

/-! ## A073830.P7475646462826654815

`A073829(n+1)%A005563(n+1)`
-/

namespace A073830.P7475646462826654815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073829 (n + 1)) (A005563 (n + 1))

end

end A073830.P7475646462826654815

/-!
# A073831: Maximum of A073830(k) for k between A001359(n) and A001359(n+1).

The programs for A073831, there is no canonical definition to state claims against.
-/

/-! ## A073831.P10943013160992954231

`A073830(A073832(n+1))`
-/

namespace A073831.P10943013160992954231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073830 (A073832 (n + 1)).toNat

end

end A073831.P10943013160992954231

/-! ## A073831.P7206765255643823164

`A073830(A088175(n+2)+floor(acot(n)))`
-/

namespace A073831.P7206765255643823164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073830 (A088175 (n + 2) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A073831.P7206765255643823164

/-! ## A073831.P4712435685093505107

`A073830(A088175(n+2)+C(2, n+2))`
-/

namespace A073831.P4712435685093505107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073830 (A088175 (n + 2) + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A073831.P4712435685093505107

/-! ## A073831.P18083373687735492837

`2*A110346(A088175(n+2)+floor(acot(n)))`
-/

namespace A073831.P18083373687735492837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110346 (A088175 (n + 2) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A073831.P18083373687735492837

/-! ## A073831.P12719375701255152446

`A073830(A088175(n+2)+val(A000040(n+1), 2))`
-/

namespace A073831.P12719375701255152446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073830 (A088175 (n + 2) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)).toNat

end

end A073831.P12719375701255152446

/-!
# A073832: k between A001359(n) and A001359(n+1) such that A073830(k) is maximal.

The programs for A073832, the canonical program `A073832.P15694190533899726090` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073832 has offset 1).

The definition of A073832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073832.P8339106837734991676

`floor(A088175(n+2)+acot(n))`
-/

namespace A073832.P8339106837734991676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088175 (n + 2) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A073832.P8339106837734991676

namespace A073832

/-- `floor(A088175(n+2)+acot(n))` -/
def P8339106837734991676.Spec : Prop :=
  ∀ n, P8339106837734991676.a n = A073832 (n + 1)

end A073832

/-! ## A073832.P15521920100030117029

`record[ceil(acot(n))*A088175(n+1)]`
-/

namespace A073832.P15521920100030117029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A088175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073832.P15521920100030117029

namespace A073832

/-- `record[ceil(acot(n))*A088175(n+1)]` -/
def P15521920100030117029.Spec : Prop :=
  ∀ n, P15521920100030117029.a n = A073832 (n + 1)

end A073832

/-! ## A073832.P15694190533899726090

`A088175(n%a(n-1)+2)` with `a(0)=4`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A073832

/-- `A088175(n%a(n-1)+2)` -/
def P15694190533899726090.Spec : Prop :=
  ∀ n, P15694190533899726090.a n = A073832 (n + 1)

theorem P15694190533899726090.correct : P15694190533899726090.Spec := by
  intro n
  simp only [A073832, Nat.add_sub_cancel]

end A073832

/-! ## A073832.P10141911620645607798

`A088175(n+2)+val(A000040(n+1), 2)`
-/

namespace A073832.P10141911620645607798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 2) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A073832.P10141911620645607798

namespace A073832

/-- `A088175(n+2)+val(A000040(n+1), 2)` -/
def P10141911620645607798.Spec : Prop :=
  ∀ n, P10141911620645607798.a n = A073832 (n + 1)

end A073832

/-! ## A073832.P15072868400693633723

`A088175(n+2)+A000045(C(2, n+2))`
-/

namespace A073832.P15072868400693633723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 2) + A000045 (Nat.choose 2 (n + 2))

end

end A073832.P15072868400693633723

namespace A073832

/-- `A088175(n+2)+A000045(C(2, n+2))` -/
def P15072868400693633723.Spec : Prop :=
  ∀ n, P15072868400693633723.a n = A073832 (n + 1)

end A073832

/-! ## A073832.P2822723308560657473

`A046022(A107770(n+2))`
-/

namespace A073832.P2822723308560657473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A107770 (n + 2)).toNat

end

end A073832.P2822723308560657473

namespace A073832

/-- `A046022(A107770(n+2))` -/
def P2822723308560657473.Spec : Prop :=
  ∀ n, P2822723308560657473.a n = A073832 (n + 1)

end A073832

/-! ## A073832.P3958912114773604269

`A175787(A029707(n+2))`
-/

namespace A073832.P3958912114773604269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A029707 (n + 2)).toNat

end

end A073832.P3958912114773604269

namespace A073832

/-- `A175787(A029707(n+2))` -/
def P3958912114773604269.Spec : Prop :=
  ∀ n, P3958912114773604269.a n = A073832 (n + 1)

end A073832

/-! ## A073832.P566705463180748431

`A046022(A029707(n+2)+1)`
-/

namespace A073832.P566705463180748431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A029707 (n + 2) + 1).toNat

end

end A073832.P566705463180748431

namespace A073832

/-- `A046022(A029707(n+2)+1)` -/
def P566705463180748431.Spec : Prop :=
  ∀ n, P566705463180748431.a n = A073832 (n + 1)

end A073832

/-! ## A073832.P13148729005440959215

`A000040(A155752(n+2))+floor(acot(n))`
-/

namespace A073832.P13148729005440959215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A155752 (n + 2)).toNat + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A073832.P13148729005440959215

namespace A073832

/-- `A000040(A155752(n+2))+floor(acot(n))` -/
def P13148729005440959215.Spec : Prop :=
  ∀ n, P13148729005440959215.a n = A073832 (n + 1)

end A073832

/-! ## A073832.P12096048947592671007

`A131042(A088175(n+2))`
-/

namespace A073832.P12096048947592671007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131042 (A088175 (n + 2)).toNat

end

end A073832.P12096048947592671007

namespace A073832

/-- `A131042(A088175(n+2))` -/
def P12096048947592671007.Spec : Prop :=
  ∀ n, P12096048947592671007.a n = A073832 (n + 1)

end A073832

/-!
# A073833: Numerators of b(n) where b(1) = 1, b(i) = b(i-1) + 1/b(i-1).

The programs for A073833, there is no canonical definition to state claims against.
-/

/-! ## A073833.P14757063830588638864

`ratio[A073834(n+1)]`
-/

namespace A073833.P14757063830588638864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073834 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A073833.P14757063830588638864

/-! ## A073833.P11580459014109928398

`record[ratio[A073834(A008619(n))]]`
-/

namespace A073833.P11580459014109928398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073834 (A008619 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073833.P11580459014109928398

/-! ## A073833.P6009885685676968328

`record[ratio[A073834(A008668(n))]]`
-/

namespace A073833.P6009885685676968328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073834 (A008668 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073833.P6009885685676968328

/-! ## A073833.P7258535997029344298

`record[ratio[A073834(A070939(n))]]`
-/

namespace A073833.P7258535997029344298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073834 (A070939 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073833.P7258535997029344298

/-! ## A073833.P984554396437688076

`A073834(n+2)/A073834(n+1)`
-/

namespace A073833.P984554396437688076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073834 (n + 2) : ℚ) / (A073834 (n + 1) : ℚ)

end

end A073833.P984554396437688076

/-!
# A073834: Denominators of b(n) where b(1) = 1, b(i) = b(i-1) + 1/b(i-1).

The programs for A073834, there is no canonical definition to state claims against.
-/

/-! ## A073834.P4194657545008834485

`a(n-1)*A073833(n)` with `a(0)=1`
-/

namespace A073834.P4194657545008834485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A073833 n

end

end A073834.P4194657545008834485

/-! ## A073834.P14017184321978107084

`∏[A073833(A028310(n))]`
-/

namespace A073834.P14017184321978107084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073833 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A073834.P14017184321978107084

/-! ## A073834.P7539355425639130946

`∏[A073833(A018843(n)+n)]`
-/

namespace A073834.P7539355425639130946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073833 (A018843 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A073834.P7539355425639130946

/-! ## A073834.P6238910314312751227

`∏[A073833(or(n, A018843(n)))]`
-/

namespace A073834.P6238910314312751227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073833 (Int.lor (n : ℤ) (A018843 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A073834.P6238910314312751227

/-! ## A073834.P9025024745385375763

`∏[A073833(A000005(ceil(2^(n-1))))]`
-/

namespace A073834.P9025024745385375763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073833 (A000005 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A073834.P9025024745385375763

/-!
# A073835: Replace 10^k with (-10)^k in decimal expansion of n.

The programs for A073835, the canonical program `A073835.P3735071247250519324` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073835 has offset 0).

The definition of A073835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073835.P3735071247250519324

`2*∑{digits}[n, #]-(2*comp[98-11*n]-n)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073835

/-- `2*∑{digits}[n, #]-(2*comp[98-11*n]-n)` -/
def P3735071247250519324.Spec : Prop :=
  ∀ n, P3735071247250519324.a n = A073835 n

theorem P3735071247250519324.correct : P3735071247250519324.Spec := by
  intro n
  simp only [A073835]

end A073835

/-! ## A073835.P2804996573974672141

`A005843(n-9*floor(n/10))-(2*comp[98-11*n]-n)`
-/

namespace A073835.P2804996573974672141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  98 - (11 * n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋).toNat - ((2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A073835.P2804996573974672141

namespace A073835

/-- `A005843(n-9*floor(n/10))-(2*comp[98-11*n]-n)` -/
def P2804996573974672141.Spec : Prop :=
  ∀ n, P2804996573974672141.a n = A073835 n

end A073835

/-! ## A073835.P16184434745595063534

`A010879(n)-A059995(A051022(n))`
-/

namespace A073835.P16184434745595063534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n - A059995 (A051022 n).toNat

end

end A073835.P16184434745595063534

namespace A073835

/-- `A010879(n)-A059995(A051022(n))` -/
def P16184434745595063534.Spec : Prop :=
  ∀ n, P16184434745595063534.a n = A073835 n

end A073835

/-! ## A073835.P7832606755977091071

`A061393(A002939(2*n+1))/2*n%10-n`
-/

namespace A073835.P7832606755977091071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061393 (A002939 (2 * n + 1)).toNat : ℚ) / 2 * ((n % 10 : ℕ) : ℚ) - (n : ℚ)

end

end A073835.P7832606755977091071

namespace A073835

/-- `A061393(A002939(2*n+1))/2*n%10-n` -/
def P7832606755977091071.Spec : Prop :=
  ∀ n, P7832606755977091071.a n = (A073835 n : ℚ)

end A073835

/-! ## A073835.P7529642686448976504

`10-A334387(n+10)`
-/

namespace A073835.P7529642686448976504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A334387 (n + 10)

end

end A073835.P7529642686448976504

namespace A073835

/-- `10-A334387(n+10)` -/
def P7529642686448976504.Spec : Prop :=
  ∀ n, P7529642686448976504.a n = A073835 n

end A073835

/-!
# A073836: Let C(n) = product of composite numbers between the n-th prime and (n+1)-th prime; a(n) = floor(C(n+1)/C(n)).

The programs for A073836, there is no canonical definition to state claims against.
-/

/-! ## A073836.P10323144502667277226

`floor(ratio[A061214(n+2)])`
-/

namespace A073836.P10323144502667277226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061214 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A073836.P10323144502667277226

/-! ## A073836.P14593718501539754072

`floor(A061214(n+3)/A061214(n+2))`
-/

namespace A073836.P14593718501539754072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061214 (n + 3) : ℚ) / (A061214 (n + 2) : ℚ)⌋

end

end A073836.P14593718501539754072

/-! ## A073836.P958379481903497753

`floor(ratio[A109919(A004280(n+4))])`
-/

namespace A073836.P958379481903497753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109919 (A004280 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A073836.P958379481903497753

/-!
# A073837: Sum of primes p satisfying n <= p <= 2n.

The programs for A073837, the canonical program `A073837.P15829496930880543402` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073837 has offset 1).

The definition of A073837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073837.P15829496930880543402

`A063955(n*a(val(n, n+1))+1)` with `a(0)=2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073837

/-- `A063955(n*a(val(n, n+1))+1)` -/
def P15829496930880543402.Spec : Prop :=
  ∀ n, P15829496930880543402.a n = A073837 (n + 1)

theorem P15829496930880543402.correct : P15829496930880543402.Spec := by
  intro n
  simp only [A073837, Nat.add_sub_cancel]

end A073837

/-! ## A073837.P631283972066284281

`A063955(A004280(n+2))`
-/

namespace A073837.P631283972066284281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (A004280 (n + 2)).toNat

end

end A073837.P631283972066284281

namespace A073837

/-- `A063955(A004280(n+2))` -/
def P631283972066284281.Spec : Prop :=
  ∀ n, P631283972066284281.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P11080044279458535886

`A063955(A028310(2*n)+1)`
-/

namespace A073837.P11080044279458535886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (A028310 (2 * n) + 1).toNat

end

end A073837.P11080044279458535886

namespace A073837

/-- `A063955(A028310(2*n)+1)` -/
def P11080044279458535886.Spec : Prop :=
  ∀ n, P11080044279458535886.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P8671514290258989354

`A063955(A028310(n)+1+n)`
-/

namespace A073837.P8671514290258989354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (A028310 n + 1 + (n : ℤ)).toNat

end

end A073837.P8671514290258989354

namespace A073837

/-- `A063955(A028310(n)+1+n)` -/
def P8671514290258989354.Spec : Prop :=
  ∀ n, P8671514290258989354.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P11388869126466493870

`A063955(A014684(n+1)+1+n)`
-/

namespace A073837.P11388869126466493870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (A014684 (n + 1) + 1 + (n : ℤ)).toNat

end

end A073837.P11388869126466493870

namespace A073837

/-- `A063955(A014684(n+1)+1+n)` -/
def P11388869126466493870.Spec : Prop :=
  ∀ n, P11388869126466493870.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P16679714341612553467

`A063955(A063524(n+1)+2*n+1)`
-/

namespace A073837.P16679714341612553467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (A063524 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A073837.P16679714341612553467

namespace A073837

/-- `A063955(A063524(n+1)+2*n+1)` -/
def P16679714341612553467.Spec : Prop :=
  ∀ n, P16679714341612553467.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P448742870645950406

`A063955(2*(n+1)-A010051(n+1))`
-/

namespace A073837.P448742870645950406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 ((2 * (n + 1) : ℤ) - A010051 (n + 1)).toNat

end

end A073837.P448742870645950406

namespace A073837

/-- `A063955(2*(n+1)-A010051(n+1))` -/
def P448742870645950406.Spec : Prop :=
  ∀ n, P448742870645950406.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P8504595333564162909

`A063955(2*n+1)+A061397(2*(n+1))`
-/

namespace A073837.P8504595333564162909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (2 * n + 1) + A061397 (2 * (n + 1))

end

end A073837.P8504595333564162909

namespace A073837

/-- `A063955(2*n+1)+A061397(2*(n+1))` -/
def P8504595333564162909.Spec : Prop :=
  ∀ n, P8504595333564162909.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P17089059765985007691

`A034387(2*(n+1))-A063960(2*n+1)`
-/

namespace A073837.P17089059765985007691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (2 * (n + 1)) - A063960 (2 * n + 1)

end

end A073837.P17089059765985007691

namespace A073837

/-- `A034387(2*(n+1))-A063960(2*n+1)` -/
def P17089059765985007691.Spec : Prop :=
  ∀ n, P17089059765985007691.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P12431281325673966543

`A063955(2*n+1)+2*A266070(2*n)`
-/

namespace A073837.P12431281325673966543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (2 * n + 1) + 2 * A266070 (2 * n)

end

end A073837.P12431281325673966543

namespace A073837

/-- `A063955(2*n+1)+2*A266070(2*n)` -/
def P12431281325673966543.Spec : Prop :=
  ∀ n, P12431281325673966543.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P7465869510375118471

`A063955(2*n+1)-2*A073097(2*n)`
-/

namespace A073837.P7465869510375118471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (2 * n + 1) - 2 * A073097 (2 * n)

end

end A073837.P7465869510375118471

namespace A073837

/-- `A063955(2*n+1)-2*A073097(2*n)` -/
def P7465869510375118471.Spec : Prop :=
  ∀ n, P7465869510375118471.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P12835166272319358202

`A063955(2*n+1)+2*A010051(2*(n+1))`
-/

namespace A073837.P12835166272319358202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (2 * n + 1) + 2 * A010051 (2 * (n + 1))

end

end A073837.P12835166272319358202

namespace A073837

/-- `A063955(2*n+1)+2*A010051(2*(n+1))` -/
def P12835166272319358202.Spec : Prop :=
  ∀ n, P12835166272319358202.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P11193414692274448799

`A034387(2*(n+1))-A034387(A028310(n))`
-/

namespace A073837.P11193414692274448799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (2 * (n + 1)) - A034387 (A028310 n).toNat

end

end A073837.P11193414692274448799

namespace A073837

/-- `A034387(2*(n+1))-A034387(A028310(n))` -/
def P11193414692274448799.Spec : Prop :=
  ∀ n, P11193414692274448799.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P16312503317195913614

`A158662(2*(n+1))-A158662(A028310(n))`
-/

namespace A073837.P16312503317195913614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158662 (2 * (n + 1)) - A158662 (A028310 n).toNat

end

end A073837.P16312503317195913614

namespace A073837

/-- `A158662(2*(n+1))-A158662(A028310(n))` -/
def P16312503317195913614.Spec : Prop :=
  ∀ n, P16312503317195913614.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P10780694242386468180

`A034387(2*(n+1))-A034387(A065033(2*n))`
-/

namespace A073837.P10780694242386468180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (2 * (n + 1)) - A034387 (A065033 (2 * n)).toNat

end

end A073837.P10780694242386468180

namespace A073837

/-- `A034387(2*(n+1))-A034387(A065033(2*n))` -/
def P10780694242386468180.Spec : Prop :=
  ∀ n, P10780694242386468180.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P1544866186738614656

`A007504(A000720(2*(n+1)))-A063960(2*n+1)`
-/

namespace A073837.P1544866186738614656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 (2 * (n + 1))).toNat - A063960 (2 * n + 1)

end

end A073837.P1544866186738614656

namespace A073837

/-- `A007504(A000720(2*(n+1)))-A063960(2*n+1)` -/
def P1544866186738614656.Spec : Prop :=
  ∀ n, P1544866186738614656.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P5017530481834064028

`A034387(2*(n+1))-A034387(A056039(2*n+1))`
-/

namespace A073837.P5017530481834064028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (2 * (n + 1)) - A034387 (A056039 (2 * n + 1)).toNat

end

end A073837.P5017530481834064028

namespace A073837

/-- `A034387(2*(n+1))-A034387(A056039(2*n+1))` -/
def P5017530481834064028.Spec : Prop :=
  ∀ n, P5017530481834064028.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P15381380988256409493

`A063955(2*n+1)+A034387(2*(n+1))-A034387(2*n+1)`
-/

namespace A073837.P15381380988256409493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (2 * n + 1) + (A034387 (2 * (n + 1)) - A034387 (2 * n + 1))

end

end A073837.P15381380988256409493

namespace A073837

/-- `A063955(2*n+1)+A034387(2*(n+1))-A034387(2*n+1)` -/
def P15381380988256409493.Spec : Prop :=
  ∀ n, P15381380988256409493.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P3120857247746698425

`A288726(2*n+3)`
-/

namespace A073837.P3120857247746698425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288726 (2 * n + 3)

end

end A073837.P3120857247746698425

namespace A073837

/-- `A288726(2*n+3)` -/
def P3120857247746698425.Spec : Prop :=
  ∀ n, P3120857247746698425.a n = A073837 (n + 1)

end A073837

/-! ## A073837.P11110626219169256036

`A063960(4*(n+1))-A063960(2*n+1)`
-/

namespace A073837.P11110626219169256036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (4 * (n + 1)) - A063960 (2 * n + 1)

end

end A073837.P11110626219169256036

namespace A073837

/-- `A063960(4*(n+1))-A063960(2*n+1)` -/
def P11110626219169256036.Spec : Prop :=
  ∀ n, P11110626219169256036.a n = A073837 (n + 1)

end A073837

/-!
# A073838: Product of primes p satisfying n <= p <= 2n.

The programs for A073838, the canonical program `A073838.P2064142446550053236` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073838 has offset 1).

The definition of A073838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073838.P2855917313504268745

`A055773(round(sqrt(n²+1))+1+n)`
-/

namespace A073838.P2855917313504268745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1 + (n : ℤ)).toNat

end

end A073838.P2855917313504268745

namespace A073838

/-- `A055773(round(sqrt(n²+1))+1+n)` -/
def P2855917313504268745.Spec : Prop :=
  ∀ n, P2855917313504268745.a n = A073838 (n + 1)

end A073838

/-! ## A073838.P2238598222843608128

`lcm(A060308(n+1), A261130(n))`
-/

namespace A073838.P2238598222843608128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060308 (n + 1)) (A261130 n)

end

end A073838.P2238598222843608128

namespace A073838

/-- `lcm(A060308(n+1), A261130(n))` -/
def P2238598222843608128.Spec : Prop :=
  ∀ n, (P2238598222843608128.a n : ℤ) = A073838 (n + 1)

end A073838

/-! ## A073838.P2064142446550053236

`A055773(2*n+1)+A000007(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A073838

/-- `A055773(2*n+1)+A000007(n)` -/
def P2064142446550053236.Spec : Prop :=
  ∀ n, P2064142446550053236.a n = A073838 (n + 1)

theorem P2064142446550053236.correct : P2064142446550053236.Spec := by
  intro n
  simp only [A073838, Nat.add_sub_cancel]

end A073838

/-! ## A073838.P11663696032071272388

`ratio[A034386(n)]*A055773(2*(n+1))`
-/

namespace A073838.P11663696032071272388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A055773 (2 * (n + 1)) : ℚ)

end

end A073838.P11663696032071272388

namespace A073838

/-- `ratio[A034386(n)]*A055773(2*(n+1))` -/
def P11663696032071272388.Spec : Prop :=
  ∀ n, P11663696032071272388.a n = (A073838 (n + 1) : ℚ)

end A073838

/-! ## A073838.P11135147189765026510

`A055773(2*n+1)+1-A057427(n)`
-/

namespace A073838.P11135147189765026510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (2 * n + 1) + (1 - A057427 n)

end

end A073838.P11135147189765026510

namespace A073838

/-- `A055773(2*n+1)+1-A057427(n)` -/
def P11135147189765026510.Spec : Prop :=
  ∀ n, P11135147189765026510.a n = A073838 (n + 1)

end A073838

/-! ## A073838.P2356969454555288646

`A055773(2*n+1)+A010051(2*(n+1))`
-/

namespace A073838.P2356969454555288646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (2 * n + 1) + A010051 (2 * (n + 1))

end

end A073838.P2356969454555288646

namespace A073838

/-- `A055773(2*n+1)+A010051(2*(n+1))` -/
def P2356969454555288646.Spec : Prop :=
  ∀ n, P2356969454555288646.a n = A073838 (n + 1)

end A073838

/-! ## A073838.P9178730739853815500

`A055773(2*n+1)+A049084(2*(n+1))`
-/

namespace A073838.P9178730739853815500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (2 * n + 1) + A049084 (2 * (n + 1))

end

end A073838.P9178730739853815500

namespace A073838

/-- `A055773(2*n+1)+A049084(2*(n+1))` -/
def P9178730739853815500.Spec : Prop :=
  ∀ n, P9178730739853815500.a n = A073838 (n + 1)

end A073838

/-! ## A073838.P9348315150916666863

`A055773(2*n+1)+A123108(2*n)-n`
-/

namespace A073838.P9348315150916666863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (2 * n + 1) + (A123108 (2 * n) - (n : ℤ))

end

end A073838.P9348315150916666863

namespace A073838

/-- `A055773(2*n+1)+A123108(2*n)-n` -/
def P9348315150916666863.Spec : Prop :=
  ∀ n, P9348315150916666863.a n = A073838 (n + 1)

end A073838

/-! ## A073838.P4677832714406418766

`A034386(n+1)/A034386(n)*A261130(n+1)`
-/

namespace A073838.P4677832714406418766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A034386 n : ℚ) * (A261130 (n + 1) : ℚ)

end

end A073838.P4677832714406418766

namespace A073838

/-- `A034386(n+1)/A034386(n)*A261130(n+1)` -/
def P4677832714406418766.Spec : Prop :=
  ∀ n, P4677832714406418766.a n = (A073838 (n + 1) : ℚ)

end A073838

/-! ## A073838.P11822325802698189230

`A089026(n+1)*A144186(n+1)*A089026(n+2)`
-/

namespace A073838.P11822325802698189230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) * A144186 (n + 1) * A089026 (n + 2)

end

end A073838.P11822325802698189230

namespace A073838

/-- `A089026(n+1)*A144186(n+1)*A089026(n+2)` -/
def P11822325802698189230.Spec : Prop :=
  ∀ n, P11822325802698189230.a n = A073838 (n + 1)

end A073838

/-! ## A073838.P1782135786057936569

`A034386(2*(n+1))/A034386(n)`
-/

namespace A073838.P1782135786057936569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (2 * (n + 1)) : ℚ) / (A034386 n : ℚ)

end

end A073838.P1782135786057936569

namespace A073838

/-- `A034386(2*(n+1))/A034386(n)` -/
def P1782135786057936569.Spec : Prop :=
  ∀ n, P1782135786057936569.a n = (A073838 (n + 1) : ℚ)

end A073838

/-! ## A073838.P17234575348470987503

`A002110(A000720(2*(n+1)))/A300951(2*n)`
-/

namespace A073838.P17234575348470987503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A000720 (2 * (n + 1))).toNat : ℚ) / (A300951 (2 * n) : ℚ)

end

end A073838.P17234575348470987503

namespace A073838

/-- `A002110(A000720(2*(n+1)))/A300951(2*n)` -/
def P17234575348470987503.Spec : Prop :=
  ∀ n, P17234575348470987503.a n = (A073838 (n + 1) : ℚ)

end A073838

/-! ## A073838.P6333625813960868768

`A300951(A223134(2*n+1))/A300951(2*n)`
-/

namespace A073838.P6333625813960868768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 (A223134 (2 * n + 1)).toNat : ℚ) / (A300951 (2 * n) : ℚ)

end

end A073838.P6333625813960868768

namespace A073838

/-- `A300951(A223134(2*n+1))/A300951(2*n)` -/
def P6333625813960868768.Spec : Prop :=
  ∀ n, P6333625813960868768.a n = (A073838 (n + 1) : ℚ)

end A073838

/-!
# A073839: Sum of the composite numbers between n and 2n (both inclusive).

The programs for A073839, the canonical program `A073839.P2498259996426853723` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073839 has offset 1).

The definition of A073839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073839.P14845983434638058687

`A101203(2*(n+1))-round(1/acot(A101203(n)))`
-/

namespace A073839.P14845983434638058687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (2 * (n + 1)) - SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A101203 n : ℝ))

end

end A073839.P14845983434638058687

namespace A073839

/-- `A101203(2*(n+1))-round(1/acot(A101203(n)))` -/
def P14845983434638058687.Spec : Prop :=
  ∀ n, P14845983434638058687.a n = A073839 (n + 1)

end A073839

/-! ## A073839.P6012319153183925671

`A101203(2*(n+1))-A101203(round(acot(n)+n))`
-/

namespace A073839.P6012319153183925671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (2 * (n + 1)) - A101203 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A073839.P6012319153183925671

namespace A073839

/-- `A101203(2*(n+1))-A101203(round(acot(n)+n))` -/
def P6012319153183925671.Spec : Prop :=
  ∀ n, P6012319153183925671.a n = A073839 (n + 1)

end A073839

/-! ## A073839.P2498259996426853723

`A101203(A163300(n+1))-A101203(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A073839

/-- `A101203(A163300(n+1))-A101203(n)` -/
def P2498259996426853723.Spec : Prop :=
  ∀ n, P2498259996426853723.a n = A073839 (n + 1)

theorem P2498259996426853723.correct : P2498259996426853723.Spec := by
  intro n
  simp only [A073839, Nat.add_sub_cancel]

end A073839

/-! ## A073839.P8655543636884462374

`A334260(n+1)+A163300(n+1)`
-/

namespace A073839.P8655543636884462374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334260 (n + 1) + A163300 (n + 1)

end

end A073839.P8655543636884462374

namespace A073839

/-- `A334260(n+1)+A163300(n+1)` -/
def P8655543636884462374.Spec : Prop :=
  ∀ n, P8655543636884462374.a n = A073839 (n + 1)

end A073839

/-! ## A073839.P9191604754809966791

`A334260(n+1)+A267530(4*n)`
-/

namespace A073839.P9191604754809966791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334260 (n + 1) + A267530 (4 * n)

end

end A073839.P9191604754809966791

namespace A073839

/-- `A334260(n+1)+A267530(4*n)` -/
def P9191604754809966791.Spec : Prop :=
  ∀ n, P9191604754809966791.a n = A073839 (n + 1)

end A073839

/-! ## A073839.P14073248411301487582

`A334260(n+1)+A103517(n)-C(2, n+2)`
-/

namespace A073839.P14073248411301487582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334260 (n + 1) + A103517 n - (Nat.choose 2 (n + 2) : ℤ)

end

end A073839.P14073248411301487582

namespace A073839

/-- `A334260(n+1)+A103517(n)-C(2, n+2)` -/
def P14073248411301487582.Spec : Prop :=
  ∀ n, P14073248411301487582.a n = A073839 (n + 1)

end A073839

/-!
# A073840: Product of the composite numbers between n and 2n (both inclusive).

The programs for A073840, the canonical program `A073840.P16683968075710145056` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073840 has offset 1).

The definition of A073840 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049614, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073840.P16683968075710145056

`A049614(2*(n+1))/A049614(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073840

/-- `A049614(2*(n+1))/A049614(n)` -/
def P16683968075710145056.Spec : Prop :=
  ∀ n, P16683968075710145056.a n = (A073840 (n + 1) : ℚ)

end A073840

/-! ## A073840.P14953502838664351205

`A126804(n+1)/A073838(n+1)`
-/

namespace A073840.P14953502838664351205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126804 (n + 1) : ℚ) / (A073838 (n + 1) : ℚ)

end

end A073840.P14953502838664351205

namespace A073840

/-- `A126804(n+1)/A073838(n+1)` -/
def P14953502838664351205.Spec : Prop :=
  ∀ n, P14953502838664351205.a n = (A073840 (n + 1) : ℚ)

end A073840

/-! ## A073840.P139357775227152706

`(n+1)*∏[4*n+2]/A055773(A004273(n)+2)`
-/

namespace A073840.P139357775227152706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (A055773 (A004273 n + 2).toNat : ℚ)

end

end A073840.P139357775227152706

namespace A073840

/-- `(n+1)*∏[4*n+2]/A055773(A004273(n)+2)` -/
def P139357775227152706.Spec : Prop :=
  ∀ n, P139357775227152706.a n = (A073840 (n + 1) : ℚ)

end A073840

/-! ## A073840.P16436327627944137791

`(n+1)*∏[4*n+2]/A055773(A007318(∑[n]+1)+n+1)`
-/

namespace A073840.P16436327627944137791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (A055773 (A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1) + (n + 1 : ℤ)).toNat : ℚ)

end

end A073840.P16436327627944137791

namespace A073840

/-- `(n+1)*∏[4*n+2]/A055773(A007318(∑[n]+1)+n+1)` -/
def P16436327627944137791.Spec : Prop :=
  ∀ n, P16436327627944137791.a n = (A073840 (n + 1) : ℚ)

end A073840

/-! ## A073840.P16616494571457142760

`floor(A052719(n+3)/3)/A073838(n+1)`
-/

namespace A073840.P16616494571457142760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A052719 (n + 3) : ℚ) / 3⌋ : ℚ) / (A073838 (n + 1) : ℚ)

end

end A073840.P16616494571457142760

namespace A073840

/-- `floor(A052719(n+3)/3)/A073838(n+1)` -/
def P16616494571457142760.Spec : Prop :=
  ∀ n, P16616494571457142760.a n = (A073840 (n + 1) : ℚ)

end A073840

/-!
# A073841: LCM of the composite numbers between n and 2n (both inclusive).

The programs for A073841, the canonical program `A073841.P7314902352590072057` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073841 has offset 1).

The definition of A073841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073841.P2225002358644126706

`lcm(a(n-1), A282503(2*(n+1)))` with `a(0)=1`
-/

namespace A073841.P2225002358644126706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A282503 (2 * (n + 1)))

end

end A073841.P2225002358644126706

namespace A073841

/-- `lcm(a(n-1), A282503(2*(n+1)))` -/
def P2225002358644126706.Spec : Prop :=
  ∀ n, (P2225002358644126706.a n : ℤ) = A073841 (n + 1)

end A073841

/-! ## A073841.P7314902352590072057

`A025543(A065896(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073841

/-- `A025543(A065896(n+1))` -/
def P7314902352590072057.Spec : Prop :=
  ∀ n, P7314902352590072057.a n = A073841 (n + 1)

theorem P7314902352590072057.correct : P7314902352590072057.Spec := by
  intro n
  simp only [A073841, Nat.add_sub_cancel]

end A073841

/-! ## A073841.P3345142453483166360

`A034386(n+1)*A045948(2*(n+1))`
-/

namespace A073841.P3345142453483166360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (n + 1) * A045948 (2 * (n + 1))

end

end A073841.P3345142453483166360

namespace A073841

/-- `A034386(n+1)*A045948(2*(n+1))` -/
def P3345142453483166360.Spec : Prop :=
  ∀ n, P3345142453483166360.a n = A073841 (n + 1)

end A073841

/-! ## A073841.P18228729259240062466

`A025543(2*n+1-A000720(2*(n+1)))`
-/

namespace A073841.P18228729259240062466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025543 ((2 * n + 1 : ℤ) - A000720 (2 * (n + 1))).toNat

end

end A073841.P18228729259240062466

namespace A073841

/-- `A025543(2*n+1-A000720(2*(n+1)))` -/
def P18228729259240062466.Spec : Prop :=
  ∀ n, P18228729259240062466.a n = A073841 (n + 1)

end A073841

/-! ## A073841.P5289898000253258959

`A003418(2*(n+1))/A055773(2*(n+1))`
-/

namespace A073841.P5289898000253258959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * (n + 1)) : ℚ) / (A055773 (2 * (n + 1)) : ℚ)

end

end A073841.P5289898000253258959

namespace A073841

/-- `A003418(2*(n+1))/A055773(2*(n+1))` -/
def P5289898000253258959.Spec : Prop :=
  ∀ n, P5289898000253258959.a n = (A073841 (n + 1) : ℚ)

end A073841

/-! ## A073841.P7245978312955404838

`gcd(A003418(n+1)², A003418(2*(n+1)))`
-/

namespace A073841.P7245978312955404838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 (n + 1) ^ 2) (A003418 (2 * (n + 1)))

end

end A073841.P7245978312955404838

namespace A073841

/-- `gcd(A003418(n+1)², A003418(2*(n+1)))` -/
def P7245978312955404838.Spec : Prop :=
  ∀ n, (P7245978312955404838.a n : ℤ) = A073841 (n + 1)

end A073841

/-!
# A073842: a(1) = 1; for n>1, a(n) = the smallest positive integer root of n not included earlier, if such a root exists, otherwise the smallest power of n not included earlier, subject to a(n)<>n.

The programs for A073842, there is no canonical definition to state claims against.
-/

/-! ## A073842.P1493093033396350200

`gcd(A008794(2*n+3), A208575(A048583(n)))`
-/

namespace A073842.P1493093033396350200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008794 (2 * n + 3)) (A208575 (A048583 n).toNat)

end

end A073842.P1493093033396350200

/-! ## A073842.P2723394992904017822

`gcd((n+1)², A243978(A000225(n)))`
-/

namespace A073842.P2723394992904017822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A243978 (A000225 n).toNat)

end

end A073842.P2723394992904017822

/-! ## A073842.P14175646190674935024

`A008834(A284260(n+1)+A240738(n+6))*A048798(n+1)`
-/

namespace A073842.P14175646190674935024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (A284260 (n + 1) + A240738 (n + 6)).toNat * A048798 (n + 1)

end

end A073842.P14175646190674935024

/-! ## A073842.P3967003183614084414

`∏{p}[n+1, #]^A234305(∏{e}[n+1, C(#+6, 6)])`
-/

namespace A073842.P3967003183614084414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A234305 (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 6) 6) : ℤ)

end

end A073842.P3967003183614084414

/-!
# A073843: a(1) = 1; for n > 1 a(n) = smallest number of the form n^r (with r rational != 1) not included earlier.

The programs for A073843, the canonical program `A073843.P17664435674148381334` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073843 has offset 1).

The definition of A073843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073843.P17664435674148381334

`A052410(n+1)^A014681(A052409(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A073843

/-- `A052410(n+1)^A014681(A052409(n+1))` -/
def P17664435674148381334.Spec : Prop :=
  ∀ n, P17664435674148381334.a n = (A073843 (n + 1) : ℚ)

end A073843

/-!
# A073844: a(1) = 1, a(n) = largest prime divisor of A057137(n).

The programs for A073844, there is no canonical definition to state claims against.
-/

/-! ## A073844.P1157051993926917271

`A075022(A071274(n+1)-A004216(n+1))`
-/

namespace A073844.P1157051993926917271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075022 (A071274 (n + 1) - A004216 (n + 1)).toNat

end

end A073844.P1157051993926917271

/-! ## A073844.P10072984853214966363

`A075022(A078295(n+1)-A004216(n+1))`
-/

namespace A073844.P10072984853214966363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075022 (A078295 (n + 1) - A004216 (n + 1)).toNat

end

end A073844.P10072984853214966363

/-! ## A073844.P2090048330539259173

`A138961(A071274(n+1)-A004216(n+1))`
-/

namespace A073844.P2090048330539259173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138961 (A071274 (n + 1) - A004216 (n + 1)).toNat

end

end A073844.P2090048330539259173

/-! ## A073844.P11808025641230325693

`A138961(A078295(n+1)-A004216(n+1))`
-/

namespace A073844.P11808025641230325693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138961 (A078295 (n + 1) - A004216 (n + 1)).toNat

end

end A073844.P11808025641230325693

/-!
# A073845: a(1)=a(2)=1, a(n+2)=a(n+1)+a(n)+(-2)^n.

The programs for A073845, the canonical program `A073845.P3227992193217113330` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073845 has offset 1).

The definition of A073845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073845.P9043830599320177549

`(-2)^(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A073845.P9043830599320177549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (a (n - 1) + a (n - 2))

end

end A073845.P9043830599320177549

namespace A073845

/-- `(-2)^(n-1)+a(n-1)+a(n-2)` -/
def P9043830599320177549.Spec : Prop :=
  ∀ n, P9043830599320177549.a n = (A073845 (n + 1) : ℚ)

end A073845

/-! ## A073845.P8950035806766726572

`a(n-1)-((-2)^n/2-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A073845.P8950035806766726572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (((-2) ^ n : ℚ) / 2 - a (n - 2))

end

end A073845.P8950035806766726572

namespace A073845

/-- `a(n-1)-((-2)^n/2-a(n-2))` -/
def P8950035806766726572.Spec : Prop :=
  ∀ n, P8950035806766726572.a n = (A073845 (n + 1) : ℚ)

end A073845

/-! ## A073845.P3227992193217113330

`A212804(n)+A084179(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073845

/-- `A212804(n)+A084179(n)` -/
def P3227992193217113330.Spec : Prop :=
  ∀ n, P3227992193217113330.a n = A073845 (n + 1)

theorem P3227992193217113330.correct : P3227992193217113330.Spec := by
  intro n
  simp only [A073845, Nat.add_sub_cancel]

end A073845

/-! ## A073845.P11199314409884916687

`A084179(n)+Δ[A000045(n)]`
-/

namespace A073845.P11199314409884916687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 n + (f1 (n + 1) - f1 n)

end

end A073845.P11199314409884916687

namespace A073845

/-- `A084179(n)+Δ[A000045(n)]` -/
def P11199314409884916687.Spec : Prop :=
  ∀ n, P11199314409884916687.a n = A073845 (n + 1)

end A073845

/-! ## A073845.P8648943323851716004

`A084179(n)+Δ[A001611(n)]`
-/

namespace A073845.P8648943323851716004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 n + (f1 (n + 1) - f1 n)

end

end A073845.P8648943323851716004

namespace A073845

/-- `A084179(n)+Δ[A001611(n)]` -/
def P8648943323851716004.Spec : Prop :=
  ∀ n, P8648943323851716004.a n = A073845 (n + 1)

end A073845

/-! ## A073845.P11250099315207164610

`A224508(n+1)-A000045(n)`
-/

namespace A073845.P11250099315207164610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224508 (n + 1) - A000045 n

end

end A073845.P11250099315207164610

namespace A073845

/-- `A224508(n+1)-A000045(n)` -/
def P11250099315207164610.Spec : Prop :=
  ∀ n, P11250099315207164610.a n = A073845 (n + 1)

end A073845

/-! ## A073845.P5632898296545395942

`A084179(n)-A152163(n+1)`
-/

namespace A073845.P5632898296545395942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 n - A152163 (n + 1)

end

end A073845.P5632898296545395942

namespace A073845

/-- `A084179(n)-A152163(n+1)` -/
def P5632898296545395942.Spec : Prop :=
  ∀ n, P5632898296545395942.a n = A073845 (n + 1)

end A073845

/-! ## A073845.P11485100780912212793

`A224508(n+1)-A212804(n+1)`
-/

namespace A073845.P11485100780912212793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224508 (n + 1) - A212804 (n + 1)

end

end A073845.P11485100780912212793

namespace A073845

/-- `A224508(n+1)-A212804(n+1)` -/
def P11485100780912212793.Spec : Prop :=
  ∀ n, P11485100780912212793.a n = A073845 (n + 1)

end A073845

/-! ## A073845.P9558791611282982772

`A000032(n+1)-2*A224508(n)`
-/

namespace A073845.P9558791611282982772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - 2 * A224508 n

end

end A073845.P9558791611282982772

namespace A073845

/-- `A000032(n+1)-2*A224508(n)` -/
def P9558791611282982772.Spec : Prop :=
  ∀ n, P9558791611282982772.a n = A073845 (n + 1)

end A073845

/-! ## A073845.P194517258938399742

`A000204(n+1)-2*A224508(n)`
-/

namespace A073845.P194517258938399742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - 2 * A224508 n

end

end A073845.P194517258938399742

namespace A073845

/-- `A000204(n+1)-2*A224508(n)` -/
def P194517258938399742.Spec : Prop :=
  ∀ n, P194517258938399742.a n = A073845 (n + 1)

end A073845

/-! ## A073845.P9415471184902561982

`A000032(n)+A084179(n)-A000045(n+1)`
-/

namespace A073845.P9415471184902561982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A084179 n - A000045 (n + 1))

end

end A073845.P9415471184902561982

namespace A073845

/-- `A000032(n)+A084179(n)-A000045(n+1)` -/
def P9415471184902561982.Spec : Prop :=
  ∀ n, P9415471184902561982.a n = A073845 (n + 1)

end A073845

/-! ## A073845.P13659010285138378074

`A000045(n+1)+A084179(n)-A000045(n)`
-/

namespace A073845.P13659010285138378074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A084179 n - A000045 n)

end

end A073845.P13659010285138378074

namespace A073845

/-- `A000045(n+1)+A084179(n)-A000045(n)` -/
def P13659010285138378074.Spec : Prop :=
  ∀ n, P13659010285138378074.a n = A073845 (n + 1)

end A073845

/-! ## A073845.P15950483770537468736

`A000032(n)-(A084179(n+1)+A084179(n))`
-/

namespace A073845.P15950483770537468736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - (A084179 (n + 1) + A084179 n)

end

end A073845.P15950483770537468736

namespace A073845

/-- `A000032(n)-(A084179(n+1)+A084179(n))` -/
def P15950483770537468736.Spec : Prop :=
  ∀ n, P15950483770537468736.a n = A073845 (n + 1)

end A073845

/-! ## A073845.P14708911831740391885

`A000032(n)-A084178(n+1)`
-/

namespace A073845.P14708911831740391885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A084178 (n + 1)

end

end A073845.P14708911831740391885

namespace A073845

/-- `A000032(n)-A084178(n+1)` -/
def P14708911831740391885.Spec : Prop :=
  ∀ n, P14708911831740391885.a n = A073845 (n + 1)

end A073845

/-!
# A073846: a(1) = 1; thereafter, every even-indexed term is prime and every odd-indexed term is composite.

The programs for A073846, there is no canonical definition to state claims against.
-/

/-! ## A073846.P11715985268079326105

`A067747(n-a(val(n, n+1))+1)` with `a(0)=1`
-/

namespace A073846.P11715985268079326105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A067747 ((n : ℤ) - a (SequenceMachineLib.valuation n (n + 1)) + 1).toNat

end

end A073846.P11715985268079326105

/-! ## A073846.P8616552447153968968

`∏{e}[A006530(n+1), A067747(n*#)]`
-/

namespace A073846.P8616552447153968968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A067747 (n * Nat.factorization (f1 n).natAbs p)

end

end A073846.P8616552447153968968

/-! ## A073846.P18183929723567787586

`A067747(n-A000041(and(1, a(n-1)))+1)` with `a(0)=1`
-/

namespace A073846.P18183929723567787586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A067747 ((n : ℤ) - A000041 (Int.land 1 (a (n - 1))).toNat + 1).toNat

end

end A073846.P18183929723567787586

/-! ## A073846.P17588825779759650751

`A066251(n)+a(A111787(A006519(n)))` with `a(0)=1`
-/

namespace A073846.P17588825779759650751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066251 n + a (A111787 (A006519 n).toNat).toNat

end

end A073846.P17588825779759650751

/-! ## A073846.P13569393300124982693

`A067747(A000007(n)+n)-A000007(n)`
-/

namespace A073846.P13569393300124982693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A073846.P13569393300124982693

/-! ## A073846.P12044036639778169708

`A067747(A028310(n))+n-A028310(n)`
-/

namespace A073846.P12044036639778169708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A028310 n).toNat + ((n : ℤ) - A028310 n)

end

end A073846.P12044036639778169708

/-! ## A073846.P16500106147664877320

`A067747(n)%A085318(a(n-1)+1)` with `a(0)=1`
-/

namespace A073846.P16500106147664877320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A067747 n) (A085318 (a (n - 1) + 1).toNat)

end

end A073846.P16500106147664877320

/-! ## A073846.P5924823112424730314

`A067747(n*a(A193350(n²)))` with `a(0)=1`
-/

namespace A073846.P5924823112424730314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A067747 ((n : ℤ) * a (A193350 (n ^ 2)).toNat).toNat

end

end A073846.P5924823112424730314

/-! ## A073846.P2862310345424021912

`A105366(A332807(n+1))`
-/

namespace A073846.P2862310345424021912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105366 (A332807 (n + 1)).toNat

end

end A073846.P2862310345424021912

/-!
# A073847: a(0) = 1, c(0) = 1, a(n) for n > 0 is the smallest prime a(n-1) + c(n), where c(n) is composite and larger than c(n-1).

The programs for A073847, there is no canonical definition to state claims against.
-/

/-! ## A073847.P15924456101282900665

`or(1, A085626(n+1)-1)`
-/

namespace A073847.P15924456101282900665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A085626 (n + 1) - 1)

end

end A073847.P15924456101282900665

/-! ## A073847.P10577420953845083969

`∑[A051935(n+1)]-floor(acot(n))`
-/

namespace A073847.P10577420953845083969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A073847.P10577420953845083969

/-! ## A073847.P2340344961839647242

`A085626(n+1)-A000007(n)`
-/

namespace A073847.P2340344961839647242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085626 (n + 1) - A000007 n

end

end A073847.P2340344961839647242

/-! ## A073847.P14361977127007243298

`A085626(n+1)/A054977(n)`
-/

namespace A073847.P14361977127007243298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085626 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A073847.P14361977127007243298

/-! ## A073847.P4198886391911267640

`gcd(floor(acot(n)²), A070865(n+2))`
-/

namespace A073847.P4198886391911267640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ (A070865 (n + 2))

end

end A073847.P4198886391911267640

/-! ## A073847.P3013244709015177545

`A085626(n+1)+A085626(n+1)-A070865(n+2)`
-/

namespace A073847.P3013244709015177545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085626 (n + 1) + (A085626 (n + 1) - A070865 (n + 2))

end

end A073847.P3013244709015177545

/-! ## A073847.P16008527874779494546

`A151800(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A073847.P16008527874779494546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A151800 (2 * a (n - 1) - a (n - 2)).toNat

end

end A073847.P16008527874779494546

/-! ## A073847.P8275116961084424664

`A000265(A085626(n+1))`
-/

namespace A073847.P8275116961084424664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A085626 (n + 1)).toNat

end

end A073847.P8275116961084424664

/-! ## A073847.P2429199184723684369

`A038502(A070865(n+2))`
-/

namespace A073847.P2429199184723684369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A070865 (n + 2)).toNat

end

end A073847.P2429199184723684369

/-!
# A073848: Smallest of n consecutive numbers in A.P. with a common difference of n with a sum that is an n-th power.

The programs for A073848, there is no canonical definition to state claims against.
-/

/-! ## A073848.P3179189356592948786

`A000027((n+1)^n-∑[n])`
-/

namespace A073848.P3179189356592948786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((n + 1) ^ n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073848.P3179189356592948786

/-! ## A073848.P3605227299712798245

`(n+1)^A073788(n)-∑[n]`
-/

namespace A073848.P3605227299712798245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A073788 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A073848.P3605227299712798245

/-! ## A073848.P10512980974528115680

`A329326(2^n)^n-∑[n]`
-/

namespace A073848.P10512980974528115680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (2 ^ n) ^ n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A073848.P10512980974528115680

/-!
# A073849: Cumulative sum of initial digits of (n base 3).

The programs for A073849, the canonical program `A073849.P1212602149457412039` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073849 has offset 0).

The definition of A073849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073849.P1212602149457412039

`∑[abs(a(floor(n/3)))]` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073849

/-- `∑[abs(a(floor(n/3)))]` -/
def P1212602149457412039.Spec : Prop :=
  ∀ n, (P1212602149457412039.a n : ℤ) = A073849 n

theorem P1212602149457412039.correct : P1212602149457412039.Spec := by
  intro n
  simp only [A073849]

end A073849

/-! ## A073849.P16431804566489959811

`∑[gcd(2, a(floor(n/3)))]` with `a(0)=0, a(1)=1`
-/

namespace A073849.P16431804566489959811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.gcd 2 (f1 ⌊(n : ℚ) / 3⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073849.P16431804566489959811

namespace A073849

/-- `∑[gcd(2, a(floor(n/3)))]` -/
def P16431804566489959811.Spec : Prop :=
  ∀ n, (P16431804566489959811.a n : ℤ) = A073849 n

end A073849

/-! ## A073849.P2735740419494324713

`∑[a(floor(n/3))!]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A073849.P2735740419494324713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  Nat.factorial (f1 ⌊(n : ℚ) / 3⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073849.P2735740419494324713

namespace A073849

/-- `∑[a(floor(n/3))!]` -/
def P2735740419494324713.Spec : Prop :=
  ∀ n, (P2735740419494324713.a n : ℤ) = A073849 n

end A073849

/-! ## A073849.P6283089701076402158

`∑[floor(a(floor(n/3)))]` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A073849.P6283089701076402158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073849.P6283089701076402158

namespace A073849

/-- `∑[floor(a(floor(n/3)))]` -/
def P6283089701076402158.Spec : Prop :=
  ∀ n, (P6283089701076402158.a n : ℤ) = A073849 n

theorem P6283089701076402158.correct : P6283089701076402158.Spec := by
  intro n
  simp only [A073849, Nat.add_sub_cancel, A073849.P6283089701076402158.f1, A073849.P6283089701076402158.a, A073849.P1212602149457412039.f1, A073849.P1212602149457412039.a, SequenceMachineLib.memo_apply]

end A073849

/-! ## A073849.P10979360901037424381

`∑[A030102(n)%3]`
-/

namespace A073849.P10979360901037424381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030102 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073849.P10979360901037424381

namespace A073849

/-- `∑[A030102(n)%3]` -/
def P10979360901037424381.Spec : Prop :=
  ∀ n, P10979360901037424381.a n = A073849 n

end A073849

/-! ## A073849.P12559166579974019461

`∑[A305877(n)%5]`
-/

namespace A073849.P12559166579974019461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305877 n) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073849.P12559166579974019461

namespace A073849

/-- `∑[A305877(n)%5]` -/
def P12559166579974019461.Spec : Prop :=
  ∀ n, P12559166579974019461.a n = A073849 n

end A073849

/-! ## A073849.P10014569313150858706

`comp[comp[A117967(n)]+n]`
-/

namespace A073849.P10014569313150858706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A073849.P10014569313150858706

namespace A073849

/-- `comp[comp[A117967(n)]+n]` -/
def P10014569313150858706.Spec : Prop :=
  ∀ n, (P10014569313150858706.a n : ℤ) = A073849 n

end A073849

/-! ## A073849.P6563229578948781804

`comp[comp[A330740(n)]+n]`
-/

namespace A073849.P6563229578948781804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330740 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A073849.P6563229578948781804

namespace A073849

/-- `comp[comp[A330740(n)]+n]` -/
def P6563229578948781804.Spec : Prop :=
  ∀ n, (P6563229578948781804.a n : ℤ) = A073849 n

end A073849

/-! ## A073849.P8213960382149046649

`(A080727(n)+A023443(n))/2`
-/

namespace A073849.P8213960382149046649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080727 n + A023443 n : ℚ) / 2

end

end A073849.P8213960382149046649

namespace A073849

/-- `(A080727(n)+A023443(n))/2` -/
def P8213960382149046649.Spec : Prop :=
  ∀ n, P8213960382149046649.a n = (A073849 n : ℚ)

end A073849

/-! ## A073849.P5746437447542423260

`∑[A122586(n+1)]-A122586(n+1)`
-/

namespace A073849.P5746437447542423260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A122586 (n + 1)

end

end A073849.P5746437447542423260

namespace A073849

/-- `∑[A122586(n+1)]-A122586(n+1)` -/
def P5746437447542423260.Spec : Prop :=
  ∀ n, P5746437447542423260.a n = A073849 n

end A073849

/-!
# A073850: Cumulative sum of initial digits of (n base 4).

The programs for A073850, the canonical program `A073850.P3147538913728934368` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073850 has offset 0).

The definition of A073850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073850.P3147538913728934368

`∑[abs(a(floor(n/4)))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073850

/-- `∑[abs(a(floor(n/4)))]` -/
def P3147538913728934368.Spec : Prop :=
  ∀ n, (P3147538913728934368.a n : ℤ) = A073850 n

theorem P3147538913728934368.correct : P3147538913728934368.Spec := by
  intro n
  simp only [A073850]

end A073850

/-! ## A073850.P7640252033591601492

`∑[∑{e}[6-a(floor(n/2)), #]]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A073850.P7640252033591601492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8] fun n f2 =>
  6 - f2 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073850.P7640252033591601492

namespace A073850

/-- `∑[∑{e}[6-a(floor(n/2)), #]]` -/
def P7640252033591601492.Spec : Prop :=
  ∀ n, (P7640252033591601492.a n : ℤ) = A073850 n

end A073850

/-! ## A073850.P4063354499532695721

`∑[A030103(n)%4]`
-/

namespace A073850.P4063354499532695721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030103 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073850.P4063354499532695721

namespace A073850

/-- `∑[A030103(n)%4]` -/
def P4063354499532695721.Spec : Prop :=
  ∀ n, P4063354499532695721.a n = A073850 n

end A073850

/-! ## A073850.P1800173668132884944

`∑[A048703(n)%4]`
-/

namespace A073850.P1800173668132884944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048703 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073850.P1800173668132884944

namespace A073850

/-- `∑[A048703(n)%4]` -/
def P1800173668132884944.Spec : Prop :=
  ∀ n, P1800173668132884944.a n = A073850 n

end A073850

/-! ## A073850.P193844092455586486

`∑[A048704(n)%4]`
-/

namespace A073850.P193844092455586486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048704 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073850.P193844092455586486

namespace A073850

/-- `∑[A048704(n)%4]` -/
def P193844092455586486.Spec : Prop :=
  ∀ n, P193844092455586486.a n = A073850 n

end A073850

/-! ## A073850.P2724487934180059315

`∑[A255689(n)%4]`
-/

namespace A073850.P2724487934180059315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255689 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073850.P2724487934180059315

namespace A073850

/-- `∑[A255689(n)%4]` -/
def P2724487934180059315.Spec : Prop :=
  ∀ n, P2724487934180059315.a n = A073850 n

end A073850

/-! ## A073850.P2763959232776245457

`∑[A010873(A030103(n))]`
-/

namespace A073850.P2763959232776245457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A030103 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073850.P2763959232776245457

namespace A073850

/-- `∑[A010873(A030103(n))]` -/
def P2763959232776245457.Spec : Prop :=
  ∀ n, P2763959232776245457.a n = A073850 n

end A073850

/-! ## A073850.P10643172750907090426

`∑[A055948(4*n)%4]`
-/

namespace A073850.P10643172750907090426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055948 (4 * n)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073850.P10643172750907090426

namespace A073850

/-- `∑[A055948(4*n)%4]` -/
def P10643172750907090426.Spec : Prop :=
  ∀ n, P10643172750907090426.a n = A073850 n

end A073850

/-! ## A073850.P13214467198392481953

`∑[A000030(A007090(n))]`
-/

namespace A073850.P13214467198392481953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A007090 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073850.P13214467198392481953

namespace A073850

/-- `∑[A000030(A007090(n))]` -/
def P13214467198392481953.Spec : Prop :=
  ∀ n, P13214467198392481953.a n = A073850 n

end A073850

/-!
# A073851: Cumulative sum of initial digits of (n base 5).

The programs for A073851, the canonical program `A073851.P11742261591792564246` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073851 has offset 0).

The definition of A073851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073851.P1359517865429071724

`∑[A030104(n)%5]`
-/

namespace A073851.P1359517865429071724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030104 n) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073851.P1359517865429071724

namespace A073851

/-- `∑[A030104(n)%5]` -/
def P1359517865429071724.Spec : Prop :=
  ∀ n, P1359517865429071724.a n = A073851 n

end A073851

/-! ## A073851.P11485199342938218078

`∑[A255690(n)%5]`
-/

namespace A073851.P11485199342938218078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255690 n) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073851.P11485199342938218078

namespace A073851

/-- `∑[A255690(n)%5]` -/
def P11485199342938218078.Spec : Prop :=
  ∀ n, P11485199342938218078.a n = A073851 n

end A073851

/-! ## A073851.P8240483460286656482

`∑[(n-A055951(n))%5]`
-/

namespace A073851.P8240483460286656482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A055951 n) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073851.P8240483460286656482

namespace A073851

/-- `∑[(n-A055951(n))%5]` -/
def P8240483460286656482.Spec : Prop :=
  ∀ n, P8240483460286656482.a n = A073851 n

end A073851

/-! ## A073851.P2518219980276919011

`∑[(A055950(n)-n)%5]`
-/

namespace A073851.P2518219980276919011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055950 n - (n : ℤ)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073851.P2518219980276919011

namespace A073851

/-- `∑[(A055950(n)-n)%5]` -/
def P2518219980276919011.Spec : Prop :=
  ∀ n, P2518219980276919011.a n = A073851 n

end A073851

/-! ## A073851.P11742261591792564246

`A339255(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A073851

/-- `A339255(n)+a(n-1)` -/
def P11742261591792564246.Spec : Prop :=
  ∀ n, P11742261591792564246.a n = A073851 n

theorem P11742261591792564246.correct : P11742261591792564246.Spec := by
  intro n
  simp only [A073851]

end A073851

/-! ## A073851.P3810041426376491067

`∑[(3*A030149(n+1))%5]`
-/

namespace A073851.P3810041426376491067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A030149 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073851.P3810041426376491067

namespace A073851

/-- `∑[(3*A030149(n+1))%5]` -/
def P3810041426376491067.Spec : Prop :=
  ∀ n, P3810041426376491067.a n = A073851 n

end A073851

/-! ## A073851.P4664399716030077475

`∑[A010874(A030104(n))]`
-/

namespace A073851.P4664399716030077475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A030104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073851.P4664399716030077475

namespace A073851

/-- `∑[A010874(A030104(n))]` -/
def P4664399716030077475.Spec : Prop :=
  ∀ n, P4664399716030077475.a n = A073851 n

end A073851

/-! ## A073851.P13800073727431009746

`∑[A055950(5*n)%5]`
-/

namespace A073851.P13800073727431009746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055950 (5 * n)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073851.P13800073727431009746

namespace A073851

/-- `∑[A055950(5*n)%5]` -/
def P13800073727431009746.Spec : Prop :=
  ∀ n, P13800073727431009746.a n = A073851 n

end A073851

/-! ## A073851.P5715103887134500307

`∑[A000030(A007091(n))]`
-/

namespace A073851.P5715103887134500307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A007091 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073851.P5715103887134500307

namespace A073851

/-- `∑[A000030(A007091(n))]` -/
def P5715103887134500307.Spec : Prop :=
  ∀ n, P5715103887134500307.a n = A073851 n

end A073851

/-! ## A073851.P6055732686799118711

`∑[(A171572(n)-1)%4+1]`
-/

namespace A073851.P6055732686799118711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171572 n - 1) 4 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073851.P6055732686799118711

namespace A073851

/-- `∑[(A171572(n)-1)%4+1]` -/
def P6055732686799118711.Spec : Prop :=
  ∀ n, P6055732686799118711.a n = A073851 n

end A073851

/-!
# A073852: a(1) = 1, then smallest square not included earlier such that every partial sum is a prime.

The programs for A073852, there is no canonical definition to state claims against.
-/

/-! ## A073852.P15729503019948645705

`A256270(n+1)²`
-/

namespace A073852.P15729503019948645705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256270 (n + 1) ^ 2

end

end A073852.P15729503019948645705

/-! ## A073852.P12407975713744991062

`A002620(2*A256270(n+1))`
-/

namespace A073852.P12407975713744991062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A256270 (n + 1)).toNat

end

end A073852.P12407975713744991062

/-! ## A073852.P459578671654384954

`A008794(2*A256270(n+1))`
-/

namespace A073852.P459578671654384954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * A256270 (n + 1)).toNat

end

end A073852.P459578671654384954

/-! ## A073852.P7937774238945609208

`A256270(A000027(n+1))^2`
-/

namespace A073852.P7937774238945609208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256270 (A000027 (n + 1)).toNat ^ 2

end

end A073852.P7937774238945609208

/-! ## A073852.P6747149620964642433

`A005563(A256270(n+1)-1)+1`
-/

namespace A073852.P6747149620964642433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A256270 (n + 1) - 1).toNat + 1

end

end A073852.P6747149620964642433

/-! ## A073852.P17057906491079300286

`A256270(A025480(2*(n+1)))^2`
-/

namespace A073852.P17057906491079300286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256270 (A025480 (2 * (n + 1))).toNat ^ 2

end

end A073852.P17057906491079300286

/-! ## A073852.P8761642336561511913

`A256270(n+1)^A020639(2*(n+1))`
-/

namespace A073852.P8761642336561511913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256270 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A073852.P8761642336561511913

/-! ## A073852.P16982320239353971566

`A256270(n+1)^A107286(2*(n+2))`
-/

namespace A073852.P16982320239353971566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256270 (n + 1) : ℚ) ^ (A107286 (2 * (n + 2)) : ℤ)

end

end A073852.P16982320239353971566

/-! ## A073852.P11173634511329841591

`A256270(n+1)^A239141(3*n+1)`
-/

namespace A073852.P11173634511329841591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256270 (n + 1) : ℚ) ^ (A239141 (3 * n + 1) : ℤ)

end

end A073852.P11173634511329841591

/-! ## A073852.P18269128487534034848

`A256270(n+1)^(2%A000032(n+3))`
-/

namespace A073852.P18269128487534034848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256270 (n + 1) : ℚ) ^ (Int.tmod 2 (A000032 (n + 3)) : ℤ)

end

end A073852.P18269128487534034848

/-!
# A073853: Indices of zeros in A079777.

The programs for A073853, there is no canonical definition to state claims against.
-/

/-! ## A073853.P5135909131449702527

`eq[0, A079777(n)]`
-/

namespace A073853.P5135909131449702527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073853.P5135909131449702527

/-! ## A073853.P5005604910002483556

`eq[n, A168360(n)]`
-/

namespace A073853.P5005604910002483556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168360 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073853.P5005604910002483556

/-! ## A073853.P12338660615223732625

`lt[A079777(n), acot(A000041(n))]`
-/

namespace A073853.P12338660615223732625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079777 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000041 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A073853.P12338660615223732625

/-! ## A073853.P3663189823604750662

`lt[A079777(n), acot(A000005(n+1))]`
-/

namespace A073853.P3663189823604750662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079777 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000005 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A073853.P3663189823604750662

/-! ## A073853.P11212757569171319795

`lt[A079777(n), acot(A005117(n+1))]`
-/

namespace A073853.P11212757569171319795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079777 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A005117 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A073853.P11212757569171319795

/-!
# A073854: a(1) = 1, a(n) = prime equal to n-th partial sum of A073852.

The programs for A073854, there is no canonical definition to state claims against.
-/

/-! ## A073854.P11639427266765455298

`∑[A073852(n+1)]`
-/

namespace A073854.P11639427266765455298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073854.P11639427266765455298

/-! ## A073854.P9205136596317661755

`A073852(Δ[n²]-n)+a(n-1)` with `a(0)=1`
-/

namespace A073854.P9205136596317661755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073852 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + a (n - 1)

end

end A073854.P9205136596317661755

/-! ## A073854.P2892552703500921852

`∑[A256270(n+1)²]`
-/

namespace A073854.P2892552703500921852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256270 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073854.P2892552703500921852

/-! ## A073854.P17563626232810379148

`∑[A008794(2*A256270(n+1))]`
-/

namespace A073854.P17563626232810379148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * A256270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073854.P17563626232810379148

/-! ## A073854.P3490658073219762681

`∑[A005563(A256270(n+1)-1)+1]`
-/

namespace A073854.P3490658073219762681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A256270 (n + 1) - 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073854.P3490658073219762681

/-! ## A073854.P11306751232242368202

`∑[A256270(n+1)^A020639(2*(n+1))]`
-/

namespace A073854.P11306751232242368202
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256270 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073854.P11306751232242368202

/-!
# A073855: Number of steps to reach 0 starting with n and applying the process x ->bigomega(x), where bigomega = A001222.

The programs for A073855, the canonical program `A073855.P5863845650872885556` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073855 has offset 0).

The definition of A073855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073855.P5863845650872885556

`a(∑{e}[n, #])+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073855

/-- `a(∑{e}[n, #])+1` -/
def P5863845650872885556.Spec : Prop :=
  ∀ n, (P5863845650872885556.a n : ℤ) = A073855 n

theorem P5863845650872885556.correct : P5863845650872885556.Spec := by
  intro n
  simp only [A073855]

end A073855

/-! ## A073855.P17292266352099432471

`∑{e}[2*a(∑{e}[n, #]), #]` with `a(0)=1`
-/

namespace A073855.P17292266352099432471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A073855.P17292266352099432471

namespace A073855

/-- `∑{e}[2*a(∑{e}[n, #]), #]` -/
def P17292266352099432471.Spec : Prop :=
  ∀ n, (P17292266352099432471.a n : ℤ) = A073855 n

end A073855

/-! ## A073855.P13064813649476883455

`∑{e}[∑{e}[a(∑{e}[n, #])², #], #]` with `a(0)=2`
-/

namespace A073855.P13064813649476883455
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A073855.P13064813649476883455

namespace A073855

/-- `∑{e}[∑{e}[a(∑{e}[n, #])², #], #]` -/
def P13064813649476883455.Spec : Prop :=
  ∀ n, (P13064813649476883455.a n : ℤ) = A073855 n

end A073855

/-! ## A073855.P16324195290629415839

`a(A001222(n))+1` with `a(0)=0`
-/

namespace A073855.P16324195290629415839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A001222 n).toNat + 1

end

end A073855.P16324195290629415839

namespace A073855

/-- `a(A001222(n))+1` -/
def P16324195290629415839.Spec : Prop :=
  ∀ n, (P16324195290629415839.a n : ℤ) = A073855 n

end A073855

/-! ## A073855.P11813961753543845527

`a(A073093(n)-1)+1` with `a(0)=0`
-/

namespace A073855.P11813961753543845527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A073093 n - 1).toNat + 1

end

end A073855.P11813961753543845527

namespace A073855

/-- `a(A073093(n)-1)+1` -/
def P11813961753543845527.Spec : Prop :=
  ∀ n, (P11813961753543845527.a n : ℤ) = A073855 n

end A073855

/-! ## A073855.P11726254018040374846

`A033307(a(A001222(n)))` with `a(0)=0`
-/

namespace A073855.P11726254018040374846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033307 (a (A001222 n).toNat).toNat

end

end A073855.P11726254018040374846

namespace A073855

/-- `A033307(a(A001222(n)))` -/
def P11726254018040374846.Spec : Prop :=
  ∀ n, P11726254018040374846.a n = A073855 n

end A073855

/-! ## A073855.P3025061126075618098

`A054168(a(A001222(n)))` with `a(0)=0`
-/

namespace A073855.P3025061126075618098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A054168 (a (A001222 n).toNat).toNat

end

end A073855.P3025061126075618098

namespace A073855

/-- `A054168(a(A001222(n)))` -/
def P3025061126075618098.Spec : Prop :=
  ∀ n, P3025061126075618098.a n = A073855 n

end A073855

/-! ## A073855.P7634810546234808590

`A000005(2^a(A001222(n)))` with `a(0)=0`
-/

namespace A073855.P7634810546234808590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (a (A001222 n).toNat : ℤ))).toNat

end

end A073855.P7634810546234808590

namespace A073855

/-- `A000005(2^a(A001222(n)))` -/
def P7634810546234808590.Spec : Prop :=
  ∀ n, P7634810546234808590.a n = A073855 n

end A073855

/-! ## A073855.P5499318241071093284

`A000005(2*a(A001222(n)))` with `a(0)=0, a(1)=1`
-/

namespace A073855.P5499318241071093284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000005 (2 * a (A001222 n).toNat).toNat

end

end A073855.P5499318241071093284

namespace A073855

/-- `A000005(2*a(A001222(n)))` -/
def P5499318241071093284.Spec : Prop :=
  ∀ n, P5499318241071093284.a n = A073855 n

end A073855

/-! ## A073855.P7564176151757503310

`∑{e}[a(A001222(n))², A001222(#)]` with `a(0)=2`
-/

namespace A073855.P7564176151757503310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (A001222 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 (Nat.factorization (f1 n) p)

end

end A073855.P7564176151757503310

namespace A073855

/-- `∑{e}[a(A001222(n))², A001222(#)]` -/
def P7564176151757503310.Spec : Prop :=
  ∀ n, P7564176151757503310.a n = A073855 n

end A073855

/-!
# A073856: a(1) = 1, then the smallest n-th power not included earlier such that each partial sum is a prime.

The programs for A073856, there is no canonical definition to state claims against.
-/

/-! ## A073856.P2694950118276370056

`A001223(A375338(n+1)+A051252(n+1))^(n+1)`
-/

namespace A073856.P2694950118276370056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A375338 (n + 1) + A051252 (n + 1)).toNat ^ (n + 1)

end

end A073856.P2694950118276370056

/-! ## A073856.P9604681326432267206

`A306518(2^n)^(n+1)`
-/

namespace A073856.P9604681326432267206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306518 (2 ^ n) ^ (n + 1)

end

end A073856.P9604681326432267206

/-! ## A073856.P623484360771784721

`A297770(∏[n+1])^(n+1)`
-/

namespace A073856.P623484360771784721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (∏ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A073856.P623484360771784721

/-!
# A073857: a(1) = 1, a(n) = prime obtained as a partial sum of A073856.

The programs for A073857, there is no canonical definition to state claims against.
-/

/-! ## A073857.P15260542885069465489

`∑[A073856(n+1)]`
-/

namespace A073857.P15260542885069465489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073857.P15260542885069465489

/-! ## A073857.P4367790231912189252

`∑[record[A073856(A136480(n))]]`
-/

namespace A073857.P4367790231912189252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073856 (A136480 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073857.P4367790231912189252

/-! ## A073857.P3999175067674627405

`∑[A306518(2^n)^(n+1)]`
-/

namespace A073857.P3999175067674627405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306518 (2 ^ n) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073857.P3999175067674627405

/-!
# A073858: Numbers k such that sigma(phi(k)) divides phi(sigma(k)).

The programs for A073858, there is no canonical definition to state claims against.
-/

/-! ## A073858.P4211449705329649519

`∪[A033632(n+1), A229238(n+1)]%A229238(n+1)`
-/

namespace A073858.P4211449705329649519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229238 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A229238 (n + 1))

end

end A073858.P4211449705329649519

/-! ## A073858.P14632182023025220107

`A000027(∪[A033632(n+1), A229238(n+1)])`
-/

namespace A073858.P14632182023025220107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229238 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A073858.P14632182023025220107

/-! ## A073858.P11628393914226130022

`eq[1, A370689(n+1)]+1`
-/

namespace A073858.P11628393914226130022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370689 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073858.P11628393914226130022

/-!
# A073861: Smaller of pair of successive n-digit primes with maximal difference.

The programs for A073861, there is no canonical definition to state claims against.
-/

/-! ## A073861.P3884128295078066340

`A000230(A213949(n+1))`
-/

namespace A073861.P3884128295078066340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A213949 (n + 1)).toNat

end

end A073861.P3884128295078066340

/-! ## A073861.P8504054676076084878

`A000230(A038460(n+1)/2)`
-/

namespace A073861.P8504054676076084878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (SequenceMachineLib.roundAway ((A038460 (n + 1) : ℚ) / 2)).toNat

end

end A073861.P8504054676076084878

/-! ## A073861.P3318354608379578043

`A053302(n+1)-4*floor(acot(n))`
-/

namespace A073861.P3318354608379578043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053302 (n + 1) - 4 * ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A073861.P3318354608379578043

/-! ## A073861.P2902377331561596162

`A053302(n+1)-A000038(n)²`
-/

namespace A073861.P2902377331561596162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053302 (n + 1) - A000038 n ^ 2

end

end A073861.P2902377331561596162

/-! ## A073861.P10097868637260836353

`floor(A053302(n+1)/A054977(n))`
-/

namespace A073861.P10097868637260836353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053302 (n + 1) : ℚ) / (A054977 n : ℚ)⌋

end

end A073861.P10097868637260836353

/-!
# A073862: Difference between the largest and the smallest n-digit prime.

The programs for A073862, there is no canonical definition to state claims against.
-/

/-! ## A073862.P499738449627114144

`A003618(n+1)-A003617(n+1)`
-/

namespace A073862.P499738449627114144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1) - A003617 (n + 1)

end

end A073862.P499738449627114144

/-! ## A073862.P8227724692498902097

`record[Δ[A101592(n+1)]]`
-/

namespace A073862.P8227724692498902097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073862.P8227724692498902097

/-! ## A073862.P2081396161413923361

`A003618(n+1)-A101592(Δ[n²])`
-/

namespace A073862.P2081396161413923361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1) - A101592 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A073862.P2081396161413923361

/-! ## A073862.P8667589516864713091

`A003618(n+1)-A139052(Δ[n²])`
-/

namespace A073862.P8667589516864713091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1) - A139052 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A073862.P8667589516864713091

/-! ## A073862.P7959777004662364686

`A101592(2*(n+1))-A003617(n+1)`
-/

namespace A073862.P7959777004662364686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (2 * (n + 1)) - A003617 (n + 1)

end

end A073862.P7959777004662364686

/-! ## A073862.P9733505464362791449

`A132153(2*(n+1))-A003617(n+1)`
-/

namespace A073862.P9733505464362791449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132153 (2 * (n + 1)) - A003617 (n + 1)

end

end A073862.P9733505464362791449

/-! ## A073862.P10191558638693241718

`A101592(2*(n+1))-A101592(2*n+1)`
-/

namespace A073862.P10191558638693241718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (2 * (n + 1)) - A101592 (2 * n + 1)

end

end A073862.P10191558638693241718

/-! ## A073862.P3069912164634090778

`A003618(n+1)-(A272006(n+1)+A062397(n))`
-/

namespace A073862.P3069912164634090778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1) - (A272006 (n + 1) + A062397 n)

end

end A073862.P3069912164634090778

/-! ## A073862.P5827511290060332463

`A003617(n+2)-(A038804(n+1)+A003617(n+1))`
-/

namespace A073862.P5827511290060332463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 2) - (A038804 (n + 1) + A003617 (n + 1))

end

end A073862.P5827511290060332463

/-! ## A073862.P5992548200330954861

`A104206(n)%A000533(n+1)`
-/

namespace A073862.P5992548200330954861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104206 n) (A000533 (n + 1))

end

end A073862.P5992548200330954861

/-!
# A073863: a(1) = 4; a(n) = average of the largest and the smallest n-digit primes.

The programs for A073863, there is no canonical definition to state claims against.
-/

/-! ## A073863.P15562715460958850530

`floor((A003618(n+1)+A003617(n+1))/2)`
-/

namespace A073863.P15562715460958850530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003618 (n + 1) + A003617 (n + 1) : ℚ) / 2⌋

end

end A073863.P15562715460958850530

/-! ## A073863.P16545071266523741503

`floor((A101592(2*(n+1))+A003617(n+1))/2)`
-/

namespace A073863.P16545071266523741503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101592 (2 * (n + 1)) + A003617 (n + 1) : ℚ) / 2⌋

end

end A073863.P16545071266523741503

/-! ## A073863.P3525379357149713511

`floor((A101592(2*n+1)+A003618(n+1))/2)`
-/

namespace A073863.P3525379357149713511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101592 (2 * n + 1) + A003618 (n + 1) : ℚ) / 2⌋

end

end A073863.P3525379357149713511

/-! ## A073863.P7374122586094874679

`floor((A132153(2*(n+1))+A003617(n+1))/2)`
-/

namespace A073863.P7374122586094874679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132153 (2 * (n + 1)) + A003617 (n + 1) : ℚ) / 2⌋

end

end A073863.P7374122586094874679

/-! ## A073863.P11169257704616971462

`floor((A139052(2*n+1)+A003618(n+1))/2)`
-/

namespace A073863.P11169257704616971462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139052 (2 * n + 1) + A003618 (n + 1) : ℚ) / 2⌋

end

end A073863.P11169257704616971462

/-!
# A073866: a(n) is the smallest composite number with the sum of digits = the n-th composite number.

The programs for A073866, there is no canonical definition to state claims against.
-/

/-! ## A073866.P1813556245037246691

`A067524(Δ[A053767(n)])`
-/

namespace A073866.P1813556245037246691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067524 (f1 (n + 1) - f1 n).toNat

end

end A073866.P1813556245037246691

/-! ## A073866.P15303516590130010817

`A067524(comp[A351078(n)])`
-/

namespace A073866.P15303516590130010817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067524 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A073866.P15303516590130010817

/-! ## A073866.P5599564499147123890

`A067524(A002808(n+1))`
-/

namespace A073866.P5599564499147123890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067524 (A002808 (n + 1)).toNat

end

end A073866.P5599564499147123890

/-! ## A073866.P13099612866576625801

`A067524(A018252(n+2))`
-/

namespace A073866.P13099612866576625801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067524 (A018252 (n + 2)).toNat

end

end A073866.P13099612866576625801

/-! ## A073866.P16632120003291345597

`A067524(A067563(n+1)/A000040(n+1))`
-/

namespace A073866.P16632120003291345597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067524 (SequenceMachineLib.roundAway ((A067563 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))).toNat

end

end A073866.P16632120003291345597

/-!
# A073867: Smallest prime whose digital sum is equal to the n-th composite number, or 0 if no such prime exists.

The programs for A073867, there is no canonical definition to state claims against.
-/

/-! ## A073867.P7220591018654167619

`A067180(Δ[A053767(n)])`
-/

namespace A073867.P7220591018654167619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (f1 (n + 1) - f1 n).toNat

end

end A073867.P7220591018654167619

/-! ## A073867.P6133212937080206406

`A067180(comp[A351078(n)])`
-/

namespace A073867.P6133212937080206406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A073867.P6133212937080206406

/-! ## A073867.P12403568444904520398

`A067180(A002808(n+1))`
-/

namespace A073867.P12403568444904520398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (A002808 (n + 1)).toNat

end

end A073867.P12403568444904520398

/-! ## A073867.P7117297177219360469

`A067180(A018252(n+2))`
-/

namespace A073867.P7117297177219360469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (A018252 (n + 2)).toNat

end

end A073867.P7117297177219360469

/-! ## A073867.P15967408241969084296

`A067180(lt[1, A003415(n)])`
-/

namespace A073867.P15967408241969084296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A073867.P15967408241969084296

/-!
# A073868: a(n) is the smallest composite number with the sum of digits = the n-th prime number.

The programs for A073868, there is no canonical definition to state claims against.
-/

/-! ## A073868.P2665328929186760667

`A067524(p?[comp[n²]])`
-/

namespace A073868.P2665328929186760667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067524 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A073868.P2665328929186760667

/-! ## A073868.P5664180391095757238

`A067524(Δ[A007504(n)])`
-/

namespace A073868.P5664180391095757238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067524 (f1 (n + 1) - f1 n).toNat

end

end A073868.P5664180391095757238

/-! ## A073868.P2863521391211898688

`A067524(A000040(n+1))`
-/

namespace A073868.P2863521391211898688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067524 (A000040 (n + 1)).toNat

end

end A073868.P2863521391211898688

/-! ## A073868.P2370338170511312833

`A067524(A008578(n+2))`
-/

namespace A073868.P2370338170511312833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067524 (A008578 (n + 2)).toNat

end

end A073868.P2370338170511312833

/-! ## A073868.P5749570755312721816

`A067524(A182986(n+2))`
-/

namespace A073868.P5749570755312721816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067524 (A182986 (n + 2)).toNat

end

end A073868.P5749570755312721816

/-!
# A073870: Smallest composite number not included earlier that is a multiple of n.

The programs for A073870, there is no canonical definition to state claims against.
-/

/-! ## A073870.P18156344295476472078

`(n+1)*A073871(n+1)`
-/

namespace A073870.P18156344295476472078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A073871 (n + 1)

end

end A073870.P18156344295476472078

/-! ## A073870.P880102419824982073

`A073871(A008619(2*n))*A110654(Δ[n²])`
-/

namespace A073870.P880102419824982073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073871 (A008619 (2 * n)).toNat * A110654 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A073870.P880102419824982073

/-! ## A073870.P8553426747755714914

`A073871(A028242(2*n))*A110654(Δ[n²])`
-/

namespace A073870.P8553426747755714914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073871 (A028242 (2 * n)).toNat * A110654 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A073870.P8553426747755714914

/-! ## A073870.P17997205902711533844

`A056239(A000040(n+1)^A073871(n+1))`
-/

namespace A073870.P17997205902711533844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) ^ (A073871 (n + 1) : ℤ))).toNat

end

end A073870.P17997205902711533844

/-!
# A073871: A073870 divided by n.

The programs for A073871, there is no canonical definition to state claims against.
-/

/-! ## A073871.P514349201705706835

`A073870(n+1)/(n+1)`
-/

namespace A073871.P514349201705706835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073870 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A073871.P514349201705706835

/-! ## A073871.P48747382646741691

`A073835((n+1)^-1*A073870(n+1))`
-/

namespace A073871.P48747382646741691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (-1 : ℤ) * (A073870 (n + 1) : ℚ))).toNat

end

end A073871.P48747382646741691

/-! ## A073871.P17870594197096423607

`A014682(2*(n+1))^-1*A073870(n+1)`
-/

namespace A073871.P17870594197096423607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014682 (2 * (n + 1)) : ℚ) ^ (-1 : ℤ) * (A073870 (n + 1) : ℚ)

end

end A073871.P17870594197096423607

/-! ## A073871.P15100591230328150950

`A244158((n+1)^(floor(acot(n))-1)*A073870(n+1))`
-/

namespace A073871.P15100591230328150950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 : ℤ) * (A073870 (n + 1) : ℚ))).toNat

end

end A073871.P15100591230328150950

/-! ## A073871.P10603873552084950878

`abs(A001489(n+1))^-1*A073870(n+1)`
-/

namespace A073871.P10603873552084950878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A001489 (n + 1)| : ℚ) ^ (-1 : ℤ) * (A073870 (n + 1) : ℚ)

end

end A073871.P10603873552084950878

/-! ## A073871.P4864951756355507516

`round(A285763(2*n+1)^-1*A073870(n+1))`
-/

namespace A073871.P4864951756355507516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A285763 (2 * n + 1) : ℚ) ^ (-1 : ℤ) * (A073870 (n + 1) : ℚ))

end

end A073871.P4864951756355507516

/-! ## A073871.P15937492388637941388

`(n+1)^A008683(A014442(n+1))*A073870(n+1)`
-/

namespace A073871.P15937492388637941388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A014442 (n + 1)).toNat : ℤ) * (A073870 (n + 1) : ℚ)

end

end A073871.P15937492388637941388

/-! ## A073871.P7162410498024310759

`(n+1)^A008683(A054808(n+1))*A073870(n+1)`
-/

namespace A073871.P7162410498024310759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A054808 (n + 1)).toNat : ℤ) * (A073870 (n + 1) : ℚ)

end

end A073871.P7162410498024310759

/-! ## A073871.P11615479164155875469

`(n+1)^A008683(A098413(n+1))*A073870(n+1)`
-/

namespace A073871.P11615479164155875469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A098413 (n + 1)).toNat : ℤ) * (A073870 (n + 1) : ℚ)

end

end A073871.P11615479164155875469

/-!
# A073872: Smallest positive triangular number not included earlier that is a multiple of n (a permutation of the triangular numbers).

The programs for A073872, there is no canonical definition to state claims against.
-/

/-! ## A073872.P1421783915266380333

`C(A113658(n+1)+1, 2)`
-/

namespace A073872.P1421783915266380333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A113658 (n + 1) + 1).toNat 2

end

end A073872.P1421783915266380333

/-! ## A073872.P8723250177081842973

`(n+1)*A073874(n+1)`
-/

namespace A073872.P8723250177081842973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A073874 (n + 1)

end

end A073872.P8723250177081842973

/-! ## A073872.P319848771256486251

`A000217(A113658(n+1))`
-/

namespace A073872.P319848771256486251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A113658 (n + 1)).toNat

end

end A073872.P319848771256486251

/-! ## A073872.P654122631758846288

`A161680(A113658(n+1)+1)`
-/

namespace A073872.P654122631758846288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A113658 (n + 1) + 1).toNat

end

end A073872.P654122631758846288

/-! ## A073872.P14194517056185963636

`A179865(A113658(n+1)+1)`
-/

namespace A073872.P14194517056185963636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A113658 (n + 1) + 1).toNat

end

end A073872.P14194517056185963636

/-! ## A073872.P9106108643245600082

`A002378(A113658(n+1))/A020639(2*(n+1))`
-/

namespace A073872.P9106108643245600082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A113658 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A073872.P9106108643245600082

/-! ## A073872.P2484461465917261742

`A000124(A113658(n+1))-A006530(gcd(n, n+1))`
-/

namespace A073872.P2484461465917261742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A113658 (n + 1)).toNat - A006530 (Nat.gcd n (n + 1))

end

end A073872.P2484461465917261742

/-! ## A073872.P10590442433902765137

`A124093(2*A113658(n+1))`
-/

namespace A073872.P10590442433902765137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (2 * A113658 (n + 1)).toNat

end

end A073872.P10590442433902765137

/-! ## A073872.P6777138976525138475

`A000124(A113658(n+1))-A007318(∑[n])`
-/

namespace A073872.P6777138976525138475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A113658 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073872.P6777138976525138475

/-!
# A073873: Terms of A073872 that do not change their position in the rearrangement; i.e., values of A073872(n) which equal n(n+1)/2.

The programs for A073873, there is no canonical definition to state claims against.
-/

/-! ## A073873.P11545745917708738377

`C(A113659(n+1)+1, 2)`
-/

namespace A073873.P11545745917708738377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A113659 (n + 1) + 1).toNat 2

end

end A073873.P11545745917708738377

/-! ## A073873.P15631751920434899806

`A000217(A113659(n+1))`
-/

namespace A073873.P15631751920434899806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A113659 (n + 1)).toNat

end

end A073873.P15631751920434899806

/-! ## A073873.P12261208151538189461

`A161680(A113659(n+1)+1)`
-/

namespace A073873.P12261208151538189461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A113659 (n + 1) + 1).toNat

end

end A073873.P12261208151538189461

/-! ## A073873.P10307734743136661000

`A179865(A113659(n+1)+1)`
-/

namespace A073873.P10307734743136661000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A113659 (n + 1) + 1).toNat

end

end A073873.P10307734743136661000

/-! ## A073873.P3077915016845743908

`A045896(A113659(n+1)-1)`
-/

namespace A073873.P3077915016845743908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045896 (A113659 (n + 1) - 1).toNat

end

end A073873.P3077915016845743908

/-!
# A073874: A073872(n)/n.

The programs for A073874, there is no canonical definition to state claims against.
-/

/-! ## A073874.P15898034128159703738

`A073872(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073874.P15898034128159703738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073872 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A073874.P15898034128159703738

/-! ## A073874.P5664584490729589559

`ceil(A113658(n+1)²/Δ[n²])`
-/

namespace A073874.P5664584490729589559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A113658 (n + 1) ^ 2 : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)⌉

end

end A073874.P5664584490729589559

/-! ## A073874.P599381073433028804

`A000217(A113658(n+1))/(n+1)`
-/

namespace A073874.P599381073433028804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A113658 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A073874.P599381073433028804

/-! ## A073874.P17156999655805633771

`round(A113658(A000027(n+1))²/Δ[n²])`
-/

namespace A073874.P17156999655805633771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A113658 (A000027 (n + 1)).toNat ^ 2 : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ))

end

end A073874.P17156999655805633771

/-! ## A073874.P3968433214622943827

`A161680(A113658(n+1)+1)/(n+1)`
-/

namespace A073874.P3968433214622943827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161680 (A113658 (n + 1) + 1).toNat : ℚ) / (n + 1 : ℚ)

end

end A073874.P3968433214622943827

/-! ## A073874.P7137523199948427425

`A179865(A113658(n+1)+1)/(n+1)`
-/

namespace A073874.P7137523199948427425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179865 (A113658 (n + 1) + 1).toNat : ℚ) / (n + 1 : ℚ)

end

end A073874.P7137523199948427425

/-! ## A073874.P4761310120357644559

`A028895(A113658(n+1))%A016897(n)`
-/

namespace A073874.P4761310120357644559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028895 (A113658 (n + 1)).toNat) (A016897 n)

end

end A073874.P4761310120357644559

/-! ## A073874.P14883507467239066628

`A046092(A113658(n+1))%A004767(n)`
-/

namespace A073874.P14883507467239066628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046092 (A113658 (n + 1)).toNat) (A004767 n)

end

end A073874.P14883507467239066628

/-! ## A073874.P6377554358268537311

`(A000124(A113658(n+1))-A006530(gcd(n, n+1)))/(n+1)`
-/

namespace A073874.P6377554358268537311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 (A113658 (n + 1)).toNat - A006530 (Nat.gcd n (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A073874.P6377554358268537311

/-! ## A073874.P11562085425475707235

`C(A113658(n+1)+1, 2)/A002264(3*(n+1))`
-/

namespace A073874.P11562085425475707235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A113658 (n + 1) + 1).toNat 2 : ℚ) / (A002264 (3 * (n + 1)) : ℚ)

end

end A073874.P11562085425475707235

/-! ## A073874.P17233935133826608844

`A124093(2*A113658(n+1))/(n+1)`
-/

namespace A073874.P17233935133826608844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124093 (2 * A113658 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A073874.P17233935133826608844

/-!
# A073875: Smallest nonzero Fibonacci number divisible by n not included earlier.

The programs for A073875, there is no canonical definition to state claims against.
-/

/-! ## A073875.P1733426039818853693

`(n+1)*A073876(n+1)`
-/

namespace A073875.P1733426039818853693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A073876 (n + 1)

end

end A073875.P1733426039818853693

/-! ## A073875.P15891917363881109395

`A073876(A328399(2*n))*A328399(2*n)`
-/

namespace A073875.P15891917363881109395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073876 (A328399 (2 * n)).toNat * A328399 (2 * n)

end

end A073875.P15891917363881109395

/-! ## A073875.P5372804488299609705

`A073876(A077168(n))*A077168(n)`
-/

namespace A073875.P5372804488299609705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073876 (A077168 n).toNat * A077168 n

end

end A073875.P5372804488299609705

/-! ## A073875.P6095613072572855605

`lcm(A047930(n+1), A237517(A073876(n+1)))`
-/

namespace A073875.P6095613072572855605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047930 (n + 1)) (A237517 (A073876 (n + 1)).toNat)

end

end A073875.P6095613072572855605

/-! ## A073875.P17825255678130531274

`A047930(∑[A241601(n)])`
-/

namespace A073875.P17825255678130531274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047930 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073875.P17825255678130531274

/-!
# A073876: A073875 divided by n.

The programs for A073876, there is no canonical definition to state claims against.
-/

/-! ## A073876.P1399321655248110079

`A073875(n+1)/(n+1)`
-/

namespace A073876.P1399321655248110079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073875 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A073876.P1399321655248110079

/-!
# A073877: Smallest Bell number divisible by n not included earlier, or 0 if no such number exists.

The programs for A073877, there is no canonical definition to state claims against.
-/

/-! ## A073877.P15250048807503090782

`(n+1)*A073878(n+1)`
-/

namespace A073877.P15250048807503090782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A073878 (n + 1)

end

end A073877.P15250048807503090782

/-! ## A073877.P12675567912174141058

`A073878(n+1)*A074805(n)`
-/

namespace A073877.P12675567912174141058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073878 (n + 1) * A074805 n

end

end A073877.P12675567912174141058

/-! ## A073877.P4478451223302285133

`A073878(n+1)*A291769(n)`
-/

namespace A073877.P4478451223302285133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073878 (n + 1) * A291769 n

end

end A073877.P4478451223302285133

/-! ## A073877.P16409974501395843038

`A073878(n+1)*A348553(n)`
-/

namespace A073877.P16409974501395843038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073878 (n + 1) * A348553 n

end

end A073877.P16409974501395843038

/-! ## A073877.P2501433963596555822

`A066562(A074805(n)*A121207(n))`
-/

namespace A073877.P2501433963596555822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066562 (A074805 n * A121207 n).toNat

end

end A073877.P2501433963596555822

/-!
# A073878: A073877 divided by n.

The programs for A073878, there is no canonical definition to state claims against.
-/

/-! ## A073878.P5849438355312689525

`A073877(n+1)/(n+1)`
-/

namespace A073878.P5849438355312689525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073877 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A073878.P5849438355312689525

/-! ## A073878.P8071239274898536535

`A217774(A053737(n)^A161680(n))`
-/

namespace A073878.P8071239274898536535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217774 (SequenceMachineLib.roundAway ((A053737 n : ℚ) ^ (A161680 n : ℤ))).toNat

end

end A073878.P8071239274898536535

/-!
# A073880: a(1) = 1, a(n) = smallest palindrome not included earlier such that a(1)+...+a(n) is a palindrome.

The programs for A073880, there is no canonical definition to state claims against.
-/

/-! ## A073880.P13964685096623807226

`char[3]+Δ[A084992(n+1)]`
-/

namespace A073880.P13964685096623807226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084992 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A073880.P13964685096623807226

/-! ## A073880.P12246578199612199070

`record[A265520(A025692(n))]`
-/

namespace A073880.P12246578199612199070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265520 (A025692 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073880.P12246578199612199070

/-! ## A073880.P9673168405704617836

`record[A265520(A090492(n))]`
-/

namespace A073880.P9673168405704617836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265520 (A090492 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073880.P9673168405704617836

/-! ## A073880.P1232940293441386960

`record[A265520(∑[A286554(n)])]`
-/

namespace A073880.P1232940293441386960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286554 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265520 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073880.P1232940293441386960

/-! ## A073880.P7837103218806873776

`record[A265520(∑[A286558(n)])]`
-/

namespace A073880.P7837103218806873776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286558 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265520 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073880.P7837103218806873776

/-!
# A073881: a(n) = smallest number m (obviously prime) such that pi(m) = 2*pi(n).

The programs for A073881, the canonical program `A073881.P14801290186884067211` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073881 has offset 1).

The definition of A073881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073881.P14801290186884067211

`A158611(2*∑[C(2, ∑{e}[n+1, #+1])])`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073881

/-- `A158611(2*∑[C(2, ∑{e}[n+1, #+1])])` -/
def P14801290186884067211.Spec : Prop :=
  ∀ n, P14801290186884067211.a n = A073881 (n + 1)

theorem P14801290186884067211.correct : P14801290186884067211.Spec := by
  intro n
  simp only [A073881, Nat.add_sub_cancel]

end A073881

/-! ## A073881.P12214901538505203705

`A008578(2*∑[∑{p}[n+1, C(#, n+1)]]+1)`
-/

namespace A073881.P12214901538505203705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A073881.P12214901538505203705

namespace A073881

/-- `A008578(2*∑[∑{p}[n+1, C(#, n+1)]]+1)` -/
def P12214901538505203705.Spec : Prop :=
  ∀ n, P12214901538505203705.a n = A073881 (n + 1)

end A073881

/-! ## A073881.P18393169760200828116

`A158611(2*A036234(n+1))`
-/

namespace A073881.P18393169760200828116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (2 * A036234 (n + 1)).toNat

end

end A073881.P18393169760200828116

namespace A073881

/-- `A158611(2*A036234(n+1))` -/
def P18393169760200828116.Spec : Prop :=
  ∀ n, P18393169760200828116.a n = A073881 (n + 1)

end A073881

/-! ## A073881.P6118353692501400830

`A008578(2*A000720(n+1)+1)`
-/

namespace A073881.P6118353692501400830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (2 * A000720 (n + 1) + 1).toNat

end

end A073881.P6118353692501400830

namespace A073881

/-- `A008578(2*A000720(n+1)+1)` -/
def P6118353692501400830.Spec : Prop :=
  ∀ n, P6118353692501400830.a n = A073881 (n + 1)

end A073881

/-! ## A073881.P897228405652797967

`A028815(2*A000720(n+1))-1`
-/

namespace A073881.P897228405652797967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (2 * A000720 (n + 1)).toNat - 1

end

end A073881.P897228405652797967

namespace A073881

/-- `A028815(2*A000720(n+1))-1` -/
def P897228405652797967.Spec : Prop :=
  ∀ n, P897228405652797967.a n = A073881 (n + 1)

end A073881

/-! ## A073881.P12944535520456728088

`A008578(∑[C(2, A001222(n+1)²)])`
-/

namespace A073881.P12944535520456728088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A001222 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073881.P12944535520456728088

namespace A073881

/-- `A008578(∑[C(2, A001222(n+1)²)])` -/
def P12944535520456728088.Spec : Prop :=
  ∀ n, P12944535520456728088.a n = A073881 (n + 1)

end A073881

/-! ## A073881.P2623970661789276382

`A008578(A036234(n+1)+A000720(n+1))`
-/

namespace A073881.P2623970661789276382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A036234 (n + 1) + A000720 (n + 1)).toNat

end

end A073881.P2623970661789276382

namespace A073881

/-- `A008578(A036234(n+1)+A000720(n+1))` -/
def P2623970661789276382.Spec : Prop :=
  ∀ n, P2623970661789276382.a n = A073881 (n + 1)

end A073881

/-! ## A073881.P2681341192102618513

`A045974(A136548(n+2))`
-/

namespace A073881.P2681341192102618513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045974 (A136548 (n + 2)).toNat

end

end A073881.P2681341192102618513

namespace A073881

/-- `A045974(A136548(n+2))` -/
def P2681341192102618513.Spec : Prop :=
  ∀ n, P2681341192102618513.a n = A073881 (n + 1)

end A073881

/-! ## A073881.P1482336193088443645

`A297002(A357980(A109763(2*n+1)))`
-/

namespace A073881.P1482336193088443645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297002 (A357980 (A109763 (2 * n + 1)).toNat).toNat

end

end A073881.P1482336193088443645

namespace A073881

/-- `A297002(A357980(A109763(2*n+1)))` -/
def P1482336193088443645.Spec : Prop :=
  ∀ n, P1482336193088443645.a n = A073881 (n + 1)

end A073881

/-! ## A073881.P12171915760270329124

`A008578(∑[A109810((n+1)²)])`
-/

namespace A073881.P12171915760270329124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109810 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073881.P12171915760270329124

namespace A073881

/-- `A008578(∑[A109810((n+1)²)])` -/
def P12171915760270329124.Spec : Prop :=
  ∀ n, P12171915760270329124.a n = A073881 (n + 1)

end A073881

/-!
# A073882: Number of primes between n and n^2.

The programs for A073882, there is no canonical definition to state claims against.
-/

/-! ## A073882.P10708538489612221498

`A117490(n+1)+A010051(n+1)`
-/

namespace A073882.P10708538489612221498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (n + 1) + A010051 (n + 1)

end

end A073882.P10708538489612221498

/-! ## A073882.P6311077256538555262

`A038107(n+1)-A000720(n+1)+A010051(n+1)`
-/

namespace A073882.P6311077256538555262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - A000720 (n + 1) + A010051 (n + 1)

end

end A073882.P6311077256538555262

/-! ## A073882.P3728077578784378017

`A161187(n+1)-A064427(n+1)`
-/

namespace A073882.P3728077578784378017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161187 (n + 1) - A064427 (n + 1)

end

end A073882.P3728077578784378017

/-! ## A073882.P8840214385729910083

`∑[A014085(n)-char[A000040(n+1)]]`
-/

namespace A073882.P8840214385729910083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073882.P8840214385729910083

/-! ## A073882.P17763987120778114319

`∑[A014085(n)-char[A006530(n+2)]]`
-/

namespace A073882.P17763987120778114319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073882.P17763987120778114319

/-! ## A073882.P2022553497754418546

`A010051(n+1)+∑[A014085(n)]-A000720(n+1)`
-/

namespace A073882.P2022553497754418546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A000720 (n + 1))

end

end A073882.P2022553497754418546

/-! ## A073882.P17283458281743056594

`A038107(n+1)-A230980(n)`
-/

namespace A073882.P17283458281743056594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - A230980 n

end

end A073882.P17283458281743056594

/-! ## A073882.P17317525058873755285

`A038107(n+1)-∑[char[A151800(n)]]`
-/

namespace A073882.P17317525058873755285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A073882.P17317525058873755285

/-! ## A073882.P11146760900564325511

`A038107(n+1)-∑[char[A039650(n+1)]]`
-/

namespace A073882.P11146760900564325511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039650 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A073882.P11146760900564325511

/-! ## A073882.P10690842019457787642

`A038107(n+1)-∑[char[A006530(n+2)]]`
-/

namespace A073882.P10690842019457787642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A073882.P10690842019457787642

/-! ## A073882.P15556055570894092237

`A038107(n+1)-∑[char[A207790(2*(n+1))]]`
-/

namespace A073882.P15556055570894092237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A073882.P15556055570894092237

/-! ## A073882.P1374348058797750546

`A220506(2*(n+1))-A230980(n)`
-/

namespace A073882.P1374348058797750546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (2 * (n + 1)) - A230980 n

end

end A073882.P1374348058797750546

/-! ## A073882.P1558220326361591946

`A000720((n+1)²)-A230980(n)`
-/

namespace A073882.P1558220326361591946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) ^ 2) - A230980 n

end

end A073882.P1558220326361591946

/-! ## A073882.P9036396166564344779

`A000720((n+1)²)+n-A095117(n)`
-/

namespace A073882.P9036396166564344779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) ^ 2) + ((n : ℤ) - A095117 n)

end

end A073882.P9036396166564344779

/-! ## A073882.P7104106702346540422

`A056812(A132411(n+1))`
-/

namespace A073882.P7104106702346540422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056812 (A132411 (n + 1)).toNat

end

end A073882.P7104106702346540422

/-! ## A073882.P11667862517926042884

`A230980(n*(n+2))-A230980(n)`
-/

namespace A073882.P11667862517926042884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n * (n + 2)) - A230980 n

end

end A073882.P11667862517926042884

/-!
# A073886: Terms which retain their position in A073885, i.e., terms for which A073885(n) = n.

The programs for A073886, there is no canonical definition to state claims against.
-/

/-! ## A073886.P1394085167339639771

`record[gcd(n+1, A073885(n+1))]`
-/

namespace A073886.P1394085167339639771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A073885 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073886.P1394085167339639771

/-! ## A073886.P15049463192324645104

`eq[n, A073885(round(sqrt(n²+1)))]`
-/

namespace A073886.P15049463192324645104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073885 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073886.P15049463192324645104

/-! ## A073886.P15441695671374079659

`A073885(eq[n+1, A073885(n+1)]+1)`
-/

namespace A073886.P15441695671374079659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073886.P15441695671374079659

/-!
# A073887: Smallest prime p such that sum of p and the next n-1 primes is a perfect square, or 1 if no such prime exists.

The programs for A073887, there is no canonical definition to state claims against.
-/

/-! ## A073887.P8805472502851311983

`A132955(a(A000038(n))+n)` with `a(0)=1`
-/

namespace A073887.P8805472502851311983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132955 (a (A000038 n).toNat + (n : ℤ)).toNat

end

end A073887.P8805472502851311983

/-!
# A073888: a(1) = 1, a(2) = 2; a(n+1) = a(n)^n/a(n-1).

The programs for A073888, the canonical program `A073888.P14403131331629854041` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073888 has offset 1).

The definition of A073888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073888.P14403131331629854041

`2^A058798(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A073888

/-- `2^A058798(n)` -/
def P14403131331629854041.Spec : Prop :=
  ∀ n, P14403131331629854041.a n = (A073888 (n + 1) : ℚ)

end A073888

/-!
# A073889: a(1) = 1, a(2) = 3; for n>2, a(n) = {a(n-1)*a(n+1)}^(1/n) or a(n+1) = a(n)^n/a(n-1).

The programs for A073889, there is no canonical definition to state claims against.
-/

/-! ## A073889.P9452539310130093159

`a(n-1)^n/a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A073889.P9452539310130093159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) ^ n / a (n - 2)

end

end A073889.P9452539310130093159

/-!
# A073890: Numerator of n/floor(sqrt(n)).

The programs for A073890, the canonical program `A073890.P1056685676492882943` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073890 has offset 1).

The definition of A073890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073890.P1056685676492882943

`(n+1)/A067815(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A073890

/-- `(n+1)/A067815(n+1)` -/
def P1056685676492882943.Spec : Prop :=
  ∀ n, P1056685676492882943.a n = (A073890 (n + 1) : ℚ)

end A073890

/-! ## A073890.P16639536605443047370

`(n+1)/gcd(n+1, floor(sqrt(n+1)))`
-/

namespace A073890.P16639536605443047370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd (n + 1) (Nat.sqrt (n + 1)) : ℚ)

end

end A073890.P16639536605443047370

namespace A073890

/-- `(n+1)/gcd(n+1, floor(sqrt(n+1)))` -/
def P16639536605443047370.Spec : Prop :=
  ∀ n, P16639536605443047370.a n = (A073890 (n + 1) : ℚ)

end A073890

/-! ## A073890.P13649230494061637385

`A241083(n+1)/A000196(n+1)`
-/

namespace A073890.P13649230494061637385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241083 (n + 1) : ℚ) / (A000196 (n + 1) : ℚ)

end

end A073890.P13649230494061637385

namespace A073890

/-- `A241083(n+1)/A000196(n+1)` -/
def P13649230494061637385.Spec : Prop :=
  ∀ n, P13649230494061637385.a n = (A073890 (n + 1) : ℚ)

end A073890

/-! ## A073890.P17819337412230944450

`lcm(n+1, A028392(n+1))/A028392(n+1)`
-/

namespace A073890.P17819337412230944450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A028392 (n + 1)) : ℚ) / (A028392 (n + 1) : ℚ)

end

end A073890.P17819337412230944450

namespace A073890

/-- `lcm(n+1, A028392(n+1))/A028392(n+1)` -/
def P17819337412230944450.Spec : Prop :=
  ∀ n, P17819337412230944450.a n = (A073890 (n + 1) : ℚ)

end A073890

/-! ## A073890.P11558637545746248633

`A241083(n+1)/Δ[A022554(n)]`
-/

namespace A073890.P11558637545746248633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241083 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A073890.P11558637545746248633

namespace A073890

/-- `A241083(n+1)/Δ[A022554(n)]` -/
def P11558637545746248633.Spec : Prop :=
  ∀ n, P11558637545746248633.a n = (A073890 (n + 1) : ℚ)

end A073890

/-! ## A073890.P15992375065495500616

`lcm(A000196(n+1), A008619(2*n))/A000196(n+1)`
-/

namespace A073890.P15992375065495500616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000196 (n + 1)) (A008619 (2 * n)) : ℚ) / (A000196 (n + 1) : ℚ)

end

end A073890.P15992375065495500616

namespace A073890

/-- `lcm(A000196(n+1), A008619(2*n))/A000196(n+1)` -/
def P15992375065495500616.Spec : Prop :=
  ∀ n, P15992375065495500616.a n = (A073890 (n + 1) : ℚ)

end A073890

/-! ## A073890.P3731107098293945642

`A054531(A000217(n)+A000196(n+1))`
-/

namespace A073890.P3731107098293945642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A000217 n + A000196 (n + 1)).toNat

end

end A073890.P3731107098293945642

namespace A073890

/-- `A054531(A000217(n)+A000196(n+1))` -/
def P3731107098293945642.Spec : Prop :=
  ∀ n, P3731107098293945642.a n = A073890 (n + 1)

end A073890

/-! ## A073890.P864425249088780011

`A010766(A067815(n+1)+A000217(n))`
-/

namespace A073890.P864425249088780011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A067815 (n + 1) + A000217 n).toNat

end

end A073890.P864425249088780011

namespace A073890

/-- `A010766(A067815(n+1)+A000217(n))` -/
def P864425249088780011.Spec : Prop :=
  ∀ n, P864425249088780011.a n = A073890 (n + 1)

end A073890

/-! ## A073890.P13214155704457771882

`A054531(A067815(n+1)+A000217(n))`
-/

namespace A073890.P13214155704457771882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A067815 (n + 1) + A000217 n).toNat

end

end A073890.P13214155704457771882

namespace A073890

/-- `A054531(A067815(n+1)+A000217(n))` -/
def P13214155704457771882.Spec : Prop :=
  ∀ n, P13214155704457771882.a n = A073890 (n + 1)

end A073890

/-! ## A073890.P2871784851823207603

`A267177(A067815(n+1)+n²)`
-/

namespace A073890.P2871784851823207603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A067815 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A073890.P2871784851823207603

namespace A073890

/-- `A267177(A067815(n+1)+n²)` -/
def P2871784851823207603.Spec : Prop :=
  ∀ n, P2871784851823207603.a n = A073890 (n + 1)

end A073890

/-!
# A073891: a(1) = 1, a(2n) = a(2n-1) + c(n) and a(2n+1) = a(2n) - p(n), where c(n)=A002808(n) and p(n)=A000040(n) are the n-th composite and n-th prime numbers, respectively.

The programs for A073891, there is no canonical definition to state claims against.
-/

/-! ## A073891.P14759290140143493581

`∑[A073846(A065190(n+1))*A165326(n)]`
-/

namespace A073891.P14759290140143493581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A065190 (n + 1)).toNat * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073891.P14759290140143493581

/-!
# A073892: a(1) = 1, a(2n) = a(2n-1) + p(n) and a(2n+1) = a(2n) - c(n), where p(n)=A000040(n) and c(n)=A002808(n) are the n-th composite and n-th prime numbers, respectively.

The programs for A073892, there is no canonical definition to state claims against.
-/

/-! ## A073892.P12161089595609729359

`∑[A073846(n+1)*A165326(n)]`
-/

namespace A073892.P12161089595609729359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1) * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073892.P12161089595609729359

/-! ## A073892.P11719062031574971628

`∑[A062157(n)*A073846(n+1)]+1`
-/

namespace A073892.P11719062031574971628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A073846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A073892.P11719062031574971628

/-! ## A073892.P12784827484187624609

`2-∑[A033999(n)*A073846(n+1)]`
-/

namespace A073892.P12784827484187624609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A073846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073892.P12784827484187624609

/-! ## A073892.P12564759422980574580

`∑[A033999(A014681(n))*A073846(n+1)]`
-/

namespace A073892.P12564759422980574580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A014681 n).toNat * A073846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073892.P12564759422980574580

/-! ## A073892.P14210976043187787356

`∑[A062157(A028310(n))*A073846(n+1)]`
-/

namespace A073892.P14210976043187787356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A028310 n).toNat * A073846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073892.P14210976043187787356

/-! ## A073892.P17623695546021502841

`∑[A009001(A103517(n))*A073846(n+1)]`
-/

namespace A073892.P17623695546021502841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A103517 n).toNat * A073846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073892.P17623695546021502841

/-! ## A073892.P126011960825387451

`∑[A033999(A008347(n))*A073846(n+1)]`
-/

namespace A073892.P126011960825387451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A008347 n).toNat * A073846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073892.P126011960825387451

/-! ## A073892.P4893461995511930749

`∑[A033999(A007504(n))*A073846(n+1)]`
-/

namespace A073892.P4893461995511930749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A007504 n).toNat * A073846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073892.P4893461995511930749

/-!
# A073895: a(1)=1. a(n)=a(n-1)+k(n). If a(n-1) is nonprime, k(n) is the smallest composite not in the set {k(i),i

The programs for A073895, there is no canonical definition to state claims against.
-/

/-! ## A073895.P41602436763471799

`A267883(comp[(n+1)²])+A088637(n+1)`
-/

namespace A073895.P41602436763471799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267883 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A088637 (n + 1)

end

end A073895.P41602436763471799

/-! ## A073895.P15518526307155836571

`(A267883(n+1)+A088637(n+1))^A178334(n)`
-/

namespace A073895.P15518526307155836571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267883 (n + 1) + A088637 (n + 1) : ℚ) ^ (A178334 n : ℤ)

end

end A073895.P15518526307155836571

/-! ## A073895.P14863079991981920984

`A088637(n+1)+val(A073920(n+1), A073919(n))`
-/

namespace A073895.P14863079991981920984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088637 (n + 1) + (SequenceMachineLib.valuation (A073920 (n + 1)).toNat (A073919 n).toNat : ℤ)

end

end A073895.P14863079991981920984

/-! ## A073895.P2380100891570096788

`A088637(n+1)+A048298(A073901(n+1))`
-/

namespace A073895.P2380100891570096788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088637 (n + 1) + A048298 (A073901 (n + 1)).toNat

end

end A073895.P2380100891570096788

/-! ## A073895.P2198496309878870346

`A267883(A099920(n))+∑[A265352(record[A086389(n+1)])]`
-/

namespace A073895.P2198496309878870346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086389 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267883 (A099920 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073895.P2198496309878870346

/-!
# A073896: a(1) = 1, a(n) = a(n-1) + k where k is smallest prime or composite number not used earlier according as a(n-1) is nonprime or prime.

The programs for A073896, there is no canonical definition to state claims against.
-/

/-! ## A073896.P17386869999576590362

`A064481(3*n+2)-A327041(A032559(n+1))`
-/

namespace A073896.P17386869999576590362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064481 (3 * n + 2) - A327041 (A032559 (n + 1)).toNat

end

end A073896.P17386869999576590362

/-! ## A073896.P13472324475539544046

`A064481(3*n+2)-A327041(A077739(n+1))`
-/

namespace A073896.P13472324475539544046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064481 (3 * n + 2) - A327041 (A077739 (n + 1)).toNat

end

end A073896.P13472324475539544046

/-! ## A073896.P5425484184974514939

`A064481(3*n+2)-A327041(A078213(n+1))`
-/

namespace A073896.P5425484184974514939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064481 (3 * n + 2) - A327041 (A078213 (n + 1)).toNat

end

end A073896.P5425484184974514939

/-!
# A073897: a(1) = 1, a(n) = smallest odd or even number not occurring earlier according as n is prime or composite.

The programs for A073897, the canonical program `A073897.P11908229186590286199` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073897 has offset 1).

The definition of A073897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073897.P11908229186590286199

`xor(A057427(n), A073898(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073897

/-- `xor(A057427(n), A073898(n+1))` -/
def P11908229186590286199.Spec : Prop :=
  ∀ n, P11908229186590286199.a n = A073897 (n + 1)

theorem P11908229186590286199.correct : P11908229186590286199.Spec := by
  intro n
  simp only [A073897, Nat.add_sub_cancel]

end A073897

/-! ## A073897.P4274953675676676774

`A080339(n+1)+2*A066136(n+1)`
-/

namespace A073897.P4274953675676676774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) + 2 * A066136 (n + 1)

end

end A073897.P4274953675676676774

namespace A073897

/-- `A080339(n+1)+2*A066136(n+1)` -/
def P4274953675676676774.Spec : Prop :=
  ∀ n, P4274953675676676774.a n = A073897 (n + 1)

end A073897

/-! ## A073897.P11372354978939172705

`A010051(n+1)+A004277(A066136(n+1))`
-/

namespace A073897.P11372354978939172705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + A004277 (A066136 (n + 1)).toNat

end

end A073897.P11372354978939172705

namespace A073897

/-- `A010051(n+1)+A004277(A066136(n+1))` -/
def P11372354978939172705.Spec : Prop :=
  ∀ n, P11372354978939172705.a n = A073897 (n + 1)

end A073897

/-! ## A073897.P13382524987562570432

`A080339(n+1)+A005843(A066136(n+1))`
-/

namespace A073897.P13382524987562570432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) + A005843 (A066136 (n + 1)).toNat

end

end A073897.P13382524987562570432

namespace A073897

/-- `A080339(n+1)+A005843(A066136(n+1))` -/
def P13382524987562570432.Spec : Prop :=
  ∀ n, P13382524987562570432.a n = A073897 (n + 1)

end A073897

/-! ## A073897.P12498818203476788405

`A005408(A066136(n+1))-A066247(n+1)`
-/

namespace A073897.P12498818203476788405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A066136 (n + 1)).toNat - A066247 (n + 1)

end

end A073897.P12498818203476788405

namespace A073897

/-- `A005408(A066136(n+1))-A066247(n+1)` -/
def P12498818203476788405.Spec : Prop :=
  ∀ n, P12498818203476788405.a n = A073897 (n + 1)

end A073897

/-! ## A073897.P16599349612308672403

`A005408(A049084(n+1))+A004273(A066246(n+1))`
-/

namespace A073897.P16599349612308672403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A049084 (n + 1)).toNat + A004273 (A066246 (n + 1)).toNat

end

end A073897.P16599349612308672403

namespace A073897

/-- `A005408(A049084(n+1))+A004273(A066246(n+1))` -/
def P16599349612308672403.Spec : Prop :=
  ∀ n, P16599349612308672403.a n = A073897 (n + 1)

end A073897

/-! ## A073897.P17980277449764701168

`A065190(A073898(n+1))`
-/

namespace A073897.P17980277449764701168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A073898 (n + 1)).toNat

end

end A073897.P17980277449764701168

namespace A073897

/-- `A065190(A073898(n+1))` -/
def P17980277449764701168.Spec : Prop :=
  ∀ n, P17980277449764701168.a n = A073897 (n + 1)

end A073897

/-! ## A073897.P16516235423207485023

`A065190(A066136(n+1)+A026233(n+1))`
-/

namespace A073897.P16516235423207485023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A066136 (n + 1) + A026233 (n + 1)).toNat

end

end A073897.P16516235423207485023

namespace A073897

/-- `A065190(A066136(n+1)+A026233(n+1))` -/
def P16516235423207485023.Spec : Prop :=
  ∀ n, P16516235423207485023.a n = A073897 (n + 1)

end A073897

/-! ## A073897.P14949869221082140172

`A073898(A026239(n+1))`
-/

namespace A073897.P14949869221082140172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073898 (A026239 (n + 1)).toNat

end

end A073897.P14949869221082140172

namespace A073897

/-- `A073898(A026239(n+1))` -/
def P14949869221082140172.Spec : Prop :=
  ∀ n, P14949869221082140172.a n = A073897 (n + 1)

end A073897

/-! ## A073897.P6501836802411475004

`A066136(n+1)+A026233(A026239(n+1))`
-/

namespace A073897.P6501836802411475004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066136 (n + 1) + A026233 (A026239 (n + 1)).toNat

end

end A073897.P6501836802411475004

namespace A073897

/-- `A066136(n+1)+A026233(A026239(n+1))` -/
def P6501836802411475004.Spec : Prop :=
  ∀ n, P6501836802411475004.a n = A073897 (n + 1)

end A073897

/-! ## A073897.P1304613769826626494

`xor(A066247((n+1)²), A073898(n+1))`
-/

namespace A073897.P1304613769826626494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A066247 ((n + 1) ^ 2)) (A073898 (n + 1))

end

end A073897.P1304613769826626494

namespace A073897

/-- `xor(A066247((n+1)²), A073898(n+1))` -/
def P1304613769826626494.Spec : Prop :=
  ∀ n, P1304613769826626494.a n = A073897 (n + 1)

end A073897

/-!
# A073898: a(1) = 1; for n>1, a(n) = smallest even or odd number not occurring earlier accordingly as n is prime or composite.

The programs for A073898, the canonical program `A073898.P3320398889507499316` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073898 has offset 1).

The definition of A073898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073898.P3320398889507499316

`abs(∑{p}[n+1, C(#, n)]-∑[C(n, ∑{p}[n+1, C(#, n)])])+abs(∑{p}[n+1, C(#, n)]-∑[C(n, ∑{p}[n+1, C(#, n)])])-C(n, ∑{p}[n+1, C(#, n)])`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A073898

/-- `abs(∑{p}[n+1, C(#, n)]-∑[C(n, ∑{p}[n+1, C(#, n)])])+abs(∑{p}[n+1, C(#, n)]-∑[C(n, ∑{p}[n+1, C(#, n)])])-C(n, ∑{p}[n+1, C(#, n)])` -/
def P3320398889507499316.Spec : Prop :=
  ∀ n, P3320398889507499316.a n = A073898 (n + 1)

theorem P3320398889507499316.correct : P3320398889507499316.Spec := by
  intro n
  simp only [A073898, Nat.add_sub_cancel]

end A073898

/-! ## A073898.P15339821774614867899

`A005843(abs(1-∑{p}[n+1, C(#, n)]+n-∑[C(C(2, ∑{e}[n+1, #]), 2)]))-C(n, ∑{p}[n+1, C(#, n)])`
-/

namespace A073898.P15339821774614867899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)) 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 |1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|.toNat - (Nat.choose n (∑ p ∈ Nat.primeFactors (f4 n), Nat.choose p n) : ℤ)

end

end A073898.P15339821774614867899

namespace A073898

/-- `A005843(abs(1-∑{p}[n+1, C(#, n)]+n-∑[C(C(2, ∑{e}[n+1, #]), 2)]))-C(n, ∑{p}[n+1, C(#, n)])` -/
def P15339821774614867899.Spec : Prop :=
  ∀ n, P15339821774614867899.a n = A073898 (n + 1)

end A073898

/-! ## A073898.P6952666476276295279

`xor(A057427(n), A073897(n+1))`
-/

namespace A073898.P6952666476276295279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A073897 (n + 1))

end

end A073898.P6952666476276295279

namespace A073898

/-- `xor(A057427(n), A073897(n+1))` -/
def P6952666476276295279.Spec : Prop :=
  ∀ n, P6952666476276295279.a n = A073898 (n + 1)

end A073898

/-! ## A073898.P5998698812829818623

`A066136(n+1)+A026233(n+1)`
-/

namespace A073898.P5998698812829818623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066136 (n + 1) + A026233 (n + 1)

end

end A073898.P5998698812829818623

namespace A073898

/-- `A066136(n+1)+A026233(n+1)` -/
def P5998698812829818623.Spec : Prop :=
  ∀ n, P5998698812829818623.a n = A073898 (n + 1)

end A073898

/-! ## A073898.P13010314358787514562

`xor(n/A028310(n), A073897(n+1))`
-/

namespace A073898.P13010314358787514562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))) (A073897 (n + 1))

end

end A073898.P13010314358787514562

namespace A073898

/-- `xor(n/A028310(n), A073897(n+1))` -/
def P13010314358787514562.Spec : Prop :=
  ∀ n, P13010314358787514562.a n = A073898 (n + 1)

end A073898

/-! ## A073898.P17618408638883560331

`A005171(n+1)+2*A066136(n+1)`
-/

namespace A073898.P17618408638883560331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + 2 * A066136 (n + 1)

end

end A073898.P17618408638883560331

namespace A073898

/-- `A005171(n+1)+2*A066136(n+1)` -/
def P17618408638883560331.Spec : Prop :=
  ∀ n, P17618408638883560331.a n = A073898 (n + 1)

end A073898

/-! ## A073898.P1888064680837327680

`2*A026233(n+1)-A005171(n+1)`
-/

namespace A073898.P1888064680837327680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026233 (n + 1) - A005171 (n + 1)

end

end A073898.P1888064680837327680

namespace A073898

/-- `2*A026233(n+1)-A005171(n+1)` -/
def P1888064680837327680.Spec : Prop :=
  ∀ n, P1888064680837327680.a n = A073898 (n + 1)

end A073898

/-! ## A073898.P16954848312336882471

`xor(and(1, A000040(n+1)), A073897(n+1))`
-/

namespace A073898.P16954848312336882471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land 1 (A000040 (n + 1))) (A073897 (n + 1))

end

end A073898.P16954848312336882471

namespace A073898

/-- `xor(and(1, A000040(n+1)), A073897(n+1))` -/
def P16954848312336882471.Spec : Prop :=
  ∀ n, P16954848312336882471.a n = A073898 (n + 1)

end A073898

/-! ## A073898.P1343654525746295327

`A026233(n+1)+A066246(n+1)+A049084(n+1)`
-/

namespace A073898.P1343654525746295327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (n + 1) + (A066246 (n + 1) + A049084 (n + 1))

end

end A073898.P1343654525746295327

namespace A073898

/-- `A026233(n+1)+A066246(n+1)+A049084(n+1)` -/
def P1343654525746295327.Spec : Prop :=
  ∀ n, P1343654525746295327.a n = A073898 (n + 1)

end A073898

/-! ## A073898.P9965090751230792776

`A005408(A066246(n+1))+A004273(A049084(n+1))`
-/

namespace A073898.P9965090751230792776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A066246 (n + 1)).toNat + A004273 (A049084 (n + 1)).toNat

end

end A073898.P9965090751230792776

namespace A073898

/-- `A005408(A066246(n+1))+A004273(A049084(n+1))` -/
def P9965090751230792776.Spec : Prop :=
  ∀ n, P9965090751230792776.a n = A073898 (n + 1)

end A073898

/-! ## A073898.P3048164033381502842

`A065190(A073897(n+1))`
-/

namespace A073898.P3048164033381502842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A073897 (n + 1)).toNat

end

end A073898.P3048164033381502842

namespace A073898

/-- `A065190(A073897(n+1))` -/
def P3048164033381502842.Spec : Prop :=
  ∀ n, P3048164033381502842.a n = A073898 (n + 1)

end A073898

/-! ## A073898.P14825004879630255420

`A028310(xor(1, A073897(n+1)))`
-/

namespace A073898.P14825004879630255420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor 1 (A073897 (n + 1))).toNat

end

end A073898.P14825004879630255420

namespace A073898

/-- `A028310(xor(1, A073897(n+1)))` -/
def P14825004879630255420.Spec : Prop :=
  ∀ n, P14825004879630255420.a n = A073898 (n + 1)

end A073898

/-! ## A073898.P2911902995759433753

`A073897(A026239(n+1))`
-/

namespace A073898.P2911902995759433753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073897 (A026239 (n + 1)).toNat

end

end A073898.P2911902995759433753

namespace A073898

/-- `A073897(A026239(n+1))` -/
def P2911902995759433753.Spec : Prop :=
  ∀ n, P2911902995759433753.a n = A073898 (n + 1)

end A073898

