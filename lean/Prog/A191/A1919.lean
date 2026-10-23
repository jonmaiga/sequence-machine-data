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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A191900: Number of compositions of odd natural numbers into 7 parts <=n.

The programs for A191900, the canonical program `A191900.P2982938712156587726` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191900 has offset 0).

The definition of A191900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191900.P2982938712156587726

`floor(1/2*(n+1)^7)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191900

/-- `floor(1/2*(n+1)^7)` -/
def P2982938712156587726.Spec : Prop :=
  ∀ n, P2982938712156587726.a n = A191900 n

theorem P2982938712156587726.correct : P2982938712156587726.Spec := by
  intro n
  simp only [A191900]

end A191900

/-! ## A191900.P15310940803231756907

`round(sinh(7*log(n+1)))`
-/

namespace A191900.P15310940803231756907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (7 * Real.log (n + 1 : ℝ)))

end

end A191900.P15310940803231756907

namespace A191900

/-- `round(sinh(7*log(n+1)))` -/
def P15310940803231756907.Spec : Prop :=
  ∀ n, P15310940803231756907.a n = A191900 n

end A191900

/-! ## A191900.P9655990495017577932

`round(cot(2/(n+1)^7))`
-/

namespace A191900.P9655990495017577932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / ((n + 1) ^ 7 : ℚ) : ℝ))

end

end A191900.P9655990495017577932

namespace A191900

/-- `round(cot(2/(n+1)^7))` -/
def P9655990495017577932.Spec : Prop :=
  ∀ n, P9655990495017577932.a n = A191900 n

end A191900

/-! ## A191900.P1649254246297814129

`round(A258808(n+1)/2)`
-/

namespace A191900.P1649254246297814129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A258808 (n + 1) : ℚ) / 2)

end

end A191900.P1649254246297814129

namespace A191900

/-- `round(A258808(n+1)/2)` -/
def P1649254246297814129.Spec : Prop :=
  ∀ n, P1649254246297814129.a n = A191900 n

end A191900

/-! ## A191900.P8372782803077750008

`floor(∑[∑[A255177(n)]]/2+n)-n`
-/

namespace A191900.P8372782803077750008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 + (n : ℚ)⌋ - (n : ℤ)

end

end A191900.P8372782803077750008

namespace A191900

/-- `floor(∑[∑[A255177(n)]]/2+n)-n` -/
def P8372782803077750008.Spec : Prop :=
  ∀ n, P8372782803077750008.a n = A191900 n

end A191900

/-! ## A191900.P6103975110677646939

`A191494(n)-A059841(n)`
-/

namespace A191900.P6103975110677646939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191494 n - A059841 n

end

end A191900.P6103975110677646939

namespace A191900

/-- `A191494(n)-A059841(n)` -/
def P6103975110677646939.Spec : Prop :=
  ∀ n, P6103975110677646939.a n = A191900 n

end A191900

/-! ## A191900.P13952344156502469528

`A292045(n+1)+A191902(n)`
-/

namespace A191900.P13952344156502469528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292045 (n + 1) + A191902 n

end

end A191900.P13952344156502469528

namespace A191900

/-- `A292045(n+1)+A191902(n)` -/
def P13952344156502469528.Spec : Prop :=
  ∀ n, P13952344156502469528.a n = A191900 n

end A191900

/-! ## A191900.P12549699667387891803

`A191494(n)+A191903(n)-A171714(n)`
-/

namespace A191900.P12549699667387891803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191494 n + (A191903 n - A171714 n)

end

end A191900.P12549699667387891803

namespace A191900

/-- `A191494(n)+A191903(n)-A171714(n)` -/
def P12549699667387891803.Spec : Prop :=
  ∀ n, P12549699667387891803.a n = A191900 n

end A191900

/-! ## A191900.P13349235039739479880

`A191494(n)+A191902(n)-A191484(n)`
-/

namespace A191900.P13349235039739479880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191494 n + (A191902 n - A191484 n)

end

end A191900.P13349235039739479880

namespace A191900

/-- `A191494(n)+A191902(n)-A191484(n)` -/
def P13349235039739479880.Spec : Prop :=
  ∀ n, P13349235039739479880.a n = A191900 n

end A191900

/-! ## A191900.P15663105080390301825

`A036487(n+1)+A191494(n)-A036486(n+1)`
-/

namespace A191900.P15663105080390301825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 (n + 1) + (A191494 n - A036486 (n + 1))

end

end A191900.P15663105080390301825

namespace A191900

/-- `A036487(n+1)+A191494(n)-A036486(n+1)` -/
def P15663105080390301825.Spec : Prop :=
  ∀ n, P15663105080390301825.a n = A191900 n

end A191900

/-!
# A191901: Number of compositions of odd natural numbers into 6 parts <= n.

The programs for A191901, the canonical program `A191901.P12339139261325296151` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191901 has offset 0).

The definition of A191901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191901.P12339139261325296151

`floor(1/2*(n+1)^6)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191901

/-- `floor(1/2*(n+1)^6)` -/
def P12339139261325296151.Spec : Prop :=
  ∀ n, P12339139261325296151.a n = A191901 n

theorem P12339139261325296151.correct : P12339139261325296151.Spec := by
  intro n
  simp only [A191901]

end A191901

/-! ## A191901.P17422269478132718892

`round(sinh(6*log(n+1)))`
-/

namespace A191901.P17422269478132718892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (6 * Real.log (n + 1 : ℝ)))

end

end A191901.P17422269478132718892

namespace A191901

/-- `round(sinh(6*log(n+1)))` -/
def P17422269478132718892.Spec : Prop :=
  ∀ n, P17422269478132718892.a n = A191901 n

end A191901

/-! ## A191901.P3690319356731913337

`round(cot(2/(n+1)^6))`
-/

namespace A191901.P3690319356731913337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / ((n + 1) ^ 6 : ℚ) : ℝ))

end

end A191901.P3690319356731913337

namespace A191901

/-- `round(cot(2/(n+1)^6))` -/
def P3690319356731913337.Spec : Prop :=
  ∀ n, P3690319356731913337.a n = A191901 n

end A191901

/-! ## A191901.P9633746216293954913

`ceil(A123866(n+1)/2)`
-/

namespace A191901.P9633746216293954913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123866 (n + 1) : ℚ) / 2⌉

end

end A191901.P9633746216293954913

namespace A191901

/-- `ceil(A123866(n+1)/2)` -/
def P9633746216293954913.Spec : Prop :=
  ∀ n, P9633746216293954913.a n = A191901 n

end A191901

/-! ## A191901.P1560207789542457799

`A191489(n)-(n+1)%2`
-/

namespace A191901.P1560207789542457799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191489 n - (((n + 1) % 2 : ℕ) : ℤ)

end

end A191901.P1560207789542457799

namespace A191901

/-- `A191489(n)-(n+1)%2` -/
def P1560207789542457799.Spec : Prop :=
  ∀ n, P1560207789542457799.a n = A191901 n

end A191901

/-! ## A191901.P6248544383515412056

`ceil((A000578(n+1)²-1)/2)`
-/

namespace A191901.P6248544383515412056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000578 (n + 1) ^ 2 - 1 : ℚ) / 2⌉

end

end A191901.P6248544383515412056

namespace A191901

/-- `ceil((A000578(n+1)²-1)/2)` -/
def P6248544383515412056.Spec : Prop :=
  ∀ n, P6248544383515412056.a n = A191901 n

end A191901

/-! ## A191901.P11473189099322084302

`2*ceil((∑[A022522(n)]-1)/4)`
-/

namespace A191901.P11473189099322084302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 4⌉

end

end A191901.P11473189099322084302

namespace A191901

/-- `2*ceil((∑[A022522(n)]-1)/4)` -/
def P11473189099322084302.Spec : Prop :=
  ∀ n, P11473189099322084302.a n = A191901 n

end A191901

/-! ## A191901.P9574017702852707835

`A191489(n)-A059841(n)`
-/

namespace A191901.P9574017702852707835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191489 n - A059841 n

end

end A191901.P9574017702852707835

namespace A191901

/-- `A191489(n)-A059841(n)` -/
def P9574017702852707835.Spec : Prop :=
  ∀ n, P9574017702852707835.a n = A191901 n

end A191901

/-! ## A191901.P2922829786405336168

`A036487(n+1)*A245996(n+1)`
-/

namespace A191901.P2922829786405336168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 (n + 1) * A245996 (n + 1)

end

end A191901.P2922829786405336168

namespace A191901

/-- `A036487(n+1)*A245996(n+1)` -/
def P2922829786405336168.Spec : Prop :=
  ∀ n, P2922829786405336168.a n = A191901 n

end A191901

/-! ## A191901.P15823182667842736540

`A191489(n)+A191903(n)-A171714(n)`
-/

namespace A191901.P15823182667842736540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191489 n + (A191903 n - A171714 n)

end

end A191901.P15823182667842736540

namespace A191901

/-- `A191489(n)+A191903(n)-A171714(n)` -/
def P15823182667842736540.Spec : Prop :=
  ∀ n, P15823182667842736540.a n = A191901 n

end A191901

/-! ## A191901.P5737659532655839772

`A191489(n)+A191900(n)-A191494(n)`
-/

namespace A191901.P5737659532655839772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191489 n + (A191900 n - A191494 n)

end

end A191901.P5737659532655839772

namespace A191901

/-- `A191489(n)+A191900(n)-A191494(n)` -/
def P5737659532655839772.Spec : Prop :=
  ∀ n, P5737659532655839772.a n = A191901 n

end A191901

/-! ## A191901.P2258827994998634048

`A191489(n)+A191902(n)-A191484(n)`
-/

namespace A191901.P2258827994998634048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191489 n + (A191902 n - A191484 n)

end

end A191901.P2258827994998634048

namespace A191901

/-- `A191489(n)+A191902(n)-A191484(n)` -/
def P2258827994998634048.Spec : Prop :=
  ∀ n, P2258827994998634048.a n = A191901 n

end A191901

/-! ## A191901.P4519406728125151741

`round(((n+1)²*Δ[A000538(n)]-1)/2)`
-/

namespace A191901.P4519406728125151741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℤ) * (f1 (n + 1) - f1 n) - 1 : ℚ) / 2)

end

end A191901.P4519406728125151741

namespace A191901

/-- `round(((n+1)²*Δ[A000538(n)]-1)/2)` -/
def P4519406728125151741.Spec : Prop :=
  ∀ n, P4519406728125151741.a n = A191901 n

end A191901

/-! ## A191901.P244618495519613486

`A036486(n+1)*A301647(n+1)`
-/

namespace A191901.P244618495519613486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036486 (n + 1) * A301647 (n + 1)

end

end A191901.P244618495519613486

namespace A191901

/-- `A036486(n+1)*A301647(n+1)` -/
def P244618495519613486.Spec : Prop :=
  ∀ n, P244618495519613486.a n = A191901 n

end A191901

/-! ## A191901.P17502166630158027211

`(A129957(n+1)-1)*A036486(n+1)`
-/

namespace A191901.P17502166630158027211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A129957 (n + 1) - 1) * A036486 (n + 1)

end

end A191901.P17502166630158027211

namespace A191901

/-- `(A129957(n+1)-1)*A036486(n+1)` -/
def P17502166630158027211.Spec : Prop :=
  ∀ n, P17502166630158027211.a n = A191901 n

end A191901

/-! ## A191901.P10223761360906019098

`2*A036486(n+1)*A036487(n+1)`
-/

namespace A191901.P10223761360906019098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A036486 (n + 1) * A036487 (n + 1))

end

end A191901.P10223761360906019098

namespace A191901

/-- `2*A036486(n+1)*A036487(n+1)` -/
def P10223761360906019098.Spec : Prop :=
  ∀ n, P10223761360906019098.a n = A191901 n

end A191901

/-! ## A191901.P9016994783648889630

`∪[A191489(2*n+1), A191489(2*n)-1]`
-/

namespace A191901.P9016994783648889630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191489 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191489 (2 * n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191901.P9016994783648889630

namespace A191901

/-- `∪[A191489(2*n+1), A191489(2*n)-1]` -/
def P9016994783648889630.Spec : Prop :=
  ∀ n, (P9016994783648889630.a n : ℤ) = A191901 n

end A191901

/-! ## A191901.P6888454482914150831

`A036487(n+1)+A191489(n)-A036486(n+1)`
-/

namespace A191901.P6888454482914150831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 (n + 1) + (A191489 n - A036486 (n + 1))

end

end A191901.P6888454482914150831

namespace A191901

/-- `A036487(n+1)+A191489(n)-A036486(n+1)` -/
def P6888454482914150831.Spec : Prop :=
  ∀ n, P6888454482914150831.a n = A191901 n

end A191901

/-! ## A191901.P3722586328010032657

`A071232(n+1)-A071232(n+1)/A129957(n+1)`
-/

namespace A191901.P3722586328010032657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071232 (n + 1) : ℚ) - (A071232 (n + 1) : ℚ) / (A129957 (n + 1) : ℚ)

end

end A191901.P3722586328010032657

namespace A191901

/-- `A071232(n+1)-A071232(n+1)/A129957(n+1)` -/
def P3722586328010032657.Spec : Prop :=
  ∀ n, P3722586328010032657.a n = (A191901 n : ℚ)

end A191901

/-! ## A191901.P11409082626671717607

`A036487((n+1)²)`
-/

namespace A191901.P11409082626671717607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 ((n + 1) ^ 2)

end

end A191901.P11409082626671717607

namespace A191901

/-- `A036487((n+1)²)` -/
def P11409082626671717607.Spec : Prop :=
  ∀ n, P11409082626671717607.a n = A191901 n

end A191901

/-!
# A191902: Number of compositions of odd positive integers into 5 parts <= n.

The programs for A191902, the canonical program `A191902.P9978335066386867345` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191902 has offset 0).

The definition of A191902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191902.P9978335066386867345

