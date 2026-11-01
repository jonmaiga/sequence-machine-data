import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C048
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A395401: 1/a(n) is the gcd of all distinct resistance values in an n X n unit resistor grid.

The programs for A395401, there is no canonical definition to state claims against.
-/

/-! ## A395401.P5169845944225959372

`A182764(A192431(n+1))`
-/

namespace A395401.P5169845944225959372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182764 (A192431 (n + 1)).toNat

end

end A395401.P5169845944225959372

/-!
# A395405: a(n) is the maximum size of a set family F on {1, 2, ..., n} such that for any pair of not necessarily distinct sets S, T in F, there exists s in S and t in T such that |s - t| = 1.

The programs for A395405, there is no canonical definition to state claims against.
-/

/-! ## A395405.P3878318253802833512

`floor(∑[∑[(2^(n+1)-n)/5]])`
-/

namespace A395405.P3878318253802833512
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - (n : ℤ) : ℚ) / 5

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A395405.P3878318253802833512

/-! ## A395405.P1985776589872378325

`ogf((x+x^2+2x^3+2x^4+5x^5+5x^6+10x^7)/(1-2x))`
-/

namespace A395405.P1985776589872378325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 2, 2, 5, 5, 10] [1, -2] n

end

end A395405.P1985776589872378325

/-! ## A395405.P4985055130957965962

`∑[A325860(n)-n]-1`
-/

namespace A395405.P4985055130957965962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325860 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A395405.P4985055130957965962

/-! ## A395405.P5759396996619068117

`row((n+1)*A015519(n))`
-/

namespace A395405.P5759396996619068117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow ((n + 1 : ℤ) * A015519 n).toNat

end

end A395405.P5759396996619068117

/-!
# A395406: Triangle read by rows: T(n, k) is the number of unordered factorizations of A025487(n) into exactly k factors >= 2, where 0 <= k <= A036041(n).

The programs for A395406, there is no canonical definition to state claims against.
-/

/-! ## A395406.P14289570319122694787

`A071625(A129721(n+2)^A212632(n+1))`
-/

namespace A395406.P14289570319122694787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (SequenceMachineLib.roundAway ((A129721 (n + 2) : ℚ) ^ (A212632 (n + 1) : ℤ))).toNat

end

end A395406.P14289570319122694787

/-! ## A395406.P9894178367068313829

`A071625(A129721(n+2)^3)`
-/

namespace A395406.P9894178367068313829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A129721 (n + 2) ^ 3).toNat

end

end A395406.P9894178367068313829

/-! ## A395406.P5802529516551971139

`A065710(A173279(n+1))%4`
-/

namespace A395406.P5802529516551971139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065710 (A173279 (n + 1)).toNat) 4

end

end A395406.P5802529516551971139

/-! ## A395406.P13939903606046837106

`A209318(n)^A209318(A269939(n))`
-/

namespace A395406.P13939903606046837106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209318 n : ℚ) ^ (A209318 (A269939 n).toNat : ℤ)

end

end A395406.P13939903606046837106

/-! ## A395406.P11274770890440523648

`A209318(n)^A262879(A336574(n))`
-/

namespace A395406.P11274770890440523648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209318 n : ℚ) ^ (A262879 (A336574 n).toNat : ℤ)

end

end A395406.P11274770890440523648

/-!
# A395409: a(n) = A033677(n) - A135034(n); excess of the smallest divisor of n >= sqrt(n) over ceiling(sqrt(n)).

The programs for A395409, there is no canonical definition to state claims against.
-/

/-! ## A395409.P17220921105988170394

`A033677(n+1)-A135034(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395409.P17220921105988170394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) - A135034 (n + 1)

end

end A395409.P17220921105988170394

/-! ## A395409.P14184381182833580644

`A033677(n+1)-∑[char[n²]]`
-/

namespace A395409.P14184381182833580644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A395409.P14184381182833580644

/-! ## A395409.P12984179631459433194

`A028391(n)-A398341(n+1)`
-/

namespace A395409.P12984179631459433194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n - A398341 (n + 1)

end

end A395409.P12984179631459433194

/-! ## A395409.P14935050988127869243

`A028391(n)%A033677(n+1)`
-/

namespace A395409.P14935050988127869243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028391 n) (A033677 (n + 1))

end

end A395409.P14935050988127869243

/-! ## A395409.P9548908526313081806

`A397371(n)%A033677(n+1)`
-/

namespace A395409.P9548908526313081806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397371 n) (A033677 (n + 1))

end

end A395409.P9548908526313081806

/-! ## A395409.P9917627931222588243

`A248835(n+1)-A135668(n+1)`
-/

namespace A395409.P9917627931222588243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248835 (n + 1) - A135668 (n + 1)

end

end A395409.P9917627931222588243

/-!
# A395410: Number of unlabeled maximal 4-degenerate graphs on n vertices.

The programs for A395410, there is no canonical definition to state claims against.
-/

/-! ## A395410.P1108813587012676722

`A383508(A135254(n))`
-/

namespace A395410.P1108813587012676722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383508 (A135254 n).toNat

end

end A395410.P1108813587012676722

/-! ## A395410.P6410881517988250434

`A056576(∏[A369845(n)])`
-/

namespace A395410.P6410881517988250434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A395410.P6410881517988250434

/-!
# A395415: a(n) is the smallest n-simplex number that has exactly n prime factors, counted with multiplicity.

The programs for A395415, there is no canonical definition to state claims against.
-/

/-! ## A395415.P8976620446633707153

`C(n+1+A396215(n+1)-1, n+1)`
-/

namespace A395415.P8976620446633707153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) + A396215 (n + 1) - 1).toNat (n + 1)

end

end A395415.P8976620446633707153

/-! ## A395415.P7921145990880158104

`C(A396215(n+1)+n, n+1)`
-/

namespace A395415.P7921145990880158104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A396215 (n + 1) + (n : ℤ)).toNat (n + 1)

end

end A395415.P7921145990880158104

/-!
# A395416: T(n,k) is the number of partitions of [n] into k blocks with distinct element sums; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A395416, there is no canonical definition to state claims against.
-/

/-! ## A395416.P9344221134466197367

`A089839(A269945(n))`
-/

namespace A395416.P9344221134466197367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089839 (A269945 n).toNat

end

end A395416.P9344221134466197367

/-! ## A395416.P15004562320796615619

`A257022(A187557(n))`
-/

namespace A395416.P15004562320796615619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 (A187557 n).toNat

end

end A395416.P15004562320796615619

/-! ## A395416.P3756776314862883899

`A319081(A269948(n))`
-/

namespace A395416.P3756776314862883899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319081 (A269948 n).toNat

end

end A395416.P3756776314862883899

/-! ## A395416.P12960118452066573344

`A115726(A266886(n+2))`
-/

namespace A395416.P12960118452066573344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115726 (A266886 (n + 2)).toNat

end

end A395416.P12960118452066573344

/-! ## A395416.P13981167227598281649

`A182839(A266854(n+2))`
-/

namespace A395416.P13981167227598281649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182839 (A266854 (n + 2)).toNat

end

end A395416.P13981167227598281649

/-!
# A395419: Numbers k = x + y, such that sigma(x) + sigma(y) = 2*(x+y).

The programs for A395419, there is no canonical definition to state claims against.
-/

/-! ## A395419.P14774995778266175207

`lt[0, A037134(n+1)]+1`
-/

namespace A395419.P14774995778266175207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037134 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A395419.P14774995778266175207

/-! ## A395419.P17349442613324618023

`A065475(lt[0, A037134(1+n)])`
-/

namespace A395419.P17349442613324618023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037134 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A395419.P17349442613324618023

/-!
# A395421: a(n) = (2*n-3-(-1)^n)*(10*n-1+(-1)^n)/8.

The programs for A395421, the canonical program `A395421.P240790419776921196` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395421 has offset 0).

The definition of A395421 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-3-(-1)^n)*(10*n-1+(-1)^n)/8` (program `A395421.P11877085220403644313`, by `A395421.P11877085220403644313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395421.P9718955298042134342

`ogf((14x^3+6x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A395421.P9718955298042134342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 14, 6] [1, -1, -2, 2, 1, -1] n

end

end A395421.P9718955298042134342

namespace A395421

/-- `ogf((14x^3+6x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P9718955298042134342.Spec : Prop :=
  ∀ n, P9718955298042134342.a n = A395421 n

end A395421

/-! ## A395421.P18020865421521842957

`2*floor((n-1)/2)*(3*n-1-floor((n-1)/2))`
-/

namespace A395421.P18020865421521842957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊((n : ℤ) - 1 : ℚ) / 2⌋ * ((3 * n : ℤ) - 1 - ⌊((n : ℤ) - 1 : ℚ) / 2⌋)

end

end A395421.P18020865421521842957

namespace A395421

/-- `2*floor((n-1)/2)*(3*n-1-floor((n-1)/2))` -/
def P18020865421521842957.Spec : Prop :=
  ∀ n, P18020865421521842957.a n = A395421 n

end A395421

/-! ## A395421.P11877085220403644313

`(2*n-3-(-1)^n)*(10*n-1+(-1)^n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395421.P11877085220403644313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n : ℤ) - 3 - (-1) ^ n) * ((10 * n : ℤ) - 1 + (-1) ^ n) : ℚ) / 8

