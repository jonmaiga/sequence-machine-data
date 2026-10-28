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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A208900: Number of bitstrings of length n which (if having two or more runs) the last two runs have different lengths.

The programs for A208900, the canonical program `A208900.P5430349981783613534` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208900 has offset 1).

The definition of A208900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208900.P5009040071418218498

`ogf((2-4x+4x^3)/(1-3x+6x^3-4x^4))`
-/

namespace A208900.P5009040071418218498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 0, 4] [1, -3, 0, 6, -4] n

end

end A208900.P5009040071418218498

namespace A208900

/-- `ogf((2-4x+4x^3)/(1-3x+6x^3-4x^4))` -/
def P5009040071418218498.Spec : Prop :=
  ∀ n, P5009040071418218498.a n = A208900 (n + 1)

end A208900

/-! ## A208900.P5430349981783613534

`2+2^(n+1)-2^(floor((n+1)/2)+1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A208900

/-- `2+2^(n+1)-2^(floor((n+1)/2)+1)` -/
def P5430349981783613534.Spec : Prop :=
  ∀ n, P5430349981783613534.a n = (A208900 (n + 1) : ℚ)

end A208900

/-! ## A208900.P15950088448633862654

`2*(2^n-∏[gcd(2, n+1)]+1)`
-/

namespace A208900.P15950088448633862654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ n : ℤ) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1)

end

end A208900.P15950088448633862654

namespace A208900

/-- `2*(2^n-∏[gcd(2, n+1)]+1)` -/
def P15950088448633862654.Spec : Prop :=
  ∀ n, P15950088448633862654.a n = A208900 (n + 1)

end A208900

/-! ## A208900.P17286289987306572173

`2^(n+1)-∑[2*a(n-2)]` with `a(0)=0, a(1)=2`
-/

namespace A208900.P17286289987306572173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A208900.P17286289987306572173

namespace A208900

/-- `2^(n+1)-∑[2*a(n-2)]` -/
def P17286289987306572173.Spec : Prop :=
  ∀ n, P17286289987306572173.a n = A208900 (n + 1)

end A208900

/-! ## A208900.P2547517467321542767

`2*(A233411(n)+1)`
-/

namespace A208900.P2547517467321542767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A233411 n + 1)

end

end A208900.P2547517467321542767

namespace A208900

/-- `2*(A233411(n)+1)` -/
def P2547517467321542767.Spec : Prop :=
  ∀ n, P2547517467321542767.a n = A208900 (n + 1)

end A208900

/-! ## A208900.P15473081805865344887

`2*(Δ[A027556(n)]+1)`
-/

namespace A208900.P15473081805865344887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A208900.P15473081805865344887

namespace A208900

/-- `2*(Δ[A027556(n)]+1)` -/
def P15473081805865344887.Spec : Prop :=
  ∀ n, P15473081805865344887.a n = A208900 (n + 1)

end A208900

/-! ## A208900.P3585316761696992375

`2*(A122746(n)-A000225(n))`
-/

namespace A208900.P3585316761696992375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A122746 n - A000225 n)

end

end A208900.P3585316761696992375

namespace A208900

/-- `2*(A122746(n)-A000225(n))` -/
def P3585316761696992375.Spec : Prop :=
  ∀ n, P3585316761696992375.a n = A208900 (n + 1)

end A208900

/-! ## A208900.P5047985609037679652

`2*(A000079(n)-A060546(n)+1)`
-/

namespace A208900.P5047985609037679652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n - A060546 n + 1)

end

end A208900.P5047985609037679652

namespace A208900

/-- `2*(A000079(n)-A060546(n)+1)` -/
def P5047985609037679652.Spec : Prop :=
  ∀ n, P5047985609037679652.a n = A208900 (n + 1)

end A208900

/-!
# A208901: Number of bitstrings of length n (with at least two runs) where the last two runs have different lengths.

The programs for A208901, the canonical program `A208901.P3341271500141800147` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208901 has offset 1).

The definition of A208901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208901.P3239578853986274090

`ogf(4x^2/(1-2x-2x^2+4x^3))`
-/

namespace A208901.P3239578853986274090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 4] [1, -2, -2, 4] n

end

end A208901.P3239578853986274090

namespace A208901

/-- `ogf(4x^2/(1-2x-2x^2+4x^3))` -/
def P3239578853986274090.Spec : Prop :=
  ∀ n, P3239578853986274090.a n = A208901 (n + 1)

end A208901

/-! ## A208901.P3341271500141800147

`2^(n+1)-2^(floor((n+1)/2)+1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A208901

/-- `2^(n+1)-2^(floor((n+1)/2)+1)` -/
def P3341271500141800147.Spec : Prop :=
  ∀ n, P3341271500141800147.a n = (A208901 (n + 1) : ℚ)

end A208901

/-! ## A208901.P16819825224380125899

`2^n+2*a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A208901.P16819825224380125899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 ^ n + 2 * a (n - 2)

end

end A208901.P16819825224380125899

namespace A208901

/-- `2^n+2*a(n-2)` -/
def P16819825224380125899.Spec : Prop :=
  ∀ n, (P16819825224380125899.a n : ℤ) = A208901 (n + 1)

end A208901

/-! ## A208901.P1555711058474266961

`2*(2^n-∏[gcd(2, n+1)])`
-/

namespace A208901.P1555711058474266961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ n : ℤ) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A208901.P1555711058474266961

namespace A208901

/-- `2*(2^n-∏[gcd(2, n+1)])` -/
def P1555711058474266961.Spec : Prop :=
  ∀ n, P1555711058474266961.a n = A208901 (n + 1)

end A208901

/-! ## A208901.P3884219206632941184

`2*or(a(n-1), a(n-2))` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A208901.P3884219206632941184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4] fun n a =>
  2 * Nat.lor (a (n - 1)) (a (n - 2))

end

end A208901.P3884219206632941184

namespace A208901

/-- `2*or(a(n-1), a(n-2))` -/
def P3884219206632941184.Spec : Prop :=
  ∀ n, (P3884219206632941184.a n : ℤ) = A208901 (n + 1)

end A208901

/-! ## A208901.P3411315256715278558

`2*(2^n-∑[2*a(n-2)])` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A208901.P3411315256715278558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A208901.P3411315256715278558

namespace A208901

/-- `2*(2^n-∑[2*a(n-2)])` -/
def P3411315256715278558.Spec : Prop :=
  ∀ n, P3411315256715278558.a n = A208901 (n + 1)

end A208901

/-! ## A208901.P18230813553476033237

`2*A233411(n)`
-/

namespace A208901.P18230813553476033237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233411 n

end

end A208901.P18230813553476033237

namespace A208901

/-- `2*A233411(n)` -/
def P18230813553476033237.Spec : Prop :=
  ∀ n, P18230813553476033237.a n = A208901 (n + 1)

end A208901

/-! ## A208901.P13065351915224928436

`2*Δ[A027556(n)]`
-/

namespace A208901.P13065351915224928436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A208901.P13065351915224928436

namespace A208901

/-- `2*Δ[A027556(n)]` -/
def P13065351915224928436.Spec : Prop :=
  ∀ n, P13065351915224928436.a n = A208901 (n + 1)

end A208901

/-! ## A208901.P60164146706180003

`2*(A077957(n)+a(n-1))` with `a(0)=0`
-/

namespace A208901.P60164146706180003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (A077957 n + a (n - 1))

end

end A208901.P60164146706180003

namespace A208901

/-- `2*(A077957(n)+a(n-1))` -/
def P60164146706180003.Spec : Prop :=
  ∀ n, P60164146706180003.a n = A208901 (n + 1)

end A208901

/-! ## A208901.P17862334756571884643

`xor(A060546(n), A122746(n))`
-/

namespace A208901.P17862334756571884643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060546 n) (A122746 n)

end

end A208901.P17862334756571884643

namespace A208901

/-- `xor(A060546(n), A122746(n))` -/
def P17862334756571884643.Spec : Prop :=
  ∀ n, P17862334756571884643.a n = A208901 (n + 1)

end A208901

/-! ## A208901.P14760620391675227761

`xor(A097110(n), A290234(n))`
-/

namespace A208901.P14760620391675227761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A097110 n) (A290234 n)

end

end A208901.P14760620391675227761

namespace A208901

/-- `xor(A097110(n), A290234(n))` -/
def P14760620391675227761.Spec : Prop :=
  ∀ n, P14760620391675227761.a n = A208901 (n + 1)

end A208901

/-! ## A208901.P17455485555105213581

`xor(A278755(n), A279872(n))`
-/

namespace A208901.P17455485555105213581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A278755 n) (A279872 n)

end

end A208901.P17455485555105213581

namespace A208901

/-- `xor(A278755(n), A279872(n))` -/
def P17455485555105213581.Spec : Prop :=
  ∀ n, P17455485555105213581.a n = A208901 (n + 1)

end A208901

/-! ## A208901.P5255512356624395646

`A056453(n+1)*A060546(n)`
-/

namespace A208901.P5255512356624395646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056453 (n + 1) * A060546 n

end

end A208901.P5255512356624395646

namespace A208901

/-- `A056453(n+1)*A060546(n)` -/
def P5255512356624395646.Spec : Prop :=
  ∀ n, P5255512356624395646.a n = A208901 (n + 1)

end A208901

/-! ## A208901.P17585244703013506451

`A016116(n+1)*A056453(n+1)`
-/

namespace A208901.P17585244703013506451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) * A056453 (n + 1)

end

end A208901.P17585244703013506451

namespace A208901

/-- `A016116(n+1)*A056453(n+1)` -/
def P17585244703013506451.Spec : Prop :=
  ∀ n, P17585244703013506451.a n = A208901 (n + 1)

end A208901

/-! ## A208901.P18118033098928053560

`(A027383(n)-A060546(n))*A060546(n)`
-/

namespace A208901.P18118033098928053560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027383 n - A060546 n) * A060546 n

end

end A208901.P18118033098928053560

namespace A208901

/-- `(A027383(n)-A060546(n))*A060546(n)` -/
def P18118033098928053560.Spec : Prop :=
  ∀ n, P18118033098928053560.a n = A208901 (n + 1)

end A208901

/-! ## A208901.P13869724355034785089

`A297619(n+1)/2`
-/

namespace A208901.P13869724355034785089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297619 (n + 1) : ℚ) / 2

end

end A208901.P13869724355034785089

namespace A208901

/-- `A297619(n+1)/2` -/
def P13869724355034785089.Spec : Prop :=
  ∀ n, P13869724355034785089.a n = (A208901 (n + 1) : ℚ)

end A208901

/-! ## A208901.P2697073236476232442

`and(A086652(n), A122746(n))`
-/

namespace A208901.P2697073236476232442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086652 n) (A122746 n)

end

end A208901.P2697073236476232442

namespace A208901

/-- `and(A086652(n), A122746(n))` -/
def P2697073236476232442.Spec : Prop :=
  ∀ n, P2697073236476232442.a n = A208901 (n + 1)

end A208901

/-! ## A208901.P15394863144237039048

`and(A086652(n), A288811(n))`
-/

namespace A208901.P15394863144237039048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086652 n) (A288811 n)

end

end A208901.P15394863144237039048

namespace A208901

/-- `and(A086652(n), A288811(n))` -/
def P15394863144237039048.Spec : Prop :=
  ∀ n, P15394863144237039048.a n = A208901 (n + 1)

end A208901

/-! ## A208901.P15483607613987199826

`and(A086652(n), A288831(n))`
-/

namespace A208901.P15483607613987199826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086652 n) (A288831 n)

end

end A208901.P15483607613987199826

namespace A208901

/-- `and(A086652(n), A288831(n))` -/
def P15483607613987199826.Spec : Prop :=
  ∀ n, P15483607613987199826.a n = A208901 (n + 1)

end A208901

/-! ## A208901.P18236684430586031093

`and(A086652(n), A288897(n))`
-/

namespace A208901.P18236684430586031093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086652 n) (A288897 n)

end

end A208901.P18236684430586031093

namespace A208901

/-- `and(A086652(n), A288897(n))` -/
def P18236684430586031093.Spec : Prop :=
  ∀ n, P18236684430586031093.a n = A208901 (n + 1)

end A208901

/-!
# A208902: The sum over all bitstrings b of length n of the number of runs in b not immediately followed by a longer run.

The programs for A208902, the canonical program `A208902.P12281074385460721458` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208902 has offset 1).

The definition of A208902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208902.P5808623126220443762

`A208903(n+1)+2`
-/

namespace A208902.P5808623126220443762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208903 (n + 1) + 2

end

end A208902.P5808623126220443762

namespace A208902

/-- `A208903(n+1)+2` -/
def P5808623126220443762.Spec : Prop :=
  ∀ n, P5808623126220443762.a n = A208902 (n + 1)

theorem P5808623126220443762.correct : P5808623126220443762.Spec := by
  intro n
  simp only [A208902, Nat.add_sub_cancel, A208902.P5808623126220443762.a, A208902.P12281074385460721458.a, A208903, A208903.P7218260234787230813.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A208902

/-! ## A208902.P12281074385460721458

`ogf((2-4x-4x^2+12x^3-4x^4)/(1-5x+6x^2+6x^3-16x^4+8x^5))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A208902

/-- `ogf((2-4x-4x^2+12x^3-4x^4)/(1-5x+6x^2+6x^3-16x^4+8x^5))` -/
def P12281074385460721458.Spec : Prop :=
  ∀ n, P12281074385460721458.a n = A208902 (n + 1)

theorem P12281074385460721458.correct : P12281074385460721458.Spec := by
  intro n
  simp only [A208902, Nat.add_sub_cancel]

end A208902

/-! ## A208902.P18424443065452397028

`A208900(n)+2*a(n-1)` with `a(0)=2`
-/

namespace A208902.P18424443065452397028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A208900 n + 2 * a (n - 1)

end

end A208902.P18424443065452397028

namespace A208902

/-- `A208900(n)+2*a(n-1)` -/
def P18424443065452397028.Spec : Prop :=
  ∀ n, P18424443065452397028.a n = A208902 (n + 1)

end A208902

/-! ## A208902.P2035802010848449629

`A027383(n+1)+n*2^n`
-/

namespace A208902.P2035802010848449629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (n + 1) + (n * 2 ^ n : ℤ)

end

end A208902.P2035802010848449629

namespace A208902

/-- `A027383(n+1)+n*2^n` -/
def P2035802010848449629.Spec : Prop :=
  ∀ n, P2035802010848449629.a n = A208902 (n + 1)

end A208902

/-! ## A208902.P16307489275150643079

`A136252(n)+A002064(n)`
-/

namespace A208902.P16307489275150643079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 n + A002064 n

end

end A208902.P16307489275150643079

namespace A208902

/-- `A136252(n)+A002064(n)` -/
def P16307489275150643079.Spec : Prop :=
  ∀ n, P16307489275150643079.a n = A208902 (n + 1)

end A208902

/-! ## A208902.P1627467594729880660

`A347789(n+1)+A036289(n)+2`
-/

namespace A208902.P1627467594729880660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347789 (n + 1) + (A036289 n + 2)

end

end A208902.P1627467594729880660

namespace A208902

/-- `A347789(n+1)+A036289(n)+2` -/
def P1627467594729880660.Spec : Prop :=
  ∀ n, P1627467594729880660.a n = A208902 (n + 1)

end A208902

/-! ## A208902.P3283441051211542552

`5*a(n-1)-6*a(n-2)-6*a(n-3)+16*a(n-4)-8*a(n-5)` with `a(0)=2, a(1)=6, a(2)=14, a(3)=34, a(4)=78`
-/

namespace A208902.P3283441051211542552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 14, 34, 78] fun n a =>
  5 * a (n - 1) - 6 * a (n - 2) - 6 * a (n - 3) + 16 * a (n - 4) - 8 * a (n - 5)

end

end A208902.P3283441051211542552

namespace A208902

/-- `5*a(n-1)-6*a(n-2)-6*a(n-3)+16*a(n-4)-8*a(n-5)` -/
def P3283441051211542552.Spec : Prop :=
  ∀ n, P3283441051211542552.a n = A208902 (n + 1)

end A208902

/-!
# A208903: The sum over all bitstrings b of length n with at least two runs of the number of runs in b not immediately followed by a longer run.

The programs for A208903, the canonical program `A208903.P7218260234787230813` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208903 has offset 1).

The definition of A208903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208903.P7218260234787230813

`A208902(n+1)-2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208903

/-- `A208902(n+1)-2` -/
def P7218260234787230813.Spec : Prop :=
  ∀ n, P7218260234787230813.a n = A208903 (n + 1)

theorem P7218260234787230813.correct : P7218260234787230813.Spec := by
  intro n
  simp only [A208903, Nat.add_sub_cancel]

end A208903

/-! ## A208903.P5670837588266853660

`A347789(n+1)+A036289(n)`
-/

namespace A208903.P5670837588266853660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347789 (n + 1) + A036289 n

end

end A208903.P5670837588266853660

namespace A208903

/-- `A347789(n+1)+A036289(n)` -/
def P5670837588266853660.Spec : Prop :=
  ∀ n, P5670837588266853660.a n = A208903 (n + 1)

end A208903

/-! ## A208903.P8164946859884706585

`A002064(n)+A136252(n)-2`
-/

namespace A208903.P8164946859884706585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n + (A136252 n - 2)

end

end A208903.P8164946859884706585

namespace A208903

/-- `A002064(n)+A136252(n)-2` -/
def P8164946859884706585.Spec : Prop :=
  ∀ n, P8164946859884706585.a n = A208903 (n + 1)

end A208903

/-! ## A208903.P11923882633469291623

`5*a(n-1)-6*a(n-2)-6*a(n-3)+16*a(n-4)-8*a(n-5)` with `a(0)=0, a(1)=4, a(2)=12, a(3)=32, a(4)=76`
-/

namespace A208903.P11923882633469291623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 12, 32, 76] fun n a =>
  5 * a (n - 1) - 6 * a (n - 2) - 6 * a (n - 3) + 16 * a (n - 4) - 8 * a (n - 5)

end

end A208903.P11923882633469291623

namespace A208903

/-- `5*a(n-1)-6*a(n-2)-6*a(n-3)+16*a(n-4)-8*a(n-5)` -/
def P11923882633469291623.Spec : Prop :=
  ∀ n, P11923882633469291623.a n = A208903 (n + 1)

end A208903

/-! ## A208903.P6091692605177831618

`and(A141725(n), A208902(n+1))`
-/

namespace A208903.P6091692605177831618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141725 n) (A208902 (n + 1))

end

end A208903.P6091692605177831618

namespace A208903

/-- `and(A141725(n), A208902(n+1))` -/
def P6091692605177831618.Spec : Prop :=
  ∀ n, P6091692605177831618.a n = A208903 (n + 1)

end A208903

/-! ## A208903.P11567333979315694818

`and(A208902(n+1), A267921(n))`
-/

namespace A208903.P11567333979315694818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A208902 (n + 1)) (A267921 n)

end

end A208903.P11567333979315694818

namespace A208903

/-- `and(A208902(n+1), A267921(n))` -/
def P11567333979315694818.Spec : Prop :=
  ∀ n, P11567333979315694818.a n = A208903 (n + 1)

end A208903

/-! ## A208903.P5875372705872229337

`and(A181358(n), A208902(n+1))`
-/

namespace A208903.P5875372705872229337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A181358 n) (A208902 (n + 1))

end

end A208903.P5875372705872229337

namespace A208903

/-- `and(A181358(n), A208902(n+1))` -/
def P5875372705872229337.Spec : Prop :=
  ∀ n, P5875372705872229337.a n = A208903 (n + 1)

end A208903

/-!
# A208904: Triangle of coefficients of polynomials v(n,x) jointly generated with A208660; see the Formula section.

The programs for A208904, the canonical program `A208904.P16805208523548647922` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208904 has offset 1).

The definition of A208904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208904.P16805208523548647922

`2*A208752(n+1)-A114188(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208904

/-- `2*A208752(n+1)-A114188(n)` -/
def P16805208523548647922.Spec : Prop :=
  ∀ n, P16805208523548647922.a n = A208904 (n + 1)

theorem P16805208523548647922.correct : P16805208523548647922.Spec := by
  intro n
  simp only [A208904, Nat.add_sub_cancel]

end A208904

/-! ## A208904.P10217979337360726905

`A112351(A061579(n))`
-/

namespace A208904.P10217979337360726905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112351 (A061579 n).toNat

end

end A208904.P10217979337360726905

namespace A208904

/-- `A112351(A061579(n))` -/
def P10217979337360726905.Spec : Prop :=
  ∀ n, P10217979337360726905.a n = A208904 (n + 1)

end A208904

/-! ## A208904.P2126940303907445433

`A112351(A114327(n)+n)`
-/

namespace A208904.P2126940303907445433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112351 (A114327 n + (n : ℤ)).toNat

end

end A208904.P2126940303907445433

namespace A208904

/-- `A112351(A114327(n)+n)` -/
def P2126940303907445433.Spec : Prop :=
  ∀ n, P2126940303907445433.a n = A208904 (n + 1)

end A208904

/-! ## A208904.P8720683926389812254

`A112351(∑[A198954(n)-1])`
-/

namespace A208904.P8720683926389812254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112351 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208904.P8720683926389812254

namespace A208904

/-- `A112351(∑[A198954(n)-1])` -/
def P8720683926389812254.Spec : Prop :=
  ∀ n, P8720683926389812254.a n = A208904 (n + 1)

end A208904

/-! ## A208904.P8182238720404086892

`A112351(A038722(n+1)-1)`
-/

namespace A208904.P8182238720404086892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112351 (A038722 (n + 1) - 1).toNat

end

end A208904.P8182238720404086892

namespace A208904

/-- `A112351(A038722(n+1)-1)` -/
def P8182238720404086892.Spec : Prop :=
  ∀ n, P8182238720404086892.a n = A208904 (n + 1)

end A208904

/-! ## A208904.P5121709742766521354

`A112351(A038722(n+2))`
-/

namespace A208904.P5121709742766521354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112351 (A038722 (n + 2)).toNat

end

end A208904.P5121709742766521354

namespace A208904

/-- `A112351(A038722(n+2))` -/
def P5121709742766521354.Spec : Prop :=
  ∀ n, P5121709742766521354.a n = A208904 (n + 1)

end A208904

/-! ## A208904.P9320217266996566564

`A114188(n)+A005843(A208752(n+1)-A114188(n))`
-/

namespace A208904.P9320217266996566564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 n + A005843 (A208752 (n + 1) - A114188 n).toNat

end

end A208904.P9320217266996566564

namespace A208904

/-- `A114188(n)+A005843(A208752(n+1)-A114188(n))` -/
def P9320217266996566564.Spec : Prop :=
  ∀ n, P9320217266996566564.a n = A208904 (n + 1)

end A208904

/-! ## A208904.P12781582760175811046

`A005843(A208752(n+1))-A114188(n)`
-/

namespace A208904.P12781582760175811046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A208752 (n + 1)).toNat - A114188 n

end

end A208904.P12781582760175811046

namespace A208904

/-- `A005843(A208752(n+1))-A114188(n)` -/
def P12781582760175811046.Spec : Prop :=
  ∀ n, P12781582760175811046.a n = A208904 (n + 1)

end A208904

/-!
# A208905: Triangle of coefficients of polynomials u(n,x) jointly generated with A208906; see the Formula section.

The programs for A208905, the canonical program `A208905.P7530017606286972436` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208905 has offset 1).

The definition of A208905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208905.P7530017606286972436