`floor(1/2*(n+1)^5)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191902

/-- `floor(1/2*(n+1)^5)` -/
def P9978335066386867345.Spec : Prop :=
  ∀ n, P9978335066386867345.a n = A191902 n

theorem P9978335066386867345.correct : P9978335066386867345.Spec := by
  intro n
  simp only [A191902]

end A191902

/-! ## A191902.P2859484025599678000

`round(sinh(5*log(n+1)))`
-/

namespace A191902.P2859484025599678000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (5 * Real.log (n + 1 : ℝ)))

end

end A191902.P2859484025599678000

namespace A191902

/-- `round(sinh(5*log(n+1)))` -/
def P2859484025599678000.Spec : Prop :=
  ∀ n, P2859484025599678000.a n = A191902 n

end A191902

/-! ## A191902.P12511609801600093241

`round(cot(2/(n+1)^5))`
-/

namespace A191902.P12511609801600093241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / ((n + 1) ^ 5 : ℚ) : ℝ))

end

end A191902.P12511609801600093241

namespace A191902

/-- `round(cot(2/(n+1)^5))` -/
def P12511609801600093241.Spec : Prop :=
  ∀ n, P12511609801600093241.a n = A191902 n

end A191902

/-! ## A191902.P78479510374620166

`ceil(A258807(n+1)/2)`
-/

namespace A191902.P78479510374620166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A258807 (n + 1) : ℚ) / 2⌉

end

end A191902.P78479510374620166

namespace A191902

/-- `ceil(A258807(n+1)/2)` -/
def P78479510374620166.Spec : Prop :=
  ∀ n, P78479510374620166.a n = A191902 n

end A191902

/-! ## A191902.P6990295796856554235

`A191484(n)-A059841(n)`
-/

namespace A191902.P6990295796856554235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191484 n - A059841 n

end

end A191902.P6990295796856554235

namespace A191902

/-- `A191484(n)-A059841(n)` -/
def P6990295796856554235.Spec : Prop :=
  ∀ n, P6990295796856554235.a n = A191902 n

end A191902

/-! ## A191902.P14142389946657761680

`A191900(n)-A292045(n+1)`
-/

namespace A191902.P14142389946657761680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191900 n - A292045 (n + 1)

end

end A191902.P14142389946657761680

namespace A191902

/-- `A191900(n)-A292045(n+1)` -/
def P14142389946657761680.Spec : Prop :=
  ∀ n, P14142389946657761680.a n = A191902 n

end A191902

/-! ## A191902.P15954874540038082329

`A372751(n+1)-A056640(n+1)`
-/

namespace A191902.P15954874540038082329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372751 (n + 1) - A056640 (n + 1)

end

end A191902.P15954874540038082329

namespace A191902

/-- `A372751(n+1)-A056640(n+1)` -/
def P15954874540038082329.Spec : Prop :=
  ∀ n, P15954874540038082329.a n = A191902 n

end A191902

/-! ## A191902.P17048677019961015287

`A191484(n)+A191903(n)-A171714(n)`
-/

namespace A191902.P17048677019961015287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191484 n + (A191903 n - A171714 n)

end

end A191902.P17048677019961015287

namespace A191902

/-- `A191484(n)+A191903(n)-A171714(n)` -/
def P17048677019961015287.Spec : Prop :=
  ∀ n, P17048677019961015287.a n = A191902 n

end A191902

/-! ## A191902.P1385746992448887256

`A191484(n)+A191900(n)-A191494(n)`
-/

namespace A191902.P1385746992448887256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191484 n + (A191900 n - A191494 n)

end

end A191902.P1385746992448887256

namespace A191902

/-- `A191484(n)+A191900(n)-A191494(n)` -/
def P1385746992448887256.Spec : Prop :=
  ∀ n, P1385746992448887256.a n = A191902 n

end A191902

/-! ## A191902.P3389310556138448229

`∑[abs(Δ[A274325(n)])]`
-/

namespace A191902.P3389310556138448229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274325 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191902.P3389310556138448229

namespace A191902

/-- `∑[abs(Δ[A274325(n)])]` -/
def P3389310556138448229.Spec : Prop :=
  ∀ n, P3389310556138448229.a n = A191902 n

end A191902

/-! ## A191902.P14545509736043416411

`A274325(n+1)-1`
-/

namespace A191902.P14545509736043416411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274325 (n + 1) - 1

end

end A191902.P14545509736043416411

namespace A191902

/-- `A274325(n+1)-1` -/
def P14545509736043416411.Spec : Prop :=
  ∀ n, P14545509736043416411.a n = A191902 n

end A191902

/-! ## A191902.P14699134710154005060

`ceil((A000584(n+1)-1)/2)`
-/

namespace A191902.P14699134710154005060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000584 (n + 1) - 1 : ℚ) / 2⌉

end

end A191902.P14699134710154005060

namespace A191902

/-- `ceil((A000584(n+1)-1)/2)` -/
def P14699134710154005060.Spec : Prop :=
  ∀ n, P14699134710154005060.a n = A191902 n

end A191902

/-! ## A191902.P5859940190759036237

`round(((n+1)*Δ[A000538(n)]-1)/2)`
-/

namespace A191902.P5859940190759036237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℤ) * (f1 (n + 1) - f1 n) - 1 : ℚ) / 2)

end

end A191902.P5859940190759036237

namespace A191902

/-- `round(((n+1)*Δ[A000538(n)]-1)/2)` -/
def P5859940190759036237.Spec : Prop :=
  ∀ n, P5859940190759036237.a n = A191902 n

end A191902

/-! ## A191902.P9278699171283063796

`A036487(n+1)+A191484(n)-A036486(n+1)`
-/

namespace A191902.P9278699171283063796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 (n + 1) + (A191484 n - A036486 (n + 1))

end

end A191902.P9278699171283063796

namespace A191902

/-- `A036487(n+1)+A191484(n)-A036486(n+1)` -/
def P9278699171283063796.Spec : Prop :=
  ∀ n, P9278699171283063796.a n = A191902 n

end A191902

/-! ## A191902.P101225777519141505

`A021003(n+1)-A008621(2*n)`
-/

namespace A191902.P101225777519141505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021003 (n + 1) - A008621 (2 * n)

end

end A191902.P101225777519141505

namespace A191902

/-- `A021003(n+1)-A008621(2*n)` -/
def P101225777519141505.Spec : Prop :=
  ∀ n, P101225777519141505.a n = A191902 n

end A191902

/-! ## A191902.P9851746267209373954

`A021003(n+1)-A117910(3*n)`
-/

namespace A191902.P9851746267209373954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021003 (n + 1) - A117910 (3 * n)

end

end A191902.P9851746267209373954

namespace A191902

/-- `A021003(n+1)-A117910(3*n)` -/
def P9851746267209373954.Spec : Prop :=
  ∀ n, P9851746267209373954.a n = A191902 n

end A191902

/-!
# A191903: Number of compositions of odd natural numbers into 4 parts <= n.

The programs for A191903, the canonical program `A191903.P5998615871764801794` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191903 has offset 0).

The definition of A191903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191903.P5998615871764801794

`floor((n+1)^4/2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191903

/-- `floor((n+1)^4/2)` -/
def P5998615871764801794.Spec : Prop :=
  ∀ n, P5998615871764801794.a n = A191903 n

theorem P5998615871764801794.correct : P5998615871764801794.Spec := by
  intro n
  simp only [A191903]

end A191903

/-! ## A191903.P15582490559992015766

`8*A011863(n+1)`
-/

namespace A191903.P15582490559992015766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A011863 (n + 1)

end

end A191903.P15582490559992015766

namespace A191903

/-- `8*A011863(n+1)` -/
def P15582490559992015766.Spec : Prop :=
  ∀ n, P15582490559992015766.a n = A191903 n

end A191903

/-! ## A191903.P16637828657097001978

`round(sinh(4*log(n+1)))`
-/

namespace A191903.P16637828657097001978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (4 * Real.log (n + 1 : ℝ)))

end

end A191903.P16637828657097001978

namespace A191903

/-- `round(sinh(4*log(n+1)))` -/
def P16637828657097001978.Spec : Prop :=
  ∀ n, P16637828657097001978.a n = A191903 n

end A191903

/-! ## A191903.P10335463311763073803

`round(cot(2/(n+1)^4))`
-/

namespace A191903.P10335463311763073803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / ((n + 1) ^ 4 : ℚ) : ℝ))

end

end A191903.P10335463311763073803

namespace A191903

/-- `round(cot(2/(n+1)^4))` -/
def P10335463311763073803.Spec : Prop :=
  ∀ n, P10335463311763073803.a n = A191903 n

end A191903

/-! ## A191903.P6702186253432927073

`and(-2, (n+1)^4)/2`
-/

namespace A191903.P6702186253432927073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) ((n + 1) ^ 4 : ℤ) : ℚ) / 2

end

end A191903.P6702186253432927073

namespace A191903

/-- `and(-2, (n+1)^4)/2` -/
def P6702186253432927073.Spec : Prop :=
  ∀ n, P6702186253432927073.a n = (A191903 n : ℚ)

end A191903

/-! ## A191903.P3408550020606251222

`lcm(2, floor((n+1)²²/2))`
-/

namespace A191903.P3408550020606251222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌊(((n + 1) ^ 2) ^ 2 : ℚ) / 2⌋

end

end A191903.P3408550020606251222

namespace A191903

/-- `lcm(2, floor((n+1)²²/2))` -/
def P3408550020606251222.Spec : Prop :=
  ∀ n, (P3408550020606251222.a n : ℤ) = A191903 n

end A191903

/-! ## A191903.P2135984581600609913

`2*∑[Δ[or(1, n^4)]/4]`
-/

namespace A191903.P2135984581600609913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 4)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191903.P2135984581600609913

namespace A191903

/-- `2*∑[Δ[or(1, n^4)]/4]` -/
def P2135984581600609913.Spec : Prop :=
  ∀ n, P2135984581600609913.a n = (A191903 n : ℚ)

end A191903

/-! ## A191903.P13245845363333468156

`((n+1)²²-and(1, n+1))/2`
-/

namespace A191903.P13245845363333468156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ 2) ^ 2 : ℤ) - (Nat.land 1 (n + 1) : ℤ) : ℚ) / 2

end

end A191903.P13245845363333468156

namespace A191903

/-- `((n+1)²²-and(1, n+1))/2` -/
def P13245845363333468156.Spec : Prop :=
  ∀ n, P13245845363333468156.a n = (A191903 n : ℚ)

end A191903

/-! ## A191903.P7204411968072850878

`(n²+1+n)²-(a(n-1)+1)` with `a(0)=0`
-/

namespace A191903.P7204411968072850878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n ^ 2 + 1 + n) ^ 2 : ℤ) - (a (n - 1) + 1)

end

end A191903.P7204411968072850878

namespace A191903

/-- `(n²+1+n)²-(a(n-1)+1)` -/
def P7204411968072850878.Spec : Prop :=
  ∀ n, P7204411968072850878.a n = A191903 n

end A191903

/-! ## A191903.P5781891413702448582

`∑[2*A212960(n)]`
-/

namespace A191903.P5781891413702448582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191903.P5781891413702448582

namespace A191903

/-- `∑[2*A212960(n)]` -/
def P5781891413702448582.Spec : Prop :=
  ∀ n, P5781891413702448582.a n = A191903 n

end A191903

/-! ## A191903.P3789762474148859700

`∑[8*A019298(n)]`
-/

namespace A191903.P3789762474148859700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A019298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191903.P3789762474148859700

namespace A191903

/-- `∑[8*A019298(n)]` -/
def P3789762474148859700.Spec : Prop :=
  ∀ n, P3789762474148859700.a n = A191903 n

end A191903

/-! ## A191903.P344409267834384069

`or(1, A171714(n))-1`
-/

namespace A191903.P344409267834384069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A171714 n) - 1

end

end A191903.P344409267834384069

namespace A191903

/-- `or(1, A171714(n))-1` -/
def P344409267834384069.Spec : Prop :=
  ∀ n, P344409267834384069.a n = A191903 n

end A191903

/-! ## A191903.P692432233417716151

`round(A123865(n+1)/2)`
-/

namespace A191903.P692432233417716151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A123865 (n + 1) : ℚ) / 2)

end

end A191903.P692432233417716151

namespace A191903

/-- `round(A123865(n+1)/2)` -/
def P692432233417716151.Spec : Prop :=
  ∀ n, P692432233417716151.a n = A191903 n

end A191903

/-! ## A191903.P2009718193835684936

`∑[A005898(n)-or(1, n)]`
-/

namespace A191903.P2009718193835684936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n - (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191903.P2009718193835684936

namespace A191903

/-- `∑[A005898(n)-or(1, n)]` -/
def P2009718193835684936.Spec : Prop :=
  ∀ n, P2009718193835684936.a n = A191903 n

end A191903

/-! ## A191903.P3276683362399345407

`∑[∑[4*A238410(n+1)]]`
-/

namespace A191903.P3276683362399345407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A238410 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191903.P3276683362399345407

namespace A191903

/-- `∑[∑[4*A238410(n+1)]]` -/
def P3276683362399345407.Spec : Prop :=
  ∀ n, P3276683362399345407.a n = A191903 n

end A191903

/-! ## A191903.P9469980094606262669

`A105374(n)+a(n-2)` with `a(0)=0, a(1)=8`
-/

namespace A191903.P9469980094606262669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n a =>
  A105374 n + a (n - 2)

end

end A191903.P9469980094606262669

namespace A191903

/-- `A105374(n)+a(n-2)` -/
def P9469980094606262669.Spec : Prop :=
  ∀ n, P9469980094606262669.a n = A191903 n

end A191903

/-! ## A191903.P12674576377816109848

`ceil((A000290(n+1)²-1)/2)`
-/

namespace A191903.P12674576377816109848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000290 (n + 1) ^ 2 - 1 : ℚ) / 2⌉

end

end A191903.P12674576377816109848

namespace A191903

/-- `ceil((A000290(n+1)²-1)/2)` -/
def P12674576377816109848.Spec : Prop :=
  ∀ n, P12674576377816109848.a n = A191903 n

end A191903

/-! ## A191903.P15237877399551679015

`ceil(((A005563(n)+1)²-1)/2)`
-/

namespace A191903.P15237877399551679015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A005563 n + 1) ^ 2 - 1 : ℚ) / 2⌉

end

end A191903.P15237877399551679015

namespace A191903

/-- `ceil(((A005563(n)+1)²-1)/2)` -/
def P15237877399551679015.Spec : Prop :=
  ∀ n, P15237877399551679015.a n = A191903 n

end A191903

/-! ## A191903.P6593711202673565715

`A171714(n)-A059841(n)`
-/

namespace A191903.P6593711202673565715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171714 n - A059841 n

end

end A191903.P6593711202673565715

namespace A191903

/-- `A171714(n)-A059841(n)` -/
def P6593711202673565715.Spec : Prop :=
  ∀ n, P6593711202673565715.a n = A191903 n

end A191903

/-! ## A191903.P14730258499513464616

`A213045(n)+A172123(n+1)`
-/

namespace A191903.P14730258499513464616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213045 n + A172123 (n + 1)

end

end A191903.P14730258499513464616

namespace A191903