end

end A395421.P11877085220403644313

namespace A395421

/-- `(2*n-3-(-1)^n)*(10*n-1+(-1)^n)/8` -/
def P11877085220403644313.Spec : Prop :=
  ∀ n, P11877085220403644313.a n = (A395421 n : ℚ)

theorem P11877085220403644313.correct : P11877085220403644313.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A395421, Nat.add_sub_cancel, A395421.P11877085220403644313.a, A395421.P240790419776921196.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A395421, Nat.add_sub_cancel, A395421.P11877085220403644313.a, A395421.P240790419776921196.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A395421

/-! ## A395421.P240790419776921196

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=14, a(4)=20`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395421

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P240790419776921196.Spec : Prop :=
  ∀ n, P240790419776921196.a n = A395421 n

theorem P240790419776921196.correct : P240790419776921196.Spec := by
  intro n
  simp only [A395421]

end A395421

/-! ## A395421.P3051787739330219584

`∑{#}[floor((n-1)/2)-1, 6*n-4*(#+1)]`
-/

namespace A395421.P3051787739330219584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((6 * n : ℤ) - (4 * (k + 1) : ℤ))

end

end A395421.P3051787739330219584

namespace A395421

/-- `∑{#}[floor((n-1)/2)-1, 6*n-4*(#+1)]` -/
def P3051787739330219584.Spec : Prop :=
  ∀ n, P3051787739330219584.a n = A395421 n

end A395421

/-! ## A395421.P4888644796711075968

`A396652(n)+A137932(n)`
-/

namespace A395421.P4888644796711075968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396652 n + A137932 n

end

end A395421.P4888644796711075968

namespace A395421

/-- `A396652(n)+A137932(n)` -/
def P4888644796711075968.Spec : Prop :=
  ∀ n, P4888644796711075968.a n = A395421 n

end A395421

/-! ## A395421.P15526225259023968693

`A051682(n)-A245300(A210981(n))`
-/

namespace A395421.P15526225259023968693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n - A245300 (A210981 n).toNat

end

end A395421.P15526225259023968693

namespace A395421

/-- `A051682(n)-A245300(A210981(n))` -/
def P15526225259023968693.Spec : Prop :=
  ∀ n, P15526225259023968693.a n = A395421 n

end A395421

/-!
# A395422: Minimum number of triangular cells in a connected polyiamond container that contains every fixed n-iamond as a translated subset.

The programs for A395422, there is no canonical definition to state claims against.
-/

/-! ## A395422.P6567687190304743415

`∑[A214526(∑[A380246(n+5)])]`
-/

namespace A395422.P6567687190304743415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380246 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395422.P6567687190304743415

/-! ## A395422.P16798085273920893985

`A364345(n)+∑[A020653(n+1)]`
-/

namespace A395422.P16798085273920893985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364345 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395422.P16798085273920893985

/-! ## A395422.P15086412190405262742

`A175092(n+1)+A066050(n+1)`
-/

namespace A395422.P15086412190405262742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175092 (n + 1) + A066050 (n + 1)

end

end A395422.P15086412190405262742

/-! ## A395422.P12796548765919770830

`A175092(n+1)+A122090(n+1)`
-/

namespace A395422.P12796548765919770830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175092 (n + 1) + A122090 (n + 1)

end

end A395422.P12796548765919770830

/-! ## A395422.P1001284672363240923

`A153817(n+1)+A063932(n+2)`
-/

namespace A395422.P1001284672363240923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153817 (n + 1) + A063932 (n + 2)

end

end A395422.P1001284672363240923

/-!
# A395427: Coefficient of x^(3n)/(3n)! in the Maclaurin expansion of a function g(x,0) associated with the Dixon elliptic functions.

The programs for A395427, there is no canonical definition to state claims against.
-/

/-! ## A395427.P8007191052316640470

`1-col(floor(A162587(n^n+1)/8))`
-/

namespace A395427.P8007191052316640470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.triCol ⌊(A162587 (n ^ n + 1) : ℚ) / 8⌋.toNat : ℤ)

end

end A395427.P8007191052316640470

/-!
# A395431: Self-convolution of A001076.

The programs for A395431, the canonical program `A395431.P2289722612649236450` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395431 has offset 0).

The definition of A395431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395431.P2289722612649236450

`8*a(n-1)-14*a(n-2)-8*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395431

/-- `8*a(n-1)-14*a(n-2)-8*a(n-3)-a(n-4)` -/
def P2289722612649236450.Spec : Prop :=
  ∀ n, P2289722612649236450.a n = A395431 n

theorem P2289722612649236450.correct : P2289722612649236450.Spec := by
  intro n
  simp only [A395431]

end A395431

/-! ## A395431.P6338386329375283841

`(4*(n-1)*a(n-1)+n*a(n-2))/(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A395431.P6338386329375283841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ((4 * ((n : ℤ) - 1) : ℚ) * a (n - 1) + (n : ℚ) * a (n - 2)) / ((n : ℤ) - 2 : ℚ)

end

end A395431.P6338386329375283841

namespace A395431

/-- `(4*(n-1)*a(n-1)+n*a(n-2))/(n-2)` -/
def P6338386329375283841.Spec : Prop :=
  ∀ n, P6338386329375283841.a n = (A395431 n : ℚ)

end A395431

/-! ## A395431.P3058895365802630357

`∑{#}[n, A001076(#)*A001076(n-#)]`
-/

namespace A395431.P3058895365802630357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A001076 k * A001076 (n - k)

end

end A395431.P3058895365802630357

namespace A395431

/-- `∑{#}[n, A001076(#)*A001076(n-#)]` -/
def P3058895365802630357.Spec : Prop :=
  ∀ n, P3058895365802630357.a n = A395431 n

end A395431

/-!
# A395433: a(n) is the median of the odd primes less than 2n.

The programs for A395433, the canonical program `A395433.P17346962326993188646` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395433 has offset 2).

The definition of A395433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395433.P17346962326993188646

`A063934(A099801(1+n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A395433

/-- `A063934(A099801(1+n))` -/
def P17346962326993188646.Spec : Prop :=
  ∀ n, P17346962326993188646.a n = A395433 (n + 2)

theorem P17346962326993188646.correct : P17346962326993188646.Spec := by
  intro n
  simp only [A395433, Nat.add_sub_cancel]

end A395433

/-! ## A395433.P17282569307252266570

`A063934(A099802(2+n))`
-/

namespace A395433.P17282569307252266570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (A099802 (2 + n)).toNat

end

end A395433.P17282569307252266570

namespace A395433

/-- `A063934(A099802(2+n))` -/
def P17282569307252266570.Spec : Prop :=
  ∀ n, P17282569307252266570.a n = A395433 (n + 2)

end A395433

/-!
# A395435: a(n) = sigma(n) - usigma(n) + tau(rad(n)).

The programs for A395435, the canonical program `A395435.P18346761836883339857` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395435 has offset 1).

The definition of A395435 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395435.P9852731748166270111

`A000203(n+1)-A034448(n+1)+A034444(n+1)`
-/

namespace A395435.P9852731748166270111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A034448 (n + 1) + A034444 (n + 1)

end

end A395435.P9852731748166270111

namespace A395435

/-- `A000203(n+1)-A034448(n+1)+A034444(n+1)` -/
def P9852731748166270111.Spec : Prop :=
  ∀ n, P9852731748166270111.a n = A395435 (n + 1)

end A395435

/-! ## A395435.P18346761836883339857

`A000203(n+1)-A034448(n+1)+A000005(A007947(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A395435

/-- `A000203(n+1)-A034448(n+1)+A000005(A007947(n+1))` -/
def P18346761836883339857.Spec : Prop :=
  ∀ n, P18346761836883339857.a n = A395435 (n + 1)

theorem P18346761836883339857.correct : P18346761836883339857.Spec := by
  intro n
  simp only [A395435, Nat.add_sub_cancel]

end A395435

/-! ## A395435.P5065509522860725412

`A048146(n+1)+∏{p}[n+1, 2%#²]`
-/

namespace A395435.P5065509522860725412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), 2 % p ^ 2 : ℕ) : ℤ)