`(A060510(n)+1)*A208520(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A208905

/-- `(A060510(n)+1)*A208520(n+1)` -/
def P7530017606286972436.Spec : Prop :=
  ∀ n, P7530017606286972436.a n = A208905 (n + 1)

theorem P7530017606286972436.correct : P7530017606286972436.Spec := by
  intro n
  simp only [A208905, Nat.add_sub_cancel]

end A208905

/-! ## A208905.P1666806121774271950

`A000034(A002262(n))*A208520(n+1)`
-/

namespace A208905.P1666806121774271950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002262 n).toNat * A208520 (n + 1)

end

end A208905.P1666806121774271950

namespace A208905

/-- `A000034(A002262(n))*A208520(n+1)` -/
def P1666806121774271950.Spec : Prop :=
  ∀ n, P1666806121774271950.a n = A208905 (n + 1)

end A208905

/-! ## A208905.P11462113019556522810

`A134521(A112367(n))*A208520(n+1)`
-/

namespace A208905.P11462113019556522810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134521 (A112367 n).toNat * A208520 (n + 1)

end

end A208905.P11462113019556522810

namespace A208905

/-- `A134521(A112367(n))*A208520(n+1)` -/
def P11462113019556522810.Spec : Prop :=
  ∀ n, P11462113019556522810.a n = A208905 (n + 1)

end A208905

/-! ## A208905.P17761616976462723387

`A208913(n+1)/A016116(A002262(n))`
-/

namespace A208905.P17761616976462723387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208913 (n + 1) : ℚ) / (A016116 (A002262 n).toNat : ℚ)

end

end A208905.P17761616976462723387

namespace A208905

/-- `A208913(n+1)/A016116(A002262(n))` -/
def P17761616976462723387.Spec : Prop :=
  ∀ n, P17761616976462723387.a n = (A208905 (n + 1) : ℚ)

end A208905

/-! ## A208905.P15770904833655508181

`A208913(n+1)/A016116(A002260(n+1)-1)`
-/

namespace A208905.P15770904833655508181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208913 (n + 1) : ℚ) / (A016116 (A002260 (n + 1) - 1).toNat : ℚ)

end

end A208905.P15770904833655508181

namespace A208905

/-- `A208913(n+1)/A016116(A002260(n+1)-1)` -/
def P15770904833655508181.Spec : Prop :=
  ∀ n, P15770904833655508181.a n = (A208905 (n + 1) : ℚ)

end A208905

/-! ## A208905.P3054836578049811335

`A135837(n+1)/A117919(n+1)*A208520(n+1)`
-/

namespace A208905.P3054836578049811335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135837 (n + 1) : ℚ) / (A117919 (n + 1) : ℚ) * (A208520 (n + 1) : ℚ)

end

end A208905.P3054836578049811335

namespace A208905

/-- `A135837(n+1)/A117919(n+1)*A208520(n+1)` -/
def P3054836578049811335.Spec : Prop :=
  ∀ n, P3054836578049811335.a n = (A208905 (n + 1) : ℚ)

end A208905

/-! ## A208905.P13675504624712764219

`A208520(n+1)/A208906(n+1)*A208521(n+1)`
-/

namespace A208905.P13675504624712764219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208520 (n + 1) : ℚ) / (A208906 (n + 1) : ℚ) * (A208521 (n + 1) : ℚ)

end

end A208905.P13675504624712764219

namespace A208905

/-- `A208520(n+1)/A208906(n+1)*A208521(n+1)` -/
def P13675504624712764219.Spec : Prop :=
  ∀ n, P13675504624712764219.a n = (A208905 (n + 1) : ℚ)

end A208905

/-! ## A208905.P10294384965611306222

`A208520(n+1)*A208521(n+1)/A208906(n+1)`
-/

namespace A208905.P10294384965611306222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208520 (n + 1) * A208521 (n + 1) : ℚ) / (A208906 (n + 1) : ℚ)

end

end A208905.P10294384965611306222

namespace A208905

/-- `A208520(n+1)*A208521(n+1)/A208906(n+1)` -/
def P10294384965611306222.Spec : Prop :=
  ∀ n, P10294384965611306222.a n = (A208905 (n + 1) : ℚ)

end A208905

/-! ## A208905.P17981403768455613622

`A000034(A061885(n))*A208520(n+1)`
-/

namespace A208905.P17981403768455613622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A061885 n).toNat * A208520 (n + 1)

end

end A208905.P17981403768455613622

namespace A208905

/-- `A000034(A061885(n))*A208520(n+1)` -/
def P17981403768455613622.Spec : Prop :=
  ∀ n, P17981403768455613622.a n = A208905 (n + 1)

end A208905

/-! ## A208905.P12125011742692779288

`A054977(A162514(n))*A208520(n+1)`
-/

namespace A208905.P12125011742692779288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A162514 n).toNat * A208520 (n + 1)

end

end A208905.P12125011742692779288

namespace A208905

/-- `A054977(A162514(n))*A208520(n+1)` -/
def P12125011742692779288.Spec : Prop :=
  ∀ n, P12125011742692779288.a n = A208905 (n + 1)

end A208905

/-! ## A208905.P16183560699064168557

`A007913(A059268(n))*A208520(n+1)`
-/

namespace A208905.P16183560699064168557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A059268 n).toNat * A208520 (n + 1)

end

end A208905.P16183560699064168557

namespace A208905

/-- `A007913(A059268(n))*A208520(n+1)` -/
def P16183560699064168557.Spec : Prop :=
  ∀ n, P16183560699064168557.a n = A208905 (n + 1)

end A208905

/-!
# A208906: Triangle of coefficients of polynomials v(n,x) jointly generated with A208905; see the Formula section.

The programs for A208906, the canonical program `A208906.P14491951014712469072` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208906 has offset 1).

The definition of A208906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208906.P14491951014712469072

`A016116(A002262(n))*A133084(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A208906

/-- `A016116(A002262(n))*A133084(n+1)` -/
def P14491951014712469072.Spec : Prop :=
  ∀ n, P14491951014712469072.a n = A208906 (n + 1)

theorem P14491951014712469072.correct : P14491951014712469072.Spec := by
  intro n
  simp only [A208906, Nat.add_sub_cancel]

end A208906

/-! ## A208906.P14639791342447315048

`A208521(n+1)/A000034(A002262(n))`
-/

namespace A208906.P14639791342447315048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208521 (n + 1) : ℚ) / (A000034 (A002262 n).toNat : ℚ)

end

end A208906.P14639791342447315048

namespace A208906

/-- `A208521(n+1)/A000034(A002262(n))` -/
def P14639791342447315048.Spec : Prop :=
  ∀ n, P14639791342447315048.a n = (A208906 (n + 1) : ℚ)

end A208906

/-! ## A208906.P12825466574231309719

`A016116(A002260(n+1)-1)*A133084(n+1)`
-/

namespace A208906.P12825466574231309719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002260 (n + 1) - 1).toNat * A133084 (n + 1)

end

end A208906.P12825466574231309719

namespace A208906

/-- `A016116(A002260(n+1)-1)*A133084(n+1)` -/
def P12825466574231309719.Spec : Prop :=
  ∀ n, P12825466574231309719.a n = A208906 (n + 1)

theorem P12825466574231309719.correct : P12825466574231309719.Spec := by
  intro n
  simp only [A208906, Nat.add_sub_cancel, A208906.P12825466574231309719.a, A208906.P14491951014712469072.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A016116, A016116.P661627231399665482.a, A133084, A133084.P4031868736069884571.a, A007318, A007318.P11755526479805562006.a, A060510, A060510.P4619639518901930436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A208906

/-! ## A208906.P13317891292990840072

`A135837(n+2)-Δ[A117919(n+1)]`
-/

namespace A208906.P13317891292990840072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135837 (n + 2) - (f1 (n + 1) - f1 n)

end

end A208906.P13317891292990840072

namespace A208906

/-- `A135837(n+2)-Δ[A117919(n+1)]` -/
def P13317891292990840072.Spec : Prop :=
  ∀ n, P13317891292990840072.a n = A208906 (n + 1)

end A208906

/-! ## A208906.P7535902271603701097

`A117919(n+1)+A135837(n+2)-A117919(n+2)`
-/

namespace A208906.P7535902271603701097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117919 (n + 1) + (A135837 (n + 2) - A117919 (n + 2))

end

end A208906.P7535902271603701097

namespace A208906

/-- `A117919(n+1)+A135837(n+2)-A117919(n+2)` -/
def P7535902271603701097.Spec : Prop :=
  ∀ n, P7535902271603701097.a n = A208906 (n + 1)

end A208906

/-! ## A208906.P2233874925996078414

`A208521(n+1)/A000034(A061885(n))`
-/

namespace A208906.P2233874925996078414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208521 (n + 1) : ℚ) / (A000034 (A061885 n).toNat : ℚ)

end

end A208906.P2233874925996078414

namespace A208906

/-- `A208521(n+1)/A000034(A061885(n))` -/
def P2233874925996078414.Spec : Prop :=
  ∀ n, P2233874925996078414.a n = (A208906 (n + 1) : ℚ)

end A208906

/-! ## A208906.P5480046032640753463

`A208521(n+1)/A007913(A059268(n))`
-/

namespace A208906.P5480046032640753463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208521 (n + 1) : ℚ) / (A007913 (A059268 n).toNat : ℚ)

end

end A208906.P5480046032640753463

namespace A208906

/-- `A208521(n+1)/A007913(A059268(n))` -/
def P5480046032640753463.Spec : Prop :=
  ∀ n, P5480046032640753463.a n = (A208906 (n + 1) : ℚ)

end A208906

/-! ## A208906.P14174779309829155095

`A000188(A059268(n))*A133084(n+1)`
-/

namespace A208906.P14174779309829155095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A059268 n).toNat * A133084 (n + 1)

end

end A208906.P14174779309829155095

namespace A208906

/-- `A000188(A059268(n))*A133084(n+1)` -/
def P14174779309829155095.Spec : Prop :=
  ∀ n, P14174779309829155095.a n = A208906 (n + 1)

end A208906

/-! ## A208906.P2402060376285054170

`A000188(A011782(A002260(n+1)))*A133084(n+1)`
-/

namespace A208906.P2402060376285054170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A011782 (A002260 (n + 1)).toNat).toNat * A133084 (n + 1)

end

end A208906.P2402060376285054170

namespace A208906

/-- `A000188(A011782(A002260(n+1)))*A133084(n+1)` -/
def P2402060376285054170.Spec : Prop :=
  ∀ n, P2402060376285054170.a n = A208906 (n + 1)

end A208906

/-! ## A208906.P15199133581354445828

`A156136(n)/A208905(n+1)`
-/

namespace A208906.P15199133581354445828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156136 n : ℚ) / (A208905 (n + 1) : ℚ)

end

end A208906.P15199133581354445828

namespace A208906

/-- `A156136(n)/A208905(n+1)` -/
def P15199133581354445828.Spec : Prop :=
  ∀ n, P15199133581354445828.a n = (A208906 (n + 1) : ℚ)

end A208906

/-!
# A208907: Triangle of coefficients of polynomials u(n,x) jointly generated with A208756; see the Formula section.

The programs for A208907, there is no canonical definition to state claims against.
-/

/-! ## A208907.P726269240421384915

`2*A210555(n+1)-A208755(n+1)`
-/

namespace A208907.P726269240421384915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210555 (n + 1) - A208755 (n + 1)

end

end A208907.P726269240421384915

/-! ## A208907.P10129420453480105931

`A208755(comp[∑[n]]+1)-A208755(n+1)`
-/

namespace A208907.P10129420453480105931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208755 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - A208755 (n + 1)

end

end A208907.P10129420453480105931

/-! ## A208907.P11599760100139398876

`A005843(A210555(n+1))-A208755(n+1)`
-/

namespace A208907.P11599760100139398876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A210555 (n + 1)).toNat - A208755 (n + 1)

end

end A208907.P11599760100139398876

/-! ## A208907.P11082775960234971038

`2*A210555(n+1)-A122953(A249027(n+1))`
-/

namespace A208907.P11082775960234971038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210555 (n + 1) - A122953 (A249027 (n + 1)).toNat

end

end A208907.P11082775960234971038

/-! ## A208907.P6468001625361090365

`A005843(A210555(n+1))-A122953(A249027(n+1))`
-/

namespace A208907.P6468001625361090365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A210555 (n + 1)).toNat - A122953 (A249027 (n + 1)).toNat

end

end A208907.P6468001625361090365

/-!
# A208908: Triangle of coefficients of polynomials v(n,x) jointly generated with A208923; see the Formula section.

The programs for A208908, there is no canonical definition to state claims against.
-/

/-! ## A208908.P11124961927683800700

`A209705(n+1)+A209706(n+1)-A209763(n+1)`
-/

namespace A208908.P11124961927683800700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (n + 1) + (A209706 (n + 1) - A209763 (n + 1))

end

end A208908.P11124961927683800700

/-! ## A208908.P447734652752418162

`A209771(n+1)+A209772(n+1)-A209763(n+1)`
-/

namespace A208908.P447734652752418162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209771 (n + 1) + (A209772 (n + 1) - A209763 (n + 1))

end

end A208908.P447734652752418162

/-! ## A208908.P2348674375381063490

`A209159(n+2)-Δ[A013609(n)]`
-/

namespace A208908.P2348674375381063490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209159 (n + 2) - (f1 (n + 1) - f1 n)

end

end A208908.P2348674375381063490

/-! ## A208908.P3966567023616899562

`A207627(n+2)-A209763(n+1)`
-/

namespace A208908.P3966567023616899562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (n + 2) - A209763 (n + 1)

end

end A208908.P3966567023616899562

/-! ## A208908.P5914968074406625640

`A208324(A066182(n+1))-A209763(n+1)`
-/

namespace A208908.P5914968074406625640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208324 (A066182 (n + 1)).toNat - A209763 (n + 1)

end

end A208908.P5914968074406625640

/-!
# A208909: Triangle of coefficients of polynomials u(n,x) jointly generated with A208930; see the Formula section.

The programs for A208909, there is no canonical definition to state claims against.
-/

/-! ## A208909.P12099324432753895653

`A204330(A009766(n)*A013609(n))`
-/

namespace A208909.P12099324432753895653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A009766 n * A013609 n).toNat

end

end A208909.P12099324432753895653

/-!
# A208910: Triangle of coefficients of polynomials v(n,x) jointly generated with A208755; see the Formula section.

The programs for A208910, there is no canonical definition to state claims against.
-/

/-! ## A208910.P5103898547150435594

`2*A208757(n+1)-A208332(n+1)`
-/

namespace A208910.P5103898547150435594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208757 (n + 1) - A208332 (n + 1)

end

end A208910.P5103898547150435594

/-! ## A208910.P9169524519123398739

`(A208757(n+1)+A208527(n+1))/2`
-/

namespace A208910.P9169524519123398739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208757 (n + 1) + A208527 (n + 1) : ℚ) / 2

end

end A208910.P9169524519123398739

/-! ## A208910.P16215823583556532330

`A208332(n+1)+A208527(n+1)-A208757(n+1)`
-/

namespace A208910.P16215823583556532330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208332 (n + 1) + (A208527 (n + 1) - A208757 (n + 1))

end

end A208910.P16215823583556532330

/-! ## A208910.P9064780887101175128

`A208333(n+1)+A208757(n+1)-A208758(n+1)`
-/

namespace A208910.P9064780887101175128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208333 (n + 1) + (A208757 (n + 1) - A208758 (n + 1))

end

end A208910.P9064780887101175128

/-! ## A208910.P9552500025479858978

`A208333(n+2)-Δ[A208758(n+1)]`
-/

namespace A208910.P9552500025479858978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208333 (n + 2) - (f1 (n + 1) - f1 n)

end

end A208910.P9552500025479858978

/-! ## A208910.P8246589213585274102

`A208332(n+1)+A005843(A208757(n+1)-A208332(n+1))`
-/

namespace A208910.P8246589213585274102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208332 (n + 1) + A005843 (A208757 (n + 1) - A208332 (n + 1)).toNat

end

end A208910.P8246589213585274102

/-! ## A208910.P15283219896081648060

`A005843(A208757(n+1))-A208332(n+1)`
-/

namespace A208910.P15283219896081648060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A208757 (n + 1)).toNat - A208332 (n + 1)

end

end A208910.P15283219896081648060

/-!
# A208911: Triangle of coefficients of polynomials u(n,x) jointly generated with A208912; see the Formula section.

The programs for A208911, there is no canonical definition to state claims against.
-/

/-! ## A208911.P2347931813375276944

`A374054(A066991(n+1))`
-/

namespace A208911.P2347931813375276944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374054 (A066991 (n + 1)).toNat

end

end A208911.P2347931813375276944

/-! ## A208911.P17443752565143936812

`A005555(xor(A201635(n), A347972(n)))`
-/

namespace A208911.P17443752565143936812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (Int.xor (A201635 n) (A347972 n)).toNat

end

end A208911.P17443752565143936812

/-! ## A208911.P10294518496506088006

`A218876(A101049(n+1))+A101024(n)`
-/

namespace A208911.P10294518496506088006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218876 (A101049 (n + 1)).toNat + A101024 n

end

end A208911.P10294518496506088006

/-! ## A208911.P14470010365521809969

`A137564(A208913(n+1)^A097805(n))`
-/

namespace A208911.P14470010365521809969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (SequenceMachineLib.roundAway ((A208913 (n + 1) : ℚ) ^ (A097805 n : ℤ))).toNat

end

end A208911.P14470010365521809969

/-!
# A208912: Triangle of coefficients of polynomials v(n,x) jointly generated with A208911; see the Formula section.

The programs for A208912, there is no canonical definition to state claims against.
-/

/-! ## A208912.P15819579323431054416

`A100196(n)+A096532(A342088(n))`
-/

namespace A208912.P15819579323431054416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n + A096532 (A342088 n).toNat

end

end A208912.P15819579323431054416

/-! ## A208912.P8746201695195717660

`or(A210554(n+1), A321379(A002524(n)))`
-/

namespace A208912.P8746201695195717660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A210554 (n + 1)) (A321379 (A002524 n).toNat)

end

end A208912.P8746201695195717660

/-! ## A208912.P335758489196423545

`A254947(n+1)-A054991(A035348(n+1))`
-/

namespace A208912.P335758489196423545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (n + 1) - A054991 (A035348 (n + 1)).toNat

end

end A208912.P335758489196423545

/-! ## A208912.P10089742643047752760

`xor(A050174(n+3), A228495(A030078(n+1)))`
-/

namespace A208912.P10089742643047752760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A050174 (n + 3)) (A228495 (A030078 (n + 1)).toNat)

end

end A208912.P10089742643047752760

/-!
# A208913: Triangle of coefficients of polynomials u(n,x) jointly generated with A208914; see the Formula section.

The programs for A208913, the canonical program `A208913.P2125602932926388690` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208913 has offset 1).

The definition of A208913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208913.P2125602932926388690

`A059268(n)*A133567(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A208913

/-- `A059268(n)*A133567(n+1)` -/
def P2125602932926388690.Spec : Prop :=
  ∀ n, P2125602932926388690.a n = A208913 (n + 1)

theorem P2125602932926388690.correct : P2125602932926388690.Spec := by
  intro n
  simp only [A208913, Nat.add_sub_cancel]

end A208913

/-! ## A208913.P14505365688221832797

`A016116(A002262(n))*A208905(n+1)`
-/

namespace A208913.P14505365688221832797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002262 n).toNat * A208905 (n + 1)

end

end A208913.P14505365688221832797

namespace A208913

/-- `A016116(A002262(n))*A208905(n+1)` -/
def P14505365688221832797.Spec : Prop :=
  ∀ n, P14505365688221832797.a n = A208913 (n + 1)

end A208913

/-! ## A208913.P13070603667029621321

`A060546(A002262(n))*A208520(n+1)`
-/

namespace A208913.P13070603667029621321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A002262 n).toNat * A208520 (n + 1)

end

end A208913.P13070603667029621321

namespace A208913

/-- `A060546(A002262(n))*A208520(n+1)` -/
def P13070603667029621321.Spec : Prop :=
  ∀ n, P13070603667029621321.a n = A208913 (n + 1)

end A208913

/-! ## A208913.P7575507049052797067

`A016116(A002260(n+1))*A208520(n+1)`
-/

namespace A208913.P7575507049052797067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002260 (n + 1)).toNat * A208520 (n + 1)

end

end A208913.P7575507049052797067

namespace A208913

/-- `A016116(A002260(n+1))*A208520(n+1)` -/
def P7575507049052797067.Spec : Prop :=
  ∀ n, P7575507049052797067.a n = A208913 (n + 1)

end A208913

/-! ## A208913.P7730778867334140333

`A016116(A002262(n)+1)*A208520(n+1)`
-/

namespace A208913.P7730778867334140333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002262 n + 1).toNat * A208520 (n + 1)

end

end A208913.P7730778867334140333

namespace A208913

/-- `A016116(A002262(n)+1)*A208520(n+1)` -/
def P7730778867334140333.Spec : Prop :=
  ∀ n, P7730778867334140333.a n = A208913 (n + 1)

end A208913

/-! ## A208913.P4925796238144140553

`A016116(A002260(n+1)-1)*A208905(n+1)`
-/

namespace A208913.P4925796238144140553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002260 (n + 1) - 1).toNat * A208905 (n + 1)

end

end A208913.P4925796238144140553

namespace A208913

/-- `A016116(A002260(n+1)-1)*A208905(n+1)` -/
def P4925796238144140553.Spec : Prop :=
  ∀ n, P4925796238144140553.a n = A208913 (n + 1)

end A208913

/-! ## A208913.P4735431061521352954

`A209158(n+1)+A209159(n+1)-A208914(n+1)`
-/

namespace A208913.P4735431061521352954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209158 (n + 1) + (A209159 (n + 1) - A208914 (n + 1))

end

end A208913.P4735431061521352954

namespace A208913

/-- `A209158(n+1)+A209159(n+1)-A208914(n+1)` -/
def P4735431061521352954.Spec : Prop :=
  ∀ n, P4735431061521352954.a n = A208913 (n + 1)

end A208913

/-! ## A208913.P9715149690273311685

`A208520(n+1)/A133084(n+1)*A208521(n+1)`
-/

namespace A208913.P9715149690273311685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208520 (n + 1) : ℚ) / (A133084 (n + 1) : ℚ) * (A208521 (n + 1) : ℚ)

end

end A208913.P9715149690273311685

namespace A208913

/-- `A208520(n+1)/A133084(n+1)*A208521(n+1)` -/
def P9715149690273311685.Spec : Prop :=
  ∀ n, P9715149690273311685.a n = (A208913 (n + 1) : ℚ)

end A208913

/-! ## A208913.P10903994793535328419

`A000188(A059268(n))*A208905(n+1)`
-/

namespace A208913.P10903994793535328419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A059268 n).toNat * A208905 (n + 1)

end

end A208913.P10903994793535328419

namespace A208913

/-- `A000188(A059268(n))*A208905(n+1)` -/
def P10903994793535328419.Spec : Prop :=
  ∀ n, P10903994793535328419.a n = A208913 (n + 1)

end A208913

/-! ## A208913.P13517974084967647036

`A019554(A059268(n))*A208520(n+1)`
-/

namespace A208913.P13517974084967647036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A059268 n).toNat * A208520 (n + 1)

end

end A208913.P13517974084967647036

namespace A208913

/-- `A019554(A059268(n))*A208520(n+1)` -/
def P13517974084967647036.Spec : Prop :=
  ∀ n, P13517974084967647036.a n = A208913 (n + 1)

end A208913

/-!
# A208914: Triangle of coefficients of polynomials v(n,x) jointly generated with A208913; see the Formula section.

The programs for A208914, the canonical program `A208914.P18164605293524257971` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208914 has offset 1).

The definition of A208914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208914.P18164605293524257971

`A059268(n)*A133084(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A208914

/-- `A059268(n)*A133084(n+1)` -/
def P18164605293524257971.Spec : Prop :=
  ∀ n, P18164605293524257971.a n = A208914 (n + 1)

theorem P18164605293524257971.correct : P18164605293524257971.Spec := by
  intro n
  simp only [A208914, Nat.add_sub_cancel]

end A208914

/-! ## A208914.P2415820637363298536

`2^A002262(n)*A133084(n+1)`
-/

namespace A208914.P2415820637363298536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A133084 (n + 1) : ℚ)

end

end A208914.P2415820637363298536

namespace A208914

/-- `2^A002262(n)*A133084(n+1)` -/
def P2415820637363298536.Spec : Prop :=
  ∀ n, P2415820637363298536.a n = (A208914 (n + 1) : ℚ)

end A208914

/-! ## A208914.P8655653292144096871

`A000079(A002262(n))*A133084(n+1)`
-/

namespace A208914.P8655653292144096871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A133084 (n + 1)

end

end A208914.P8655653292144096871

namespace A208914

/-- `A000079(A002262(n))*A133084(n+1)` -/
def P8655653292144096871.Spec : Prop :=
  ∀ n, P8655653292144096871.a n = A208914 (n + 1)

end A208914

/-! ## A208914.P9920128153860466558

`A016116(A002262(n))*A208521(n+1)`
-/

namespace A208914.P9920128153860466558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002262 n).toNat * A208521 (n + 1)

end

end A208914.P9920128153860466558

namespace A208914

/-- `A016116(A002262(n))*A208521(n+1)` -/
def P9920128153860466558.Spec : Prop :=
  ∀ n, P9920128153860466558.a n = A208914 (n + 1)

end A208914

/-! ## A208914.P4210297078377810939

`A011782(A002260(n+1))*A133084(n+1)`
-/

namespace A208914.P4210297078377810939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A133084 (n + 1)

end

end A208914.P4210297078377810939

namespace A208914

/-- `A011782(A002260(n+1))*A133084(n+1)` -/
def P4210297078377810939.Spec : Prop :=
  ∀ n, P4210297078377810939.a n = A208914 (n + 1)

end A208914

/-! ## A208914.P549403231559251607

`A016116(A002262(n)+1)*A208906(n+1)`
-/

namespace A208914.P549403231559251607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002262 n + 1).toNat * A208906 (n + 1)

end

end A208914.P549403231559251607

namespace A208914

/-- `A016116(A002262(n)+1)*A208906(n+1)` -/
def P549403231559251607.Spec : Prop :=
  ∀ n, P549403231559251607.a n = A208914 (n + 1)

end A208914

/-! ## A208914.P4166863302393887397

`A133084(n+1)*A156552(A037126(n+1))`
-/

namespace A208914.P4166863302393887397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133084 (n + 1) * A156552 (A037126 (n + 1)).toNat

end

end A208914.P4166863302393887397

namespace A208914

/-- `A133084(n+1)*A156552(A037126(n+1))` -/
def P4166863302393887397.Spec : Prop :=
  ∀ n, P4166863302393887397.a n = A208914 (n + 1)

end A208914

/-! ## A208914.P13083815406573598859

`A016116(2*A002262(n))*A133084(n+1)`
-/

namespace A208914.P13083815406573598859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A002262 n).toNat * A133084 (n + 1)

end

end A208914.P13083815406573598859

namespace A208914

/-- `A016116(2*A002262(n))*A133084(n+1)` -/
def P13083815406573598859.Spec : Prop :=
  ∀ n, P13083815406573598859.a n = A208914 (n + 1)

end A208914

/-! ## A208914.P8372772331678704036

`A060546(2*A002262(n))*A133084(n+1)`
-/

namespace A208914.P8372772331678704036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * A002262 n).toNat * A133084 (n + 1)

end

end A208914.P8372772331678704036

namespace A208914

/-- `A060546(2*A002262(n))*A133084(n+1)` -/
def P8372772331678704036.Spec : Prop :=
  ∀ n, P8372772331678704036.a n = A208914 (n + 1)

end A208914

/-! ## A208914.P12324833990235915272

`A000188(A059268(n))*A208521(n+1)`
-/