/-- `A213045(n)+A172123(n+1)` -/
def P14730258499513464616.Spec : Prop :=
  ∀ n, P14730258499513464616.a n = A191903 n

end A191903

/-!
# A191904: Square array read by antidiagonals up: T(n,k) = 1-k if k divides n, else 1.

The programs for A191904, the canonical program `A191904.P13641530380614696573` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191904 has offset 1).

The definition of A191904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191904.P5676864156494127887

`1-A127093(comp[∑[n]])`
-/

namespace A191904.P5676864156494127887
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A127093 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A191904.P5676864156494127887

namespace A191904

/-- `1-A127093(comp[∑[n]])` -/
def P5676864156494127887.Spec : Prop :=
  ∀ n, P5676864156494127887.a n = A191904 (n + 1)

end A191904

/-! ## A191904.P2634286153616837049

`A051127(n+1)-A048158(n+1)`
-/

namespace A191904.P2634286153616837049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051127 (n + 1) - A048158 (n + 1)

end

end A191904.P2634286153616837049

namespace A191904

/-- `A051127(n+1)-A048158(n+1)` -/
def P2634286153616837049.Spec : Prop :=
  ∀ n, P2634286153616837049.a n = A191904 (n + 1)

end A191904

/-! ## A191904.P13641530380614696573

`1-A002260(n+1)*A077049(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A191904

/-- `1-A002260(n+1)*A077049(n+1)` -/
def P13641530380614696573.Spec : Prop :=
  ∀ n, P13641530380614696573.a n = A191904 (n + 1)

theorem P13641530380614696573.correct : P13641530380614696573.Spec := by
  intro n
  simp only [A191904, Nat.add_sub_cancel]

end A191904

/-! ## A191904.P15398274575677278190

`1-A003983(n+1)*A077049(n+1)`
-/

namespace A191904.P15398274575677278190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003983 (n + 1) * A077049 (n + 1)

end

end A191904.P15398274575677278190

namespace A191904

/-- `1-A003983(n+1)*A077049(n+1)` -/
def P15398274575677278190.Spec : Prop :=
  ∀ n, P15398274575677278190.a n = A191904 (n + 1)

end A191904

/-! ## A191904.P3497035646239752667

`1-A003989(n+1)*A077049(n+1)`
-/

namespace A191904.P3497035646239752667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003989 (n + 1) * A077049 (n + 1)

end

end A191904.P3497035646239752667

namespace A191904

/-- `1-A003989(n+1)*A077049(n+1)` -/
def P3497035646239752667.Spec : Prop :=
  ∀ n, P3497035646239752667.a n = A191904 (n + 1)

end A191904

/-! ## A191904.P10656691768841643611

`A024000(A127093(∑[A035214(n)]))`
-/

namespace A191904.P10656691768841643611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A127093 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A191904.P10656691768841643611

namespace A191904

/-- `A024000(A127093(∑[A035214(n)]))` -/
def P10656691768841643611.Spec : Prop :=
  ∀ n, P10656691768841643611.a n = A191904 (n + 1)

end A191904

/-! ## A191904.P4874321111915533910

`A051127(n+1)-A051127(A122797(n+1))`
-/

namespace A191904.P4874321111915533910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051127 (n + 1) - A051127 (A122797 (n + 1)).toNat

end

end A191904.P4874321111915533910

namespace A191904

/-- `A051127(n+1)-A051127(A122797(n+1))` -/
def P4874321111915533910.Spec : Prop :=
  ∀ n, P4874321111915533910.a n = A191904 (n + 1)

end A191904

/-! ## A191904.P3127360521972795971

`A048158(A080036(n))-A048158(n+1)`
-/

namespace A191904.P3127360521972795971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A080036 n).toNat - A048158 (n + 1)

end

end A191904.P3127360521972795971

namespace A191904

/-- `A048158(A080036(n))-A048158(n+1)` -/
def P3127360521972795971.Spec : Prop :=
  ∀ n, P3127360521972795971.a n = A191904 (n + 1)

end A191904

/-! ## A191904.P7241863929772887418

`A191907(A038722(n+1))`
-/

namespace A191904.P7241863929772887418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191907 (A038722 (n + 1)).toNat

end

end A191904.P7241863929772887418

namespace A191904

/-- `A191907(A038722(n+1))` -/
def P7241863929772887418.Spec : Prop :=
  ∀ n, P7241863929772887418.a n = A191904 (n + 1)

end A191904

/-! ## A191904.P12078760060559023125

`A191907(A061579(n)+1)`
-/

namespace A191904.P12078760060559023125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191907 (A061579 n + 1).toNat

end

end A191904.P12078760060559023125

namespace A191904

/-- `A191907(A061579(n)+1)` -/
def P12078760060559023125.Spec : Prop :=
  ∀ n, P12078760060559023125.a n = A191904 (n + 1)

end A191904

/-! ## A191904.P6810036665349592103

`A191907(A002024(n+1)²-n)`
-/

namespace A191904.P6810036665349592103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191907 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A191904.P6810036665349592103

namespace A191904

/-- `A191907(A002024(n+1)²-n)` -/
def P6810036665349592103.Spec : Prop :=
  ∀ n, P6810036665349592103.a n = A191904 (n + 1)

end A191904

/-! ## A191904.P5180142619509337120

`A048158(comp[∑[n]])-A048158(n+1)`
-/

namespace A191904.P5180142619509337120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A048158 (n + 1)

end

end A191904.P5180142619509337120

namespace A191904

/-- `A048158(comp[∑[n]])-A048158(n+1)` -/
def P5180142619509337120.Spec : Prop :=
  ∀ n, P5180142619509337120.a n = A191904 (n + 1)

end A191904

/-! ## A191904.P5939442820469572967

`-A176079(comp[∑[n]])`
-/

namespace A191904.P5939442820469572967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A176079 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A191904.P5939442820469572967

namespace A191904

/-- `-A176079(comp[∑[n]])` -/
def P5939442820469572967.Spec : Prop :=
  ∀ n, P5939442820469572967.a n = A191904 (n + 1)

end A191904

/-! ## A191904.P7139112284716107124

`A191907(A278818(n))`
-/

namespace A191904.P7139112284716107124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191907 (A278818 n).toNat

end

end A191904.P7139112284716107124

namespace A191904

/-- `A191907(A278818(n))` -/
def P7139112284716107124.Spec : Prop :=
  ∀ n, P7139112284716107124.a n = A191904 (n + 1)

end A191904

/-! ## A191904.P8444503127036032669

`1-A000005(A059268(n))*A077049(n+1)`
-/

namespace A191904.P8444503127036032669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000005 (A059268 n).toNat * A077049 (n + 1)

end

end A191904.P8444503127036032669

namespace A191904

/-- `1-A000005(A059268(n))*A077049(n+1)` -/
def P8444503127036032669.Spec : Prop :=
  ∀ n, P8444503127036032669.a n = A191904 (n + 1)

end A191904

/-! ## A191904.P10467815586610080659

`A173539(n+1)-A002262(n)`
-/

namespace A191904.P10467815586610080659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173539 (n + 1) - A002262 n

end

end A191904.P10467815586610080659

namespace A191904

/-- `A173539(n+1)-A002262(n)` -/
def P10467815586610080659.Spec : Prop :=
  ∀ n, P10467815586610080659.a n = A191904 (n + 1)

end A191904

/-! ## A191904.P4910901372959043583

`A173539(n+1)-A025675(n+1)`
-/

namespace A191904.P4910901372959043583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173539 (n + 1) - A025675 (n + 1)

end

end A191904.P4910901372959043583

namespace A191904

/-- `A173539(n+1)-A025675(n+1)` -/
def P4910901372959043583.Spec : Prop :=
  ∀ n, P4910901372959043583.a n = A191904 (n + 1)

end A191904

/-!
# A191906: The remainder of (product of proper divisors of n) mod (sum of proper divisors of n).

The programs for A191906, the canonical program `A191906.P16831451749657423421` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191906 has offset 2).

The definition of A191906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5038 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191906.P12727792690230933810

`A007956(n+2)%A001065(n+2)`
-/

namespace A191906.P12727792690230933810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007956 (n + 2)) (A001065 (n + 2))

end

end A191906.P12727792690230933810

namespace A191906

/-- `A007956(n+2)%A001065(n+2)` -/
def P12727792690230933810.Spec : Prop :=
  ∀ n, P12727792690230933810.a n = A191906 (n + 2)

end A191906

/-! ## A191906.P16831451749657423421

`A066729(n+2)%A001065(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A191906

/-- `A066729(n+2)%A001065(n+2)` -/
def P16831451749657423421.Spec : Prop :=
  ∀ n, P16831451749657423421.a n = A191906 (n + 2)

theorem P16831451749657423421.correct : P16831451749657423421.Spec := by
  intro n
  simp only [A191906, Nat.add_sub_cancel]

end A191906

/-! ## A191906.P18223577083331683525

`A157195(n+2)%A001065(n+2)`
-/

namespace A191906.P18223577083331683525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157195 (n + 2)) (A001065 (n + 2))

end

end A191906.P18223577083331683525

namespace A191906

/-- `A157195(n+2)%A001065(n+2)` -/
def P18223577083331683525.Spec : Prop :=
  ∀ n, P18223577083331683525.a n = A191906 (n + 2)

end A191906

/-!
# A191907: Square array read by antidiagonals up: T(n,k) = -(n-1) if n divides k, else 1.

The programs for A191907, the canonical program `A191907.P6778175255354609110` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191907 has offset 1).

The definition of A191907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191907.P6416124364632869656

`A177121(n+1)-char[∑[n-1]]`
-/

namespace A191907.P6416124364632869656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177121 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A191907.P6416124364632869656

namespace A191907

/-- `A177121(n+1)-char[∑[n-1]]` -/
def P6416124364632869656.Spec : Prop :=
  ∀ n, P6416124364632869656.a n = A191907 (n + 1)

end A191907

/-! ## A191907.P6778175255354609110

`A023532(n)*A177121(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A191907

/-- `A023532(n)*A177121(n+1)` -/
def P6778175255354609110.Spec : Prop :=
  ∀ n, P6778175255354609110.a n = A191907 (n + 1)

theorem P6778175255354609110.correct : P6778175255354609110.Spec := by
  intro n
  simp only [A191907, Nat.add_sub_cancel]

end A191907

/-! ## A191907.P7613645480892877983

`A177121(n+1)%A027421(n)`
-/

namespace A191907.P7613645480892877983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177121 (n + 1)) (A027421 n)

end

end A191907.P7613645480892877983

namespace A191907

/-- `A177121(n+1)%A027421(n)` -/
def P7613645480892877983.Spec : Prop :=
  ∀ n, P7613645480892877983.a n = A191907 (n + 1)

end A191907

/-! ## A191907.P18388948675301802586

`xor(A023531(n), A177121(n+1))`
-/

namespace A191907.P18388948675301802586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023531 n) (A177121 (n + 1))

end

end A191907.P18388948675301802586

namespace A191907

/-- `xor(A023531(n), A177121(n+1))` -/
def P18388948675301802586.Spec : Prop :=
  ∀ n, P18388948675301802586.a n = A191907 (n + 1)

end A191907

/-! ## A191907.P10097327585025806369

`Δ[A083920(n)]*A177121(n+1)`
-/

namespace A191907.P10097327585025806369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A177121 (n + 1)

end

end A191907.P10097327585025806369

namespace A191907

/-- `Δ[A083920(n)]*A177121(n+1)` -/
def P10097327585025806369.Spec : Prop :=
  ∀ n, P10097327585025806369.a n = A191907 (n + 1)

end A191907

/-! ## A191907.P6477521195450002918

`A051126(n+1)-A051777(n+1)`
-/

namespace A191907.P6477521195450002918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051126 (n + 1) - A051777 (n + 1)

end

end A191907.P6477521195450002918

namespace A191907

/-- `A051126(n+1)-A051777(n+1)` -/
def P6477521195450002918.Spec : Prop :=
  ∀ n, P6477521195450002918.a n = A191907 (n + 1)

end A191907

/-! ## A191907.P15878358433721869377

`1-A127093(A099375(n)+1+n)`
-/

namespace A191907.P15878358433721869377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A127093 (A099375 n + 1 + (n : ℤ)).toNat

end

end A191907.P15878358433721869377

namespace A191907

/-- `1-A127093(A099375(n)+1+n)` -/
def P15878358433721869377.Spec : Prop :=
  ∀ n, P15878358433721869377.a n = A191907 (n + 1)

end A191907

/-! ## A191907.P13828971753933307554

`1-A077051(n+1)*A089688(n)`
-/

namespace A191907.P13828971753933307554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077051 (n + 1) * A089688 n

end

end A191907.P13828971753933307554

namespace A191907

/-- `1-A077051(n+1)*A089688(n)` -/
def P13828971753933307554.Spec : Prop :=
  ∀ n, P13828971753933307554.a n = A191907 (n + 1)

end A191907

/-! ## A191907.P13697638902466608900

`round(A177121(n+1)-1/A078812(n))`
-/

namespace A191907.P13697638902466608900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A177121 (n + 1) : ℚ) - 1 / (A078812 n : ℚ))

end

end A191907.P13697638902466608900

namespace A191907

/-- `round(A177121(n+1)-1/A078812(n))` -/
def P13697638902466608900.Spec : Prop :=
  ∀ n, P13697638902466608900.a n = A191907 (n + 1)

end A191907

/-! ## A191907.P2760001364944783555

`and(Δ[A038722(n+1)], A177121(n+1))`
-/

namespace A191907.P2760001364944783555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A177121 (n + 1))

end

end A191907.P2760001364944783555

namespace A191907

/-- `and(Δ[A038722(n+1)], A177121(n+1))` -/
def P2760001364944783555.Spec : Prop :=
  ∀ n, P2760001364944783555.a n = A191907 (n + 1)

end A191907

/-! ## A191907.P16569111214469210528

`A083920(A177121(n+1)+n)-A083920(n)`
-/

namespace A191907.P16569111214469210528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A177121 (n + 1) + (n : ℤ)).toNat - A083920 n

end

end A191907.P16569111214469210528

namespace A191907

/-- `A083920(A177121(n+1)+n)-A083920(n)` -/
def P16569111214469210528.Spec : Prop :=
  ∀ n, P16569111214469210528.a n = A191907 (n + 1)

end A191907

/-! ## A191907.P10548944438974326035

`A051777(A014132(n+1)+1)-A051777(n+1)`
-/

namespace A191907.P10548944438974326035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (A014132 (n + 1) + 1).toNat - A051777 (n + 1)

end

end A191907.P10548944438974326035

namespace A191907

/-- `A051777(A014132(n+1)+1)-A051777(n+1)` -/
def P10548944438974326035.Spec : Prop :=
  ∀ n, P10548944438974326035.a n = A191907 (n + 1)

end A191907

/-! ## A191907.P9465472445715008129

`A051777(A003057(n+2)+n+1)-A051777(n+1)`
-/

namespace A191907.P9465472445715008129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (A003057 (n + 2) + (n : ℤ) + 1).toNat - A051777 (n + 1)

end

end A191907.P9465472445715008129

namespace A191907

/-- `A051777(A003057(n+2)+n+1)-A051777(n+1)` -/
def P9465472445715008129.Spec : Prop :=
  ∀ n, P9465472445715008129.a n = A191907 (n + 1)

end A191907

/-! ## A191907.P7520944130458538306

`A023531(A023531(n)*A177121(n+1))*A177121(n+1)`
-/

namespace A191907.P7520944130458538306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (A023531 n * A177121 (n + 1)).toNat * A177121 (n + 1)

end

end A191907.P7520944130458538306

namespace A191907

/-- `A023531(A023531(n)*A177121(n+1))*A177121(n+1)` -/
def P7520944130458538306.Spec : Prop :=
  ∀ n, P7520944130458538306.a n = A191907 (n + 1)

end A191907

/-! ## A191907.P17629851168374257149

`and(Δ[A061579(n)], A177121(n+1))`
-/

namespace A191907.P17629851168374257149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A177121 (n + 1))

end

end A191907.P17629851168374257149

namespace A191907

/-- `and(Δ[A061579(n)], A177121(n+1))` -/
def P17629851168374257149.Spec : Prop :=
  ∀ n, P17629851168374257149.a n = A191907 (n + 1)

end A191907

/-! ## A191907.P17758458342005265164

`A002024(n+1)-(A002024(n+2)-A177121(n+1))`
-/

namespace A191907.P17758458342005265164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - (A002024 (n + 2) - A177121 (n + 1))

end

end A191907.P17758458342005265164

namespace A191907

/-- `A002024(n+1)-(A002024(n+2)-A177121(n+1))` -/
def P17758458342005265164.Spec : Prop :=
  ∀ n, P17758458342005265164.a n = A191907 (n + 1)

end A191907

/-! ## A191907.P11599805162284599614

`A191904(A038722(n+1))`
-/

namespace A191907.P11599805162284599614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191904 (A038722 (n + 1)).toNat

end

end A191907.P11599805162284599614

namespace A191907

/-- `A191904(A038722(n+1))` -/
def P11599805162284599614.Spec : Prop :=
  ∀ n, P11599805162284599614.a n = A191907 (n + 1)

end A191907

/-!
# A191908: a(n) = Sum_{k=0..n} (k+1)^(n-1)*k!*StirlingS2(n,k).

The programs for A191908, there is no canonical definition to state claims against.
-/

/-! ## A191908.P14411713850353488080

`A383410(A092463(n+1))`
-/

namespace A191908.P14411713850353488080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383410 (A092463 (n + 1)).toNat

end

end A191908.P14411713850353488080

/-!
# A191910: Triangle read by rows: T(n,n)=n; T(n,k) = k-1 if k divides n and k < n, otherwise -1.

The programs for A191910, the canonical program `A191910.P11685670682958930902` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191910 has offset 1).

The definition of A191910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191910.P9107109238502891541

`A176079(n+1)+char[∑[n-1]]`
-/

namespace A191910.P9107109238502891541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176079 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A191910.P9107109238502891541

namespace A191910

/-- `A176079(n+1)+char[∑[n-1]]` -/
def P9107109238502891541.Spec : Prop :=
  ∀ n, P9107109238502891541.a n = A191910 (n + 1)

end A191910

/-! ## A191910.P9432281885906365100

`A127093(n+1)-char[comp[∑[n-1]]]`
-/

namespace A191910.P9432281885906365100
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
  A127093 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A191910.P9432281885906365100

namespace A191910

/-- `A127093(n+1)-char[comp[∑[n-1]]]` -/
def P9432281885906365100.Spec : Prop :=
  ∀ n, P9432281885906365100.a n = A191910 (n + 1)

end A191910

/-! ## A191910.P11685670682958930902

`A127093(n+1)+A023531(n)-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A191910