end

end A395435.P5065509522860725412

namespace A395435

/-- `A048146(n+1)+∏{p}[n+1, 2%#²]` -/
def P5065509522860725412.Spec : Prop :=
  ∀ n, P5065509522860725412.a n = A395435 (n + 1)

end A395435

/-! ## A395435.P11557144347320022350

`A048146(n+1)+A034444(n+1)`
-/

namespace A395435.P11557144347320022350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) + A034444 (n + 1)

end

end A395435.P11557144347320022350

namespace A395435

/-- `A048146(n+1)+A034444(n+1)` -/
def P11557144347320022350.Spec : Prop :=
  ∀ n, P11557144347320022350.a n = A395435 (n + 1)

end A395435

/-! ## A395435.P1222653438368675380

`A007503(n+1)-A394481(n+1)`
-/

namespace A395435.P1222653438368675380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A394481 (n + 1)

end

end A395435.P1222653438368675380

namespace A395435

/-- `A007503(n+1)-A394481(n+1)` -/
def P1222653438368675380.Spec : Prop :=
  ∀ n, P1222653438368675380.a n = A395435 (n + 1)

theorem P1222653438368675380.correct : P1222653438368675380.Spec := by
  intro n
  simp only [A395435, Nat.add_sub_cancel, A395435.P1222653438368675380.a, A395435.P18346761836883339857.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007503, A007503.P13484425310514315912.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A034448, A034448.P10900256174600810407.f1, A034448.P10900256174600810407.a, A394481, A394481.P10475431677930788014.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A051731, A051731.P11318043630102858095.a, A384050, A384050.P7808103291810137926.a, A000007, A000007.P6599383543502402472.a, A000010, A000010.P4673923239450215316.a, A048158, A048158.P1757030368331788429.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A395435

/-! ## A395435.P2084775596915407602

`A034444(n+1)+∑{d}[1+n, A348513(#)]`
-/

namespace A395435.P2084775596915407602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A348513 d

end

end A395435.P2084775596915407602

namespace A395435

/-- `A034444(n+1)+∑{d}[1+n, A348513(#)]` -/
def P2084775596915407602.Spec : Prop :=
  ∀ n, P2084775596915407602.a n = A395435 (n + 1)

end A395435

/-! ## A395435.P2484312850059654631

`A034444(n+1)+1-A325814(n+1)+n`
-/

namespace A395435.P2484312850059654631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + (1 - A325814 (n + 1) + (n : ℤ))

end

end A395435.P2484312850059654631

namespace A395435

/-- `A034444(n+1)+1-A325814(n+1)+n` -/
def P2484312850059654631.Spec : Prop :=
  ∀ n, P2484312850059654631.a n = A395435 (n + 1)

end A395435

/-! ## A395435.P4082959011352247385

`A048146(n+1)+A000005(A007947(n+1))`
-/

namespace A395435.P4082959011352247385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) + A000005 (A007947 (n + 1)).toNat

end

end A395435.P4082959011352247385

namespace A395435

/-- `A048146(n+1)+A000005(A007947(n+1))` -/
def P4082959011352247385.Spec : Prop :=
  ∀ n, P4082959011352247385.a n = A395435 (n + 1)

end A395435

/-!
# A395436: Number of aperiodic linear palindromes of length 2*n+1, summed over all integer partitions of 2*n+1, in the strongly normal fixed-content convention.

The programs for A395436, there is no canonical definition to state claims against.
-/

/-! ## A395436.P13055608507974254784

`∑[A368095(2*n+1)]`
-/

namespace A395436.P13055608507974254784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368095 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395436.P13055608507974254784

/-!
# A395438: Largest divisor of n not exceeding 1 + sqrt(1 + 8*n)/2.

The programs for A395438, there is no canonical definition to state claims against.
-/

/-! ## A395438.P17692923786186499185

`gcd(A000005(A005179(n+1)), A246348(n+1))`
-/

namespace A395438.P17692923786186499185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A005179 (n + 1)).toNat) (A246348 (n + 1))

end

end A395438.P17692923786186499185

/-! ## A395438.P15372872959505705767

`A102096(A086957(n+1))`
-/

namespace A395438.P15372872959505705767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102096 (A086957 (n + 1)).toNat

end

end A395438.P15372872959505705767

/-! ## A395438.P5877222735732294898

`gcd(∑[A060424(3*(n+1))], A002034(n+1))`
-/

namespace A395438.P5877222735732294898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060424 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A002034 (n + 1))

end

end A395438.P5877222735732294898

/-! ## A395438.P3921906731473374070

`gcd(A033677(n+1), A052486(A034386(n)))`
-/

namespace A395438.P3921906731473374070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033677 (n + 1)) (A052486 (A034386 n).toNat)

end

end A395438.P3921906731473374070

/-! ## A395438.P16981603451436292622

`A002034(gcd(A087217(2*n+5)+A093794(n+1), n+1))`
-/

namespace A395438.P16981603451436292622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (Int.gcd (A087217 (2 * n + 5) + A093794 (n + 1)) (n + 1 : ℤ))

end

end A395438.P16981603451436292622

/-!
# A395446: Number of Hamiltonian paths on an n X n grid, starting from a fixed corner cell and ending anywhere, where the allowed moves are (+-3,0), (0,+-3), or (+-2,+-2).

The programs for A395446, there is no canonical definition to state claims against.
-/

/-! ## A395446.P18180698125211317214

`A379598(∑[3*a(n-1)])` with `a(0)=1, a(1)=1`
-/

namespace A395446.P18180698125211317214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379598 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395446.P18180698125211317214

/-!
# A395447: Numerators of the coefficient of Pi^(4n+1) in Plouffe's formula for zeta(4n+1).

The programs for A395447, there is no canonical definition to state claims against.
-/

/-! ## A395447.P1987076995654124927

`A394976(2*(n+1))`
-/

namespace A395447.P1987076995654124927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394976 (2 * (n + 1))

end

end A395447.P1987076995654124927

/-!
# A395448: Denominators of the coefficient of Pi^(4n+1) in Plouffe's formula for zeta(4n+1).

The programs for A395448, there is no canonical definition to state claims against.
-/

/-! ## A395448.P6717740564504765618

`A394977(2*(n+1))`
-/

namespace A395448.P6717740564504765618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394977 (2 * (n + 1))

end

end A395448.P6717740564504765618

/-!
# A395449: Smallest sum of synchronizing word lengths of an n-state binary deterministic finite automaton that has a synchronizing word for every state.

The programs for A395449, there is no canonical definition to state claims against.
-/

/-! ## A395449.P3194812506132209504

`ceil(sqrt(Δ[∑[n+3]²]))`
-/

namespace A395449.P3194812506132209504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌉

end

end A395449.P3194812506132209504

/-! ## A395449.P16596929026370743189

`∑[∑[char[n!]]+2]+5`
-/

namespace A395449.P16596929026370743189
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A395449.P16596929026370743189

/-! ## A395449.P16864505028993591914

`4+∑[row(n+4)+1]`
-/

namespace A395449.P16864505028993591914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (n + 4) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395449.P16864505028993591914

/-! ## A395449.P3053635573295555223

`∑[round(sqrt(or(1, n)))+2]+4`
-/

namespace A395449.P3053635573295555223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.lor 1 n : ℝ)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A395449.P3053635573295555223

/-! ## A395449.P18070259081404803808

`∑[fp[(n+1)!]+2]+5`
-/

namespace A395449.P18070259081404803808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f2 j) 0 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A395449.P18070259081404803808

/-!
# A395455: Numbers k such that the k-th Stieltjes constant is negative.

The programs for A395455, there is no canonical definition to state claims against.
-/

/-! ## A395455.P3824327474881882880

`comp[A394583(n+1)]`
-/

namespace A395455.P3824327474881882880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395455.P3824327474881882880

/-! ## A395455.P16753110121042655922

`lt[A114523(n), 0]`
-/

namespace A395455.P16753110121042655922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A395455.P16753110121042655922

/-! ## A395455.P5662865654444265248

`eq[-1, A114523(n+1)]+1`
-/

namespace A395455.P5662865654444265248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A395455.P5662865654444265248

/-! ## A395455.P14983935149590370762