namespace A208914.P12324833990235915272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A059268 n).toNat * A208521 (n + 1)

end

end A208914.P12324833990235915272

namespace A208914

/-- `A000188(A059268(n))*A208521(n+1)` -/
def P12324833990235915272.Spec : Prop :=
  ∀ n, P12324833990235915272.a n = A208914 (n + 1)

end A208914

/-! ## A208914.P759329599187823061

`A208906(n+1)/A000188(A059268(n))*A059268(n)`
-/

namespace A208914.P759329599187823061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208906 (n + 1) : ℚ) / (A000188 (A059268 n).toNat : ℚ) * (A059268 n : ℚ)

end

end A208914.P759329599187823061

namespace A208914

/-- `A208906(n+1)/A000188(A059268(n))*A059268(n)` -/
def P759329599187823061.Spec : Prop :=
  ∀ n, P759329599187823061.a n = (A208914 (n + 1) : ℚ)

end A208914

/-! ## A208914.P3464609120861298122

`A000188(2*A059268(n))*A208906(n+1)`
-/

namespace A208914.P3464609120861298122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (2 * A059268 n).toNat * A208906 (n + 1)

end

end A208914.P3464609120861298122

namespace A208914

/-- `A000188(2*A059268(n))*A208906(n+1)` -/
def P3464609120861298122.Spec : Prop :=
  ∀ n, P3464609120861298122.a n = A208914 (n + 1)

end A208914

/-!
# A208915: Triangle of coefficients of polynomials u(n,x) jointly generated with A208916; see the Formula section.

The programs for A208915, there is no canonical definition to state claims against.
-/

/-! ## A208915.P7774633416529454798

`A373195(A121757(n))`
-/

namespace A208915.P7774633416529454798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373195 (A121757 n).toNat

end

end A208915.P7774633416529454798

/-! ## A208915.P12583511163295566103

`A354220(A098473(n))%27`
-/

namespace A208915.P12583511163295566103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354220 (A098473 n).toNat) 27

end

end A208915.P12583511163295566103

/-! ## A208915.P15932326507722137630

`∏{e}[A003945(A193648(n+1)), #]`
-/

namespace A208915.P15932326507722137630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (A193648 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A208915.P15932326507722137630

/-! ## A208915.P4960780042209278932

`A193648(n+1)-A267810(A193634(n))`
-/

namespace A208915.P4960780042209278932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (n + 1) - A267810 (A193634 n).toNat

end

end A208915.P4960780042209278932

/-! ## A208915.P16339822974077988047

`A331873(A210555(n+1)%A331874(n+1))`
-/

namespace A208915.P16339822974077988047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (Int.tmod (A210555 (n + 1)) (A331874 (n + 1))).toNat

end

end A208915.P16339822974077988047

/-!
# A208916: Triangle of coefficients of polynomials v(n,x) jointly generated with A208915; see the Formula section.

The programs for A208916, there is no canonical definition to state claims against.
-/

/-! ## A208916.P7459222333687487266

`A208757(n+1)+A000120(A291556(n)^4)`
-/

namespace A208916.P7459222333687487266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208757 (n + 1) + A000120 (A291556 n ^ 4).toNat

end

end A208916.P7459222333687487266

/-! ## A208916.P11632624313969874684

`or(A057957(A194576(n+1)), A295634(n+3))`
-/

namespace A208916.P11632624313969874684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057957 (A194576 (n + 1)).toNat) (A295634 (n + 3))

end

end A208916.P11632624313969874684

/-! ## A208916.P12567523256950910968

`A272120(A081720(n+1)*A228351(n+1))`
-/

namespace A208916.P12567523256950910968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272120 (A081720 (n + 1) * A228351 (n + 1)).toNat

end

end A208916.P12567523256950910968

/-!
# A208917: Triangle of coefficients of polynomials u(n,x) jointly generated with A208918; see the Formula section.

The programs for A208917, the canonical program `A208917.P12345461414326027757` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208917 has offset 1).

The definition of A208917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208917.P6422481695143771021

`A059268(n)*A208514(n+1)`
-/

namespace A208917.P6422481695143771021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A208514 (n + 1)

end

end A208917.P6422481695143771021

namespace A208917

/-- `A059268(n)*A208514(n+1)` -/
def P6422481695143771021.Spec : Prop :=
  ∀ n, P6422481695143771021.a n = A208917 (n + 1)

end A208917

/-! ## A208917.P3910742692276674850

`2^A002262(n)*A208514(n+1)`
-/

namespace A208917.P3910742692276674850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A208514 (n + 1) : ℚ)

end

end A208917.P3910742692276674850

namespace A208917

/-- `2^A002262(n)*A208514(n+1)` -/
def P3910742692276674850.Spec : Prop :=
  ∀ n, P3910742692276674850.a n = (A208917 (n + 1) : ℚ)

end A208917

/-! ## A208917.P11214742569622339294

`A000079(A002262(n))*A208514(n+1)`
-/

namespace A208917.P11214742569622339294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A208514 (n + 1)

end

end A208917.P11214742569622339294

namespace A208917

/-- `A000079(A002262(n))*A208514(n+1)` -/
def P11214742569622339294.Spec : Prop :=
  ∀ n, P11214742569622339294.a n = A208917 (n + 1)

end A208917

/-! ## A208917.P5153345117653941962

`A000079(A002260(n+1)-1)*A208514(n+1)`
-/

namespace A208917.P5153345117653941962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002260 (n + 1) - 1).toNat * A208514 (n + 1)

end

end A208917.P5153345117653941962

namespace A208917

/-- `A000079(A002260(n+1)-1)*A208514(n+1)` -/
def P5153345117653941962.Spec : Prop :=
  ∀ n, P5153345117653941962.a n = A208917 (n + 1)

end A208917

/-! ## A208917.P12345461414326027757

`(A208515(A014132(n+1)+1)-A208515(n+1))*A059268(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A208917

/-- `(A208515(A014132(n+1)+1)-A208515(n+1))*A059268(n)` -/
def P12345461414326027757.Spec : Prop :=
  ∀ n, P12345461414326027757.a n = A208917 (n + 1)

theorem P12345461414326027757.correct : P12345461414326027757.Spec := by
  intro n
  simp only [A208917, Nat.add_sub_cancel]

end A208917

/-! ## A208917.P11678841235533339536

`A000010(2^A002260(n+1))*A208514(n+1)`
-/

namespace A208917.P11678841235533339536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002260 (n + 1) : ℤ))).toNat * A208514 (n + 1)

end

end A208917.P11678841235533339536

namespace A208917

/-- `A000010(2^A002260(n+1))*A208514(n+1)` -/
def P11678841235533339536.Spec : Prop :=
  ∀ n, P11678841235533339536.a n = A208917 (n + 1)

end A208917

/-! ## A208917.P16121732692790712907

`A006519(A018900(n+1))*A208514(n+1)`
-/

namespace A208917.P16121732692790712907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A018900 (n + 1)).toNat * A208514 (n + 1)

end

end A208917.P16121732692790712907

namespace A208917

/-- `A006519(A018900(n+1))*A208514(n+1)` -/
def P16121732692790712907.Spec : Prop :=
  ∀ n, P16121732692790712907.a n = A208917 (n + 1)

end A208917

/-! ## A208917.P17240166691378035609

`A003963(A036561(n))*A208514(n+1)`
-/

namespace A208917.P17240166691378035609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A036561 n).toNat * A208514 (n + 1)

end

end A208917.P17240166691378035609

namespace A208917

/-- `A003963(A036561(n))*A208514(n+1)` -/
def P17240166691378035609.Spec : Prop :=
  ∀ n, P17240166691378035609.a n = A208917 (n + 1)

end A208917

/-!
# A208918: Triangle of coefficients of polynomials v(n,x) jointly generated with A208917; see the Formula section.

The programs for A208918, the canonical program `A208918.P1927240516366514660` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208918 has offset 1).

The definition of A208918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208918.P1927240516366514660

`A059268(n)*A208515(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A208918

/-- `A059268(n)*A208515(n+1)` -/
def P1927240516366514660.Spec : Prop :=
  ∀ n, P1927240516366514660.a n = A208918 (n + 1)

theorem P1927240516366514660.correct : P1927240516366514660.Spec := by
  intro n
  simp only [A208918, Nat.add_sub_cancel]

end A208918

/-! ## A208918.P14673465629885202640

`2^A002262(n)*A208515(n+1)`
-/

namespace A208918.P14673465629885202640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A208515 (n + 1) : ℚ)

end

end A208918.P14673465629885202640

namespace A208918

/-- `2^A002262(n)*A208515(n+1)` -/
def P14673465629885202640.Spec : Prop :=
  ∀ n, P14673465629885202640.a n = (A208918 (n + 1) : ℚ)

end A208918

/-! ## A208918.P1801994375619598283

`A000079(A002262(n))*A208515(n+1)`
-/

namespace A208918.P1801994375619598283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A208515 (n + 1)

end

end A208918.P1801994375619598283

namespace A208918

/-- `A000079(A002262(n))*A208515(n+1)` -/
def P1801994375619598283.Spec : Prop :=
  ∀ n, P1801994375619598283.a n = A208918 (n + 1)

end A208918

/-! ## A208918.P13409972532059075253

`A011782(A002262(n)+1)*A208515(n+1)`
-/

namespace A208918.P13409972532059075253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002262 n + 1).toNat * A208515 (n + 1)

end

end A208918.P13409972532059075253

namespace A208918

/-- `A011782(A002262(n)+1)*A208515(n+1)` -/
def P13409972532059075253.Spec : Prop :=
  ∀ n, P13409972532059075253.a n = A208918 (n + 1)

end A208918

/-! ## A208918.P17031259528007275261

`A059268(n)*A207611(A038722(n+1))`
-/

namespace A208918.P17031259528007275261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A207611 (A038722 (n + 1)).toNat

end

end A208918.P17031259528007275261

namespace A208918

/-- `A059268(n)*A207611(A038722(n+1))` -/
def P17031259528007275261.Spec : Prop :=
  ∀ n, P17031259528007275261.a n = A208918 (n + 1)

end A208918

/-!
# A208919: Triangle of coefficients of polynomials u(n,x) jointly generated with A208920; see the Formula section.

The programs for A208919, there is no canonical definition to state claims against.
-/

/-! ## A208919.P16819163223424968395

`A062821(A019538(n+1)²)`
-/

namespace A208919.P16819163223424968395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A019538 (n + 1) ^ 2).toNat

end

end A208919.P16819163223424968395

/-! ## A208919.P2010101819650242254

`A062821(A131689(comp[∑[n]])²)`
-/

namespace A208919.P2010101819650242254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A131689 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2).toNat

end

end A208919.P2010101819650242254

/-! ## A208919.P13288968227961519046

`A062821(A131689(comp[∑[n]])^2)`
-/

namespace A208919.P13288968227961519046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A131689 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2).toNat

end

end A208919.P13288968227961519046

/-! ## A208919.P12945173890932476532

`A062821((A002262(n)!*A321331(n))^2)`
-/

namespace A208919.P12945173890932476532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (((Nat.factorial (A002262 n).toNat : ℤ) * A321331 n) ^ 2).toNat

end

end A208919.P12945173890932476532

/-! ## A208919.P6292131351467969897

`A062821(A019538(n+1)*A019538(n+1))`
-/

namespace A208919.P6292131351467969897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A019538 (n + 1) * A019538 (n + 1)).toNat

end

end A208919.P6292131351467969897

/-!
# A208920: Triangle of coefficients of polynomials v(n,x) jointly generated with A208919; see the Formula section.

The programs for A208920, the canonical program `A208920.P3108856857928057317` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208920 has offset 1).

The definition of A208920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208920.P3108856857928057317