/-- `A127093(n+1)+A023531(n)-1` -/
def P11685670682958930902.Spec : Prop :=
  ∀ n, P11685670682958930902.a n = A191910 (n + 1)

theorem P11685670682958930902.correct : P11685670682958930902.Spec := by
  intro n
  simp only [A191910, Nat.add_sub_cancel]

end A191910

/-! ## A191910.P4198696774563920855

`A128138(n+1)-A173541(n+1)`
-/

namespace A191910.P4198696774563920855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128138 (n + 1) - A173541 (n + 1)

end

end A191910.P4198696774563920855

namespace A191910

/-- `A128138(n+1)-A173541(n+1)` -/
def P4198696774563920855.Spec : Prop :=
  ∀ n, P4198696774563920855.a n = A191910 (n + 1)

end A191910

/-! ## A191910.P17043280041403605293

`A372727(n+1)-A048158(n+1)`
-/

namespace A191910.P17043280041403605293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372727 (n + 1) - A048158 (n + 1)

end

end A191910.P17043280041403605293

namespace A191910

/-- `A372727(n+1)-A048158(n+1)` -/
def P17043280041403605293.Spec : Prop :=
  ∀ n, P17043280041403605293.a n = A191910 (n + 1)

end A191910

/-! ## A191910.P6994296658200256325

`A127093(n+1)+∑[A103452(n)]-1`
-/

namespace A191910.P6994296658200256325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A191910.P6994296658200256325

namespace A191910

/-- `A127093(n+1)+∑[A103452(n)]-1` -/
def P6994296658200256325.Spec : Prop :=
  ∀ n, P6994296658200256325.a n = A191910 (n + 1)

end A191910

/-! ## A191910.P7542438589289973277

`Δ[A003056(n)]+A127093(n+1)-1`
-/

namespace A191910.P7542438589289973277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A127093 (n + 1) - 1)

end

end A191910.P7542438589289973277

namespace A191910

/-- `Δ[A003056(n)]+A127093(n+1)-1` -/
def P7542438589289973277.Spec : Prop :=
  ∀ n, P7542438589289973277.a n = A191910 (n + 1)

end A191910

/-! ## A191910.P8716038707375746099

`char[A000096(n)]+A127093(n+1)-1`
-/

namespace A191910.P8716038707375746099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A127093 (n + 1) - 1)

end

end A191910.P8716038707375746099

namespace A191910

/-- `char[A000096(n)]+A127093(n+1)-1` -/
def P8716038707375746099.Spec : Prop :=
  ∀ n, P8716038707375746099.a n = A191910 (n + 1)

end A191910

/-! ## A191910.P15588184164118041294

`A010054(n+1)+A127093(n+1)-1`
-/

namespace A191910.P15588184164118041294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) + (A127093 (n + 1) - 1)

end

end A191910.P15588184164118041294

namespace A191910

/-- `A010054(n+1)+A127093(n+1)-1` -/
def P15588184164118041294.Spec : Prop :=
  ∀ n, P15588184164118041294.a n = A191910 (n + 1)

end A191910

/-! ## A191910.P9654011289672548959

`A010766(n+1)+A372727(n+1)-A234575(n+1)`
-/

namespace A191910.P9654011289672548959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) + (A372727 (n + 1) - A234575 (n + 1))

end

end A191910.P9654011289672548959

namespace A191910

/-- `A010766(n+1)+A372727(n+1)-A234575(n+1)` -/
def P9654011289672548959.Spec : Prop :=
  ∀ n, P9654011289672548959.a n = A191910 (n + 1)

end A191910

/-! ## A191910.P10721206367767079651

`A127093(n+1)+1-Δ[A133280(n)]`
-/

namespace A191910.P10721206367767079651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) + 1 - (f1 (n + 1) - f1 n)

end

end A191910.P10721206367767079651

namespace A191910

/-- `A127093(n+1)+1-Δ[A133280(n)]` -/
def P10721206367767079651.Spec : Prop :=
  ∀ n, P10721206367767079651.a n = A191910 (n + 1)

end A191910

/-! ## A191910.P3178288479932310377

`Δ[A014132(n+1)]+A127093(n+1)-2`
-/

namespace A191910.P3178288479932310377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A127093 (n + 1) - 2)

end

end A191910.P3178288479932310377

namespace A191910

/-- `Δ[A014132(n+1)]+A127093(n+1)-2` -/
def P3178288479932310377.Spec : Prop :=
  ∀ n, P3178288479932310377.a n = A191910 (n + 1)

end A191910

/-! ## A191910.P7127569875460436803

`A176079(A066182(n+2))`
-/

namespace A191910.P7127569875460436803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176079 (A066182 (n + 2)).toNat

end

end A191910.P7127569875460436803

namespace A191910

/-- `A176079(A066182(n+2))` -/
def P7127569875460436803.Spec : Prop :=
  ∀ n, P7127569875460436803.a n = A191910 (n + 1)

end A191910

/-!
# A191911: Semiprimes p*q such that the concatenation p||q is again a semiprime, where p <= q.

The programs for A191911, there is no canonical definition to state claims against.
-/

/-! ## A191911.P16373441599418130642

`A191912(A167619(n+1))`
-/

namespace A191911.P16373441599418130642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191912 (A167619 (n + 1)).toNat

end

end A191911.P16373441599418130642

/-! ## A191911.P10568271935397715155

`∩[A130048(n+1), A191912(n+1)]`
-/

namespace A191911.P10568271935397715155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191911.P10568271935397715155

/-! ## A191911.P10789942876280225613

`∩[A175968(n+1), A191912(n+1)]`
-/

namespace A191911.P10789942876280225613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191911.P10789942876280225613

/-!
# A191912: Semiprimes p*q such that the concatenation p||q or q||p is again a semiprime.

The programs for A191912, there is no canonical definition to state claims against.
-/

/-! ## A191912.P14262868360655300789

`∪[A191911(n+1), A191913(n+1)]`
-/

namespace A191912.P14262868360655300789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191912.P14262868360655300789

/-! ## A191912.P1550563325513896464

`∪[A191913(n+4), A191911(A077168(n))]`
-/