`eq[A057428(n), A114523(n)]`
-/

namespace A395455.P14983935149590370762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395455.P14983935149590370762

/-! ## A395455.P16318724313383209748

`eq[A114523(n)+1, A000007(n)]`
-/

namespace A395455.P16318724313383209748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395455.P16318724313383209748

/-! ## A395455.P16486691880763914243

`eq[A114523(n), A114523(A141056(2*n+3))]`
-/

namespace A395455.P16486691880763914243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114523 (A141056 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395455.P16486691880763914243

/-!
# A395456: Triangle read by rows: T(n,k) = (1/(2k)!) * Sum_{j=0..2k} (-1)^j * binomial(2k,j) * (2+k-j)^(2n).

The programs for A395456, there is no canonical definition to state claims against.
-/

/-! ## A395456.P5481793120257568573

`A394466(comp[n+col(n)+1])`
-/

namespace A395456.P5481793120257568573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + (SequenceMachineLib.triCol n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394466 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A395456.P5481793120257568573

/-! ## A395456.P10941710019680335612

`A390029(n)*A394692(n)/A392337(n)`
-/

namespace A395456.P10941710019680335612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390029 n * A394692 n : ℚ) / (A392337 n : ℚ)

end

end A395456.P10941710019680335612

/-!
# A395457: Triangle read by rows: T(n,k) = (1/(2k)!) * Sum_{j=0..2k} (-1)^j * binomial(2k,j) * (3+k-j)^(2n).

The programs for A395457, there is no canonical definition to state claims against.
-/

/-! ## A395457.P17455753394580412220

`A396559(comp[n+col(n)+1])`
-/

namespace A395457.P17455753394580412220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + (SequenceMachineLib.triCol n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396559 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A395457.P17455753394580412220

/-! ## A395457.P12251880225355148882

`A234320(A001263(n+1))^A122200(n)`
-/

namespace A395457.P12251880225355148882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234320 (A001263 (n + 1)).toNat : ℚ) ^ (A122200 n : ℤ)

end

end A395457.P12251880225355148882

/-!
# A395458: a(n) = n*tau(n) - (n-1)*tau(rad(n)).

The programs for A395458, the canonical program `A395458.P9897769218609620014` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395458 has offset 1).

The definition of A395458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000005(n+1)-n*A000005(A007947(n+1))` (program `A395458.P9897769218609620014`, by `A395458.P9897769218609620014.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395458.P9897769218609620014

`(n+1)*A000005(n+1)-n*A000005(A007947(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A395458

/-- `(n+1)*A000005(n+1)-n*A000005(A007947(n+1))` -/
def P9897769218609620014.Spec : Prop :=
  ∀ n, P9897769218609620014.a n = A395458 (n + 1)

theorem P9897769218609620014.correct : P9897769218609620014.Spec := by
  intro n
  simp only [A395458, Nat.add_sub_cancel]

end A395458

/-! ## A395458.P13914776178475250825

`∑{d}[1+n, gcd(A008683(#), n+1)]`
-/

namespace A395458.P13914776178475250825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (A008683 d) (n + 1 : ℤ)

end

end A395458.P13914776178475250825

namespace A395458

/-- `∑{d}[1+n, gcd(A008683(#), n+1)]` -/
def P13914776178475250825.Spec : Prop :=
  ∀ n, (P13914776178475250825.a n : ℤ) = A395458 (n + 1)

end A395458

/-! ## A395458.P9278446709947302161

`A000005(n+1)+A048105(n+1)*n`
-/

namespace A395458.P9278446709947302161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A048105 (n + 1) * (n : ℤ)

end

end A395458.P9278446709947302161

namespace A395458

/-- `A000005(n+1)+A048105(n+1)*n` -/
def P9278446709947302161.Spec : Prop :=
  ∀ n, P9278446709947302161.a n = A395458 (n + 1)

end A395458

/-! ## A395458.P8036518022716252975

`∑{d}[n+1, gcd(n, #)]+(A032741(n+1)-A309307(n+1))*n`
-/

namespace A395458.P8036518022716252975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) + (A032741 (n + 1) - A309307 (n + 1)) * (n : ℤ)

end

end A395458.P8036518022716252975

namespace A395458

/-- `∑{d}[n+1, gcd(n, #)]+(A032741(n+1)-A309307(n+1))*n` -/
def P8036518022716252975.Spec : Prop :=
  ∀ n, P8036518022716252975.a n = A395458 (n + 1)

end A395458

/-! ## A395458.P10280163918664579398

`∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]+A048105(n+1)*n`
-/

namespace A395458.P10280163918664579398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ - ⌊(n : ℚ) / (k + 1 : ℚ)⌋) + A048105 (n + 1) * (n : ℤ)

end

end A395458.P10280163918664579398

namespace A395458

/-- `∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]+A048105(n+1)*n` -/
def P10280163918664579398.Spec : Prop :=
  ∀ n, P10280163918664579398.a n = A395458 (n + 1)

end A395458

/-!
# A395459: Triangle read by rows, T(1,0)=1, T(n,m) = (-1)^(n+m-1) * (n-2)! * (n+m-1) / m! for n >= 2, 0 <= m <= n-1.

The programs for A395459, the canonical program `A395459.P5091416216022985948` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395459 has offset 1).

The definition of A395459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395459.P5091416216022985948

`T(n-1,k-1)-(row(n)-col(n))*T(n-1,k)` with `a(0)=1, a(1)=-1, a(2)=2`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395459

/-- `T(n-1,k-1)-(row(n)-col(n))*T(n-1,k)` -/
def P5091416216022985948.Spec : Prop :=
  ∀ n, P5091416216022985948.a n = A395459 (n + 1)

theorem P5091416216022985948.correct : P5091416216022985948.Spec := by
  intro n
  simp only [A395459, Nat.add_sub_cancel]

end A395459

/-! ## A395459.P16048006862190508402

`(-1)^row(n)*A293600(C(row(n)+1, 2)+col(n)+1)*(row(n)-col(n))!`
-/

namespace A395459.P16048006862190508402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.triRow n * A293600 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1) * (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℤ)

end

end A395459.P16048006862190508402

namespace A395459

/-- `(-1)^row(n)*A293600(C(row(n)+1, 2)+col(n)+1)*(row(n)-col(n))!` -/
def P16048006862190508402.Spec : Prop :=
  ∀ n, P16048006862190508402.a n = A395459 (n + 1)

end A395459

/-!
# A395461: Expansion of e.g.f. x^3*(1 + x + x^2/2 + x^3/6)*exp(x).

The programs for A395461, the canonical program `A395461.P11626616581990755088` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395461 has offset 0).

The definition of A395461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395461.P10196548849711730090

`ogf((6x^3+6x^4+30x^5+78x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A395461.P10196548849711730090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 6, 6, 30, 78] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A395461.P10196548849711730090

namespace A395461

/-- `ogf((6x^3+6x^4+30x^5+78x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P10196548849711730090.Spec : Prop :=
  ∀ n, P10196548849711730090.a n = A395461 n

end A395461

/-! ## A395461.P11626616581990755088

`n*(n-1)*(n-2)²*(n²-7*n+18)/6`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395461

/-- `n*(n-1)*(n-2)²*(n²-7*n+18)/6` -/
def P11626616581990755088.Spec : Prop :=
  ∀ n, P11626616581990755088.a n = (A395461 n : ℚ)

end A395461

/-! ## A395461.P1202917450401472552

`6*A394656(n)`
-/

namespace A395461.P1202917450401472552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A394656 n

end

end A395461.P1202917450401472552

namespace A395461

/-- `6*A394656(n)` -/
def P1202917450401472552.Spec : Prop :=
  ∀ n, P1202917450401472552.a n = A395461 n

end A395461

/-! ## A395461.P4180335379535336676

`A008588(A394656(n))`
-/

namespace A395461.P4180335379535336676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A394656 n).toNat

end

end A395461.P4180335379535336676

namespace A395461

/-- `A008588(A394656(n))` -/
def P4180335379535336676.Spec : Prop :=
  ∀ n, P4180335379535336676.a n = A395461 n

end A395461

/-!
# A395463: a(n) = n*(7^n - 1) + 1.

The programs for A395463, the canonical program `A395463.P16345157341292419435` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395463 has offset 0).

The definition of A395463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7^n-1)+1` (program `A395463.P16345157341292419435`, by `A395463.P16345157341292419435.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395463.P16345157341292419435