`A208766(n+1)+A208766(n+2)-A208765(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A208920

/-- `A208766(n+1)+A208766(n+2)-A208765(n+2)` -/
def P3108856857928057317.Spec : Prop :=
  ∀ n, P3108856857928057317.a n = A208920 (n + 1)

theorem P3108856857928057317.correct : P3108856857928057317.Spec := by
  intro n
  simp only [A208920, Nat.add_sub_cancel]

end A208920

/-!
# A208921: Triangle of coefficients of polynomials u(n,x) jointly generated with A208922; see the Formula section.

The programs for A208921, there is no canonical definition to state claims against.
-/

/-! ## A208921.P2176093653476013

`A094681(A098966(n+1))/A059268(A232089(n))`
-/

namespace A208921.P2176093653476013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094681 (A098966 (n + 1)).toNat : ℚ) / (A059268 (A232089 n).toNat : ℚ)

end

end A208921.P2176093653476013

/-!
# A208922: Triangle of coefficients of polynomials v(n,x) jointly generated with A208921; see the Formula section.

The programs for A208922, there is no canonical definition to state claims against.
-/

/-! ## A208922.P14867526010616497163

`Δ[∑[A209157(n+1)]-A208750(n+1)]`
-/

namespace A208922.P14867526010616497163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209157 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A208750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208922.P14867526010616497163

/-!
# A208923: Triangle of coefficients of polynomials u(n,x) jointly generated with A208908; see the Formula section.

The programs for A208923, there is no canonical definition to state claims against.
-/

/-! ## A208923.P7401564724236958799

`char[∑[n]]+A208324(n)-A209764(n+1)`
-/

namespace A208923.P7401564724236958799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A208324 n - A209764 (n + 1))

end

end A208923.P7401564724236958799

/-! ## A208923.P2865617377606269920

`A208908(n+1)+A209164(n+1)-A209165(n+1)`
-/

namespace A208923.P2865617377606269920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208908 (n + 1) + (A209164 (n + 1) - A209165 (n + 1))

end

end A208923.P2865617377606269920

/-! ## A208923.P16412588008157255583

`A209705(n+1)+A209706(n+1)-A209764(n+1)`
-/

namespace A208923.P16412588008157255583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (n + 1) + (A209706 (n + 1) - A209764 (n + 1))

end

end A208923.P16412588008157255583

/-! ## A208923.P5434320183855466509

`A209771(n+1)+A209772(n+1)-A209764(n+1)`
-/

namespace A208923.P5434320183855466509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209771 (n + 1) + (A209772 (n + 1) - A209764 (n + 1))

end

end A208923.P5434320183855466509

/-! ## A208923.P1913203055760967007

`A207627(n+2)-A209764(n+1)`
-/

namespace A208923.P1913203055760967007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (n + 2) - A209764 (n + 1)

end

end A208923.P1913203055760967007

/-! ## A208923.P12896292394403996692

`A208324(A066182(n+1))-A209764(n+1)`
-/

namespace A208923.P12896292394403996692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208324 (A066182 (n + 1)).toNat - A209764 (n + 1)

end

end A208923.P12896292394403996692

/-! ## A208923.P4054032581590949835

`A014681(A208324(n)-A209764(n+1))+1`
-/

namespace A208923.P4054032581590949835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A208324 n - A209764 (n + 1)).toNat + 1

end

end A208923.P4054032581590949835

/-!
# A208924: Let L = A185064(n) be the n-th length for which a Golay sequence exists; a(n) = number of Golay sequences of length L.

The programs for A208924, there is no canonical definition to state claims against.
-/

/-! ## A208924.P10889969178003368584

`A208925(n+1)+A208926(n+1)`
-/

namespace A208924.P10889969178003368584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208925 (n + 1) + A208926 (n + 1)

end

end A208924.P10889969178003368584

/-! ## A208924.P9350041501736777188

`A208926(n+1)+A208925(A077168(n))`
-/

namespace A208924.P9350041501736777188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208926 (n + 1) + A208925 (A077168 n).toNat

end

end A208924.P9350041501736777188

/-!
# A208925: Let L = A185064(n) be the n-th length for which a Golay sequence exists; a(n) = number of constructable Golay sequences of length L.

The programs for A208925, there is no canonical definition to state claims against.
-/

/-! ## A208925.P11159959984311562220

`A208924(n+1)-A208926(n+1)`
-/

namespace A208925.P11159959984311562220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208924 (n + 1) - A208926 (n + 1)

end

end A208925.P11159959984311562220

/-! ## A208925.P1417496757843088975

`and(A062060(A002110(n)), A128796(n+1))`
-/

namespace A208925.P1417496757843088975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062060 (A002110 n).toNat) (A128796 (n + 1))

end

end A208925.P1417496757843088975

/-!
# A208926: Let L = A185064(n) be the n-th length for which a Golay sequence exists; a(n) = number of non-constructable Golay sequences of length L.

The programs for A208926, there is no canonical definition to state claims against.
-/

/-! ## A208926.P4190750686768890034

`A208924(n+1)-A208925(n+1)`
-/

namespace A208926.P4190750686768890034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208924 (n + 1) - A208925 (n + 1)

end

end A208926.P4190750686768890034

/-! ## A208926.P8964045216216268828

`A014457(A036996(n+1))`
-/

namespace A208926.P8964045216216268828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014457 (A036996 (n + 1)).toNat

end

end A208926.P8964045216216268828

/-!
# A208927: Let L = A185064(n) be the n-th length for which a Golay sequence exists; a(n) = number of equivalence classes of Golay sequences of length L.

The programs for A208927, there is no canonical definition to state claims against.
-/

/-! ## A208927.P498589991254413335

`A208929(n+1)+A208928(n+1)`
-/

namespace A208927.P498589991254413335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208929 (n + 1) + A208928 (n + 1)

end

end A208927.P498589991254413335

/-!
# A208928: Let L = A185064(n) be the n-th length for which a Golay sequence exists; a(n) = number of equivalence classes of constructable Golay sequences of length L.

The programs for A208928, there is no canonical definition to state claims against.
-/

/-! ## A208928.P6142674109445542325

`A208927(n+1)-A208929(n+1)`
-/

namespace A208928.P6142674109445542325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208927 (n + 1) - A208929 (n + 1)

end

end A208928.P6142674109445542325

/-!
# A208930: Triangle of coefficients of polynomials v(n,x) jointly generated with A208930; see the Formula section.

The programs for A208930, there is no canonical definition to state claims against.
-/

/-! ## A208930.P733254728159119286

`A209161(n+2)-Δ[A208760(n+1)]`
-/

namespace A208930.P733254728159119286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209161 (n + 2) - (f1 (n + 1) - f1 n)

end

end A208930.P733254728159119286

/-! ## A208930.P952523093404152937

`A208760(n+1)+A208760(n+2)-A208759(n+2)`
-/

namespace A208930.P952523093404152937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208760 (n + 1) + (A208760 (n + 2) - A208759 (n + 2))

end

end A208930.P952523093404152937

/-!
# A208931: Triangle of coefficients of polynomials u(n,x) jointly generated with A208932; see the Formula section.

The programs for A208931, there is no canonical definition to state claims against.
-/

/-! ## A208931.P18397754532437198396

`A094681(A098966(n+1))`
-/

namespace A208931.P18397754532437198396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094681 (A098966 (n + 1)).toNat

end

end A208931.P18397754532437198396

/-! ## A208931.P13010545510917741791

`A209757(n+1)^A139729(A291684(n))`
-/

namespace A208931.P13010545510917741791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209757 (n + 1) : ℚ) ^ (A139729 (A291684 n).toNat : ℤ)

end

end A208931.P13010545510917741791

/-! ## A208931.P7771741496408671791

`A209757(n+1)%A127055(A013609(n))`
-/

namespace A208931.P7771741496408671791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209757 (n + 1)) (A127055 (A013609 n).toNat)

end

end A208931.P7771741496408671791

/-! ## A208931.P9940758362726069516

`gcd(A209757(n+1), A304330(A304336(n)))`
-/

namespace A208931.P9940758362726069516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209757 (n + 1)) (A304330 (A304336 n).toNat)

end

end A208931.P9940758362726069516

/-! ## A208931.P15694402633689366158

`A193592(n)²*A001511(5*A319511(n))`
-/

namespace A208931.P15694402633689366158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n ^ 2 * A001511 (5 * A319511 n).toNat

end

end A208931.P15694402633689366158

/-!
# A208932: Triangle of coefficients of polynomials v(n,x) jointly generated with A208932; see the Formula section.

The programs for A208932, there is no canonical definition to state claims against.
-/

/-! ## A208932.P1537757445397386457

`2*A208762(n+1)-A208761(n+1)`
-/

namespace A208932.P1537757445397386457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208762 (n + 1) - A208761 (n + 1)

end

end A208932.P1537757445397386457

/-! ## A208932.P11871487704672391849

`A209135(n+1)+A209163(n+1)-A208761(n+1)`
-/

namespace A208932.P11871487704672391849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209135 (n + 1) + (A209163 (n + 1) - A208761 (n + 1))

end

end A208932.P11871487704672391849

/-! ## A208932.P63226734725505987

`A004277(A208762(n+1))-A208761(n+1)`
-/

namespace A208932.P63226734725505987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A208762 (n + 1)).toNat - A208761 (n + 1)

end

end A208932.P63226734725505987

/-! ## A208932.P13190210401251524851

`2*A208762(n+1)-A244361(A167024(n))`
-/

namespace A208932.P13190210401251524851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208762 (n + 1) - A244361 (A167024 n).toNat

end

end A208932.P13190210401251524851

/-! ## A208932.P11855981592933599431

`A004277(A208762(n+1))-A244361(A167024(n))`
-/

namespace A208932.P11855981592933599431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A208762 (n + 1)).toNat - A244361 (A167024 n).toNat

end

end A208932.P11855981592933599431

/-!
# A208933: Expansion of phi(q^4) / phi(-q) in powers of q where phi() is a Ramanujan theta function.

The programs for A208933, there is no canonical definition to state claims against.
-/

/-! ## A208933.P10842713848164549903

`(-1)^n*A112128(n)`
-/

namespace A208933.P10842713848164549903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112128 n

end

end A208933.P10842713848164549903

/-! ## A208933.P928264664654694321

`ceil(A007096(n)/2)`
-/

namespace A208933.P928264664654694321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007096 n : ℚ) / 2⌉

end

end A208933.P928264664654694321

/-! ## A208933.P2458803966650425316

`A007096(n)/A040001(2*n)`
-/

namespace A208933.P2458803966650425316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n : ℚ) / (A040001 (2 * n) : ℚ)

end

end A208933.P2458803966650425316

/-! ## A208933.P13886220889977965738

`A007096(n)/A289777(C(n, a(n-1))+4)` with `a(0)=1`
-/

namespace A208933.P13886220889977965738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A007096 n : ℚ) / (A289777 (Nat.choose n (SequenceMachineLib.roundAway (a (n - 1))).toNat + 4) : ℚ)

end

end A208933.P13886220889977965738

/-! ## A208933.P3981926384568625846

`A007096(n)/A080054(n)*A115671(n)`
-/

namespace A208933.P3981926384568625846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n : ℚ) / (A080054 n : ℚ) * (A115671 n : ℚ)

end

end A208933.P3981926384568625846

/-! ## A208933.P7901797724046459671

`abs(A112128(n))`
-/

namespace A208933.P7901797724046459671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112128 n|

end

end A208933.P7901797724046459671

/-! ## A208933.P4102999396240064308

`gcd(A000038(n), A112128(n))`
-/

namespace A208933.P4102999396240064308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A112128 n)

end

end A208933.P4102999396240064308

/-! ## A208933.P8226287441932082072

`lcm(A000034(n), A112128(n))`
-/

namespace A208933.P8226287441932082072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A112128 n)

end

end A208933.P8226287441932082072

/-! ## A208933.P5885957787738331292

`lcm(-A112128(n), A006928(n+1))`
-/

namespace A208933.P5885957787738331292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A112128 n) (A006928 (n + 1))

end

end A208933.P5885957787738331292

/-! ## A208933.P3709165334666959652

`lcm(2, A189925(n))/2`
-/

namespace A208933.P3709165334666959652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A189925 n) : ℚ) / 2

end

end A208933.P3709165334666959652

/-! ## A208933.P11865276473615640697

`A189925(n)/A280560(n)`
-/

namespace A208933.P11865276473615640697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189925 n : ℚ) / (A280560 n : ℚ)

end

end A208933.P11865276473615640697

/-! ## A208933.P13847797126989202798

`A007096(n)/A280560(2*n)`
-/

namespace A208933.P13847797126989202798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n : ℚ) / (A280560 (2 * n) : ℚ)

end

end A208933.P13847797126989202798

/-! ## A208933.P12547339757141272661

`A007096(n)/A014969(n)*A131126(n)`
-/

namespace A208933.P12547339757141272661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n : ℚ) / (A014969 n : ℚ) * (A131126 n : ℚ)

end

end A208933.P12547339757141272661

/-! ## A208933.P14332891570403764508

`A112128(n)/A131126(n)*A210066(n)`
-/

namespace A208933.P14332891570403764508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112128 n : ℚ) / (A131126 n : ℚ) * (A210066 n : ℚ)

end

end A208933.P14332891570403764508

/-! ## A208933.P14567794954151891551

`A007096(n)/gcd(2, A135614(n+1))`
-/

namespace A208933.P14567794954151891551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n : ℚ) / (Int.gcd 2 (A135614 (n + 1)) : ℚ)

end

end A208933.P14567794954151891551

/-! ## A208933.P4671979505808290743

`A007096(n)/A000122(n²)`
-/

namespace A208933.P4671979505808290743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 n : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A208933.P4671979505808290743

/-!
# A208935: Digits of Pi read in decimal as if written in hexadecimal.

The programs for A208935, there is no canonical definition to state claims against.
-/

/-! ## A208935.P15537670302278612831

`A000796(n)+16*a(n-1)` with `a(0)=3`
-/

namespace A208935.P15537670302278612831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000796 (n + 1) + 16 * a (n - 1)

end

end A208935.P15537670302278612831

/-! ## A208935.P9200557050822590711

`Δ[A059582(n)]+16*a(n-1)` with `a(0)=3`
-/

namespace A208935.P9200557050822590711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  f1 (n + 1) - f1 n + 16 * a (n - 1)

end

end A208935.P9200557050822590711

/-! ## A208935.P5649162474156787628

`Δ[Δ[A227844(n+1)]]+16*a(n-1)` with `a(0)=3`
-/

namespace A208935.P5649162474156787628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227844 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  f1 (n + 1) - f1 n + 16 * a (n - 1)

end

end A208935.P5649162474156787628

/-!
# A208936: Prime production length of the polynomial P = x^2 + x + prime(n): max { k>0 | P(x) is prime for all x=0,...,k-1 }.

The programs for A208936, there is no canonical definition to state claims against.
-/

/-! ## A208936.P14683084444149023985

`A208645(Δ[A007504(n)])`
-/

namespace A208936.P14683084444149023985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (f1 (n + 1) - f1 n).toNat

end

end A208936.P14683084444149023985

/-! ## A208936.P3761144882900501541

`A208645(A000040(n+1))`
-/

namespace A208936.P3761144882900501541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A000040 (n + 1)).toNat

end

end A208936.P3761144882900501541

/-! ## A208936.P7523010674396976303

`A208645(A078444(n+1))`
-/

namespace A208936.P7523010674396976303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A078444 (n + 1)).toNat

end

end A208936.P7523010674396976303

/-! ## A208936.P18367576142726528695

`A208645(A161847(n+1))`
-/

namespace A208936.P18367576142726528695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A161847 (n + 1)).toNat

end

end A208936.P18367576142726528695

/-! ## A208936.P5074126655449499447

`A208645(A008578(n+2))`
-/

namespace A208936.P5074126655449499447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A008578 (n + 2)).toNat

end

end A208936.P5074126655449499447

/-! ## A208936.P16025361456504562236

`A208645(A182986(n+2))`
-/

namespace A208936.P16025361456504562236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A182986 (n + 2)).toNat

end

end A208936.P16025361456504562236

/-! ## A208936.P7541936846141392568

`A208645(eq[1, A032741(n)])`
-/

namespace A208936.P7541936846141392568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208936.P7541936846141392568

/-! ## A208936.P5735216478047612184

`A208645(eq[2, A005127(n)])`
-/

namespace A208936.P5735216478047612184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208936.P5735216478047612184

/-! ## A208936.P16468415143951224767

`A208645(eq[2, A005128(n)])`
-/

namespace A208936.P16468415143951224767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208936.P16468415143951224767

/-! ## A208936.P3492481657957769933

`A208645(eq[2, A092976(n)])`
-/

namespace A208936.P3492481657957769933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208936.P3492481657957769933

/-! ## A208936.P6848583608989921932

`A208645(eq[2, A225244(n)])`
-/

namespace A208936.P6848583608989921932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208936.P6848583608989921932

/-! ## A208936.P16744448436467235856

`A208645(eq[2, A322366(n)])`
-/

namespace A208936.P16744448436467235856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208936.P16744448436467235856

/-! ## A208936.P4140314951626203973

`A208645(eq[2, A327859(n)])`
-/

namespace A208936.P4140314951626203973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208936.P4140314951626203973

/-! ## A208936.P15995271210958192115

`A208645(eq[2, A343371(n)])`
-/

namespace A208936.P15995271210958192115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208936.P15995271210958192115

/-! ## A208936.P10947788302474726805

`A208645(record[A006530(n+2)])`
-/

namespace A208936.P10947788302474726805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A208936.P10947788302474726805

/-! ## A208936.P9947766130189105079

`A208645(record[A014963(n+2)])`
-/

namespace A208936.P9947766130189105079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A208936.P9947766130189105079

/-! ## A208936.P13427723718241819096

`A208645(record[A020639(n+2)])`
-/

namespace A208936.P13427723718241819096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A208936.P13427723718241819096

/-! ## A208936.P10708904972826475213

`A208645(A052147(n+1)-2)`
-/

namespace A208936.P10708904972826475213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (A052147 (n + 1) - 2).toNat

end

end A208936.P10708904972826475213

/-! ## A208936.P18061267567570806401

`A208645(eq[0, A107393(n)+1])`
-/

namespace A208936.P18061267567570806401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208936.P18061267567570806401

/-! ## A208936.P16988149910440417123

`A208645(eq[2, 1-A107393(n)])`
-/

namespace A208936.P16988149910440417123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208936.P16988149910440417123

/-!
# A208937: Number of n-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero with no three beads in a row equal.

The programs for A208937, there is no canonical definition to state claims against.
-/

/-! ## A208937.P3535794407136307431

`A208945(∑[4*n]+1)`
-/

namespace A208937.P3535794407136307431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208937.P3535794407136307431

/-! ## A208937.P15278961152420864388

`record[A208945(Δ[A235355(n)])]`
-/

namespace A208937.P15278961152420864388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208937.P15278961152420864388

/-! ## A208937.P4945600219290527502

`record[A208945(A178218(n+1))]`
-/

namespace A208937.P4945600219290527502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (A178218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208937.P4945600219290527502

/-! ## A208937.P4962364329809110209

`record[A208945(A330613(n+1))]`
-/

namespace A208937.P4962364329809110209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208937.P4962364329809110209

/-! ## A208937.P9025812438650779926

`record[A208945(or(1, A245300(n)))]`
-/

namespace A208937.P9025812438650779926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (Int.lor 1 (A245300 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208937.P9025812438650779926

/-!
# A208938: Number of n-bead necklaces labeled with numbers -1..1 not allowing reversal, with sum zero with no three beads in a row equal.

The programs for A208938, there is no canonical definition to state claims against.
-/

/-! ## A208938.P10688333621683040399

`A208945(∑[n+1])`
-/

namespace A208938.P10688333621683040399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208938.P10688333621683040399

/-! ## A208938.P1664202751113742781

`A208945(A000217(n+1))+char[18]`
-/

namespace A208938.P1664202751113742781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208938.P1664202751113742781

/-! ## A208938.P8076477910359046260

`A208945(A025747(n))%A331434(n)`
-/

namespace A208938.P8076477910359046260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208945 (A025747 n).toNat) (A331434 n)

end

end A208938.P8076477910359046260

/-! ## A208938.P608826191800927170

`A208945(A000217(n+1))*A319150(n)`
-/

namespace A208938.P608826191800927170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (A000217 (n + 1)).toNat * A319150 n

end

end A208938.P608826191800927170

/-! ## A208938.P13390260122325641152

`A208945(A000217(n+1))^A178334(n)`
-/

namespace A208938.P13390260122325641152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208945 (A000217 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A208938.P13390260122325641152

/-!
# A208939: Number of n-bead necklaces labeled with numbers -2..2 not allowing reversal, with sum zero with no three beads in a row equal.

The programs for A208939, there is no canonical definition to state claims against.
-/

/-! ## A208939.P17793576546867704235

`A208945(∑[n+2])`
-/

namespace A208939.P17793576546867704235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208939.P17793576546867704235

/-! ## A208939.P9004774887133008387

`record[A208945(eq[1, A053616(n)])]`
-/

namespace A208939.P9004774887133008387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208939.P9004774887133008387

/-! ## A208939.P4091639233392962112

`record[A208945(eq[2, A336534(n)])]`
-/

namespace A208939.P4091639233392962112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208939.P4091639233392962112

/-! ## A208939.P12192771433515955149

`record[A208945(eq[2, A263643(n+1)])]`
-/

namespace A208939.P12192771433515955149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263643 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208939.P12192771433515955149

/-! ## A208939.P4892709784315777325

`record[A129186(n)*A208945(n+1)]`
-/

namespace A208939.P4892709784315777325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A208945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208939.P4892709784315777325

/-!
# A208940: Number of n-bead necklaces labeled with numbers -3..3 not allowing reversal, with sum zero with no three beads in a row equal.

The programs for A208940, there is no canonical definition to state claims against.
-/

/-! ## A208940.P2339692896915790153

`A208945(∑[n+3]+1)`
-/

namespace A208940.P2339692896915790153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208940.P2339692896915790153

/-! ## A208940.P13319851410201337278

`A208945(A034856(n+2))+char[20]`
-/

namespace A208940.P13319851410201337278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208940.P13319851410201337278

/-! ## A208940.P12553722545561869770

`record[A208945(n+1)/A071943(n+3)]`
-/

namespace A208940.P12553722545561869770
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208945 (n + 1) : ℚ) / (A071943 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208940.P12553722545561869770

/-! ## A208940.P14060931454761799126

`record[A208945(n+1)/A193722(n+3)]`
-/

namespace A208940.P14060931454761799126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208945 (n + 1) : ℚ) / (A193722 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208940.P14060931454761799126

/-! ## A208940.P7559479222164809821

`record[A208945(n+1)/A056860(n+4)]`
-/

namespace A208940.P7559479222164809821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208945 (n + 1) : ℚ) / (A056860 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208940.P7559479222164809821

/-!
# A208941: Number of n-bead necklaces labeled with numbers -4..4 not allowing reversal, with sum zero with no three beads in a row equal.

The programs for A208941, there is no canonical definition to state claims against.
-/

/-! ## A208941.P10815533758947677070

`A208945(∑[n+4]+3)`
-/

namespace A208941.P10815533758947677070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A208941.P10815533758947677070

/-! ## A208941.P3484498542942982733

`A208945(A056000(n)+7)+char[15]`
-/

namespace A208941.P3484498542942982733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (A056000 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208941.P3484498542942982733

/-! ## A208941.P851155335710719610

`or(char[1], A208945(A141214(n+1)))`
-/

namespace A208941.P851155335710719610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A208945 (A141214 (n + 1)).toNat)

end

end A208941.P851155335710719610

/-! ## A208941.P3319105620403385020

`record[A208945(eq[2, A053616(n+1)])]`
-/

namespace A208941.P3319105620403385020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208941.P3319105620403385020

/-! ## A208941.P12415359917548768640

`lcm(A001222(n+2), A208945(A056000(n)+7))`
-/

namespace A208941.P12415359917548768640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (n + 2)) (A208945 (A056000 n + 7).toNat)

end

end A208941.P12415359917548768640

/-!
# A208942: Number of n-bead necklaces labeled with numbers -5..5 not allowing reversal, with sum zero with no three beads in a row equal.

The programs for A208942, there is no canonical definition to state claims against.
-/

/-! ## A208942.P17152073153351926677

`A208945(∑[n+5]+6)`
-/

namespace A208942.P17152073153351926677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A208942.P17152073153351926677

/-! ## A208942.P14603601041137291784

`A208945(Δ[A023545(n+1)])+A000007(n+1)`
-/

namespace A208942.P14603601041137291784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A208942.P14603601041137291784

/-! ## A208942.P190387861814614325

`A208945(Δ[A023545(n+1)])%A189855(2*n+3)`
-/

namespace A208942.P190387861814614325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208945 (f1 (n + 1) - f1 n).toNat) (A189855 (2 * n + 3))

end

end A208942.P190387861814614325

/-!
# A208943: Number of n-bead necklaces labeled with numbers -6..6 not allowing reversal, with sum zero with no three beads in a row equal.

The programs for A208943, there is no canonical definition to state claims against.
-/

/-! ## A208943.P135781065293234812

`A208945(∑[n+6]+10)`
-/

namespace A208943.P135781065293234812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A208943.P135781065293234812

/-!
# A208944: Number of n-bead necklaces labeled with numbers -7..7 not allowing reversal, with sum zero with no three beads in a row equal.

The programs for A208944, there is no canonical definition to state claims against.
-/

/-! ## A208944.P13545301821388168957

`A208945(A055999(n+4))`
-/

namespace A208944.P13545301821388168957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (A055999 (n + 4)).toNat

end

end A208944.P13545301821388168957

/-! ## A208944.P2255827496929604108

`A208945(eq[4, A219347(n)])`
-/

namespace A208944.P2255827496929604108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208944.P2255827496929604108

/-! ## A208944.P16158607518127095587

`A208945(eq[6, A193592(n)])`
-/

namespace A208944.P16158607518127095587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208944.P16158607518127095587

/-! ## A208944.P7058594529314636379

`A208945(eq[7, A152157(n)])`
-/

namespace A208944.P7058594529314636379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208944.P7058594529314636379

/-! ## A208944.P7236560081095296570

`A208945(A155212(n+3)+2)`
-/

namespace A208944.P7236560081095296570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (A155212 (n + 3) + 2).toNat

end

end A208944.P7236560081095296570

/-!
# A208945: T(n,k) = number of n-bead necklaces labeled with numbers -k..k not allowing reversal, with sum zero with no three beads in a row equal.

The programs for A208945, there is no canonical definition to state claims against.
-/

/-! ## A208945.P17180102521010270791

`A209073(n+1)-A336107(A336096(n+1))`
-/

namespace A208945.P17180102521010270791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (n + 1) - A336107 (A336096 (n + 1)).toNat

end

end A208945.P17180102521010270791

/-! ## A208945.P12860200529698076580

`A209073(n+1)-A000122(A121036(2*(n+1)))`
-/

namespace A208945.P12860200529698076580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (n + 1) - A000122 (A121036 (2 * (n + 1))).toNat

end

end A208945.P12860200529698076580

/-! ## A208945.P9116652094366839175

`A209073(n+1)-A018843(A125778(2*n+1))`
-/

namespace A208945.P9116652094366839175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (n + 1) - A018843 (A125778 (2 * n + 1)).toNat

end

end A208945.P9116652094366839175

/-! ## A208945.P2412668252093745757

`A209073(C(comp[20*n], n))`
-/

namespace A208945.P2412668252093745757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) n)

end

end A208945.P2412668252093745757

/-! ## A208945.P2872270921304523593

`A209073(A077342(n+1))`
-/

namespace A208945.P2872270921304523593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A077342 (n + 1)).toNat

end

end A208945.P2872270921304523593

/-!
# A208946: Number of 4-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero with no three beads in a row equal.

The programs for A208946, the canonical program `A208946.P176554200536292784` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208946 has offset 1).

The definition of A208946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208946.P14205076007032669302

`∑[∑[6*comp[4*n]]-1]`
-/

namespace A208946.P14205076007032669302
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208946.P14205076007032669302

namespace A208946

/-- `∑[∑[6*comp[4*n]]-1]` -/
def P14205076007032669302.Spec : Prop :=
  ∀ n, P14205076007032669302.a n = A208946 (n + 1)

end A208946

/-! ## A208946.P11487816838515942132

`ogf((5+7x+6x^2+7x^3-x^4)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))`
-/

namespace A208946.P11487816838515942132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 7, 6, 7, -1] [1, -3, 3, -2, 3, -3, 1] n

end

end A208946.P11487816838515942132

namespace A208946

/-- `ogf((5+7x+6x^2+7x^3-x^4)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))` -/
def P11487816838515942132.Spec : Prop :=
  ∀ n, P11487816838515942132.a n = A208946 (n + 1)

end A208946

/-! ## A208946.P176554200536292784

`∑[(2*(n+1))²]+∑[Δ[lcm(3, n)]%2]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A208946

/-- `∑[(2*(n+1))²]+∑[Δ[lcm(3, n)]%2]` -/
def P176554200536292784.Spec : Prop :=
  ∀ n, P176554200536292784.a n = A208946 (n + 1)

theorem P176554200536292784.correct : P176554200536292784.Spec := by
  intro n
  simp only [A208946, Nat.add_sub_cancel]

end A208946

/-! ## A208946.P17086403007987025519

`A209345(n+1)+∑[∑[4*n+1]]`
-/

namespace A208946.P17086403007987025519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209345 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A208946.P17086403007987025519

namespace A208946

/-- `A209345(n+1)+∑[∑[4*n+1]]` -/
def P17086403007987025519.Spec : Prop :=
  ∀ n, P17086403007987025519.a n = A208946 (n + 1)

end A208946

/-! ## A208946.P8119562548493604860

`A008611(n+2)+C(2*(n+2), 3)`
-/

namespace A208946.P8119562548493604860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (n + 2) + (Nat.choose (2 * (n + 2)) 3 : ℤ)

end

end A208946.P8119562548493604860

namespace A208946

/-- `A008611(n+2)+C(2*(n+2), 3)` -/
def P8119562548493604860.Spec : Prop :=
  ∀ n, P8119562548493604860.a n = A208946 (n + 1)

end A208946

/-! ## A208946.P14851116523646683530

`Δ[A100188(n+1)+ceil(C(n, 2)/3)]`
-/

namespace A208946.P14851116523646683530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100188 (n + 1) + ⌈(Nat.choose n 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208946.P14851116523646683530

namespace A208946

/-- `Δ[A100188(n+1)+ceil(C(n, 2)/3)]` -/
def P14851116523646683530.Spec : Prop :=
  ∀ n, P14851116523646683530.a n = A208946 (n + 1)

end A208946

/-! ## A208946.P16532758051808765005

`A008611(n+2)+A002492(n+1)`
-/

namespace A208946.P16532758051808765005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (n + 2) + A002492 (n + 1)

end

end A208946.P16532758051808765005

namespace A208946

/-- `A008611(n+2)+A002492(n+1)` -/
def P16532758051808765005.Spec : Prop :=
  ∀ n, P16532758051808765005.a n = A208946 (n + 1)

end A208946

/-! ## A208946.P7432570581544264880

`A008611(n+2)+∑[∑[A017113(n)]]`
-/

namespace A208946.P7432570581544264880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208946.P7432570581544264880

namespace A208946

/-- `A008611(n+2)+∑[∑[A017113(n)]]` -/
def P7432570581544264880.Spec : Prop :=
  ∀ n, P7432570581544264880.a n = A208946 (n + 1)

end A208946

/-! ## A208946.P12305093352079709272

`Δ[A208994((n+1)²)]-(n+1)`
-/

namespace A208946.P12305093352079709272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A208946.P12305093352079709272

namespace A208946

/-- `Δ[A208994((n+1)²)]-(n+1)` -/
def P12305093352079709272.Spec : Prop :=
  ∀ n, P12305093352079709272.a n = A208946 (n + 1)

end A208946

/-!
# A208947: Number of 5-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero with no three beads in a row equal.

The programs for A208947, the canonical program `A208947.P1619339195376926540` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208947 has offset 1).

The definition of A208947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208947.P1619339195376926540

`ogf((8+44x+94x^2+132x^3+126x^4+96x^5+42x^6+12x^7-2x^8)/(1-3x+3x^2-2x^3+2x^4-2x^6+2x^7-3x^8+3x^9-x^10))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A208947

/-- `ogf((8+44x+94x^2+132x^3+126x^4+96x^5+42x^6+12x^7-2x^8)/(1-3x+3x^2-2x^3+2x^4-2x^6+2x^7-3x^8+3x^9-x^10))` -/
def P1619339195376926540.Spec : Prop :=
  ∀ n, P1619339195376926540.a n = A208947 (n + 1)

theorem P1619339195376926540.correct : P1619339195376926540.Spec := by
  intro n
  simp only [A208947, Nat.add_sub_cancel]

end A208947

/-! ## A208947.P9325631211006666095

`A209074(n+1)-and(2, n+1)`
-/

namespace A208947.P9325631211006666095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209074 (n + 1) - (Nat.land 2 (n + 1) : ℤ)

end

end A208947.P9325631211006666095

namespace A208947

/-- `A209074(n+1)-and(2, n+1)` -/
def P9325631211006666095.Spec : Prop :=
  ∀ n, P9325631211006666095.a n = A208947 (n + 1)

end A208947

/-! ## A208947.P12368534969740488302

`A209074(n+1)-A002378(n)%4`
-/

namespace A208947.P12368534969740488302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209074 (n + 1) - Int.tmod (A002378 n) 4

end

end A208947.P12368534969740488302

namespace A208947

/-- `A209074(n+1)-A002378(n)%4` -/
def P12368534969740488302.Spec : Prop :=
  ∀ n, P12368534969740488302.a n = A208947 (n + 1)

end A208947

/-! ## A208947.P5446333385353543599

`A209074(n+1)-A027689(n)%4`
-/

namespace A208947.P5446333385353543599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209074 (n + 1) - Int.tmod (A027689 n) 4

end

end A208947.P5446333385353543599

namespace A208947

/-- `A209074(n+1)-A027689(n)%4` -/
def P5446333385353543599.Spec : Prop :=
  ∀ n, P5446333385353543599.a n = A208947 (n + 1)

end A208947

/-! ## A208947.P2429881440340764385

`A209074(n+1)-A135706(n)%4`
-/

namespace A208947.P2429881440340764385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209074 (n + 1) - Int.tmod (A135706 n) 4

end

end A208947.P2429881440340764385

namespace A208947

/-- `A209074(n+1)-A135706(n)%4` -/
def P2429881440340764385.Spec : Prop :=
  ∀ n, P2429881440340764385.a n = A208947 (n + 1)

end A208947

/-! ## A208947.P8434035981936059359

`A209074(n+1)-A163756(n)%4`
-/

namespace A208947.P8434035981936059359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209074 (n + 1) - Int.tmod (A163756 n) 4

end

end A208947.P8434035981936059359

namespace A208947

/-- `A209074(n+1)-A163756(n)%4` -/
def P8434035981936059359.Spec : Prop :=
  ∀ n, P8434035981936059359.a n = A208947 (n + 1)

end A208947

/-! ## A208947.P5539104445436233661

`A209074(n+1)-A010673(A110654(n))`
-/

namespace A208947.P5539104445436233661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209074 (n + 1) - A010673 (A110654 n).toNat

end

end A208947.P5539104445436233661

namespace A208947

/-- `A209074(n+1)-A010673(A110654(n))` -/
def P5539104445436233661.Spec : Prop :=
  ∀ n, P5539104445436233661.a n = A208947 (n + 1)

end A208947

/-! ## A208947.P17852109177349295772

`A209074(n+1)-A010673(A003188(n))`
-/

namespace A208947.P17852109177349295772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209074 (n + 1) - A010673 (A003188 n).toNat

end

end A208947.P17852109177349295772

namespace A208947

/-- `A209074(n+1)-A010673(A003188(n))` -/
def P17852109177349295772.Spec : Prop :=
  ∀ n, P17852109177349295772.a n = A208947 (n + 1)

end A208947

/-! ## A208947.P11458496881010260702

`A209074(n+1)-A199398(A027689(n))`
-/

namespace A208947.P11458496881010260702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209074 (n + 1) - A199398 (A027689 n).toNat

end

end A208947.P11458496881010260702

namespace A208947

/-- `A209074(n+1)-A199398(A027689(n))` -/
def P11458496881010260702.Spec : Prop :=
  ∀ n, P11458496881010260702.a n = A208947 (n + 1)

end A208947

/-!
# A208948: Number of 6-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero with no three beads in a row equal.

The programs for A208948, the canonical program `A208948.P9936264504585071277` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208948 has offset 1).

The definition of A208948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208948.P9936264504585071277

`ogf((20+164x+344x^2+338x^3+176x^4+14x^5)/(1-5x+10x^2-11x^3+10x^4-11x^5+10x^6-5x^7+x^8))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A208948

/-- `ogf((20+164x+344x^2+338x^3+176x^4+14x^5)/(1-5x+10x^2-11x^3+10x^4-11x^5+10x^6-5x^7+x^8))` -/
def P9936264504585071277.Spec : Prop :=
  ∀ n, P9936264504585071277.a n = A208948 (n + 1)

theorem P9936264504585071277.correct : P9936264504585071277.Spec := by
  intro n
  simp only [A208948, Nat.add_sub_cancel]

end A208948

/-! ## A208948.P2643930917544568883

`abs(1-n)+A209075(n+1)-n`
-/

namespace A208948.P2643930917544568883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + (A209075 (n + 1) - (n : ℤ))

end

end A208948.P2643930917544568883

namespace A208948

/-- `abs(1-n)+A209075(n+1)-n` -/
def P2643930917544568883.Spec : Prop :=
  ∀ n, P2643930917544568883.a n = A208948 (n + 1)

end A208948

/-! ## A208948.P1658944966628664678

`A209075(n+1)-A158388(n)`
-/

namespace A208948.P1658944966628664678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209075 (n + 1) - A158388 n

end

end A208948.P1658944966628664678

namespace A208948

/-- `A209075(n+1)-A158388(n)` -/
def P1658944966628664678.Spec : Prop :=
  ∀ n, P1658944966628664678.a n = A208948 (n + 1)

end A208948

/-! ## A208948.P10498599576795006351

`A209075(n+1)+A153881(n+1)`
-/

namespace A208948.P10498599576795006351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209075 (n + 1) + A153881 (n + 1)

end

end A208948.P10498599576795006351

namespace A208948

/-- `A209075(n+1)+A153881(n+1)` -/
def P10498599576795006351.Spec : Prop :=
  ∀ n, P10498599576795006351.a n = A208948 (n + 1)

end A208948

/-! ## A208948.P10794431296574295679

`A209075(n+1)+A000038(n)-1`
-/

namespace A208948.P10794431296574295679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209075 (n + 1) + (A000038 n - 1)

end

end A208948.P10794431296574295679

namespace A208948

/-- `A209075(n+1)+A000038(n)-1` -/
def P10794431296574295679.Spec : Prop :=
  ∀ n, P10794431296574295679.a n = A208948 (n + 1)

end A208948

/-! ## A208948.P13772335442378899612

`A209075(n+1)+A165747(n)%2`
-/

namespace A208948.P13772335442378899612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209075 (n + 1) + Int.tmod (A165747 n) 2

end

end A208948.P13772335442378899612

namespace A208948

/-- `A209075(n+1)+A165747(n)%2` -/
def P13772335442378899612.Spec : Prop :=
  ∀ n, P13772335442378899612.a n = A208948 (n + 1)

end A208948

/-! ## A208948.P4603844712870523734

`A209075(n+1)-A033566(n)%2`
-/