namespace A191912.P1550563325513896464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191913 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191911 (A077168 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191912.P1550563325513896464

/-! ## A191912.P2746401968761491050

`A113433(lt[A113445(n+1), A113460(3*n+1)])`
-/

namespace A191912.P2746401968761491050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113460 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113433 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191912.P2746401968761491050

/-! ## A191912.P17297234934771904799

`A001358(lt[A343670(3*n+2), A091300(n+1)])`
-/

namespace A191912.P17297234934771904799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343670 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191912.P17297234934771904799

/-! ## A191912.P17070534710420793114

`A001358(lt[A343670(3*n+2), A112771(n+1)])`
-/

namespace A191912.P17070534710420793114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343670 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191912.P17070534710420793114

/-!
# A191913: Products of two distinct primes such that a concatenation of the factors (p||q or q||p) again is a product of two distinct primes.

The programs for A191913, there is no canonical definition to state claims against.
-/

/-! ## A191913.P1286230699991711266

`∩[A113837(n+1), A191912(n+1)]`
-/

namespace A191913.P1286230699991711266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191913.P1286230699991711266

/-!
# A191915: Semiprimes p*q with p < q such that the concatenation p||q is again a product of two distinct primes.

The programs for A191915, there is no canonical definition to state claims against.
-/

/-! ## A191915.P15071607644769655684

`∩[A113837(n+1), A191911(n+1)]`
-/

namespace A191915.P15071607644769655684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191915.P15071607644769655684

/-! ## A191915.P14783825648384635179

`∩[A191911(A167619(n+1)), A191913(n+1)]`
-/

namespace A191915.P14783825648384635179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191911 (A167619 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191915.P14783825648384635179

/-! ## A191915.P1030276640808687198

`∩[A191913(n+1), A336986(n+1)]`
-/

namespace A191915.P1030276640808687198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191915.P1030276640808687198

/-!
# A191919: Ordered sequence of nonnegative differences c*f-d*g, where f and g are Lucas numbers (A000032 beginning at 1) and {c,d}={1,2}.

The programs for A191919, there is no canonical definition to state claims against.
-/

/-! ## A191919.P13345807848466775015

`∪[A191917(n+1), A191918(n+1)]`
-/

namespace A191919.P13345807848466775015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191919.P13345807848466775015

/-!
# A191922: Ordered sequence of nonnegative differences 3*f-g, where f and g are Lucas numbers (A000032 beginning at 1).

The programs for A191922, there is no canonical definition to state claims against.
-/

/-! ## A191922.P12707657166739780325

`A191923(n+1)%A316489(n+1)`
-/

namespace A191922.P12707657166739780325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191923 (n + 1)) (A316489 (n + 1))

end

end A191922.P12707657166739780325

/-! ## A191922.P7059923011036601671

`A280810(∑[n]+1)+A191923(n+1)`
-/

namespace A191922.P7059923011036601671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280810 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A191923 (n + 1)

end

end A191922.P7059923011036601671

/-! ## A191922.P4050434059466121447

`A191923(n+1)+A010894(A132047(n))`
-/

namespace A191922.P4050434059466121447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191923 (n + 1) + A010894 ((A132047 n).toNat + 21)

end

end A191922.P4050434059466121447

/-! ## A191922.P13914536364755100361

`A191923(n+1)+A045840(A103999(n))`
-/

namespace A191922.P13914536364755100361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191923 (n + 1) + A045840 (A103999 n).toNat

end

end A191922.P13914536364755100361

/-! ## A191922.P4999058436824770779

`A191923(n+1)+A010051(A083353(n+3))`
-/

namespace A191922.P4999058436824770779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191923 (n + 1) + A010051 (A083353 (n + 3)).toNat

end

end A191922.P4999058436824770779

/-!
# A191923: Ordered sequence of nonnegative differences c*f-d*g, where f and g are Lucas numbers (A000032 beginning at 1) and {c,d}={1,3}.

The programs for A191923, there is no canonical definition to state claims against.
-/

/-! ## A191923.P9569481081410202955

`∪[A191921(n+1), A191922(n+1)]`
-/

namespace A191923.P9569481081410202955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191923.P9569481081410202955

/-!
# A191924: Ordered sums 2*f+3*g, where f and g are Lucas numbers (A000032 beginning at 1).

The programs for A191924, there is no canonical definition to state claims against.
-/

/-! ## A191924.P5677331435542163546

`lt[52, A188653(A188706(n+2))]`
-/

namespace A191924.P5677331435542163546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188653 (A188706 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191924.P5677331435542163546

/-! ## A191924.P13092248419843926874

`lt[A319845(A107030(n)), A060778(2*(n+2))]`
-/

namespace A191924.P13092248419843926874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319845 (A107030 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060778 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191924.P13092248419843926874

/-!
# A191926: Ordered sequence of nonnegative differences 3f-2g, where f and g are Lucas numbers (A000032 beginning at 1).

The programs for A191926, there is no canonical definition to state claims against.
-/

/-! ## A191926.P7922975259709250446

`lt[A175488(A096900(2*(n+1))), 2]`
-/

namespace A191926.P7922975259709250446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175488 (A096900 (2 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A191926.P7922975259709250446

/-! ## A191926.P752242886736756046

`eq[A024316(n+1), A185284(n+10)]`
-/

namespace A191926.P752242886736756046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191926.P752242886736756046

/-! ## A191926.P9663426618357206032

`eq[A024316(n+1), A122717(A080513(n))]`
-/

namespace A191926.P9663426618357206032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122717 (A080513 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191926.P9663426618357206032

/-! ## A191926.P8760273899515954018

`eq[A337772(n+3), A337787(A337763(n+2))]`
-/

namespace A191926.P8760273899515954018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337772 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337787 (A337763 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191926.P8760273899515954018

/-! ## A191926.P4706116826447987580

`A003313(A092566(n)+n)`
-/

namespace A191926.P4706116826447987580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A092566 n + (n : ℤ)).toNat

end

end A191926.P4706116826447987580

/-!
# A191927: Ordered sequence of nonnegative differences c*f-d*g, where f and g are Lucas numbers (A000032 beginning at 1) and {c,d}={2,3}.

The programs for A191927, there is no canonical definition to state claims against.
-/

/-! ## A191927.P18401766325023902436

`∪[A191925(n+1), A191926(n+1)]`
-/

namespace A191927.P18401766325023902436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191927.P18401766325023902436

/-!
# A191928: Array read by antidiagonals: T(m,n) = floor(m/2)*floor((m-1)/2)*floor(n/2)*floor((n-1)/2).

The programs for A191928, there is no canonical definition to state claims against.
-/

/-! ## A191928.P10697617894666644963

`A043529(A253004(n+1))*A180472(n)`
-/

namespace A191928.P10697617894666644963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (A253004 (n + 1)).toNat * A180472 n

end

end A191928.P10697617894666644963

/-! ## A191928.P16278291383282771717

`A000034(A301823(n+1))*A180472(n)`
-/

namespace A191928.P16278291383282771717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A301823 (n + 1)).toNat * A180472 n

end

end A191928.P16278291383282771717

/-! ## A191928.P16037990072311833409

`A115722(A180496(n+5))*A180472(n)`
-/

namespace A191928.P16037990072311833409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 (A180496 (n + 5)).toNat * A180472 n

end

end A191928.P16037990072311833409

/-! ## A191928.P7328431585341587941

`A001221(A243618(n))*A180472(n)`
-/

namespace A191928.P7328431585341587941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A243618 n).toNat * A180472 n

end

end A191928.P7328431585341587941

/-! ## A191928.P7836304573435168589

`A033478(A350845(n+1))*A180472(n)`
-/

namespace A191928.P7836304573435168589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033478 (A350845 (n + 1)).toNat * A180472 n

end

end A191928.P7836304573435168589

/-! ## A191928.P16650849586700216920

`A020639(A181322(A053307(n)))*A180472(n)`
-/

namespace A191928.P16650849586700216920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A181322 (A053307 n).toNat).toNat * A180472 n

end

end A191928.P16650849586700216920

/-!
# A191929: Ordered sums f+4g, where f and g are Lucas numbers (A000032 beginning at 1).

The programs for A191929, there is no canonical definition to state claims against.
-/

/-! ## A191929.P9365501932104865549

`lt[A339564(3*n+2), A361902(A283543(n+1))]`
-/

namespace A191929.P9365501932104865549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339564 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361902 (A283543 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191929.P9365501932104865549

/-! ## A191929.P64374641846816014

`lt[A277751(A276553(n+1)), A345687(n+1)]`
-/

namespace A191929.P64374641846816014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277751 (A276553 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191929.P64374641846816014

/-! ## A191929.P9170734455336119557

`lt[7, A345167(A027746(n+1)*A348610(n+1))]`
-/

namespace A191929.P9170734455336119557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A027746 (n + 1) * A348610 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191929.P9170734455336119557

/-!
# A191930: Ordered sequence of nonnegative differences f-4g, where f and g are Lucas numbers (A000032 beginning at 1).

The programs for A191930, there is no canonical definition to state claims against.
-/

/-! ## A191930.P10037220489163923916

`lt[A304230(n+1), A225665(A245024(n+1))]`
-/

namespace A191930.P10037220489163923916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225665 (A245024 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191930.P10037220489163923916

/-!
# A191932: Ordered sequence of nonnegative differences c*f-d*g, where f and g are Lucas numbers (A000032 beginning at 1) and {c,d}={1,4}.

The programs for A191932, there is no canonical definition to state claims against.
-/

/-! ## A191932.P16379150345756657202

`∪[A191930(n+1), A191931(n+1)]`
-/

namespace A191932.P16379150345756657202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191932.P16379150345756657202

/-! ## A191932.P17583657736727451796

`lt[A003415(A328170(n)), A000041(n)]`
-/

namespace A191932.P17583657736727451796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A328170 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191932.P17583657736727451796

/-! ## A191932.P7913234231522246475

`lt[A061702(A194443(2*n)), A019546(n+3)]`
-/

namespace A191932.P7913234231522246475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (A194443 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191932.P7913234231522246475

/-! ## A191932.P2535951963708770156

`lt[A292712(A194443(2*n)), A151800(2*(n+1))]`
-/

namespace A191932.P2535951963708770156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292712 (A194443 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191932.P2535951963708770156

/-! ## A191932.P4438671018786888686

`lt[A365924(n+2), A255558(A083875(3*n+2))]`
-/

namespace A191932.P4438671018786888686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365924 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255558 (A083875 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191932.P4438671018786888686

/-!
# A191933: Numbers that are the concatenation of the decimal representation of two nonzero squares.

The programs for A191933, there is no canonical definition to state claims against.
-/

/-! ## A191933.P8084368868808649945

`lt[0, A193095(n)]`
-/

namespace A191933.P8084368868808649945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191933.P8084368868808649945

/-! ## A191933.P13585937748008075621

`eq[2, A000005(a(A193095(n)))]` with `a(0)=4`
-/

namespace A191933.P13585937748008075621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A193095 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191933.P13585937748008075621

/-! ## A191933.P13376158404884106687

`eq[2, A000165(a(A193095(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A191933.P13376158404884106687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A000165 (f2 (A193095 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191933.P13376158404884106687

/-! ## A191933.P13590938852485651153

`eq[A033685(n)^A193095(n), A033685(n)]`
-/

namespace A191933.P13590938852485651153
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033685 n : ℚ) ^ (A193095 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033685 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A191933.P13590938852485651153

/-! ## A191933.P12799974319333447206

`eq[2, lcm(2, A193095(A233583(n+1)))]`
-/

namespace A191933.P12799974319333447206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A193095 (A233583 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191933.P12799974319333447206

/-!
# A191934: Numbers n such that the imaginary quadratic number field Q(sqrt(-n)) has 2-class group of type (2,2,2).

The programs for A191934, there is no canonical definition to state claims against.
-/

/-! ## A191934.P2997635417963298974

`A305416(A345917(n+1))`
-/

namespace A191934.P2997635417963298974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305416 (A345917 (n + 1)).toNat

end

end A191934.P2997635417963298974

/-! ## A191934.P3072612653526894448

`A305416(lt[0, A124754(n)])`
-/

namespace A191934.P3072612653526894448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A191934.P3072612653526894448

/-! ## A191934.P14366298170627082343

`A305416(record[∑[A199339(n+1)]])`
-/

namespace A191934.P14366298170627082343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199339 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191934.P14366298170627082343

/-! ## A191934.P18127212023780738901

`A305416(A305429(n+1)+A140472(n))`
-/

namespace A191934.P18127212023780738901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305416 (A305429 (n + 1) + A140472 n).toNat

end

end A191934.P18127212023780738901

/-!
# A191935: Triangle read by rows of Legendre-Stirling numbers of the second kind.

The programs for A191935, there is no canonical definition to state claims against.
-/

/-! ## A191935.P6958477217139351772

`A071951(A038722(n+1))`
-/

namespace A191935.P6958477217139351772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (A038722 (n + 1)).toNat

end

end A191935.P6958477217139351772

/-! ## A191935.P6814324503002184705

`A071951(A061579(n)+1)`
-/

namespace A191935.P6814324503002184705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (A061579 n + 1).toNat

end

end A191935.P6814324503002184705

/-! ## A191935.P3069624619721781899

`A071951(A002024(n+1)²-n)`
-/

namespace A191935.P3069624619721781899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A191935.P3069624619721781899

/-! ## A191935.P5590409871071497540

`A071951(A057944(n)+A004736(n+1))`
-/

namespace A191935.P5590409871071497540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (A057944 n + A004736 (n + 1)).toNat

end

end A191935.P5590409871071497540

/-! ## A191935.P11489316401141774839

`A071951(A185869(n+1)-A016777(n))`
-/

namespace A191935.P11489316401141774839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (A185869 (n + 1) - A016777 n).toNat

end

end A191935.P11489316401141774839

/-!
# A191936: Triangle read by rows of Legendre-Stirling numbers of the first kind.

The programs for A191936, there is no canonical definition to state claims against.
-/

/-! ## A191936.P1769090070768151363

`A129467(∑[2*n]%(comp[∑[n+1]]+1))`
-/

namespace A191936.P1769090070768151363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129467 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1))

end

end A191936.P1769090070768151363

/-! ## A191936.P5812458717291915778

`A129467((2-A035214(n))*A061579(n))`
-/

namespace A191936.P5812458717291915778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129467 ((2 - A035214 n) * A061579 n).toNat

end

end A191936.P5812458717291915778

/-! ## A191936.P16360392035017207775

`A129467(∑[char[∑[n]]]²-(n+1))`
-/

namespace A191936.P16360392035017207775
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129467 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A191936.P16360392035017207775

/-! ## A191936.P17049173455997408257

`A129467(A061579(n))^A035214(n)`
-/

namespace A191936.P17049173455997408257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129467 (A061579 n).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A191936.P17049173455997408257

/-! ## A191936.P17091989689711300150

`A093178(2*(n+1))*A129467(A061579(n))`
-/

namespace A191936.P17091989689711300150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * (n + 1)) * A129467 (A061579 n).toNat

end

end A191936.P17091989689711300150

/-! ## A191936.P4694653050513018355

`A129467(A061579(n))%A038507(n)`
-/

namespace A191936.P4694653050513018355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129467 (A061579 n).toNat) (A038507 n)

end

end A191936.P4694653050513018355

/-!
# A191937: Number of simple arrangements of pseudolines of order n.

The programs for A191937, there is no canonical definition to state claims against.
-/

/-! ## A191937.P18166529382925824085

`A180500(∑[n]+n)`
-/

namespace A191937.P18166529382925824085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180500 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A191937.P18166529382925824085

/-!
# A191938: Number of simple full arrangements of pseudolines of order n.

The programs for A191938, there is no canonical definition to state claims against.
-/

/-! ## A191938.P1134102011452559174

`(5*a(n-1))^n-10` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A191938.P1134102011452559174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  (5 * a (n - 1)) ^ n - 10

end

end A191938.P1134102011452559174

/-!
# A191939: Number of arrangements of pseudolines of order n.

The programs for A191939, there is no canonical definition to state claims against.
-/

/-! ## A191939.P11384202752359833112

`A180501(∑[n]+n)`
-/

namespace A191939.P11384202752359833112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180501 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A191939.P11384202752359833112

/-!
# A191940: Number of full arrangements of pseudolines of order n.

The programs for A191940, there is no canonical definition to state claims against.
-/

/-! ## A191940.P5366152498599104041

`A211538(∑[(1-n)²]^(n-2))`
-/

namespace A191940.P5366152498599104041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat

end

end A191940.P5366152498599104041

/-!
# A191941: Number of simple one-marked arrangements of pseudolines of order n.

The programs for A191941, there is no canonical definition to state claims against.
-/

/-! ## A191941.P7845681423350248515

`A160412((A144562(n+1)^A366594(n))%A081105(n))/3`
-/

namespace A191941.P7845681423350248515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160412 (Int.tmod (SequenceMachineLib.roundAway ((A144562 (n + 1) : ℚ) ^ (A366594 n : ℤ))) (A081105 n)).toNat : ℚ) / 3

end

end A191941.P7845681423350248515

/-!
# A191945: Number of simple Mobius arrangements of pseudolines of order n.

The programs for A191945, there is no canonical definition to state claims against.
-/

/-! ## A191945.P16392526044039461861

`A180503(∑[n]+n)`
-/

namespace A191945.P16392526044039461861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180503 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A191945.P16392526044039461861

/-!
# A191946: Number of simple acyclically oriented Mobius arrangements of pseudolines of order n.

The programs for A191946, there is no canonical definition to state claims against.
-/

/-! ## A191946.P3688606775891670372

`A005098(A037957(n²)+1)`
-/

namespace A191946.P3688606775891670372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (A037957 (n ^ 2) + 1).toNat

end

end A191946.P3688606775891670372

/-!
# A191947: Number of Mobius arrangements of pseudolines of order n.

The programs for A191947, there is no canonical definition to state claims against.
-/

/-! ## A191947.P9652776763071348261

`A180502(∑[n]+n)`
-/

namespace A191947.P9652776763071348261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180502 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A191947.P9652776763071348261

/-!
# A191951: Number of simple mixed arrangements of n pseudolines and 1 double pseudoline in the projective plane.

The programs for A191951, there is no canonical definition to state claims against.
-/

/-! ## A191951.P16551716828710194328

`ceil((2*n)^n/A185339(n^n))`
-/

namespace A191951.P16551716828710194328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n) ^ n : ℚ) / (A185339 (n ^ n) : ℚ)⌉

end

end A191951.P16551716828710194328

/-! ## A191951.P8774802394706332989

`A140281(A056272(n))`
-/

namespace A191951.P8774802394706332989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140281 (A056272 n).toNat

end

end A191951.P8774802394706332989

/-!
# A191953: Number of simple mixed arrangements of 1 pseudoline and n double pseudolines in the projective plane.

The programs for A191953, there is no canonical definition to state claims against.
-/

/-! ## A191953.P6813969926165200995

`A180500(∑[n+2]-1)`
-/

namespace A191953.P6813969926165200995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180500 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A191953.P6813969926165200995

/-!
# A191955: Number of simple mixed arrangements of n pseudolines and 1 double pseudoline in the Mobius plane.

The programs for A191955, there is no canonical definition to state claims against.
-/

/-! ## A191955.P12660409418937209199

`A007092(A214919(n+2)+A052711(n))`
-/

namespace A191955.P12660409418937209199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A214919 (n + 2) + A052711 n).toNat

end

end A191955.P12660409418937209199

/-!
# A191957: Number of simple mixed arrangements of 1 pseudoline and n double pseudolines in the Mobius plane.

The programs for A191957, there is no canonical definition to state claims against.
-/

/-! ## A191957.P17843722098711514207

`A180503(∑[n+2]-1)`
-/

namespace A191957.P17843722098711514207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180503 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A191957.P17843722098711514207

/-!
# A191959: Number of mixed arrangements of n pseudolines and 1 double pseudoline in the projective plane.

The programs for A191959, there is no canonical definition to state claims against.
-/

/-! ## A191959.P3743909544935094439

`round(sqrt(A325786(n²+3)))`
-/

namespace A191959.P3743909544935094439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A325786 (n ^ 2 + 3) : ℝ))

end

end A191959.P3743909544935094439

/-!
# A191962: Number of mixed arrangements of n pseudolines and 1 double pseudoline in the Mobius plane.

The programs for A191962, there is no canonical definition to state claims against.
-/

/-! ## A191962.P11804103222021834721

`A163637(A002426(n))`
-/

namespace A191962.P11804103222021834721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163637 (A002426 n).toNat

end

end A191962.P11804103222021834721

/-!
# A191965: A problem of Zarankiewicz: maximal number of 1's in a symmetric n X n matrix of 0's and 1's with 0's on the main diagonal and no "rectangle" with 1's at the four corners.

The programs for A191965, there is no canonical definition to state claims against.
-/

/-! ## A191965.P6639448186990922456

`2*A006855(n+1)`
-/

namespace A191965.P6639448186990922456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006855 (n + 1)

end

end A191965.P6639448186990922456

/-! ## A191965.P17553386114607906860

`A005843(A006855(n+1))`
-/

namespace A191965.P17553386114607906860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A006855 (n + 1)).toNat

end

end A191965.P17553386114607906860

/-! ## A191965.P643120109076259299

`A004277(A006855(n+1)+1)-2`
-/

namespace A191965.P643120109076259299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A006855 (n + 1) + 1).toNat - 2

end

end A191965.P643120109076259299

/-! ## A191965.P12685602100038861182

`A006855(C(n+1, n))+A006855(n+1)`
-/

namespace A191965.P12685602100038861182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006855 (Nat.choose (n + 1) n) + A006855 (n + 1)

end

end A191965.P12685602100038861182

/-! ## A191965.P7204539055096163802

`A006855(n+1)+A006855(-xor(n, -1))`
-/

namespace A191965.P7204539055096163802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006855 (n + 1) + A006855 (-Int.xor (n : ℤ) (-1)).toNat

end

end A191965.P7204539055096163802

/-!
# A191966: Number of n X n symmetric (0,1) matrices that achieve the record mentioned in A191965.

The programs for A191966, there is no canonical definition to state claims against.
-/

/-! ## A191966.P8459717045301905413

`A352472(∑[A006855(n+1)+1])`
-/

namespace A191966.P8459717045301905413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006855 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352472 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191966.P8459717045301905413

/-! ## A191966.P2395338985862554891

`A352472(∑[A191965(n+1)/2+1])`
-/

namespace A191966.P2395338985862554891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191965 (n + 1) : ℚ) / 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352472 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A191966.P2395338985862554891

/-! ## A191966.P17125008888055681451

`A352472(eq[A285383(n+1), A352472(n+1)])`
-/

namespace A191966.P17125008888055681451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352472 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A191966.P17125008888055681451

/-! ## A191966.P15685534873608116478

`A352472(lt[A352472(n+1), A352446(n+2)])`
-/

namespace A191966.P15685534873608116478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352446 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352472 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191966.P15685534873608116478

/-!
# A191967: n * (numbers that are not divisible by 3).

The programs for A191967, the canonical program `A191967.P17717380817675792771` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191967 has offset 0).

The definition of A191967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191967.P13081712484765911388

`n*(6*n-3-(-1)^n)/4`
-/

namespace A191967.P13081712484765911388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((6 * n : ℤ) - 3 - (-1) ^ n) : ℚ) / 4

end

end A191967.P13081712484765911388

namespace A191967

/-- `n*(6*n-3-(-1)^n)/4` -/
def P13081712484765911388.Spec : Prop :=
  ∀ n, P13081712484765911388.a n = (A191967 n : ℚ)

end A191967

/-! ## A191967.P17717380817675792771

`A000326(n)-A142150(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A191967

/-- `A000326(n)-A142150(n)` -/
def P17717380817675792771.Spec : Prop :=
  ∀ n, P17717380817675792771.a n = A191967 n

theorem P17717380817675792771.correct : P17717380817675792771.Spec := by
  intro n
  simp only [A191967]

end A191967

/-! ## A191967.P195499587164598144

`A182079(3*n)`
-/

namespace A191967.P195499587164598144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182079 (3 * n)

end

end A191967.P195499587164598144

namespace A191967

/-- `A182079(3*n)` -/
def P195499587164598144.Spec : Prop :=
  ∀ n, P195499587164598144.a n = A191967 n

end A191967

/-! ## A191967.P13948969758723632070

`floor(n*record[n/gcd(3, n)])`
-/

namespace A191967.P13948969758723632070
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 3 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A191967.P13948969758723632070

namespace A191967

/-- `floor(n*record[n/gcd(3, n)])` -/
def P13948969758723632070.Spec : Prop :=
  ∀ n, P13948969758723632070.a n = A191967 n

end A191967

/-! ## A191967.P13521998017876848263

`n*∑[n%2+1]-2*n`
-/

namespace A191967.P13521998017876848263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (2 * n : ℤ)

end

end A191967.P13521998017876848263

namespace A191967

/-- `n*∑[n%2+1]-2*n` -/
def P13521998017876848263.Spec : Prop :=
  ∀ n, P13521998017876848263.a n = A191967 n

end A191967

/-! ## A191967.P1658987324914875925

`n*∑[gcd(2, n+1)]-2*n`
-/

namespace A191967.P1658987324914875925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (2 * n : ℤ)

end

end A191967.P1658987324914875925

namespace A191967

/-- `n*∑[gcd(2, n+1)]-2*n` -/
def P1658987324914875925.Spec : Prop :=
  ∀ n, P1658987324914875925.a n = A191967 n

end A191967

/-! ## A191967.P10696910752766227428

`n*∑[and(1, n)+1]-2*n`
-/

namespace A191967.P10696910752766227428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (2 * n : ℤ)

end

end A191967.P10696910752766227428

namespace A191967

/-- `n*∑[and(1, n)+1]-2*n` -/
def P10696910752766227428.Spec : Prop :=
  ∀ n, P10696910752766227428.a n = A191967 n

end A191967

/-! ## A191967.P3037828677739010188

`floor(n*∑[3-a(n-1)])` with `a(0)=-1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A191967.P3037828677739010188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191967.P3037828677739010188

namespace A191967

/-- `floor(n*∑[3-a(n-1)])` -/
def P3037828677739010188.Spec : Prop :=
  ∀ n, P3037828677739010188.a n = A191967 n

end A191967

/-! ## A191967.P4106969312527434516

`n*∑[3-a(n-1)]+n` with `a(0)=-2, a(1)=2`
-/

namespace A191967.P4106969312527434516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 2] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A191967.P4106969312527434516

namespace A191967

/-- `n*∑[3-a(n-1)]+n` -/
def P4106969312527434516.Spec : Prop :=
  ∀ n, P4106969312527434516.a n = A191967 n

end A191967

/-! ## A191967.P5725046239233360791

`n*∑[2/a(n-1)]-2*n` with `a(0)=1`
-/

namespace A191967.P5725046239233360791
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (2 * n : ℚ)

end

end A191967.P5725046239233360791

namespace A191967

/-- `n*∑[2/a(n-1)]-2*n` -/
def P5725046239233360791.Spec : Prop :=
  ∀ n, P5725046239233360791.a n = (A191967 n : ℚ)

end A191967

/-! ## A191967.P16977537891322348401

`n*∑[C(2, a(n-1))]-2*n` with `a(0)=1`
-/

namespace A191967.P16977537891322348401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose 2 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (2 * n : ℤ)

end

end A191967.P16977537891322348401

namespace A191967

/-- `n*∑[C(2, a(n-1))]-2*n` -/
def P16977537891322348401.Spec : Prop :=
  ∀ n, P16977537891322348401.a n = A191967 n

end A191967

/-! ## A191967.P7777311099316580680

`A050187(n)+n²`
-/

namespace A191967.P7777311099316580680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050187 n + (n ^ 2 : ℤ)

end

end A191967.P7777311099316580680

namespace A191967

/-- `A050187(n)+n²` -/
def P7777311099316580680.Spec : Prop :=
  ∀ n, P7777311099316580680.a n = A191967 n

end A191967

/-! ## A191967.P7705359222950987529

`A181995(n)+∑[n]`
-/

namespace A191967.P7705359222950987529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181995 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A191967.P7705359222950987529

namespace A191967

/-- `A181995(n)+∑[n]` -/
def P7705359222950987529.Spec : Prop :=
  ∀ n, P7705359222950987529.a n = A191967 n

end A191967

/-! ## A191967.P8735086822628876119

`n*A007494(n)-n`
-/

namespace A191967.P8735086822628876119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007494 n - (n : ℤ)

end

end A191967.P8735086822628876119

namespace A191967

/-- `n*A007494(n)-n` -/
def P8735086822628876119.Spec : Prop :=
  ∀ n, P8735086822628876119.a n = A191967 n

end A191967

/-! ## A191967.P11069360002356546295

`A092530(n)+n*(n-2)`
-/

namespace A191967.P11069360002356546295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092530 n + (n : ℤ) * ((n : ℤ) - 2)

end

end A191967.P11069360002356546295

namespace A191967

/-- `A092530(n)+n*(n-2)` -/
def P11069360002356546295.Spec : Prop :=
  ∀ n, P11069360002356546295.a n = A191967 n

end A191967

/-! ## A191967.P448885892581977139

`n*∑[A000032(and(1, n-1))]-2*n`
-/

namespace A191967.P448885892581977139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.land 1 ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (2 * n : ℤ)

end

end A191967.P448885892581977139

namespace A191967

/-- `n*∑[A000032(and(1, n-1))]-2*n` -/
def P448885892581977139.Spec : Prop :=
  ∀ n, P448885892581977139.a n = A191967 n

end A191967

/-! ## A191967.P4435151539270827908

`n*∑[A000005(a(n-2))]-2*n` with `a(0)=1, a(1)=2`
-/

namespace A191967.P4435151539270827908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000005 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (2 * n : ℤ)

end

end A191967.P4435151539270827908

namespace A191967

/-- `n*∑[A000005(a(n-2))]-2*n` -/
def P4435151539270827908.Spec : Prop :=
  ∀ n, P4435151539270827908.a n = A191967 n

end A191967

/-! ## A191967.P11203213483645812940

`n*∑[A005117(a(n-2))]-2*n` with `a(0)=1, a(1)=2`
-/

namespace A191967.P11203213483645812940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A005117 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (2 * n : ℤ)

end

end A191967.P11203213483645812940

namespace A191967

/-- `n*∑[A005117(a(n-2))]-2*n` -/
def P11203213483645812940.Spec : Prop :=
  ∀ n, P11203213483645812940.a n = A191967 n

end A191967

/-!
# A191968: a(n) = Fibonacci(8n+5) mod Fibonacci(8n+1).

The programs for A191968, there is no canonical definition to state claims against.
-/

/-! ## A191968.P15365612411446199467

`round(record[ϕ^xor(7, n)])`
-/

namespace A191968.P15365612411446199467
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A191968.P15365612411446199467

/-! ## A191968.P13896253148392706584

`round(ϕ^(8*n+7))`
-/

namespace A191968.P13896253148392706584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (8 * n + 7))

end

end A191968.P13896253148392706584

/-! ## A191968.P15228051957241274634

`Δ[A049657(n)]`
-/

namespace A191968.P15228051957241274634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191968.P15228051957241274634

/-! ## A191968.P3062337240863544221

`A288913(Δ[n²])`
-/

namespace A191968.P3062337240863544221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288913 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A191968.P3062337240863544221

/-! ## A191968.P5655008933109381645

`Δ[A094567(2*n)]`
-/

namespace A191968.P5655008933109381645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094567 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191968.P5655008933109381645

/-! ## A191968.P9218167220984575064

`A000032(record[xor(7, n)])`
-/

namespace A191968.P9218167220984575064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A191968.P9218167220984575064

/-! ## A191968.P18200975003241825953

`A098149(4*(n+1))`
-/

namespace A191968.P18200975003241825953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098149 (4 * (n + 1))

end

end A191968.P18200975003241825953

/-! ## A191968.P7930768744419100291

`A254729(8*(n+1))`
-/

namespace A191968.P7930768744419100291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (8 * (n + 1))

end

end A191968.P7930768744419100291

/-! ## A191968.P6084318478187390490

`A292412(8*(n+1))`
-/

namespace A191968.P6084318478187390490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292412 (8 * (n + 1))

end

end A191968.P6084318478187390490

/-! ## A191968.P1324580834663050096

`A295727(8*(n+1))`
-/

namespace A191968.P1324580834663050096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 (8 * (n + 1))

end

end A191968.P1324580834663050096

/-!
# A191969: Numbers that are indices of deficient oblong numbers (A002378).

The programs for A191969, there is no canonical definition to state claims against.
-/

/-! ## A191969.P9589588536602710893

`floor(sqrt(A077804(n+1)))`
-/

namespace A191969.P9589588536602710893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A077804 (n + 1))

end

end A191969.P9589588536602710893

/-! ## A191969.P189006476759510632

`A000027(round(sqrt(A077804(n+1))))`
-/

namespace A191969.P189006476759510632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A077804 (n + 1) : ℝ))).toNat

end

end A191969.P189006476759510632

/-! ## A191969.P12968927092300130007

`A125746(round(sqrt(A077804(n+1))))`
-/

namespace A191969.P12968927092300130007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (SequenceMachineLib.roundAway (Real.sqrt (A077804 (n + 1) : ℝ))).toNat

end

end A191969.P12968927092300130007

/-! ## A191969.P5424241423400909127

`round(sqrt(A077804(n+1)-A214394(n)))`
-/

namespace A191969.P5424241423400909127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A077804 (n + 1) - A214394 n : ℝ))

end

end A191969.P5424241423400909127

/-! ## A191969.P291453782211354944

`round(sqrt(A077804(n+1)-A014963(n+1)))`
-/

namespace A191969.P291453782211354944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A077804 (n + 1) - A014963 (n + 1) : ℝ))

end

end A191969.P291453782211354944

/-! ## A191969.P8406395647610085183

`A113881(A077804(n+1)/2)`
-/

namespace A191969.P8406395647610085183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (SequenceMachineLib.roundAway ((A077804 (n + 1) : ℚ) / 2)).toNat

end

end A191969.P8406395647610085183

/-!
# A191970: Number of connected graphs with n edges with loops allowed.

The programs for A191970, there is no canonical definition to state claims against.
-/

/-! ## A191970.P5974684844016408219

`A208251(A116772(n+1))`
-/

namespace A191970.P5974684844016408219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208251 (A116772 (n + 1)).toNat

end

end A191970.P5974684844016408219

/-! ## A191970.P9499469366709393578

`A208251(A279560(n+1))`
-/

namespace A191970.P9499469366709393578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208251 (A279560 (n + 1)).toNat

end

end A191970.P9499469366709393578

/-!
# A191971: Square array A(i,j) related to the square array T(i,j) of A192062.

The programs for A191971, there is no canonical definition to state claims against.
-/

/-! ## A191971.P17699538741867927115

`A281007(A159314(n))+A097230(n)`
-/

namespace A191971.P17699538741867927115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281007 (A159314 n).toNat + A097230 n

end

end A191971.P17699538741867927115

/-! ## A191971.P10023183054335282608

`A265691(lcm(5, A308500(n)))`
-/

namespace A191971.P10023183054335282608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265691 (Int.lcm 5 (A308500 n))

end

end A191971.P10023183054335282608

/-! ## A191971.P12479306364260173464

`A055640(A261765(n)²)+1`
-/

namespace A191971.P12479306364260173464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A261765 n ^ 2).toNat + 1

end

end A191971.P12479306364260173464

/-! ## A191971.P14576476046022130461

`A358371(A008305(n+1)+3)`
-/

namespace A191971.P14576476046022130461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (A008305 (n + 1) + 3).toNat

end

end A191971.P14576476046022130461

/-! ## A191971.P5808312799898530603

`A055089(A261765(n)^A001227(n+1))`
-/

namespace A191971.P5808312799898530603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 (SequenceMachineLib.roundAway ((A261765 n : ℚ) ^ (A001227 (n + 1) : ℤ))).toNat

end

end A191971.P5808312799898530603

/-!
# A191972: The numerators of T(n, n+1) with T(0, m) = A164555(m)/A027642(m) and T(n, m) = T(n-1, m+1) - T(n-1, m), n >= 1, m >= 0.

The programs for A191972, there is no canonical definition to state claims against.
-/

/-! ## A191972.P17641340429126369238

`round(A212196(n)/2)`
-/

namespace A191972.P17641340429126369238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A212196 n : ℚ) / 2)

end

end A191972.P17641340429126369238

/-! ## A191972.P13209720540875718765

`A212196(n)/A000034(A019426(n))`
-/

namespace A191972.P13209720540875718765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212196 n : ℚ) / (A000034 (A019426 n).toNat : ℚ)

end

end A191972.P13209720540875718765

/-! ## A191972.P9353807760723409323

`A212196(n)/A020639(A075526(n))`
-/

namespace A191972.P9353807760723409323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212196 n : ℚ) / (A020639 (A075526 n).toNat : ℚ)

end

end A191972.P9353807760723409323

/-! ## A191972.P16644011152532654651

`A212196(n)/A020639(A176591(n))`
-/

namespace A191972.P16644011152532654651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212196 n : ℚ) / (A020639 (A176591 n).toNat : ℚ)

end

end A191972.P16644011152532654651

/-! ## A191972.P9616325779914298878

`A212196(n)/A020639(A212205(n))`
-/

namespace A191972.P9616325779914298878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212196 n : ℚ) / (A020639 (A212205 n).toNat : ℚ)

end

end A191972.P9616325779914298878

/-!
# A191975: Least common multiple of all p-1, where prime p divides the n-th primary pseudoperfect number A054377(n).

The programs for A191975, there is no canonical definition to state claims against.
-/

/-! ## A191975.P13938147188572686346

`∑[A366993(n!²)]`
-/

namespace A191975.P13938147188572686346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366993 (Nat.factorial n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191975.P13938147188572686346

/-!
# A191976: Ordered sums 3*f+4*g, where f and g are Lucas numbers (A000032 beginning at 1).

The programs for A191976, there is no canonical definition to state claims against.
-/

/-! ## A191976.P6262903825800518139

`lt[A117170(3*(n+1)), Δ[A117173(n+1)²]]`
-/

namespace A191976.P6262903825800518139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117170 (3 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117173 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191976.P6262903825800518139

/-! ## A191976.P6881169906645383929

`lt[A097330(A097293(2*n+5)), A097295(3*n+5)]`
-/

namespace A191976.P6881169906645383929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097330 (A097293 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097295 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191976.P6881169906645383929

/-! ## A191976.P1941022110511653621

`A047999(A088578(n))+A030659(n+3)`
-/

namespace A191976.P1941022110511653621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A088578 n).toNat + A030659 (n + 3)

end

end A191976.P1941022110511653621

/-!
# A191978: Ordered sequence of nonnegative differences 4f-3g, where f and g are Lucas numbers (A000032 beginning at 1).

The programs for A191978, there is no canonical definition to state claims against.
-/

/-! ## A191978.P5126993950229635135

`record[A322007(record[A128861(n+1)])]`
-/

namespace A191978.P5126993950229635135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128861 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322007 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191978.P5126993950229635135

/-!
# A191979: Ordered sequence of nonnegative differences c*f-d*g, where f and g are Lucas numbers (A000032 beginning at 1) and {c,d}={3,4}.

The programs for A191979, there is no canonical definition to state claims against.
-/

/-! ## A191979.P10863244948352704640

`∪[A191977(n+1), A191978(n+1)]`
-/

namespace A191979.P10863244948352704640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191979.P10863244948352704640

/-! ## A191979.P15114947761632310670

`lt[A165915(A326486(n)), A080079(n+1)]`
-/

namespace A191979.P15114947761632310670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165915 (A326486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191979.P15114947761632310670

/-! ## A191979.P7097709981963660922

`lt[A171918(3*n+2), A055941(A286256(n+1))]`
-/

namespace A191979.P7097709981963660922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171918 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A286256 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191979.P7097709981963660922

/-!
# A191982: Ordered sequence of nonnegative differences 5*f-g, where f and g are Lucas numbers (A000032 beginning at 1).

The programs for A191982, there is no canonical definition to state claims against.
-/

/-! ## A191982.P12846921632179287855

`eq[A088863(2*n+1), A276502(3*n+5)]`
-/

namespace A191982.P12846921632179287855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088863 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276502 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191982.P12846921632179287855

/-! ## A191982.P11610711913996139051

`lt[A359270(A156261(3*n+2)), A156257(n+3)]`
-/

namespace A191982.P11610711913996139051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359270 (A156261 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156257 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191982.P11610711913996139051

/-!
# A191983: Ordered sequence of nonnegative differences c*f-d*g, where f and g are Lucas numbers (A000032 beginning at 1) and {c,d}={1,5}.

The programs for A191983, there is no canonical definition to state claims against.
-/

/-! ## A191983.P1041149015640059810

`∪[A191981(n+1), A191982(n+1)]`
-/

namespace A191983.P1041149015640059810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191983.P1041149015640059810

/-! ## A191983.P17018618633834928566

`lt[A243067(n+2), A101211(A054760(n))]`
-/

namespace A191983.P17018618633834928566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243067 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (A054760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191983.P17018618633834928566

/-! ## A191983.P11609624363968929534

`∑[A095771(A055483(∑[n+3]+6)+1)]-1`
-/

namespace A191983.P11609624363968929534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095771 (A055483 (∑ j ∈ Finset.range (n + 1), f2 j + 6) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A191983.P11609624363968929534

/-! ## A191983.P9538303045044742366

`lt[A333806(A079896(3*n+1)), A341970(3*n+1)]`
-/

namespace A191983.P9538303045044742366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (A079896 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341970 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191983.P9538303045044742366

/-!
# A191984: Monotonically ordered sums 2^(i-1)+3*2^(j-1), for i>=1, j>=1.

The programs for A191984, there is no canonical definition to state claims against.
-/

/-! ## A191984.P12682768094930525363

`eq[1, A010125(A151760(n))]`
-/

namespace A191984.P12682768094930525363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 (A151760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191984.P12682768094930525363

/-! ## A191984.P5653451961926173695

`eq[1, A088439(A151760(n)²)]`
-/

namespace A191984.P5653451961926173695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 (A151760 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191984.P5653451961926173695

/-! ## A191984.P8303404509316143540

`eq[gcd(3, A151760(n)), A057427(n)]`
-/

namespace A191984.P8303404509316143540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A151760 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191984.P8303404509316143540

/-! ## A191984.P2109550670601664979

`∪[A192067(n+1), A181565(n)]`
-/

namespace A191984.P2109550670601664979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191984.P2109550670601664979

/-! ## A191984.P8586285057330564161

`eq[A057427(2*(n+1)), A088439(A151760(n))]`
-/

namespace A191984.P8586285057330564161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 (A151760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191984.P8586285057330564161

/-! ## A191984.P6248833404038429345

`eq[A088439(A151760(n)), A285671(2*n+3)]`
-/

namespace A191984.P6248833404038429345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 (A151760 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285671 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191984.P6248833404038429345

/-!
# A191985: Monotonically ordered sequence nonnegative 2^(i-1)-3*2^(j-1), for i>=1, j>=1.

The programs for A191985, there is no canonical definition to state claims against.
-/

/-! ## A191985.P12056206788315690087

`A057889(A191986(n+1))`
-/

namespace A191985.P12056206788315690087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A191986 (n + 1)).toNat

end

end A191985.P12056206788315690087

/-! ## A191985.P10847710989192819846

`eq[A261393(n), A355809(n)]`
-/

namespace A191985.P10847710989192819846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355809 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191985.P10847710989192819846

/-! ## A191985.P12230825680380420279

`record[A030109(A005187(n)+2)]`
-/

namespace A191985.P12230825680380420279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A005187 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191985.P12230825680380420279

/-! ## A191985.P779256718959420046

`eq[2, A001316(A103391(n+1))]`
-/

namespace A191985.P779256718959420046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A103391 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191985.P779256718959420046

/-! ## A191985.P15825257659572196756

`record[A153151(n)-A153151(A153142(n))]`
-/

namespace A191985.P15825257659572196756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 n - A153151 (A153142 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191985.P15825257659572196756

/-!
# A191986: Monotonically ordered sequence nonnegative 3*2^(i-1)-2^(j-1), for i>=1, j>=1.

The programs for A191986, there is no canonical definition to state claims against.
-/

/-! ## A191986.P6760492802100563441

`record[A030109(A065172(n+1))]`
-/

namespace A191986.P6760492802100563441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A065172 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191986.P6760492802100563441

/-! ## A191986.P16982585306129593192

`record[A319409(A023758(n+1))]`
-/

namespace A191986.P16982585306129593192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319409 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191986.P16982585306129593192

/-! ## A191986.P8902001952778124807

`record[A329303(A022340(n))/2]`
-/

namespace A191986.P8902001952778124807
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329303 (A022340 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191986.P8902001952778124807

/-! ## A191986.P1149803720161776334

`record[A002265(A059893(2*(n+1)))]`
-/

namespace A191986.P1149803720161776334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A059893 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191986.P1149803720161776334

/-! ## A191986.P17510672438574852537

`record[A059169(A185969(2*n+1))]`
-/

namespace A191986.P17510672438574852537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A185969 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191986.P17510672438574852537

/-! ## A191986.P3141211888120410366

`record[A145342(n+1)-A093178(n)]`
-/

namespace A191986.P3141211888120410366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1) - A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191986.P3141211888120410366

/-! ## A191986.P17172374519821661119

`record[A318921(n)-A318921(A318921(n))]`
-/

namespace A191986.P17172374519821661119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 n - A318921 (A318921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191986.P17172374519821661119

/-! ## A191986.P13465913548036101127

`A057889(A191985(n+1))`
-/

namespace A191986.P13465913548036101127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A191985 (n + 1)).toNat

end

end A191986.P13465913548036101127

/-!
# A191987: Monotonically ordered sequence of nonnegative c*2^(i-1)-d*2^(j-1), where {c,d}={1,3}, i>=1, j>=1.

The programs for A191987, there is no canonical definition to state claims against.
-/

/-! ## A191987.P13882530233904955779

`∪[A191985(n+1), A191986(n+1)]`
-/

namespace A191987.P13882530233904955779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191987.P13882530233904955779

/-! ## A191987.P10165429548137005625

`eq[A000120(n), A001057(A002487(n))]`
-/

namespace A191987.P10165429548137005625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A002487 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191987.P10165429548137005625

/-! ## A191987.P6396717046829825171

`eq[A126606(n+1)/2, A004273(A000120(n))]`
-/

namespace A191987.P6396717046829825171
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126606 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A191987.P6396717046829825171

/-! ## A191987.P17998335785818312491

`eq[A126606(n+1)/2, A005811(A342634(n))]`
-/

namespace A191987.P17998335785818312491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126606 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A342634 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A191987.P17998335785818312491

/-! ## A191987.P2613600624216403697

`lt[A035324(A331742(n)), A332297(3*n+2)]`
-/

namespace A191987.P2613600624216403697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035324 (A331742 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332297 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191987.P2613600624216403697

/-!
# A191990: Ordered sequence of nonnegative differences 5f-2g, where f and g are Lucas numbers (A000032 beginning at 1).

The programs for A191990, there is no canonical definition to state claims against.
-/

/-! ## A191990.P14689658899147962575

`eq[A027351(n+1), A144595(n)]`
-/

namespace A191990.P14689658899147962575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191990.P14689658899147962575

/-! ## A191990.P12417876551261640731

`A003313(round(2^(n-1)+3^(n-1)))+∑{d}[n, (#%#²)%2]`
-/

namespace A191990.P12417876551261640731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat + ((∑ d ∈ Nat.divisors (f1 n), d % d ^ 2 % 2 : ℕ) : ℤ)

end

end A191990.P12417876551261640731

/-! ## A191990.P11982122227612067870

`eq[0, A052344(A082766(n+1))]`
-/

namespace A191990.P11982122227612067870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (A082766 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191990.P11982122227612067870

/-! ## A191990.P2387800488650653262

`2*n-A127523(A052905(n))`
-/

namespace A191990.P2387800488650653262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A127523 (A052905 n).toNat

end

end A191990.P2387800488650653262

/-! ## A191990.P9827502289988260317

`lt[n, 2*A020639(A206268(n))]`
-/

namespace A191990.P9827502289988260317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (A206268 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A191990.P9827502289988260317

/-!
# A191991: Ordered sequence of nonnegative differences c*f-d*g, where f and g are Lucas numbers (A000032 beginning at 1) and {c,d}={2,5}.

The programs for A191991, there is no canonical definition to state claims against.
-/

/-! ## A191991.P2325385990413272811

`∪[A191989(n+1), A191990(n+1)]`
-/

namespace A191991.P2325385990413272811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191991.P2325385990413272811

/-! ## A191991.P6550396297863717329

`eq[1, Δ[A055572(A043091(n))]]`
-/

namespace A191991.P6550396297863717329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A043091 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191991.P6550396297863717329

/-!
# A191992: Concatenation of n and the n-th composite number.

The programs for A191992, there is no canonical definition to state claims against.
-/

/-! ## A191992.P1650917784903931907

`A179769(A000110(n))+A019550(n+1)`
-/

namespace A191992.P1650917784903931907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179769 (A000110 n).toNat + A019550 (n + 1)

end

end A191992.P1650917784903931907

/-!
# A191993: a(n) = 3^(n-1) + C(2*n, n)/2.

The programs for A191993, the canonical program `A191993.P16234544476290657069` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191993 has offset 1).

The definition of A191993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191993.P16234544476290657069

`A000244(n)+A001700(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A191993

/-- `A000244(n)+A001700(n)` -/
def P16234544476290657069.Spec : Prop :=
  ∀ n, P16234544476290657069.a n = A191993 (n + 1)

theorem P16234544476290657069.correct : P16234544476290657069.Spec := by
  intro n
  simp only [A191993, Nat.add_sub_cancel]

end A191993

/-! ## A191993.P12195963018711695191

`3^n+C(2*(n+1)-1, n+1)`
-/

namespace A191993.P12195963018711695191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + Nat.choose ((2 * (n + 1) : ℤ) - 1).toNat (n + 1)

end

end A191993.P12195963018711695191

namespace A191993

/-- `3^n+C(2*(n+1)-1, n+1)` -/
def P12195963018711695191.Spec : Prop :=
  ∀ n, (P12195963018711695191.a n : ℤ) = A191993 (n + 1)

end A191993

/-! ## A191993.P14394507396502297223

`3^n+C(2*(n+1), n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191993.P14394507396502297223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) + (Nat.choose (2 * (n + 1)) (n + 1) : ℚ) / 2

end

end A191993.P14394507396502297223

namespace A191993

/-- `3^n+C(2*(n+1), n+1)/2` -/
def P14394507396502297223.Spec : Prop :=
  ∀ n, P14394507396502297223.a n = (A191993 (n + 1) : ℚ)

end A191993

/-! ## A191993.P18280691616316010615

`record[a(n-1)/(floor(n/2)/n-1)]+3^n` with `a(0)=1, a(1)=1`
-/

namespace A191993.P18280691616316010615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (3 ^ n : ℚ)

end

end A191993.P18280691616316010615

namespace A191993

/-- `record[a(n-1)/(floor(n/2)/n-1)]+3^n` -/
def P18280691616316010615.Spec : Prop :=
  ∀ n, P18280691616316010615.a n = (A191993 (n + 1) : ℚ)

end A191993

/-! ## A191993.P34512386786871617

`3^n+A010763(n)+1`
-/

namespace A191993.P34512386786871617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + (A010763 n + 1)

end

end A191993.P34512386786871617

namespace A191993

/-- `3^n+A010763(n)+1` -/
def P34512386786871617.Spec : Prop :=
  ∀ n, P34512386786871617.a n = A191993 (n + 1)

end A191993

/-! ## A191993.P289547320469113822

`A088218(n+1)+3^n`
-/

namespace A191993.P289547320469113822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + (3 ^ n : ℤ)

end

end A191993.P289547320469113822

namespace A191993

/-- `A088218(n+1)+3^n` -/
def P289547320469113822.Spec : Prop :=
  ∀ n, P289547320469113822.a n = A191993 (n + 1)

end A191993

/-! ## A191993.P15382503270996584470

`A001405(2*n+1)+3^n`
-/

namespace A191993.P15382503270996584470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1) + (3 ^ n : ℤ)

end

end A191993.P15382503270996584470

namespace A191993

/-- `A001405(2*n+1)+3^n` -/
def P15382503270996584470.Spec : Prop :=
  ∀ n, P15382503270996584470.a n = A191993 (n + 1)

end A191993

/-! ## A191993.P16081441018535520411

`3^n+Δ[n²]*A000108(n)`
-/

namespace A191993.P16081441018535520411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000108 n

end

end A191993.P16081441018535520411

namespace A191993

/-- `3^n+Δ[n²]*A000108(n)` -/
def P16081441018535520411.Spec : Prop :=
  ∀ n, P16081441018535520411.a n = A191993 (n + 1)

end A191993

/-! ## A191993.P18340455108577855623

`3^n+Δ[n²]*Δ[A166588(2*n)]`
-/

namespace A191993.P18340455108577855623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (f2 (n + 1) - f2 n)

end

end A191993.P18340455108577855623

namespace A191993

/-- `3^n+Δ[n²]*Δ[A166588(2*n)]` -/
def P18340455108577855623.Spec : Prop :=
  ∀ n, P18340455108577855623.a n = A191993 (n + 1)

end A191993

/-! ## A191993.P8306048824998698389

`A034472(n)+A010763(n)`
-/

namespace A191993.P8306048824998698389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n + A010763 n

end

end A191993.P8306048824998698389

namespace A191993

/-- `A034472(n)+A010763(n)` -/
def P8306048824998698389.Spec : Prop :=
  ∀ n, P8306048824998698389.a n = A191993 (n + 1)

end A191993

/-! ## A191993.P16224073424699686778

`A323229(n)+A081670(n)`
-/

namespace A191993.P16224073424699686778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323229 n + A081670 n

end

end A191993.P16224073424699686778

namespace A191993

/-- `A323229(n)+A081670(n)` -/
def P16224073424699686778.Spec : Prop :=
  ∀ n, P16224073424699686778.a n = A191993 (n + 1)

end A191993

/-! ## A191993.P14261713795008382404

`A108958(n+1)+A007689(n)`
-/

namespace A191993.P14261713795008382404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108958 (n + 1) + A007689 n

end

end A191993.P14261713795008382404

namespace A191993

/-- `A108958(n+1)+A007689(n)` -/
def P14261713795008382404.Spec : Prop :=
  ∀ n, P14261713795008382404.a n = A191993 (n + 1)

end A191993

/-! ## A191993.P3022780533002640823

`A112849(n+1)+A103453(n)`
-/

namespace A191993.P3022780533002640823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112849 (n + 1) + A103453 n

end

end A191993.P3022780533002640823

namespace A191993

/-- `A112849(n+1)+A103453(n)` -/
def P3022780533002640823.Spec : Prop :=
  ∀ n, P3022780533002640823.a n = A191993 (n + 1)

end A191993

/-! ## A191993.P9119670017166679141

`A108411(2*n)+A001700(n)`
-/

namespace A191993.P9119670017166679141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (2 * n) + A001700 n

end

end A191993.P9119670017166679141

namespace A191993

/-- `A108411(2*n)+A001700(n)` -/
def P9119670017166679141.Spec : Prop :=
  ∀ n, P9119670017166679141.a n = A191993 (n + 1)

end A191993

/-! ## A191993.P8051604675633140662

`A056449(2*n)+record[A057977(n)]`
-/

namespace A191993.P8051604675633140662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 (2 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191993.P8051604675633140662

namespace A191993

/-- `A056449(2*n)+record[A057977(n)]` -/
def P8051604675633140662.Spec : Prop :=
  ∀ n, P8051604675633140662.a n = A191993 (n + 1)

end A191993

/-! ## A191993.P16584847967823664575

`A133494(n+1)+A088218(n+1)`
-/

namespace A191993.P16584847967823664575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (n + 1) + A088218 (n + 1)

end

end A191993.P16584847967823664575

namespace A191993

/-- `A133494(n+1)+A088218(n+1)` -/
def P16584847967823664575.Spec : Prop :=
  ∀ n, P16584847967823664575.a n = A191993 (n + 1)

end A191993

/-! ## A191993.P16746748241550952359

`A037952(2*n+1)+A000244(n)`
-/

namespace A191993.P16746748241550952359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n + 1) + A000244 n

end

end A191993.P16746748241550952359

namespace A191993

/-- `A037952(2*n+1)+A000244(n)` -/
def P16746748241550952359.Spec : Prop :=
  ∀ n, P16746748241550952359.a n = A191993 (n + 1)

end A191993

/-! ## A191993.P1013007731668630841

`A057977(2*n+1)+A000244(n)`
-/

namespace A191993.P1013007731668630841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * n + 1) + A000244 n

end

end A191993.P1013007731668630841

namespace A191993

/-- `A057977(2*n+1)+A000244(n)` -/
def P1013007731668630841.Spec : Prop :=
  ∀ n, P1013007731668630841.a n = A191993 (n + 1)

end A191993

/-! ## A191993.P6819829388781303109

`(A025192(n+1)+A000984(n+1))/2`
-/

namespace A191993.P6819829388781303109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025192 (n + 1) + A000984 (n + 1) : ℚ) / 2

end

end A191993.P6819829388781303109

namespace A191993

/-- `(A025192(n+1)+A000984(n+1))/2` -/
def P6819829388781303109.Spec : Prop :=
  ∀ n, P6819829388781303109.a n = (A191993 (n + 1) : ℚ)

end A191993

/-! ## A191993.P8877965347994460570

`A133494(n+1)+A000984(n+1)/2`
-/

namespace A191993.P8877965347994460570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133494 (n + 1) : ℚ) + (A000984 (n + 1) : ℚ) / 2

end

end A191993.P8877965347994460570

namespace A191993

/-- `A133494(n+1)+A000984(n+1)/2` -/
def P8877965347994460570.Spec : Prop :=
  ∀ n, P8877965347994460570.a n = (A191993 (n + 1) : ℚ)

end A191993

/-!
# A191994: (Sum of first n Fibonacci numbers) times (product of first n Fibonacci numbers).

The programs for A191994, there is no canonical definition to state claims against.
-/

/-! ## A191994.P3327229766507282608

`A000071(n+3)*A003266(n+1)`
-/

namespace A191994.P3327229766507282608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) * A003266 (n + 1)

end

end A191994.P3327229766507282608

/-! ## A191994.P4818903661833392034

`Δ[A001924(n)]*∏[A079977(2*n)]`
-/

namespace A191994.P4818903661833392034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A191994.P4818903661833392034

/-! ## A191994.P3350201772893036845

`∏[A212804(n+2)]*A000071(n+3)`
-/

namespace A191994.P3350201772893036845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000071 (n + 3)

end

end A191994.P3350201772893036845

/-! ## A191994.P12985966956145480500

`∑[A000045(n+1)]*∏[A000045(n+1)]`
-/

namespace A191994.P12985966956145480500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A191994.P12985966956145480500

/-! ## A191994.P8816754827065413133

`∑[A324969(n+2)]*∏[A324969(n+2)]`
-/

namespace A191994.P8816754827065413133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A191994.P8816754827065413133

/-!
# A191996: Numerators of partial products of a Hardy-Littlewood constant.

The programs for A191996, there is no canonical definition to state claims against.
-/

/-! ## A191996.P12062495673903966156

`A062270(n-A010815(a(val(n, n+1))))` with `a(0)=2`
-/

namespace A191996.P12062495673903966156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A062270 ((n : ℤ) - A010815 (a (SequenceMachineLib.valuation n (n + 1))).toNat).toNat

end

end A191996.P12062495673903966156

/-!
# A191997: Denominators of partial products of a Hardy-Littlewood constant.

The programs for A191997, there is no canonical definition to state claims against.
-/

/-! ## A191997.P6014388430068449995

`A000982(2^A330100(n))`
-/

namespace A191997.P6014388430068449995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A330100 n : ℤ))).toNat

end

end A191997.P6014388430068449995

/-! ## A191997.P8643865741148803870

`A002618(2^A330100(n))`
-/

namespace A191997.P8643865741148803870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A330100 n : ℤ))).toNat

end

end A191997.P8643865741148803870

/-! ## A191997.P12216933740121135150

`A016116(eq[A046951(n+1), A254218(n+1)])`
-/

namespace A191997.P12216933740121135150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A191997.P12216933740121135150

/-!
# A191998: Numerators of partial products of a Hardy-Littlewood constant.

The programs for A191998, there is no canonical definition to state claims against.
-/

/-! ## A191998.P1549043896132851505

`A122906(A029738(n+1)+A025048(2*n))`
-/

namespace A191998.P1549043896132851505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122906 (A029738 (n + 1) + A025048 (2 * n)).toNat

end

end A191998.P1549043896132851505

/-!
# A191999: Denominators of partial products of a Hardy-Littlewood constant.

The programs for A191999, there is no canonical definition to state claims against.
-/

/-! ## A191999.P18332910427677703538

`record[and(A057827(n), A057832(2*n+1))]`
-/

namespace A191999.P18332910427677703538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057827 n) (A057832 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191999.P18332910427677703538

/-! ## A191999.P732162510216218695

`and(A101658(n), A176562(A101658(n)))`
-/

namespace A191999.P732162510216218695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101658 n) (A176562 (A101658 n).toNat)

end

end A191999.P732162510216218695

/-! ## A191999.P13109111513307539781

`A023161(A268699(n+1))*A128055(n)`
-/

namespace A191999.P13109111513307539781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023161 (A268699 (n + 1)).toNat * A128055 n

end

end A191999.P13109111513307539781