`n*(7^n-1)+1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395463

/-- `n*(7^n-1)+1` -/
def P16345157341292419435.Spec : Prop :=
  ∀ n, P16345157341292419435.a n = A395463 n

theorem P16345157341292419435.correct : P16345157341292419435.Spec := by
  intro n
  simp only [A395463]

end A395463

/-! ## A395463.P14235599979954245253

`or(1, n*(7^n-1))`
-/

namespace A395463.P14235599979954245253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * ((7 ^ n : ℤ) - 1))

end

end A395463.P14235599979954245253

namespace A395463

/-- `or(1, n*(7^n-1))` -/
def P14235599979954245253.Spec : Prop :=
  ∀ n, P14235599979954245253.a n = A395463 n

end A395463

/-! ## A395463.P15257905390537457772

`xor(1, (7^n-1)*n)`
-/

namespace A395463.P15257905390537457772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((7 ^ n : ℤ) - 1) * (n : ℤ))

end

end A395463.P15257905390537457772

namespace A395463

/-- `xor(1, (7^n-1)*n)` -/
def P15257905390537457772.Spec : Prop :=
  ∀ n, P15257905390537457772.a n = A395463 n

end A395463

/-! ## A395463.P13704375957169430776

`abs(A050919(n)-n)`
-/

namespace A395463.P13704375957169430776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A050919 n - (n : ℤ)|

end

end A395463.P13704375957169430776

namespace A395463

/-- `abs(A050919(n)-n)` -/
def P13704375957169430776.Spec : Prop :=
  ∀ n, P13704375957169430776.a n = A395463 n

end A395463

/-! ## A395463.P9786359857766755758

`abs(n*A000420(n)+1-n)`
-/

namespace A395463.P9786359857766755758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A000420 n + 1 - (n : ℤ)|

end

end A395463.P9786359857766755758

namespace A395463

/-- `abs(n*A000420(n)+1-n)` -/
def P9786359857766755758.Spec : Prop :=
  ∀ n, P9786359857766755758.a n = A395463 n

end A395463

/-! ## A395463.P2096899365748501778

`abs(abs(n*A103458(n)+1-n)-n)`
-/

namespace A395463.P2096899365748501778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|(n : ℤ) * A103458 n + 1 - (n : ℤ)| - (n : ℤ))|

end

end A395463.P2096899365748501778

namespace A395463

/-- `abs(abs(n*A103458(n)+1-n)-n)` -/
def P2096899365748501778.Spec : Prop :=
  ∀ n, P2096899365748501778.a n = A395463 n

end A395463

/-! ## A395463.P11417076754701014270

`(A050919(n)-n)%A397265(n+3)`
-/

namespace A395463.P11417076754701014270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050919 n - (n : ℤ)) (A397265 (n + 3))

end

end A395463.P11417076754701014270

namespace A395463

/-- `(A050919(n)-n)%A397265(n+3)` -/
def P11417076754701014270.Spec : Prop :=
  ∀ n, P11417076754701014270.a n = A395463 n

end A395463

/-!
# A395464: Indices of 3 in A395473: Number k such that Q(chi) takes 3 different fields for chi running through the Dirichlet characters modulo k, where Q(chi) is the field generated by the values of chi.

The programs for A395464, there is no canonical definition to state claims against.
-/

/-! ## A395464.P7600718375630591952

`eq[3, A191613(1+n)]+1`
-/

namespace A395464.P7600718375630591952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A395464.P7600718375630591952

/-! ## A395464.P17698489032132495203

`eq[3, A395473(n+1)]+1`
-/

namespace A395464.P17698489032132495203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A395464.P17698489032132495203

/-! ## A395464.P12260244112836577351

`eq[3, A191613(n^abs(A057428(n)))]`
-/

namespace A395464.P12260244112836577351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (SequenceMachineLib.roundAway ((n : ℚ) ^ (|A057428 n| : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395464.P12260244112836577351

/-! ## A395464.P3104907583741745779

`eq[3, A277692(A263027(n+1))]+1`
-/

namespace A395464.P3104907583741745779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A263027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A395464.P3104907583741745779

/-! ## A395464.P7999893697445353557

`eq[2, A320111(A002322(n+1))-1]+1`
-/

namespace A395464.P7999893697445353557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A002322 (n + 1)).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A395464.P7999893697445353557

/-!
# A395473: Number of Q(chi) for chi running through the Dirichlet characters modulo n, where Q(chi) is the field generated by the values of chi.

The programs for A395473, there is no canonical definition to state claims against.
-/

/-! ## A395473.P7984169279944746252

`round(sqrt(A191613(1+n)²+1))`
-/

namespace A395473.P7984169279944746252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A191613 (1 + n) ^ 2 + 1 : ℝ))

end

end A395473.P7984169279944746252

/-! ## A395473.P7424281025283113365

`∏{e}[floor(A002322(n+1)/2), #+1]`
-/

namespace A395473.P7424281025283113365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002322 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A395473.P7424281025283113365

/-! ## A395473.P9582080796249629957

`A028310(A191613(n+1))`
-/

namespace A395473.P9582080796249629957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A191613 (n + 1)).toNat

end

end A395473.P9582080796249629957

/-! ## A395473.P10691886153405287911

`A320111(A002322(n+1))`
-/

namespace A395473.P10691886153405287911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A002322 (n + 1)).toNat

end

end A395473.P10691886153405287911

/-! ## A395473.P8381333887593552545

`A277692(A263027(n+1))`
-/

namespace A395473.P8381333887593552545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A263027 (n + 1)).toNat

end

end A395473.P8381333887593552545

/-! ## A395473.P8038668888025469683

`A191613(n+1)+A019590(n+1)`
-/

namespace A395473.P8038668888025469683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (n + 1) + A019590 (n + 1)

end

end A395473.P8038668888025469683

/-! ## A395473.P13314894437918155473

`A191613(A066560(n+1))`
-/

namespace A395473.P13314894437918155473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (A066560 (n + 1)).toNat

end

end A395473.P13314894437918155473

/-! ## A395473.P9854462679502838479

`A191613(lcm(3, n+1))`
-/

namespace A395473.P9854462679502838479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (Nat.lcm 3 (n + 1))

end

end A395473.P9854462679502838479

/-! ## A395473.P6686445744918806515

`A191613(A109044(n+1))`
-/

namespace A395473.P6686445744918806515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (A109044 (n + 1)).toNat

end

end A395473.P6686445744918806515

/-! ## A395473.P14661313383077602618

`A191613(A204998(n+1))`
-/

namespace A395473.P14661313383077602618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (A204998 (n + 1)).toNat

end

end A395473.P14661313383077602618

/-! ## A395473.P13420574652348008356

`A191613(A109045(n+1))`
-/

namespace A395473.P13420574652348008356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (A109045 (n + 1)).toNat

end

end A395473.P13420574652348008356

/-! ## A395473.P14498381792210751586

`A191613(A109047(n+1))`
-/

namespace A395473.P14498381792210751586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (A109047 (n + 1)).toNat

end

end A395473.P14498381792210751586

/-! ## A395473.P13062650152977960032

`A191613(A109049(n+1))`
-/

namespace A395473.P13062650152977960032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (A109049 (n + 1)).toNat

end

end A395473.P13062650152977960032

/-! ## A395473.P14153969546526216210

`A191613(A205382(n+1))`
-/

namespace A395473.P14153969546526216210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (A205382 (n + 1)).toNat

end

end A395473.P14153969546526216210

/-! ## A395473.P15313335813627616815

`A191613(A109053(n+1))`
-/

namespace A395473.P15313335813627616815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (A109053 (n + 1)).toNat

end

end A395473.P15313335813627616815

/-! ## A395473.P9237489815896133282

`gcd(A191613(n+1), A356547(n))`
-/

namespace A395473.P9237489815896133282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A191613 (n + 1)) (A356547 n)

end

end A395473.P9237489815896133282

/-! ## A395473.P321133720872443802

`gcd(A010786(n), A191613(n+1))`
-/

namespace A395473.P321133720872443802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010786 n) (A191613 (n + 1))

end

end A395473.P321133720872443802

/-! ## A395473.P14960804725430600028

`gcd(A003418(n), A191613(n+1))`
-/

namespace A395473.P14960804725430600028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A191613 (n + 1))

end

end A395473.P14960804725430600028

/-! ## A395473.P3707790429145619133

`A216325(A219792(n+1))`
-/

namespace A395473.P3707790429145619133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216325 (A219792 (n + 1)).toNat

end

end A395473.P3707790429145619133

/-!
# A395475: Number of 3 X n binary matrices that are "primitive"; that is, they cannot be expressed as a "tiling" by a smaller matrix.