namespace A208948.P4603844712870523734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209075 (n + 1) - Int.tmod (A033566 n) 2

end

end A208948.P4603844712870523734

namespace A208948

/-- `A209075(n+1)-A033566(n)%2` -/
def P4603844712870523734.Spec : Prop :=
  ∀ n, P4603844712870523734.a n = A208948 (n + 1)

end A208948

/-! ## A208948.P2964669018618169636

`A209075(n+1)-A008683(C(3, C(3, n²)))`
-/

namespace A208948.P2964669018618169636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209075 (n + 1) - A008683 (Nat.choose 3 (Nat.choose 3 (n ^ 2)))

end

end A208948.P2964669018618169636

namespace A208948

/-- `A209075(n+1)-A008683(C(3, C(3, n²)))` -/
def P2964669018618169636.Spec : Prop :=
  ∀ n, P2964669018618169636.a n = A208948 (n + 1)

end A208948

/-! ## A208948.P9869727088093799815

`A209075(n+1)+A033999(ceil(n/(n+1)))`
-/

namespace A208948.P9869727088093799815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209075 (n + 1) + A033999 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A208948.P9869727088093799815

namespace A208948

/-- `A209075(n+1)+A033999(ceil(n/(n+1)))` -/
def P9869727088093799815.Spec : Prop :=
  ∀ n, P9869727088093799815.a n = A208948 (n + 1)

end A208948

/-! ## A208948.P3721673751314672039

`A209075(n+1)+A132339(ceil(n/(n+1)))`
-/

namespace A208948.P3721673751314672039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209075 (n + 1) + A132339 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A208948.P3721673751314672039

namespace A208948

/-- `A209075(n+1)+A132339(ceil(n/(n+1)))` -/
def P3721673751314672039.Spec : Prop :=
  ∀ n, P3721673751314672039.a n = A208948 (n + 1)

end A208948

/-! ## A208948.P6095064784958063432

`A209075(n+1)+A008683(A002233(n+1))`
-/

namespace A208948.P6095064784958063432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209075 (n + 1) + A008683 (A002233 (n + 1)).toNat

end

end A208948.P6095064784958063432

namespace A208948

/-- `A209075(n+1)+A008683(A002233(n+1))` -/
def P6095064784958063432.Spec : Prop :=
  ∀ n, P6095064784958063432.a n = A208948 (n + 1)

end A208948

/-! ## A208948.P16153266271827885528

`A209075(n+1)+A008836(A020639(n+1))`
-/

namespace A208948.P16153266271827885528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209075 (n + 1) + A008836 (A020639 (n + 1)).toNat

end

end A208948.P16153266271827885528

namespace A208948

/-- `A209075(n+1)+A008836(A020639(n+1))` -/
def P16153266271827885528.Spec : Prop :=
  ∀ n, P16153266271827885528.a n = A208948 (n + 1)

end A208948

/-! ## A208948.P18224590459768102709

`A209075(n+1)+A008683(A027746(n+1))`
-/

namespace A208948.P18224590459768102709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209075 (n + 1) + A008683 (A027746 (n + 1)).toNat

end

end A208948.P18224590459768102709

namespace A208948

/-- `A209075(n+1)+A008683(A027746(n+1))` -/
def P18224590459768102709.Spec : Prop :=
  ∀ n, P18224590459768102709.a n = A208948 (n + 1)

end A208948

/-! ## A208948.P13402348201222182097

`A209075(n+1)-A008683(A000041(C(3, n+2)))`
-/

namespace A208948.P13402348201222182097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209075 (n + 1) - A008683 (A000041 (Nat.choose 3 (n + 2))).toNat

end

end A208948.P13402348201222182097

namespace A208948

/-- `A209075(n+1)-A008683(A000041(C(3, n+2)))` -/
def P13402348201222182097.Spec : Prop :=
  ∀ n, P13402348201222182097.a n = A208948 (n + 1)

end A208948

/-! ## A208948.P15979509773666841715

`A209075(n+1)+A008683(A008578(n+1))`
-/

namespace A208948.P15979509773666841715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209075 (n + 1) + A008683 (A008578 (n + 1)).toNat

end

end A208948.P15979509773666841715

namespace A208948

/-- `A209075(n+1)+A008683(A008578(n+1))` -/
def P15979509773666841715.Spec : Prop :=
  ∀ n, P15979509773666841715.a n = A208948 (n + 1)

end A208948

/-! ## A208948.P9403152728473530663

`A209075(n+1)-A049347(A008486(n))`
-/

namespace A208948.P9403152728473530663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209075 (n + 1) - A049347 (A008486 n).toNat

end

end A208948.P9403152728473530663

namespace A208948

/-- `A209075(n+1)-A049347(A008486(n))` -/
def P9403152728473530663.Spec : Prop :=
  ∀ n, P9403152728473530663.a n = A208948 (n + 1)

end A208948

/-!
# A208949: Number of 7-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero with no three beads in a row equal.

The programs for A208949, there is no canonical definition to state claims against.
-/

/-! ## A208949.P7465308795392694906

`A208945(A167487(n+5))`
-/

namespace A208949.P7465308795392694906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (A167487 (n + 5)).toNat

end

end A208949.P7465308795392694906

/-! ## A208949.P126690956833306925

`A208945(A056119(n)+28)`
-/

namespace A208949.P126690956833306925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (A056119 n + 28).toNat

end

end A208949.P126690956833306925

/-! ## A208949.P2626038720128104721

`A208945(eq[11, A066657(n)])`
-/

namespace A208949.P2626038720128104721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208949.P2626038720128104721

/-! ## A208949.P16368554611473617152

`A208945(A167614(n+5)+4)`
-/

namespace A208949.P16368554611473617152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (A167614 (n + 5) + 4).toNat

end

end A208949.P16368554611473617152

/-! ## A208949.P9395582239540752634

`A208945(A133263(n+6)+5)`
-/

namespace A208949.P9395582239540752634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (A133263 (n + 6) + 5).toNat

end

end A208949.P9395582239540752634

/-!
# A208950: a(4*n) = n*(16*n^2-1)/3, a(2*n+1) = n*(n+1)*(2*n+1)/6, a(4*n+2) = (4*n+1)*(4*n+2)*(4*n+3)/6.

The programs for A208950, the canonical program `A208950.P11295189714908472942` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208950 has offset 0).

The definition of A208950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208950.P11295189714908472942

`C(n+1, 3)*gcd(n+2, 4)/4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A208950

/-- `C(n+1, 3)*gcd(n+2, 4)/4` -/
def P11295189714908472942.Spec : Prop :=
  ∀ n, P11295189714908472942.a n = (A208950 n : ℚ)

end A208950

/-! ## A208950.P10761389469850471036

`gcd(C(n+1, 4), C(n², 4))`
-/

namespace A208950.P10761389469850471036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (n + 1) 4) (Nat.choose (n ^ 2) 4)

end

end A208950.P10761389469850471036

namespace A208950

/-- `gcd(C(n+1, 4), C(n², 4))` -/
def P10761389469850471036.Spec : Prop :=
  ∀ n, (P10761389469850471036.a n : ℤ) = A208950 n

end A208950

/-! ## A208950.P18377783347136766538

`gcd((n+1)*a(n-1), C(n+2, 4))` with `a(0)=0`
-/

namespace A208950.P18377783347136766538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.gcd ((n + 1) * a (n - 1)) (Nat.choose (n + 2) 4)

end

end A208950.P18377783347136766538

namespace A208950

/-- `gcd((n+1)*a(n-1), C(n+2, 4))` -/
def P18377783347136766538.Spec : Prop :=
  ∀ n, (P18377783347136766538.a n : ℤ) = A208950 n

end A208950

/-! ## A208950.P12948813225932969223

`gcd(∑[(n-2)*(n²-n)/2], ∑[A161680(n)])`
-/

namespace A208950.P12948813225932969223
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * ((n ^ 2 : ℤ) - (n : ℤ)) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A208950.P12948813225932969223

namespace A208950

/-- `gcd(∑[(n-2)*(n²-n)/2], ∑[A161680(n)])` -/
def P12948813225932969223.Spec : Prop :=
  ∀ n, (P12948813225932969223.a n : ℤ) = A208950 n

end A208950

/-! ## A208950.P9877884689384634620

`A276670(n)/A010704(n)`
-/

namespace A208950.P9877884689384634620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276670 n : ℚ) / (A010704 n : ℚ)

end

end A208950.P9877884689384634620

namespace A208950

/-- `A276670(n)/A010704(n)` -/
def P9877884689384634620.Spec : Prop :=
  ∀ n, P9877884689384634620.a n = (A208950 n : ℚ)

end A208950

/-! ## A208950.P99095011961746044

`gcd(A002415(n), A212415(n))`
-/

namespace A208950.P99095011961746044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002415 n) (A212415 n)

end

end A208950.P99095011961746044

namespace A208950

/-- `gcd(A002415(n), A212415(n))` -/
def P99095011961746044.Spec : Prop :=
  ∀ n, (P99095011961746044.a n : ℤ) = A208950 n

end A208950

/-! ## A208950.P6249943115871420324

`gcd(∑[A161680(n)], A050534(n))`
-/

namespace A208950.P6249943115871420324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A050534 n)

end

end A208950.P6249943115871420324

namespace A208950

/-- `gcd(∑[A161680(n)], A050534(n))` -/
def P6249943115871420324.Spec : Prop :=
  ∀ n, (P6249943115871420324.a n : ℤ) = A208950 n

end A208950

/-! ## A208950.P195849579312392334

`A276670(n)/(3*A000034(n))`
-/

namespace A208950.P195849579312392334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276670 n : ℚ) / (3 * A000034 n : ℚ)

end

end A208950.P195849579312392334

namespace A208950

/-- `A276670(n)/(3*A000034(n))` -/
def P195849579312392334.Spec : Prop :=
  ∀ n, P195849579312392334.a n = (A208950 n : ℚ)

end A208950

/-! ## A208950.P8079299718481770356

`gcd(∑[A005581(n)], A000332(n+2))`
-/

namespace A208950.P8079299718481770356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000332 (n + 2))

end

end A208950.P8079299718481770356

namespace A208950

/-- `gcd(∑[A005581(n)], A000332(n+2))` -/
def P8079299718481770356.Spec : Prop :=
  ∀ n, (P8079299718481770356.a n : ℤ) = A208950 n

end A208950

/-! ## A208950.P14183023437208487615

`A000332(n+2)/A060819(n+2)`
-/

namespace A208950.P14183023437208487615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000332 (n + 2) : ℚ) / (A060819 (n + 2) : ℚ)

end

end A208950.P14183023437208487615

namespace A208950

/-- `A000332(n+2)/A060819(n+2)` -/
def P14183023437208487615.Spec : Prop :=
  ∀ n, P14183023437208487615.a n = (A208950 n : ℚ)

end A208950

/-! ## A208950.P12320923897830674845

`A000332(n+2)/A026741(A026741(n+2))`
-/

namespace A208950.P12320923897830674845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000332 (n + 2) : ℚ) / (A026741 (A026741 (n + 2)).toNat : ℚ)

end

end A208950.P12320923897830674845

namespace A208950

/-- `A000332(n+2)/A026741(A026741(n+2))` -/
def P12320923897830674845.Spec : Prop :=
  ∀ n, P12320923897830674845.a n = (A208950 n : ℚ)

end A208950

/-! ## A208950.P18008393976302324385

`gcd(A000332(n+1), A000332(n²))`
-/

namespace A208950.P18008393976302324385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000332 (n + 1)) (A000332 (n ^ 2))

end

end A208950.P18008393976302324385

namespace A208950

/-- `gcd(A000332(n+1), A000332(n²))` -/
def P18008393976302324385.Spec : Prop :=
  ∀ n, (P18008393976302324385.a n : ℤ) = A208950 n

end A208950

/-!
# A208954: a(n) = n^4*(n-1)*(n+1)/12.

The programs for A208954, the canonical program `A208954.P13398151489296596241` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208954 has offset 1).

The definition of A208954 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A208954.anchor (n : ℕ) : (A208954 (n + 1) : ℚ) = ((n + 1) ^ 4 * n * (n + 2) : ℚ) / 12` in `Proof.A208.A208954`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A208954.P13398151489296596241

`(n+1)^4*n*(n+2)/12`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A208954

/-- `(n+1)^4*n*(n+2)/12` -/
def P13398151489296596241.Spec : Prop :=
  ∀ n, P13398151489296596241.a n = (A208954 (n + 1) : ℚ)

end A208954

/-! ## A208954.P12346708479442959896

`ogf((4x+26x^2+26x^3+4x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A208954.P12346708479442959896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 26, 26, 4] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A208954.P12346708479442959896

namespace A208954

/-- `ogf((4x+26x^2+26x^3+4x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P12346708479442959896.Spec : Prop :=
  ∀ n, P12346708479442959896.a n = A208954 (n + 1)

end A208954

/-! ## A208954.P10266783757271111644

`(n+1)²*∑[A000330(n)]`
-/

namespace A208954.P10266783757271111644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208954.P10266783757271111644

namespace A208954

/-- `(n+1)²*∑[A000330(n)]` -/
def P10266783757271111644.Spec : Prop :=
  ∀ n, P10266783757271111644.a n = A208954 (n + 1)

end A208954

/-! ## A208954.P10585504114157614234

`∑[∑[n²]*∑[A008486(n)]]`
-/

namespace A208954.P10585504114157614234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208954.P10585504114157614234

namespace A208954

/-- `∑[∑[n²]*∑[A008486(n)]]` -/
def P10585504114157614234.Spec : Prop :=
  ∀ n, P10585504114157614234.a n = A208954 (n + 1)

end A208954

/-! ## A208954.P683755257096646419

`(n+1)/4*A143945(n+1)`
-/

namespace A208954.P683755257096646419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A143945 (n + 1) : ℚ)

end

end A208954.P683755257096646419

namespace A208954

/-- `(n+1)/4*A143945(n+1)` -/
def P683755257096646419.Spec : Prop :=
  ∀ n, P683755257096646419.a n = (A208954 (n + 1) : ℚ)

end A208954

/-! ## A208954.P9531243671662089939

`A331528(n)+A132122(n)`
-/

namespace A208954.P9531243671662089939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331528 n + A132122 n

end

end A208954.P9531243671662089939

namespace A208954

/-- `A331528(n)+A132122(n)` -/
def P9531243671662089939.Spec : Prop :=
  ∀ n, P9531243671662089939.a n = A208954 (n + 1)

end A208954

/-! ## A208954.P8503345614921718809

`A076389(n+1)+A004282(n)`
-/

namespace A208954.P8503345614921718809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076389 (n + 1) + A004282 n

end

end A208954.P8503345614921718809

namespace A208954

/-- `A076389(n+1)+A004282(n)` -/
def P8503345614921718809.Spec : Prop :=
  ∀ n, P8503345614921718809.a n = A208954 (n + 1)

end A208954

/-! ## A208954.P14788167646335202294

`(n+1)²*A002415(n+1)`
-/

namespace A208954.P14788167646335202294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A002415 (n + 1)

end

end A208954.P14788167646335202294

namespace A208954

/-- `(n+1)²*A002415(n+1)` -/
def P14788167646335202294.Spec : Prop :=
  ∀ n, P14788167646335202294.a n = A208954 (n + 1)

end A208954

/-! ## A208954.P7130215582635415186

`(n+1)²*A079034(n+1)-(n+1)²`
-/

namespace A208954.P7130215582635415186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A079034 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A208954.P7130215582635415186

namespace A208954

/-- `(n+1)²*A079034(n+1)-(n+1)²` -/
def P7130215582635415186.Spec : Prop :=
  ∀ n, P7130215582635415186.a n = A208954 (n + 1)

end A208954

/-! ## A208954.P18141198675440044569

`A002415(n+1)+A002415(n+1)*A132411(n+1)`
-/

namespace A208954.P18141198675440044569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + A002415 (n + 1) * A132411 (n + 1)

end

end A208954.P18141198675440044569

namespace A208954

/-- `A002415(n+1)+A002415(n+1)*A132411(n+1)` -/
def P18141198675440044569.Spec : Prop :=
  ∀ n, P18141198675440044569.a n = A208954 (n + 1)

end A208954

/-! ## A208954.P9818013931710471260

`(n+1)²*A081283(2*n)`
-/

namespace A208954.P9818013931710471260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A081283 (2 * n)

end

end A208954.P9818013931710471260

namespace A208954

/-- `(n+1)²*A081283(2*n)` -/
def P9818013931710471260.Spec : Prop :=
  ∀ n, P9818013931710471260.a n = A208954 (n + 1)

end A208954

/-! ## A208954.P11836510692330224591

`∑[A000330(n)*A016777(∑[n])]`
-/

namespace A208954.P11836510692330224591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n * A016777 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208954.P11836510692330224591

namespace A208954

/-- `∑[A000330(n)*A016777(∑[n])]` -/
def P11836510692330224591.Spec : Prop :=
  ∀ n, P11836510692330224591.a n = A208954 (n + 1)

end A208954

/-! ## A208954.P12582032325671644899

`∑[∑[A147875(n²)]]`
-/

namespace A208954.P12582032325671644899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208954.P12582032325671644899

namespace A208954

/-- `∑[∑[A147875(n²)]]` -/
def P12582032325671644899.Spec : Prop :=
  ∀ n, P12582032325671644899.a n = A208954 (n + 1)

end A208954

/-! ## A208954.P14527098518534128798

`(n+1)²*A011865((n+1)²)`
-/

namespace A208954.P14527098518534128798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A011865 ((n + 1) ^ 2)

end

end A208954.P14527098518534128798

namespace A208954

/-- `(n+1)²*A011865((n+1)²)` -/
def P14527098518534128798.Spec : Prop :=
  ∀ n, P14527098518534128798.a n = A208954 (n + 1)

end A208954

/-!
# A208955: Expansion of phi(x) * phi(x^9) / chi(x^3)^2 in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A208955, the canonical program `A208955.P8307013105643369365` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208955 has offset 0).

The definition of A208955 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A121363, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A208955.P8307013105643369365

`(-1)^n*A121363(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A208955

/-- `(-1)^n*A121363(n)` -/
def P8307013105643369365.Spec : Prop :=
  ∀ n, P8307013105643369365.a n = A208955 n

theorem P8307013105643369365.correct : P8307013105643369365.Spec := by
  intro n
  simp only [A208955]

end A208955

/-! ## A208955.P909235242311666844

`A008441(n)*A010892(n)`
-/

namespace A208955.P909235242311666844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n * A010892 n

end

end A208955.P909235242311666844

namespace A208955

/-- `A008441(n)*A010892(n)` -/
def P909235242311666844.Spec : Prop :=
  ∀ n, P909235242311666844.a n = A208955 n

end A208955

/-! ## A208955.P993358065840363898

`A049347(n)*A134343(n)`
-/

namespace A208955.P993358065840363898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A134343 n

end

end A208955.P993358065840363898

namespace A208955

/-- `A049347(n)*A134343(n)` -/
def P993358065840363898.Spec : Prop :=
  ∀ n, P993358065840363898.a n = A208955 n

theorem P993358065840363898.correct : P993358065840363898.Spec := by
  intro n
  simp only [A208955, Nat.add_sub_cancel, A208955.P993358065840363898.a, A208955.P8307013105643369365.a, A049347, A049347.P9996747395155426839.a, A121363, A121363.P18122927571743324693.a, A134343, A134343.P11380617863790759177.a, A008441, A008441.P257068461411472066.a, A002654, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A208955

/-! ## A208955.P16755803796876495889

`A121363(n)/A033999(n)`
-/

namespace A208955.P16755803796876495889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121363 n : ℚ) / (A033999 n : ℚ)

end

end A208955.P16755803796876495889

namespace A208955

/-- `A121363(n)/A033999(n)` -/
def P16755803796876495889.Spec : Prop :=
  ∀ n, P16755803796876495889.a n = (A208955 n : ℚ)

end A208955

/-! ## A208955.P11328126509459348506

`(A236348(n)-n)*A134343(n)`
-/

namespace A208955.P11328126509459348506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A236348 n - (n : ℤ)) * A134343 n

end

end A208955.P11328126509459348506

namespace A208955

/-- `(A236348(n)-n)*A134343(n)` -/
def P11328126509459348506.Spec : Prop :=
  ∀ n, P11328126509459348506.a n = A208955 n

end A208955

/-! ## A208955.P5417548719630378719

`A010892(2*n+1)*A134343(n)`
-/

namespace A208955.P5417548719630378719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n + 1) * A134343 n

end

end A208955.P5417548719630378719

namespace A208955

/-- `A010892(2*n+1)*A134343(n)` -/
def P5417548719630378719.Spec : Prop :=
  ∀ n, P5417548719630378719.a n = A208955 n

end A208955

/-! ## A208955.P13683021269799193655

`A002654(4*n+1)*A010892(n)`
-/

namespace A208955.P13683021269799193655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (4 * n + 1) * A010892 n

end

end A208955.P13683021269799193655

namespace A208955

/-- `A002654(4*n+1)*A010892(n)` -/
def P13683021269799193655.Spec : Prop :=
  ∀ n, P13683021269799193655.a n = A208955 n

end A208955

/-!
# A208956: Triangular array read by rows. T(n,k) is the number of n-permutations that have at least k fixed points with n >= 1 and 1 <= k <= n.

The programs for A208956, the canonical program `A208956.P11533460077076892890` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208956 has offset 1).

The definition of A208956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208956.P11533460077076892890

`T(n-1,k-1)+(T(n-2,k)+T(n-1,k)-T(n-2,k-1))*row(n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A208956

/-- `T(n-1,k-1)+(T(n-2,k)+T(n-1,k)-T(n-2,k-1))*row(n)` -/
def P11533460077076892890.Spec : Prop :=
  ∀ n, P11533460077076892890.a n = A208956 (n + 1)

theorem P11533460077076892890.correct : P11533460077076892890.Spec := by
  intro n
  simp only [A208956, Nat.add_sub_cancel]

end A208956

/-! ## A208956.P15832183520670049223

`A345462(n+1)+A008290(n)-A123513(n+1)`
-/

namespace A208956.P15832183520670049223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345462 (n + 1) + (A008290 n - A123513 (n + 1))

end

end A208956.P15832183520670049223

namespace A208956

/-- `A345462(n+1)+A008290(n)-A123513(n+1)` -/
def P15832183520670049223.Spec : Prop :=
  ∀ n, P15832183520670049223.a n = A208956 (n + 1)

theorem P15832183520670049223.correct : P15832183520670049223.Spec := by
  intro n
  simp only [A208956, Nat.add_sub_cancel, A208956.P15832183520670049223.a, A208956.P11533460077076892890.a, A008290, A008290.P8961295090200819108.a, A123513, A123513.P10972167970805802106.a, A345462, A345462.P9316116335408927.a, A010027, A010027.P2698919876476170280.a, A038722, A038722.P244822054879230948.a, A000255, A000255.P10443310413278371170.a, A002262, A002262.P17823619022233514403.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A208956

/-! ## A208956.P15221708396866474731

`A324564(comp[∑[n-1]]%A156413(n))`
-/

namespace A208956.P15221708396866474731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A156413 n)).toNat

end

end A208956.P15221708396866474731

namespace A208956

/-- `A324564(comp[∑[n-1]]%A156413(n))` -/
def P15221708396866474731.Spec : Prop :=
  ∀ n, P15221708396866474731.a n = A208956 (n + 1)

end A208956

/-! ## A208956.P774263706465813323

`A324564(A007401(n+1)%A271251(n))`
-/

namespace A208956.P774263706465813323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324564 (Int.tmod (A007401 (n + 1)) (A271251 n)).toNat

end

end A208956.P774263706465813323

namespace A208956

/-- `A324564(A007401(n+1)%A271251(n))` -/
def P774263706465813323.Spec : Prop :=
  ∀ n, P774263706465813323.a n = A208956 (n + 1)

end A208956

/-! ## A208956.P6169159877949169658

`A000196(A324564(comp[∑[n-1]])²)`
-/

namespace A208956.P6169159877949169658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A324564 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ^ 2).toNat

end

end A208956.P6169159877949169658

namespace A208956

/-- `A000196(A324564(comp[∑[n-1]])²)` -/
def P6169159877949169658.Spec : Prop :=
  ∀ n, P6169159877949169658.a n = A208956 (n + 1)

end A208956

/-!
# A208957: Number of nX1 0..5 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A208957, there is no canonical definition to state claims against.
-/

/-! ## A208957.P1846142943454814225

`A208960(∑[n]+1)`
-/

namespace A208957.P1846142943454814225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208960 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208957.P1846142943454814225

/-! ## A208957.P5897407498785066035

`record[A208960(A114091(n+1))]`
-/

namespace A208957.P5897407498785066035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208960 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208957.P5897407498785066035

/-! ## A208957.P6060787442309616831

`record[A208960(A254052(n+1))]`
-/

namespace A208957.P6060787442309616831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208960 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208957.P6060787442309616831

/-! ## A208957.P18113081685308140153

`A208960(A000124(n))+char[8]`
-/

namespace A208957.P18113081685308140153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208960 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208957.P18113081685308140153

/-!
# A208958: Number of nX2 0..5 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A208958, there is no canonical definition to state claims against.
-/

/-! ## A208958.P13564305502950235370

`A208960(∑[n+1]+2)`
-/

namespace A208958.P13564305502950235370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208960 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A208958.P13564305502950235370

/-! ## A208958.P16430216007400149160

`record[A208960(A114091(n+1)+1)]`
-/

namespace A208958.P16430216007400149160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208960 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208958.P16430216007400149160

/-! ## A208958.P2009147095142175186

`record[gcd(A208960(n+2), A340666(n))]`
-/

namespace A208958.P2009147095142175186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208960 (n + 2)) (A340666 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208958.P2009147095142175186

/-!
# A208959: Number of nX3 0..5 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A208959, there is no canonical definition to state claims against.
-/

/-! ## A208959.P3029352711583880648

`A208960(∑[n+3]+1)`
-/

namespace A208959.P3029352711583880648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208960 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208959.P3029352711583880648

/-!
# A208960: T(n,k)=Number of nXk 0..5 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A208960, there is no canonical definition to state claims against.
-/

/-! ## A208960.P11332554774710284723

`A209054(A132263(n+1))`
-/

namespace A208960.P11332554774710284723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209054 (A132263 (n + 1)).toNat

end

end A208960.P11332554774710284723

/-! ## A208960.P13256434782295385338

`A209054(A274846(n+1)+1)`
-/

namespace A208960.P13256434782295385338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209054 (A274846 (n + 1) + 1).toNat

end

end A208960.P13256434782295385338

/-! ## A208960.P7339653115563665607

`A209218(A274846(n+1)+1)`
-/

namespace A208960.P7339653115563665607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209218 (A274846 (n + 1) + 1).toNat

end

end A208960.P7339653115563665607

/-! ## A208960.P6558066805470816838

`A209054(A048766((n+1)^3))`
-/

namespace A208960.P6558066805470816838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209054 (A048766 ((n + 1) ^ 3)).toNat

end

end A208960.P6558066805470816838

/-! ## A208960.P12183318791173574696

`A209054(n+1)+A000122(A335314(n+1))`
-/

namespace A208960.P12183318791173574696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209054 (n + 1) + A000122 (A335314 (n + 1)).toNat

end

end A208960.P12183318791173574696

/-!
# A208961: G.f. satisfies: A(x) = 1 + x*[d/dx x/A(x)^2].

The programs for A208961, there is no canonical definition to state claims against.
-/

/-! ## A208961.P11578442141994639874

`A006882(n)*A342625(A108459(n))`
-/

namespace A208961.P11578442141994639874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n * A342625 (A108459 n).toNat

end

end A208961.P11578442141994639874

/-!
# A208962: Number of n-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero and first and second differences in -n..n.

The programs for A208962, there is no canonical definition to state claims against.
-/

/-! ## A208962.P15264647950644476737

`A208970(∑[4*n]+1)`
-/

namespace A208962.P15264647950644476737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208962.P15264647950644476737

/-! ## A208962.P3267105031814165702

`A208970(A001844(n))+char[12]`
-/

namespace A208962.P3267105031814165702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208962.P3267105031814165702

/-! ## A208962.P1503823784836766005

`∏{p}[n+1, C(7, #)%2]*A208970(A000982(2*n+1))`
-/

namespace A208962.P1503823784836766005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 7 p % 2 : ℕ) : ℤ) * A208970 (A000982 (2 * n + 1)).toNat

end

end A208962.P1503823784836766005

/-! ## A208962.P9852371344797423727

`A014658(n)*A208970(A001844(n))`
-/

namespace A208962.P9852371344797423727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014658 n * A208970 (A001844 n).toNat

end

end A208962.P9852371344797423727

/-! ## A208962.P11792564906849717229

`A067059(n)*A208970(A001844(n))`
-/

namespace A208962.P11792564906849717229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 n * A208970 (A001844 n).toNat

end

end A208962.P11792564906849717229

/-!
# A208963: Number of n-bead necklaces labeled with numbers -1..1 allowing reversal, with sum zero and first and second differences in -1..1.

The programs for A208963, there is no canonical definition to state claims against.
-/

/-! ## A208963.P1316851112400077104

`A208970(∑[n+1])`
-/

namespace A208963.P1316851112400077104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208963.P1316851112400077104

/-! ## A208963.P563300256508582651

`A208970(A000217(n+1))+char[18]`
-/

namespace A208963.P563300256508582651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208963.P563300256508582651

/-! ## A208963.P13138730328192803569

`A208970(A025747(n))%A041334(n)`
-/

namespace A208963.P13138730328192803569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208970 (A025747 n).toNat) (A041334 n)

end

end A208963.P13138730328192803569

/-! ## A208963.P14890144646863410076

`A349797(n+1)+A208970(A025747(n))`
-/

namespace A208963.P14890144646863410076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (n + 1) + A208970 (A025747 n).toNat

end

end A208963.P14890144646863410076

/-!
# A208964: Number of n-bead necklaces labeled with numbers -2..2 allowing reversal, with sum zero and first and second differences in -2..2.

The programs for A208964, there is no canonical definition to state claims against.
-/

/-! ## A208964.P3577736929783085477

`A208970(∑[n+2])`
-/

namespace A208964.P3577736929783085477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208964.P3577736929783085477

/-! ## A208964.P16379875338255557405

`A208970(A000096(n+1))+char[17]`
-/

namespace A208964.P16379875338255557405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208964.P16379875338255557405

/-! ## A208964.P14116699934136624894

`A208970(A000096(n+1))%A000032(2*n)`
-/

namespace A208964.P14116699934136624894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208970 (A000096 (n + 1)).toNat) (A000032 (2 * n))

end

end A208964.P14116699934136624894

/-! ## A208964.P5388801967811201084

`A007318(C(2, n))*A208970(A000096(n+1))`
-/

namespace A208964.P5388801967811201084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A208970 (A000096 (n + 1)).toNat

end

end A208964.P5388801967811201084

/-!
# A208965: Number of n-bead necklaces labeled with numbers -3..3 allowing reversal, with sum zero and first and second differences in -3..3.

The programs for A208965, there is no canonical definition to state claims against.
-/

/-! ## A208965.P17662800011121165216

`A208970(∑[n+3]+1)`
-/

namespace A208965.P17662800011121165216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208965.P17662800011121165216

/-! ## A208965.P17809218616589833209

`A208970(A034856(n+2))+char[18]`
-/

namespace A208965.P17809218616589833209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208965.P17809218616589833209

/-! ## A208965.P11719045608433702013

`A208970(A034856(n+2))%A000108(n+2)`
-/

namespace A208965.P11719045608433702013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208970 (A034856 (n + 2)).toNat) (A000108 (n + 2))

end

end A208965.P11719045608433702013

/-! ## A208965.P12905730708117835548

`A007318(C(n, 2))*A208970(A034856(n+2))`
-/

namespace A208965.P12905730708117835548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A208970 (A034856 (n + 2)).toNat

end

end A208965.P12905730708117835548

/-!
# A208966: Number of n-bead necklaces labeled with numbers -4..4 allowing reversal, with sum zero and first and second differences in -4..4.

The programs for A208966, there is no canonical definition to state claims against.
-/

/-! ## A208966.P17066393698406700335

`A208970(∑[n+4]+3)`
-/

namespace A208966.P17066393698406700335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A208966.P17066393698406700335

/-! ## A208966.P12971597977414673186

`A208970(A056000(n)+7)+char[16]`
-/

namespace A208966.P12971597977414673186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A056000 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208966.P12971597977414673186

/-! ## A208966.P14507038919346455327

`A208970(A027379(n+2))%A055161(n)`
-/

namespace A208966.P14507038919346455327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208970 (A027379 (n + 2)).toNat) (A055161 n)

end

end A208966.P14507038919346455327

/-! ## A208966.P13798772671209857970

`gcd(A000038(n), A208970(A027379(n+2)))`
-/

namespace A208966.P13798772671209857970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A208970 (A027379 (n + 2)).toNat)

end

end A208966.P13798772671209857970

/-! ## A208966.P2985453927808103051

`A208970(A027379(n+2))+A070202(n+1)`
-/

namespace A208966.P2985453927808103051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A027379 (n + 2)).toNat + A070202 (n + 1)

end

end A208966.P2985453927808103051

/-!
# A208967: Number of n-bead necklaces labeled with numbers -5..5 allowing reversal, with sum zero and first and second differences in -5..5.

The programs for A208967, there is no canonical definition to state claims against.
-/

/-! ## A208967.P16570288734560509416

`A208970(Δ[A264443(n)])`
-/

namespace A208967.P16570288734560509416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (f1 (n + 1) - f1 n).toNat

end

end A208967.P16570288734560509416

/-! ## A208967.P11844595012453204530

`A208970(A046691(n+3))`
-/

namespace A208967.P11844595012453204530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A046691 (n + 3)).toNat

end

end A208967.P11844595012453204530

/-! ## A208967.P13795455443752722486

`A208970(A056115(n)+11)`
-/

namespace A208967.P13795455443752722486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A056115 n + 11).toNat

end

end A208967.P13795455443752722486

/-! ## A208967.P13782057254572499480

`A208970(eq[2, A092921(n)])`
-/

namespace A208967.P13782057254572499480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208967.P13782057254572499480

/-! ## A208967.P16715891985141373641

`A208970(eq[3, A152157(n)])`
-/

namespace A208967.P16715891985141373641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208967.P16715891985141373641

/-!
# A208968: Number of n-bead necklaces labeled with numbers -6..6 allowing reversal, with sum zero and first and second differences in -6..6.

The programs for A208968, there is no canonical definition to state claims against.
-/

/-! ## A208968.P17700152090025998602

`A208970(A052905(n+3))`
-/

namespace A208968.P17700152090025998602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A052905 (n + 3)).toNat

end

end A208968.P17700152090025998602

/-! ## A208968.P17375971197813242702

`A208970(A302537(n)+15)`
-/

namespace A208968.P17375971197813242702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A302537 n + 15).toNat

end

end A208968.P17375971197813242702

/-! ## A208968.P13278058646017243404

`A208970(A056119(n)+16)`
-/

namespace A208968.P13278058646017243404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A056119 n + 16).toNat

end

end A208968.P13278058646017243404

/-! ## A208968.P16223185720557618607

`A208970(eq[3, A219347(n)])`
-/

namespace A208968.P16223185720557618607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208968.P16223185720557618607

/-! ## A208968.P13901452109298629736

`A208970(eq[5, A152157(n)])`
-/

namespace A208968.P13901452109298629736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208968.P13901452109298629736

/-!
# A208969: Number of n-bead necklaces labeled with numbers -7..7 allowing reversal, with sum zero and first and second differences in -7..7.

The programs for A208969, there is no canonical definition to state claims against.
-/

/-! ## A208969.P17772593735981036355

`A208970(A055999(n+4))`
-/

namespace A208969.P17772593735981036355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A055999 (n + 4)).toNat

end

end A208969.P17772593735981036355

/-! ## A208969.P305889191875961991

`A208970(eq[4, A219347(n)])`
-/

namespace A208969.P305889191875961991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208969.P305889191875961991

/-! ## A208969.P14944738483695904779

`A208970(eq[5, A332954(n)])`
-/

namespace A208969.P14944738483695904779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208969.P14944738483695904779

/-! ## A208969.P12118465498801140529

`A208970(eq[6, A193592(n)])`
-/

namespace A208969.P12118465498801140529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208969.P12118465498801140529

/-! ## A208969.P14108431507718193140

`A208970(eq[7, A152157(n)])`
-/

namespace A208969.P14108431507718193140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208969.P14108431507718193140

/-!
# A208971: Number of 4-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero and first and second differences in -n..n.

The programs for A208971, the canonical program `A208971.P2714252491975546616` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208971 has offset 1).

The definition of A208971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208971.P2714252491975546616

`∑[ceil(a(n-2)+n/2)]` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A208971

/-- `∑[ceil(a(n-2)+n/2)]` -/
def P2714252491975546616.Spec : Prop :=
  ∀ n, P2714252491975546616.a n = A208971 (n + 1)

theorem P2714252491975546616.correct : P2714252491975546616.Spec := by
  intro n
  simp only [A208971, Nat.add_sub_cancel]

end A208971

/-! ## A208971.P16808483633828296105

`∑[a(n-2)+round(n/2)]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A208971.P16808483633828296105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 2) + SequenceMachineLib.roundAway ((n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208971.P16808483633828296105

namespace A208971

/-- `∑[a(n-2)+round(n/2)]` -/
def P16808483633828296105.Spec : Prop :=
  ∀ n, P16808483633828296105.a n = A208971 (n + 1)

end A208971

/-! ## A208971.P9279908523237593515

`∑[∑[n%2]+a(n-2)]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A208971.P9279908523237593515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208971.P9279908523237593515

namespace A208971

/-- `∑[∑[n%2]+a(n-2)]` -/
def P9279908523237593515.Spec : Prop :=
  ∀ n, (P9279908523237593515.a n : ℤ) = A208971 (n + 1)

end A208971

/-! ## A208971.P14401544621637641835

`∑[floor(a(n-2)+(n+1)/2)]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A208971.P14401544621637641835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  ⌊(f1 (n - 2) : ℚ) + (n + 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208971.P14401544621637641835

namespace A208971

/-- `∑[floor(a(n-2)+(n+1)/2)]` -/
def P14401544621637641835.Spec : Prop :=
  ∀ n, P14401544621637641835.a n = A208971 (n + 1)

end A208971

/-! ## A208971.P3012619107686208301

`ogf((1+x-3x^2+x^3+2x^4-x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A208971.P3012619107686208301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -3, 1, 2, -1] [1, -2, -1, 4, -1, -2, 1] n

end

end A208971.P3012619107686208301

namespace A208971

/-- `ogf((1+x-3x^2+x^3+2x^4-x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P3012619107686208301.Spec : Prop :=
  ∀ n, P3012619107686208301.a n = A208971 (n + 1)

end A208971

/-! ## A208971.P5912501055929404626

`∑[∑[a(n-2)+1]-(a(n-1)+n)]` with `a(0)=1, a(1)=2`
-/

namespace A208971.P5912501055929404626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (f1 (n - 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208971.P5912501055929404626

namespace A208971

/-- `∑[∑[a(n-2)+1]-(a(n-1)+n)]` -/
def P5912501055929404626.Spec : Prop :=
  ∀ n, P5912501055929404626.a n = A208971 (n + 1)

end A208971

/-! ## A208971.P15161228252330174777

`∑[∑[floor(Δ[a(n-2)-n]/a(n-1))]]` with `a(0)=1, a(1)=1`
-/

namespace A208971.P15161228252330174777
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f3 =>
  f3 (n - 2) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  ⌊(f3 (n + 1) - f3 n : ℚ) / (f2 (n - 1) : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208971.P15161228252330174777

namespace A208971

/-- `∑[∑[floor(Δ[a(n-2)-n]/a(n-1))]]` -/
def P15161228252330174777.Spec : Prop :=
  ∀ n, P15161228252330174777.a n = A208971 (n + 1)

end A208971

/-! ## A208971.P319355846060181588

`A266464(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A208971.P319355846060181588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266464 (n + 1) - a (n - 1)

end

end A208971.P319355846060181588

namespace A208971

/-- `A266464(n+1)-a(n-1)` -/
def P319355846060181588.Spec : Prop :=
  ∀ n, P319355846060181588.a n = A208971 (n + 1)

end A208971

/-! ## A208971.P11759390339130535102

`A080513(n)+A006918(n)`
-/

namespace A208971.P11759390339130535102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + A006918 n

end

end A208971.P11759390339130535102

namespace A208971

/-- `A080513(n)+A006918(n)` -/
def P11759390339130535102.Spec : Prop :=
  ∀ n, P11759390339130535102.a n = A208971 (n + 1)

end A208971

/-! ## A208971.P13440502276691322898

`A008619(n+1)+A006918(n)`
-/

namespace A208971.P13440502276691322898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + A006918 n

end

end A208971.P13440502276691322898

namespace A208971

/-- `A008619(n+1)+A006918(n)` -/
def P13440502276691322898.Spec : Prop :=
  ∀ n, P13440502276691322898.a n = A208971 (n + 1)

end A208971

/-! ## A208971.P7105142360521141508

`A006918(n)+A110654(n)+1`
-/

namespace A208971.P7105142360521141508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + (A110654 n + 1)

end

end A208971.P7105142360521141508

namespace A208971

/-- `A006918(n)+A110654(n)+1` -/
def P7105142360521141508.Spec : Prop :=
  ∀ n, P7105142360521141508.a n = A208971 (n + 1)

end A208971

/-! ## A208971.P8351802508026415790

`∪[A081489(n+1), A167875(n)]`
-/

namespace A208971.P8351802508026415790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A208971.P8351802508026415790

namespace A208971

/-- `∪[A081489(n+1), A167875(n)]` -/
def P8351802508026415790.Spec : Prop :=
  ∀ n, (P8351802508026415790.a n : ℤ) = A208971 (n + 1)

end A208971

/-! ## A208971.P16089488739331822577

`A000035(n)+∑[∑[A057979(n)]]`
-/

namespace A208971.P16089488739331822577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208971.P16089488739331822577

namespace A208971

/-- `A000035(n)+∑[∑[A057979(n)]]` -/
def P16089488739331822577.Spec : Prop :=
  ∀ n, P16089488739331822577.a n = A208971 (n + 1)

end A208971

/-! ## A208971.P15788101443079368949

`∑[A000035(n)]+A006918(n)+1`
-/

namespace A208971.P15788101443079368949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A006918 n + 1)

end

end A208971.P15788101443079368949

namespace A208971

/-- `∑[A000035(n)]+A006918(n)+1` -/
def P15788101443079368949.Spec : Prop :=
  ∀ n, P15788101443079368949.a n = A208971 (n + 1)

end A208971

/-! ## A208971.P6253665100551656141

`Δ[A002620(n)]+A006918(n)+1`
-/

namespace A208971.P6253665100551656141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A006918 n + 1)

end

end A208971.P6253665100551656141

namespace A208971

/-- `Δ[A002620(n)]+A006918(n)+1` -/
def P6253665100551656141.Spec : Prop :=
  ∀ n, P6253665100551656141.a n = A208971 (n + 1)

end A208971

/-! ## A208971.P4124254892281974165

`A006918(n)+∑[2-A040001(n)]`
-/

namespace A208971.P4124254892281974165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208971.P4124254892281974165

namespace A208971

/-- `A006918(n)+∑[2-A040001(n)]` -/
def P4124254892281974165.Spec : Prop :=
  ∀ n, P4124254892281974165.a n = A208971 (n + 1)

end A208971

/-! ## A208971.P18428859065734435937

`∑[A000034(n)]+A006918(n)-n`
-/

namespace A208971.P18428859065734435937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A006918 n - (n : ℤ))

end

end A208971.P18428859065734435937

namespace A208971

/-- `∑[A000034(n)]+A006918(n)-n` -/
def P18428859065734435937.Spec : Prop :=
  ∀ n, P18428859065734435937.a n = A208971 (n + 1)

end A208971

/-! ## A208971.P11420012484030597842

`A003453(n+5)-A198442(n+1)`
-/

namespace A208971.P11420012484030597842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5) - A198442 (n + 1)

end

end A208971.P11420012484030597842

namespace A208971

/-- `A003453(n+5)-A198442(n+1)` -/
def P11420012484030597842.Spec : Prop :=
  ∀ n, P11420012484030597842.a n = A208971 (n + 1)

end A208971

/-! ## A208971.P16804459081114946085

`A000034(n)+A006918(n)+A004526(n)`
-/

namespace A208971.P16804459081114946085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A006918 n + A004526 n)

end

end A208971.P16804459081114946085

namespace A208971

/-- `A000034(n)+A006918(n)+A004526(n)` -/
def P16804459081114946085.Spec : Prop :=
  ∀ n, P16804459081114946085.a n = A208971 (n + 1)

end A208971

/-! ## A208971.P7008290410149671893

`∑[A055802(xor(1, n+3))]`
-/

namespace A208971.P7008290410149671893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055802 (Nat.xor 1 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208971.P7008290410149671893

namespace A208971

/-- `∑[A055802(xor(1, n+3))]` -/
def P7008290410149671893.Spec : Prop :=
  ∀ n, P7008290410149671893.a n = A208971 (n + 1)

end A208971

/-!
# A208972: Number of 5-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero and first and second differences in -n..n.

The programs for A208972, there is no canonical definition to state claims against.
-/

/-! ## A208972.P4866102024138790336

`A208970(∑[n+3]+n+12)`
-/

namespace A208972.P4866102024138790336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 12))

end

end A208972.P4866102024138790336

/-! ## A208972.P3983989887646359438

`record[A208970(A254052(n+1)+4)]`
-/

namespace A208972.P3983989887646359438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A254052 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208972.P3983989887646359438

/-! ## A208972.P11162542860678207492

`or(char[1], A208970(A056000(n)+15))`
-/

namespace A208972.P11162542860678207492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A208970 (A056000 n + 15).toNat)

end

end A208972.P11162542860678207492

/-! ## A208972.P10403478849221582411

`record[A010054(n)*A208970(n+5)]`
-/

namespace A208972.P10403478849221582411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A208970 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208972.P10403478849221582411

/-! ## A208972.P1146180080757669648

`A208970(A000124(n+4)+4)+char[16]`
-/

namespace A208972.P1146180080757669648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A000124 (n + 4) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208972.P1146180080757669648

/-!
# A208973: Number of 6-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero and first and second differences in -n..n.

The programs for A208973, there is no canonical definition to state claims against.
-/

/-! ## A208973.P9295982445496533879

`A208970(A166136(n+4))`
-/

namespace A208973.P9295982445496533879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A166136 (n + 4)).toNat

end

end A208973.P9295982445496533879

/-! ## A208973.P17237832279406596033

`A208970(A056115(n)+21)`
-/

namespace A208973.P17237832279406596033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A056115 n + 21).toNat

end

end A208973.P17237832279406596033

/-! ## A208973.P17480235790597545329

`record[A208970(A055999(n)+12)]`
-/

namespace A208973.P17480235790597545329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A055999 n + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208973.P17480235790597545329

/-! ## A208973.P10561824426120284613

`A208970(A167499(n+4)+1)`
-/

namespace A208973.P10561824426120284613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A167499 (n + 4) + 1).toNat

end

end A208973.P10561824426120284613

/-! ## A208973.P7762735694913735570

`A208970(A167614(n+4)+3)`
-/

namespace A208973.P7762735694913735570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A167614 (n + 4) + 3).toNat

end

end A208973.P7762735694913735570

/-!
# A208974: Number of 7-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero and first and second differences in -n..n.

The programs for A208974, there is no canonical definition to state claims against.
-/

/-! ## A208974.P4373146574976249506

`A208970(A056119(n)+28)`
-/

namespace A208974.P4373146574976249506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A056119 n + 28).toNat

end

end A208974.P4373146574976249506

/-! ## A208974.P45348300798707859

`A208970(eq[11, A066657(n)])`
-/

namespace A208974.P45348300798707859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208974.P45348300798707859

/-! ## A208974.P8180544782956563428

`record[A208970(A055999(n)+13)]`
-/

namespace A208974.P8180544782956563428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A055999 n + 13).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208974.P8180544782956563428

/-! ## A208974.P3651566051155800392

`record[A208970(A056000(n)+17)]`
-/

namespace A208974.P3651566051155800392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A056000 n + 17).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208974.P3651566051155800392

/-! ## A208974.P3177081771975115898

`A208970(A166136(n+5)+1)`
-/

namespace A208974.P3177081771975115898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208970 (A166136 (n + 5) + 1).toNat

end

end A208974.P3177081771975115898

/-!
# A208975: G.f. satisfies: A(x) = 1 + x*A(x) * [d/dx x/A(x)^2].

The programs for A208975, there is no canonical definition to state claims against.
-/

/-! ## A208975.P13370614828527457793

`A000699(n)*A009001(A004273(n))`
-/

namespace A208975.P13370614828527457793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000699 n * A009001 (A004273 n).toNat

end

end A208975.P13370614828527457793

/-! ## A208975.P7409856206722058152

`A000699(n)*A033999(n)*A165747(n)`
-/

namespace A208975.P7409856206722058152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000699 n * A033999 n * A165747 n

end

end A208975.P7409856206722058152

/-! ## A208975.P753202967047325571

`A033999(n)*A286796(C(n, 2))*A165747(n)`
-/

namespace A208975.P753202967047325571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A286796 (Nat.choose n 2) * A165747 n

end

end A208975.P753202967047325571

/-! ## A208975.P17146490336148881213

`A033999(n)*A286796(∑[n]-n)*A165747(n)`
-/

namespace A208975.P17146490336148881213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A286796 (∑ j ∈ Finset.range (n + 1), f1 j - n) * A165747 n

end

end A208975.P17146490336148881213

/-! ## A208975.P14585865561374251966

`A287039(n)/A009001(A004273(n))`
-/

namespace A208975.P14585865561374251966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287039 n : ℚ) / (A009001 (A004273 n).toNat : ℚ)

end

end A208975.P14585865561374251966

/-!
# A208976: Row sums of the triangle in A208101.

The programs for A208976, the canonical program `A208976.P11107744502091880902` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208976 has offset 0).

The definition of A208976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208976.P11107744502091880902