The programs for A395475, there is no canonical definition to state claims against.
-/

/-! ## A395475.P7388006099405034038

`A323862(A167614(n+1))`
-/

namespace A395475.P7388006099405034038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (A167614 (n + 1)).toNat

end

end A395475.P7388006099405034038

/-! ## A395475.P4900178271393751223

`A323862(A000217(n+3)-n)`
-/

namespace A395475.P4900178271393751223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (A000217 (n + 3) - (n : ℤ)).toNat

end

end A395475.P4900178271393751223

/-! ## A395475.P1661391881105962236

`A323862(A373663(n+1))`
-/

namespace A395475.P1661391881105962236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (A373663 (n + 1)).toNat

end

end A395475.P1661391881105962236

/-! ## A395475.P17761647092299773335

`A323862(A034856(n+2))`
-/

namespace A395475.P17761647092299773335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (A034856 (n + 2)).toNat

end

end A395475.P17761647092299773335

/-! ## A395475.P15135374914095112514

`A323862(A000096(n+2)-1)`
-/

namespace A395475.P15135374914095112514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323862 (A000096 (n + 2) - 1).toNat

end

end A395475.P15135374914095112514

/-!
# A395476: Expansion of e.g.f. x^3*(1 + x + x^2/2)*exp(x).

The programs for A395476, the canonical program `A395476.P13216408518551934133` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395476 has offset 0).

The definition of A395476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395476.P13216408518551934133

`ogf((6x^3+12x^4+42x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395476

/-- `ogf((6x^3+12x^4+42x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P13216408518551934133.Spec : Prop :=
  ∀ n, P13216408518551934133.a n = A395476 n

theorem P13216408518551934133.correct : P13216408518551934133.Spec := by
  intro n
  simp only [A395476]

end A395476

/-! ## A395476.P13152996025126953963

`(n-2)*(n-1)*n*(n*(n-5)+8)/2`
-/

namespace A395476.P13152996025126953963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * ((n : ℤ) - 1) * (n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 8) : ℚ) / 2

end

end A395476.P13152996025126953963

namespace A395476

/-- `(n-2)*(n-1)*n*(n*(n-5)+8)/2` -/
def P13152996025126953963.Spec : Prop :=
  ∀ n, P13152996025126953963.a n = (A395476 n : ℚ)

end A395476

/-! ## A395476.P681694795406852303

`A007954(A056986(n+1)-C(n+1, 3))`
-/

namespace A395476.P681694795406852303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A056986 (n + 1) - (Nat.choose (n + 1) 3 : ℤ)).toNat

end

end A395476.P681694795406852303

namespace A395476

/-- `A007954(A056986(n+1)-C(n+1, 3))` -/
def P681694795406852303.Spec : Prop :=
  ∀ n, P681694795406852303.a n = A395476 n

end A395476

/-!
# A395480: Number of n-color compositions of n with parts in standard order.

The programs for A395480, there is no canonical definition to state claims against.
-/

/-! ## A395480.P15872211589484961865

`A244579(A032160(n+1))`
-/

namespace A395480.P15872211589484961865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (A032160 (n + 1)).toNat

end

end A395480.P15872211589484961865

/-! ## A395480.P3793754478164243596

`A338316(A032143(n+1))`
-/

namespace A395480.P3793754478164243596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338316 (A032143 (n + 1)).toNat

end

end A395480.P3793754478164243596

/-! ## A395480.P16935314150984010263

`A244579(or(A032143(n+1), A266243(n)))`
-/

namespace A395480.P16935314150984010263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244579 (Int.lor (A032143 (n + 1)) (A266243 n)).toNat

end

end A395480.P16935314150984010263

/-!
# A395481: Number of derangements of [n] with 2 descents.

The programs for A395481, the canonical program `A395481.P9155933806148453481` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395481 has offset 0).

The definition of A395481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395481.P10709141452842656321

`ogf((4x^4-4x^5)/(1-7x+16x^2-12x^3))`
-/

namespace A395481.P10709141452842656321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 4, -4] [1, -7, 16, -12] n

end

end A395481.P10709141452842656321

namespace A395481

/-- `ogf((4x^4-4x^5)/(1-7x+16x^2-12x^3))` -/
def P10709141452842656321.Spec : Prop :=
  ∀ n, P10709141452842656321.a n = A395481 n

end A395481

/-! ## A395481.P9155933806148453481

`7*a(n-1)-16*a(n-2)+12*a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=4, a(5)=24`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395481

/-- `7*a(n-1)-16*a(n-2)+12*a(n-3)` -/
def P9155933806148453481.Spec : Prop :=
  ∀ n, P9155933806148453481.a n = A395481 n

theorem P9155933806148453481.correct : P9155933806148453481.Spec := by
  intro n
  simp only [A395481]

end A395481

/-! ## A395481.P5013339056311234679

`A083580(n)-A062107(n+1)`
-/

namespace A395481.P5013339056311234679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083580 n - A062107 (n + 1)

end

end A395481.P5013339056311234679

namespace A395481

/-- `A083580(n)-A062107(n+1)` -/
def P5013339056311234679.Spec : Prop :=
  ∀ n, P5013339056311234679.a n = A395481 n

end A395481

/-! ## A395481.P8628692489453776378

`A083580(n)-record[A062107(A263017(n))]`
-/

namespace A395481.P8628692489453776378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062107 (A263017 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083580 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A395481.P8628692489453776378

namespace A395481

/-- `A083580(n)-record[A062107(A263017(n))]` -/
def P8628692489453776378.Spec : Prop :=
  ∀ n, P8628692489453776378.a n = A395481 n

end A395481

/-! ## A395481.P5100756430230402279

`A083580(n)%gcd(A062107(n+1), A062107(n+4))`
-/

namespace A395481.P5100756430230402279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083580 n) (Int.gcd (A062107 (n + 1)) (A062107 (n + 4)) : ℤ)

end

end A395481.P5100756430230402279

namespace A395481

/-- `A083580(n)%gcd(A062107(n+1), A062107(n+4))` -/
def P5100756430230402279.Spec : Prop :=
  ∀ n, P5100756430230402279.a n = A395481 n

end A395481

/-!
# A395482: Number of derangements of [n] with 3 descents.

The programs for A395482, there is no canonical definition to state claims against.
-/

/-! ## A395482.P3553086885999544342

`A219836(A350660(n+2))`
-/

namespace A395482.P3553086885999544342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219836 (A350660 (n + 2)).toNat

end

end A395482.P3553086885999544342

/-! ## A395482.P4810614973031557626

`A219836(∑[∑[A366134(n+1)]])`
-/

namespace A395482.P4810614973031557626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366134 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219836 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A395482.P4810614973031557626

/-! ## A395482.P6002650347152280349

`A219836(∑[∑[A010060(3*n+1)]])`
-/

namespace A395482.P6002650347152280349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219836 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A395482.P6002650347152280349

/-! ## A395482.P16667188702294497926

`A219836(A084558(n+2)+A000217(n))`
-/

namespace A395482.P16667188702294497926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219836 (A084558 (n + 2) + A000217 n).toNat

end

end A395482.P16667188702294497926

/-!
# A395483: Number of derangements of [n] with 4 descents.

The programs for A395483, there is no canonical definition to state claims against.
-/

/-! ## A395483.P4072837502718917886

`A219836(A076027(n+2))`
-/

namespace A395483.P4072837502718917886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219836 (A076027 (n + 2)).toNat

end

end A395483.P4072837502718917886

/-! ## A395483.P2524750337480063344

`A395497(A098482(n)+A018852(n))`
-/

namespace A395483.P2524750337480063344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395497 (A098482 n + A018852 n).toNat

end

end A395483.P2524750337480063344

/-! ## A395483.P3721588869180099561

`A000010((n+a(n-1))²+3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0`
-/

namespace A395483.P3721588869180099561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0] fun n a =>
  A000010 (((n : ℤ) + a (n - 1)) ^ 2 + 3).toNat

end

end A395483.P3721588869180099561

/-! ## A395483.P13663182836644866334

`A367145(A336142(n))`
-/

namespace A395483.P13663182836644866334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367145 (A336142 n).toNat

end

end A395483.P13663182836644866334

/-!
# A395484: Number of derangements of [n] with 5 descents.

The programs for A395484, there is no canonical definition to state claims against.
-/

/-! ## A395484.P4475018232474480878

`A219836(∑[∑[A249351(3*n+5)]])`
-/

namespace A395484.P4475018232474480878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219836 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A395484.P4475018232474480878

/-! ## A395484.P18180726215228341537