`A001405(n)+A001405(n+1)-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A208976

/-- `A001405(n)+A001405(n+1)-1` -/
def P11107744502091880902.Spec : Prop :=
  ∀ n, P11107744502091880902.a n = A208976 n

theorem P11107744502091880902.correct : P11107744502091880902.Spec := by
  intro n
  simp only [A208976]

end A208976

/-! ## A208976.P16937892292773047200

`∑[abs(Δ[A050168(n)])]`
-/

namespace A208976.P16937892292773047200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208976.P16937892292773047200

namespace A208976

/-- `∑[abs(Δ[A050168(n)])]` -/
def P16937892292773047200.Spec : Prop :=
  ∀ n, P16937892292773047200.a n = A208976 n

end A208976

/-! ## A208976.P14347023043694280330

`A050168(n+1)-1`
-/

namespace A208976.P14347023043694280330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (n + 1) - 1

end

end A208976.P14347023043694280330

namespace A208976

/-- `A050168(n+1)-1` -/
def P14347023043694280330.Spec : Prop :=
  ∀ n, P14347023043694280330.a n = A208976 n

end A208976

/-! ## A208976.P12773399939870909946

`abs(Δ[A126930(n)])-1`
-/

namespace A208976.P12773399939870909946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A208976.P12773399939870909946

namespace A208976

/-- `abs(Δ[A126930(n)])-1` -/
def P12773399939870909946.Spec : Prop :=
  ∀ n, P12773399939870909946.a n = A208976 n

end A208976

/-! ## A208976.P7581467731591190261

`A026010(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A208976.P7581467731591190261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026010 (n - 1) + a (n - 1)

end

end A208976.P7581467731591190261

namespace A208976

/-- `A026010(n-1)+a(n-1)` -/
def P7581467731591190261.Spec : Prop :=
  ∀ n, P7581467731591190261.a n = A208976 n

end A208976

/-! ## A208976.P3705329772762033372

`A001405(n)+∑[A037952(n)]`
-/

namespace A208976.P3705329772762033372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208976.P3705329772762033372

namespace A208976

/-- `A001405(n)+∑[A037952(n)]` -/
def P3705329772762033372.Spec : Prop :=
  ∀ n, P3705329772762033372.a n = A208976 n

end A208976

/-! ## A208976.P1874774252179487485

`A014495(n+1)+A001405(n)`
-/

namespace A208976.P1874774252179487485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 1) + A001405 n

end

end A208976.P1874774252179487485

namespace A208976

/-- `A014495(n+1)+A001405(n)` -/
def P1874774252179487485.Spec : Prop :=
  ∀ n, P1874774252179487485.a n = A208976 n

theorem P1874774252179487485.correct : P1874774252179487485.Spec := by
  intro n
  simp only [A208976, Nat.add_sub_cancel, A208976.P1874774252179487485.a, A208976.P11107744502091880902.a, A001405, A001405.P5205018418992951678.a, A014495, A014495.P8648755420632744383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A208976

/-! ## A208976.P17855940814565317431

`A210736(n+2)+A014495(n)`
-/

namespace A208976.P17855940814565317431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 2) + A014495 n

end

end A208976.P17855940814565317431

namespace A208976

/-- `A210736(n+2)+A014495(n)` -/
def P17855940814565317431.Spec : Prop :=
  ∀ n, P17855940814565317431.a n = A208976 n

end A208976

/-! ## A208976.P8469259203258040820

`A026010(n)+A208355(n)-1`
-/

namespace A208976.P8469259203258040820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 n + (A208355 n - 1)

end

end A208976.P8469259203258040820

namespace A208976

/-- `A026010(n)+A208355(n)-1` -/
def P8469259203258040820.Spec : Prop :=
  ∀ n, P8469259203258040820.a n = A208976 n

end A208976

/-! ## A208976.P3258470840408923659

`A014495(n+1)+A014495(n)+1`
-/

namespace A208976.P3258470840408923659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 1) + (A014495 n + 1)

end

end A208976.P3258470840408923659

namespace A208976

/-- `A014495(n+1)+A014495(n)+1` -/
def P3258470840408923659.Spec : Prop :=
  ∀ n, P3258470840408923659.a n = A208976 n

theorem P3258470840408923659.correct : P3258470840408923659.Spec := by
  intro n
  simp only [A208976, Nat.add_sub_cancel, A208976.P3258470840408923659.a, A208976.P11107744502091880902.a, A001405, A001405.P5205018418992951678.a, A014495, A014495.P8648755420632744383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A208976

/-! ## A208976.P1142787160392840854

`A191790(n+1)+A191790(n)+A001405(n)`
-/

namespace A208976.P1142787160392840854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 (n + 1) + (A191790 n + A001405 n)

end

end A208976.P1142787160392840854

namespace A208976

/-- `A191790(n+1)+A191790(n)+A001405(n)` -/
def P1142787160392840854.Spec : Prop :=
  ∀ n, P1142787160392840854.a n = A208976 n

end A208976

/-! ## A208976.P9190212024321342799

`A191790(n+1)+A210736(n+1)+A191790(n)`
-/

namespace A208976.P9190212024321342799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 (n + 1) + (A210736 (n + 1) + A191790 n)

end

end A208976.P9190212024321342799

namespace A208976

/-- `A191790(n+1)+A210736(n+1)+A191790(n)` -/
def P9190212024321342799.Spec : Prop :=
  ∀ n, P9190212024321342799.a n = A208976 n

end A208976

/-! ## A208976.P3891682246600066925

`A014495(n+2)-A037955(n)`
-/

namespace A208976.P3891682246600066925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 2) - A037955 n

end

end A208976.P3891682246600066925

namespace A208976

/-- `A014495(n+2)-A037955(n)` -/
def P3891682246600066925.Spec : Prop :=
  ∀ n, P3891682246600066925.a n = A208976 n

end A208976

/-! ## A208976.P318151243552900282

`∑[A037952(n+1)]-A037955(n)`
-/

namespace A208976.P318151243552900282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037955 n

end

end A208976.P318151243552900282

namespace A208976

/-- `∑[A037952(n+1)]-A037955(n)` -/
def P318151243552900282.Spec : Prop :=
  ∀ n, P318151243552900282.a n = A208976 n

end A208976

/-! ## A208976.P3302927387455465904

`A001405(n)+Δ[A036256(n)]-1`
-/

namespace A208976.P3302927387455465904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (f1 (n + 1) - f1 n - 1)

end

end A208976.P3302927387455465904

namespace A208976

/-- `A001405(n)+Δ[A036256(n)]-1` -/
def P3302927387455465904.Spec : Prop :=
  ∀ n, P3302927387455465904.a n = A208976 n

end A208976

/-! ## A208976.P4173276520627228939

`A036256(n+1)-A072100(n+1)`
-/

namespace A208976.P4173276520627228939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 (n + 1) - A072100 (n + 1)

end

end A208976.P4173276520627228939

namespace A208976

/-- `A036256(n+1)-A072100(n+1)` -/
def P4173276520627228939.Spec : Prop :=
  ∀ n, P4173276520627228939.a n = A208976 n

end A208976

/-! ## A208976.P16316588539136148141

`A261681(n)-A093387(n+1)`
-/

namespace A208976.P16316588539136148141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261681 n - A093387 (n + 1)

end

end A208976.P16316588539136148141

namespace A208976

/-- `A261681(n)-A093387(n+1)` -/
def P16316588539136148141.Spec : Prop :=
  ∀ n, P16316588539136148141.a n = A208976 n

theorem P16316588539136148141.correct : P16316588539136148141.Spec := by
  intro n
  simp only [A208976, Nat.add_sub_cancel, A208976.P16316588539136148141.a, A208976.P11107744502091880902.a, A001405, A001405.P5205018418992951678.a, A093387, A093387.P11464323104930007808.a, A261681, A261681.P9750562906251385611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A208976

/-! ## A208976.P1120898403435165024

`A014495(n)+record[A046899(n)]`
-/

namespace A208976.P1120898403435165024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208976.P1120898403435165024

namespace A208976

/-- `A014495(n)+record[A046899(n)]` -/
def P1120898403435165024.Spec : Prop :=
  ∀ n, P1120898403435165024.a n = A208976 n

end A208976

/-! ## A208976.P15829211030636930932

`A029635(A080476(n+2))-1`
-/

namespace A208976.P15829211030636930932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A080476 (n + 2)).toNat - 1

end

end A208976.P15829211030636930932

namespace A208976

/-- `A029635(A080476(n+2))-1` -/
def P15829211030636930932.Spec : Prop :=
  ∀ n, P15829211030636930932.a n = A208976 n

end A208976

/-!
# A208977: Self-convolution square-root of A005810, where A005810(n) = binomial(4*n,n).

The programs for A208977, there is no canonical definition to state claims against.
-/

/-! ## A208977.P4572106716364354739

`floor(∑{d}[A187536(n), sqrt(#)])`
-/

namespace A208977.P4572106716364354739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n).natAbs, Real.sqrt (d : ℝ)⌋

end

end A208977.P4572106716364354739

/-!
# A208978: Expansion of f(x) * f(x^3) where f() is a Ramanujan theta function.

The programs for A208978, there is no canonical definition to state claims against.
-/

/-! ## A208978.P12448622276662538181

`(-1)^n*A030203(n)`
-/

namespace A208978.P12448622276662538181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A030203 n

end

end A208978.P12448622276662538181

/-! ## A208978.P18223815357516345404

`A030203(n)*A033999(n)`
-/

namespace A208978.P18223815357516345404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 n * A033999 n

end

end A208978.P18223815357516345404

/-! ## A208978.P3617559600642293153

`A030203(n)*A062157(n+1)`
-/

namespace A208978.P3617559600642293153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 n * A062157 (n + 1)

end

end A208978.P3617559600642293153

/-! ## A208978.P4313114895293372156

`A030203(n)/A030203(Δ[A008619(n)])`
-/

namespace A208978.P4313114895293372156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030203 n : ℚ) / (A030203 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A208978.P4313114895293372156

/-! ## A208978.P11901086934380614079

`A008438(n)*A030203(n)/A121613(n)`
-/

namespace A208978.P11901086934380614079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008438 n * A030203 n : ℚ) / (A121613 n : ℚ)

end

end A208978.P11901086934380614079

/-! ## A208978.P4343161272959192033

`A030203(n)*A030211(n)/A134461(n)`
-/

namespace A208978.P4343161272959192033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030203 n * A030211 n : ℚ) / (A134461 n : ℚ)

end

end A208978.P4343161272959192033

/-! ## A208978.P14018753604173028836

`A000735(n)*A030203(n)/A209676(n)`
-/

namespace A208978.P14018753604173028836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000735 n * A030203 n : ℚ) / (A209676 n : ℚ)

end

end A208978.P14018753604173028836

/-! ## A208978.P13798591995875476063

`A030203(n)*A113417(n)/A113419(n)`
-/

namespace A208978.P13798591995875476063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030203 n * A113417 n : ℚ) / (A113419 n : ℚ)

end

end A208978.P13798591995875476063

/-! ## A208978.P3519325121022340860

`A030203(n)*A113416(n)/A131999(n)`
-/

namespace A208978.P3519325121022340860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030203 n * A113416 n : ℚ) / (A131999 n : ℚ)

end

end A208978.P3519325121022340860

/-! ## A208978.P14826458864466582801

`A030203(n)*A109064(n)/A138506(n)`
-/

namespace A208978.P14826458864466582801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030203 n * A109064 n : ℚ) / (A138506 n : ℚ)

end

end A208978.P14826458864466582801

/-! ## A208978.P10945059481711545704

`A030203(n)*A109039(n)/A257656(n)`
-/

namespace A208978.P10945059481711545704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030203 n * A109039 n : ℚ) / (A257656 n : ℚ)

end

end A208978.P10945059481711545704

/-! ## A208978.P6841780583516555686

`A030203(n)*A209940(n)/A258096(n)`
-/

namespace A208978.P6841780583516555686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030203 n * A209940 n : ℚ) / (A258096 n : ℚ)

end

end A208978.P6841780583516555686

/-! ## A208978.P17542169775460369875

`A030203(n)*A109040(n+1)/A257656(n+1)`
-/

namespace A208978.P17542169775460369875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030203 n * A109040 (n + 1) : ℚ) / (A257656 (n + 1) : ℚ)

end

end A208978.P17542169775460369875

/-! ## A208978.P7917798771733118580

`A030203(n)*A056594(2*n)`
-/

namespace A208978.P7917798771733118580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 n * A056594 (2 * n)

end

end A208978.P7917798771733118580

/-! ## A208978.P16012975835136171352

`A030203(n)*A209615(2*n+1)`
-/

namespace A208978.P16012975835136171352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 n * A209615 (2 * n + 1)

end

end A208978.P16012975835136171352

/-!
# A208979: Number of primitive Heron triangles with diameter <= 2^n.

The programs for A208979, there is no canonical definition to state claims against.
-/

/-! ## A208979.P10782968209214543357

`A308028(A216710(n))`
-/

namespace A208979.P10782968209214543357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308028 (A216710 n).toNat

end

end A208979.P10782968209214543357

/-! ## A208979.P3439150512971033912

`A282192(A001630(2*n+3))`
-/

namespace A208979.P3439150512971033912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282192 (A001630 (2 * n + 3)).toNat

end

end A208979.P3439150512971033912

/-!
# A208981: Number of iterations required to reach a power of 2 in the 3x+1 sequence starting at n.

The programs for A208981, there is no canonical definition to state claims against.
-/

/-! ## A208981.P13327032131249277340

`A006577(n+1)-A135282(n+1)`
-/

namespace A208981.P13327032131249277340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A135282 (n + 1)

end

end A208981.P13327032131249277340

/-! ## A208981.P8394174341202988547

`A008908(n+1)-A226123(n+1)`
-/

namespace A208981.P8394174341202988547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A226123 (n + 1)

end

end A208981.P8394174341202988547

/-! ## A208981.P10324670029921732683

`A008908(n+1)-(A135282(n+1)+1)`
-/

namespace A208981.P10324670029921732683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - (A135282 (n + 1) + 1)

end

end A208981.P10324670029921732683

/-! ## A208981.P14672569375348776779

`A006577(n+1)+1-A226123(n+1)`
-/

namespace A208981.P14672569375348776779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + (1 - A226123 (n + 1))

end

end A208981.P14672569375348776779

/-! ## A208981.P15589803341600015936

`A058261(n)/(n+1)-A135282(n+1)`
-/

namespace A208981.P15589803341600015936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058261 n : ℚ) / (n + 1 : ℚ) - (A135282 (n + 1) : ℚ)

end

end A208981.P15589803341600015936

/-! ## A208981.P2169389434198744097

`A023443(A008908(n+1)-A135282(n+1))`
-/

namespace A208981.P2169389434198744097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A008908 (n + 1) - A135282 (n + 1)).toNat

end

end A208981.P2169389434198744097

/-! ## A208981.P14726580978800975460

`A139399(n+1)+A130130(n)-A135282(n+1)`
-/

namespace A208981.P14726580978800975460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) + (A130130 n - A135282 (n + 1))

end

end A208981.P14726580978800975460

/-! ## A208981.P3295305869581675798

`A006666(n+1)+A006667(n+1)-A135282(n+1)`
-/

namespace A208981.P3295305869581675798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + (A006667 (n + 1) - A135282 (n + 1))

end

end A208981.P3295305869581675798

/-! ## A208981.P12199233800773568044

`A076228(n+1)+A222597(n+1)-A135282(n+1)`
-/

namespace A208981.P12199233800773568044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (n + 1) + (A222597 (n + 1) - A135282 (n + 1))

end

end A208981.P12199233800773568044

/-! ## A208981.P5487256696521958385

`A220421(n+1)+A222641(n+1)-A135282(n+1)`
-/

namespace A208981.P5487256696521958385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220421 (n + 1) + (A222641 (n + 1) - A135282 (n + 1))

end

end A208981.P5487256696521958385

/-! ## A208981.P16869796596305530003

`A006577(n+1)-A006577(A232503(n+1))`
-/

namespace A208981.P16869796596305530003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A006577 (A232503 (n + 1)).toNat

end

end A208981.P16869796596305530003

/-! ## A208981.P16897069765266216783

`A008908(n+1)-A008908(A232503(n+1))`
-/

namespace A208981.P16897069765266216783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A008908 (A232503 (n + 1)).toNat

end

end A208981.P16897069765266216783

/-! ## A208981.P1157452192791998465

`A139399(n+1)-A139399(A232503(n+1))`
-/

namespace A208981.P1157452192791998465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) - A139399 (A232503 (n + 1)).toNat

end

end A208981.P1157452192791998465

/-! ## A208981.P5141600324872090394

`A127885(n+1)+A127886(n+1)-A135282(n+1)`
-/

namespace A208981.P5141600324872090394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127885 (n + 1) + (A127886 (n + 1) - A135282 (n + 1))

end

end A208981.P5141600324872090394

/-!
# A208982: Numbers n such that the next larger number with mutual Hamming distance 1 is prime.

The programs for A208982, there is no canonical definition to state claims against.
-/

/-! ## A208982.P14032240226770480050

`eq[1, A001065(or(n, n+1))]`
-/

namespace A208982.P14032240226770480050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (Nat.lor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208982.P14032240226770480050

/-! ## A208982.P3347895169057048116

`eq[1, A001222(or(n, n+1))]`
-/

namespace A208982.P3347895169057048116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208982.P3347895169057048116

/-! ## A208982.P3511665410020418127

`eq[1, A002217(or(n, n+1))]`
-/

namespace A208982.P3511665410020418127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (Nat.lor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208982.P3511665410020418127

/-! ## A208982.P7078517010396756652

`eq[1, A003415(or(n, n+1))]`
-/

namespace A208982.P7078517010396756652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Nat.lor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208982.P7078517010396756652

/-! ## A208982.P4909477793578202784

`eq[1, A008481(or(n, n+1))]`
-/

namespace A208982.P4909477793578202784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (Nat.lor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208982.P4909477793578202784

/-! ## A208982.P11348232663013020161

`lt[0, A010051(or(n, n+1))]`
-/

namespace A208982.P11348232663013020161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Nat.lor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A208982.P11348232663013020161

/-! ## A208982.P4053771716076445140

`eq[1, A051953(or(n, n+1))]`
-/

namespace A208982.P4053771716076445140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (Nat.lor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208982.P4053771716076445140

/-! ## A208982.P668052409077416261

`eq[1, A105700(or(n, n+1))]`
-/

namespace A208982.P668052409077416261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (Nat.lor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208982.P668052409077416261

/-! ## A208982.P17179644617035985331

`eq[1, A279363(or(n, n+1))]`
-/

namespace A208982.P17179644617035985331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279363 (Nat.lor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208982.P17179644617035985331

/-! ## A208982.P2506359269222331497

`eq[1, A342001(or(n, n+1))]`
-/

namespace A208982.P2506359269222331497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (Nat.lor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A208982.P2506359269222331497

/-!
# A208983: Central terms of the triangle in A208101.

The programs for A208983, there is no canonical definition to state claims against.
-/

/-! ## A208983.P2022016061861129301

`A033184(∑[A016777(A026741(n))])`
-/

namespace A208983.P2022016061861129301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208983.P2022016061861129301

/-! ## A208983.P16144933832940685946

`A130020(A210981(n+1))`
-/

namespace A208983.P16144933832940685946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 (A210981 (n + 1)).toNat

end

end A208983.P16144933832940685946

/-! ## A208983.P17005400873631545900

`A208101(∑[4*n])`
-/

namespace A208983.P17005400873631545900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208983.P17005400873631545900

/-! ## A208983.P11605151291151861035

`record[A053121(2*A002620(n)+n)]`
-/

namespace A208983.P11605151291151861035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (2 * A002620 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208983.P11605151291151861035

/-! ## A208983.P6009971087451945230

`record[A053121(∑[n+1]-A008619(n+1))]`
-/

namespace A208983.P6009971087451945230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A008619 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208983.P6009971087451945230

/-! ## A208983.P10375352285951566225

`record[A053121(A004526(n)+A000217(n))]`
-/

namespace A208983.P10375352285951566225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A004526 n + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208983.P10375352285951566225

/-! ## A208983.P5507957039558854692

`A080233(A083363(n))`
-/

namespace A208983.P5507957039558854692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 (A083363 n).toNat

end

end A208983.P5507957039558854692

/-! ## A208983.P5998503758187971168

`record[A053121(A004526(n²)+n)]`
-/

namespace A208983.P5998503758187971168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A004526 (n ^ 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208983.P5998503758187971168

/-!
# A208984: Areas A of the triangles such that A, the sides, the circumradius and the inradius are integers.

The programs for A208984, there is no canonical definition to state claims against.
-/

/-! ## A208984.P4789989207585612188

`∪[A210207(n+1), A256418(n+1)]`
-/

namespace A208984.P4789989207585612188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A208984.P4789989207585612188

/-! ## A208984.P7370417208262521753

`A283446(A228050(n+1)+A008620(n))`
-/

namespace A208984.P7370417208262521753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283446 (A228050 (n + 1) + A008620 n).toNat

end

end A208984.P7370417208262521753

/-! ## A208984.P18198673635053061449

`A283446(eq[A000196(n), A283469(n+1)])`
-/

namespace A208984.P18198673635053061449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283446 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A208984.P18198673635053061449

/-!
# A208985: Number of n-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and first differences in -n..n.

The programs for A208985, there is no canonical definition to state claims against.
-/

/-! ## A208985.P8224491409037921844

`A208993(∑[4*n]+1)`
-/

namespace A208985.P8224491409037921844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208985.P8224491409037921844

/-! ## A208985.P1679202919098790628

`record[A208993(∑[A110659(n)])]`
-/

namespace A208985.P1679202919098790628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208985.P1679202919098790628

/-! ## A208985.P3280076828272872094

`record[A208993(∑[A266722(n)])]`
-/

namespace A208985.P3280076828272872094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208985.P3280076828272872094

/-! ## A208985.P14911600853831568120

`record[A208993(∑[A266981(n)])]`
-/

namespace A208985.P14911600853831568120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208985.P14911600853831568120

/-! ## A208985.P9484719960503165392

`record[A208993(Δ[A235355(n)])]`
-/

namespace A208985.P9484719960503165392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208985.P9484719960503165392

/-!
# A208986: Number of n-bead necklaces labeled with numbers -1..1 not allowing reversal, with sum zero and first differences in -1..1.

The programs for A208986, there is no canonical definition to state claims against.
-/

/-! ## A208986.P10531327646635331248

`A208993(∑[n+1])`
-/

namespace A208986.P10531327646635331248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208986.P10531327646635331248

/-! ## A208986.P13405809334048163117

`and(-1, A208993(A000217(n+1)))`
-/

namespace A208986.P13405809334048163117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A208993 (A000217 (n + 1)).toNat)

end

end A208986.P13405809334048163117

/-! ## A208986.P12809677816346374166

`A208993(A000217(n+1))%A000051(n)`
-/

namespace A208986.P12809677816346374166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208993 (A000217 (n + 1)).toNat) (A000051 n)

end

end A208986.P12809677816346374166

/-! ## A208986.P15754094357321209793

`A208993(A008805(2*n))*A330098(n+1)`
-/

namespace A208986.P15754094357321209793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A008805 (2 * n)).toNat * A330098 (n + 1)

end

end A208986.P15754094357321209793

/-! ## A208986.P3848417665118950106

`A185712(A061031(n+4))`
-/

namespace A208986.P3848417665118950106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (A061031 (n + 4)).toNat

end

end A208986.P3848417665118950106

/-!
# A208987: Number of n-bead necklaces labeled with numbers -2..2 not allowing reversal, with sum zero and first differences in -2..2.

The programs for A208987, there is no canonical definition to state claims against.
-/

/-! ## A208987.P8924307661917264369

`A208993(∑[n+2])`
-/

namespace A208987.P8924307661917264369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208987.P8924307661917264369

/-! ## A208987.P5195127141734471602

`record[A208993(∑[A152271(n)])]`
-/

namespace A208987.P5195127141734471602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208987.P5195127141734471602

/-! ## A208987.P9540484244204909704

`record[A208993(A072735(n+1))]`
-/

namespace A208987.P9540484244204909704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A072735 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208987.P9540484244204909704

/-! ## A208987.P11320366027878744797

`record[A208993(A101881(n)+1)]`
-/

namespace A208987.P11320366027878744797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208987.P11320366027878744797

/-! ## A208987.P3185189291594322758

`record[A208993(Δ[A003453(n+5)])]`
-/

namespace A208987.P3185189291594322758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208987.P3185189291594322758

/-!
# A208988: Number of n-bead necklaces labeled with numbers -3..3 not allowing reversal, with sum zero and first differences in -3..3.

The programs for A208988, there is no canonical definition to state claims against.
-/

/-! ## A208988.P17292387931828038906

`A208993(∑[n+3]+1)`
-/

namespace A208988.P17292387931828038906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208988.P17292387931828038906

/-! ## A208988.P3278086262090228006

`record[A208993(A198464(n+1))]`
-/

namespace A208988.P3278086262090228006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208988.P3278086262090228006

/-! ## A208988.P12299219053016712802

`record[A208993(A347633(n+1))]`
-/

namespace A208988.P12299219053016712802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208988.P12299219053016712802

/-! ## A208988.P10251950700193237276

`record[A208993(abs(A255878(n+1)))]`
-/

namespace A208988.P10251950700193237276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 |A255878 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208988.P10251950700193237276

/-! ## A208988.P5539880621369027193

`record[A208993(sqrt(A303054(n+1)))]`
-/

namespace A208988.P5539880621369027193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (SequenceMachineLib.roundAway (Real.sqrt (A303054 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208988.P5539880621369027193

/-!
# A208989: Number of n-bead necklaces labeled with numbers -4..4 not allowing reversal, with sum zero and first differences in -4..4.

The programs for A208989, there is no canonical definition to state claims against.
-/

/-! ## A208989.P18092095191430170178

`A208993(∑[n+4]+3)`
-/

namespace A208989.P18092095191430170178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A208989.P18092095191430170178

/-! ## A208989.P2406460023678935045

`record[A208993(A198464(n+1)-1)]`
-/

namespace A208989.P2406460023678935045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A198464 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208989.P2406460023678935045

/-! ## A208989.P16274646535996767224

`A208993(A027379(n+2))+char[16]`
-/

namespace A208989.P16274646535996767224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A027379 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208989.P16274646535996767224

/-! ## A208989.P5209699653071140751

`A007318(C(2, n))*A208993(A027379(n+2))`
-/

namespace A208989.P5209699653071140751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A208993 (A027379 (n + 2)).toNat

end

end A208989.P5209699653071140751

/-! ## A208989.P920746569876396401

`A000041(C(n, n²))*A208993(A027379(n+2))`
-/

namespace A208989.P920746569876396401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A208993 (A027379 (n + 2)).toNat

end

end A208989.P920746569876396401

/-!
# A208990: Number of n-bead necklaces labeled with numbers -5..5 not allowing reversal, with sum zero and first differences in -5..5.

The programs for A208990, there is no canonical definition to state claims against.
-/

/-! ## A208990.P16045632657407740702

`A208993(∑[n+5]+6)`
-/

namespace A208990.P16045632657407740702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A208990.P16045632657407740702

/-! ## A208990.P12475619171189650194

`record[A208993(A198464(n+1)-2)]`
-/

namespace A208990.P12475619171189650194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A198464 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208990.P12475619171189650194

/-!
# A208991: Number of n-bead necklaces labeled with numbers -6..6 not allowing reversal, with sum zero and first differences in -6..6.

The programs for A208991, there is no canonical definition to state claims against.
-/

/-! ## A208991.P2900116702593915416

`A208993(A052905(n+3))`
-/

namespace A208991.P2900116702593915416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A052905 (n + 3)).toNat

end

end A208991.P2900116702593915416

/-! ## A208991.P16829618539990858751

`A208993(eq[3, A219347(n)])`
-/

namespace A208991.P16829618539990858751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208991.P16829618539990858751

/-! ## A208991.P15938363021963710435

`A208993(eq[5, A152157(n)])`
-/

namespace A208991.P15938363021963710435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208991.P15938363021963710435

/-! ## A208991.P14321927910915314092

`A208993(eq[5, A193592(n)])`
-/

namespace A208991.P14321927910915314092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208991.P14321927910915314092

/-! ## A208991.P17571184646125601611

`A208993(eq[8, A258709(n)])`
-/

namespace A208991.P17571184646125601611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208991.P17571184646125601611

/-!
# A208992: Number of n-bead necklaces labeled with numbers -7..7 not allowing reversal, with sum zero and first differences in -7..7.

The programs for A208992, there is no canonical definition to state claims against.
-/

/-! ## A208992.P2921809659205601288

`A208993(eq[4, A219347(n)])`
-/

namespace A208992.P2921809659205601288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208992.P2921809659205601288

/-! ## A208992.P5293297565989496322

`A208993(eq[6, A193592(n)])`
-/

namespace A208992.P5293297565989496322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208992.P5293297565989496322

/-! ## A208992.P12973566612201501494

`A208993(eq[7, A152157(n)])`
-/

namespace A208992.P12973566612201501494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208992.P12973566612201501494

/-! ## A208992.P13326677980018053296

`A208993(Δ[A026054(n+4)])`
-/

namespace A208992.P13326677980018053296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (f1 (n + 1) - f1 n).toNat

end

end A208992.P13326677980018053296

/-! ## A208992.P8244981077838068001

`A208993(A155212(n+3)+2)`
-/

namespace A208992.P8244981077838068001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A155212 (n + 3) + 2).toNat

end

end A208992.P8244981077838068001

/-!
# A208993: T(n,k) is the number of n-bead necklaces labeled with numbers -k..k not allowing reversal, with sum zero and first differences in -k..k.

The programs for A208993, there is no canonical definition to state claims against.
-/

/-! ## A208993.P3009093630668593593

`A279783(A144287(n+1)+char[4])`
-/

namespace A208993.P3009093630668593593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279783 (A144287 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A208993.P3009093630668593593

/-! ## A208993.P8430679206574296489

`A117707(A208510(n+1)*A334622(n))`
-/

namespace A208993.P8430679206574296489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A208510 (n + 1) * A334622 n).toNat

end

end A208993.P8430679206574296489

/-! ## A208993.P14496973694051546140

`A163352(A208510(n+1)*A334622(n))`
-/

namespace A208993.P14496973694051546140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A208510 (n + 1) * A334622 n).toNat

end

end A208993.P14496973694051546140

/-! ## A208993.P17890053422858350462

`A038548(2^A081572(n))-A010054(A138258(2*(n+2)))`
-/

namespace A208993.P17890053422858350462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A081572 n : ℤ))).toNat - A010054 (A138258 (2 * (n + 2))).toNat

end

end A208993.P17890053422858350462

/-! ## A208993.P1600422978397029433

`A038548(2^A086350(n))-A010054(A138258(2*(n+2)))`
-/

namespace A208993.P1600422978397029433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A086350 n : ℤ))).toNat - A010054 (A138258 (2 * (n + 2))).toNat