`A032766(C(A014372(n), 2))`
-/

namespace A395484.P18180726215228341537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (Nat.choose (A014372 n).toNat 2)

end

end A395484.P18180726215228341537

/-!
# A395485: Number of nonisomorphic metrizable convexities on a set of n elements.

The programs for A395485, there is no canonical definition to state claims against.
-/

/-! ## A395485.P12404200297352731757

`A205810(round(exp(n)))`
-/

namespace A395485.P12404200297352731757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205810 (SequenceMachineLib.roundAway (Real.exp (n : ℝ))).toNat

end

end A395485.P12404200297352731757

/-!
# A395486: Consider the square spiral with its cells numbered starting at 0. Two players, Black and Red, take turns. When it is Black's turn, he places a knight at the smallest unoccupied cell not attacked by an existing Red knight, and when it is Red's turn, she places a knight at the smallest unoccupied cell not attacked by an existing Black knight. a(n) = +k if the n-th cell is occupied by the k-th Black knight, a(n) = -k if the n-th cell is occupied by the k-th Red knight, a(n) = 0 otherwise.

The programs for A395486, there is no canonical definition to state claims against.
-/

/-! ## A395486.P11608893038721196881

`A001057(A395364(n))`
-/

namespace A395486.P11608893038721196881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A395364 n).toNat

end

end A395486.P11608893038721196881

/-!
# A395487: a(1) = 1; thereafter a(n+1) is the unused number with the greatest abundancy selected from candidates of the form a(n)/p if possible, otherwise of the form a(n)*p, where p is prime.

The programs for A395487, there is no canonical definition to state claims against.
-/

/-! ## A395487.P6809603315872598565

`A302781(n)/A091887(A398374(n))`
-/

namespace A395487.P6809603315872598565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302781 n : ℚ) / (A091887 (A398374 n).toNat : ℚ)

end

end A395487.P6809603315872598565

/-! ## A395487.P10719056568534322657

`A303778(n)%A374249(A341790(n+1))`
-/

namespace A395487.P10719056568534322657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303778 n) (A374249 (A341790 (n + 1)).toNat)

end

end A395487.P10719056568534322657

/-! ## A395487.P17080797795853602567

`A109649(A358505(n+1)+A109649(3*n+1))`
-/

namespace A395487.P17080797795853602567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109649 (A358505 (n + 1) + A109649 (3 * n + 1)).toNat

end

end A395487.P17080797795853602567

/-!
# A395488: Number of derangements of [2*n] with n descents.

The programs for A395488, there is no canonical definition to state claims against.
-/

/-! ## A395488.P1835279655260759449

`A219836(∑[4*n])`
-/

namespace A395488.P1835279655260759449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219836 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395488.P1835279655260759449

/-! ## A395488.P9671999706224194466

`A395497(A132209(n))`
-/

namespace A395488.P9671999706224194466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395497 (A132209 n).toNat

end

end A395488.P9671999706224194466

/-!
# A395489: Number of gcd-closed subsets of {1,2,...,n}.

The programs for A395489, there is no canonical definition to state claims against.
-/

/-! ## A395489.P11892751156387469336

`A003056(lcm(n, A055634(n))+3^n)`
-/

namespace A395489.P11892751156387469336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lcm (n : ℤ) (A055634 n) + 3 ^ n)

end

end A395489.P11892751156387469336

/-! ## A395489.P17980768695973336583

`A003056(A145268(n)+A002064(n))`
-/

namespace A395489.P17980768695973336583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A145268 n + A002064 n).toNat

end

end A395489.P17980768695973336583

/-! ## A395489.P11339933485299808369

`A134451(A326242(n))+A017992(n)`
-/

namespace A395489.P11339933485299808369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A326242 n).toNat + A017992 n

end

end A395489.P11339933485299808369

/-! ## A395489.P364166096515343914

`A003056(A271269(n+1)+A215512(n))`
-/

namespace A395489.P364166096515343914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A271269 (n + 1) + A215512 n).toNat

end

end A395489.P364166096515343914

/-! ## A395489.P17268642161612102686

`A303975(A248772(n+1))+A017992(n)`
-/

namespace A395489.P17268642161612102686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A248772 (n + 1)).toNat + A017992 n

end

end A395489.P17268642161612102686

/-!
# A395490: Triangle read by rows: coefficients of reciprocal polynomials refining A367255.

The programs for A395490, there is no canonical definition to state claims against.
-/

/-! ## A395490.P15522661885734961431

`and(A006003(A089581(n+1)), A262307(n+1))`
-/

namespace A395490.P15522661885734961431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006003 (A089581 (n + 1)).toNat) (A262307 (n + 1))

end

end A395490.P15522661885734961431

/-!
# A395491: a(n) = tau(n) + (n-1) * Sum_{p|n, p prime} [gcd(p,n/p) = 1], where [ ] is the Iverson bracket.

The programs for A395491, the canonical program `A395491.P9780452655082946417` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395491 has offset 1).

The definition of A395491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395491.P9780452655082946417

`A000005(n+1)+n*A056169(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A395491

/-- `A000005(n+1)+n*A056169(n+1)` -/
def P9780452655082946417.Spec : Prop :=
  ∀ n, P9780452655082946417.a n = A395491 (n + 1)

theorem P9780452655082946417.correct : P9780452655082946417.Spec := by
  intro n
  simp only [A395491, Nat.add_sub_cancel]

end A395491

/-! ## A395491.P10821534147806930357

`A000005(n+1)+A056169(n+1)*n`
-/

namespace A395491.P10821534147806930357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A056169 (n + 1) * (n : ℤ)

end

end A395491.P10821534147806930357

namespace A395491

/-- `A000005(n+1)+A056169(n+1)*n` -/
def P10821534147806930357.Spec : Prop :=
  ∀ n, P10821534147806930357.a n = A395491 (n + 1)

theorem P10821534147806930357.correct : P10821534147806930357.Spec := by
  intro n
  simp only [A395491, Nat.add_sub_cancel, A395491.P10821534147806930357.a, A395491.P9780452655082946417.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A395491

/-! ## A395491.P16918945187190493855

`A000005(n+1)+A038040(n+1)-A394470(n+1)`
-/

namespace A395491.P16918945187190493855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A038040 (n + 1) - A394470 (n + 1))

end

end A395491.P16918945187190493855

namespace A395491

/-- `A000005(n+1)+A038040(n+1)-A394470(n+1)` -/
def P16918945187190493855.Spec : Prop :=
  ∀ n, P16918945187190493855.a n = A395491 (n + 1)

theorem P16918945187190493855.correct : P16918945187190493855.Spec := by
  intro n
  simp only [A395491, Nat.add_sub_cancel, A395491.P16918945187190493855.a, A395491.P9780452655082946417.a, A000005, A000005.P16091521709108585461.a, A038040, A038040.P16512896840577774730.a, A056169, A056169.P17430176249366647977.a, A394470, A394470.P12281335905416762997.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A055231, A055231.P8962300905713718501.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A071773, A071773.P10551485978970375506.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A395491

/-!
# A395495: Minimum number of cells in a connected polyomino on the square grid that contains every fixed n-omino as a translated subregion.

The programs for A395495, there is no canonical definition to state claims against.
-/

/-! ## A395495.P11600102165382375278

`fp[log2(round(cosh(sqrt(n))))]`
-/

namespace A395495.P11600102165382375278
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (SequenceMachineLib.roundAway (Real.cosh (Real.sqrt (n : ℝ))) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0

end

end A395495.P11600102165382375278

/-! ## A395495.P18031839332550302915

`∑[char[C(3, n)]+n]`
-/

namespace A395495.P18031839332550302915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395495.P18031839332550302915

/-! ## A395495.P413437918813846705

`∑[ceil(cos(∑[n])+n)]`
-/

namespace A395495.P413437918813846705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ) + (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395495.P413437918813846705

/-!
# A395496: a(n) = Sum_{d|n} gcd(d,n/d)*mu(d).

The programs for A395496, the canonical program `A395496.P12958945364925833898` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395496 has offset 1).

The definition of A395496 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, gcd(#, (n+1)/#)*A008683(#)]` (program `A395496.P12958945364925833898`, by `A395496.P12958945364925833898.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395496.P12958945364925833898

`∑{d}[n+1, gcd(#, (n+1)/#)*A008683(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395496

/-- `∑{d}[n+1, gcd(#, (n+1)/#)*A008683(#)]` -/
def P12958945364925833898.Spec : Prop :=
  ∀ n, P12958945364925833898.a n = A395496 (n + 1)

theorem P12958945364925833898.correct : P12958945364925833898.Spec := by
  intro n
  simp only [A395496, Nat.add_sub_cancel]

end A395496

/-! ## A395496.P8533633775655367666

`∏{e}[n+1, ((-1)^#)%#]²*∏{p}[n+1, 1-#]`
-/

namespace A395496.P8533633775655367666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Int.tmod ((-1) ^ Nat.factorization (f1 n) p) (Nat.factorization (f1 n) p : ℤ)) ^ 2 * (∏ p ∈ Nat.primeFactors (f2 n), (1 - (p : ℤ)))

end

end A395496.P8533633775655367666

namespace A395496

/-- `∏{e}[n+1, ((-1)^#)%#]²*∏{p}[n+1, 1-#]` -/
def P8533633775655367666.Spec : Prop :=
  ∀ n, P8533633775655367666.a n = A395496 (n + 1)

end A395496

/-! ## A395496.P14188363888782022020

`∏{p}[n+1, 1-#]*A112526(n+1)`
-/

namespace A395496.P14188363888782022020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) * A112526 (n + 1)

end

end A395496.P14188363888782022020

namespace A395496

/-- `∏{p}[n+1, 1-#]*A112526(n+1)` -/
def P14188363888782022020.Spec : Prop :=
  ∀ n, P14188363888782022020.a n = A395496 (n + 1)

end A395496

/-! ## A395496.P5562427811114877042

`∏{p}[n+1, 1-#]*A010052(∏{p}[n+1, lcm(n+1, #²)/(n+1)])`
-/

namespace A395496.P5562427811114877042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) * A010052 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ))).toNat

end

end A395496.P5562427811114877042

namespace A395496

/-- `∏{p}[n+1, 1-#]*A010052(∏{p}[n+1, lcm(n+1, #²)/(n+1)])` -/
def P5562427811114877042.Spec : Prop :=
  ∀ n, P5562427811114877042.a n = A395496 (n + 1)

end A395496

/-! ## A395496.P17422629816133954885

`∏{p}[n+1, 1-#]%A000533(∏{p}[n+1, #-1]*∏{e}[n+1, #-1])`
-/

namespace A395496.P17422629816133954885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) (A000533 ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)) * (∏ p ∈ Nat.primeFactors (f3 n), ((Nat.factorization (f3 n) p : ℤ) - 1))).toNat)

end

end A395496.P17422629816133954885

namespace A395496

/-- `∏{p}[n+1, 1-#]%A000533(∏{p}[n+1, #-1]*∏{e}[n+1, #-1])` -/
def P17422629816133954885.Spec : Prop :=
  ∀ n, P17422629816133954885.a n = A395496 (n + 1)

end A395496

/-! ## A395496.P3662284544009875402

`A023900(n+1)*A112526(n+1)`
-/

namespace A395496.P3662284544009875402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) * A112526 (n + 1)

end

end A395496.P3662284544009875402

namespace A395496

/-- `A023900(n+1)*A112526(n+1)` -/
def P3662284544009875402.Spec : Prop :=
  ∀ n, P3662284544009875402.a n = A395496 (n + 1)

end A395496

/-! ## A395496.P5068770332858437985

`A173557(n+1)*A355683(n+1)`
-/

namespace A395496.P5068770332858437985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A355683 (n + 1)

end

end A395496.P5068770332858437985

namespace A395496

/-- `A173557(n+1)*A355683(n+1)` -/
def P5068770332858437985.Spec : Prop :=
  ∀ n, P5068770332858437985.a n = A395496 (n + 1)

end A395496

/-! ## A395496.P16831285392776710625

`A322351(n+1)*A355683(n+1)`
-/

namespace A395496.P16831285392776710625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322351 (n + 1) * A355683 (n + 1)

end

end A395496.P16831285392776710625

namespace A395496

/-- `A322351(n+1)*A355683(n+1)` -/
def P16831285392776710625.Spec : Prop :=
  ∀ n, P16831285392776710625.a n = A395496 (n + 1)

end A395496

/-! ## A395496.P1712934097236970748

`∑{d}[n+1, A055615(#)*A055653((n+1)/#)]`
-/

namespace A395496.P1712934097236970748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A055653 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395496.P1712934097236970748

namespace A395496

/-- `∑{d}[n+1, A055615(#)*A055653((n+1)/#)]` -/
def P1712934097236970748.Spec : Prop :=
  ∀ n, P1712934097236970748.a n = A395496 (n + 1)

end A395496

/-! ## A395496.P16350726418609281863

`∑{d}[n+1, A023900(#)*A114810((n+1)/#)]`
-/

namespace A395496.P16350726418609281863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A114810 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395496.P16350726418609281863

namespace A395496

/-- `∑{d}[n+1, A023900(#)*A114810((n+1)/#)]` -/
def P16350726418609281863.Spec : Prop :=
  ∀ n, P16350726418609281863.a n = A395496 (n + 1)

end A395496

/-! ## A395496.P12059649484914620628

`∑{d}[n+1, A046692(#)*A360522((n+1)/#)]`
-/

namespace A395496.P12059649484914620628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A360522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395496.P12059649484914620628

namespace A395496

/-- `∑{d}[n+1, A046692(#)*A360522((n+1)/#)]` -/
def P12059649484914620628.Spec : Prop :=
  ∀ n, P12059649484914620628.a n = A395496 (n + 1)

end A395496

/-!
# A395498: Number of derangements of [n] with 2 ascents.

The programs for A395498, the canonical program `A395498.P17645667045044706284` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395498 has offset 0).

The definition of A395498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395498.P17645667045044706284

`ogf((4x^4-4x^5+4x^6-12x^7)/(1-7x+13x^2+9x^3-45x^4+15x^5+47x^6-29x^7-16x^8+12x^9))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395498

/-- `ogf((4x^4-4x^5+4x^6-12x^7)/(1-7x+13x^2+9x^3-45x^4+15x^5+47x^6-29x^7-16x^8+12x^9))` -/
def P17645667045044706284.Spec : Prop :=
  ∀ n, P17645667045044706284.a n = A395498 n

theorem P17645667045044706284.correct : P17645667045044706284.Spec := by
  intro n
  simp only [A395498]

end A395498

/-! ## A395498.P460555121257733710

`A219836(lt[A049213(n+4), 24])`
-/

namespace A395498.P460555121257733710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049213 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219836 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A395498.P460555121257733710

namespace A395498

/-- `A219836(lt[A049213(n+4), 24])` -/
def P460555121257733710.Spec : Prop :=
  ∀ n, P460555121257733710.a n = A395498 n

end A395498

/-! ## A395498.P13959163556192206807

`A002262(A373518(n))*A180132(n)`
-/

namespace A395498.P13959163556192206807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A373518 n).toNat * A180132 n

end

end A395498.P13959163556192206807

namespace A395498

/-- `A002262(A373518(n))*A180132(n)` -/
def P13959163556192206807.Spec : Prop :=
  ∀ n, P13959163556192206807.a n = A395498 n

end A395498

/-! ## A395498.P13084825792073632842

`A023197(A183200(n+1))%A326293(n)`
-/

namespace A395498.P13084825792073632842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023197 (A183200 (n + 1)).toNat) (A326293 n)

end

end A395498.P13084825792073632842

namespace A395498

/-- `A023197(A183200(n+1))%A326293(n)` -/
def P13084825792073632842.Spec : Prop :=
  ∀ n, P13084825792073632842.a n = A395498 n

end A395498

/-!
# A395499: Number of derangements of [n] with 3 ascents.

The programs for A395499, there is no canonical definition to state claims against.
-/

/-! ## A395499.P5408193215902176667

`A219836(A064866(n+1)+∑[n])`
-/

namespace A395499.P5408193215902176667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219836 (A064866 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A395499.P5408193215902176667

/-! ## A395499.P5936816355848144049

`A395497(A350660(n+2))%A394862(n)`
-/

namespace A395499.P5936816355848144049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A395497 (A350660 (n + 2)).toNat) (A394862 n)

end

end A395499.P5936816355848144049

/-! ## A395499.P4949783827188504549

`A395497(A046691(n+2)-A046642(2*n+3))`
-/

namespace A395499.P4949783827188504549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395497 (A046691 (n + 2) - A046642 (2 * n + 3)).toNat

end

end A395499.P4949783827188504549

/-! ## A395499.P3353554935195881461

`and(∑[A326293(n)], A395482(n))`
-/

namespace A395499.P3353554935195881461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A395482 n)

end

end A395499.P3353554935195881461