end

end A208993.P1600422978397029433

/-!
# A208994: Number of 3-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and first differences in -n..n.

The programs for A208994, the canonical program `A208994.P16282727851882296735` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208994 has offset 0).

The definition of A208994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208994.P16282727851882296735

`1+floor(n*(n+1)/3)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A208994

/-- `1+floor(n*(n+1)/3)` -/
def P16282727851882296735.Spec : Prop :=
  ∀ n, P16282727851882296735.a n = A208994 n

theorem P16282727851882296735.correct : P16282727851882296735.Spec := by
  intro n
  simp only [A208994]

end A208994

/-! ## A208994.P3557047347206977594

`ogf((1-x+2x^2-x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A208994.P3557047347206977594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2, -1, 1] [1, -2, 1, -1, 2, -1] n

end

end A208994.P3557047347206977594

namespace A208994

/-- `ogf((1-x+2x^2-x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P3557047347206977594.Spec : Prop :=
  ∀ n, P3557047347206977594.a n = A208994 n

end A208994

/-! ## A208994.P351478057715783494

`ceil(2/(3*acot(∑[n])))`
-/

namespace A208994.P351478057715783494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (3 * SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌉

end

end A208994.P351478057715783494

namespace A208994

/-- `ceil(2/(3*acot(∑[n])))` -/
def P351478057715783494.Spec : Prop :=
  ∀ n, P351478057715783494.a n = A208994 n

end A208994

/-! ## A208994.P13574196619419565698

`or(1, floor(2*∑[n]/3))`
-/

namespace A208994.P13574196619419565698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3)⌋

end

end A208994.P13574196619419565698

namespace A208994

/-- `or(1, floor(2*∑[n]/3))` -/
def P13574196619419565698.Spec : Prop :=
  ∀ n, P13574196619419565698.a n = A208994 n

end A208994

/-! ## A208994.P6557693108396599752

`∑[a(n-3)+2]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A208994.P6557693108396599752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208994.P6557693108396599752

namespace A208994

/-- `∑[a(n-3)+2]` -/
def P6557693108396599752.Spec : Prop :=
  ∀ n, (P6557693108396599752.a n : ℤ) = A208994 n

end A208994

/-! ## A208994.P17895437827254665339

`xor(1, ceil((n+2)*(n-1)/3))`
-/

namespace A208994.P17895437827254665339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈(n + 2 : ℚ) * (((n : ℤ) - 1 : ℚ) / 3)⌉

end

end A208994.P17895437827254665339

namespace A208994

/-- `xor(1, ceil((n+2)*(n-1)/3))` -/
def P17895437827254665339.Spec : Prop :=
  ∀ n, P17895437827254665339.a n = A208994 n

end A208994

/-! ## A208994.P1027637693000007000

`floor((record[(n-1)²]-(n-2))/3)`
-/

namespace A208994.P1027637693000007000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - 2) : ℚ) / 3⌋

end

end A208994.P1027637693000007000

namespace A208994

/-- `floor((record[(n-1)²]-(n-2))/3)` -/
def P1027637693000007000.Spec : Prop :=
  ∀ n, P1027637693000007000.a n = A208994 n

end A208994

/-! ## A208994.P11937287803355095622

`round((record[(n-1)²]-(n-1))/3)`
-/

namespace A208994.P11937287803355095622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - 1) : ℚ) / 3)

end

end A208994.P11937287803355095622

namespace A208994

/-- `round((record[(n-1)²]-(n-1))/3)` -/
def P11937287803355095622.Spec : Prop :=
  ∀ n, P11937287803355095622.a n = A208994 n

end A208994

/-! ## A208994.P3924899254875209502

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=-1, a(2)=2, a(3)=0, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A208994.P3924899254875209502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2, 0, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208994.P3924899254875209502

namespace A208994

/-- `∑[∑[floor(a(n-3))]]` -/
def P3924899254875209502.Spec : Prop :=
  ∀ n, P3924899254875209502.a n = A208994 n

end A208994

/-! ## A208994.P16059600541422702564

`A298025(n)%A060798(n+1)`
-/

namespace A208994.P16059600541422702564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298025 n) (A060798 (n + 1))

end

end A208994.P16059600541422702564

namespace A208994

/-- `A298025(n)%A060798(n+1)` -/
def P16059600541422702564.Spec : Prop :=
  ∀ n, P16059600541422702564.a n = A208994 n

end A208994

/-! ## A208994.P9670904878474788685

`A036410(2*n)`
-/

namespace A208994.P9670904878474788685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036410 (2 * n)

end

end A208994.P9670904878474788685

namespace A208994

/-- `A036410(2*n)` -/
def P9670904878474788685.Spec : Prop :=
  ∀ n, P9670904878474788685.a n = A208994 n

end A208994

/-! ## A208994.P9104898245560236479

`A004273(A008748(n))`
-/

namespace A208994.P9104898245560236479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A008748 n).toNat

end

end A208994.P9104898245560236479

namespace A208994

/-- `A004273(A008748(n))` -/
def P9104898245560236479.Spec : Prop :=
  ∀ n, P9104898245560236479.a n = A208994 n

end A208994

/-! ## A208994.P9131398906926255018

`abs(A168052(∑[n]))`
-/

namespace A208994.P9131398906926255018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168052 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A208994.P9131398906926255018

namespace A208994

/-- `abs(A168052(∑[n]))` -/
def P9131398906926255018.Spec : Prop :=
  ∀ n, P9131398906926255018.a n = A208994 n

end A208994

/-! ## A208994.P331916246047375651

`A004396(∑[n]+1)`
-/

namespace A208994.P331916246047375651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208994.P331916246047375651

namespace A208994

/-- `A004396(∑[n]+1)` -/
def P331916246047375651.Spec : Prop :=
  ∀ n, P331916246047375651.a n = A208994 n

end A208994

/-! ## A208994.P13375745633790883978

`A102899(∑[n]+1)`
-/

namespace A208994.P13375745633790883978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102899 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208994.P13375745633790883978

namespace A208994

/-- `A102899(∑[n]+1)` -/
def P13375745633790883978.Spec : Prop :=
  ∀ n, P13375745633790883978.a n = A208994 n

end A208994

/-! ## A208994.P9657336961314581560

`A130823(∑[n]+1)`
-/

namespace A208994.P9657336961314581560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208994.P9657336961314581560

namespace A208994

/-- `A130823(∑[n]+1)` -/
def P9657336961314581560.Spec : Prop :=
  ∀ n, P9657336961314581560.a n = A208994 n

end A208994

/-! ## A208994.P8206013937826151481

`A131737(∑[n]+2)`
-/

namespace A208994.P8206013937826151481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A208994.P8206013937826151481

namespace A208994

/-- `A131737(∑[n]+2)` -/
def P8206013937826151481.Spec : Prop :=
  ∀ n, P8206013937826151481.a n = A208994 n

end A208994

/-! ## A208994.P4193339328904918222

`A099254(∑[2*n])`
-/

namespace A208994.P4193339328904918222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208994.P4193339328904918222

namespace A208994

/-- `A099254(∑[2*n])` -/
def P4193339328904918222.Spec : Prop :=
  ∀ n, P4193339328904918222.a n = A208994 n

end A208994

/-! ## A208994.P11963239050810663717

`A136289(∑[n])/3`
-/

namespace A208994.P11963239050810663717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136289 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A208994.P11963239050810663717

namespace A208994

/-- `A136289(∑[n])/3` -/
def P11963239050810663717.Spec : Prop :=
  ∀ n, P11963239050810663717.a n = (A208994 n : ℚ)

end A208994

/-! ## A208994.P7037758848075837091

`A129756(A008813(2*n))`
-/

namespace A208994.P7037758848075837091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A008813 (2 * n)).toNat

end

end A208994.P7037758848075837091

namespace A208994

/-- `A129756(A008813(2*n))` -/
def P7037758848075837091.Spec : Prop :=
  ∀ n, P7037758848075837091.a n = A208994 n

end A208994

/-!
# A208995: Number of 4-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and first differences in -n..n.

The programs for A208995, the canonical program `A208995.P3884552105007959393` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208995 has offset 1).

The definition of A208995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208995.P3884552105007959393

`∑[or(1, (n+1)²)]+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A208995

/-- `∑[or(1, (n+1)²)]+1` -/
def P3884552105007959393.Spec : Prop :=
  ∀ n, (P3884552105007959393.a n : ℤ) = A208995 (n + 1)

theorem P3884552105007959393.correct : P3884552105007959393.Spec := by
  intro n
  simp only [A208995, Nat.add_sub_cancel]

end A208995

/-! ## A208995.P16409474481381277705

`xor(1, ∑[or(3, n*(n+2))])`
-/

namespace A208995.P16409474481381277705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (n * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208995.P16409474481381277705

namespace A208995

/-- `xor(1, ∑[or(3, n*(n+2))])` -/
def P16409474481381277705.Spec : Prop :=
  ∀ n, (P16409474481381277705.a n : ℤ) = A208995 (n + 1)

end A208995

/-! ## A208995.P16286692547993954857

`∑[n%2+(n+1)²]+1`
-/

namespace A208995.P16286692547993954857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A208995.P16286692547993954857

namespace A208995

/-- `∑[n%2+(n+1)²]+1` -/
def P16286692547993954857.Spec : Prop :=
  ∀ n, (P16286692547993954857.a n : ℤ) = A208995 (n + 1)

end A208995

/-! ## A208995.P14328012726324062765

`∑[and(1, n)+(n+1)²]+1`
-/

namespace A208995.P14328012726324062765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A208995.P14328012726324062765

namespace A208995

/-- `∑[and(1, n)+(n+1)²]+1` -/
def P14328012726324062765.Spec : Prop :=
  ∀ n, (P14328012726324062765.a n : ℤ) = A208995 (n + 1)

end A208995

/-! ## A208995.P10464636742324592221

`∑[∑[a(n-2)+4]]` with `a(0)=2, a(1)=3, a(2)=4, a(3)=8`
-/

namespace A208995.P10464636742324592221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 8] fun n f2 =>
  f2 (n - 2) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208995.P10464636742324592221

namespace A208995

/-- `∑[∑[a(n-2)+4]]` -/
def P10464636742324592221.Spec : Prop :=
  ∀ n, (P10464636742324592221.a n : ℤ) = A208995 (n + 1)

end A208995

/-! ## A208995.P1823508358809663032

`or(1, a(n-1))+(n+1)²` with `a(0)=2`
-/

namespace A208995.P1823508358809663032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor 1 (a (n - 1)) + (n + 1) ^ 2

end

end A208995.P1823508358809663032

namespace A208995

/-- `or(1, a(n-1))+(n+1)²` -/
def P1823508358809663032.Spec : Prop :=
  ∀ n, (P1823508358809663032.a n : ℤ) = A208995 (n + 1)

end A208995

/-! ## A208995.P10982377334871384339

`floor(∑[(n+1)²+1/2])+1`
-/

namespace A208995.P10982377334871384339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) + (1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1

end

end A208995.P10982377334871384339

namespace A208995

/-- `floor(∑[(n+1)²+1/2])+1` -/
def P10982377334871384339.Spec : Prop :=
  ∀ n, P10982377334871384339.a n = A208995 (n + 1)

end A208995

/-! ## A208995.P14576883052639973255

`∑[∑[∑[4-a(n-1)]]]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A208995.P14576883052639973255
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1, 4] fun n f3 =>
  4 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208995.P14576883052639973255

namespace A208995

/-- `∑[∑[∑[4-a(n-1)]]]` -/
def P14576883052639973255.Spec : Prop :=
  ∀ n, P14576883052639973255.a n = A208995 (n + 1)

end A208995

/-! ## A208995.P8278008181679616956

`∑[C(lcm(2, n), 2*n)+(n+1)²]`
-/

namespace A208995.P8278008181679616956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lcm 2 n) (2 * n) + (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208995.P8278008181679616956

namespace A208995

/-- `∑[C(lcm(2, n), 2*n)+(n+1)²]` -/
def P8278008181679616956.Spec : Prop :=
  ∀ n, (P8278008181679616956.a n : ℤ) = A208995 (n + 1)

end A208995

/-! ## A208995.P17173487462528438244

`ogf((2+x-x^2+3x^3-x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A208995.P17173487462528438244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -1, 3, -1] [1, -3, 2, 2, -3, 1] n

end

end A208995.P17173487462528438244

namespace A208995

/-- `ogf((2+x-x^2+3x^3-x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P17173487462528438244.Spec : Prop :=
  ∀ n, P17173487462528438244.a n = A208995 (n + 1)

end A208995

/-! ## A208995.P15689654286581480339

`∑[A135528(n+1)+(n+1)²]`
-/

namespace A208995.P15689654286581480339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208995.P15689654286581480339

namespace A208995

/-- `∑[A135528(n+1)+(n+1)²]` -/
def P15689654286581480339.Spec : Prop :=
  ∀ n, P15689654286581480339.a n = A208995 (n + 1)

end A208995

/-! ## A208995.P13399191664123957510

`∑[A109613(n+1)+A103505(n+1)]`
-/

namespace A208995.P13399191664123957510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1) + A103505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208995.P13399191664123957510

namespace A208995

/-- `∑[A109613(n+1)+A103505(n+1)]` -/
def P13399191664123957510.Spec : Prop :=
  ∀ n, P13399191664123957510.a n = A208995 (n + 1)

end A208995

/-! ## A208995.P8326604938745136075

`∑[A266591(n+1)+(n+1)²]`
-/

namespace A208995.P8326604938745136075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208995.P8326604938745136075

namespace A208995

/-- `∑[A266591(n+1)+(n+1)²]` -/
def P8326604938745136075.Spec : Prop :=
  ∀ n, P8326604938745136075.a n = A208995 (n + 1)

end A208995

/-! ## A208995.P15722416177336333897

`∑[A217123(2*(n+1))-1]`
-/

namespace A208995.P15722416177336333897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217123 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208995.P15722416177336333897

namespace A208995

/-- `∑[A217123(2*(n+1))-1]` -/
def P15722416177336333897.Spec : Prop :=
  ∀ n, P15722416177336333897.a n = A208995 (n + 1)

end A208995

/-! ## A208995.P11700184283808739237

`∑[and((n+1)², A134067(n))+1]`
-/

namespace A208995.P11700184283808739237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) ^ 2 : ℤ) (A134067 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208995.P11700184283808739237

namespace A208995

/-- `∑[and((n+1)², A134067(n))+1]` -/
def P11700184283808739237.Spec : Prop :=
  ∀ n, P11700184283808739237.a n = A208995 (n + 1)

end A208995

/-! ## A208995.P1176209710807349136

`∑[record[A094064(2*n)]]`
-/

namespace A208995.P1176209710807349136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094064 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208995.P1176209710807349136

namespace A208995

/-- `∑[record[A094064(2*n)]]` -/
def P1176209710807349136.Spec : Prop :=
  ∀ n, P1176209710807349136.a n = A208995 (n + 1)

end A208995

/-! ## A208995.P18256834600291794512

`∑[A131055((n+1)²)+1]`
-/

namespace A208995.P18256834600291794512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208995.P18256834600291794512

namespace A208995

/-- `∑[A131055((n+1)²)+1]` -/
def P18256834600291794512.Spec : Prop :=
  ∀ n, P18256834600291794512.a n = A208995 (n + 1)

end A208995

/-!
# A208996: Number of 5-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and first differences in -n..n.

The programs for A208996, the canonical program `A208996.P2026051173665805637` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208996 has offset 1).

The definition of A208996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208996.P2026051173665805637

`ogf((3+11x+22x^2+36x^3+39x^4+32x^5+25x^6+14x^7-x^9+x^10)/(1-2x-x^2+4x^3-x^4-3x^5+3x^6+x^7-4x^8+x^9+2x^10-x^11))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A208996

/-- `ogf((3+11x+22x^2+36x^3+39x^4+32x^5+25x^6+14x^7-x^9+x^10)/(1-2x-x^2+4x^3-x^4-3x^5+3x^6+x^7-4x^8+x^9+2x^10-x^11))` -/
def P2026051173665805637.Spec : Prop :=
  ∀ n, P2026051173665805637.a n = A208996 (n + 1)

theorem P2026051173665805637.correct : P2026051173665805637.Spec := by
  intro n
  simp only [A208996, Nat.add_sub_cancel]

end A208996

/-! ## A208996.P8702073119955069613

`A208993(A155212(n)+13)`
-/

namespace A208996.P8702073119955069613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A155212 n + 13).toNat

end

end A208996.P8702073119955069613

namespace A208996

/-- `A208993(A155212(n)+13)` -/
def P8702073119955069613.Spec : Prop :=
  ∀ n, P8702073119955069613.a n = A208996 (n + 1)

end A208996

/-! ## A208996.P7634368552341663394

`A208993(A056000(n)+15)`
-/

namespace A208996.P7634368552341663394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A056000 n + 15).toNat

end

end A208996.P7634368552341663394

namespace A208996

/-- `A208993(A056000(n)+15)` -/
def P7634368552341663394.Spec : Prop :=
  ∀ n, P7634368552341663394.a n = A208996 (n + 1)

end A208996

/-! ## A208996.P9491550496641290630

`A208993(eq[7, A066657(n)])`
-/

namespace A208996.P9491550496641290630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208996.P9491550496641290630

namespace A208996

/-- `A208993(eq[7, A066657(n)])` -/
def P9491550496641290630.Spec : Prop :=
  ∀ n, P9491550496641290630.a n = A208996 (n + 1)

end A208996

/-! ## A208996.P3974549641203550859

`A208993(A000124(n+4)+4)`
-/

namespace A208996.P3974549641203550859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A000124 (n + 4) + 4).toNat

end

end A208996.P3974549641203550859

namespace A208996

/-- `A208993(A000124(n+4)+4)` -/
def P3974549641203550859.Spec : Prop :=
  ∀ n, P3974549641203550859.a n = A208996 (n + 1)

end A208996

/-!
# A208997: Number of 6-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and first differences in -n..n.

The programs for A208997, there is no canonical definition to state claims against.
-/

/-! ## A208997.P14724244437376853096

`A208993(A166136(n+4))`
-/

namespace A208997.P14724244437376853096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A166136 (n + 4)).toNat

end

end A208997.P14724244437376853096

/-! ## A208997.P10528771984332015564

`A208993(A167499(n+4)+1)`
-/

namespace A208997.P10528771984332015564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A167499 (n + 4) + 1).toNat

end

end A208997.P10528771984332015564

/-! ## A208997.P15446603222897006070

`A208993(A167487(n+4)-1)`
-/

namespace A208997.P15446603222897006070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A167487 (n + 4) - 1).toNat

end

end A208997.P15446603222897006070

/-! ## A208997.P15331592080092385889

`A208993(A167614(n+4)+3)`
-/

namespace A208997.P15331592080092385889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A167614 (n + 4) + 3).toNat

end

end A208997.P15331592080092385889

/-! ## A208997.P14308693716068104807

`A208993(A000124(n+5)+5)`
-/

namespace A208997.P14308693716068104807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A000124 (n + 5) + 5).toNat

end

end A208997.P14308693716068104807

/-!
# A208998: Number of 7-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and first differences in -n..n.

The programs for A208998, there is no canonical definition to state claims against.
-/

/-! ## A208998.P6537206374957854562

`A208993(A167487(n+5))`
-/

namespace A208998.P6537206374957854562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A167487 (n + 5)).toNat

end

end A208998.P6537206374957854562

/-! ## A208998.P5993983131284943120

`A208993(A056119(n)+28)`
-/

namespace A208998.P5993983131284943120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A056119 n + 28).toNat

end

end A208998.P5993983131284943120

/-! ## A208998.P17301833410359800708

`A208993(eq[11, A066657(n)])`
-/

namespace A208998.P17301833410359800708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208998.P17301833410359800708

/-! ## A208998.P8581698880178646456

`A208993(A166136(n+5)+1)`
-/

namespace A208998.P8581698880178646456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A166136 (n + 5) + 1).toNat

end

end A208998.P8581698880178646456

/-! ## A208998.P16804257549693488288

`A208993(A167499(n+5)+2)`
-/

namespace A208998.P16804257549693488288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208993 (A167499 (n + 5) + 2).toNat

end

end A208998.P16804257549693488288

/-!
# A208999: Number of n-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and first and second differences in -n..n.

The programs for A208999, there is no canonical definition to state claims against.
-/

/-! ## A208999.P16143829653674183925

`A209007(∑[4*n]+1)`
-/

namespace A208999.P16143829653674183925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208999.P16143829653674183925

/-! ## A208999.P13145332938321955265

`A209007(A001844(n))+char[10]`
-/

namespace A208999.P13145332938321955265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208999.P13145332938321955265

/-! ## A208999.P12307595442262739245

`A280508(n)+A209007(A001844(n))`
-/

namespace A208999.P12307595442262739245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 n + A209007 (A001844 n).toNat

end

end A208999.P12307595442262739245

/-! ## A208999.P1583496777015181331

`A308924(n)+A209007(A001844(n))`
-/

namespace A208999.P1583496777015181331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308924 n + A209007 (A001844 n).toNat

end

end A208999.P1583496777015181331

/-! ## A208999.P9360834973233927529

`A326683(n)+A209007(A001844(n))`
-/

namespace A208999.P9360834973233927529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 n + A209007 (A001844 n).toNat

end

end A208999.P9360834973233927529

