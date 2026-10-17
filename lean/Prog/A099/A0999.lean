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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B003.C005
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
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A099900: XOR difference triangle, read by rows, of A099901 (in leftmost column) such that the main diagonal equals A099901 shift left and divided by 2.

The programs for A099900, there is no canonical definition to state claims against.
-/

/-! ## A099900.P934636724312054607

`A059261(A099897(n))`
-/

namespace A099900.P934636724312054607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A099897 n).toNat

end

end A099900.P934636724312054607

/-! ## A099900.P7249131078052113825

`A059253(2*A099897(n))`
-/

namespace A099900.P7249131078052113825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (2 * A099897 n).toNat

end

end A099900.P7249131078052113825

/-! ## A099900.P13358151971930258721

`A292372(2*A099897(n))`
-/

namespace A099900.P13358151971930258721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (2 * A099897 n).toNat

end

end A099900.P13358151971930258721

/-! ## A099900.P13760892187002365269

`A059905(A099897(n)+2)`
-/

namespace A099900.P13760892187002365269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A099897 n + 2).toNat

end

end A099900.P13760892187002365269

/-! ## A099900.P15830228286349000048

`A059905(or(2, A099897(n)))`
-/

namespace A099900.P15830228286349000048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (Int.lor 2 (A099897 n)).toNat

end

end A099900.P15830228286349000048

/-!
# A099901: Shifts left and divides by 2 under the XOR BINOMIAL transform (A099902).

The programs for A099901, the canonical program `A099901.P3755705259781587913` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099901 has offset 0).

The definition of A099901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099901.P3755705259781587913

`xor(4*a(n-2), a(n-1))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099901

/-- `xor(4*a(n-2), a(n-1))` -/
def P3755705259781587913.Spec : Prop :=
  ∀ n, (P3755705259781587913.a n : ℤ) = A099901 n

theorem P3755705259781587913.correct : P3755705259781587913.Spec := by
  intro n
  simp only [A099901]

end A099901

/-! ## A099901.P6844267980373925271

`xor(a(n-2)/(1/2)², a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A099901.P6844267980373925271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 2) : ℚ) / ((1 : ℚ) / 2) ^ 2)) (a (n - 1))

end

end A099901.P6844267980373925271

namespace A099901

/-- `xor(a(n-2)/(1/2)², a(n-1))` -/
def P6844267980373925271.Spec : Prop :=
  ∀ n, P6844267980373925271.a n = A099901 n

end A099901

/-! ## A099901.P3807359306763096924

`record[xor(a(n-2)+a(n-2), a(n-1))]` with `a(0)=1, a(1)=0`
-/

namespace A099901.P3807359306763096924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Nat.xor (f1 (n - 2) + f1 (n - 2)) (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099901.P3807359306763096924

namespace A099901

/-- `record[xor(a(n-2)+a(n-2), a(n-1))]` -/
def P3807359306763096924.Spec : Prop :=
  ∀ n, (P3807359306763096924.a n : ℤ) = A099901 n

end A099901

/-! ## A099901.P5443933304499669169

`xor(A099902(n), A101625(n))`
-/

namespace A099901.P5443933304499669169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A099902 n) (A101625 n)

end

end A099901.P5443933304499669169

namespace A099901

/-- `xor(A099902(n), A101625(n))` -/
def P5443933304499669169.Spec : Prop :=
  ∀ n, P5443933304499669169.a n = A099901 n

end A099901

/-! ## A099901.P2978703672279610377

`xor(a(n-2)²-(a(n-2)+2)², -a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A099901.P2978703672279610377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor (a (n - 2) ^ 2 - (a (n - 2) + 2) ^ 2) (-a (n - 1))

end

end A099901.P2978703672279610377

namespace A099901

/-- `xor(a(n-2)²-(a(n-2)+2)², -a(n-1))` -/
def P2978703672279610377.Spec : Prop :=
  ∀ n, P2978703672279610377.a n = A099901 n

end A099901

/-!
# A099902: Multiplies by 2 and shifts right under the XOR BINOMIAL transform (A099901).

The programs for A099902, the canonical program `A099902.P4657844578481934341` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099902 has offset 0).

The definition of A099902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099902.P4657844578481934341

`xor(4*a(n-2), a(n-1))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099902

/-- `xor(4*a(n-2), a(n-1))` -/
def P4657844578481934341.Spec : Prop :=
  ∀ n, (P4657844578481934341.a n : ℤ) = A099902 n

theorem P4657844578481934341.correct : P4657844578481934341.Spec := by
  intro n
  simp only [A099902]

end A099902

/-! ## A099902.P3407577680181257689

`xor(lcm(4, a(n-2)), a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A099902.P3407577680181257689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor (Nat.lcm 4 (a (n - 2))) (a (n - 1))

end

end A099902.P3407577680181257689

namespace A099902

/-- `xor(lcm(4, a(n-2)), a(n-1))` -/
def P3407577680181257689.Spec : Prop :=
  ∀ n, (P3407577680181257689.a n : ℤ) = A099902 n

end A099902

/-! ## A099902.P6453861921985088144

`record[A101624(n)]`
-/

namespace A099902.P6453861921985088144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099902.P6453861921985088144

namespace A099902

/-- `record[A101624(n)]` -/
def P6453861921985088144.Spec : Prop :=
  ∀ n, P6453861921985088144.a n = A099902 n

end A099902

/-! ## A099902.P2068655492718073413

`A101624(2*n)`
-/

namespace A099902.P2068655492718073413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101624 (2 * n)

end

end A099902.P2068655492718073413

namespace A099902

/-- `A101624(2*n)` -/
def P2068655492718073413.Spec : Prop :=
  ∀ n, P2068655492718073413.a n = A099902 n

end A099902

/-! ## A099902.P2514629684455494769

`xor(A099901(n), A101625(n))`
-/

namespace A099902.P2514629684455494769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A099901 n) (A101625 n)

end

end A099902.P2514629684455494769

namespace A099902

/-- `xor(A099901(n), A101625(n))` -/
def P2514629684455494769.Spec : Prop :=
  ∀ n, P2514629684455494769.a n = A099902 n

end A099902

/-! ## A099902.P8730462237821021731

`A101625(n+1)+2*A101625(n)`
-/

namespace A099902.P8730462237821021731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101625 (n + 1) + 2 * A101625 n

end

end A099902.P8730462237821021731

namespace A099902

/-- `A101625(n+1)+2*A101625(n)` -/
def P8730462237821021731.Spec : Prop :=
  ∀ n, P8730462237821021731.a n = A099902 n

end A099902

/-! ## A099902.P12791825597713199502

`A099901(n+1)/2`
-/

namespace A099902.P12791825597713199502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099901 (n + 1) : ℚ) / 2

end

end A099902.P12791825597713199502

namespace A099902

/-- `A099901(n+1)/2` -/
def P12791825597713199502.Spec : Prop :=
  ∀ n, P12791825597713199502.a n = (A099902 n : ℚ)

end A099902

/-! ## A099902.P3542666462823341163

`record[A260534(∑[n+3])]`
-/

namespace A099902.P3542666462823341163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260534 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099902.P3542666462823341163

namespace A099902

/-- `record[A260534(∑[n+3])]` -/
def P3542666462823341163.Spec : Prop :=
  ∀ n, P3542666462823341163.a n = A099902 n

end A099902

/-! ## A099902.P10911070001239964261

`A260534((n+3)*Δ[n²])`
-/

namespace A099902.P10911070001239964261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260534 ((n + 3 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A099902.P10911070001239964261

namespace A099902

/-- `A260534((n+3)*Δ[n²])` -/
def P10911070001239964261.Spec : Prop :=
  ∀ n, P10911070001239964261.a n = A099902 n

end A099902

/-!
# A099903: Sum of all matrix elements of n X n matrix M(i,j) = i^3+j^3, (i,j = 1..n). a(n) = n^3*(n+1)^2/2.

The programs for A099903, the canonical program `A099903.P8494270624001861453` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099903 has offset 1).

The definition of A099903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099903.P8494270624001861453

`2*(n+1)*∑[n+1]²`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099903

/-- `2*(n+1)*∑[n+1]²` -/
def P8494270624001861453.Spec : Prop :=
  ∀ n, (P8494270624001861453.a n : ℤ) = A099903 (n + 1)

theorem P8494270624001861453.correct : P8494270624001861453.Spec := by
  intro n
  simp only [A099903, Nat.add_sub_cancel]

end A099903

/-! ## A099903.P11318447108527130814

`lcm((n+2)², (n+1)^3)/2`
-/

namespace A099903.P11318447108527130814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm ((n + 2) ^ 2) ((n + 1) ^ 3) : ℚ) / 2

end

end A099903.P11318447108527130814

namespace A099903

/-- `lcm((n+2)², (n+1)^3)/2` -/
def P11318447108527130814.Spec : Prop :=
  ∀ n, P11318447108527130814.a n = (A099903 (n + 1) : ℚ)

end A099903

/-! ## A099903.P1471486454877957675

`abs((Δ[n²]+1)*C(n+2, 2)²)`
-/

namespace A099903.P1471486454877957675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) * (Nat.choose (n + 2) 2 ^ 2 : ℤ)|

end

end A099903.P1471486454877957675

namespace A099903

/-- `abs((Δ[n²]+1)*C(n+2, 2)²)` -/
def P1471486454877957675.Spec : Prop :=
  ∀ n, P1471486454877957675.a n = A099903 (n + 1)

end A099903

/-! ## A099903.P5879624661236815582

`(n+1)*lcm(n+1, n+2)²/2`
-/

namespace A099903.P5879624661236815582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.lcm (n + 1) (n + 2) ^ 2 : ℚ) / 2

end

end A099903.P5879624661236815582

namespace A099903

/-- `(n+1)*lcm(n+1, n+2)²/2` -/
def P5879624661236815582.Spec : Prop :=
  ∀ n, P5879624661236815582.a n = (A099903 (n + 1) : ℚ)

end A099903

/-! ## A099903.P7905710963878888340

`(n+1)²*C((n+2)², 2)/(n+3)`
-/

namespace A099903.P7905710963878888340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 * Nat.choose ((n + 2) ^ 2) 2 : ℚ) / (n + 3 : ℚ)

end

end A099903.P7905710963878888340

namespace A099903

/-- `(n+1)²*C((n+2)², 2)/(n+3)` -/
def P7905710963878888340.Spec : Prop :=
  ∀ n, P7905710963878888340.a n = (A099903 (n + 1) : ℚ)

end A099903

/-! ## A099903.P18134720041808841418

`∑[∑[a(n-1)+3]]/(n+1)^(-2)` with `a(0)=2`
-/

namespace A099903.P18134720041808841418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-2 : ℤ)

end

end A099903.P18134720041808841418

namespace A099903

/-- `∑[∑[a(n-1)+3]]/(n+1)^(-2)` -/
def P18134720041808841418.Spec : Prop :=
  ∀ n, P18134720041808841418.a n = (A099903 (n + 1) : ℚ)

end A099903

/-! ## A099903.P16792802237727783859

`lcm(2, (n+2)*∑[2*n+1]*∑[n+1])`
-/

namespace A099903.P16792802237727783859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n + 2) * ((∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)))

end

end A099903.P16792802237727783859

namespace A099903

/-- `lcm(2, (n+2)*∑[2*n+1]*∑[n+1])` -/
def P16792802237727783859.Spec : Prop :=
  ∀ n, (P16792802237727783859.a n : ℤ) = A099903 (n + 1)

end A099903

/-! ## A099903.P2568696260774002105

`(n+2)*A179824(n+2)/2`
-/

namespace A099903.P2568696260774002105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A179824 (n + 2) : ℚ) / 2

end

end A099903.P2568696260774002105

namespace A099903

/-- `(n+2)*A179824(n+2)/2` -/
def P2568696260774002105.Spec : Prop :=
  ∀ n, P2568696260774002105.a n = (A099903 (n + 1) : ℚ)

end A099903

/-! ## A099903.P2650424100884498042

`2*((n+1)*A000217(n+1)²-1)+2`
-/

namespace A099903.P2650424100884498042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A000217 (n + 1) ^ 2 - 1) + 2

end

end A099903.P2650424100884498042

namespace A099903

/-- `2*((n+1)*A000217(n+1)²-1)+2` -/
def P2650424100884498042.Spec : Prop :=
  ∀ n, P2650424100884498042.a n = A099903 (n + 1)

end A099903

/-! ## A099903.P13835690931293213206

`A000217(n+1)+A000217(n+1)*A003777(n+1)`
-/

namespace A099903.P13835690931293213206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000217 (n + 1) * A003777 (n + 1)

end

end A099903.P13835690931293213206

namespace A099903

/-- `A000217(n+1)+A000217(n+1)*A003777(n+1)` -/
def P13835690931293213206.Spec : Prop :=
  ∀ n, P13835690931293213206.a n = A099903 (n + 1)

end A099903

/-! ## A099903.P1060758534779277110

`A163274(n+1)/(n+1)`
-/

namespace A099903.P1060758534779277110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163274 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A099903.P1060758534779277110

namespace A099903

/-- `A163274(n+1)/(n+1)` -/
def P1060758534779277110.Spec : Prop :=
  ∀ n, P1060758534779277110.a n = (A099903 (n + 1) : ℚ)

end A099903

/-! ## A099903.P16004725592289379356

`∑[2*Δ[n*A000537(n)]]`
-/

namespace A099903.P16004725592289379356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000537 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099903.P16004725592289379356

namespace A099903

/-- `∑[2*Δ[n*A000537(n)]]` -/
def P16004725592289379356.Spec : Prop :=
  ∀ n, P16004725592289379356.a n = A099903 (n + 1)

end A099903

/-! ## A099903.P3168038640090100506

`A163275(n+1)/(n+1)²`
-/

namespace A099903.P3168038640090100506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163275 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A099903.P3168038640090100506

namespace A099903

/-- `A163275(n+1)/(n+1)²` -/
def P3168038640090100506.Spec : Prop :=
  ∀ n, P3168038640090100506.a n = (A099903 (n + 1) : ℚ)

end A099903

/-! ## A099903.P10182035902684801806

`A060459(n+1)/(2*(n+2))`
-/

namespace A099903.P10182035902684801806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060459 (n + 1) : ℚ) / (2 * (n + 2) : ℚ)

end

end A099903.P10182035902684801806

namespace A099903

/-- `A060459(n+1)/(2*(n+2))` -/
def P10182035902684801806.Spec : Prop :=
  ∀ n, P10182035902684801806.a n = (A099903 (n + 1) : ℚ)

end A099903

/-! ## A099903.P14399577815818115727

`A163276(n+1)/(n+1)^3`
-/

namespace A099903.P14399577815818115727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163276 (n + 1) : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A099903.P14399577815818115727

namespace A099903

/-- `A163276(n+1)/(n+1)^3` -/
def P14399577815818115727.Spec : Prop :=
  ∀ n, P14399577815818115727.a n = (A099903 (n + 1) : ℚ)

end A099903

/-! ## A099903.P4143874088842228902

`A168178(n+1)+(n+1)²²`
-/

namespace A099903.P4143874088842228902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 (n + 1) + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A099903.P4143874088842228902

namespace A099903

/-- `A168178(n+1)+(n+1)²²` -/
def P4143874088842228902.Spec : Prop :=
  ∀ n, P4143874088842228902.a n = A099903 (n + 1)

end A099903

/-! ## A099903.P6373558842862210072

`A163277(n+1)/(n+1)²²`
-/

namespace A099903.P6373558842862210072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163277 (n + 1) : ℚ) / (((n + 1) ^ 2) ^ 2 : ℚ)

end

end A099903.P6373558842862210072

namespace A099903

/-- `A163277(n+1)/(n+1)²²` -/
def P6373558842862210072.Spec : Prop :=
  ∀ n, P6373558842862210072.a n = (A099903 (n + 1) : ℚ)

end A099903

/-! ## A099903.P3238548484234922618

`2*((n+1)*A000537(n+1)+1)-2`
-/

namespace A099903.P3238548484234922618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A000537 (n + 1) + 1) - 2

end

end A099903.P3238548484234922618

namespace A099903

/-- `2*((n+1)*A000537(n+1)+1)-2` -/
def P3238548484234922618.Spec : Prop :=
  ∀ n, P3238548484234922618.a n = A099903 (n + 1)

end A099903

/-! ## A099903.P8048647785410781513

`A213556(n+1)+A000538(n+1)`
-/

namespace A099903.P8048647785410781513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213556 (n + 1) + A000538 (n + 1)

end

end A099903.P8048647785410781513

namespace A099903

/-- `A213556(n+1)+A000538(n+1)` -/
def P8048647785410781513.Spec : Prop :=
  ∀ n, P8048647785410781513.a n = A099903 (n + 1)

end A099903

/-! ## A099903.P3411413246684422332

`A011379(n+1)²/A005843(n+1)`
-/

namespace A099903.P3411413246684422332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011379 (n + 1) ^ 2 : ℚ) / (A005843 (n + 1) : ℚ)

end

end A099903.P3411413246684422332

namespace A099903

/-- `A011379(n+1)²/A005843(n+1)` -/
def P3411413246684422332.Spec : Prop :=
  ∀ n, P3411413246684422332.a n = (A099903 (n + 1) : ℚ)

end A099903

/-!
# A099904: Numerator of sum of all matrix elements of N X N matrix M(i,j) = i^3+j^3, (i,j = 1..n) divided by n!.

The programs for A099904, there is no canonical definition to state claims against.
-/

/-! ## A099904.P5780669909393745258

`A001804(n+2)/gcd(A001044(n), A001804(n+2))`
-/

namespace A099904.P5780669909393745258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001804 (n + 2) : ℚ) / (Int.gcd (A001044 n) (A001804 (n + 2)) : ℚ)

end

end A099904.P5780669909393745258

/-! ## A099904.P2384354243485508699

`or(1, n+1)*∑[n+1]*A096810(A001710(n))`
-/

namespace A099904.P2384354243485508699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) * A096810 (A001710 n).toNat

end

end A099904.P2384354243485508699

/-!
# A099905: a(n) = binomial(2n-1, n-1) mod n.

The programs for A099905, the canonical program `A099905.P9802532201216539233` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099905 has offset 1).

The definition of A099905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099905.P1990715639660307610

`A053214(n+1)/2`
-/

namespace A099905.P1990715639660307610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053214 (n + 1) : ℚ) / 2

end

end A099905.P1990715639660307610

namespace A099905

/-- `A053214(n+1)/2` -/
def P1990715639660307610.Spec : Prop :=
  ∀ n, P1990715639660307610.a n = (A099905 (n + 1) : ℚ)

end A099905

/-! ## A099905.P6328770824125544229

`A042970(2*(n+1))/2`
-/

namespace A099905.P6328770824125544229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042970 (2 * (n + 1)) : ℚ) / 2

end

end A099905.P6328770824125544229

namespace A099905

/-- `A042970(2*(n+1))/2` -/
def P6328770824125544229.Spec : Prop :=
  ∀ n, P6328770824125544229.a n = (A099905 (n + 1) : ℚ)

end A099905

/-! ## A099905.P7190373838339547821

`A099906(n+1)%(n+1)`
-/

namespace A099905.P7190373838339547821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099906 (n + 1)) (n + 1 : ℤ)

end

end A099905.P7190373838339547821

namespace A099905

/-- `A099906(n+1)%(n+1)` -/
def P7190373838339547821.Spec : Prop :=
  ∀ n, P7190373838339547821.a n = A099905 (n + 1)

end A099905

/-! ## A099905.P4578031019460079449

`A099907(n+1)%(n+1)`
-/

namespace A099905.P4578031019460079449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099907 (n + 1)) (n + 1 : ℤ)

end

end A099905.P4578031019460079449

namespace A099905

/-- `A099907(n+1)%(n+1)` -/
def P4578031019460079449.Spec : Prop :=
  ∀ n, P4578031019460079449.a n = A099905 (n + 1)

end A099905

/-! ## A099905.P9802532201216539233

`A099908(n+1)%(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099905

/-- `A099908(n+1)%(n+1)` -/
def P9802532201216539233.Spec : Prop :=
  ∀ n, P9802532201216539233.a n = A099905 (n + 1)

theorem P9802532201216539233.correct : P9802532201216539233.Spec := by
  intro n
  simp only [A099905, Nat.add_sub_cancel]

end A099905

/-! ## A099905.P2560215748186516048

`Δ[∑[A053214(n)]/2]`
-/

namespace A099905.P2560215748186516048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099905.P2560215748186516048

namespace A099905

/-- `Δ[∑[A053214(n)]/2]` -/
def P2560215748186516048.Spec : Prop :=
  ∀ n, P2560215748186516048.a n = (A099905 (n + 1) : ℚ)

end A099905

/-! ## A099905.P9338088512154502234

`A001281(A053214(n+1))`
-/

namespace A099905.P9338088512154502234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A053214 (n + 1)).toNat

end

end A099905.P9338088512154502234

namespace A099905

/-- `A001281(A053214(n+1))` -/
def P9338088512154502234.Spec : Prop :=
  ∀ n, P9338088512154502234.a n = A099905 (n + 1)

end A099905

/-! ## A099905.P16144038342790438744

`(1-A000108(n))%(n+1)+n`
-/

namespace A099905.P16144038342790438744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A000108 n) (n + 1 : ℤ) + (n : ℤ)

end

end A099905.P16144038342790438744

namespace A099905

/-- `(1-A000108(n))%(n+1)+n` -/
def P16144038342790438744.Spec : Prop :=
  ∀ n, P16144038342790438744.a n = A099905 (n + 1)

end A099905

/-! ## A099905.P2135443166979877479

`A358585(n+2)%(n+1)`
-/

namespace A099905.P2135443166979877479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358585 (n + 2)) (n + 1 : ℤ)

end

end A099905.P2135443166979877479

namespace A099905

/-- `A358585(n+2)%(n+1)` -/
def P2135443166979877479.Spec : Prop :=
  ∀ n, P2135443166979877479.a n = A099905 (n + 1)

end A099905

/-! ## A099905.P4843390282291120255

`A358586(n+2)%(n+1)`
-/

namespace A099905.P4843390282291120255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358586 (n + 2)) (n + 1 : ℤ)

end

end A099905.P4843390282291120255

namespace A099905

/-- `A358586(n+2)%(n+1)` -/
def P4843390282291120255.Spec : Prop :=
  ∀ n, P4843390282291120255.a n = A099905 (n + 1)

end A099905

/-! ## A099905.P5892534058286639368

`A005807(n)%(n+1)`
-/

namespace A099905.P5892534058286639368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005807 n) (n + 1 : ℤ)

end

end A099905.P5892534058286639368

namespace A099905

/-- `A005807(n)%(n+1)` -/
def P5892534058286639368.Spec : Prop :=
  ∀ n, P5892534058286639368.a n = A099905 (n + 1)

end A099905

/-! ## A099905.P11213887390155561252

`(A000778(n)+1)%(n+1)`
-/

namespace A099905.P11213887390155561252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000778 n + 1) (n + 1 : ℤ)

end

end A099905.P11213887390155561252

namespace A099905

/-- `(A000778(n)+1)%(n+1)` -/
def P11213887390155561252.Spec : Prop :=
  ∀ n, P11213887390155561252.a n = A099905 (n + 1)

end A099905

/-! ## A099905.P3960091884771395286

`A071716(n+1)%(n+1)`
-/

namespace A099905.P3960091884771395286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071716 (n + 1)) (n + 1 : ℤ)

end

end A099905.P3960091884771395286

namespace A099905

/-- `A071716(n+1)%(n+1)` -/
def P3960091884771395286.Spec : Prop :=
  ∀ n, P3960091884771395286.a n = A099905 (n + 1)

end A099905

/-! ## A099905.P16263924876707819525

`A167422(n+1)%(n+1)`
-/

namespace A099905.P16263924876707819525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167422 (n + 1)) (n + 1 : ℤ)

end

end A099905.P16263924876707819525

namespace A099905

/-- `A167422(n+1)%(n+1)` -/
def P16263924876707819525.Spec : Prop :=
  ∀ n, P16263924876707819525.a n = A099905 (n + 1)

end A099905

/-! ## A099905.P4908984037295760460

`A104722(2*n)%(n+1)`
-/

namespace A099905.P4908984037295760460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104722 (2 * n)) (n + 1 : ℤ)

end

end A099905.P4908984037295760460

namespace A099905

/-- `A104722(2*n)%(n+1)` -/
def P4908984037295760460.Spec : Prop :=
  ∀ n, P4908984037295760460.a n = A099905 (n + 1)

end A099905

/-! ## A099905.P16681552356258380111

`record[Δ[Δ[A126120(n)]]]%(n+1)`
-/

namespace A099905.P16681552356258380111
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A099905.P16681552356258380111

namespace A099905

/-- `record[Δ[Δ[A126120(n)]]]%(n+1)` -/
def P16681552356258380111.Spec : Prop :=
  ∀ n, P16681552356258380111.a n = A099905 (n + 1)

end A099905

/-! ## A099905.P16165439795210903170

`A059348(2*(n+1))%(n+1)`
-/

namespace A099905.P16165439795210903170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059348 (2 * (n + 1))) (n + 1 : ℤ)

end

end A099905.P16165439795210903170

namespace A099905

/-- `A059348(2*(n+1))%(n+1)` -/
def P16165439795210903170.Spec : Prop :=
  ∀ n, P16165439795210903170.a n = A099905 (n + 1)

end A099905

/-! ## A099905.P7633792237676226973

`(A000108(n+1)+A000108(n))%(n+1)`
-/

namespace A099905.P7633792237676226973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (n + 1) + A000108 n) (n + 1 : ℤ)

end

end A099905.P7633792237676226973

namespace A099905

/-- `(A000108(n+1)+A000108(n))%(n+1)` -/
def P7633792237676226973.Spec : Prop :=
  ∀ n, P7633792237676226973.a n = A099905 (n + 1)

end A099905

/-! ## A099905.P14688893285784859887

`A001791(n)%(n+1)`
-/

namespace A099905.P14688893285784859887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001791 n) (n + 1 : ℤ)

end

end A099905.P14688893285784859887

namespace A099905

/-- `A001791(n)%(n+1)` -/
def P14688893285784859887.Spec : Prop :=
  ∀ n, P14688893285784859887.a n = A099905 (n + 1)

end A099905

/-! ## A099905.P3456567101002526615

`A037952(2*n)%(n+1)`
-/

namespace A099905.P3456567101002526615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037952 (2 * n)) (n + 1 : ℤ)

end

end A099905.P3456567101002526615

namespace A099905

/-- `A037952(2*n)%(n+1)` -/
def P3456567101002526615.Spec : Prop :=
  ∀ n, P3456567101002526615.a n = A099905 (n + 1)

end A099905

/-!
# A099906: a(n) = binomial(2n-1,n-1) mod n^2.

The programs for A099906, the canonical program `A099906.P10868242903989615005` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099906 has offset 1).

The definition of A099906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099906.P15232913012535424723

`A099907(n+1)%(n+1)²`
-/

namespace A099906.P15232913012535424723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099907 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A099906.P15232913012535424723

namespace A099906

/-- `A099907(n+1)%(n+1)²` -/
def P15232913012535424723.Spec : Prop :=
  ∀ n, P15232913012535424723.a n = A099906 (n + 1)

end A099906

/-! ## A099906.P10868242903989615005

`A099908(n+1)%(n+1)²`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099906

/-- `A099908(n+1)%(n+1)²` -/
def P10868242903989615005.Spec : Prop :=
  ∀ n, P10868242903989615005.a n = A099906 (n + 1)

theorem P10868242903989615005.correct : P10868242903989615005.Spec := by
  intro n
  simp only [A099906, Nat.add_sub_cancel]

end A099906

/-! ## A099906.P17433811310884662588

`(A056615(n+1)+1)%∑[A005408(n)]`
-/

namespace A099906.P17433811310884662588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056615 (n + 1) + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099906.P17433811310884662588

namespace A099906

/-- `(A056615(n+1)+1)%∑[A005408(n)]` -/
def P17433811310884662588.Spec : Prop :=
  ∀ n, P17433811310884662588.a n = A099906 (n + 1)

end A099906

/-! ## A099906.P18096061776761567976

`A195150(A106856(n+1))+A056615(n+1)`
-/

namespace A099906.P18096061776761567976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (A106856 (n + 1)).toNat + A056615 (n + 1)

end

end A099906.P18096061776761567976

namespace A099906

/-- `A195150(A106856(n+1))+A056615(n+1)` -/
def P18096061776761567976.Spec : Prop :=
  ∀ n, P18096061776761567976.a n = A099906 (n + 1)

end A099906

/-! ## A099906.P527996714476741172

`A056615(n+1)+A000035(A019341(n+1))`
-/

namespace A099906.P527996714476741172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056615 (n + 1) + A000035 (A019341 (n + 1)).toNat

end

end A099906.P527996714476741172

namespace A099906

/-- `A056615(n+1)+A000035(A019341(n+1))` -/
def P527996714476741172.Spec : Prop :=
  ∀ n, P527996714476741172.a n = A099906 (n + 1)

end A099906

/-! ## A099906.P10634857426170996651

`A319148(A292586(n+1))+A056615(n+1)`
-/

namespace A099906.P10634857426170996651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319148 (A292586 (n + 1)).toNat + A056615 (n + 1)

end

end A099906.P10634857426170996651

namespace A099906

/-- `A319148(A292586(n+1))+A056615(n+1)` -/
def P10634857426170996651.Spec : Prop :=
  ∀ n, P10634857426170996651.a n = A099906 (n + 1)

end A099906

/-! ## A099906.P9278448629565655407

`A195150(A005384(n+1))+A056615(n+1)`
-/

namespace A099906.P9278448629565655407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (A005384 (n + 1)).toNat + A056615 (n + 1)

end

end A099906.P9278448629565655407

namespace A099906

/-- `A195150(A005384(n+1))+A056615(n+1)` -/
def P9278448629565655407.Spec : Prop :=
  ∀ n, P9278448629565655407.a n = A099906 (n + 1)

end A099906

/-! ## A099906.P6124842281574778230

`A001700(n)%(n+1)²`
-/

namespace A099906.P6124842281574778230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001700 n) ((n + 1) ^ 2 : ℤ)

end

end A099906.P6124842281574778230

namespace A099906

/-- `A001700(n)%(n+1)²` -/
def P6124842281574778230.Spec : Prop :=
  ∀ n, P6124842281574778230.a n = A099906 (n + 1)

end A099906

/-! ## A099906.P16384890373430010506

`Δ[A024718(n)]%(n+1)²`
-/

namespace A099906.P16384890373430010506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((n + 1) ^ 2 : ℤ)

end

end A099906.P16384890373430010506

namespace A099906

/-- `Δ[A024718(n)]%(n+1)²` -/
def P16384890373430010506.Spec : Prop :=
  ∀ n, P16384890373430010506.a n = A099906 (n + 1)

end A099906

/-! ## A099906.P3159360899851694684

`A088218(n+1)%(n+1)²`
-/

namespace A099906.P3159360899851694684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A099906.P3159360899851694684

namespace A099906

/-- `A088218(n+1)%(n+1)²` -/
def P3159360899851694684.Spec : Prop :=
  ∀ n, P3159360899851694684.a n = A099906 (n + 1)

end A099906

/-! ## A099906.P10156939633725782976

`A001405(2*n+1)%(n+1)²`
-/

namespace A099906.P10156939633725782976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001405 (2 * n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A099906.P10156939633725782976

namespace A099906

/-- `A001405(2*n+1)%(n+1)²` -/
def P10156939633725782976.Spec : Prop :=
  ∀ n, P10156939633725782976.a n = A099906 (n + 1)

end A099906

/-! ## A099906.P17674877836554979062

`(A000984(n+1)/2)%(n+1)²`
-/

namespace A099906.P17674877836554979062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000984 (n + 1) : ℚ) / 2)) ((n + 1) ^ 2 : ℤ)

end

end A099906.P17674877836554979062

namespace A099906

/-- `(A000984(n+1)/2)%(n+1)²` -/
def P17674877836554979062.Spec : Prop :=
  ∀ n, P17674877836554979062.a n = A099906 (n + 1)

end A099906

/-! ## A099906.P477882499458783243

`(Δ[n²]*A000108(n))%(n+1)²`
-/

namespace A099906.P477882499458783243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000108 n) ((n + 1) ^ 2 : ℤ)

end

end A099906.P477882499458783243

namespace A099906

/-- `(Δ[n²]*A000108(n))%(n+1)²` -/
def P477882499458783243.Spec : Prop :=
  ∀ n, P477882499458783243.a n = A099906 (n + 1)

end A099906

/-! ## A099906.P1839152868773484588

`((2*n+1)*(A158499(n)-Δ[A158499(n)]))%(n+1)²`
-/

namespace A099906.P1839152868773484588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n + 1 : ℤ) * (A158499 n - (f1 (n + 1) - f1 n))) ((n + 1) ^ 2 : ℤ)

end

end A099906.P1839152868773484588

namespace A099906

/-- `((2*n+1)*(A158499(n)-Δ[A158499(n)]))%(n+1)²` -/
def P1839152868773484588.Spec : Prop :=
  ∀ n, P1839152868773484588.a n = A099906 (n + 1)

end A099906

/-! ## A099906.P18179172594410191406

`C(comp[2*n], n)%(n+1)²`
-/

namespace A099906.P18179172594410191406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) n % (n + 1) ^ 2

end

end A099906.P18179172594410191406

namespace A099906

/-- `C(comp[2*n], n)%(n+1)²` -/
def P18179172594410191406.Spec : Prop :=
  ∀ n, (P18179172594410191406.a n : ℤ) = A099906 (n + 1)

end A099906

/-! ## A099906.P3819888381473772109

`A056615(n+1)-A057428(A056615(n+1)+n)`
-/

namespace A099906.P3819888381473772109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056615 (n + 1) - A057428 (A056615 (n + 1) + (n : ℤ)).toNat

end

end A099906.P3819888381473772109

namespace A099906

/-- `A056615(n+1)-A057428(A056615(n+1)+n)` -/
def P3819888381473772109.Spec : Prop :=
  ∀ n, P3819888381473772109.a n = A099906 (n + 1)

end A099906

/-! ## A099906.P7253023384890754922

`A057427(n²)+A056615(n+1)`
-/

namespace A099906.P7253023384890754922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n ^ 2) + A056615 (n + 1)

end

end A099906.P7253023384890754922

namespace A099906

/-- `A057427(n²)+A056615(n+1)` -/
def P7253023384890754922.Spec : Prop :=
  ∀ n, P7253023384890754922.a n = A099906 (n + 1)

end A099906

/-! ## A099906.P1125581842138934230

`A056615(n+1)+A057428(n²)²`
-/

namespace A099906.P1125581842138934230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056615 (n + 1) + A057428 (n ^ 2) ^ 2

end

end A099906.P1125581842138934230

namespace A099906

/-- `A056615(n+1)+A057428(n²)²` -/
def P1125581842138934230.Spec : Prop :=
  ∀ n, P1125581842138934230.a n = A099906 (n + 1)

end A099906

/-!
# A099907: a(n) = C(2n-1,n-1) mod n^3.

The programs for A099907, the canonical program `A099907.P4616687458396139228` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099907 has offset 1).

The definition of A099907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099907.P4616687458396139228

`A099908(n+1)%∑[A003215(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099907

/-- `A099908(n+1)%∑[A003215(n)]` -/
def P4616687458396139228.Spec : Prop :=
  ∀ n, P4616687458396139228.a n = A099907 (n + 1)

theorem P4616687458396139228.correct : P4616687458396139228.Spec := by
  intro n
  simp only [A099907, Nat.add_sub_cancel]

end A099907

/-! ## A099907.P1090304646729071798

`A001700(n)%Δ[∑[n]²]`
-/

namespace A099907.P1090304646729071798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001700 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A099907.P1090304646729071798

namespace A099907

/-- `A001700(n)%Δ[∑[n]²]` -/
def P1090304646729071798.Spec : Prop :=
  ∀ n, P1090304646729071798.a n = A099907 (n + 1)

end A099907

/-! ## A099907.P1264936016966513497

`Δ[A024718(n)]%((n+1)^3)`
-/

namespace A099907.P1264936016966513497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((n + 1) ^ 3 : ℤ)

end

end A099907.P1264936016966513497

namespace A099907

/-- `Δ[A024718(n)]%((n+1)^3)` -/
def P1264936016966513497.Spec : Prop :=
  ∀ n, P1264936016966513497.a n = A099907 (n + 1)

end A099907

/-! ## A099907.P17926794912429385005

`A088218(n+1)%((n+1)^3)`
-/

namespace A099907.P17926794912429385005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 (n + 1)) ((n + 1) ^ 3 : ℤ)

end

end A099907.P17926794912429385005

namespace A099907

/-- `A088218(n+1)%((n+1)^3)` -/
def P17926794912429385005.Spec : Prop :=
  ∀ n, P17926794912429385005.a n = A099907 (n + 1)

end A099907

/-! ## A099907.P11584093823197612329

`(A000984(n+1)/2)%((n+1)^3)`
-/

namespace A099907.P11584093823197612329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000984 (n + 1) : ℚ) / 2)) ((n + 1) ^ 3 : ℤ)

end

end A099907.P11584093823197612329

namespace A099907

/-- `(A000984(n+1)/2)%((n+1)^3)` -/
def P11584093823197612329.Spec : Prop :=
  ∀ n, P11584093823197612329.a n = A099907 (n + 1)

end A099907

/-! ## A099907.P2654458539416109080

`(A000108(n)*comp[2*n])%((n+1)^3)`
-/

namespace A099907.P2654458539416109080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 n * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ((n + 1) ^ 3 : ℤ)

end

end A099907.P2654458539416109080

namespace A099907

/-- `(A000108(n)*comp[2*n])%((n+1)^3)` -/
def P2654458539416109080.Spec : Prop :=
  ∀ n, P2654458539416109080.a n = A099907 (n + 1)

end A099907

/-! ## A099907.P5025918392201145746

`C(2*n+1, n)%((n+1)^3)`
-/

namespace A099907.P5025918392201145746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) n % (n + 1) ^ 3

end

end A099907.P5025918392201145746

namespace A099907

/-- `C(2*n+1, n)%((n+1)^3)` -/
def P5025918392201145746.Spec : Prop :=
  ∀ n, (P5025918392201145746.a n : ℤ) = A099907 (n + 1)

end A099907

/-! ## A099907.P7604768924635097718

`A007318(2*(n+1)²)%A000578(n+1)`
-/

namespace A099907.P7604768924635097718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (2 * (n + 1) ^ 2)) (A000578 (n + 1))

end

end A099907.P7604768924635097718

namespace A099907

/-- `A007318(2*(n+1)²)%A000578(n+1)` -/
def P7604768924635097718.Spec : Prop :=
  ∀ n, P7604768924635097718.a n = A099907 (n + 1)

end A099907

/-!
# A099908: a(n) = C(2n-1,n-1) mod n^4.

The programs for A099908, the canonical program `A099908.P50245235317994` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099908 has offset 1).

The definition of A099908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099908.P50245235317994

`A001700(n)%(n+1)²²`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099908

/-- `A001700(n)%(n+1)²²` -/
def P50245235317994.Spec : Prop :=
  ∀ n, P50245235317994.a n = A099908 (n + 1)

theorem P50245235317994.correct : P50245235317994.Spec := by
  intro n
  simp only [A099908, Nat.add_sub_cancel]

end A099908

/-! ## A099908.P13540806981716196322

`A001405(2*n+1)%((n+1)^4)`
-/

namespace A099908.P13540806981716196322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001405 (2 * n + 1)) ((n + 1) ^ 4 : ℤ)

end

end A099908.P13540806981716196322

namespace A099908

/-- `A001405(2*n+1)%((n+1)^4)` -/
def P13540806981716196322.Spec : Prop :=
  ∀ n, P13540806981716196322.a n = A099908 (n + 1)

end A099908

/-! ## A099908.P13185049635160546065

`A002661(2*n+1)%(n+1)²²`
-/

namespace A099908.P13185049635160546065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002661 (2 * n + 1)) (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A099908.P13185049635160546065

namespace A099908

/-- `A002661(2*n+1)%(n+1)²²` -/
def P13185049635160546065.Spec : Prop :=
  ∀ n, P13185049635160546065.a n = A099908 (n + 1)

end A099908

/-! ## A099908.P14701178797347415583

`(A000984(n+1)/2)%(n+1)²²`
-/

namespace A099908.P14701178797347415583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000984 (n + 1) : ℚ) / 2)) (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A099908.P14701178797347415583

namespace A099908

/-- `(A000984(n+1)/2)%(n+1)²²` -/
def P14701178797347415583.Spec : Prop :=
  ∀ n, P14701178797347415583.a n = A099908 (n + 1)

end A099908

/-! ## A099908.P9921959277310525832

`A088218(n+1)%∑[A005408(n)]²`
-/

namespace A099908.P9921959277310525832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A099908.P9921959277310525832

namespace A099908

/-- `A088218(n+1)%∑[A005408(n)]²` -/
def P9921959277310525832.Spec : Prop :=
  ∀ n, P9921959277310525832.a n = A099908 (n + 1)

end A099908

/-! ## A099908.P3934754252457336485

`C(2*n+1, n)%((n+1)^4)`
-/

namespace A099908.P3934754252457336485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) n % (n + 1) ^ 4

end

end A099908.P3934754252457336485

namespace A099908

/-- `C(2*n+1, n)%((n+1)^4)` -/
def P3934754252457336485.Spec : Prop :=
  ∀ n, (P3934754252457336485.a n : ℤ) = A099908 (n + 1)

end A099908

/-!
# A099909: (prime(n)*(prime(n+1)-1) + (prime(n)-1)*prime(n+1)) / 2.

The programs for A099909, the canonical program `A099909.P1261333731020433854` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099909 has offset 2).

The definition of A099909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099909.P1261333731020433854

`A006094(n+2)-A024675(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099909

/-- `A006094(n+2)-A024675(n+1)` -/
def P1261333731020433854.Spec : Prop :=
  ∀ n, P1261333731020433854.a n = A099909 (n + 2)

theorem P1261333731020433854.correct : P1261333731020433854.Spec := by
  intro n
  simp only [A099909, Nat.add_sub_cancel]

end A099909

/-! ## A099909.P545706631110293440

`A014303(n+2)+A014302(n+3)`
-/

namespace A099909.P545706631110293440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014303 (n + 2) + A014302 (n + 3)

end

end A099909.P545706631110293440

namespace A099909

/-- `A014303(n+2)+A014302(n+3)` -/
def P545706631110293440.Spec : Prop :=
  ∀ n, P545706631110293440.a n = A099909 (n + 2)

end A099909

/-! ## A099909.P7686563973516767294

`A006094(n+2)-(A078444(n+2)+1)`
-/

namespace A099909.P7686563973516767294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 2) - (A078444 (n + 2) + 1)

end

end A099909.P7686563973516767294

namespace A099909

/-- `A006094(n+2)-(A078444(n+2)+1)` -/
def P7686563973516767294.Spec : Prop :=
  ∀ n, P7686563973516767294.a n = A099909 (n + 2)

end A099909

/-! ## A099909.P4395807970527191827

`A037165(n+2)+A001043(n+2)/2`
-/

namespace A099909.P4395807970527191827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037165 (n + 2) : ℚ) + (A001043 (n + 2) : ℚ) / 2

end

end A099909.P4395807970527191827

namespace A099909

/-- `A037165(n+2)+A001043(n+2)/2` -/
def P4395807970527191827.Spec : Prop :=
  ∀ n, P4395807970527191827.a n = (A099909 (n + 2) : ℚ)

end A099909

/-! ## A099909.P8701678373548709346

`A037167(n+2)+A001223(n+2)/2`
-/

namespace A099909.P8701678373548709346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037167 (n + 2) : ℚ) + (A001223 (n + 2) : ℚ) / 2

end

end A099909.P8701678373548709346

namespace A099909

/-- `A037167(n+2)+A001223(n+2)/2` -/
def P8701678373548709346.Spec : Prop :=
  ∀ n, P8701678373548709346.a n = (A099909 (n + 2) : ℚ)

end A099909

/-! ## A099909.P532058772041613436

`(A037165(n+2)+A006094(n+2))/2`
-/

namespace A099909.P532058772041613436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037165 (n + 2) + A006094 (n + 2) : ℚ) / 2

end

end A099909.P532058772041613436

namespace A099909

/-- `(A037165(n+2)+A006094(n+2))/2` -/
def P532058772041613436.Spec : Prop :=
  ∀ n, P532058772041613436.a n = (A099909 (n + 2) : ℚ)

end A099909

/-! ## A099909.P6816767274084059459

`(A037167(n+2)+A037166(n+2))/2`
-/

namespace A099909.P6816767274084059459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037167 (n + 2) + A037166 (n + 2) : ℚ) / 2

end

end A099909.P6816767274084059459

namespace A099909

/-- `(A037167(n+2)+A037166(n+2))/2` -/
def P6816767274084059459.Spec : Prop :=
  ∀ n, P6816767274084059459.a n = (A099909 (n + 2) : ℚ)

end A099909

/-! ## A099909.P16118204447736757092

`A006094(n+2)-A001043(n+2)/2`
-/

namespace A099909.P16118204447736757092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 2) : ℚ) - (A001043 (n + 2) : ℚ) / 2

end

end A099909.P16118204447736757092

namespace A099909

/-- `A006094(n+2)-A001043(n+2)/2` -/
def P16118204447736757092.Spec : Prop :=
  ∀ n, P16118204447736757092.a n = (A099909 (n + 2) : ℚ)

end A099909

/-! ## A099909.P3642988614784955522

`A037166(n+2)-A001223(n+2)/2`
-/

namespace A099909.P3642988614784955522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037166 (n + 2) : ℚ) - (A001223 (n + 2) : ℚ) / 2

end

end A099909.P3642988614784955522

namespace A099909

/-- `A037166(n+2)-A001223(n+2)/2` -/
def P3642988614784955522.Spec : Prop :=
  ∀ n, P3642988614784955522.a n = (A099909 (n + 2) : ℚ)

end A099909

/-! ## A099909.P14568640169200557452

`ceil(A083553(n+2)+sqrt(A083553(n+2)))`
-/

namespace A099909.P14568640169200557452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083553 (n + 2) : ℝ) + Real.sqrt (A083553 (n + 2) : ℝ)⌉

end

end A099909.P14568640169200557452

namespace A099909

/-- `ceil(A083553(n+2)+sqrt(A083553(n+2)))` -/
def P14568640169200557452.Spec : Prop :=
  ∀ n, P14568640169200557452.a n = A099909 (n + 2)

end A099909

/-! ## A099909.P11983105429754278585

`A005097(n+2)+A083553(n+2)+A005097(n+1)`
-/

namespace A099909.P11983105429754278585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) + (A083553 (n + 2) + A005097 (n + 1))

end

end A099909.P11983105429754278585

namespace A099909

/-- `A005097(n+2)+A083553(n+2)+A005097(n+1)` -/
def P11983105429754278585.Spec : Prop :=
  ∀ n, P11983105429754278585.a n = A099909 (n + 2)

end A099909

/-! ## A099909.P13957619684943514286

`A006094(n+2)-(A006254(n+1)+A005097(n+2))`
-/

namespace A099909.P13957619684943514286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 2) - (A006254 (n + 1) + A005097 (n + 2))

end

end A099909.P13957619684943514286

namespace A099909

/-- `A006094(n+2)-(A006254(n+1)+A005097(n+2))` -/
def P13957619684943514286.Spec : Prop :=
  ∀ n, P13957619684943514286.a n = A099909 (n + 2)

end A099909

/-! ## A099909.P16624092388410587285

`A005097(n+1)+A037166(n+2)-A005097(n+2)`
-/

namespace A099909.P16624092388410587285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + (A037166 (n + 2) - A005097 (n + 2))

end

end A099909.P16624092388410587285

namespace A099909

/-- `A005097(n+1)+A037166(n+2)-A005097(n+2)` -/
def P16624092388410587285.Spec : Prop :=
  ∀ n, P16624092388410587285.a n = A099909 (n + 2)

end A099909

/-! ## A099909.P9160704323416055260

`A006254(n+2)+A037167(n+2)-A006254(n+1)`
-/

namespace A099909.P9160704323416055260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 2) + (A037167 (n + 2) - A006254 (n + 1))

end

end A099909.P9160704323416055260

namespace A099909

/-- `A006254(n+2)+A037167(n+2)-A006254(n+1)` -/
def P9160704323416055260.Spec : Prop :=
  ∀ n, P9160704323416055260.a n = A099909 (n + 2)

end A099909

/-! ## A099909.P517930821014364253

`A076621(n+2)-(A074927(n+2)+A024675(n+1))`
-/

namespace A099909.P517930821014364253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076621 (n + 2) - (A074927 (n + 2) + A024675 (n + 1))

end

end A099909.P517930821014364253

namespace A099909

/-- `A076621(n+2)-(A074927(n+2)+A024675(n+1))` -/
def P517930821014364253.Spec : Prop :=
  ∀ n, P517930821014364253.a n = A099909 (n + 2)

end A099909

/-! ## A099909.P7392293907156296561

`A014302(n+3)+A000040(n+2)*A005097(n+2)`
-/

namespace A099909.P7392293907156296561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014302 (n + 3) + A000040 (n + 2) * A005097 (n + 2)

end

end A099909.P7392293907156296561

namespace A099909

/-- `A014302(n+3)+A000040(n+2)*A005097(n+2)` -/
def P7392293907156296561.Spec : Prop :=
  ∀ n, P7392293907156296561.a n = A099909 (n + 2)

end A099909

/-! ## A099909.P864571308917438170

`A014302(n+3)+A005097(n+2)*A006005(n+2)`
-/

namespace A099909.P864571308917438170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014302 (n + 3) + A005097 (n + 2) * A006005 (n + 2)

end

end A099909.P864571308917438170

namespace A099909

/-- `A014302(n+3)+A005097(n+2)*A006005(n+2)` -/
def P864571308917438170.Spec : Prop :=
  ∀ n, P864571308917438170.a n = A099909 (n + 2)

end A099909

/-! ## A099909.P14307208841810221985

`A069487(n+2)/A069482(n+2)-A024675(n+1)`
-/

namespace A099909.P14307208841810221985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069487 (n + 2) : ℚ) / (A069482 (n + 2) : ℚ) - (A024675 (n + 1) : ℚ)

end

end A099909.P14307208841810221985

namespace A099909

/-- `A069487(n+2)/A069482(n+2)-A024675(n+1)` -/
def P14307208841810221985.Spec : Prop :=
  ∀ n, P14307208841810221985.a n = (A099909 (n + 2) : ℚ)

end A099909

/-! ## A099909.P14415574726534913679

`A006094(n+2)-A124434(n+2)/A001223(n+2)`
-/

namespace A099909.P14415574726534913679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 2) : ℚ) - (A124434 (n + 2) : ℚ) / (A001223 (n + 2) : ℚ)

end

end A099909.P14415574726534913679

namespace A099909

/-- `A006094(n+2)-A124434(n+2)/A001223(n+2)` -/
def P14415574726534913679.Spec : Prop :=
  ∀ n, P14415574726534913679.a n = (A099909 (n + 2) : ℚ)

end A099909

/-!
# A099910: Number of distinct prime-factors of ((prime(n)*(prime(n+1)-1)+(prime(n)-1)*prime(n+1))/2).

The programs for A099910, the canonical program `A099910.P10957624334977577612` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099910 has offset 2).

The definition of A099910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099910.P10957624334977577612

`∑{e}[∏{p}[A099909(n+2), #], #]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A099910

/-- `∑{e}[∏{p}[A099909(n+2), #], #]` -/
def P10957624334977577612.Spec : Prop :=
  ∀ n, (P10957624334977577612.a n : ℤ) = A099910 (n + 2)

theorem P10957624334977577612.correct : P10957624334977577612.Spec := by
  intro n
  simp only [A099910, Nat.add_sub_cancel]

end A099910

/-! ## A099910.P6475134948061128466

`∑{e}[A099909(n+2), A008834(#)]`
-/

namespace A099910.P6475134948061128466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008834 (Nat.factorization (f1 n).natAbs p)

end

end A099910.P6475134948061128466

namespace A099910

/-- `∑{e}[A099909(n+2), A008834(#)]` -/
def P6475134948061128466.Spec : Prop :=
  ∀ n, P6475134948061128466.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P4775767303597163850

`∑{e}[A099909(n+2), A008835(#)]`
-/

namespace A099910.P4775767303597163850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008835 (Nat.factorization (f1 n).natAbs p)

end

end A099910.P4775767303597163850

namespace A099910

/-- `∑{e}[A099909(n+2), A008835(#)]` -/
def P4775767303597163850.Spec : Prop :=
  ∀ n, P4775767303597163850.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P6751351882912384558

`∑{e}[A099909(n+2), A014256(#)]`
-/

namespace A099910.P6751351882912384558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014256 (Nat.factorization (f1 n).natAbs p)

end

end A099910.P6751351882912384558

namespace A099910

/-- `∑{e}[A099909(n+2), A014256(#)]` -/
def P6751351882912384558.Spec : Prop :=
  ∀ n, P6751351882912384558.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P1055546649138001308

`∑{e}[A099909(n+2), A014826(#)]`
-/

namespace A099910.P1055546649138001308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014826 (Nat.factorization (f1 n).natAbs p)

end

end A099910.P1055546649138001308

namespace A099910

/-- `∑{e}[A099909(n+2), A014826(#)]` -/
def P1055546649138001308.Spec : Prop :=
  ∀ n, P1055546649138001308.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P4598678890165313659

`∑{e}[A099909(n+2), A014958(#)]`
-/

namespace A099910.P4598678890165313659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014958 (Nat.factorization (f1 n).natAbs p)

end

end A099910.P4598678890165313659

namespace A099910

/-- `∑{e}[A099909(n+2), A014958(#)]` -/
def P4598678890165313659.Spec : Prop :=
  ∀ n, P4598678890165313659.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P16328641234556475927

`∑{e}[A099909(n+2), A055229(#)]`
-/

namespace A099910.P16328641234556475927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A055229 (Nat.factorization (f1 n).natAbs p)

end

end A099910.P16328641234556475927

namespace A099910

/-- `∑{e}[A099909(n+2), A055229(#)]` -/
def P16328641234556475927.Spec : Prop :=
  ∀ n, P16328641234556475927.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P13974004772188598896

`∑{e}[A099909(n+2), A055801(#)]`
-/

namespace A099910.P13974004772188598896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A055801 (Nat.factorization (f1 n).natAbs p)

end

end A099910.P13974004772188598896

namespace A099910

/-- `∑{e}[A099909(n+2), A055801(#)]` -/
def P13974004772188598896.Spec : Prop :=
  ∀ n, P13974004772188598896.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P14796710570177692798

`∑{e}[A099909(n+2), A057427(#)]`
-/

namespace A099910.P14796710570177692798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A057427 (Nat.factorization (f1 n).natAbs p)

end

end A099910.P14796710570177692798

namespace A099910

/-- `∑{e}[A099909(n+2), A057427(#)]` -/
def P14796710570177692798.Spec : Prop :=
  ∀ n, P14796710570177692798.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P1398084386513413022

`∑{e}[A099909(n+2), A062513(#)]`
-/

namespace A099910.P1398084386513413022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A062513 (Nat.factorization (f1 n).natAbs p)

end

end A099910.P1398084386513413022

namespace A099910

/-- `∑{e}[A099909(n+2), A062513(#)]` -/
def P1398084386513413022.Spec : Prop :=
  ∀ n, P1398084386513413022.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P17655889390227018329

`∑{e}[A099909(n+2), A063435(#)]`
-/

namespace A099910.P17655889390227018329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A063435 (Nat.factorization (f1 n).natAbs p)

end

end A099910.P17655889390227018329

namespace A099910

/-- `∑{e}[A099909(n+2), A063435(#)]` -/
def P17655889390227018329.Spec : Prop :=
  ∀ n, P17655889390227018329.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P16786339834155225603

`∑{e}[A099909(n+2), A078772(#)]`
-/

namespace A099910.P16786339834155225603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A078772 (Nat.factorization (f1 n).natAbs p)

end

end A099910.P16786339834155225603

namespace A099910

/-- `∑{e}[A099909(n+2), A078772(#)]` -/
def P16786339834155225603.Spec : Prop :=
  ∀ n, P16786339834155225603.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P3030173160483569147

`∑{e}[A099909(n+2), A117358(#)]`
-/

namespace A099910.P3030173160483569147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A117358 (Nat.factorization (f1 n).natAbs p)

end

end A099910.P3030173160483569147

namespace A099910

/-- `∑{e}[A099909(n+2), A117358(#)]` -/
def P3030173160483569147.Spec : Prop :=
  ∀ n, P3030173160483569147.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P12968030519240266436

`∑{e}[A099909(n+2), A168046(#)]`
-/

namespace A099910.P12968030519240266436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A168046 (Nat.factorization (f1 n).natAbs p)

end

end A099910.P12968030519240266436

namespace A099910

/-- `∑{e}[A099909(n+2), A168046(#)]` -/
def P12968030519240266436.Spec : Prop :=
  ∀ n, P12968030519240266436.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P17681176306905709548

`∑{e}[A099909(n+2), A178334(#)]`
-/

namespace A099910.P17681176306905709548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A178334 (Nat.factorization (f1 n).natAbs p)

end

end A099910.P17681176306905709548

namespace A099910

/-- `∑{e}[A099909(n+2), A178334(#)]` -/
def P17681176306905709548.Spec : Prop :=
  ∀ n, P17681176306905709548.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P14500603898640289119

`∑{e}[A099909(n+2), A000045(floor(#^(2/7)))]`
-/

namespace A099910.P14500603898640289119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 ⌊(Nat.factorization (f1 n).natAbs p : ℝ) ^ ((2 : ℚ) / 7 : ℝ)⌋.toNat

end

end A099910.P14500603898640289119

namespace A099910

/-- `∑{e}[A099909(n+2), A000045(floor(#^(2/7)))]` -/
def P14500603898640289119.Spec : Prop :=
  ∀ n, P14500603898640289119.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P10145509376466757630

`∑{e}[A099909(n+2), A007318(floor(#^(2/7)))]`
-/

namespace A099910.P10145509376466757630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 ⌊(Nat.factorization (f1 n).natAbs p : ℝ) ^ ((2 : ℚ) / 7 : ℝ)⌋.toNat

end

end A099910.P10145509376466757630

namespace A099910

/-- `∑{e}[A099909(n+2), A007318(floor(#^(2/7)))]` -/
def P10145509376466757630.Spec : Prop :=
  ∀ n, P10145509376466757630.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P12476135859731992195

`∑{e}[A099909(n+2), A008327(A000010(#))]`
-/

namespace A099910.P12476135859731992195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008327 (A000010 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A099910.P12476135859731992195

namespace A099910

/-- `∑{e}[A099909(n+2), A008327(A000010(#))]` -/
def P12476135859731992195.Spec : Prop :=
  ∀ n, P12476135859731992195.a n = A099910 (n + 2)

end A099910

/-! ## A099910.P13428844240414684202

`A001222(∏{e}[A099909(n+2), A000040(#)])`
-/

namespace A099910.P13428844240414684202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A099910.P13428844240414684202

namespace A099910

/-- `A001222(∏{e}[A099909(n+2), A000040(#)])` -/
def P13428844240414684202.Spec : Prop :=
  ∀ n, P13428844240414684202.a n = A099910 (n + 2)

end A099910

/-!
# A099911: Primes of the form (p*(q-1) + (p-1)*q)/2, where p and q are consecutive odd primes.

The programs for A099911, there is no canonical definition to state claims against.
-/

/-! ## A099911.P218970914450579482

`A099909(A098142(n+1))`
-/

namespace A099911.P218970914450579482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (A098142 (n + 1)).toNat

end

end A099911.P218970914450579482

/-! ## A099911.P967842824001123886

`A099909(eq[1, A099910(n+2)]+2)`
-/

namespace A099911.P967842824001123886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099910 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A099911.P967842824001123886

/-! ## A099911.P17471406592471750021

`A099909(record[(n+2)/A099910(n+2)])`
-/

namespace A099911.P17471406592471750021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A099910 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A099911.P17471406592471750021

/-! ## A099911.P4575695989711408375

`record[root(A099909(n+2), A099910(n+2))]`
-/

namespace A099911.P4575695989711408375
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A099909 (n + 2) : ℝ) ^ (1 / (A099910 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099911.P4575695989711408375

/-! ## A099911.P7121889073617905956

`p?[A099909(n+2)]`
-/

namespace A099911.P7121889073617905956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099911.P7121889073617905956

/-!
# A099912: Number of closed walks on the Herschel graph.

The programs for A099912, the canonical program `A099912.P9188688965810291109` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099912 has offset 0).

The definition of A099912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099912.P9188688965810291109

`13*a(n-1)-22*a(n-2)` with `a(0)=1, a(1)=4, a(2)=32`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099912

/-- `13*a(n-1)-22*a(n-2)` -/
def P9188688965810291109.Spec : Prop :=
  ∀ n, P9188688965810291109.a n = A099912 n

theorem P9188688965810291109.correct : P9188688965810291109.Spec := by
  intro n
  simp only [A099912]

end A099912

/-! ## A099912.P10772781767726650081

`11*a(n-1)-3*2^n` with `a(0)=1, a(1)=4`
-/

namespace A099912.P10772781767726650081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  11 * a (n - 1) - (3 * 2 ^ n : ℤ)

end

end A099912.P10772781767726650081

namespace A099912

/-- `11*a(n-1)-3*2^n` -/
def P10772781767726650081.Spec : Prop :=
  ∀ n, P10772781767726650081.a n = A099912 n

end A099912

/-! ## A099912.P3180954641543515592

`lcm(11, a(n-1))-A007283(n)` with `a(0)=1, a(1)=4`
-/

namespace A099912.P3180954641543515592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (Int.lcm 11 (a (n - 1)) : ℤ) - A007283 n

end

end A099912.P3180954641543515592

namespace A099912

/-- `lcm(11, a(n-1))-A007283(n)` -/
def P3180954641543515592.Spec : Prop :=
  ∀ n, P3180954641543515592.a n = A099912 n

end A099912

/-!
# A099913: Related to the Herschel graph.

The programs for A099913, the canonical program `A099913.P18276176510410561391` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099913 has offset 0).

The definition of A099913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099913.P18276176510410561391

`10*a(n-1)+a(n-2)-10*a(n-3)` with `a(0)=1, a(1)=3, a(2)=25`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099913

/-- `10*a(n-1)+a(n-2)-10*a(n-3)` -/
def P18276176510410561391.Spec : Prop :=
  ∀ n, P18276176510410561391.a n = A099913 n

theorem P18276176510410561391.correct : P18276176510410561391.Spec := by
  intro n
  simp only [A099913]

end A099913

/-! ## A099913.P15804992020168816802

`xor(10*a(n-1), A010729(n))` with `a(0)=1`
-/

namespace A099913.P15804992020168816802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A010729 n)

end

end A099913.P15804992020168816802

namespace A099913

/-- `xor(10*a(n-1), A010729(n))` -/
def P15804992020168816802.Spec : Prop :=
  ∀ n, P15804992020168816802.a n = A099913 n

end A099913

/-! ## A099913.P4582475430847040950

`ceil(A037487(n)/5)`
-/

namespace A099913.P4582475430847040950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037487 (n + 1) : ℚ) / 5⌉

end

end A099913.P4582475430847040950

namespace A099913

/-- `ceil(A037487(n)/5)` -/
def P4582475430847040950.Spec : Prop :=
  ∀ n, P4582475430847040950.a n = A099913 n

end A099913

/-! ## A099913.P2938869268058232925

`ceil(A199688(n)/11)`
-/

namespace A099913.P2938869268058232925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199688 n : ℚ) / 11⌉

end

end A099913.P2938869268058232925

namespace A099913

/-- `ceil(A199688(n)/11)` -/
def P2938869268058232925.Spec : Prop :=
  ∀ n, P2938869268058232925.a n = A099913 n

end A099913

/-! ## A099913.P399650618375990349

`ceil(Δ[A002282(n)/33])`
-/

namespace A099913.P399650618375990349
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002282 n : ℚ) / 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A099913.P399650618375990349

namespace A099913

/-- `ceil(Δ[A002282(n)/33])` -/
def P399650618375990349.Spec : Prop :=
  ∀ n, P399650618375990349.a n = A099913 n

end A099913

/-! ## A099913.P13239630530841635463

`10*a(n-1)+A209615(n²+1)-6` with `a(0)=1`
-/

namespace A099913.P13239630530841635463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + (A209615 (n ^ 2 + 1) - 6)

end

end A099913.P13239630530841635463

namespace A099913

/-- `10*a(n-1)+A209615(n²+1)-6` -/
def P13239630530841635463.Spec : Prop :=
  ∀ n, P13239630530841635463.a n = A099913 n

end A099913

/-!
# A099914: Expansion of (1+3x)/((1-x)(1-10x)).

The programs for A099914, the canonical program `A099914.P12222643020446281954` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099914 has offset 0).

The definition of A099914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099914.P12222643020446281954

`10^n*13/9-4/9`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099914

/-- `10^n*13/9-4/9` -/
def P12222643020446281954.Spec : Prop :=
  ∀ n, P12222643020446281954.a n = (A099914 n : ℚ)

end A099914

/-! ## A099914.P11431010286919164318

`∑[10*a(n-1)]` with `a(0)=1, a(1)=13`
-/

namespace A099914.P11431010286919164318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099914.P11431010286919164318

namespace A099914

/-- `∑[10*a(n-1)]` -/
def P11431010286919164318.Spec : Prop :=
  ∀ n, (P11431010286919164318.a n : ℤ) = A099914 n

end A099914

/-! ## A099914.P12671340287401644349

`2*(7-5*(1-a(n-1)))` with `a(0)=1`
-/

namespace A099914.P12671340287401644349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (7 - 5 * (1 - a (n - 1)))

end

end A099914.P12671340287401644349

namespace A099914

/-- `2*(7-5*(1-a(n-1)))` -/
def P12671340287401644349.Spec : Prop :=
  ∀ n, P12671340287401644349.a n = A099914 n

end A099914

/-! ## A099914.P3511612930804581746

`A094627(2*n)`
-/

namespace A099914.P3511612930804581746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094627 (2 * n)

end

end A099914.P3511612930804581746

namespace A099914

/-- `A094627(2*n)` -/
def P3511612930804581746.Spec : Prop :=
  ∀ n, P3511612930804581746.a n = A099914 n

end A099914

/-! ## A099914.P14450958602064750838

`A279193(2*(n+1))/2`
-/

namespace A099914.P14450958602064750838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279193 (2 * (n + 1)) : ℚ) / 2

end

end A099914.P14450958602064750838

namespace A099914

/-- `A279193(2*(n+1))/2` -/
def P14450958602064750838.Spec : Prop :=
  ∀ n, P14450958602064750838.a n = (A099914 n : ℚ)

end A099914

/-! ## A099914.P2519068938995371285

`abs(∑[round(10^(n-1))]-A099915(n))`
-/

namespace A099914.P2519068938995371285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A099915 n|

end

end A099914.P2519068938995371285

namespace A099914

/-- `abs(∑[round(10^(n-1))]-A099915(n))` -/
def P2519068938995371285.Spec : Prop :=
  ∀ n, P2519068938995371285.a n = A099914 n

end A099914

/-!
# A099915: Expansion of g.f. (1+4*x)/((1-x)*(1-10*x)).

The programs for A099915, the canonical program `A099915.P6401535355663982087` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099915 has offset 0).

The definition of A099915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099915.P6401535355663982087

`10^n*14/9-5/9`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099915

/-- `10^n*14/9-5/9` -/
def P6401535355663982087.Spec : Prop :=
  ∀ n, P6401535355663982087.a n = (A099915 n : ℚ)

end A099915

/-! ## A099915.P8482452606129138338

`∑[10*a(n-1)]` with `a(0)=1, a(1)=14`
-/

namespace A099915.P8482452606129138338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099915.P8482452606129138338

namespace A099915

/-- `∑[10*a(n-1)]` -/
def P8482452606129138338.Spec : Prop :=
  ∀ n, (P8482452606129138338.a n : ℤ) = A099915 n

end A099915

/-! ## A099915.P9786794979691572049

`5*(2*a(n-1)+1)` with `a(0)=1`
-/

namespace A099915.P9786794979691572049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * (2 * a (n - 1) + 1)

end

end A099915.P9786794979691572049

namespace A099915

/-- `5*(2*a(n-1)+1)` -/
def P9786794979691572049.Spec : Prop :=
  ∀ n, (P9786794979691572049.a n : ℤ) = A099915 n

end A099915

/-! ## A099915.P1995513240569335851

`5*or(1, 2*a(n-1))` with `a(0)=1`
-/

namespace A099915.P1995513240569335851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * Nat.lor 1 (2 * a (n - 1))

end

end A099915.P1995513240569335851

namespace A099915

/-- `5*or(1, 2*a(n-1))` -/
def P1995513240569335851.Spec : Prop :=
  ∀ n, (P1995513240569335851.a n : ℤ) = A099915 n

end A099915

/-! ## A099915.P10309525471621602676

`5*xor(1, 2*a(n-1))` with `a(0)=1`
-/

namespace A099915.P10309525471621602676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * Nat.xor 1 (2 * a (n - 1))

end

end A099915.P10309525471621602676

namespace A099915

/-- `5*xor(1, 2*a(n-1))` -/
def P10309525471621602676.Spec : Prop :=
  ∀ n, (P10309525471621602676.a n : ℤ) = A099915 n

end A099915

/-! ## A099915.P9920050388350920099

`lcm(5, lcm(2, a(n-1))+1)` with `a(0)=1`
-/

namespace A099915.P9920050388350920099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 5 (Nat.lcm 2 (a (n - 1)) + 1)

end

end A099915.P9920050388350920099

namespace A099915

/-- `lcm(5, lcm(2, a(n-1))+1)` -/
def P9920050388350920099.Spec : Prop :=
  ∀ n, (P9920050388350920099.a n : ℤ) = A099915 n

end A099915

/-! ## A099915.P995669172017718961

`5*(3-2*(1-a(n-1)))` with `a(0)=1`
-/

namespace A099915.P995669172017718961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * (3 - 2 * (1 - a (n - 1)))

end

end A099915.P995669172017718961

namespace A099915

/-- `5*(3-2*(1-a(n-1)))` -/
def P995669172017718961.Spec : Prop :=
  ∀ n, P995669172017718961.a n = A099915 n

end A099915

/-! ## A099915.P2584063863831065201

`A289006(3*n+2)`
-/

namespace A099915.P2584063863831065201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289006 (3 * n + 2)

end

end A099915.P2584063863831065201

namespace A099915

/-- `A289006(3*n+2)` -/
def P2584063863831065201.Spec : Prop :=
  ∀ n, P2584063863831065201.a n = A099915 n

end A099915

/-! ## A099915.P6117137894886067994

`(A173807(n+1)+2)/5`
-/

namespace A099915.P6117137894886067994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173807 (n + 1) + 2 : ℚ) / 5

end

end A099915.P6117137894886067994

namespace A099915

/-- `(A173807(n+1)+2)/5` -/
def P6117137894886067994.Spec : Prop :=
  ∀ n, P6117137894886067994.a n = (A099915 n : ℚ)

end A099915

/-! ## A099915.P8929066139577505288

`(A173806(n+1)+4)/5`
-/

namespace A099915.P8929066139577505288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173806 (n + 1) + 4 : ℚ) / 5

end

end A099915.P8929066139577505288

namespace A099915

/-- `(A173806(n+1)+4)/5` -/
def P8929066139577505288.Spec : Prop :=
  ∀ n, P8929066139577505288.a n = (A099915 n : ℚ)

end A099915

/-! ## A099915.P3268715409895470046

`(A173808(n+1)-4)/5`
-/

namespace A099915.P3268715409895470046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173808 (n + 1) - 4 : ℚ) / 5

end

end A099915.P3268715409895470046

namespace A099915

/-- `(A173808(n+1)-4)/5` -/
def P3268715409895470046.Spec : Prop :=
  ∀ n, P3268715409895470046.a n = (A099915 n : ℚ)

end A099915

/-! ## A099915.P15223025702076046403

`∑[lcm(A093136(n), A196662(n))]`
-/

namespace A099915.P15223025702076046403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A093136 n) (A196662 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099915.P15223025702076046403

namespace A099915

/-- `∑[lcm(A093136(n), A196662(n))]` -/
def P15223025702076046403.Spec : Prop :=
  ∀ n, (P15223025702076046403.a n : ℤ) = A099915 n

end A099915

/-!
# A099916: Expansion of (1+x^2)^2/(1-x^3+x^6).

The programs for A099916, there is no canonical definition to state claims against.
-/

/-! ## A099916.P12385384022035546389

`A033999(n)*A099917(n)`
-/

namespace A099916.P12385384022035546389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A099917 n

end

end A099916.P12385384022035546389

/-!
# A099917: Expansion of (1+x^2)^2/(1+x^3+x^6).

The programs for A099917, there is no canonical definition to state claims against.
-/

/-! ## A099917.P14252904550563015536

`(-1)^n*A099916(n)`
-/

namespace A099917.P14252904550563015536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A099916 n

end

end A099917.P14252904550563015536

/-!
# A099918: A Chebyshev transform related to the 7th cyclotomic polynomial.

The programs for A099918, there is no canonical definition to state claims against.
-/

/-! ## A099918.P12009582541060478644

`Δ[A059127(n)]%3`
-/

namespace A099918.P12009582541060478644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A099918.P12009582541060478644

/-!
# A099919: a(n) = F(3) + F(6) + F(9) + ... + F(3n), F(n) = Fibonacci numbers A000045.

The programs for A099919, the canonical program `A099919.P16684563163017313662` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099919 has offset 0).

The definition of A099919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099919.P16684563163017313662

`4*a(n-1)+a(n-2)+2` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099919

/-- `4*a(n-1)+a(n-2)+2` -/
def P16684563163017313662.Spec : Prop :=
  ∀ n, (P16684563163017313662.a n : ℤ) = A099919 n

theorem P16684563163017313662.correct : P16684563163017313662.Spec := by
  intro n
  simp only [A099919]

end A099919

/-! ## A099919.P2009042166193341566

`5*a(n-1)-3*a(n-2)-a(n-3)` with `a(0)=0, a(1)=2, a(2)=10`
-/

namespace A099919.P2009042166193341566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 10] fun n a =>
  5 * a (n - 1) - 3 * a (n - 2) - a (n - 3)

end

end A099919.P2009042166193341566

namespace A099919

/-- `5*a(n-1)-3*a(n-2)-a(n-3)` -/
def P2009042166193341566.Spec : Prop :=
  ∀ n, P2009042166193341566.a n = A099919 n

end A099919

/-! ## A099919.P6395026189837629040

`2*A049652(n)`
-/

namespace A099919.P6395026189837629040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049652 n

end

end A099919.P6395026189837629040

namespace A099919

/-- `2*A049652(n)` -/
def P6395026189837629040.Spec : Prop :=
  ∀ n, P6395026189837629040.a n = A099919 n

end A099919

/-! ## A099919.P2449816688002043542

`(A015448(n+1)-1)/2`
-/

namespace A099919.P2449816688002043542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015448 (n + 1) - 1 : ℚ) / 2

end

end A099919.P2449816688002043542

namespace A099919

/-- `(A015448(n+1)-1)/2` -/
def P2449816688002043542.Spec : Prop :=
  ∀ n, P2449816688002043542.a n = (A099919 n : ℚ)

end A099919

/-! ## A099919.P4899292445339397068

`round(ϕ^3*a(n-1))+2` with `a(0)=0`
-/

namespace A099919.P4899292445339397068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (a (n - 1) : ℝ)) + 2

end

end A099919.P4899292445339397068

namespace A099919

/-- `round(ϕ^3*a(n-1))+2` -/
def P4899292445339397068.Spec : Prop :=
  ∀ n, P4899292445339397068.a n = A099919 n

end A099919

/-! ## A099919.P4507585454875918372

`∑[round(ϕ^3*a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A099919.P4507585454875918372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099919.P4507585454875918372

namespace A099919

/-- `∑[round(ϕ^3*a(n-1))]` -/
def P4507585454875918372.Spec : Prop :=
  ∀ n, P4507585454875918372.a n = A099919 n

end A099919

/-! ## A099919.P11378574436341400342

`∑[a(n-2)+4*a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A099919.P11378574436341400342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) + 4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099919.P11378574436341400342

namespace A099919

/-- `∑[a(n-2)+4*a(n-1)]` -/
def P11378574436341400342.Spec : Prop :=
  ∀ n, (P11378574436341400342.a n : ℤ) = A099919 n

end A099919

/-! ## A099919.P6222029330592869621

`∑[5*a(n-1)-(a(n-1)-a(n-2))]` with `a(0)=0, a(1)=2`
-/

namespace A099919.P6222029330592869621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  5 * f1 (n - 1) - (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099919.P6222029330592869621

namespace A099919

/-- `∑[5*a(n-1)-(a(n-1)-a(n-2))]` -/
def P6222029330592869621.Spec : Prop :=
  ∀ n, P6222029330592869621.a n = A099919 n

end A099919

/-! ## A099919.P13668457825386853064

`∑[A014445(n)]`
-/

namespace A099919.P13668457825386853064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099919.P13668457825386853064

namespace A099919

/-- `∑[A014445(n)]` -/
def P13668457825386853064.Spec : Prop :=
  ∀ n, P13668457825386853064.a n = A099919 n

end A099919

/-! ## A099919.P2334456969047747840

`∑[record[A102875(n)]]`
-/

namespace A099919.P2334456969047747840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102875 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099919.P2334456969047747840

namespace A099919

/-- `∑[record[A102875(n)]]` -/
def P2334456969047747840.Spec : Prop :=
  ∀ n, P2334456969047747840.a n = A099919 n

end A099919

/-! ## A099919.P14938086800059376087

`∑[2*A001076(n)]`
-/

namespace A099919.P14938086800059376087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099919.P14938086800059376087

namespace A099919

/-- `∑[2*A001076(n)]` -/
def P14938086800059376087.Spec : Prop :=
  ∀ n, P14938086800059376087.a n = A099919 n

end A099919

/-! ## A099919.P2502588462485282160

`∑[A117647(2*n)]`
-/

namespace A099919.P2502588462485282160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099919.P2502588462485282160

namespace A099919

/-- `∑[A117647(2*n)]` -/
def P2502588462485282160.Spec : Prop :=
  ∀ n, P2502588462485282160.a n = A099919 n

end A099919

/-! ## A099919.P16431688621428346491

`∑[A000045(3*n)]`
-/

namespace A099919.P16431688621428346491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099919.P16431688621428346491

namespace A099919

/-- `∑[A000045(3*n)]` -/
def P16431688621428346491.Spec : Prop :=
  ∀ n, P16431688621428346491.a n = A099919 n

end A099919

/-! ## A099919.P10216201504017165248

`∑[A104221(3*n)]`
-/

namespace A099919.P10216201504017165248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104221 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099919.P10216201504017165248

namespace A099919

/-- `∑[A104221(3*n)]` -/
def P10216201504017165248.Spec : Prop :=
  ∀ n, P10216201504017165248.a n = A099919 n

end A099919

/-! ## A099919.P17700601250023668175

`∑[A116585(3*n)]`
-/

namespace A099919.P17700601250023668175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116585 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099919.P17700601250023668175

namespace A099919

/-- `∑[A116585(3*n)]` -/
def P17700601250023668175.Spec : Prop :=
  ∀ n, P17700601250023668175.a n = A099919 n

end A099919

/-! ## A099919.P14316847042591211822

`A292278(n+1)-1`
-/

namespace A099919.P14316847042591211822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292278 (n + 1) - 1

end

end A099919.P14316847042591211822

namespace A099919

/-- `A292278(n+1)-1` -/
def P14316847042591211822.Spec : Prop :=
  ∀ n, P14316847042591211822.a n = A099919 n

end A099919

/-! ## A099919.P5529183957634710963

`A094686(3*n+1)`
-/

namespace A099919.P5529183957634710963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 (3 * n + 1)

end

end A099919.P5529183957634710963

namespace A099919

/-- `A094686(3*n+1)` -/
def P5529183957634710963.Spec : Prop :=
  ∀ n, P5529183957634710963.a n = A099919 n

end A099919

/-! ## A099919.P8373116975161771269

`A004695(3*n+2)`
-/

namespace A099919.P8373116975161771269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (3 * n + 2)

end

end A099919.P8373116975161771269

namespace A099919

/-- `A004695(3*n+2)` -/
def P8373116975161771269.Spec : Prop :=
  ∀ n, P8373116975161771269.a n = A099919 n

end A099919

/-! ## A099919.P6916711078082646656

`A093040(3*n)-1`
-/

namespace A099919.P6916711078082646656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093040 (3 * n) - 1

end

end A099919.P6916711078082646656

namespace A099919

/-- `A093040(3*n)-1` -/
def P6916711078082646656.Spec : Prop :=
  ∀ n, P6916711078082646656.a n = A099919 n

end A099919

/-!
# A099920: a(n) = (n+1)*F(n), F(n) = Fibonacci numbers A000045.

The programs for A099920, the canonical program `A099920.P1143261801725671417` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099920 has offset 0).

The definition of A099920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099920.P1143261801725671417

`a(n-1)+a(n-2)+A000032(n-1)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A099920

/-- `a(n-1)+a(n-2)+A000032(n-1)` -/
def P1143261801725671417.Spec : Prop :=
  ∀ n, P1143261801725671417.a n = A099920 n

theorem P1143261801725671417.correct : P1143261801725671417.Spec := by
  intro n
  simp only [A099920]

end A099920

/-! ## A099920.P10119785452189667225

`A010049(n)+A001629(n+1)`
-/

namespace A099920.P10119785452189667225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n + A001629 (n + 1)

end

end A099920.P10119785452189667225

namespace A099920

/-- `A010049(n)+A001629(n+1)` -/
def P10119785452189667225.Spec : Prop :=
  ∀ n, P10119785452189667225.a n = A099920 n

end A099920

/-! ## A099920.P395232387684469218

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=8`
-/

namespace A099920.P395232387684469218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 8] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A099920.P395232387684469218

namespace A099920

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P395232387684469218.Spec : Prop :=
  ∀ n, P395232387684469218.a n = A099920 n

end A099920

/-! ## A099920.P2505993608374368830

`2*A001629(n+1)-A001629(n)`
-/

namespace A099920.P2505993608374368830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001629 (n + 1) - A001629 n

end

end A099920.P2505993608374368830

namespace A099920

/-- `2*A001629(n+1)-A001629(n)` -/
def P2505993608374368830.Spec : Prop :=
  ∀ n, P2505993608374368830.a n = A099920 n

end A099920

/-! ## A099920.P32832248669117476

`(n+1)*Δ[floor(ϕ*a(n-1))]` with `a(0)=2, a(1)=2`
-/

namespace A099920.P32832248669117476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A099920.P32832248669117476

namespace A099920

/-- `(n+1)*Δ[floor(ϕ*a(n-1))]` -/
def P32832248669117476.Spec : Prop :=
  ∀ n, P32832248669117476.a n = A099920 n

end A099920

/-! ## A099920.P13347509803065234988

`(n+1)*Δ[a(n-1)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A099920.P13347509803065234988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A099920.P13347509803065234988

namespace A099920

/-- `(n+1)*Δ[a(n-1)+a(n-2)]` -/
def P13347509803065234988.Spec : Prop :=
  ∀ n, P13347509803065234988.a n = A099920 n

end A099920

/-! ## A099920.P2770315328777251195

`(n+1)*∑[a(n-1)+a(n-2)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A099920.P2770315328777251195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099920.P2770315328777251195

namespace A099920

/-- `(n+1)*∑[a(n-1)+a(n-2)]` -/
def P2770315328777251195.Spec : Prop :=
  ∀ n, (P2770315328777251195.a n : ℤ) = A099920 n

end A099920

/-! ## A099920.P14828643535484264746

`(n+1)*A000045(n)`
-/

namespace A099920.P14828643535484264746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000045 n

end

end A099920.P14828643535484264746

namespace A099920

/-- `(n+1)*A000045(n)` -/
def P14828643535484264746.Spec : Prop :=
  ∀ n, P14828643535484264746.a n = A099920 n

end A099920

/-! ## A099920.P1325285617684741897

`abs((n+1)*A236191(n))`
-/

namespace A099920.P1325285617684741897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A236191 n|

end

end A099920.P1325285617684741897

namespace A099920

/-- `abs((n+1)*A236191(n))` -/
def P1325285617684741897.Spec : Prop :=
  ∀ n, P1325285617684741897.a n = A099920 n

end A099920

/-! ## A099920.P678618066819079129

`abs((n+1)*A333378(n))`
-/

namespace A099920.P678618066819079129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A333378 n|

end

end A099920.P678618066819079129

namespace A099920

/-- `abs((n+1)*A333378(n))` -/
def P678618066819079129.Spec : Prop :=
  ∀ n, P678618066819079129.a n = A099920 n

end A099920

/-! ## A099920.P8940091832161841606

`(n+1)*A212804(n+1)`
-/

namespace A099920.P8940091832161841606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A212804 (n + 1)

end

end A099920.P8940091832161841606

namespace A099920

/-- `(n+1)*A212804(n+1)` -/
def P8940091832161841606.Spec : Prop :=
  ∀ n, P8940091832161841606.a n = A099920 n

end A099920

/-! ## A099920.P14811012293527471504

`(n+1)*(A001611(n)-1)`
-/

namespace A099920.P14811012293527471504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001611 n - 1)

end

end A099920.P14811012293527471504

namespace A099920

/-- `(n+1)*(A001611(n)-1)` -/
def P14811012293527471504.Spec : Prop :=
  ∀ n, P14811012293527471504.a n = A099920 n

end A099920

/-! ## A099920.P1425185463083573740

`(n+1)*(A157725(n)-2)`
-/

namespace A099920.P1425185463083573740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A157725 n - 2)

end

end A099920.P1425185463083573740

namespace A099920

/-- `(n+1)*(A157725(n)-2)` -/
def P1425185463083573740.Spec : Prop :=
  ∀ n, P1425185463083573740.a n = A099920 n

end A099920

/-! ## A099920.P13686053701877106332

`(n+1)*A053602(2*n)`
-/

namespace A099920.P13686053701877106332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053602 (2 * n)

end

end A099920.P13686053701877106332

namespace A099920

/-- `(n+1)*A053602(2*n)` -/
def P13686053701877106332.Spec : Prop :=
  ∀ n, P13686053701877106332.a n = A099920 n

end A099920

/-! ## A099920.P12564757986308671975

`(n+1)*A103609(2*n)`
-/

namespace A099920.P12564757986308671975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A103609 (2 * n)

end

end A099920.P12564757986308671975

namespace A099920

/-- `(n+1)*A103609(2*n)` -/
def P12564757986308671975.Spec : Prop :=
  ∀ n, P12564757986308671975.a n = A099920 n

end A099920

/-! ## A099920.P1683471575198922428

`(n+1)*(A157726(n)-3)`
-/

namespace A099920.P1683471575198922428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A157726 n - 3)

end

end A099920.P1683471575198922428

namespace A099920

/-- `(n+1)*(A157726(n)-3)` -/
def P1683471575198922428.Spec : Prop :=
  ∀ n, P1683471575198922428.a n = A099920 n

end A099920

/-! ## A099920.P2648961038504045461

`(n+1)*A302126(2*n)`
-/

namespace A099920.P2648961038504045461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A302126 (2 * n)

end

end A099920.P2648961038504045461

namespace A099920

/-- `(n+1)*A302126(2*n)` -/
def P2648961038504045461.Spec : Prop :=
  ∀ n, P2648961038504045461.a n = A099920 n

end A099920

/-! ## A099920.P6840157399083190759

`(n+1)/3*A022086(n)`
-/

namespace A099920.P6840157399083190759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A022086 n : ℚ)

end

end A099920.P6840157399083190759

namespace A099920

/-- `(n+1)/3*A022086(n)` -/
def P6840157399083190759.Spec : Prop :=
  ∀ n, P6840157399083190759.a n = (A099920 n : ℚ)

end A099920

/-! ## A099920.P9166305167727712613

`(n+1)*(A065220(n)+n)`
-/

namespace A099920.P9166305167727712613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A065220 n + (n : ℤ))

end

end A099920.P9166305167727712613

namespace A099920

/-- `(n+1)*(A065220(n)+n)` -/
def P9166305167727712613.Spec : Prop :=
  ∀ n, P9166305167727712613.a n = A099920 n

end A099920

/-!
# A099921: a(n) = 5*Fibonacci(n)^2.

The programs for A099921, the canonical program `A099921.P17614892109639077438` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099921 has offset 1).

The definition of A099921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099921.P17614892109639077438

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=5, a(1)=5, a(2)=20`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099921

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P17614892109639077438.Spec : Prop :=
  ∀ n, P17614892109639077438.a n = A099921 (n + 1)

theorem P17614892109639077438.correct : P17614892109639077438.Spec := by
  intro n
  simp only [A099921, Nat.add_sub_cancel]

end A099921

/-! ## A099921.P7316376169192641681

`(sqrt(a(n-1))+sqrt(a(n-2)))²` with `a(0)=5, a(1)=5`
-/

namespace A099921.P7316376169192641681
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [5, 5] fun n a =>
  (Real.sqrt (a (n - 1)) + Real.sqrt (a (n - 2))) ^ 2

end

end A099921.P7316376169192641681

namespace A099921

/-- `(sqrt(a(n-1))+sqrt(a(n-2)))²` -/
def P7316376169192641681.Spec : Prop :=
  ∀ n, P7316376169192641681.a n = (A099921 (n + 1) : ℝ)

end A099921

/-! ## A099921.P18061858942953253759

`5*∑[a(n-1)+a(n-2)]²` with `a(0)=1, a(1)=0`
-/

namespace A099921.P18061858942953253759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099921.P18061858942953253759

namespace A099921

/-- `5*∑[a(n-1)+a(n-2)]²` -/
def P18061858942953253759.Spec : Prop :=
  ∀ n, (P18061858942953253759.a n : ℤ) = A099921 (n + 1)

end A099921

/-! ## A099921.P5498916296383867951

`A200408(n)+4`
-/

namespace A099921.P5498916296383867951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200408 n + 4

end

end A099921.P5498916296383867951

namespace A099921

/-- `A200408(n)+4` -/
def P5498916296383867951.Spec : Prop :=
  ∀ n, P5498916296383867951.a n = A099921 (n + 1)

end A099921

/-! ## A099921.P8831773061180252324

`5*Δ[A001654(n)]`
-/

namespace A099921.P8831773061180252324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f1 (n + 1) - f1 n)

end

end A099921.P8831773061180252324

namespace A099921

/-- `5*Δ[A001654(n)]` -/
def P8831773061180252324.Spec : Prop :=
  ∀ n, P8831773061180252324.a n = A099921 (n + 1)

end A099921

/-! ## A099921.P7063092427670309682

`5*A007598(n+1)`
-/

namespace A099921.P7063092427670309682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A007598 (n + 1)

end

end A099921.P7063092427670309682

namespace A099921

/-- `5*A007598(n+1)` -/
def P7063092427670309682.Spec : Prop :=
  ∀ n, P7063092427670309682.a n = A099921 (n + 1)

end A099921

/-! ## A099921.P2265357043545661985

`5*A006498(2*n)`
-/

namespace A099921.P2265357043545661985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A006498 (2 * n)

end

end A099921.P2265357043545661985

namespace A099921

/-- `5*A006498(2*n)` -/
def P2265357043545661985.Spec : Prop :=
  ∀ n, P2265357043545661985.a n = A099921 (n + 1)

end A099921

/-! ## A099921.P2665274804795837032

`abs(2-A219233(n+1))`
-/

namespace A099921.P2665274804795837032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A219233 (n + 1)|

end

end A099921.P2665274804795837032

namespace A099921

/-- `abs(2-A219233(n+1))` -/
def P2665274804795837032.Spec : Prop :=
  ∀ n, P2665274804795837032.a n = A099921 (n + 1)

end A099921

/-! ## A099921.P14263835898241242996

`5*A000045(n+1)²`
-/

namespace A099921.P14263835898241242996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 (n + 1) ^ 2

end

end A099921.P14263835898241242996

namespace A099921

/-- `5*A000045(n+1)²` -/
def P14263835898241242996.Spec : Prop :=
  ∀ n, P14263835898241242996.a n = A099921 (n + 1)

end A099921

/-! ## A099921.P12254921594958134169

`5*A236191(n+1)²`
-/

namespace A099921.P12254921594958134169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A236191 (n + 1) ^ 2

end

end A099921.P12254921594958134169

namespace A099921

/-- `5*A236191(n+1)²` -/
def P12254921594958134169.Spec : Prop :=
  ∀ n, P12254921594958134169.a n = A099921 (n + 1)

end A099921

/-! ## A099921.P10984251430856020374

`5*A333378(n+1)²`
-/

namespace A099921.P10984251430856020374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A333378 (n + 1) ^ 2

end

end A099921.P10984251430856020374

namespace A099921

/-- `5*A333378(n+1)²` -/
def P10984251430856020374.Spec : Prop :=
  ∀ n, P10984251430856020374.a n = A099921 (n + 1)

end A099921

/-! ## A099921.P10175675508625001650

`∑[5*A226205(n+1)]`
-/

namespace A099921.P10175675508625001650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A226205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099921.P10175675508625001650

namespace A099921

/-- `∑[5*A226205(n+1)]` -/
def P10175675508625001650.Spec : Prop :=
  ∀ n, P10175675508625001650.a n = A099921 (n + 1)

end A099921

/-! ## A099921.P7326471214930312840

`∑[5*Δ[A000045(n)²]]`
-/

namespace A099921.P7326471214930312840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099921.P7326471214930312840

namespace A099921

/-- `∑[5*Δ[A000045(n)²]]` -/
def P7326471214930312840.Spec : Prop :=
  ∀ n, P7326471214930312840.a n = A099921 (n + 1)

end A099921

/-! ## A099921.P14018403299065530933

`5*A074677(2*n+1)`
-/

namespace A099921.P14018403299065530933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A074677 (2 * n + 1)

end

end A099921.P14018403299065530933

namespace A099921

/-- `5*A074677(2*n+1)` -/
def P14018403299065530933.Spec : Prop :=
  ∀ n, P14018403299065530933.a n = A099921 (n + 1)

end A099921

/-! ## A099921.P5192230609260138908

`5*A111569(2*n+1)`
-/

namespace A099921.P5192230609260138908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A111569 (2 * n + 1)

end

end A099921.P5192230609260138908

namespace A099921

/-- `5*A111569(2*n+1)` -/
def P5192230609260138908.Spec : Prop :=
  ∀ n, P5192230609260138908.a n = A099921 (n + 1)

end A099921

/-! ## A099921.P5326081671489603714

`5*A380696(2*n+1)`
-/

namespace A099921.P5326081671489603714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A380696 (2 * n + 1)

end

end A099921.P5326081671489603714

namespace A099921

/-- `5*A380696(2*n+1)` -/
def P5326081671489603714.Spec : Prop :=
  ∀ n, P5326081671489603714.a n = A099921 (n + 1)

end A099921

/-! ## A099921.P15942930329844869001

`5*Δ[A000045(2*n-(n-2))]²`
-/

namespace A099921.P15942930329844869001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f1 (n + 1) - f1 n) ^ 2

end

end A099921.P15942930329844869001

namespace A099921

/-- `5*Δ[A000045(2*n-(n-2))]²` -/
def P15942930329844869001.Spec : Prop :=
  ∀ n, P15942930329844869001.a n = A099921 (n + 1)

end A099921

/-! ## A099921.P50724364865084859

`a(n-2)+5*A000045(2*n)` with `a(0)=5, a(1)=5`
-/

namespace A099921.P50724364865084859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n a =>
  a (n - 2) + 5 * A000045 (2 * n)

end

end A099921.P50724364865084859

namespace A099921

/-- `a(n-2)+5*A000045(2*n)` -/
def P50724364865084859.Spec : Prop :=
  ∀ n, P50724364865084859.a n = A099921 (n + 1)

end A099921

/-!
# A099922: a(n) = F(4n) - 2n, where F(n) = Fibonacci numbers A000045.

The programs for A099922, the canonical program `A099922.P6305864091727726764` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099922 has offset 1).

The definition of A099922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099922.P6305864091727726764

`9*a(n-1)-16*a(n-2)+9*a(n-3)-a(n-4)` with `a(0)=1, a(1)=17, a(2)=138, a(3)=979`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099922

/-- `9*a(n-1)-16*a(n-2)+9*a(n-3)-a(n-4)` -/
def P6305864091727726764.Spec : Prop :=
  ∀ n, P6305864091727726764.a n = A099922 (n + 1)

theorem P6305864091727726764.correct : P6305864091727726764.Spec := by
  intro n
  simp only [A099922, Nat.add_sub_cancel]

end A099922

/-! ## A099922.P18409218456311421429

`∑[floor(ϕ^Δ[n²])²]`
-/

namespace A099922.P18409218456311421429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℤ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099922.P18409218456311421429

namespace A099922

/-- `∑[floor(ϕ^Δ[n²])²]` -/
def P18409218456311421429.Spec : Prop :=
  ∀ n, P18409218456311421429.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P4281992583368311512

`a(n-1)+floor(ϕ^(2*n+1))²` with `a(0)=1`
-/

namespace A099922.P4281992583368311512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊Real.goldenRatio ^ (2 * n + 1)⌋ ^ 2

end

end A099922.P4281992583368311512

namespace A099922

/-- `a(n-1)+floor(ϕ^(2*n+1))²` -/
def P4281992583368311512.Spec : Prop :=
  ∀ n, P4281992583368311512.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P6302735165533631718

`A099571(4*n)`
-/

namespace A099922.P6302735165533631718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099571 (4 * n)

end

end A099922.P6302735165533631718

namespace A099922

/-- `A099571(4*n)` -/
def P6302735165533631718.Spec : Prop :=
  ∀ n, P6302735165533631718.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P15526699602233530580

`A114182(n+1)+1`
-/

namespace A099922.P15526699602233530580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114182 (n + 1) + 1

end

end A099922.P15526699602233530580

namespace A099922

/-- `A114182(n+1)+1` -/
def P15526699602233530580.Spec : Prop :=
  ∀ n, P15526699602233530580.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P981555229240158326

`A054452(2*(n+1))`
-/

namespace A099922.P981555229240158326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054452 (2 * (n + 1))

end

end A099922.P981555229240158326

namespace A099922

/-- `A054452(2*(n+1))` -/
def P981555229240158326.Spec : Prop :=
  ∀ n, P981555229240158326.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P11591959140414754454

`A054451(4*n+1)`
-/

namespace A099922.P11591959140414754454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054451 (4 * n + 1)

end

end A099922.P11591959140414754454

namespace A099922

/-- `A054451(4*n+1)` -/
def P11591959140414754454.Spec : Prop :=
  ∀ n, P11591959140414754454.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P1174164536615796064

`A114185(2*(n+1))+1`
-/

namespace A099922.P1174164536615796064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114185 (2 * (n + 1)) + 1

end

end A099922.P1174164536615796064

namespace A099922

/-- `A114185(2*(n+1))+1` -/
def P1174164536615796064.Spec : Prop :=
  ∀ n, P1174164536615796064.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P7085833798897658877

`A215006(4*n+2)-1`
-/

namespace A099922.P7085833798897658877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215006 (4 * n + 2) - 1

end

end A099922.P7085833798897658877

namespace A099922

/-- `A215006(4*n+2)-1` -/
def P7085833798897658877.Spec : Prop :=
  ∀ n, P7085833798897658877.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P4424848248700912954

`A003481(n)-(2*n+1)`
-/

namespace A099922.P4424848248700912954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003481 n - (2 * n + 1 : ℤ)

end

end A099922.P4424848248700912954

namespace A099922

/-- `A003481(n)-(2*n+1)` -/
def P4424848248700912954.Spec : Prop :=
  ∀ n, P4424848248700912954.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P3114124596167617950

`A129696(3*n+n+1)`
-/

namespace A099922.P3114124596167617950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129696 (3 * n + (n + 1))

end

end A099922.P3114124596167617950

namespace A099922

/-- `A129696(3*n+n+1)` -/
def P3114124596167617950.Spec : Prop :=
  ∀ n, P3114124596167617950.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P2969944720756915047

`A213043(3*(n+1)+n)`
-/

namespace A099922.P2969944720756915047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213043 (3 * (n + 1) + n)

end

end A099922.P2969944720756915047

namespace A099922

/-- `A213043(3*(n+1)+n)` -/
def P2969944720756915047.Spec : Prop :=
  ∀ n, P2969944720756915047.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P17000706052852959512

`A215004(3*n+n+1)`
-/

namespace A099922.P17000706052852959512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215004 (3 * n + (n + 1))

end

end A099922.P17000706052852959512

namespace A099922

/-- `A215004(3*n+n+1)` -/
def P17000706052852959512.Spec : Prop :=
  ∀ n, P17000706052852959512.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P920639911378169525

`A001924(4*n)+2*n+1`
-/

namespace A099922.P920639911378169525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (4 * n) + (2 * n + 1 : ℤ)

end

end A099922.P920639911378169525

namespace A099922

/-- `A001924(4*n)+2*n+1` -/
def P920639911378169525.Spec : Prop :=
  ∀ n, P920639911378169525.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P9420035782666768370

`abs(∑[A000032(4*n+2)-2])`
-/

namespace A099922.P9420035782666768370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (4 * n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A099922.P9420035782666768370

namespace A099922

/-- `abs(∑[A000032(4*n+2)-2])` -/
def P9420035782666768370.Spec : Prop :=
  ∀ n, P9420035782666768370.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P3431753051569255753

`A000045(4*(n+1))-2*(n+1)`
-/

namespace A099922.P3431753051569255753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (4 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A099922.P3431753051569255753

namespace A099922

/-- `A000045(4*(n+1))-2*(n+1)` -/
def P3431753051569255753.Spec : Prop :=
  ∀ n, P3431753051569255753.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P11565317606642459610

`-∑[2-A000032(2*(2*n+1))]`
-/

namespace A099922.P11565317606642459610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000032 (2 * (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099922.P11565317606642459610

namespace A099922

/-- `-∑[2-A000032(2*(2*n+1))]` -/
def P11565317606642459610.Spec : Prop :=
  ∀ n, P11565317606642459610.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P18358176304640523925

`2*∑[A000032(2*n+1)²/2]`
-/

namespace A099922.P18358176304640523925
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n + 1) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099922.P18358176304640523925

namespace A099922

/-- `2*∑[A000032(2*n+1)²/2]` -/
def P18358176304640523925.Spec : Prop :=
  ∀ n, P18358176304640523925.a n = (A099922 (n + 1) : ℚ)

end A099922

/-! ## A099922.P7985295689630517647

`∑[A000032(lcm(2, 2*n+1))-1]-(n+1)`
-/

namespace A099922.P7985295689630517647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.lcm 2 (2 * n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A099922.P7985295689630517647

namespace A099922

/-- `∑[A000032(lcm(2, 2*n+1))-1]-(n+1)` -/
def P7985295689630517647.Spec : Prop :=
  ∀ n, P7985295689630517647.a n = A099922 (n + 1)

end A099922

/-! ## A099922.P11443843634781757749

`A080145(2*n+1)+A080145(2*n)`
-/

namespace A099922.P11443843634781757749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080145 (2 * n + 1) + A080145 (2 * n)

end

end A099922.P11443843634781757749

namespace A099922

/-- `A080145(2*n+1)+A080145(2*n)` -/
def P11443843634781757749.Spec : Prop :=
  ∀ n, P11443843634781757749.a n = A099922 (n + 1)

end A099922

/-!
# A099923: Fourth powers of Lucas numbers A000032.

The programs for A099923, the canonical program `A099923.P1127511642265100233` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099923 has offset 0).

The definition of A099923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099923.P1127511642265100233

`A001254(n)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A099923

/-- `A001254(n)²` -/
def P1127511642265100233.Spec : Prop :=
  ∀ n, P1127511642265100233.a n = A099923 n

theorem P1127511642265100233.correct : P1127511642265100233.Spec := by
  intro n
  simp only [A099923]

end A099923

/-! ## A099923.P17251264142917425172

`A000032(n)^4`
-/

namespace A099923.P17251264142917425172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 4

end

end A099923.P17251264142917425172

namespace A099923

/-- `A000032(n)^4` -/
def P17251264142917425172.Spec : Prop :=
  ∀ n, P17251264142917425172.a n = A099923 n

end A099923

/-! ## A099923.P5818710626996160823

`(floor((-ϕ)^n)+1)²²`
-/

namespace A099923.P5818710626996160823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((⌊(-Real.goldenRatio) ^ n⌋ + 1) ^ 2) ^ 2

end

end A099923.P5818710626996160823

namespace A099923

/-- `(floor((-ϕ)^n)+1)²²` -/
def P5818710626996160823.Spec : Prop :=
  ∀ n, P5818710626996160823.a n = A099923 n

end A099923

/-! ## A099923.P16403384814716440129

`∑[a(n-1)+a(n-2)]^4` with `a(0)=2, a(1)=-1, a(2)=2`
-/

namespace A099923.P16403384814716440129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A099923.P16403384814716440129

namespace A099923

/-- `∑[a(n-1)+a(n-2)]^4` -/
def P16403384814716440129.Spec : Prop :=
  ∀ n, P16403384814716440129.a n = A099923 n

end A099923

/-! ## A099923.P6301371176307381591

`A059779(∑[n])^4`
-/

namespace A099923.P6301371176307381591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059779 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A099923.P6301371176307381591

namespace A099923

/-- `A059779(∑[n])^4` -/
def P6301371176307381591.Spec : Prop :=
  ∀ n, P6301371176307381591.a n = A099923 n

end A099923

/-! ## A099923.P4318626596519584277

`A123265(∑[n])^4`
-/

namespace A099923.P4318626596519584277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123265 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A099923.P4318626596519584277

namespace A099923

/-- `A123265(∑[n])^4` -/
def P4318626596519584277.Spec : Prop :=
  ∀ n, P4318626596519584277.a n = A099923 n

end A099923

/-! ## A099923.P2383723881798659912

`A132148(∑[n])^4`
-/

namespace A099923.P2383723881798659912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132148 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A099923.P2383723881798659912

namespace A099923

/-- `A132148(∑[n])^4` -/
def P2383723881798659912.Spec : Prop :=
  ∀ n, P2383723881798659912.a n = A099923 n

end A099923

/-! ## A099923.P1671303107062045190

`Δ[A001610(n)]^4`
-/

namespace A099923.P1671303107062045190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 4

end

end A099923.P1671303107062045190

namespace A099923

/-- `Δ[A001610(n)]^4` -/
def P1671303107062045190.Spec : Prop :=
  ∀ n, P1671303107062045190.a n = A099923 n

end A099923

/-! ## A099923.P6044948436946971523

`A061084(n+1)^4`
-/

namespace A099923.P6044948436946971523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) ^ 4

end

end A099923.P6044948436946971523

namespace A099923

/-- `A061084(n+1)^4` -/
def P6044948436946971523.Spec : Prop :=
  ∀ n, P6044948436946971523.a n = A099923 n

end A099923

/-! ## A099923.P9098328232221732081

`A329723(n+2)^4`
-/

namespace A099923.P9098328232221732081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 2) ^ 4

end

end A099923.P9098328232221732081

namespace A099923

/-- `A329723(n+2)^4` -/
def P9098328232221732081.Spec : Prop :=
  ∀ n, P9098328232221732081.a n = A099923 n

end A099923

/-! ## A099923.P10746528219913774394

`(2-A000211(n))^4`
-/

namespace A099923.P10746528219913774394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000211 n) ^ 4

end

end A099923.P10746528219913774394

namespace A099923

/-- `(2-A000211(n))^4` -/
def P10746528219913774394.Spec : Prop :=
  ∀ n, P10746528219913774394.a n = A099923 n

end A099923

/-! ## A099923.P7352419026091102114

`A127218(2*n)^4`
-/

namespace A099923.P7352419026091102114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * n) ^ 4

end

end A099923.P7352419026091102114

namespace A099923

/-- `A127218(2*n)^4` -/
def P7352419026091102114.Spec : Prop :=
  ∀ n, P7352419026091102114.a n = A099923 n

end A099923

/-! ## A099923.P14220912444052771407

`A303427(2*n)^4`
-/

namespace A099923.P14220912444052771407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n) ^ 4

end

end A099923.P14220912444052771407

namespace A099923

/-- `A303427(2*n)^4` -/
def P14220912444052771407.Spec : Prop :=
  ∀ n, P14220912444052771407.a n = A099923 n

end A099923

/-! ## A099923.P8007431189148746320

`A205112(∑[n+1])^4`
-/

namespace A099923.P8007431189148746320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205112 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A099923.P8007431189148746320

namespace A099923

/-- `A205112(∑[n+1])^4` -/
def P8007431189148746320.Spec : Prop :=
  ∀ n, P8007431189148746320.a n = A099923 n

end A099923

/-! ## A099923.P16115396647984072273

`Δ[A000204(n+1)]^4`
-/

namespace A099923.P16115396647984072273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 4

end

end A099923.P16115396647984072273

namespace A099923

/-- `Δ[A000204(n+1)]^4` -/
def P16115396647984072273.Spec : Prop :=
  ∀ n, P16115396647984072273.a n = A099923 n

end A099923

/-! ## A099923.P10650600585563249521

`Δ[A000211(n+1)]^4`
-/

namespace A099923.P10650600585563249521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 4

end

end A099923.P10650600585563249521

namespace A099923

/-- `Δ[A000211(n+1)]^4` -/
def P10650600585563249521.Spec : Prop :=
  ∀ n, P10650600585563249521.a n = A099923 n

end A099923

/-! ## A099923.P7727463529911262344

`A090244(2*n+1)^4`
-/

namespace A099923.P7727463529911262344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (2 * n + 1) ^ 4

end

end A099923.P7727463529911262344

namespace A099923

/-- `A090244(2*n+1)^4` -/
def P7727463529911262344.Spec : Prop :=
  ∀ n, P7727463529911262344.a n = A099923 n

end A099923

/-! ## A099923.P4885970320202582125

`A302126(2*n+1)^4`
-/

namespace A099923.P4885970320202582125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * n + 1) ^ 4

end

end A099923.P4885970320202582125

namespace A099923

/-- `A302126(2*n+1)^4` -/
def P4885970320202582125.Spec : Prop :=
  ∀ n, P4885970320202582125.a n = A099923 n

end A099923

/-! ## A099923.P6285310446529434188

`A000032(n)*A075155(n)`
-/

namespace A099923.P6285310446529434188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A075155 n

end

end A099923.P6285310446529434188

namespace A099923

/-- `A000032(n)*A075155(n)` -/
def P6285310446529434188.Spec : Prop :=
  ∀ n, P6285310446529434188.a n = A099923 n

end A099923

/-! ## A099923.P9525226882093573873

`A075150(n)*A075150(n)`
-/

namespace A099923.P9525226882093573873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075150 n * A075150 n

end

end A099923.P9525226882093573873

namespace A099923

/-- `A075150(n)*A075150(n)` -/
def P9525226882093573873.Spec : Prop :=
  ∀ n, P9525226882093573873.a n = A099923 n

end A099923

/-!
# A099924: Self-convolution of Lucas numbers.

The programs for A099924, the canonical program `A099924.P5463450314866383802` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099924 has offset 0).

The definition of A099924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099924.P5463450314866383802

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=4, a(1)=4, a(2)=13, a(3)=22`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099924

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P5463450314866383802.Spec : Prop :=
  ∀ n, P5463450314866383802.a n = A099924 n

theorem P5463450314866383802.correct : P5463450314866383802.Spec := by
  intro n
  simp only [A099924]

end A099924

/-! ## A099924.P7365870391380064078

`2*A099920(n+1)-A099920(n)`
-/

namespace A099924.P7365870391380064078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099920 (n + 1) - A099920 n

end

end A099924.P7365870391380064078

namespace A099924

/-- `2*A099920(n+1)-A099920(n)` -/
def P7365870391380064078.Spec : Prop :=
  ∀ n, P7365870391380064078.a n = A099924 n

end A099924

/-! ## A099924.P2952121087998502904

`A258321(n)+2*A000032(n)`
-/

namespace A099924.P2952121087998502904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258321 n + 2 * A000032 n

end

end A099924.P2952121087998502904

namespace A099924

/-- `A258321(n)+2*A000032(n)` -/
def P2952121087998502904.Spec : Prop :=
  ∀ n, P2952121087998502904.a n = A099924 n

end A099924

/-! ## A099924.P8265541884188997072

`A099920(n+1)+Δ[A099920(n)]`
-/

namespace A099924.P8265541884188997072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 (n + 1) + (f1 (n + 1) - f1 n)

end

end A099924.P8265541884188997072

namespace A099924

/-- `A099920(n+1)+Δ[A099920(n)]` -/
def P8265541884188997072.Spec : Prop :=
  ∀ n, P8265541884188997072.a n = A099924 n

end A099924

/-! ## A099924.P12288722875930252706

`A006490(n+1)+A006490(n+3)`
-/

namespace A099924.P12288722875930252706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) + A006490 (n + 3)

end

end A099924.P12288722875930252706

namespace A099924

/-- `A006490(n+1)+A006490(n+3)` -/
def P12288722875930252706.Spec : Prop :=
  ∀ n, P12288722875930252706.a n = A099924 n

end A099924

/-! ## A099924.P16629744295477943212

`A246715(n+2)-A000045(n+2)`
-/

namespace A099924.P16629744295477943212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246715 (n + 2) - A000045 (n + 2)

end

end A099924.P16629744295477943212

namespace A099924

/-- `A246715(n+2)-A000045(n+2)` -/
def P16629744295477943212.Spec : Prop :=
  ∀ n, P16629744295477943212.a n = A099924 n

end A099924

/-! ## A099924.P18312727040907220090

`A000045(n)+(n+2)*A000032(n)`
-/

namespace A099924.P18312727040907220090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (n + 2 : ℤ) * A000032 n

end

end A099924.P18312727040907220090

namespace A099924

/-- `A000045(n)+(n+2)*A000032(n)` -/
def P18312727040907220090.Spec : Prop :=
  ∀ n, P18312727040907220090.a n = A099924 n

end A099924

/-! ## A099924.P8052261763497293056

`∑[5*A006367(n)]-A000045(n+1)`
-/

namespace A099924.P8052261763497293056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A006367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 (n + 1)

end

end A099924.P8052261763497293056

namespace A099924

/-- `∑[5*A006367(n)]-A000045(n+1)` -/
def P8052261763497293056.Spec : Prop :=
  ∀ n, P8052261763497293056.a n = A099924 n

end A099924

/-! ## A099924.P5399181457023405679

`A007502(n+2)+A264147(n)+A000032(n)`
-/

namespace A099924.P5399181457023405679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007502 (n + 2) + (A264147 n + A000032 n)

end

end A099924.P5399181457023405679

namespace A099924

/-- `A007502(n+2)+A264147(n)+A000032(n)` -/
def P5399181457023405679.Spec : Prop :=
  ∀ n, P5399181457023405679.a n = A099924 n

end A099924

/-! ## A099924.P9683845606959139369

`A010049(n+1)+A099920(n+1)+A006367(n)`
-/

namespace A099924.P9683845606959139369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) + (A099920 (n + 1) + A006367 n)

end

end A099924.P9683845606959139369

namespace A099924

/-- `A010049(n+1)+A099920(n+1)+A006367(n)` -/
def P9683845606959139369.Spec : Prop :=
  ∀ n, P9683845606959139369.a n = A099924 n

end A099924

/-! ## A099924.P10742394932696214791

`A131913(n+1)+A006367(n)-A006367(n+1)`
-/

namespace A099924.P10742394932696214791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131913 (n + 1) + (A006367 n - A006367 (n + 1))

end

end A099924.P10742394932696214791

namespace A099924

/-- `A131913(n+1)+A006367(n)-A006367(n+1)` -/
def P10742394932696214791.Spec : Prop :=
  ∀ n, P10742394932696214791.a n = A099924 n

end A099924

/-! ## A099924.P11354309179468651745

`A354044(n+1)+A246715(n+2)-A088209(n+1)`
-/

namespace A099924.P11354309179468651745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 (n + 1) + (A246715 (n + 2) - A088209 (n + 1))

end

end A099924.P11354309179468651745

namespace A099924

/-- `A354044(n+1)+A246715(n+2)-A088209(n+1)` -/
def P11354309179468651745.Spec : Prop :=
  ∀ n, P11354309179468651745.a n = A099924 n

end A099924

/-! ## A099924.P8828646900247456437

`A045925(n+1)+Δ[Δ[A045925(n+1)]]`
-/

namespace A099924.P8828646900247456437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) + (f1 (n + 1) - f1 n)

end

end A099924.P8828646900247456437

namespace A099924

/-- `A045925(n+1)+Δ[Δ[A045925(n+1)]]` -/
def P8828646900247456437.Spec : Prop :=
  ∀ n, P8828646900247456437.a n = A099924 n

end A099924

/-! ## A099924.P2198016241711208762

`Δ[A099920(n)+∑[A099920(n)]]`
-/

namespace A099924.P2198016241711208762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099924.P2198016241711208762

namespace A099924

/-- `Δ[A099920(n)+∑[A099920(n)]]` -/
def P2198016241711208762.Spec : Prop :=
  ∀ n, P2198016241711208762.a n = A099924 n

end A099924

/-! ## A099924.P7314666810968321999

`A122491(n+1)+A192306(n+2)-A192308(n+1)`
-/

namespace A099924.P7314666810968321999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122491 (n + 1) + (A192306 (n + 2) - A192308 (n + 1))

end

end A099924.P7314666810968321999

namespace A099924

/-- `A122491(n+1)+A192306(n+2)-A192308(n+1)` -/
def P7314666810968321999.Spec : Prop :=
  ∀ n, P7314666810968321999.a n = A099924 n

end A099924

/-!
# A099925: a(n) = Lucas(n) + (-1)^n.

The programs for A099925, the canonical program `A099925.P4208860571590985935` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099925 has offset 0).

The definition of A099925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099925.P4208860571590985935

`2*a(n-2)+a(n-3)` with `a(0)=3, a(1)=0, a(2)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099925

/-- `2*a(n-2)+a(n-3)` -/
def P4208860571590985935.Spec : Prop :=
  ∀ n, (P4208860571590985935.a n : ℤ) = A099925 n

theorem P4208860571590985935.correct : P4208860571590985935.Spec := by
  intro n
  simp only [A099925]

end A099925

/-! ## A099925.P17668046521863482956

`a(n-1)+a(n-2)+(-1)^n` with `a(0)=3, a(1)=0`
-/

namespace A099925.P17668046521863482956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n a =>
  a (n - 1) + (a (n - 2) + (-1) ^ n)

end

end A099925.P17668046521863482956

namespace A099925

/-- `a(n-1)+a(n-2)+(-1)^n` -/
def P17668046521863482956.Spec : Prop :=
  ∀ n, P17668046521863482956.a n = A099925 n

end A099925

/-! ## A099925.P12157760348923776811

`floor(a(n-2)+a(n-2)+a(n-3))` with `a(0)=3, a(1)=0, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A099925.P12157760348923776811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 4] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 3))

end

end A099925.P12157760348923776811

namespace A099925

/-- `floor(a(n-2)+a(n-2)+a(n-3))` -/
def P12157760348923776811.Spec : Prop :=
  ∀ n, (P12157760348923776811.a n : ℤ) = A099925 n

theorem P12157760348923776811.correct : P12157760348923776811.Spec := by
  intro n
  simp only [A099925, Nat.add_sub_cancel, A099925.P12157760348923776811.a, A099925.P4208860571590985935.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A099925

/-! ## A099925.P5150222276459305538

`3*a(n-2)-(a(n-2)-a(n-3))` with `a(0)=3, a(1)=0, a(2)=4`
-/

namespace A099925.P5150222276459305538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 4] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 3))

end

end A099925.P5150222276459305538

namespace A099925

/-- `3*a(n-2)-(a(n-2)-a(n-3))` -/
def P5150222276459305538.Spec : Prop :=
  ∀ n, P5150222276459305538.a n = A099925 n

end A099925

/-! ## A099925.P6512345700642077560

`(-1)^n+((1+sqrt(5))/2)^n+((1-sqrt(5))/2)^n`
-/

namespace A099925.P6512345700642077560
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℝ) + ((1 + Real.sqrt (5 : ℝ)) / 2) ^ n + ((1 - Real.sqrt (5 : ℝ)) / 2) ^ n

end

end A099925.P6512345700642077560

namespace A099925

/-- `(-1)^n+((1+sqrt(5))/2)^n+((1-sqrt(5))/2)^n` -/
def P6512345700642077560.Spec : Prop :=
  ∀ n, P6512345700642077560.a n = (A099925 n : ℝ)

end A099925

/-! ## A099925.P5641548584678546003

`abs(A355021(n)+2)`
-/

namespace A099925.P5641548584678546003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355021 n + 2|

end

end A099925.P5641548584678546003

namespace A099925

/-- `abs(A355021(n)+2)` -/
def P5641548584678546003.Spec : Prop :=
  ∀ n, P5641548584678546003.a n = A099925 n

end A099925

/-! ## A099925.P5006364911731877625

`abs(A061084(n+1)+1)`
-/

namespace A099925.P5006364911731877625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061084 (n + 1) + 1|

end

end A099925.P5006364911731877625

namespace A099925

/-- `abs(A061084(n+1)+1)` -/
def P5006364911731877625.Spec : Prop :=
  ∀ n, P5006364911731877625.a n = A099925 n

end A099925

/-! ## A099925.P8024653137630750707

`(1-4/2-A061084(n+1))*A033999(n+1)`
-/

namespace A099925.P8024653137630750707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2 - (A061084 (n + 1) : ℚ)) * (A033999 (n + 1) : ℚ)

end

end A099925.P8024653137630750707

namespace A099925

/-- `(1-4/2-A061084(n+1))*A033999(n+1)` -/
def P8024653137630750707.Spec : Prop :=
  ∀ n, P8024653137630750707.a n = (A099925 n : ℚ)

end A099925

/-! ## A099925.P8241267947749417944

`round(ϕ^(n+1)-a(n-1))` with `a(0)=3`
-/

namespace A099925.P8241267947749417944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 1) - (a (n - 1) : ℝ))

end

end A099925.P8241267947749417944

namespace A099925

/-- `round(ϕ^(n+1)-a(n-1))` -/
def P8241267947749417944.Spec : Prop :=
  ∀ n, P8241267947749417944.a n = A099925 n

end A099925

/-! ## A099925.P4134839877477861432

`abs(∑[A075193(n)]+2)`
-/

namespace A099925.P4134839877477861432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 2|

end

end A099925.P4134839877477861432

namespace A099925

/-- `abs(∑[A075193(n)]+2)` -/
def P4134839877477861432.Spec : Prop :=
  ∀ n, P4134839877477861432.a n = A099925 n

end A099925

/-! ## A099925.P12340992181628807098

`abs(A000032(n+1)-a(n-1))` with `a(0)=3`
-/

namespace A099925.P12340992181628807098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |A000032 (n + 1) - a (n - 1)|

end

end A099925.P12340992181628807098

namespace A099925

/-- `abs(A000032(n+1)-a(n-1))` -/
def P12340992181628807098.Spec : Prop :=
  ∀ n, P12340992181628807098.a n = A099925 n

end A099925

/-! ## A099925.P1393034375679404628

`Δ[A001610(n)+and(1, n)]`
-/

namespace A099925.P1393034375679404628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099925.P1393034375679404628

namespace A099925

/-- `Δ[A001610(n)+and(1, n)]` -/
def P1393034375679404628.Spec : Prop :=
  ∀ n, P1393034375679404628.a n = A099925 n

end A099925

/-! ## A099925.P2861989701965049535

`Δ[A000032(n+1)+n%2]`
-/

namespace A099925.P2861989701965049535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099925.P2861989701965049535

namespace A099925

/-- `Δ[A000032(n+1)+n%2]` -/
def P2861989701965049535.Spec : Prop :=
  ∀ n, P2861989701965049535.a n = A099925 n

end A099925

/-! ## A099925.P10042051618240680709

`Δ[A000032(2*n-(n-1))-and(1, n+1)]`
-/

namespace A099925.P10042051618240680709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099925.P10042051618240680709

namespace A099925

/-- `Δ[A000032(2*n-(n-1))-and(1, n+1)]` -/
def P10042051618240680709.Spec : Prop :=
  ∀ n, P10042051618240680709.a n = A099925 n

end A099925

/-! ## A099925.P4079678006753681882

`(A061084(n+1)+A001254(n))/A000032(n)`
-/

namespace A099925.P4079678006753681882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061084 (n + 1) + A001254 n : ℚ) / (A000032 n : ℚ)

end

end A099925.P4079678006753681882

namespace A099925

/-- `(A061084(n+1)+A001254(n))/A000032(n)` -/
def P4079678006753681882.Spec : Prop :=
  ∀ n, P4079678006753681882.a n = (A099925 n : ℚ)

end A099925

/-! ## A099925.P11012244952356300750

`(A075150(n)+A000032(n))/A061084(n+1)`
-/

namespace A099925.P11012244952356300750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075150 n + A000032 n : ℚ) / (A061084 (n + 1) : ℚ)

end

end A099925.P11012244952356300750

namespace A099925

/-- `(A075150(n)+A000032(n))/A061084(n+1)` -/
def P11012244952356300750.Spec : Prop :=
  ∀ n, P11012244952356300750.a n = (A099925 n : ℚ)

end A099925

/-! ## A099925.P8140438682993129923

`(A215602(n)+A075193(n))/A000032(n+1)`
-/

namespace A099925.P8140438682993129923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215602 n + A075193 n : ℚ) / (A000032 (n + 1) : ℚ)

end

end A099925.P8140438682993129923

namespace A099925

/-- `(A215602(n)+A075193(n))/A000032(n+1)` -/
def P8140438682993129923.Spec : Prop :=
  ∀ n, P8140438682993129923.a n = (A099925 n : ℚ)

end A099925

/-! ## A099925.P803843324585187763

`(A075269(n)+A000032(n+1))/A075193(n)`
-/

namespace A099925.P803843324585187763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075269 n + A000032 (n + 1) : ℚ) / (A075193 n : ℚ)

end

end A099925.P803843324585187763

namespace A099925

/-- `(A075269(n)+A000032(n+1))/A075193(n)` -/
def P803843324585187763.Spec : Prop :=
  ∀ n, P803843324585187763.a n = (A099925 n : ℚ)

end A099925

/-! ## A099925.P16867068512697420199

`(A075155(n)+A075150(n))/A001254(n)`
-/

namespace A099925.P16867068512697420199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075155 n + A075150 n : ℚ) / (A001254 n : ℚ)

end

end A099925.P16867068512697420199

namespace A099925

/-- `(A075155(n)+A075150(n))/A001254(n)` -/
def P16867068512697420199.Spec : Prop :=
  ∀ n, P16867068512697420199.a n = (A099925 n : ℚ)

end A099925

/-!
# A099927: Pellonomial triangle P(k,n) read by rows.

The programs for A099927, there is no canonical definition to state claims against.
-/

/-! ## A099927.P9838906346517138048

`abs(A383715(n))`
-/

namespace A099927.P9838906346517138048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A383715 n|

end

end A099927.P9838906346517138048

/-! ## A099927.P3097323220843557639

`gcd(A000038(n), A383715(n))`
-/

namespace A099927.P3097323220843557639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A383715 n)

end

end A099927.P3097323220843557639

/-! ## A099927.P1919034584703098868

`lcm(A020985(n), A383715(n))`
-/

namespace A099927.P1919034584703098868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A383715 n)

end

end A099927.P1919034584703098868

/-! ## A099927.P2223877014295139332

`A087960(A002262(n))*A383715(n)`
-/

namespace A099927.P2223877014295139332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A002262 n).toNat * A383715 n

end

end A099927.P2223877014295139332

/-! ## A099927.P12334267668762902592

`A057077(A002260(n+1))*A383715(n)`
-/

namespace A099927.P12334267668762902592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A002260 (n + 1)).toNat * A383715 n

end

end A099927.P12334267668762902592

/-!
# A099928: Row sums of Pellonomial triangle A099927.

The programs for A099928, there is no canonical definition to state claims against.
-/

/-! ## A099928.P2896811760336653215

`record[gcd(∑[2*n²], A071543(n))]`
-/

namespace A099928.P2896811760336653215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A071543 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099928.P2896811760336653215

/-! ## A099928.P4193589367761306847

`A065428(A026010(n))`
-/

namespace A099928.P4193589367761306847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065428 (A026010 n).toNat

end

end A099928.P4193589367761306847

/-!
# A099929: Central Pellonomial coefficients.

The programs for A099929, there is no canonical definition to state claims against.
-/

/-! ## A099929.P4013437252989356774

`A099927(∑[4*n])`
-/

namespace A099929.P4013437252989356774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099927 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099929.P4013437252989356774

/-! ## A099929.P4561618054779161680

`∑[A001333(n)]*A256799(n)`
-/

namespace A099929.P4561618054779161680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A256799 n

end

end A099929.P4561618054779161680

/-! ## A099929.P507411398490403221

`A000129(n+1)*A256799(n)`
-/

namespace A099929.P507411398490403221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A256799 n

end

end A099929.P507411398490403221

/-! ## A099929.P16447886362170581639

`∑[abs(A123335(n))]*A256799(n)`
-/

namespace A099929.P16447886362170581639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123335 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A256799 n

end

end A099929.P16447886362170581639

/-! ## A099929.P12458856898609259912

`A002965(A103517(n))*A256799(n)`
-/

namespace A099929.P12458856898609259912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A103517 n).toNat * A256799 n

end

end A099929.P12458856898609259912

/-!
# A099930: a(n) = Pell(n) * Pell(n-1) * Pell(n-2) / 10.

The programs for A099930, there is no canonical definition to state claims against.
-/

/-! ## A099930.P13556877649750000532

`A099927(A167614(n+2))`
-/

namespace A099930.P13556877649750000532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099927 (A167614 (n + 2)).toNat

end

end A099930.P13556877649750000532

/-! ## A099930.P12159179279474262241

`A099927(A141214(n)+6)`
-/

namespace A099930.P12159179279474262241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099927 (A141214 n + 6).toNat

end

end A099930.P12159179279474262241

/-! ## A099930.P3952648290501536563

`A099927(A052905(n)+8)`
-/

namespace A099930.P3952648290501536563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099927 (A052905 n + 8).toNat

end

end A099930.P3952648290501536563

/-! ## A099930.P691714954769269932

`A099927(A055999(n)+9)`
-/

namespace A099930.P691714954769269932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099927 (A055999 n + 9).toNat

end

end A099930.P691714954769269932

/-! ## A099930.P4493576821928268944

`A099927(eq[4, A002260(n+1)])`
-/

namespace A099930.P4493576821928268944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099930.P4493576821928268944

/-!
# A099931: a(n) = Pell(n) * Pell(n-1) * Pell(n-2) * Pell(n-3) / 120.

The programs for A099931, there is no canonical definition to state claims against.
-/

/-! ## A099931.P9305046283890463338

`A099927(A056000(n)+14)`
-/

namespace A099931.P9305046283890463338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099927 (A056000 n + 14).toNat

end

end A099931.P9305046283890463338

/-! ## A099931.P6164837452784714530

`A099927(eq[5, A002260(n+1)])`
-/

namespace A099931.P6164837452784714530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099931.P6164837452784714530

/-! ## A099931.P137238394568294979

`A099927(eq[5, A104763(n+1)])`
-/

namespace A099931.P137238394568294979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099931.P137238394568294979

/-! ## A099931.P16715747671341214668

`A099927(eq[11, A037126(n+1)])`
-/

namespace A099931.P16715747671341214668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099931.P16715747671341214668

/-! ## A099931.P9698783570790365256

`A099927(A052905(n+2))`
-/

namespace A099931.P9698783570790365256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099927 (A052905 (n + 2)).toNat

end

end A099931.P9698783570790365256

/-!
# A099932: Triangle read by rows: nonzero coefficients of polynomials 2^n*E(n,x), with E the Euler polynomials.

The programs for A099932, there is no canonical definition to state claims against.
-/

/-! ## A099932.P11601034019998035391

`A004175(lt[A053123(n), 2])`
-/

namespace A099932.P11601034019998035391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053123 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A099932.P11601034019998035391

/-! ## A099932.P1219049424614955871

`A004175(lt[A163626(n), 2])`
-/

namespace A099932.P1219049424614955871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163626 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A099932.P1219049424614955871

/-! ## A099932.P18174128363847616676

`A004175(lt[A244142(n), 2])`
-/

namespace A099932.P18174128363847616676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244142 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A099932.P18174128363847616676

/-! ## A099932.P2135811519293093473

`A004175(lt[0, abs(A004175(n))])`
-/

namespace A099932.P2135811519293093473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004175 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A099932.P2135811519293093473

/-! ## A099932.P1673380902456464501

`A004175(lt[0, A004175(n)²])`
-/

namespace A099932.P1673380902456464501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A099932.P1673380902456464501

/-!
# A099933: Main diagonal of array A007754.

The programs for A099933, there is no canonical definition to state claims against.
-/

/-! ## A099933.P17013855522949706876

`A007754(∑[4*n])`
-/

namespace A099933.P17013855522949706876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007754 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099933.P17013855522949706876

/-! ## A099933.P12399273033997850193

`record[A003982(n)*A007754(n)]`
-/

namespace A099933.P12399273033997850193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A007754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099933.P12399273033997850193

/-! ## A099933.P241164523559211993

`record[A007754(n*A008619(n))]`
-/

namespace A099933.P241164523559211993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007754 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099933.P241164523559211993

/-! ## A099933.P2716245344302582750

`record[A007754(gcd(n, A114327(n)))]`
-/

namespace A099933.P2716245344302582750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007754 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099933.P2716245344302582750

/-! ## A099933.P547302513946913270

`record[A007754(and(n, A185917(n+1)))]`
-/

namespace A099933.P547302513946913270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007754 (Int.land (n : ℤ) (A185917 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099933.P547302513946913270

/-!
# A099934: Antidiagonal sums of array A007754.

The programs for A099934, the canonical program `A099934.P4533926082282826670` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099934 has offset 0).

The definition of A099934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099934.P4533926082282826670

`n*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099934

/-- `n*a(n-1)-a(n-2)+1` -/
def P4533926082282826670.Spec : Prop :=
  ∀ n, P4533926082282826670.a n = A099934 n

theorem P4533926082282826670.correct : P4533926082282826670.Spec := by
  intro n
  simp only [A099934]

end A099934

/-! ## A099934.P4662018312222681472

`1-(a(n-2)-n*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A099934.P4662018312222681472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (a (n - 2) - (n : ℤ) * a (n - 1))

end

end A099934.P4662018312222681472

namespace A099934

/-- `1-(a(n-2)-n*a(n-1))` -/
def P4662018312222681472.Spec : Prop :=
  ∀ n, P4662018312222681472.a n = A099934 n

end A099934

/-! ## A099934.P11978185153156246240

`a(n-1)/cot(atan(n))+1-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A099934.P11978185153156246240
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (n : ℝ)) + 1 - a (n - 2)

end

end A099934.P11978185153156246240

namespace A099934

/-- `a(n-1)/cot(atan(n))+1-a(n-2)` -/
def P11978185153156246240.Spec : Prop :=
  ∀ n, P11978185153156246240.a n = (A099934 n : ℝ)

end A099934

/-! ## A099934.P18255400250821521536

`a(n-1)/n^-1+1-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A099934.P18255400250821521536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + 1 - a (n - 2)

end

end A099934.P18255400250821521536

namespace A099934

/-- `a(n-1)/n^-1+1-a(n-2)` -/
def P18255400250821521536.Spec : Prop :=
  ∀ n, P18255400250821521536.a n = (A099934 n : ℚ)

end A099934

/-!
# A099936: Primes of the form 1 + product of first n prime gaps.

The programs for A099936, there is no canonical definition to state claims against.
-/

/-! ## A099936.P15087409294498629475

`A081411(A389823(n+1))+1`
-/

namespace A099936.P15087409294498629475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081411 (A389823 (n + 1)).toNat + 1

end

end A099936.P15087409294498629475

/-! ## A099936.P12935869957488459062

`p?[A081411(n+1)+1]`
-/

namespace A099936.P12935869957488459062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081411 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099936.P12935869957488459062

/-!
# A099937: Primes not of the form floor(k + (1/2)*log(k)^2).

The programs for A099937, there is no canonical definition to state claims against.
-/

/-! ## A099937.P6517869186312463500

`p?[floor(exp(sqrt(2*n)))+n]`
-/

namespace A099937.P6517869186312463500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.sqrt (2 * n : ℝ))⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099937.P6517869186312463500

/-!
# A099938: Consider the sequence of circles C0, C1, C2, C3 ..., where C0 is a half-circle of radius 1. C1 is the largest circle that fits into C0 and has radius 1/2. C(n+1) is the largest circle that fits inside C0 but outside C(n), etc. Sequence gives the curvatures (reciprocals of the radii) of the circles.

The programs for A099938, the canonical program `A099938.P1452447152184168499` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099938 has offset 1).

The definition of A099938 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099938.P1452447152184168499

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=2, a(1)=4, a(2)=18`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099938

/-- `7*a(n-1)-7*a(n-2)+a(n-3)` -/
def P1452447152184168499.Spec : Prop :=
  ∀ n, P1452447152184168499.a n = A099938 (n + 1)

theorem P1452447152184168499.correct : P1452447152184168499.Spec := by
  intro n
  simp only [A099938, Nat.add_sub_cancel]

end A099938

/-! ## A099938.P13500631843724215142

`2*cosh(log((sqrt(2)+1)^n))²`
-/

namespace A099938.P13500631843724215142
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.cosh (Real.log ((Real.sqrt (2 : ℝ) + 1) ^ n)) ^ 2

end

end A099938.P13500631843724215142

namespace A099938

/-- `2*cosh(log((sqrt(2)+1)^n))²` -/
def P13500631843724215142.Spec : Prop :=
  ∀ n, P13500631843724215142.a n = (A099938 (n + 1) : ℝ)

end A099938

/-! ## A099938.P15732287521342987811

`6*a(n-1)-(a(n-2)+4)` with `a(0)=2, a(1)=4`
-/

namespace A099938.P15732287521342987811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  6 * a (n - 1) - (a (n - 2) + 4)

end

end A099938.P15732287521342987811

namespace A099938

/-- `6*a(n-1)-(a(n-2)+4)` -/
def P15732287521342987811.Spec : Prop :=
  ∀ n, P15732287521342987811.a n = A099938 (n + 1)

end A099938

/-! ## A099938.P8407410655766672463

`6*a(n-1)-4-a(n-2)` with `a(0)=2, a(1)=4`
-/

namespace A099938.P8407410655766672463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  6 * a (n - 1) - 4 - a (n - 2)

end

end A099938.P8407410655766672463

namespace A099938

/-- `6*a(n-1)-4-a(n-2)` -/
def P8407410655766672463.Spec : Prop :=
  ∀ n, P8407410655766672463.a n = A099938 (n + 1)

end A099938

/-! ## A099938.P6460308084117720907

`record[a(n-2)-a(n-1)-a(n-1)]+1` with `a(0)=1, a(1)=1`
-/

namespace A099938.P6460308084117720907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A099938.P6460308084117720907

namespace A099938

/-- `record[a(n-2)-a(n-1)-a(n-1)]+1` -/
def P6460308084117720907.Spec : Prop :=
  ∀ n, P6460308084117720907.a n = A099938 (n + 1)

end A099938

/-! ## A099938.P6309726024855539207

`1+A001541(n)`
-/

namespace A099938.P6309726024855539207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001541 n

end

end A099938.P6309726024855539207

namespace A099938

/-- `1+A001541(n)` -/
def P6309726024855539207.Spec : Prop :=
  ∀ n, P6309726024855539207.a n = A099938 (n + 1)

end A099938

/-! ## A099938.P13862208847304891143

`record[A123335(n)+1]`
-/

namespace A099938.P13862208847304891143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099938.P13862208847304891143

namespace A099938

/-- `record[A123335(n)+1]` -/
def P13862208847304891143.Spec : Prop :=
  ∀ n, P13862208847304891143.a n = A099938 (n + 1)

end A099938

/-! ## A099938.P10163786661294881723

`A082639(n+1)+2`
-/

namespace A099938.P10163786661294881723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082639 (n + 1) + 2

end

end A099938.P10163786661294881723

namespace A099938

/-- `A082639(n+1)+2` -/
def P10163786661294881723.Spec : Prop :=
  ∀ n, P10163786661294881723.a n = A099938 (n + 1)

end A099938

/-! ## A099938.P4133749120419413911

`2*(A001108(n)+1)`
-/

namespace A099938.P4133749120419413911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001108 n + 1)

end

end A099938.P4133749120419413911

namespace A099938

/-- `2*(A001108(n)+1)` -/
def P4133749120419413911.Spec : Prop :=
  ∀ n, P4133749120419413911.a n = A099938 (n + 1)

end A099938

/-! ## A099938.P8329015341272836608

`A001333(2*n)+1`
-/

namespace A099938.P8329015341272836608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (2 * n) + 1

end

end A099938.P8329015341272836608

namespace A099938

/-- `A001333(2*n)+1` -/
def P8329015341272836608.Spec : Prop :=
  ∀ n, P8329015341272836608.a n = A099938 (n + 1)

end A099938

/-! ## A099938.P1395825868330215349

`2*A055997(n+1)`
-/

namespace A099938.P1395825868330215349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055997 (n + 1)

end

end A099938.P1395825868330215349

namespace A099938

/-- `2*A055997(n+1)` -/
def P1395825868330215349.Spec : Prop :=
  ∀ n, P1395825868330215349.a n = A099938 (n + 1)

end A099938

/-! ## A099938.P3695312373041312998

`A079496(2*n)+1`
-/

namespace A099938.P3695312373041312998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (2 * n) + 1

end

end A099938.P3695312373041312998

namespace A099938

/-- `A079496(2*n)+1` -/
def P3695312373041312998.Spec : Prop :=
  ∀ n, P3695312373041312998.a n = A099938 (n + 1)

end A099938

/-! ## A099938.P2852064556107066867

`A123335(2*n)+1`
-/

namespace A099938.P2852064556107066867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 (2 * n) + 1

end

end A099938.P2852064556107066867

namespace A099938

/-- `A123335(2*n)+1` -/
def P2852064556107066867.Spec : Prop :=
  ∀ n, P2852064556107066867.a n = A099938 (n + 1)

end A099938

/-! ## A099938.P14962547234519545928

`A265278(2*n)+2`
-/

namespace A099938.P14962547234519545928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265278 (2 * n) + 2

end

end A099938.P14962547234519545928

namespace A099938

/-- `A265278(2*n)+2` -/
def P14962547234519545928.Spec : Prop :=
  ∀ n, P14962547234519545928.a n = A099938 (n + 1)

end A099938

/-! ## A099938.P11543194679550884421

`A293004(2*n)+2`
-/

namespace A099938.P11543194679550884421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 (2 * n) + 2

end

end A099938.P11543194679550884421

namespace A099938

/-- `A293004(2*n)+2` -/
def P11543194679550884421.Spec : Prop :=
  ∀ n, P11543194679550884421.a n = A099938 (n + 1)

end A099938

/-! ## A099938.P7294129392615246821

`2*A097075(2*n)`
-/

namespace A099938.P7294129392615246821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097075 (2 * n)

end

end A099938.P7294129392615246821

namespace A099938

/-- `2*A097075(2*n)` -/
def P7294129392615246821.Spec : Prop :=
  ∀ n, P7294129392615246821.a n = A099938 (n + 1)

end A099938

/-! ## A099938.P5516418845334771576

`2*A171842(2*n)`
-/

namespace A099938.P5516418845334771576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171842 (2 * n)

end

end A099938.P5516418845334771576

namespace A099938

/-- `2*A171842(2*n)` -/
def P5516418845334771576.Spec : Prop :=
  ∀ n, P5516418845334771576.a n = A099938 (n + 1)

end A099938

/-! ## A099938.P9585088426295593802

`A126354(Δ[n²])+1`
-/

namespace A099938.P9585088426295593802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126354 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A099938.P9585088426295593802

namespace A099938

/-- `A126354(Δ[n²])+1` -/
def P9585088426295593802.Spec : Prop :=
  ∀ n, P9585088426295593802.a n = A099938 (n + 1)

end A099938

/-!
# A099939: Seven-segment LED clock sequence: starting at 00:00 midnight, sequence gives total number of illuminated segments every minute that appear in the hour and minute characters of the LED display on a digital clock.

The programs for A099939, there is no canonical definition to state claims against.
-/

/-! ## A099939.P14286907328499170395

`A357970(n)-A271091(A132046(2*n+3))`
-/

namespace A099939.P14286907328499170395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357970 n - A271091 (A132046 (2 * n + 3)).toNat

end

end A099939.P14286907328499170395

/-! ## A099939.P10784590073815684977

`A357970(n)-A082476(A079850(n+5))`
-/

namespace A099939.P10784590073815684977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357970 n - A082476 (A079850 (n + 5)).toNat

end

end A099939.P10784590073815684977

/-! ## A099939.P7594714934214799428

`A357970(n)-A082476(A167168(n+1))`
-/

namespace A099939.P7594714934214799428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357970 n - A082476 (A167168 (n + 1)).toNat

end

end A099939.P7594714934214799428

/-! ## A099939.P7865729554669169106

`A357970(n)-A096443(A378739(n+1))`
-/

namespace A099939.P7865729554669169106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357970 n - A096443 (A378739 (n + 1)).toNat

end

end A099939.P7865729554669169106

/-!
# A099940: a(n) = 2*(A056855(n)) /(phi(n)*n), where phi() is the Euler phi function.

The programs for A099940, there is no canonical definition to state claims against.
-/

/-! ## A099940.P3306901064448294760

`2/A002618(n+1)*A056855(n+1)`
-/

namespace A099940.P3306901064448294760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A002618 (n + 1) : ℚ) * (A056855 (n + 1) : ℚ)

end

end A099940.P3306901064448294760

/-!
# A099941: a(0) = 4; for n>0, a(n) = a(n-1)^2 - 10.

The programs for A099941, the canonical program `A099941.P958139391571096458` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099941 has offset 0).

The definition of A099941 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-10` (program `A099941.P958139391571096458`, by `A099941.P958139391571096458.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099941.P958139391571096458

`a(n-1)²-10` with `a(0)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099941

/-- `a(n-1)²-10` -/
def P958139391571096458.Spec : Prop :=
  ∀ n, P958139391571096458.a n = A099941 n

theorem P958139391571096458.correct : P958139391571096458.Spec := by
  intro n
  simp only [A099941]

end A099941

/-! ## A099941.P10784192514861813979

`a(n-1)^(4/2)-10` with `a(0)=4`
-/

namespace A099941.P10784192514861813979
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) ^ ((4 : ℚ) / 2 : ℝ) - 10

end

end A099941.P10784192514861813979

namespace A099941

/-- `a(n-1)^(4/2)-10` -/
def P10784192514861813979.Spec : Prop :=
  ∀ n, P10784192514861813979.a n = (A099941 n : ℝ)

end A099941

/-! ## A099941.P17638591558683387094

`a(n-1)*a(n-1)-10` with `a(0)=4`
-/

namespace A099941.P17638591558683387094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) * a (n - 1) - 10

end

end A099941.P17638591558683387094

namespace A099941

/-- `a(n-1)*a(n-1)-10` -/
def P17638591558683387094.Spec : Prop :=
  ∀ n, P17638591558683387094.a n = A099941 n

theorem P17638591558683387094.correct : P17638591558683387094.Spec := by
  intro n
  simp only [A099941, Nat.add_sub_cancel, A099941.P17638591558683387094.a, A099941.P958139391571096458.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A099941

/-!
# A099942: Start with 1, then alternately double or add 2.

The programs for A099942, the canonical program `A099942.P10368204105329688515` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099942 has offset 0).

The definition of A099942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099942.P10368204105329688515

`3*2^ceil(n/2)+(-1)^n-3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099942

/-- `3*2^ceil(n/2)+(-1)^n-3` -/
def P10368204105329688515.Spec : Prop :=
  ∀ n, P10368204105329688515.a n = (A099942 n : ℚ)

end A099942

/-! ## A099942.P12128205850994814718

`2*(a(n-2)+a(n%2))` with `a(0)=1, a(1)=2`
-/

namespace A099942.P12128205850994814718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 2) + a (n % 2))

end

end A099942.P12128205850994814718

namespace A099942

/-- `2*(a(n-2)+a(n%2))` -/
def P12128205850994814718.Spec : Prop :=
  ∀ n, (P12128205850994814718.a n : ℤ) = A099942 n

end A099942

/-! ## A099942.P14269706797173910772

`2*(a(n-2)+gcd(2, n+1))` with `a(0)=1, a(1)=2`
-/

namespace A099942.P14269706797173910772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 2) + Nat.gcd 2 (n + 1))

end

end A099942.P14269706797173910772

namespace A099942

/-- `2*(a(n-2)+gcd(2, n+1))` -/
def P14269706797173910772.Spec : Prop :=
  ∀ n, (P14269706797173910772.a n : ℤ) = A099942 n

end A099942

/-! ## A099942.P11009146826713959755

`2*(3-(a(n-1)%3-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A099942.P11009146826713959755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (3 - (Int.tmod (a (n - 1)) 3 - a (n - 2)))

end

end A099942.P11009146826713959755

namespace A099942

/-- `2*(3-(a(n-1)%3-a(n-2)))` -/
def P11009146826713959755.Spec : Prop :=
  ∀ n, P11009146826713959755.a n = A099942 n

end A099942

/-! ## A099942.P17010587572548520047

`2*(A020639(3*n)+a(n-2)-1)` with `a(0)=1, a(1)=2`
-/

namespace A099942.P17010587572548520047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (A020639 (3 * n) + a (n - 2) - 1)

end

end A099942.P17010587572548520047

namespace A099942

/-- `2*(A020639(3*n)+a(n-2)-1)` -/
def P17010587572548520047.Spec : Prop :=
  ∀ n, P17010587572548520047.a n = A099942 n

end A099942

/-! ## A099942.P15301177437774570051

`∪[A033484(n), A131128(n)]`
-/

namespace A099942.P15301177437774570051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131128 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099942.P15301177437774570051

namespace A099942

/-- `∪[A033484(n), A131128(n)]` -/
def P15301177437774570051.Spec : Prop :=
  ∀ n, (P15301177437774570051.a n : ℤ) = A099942 n

end A099942

/-! ## A099942.P15414762254321457583

`A000034(n)*A033484(A004526(n))`
-/

namespace A099942.P15414762254321457583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A033484 (A004526 n).toNat

end

end A099942.P15414762254321457583

namespace A099942

/-- `A000034(n)*A033484(A004526(n))` -/
def P15414762254321457583.Spec : Prop :=
  ∀ n, P15414762254321457583.a n = A099942 n

end A099942

/-! ## A099942.P478678650274482501

`∪[A131128(n), A369491(n)]`
-/

namespace A099942.P478678650274482501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369491 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099942.P478678650274482501

namespace A099942

/-- `∪[A131128(n), A369491(n)]` -/
def P478678650274482501.Spec : Prop :=
  ∀ n, (P478678650274482501.a n : ℤ) = A099942 n

end A099942

/-! ## A099942.P15319654915291369713

`∪[2*A027383(2*n), A027383(2*n)]`
-/

namespace A099942.P15319654915291369713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027383 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099942.P15319654915291369713

namespace A099942

/-- `∪[2*A027383(2*n), A027383(2*n)]` -/
def P15319654915291369713.Spec : Prop :=
  ∀ n, (P15319654915291369713.a n : ℤ) = A099942 n

end A099942

/-! ## A099942.P7693816222605606658

`(A233411(n)+A032085(n+2))/A016116(n)`
-/

namespace A099942.P7693816222605606658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233411 n + A032085 (n + 2) : ℚ) / (A016116 n : ℚ)

end

end A099942.P7693816222605606658

namespace A099942

/-- `(A233411(n)+A032085(n+2))/A016116(n)` -/
def P7693816222605606658.Spec : Prop :=
  ∀ n, P7693816222605606658.a n = (A099942 n : ℚ)

end A099942

/-!
# A099943: Number of 5 X n binary matrices avoiding simultaneously the right angled numbered polyomino patterns (ranpp) (00;1), (01,1) and (11;0).

The programs for A099943, the canonical program `A099943.P14531289836654467320` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099943 has offset 2).

The definition of A099943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099943.P14531289836654467320

`2*a(n-1)-a(n-2)` with `a(0)=72, a(1)=98`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099943

/-- `2*a(n-1)-a(n-2)` -/
def P14531289836654467320.Spec : Prop :=
  ∀ n, P14531289836654467320.a n = A099943 (n + 2)

theorem P14531289836654467320.correct : P14531289836654467320.Spec := by
  intro n
  simp only [A099943, Nat.add_sub_cancel]

end A099943

/-!
# A099944: Number of 3 X n binary matrices avoiding simultaneously the right angled numbered polyomino patterns (ranpp) (00;1) and (11;0).

The programs for A099944, the canonical program `A099944.P1893893852173851219` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099944 has offset 3).

The definition of A099944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099944.P1893893852173851219

`3*a(n-1)-2*a(n-2)` with `a(0)=76, a(1)=164`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099944

/-- `3*a(n-1)-2*a(n-2)` -/
def P1893893852173851219.Spec : Prop :=
  ∀ n, P1893893852173851219.a n = A099944 (n + 3)

theorem P1893893852173851219.correct : P1893893852173851219.Spec := by
  intro n
  simp only [A099944, Nat.add_sub_cancel]

end A099944

/-! ## A099944.P13576811336414881424

`11*2^(n+3)-12`
-/

namespace A099944.P13576811336414881424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * 2 ^ (n + 3) : ℤ) - 12

end

end A099944.P13576811336414881424

namespace A099944

/-- `11*2^(n+3)-12` -/
def P13576811336414881424.Spec : Prop :=
  ∀ n, P13576811336414881424.a n = A099944 (n + 3)

end A099944

/-! ## A099944.P12145978605714183990

`lcm(4, 3-22*2^n)`
-/

namespace A099944.P12145978605714183990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (3 - (22 * 2 ^ n : ℤ))

end

end A099944.P12145978605714183990

namespace A099944

/-- `lcm(4, 3-22*2^n)` -/
def P12145978605714183990.Spec : Prop :=
  ∀ n, (P12145978605714183990.a n : ℤ) = A099944 (n + 3)

end A099944

/-! ## A099944.P10938254909770633927

`2*(a(n-1)+6)` with `a(0)=76`
-/

namespace A099944.P10938254909770633927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [76] fun n a =>
  2 * (a (n - 1) + 6)

end

end A099944.P10938254909770633927

namespace A099944

/-- `2*(a(n-1)+6)` -/
def P10938254909770633927.Spec : Prop :=
  ∀ n, (P10938254909770633927.a n : ℤ) = A099944 (n + 3)

end A099944

/-! ## A099944.P424108690997365655

`∑[record[2*a(n-1)]]` with `a(0)=76, a(1)=22`
-/

namespace A099944.P424108690997365655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [76, 22] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099944.P424108690997365655

namespace A099944

/-- `∑[record[2*a(n-1)]]` -/
def P424108690997365655.Spec : Prop :=
  ∀ n, (P424108690997365655.a n : ℤ) = A099944 (n + 3)

end A099944

/-! ## A099944.P3824986255727949778

`4*(or(1, 22*2^n)-4)`
-/

namespace A099944.P3824986255727949778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((Nat.lor 1 (22 * 2 ^ n) : ℤ) - 4)

end

end A099944.P3824986255727949778

namespace A099944

/-- `4*(or(1, 22*2^n)-4)` -/
def P3824986255727949778.Spec : Prop :=
  ∀ n, P3824986255727949778.a n = A099944 (n + 3)

end A099944

/-! ## A099944.P6363331659560662675

`4*A156198(n+2)`
-/

namespace A099944.P6363331659560662675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A156198 (n + 2)

end

end A099944.P6363331659560662675

namespace A099944

/-- `4*A156198(n+2)` -/
def P6363331659560662675.Spec : Prop :=
  ∀ n, P6363331659560662675.a n = A099944 (n + 3)

end A099944

/-! ## A099944.P14863369386830995351

`4*(A005015(n+1)-3)`
-/

namespace A099944.P14863369386830995351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A005015 (n + 1) - 3)

end

end A099944.P14863369386830995351

namespace A099944

/-- `4*(A005015(n+1)-3)` -/
def P14863369386830995351.Spec : Prop :=
  ∀ n, P14863369386830995351.a n = A099944 (n + 3)

end A099944

/-! ## A099944.P2863200457847800264

`4*(A122041(n+1)-4)`
-/

namespace A099944.P2863200457847800264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A122041 (n + 1) - 4)

end

end A099944.P2863200457847800264

namespace A099944

/-- `4*(A122041(n+1)-4)` -/
def P2863200457847800264.Spec : Prop :=
  ∀ n, P2863200457847800264.a n = A099944 (n + 3)

end A099944

/-! ## A099944.P4047772272647052950

`xor(1, 11*A000225(n+3))`
-/

namespace A099944.P4047772272647052950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (11 * A000225 (n + 3))

end

end A099944.P4047772272647052950

namespace A099944

/-- `xor(1, 11*A000225(n+3))` -/
def P4047772272647052950.Spec : Prop :=
  ∀ n, P4047772272647052950.a n = A099944 (n + 3)

end A099944

/-!
# A099945: Number of 4 X n binary matrices avoiding simultaneously the right angled numbered polyomino patterns (ranpp) (00;1) and (11;0).

The programs for A099945, the canonical program `A099945.P2430171623184492183` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099945 has offset 3).

The definition of A099945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099945.P2430171623184492183

`3*a(n-1)-2*a(n-2)` with `a(0)=188, a(1)=404`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099945

/-- `3*a(n-1)-2*a(n-2)` -/
def P2430171623184492183.Spec : Prop :=
  ∀ n, P2430171623184492183.a n = A099945 (n + 3)

theorem P2430171623184492183.correct : P2430171623184492183.Spec := by
  intro n
  simp only [A099945, Nat.add_sub_cancel]

end A099945

/-! ## A099945.P6149357041629043598

`4*(6*9*2^n-7)`
-/

namespace A099945.P6149357041629043598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((6 * (9 * 2 ^ n) : ℤ) - 7)

end

end A099945.P6149357041629043598

namespace A099945

/-- `4*(6*9*2^n-7)` -/
def P6149357041629043598.Spec : Prop :=
  ∀ n, P6149357041629043598.a n = A099945 (n + 3)

end A099945

/-! ## A099945.P17442318569361682725

`A182467(n+2)-10`
-/

namespace A099945.P17442318569361682725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182467 (n + 2) - 10

end

end A099945.P17442318569361682725

namespace A099945

/-- `A182467(n+2)-10` -/
def P17442318569361682725.Spec : Prop :=
  ∀ n, P17442318569361682725.a n = A099945 (n + 3)

end A099945

/-! ## A099945.P10421292582856677680

`A175806(n+3)-28`
-/

namespace A099945.P10421292582856677680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175806 (n + 3) - 28

end

end A099945.P10421292582856677680

namespace A099945

/-- `A175806(n+3)-28` -/
def P10421292582856677680.Spec : Prop :=
  ∀ n, P10421292582856677680.a n = A099945 (n + 3)

end A099945

/-! ## A099945.P14055262538616474054

`8*A175806(n)-28`
-/

namespace A099945.P14055262538616474054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A175806 n - 28

end

end A099945.P14055262538616474054

namespace A099945

/-- `8*A175806(n)-28` -/
def P14055262538616474054.Spec : Prop :=
  ∀ n, P14055262538616474054.a n = A099945 (n + 3)

end A099945

/-! ## A099945.P3937431365007743868

`24*A005010(n)-28`
-/

namespace A099945.P3937431365007743868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A005010 n - 28

end

end A099945.P3937431365007743868

namespace A099945

/-- `24*A005010(n)-28` -/
def P3937431365007743868.Spec : Prop :=
  ∀ n, P3937431365007743868.a n = A099945 (n + 3)

end A099945

/-! ## A099945.P6733022993671883231

`27*A000225(n+3)-1`
-/

namespace A099945.P6733022993671883231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * A000225 (n + 3) - 1

end

end A099945.P6733022993671883231

namespace A099945

/-- `27*A000225(n+3)-1` -/
def P6733022993671883231.Spec : Prop :=
  ∀ n, P6733022993671883231.a n = A099945 (n + 3)

end A099945

/-! ## A099945.P11768118762217188005

`27*(A134067(n+1)+1)-1`
-/

namespace A099945.P11768118762217188005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * (A134067 (n + 1) + 1) - 1

end

end A099945.P11768118762217188005

namespace A099945

/-- `27*(A134067(n+1)+1)-1` -/
def P11768118762217188005.Spec : Prop :=
  ∀ n, P11768118762217188005.a n = A099945 (n + 3)

end A099945

/-! ## A099945.P5251220088324617589

`27*(A000079(n+3)-1)-1`
-/

namespace A099945.P5251220088324617589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * (A000079 (n + 3) - 1) - 1

end

end A099945.P5251220088324617589

namespace A099945

/-- `27*(A000079(n+3)-1)-1` -/
def P5251220088324617589.Spec : Prop :=
  ∀ n, P5251220088324617589.a n = A099945 (n + 3)

end A099945

/-! ## A099945.P423814251051795430

`27*(8*A000079(n)-1)-1`
-/

namespace A099945.P423814251051795430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * (8 * A000079 n - 1) - 1

end

end A099945.P423814251051795430

namespace A099945

/-- `27*(8*A000079(n)-1)-1` -/
def P423814251051795430.Spec : Prop :=
  ∀ n, P423814251051795430.a n = A099945 (n + 3)

end A099945

/-! ## A099945.P17588057266914055069

`A305261(n)+A305062(n)`
-/

namespace A099945.P17588057266914055069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305261 n + A305062 n

end

end A099945.P17588057266914055069

namespace A099945

/-- `A305261(n)+A305062(n)` -/
def P17588057266914055069.Spec : Prop :=
  ∀ n, P17588057266914055069.a n = A099945 (n + 3)

end A099945

/-!
# A099946: a(n) = lcm{1, 2, ..., n}/(n*(n-1)), n >= 2.

The programs for A099946, the canonical program `A099946.P3662788994248180562` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099946 has offset 2).

The definition of A099946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099946.P3662788994248180562

`n*a(n-1)/gcd(n+2, 2*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099946

/-- `n*a(n-1)/gcd(n+2, 2*a(n-1))` -/
def P3662788994248180562.Spec : Prop :=
  ∀ n, P3662788994248180562.a n = (A099946 (n + 2) : ℚ)

end A099946

/-! ## A099946.P12703451990415091413

`n*a(n-1)/(n+2)*A014963(n+2)` with `a(0)=1`
-/

namespace A099946.P12703451990415091413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / (n + 2 : ℚ) * (A014963 (n + 2) : ℚ))

end

end A099946.P12703451990415091413

namespace A099946

/-- `n*a(n-1)/(n+2)*A014963(n+2)` -/
def P12703451990415091413.Spec : Prop :=
  ∀ n, P12703451990415091413.a n = (A099946 (n + 2) : ℚ)

end A099946

/-! ## A099946.P17779667270781720750

`A048619(n+1)/A110654(n+1)*A001405(n)`
-/

namespace A099946.P17779667270781720750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048619 (n + 1) : ℚ) / (A110654 (n + 1) : ℚ) * (A001405 n : ℚ)

end

end A099946.P17779667270781720750

namespace A099946

/-- `A048619(n+1)/A110654(n+1)*A001405(n)` -/
def P17779667270781720750.Spec : Prop :=
  ∀ n, P17779667270781720750.a n = (A099946 (n + 2) : ℚ)

end A099946

/-! ## A099946.P8639398824789921984

`A002944(n+1)/A048671(n+2)`
-/

namespace A099946.P8639398824789921984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (A048671 (n + 2) : ℚ)

end

end A099946.P8639398824789921984

namespace A099946

/-- `A002944(n+1)/A048671(n+2)` -/
def P8639398824789921984.Spec : Prop :=
  ∀ n, P8639398824789921984.a n = (A099946 (n + 2) : ℚ)

end A099946

/-! ## A099946.P1053496065259206590

`lcm(n+2, n*a(n-1))/(n+2)` with `a(0)=1`
-/

namespace A099946.P1053496065259206590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (n + 2 : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) * a (n - 1))) : ℚ) / (n + 2 : ℚ)

end

end A099946.P1053496065259206590

namespace A099946

/-- `lcm(n+2, n*a(n-1))/(n+2)` -/
def P1053496065259206590.Spec : Prop :=
  ∀ n, P1053496065259206590.a n = (A099946 (n + 2) : ℚ)

end A099946

/-! ## A099946.P14705311919173586017

`A002944(n+2)/(n+1)`
-/

namespace A099946.P14705311919173586017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A099946.P14705311919173586017

namespace A099946

/-- `A002944(n+2)/(n+1)` -/
def P14705311919173586017.Spec : Prop :=
  ∀ n, P14705311919173586017.a n = (A099946 (n + 2) : ℚ)

end A099946

/-! ## A099946.P3882600737413630955

`gcd(A002944(n+1), A002944(n+2))`
-/

namespace A099946.P3882600737413630955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002944 (n + 1)) (A002944 (n + 2))

end

end A099946.P3882600737413630955

namespace A099946

/-- `gcd(A002944(n+1), A002944(n+2))` -/
def P3882600737413630955.Spec : Prop :=
  ∀ n, (P3882600737413630955.a n : ℤ) = A099946 (n + 2)

end A099946

/-! ## A099946.P17011065218153560493

`A002944(n+1)*A014963(n+2)-A002944(n+2)`
-/

namespace A099946.P17011065218153560493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 1) * A014963 (n + 2) - A002944 (n + 2)

end

end A099946.P17011065218153560493

namespace A099946

/-- `A002944(n+1)*A014963(n+2)-A002944(n+2)` -/
def P17011065218153560493.Spec : Prop :=
  ∀ n, P17011065218153560493.a n = A099946 (n + 2)

end A099946

/-! ## A099946.P1619592618478060080

`gcd(Δ[A002944(n+1)], A003418(n))`
-/

namespace A099946.P1619592618478060080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A003418 n)

end

end A099946.P1619592618478060080

namespace A099946

/-- `gcd(Δ[A002944(n+1)], A003418(n))` -/
def P1619592618478060080.Spec : Prop :=
  ∀ n, (P1619592618478060080.a n : ℤ) = A099946 (n + 2)

end A099946

/-! ## A099946.P8630365500384619676

`A003418(n)/(A048671(n+1)*A048671(n+2))`
-/

namespace A099946.P8630365500384619676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A048671 (n + 1) * A048671 (n + 2) : ℚ)

end

end A099946.P8630365500384619676

namespace A099946

/-- `A003418(n)/(A048671(n+1)*A048671(n+2))` -/
def P8630365500384619676.Spec : Prop :=
  ∀ n, P8630365500384619676.a n = (A099946 (n + 2) : ℚ)

end A099946

/-! ## A099946.P15902715640644784005

`(A387027(n+1)-A003418(n+1))/A048671(n+2)`
-/

namespace A099946.P15902715640644784005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387027 (n + 1) - A003418 (n + 1) : ℚ) / (A048671 (n + 2) : ℚ)

end

end A099946.P15902715640644784005

namespace A099946

/-- `(A387027(n+1)-A003418(n+1))/A048671(n+2)` -/
def P15902715640644784005.Spec : Prop :=
  ∀ n, P15902715640644784005.a n = (A099946 (n + 2) : ℚ)

end A099946

/-! ## A099946.P14122067159904675405

`A003418(n+1)/A002378(n+1)*A014963(n+2)`
-/

namespace A099946.P14122067159904675405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A002378 (n + 1) : ℚ) * (A014963 (n + 2) : ℚ)

end

end A099946.P14122067159904675405

namespace A099946

/-- `A003418(n+1)/A002378(n+1)*A014963(n+2)` -/
def P14122067159904675405.Spec : Prop :=
  ∀ n, P14122067159904675405.a n = (A099946 (n + 2) : ℚ)

end A099946

/-! ## A099946.P10148553741190177145

`A003418(n+1)/(A140651(n+2)-A048671(n+2))`
-/

namespace A099946.P10148553741190177145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A140651 (n + 2) - A048671 (n + 2) : ℚ)

end

end A099946.P10148553741190177145

namespace A099946

/-- `A003418(n+1)/(A140651(n+2)-A048671(n+2))` -/
def P10148553741190177145.Spec : Prop :=
  ∀ n, P10148553741190177145.a n = (A099946 (n + 2) : ℚ)

end A099946

/-! ## A099946.P2245749756531952886

`A025558(n+1)/(n+1)²`
-/

namespace A099946.P2245749756531952886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025558 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A099946.P2245749756531952886

namespace A099946

/-- `A025558(n+1)/(n+1)²` -/
def P2245749756531952886.Spec : Prop :=
  ∀ n, P2245749756531952886.a n = (A099946 (n + 2) : ℚ)

end A099946

/-! ## A099946.P16121593264287566781

`A025555(n+1)/∑[n+1]`
-/

namespace A099946.P16121593264287566781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025555 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A099946.P16121593264287566781

namespace A099946

/-- `A025555(n+1)/∑[n+1]` -/
def P16121593264287566781.Spec : Prop :=
  ∀ n, P16121593264287566781.a n = (A099946 (n + 2) : ℚ)

end A099946

/-! ## A099946.P12898827074732733956

`A003418(n+2)/((n+1)*(n+2))`
-/

namespace A099946.P12898827074732733956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 2) : ℚ) / ((n + 1) * (n + 2) : ℚ)

end

end A099946.P12898827074732733956

namespace A099946

/-- `A003418(n+2)/((n+1)*(n+2))` -/
def P12898827074732733956.Spec : Prop :=
  ∀ n, P12898827074732733956.a n = (A099946 (n + 2) : ℚ)

end A099946

/-! ## A099946.P3512006814821410690

`∏[A014963(n+2)]/((n+1)*(n+2))`
-/

namespace A099946.P3512006814821410690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((n + 1) * (n + 2) : ℚ)

end

end A099946.P3512006814821410690

namespace A099946

/-- `∏[A014963(n+2)]/((n+1)*(n+2))` -/
def P3512006814821410690.Spec : Prop :=
  ∀ n, P3512006814821410690.a n = (A099946 (n + 2) : ℚ)

end A099946

/-! ## A099946.P16450726356595168989

`gcd(A025558(n+1), A025558(A028310(n)))`
-/

namespace A099946.P16450726356595168989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025558 (n + 1)) (A025558 (A028310 n).toNat)

end

end A099946.P16450726356595168989

namespace A099946

/-- `gcd(A025558(n+1), A025558(A028310(n)))` -/
def P16450726356595168989.Spec : Prop :=
  ∀ n, (P16450726356595168989.a n : ℤ) = A099946 (n + 2)

end A099946

/-! ## A099946.P12240567709279155340

`A027449(n+2)/(2*n+3)`
-/

namespace A099946.P12240567709279155340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027449 (n + 2) : ℚ) / (2 * n + 3 : ℚ)

end

end A099946.P12240567709279155340

namespace A099946

/-- `A027449(n+2)/(2*n+3)` -/
def P12240567709279155340.Spec : Prop :=
  ∀ n, P12240567709279155340.a n = (A099946 (n + 2) : ℚ)

end A099946

/-! ## A099946.P3091209195314833877

`gcd(A003418(n), A027449(n+2))`
-/

namespace A099946.P3091209195314833877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A027449 (n + 2))

end

end A099946.P3091209195314833877

namespace A099946

/-- `gcd(A003418(n), A027449(n+2))` -/
def P3091209195314833877.Spec : Prop :=
  ∀ n, (P3091209195314833877.a n : ℤ) = A099946 (n + 2)

end A099946

/-!
# A099947: Number of topologically connected set partitions of {1,...,n}.

The programs for A099947, there is no canonical definition to state claims against.
-/

/-! ## A099947.P9510301099487575218

`A324173(∑[char[1]+n])`
-/

namespace A099947.P9510301099487575218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324173 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099947.P9510301099487575218

/-! ## A099947.P3118274070217867625

`∏{p}[A324173(∑[n]+1), #]`
-/

namespace A099947.P3118274070217867625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324173 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A099947.P3118274070217867625

/-! ## A099947.P4765025696742590050

`A324173(A000124(n))+floor(acot(n))`
-/

namespace A099947.P4765025696742590050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324173 (A000124 n).toNat + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A099947.P4765025696742590050

/-! ## A099947.P15478909926088160486

`A324173(A000124(n))+A000007(n)`
-/

namespace A099947.P15478909926088160486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324173 (A000124 n).toNat + A000007 n

end

end A099947.P15478909926088160486

/-! ## A099947.P18029202629643722464

`A324173(A000124(n))+A058276(n)`
-/

namespace A099947.P18029202629643722464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324173 (A000124 n).toNat + A058276 n

end

end A099947.P18029202629643722464

/-!
# A099948: Number of partitions of n such that the number of blocks is congruent to 3 mod 4.

The programs for A099948, there is no canonical definition to state claims against.
-/

/-! ## A099948.P10069985121342620853

`A339708(A005285(n+8))`
-/

namespace A099948.P10069985121342620853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339708 (A005285 (n + 8)).toNat

end

end A099948.P10069985121342620853

/-!
# A099949: Number of crossing partitions of n.

The programs for A099949, there is no canonical definition to state claims against.
-/

/-! ## A099949.P10460166978095368164

`A068937(A124768(n)+A005494(n))`
-/

namespace A099949.P10460166978095368164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (A124768 n + A005494 n).toNat

end

end A099949.P10460166978095368164

/-! ## A099949.P9859830036980103650

`A068937(A005494(n)+A001222(n+1))`
-/

namespace A099949.P9859830036980103650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (A005494 n + A001222 (n + 1)).toNat

end

end A099949.P9859830036980103650

/-!
# A099950: Number of 2-sparse nonoverlapping partitions of n.

The programs for A099950, there is no canonical definition to state claims against.
-/

/-! ## A099950.P3057577004951329878

`A081753(∑[∑[A297708(n)]])`
-/

namespace A099950.P3057577004951329878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297708 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099950.P3057577004951329878

/-! ## A099950.P2901466178191538297

`A264749(A192318(n)+A134224(n))`
-/

namespace A099950.P2901466178191538297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A192318 n + A134224 n).toNat

end

end A099950.P2901466178191538297

/-! ## A099950.P884596095394222319

`A264749(or(A056921(n), A192318(n)))`
-/

namespace A099950.P884596095394222319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (Int.lor (A056921 n) (A192318 n)).toNat

end

end A099950.P884596095394222319

/-! ## A099950.P17523418898691199858

`A264749(or(A264749(2*(n+2))!, A192318(n)))`
-/

namespace A099950.P17523418898691199858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (Int.lor (Nat.factorial (A264749 (2 * (n + 2))).toNat : ℤ) (A192318 n)).toNat

end

end A099950.P17523418898691199858

/-!
# A099952: Number of Wilf classes in S_n.

The programs for A099952, there is no canonical definition to state claims against.
-/

/-! ## A099952.P15174246075979163646

`A287091(n^4+abs(1-n)-n)`
-/

namespace A099952.P15174246075979163646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287091 ((n ^ 4 : ℤ) + (|1 - (n : ℤ)| - (n : ℤ))).toNat

end

end A099952.P15174246075979163646

/-! ## A099952.P6178449126366808070

`A037458(A186445(n²))`
-/

namespace A099952.P6178449126366808070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037458 (A186445 (n ^ 2)).toNat

end

end A099952.P6178449126366808070

/-! ## A099952.P7283243771144855839

`A175508(A224318(n)+1)`
-/

namespace A099952.P7283243771144855839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175508 (A224318 n + 1).toNat

end

end A099952.P7283243771144855839

/-!
# A099953: a(n) = A076795(n) - 1.

The programs for A099953, there is no canonical definition to state claims against.
-/

/-! ## A099953.P15555257161413098156

`abs(∑[∏[2*n-1]]+1)`
-/

namespace A099953.P15555257161413098156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 1|

end

end A099953.P15555257161413098156

/-! ## A099953.P14884571656554853729

`∑[record[n*a(n-2)]]` with `a(0)=0, a(1)=1`
-/

namespace A099953.P14884571656554853729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  n * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099953.P14884571656554853729

/-! ## A099953.P9311800543877504405

`∑[abs(∏[or(1, -2*n)])]-1`
-/

namespace A099953.P9311800543877504405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 * n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099953.P9311800543877504405

/-! ## A099953.P5176979369822868449

`∑[abs(∏[xor(1, -2*n)])]-1`
-/

namespace A099953.P5176979369822868449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(2 * n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099953.P5176979369822868449

/-! ## A099953.P4648815093733325227

`∑[-∏[record[xor(1, n-2)]]]-1`
-/

namespace A099953.P4648815093733325227
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099953.P4648815093733325227

/-! ## A099953.P357554729507623618

`a(n-1)-∏[2*n-1]` with `a(0)=0`
-/

namespace A099953.P357554729507623618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A099953.P357554729507623618

/-! ## A099953.P11490248424623303846

`∑[-∏[or(1, 2*(n-1))]]-1`
-/

namespace A099953.P11490248424623303846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * ((n : ℤ) - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099953.P11490248424623303846

/-! ## A099953.P6461991951895742475

`∑[(2*n-1)*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A099953.P6461991951895742475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((2 * n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099953.P6461991951895742475

/-! ## A099953.P6213495319876776663

`record[n*a(n-2)]+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A099953.P6213495319876776663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  n * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1)

end

end A099953.P6213495319876776663

/-! ## A099953.P9214806834940203608

`∑[-∏[2*n-1]%(n!/2^-n)]`
-/

namespace A099953.P9214806834940203608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(∏ j ∈ Finset.range (n + 1), f2 j)) (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099953.P9214806834940203608

/-!
# A099957: a(n) = Sum_{k=0..n-1} phi(2k+1).

The programs for A099957, the canonical program `A099957.P12097671792169816547` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099957 has offset 1).

The definition of A099957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099957.P7626207346291215664

`∑[A037225(n)]`
-/

namespace A099957.P7626207346291215664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099957.P7626207346291215664

namespace A099957

/-- `∑[A037225(n)]` -/
def P7626207346291215664.Spec : Prop :=
  ∀ n, P7626207346291215664.a n = A099957 (n + 1)

end A099957

/-! ## A099957.P5573564122491159227

`∑[A000010(Δ[n²])]`
-/

namespace A099957.P5573564122491159227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099957.P5573564122491159227

namespace A099957

/-- `∑[A000010(Δ[n²])]` -/
def P5573564122491159227.Spec : Prop :=
  ∀ n, P5573564122491159227.a n = A099957 (n + 1)

end A099957

/-! ## A099957.P14735315582356340791

`∑[A062570(2*n+1)]`
-/

namespace A099957.P14735315582356340791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099957.P14735315582356340791

namespace A099957

/-- `∑[A062570(2*n+1)]` -/
def P14735315582356340791.Spec : Prop :=
  ∀ n, P14735315582356340791.a n = A099957 (n + 1)

end A099957

/-! ## A099957.P13145536020543095772

`∑[A319997(2*n+1)]`
-/

namespace A099957.P13145536020543095772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099957.P13145536020543095772

namespace A099957

/-- `∑[A319997(2*n+1)]` -/
def P13145536020543095772.Spec : Prop :=
  ∀ n, P13145536020543095772.a n = A099957 (n + 1)

end A099957

/-! ## A099957.P8156226205005507200

`or(1, ∑[A000010(comp[2*n])])`
-/

namespace A099957.P8156226205005507200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099957.P8156226205005507200

namespace A099957

/-- `or(1, ∑[A000010(comp[2*n])])` -/
def P8156226205005507200.Spec : Prop :=
  ∀ n, P8156226205005507200.a n = A099957 (n + 1)

end A099957

/-! ## A099957.P12097671792169816547

`∑[2*A072451(n+1)]-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A099957

/-- `∑[2*A072451(n+1)]-1` -/
def P12097671792169816547.Spec : Prop :=
  ∀ n, P12097671792169816547.a n = A099957 (n + 1)

theorem P12097671792169816547.correct : P12097671792169816547.Spec := by
  intro n
  simp only [A099957, Nat.add_sub_cancel]

end A099957

/-! ## A099957.P8170117390610082382

`∑[root(A000010(2*n+1), 2)²]`
-/

namespace A099957.P8170117390610082382
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000010 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099957.P8170117390610082382

namespace A099957

/-- `∑[root(A000010(2*n+1), 2)²]` -/
def P8170117390610082382.Spec : Prop :=
  ∀ n, P8170117390610082382.a n = (A099957 (n + 1) : ℝ)

end A099957

/-! ## A099957.P1876777897864316363

`∑[A000010(4*(2*n+1))/2]`
-/

namespace A099957.P1876777897864316363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (4 * (2 * n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099957.P1876777897864316363

namespace A099957

/-- `∑[A000010(4*(2*n+1))/2]` -/
def P1876777897864316363.Spec : Prop :=
  ∀ n, P1876777897864316363.a n = (A099957 (n + 1) : ℚ)

end A099957

/-! ## A099957.P16581871135526363375

`∑[lcm(2, A000010(n+1+n))]-1`
-/

namespace A099957.P16581871135526363375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000010 (n + 1 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A099957.P16581871135526363375

namespace A099957

/-- `∑[lcm(2, A000010(n+1+n))]-1` -/
def P16581871135526363375.Spec : Prop :=
  ∀ n, P16581871135526363375.a n = A099957 (n + 1)

end A099957

/-! ## A099957.P4725788501294867728

`record[A000010(n+1)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A099957.P4725788501294867728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000010 (n + 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099957.P4725788501294867728

namespace A099957

/-- `record[A000010(n+1)+a(n-2)]` -/
def P4725788501294867728.Spec : Prop :=
  ∀ n, P4725788501294867728.a n = A099957 (n + 1)

end A099957

/-! ## A099957.P18281441573683537900

`∑[A000010(2*(2*n+1))+1]-(n+1)`
-/

namespace A099957.P18281441573683537900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (2 * n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A099957.P18281441573683537900

namespace A099957

/-- `∑[A000010(2*(2*n+1))+1]-(n+1)` -/
def P18281441573683537900.Spec : Prop :=
  ∀ n, P18281441573683537900.a n = A099957 (n + 1)

end A099957

/-! ## A099957.P10151141754231622972

`A000010((2*n+1)*gcd(n+1, n-1))+a(n-1)` with `a(0)=1`
-/

namespace A099957.P10151141754231622972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 ((2 * n + 1) * Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1)) + a (n - 1)

end

end A099957.P10151141754231622972

namespace A099957

/-- `A000010((2*n+1)*gcd(n+1, n-1))+a(n-1)` -/
def P10151141754231622972.Spec : Prop :=
  ∀ n, P10151141754231622972.a n = A099957 (n + 1)

end A099957

/-! ## A099957.P9982754873348701533

`A000010(2*n+1-C(n+1, n+2))+a(n-1)` with `a(0)=1`
-/

namespace A099957.P9982754873348701533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (2 * n + 1 - Nat.choose (n + 1) (n + 2)) + a (n - 1)

end

end A099957.P9982754873348701533

namespace A099957

/-- `A000010(2*n+1-C(n+1, n+2))+a(n-1)` -/
def P9982754873348701533.Spec : Prop :=
  ∀ n, P9982754873348701533.a n = A099957 (n + 1)

end A099957

/-! ## A099957.P5613757187787914714

`A002088(2*n+1)-A049690(n)`
-/

namespace A099957.P5613757187787914714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (2 * n + 1) - A049690 n

end

end A099957.P5613757187787914714

namespace A099957

/-- `A002088(2*n+1)-A049690(n)` -/
def P5613757187787914714.Spec : Prop :=
  ∀ n, P5613757187787914714.a n = A099957 (n + 1)

end A099957

/-! ## A099957.P7838660582843645613

`∑[∑{d}[A000010(2*n+1), A000010(#)]]`
-/

namespace A099957.P7838660582843645613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000010 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099957.P7838660582843645613

namespace A099957

/-- `∑[∑{d}[A000010(2*n+1), A000010(#)]]` -/
def P7838660582843645613.Spec : Prop :=
  ∀ n, P7838660582843645613.a n = A099957 (n + 1)

end A099957

/-! ## A099957.P681294564008375848

`∑[A002088(2*n+1)-A002088(2*n)]`
-/

namespace A099957.P681294564008375848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (2 * n + 1) - A002088 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099957.P681294564008375848

namespace A099957

/-- `∑[A002088(2*n+1)-A002088(2*n)]` -/
def P681294564008375848.Spec : Prop :=
  ∀ n, P681294564008375848.a n = A099957 (n + 1)

end A099957

/-! ## A099957.P1724011129500256344

`∑[A005728(2*n+1)-A005728(2*n)]`
-/

namespace A099957.P1724011129500256344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (2 * n + 1) - A005728 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099957.P1724011129500256344

namespace A099957

/-- `∑[A005728(2*n+1)-A005728(2*n)]` -/
def P1724011129500256344.Spec : Prop :=
  ∀ n, P1724011129500256344.a n = A099957 (n + 1)

end A099957

/-! ## A099957.P10095168752195999559

`∑[A000010(2*n+1)%A000040(n+1)]`
-/

namespace A099957.P10095168752195999559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (2 * n + 1)) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099957.P10095168752195999559

namespace A099957

/-- `∑[A000010(2*n+1)%A000040(n+1)]` -/
def P10095168752195999559.Spec : Prop :=
  ∀ n, P10095168752195999559.a n = A099957 (n + 1)

end A099957

/-! ## A099957.P18037729768112524635

`A099958(n+1)-A049690(n)-A049690(n)`
-/

namespace A099957.P18037729768112524635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099958 (n + 1) - A049690 n - A049690 n

end

end A099957.P18037729768112524635

namespace A099957

/-- `A099958(n+1)-A049690(n)-A049690(n)` -/
def P18037729768112524635.Spec : Prop :=
  ∀ n, P18037729768112524635.a n = A099957 (n + 1)

end A099957

/-! ## A099957.P9469649170038379584

`∑[A000045(A020639(2*(n+1)))*A000010(2*n+1)]`
-/

namespace A099957.P9469649170038379584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A000010 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099957.P9469649170038379584

namespace A099957

/-- `∑[A000045(A020639(2*(n+1)))*A000010(2*n+1)]` -/
def P9469649170038379584.Spec : Prop :=
  ∀ n, P9469649170038379584.a n = A099957 (n + 1)

end A099957

/-!
# A099958: (1/2)*number of distinct angular positions under which an observer positioned at the center of an edge of a square lattice can see the (2n)X(2n-1) points symmetrically surrounding his position.

The programs for A099958, the canonical program `A099958.P10152713407958475996` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099958 has offset 1).

The definition of A099958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099958.P2320568480464337675

`A190815(n+1)+A037225(n)`
-/

namespace A099958.P2320568480464337675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190815 (n + 1) + A037225 n

end

end A099958.P2320568480464337675

namespace A099958

/-- `A190815(n+1)+A037225(n)` -/
def P2320568480464337675.Spec : Prop :=
  ∀ n, P2320568480464337675.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P10152713407958475996

`A049690(n)+A002088(2*n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A099958

/-- `A049690(n)+A002088(2*n+1)` -/
def P10152713407958475996.Spec : Prop :=
  ∀ n, P10152713407958475996.a n = A099958 (n + 1)

theorem P10152713407958475996.correct : P10152713407958475996.Spec := by
  intro n
  simp only [A099958, Nat.add_sub_cancel]

end A099958

/-! ## A099958.P2822043829084581472

`A190815(n+1)+A000010(2*n+1)`
-/

namespace A099958.P2822043829084581472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190815 (n + 1) + A000010 (2 * n + 1)

end

end A099958.P2822043829084581472

namespace A099958

/-- `A190815(n+1)+A000010(2*n+1)` -/
def P2822043829084581472.Spec : Prop :=
  ∀ n, P2822043829084581472.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P14269281706012033329

`A190815(n+1)+A062570(2*n+1)`
-/

namespace A099958.P14269281706012033329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190815 (n + 1) + A062570 (2 * n + 1)

end

end A099958.P14269281706012033329

namespace A099958

/-- `A190815(n+1)+A062570(2*n+1)` -/
def P14269281706012033329.Spec : Prop :=
  ∀ n, P14269281706012033329.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P14094356162522066290

`A049690(n)+A099957(n+1)+A049690(n)`
-/

namespace A099958.P14094356162522066290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n + (A099957 (n + 1) + A049690 n)

end

end A099958.P14094356162522066290

namespace A099958

/-- `A049690(n)+A099957(n+1)+A049690(n)` -/
def P14094356162522066290.Spec : Prop :=
  ∀ n, P14094356162522066290.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P13966032211404361684

`A049690(2*n)+A037225(n)`
-/

namespace A099958.P13966032211404361684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (2 * n) + A037225 n

end

end A099958.P13966032211404361684

namespace A099958

/-- `A049690(2*n)+A037225(n)` -/
def P13966032211404361684.Spec : Prop :=
  ∀ n, P13966032211404361684.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P768516423843989093

`A049690(2*n)+A000010(2*n+1)`
-/

namespace A099958.P768516423843989093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (2 * n) + A000010 (2 * n + 1)

end

end A099958.P768516423843989093

namespace A099958

/-- `A049690(2*n)+A000010(2*n+1)` -/
def P768516423843989093.Spec : Prop :=
  ∀ n, P768516423843989093.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P13690330062196604918

`A062570(2*n+1)+A049690(2*n)`
-/

namespace A099958.P13690330062196604918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (2 * n + 1) + A049690 (2 * n)

end

end A099958.P13690330062196604918

namespace A099958

/-- `A062570(2*n+1)+A049690(2*n)` -/
def P13690330062196604918.Spec : Prop :=
  ∀ n, P13690330062196604918.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P14000716269917611597

`A049690(Δ[n²])`
-/

namespace A099958.P14000716269917611597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099958.P14000716269917611597

namespace A099958

/-- `A049690(Δ[n²])` -/
def P14000716269917611597.Spec : Prop :=
  ∀ n, P14000716269917611597.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P12034709740604163019

`record[A049690(xor(1, n))]`
-/

namespace A099958.P12034709740604163019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099958.P12034709740604163019

namespace A099958

/-- `record[A049690(xor(1, n))]` -/
def P12034709740604163019.Spec : Prop :=
  ∀ n, P12034709740604163019.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P5431492073624700838

`A106481(2*n)+A002088(2*n+1)`
-/

namespace A099958.P5431492073624700838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (2 * n) + A002088 (2 * n + 1)

end

end A099958.P5431492073624700838

namespace A099958

/-- `A106481(2*n)+A002088(2*n+1)` -/
def P5431492073624700838.Spec : Prop :=
  ∀ n, P5431492073624700838.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P12434159659266959614

`A106477(4*n+1)`
-/

namespace A099958.P12434159659266959614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106477 (4 * n + 1)

end

end A099958.P12434159659266959614

namespace A099958

/-- `A106477(4*n+1)` -/
def P12434159659266959614.Spec : Prop :=
  ∀ n, P12434159659266959614.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P12707402998744993109

`A106481(4*n+2)`
-/

namespace A099958.P12707402998744993109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (4 * n + 2)

end

end A099958.P12707402998744993109

namespace A099958

/-- `A106481(4*n+2)` -/
def P12707402998744993109.Spec : Prop :=
  ∀ n, P12707402998744993109.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P10332204318196264933

`A049689(2*n)+A002088(2*n+1)`
-/

namespace A099958.P10332204318196264933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049689 (2 * n) + A002088 (2 * n + 1)

end

end A099958.P10332204318196264933

namespace A099958

/-- `A049689(2*n)+A002088(2*n+1)` -/
def P10332204318196264933.Spec : Prop :=
  ∀ n, P10332204318196264933.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P137183638982930121

`A049617(2*n+1)-(2*n+1)`
-/

namespace A099958.P137183638982930121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049617 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A099958.P137183638982930121

namespace A099958

/-- `A049617(2*n+1)-(2*n+1)` -/
def P137183638982930121.Spec : Prop :=
  ∀ n, P137183638982930121.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P12528772260759157981

`filter[A049690(2*n+1), A035263(#)]`
-/

namespace A099958.P12528772260759157981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A099958.P12528772260759157981

namespace A099958

/-- `filter[A049690(2*n+1), A035263(#)]` -/
def P12528772260759157981.Spec : Prop :=
  ∀ n, P12528772260759157981.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P11152455756376537724

`filter[A049690(2*n+1), A039982(#)]`
-/

namespace A099958.P11152455756376537724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A099958.P11152455756376537724

namespace A099958

/-- `filter[A049690(2*n+1), A039982(#)]` -/
def P11152455756376537724.Spec : Prop :=
  ∀ n, P11152455756376537724.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P12022885758145859660

`filter[A049690(2*n+1), A093719(#)]`
-/

namespace A099958.P12022885758145859660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A099958.P12022885758145859660

namespace A099958

/-- `filter[A049690(2*n+1), A093719(#)]` -/
def P12022885758145859660.Spec : Prop :=
  ∀ n, P12022885758145859660.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P10015285039390183370

`filter[A049690(2*n+1), A098725(#)]`
-/

namespace A099958.P10015285039390183370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A099958.P10015285039390183370

namespace A099958

/-- `filter[A049690(2*n+1), A098725(#)]` -/
def P10015285039390183370.Spec : Prop :=
  ∀ n, P10015285039390183370.a n = A099958 (n + 1)

end A099958

/-! ## A099958.P2267791598865058487

`filter[A049690(2*n+1), A105234(#)]`
-/

namespace A099958.P2267791598865058487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A099958.P2267791598865058487

namespace A099958

/-- `filter[A049690(2*n+1), A105234(#)]` -/
def P2267791598865058487.Spec : Prop :=
  ∀ n, P2267791598865058487.a n = A099958 (n + 1)

end A099958

/-!
# A099960: An interleaving of the Genocchi numbers of the first and second kind, A110501 and A005439.

The programs for A099960, there is no canonical definition to state claims against.
-/

/-! ## A099960.P15413746561593807105

`A099959(∑[ceil(n/2)])`
-/

namespace A099960.P15413746561593807105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099959 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099960.P15413746561593807105

/-! ## A099960.P7502253047037948324

`A014781(∑[ceil(xor(1, n)/2)])`
-/

namespace A099960.P7502253047037948324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014781 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099960.P7502253047037948324

/-! ## A099960.P11281659764121659447

`A014781(A004652(n+1))`
-/

namespace A099960.P11281659764121659447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014781 (A004652 (n + 1)).toNat

end

end A099960.P11281659764121659447

/-! ## A099960.P12593429180021907640

`A014781(A181385(n+1))`
-/

namespace A099960.P12593429180021907640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014781 (A181385 (n + 1)).toNat

end

end A099960.P12593429180021907640

/-! ## A099960.P349489672280553487

`A014781(A008794(n)+lcm(2, xor(n, -2))/2)`
-/

namespace A099960.P349489672280553487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014781 (SequenceMachineLib.roundAway ((A008794 n : ℚ) + (Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2)).toNat

end

end A099960.P349489672280553487

/-! ## A099960.P8458293548568657237

`A014781(A130404(n+1))`
-/

namespace A099960.P8458293548568657237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014781 (A130404 (n + 1)).toNat

end

end A099960.P8458293548568657237

/-!
# A099962: First column (also row sums) of triangle in A099961.

The programs for A099962, there is no canonical definition to state claims against.
-/

/-! ## A099962.P16453743992127978980

`A099961(A339573(n+2))`
-/

namespace A099962.P16453743992127978980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099961 (A339573 (n + 2)).toNat

end

end A099962.P16453743992127978980

/-! ## A099962.P10335708500485373060

`A099961(floor(A055998(n)/3))`
-/

namespace A099962.P10335708500485373060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099961 ⌊(A055998 n : ℚ) / 3⌋.toNat

end

end A099962.P10335708500485373060

/-! ## A099962.P8867534057790085880

`A099961(∑[A002264(n)]+n)`
-/

namespace A099962.P8867534057790085880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099961 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A099962.P8867534057790085880

/-! ## A099962.P961606799681928115

`A099961(floor(A034856(n+1)/3))`
-/

namespace A099962.P961606799681928115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099961 ⌊(A034856 (n + 1) : ℚ) / 3⌋.toNat

end

end A099962.P961606799681928115

/-!
# A099963: Sequence of the next-to-last entries in the rows of A099961.

The programs for A099963, there is no canonical definition to state claims against.
-/

/-! ## A099963.P8657831074734262995

`A099961(∑[floor(n/3)+2])`
-/

namespace A099963.P8657831074734262995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099961 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099963.P8657831074734262995

/-! ## A099963.P5743239945502384116

`A000007(n)+record[Δ[A099961(n)]]`
-/

namespace A099963.P5743239945502384116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099961 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099963.P5743239945502384116

/-! ## A099963.P5394597284632140833

`record[Δ[A099961(n)]]^(A000040(n+1)%2)`
-/

namespace A099963.P5394597284632140833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099961 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A099963.P5394597284632140833

/-! ## A099963.P14743175171274784128

`A099967(n+1)-A099962(n+3)`
-/

namespace A099963.P14743175171274784128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099967 (n + 1) - A099962 (n + 3)

end

end A099963.P14743175171274784128

/-! ## A099963.P16744386067213363247

`A028310(record[Δ[A099961(n)]])`
-/

namespace A099963.P16744386067213363247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099961 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A099963.P16744386067213363247

/-!
# A099965: First column (also row sums) of triangle in A099964.

The programs for A099965, there is no canonical definition to state claims against.
-/

/-! ## A099965.P6576585828508602407

`A099964(A006463(n)+n)`
-/

namespace A099965.P6576585828508602407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099964 (A006463 n + (n : ℤ)).toNat

end

end A099965.P6576585828508602407

/-! ## A099965.P18299190682620614739

`A099964(∑[abs(A274093(n))])`
-/

namespace A099965.P18299190682620614739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274093 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099964 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099965.P18299190682620614739

/-! ## A099965.P6142739602761583546

`A099964(∑[A000194(2*n)])`
-/

namespace A099965.P6142739602761583546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099964 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099965.P6142739602761583546

/-! ## A099965.P12110714208725284358

`A099964(A075349(n+1)-1)`
-/

namespace A099965.P12110714208725284358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099964 (A075349 (n + 1) - 1).toNat

end

end A099965.P12110714208725284358

/-! ## A099965.P3410526847322330494

`A099964(∑[A002024(n+1)]-A002024(n+1))`
-/

namespace A099965.P3410526847322330494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099964 (∑ j ∈ Finset.range (n + 1), f1 j - A002024 (n + 1)).toNat

end

end A099965.P3410526847322330494

/-!
# A099966: Sequence of the next-to-last entries in the rows of A099964.

The programs for A099966, there is no canonical definition to state claims against.
-/

/-! ## A099966.P8396453915133316479

`A000007(n)+record[Δ[A099964(n)]]`
-/

namespace A099966.P8396453915133316479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099964 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099966.P8396453915133316479

/-! ## A099966.P10319539953318837481

`A099964(∑[A002024(n+2)]-1)`
-/

namespace A099966.P10319539953318837481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099964 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A099966.P10319539953318837481

/-! ## A099966.P9450328371815114912

`A099968(n+2)-A099965(n+2)`
-/

namespace A099966.P9450328371815114912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099968 (n + 2) - A099965 (n + 2)

end

end A099966.P9450328371815114912

/-! ## A099966.P5301684258252613779

`A099964(∑[∑[A010054(n+1)]]+n)`
-/

namespace A099966.P5301684258252613779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099964 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A099966.P5301684258252613779

/-! ## A099966.P15665159218334746118

`A133943(2*n+1)+record[Δ[A099964(n)]]`
-/

namespace A099966.P15665159218334746118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099964 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133943 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099966.P15665159218334746118

/-!
# A099967: Second column of triangle in A099961.

The programs for A099967, there is no canonical definition to state claims against.
-/

/-! ## A099967.P536649051203210093

`record[A099961(Δ[A008763(n)])]`
-/

namespace A099967.P536649051203210093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099961 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099967.P536649051203210093

/-! ## A099967.P5831687558703296355

`record[A099961(n)/A007318(3*n)]`
-/

namespace A099967.P5831687558703296355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099961 n : ℚ) / (A007318 (3 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099967.P5831687558703296355

/-! ## A099967.P4203670330698223960

`record[A099961(n)/A099927(3*n)]`
-/

namespace A099967.P4203670330698223960
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099961 n : ℚ) / (A099927 (3 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099967.P4203670330698223960

/-! ## A099967.P10697900861851054095

`record[A099961(n)/A291709(3*n+1)]`
-/

namespace A099967.P10697900861851054095
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099961 n : ℚ) / (A291709 (3 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099967.P10697900861851054095

/-! ## A099967.P15729500866128059332

`record[A099961(A002264(A049777(n+1)))]`
-/

namespace A099967.P15729500866128059332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099961 (A002264 (A049777 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099967.P15729500866128059332

/-!
# A099968: Second column of triangle in A099964.

The programs for A099968, there is no canonical definition to state claims against.
-/

/-! ## A099968.P10881087780343964363

`A099964(A075349(n+2))`
-/

namespace A099968.P10881087780343964363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099964 (A075349 (n + 2)).toNat

end

end A099968.P10881087780343964363

/-! ## A099968.P17001825335865720755

`A099964(∑[∑[A010054(n)]]+1)`
-/

namespace A099968.P17001825335865720755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099964 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A099968.P17001825335865720755

/-! ## A099968.P2036392823620518353

`A099964(∑[A002024(n+1)]+1)`
-/

namespace A099968.P2036392823620518353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099964 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A099968.P2036392823620518353

/-! ## A099968.P1154790066361343395

`A099964(∑[A003057(n+2)]-n)`
-/

namespace A099968.P1154790066361343395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099964 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A099968.P1154790066361343395

/-! ## A099968.P10336104319717899258

`A099964(∑[A000194(2*(n+1))]+1)`
-/

namespace A099968.P10336104319717899258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099964 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A099968.P10336104319717899258

/-! ## A099968.P10256688173830430907

`A099964(A014132(n+1)+A006463(n))`
-/

namespace A099968.P10256688173830430907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099964 (A014132 (n + 1) + A006463 n).toNat

end

end A099968.P10256688173830430907

/-!
# A099969: Write 1/e as a binary fraction; read this from left to right and whenever a 1 appears, note the integer formed by reading leftwards from that 1.

The programs for A099969, there is no canonical definition to state claims against.
-/

/-! ## A099969.P4452306964888009020

`2*A099970(n)`
-/

namespace A099969.P4452306964888009020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099970 n

end

end A099969.P4452306964888009020

/-! ## A099969.P18102767706033475587

`lcm(2, A099970(n%(n+1)))`
-/

namespace A099969.P18102767706033475587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A099970 (n % (n + 1)))

end

end A099969.P18102767706033475587

/-! ## A099969.P1769938694450722687

`lcm(2, A099970(A118759(n)))`
-/

namespace A099969.P1769938694450722687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A099970 (A118759 n).toNat)

end

end A099969.P1769938694450722687

/-! ## A099969.P6090690590000692871

`lcm(A099970(n), A362114(n))`
-/

namespace A099969.P6090690590000692871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099970 n) (A362114 n)

end

end A099969.P6090690590000692871

/-! ## A099969.P17901559528031807696

`A099970(A002837(n+1))+A099970(n)`
-/

namespace A099969.P17901559528031807696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099970 (A002837 (n + 1)).toNat + A099970 n

end

end A099969.P17901559528031807696

/-!
# A099970: Write 1/e as a binary fraction; read this from left to right and whenever a 1 appears, note the integer formed by reading leftwards from that 1. Then convert those integers from binary into decimal numbers.

The programs for A099970, there is no canonical definition to state claims against.
-/

/-! ## A099970.P5745803346598116865

`A099969(n)/2`
-/

namespace A099970.P5745803346598116865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099969 n : ℚ) / 2

end

end A099970.P5745803346598116865

/-! ## A099970.P7725979522482226064

`record[ratio[A099969(A142150(n))]]`
-/

namespace A099970.P7725979522482226064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099969 (A142150 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099970.P7725979522482226064

/-! ## A099970.P6650191301495584701

`∏{p}[A099969(n), A000265(#)]`
-/

namespace A099970.P6650191301495584701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000265 p

end

end A099970.P6650191301495584701

/-! ## A099970.P10004480268796134103

`∏{p}[A099969(n), A060819(#)]`
-/

namespace A099970.P10004480268796134103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A060819 p

end

end A099970.P10004480268796134103

/-! ## A099970.P11455736310251221289

`∏{p}[A099969(n), A093178(#)]`
-/

namespace A099970.P11455736310251221289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A093178 p

end

end A099970.P11455736310251221289

/-!
# A099971: Write (sqrt(5)-1)/2 as a binary fraction; read this from left to right and whenever a 1 appears, note the integer formed by reading leftwards from that 1.

The programs for A099971, there is no canonical definition to state claims against.
-/

/-! ## A099971.P8334841829433284193

`∑[2^(A004714(n+1)-1)]`
-/

namespace A099971.P8334841829433284193
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004714 (n + 1) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099971.P8334841829433284193

/-! ## A099971.P16710965066464743348

`∑[2^eq[1, A068432(n+2)]]`
-/

namespace A099971.P16710965066464743348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099971.P16710965066464743348

/-! ## A099971.P14756563022823047903

`∑[2^record[n*A004555(n+3)]]`
-/

namespace A099971.P14756563022823047903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004555 (n + 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099971.P14756563022823047903

/-! ## A099971.P12118845226959568934

`∑[A011782(A004714(n+1))]`
-/

namespace A099971.P12118845226959568934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004714 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099971.P12118845226959568934

/-! ## A099971.P1455894346235866561

`∑[A000079(A004714(n+1)-1)]`
-/

namespace A099971.P1455894346235866561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004714 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099971.P1455894346235866561

/-!
# A099972: Write 1/sqrt(2) as a binary fraction; read this from left to right and whenever a 1 appears, note the integer formed by reading leftwards from that 1.

The programs for A099972, there is no canonical definition to state claims against.
-/

/-! ## A099972.P12485787101624386101

`∑[2^(A004713(n+1)-1)]`
-/

namespace A099972.P12485787101624386101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004713 (n + 1) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099972.P12485787101624386101

/-! ## A099972.P1382400479403625364

`∑[A011782(A004713(n+1))]`
-/

namespace A099972.P1382400479403625364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004713 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099972.P1382400479403625364

/-! ## A099972.P14352365024810887052

`∑[A034008(A004713(n+1)+1)]`
-/

namespace A099972.P14352365024810887052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A004713 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099972.P14352365024810887052

/-! ## A099972.P6389141645412235458

`∑[A000079(A004713(n+1)-1)]`
-/

namespace A099972.P6389141645412235458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004713 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099972.P6389141645412235458

/-! ## A099972.P17569641913983891962

`∑[A000079(eq[1, A004539(n+1)])]`
-/

namespace A099972.P17569641913983891962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099972.P17569641913983891962

/-! ## A099972.P9897939860169666938

`∑[A000225(eq[1, A004539(n+1)])+1]`
-/

namespace A099972.P9897939860169666938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099972.P9897939860169666938

/-! ## A099972.P17131785087783742311

`∑[A011782(eq[1, A004539(n+1)]+1)]`
-/

namespace A099972.P17131785087783742311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099972.P17131785087783742311

/-! ## A099972.P3254203015697942863

`∑[A017911(2*eq[1, A004539(n+1)])]`
-/

namespace A099972.P3254203015697942863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017911 (2 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099972.P3254203015697942863

/-!
# A099973: Write Euler's constant gamma as a binary fraction; read this from left to right and whenever a 1 appears, note the integer formed by reading leftwards from that 1.

The programs for A099973, there is no canonical definition to state claims against.
-/

/-! ## A099973.P13385467162627985312

`∑[2^eq[1, A104015(n)]]`
-/

namespace A099973.P13385467162627985312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104015 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099973.P13385467162627985312

/-! ## A099973.P11688219100736375255

`∑[2^(A004710(n+1)-1)]`
-/

namespace A099973.P11688219100736375255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004710 (n + 1) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099973.P11688219100736375255

/-! ## A099973.P3141667667084573868

`∑[A011782(A004710(n+1))]`
-/

namespace A099973.P3141667667084573868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004710 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099973.P3141667667084573868

/-! ## A099973.P9979235607465202222

`∑[A034008(A004710(n+1)+1)]`
-/

namespace A099973.P9979235607465202222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A004710 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099973.P9979235607465202222

/-! ## A099973.P4202649359942286402

`∑[A000079(A004710(n+1)-1)]`
-/

namespace A099973.P4202649359942286402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004710 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099973.P4202649359942286402

/-!
# A099974: Write log(2) as a binary fraction; read this from left to right and whenever a 1 appears, note the integer formed by reading leftwards from that 1.

The programs for A099974, there is no canonical definition to state claims against.
-/

/-! ## A099974.P7260833088387862969

`∑[2^eq[1, A068426(n)]]`
-/

namespace A099974.P7260833088387862969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068426 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099974.P7260833088387862969

/-! ## A099974.P3634010957480929451

`∑[2^(A239976(n+1)-1)]`
-/

namespace A099974.P3634010957480929451
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A239976 (n + 1) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099974.P3634010957480929451

/-! ## A099974.P4316101759281763030

`∑[A011782(A239976(n+1))]`
-/

namespace A099974.P4316101759281763030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A239976 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099974.P4316101759281763030

/-! ## A099974.P1391053894361026281

`∑[A000079(eq[1, A068426(n)])]`
-/

namespace A099974.P1391053894361026281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099974.P1391053894361026281

/-! ## A099974.P16212369567994860627

`∑[A000079(record[n*A068426(n)])]`
-/

namespace A099974.P16212369567994860627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A068426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099974.P16212369567994860627

/-!
# A099975: Bisection of A014137.

The programs for A099975, there is no canonical definition to state claims against.
-/

/-! ## A099975.P11376387620213996094

`A014137(Δ[n²])`
-/

namespace A099975.P11376387620213996094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099975.P11376387620213996094

/-! ## A099975.P17931004016997910722

`∑[A005807(2*n)]`
-/

namespace A099975.P17931004016997910722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099975.P17931004016997910722

/-! ## A099975.P7691018562928567897

`∑[A167422(Δ[n²])]`
-/

namespace A099975.P7691018562928567897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167422 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099975.P7691018562928567897

/-! ## A099975.P8505146889712939602

`A110199(4*n+2)`
-/

namespace A099975.P8505146889712939602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110199 (4 * n + 2)

end

end A099975.P8505146889712939602

/-! ## A099975.P9687806784142306163

`A014138(Δ[n²])+1`
-/

namespace A099975.P9687806784142306163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A099975.P9687806784142306163

/-! ## A099975.P1346527990774850829

`2-A106271(Δ[n²])`
-/

namespace A099975.P1346527990774850829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A106271 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099975.P1346527990774850829

/-! ## A099975.P14992759264721703928

`∑[A000778(2*n)+1]`
-/

namespace A099975.P14992759264721703928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000778 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099975.P14992759264721703928

/-! ## A099975.P14551827714095660489

`1-A099324(2*(n+1))`
-/

namespace A099975.P14551827714095660489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A099324 (2 * (n + 1))

end

end A099975.P14551827714095660489

/-! ## A099975.P8503585771703539960

`A155587(2*(n+1))-1`
-/

namespace A099975.P8503585771703539960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (2 * (n + 1)) - 1

end

end A099975.P8503585771703539960

/-! ## A099975.P15792243666269614237

`2-A159972(2*(n+1))`
-/

namespace A099975.P15792243666269614237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A159972 (2 * (n + 1))

end

end A099975.P15792243666269614237

/-!
# A099976: Bisection of A000984.

The programs for A099976, the canonical program `A099976.P14840345860272964072` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099976 has offset 0).

The definition of A099976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099976.P14840345860272964072

`2*A002458(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099976

/-- `2*A002458(n)` -/
def P14840345860272964072.Spec : Prop :=
  ∀ n, P14840345860272964072.a n = A099976 n

theorem P14840345860272964072.correct : P14840345860272964072.Spec := by
  intro n
  simp only [A099976]

end A099976

/-! ## A099976.P6187826419540314542

`record[-∏[2/(n+1)-4]]`
-/

namespace A099976.P6187826419540314542
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) - 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099976.P6187826419540314542

namespace A099976

/-- `record[-∏[2/(n+1)-4]]` -/
def P6187826419540314542.Spec : Prop :=
  ∀ n, P6187826419540314542.a n = (A099976 n : ℚ)

end A099976

/-! ## A099976.P7425306214794598233

`floor(record[-(4-2/n)*a(n-1)])` with `a(0)=2, a(1)=2`
-/

namespace A099976.P7425306214794598233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  -((4 - 2 / (n : ℚ)) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A099976.P7425306214794598233

namespace A099976

/-- `floor(record[-(4-2/n)*a(n-1)])` -/
def P7425306214794598233.Spec : Prop :=
  ∀ n, P7425306214794598233.a n = A099976 n

end A099976

/-! ## A099976.P1848643050412747252

`A000984(Δ[n²])`
-/

namespace A099976.P1848643050412747252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099976.P1848643050412747252

namespace A099976

/-- `A000984(Δ[n²])` -/
def P1848643050412747252.Spec : Prop :=
  ∀ n, P1848643050412747252.a n = A099976 n

end A099976

/-! ## A099976.P4031379665443464781

`A191529(4*(n+1))`
-/

namespace A099976.P4031379665443464781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (4 * (n + 1))

end

end A099976.P4031379665443464781

namespace A099976

/-- `A191529(4*(n+1))` -/
def P4031379665443464781.Spec : Prop :=
  ∀ n, P4031379665443464781.a n = A099976 n

end A099976

/-! ## A099976.P11445511605264386306

`A226302(4*(n+1))`
-/

namespace A099976.P11445511605264386306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226302 (4 * (n + 1))

end

end A099976.P11445511605264386306

namespace A099976

/-- `A226302(4*(n+1))` -/
def P11445511605264386306.Spec : Prop :=
  ∀ n, P11445511605264386306.a n = A099976 n

end A099976

/-! ## A099976.P5105094056440088976

`A337499(4*n+1)`
-/

namespace A099976.P5105094056440088976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337499 (4 * n + 1)

end

end A099976.P5105094056440088976

namespace A099976

/-- `A337499(4*n+1)` -/
def P5105094056440088976.Spec : Prop :=
  ∀ n, P5105094056440088976.a n = A099976 n

end A099976

/-! ## A099976.P1035494086487362691

`A001405(4*n+2)`
-/

namespace A099976.P1035494086487362691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (4 * n + 2)

end

end A099976.P1035494086487362691

namespace A099976

/-- `A001405(4*n+2)` -/
def P1035494086487362691.Spec : Prop :=
  ∀ n, P1035494086487362691.a n = A099976 n

end A099976

/-! ## A099976.P17125127444962960824

`2*A001700(2*n)`
-/

namespace A099976.P17125127444962960824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001700 (2 * n)

end

end A099976.P17125127444962960824

namespace A099976

/-- `2*A001700(2*n)` -/
def P17125127444962960824.Spec : Prop :=
  ∀ n, P17125127444962960824.a n = A099976 n

end A099976

/-! ## A099976.P16369518869988802166

`A063886(4*n+2)`
-/

namespace A099976.P16369518869988802166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (4 * n + 2)

end

end A099976.P16369518869988802166

namespace A099976

/-- `A063886(4*n+2)` -/
def P16369518869988802166.Spec : Prop :=
  ∀ n, P16369518869988802166.a n = A099976 n

end A099976

/-!
# A099977: Bisection of Bell numbers, A000110.

The programs for A099977, there is no canonical definition to state claims against.
-/

/-! ## A099977.P15333893068249526503

`A000110(Δ[n²])`
-/

namespace A099977.P15333893068249526503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099977.P15333893068249526503

/-! ## A099977.P2599529540858344014

`A089004(Δ[n²])`
-/

namespace A099977.P2599529540858344014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089004 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099977.P2599529540858344014

/-! ## A099977.P5173877425087629734

`record[A363732(∑[n])]`
-/

namespace A099977.P5173877425087629734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363732 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099977.P5173877425087629734

/-! ## A099977.P1114404448809707900

`A343254((n+1)²)`
-/

namespace A099977.P1114404448809707900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343254 ((n + 1) ^ 2)

end

end A099977.P1114404448809707900

/-! ## A099977.P16422257387739232432

`Δ[A160181(2*n)]`
-/

namespace A099977.P16422257387739232432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160181 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099977.P16422257387739232432

/-!
# A099978: Bisection of A001157: a(n) = sigma_2(2n-1).

The programs for A099978, the canonical program `A099978.P7649442531335869287` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099978 has offset 1).

The definition of A099978 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099978.P7649442531335869287

`A001157(2*n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A099978

/-- `A001157(2*n+1)` -/
def P7649442531335869287.Spec : Prop :=
  ∀ n, P7649442531335869287.a n = A099978 (n + 1)

theorem P7649442531335869287.correct : P7649442531335869287.Spec := by
  intro n
  simp only [A099978, Nat.add_sub_cancel]

end A099978

/-! ## A099978.P17432006430296944194

`∑{d}[Δ[n²], #²]`
-/

namespace A099978.P17432006430296944194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A099978.P17432006430296944194

namespace A099978

/-- `∑{d}[Δ[n²], #²]` -/
def P17432006430296944194.Spec : Prop :=
  ∀ n, (P17432006430296944194.a n : ℤ) = A099978 (n + 1)

end A099978

/-! ## A099978.P15857332528317378118

`2*∑{d}[2*n+1, #²/2]`
-/

namespace A099978.P15857332528317378118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), (d ^ 2 : ℚ) / 2)

end

end A099978.P15857332528317378118

namespace A099978

/-- `2*∑{d}[2*n+1, #²/2]` -/
def P15857332528317378118.Spec : Prop :=
  ∀ n, P15857332528317378118.a n = (A099978 (n + 1) : ℚ)

end A099978

/-! ## A099978.P9611937757170833298

`floor(∑{d}[2*n+1, #^(4/2)])`
-/

namespace A099978.P9611937757170833298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((4 : ℚ) / 2 : ℝ)⌋

end

end A099978.P9611937757170833298

namespace A099978

/-- `floor(∑{d}[2*n+1, #^(4/2)])` -/
def P9611937757170833298.Spec : Prop :=
  ∀ n, P9611937757170833298.a n = A099978 (n + 1)

end A099978

/-! ## A099978.P1878030514788335578

`ceil(∑{d}[2*n+1, #^(4/2)])`
-/

namespace A099978.P1878030514788335578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((4 : ℚ) / 2 : ℝ)⌉

end

end A099978.P1878030514788335578

namespace A099978

/-- `ceil(∑{d}[2*n+1, #^(4/2)])` -/
def P1878030514788335578.Spec : Prop :=
  ∀ n, P1878030514788335578.a n = A099978 (n + 1)

end A099978

/-! ## A099978.P10335090291748939728

`round(∑{d}[2*n+1, #^(4/2)])`
-/

namespace A099978.P10335090291748939728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((4 : ℚ) / 2 : ℝ))

end

end A099978.P10335090291748939728

namespace A099978

/-- `round(∑{d}[2*n+1, #^(4/2)])` -/
def P10335090291748939728.Spec : Prop :=
  ∀ n, P10335090291748939728.a n = A099978 (n + 1)

end A099978

/-! ## A099978.P9329194939889065657

`-∑{d}[2*n+1, or(1, -#²)]`
-/

namespace A099978.P9329194939889065657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), Int.lor 1 (-(d ^ 2 : ℤ)))

end

end A099978.P9329194939889065657

namespace A099978

/-- `-∑{d}[2*n+1, or(1, -#²)]` -/
def P9329194939889065657.Spec : Prop :=
  ∀ n, P9329194939889065657.a n = A099978 (n + 1)

end A099978

/-! ## A099978.P8261908485905827167

`-∑{d}[2*n+1, xor(-2, #²)]`
-/

namespace A099978.P8261908485905827167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), Int.xor (-2) (d ^ 2 : ℤ))

end

end A099978.P8261908485905827167

namespace A099978

/-- `-∑{d}[2*n+1, xor(-2, #²)]` -/
def P8261908485905827167.Spec : Prop :=
  ∀ n, P8261908485905827167.a n = A099978 (n + 1)

end A099978

/-! ## A099978.P15370135361547667934

`∑{d}[2*n+1, #²]+C(2, n+3)`
-/

namespace A099978.P15370135361547667934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2 + Nat.choose 2 (n + 3)

end

end A099978.P15370135361547667934

namespace A099978

/-- `∑{d}[2*n+1, #²]+C(2, n+3)` -/
def P15370135361547667934.Spec : Prop :=
  ∀ n, (P15370135361547667934.a n : ℤ) = A099978 (n + 1)

end A099978

/-! ## A099978.P8616520611095029803

`∑{d}[2*n+1, #²]+and(1, 2*n)`
-/

namespace A099978.P8616520611095029803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2 + Nat.land 1 (2 * n)

end

end A099978.P8616520611095029803

namespace A099978

/-- `∑{d}[2*n+1, #²]+and(1, 2*n)` -/
def P8616520611095029803.Spec : Prop :=
  ∀ n, (P8616520611095029803.a n : ℤ) = A099978 (n + 1)

end A099978

/-! ## A099978.P7870407017607628424

`∑{d}[2*n+1, #²]^gcd(n, n+1)`
-/

namespace A099978.P7870407017607628424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d ^ 2) ^ Nat.gcd n (n + 1)

end

end A099978.P7870407017607628424

namespace A099978

/-- `∑{d}[2*n+1, #²]^gcd(n, n+1)` -/
def P7870407017607628424.Spec : Prop :=
  ∀ n, (P7870407017607628424.a n : ℤ) = A099978 (n + 1)

end A099978

/-! ## A099978.P14255067897284445835

`∑{d}[2*n+1, #²]+val(2*n+1, 2)`
-/

namespace A099978.P14255067897284445835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2 + SequenceMachineLib.valuation (2 * n + 1) 2

end

end A099978.P14255067897284445835

namespace A099978

/-- `∑{d}[2*n+1, #²]+val(2*n+1, 2)` -/
def P14255067897284445835.Spec : Prop :=
  ∀ n, (P14255067897284445835.a n : ℤ) = A099978 (n + 1)

end A099978

/-! ## A099978.P3026263269498301224

`∑{d}[2*n+1, #²]^xor(2*n+1, 2*n)`
-/

namespace A099978.P3026263269498301224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d ^ 2) ^ Nat.xor (2 * n + 1) (2 * n)

end

end A099978.P3026263269498301224

namespace A099978

/-- `∑{d}[2*n+1, #²]^xor(2*n+1, 2*n)` -/
def P3026263269498301224.Spec : Prop :=
  ∀ n, (P3026263269498301224.a n : ℤ) = A099978 (n + 1)

end A099978

/-! ## A099978.P6828688528283272116

`A050999(Δ[n²])`
-/

namespace A099978.P6828688528283272116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099978.P6828688528283272116

namespace A099978

/-- `A050999(Δ[n²])` -/
def P6828688528283272116.Spec : Prop :=
  ∀ n, P6828688528283272116.a n = A099978 (n + 1)

end A099978

/-! ## A099978.P32503266125996470

`A064027(Δ[n²])`
-/

namespace A099978.P32503266125996470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064027 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099978.P32503266125996470

namespace A099978

/-- `A064027(Δ[n²])` -/
def P32503266125996470.Spec : Prop :=
  ∀ n, P32503266125996470.a n = A099978 (n + 1)

end A099978

/-! ## A099978.P18348337666193908371

`A076577(Δ[n²])`
-/

namespace A099978.P18348337666193908371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076577 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099978.P18348337666193908371

namespace A099978

/-- `A076577(Δ[n²])` -/
def P18348337666193908371.Spec : Prop :=
  ∀ n, P18348337666193908371.a n = A099978 (n + 1)

end A099978

/-! ## A099978.P2856103838759046698

`A076598(Δ[n²])`
-/

namespace A099978.P2856103838759046698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076598 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099978.P2856103838759046698

namespace A099978

/-- `A076598(Δ[n²])` -/
def P2856103838759046698.Spec : Prop :=
  ∀ n, P2856103838759046698.a n = A099978 (n + 1)

end A099978

/-! ## A099978.P7627899962121563057

`A078306(Δ[n²])`
-/

namespace A099978.P7627899962121563057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078306 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099978.P7627899962121563057

namespace A099978

/-- `A078306(Δ[n²])` -/
def P7627899962121563057.Spec : Prop :=
  ∀ n, P7627899962121563057.a n = A099978 (n + 1)

end A099978

/-! ## A099978.P4522616658175670743

`A321543(Δ[n²])`
-/

namespace A099978.P4522616658175670743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321543 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099978.P4522616658175670743

namespace A099978

/-- `A321543(Δ[n²])` -/
def P4522616658175670743.Spec : Prop :=
  ∀ n, P4522616658175670743.a n = A099978 (n + 1)

end A099978

/-! ## A099978.P10375208677018346500

`A321558(Δ[n²])`
-/

namespace A099978.P10375208677018346500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321558 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099978.P10375208677018346500

namespace A099978

/-- `A321558(Δ[n²])` -/
def P10375208677018346500.Spec : Prop :=
  ∀ n, P10375208677018346500.a n = A099978 (n + 1)

end A099978

/-!
# A099979: Bisection of A001157: sigma_2(2n).

The programs for A099979, the canonical program `A099979.P13016579802430072279` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099979 has offset 1).

The definition of A099979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099979.P13016579802430072279

`∑{d}[2*(n+1), #²]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099979

/-- `∑{d}[2*(n+1), #²]` -/
def P13016579802430072279.Spec : Prop :=
  ∀ n, (P13016579802430072279.a n : ℤ) = A099979 (n + 1)

theorem P13016579802430072279.correct : P13016579802430072279.Spec := by
  intro n
  simp only [A099979, Nat.add_sub_cancel]

end A099979

/-! ## A099979.P2816382310587377344

`abs(1-∑{d}[Δ[n²]+1, #²])+1`
-/

namespace A099979.P2816382310587377344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2 : ℕ) : ℤ)| + 1

end

end A099979.P2816382310587377344

namespace A099979

/-- `abs(1-∑{d}[Δ[n²]+1, #²])+1` -/
def P2816382310587377344.Spec : Prop :=
  ∀ n, P2816382310587377344.a n = A099979 (n + 1)

end A099979

/-! ## A099979.P2421898353143434222

`A050999(n+1)*A296306(2*(n+1))`
-/

namespace A099979.P2421898353143434222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050999 (n + 1) * A296306 (2 * (n + 1))

end

end A099979.P2421898353143434222

namespace A099979

/-- `A050999(n+1)*A296306(2*(n+1))` -/
def P2421898353143434222.Spec : Prop :=
  ∀ n, P2421898353143434222.a n = A099979 (n + 1)

end A099979

/-! ## A099979.P11150552610410940482

`A001157(A038712(n+1)+1)*A050999(n+1)`
-/

namespace A099979.P11150552610410940482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A038712 (n + 1) + 1).toNat * A050999 (n + 1)

end

end A099979.P11150552610410940482

namespace A099979

/-- `A001157(A038712(n+1)+1)*A050999(n+1)` -/
def P11150552610410940482.Spec : Prop :=
  ∀ n, P11150552610410940482.a n = A099979 (n + 1)

end A099979

/-! ## A099979.P4894634781484257350

`A001157(2*(n+1))`
-/

namespace A099979.P4894634781484257350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (2 * (n + 1))

end

end A099979.P4894634781484257350

namespace A099979

/-- `A001157(2*(n+1))` -/
def P4894634781484257350.Spec : Prop :=
  ∀ n, P4894634781484257350.a n = A099979 (n + 1)

end A099979

/-! ## A099979.P11510024962992448017

`sqrt(A356533(2*(n+1)))`
-/

namespace A099979.P11510024962992448017
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A356533 (2 * (n + 1)) : ℝ)

end

end A099979.P11510024962992448017

namespace A099979

/-- `sqrt(A356533(2*(n+1)))` -/
def P11510024962992448017.Spec : Prop :=
  ∀ n, P11510024962992448017.a n = (A099979 (n + 1) : ℝ)

end A099979

/-! ## A099979.P15153717657381108730

`A067558(2*(n+1))+(2*(n+1))²`
-/

namespace A099979.P15153717657381108730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (2 * (n + 1)) + ((2 * (n + 1)) ^ 2 : ℤ)

end

end A099979.P15153717657381108730

namespace A099979

/-- `A067558(2*(n+1))+(2*(n+1))²` -/
def P15153717657381108730.Spec : Prop :=
  ∀ n, P15153717657381108730.a n = A099979 (n + 1)

end A099979

/-! ## A099979.P10175715667959955329

`A092411(2*n+1)-A099978(n+1)`
-/

namespace A099979.P10175715667959955329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092411 (2 * n + 1) - A099978 (n + 1)

end

end A099979.P10175715667959955329

namespace A099979

/-- `A092411(2*n+1)-A099978(n+1)` -/
def P10175715667959955329.Spec : Prop :=
  ∀ n, P10175715667959955329.a n = A099979 (n + 1)

end A099979

/-! ## A099979.P6394644181868948378

`A069153(2*(n+1))+A007437(2*(n+1))`
-/

namespace A099979.P6394644181868948378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069153 (2 * (n + 1)) + A007437 (2 * (n + 1))

end

end A099979.P6394644181868948378

namespace A099979

/-- `A069153(2*(n+1))+A007437(2*(n+1))` -/
def P6394644181868948378.Spec : Prop :=
  ∀ n, P6394644181868948378.a n = A099979 (n + 1)

end A099979

/-! ## A099979.P4965225175070656233

`A086666(2*(n+1))+A000203(2*(n+1))`
-/

namespace A099979.P4965225175070656233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086666 (2 * (n + 1)) + A000203 (2 * (n + 1))

end

end A099979.P4965225175070656233

namespace A099979

/-- `A086666(2*(n+1))+A000203(2*(n+1))` -/
def P4965225175070656233.Spec : Prop :=
  ∀ n, P4965225175070656233.a n = A099979 (n + 1)

end A099979

/-! ## A099979.P11876847709569472030

`A189120(2*(n+1))+A005063(2*(n+1))`
-/

namespace A099979.P11876847709569472030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189120 (2 * (n + 1)) + A005063 (2 * (n + 1))

end

end A099979.P11876847709569472030

namespace A099979

/-- `A189120(2*(n+1))+A005063(2*(n+1))` -/
def P11876847709569472030.Spec : Prop :=
  ∀ n, P11876847709569472030.a n = A099979 (n + 1)

end A099979

/-! ## A099979.P17012593728543205462

`A189835(2*(n+1))+A038040(2*(n+1))`
-/

namespace A099979.P17012593728543205462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189835 (2 * (n + 1)) + A038040 (2 * (n + 1))

end

end A099979.P17012593728543205462

namespace A099979

/-- `A189835(2*(n+1))+A038040(2*(n+1))` -/
def P17012593728543205462.Spec : Prop :=
  ∀ n, P17012593728543205462.a n = A099979 (n + 1)

end A099979

/-! ## A099979.P16891600219352945871

`A064602(2*(n+1))-A064602(2*n+1)`
-/

namespace A099979.P16891600219352945871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064602 (2 * (n + 1)) - A064602 (2 * n + 1)

end

end A099979.P16891600219352945871

namespace A099979

/-- `A064602(2*(n+1))-A064602(2*n+1)` -/
def P16891600219352945871.Spec : Prop :=
  ∀ n, P16891600219352945871.a n = A099979 (n + 1)

end A099979

/-! ## A099979.P2815286284773584020

`A092411(2*n+1)-A076577(2*n+1)`
-/

namespace A099979.P2815286284773584020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092411 (2 * n + 1) - A076577 (2 * n + 1)

end

end A099979.P2815286284773584020

namespace A099979

/-- `A092411(2*n+1)-A076577(2*n+1)` -/
def P2815286284773584020.Spec : Prop :=
  ∀ n, P2815286284773584020.a n = A099979 (n + 1)

end A099979

/-! ## A099979.P9722942508488909242

`A116913(2*(n+1))-A069153(2*(n+1))`
-/

namespace A099979.P9722942508488909242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116913 (2 * (n + 1)) - A069153 (2 * (n + 1))

end

end A099979.P9722942508488909242

namespace A099979

/-- `A116913(2*(n+1))-A069153(2*(n+1))` -/
def P9722942508488909242.Spec : Prop :=
  ∀ n, P9722942508488909242.a n = A099979 (n + 1)

end A099979

/-! ## A099979.P9943479958879961375

`A067692(2*(n+1))-A119616(2*(n+1))`
-/

namespace A099979.P9943479958879961375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067692 (2 * (n + 1)) - A119616 (2 * (n + 1))

end

end A099979.P9943479958879961375

namespace A099979

/-- `A067692(2*(n+1))-A119616(2*(n+1))` -/
def P9943479958879961375.Spec : Prop :=
  ∀ n, P9943479958879961375.a n = A099979 (n + 1)

end A099979

/-! ## A099979.P15311862647470747429

`A092411(2*n+1)-A321558(2*n+1)`
-/

namespace A099979.P15311862647470747429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092411 (2 * n + 1) - A321558 (2 * n + 1)

end

end A099979.P15311862647470747429

namespace A099979

/-- `A092411(2*n+1)-A321558(2*n+1)` -/
def P15311862647470747429.Spec : Prop :=
  ∀ n, P15311862647470747429.a n = A099979 (n + 1)

end A099979

/-! ## A099979.P13680400994725001409

`A379921(2*n+1)-A379921(2*(n+1))`
-/

namespace A099979.P13680400994725001409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379921 (2 * n + 1) - A379921 (2 * (n + 1))

end

end A099979.P13680400994725001409

namespace A099979

/-- `A379921(2*n+1)-A379921(2*(n+1))` -/
def P13680400994725001409.Spec : Prop :=
  ∀ n, P13680400994725001409.a n = A099979 (n + 1)

end A099979

/-! ## A099979.P4967383074749868666

`A379814(2*(n+1))/A001158(2*(n+1))`
-/

namespace A099979.P4967383074749868666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379814 (2 * (n + 1)) : ℚ) / (A001158 (2 * (n + 1)) : ℚ)

end

end A099979.P4967383074749868666

namespace A099979

/-- `A379814(2*(n+1))/A001158(2*(n+1))` -/
def P4967383074749868666.Spec : Prop :=
  ∀ n, P4967383074749868666.a n = (A099979 (n + 1) : ℚ)

end A099979

/-! ## A099979.P10854023243566607334

`A000203(2*(n+1))²-A066293(2*(n+1))`
-/

namespace A099979.P10854023243566607334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) ^ 2 - A066293 (2 * (n + 1))

end

end A099979.P10854023243566607334

namespace A099979

/-- `A000203(2*(n+1))²-A066293(2*(n+1))` -/
def P10854023243566607334.Spec : Prop :=
  ∀ n, P10854023243566607334.a n = A099979 (n + 1)

end A099979

/-!
# A099980: Bisection of A001358.

The programs for A099980, the canonical program `A099980.P12312240762012270379` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099980 has offset 0).

The definition of A099980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099980.P12312240762012270379

`A001358(Δ[n²])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A099980

/-- `A001358(Δ[n²])` -/
def P12312240762012270379.Spec : Prop :=
  ∀ n, P12312240762012270379.a n = A099980 n

theorem P12312240762012270379.correct : P12312240762012270379.Spec := by
  intro n
  simp only [A099980]

end A099980

/-! ## A099980.P2822813939612879236

`record[A001358(n^(n%2))]`
-/

namespace A099980.P2822813939612879236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099980.P2822813939612879236

namespace A099980

/-- `record[A001358(n^(n%2))]` -/
def P2822813939612879236.Spec : Prop :=
  ∀ n, P2822813939612879236.a n = A099980 n

end A099980

/-! ## A099980.P2054774085296951214

`record[A001358(n^and(1, n))]`
-/

namespace A099980.P2054774085296951214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n ^ Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099980.P2054774085296951214

namespace A099980

/-- `record[A001358(n^and(1, n))]` -/
def P2054774085296951214.Spec : Prop :=
  ∀ n, P2054774085296951214.a n = A099980 n

end A099980

/-! ## A099980.P9886489526817380128

`record[A001358(C(n, and(1, n)))]`
-/

namespace A099980.P9886489526817380128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (Nat.choose n (Nat.land 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099980.P9886489526817380128

namespace A099980

/-- `record[A001358(C(n, and(1, n)))]` -/
def P9886489526817380128.Spec : Prop :=
  ∀ n, P9886489526817380128.a n = A099980 n

end A099980

/-! ## A099980.P10352732275866440349

`record[A001358(C(or(1, n), n))]`
-/

namespace A099980.P10352732275866440349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (Nat.choose (Nat.lor 1 n) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099980.P10352732275866440349

namespace A099980

/-- `record[A001358(C(or(1, n), n))]` -/
def P10352732275866440349.Spec : Prop :=
  ∀ n, P10352732275866440349.a n = A099980 n

end A099980

/-! ## A099980.P6983025906870558225

`and(-1, A001358(2*n+1))`
-/

namespace A099980.P6983025906870558225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A001358 (2 * n + 1))

end

end A099980.P6983025906870558225

namespace A099980

/-- `and(-1, A001358(2*n+1))` -/
def P6983025906870558225.Spec : Prop :=
  ∀ n, P6983025906870558225.a n = A099980 n

end A099980

/-! ## A099980.P17790041375860307933

`record[A001358(lcm(2, n+1)/2)]`
-/

namespace A099980.P17790041375860307933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099980.P17790041375860307933

namespace A099980

/-- `record[A001358(lcm(2, n+1)/2)]` -/
def P17790041375860307933.Spec : Prop :=
  ∀ n, P17790041375860307933.a n = A099980 n

end A099980

/-! ## A099980.P677678744488609309

`record[A001358(and(n, n+1)+1)]`
-/

namespace A099980.P677678744488609309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (Nat.land n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099980.P677678744488609309

namespace A099980

/-- `record[A001358(and(n, n+1)+1)]` -/
def P677678744488609309.Spec : Prop :=
  ∀ n, P677678744488609309.a n = A099980 n

end A099980

/-! ## A099980.P2329625650366709455

`record[A001358(n+1)/(-1)^n]`
-/

namespace A099980.P2329625650366709455
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001358 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099980.P2329625650366709455

namespace A099980

/-- `record[A001358(n+1)/(-1)^n]` -/
def P2329625650366709455.Spec : Prop :=
  ∀ n, P2329625650366709455.a n = (A099980 n : ℚ)

end A099980

/-! ## A099980.P9706220834934374529

`record[A001358(A093178(n))]`
-/

namespace A099980.P9706220834934374529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099980.P9706220834934374529

namespace A099980

/-- `record[A001358(A093178(n))]` -/
def P9706220834934374529.Spec : Prop :=
  ∀ n, P9706220834934374529.a n = A099980 n

end A099980

/-! ## A099980.P2975054488370330464

`record[A001358(A000265(n+1))]`
-/

namespace A099980.P2975054488370330464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099980.P2975054488370330464

namespace A099980

/-- `record[A001358(A000265(n+1))]` -/
def P2975054488370330464.Spec : Prop :=
  ∀ n, P2975054488370330464.a n = A099980 n

end A099980

/-! ## A099980.P18317962228175109836

`A000027(A001358(2*n+1))`
-/

namespace A099980.P18317962228175109836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001358 (2 * n + 1)).toNat

end

end A099980.P18317962228175109836

namespace A099980

/-- `A000027(A001358(2*n+1))` -/
def P18317962228175109836.Spec : Prop :=
  ∀ n, P18317962228175109836.a n = A099980 n

end A099980

/-! ## A099980.P15294467744034150763

`filter[A001358(2*n+1), A212793(#)]`
-/

namespace A099980.P15294467744034150763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A099980.P15294467744034150763

namespace A099980

/-- `filter[A001358(2*n+1), A212793(#)]` -/
def P15294467744034150763.Spec : Prop :=
  ∀ n, P15294467744034150763.a n = A099980 n

end A099980

/-! ## A099980.P11328654590579766867

`∑{d}[A001358(2*n+1), A000010(#)]`
-/

namespace A099980.P11328654590579766867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A099980.P11328654590579766867

namespace A099980

/-- `∑{d}[A001358(2*n+1), A000010(#)]` -/
def P11328654590579766867.Spec : Prop :=
  ∀ n, P11328654590579766867.a n = A099980 n

end A099980

/-! ## A099980.P16561309769780531792

`A001358(2*n+1)+2-A020639(2*(n+1))`
-/

namespace A099980.P16561309769780531792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (2 * n + 1) + (2 - A020639 (2 * (n + 1)))

end

end A099980.P16561309769780531792

namespace A099980

/-- `A001358(2*n+1)+2-A020639(2*(n+1))` -/
def P16561309769780531792.Spec : Prop :=
  ∀ n, P16561309769780531792.a n = A099980 n

end A099980

/-! ## A099980.P2917332405534918665

`A121262(A001358(n+2))+A001358(2*n+1)`
-/

namespace A099980.P2917332405534918665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A001358 (n + 2)).toNat + A001358 (2 * n + 1)

end

end A099980.P2917332405534918665

namespace A099980

/-- `A121262(A001358(n+2))+A001358(2*n+1)` -/
def P2917332405534918665.Spec : Prop :=
  ∀ n, P2917332405534918665.a n = A099980 n

end A099980

/-! ## A099980.P11831321493375828702

`A001358(2*n+1)%A000040(n+2)²`
-/

namespace A099980.P11831321493375828702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (2 * n + 1)) (A000040 (n + 2) ^ 2)

end

end A099980.P11831321493375828702

namespace A099980

/-- `A001358(2*n+1)%A000040(n+2)²` -/
def P11831321493375828702.Spec : Prop :=
  ∀ n, P11831321493375828702.a n = A099980 n

end A099980

/-! ## A099980.P14012781145101963430

`filter[A001358(2*n+1), A064911(#)]`
-/

namespace A099980.P14012781145101963430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A099980.P14012781145101963430

namespace A099980

/-- `filter[A001358(2*n+1), A064911(#)]` -/
def P14012781145101963430.Spec : Prop :=
  ∀ n, P14012781145101963430.a n = A099980 n

end A099980

/-! ## A099980.P4633467609163764057

`filter[A001358(2*n+1), A005171(#)]`
-/

namespace A099980.P4633467609163764057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A099980.P4633467609163764057

namespace A099980

/-- `filter[A001358(2*n+1), A005171(#)]` -/
def P4633467609163764057.Spec : Prop :=
  ∀ n, P4633467609163764057.a n = A099980 n

end A099980

/-! ## A099980.P13025705715652563988

`filter[A001358(2*n+1), A065043(#)]`
-/

namespace A099980.P13025705715652563988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A099980.P13025705715652563988

namespace A099980

/-- `filter[A001358(2*n+1), A065043(#)]` -/
def P13025705715652563988.Spec : Prop :=
  ∀ n, P13025705715652563988.a n = A099980 n

end A099980

/-!
# A099981: Bisection of A001358.

The programs for A099981, the canonical program `A099981.P17550531884189049428` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099981 has offset 0).

The definition of A099981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099981.P17550531884189049428

`A001358(2*(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A099981

/-- `A001358(2*(n+1))` -/
def P17550531884189049428.Spec : Prop :=
  ∀ n, P17550531884189049428.a n = A099981 n

theorem P17550531884189049428.correct : P17550531884189049428.Spec := by
  intro n
  simp only [A099981]

end A099981

/-! ## A099981.P11399891320256807033

`record[A001358(abs(xor(n, -2)))]`
-/

namespace A099981.P11399891320256807033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099981.P11399891320256807033

namespace A099981

/-- `record[A001358(abs(xor(n, -2)))]` -/
def P11399891320256807033.Spec : Prop :=
  ∀ n, P11399891320256807033.a n = A099981 n

end A099981

/-! ## A099981.P17203798691311827111

`record[A001358(xor(1, n)+1)]`
-/

namespace A099981.P17203798691311827111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099981.P17203798691311827111

namespace A099981

/-- `record[A001358(xor(1, n)+1)]` -/
def P17203798691311827111.Spec : Prop :=
  ∀ n, P17203798691311827111.a n = A099981 n

end A099981

/-! ## A099981.P15210410742335368945

`record[A001358(-xor(n, -2))]`
-/

namespace A099981.P15210410742335368945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (-Int.xor (n : ℤ) (-2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099981.P15210410742335368945

namespace A099981

/-- `record[A001358(-xor(n, -2))]` -/
def P15210410742335368945.Spec : Prop :=
  ∀ n, P15210410742335368945.a n = A099981 n

end A099981

/-! ## A099981.P11441636066535458901

`record[A001358(2-xor(1, 1-n))]`
-/

namespace A099981.P11441636066535458901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099981.P11441636066535458901

namespace A099981

/-- `record[A001358(2-xor(1, 1-n))]` -/
def P11441636066535458901.Spec : Prop :=
  ∀ n, P11441636066535458901.a n = A099981 n

end A099981

/-! ## A099981.P11516853197027038295

`record[A001358(and(3, n+2)+n)]`
-/

namespace A099981.P11516853197027038295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (Nat.land 3 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099981.P11516853197027038295

namespace A099981

/-- `record[A001358(and(3, n+2)+n)]` -/
def P11516853197027038295.Spec : Prop :=
  ∀ n, P11516853197027038295.a n = A099981 n

end A099981

/-! ## A099981.P17099535034652004363

`record[A001358(n%10+n+2)]`
-/

namespace A099981.P17099535034652004363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n % 10 + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099981.P17099535034652004363

namespace A099981

/-- `record[A001358(n%10+n+2)]` -/
def P17099535034652004363.Spec : Prop :=
  ∀ n, P17099535034652004363.a n = A099981 n

end A099981

/-! ## A099981.P4740145136742335931

`record[A001358(A093178(n)+1)]`
-/

namespace A099981.P4740145136742335931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A093178 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099981.P4740145136742335931

namespace A099981

/-- `record[A001358(A093178(n)+1)]` -/
def P4740145136742335931.Spec : Prop :=
  ∀ n, P4740145136742335931.a n = A099981 n

end A099981

/-! ## A099981.P18278005864872691979

`record[A001358(2*A286551(n))]`
-/

namespace A099981.P18278005864872691979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (2 * A286551 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099981.P18278005864872691979

namespace A099981

/-- `record[A001358(2*A286551(n))]` -/
def P18278005864872691979.Spec : Prop :=
  ∀ n, P18278005864872691979.a n = A099981 n

end A099981

/-! ## A099981.P4857604953190899523

`record[A001358(A000265(n+1)+1)]`
-/

namespace A099981.P4857604953190899523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099981.P4857604953190899523

namespace A099981

/-- `record[A001358(A000265(n+1)+1)]` -/
def P4857604953190899523.Spec : Prop :=
  ∀ n, P4857604953190899523.a n = A099981 n

end A099981

/-! ## A099981.P14434633258929783362

`A175509(n+1)+A075818(n+1)`
-/

namespace A099981.P14434633258929783362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175509 (n + 1) + A075818 (n + 1)

end

end A099981.P14434633258929783362

namespace A099981

/-- `A175509(n+1)+A075818(n+1)` -/
def P14434633258929783362.Spec : Prop :=
  ∀ n, P14434633258929783362.a n = A099981 n

end A099981

/-! ## A099981.P7450491361712574192

`sqrt(A074985(2*(n+1)))`
-/

namespace A099981.P7450491361712574192
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (2 * (n + 1)) : ℝ)

end

end A099981.P7450491361712574192

namespace A099981

/-- `sqrt(A074985(2*(n+1)))` -/
def P7450491361712574192.Spec : Prop :=
  ∀ n, P7450491361712574192.a n = (A099981 n : ℝ)

end A099981

/-! ## A099981.P6908035864219370232

`A186621(2*(n+1))+1`
-/

namespace A099981.P6908035864219370232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (2 * (n + 1)) + 1

end

end A099981.P6908035864219370232

namespace A099981

/-- `A186621(2*(n+1))+1` -/
def P6908035864219370232.Spec : Prop :=
  ∀ n, P6908035864219370232.a n = A099981 n

end A099981

/-! ## A099981.P10515238208217009502

`A088707(2*(n+1))-1`
-/

namespace A099981.P10515238208217009502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (2 * (n + 1)) - 1

end

end A099981.P10515238208217009502

namespace A099981

/-- `A088707(2*(n+1))-1` -/
def P10515238208217009502.Spec : Prop :=
  ∀ n, P10515238208217009502.a n = A099981 n

end A099981

/-! ## A099981.P10599091600287486420

`A075818(2*(n+1))/2`
-/

namespace A099981.P10599091600287486420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (2 * (n + 1)) : ℚ) / 2

end

end A099981.P10599091600287486420

namespace A099981

/-- `A075818(2*(n+1))/2` -/
def P10599091600287486420.Spec : Prop :=
  ∀ n, P10599091600287486420.a n = (A099981 n : ℚ)

end A099981

/-! ## A099981.P11028505599830173650

`record[A088707(xor(1, n)+1)]-1`
-/

namespace A099981.P11028505599830173650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A099981.P11028505599830173650

namespace A099981

/-- `record[A088707(xor(1, n)+1)]-1` -/
def P11028505599830173650.Spec : Prop :=
  ∀ n, P11028505599830173650.a n = A099981 n

end A099981

/-! ## A099981.P11487864061821763065

`A100493(2*(n+1))-2*(n+1)`
-/

namespace A099981.P11487864061821763065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A099981.P11487864061821763065

namespace A099981

/-- `A100493(2*(n+1))-2*(n+1)` -/
def P11487864061821763065.Spec : Prop :=
  ∀ n, P11487864061821763065.a n = A099981 n

end A099981

/-! ## A099981.P4722027270126378589

`record[A075818(n+2)/A020639(n+2)]`
-/

namespace A099981.P4722027270126378589
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 2) : ℚ) / (A020639 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099981.P4722027270126378589

namespace A099981

/-- `record[A075818(n+2)/A020639(n+2)]` -/
def P4722027270126378589.Spec : Prop :=
  ∀ n, P4722027270126378589.a n = (A099981 n : ℚ)

end A099981

/-! ## A099981.P5602377292151534175

`A000040(2*(n+1))-A065870(2*(n+1))`
-/

namespace A099981.P5602377292151534175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) - A065870 (2 * (n + 1))

end

end A099981.P5602377292151534175

namespace A099981

/-- `A000040(2*(n+1))-A065870(2*(n+1))` -/
def P5602377292151534175.Spec : Prop :=
  ∀ n, P5602377292151534175.a n = A099981 n

end A099981

/-! ## A099981.P7373986014773292023

`A133796(2*(n+1))-A000040(2*(n+1))`
-/

namespace A099981.P7373986014773292023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (2 * (n + 1)) - A000040 (2 * (n + 1))

end

end A099981.P7373986014773292023

namespace A099981

/-- `A133796(2*(n+1))-A000040(2*(n+1))` -/
def P7373986014773292023.Spec : Prop :=
  ∀ n, P7373986014773292023.a n = A099981 n

end A099981

/-!
# A099982: Bisection of A000043.

The programs for A099982, there is no canonical definition to state claims against.
-/

/-! ## A099982.P9387852270677514956

`A000043(2*n+1)`
-/

namespace A099982.P9387852270677514956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (2 * n + 1)

end

end A099982.P9387852270677514956

/-! ## A099982.P13332977795627814630

`A090748(Δ[n²])+1`
-/

namespace A099982.P13332977795627814630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A099982.P13332977795627814630

/-! ## A099982.P11923468413331019032

`A050475(Δ[n²])-1`
-/

namespace A099982.P11923468413331019032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050475 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A099982.P11923468413331019032

/-! ## A099982.P4901115894451181573

`A153798(Δ[n²])+2`
-/

namespace A099982.P4901115894451181573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A099982.P4901115894451181573

/-!
# A099983: Bisection of A000043.

The programs for A099983, there is no canonical definition to state claims against.
-/

/-! ## A099983.P3947272005082582376

`A000043(2*(n+1))`
-/

namespace A099983.P3947272005082582376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (2 * (n + 1))

end

end A099983.P3947272005082582376

/-! ## A099983.P6242734473154591110

`record[A000043(abs(xor(n, -2)))]`
-/

namespace A099983.P6242734473154591110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099983.P6242734473154591110

/-! ## A099983.P12137556746233426190

`record[A000043(xor(1, n)+1)]`
-/

namespace A099983.P12137556746233426190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099983.P12137556746233426190

/-! ## A099983.P6692309384927041020

`record[A000043(gcd(n+1, ∑[n])+1)]`
-/

namespace A099983.P6692309384927041020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099983.P6692309384927041020

/-!
# A099984: Bisection of A007947.

The programs for A099984, the canonical program `A099984.P17262912568737395689` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099984 has offset 1).

The definition of A099984 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099984.P17262912568737395689

`A007947(2*n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A099984

/-- `A007947(2*n+1)` -/
def P17262912568737395689.Spec : Prop :=
  ∀ n, P17262912568737395689.a n = A099984 (n + 1)

theorem P17262912568737395689.correct : P17262912568737395689.Spec := by
  intro n
  simp only [A099984, Nat.add_sub_cancel]

end A099984

/-! ## A099984.P14965972615186013874

`∏{p}[Δ[n²], #]`
-/

namespace A099984.P14965972615186013874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A099984.P14965972615186013874

namespace A099984

/-- `∏{p}[Δ[n²], #]` -/
def P14965972615186013874.Spec : Prop :=
  ∀ n, (P14965972615186013874.a n : ℤ) = A099984 (n + 1)

end A099984

/-! ## A099984.P8089941243455099163

`or(1, ∏{p}[comp[2*n], #])`
-/

namespace A099984.P8089941243455099163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A099984.P8089941243455099163

namespace A099984

/-- `or(1, ∏{p}[comp[2*n], #])` -/
def P8089941243455099163.Spec : Prop :=
  ∀ n, (P8089941243455099163.a n : ℤ) = A099984 (n + 1)

end A099984

/-! ## A099984.P11433471958737602798

`abs(∏{p}[comp[2*n], -#])`
-/

namespace A099984.P11433471958737602798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))|

end

end A099984.P11433471958737602798

namespace A099984

/-- `abs(∏{p}[comp[2*n], -#])` -/
def P11433471958737602798.Spec : Prop :=
  ∀ n, P11433471958737602798.a n = A099984 (n + 1)

end A099984

/-! ## A099984.P14755555755262463791

`sqrt(∏{p}[comp[2*n], #²])`
-/

namespace A099984.P14755555755262463791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n), p ^ 2 : ℕ) : ℝ)

end

end A099984.P14755555755262463791

namespace A099984

/-- `sqrt(∏{p}[comp[2*n], #²])` -/
def P14755555755262463791.Spec : Prop :=
  ∀ n, P14755555755262463791.a n = (A099984 (n + 1) : ℝ)

end A099984

/-! ## A099984.P12562671287897260983

`exp(∑{p}[comp[2*n], log(#)])`
-/

namespace A099984.P12562671287897260983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (p : ℝ))

end

end A099984.P12562671287897260983

namespace A099984

/-- `exp(∑{p}[comp[2*n], log(#)])` -/
def P12562671287897260983.Spec : Prop :=
  ∀ n, P12562671287897260983.a n = (A099984 (n + 1) : ℝ)

end A099984

/-! ## A099984.P9151044870344041178

`∏{p}[4*n+2, #]/2`
-/

namespace A099984.P9151044870344041178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / 2

end

end A099984.P9151044870344041178

namespace A099984

/-- `∏{p}[4*n+2, #]/2` -/
def P9151044870344041178.Spec : Prop :=
  ∀ n, P9151044870344041178.a n = (A099984 (n + 1) : ℚ)

end A099984

/-! ## A099984.P7494648743429660009

`∏{p}[2*n+1, sqrt(#)]²`
-/

namespace A099984.P7494648743429660009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Real.sqrt (p : ℝ)) ^ 2

end

end A099984.P7494648743429660009

namespace A099984

/-- `∏{p}[2*n+1, sqrt(#)]²` -/
def P7494648743429660009.Spec : Prop :=
  ∀ n, P7494648743429660009.a n = (A099984 (n + 1) : ℝ)

end A099984

/-! ## A099984.P10289927610861013519

`2^∑{p}[2*n+1, log2(#)]`
-/

namespace A099984.P10289927610861013519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ))

end

end A099984.P10289927610861013519

namespace A099984

/-- `2^∑{p}[2*n+1, log2(#)]` -/
def P10289927610861013519.Spec : Prop :=
  ∀ n, P10289927610861013519.a n = (A099984 (n + 1) : ℝ)

end A099984

/-! ## A099984.P8147322546587504838

`round(exp(∑{p}[2*n+1, log(#)]))`
-/

namespace A099984.P8147322546587504838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (p : ℝ)))

end

end A099984.P8147322546587504838

namespace A099984

/-- `round(exp(∑{p}[2*n+1, log(#)]))` -/
def P8147322546587504838.Spec : Prop :=
  ∀ n, P8147322546587504838.a n = A099984 (n + 1)

end A099984

/-! ## A099984.P6589018311313236972

`or(1, ∏{p}[2*n+1, #]-1)`
-/

namespace A099984.P6589018311313236972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - 1)

end

end A099984.P6589018311313236972

namespace A099984

/-- `or(1, ∏{p}[2*n+1, #]-1)` -/
def P6589018311313236972.Spec : Prop :=
  ∀ n, P6589018311313236972.a n = A099984 (n + 1)

end A099984

/-! ## A099984.P7051242751267913446

`xor(1, ∏{p}[2*n+1, #])+1`
-/

namespace A099984.P7051242751267913446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1

end

end A099984.P7051242751267913446

namespace A099984

/-- `xor(1, ∏{p}[2*n+1, #])+1` -/
def P7051242751267913446.Spec : Prop :=
  ∀ n, (P7051242751267913446.a n : ℤ) = A099984 (n + 1)

end A099984

/-! ## A099984.P13712792244331814019

`-or(1, -∏{p}[2*n+1, #])`
-/

namespace A099984.P13712792244331814019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ))

end

end A099984.P13712792244331814019

namespace A099984

/-- `-or(1, -∏{p}[2*n+1, #])` -/
def P13712792244331814019.Spec : Prop :=
  ∀ n, P13712792244331814019.a n = A099984 (n + 1)

end A099984

/-! ## A099984.P16198780583217716432

`abs(1-∏{p}[2*n+1, #])+1`
-/

namespace A099984.P16198780583217716432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)| + 1

end

end A099984.P16198780583217716432

namespace A099984

/-- `abs(1-∏{p}[2*n+1, #])+1` -/
def P16198780583217716432.Spec : Prop :=
  ∀ n, P16198780583217716432.a n = A099984 (n + 1)

end A099984

/-! ## A099984.P13011289279729544582

`and(-2, ∏{p}[2*n+1, #])+1`
-/

namespace A099984.P13011289279729544582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + 1

end

end A099984.P13011289279729544582

namespace A099984

/-- `and(-2, ∏{p}[2*n+1, #])+1` -/
def P13011289279729544582.Spec : Prop :=
  ∀ n, P13011289279729544582.a n = A099984 (n + 1)

end A099984

/-! ## A099984.P4549250411934018899

`∏{p}[2*n+1, #]+and(2, n²)`
-/

namespace A099984.P4549250411934018899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p + Nat.land 2 (n ^ 2)

end

end A099984.P4549250411934018899

namespace A099984

/-- `∏{p}[2*n+1, #]+and(2, n²)` -/
def P4549250411934018899.Spec : Prop :=
  ∀ n, (P4549250411934018899.a n : ℤ) = A099984 (n + 1)

end A099984

/-! ## A099984.P11762972503896694228

`lcm((-1)^n, ∏{p}[2*n+1, #])`
-/

namespace A099984.P11762972503896694228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A099984.P11762972503896694228

namespace A099984

/-- `lcm((-1)^n, ∏{p}[2*n+1, #])` -/
def P11762972503896694228.Spec : Prop :=
  ∀ n, (P11762972503896694228.a n : ℤ) = A099984 (n + 1)

end A099984

/-! ## A099984.P1891688967984324368

`and(1, n)!*∏{p}[2*n+1, #]`
-/

namespace A099984.P1891688967984324368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 1 n) * (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A099984.P1891688967984324368

namespace A099984

/-- `and(1, n)!*∏{p}[2*n+1, #]` -/
def P1891688967984324368.Spec : Prop :=
  ∀ n, (P1891688967984324368.a n : ℤ) = A099984 (n + 1)

end A099984

/-! ## A099984.P15954405452958094064

`gcd(comp[2*n], ∏{p}[2*n+1, #])`
-/

namespace A099984.P15954405452958094064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A099984.P15954405452958094064

namespace A099984

/-- `gcd(comp[2*n], ∏{p}[2*n+1, #])` -/
def P15954405452958094064.Spec : Prop :=
  ∀ n, (P15954405452958094064.a n : ℤ) = A099984 (n + 1)

end A099984

/-! ## A099984.P9807720157814326402

`A099985(Δ[n²])/2`
-/

namespace A099984.P9807720157814326402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099985 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A099984.P9807720157814326402

namespace A099984

/-- `A099985(Δ[n²])/2` -/
def P9807720157814326402.Spec : Prop :=
  ∀ n, P9807720157814326402.a n = (A099984 (n + 1) : ℚ)

end A099984

/-!
# A099985: a(n) = rad(2n), where rad = A007947.

The programs for A099985, the canonical program `A099985.P11947395409995645140` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099985 has offset 1).

The definition of A099985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099985.P18122676785771798779

`2*A204455(n+1)`
-/

namespace A099985.P18122676785771798779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204455 (n + 1)

end

end A099985.P18122676785771798779

namespace A099985

/-- `2*A204455(n+1)` -/
def P18122676785771798779.Spec : Prop :=
  ∀ n, P18122676785771798779.a n = A099985 (n + 1)

end A099985

/-! ## A099985.P11947395409995645140

`∏{p}[2*(n+1), #]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099985

/-- `∏{p}[2*(n+1), #]` -/
def P11947395409995645140.Spec : Prop :=
  ∀ n, (P11947395409995645140.a n : ℤ) = A099985 (n + 1)

theorem P11947395409995645140.correct : P11947395409995645140.Spec := by
  intro n
  simp only [A099985, Nat.add_sub_cancel]

end A099985

/-! ## A099985.P13710317122942716657

`lcm(2, ∏{p}[n+1, #])`
-/

namespace A099985.P13710317122942716657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A099985.P13710317122942716657

namespace A099985

/-- `lcm(2, ∏{p}[n+1, #])` -/
def P13710317122942716657.Spec : Prop :=
  ∀ n, (P13710317122942716657.a n : ℤ) = A099985 (n + 1)

end A099985

/-! ## A099985.P10618441262027588110

`or(2, ∏{p}[n+2+n, #])`
-/

namespace A099985.P10618441262027588110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A099985.P10618441262027588110

namespace A099985

/-- `or(2, ∏{p}[n+2+n, #])` -/
def P10618441262027588110.Spec : Prop :=
  ∀ n, (P10618441262027588110.a n : ℤ) = A099985 (n + 1)

end A099985

/-! ## A099985.P17595334801670068700

`abs(∏{p}[n+2+n, -#])`
-/

namespace A099985.P17595334801670068700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))|

end

end A099985.P17595334801670068700

namespace A099985

/-- `abs(∏{p}[n+2+n, -#])` -/
def P17595334801670068700.Spec : Prop :=
  ∀ n, P17595334801670068700.a n = A099985 (n + 1)

end A099985

/-! ## A099985.P16152438858575794807

`sqrt(∏{p}[n+2+n, #²])`
-/

namespace A099985.P16152438858575794807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n), p ^ 2 : ℕ) : ℝ)

end

end A099985.P16152438858575794807

namespace A099985

/-- `sqrt(∏{p}[n+2+n, #²])` -/
def P16152438858575794807.Spec : Prop :=
  ∀ n, P16152438858575794807.a n = (A099985 (n + 1) : ℝ)

end A099985

/-! ## A099985.P1577009053474020661

`2^∑{p}[2*(n+1), log2(#)]`
-/

namespace A099985.P1577009053474020661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ))

end

end A099985.P1577009053474020661

namespace A099985

/-- `2^∑{p}[2*(n+1), log2(#)]` -/
def P1577009053474020661.Spec : Prop :=
  ∀ n, P1577009053474020661.a n = (A099985 (n + 1) : ℝ)

end A099985

/-! ## A099985.P16896730202106923436

`and(-2, ∏{p}[n+2+n, #])`
-/

namespace A099985.P16896730202106923436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A099985.P16896730202106923436

namespace A099985

/-- `and(-2, ∏{p}[n+2+n, #])` -/
def P16896730202106923436.Spec : Prop :=
  ∀ n, P16896730202106923436.a n = A099985 (n + 1)

end A099985

/-! ## A099985.P6318060609280264898

`A007947(2*(n+1))`
-/

namespace A099985.P6318060609280264898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (n + 1))

end

end A099985.P6318060609280264898

namespace A099985

/-- `A007947(2*(n+1))` -/
def P6318060609280264898.Spec : Prop :=
  ∀ n, P6318060609280264898.a n = A099985 (n + 1)

end A099985

/-! ## A099985.P4831189709391218247

`lcm(2, A007947(n+1))`
-/

namespace A099985.P4831189709391218247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A007947 (n + 1))

end

end A099985.P4831189709391218247

namespace A099985

/-- `lcm(2, A007947(n+1))` -/
def P4831189709391218247.Spec : Prop :=
  ∀ n, (P4831189709391218247.a n : ℤ) = A099985 (n + 1)

end A099985

/-! ## A099985.P12468404198403712613

`A109043(A007947(n+1))`
-/

namespace A099985.P12468404198403712613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (A007947 (n + 1)).toNat

end

end A099985.P12468404198403712613

namespace A099985

/-- `A109043(A007947(n+1))` -/
def P12468404198403712613.Spec : Prop :=
  ∀ n, P12468404198403712613.a n = A099985 (n + 1)

end A099985

/-! ## A099985.P8824922726391717774

`A073353(A204455(n+1))`
-/

namespace A099985.P8824922726391717774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (A204455 (n + 1)).toNat

end

end A099985.P8824922726391717774

namespace A099985

/-- `A073353(A204455(n+1))` -/
def P8824922726391717774.Spec : Prop :=
  ∀ n, P8824922726391717774.a n = A099985 (n + 1)

end A099985

/-! ## A099985.P5324208984153038904

`gcd(A001621(n), A078636(n+1))`
-/

namespace A099985.P5324208984153038904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001621 n) (A078636 (n + 1))

end

end A099985.P5324208984153038904

namespace A099985

/-- `gcd(A001621(n), A078636(n+1))` -/
def P5324208984153038904.Spec : Prop :=
  ∀ n, (P5324208984153038904.a n : ℤ) = A099985 (n + 1)

end A099985

/-! ## A099985.P8221538499777791633

`A137933(n+1)/A102631(n+1)`
-/

namespace A099985.P8221538499777791633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137933 (n + 1) : ℚ) / (A102631 (n + 1) : ℚ)

end

end A099985.P8221538499777791633

namespace A099985

/-- `A137933(n+1)/A102631(n+1)` -/
def P8221538499777791633.Spec : Prop :=
  ∀ n, P8221538499777791633.a n = (A099985 (n + 1) : ℚ)

end A099985

/-! ## A099985.P707829004328545702

`lcm(A062953(n+1), A168361(n+1))`
-/

namespace A099985.P707829004328545702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062953 (n + 1)) (A168361 (n + 1))

end

end A099985.P707829004328545702

namespace A099985

/-- `lcm(A062953(n+1), A168361(n+1))` -/
def P707829004328545702.Spec : Prop :=
  ∀ n, (P707829004328545702.a n : ℤ) = A099985 (n + 1)

end A099985

/-! ## A099985.P17014951659833373960

`2*A226040(Δ[n²])`
-/

namespace A099985.P17014951659833373960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099985.P17014951659833373960

namespace A099985

/-- `2*A226040(Δ[n²])` -/
def P17014951659833373960.Spec : Prop :=
  ∀ n, P17014951659833373960.a n = A099985 (n + 1)

end A099985

/-! ## A099985.P13414950595234419390

`abs(A062953(2*(n+1)))`
-/

namespace A099985.P13414950595234419390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062953 (2 * (n + 1))|

end

end A099985.P13414950595234419390

namespace A099985

/-- `abs(A062953(2*(n+1)))` -/
def P13414950595234419390.Spec : Prop :=
  ∀ n, P13414950595234419390.a n = A099985 (n + 1)

end A099985

/-! ## A099985.P8320591162583212997

`A076618(2*(n+1))-1`
-/

namespace A099985.P8320591162583212997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (2 * (n + 1)) - 1

end

end A099985.P8320591162583212997

namespace A099985

/-- `A076618(2*(n+1))-1` -/
def P8320591162583212997.Spec : Prop :=
  ∀ n, P8320591162583212997.a n = A099985 (n + 1)

end A099985

/-! ## A099985.P3921455445643397761

`A015052(A015052(2*(n+1)))`
-/

namespace A099985.P3921455445643397761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (2 * (n + 1))).toNat

end

end A099985.P3921455445643397761

namespace A099985

/-- `A015052(A015052(2*(n+1)))` -/
def P3921455445643397761.Spec : Prop :=
  ∀ n, P3921455445643397761.a n = A099985 (n + 1)

end A099985

/-!
# A099986: Bisection of A001113 (digits of e).

The programs for A099986, there is no canonical definition to state claims against.
-/

/-! ## A099986.P13318887029471944286

`A001113(2*n)`
-/

namespace A099986.P13318887029471944286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (2 * n + 1)

end

end A099986.P13318887029471944286

/-! ## A099986.P12801970261159732897

`dr(A001113(n+n))`
-/

namespace A099986.P12801970261159732897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001113 (n + n + 1))

end

end A099986.P12801970261159732897

/-! ## A099986.P6257580828792849973

`A001113(A005843(n))%10`
-/

namespace A099986.P6257580828792849973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001113 ((A005843 n).toNat + 1)) 10

end

end A099986.P6257580828792849973

/-! ## A099986.P1800026363400126614

`A000796(2*n)-A187747(2*n)`
-/

namespace A099986.P1800026363400126614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (2 * n + 1) - A187747 (2 * n)

end

end A099986.P1800026363400126614

/-! ## A099986.P9317938640285216420

`9-A121239(2*n)`
-/

namespace A099986.P9317938640285216420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A121239 (2 * n + 1)

end

end A099986.P9317938640285216420

/-! ## A099986.P6057984957345089237

`floor(A091131(2*n)+acot(n))`
-/

namespace A099986.P6057984957345089237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091131 (2 * n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A099986.P6057984957345089237

/-! ## A099986.P17566410617453069775

`A091131(2*n)+A000007(n)`
-/

namespace A099986.P17566410617453069775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (2 * n + 1) + A000007 n

end

end A099986.P17566410617453069775

/-! ## A099986.P177361215376294110

`A054977(n)*A091131(2*n)`
-/

namespace A099986.P177361215376294110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A091131 (2 * n + 1)

end

end A099986.P177361215376294110

/-! ## A099986.P5285233333016456343

`A073212(2*n)-A000796(2*n)`
-/

namespace A099986.P5285233333016456343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 (2 * n) - A000796 (2 * n + 1)

end

end A099986.P5285233333016456343

/-! ## A099986.P2174713064417061413

`(A073212(2*n)-A187747(2*n))/2`
-/

namespace A099986.P2174713064417061413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073212 (2 * n) - A187747 (2 * n) : ℚ) / 2

end

end A099986.P2174713064417061413

/-! ## A099986.P4053666625789968784

`A073212(2*n)+1-A123152(2*n+1)`
-/

namespace A099986.P4053666625789968784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 (2 * n) + (1 - A123152 (2 * n + 1))

end

end A099986.P4053666625789968784

/-! ## A099986.P1901308732422179382

`gcd(n, A000040(2*n+1))*A091131(2*n)`
-/

namespace A099986.P1901308732422179382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A000040 (2 * n + 1)) : ℤ) * A091131 (2 * n + 1)

end

end A099986.P1901308732422179382

/-! ## A099986.P15278127133673630279

`A228239(2*n+1)+A231325(2*n+1)-A000796(2*n)`
-/

namespace A099986.P15278127133673630279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228239 (2 * n + 1) + (A231325 (2 * n + 1) - A000796 (2 * n + 1))

end

end A099986.P15278127133673630279

/-! ## A099986.P5484199286828621367

`A001355(4*n+2)`
-/

namespace A099986.P5484199286828621367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (4 * n + 2)

end

end A099986.P5484199286828621367

/-! ## A099986.P10098874742847430931

`A110779(3*n+n+1)`
-/

namespace A099986.P10098874742847430931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (3 * n + (n + 1))

end

end A099986.P10098874742847430931

/-! ## A099986.P17236821163794092202

`dr(A001355(record[lcm(2, n+1)]))`
-/

namespace A099986.P17236821163794092202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001355 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A099986.P17236821163794092202

/-! ## A099986.P14982625474653617902

`A001355(A016825(n))%10`
-/

namespace A099986.P14982625474653617902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001355 (A016825 n).toNat) 10

end

end A099986.P14982625474653617902

/-! ## A099986.P10564742153919456448

`dr(A001355(Δ[A001105(n)]))`
-/

namespace A099986.P10564742153919456448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001355 (f1 (n + 1) - f1 n).toNat)

end

end A099986.P10564742153919456448

/-! ## A099986.P13999127541070757372

`dr(A001355(A004275(n+2+n)))`
-/

namespace A099986.P13999127541070757372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001355 (A004275 (n + 2 + n)).toNat)

end

end A099986.P13999127541070757372

/-! ## A099986.P8533188734677038198

`A078424(A016933(n))`
-/

namespace A099986.P8533188734677038198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (A016933 n).toNat

end

end A099986.P8533188734677038198

/-!
# A099987: Bisection of A001113 (digits of e).

The programs for A099987, there is no canonical definition to state claims against.
-/

/-! ## A099987.P12244710896944440199

`A001113(Δ[n²])`
-/

namespace A099987.P12244710896944440199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1)

end

end A099987.P12244710896944440199

/-! ## A099987.P1813271071953262388

`A001113(2*n+1)%10`
-/

namespace A099987.P1813271071953262388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001113 (2 * n + 1 + 1)) 10

end

end A099987.P1813271071953262388

/-! ## A099987.P3888815218302605300

`A062157(n+1)²*A001113(2*n+1)`
-/

namespace A099987.P3888815218302605300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) ^ 2 * A001113 (2 * n + 1 + 1)

end

end A099987.P3888815218302605300

/-! ## A099987.P4764077439395454928

`A009001(2*n)²*A001113(2*n+1)`
-/

namespace A099987.P4764077439395454928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) ^ 2 * A001113 (2 * n + 1 + 1)

end

end A099987.P4764077439395454928

/-! ## A099987.P7966700042275887006

`A111406(2*n+1)+A001113(2*n+1)`
-/

namespace A099987.P7966700042275887006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111406 (2 * n + 1) + A001113 (2 * n + 1 + 1)

end

end A099987.P7966700042275887006

/-! ## A099987.P1542264380861963223

`A001113(2*n+1)+2-A020639(2*(n+1))`
-/

namespace A099987.P1542264380861963223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (2 * n + 1 + 1) + (2 - A020639 (2 * (n + 1)))

end

end A099987.P1542264380861963223

/-! ## A099987.P9953714317034358078

`A001113(2*n+1)+A000007(n+1)`
-/

namespace A099987.P9953714317034358078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (2 * n + 1 + 1) + A000007 (n + 1)

end

end A099987.P9953714317034358078

/-! ## A099987.P11919043418613850202

`A001113(2*n+1)*A054977(n+1)`
-/

namespace A099987.P11919043418613850202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (2 * n + 1 + 1) * A054977 (n + 1)

end

end A099987.P11919043418613850202

/-! ## A099987.P11053503028795774718

`A001113(2*n+1)*A057427(n+1)`
-/

namespace A099987.P11053503028795774718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (2 * n + 1 + 1) * A057427 (n + 1)

end

end A099987.P11053503028795774718

/-! ## A099987.P10475188247834438289

`gcd(2, A000040(n+2))*A001113(2*n+1)`
-/

namespace A099987.P10475188247834438289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A001113 (2 * n + 1 + 1)

end

end A099987.P10475188247834438289

/-! ## A099987.P6795963203429051895

`A001113(2*n+1)+C(2, A003682(n+2))`
-/

namespace A099987.P6795963203429051895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (2 * n + 1 + 1) + (Nat.choose 2 (A003682 (n + 2)).toNat : ℤ)

end

end A099987.P6795963203429051895

/-! ## A099987.P9797147718777173548

`A230403(2*n+1)+A001113(2*n+1)`
-/

namespace A099987.P9797147718777173548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (2 * n + 1) + A001113 (2 * n + 1 + 1)

end

end A099987.P9797147718777173548

/-! ## A099987.P2080088765537454567

`A001113(2*n+1)*A033999(2*n)`
-/

namespace A099987.P2080088765537454567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (2 * n + 1 + 1) * A033999 (2 * n)

end

end A099987.P2080088765537454567

/-! ## A099987.P12034634176965786947

`A001113(2*n+1)*A056753(2*n)`
-/

namespace A099987.P12034634176965786947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (2 * n + 1 + 1) * A056753 (2 * n)

end

end A099987.P12034634176965786947

/-! ## A099987.P1596825790979839910

`A091131(Δ[n²])`
-/

namespace A099987.P1596825790979839910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1)

end

end A099987.P1596825790979839910

/-! ## A099987.P3433440935373271693

`9-A153805(2*n)`
-/

namespace A099987.P3433440935373271693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153805 (2 * n)

end

end A099987.P3433440935373271693

/-! ## A099987.P14947082645327971045

`9-A121239(2*n+1)`
-/

namespace A099987.P14947082645327971045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A121239 (2 * n + 1 + 1)

end

end A099987.P14947082645327971045

/-! ## A099987.P2786469274793608352

`floor(1/acot(A091131(2*n+1)))`
-/

namespace A099987.P2786469274793608352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / SequenceMachineLib.acot (A091131 (2 * n + 1 + 1) : ℝ)⌋

end

end A099987.P2786469274793608352

/-! ## A099987.P16830653824271003791

`A001113(2*n+1)+A000035(2*n)`
-/

namespace A099987.P16830653824271003791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (2 * n + 1 + 1) + A000035 (2 * n)

end

end A099987.P16830653824271003791

/-! ## A099987.P9688659137069556691

`A046975(2*n+1)-A046975(2*n)`
-/

namespace A099987.P9688659137069556691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046975 (2 * n + 1) - A046975 (2 * n)

end

end A099987.P9688659137069556691

/-!
# A099988: Bisection of lucky numbers, A000959.

The programs for A099988, there is no canonical definition to state claims against.
-/

/-! ## A099988.P4748634384259886452

`A000959(Δ[n²])`
-/

namespace A099988.P4748634384259886452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099988.P4748634384259886452

/-! ## A099988.P14544931194017723475

`record[A000959(n^(n%2))]`
-/

namespace A099988.P14544931194017723475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099988.P14544931194017723475

/-! ## A099988.P17500045099190979816

`or(1, A000959(2*n+1))`
-/

namespace A099988.P17500045099190979816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000959 (2 * n + 1))

end

end A099988.P17500045099190979816

/-! ## A099988.P13835237428941859567

`sqrt(A032598(Δ[n²]))`
-/

namespace A099988.P13835237428941859567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A032598 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A099988.P13835237428941859567

/-! ## A099988.P6248089501987465282

`A139269(Δ[n²])/2`
-/

namespace A099988.P6248089501987465282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139269 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A099988.P6248089501987465282

/-! ## A099988.P3767623682723223710

`root(A032599(2*n+1), 3)`
-/

namespace A099988.P3767623682723223710
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A032599 (2 * n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A099988.P3767623682723223710

/-! ## A099988.P1926841395884963135

`round(sqrt(A032598(2*n+1)))`
-/

namespace A099988.P1926841395884963135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A032598 (2 * n + 1) : ℝ))

end

end A099988.P1926841395884963135

/-! ## A099988.P10282881514330326683

`A032600(2*n+1)+A000040(2*n+1)`
-/

namespace A099988.P10282881514330326683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032600 (2 * n + 1) + A000040 (2 * n + 1)

end

end A099988.P10282881514330326683

/-! ## A099988.P11901525141204190716

`A032600(2*n+1)+A008578(2*(n+1))`
-/

namespace A099988.P11901525141204190716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032600 (2 * n + 1) + A008578 (2 * (n + 1))

end

end A099988.P11901525141204190716

/-! ## A099988.P6839563587363959960

`A118125(2*n+1)+A045954(2*n+1)`
-/

namespace A099988.P6839563587363959960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118125 (2 * n + 1) + A045954 (2 * n + 1)

end

end A099988.P6839563587363959960

/-! ## A099988.P11124452611990969356

`A032602(2*n+1)-A000040(2*n+1)`
-/

namespace A099988.P11124452611990969356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032602 (2 * n + 1) - A000040 (2 * n + 1)

end

end A099988.P11124452611990969356

/-! ## A099988.P3003999298735365127

`A139269(2*n+1)-A000959(2*n+1)`
-/

namespace A099988.P3003999298735365127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139269 (2 * n + 1) - A000959 (2 * n + 1)

end

end A099988.P3003999298735365127

/-! ## A099988.P15913765888193040553

`A032598(2*n+1)/A000959(2*n+1)`
-/

namespace A099988.P15913765888193040553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032598 (2 * n + 1) : ℚ) / (A000959 (2 * n + 1) : ℚ)

end

end A099988.P15913765888193040553

/-! ## A099988.P14017513122929213538

`filter[A000959(2*n+1), A145649(#)]`
-/

namespace A099988.P14017513122929213538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A099988.P14017513122929213538

/-! ## A099988.P17231666197431687672

`filter[A000959(2*n+1), A035263(#)]`
-/

namespace A099988.P17231666197431687672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A099988.P17231666197431687672

/-! ## A099988.P13495554892566430359

`filter[A000959(2*n+1), A039982(#)]`
-/

namespace A099988.P13495554892566430359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A099988.P13495554892566430359

/-! ## A099988.P8220373202027740797

`filter[A000959(2*n+1), A093719(#)]`
-/

namespace A099988.P8220373202027740797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A099988.P8220373202027740797

/-! ## A099988.P3528100415854739121

`filter[A000959(2*n+1), A098725(#)]`
-/

namespace A099988.P3528100415854739121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A099988.P3528100415854739121

/-! ## A099988.P17622976432456236846

`filter[A000959(2*n+1), A105234(#)]`
-/

namespace A099988.P17622976432456236846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A099988.P17622976432456236846

/-! ## A099988.P4665703840302043994

`filter[A000959(2*n+1), A115971(#)]`
-/

namespace A099988.P4665703840302043994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A099988.P4665703840302043994

/-!
# A099989: Bisection of lucky numbers, A000959.

The programs for A099989, there is no canonical definition to state claims against.
-/

/-! ## A099989.P8006133568601273745

`A000959(2*(n+1))`
-/

namespace A099989.P8006133568601273745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (2 * (n + 1))

end

end A099989.P8006133568601273745

/-! ## A099989.P10993048531932830220

`record[A000959(xor(1, n)+1)]`
-/

namespace A099989.P10993048531932830220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099989.P10993048531932830220

/-! ## A099989.P3948007286006214507

`record[A000959(abs(xor(n, -2)))]`
-/

namespace A099989.P3948007286006214507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099989.P3948007286006214507

/-! ## A099989.P13261504037881808094

`or(1, A000959(n+2+n))`
-/

namespace A099989.P13261504037881808094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000959 (n + 2 + n))

end

end A099989.P13261504037881808094

/-! ## A099989.P3069879983178394850

`record[A000959(2*A305297(n))]`
-/

namespace A099989.P3069879983178394850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (2 * A305297 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099989.P3069879983178394850

/-! ## A099989.P6350836612932144529

`record[A000959(2*A324347(n))]`
-/

namespace A099989.P6350836612932144529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (2 * A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099989.P6350836612932144529

/-! ## A099989.P12188704676777047475

`record[A000959(2*A328399(n))]`
-/

namespace A099989.P12188704676777047475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (2 * A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099989.P12188704676777047475

/-! ## A099989.P12152705901666235036

`record[A000959(2*A344180(n))]`
-/

namespace A099989.P12152705901666235036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (2 * A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099989.P12152705901666235036

/-! ## A099989.P15464639333515014244

`sqrt(A032598(2*(n+1)))`
-/

namespace A099989.P15464639333515014244
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A032598 (2 * (n + 1)) : ℝ)

end

end A099989.P15464639333515014244

/-! ## A099989.P14048434477111310866

`A139269(2*(n+1))/2`
-/

namespace A099989.P14048434477111310866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139269 (2 * (n + 1)) : ℚ) / 2

end

end A099989.P14048434477111310866

/-! ## A099989.P16936423454033722387

`2*A049781(2*(n+1))-1`
-/

namespace A099989.P16936423454033722387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049781 (2 * (n + 1)) - 1

end

end A099989.P16936423454033722387

/-! ## A099989.P2703507548977591073

`A032600(2*(n+1))+A000040(2*(n+1))`
-/

namespace A099989.P2703507548977591073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032600 (2 * (n + 1)) + A000040 (2 * (n + 1))

end

end A099989.P2703507548977591073

/-! ## A099989.P10207553701570997271

`A118125(2*(n+1))+A045954(2*(n+1))`
-/

namespace A099989.P10207553701570997271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118125 (2 * (n + 1)) + A045954 (2 * (n + 1))

end

end A099989.P10207553701570997271

/-! ## A099989.P8486721341498517128

`A032602(2*(n+1))-A000040(2*(n+1))`
-/

namespace A099989.P8486721341498517128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032602 (2 * (n + 1)) - A000040 (2 * (n + 1))

end

end A099989.P8486721341498517128

/-! ## A099989.P1832846427360444325

`A046279(2*(n+1))-A046279(2*n+1)`
-/

namespace A099989.P1832846427360444325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046279 (2 * (n + 1)) - A046279 (2 * n + 1)

end

end A099989.P1832846427360444325

/-! ## A099989.P13354650138084523049

`A032601(2*(n+1))/A000040(2*(n+1))`
-/

namespace A099989.P13354650138084523049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032601 (2 * (n + 1)) : ℚ) / (A000040 (2 * (n + 1)) : ℚ)

end

end A099989.P13354650138084523049

/-! ## A099989.P7734227113460455438

`A032599(2*(n+1))/A032598(2*(n+1))`
-/

namespace A099989.P7734227113460455438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032599 (2 * (n + 1)) : ℚ) / (A032598 (2 * (n + 1)) : ℚ)

end

end A099989.P7734227113460455438

/-! ## A099989.P13383717820769164426

`A000265(A139269(2*(n+1)))`
-/

namespace A099989.P13383717820769164426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A139269 (2 * (n + 1))).toNat

end

end A099989.P13383717820769164426

/-! ## A099989.P7377226379422253550

`A269369(A269369(a(n-1)))` with `a(0)=3`
-/

namespace A099989.P7377226379422253550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A269369 (A269369 (a (n - 1)).toNat).toNat

end

end A099989.P7377226379422253550

/-! ## A099989.P18242376534369533617

`A003309(2*(n+1))-A256486(2*(n+1))`
-/

namespace A099989.P18242376534369533617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (2 * (n + 1)) - A256486 (2 * (n + 1))

end

end A099989.P18242376534369533617

/-!
# A099990: a(n) = Moebius(2n+1).

The programs for A099990, the canonical program `A099990.P7805276027461421133` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099990 has offset 0).

The definition of A099990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099990.P445771127944945564

`∏{e}[2*n+1, floor(log(atan(#)))]`
-/

namespace A099990.P445771127944945564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.log (Real.arctan (Nat.factorization (f1 n) p : ℝ))⌋

end

end A099990.P445771127944945564

namespace A099990

/-- `∏{e}[2*n+1, floor(log(atan(#)))]` -/
def P445771127944945564.Spec : Prop :=
  ∀ n, P445771127944945564.a n = A099990 n

end A099990

/-! ## A099990.P8331895302909342923

`round(acot(∏{e}[2*n+1, -#]))`
-/

namespace A099990.P8331895302909342923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ))

end

end A099990.P8331895302909342923

namespace A099990

/-- `round(acot(∏{e}[2*n+1, -#]))` -/
def P8331895302909342923.Spec : Prop :=
  ∀ n, P8331895302909342923.a n = A099990 n

end A099990

/-! ## A099990.P6370081226648784795

`∏{e}[2*n+1, floor(log2(atan(#)))]`
-/

namespace A099990.P6370081226648784795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.logb 2 (Real.arctan (Nat.factorization (f1 n) p : ℝ))⌋

end

end A099990.P6370081226648784795

namespace A099990

/-- `∏{e}[2*n+1, floor(log2(atan(#)))]` -/
def P6370081226648784795.Spec : Prop :=
  ∀ n, P6370081226648784795.a n = A099990 n

end A099990

/-! ## A099990.P7805276027461421133

`∏{e}[2*n+1, -floor(1/#)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099990

/-- `∏{e}[2*n+1, -floor(1/#)]` -/
def P7805276027461421133.Spec : Prop :=
  ∀ n, P7805276027461421133.a n = A099990 n

theorem P7805276027461421133.correct : P7805276027461421133.Spec := by
  intro n
  simp only [A099990]

end A099990

/-! ## A099990.P13209498544711741863

`∏{e}[2*n+1, -#!]%2`
-/

namespace A099990.P13209498544711741863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorial (Nat.factorization (f1 n) p) : ℤ))) 2

end

end A099990.P13209498544711741863

namespace A099990

/-- `∏{e}[2*n+1, -#!]%2` -/
def P13209498544711741863.Spec : Prop :=
  ∀ n, P13209498544711741863.a n = A099990 n

end A099990

/-! ## A099990.P6688747487454433866

`round(1/∏{e}[2*n+1, -#²])`
-/

namespace A099990.P6688747487454433866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ))

end

end A099990.P6688747487454433866

namespace A099990

/-- `round(1/∏{e}[2*n+1, -#²])` -/
def P6688747487454433866.Spec : Prop :=
  ∀ n, P6688747487454433866.a n = A099990 n

end A099990

/-! ## A099990.P4957107815210037618

`round(∏{e}[2*n+1, -#^-2])`
-/

namespace A099990.P4957107815210037618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (-((Nat.factorization (f1 n) p : ℚ) ^ (-2 : ℤ))))

end

end A099990.P4957107815210037618

namespace A099990

/-- `round(∏{e}[2*n+1, -#^-2])` -/
def P4957107815210037618.Spec : Prop :=
  ∀ n, P4957107815210037618.a n = A099990 n

end A099990

/-! ## A099990.P10249471769059776913

`round(∏{p}[2*n+1, -#]/(2*n+1))`
-/

namespace A099990.P10249471769059776913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / (2 * n + 1 : ℚ))

end

end A099990.P10249471769059776913

namespace A099990

/-- `round(∏{p}[2*n+1, -#]/(2*n+1))` -/
def P10249471769059776913.Spec : Prop :=
  ∀ n, P10249471769059776913.a n = A099990 n

end A099990

/-! ## A099990.P5919270510878502871

`A008683(Δ[n²])`
-/

namespace A099990.P5919270510878502871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099990.P5919270510878502871

namespace A099990

/-- `A008683(Δ[n²])` -/
def P5919270510878502871.Spec : Prop :=
  ∀ n, P5919270510878502871.a n = A099990 n

end A099990

/-! ## A099990.P14257476176784728084

`A067856(Δ[n²])`
-/

namespace A099990.P14257476176784728084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099990.P14257476176784728084

namespace A099990

/-- `A067856(Δ[n²])` -/
def P14257476176784728084.Spec : Prop :=
  ∀ n, P14257476176784728084.a n = A099990 n

end A099990

/-! ## A099990.P9850459816079805369

`A085384(Δ[n²])`
-/

namespace A099990.P9850459816079805369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099990.P9850459816079805369

namespace A099990

/-- `A085384(Δ[n²])` -/
def P9850459816079805369.Spec : Prop :=
  ∀ n, P9850459816079805369.a n = A099990 n

end A099990

/-! ## A099990.P2306134617547571725

`A086831(Δ[n²])`
-/

namespace A099990.P2306134617547571725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099990.P2306134617547571725

namespace A099990

/-- `A086831(Δ[n²])` -/
def P2306134617547571725.Spec : Prop :=
  ∀ n, P2306134617547571725.a n = A099990 n

end A099990

/-! ## A099990.P8800804947475787501

`A131038(Δ[n²])`
-/

namespace A099990.P8800804947475787501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131038 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099990.P8800804947475787501

namespace A099990

/-- `A131038(Δ[n²])` -/
def P8800804947475787501.Spec : Prop :=
  ∀ n, P8800804947475787501.a n = A099990 n

end A099990

/-! ## A099990.P15287642291490474627

`A355689(Δ[n²])`
-/

namespace A099990.P15287642291490474627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099990.P15287642291490474627

namespace A099990

/-- `A355689(Δ[n²])` -/
def P15287642291490474627.Spec : Prop :=
  ∀ n, P15287642291490474627.a n = A099990 n

end A099990

/-! ## A099990.P4233632393703806400

`A355690(Δ[n²])`
-/

namespace A099990.P4233632393703806400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355690 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099990.P4233632393703806400

namespace A099990

/-- `A355690(Δ[n²])` -/
def P4233632393703806400.Spec : Prop :=
  ∀ n, P4233632393703806400.a n = A099990 n

end A099990

/-! ## A099990.P17243339931768948993

`A361019(Δ[n²])`
-/

namespace A099990.P17243339931768948993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361019 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099990.P17243339931768948993

namespace A099990

/-- `A361019(Δ[n²])` -/
def P17243339931768948993.Spec : Prop :=
  ∀ n, P17243339931768948993.a n = A099990 n

end A099990

/-! ## A099990.P16723482250925623714

`-A008683(4*n+2)`
-/

namespace A099990.P16723482250925623714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (4 * n + 2)

end

end A099990.P16723482250925623714

namespace A099990

/-- `-A008683(4*n+2)` -/
def P16723482250925623714.Spec : Prop :=
  ∀ n, P16723482250925623714.a n = A099990 n

end A099990

/-! ## A099990.P8614761349463825009

`A008683(Δ[n^2])^3`
-/

namespace A099990.P8614761349463825009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 3

end

end A099990.P8614761349463825009

namespace A099990

/-- `A008683(Δ[n^2])^3` -/
def P8614761349463825009.Spec : Prop :=
  ∀ n, P8614761349463825009.a n = A099990 n

end A099990

/-! ## A099990.P7049215209706738535

`A008683(comp[2*n])%2`
-/

namespace A099990.P7049215209706738535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008683 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 2

end

end A099990.P7049215209706738535

namespace A099990

/-- `A008683(comp[2*n])%2` -/
def P7049215209706738535.Spec : Prop :=
  ∀ n, P7049215209706738535.a n = A099990 n

end A099990

/-! ## A099990.P2099532855840121775

`round(atan(A008683(record[xor(1, n)])))`
-/

namespace A099990.P2099532855840121775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℝ))

end

end A099990.P2099532855840121775

namespace A099990

/-- `round(atan(A008683(record[xor(1, n)])))` -/
def P2099532855840121775.Spec : Prop :=
  ∀ n, P2099532855840121775.a n = A099990 n

end A099990

/-!
# A099991: a(n) = Moebius(2n).

The programs for A099991, the canonical program `A099991.P13978699537108234449` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099991 has offset 1).

The definition of A099991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099991.P13978699537108234449

`-(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099991

/-- `-(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%2` -/
def P13978699537108234449.Spec : Prop :=
  ∀ n, P13978699537108234449.a n = A099991 (n + 1)

theorem P13978699537108234449.correct : P13978699537108234449.Spec := by
  intro n
  simp only [A099991, Nat.add_sub_cancel]

end A099991

/-! ## A099991.P1737966061181831901

`-((n+1)*(abs(round(∏{p}[n+1, -#]/Δ[n²])+2)-2))%2`
-/

namespace A099991.P1737966061181831901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod ((n + 1 : ℤ) * (|SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)) + 2| - 2)) 2

end

end A099991.P1737966061181831901

namespace A099991

/-- `-((n+1)*(abs(round(∏{p}[n+1, -#]/Δ[n²])+2)-2))%2` -/
def P1737966061181831901.Spec : Prop :=
  ∀ n, P1737966061181831901.a n = A099991 (n + 1)

end A099991

/-! ## A099991.P1542991963912435600

`-A087003(n+1)`
-/

namespace A099991.P1542991963912435600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A087003 (n + 1)

end

end A099991.P1542991963912435600

namespace A099991

/-- `-A087003(n+1)` -/
def P1542991963912435600.Spec : Prop :=
  ∀ n, P1542991963912435600.a n = A099991 (n + 1)

end A099991

/-! ## A099991.P17886857990683475515

`A008683(2*(n+1))`
-/

namespace A099991.P17886857990683475515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (n + 1))

end

end A099991.P17886857990683475515

namespace A099991

/-- `A008683(2*(n+1))` -/
def P17886857990683475515.Spec : Prop :=
  ∀ n, P17886857990683475515.a n = A099991 (n + 1)

end A099991

/-! ## A099991.P14138772295914457217

`A359591(4*(n+1))`
-/

namespace A099991.P14138772295914457217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359591 (4 * (n + 1))

end

end A099991.P14138772295914457217

namespace A099991

/-- `A359591(4*(n+1))` -/
def P14138772295914457217.Spec : Prop :=
  ∀ n, P14138772295914457217.a n = A099991 (n + 1)

end A099991

/-! ## A099991.P16930440328886715744

`-A055615(n+1)%2`
-/

namespace A099991.P16930440328886715744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A055615 (n + 1)) 2

end

end A099991.P16930440328886715744

namespace A099991

/-- `-A055615(n+1)%2` -/
def P16930440328886715744.Spec : Prop :=
  ∀ n, P16930440328886715744.a n = A099991 (n + 1)

end A099991

/-! ## A099991.P410330108299634800

`A378225(2*(n+1))/2`
-/

namespace A099991.P410330108299634800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378225 (2 * (n + 1)) : ℚ) / 2

end

end A099991.P410330108299634800

namespace A099991

/-- `A378225(2*(n+1))/2` -/
def P410330108299634800.Spec : Prop :=
  ∀ n, P410330108299634800.a n = (A099991 (n + 1) : ℚ)

end A099991

/-! ## A099991.P10051942656544359028

`A008683(n+2+n)^3`
-/

namespace A099991.P10051942656544359028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2 + n) ^ 3

end

end A099991.P10051942656544359028

namespace A099991

/-- `A008683(n+2+n)^3` -/
def P10051942656544359028.Spec : Prop :=
  ∀ n, P10051942656544359028.a n = A099991 (n + 1)

end A099991

/-! ## A099991.P10058723036967584937

`-A008683(n+1)%gcd(2, n)`
-/

namespace A099991.P10058723036967584937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A008683 (n + 1)) (Nat.gcd 2 n : ℤ)

end

end A099991.P10058723036967584937

namespace A099991

/-- `-A008683(n+1)%gcd(2, n)` -/
def P10058723036967584937.Spec : Prop :=
  ∀ n, P10058723036967584937.a n = A099991 (n + 1)

end A099991

/-! ## A099991.P13641327941098496231

`-A008683(gcd(n+2+n, (n+1)²))`
-/

namespace A099991.P13641327941098496231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (Nat.gcd (n + 2 + n) ((n + 1) ^ 2))

end

end A099991.P13641327941098496231

namespace A099991

/-- `-A008683(gcd(n+2+n, (n+1)²))` -/
def P13641327941098496231.Spec : Prop :=
  ∀ n, P13641327941098496231.a n = A099991 (n + 1)

end A099991

/-! ## A099991.P5930785397448562979

`-A008683(A022998(n+1))`
-/

namespace A099991.P5930785397448562979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (A022998 (n + 1)).toNat

end

end A099991.P5930785397448562979

namespace A099991

/-- `-A008683(A022998(n+1))` -/
def P5930785397448562979.Spec : Prop :=
  ∀ n, P5930785397448562979.a n = A099991 (n + 1)

end A099991

/-! ## A099991.P5937155931168585296

`A379966(n+1)-A080323(n+1)`
-/

namespace A099991.P5937155931168585296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379966 (n + 1) - A080323 (n + 1)

end

end A099991.P5937155931168585296

namespace A099991

/-- `A379966(n+1)-A080323(n+1)` -/
def P5937155931168585296.Spec : Prop :=
  ∀ n, P5937155931168585296.a n = A099991 (n + 1)

end A099991

/-! ## A099991.P2388867483419288497

`A082551(n+1)*A087003(n+1)`
-/

namespace A099991.P2388867483419288497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1) * A087003 (n + 1)

end

end A099991.P2388867483419288497

namespace A099991

/-- `A082551(n+1)*A087003(n+1)` -/
def P2388867483419288497.Spec : Prop :=
  ∀ n, P2388867483419288497.a n = A099991 (n + 1)

end A099991

/-! ## A099991.P14056463356151414266

`A087003(n+1)*A118830(n+1)`
-/

namespace A099991.P14056463356151414266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (n + 1) * A118830 (n + 1)

end

end A099991.P14056463356151414266

namespace A099991

/-- `A087003(n+1)*A118830(n+1)` -/
def P14056463356151414266.Spec : Prop :=
  ∀ n, P14056463356151414266.a n = A099991 (n + 1)

end A099991

/-! ## A099991.P16116242284366726364

`A087003(n+1)*A388992(n+1)`
-/

namespace A099991.P16116242284366726364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (n + 1) * A388992 (n + 1)

end

end A099991.P16116242284366726364

namespace A099991

/-- `A087003(n+1)*A388992(n+1)` -/
def P16116242284366726364.Spec : Prop :=
  ∀ n, P16116242284366726364.a n = A099991 (n + 1)

end A099991

/-! ## A099991.P17211002228900606530

`A349343(n+1)/A001478(n+1)`
-/

namespace A099991.P17211002228900606530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349343 (n + 1) : ℚ) / (A001478 (n + 1) : ℚ)

end

end A099991.P17211002228900606530

namespace A099991

/-- `A349343(n+1)/A001478(n+1)` -/
def P17211002228900606530.Spec : Prop :=
  ∀ n, P17211002228900606530.a n = (A099991 (n + 1) : ℚ)

end A099991

/-! ## A099991.P6117765849600936244

`A349343(n+1)/A353909(n+1)`
-/

namespace A099991.P6117765849600936244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349343 (n + 1) : ℚ) / (A353909 (n + 1) : ℚ)

end

end A099991.P6117765849600936244

namespace A099991

/-- `A349343(n+1)/A353909(n+1)` -/
def P6117765849600936244.Spec : Prop :=
  ∀ n, P6117765849600936244.a n = (A099991 (n + 1) : ℚ)

end A099991

/-! ## A099991.P3275588436783673509

`A323239(2*n)-A087003(n+1)`
-/

namespace A099991.P3275588436783673509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (2 * n) - A087003 (n + 1)

end

end A099991.P3275588436783673509

namespace A099991

/-- `A323239(2*n)-A087003(n+1)` -/
def P3275588436783673509.Spec : Prop :=
  ∀ n, P3275588436783673509.a n = A099991 (n + 1)

end A099991

/-! ## A099991.P15694999175894543812

`A353629(2*(n+1))-A359465(n+1)`
-/

namespace A099991.P15694999175894543812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353629 (2 * (n + 1)) - A359465 (n + 1)

end

end A099991.P15694999175894543812

namespace A099991

/-- `A353629(2*(n+1))-A359465(n+1)` -/
def P15694999175894543812.Spec : Prop :=
  ∀ n, P15694999175894543812.a n = A099991 (n + 1)

end A099991

/-! ## A099991.P8754987015628470502

`A292273(2*n+1)-A292273(2*(n+1))`
-/

namespace A099991.P8754987015628470502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292273 (2 * n + 1) - A292273 (2 * (n + 1))

end

end A099991.P8754987015628470502

namespace A099991

/-- `A292273(2*n+1)-A292273(2*(n+1))` -/
def P8754987015628470502.Spec : Prop :=
  ∀ n, P8754987015628470502.a n = A099991 (n + 1)

end A099991

/-!
# A099992: Bisection of A025487.

The programs for A099992, there is no canonical definition to state claims against.
-/

/-! ## A099992.P4808845423897928738

`A025487(Δ[n²])`
-/

namespace A099992.P4808845423897928738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099992.P4808845423897928738

/-! ## A099992.P5970739927288440609

`record[A025487(n^(n%2))]`
-/

namespace A099992.P5970739927288440609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099992.P5970739927288440609

/-! ## A099992.P10737859933428677303

`record[A025487(C(n, and(1, n)))]`
-/

namespace A099992.P10737859933428677303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (Nat.choose n (Nat.land 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099992.P10737859933428677303

/-! ## A099992.P7754601247796989695

`and(-1, A025487(2*n+1))`
-/

namespace A099992.P7754601247796989695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A025487 (2 * n + 1))

end

end A099992.P7754601247796989695

/-! ## A099992.P15980403527205670862

`record[A025487(lcm(32, n+1)/32)]`
-/

namespace A099992.P15980403527205670862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.roundAway ((Nat.lcm 32 (n + 1) : ℚ) / 32)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099992.P15980403527205670862

/-! ## A099992.P6794229575158876393

`record[A025487(and(n, n+1)+1)]`
-/

namespace A099992.P6794229575158876393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (Nat.land n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099992.P6794229575158876393

/-! ## A099992.P10374138090613659676

`record[A025487(n+1)/(-1)^n]`
-/

namespace A099992.P10374138090613659676
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099992.P10374138090613659676

/-! ## A099992.P17245899048170044457

`record[A025487(abs(A009001(n)))]`
-/

namespace A099992.P17245899048170044457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099992.P17245899048170044457

/-! ## A099992.P4063022911683461283

`record[A025487(A000265(n+1))]`
-/

namespace A099992.P4063022911683461283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099992.P4063022911683461283

/-! ## A099992.P3721925561871736859

`record[A025487(A014681(n)+1)]`
-/

namespace A099992.P3721925561871736859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099992.P3721925561871736859

/-! ## A099992.P2968013044479069641

`record[A025487(A093411(n+1))]`
-/

namespace A099992.P2968013044479069641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A093411 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099992.P2968013044479069641

/-! ## A099992.P5326331766969406621

`record[A025487(A131452(n)+1)]`
-/

namespace A099992.P5326331766969406621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A131452 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099992.P5326331766969406621

/-! ## A099992.P12919761990239964993

`record[A025487(A022998(n+1)-n)]`
-/

namespace A099992.P12919761990239964993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A022998 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099992.P12919761990239964993

/-! ## A099992.P14114601092482232753

`record[A025487(abs(A020639(n+1)-n))]`
-/

namespace A099992.P14114601092482232753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 |A020639 (n + 1) - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099992.P14114601092482232753

/-! ## A099992.P14258363496707566013

`A025487(2*n+1)+A000007(n+1)`
-/

namespace A099992.P14258363496707566013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (2 * n + 1) + A000007 (n + 1)

end

end A099992.P14258363496707566013

/-! ## A099992.P4463643995078097684

`A025487(2*n+1)*A330752(2*n+1)`
-/

namespace A099992.P4463643995078097684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (2 * n + 1) * A330752 (2 * n + 1)

end

end A099992.P4463643995078097684

/-! ## A099992.P2233438204135435344

`A330682(A329898(n+1))+A025487(2*n+1)`
-/

namespace A099992.P2233438204135435344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330682 (A329898 (n + 1)).toNat + A025487 (2 * n + 1)

end

end A099992.P2233438204135435344

/-! ## A099992.P16081110860650022874

`A001221(A000040(n+2))*A025487(2*n+1)`
-/

namespace A099992.P16081110860650022874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000040 (n + 2)).toNat * A025487 (2 * n + 1)

end

end A099992.P16081110860650022874

/-! ## A099992.P13330223902460074915

`record[A025487(A133265(n)-1)]`
-/

namespace A099992.P13330223902460074915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A133265 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099992.P13330223902460074915

/-! ## A099992.P4699508706701714225

`record[Δ[A000120(n)]*A025487(n+1)]`
-/

namespace A099992.P4699508706701714225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099992.P4699508706701714225

/-!
# A099993: Bisection of A025487.

The programs for A099993, there is no canonical definition to state claims against.
-/

/-! ## A099993.P1749463939480671717

`A025487(2*(n+1))`
-/

namespace A099993.P1749463939480671717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (2 * (n + 1))

end

end A099993.P1749463939480671717

/-! ## A099993.P10359245014405391112

`record[A025487(abs(xor(n, -2)))]`
-/

namespace A099993.P10359245014405391112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099993.P10359245014405391112

/-! ## A099993.P5153936314460604217

`record[A025487(xor(1, n)+1)]`
-/

namespace A099993.P5153936314460604217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099993.P5153936314460604217

/-! ## A099993.P258258490317356421

`lcm(2, A025487(n+2+n))`
-/

namespace A099993.P258258490317356421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A025487 (n + 2 + n))

end

end A099993.P258258490317356421

/-! ## A099993.P15968093196681855010

`record[A025487(A133265(n))]`
-/

namespace A099993.P15968093196681855010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099993.P15968093196681855010

/-! ## A099993.P9344301106693681651

`record[A025487(A014681(n+1))]`
-/

namespace A099993.P9344301106693681651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099993.P9344301106693681651

/-! ## A099993.P3179840867811109036

`record[A025487(A103889(n+1))]`
-/

namespace A099993.P3179840867811109036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A103889 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099993.P3179840867811109036

/-! ## A099993.P7131726086482818785

`record[A025487(A109170(n+1))]`
-/

namespace A099993.P7131726086482818785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A109170 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099993.P7131726086482818785

/-! ## A099993.P6512841462794960698

`record[A025487(A131452(n+1))]`
-/

namespace A099993.P6512841462794960698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A131452 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099993.P6512841462794960698

/-! ## A099993.P619976204380327362

`record[A025487(2*A133310(n))]`
-/

namespace A099993.P619976204380327362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (2 * A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099993.P619976204380327362

/-! ## A099993.P7363258110222154526

`record[A025487(2*A242112(n))]`
-/

namespace A099993.P7363258110222154526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (2 * A242112 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099993.P7363258110222154526

/-! ## A099993.P3089553641952528346

`record[A025487(2*A329048(n))]`
-/

namespace A099993.P3089553641952528346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (2 * A329048 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099993.P3089553641952528346

/-! ## A099993.P16490408022893815604

`record[A025487(abs(A009001(n))+1)]`
-/

namespace A099993.P16490408022893815604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (|A009001 n| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099993.P16490408022893815604

/-! ## A099993.P3393191473053842929

`record[A025487(A004277(abs(1-n)))]`
-/

namespace A099993.P3393191473053842929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A004277 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099993.P3393191473053842929

/-! ## A099993.P9927759536717033721

`record[A025487(A000265(n+1)+1)]`
-/

namespace A099993.P9927759536717033721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099993.P9927759536717033721

/-! ## A099993.P9976334063782042764

`record[A025487(A093411(n+1)+1)]`
-/

namespace A099993.P9976334063782042764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A093411 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099993.P9976334063782042764

/-! ## A099993.P16826606585557810902

`record[A025487(n+2)/A000034(n)]`
-/

namespace A099993.P16826606585557810902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025487 (n + 2) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099993.P16826606585557810902

/-! ## A099993.P11169648973057062932

`record[A025487(Δ[A000120(n)]+n+1)]`
-/

namespace A099993.P11169648973057062932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (f2 (n + 1) - f2 n + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099993.P11169648973057062932

/-! ## A099993.P13211934664241807746

`A247451(2*(n+1))*A307107(2*(n+1))`
-/

namespace A099993.P13211934664241807746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247451 (2 * (n + 1)) * A307107 (2 * (n + 1))

end

end A099993.P13211934664241807746

/-! ## A099993.P6788242243272874158

`A181817(2*(n+1))/A181816(2*(n+1))`
-/

namespace A099993.P6788242243272874158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181817 (2 * (n + 1)) : ℚ) / (A181816 (2 * (n + 1)) : ℚ)

end

end A099993.P6788242243272874158

/-!
# A099994: Bisection of A002113.

The programs for A099994, there is no canonical definition to state claims against.
-/

/-! ## A099994.P10830008491285860794

`A002113(Δ[n²])`
-/

namespace A099994.P10830008491285860794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099994.P10830008491285860794

/-! ## A099994.P13004677460407318403

`record[A002113(n^(n%2))]`
-/

namespace A099994.P13004677460407318403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099994.P13004677460407318403

/-! ## A099994.P2065334207801368799

`record[A002113(C(n, and(1, n)))]`
-/

namespace A099994.P2065334207801368799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (Nat.choose n (Nat.land 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099994.P2065334207801368799

/-! ## A099994.P15468930602657251718

`and(-1, A002113(2*n+1))`
-/

namespace A099994.P15468930602657251718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A002113 (2 * n + 1))

end

end A099994.P15468930602657251718

/-! ## A099994.P13490127995426263660

`record[A002113(lcm(4, n+1)/4)]`
-/

namespace A099994.P13490127995426263660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099994.P13490127995426263660

/-! ## A099994.P16980877807376325658

`record[A002113(and(n, n+1)+1)]`
-/

namespace A099994.P16980877807376325658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (Nat.land n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099994.P16980877807376325658

/-! ## A099994.P16526087422937642735

`record[(-1)^n*A002113(n+1)]`
-/

namespace A099994.P16526087422937642735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099994.P16526087422937642735

/-! ## A099994.P2320906642258629490

`record[A002113(A093178(n))]`
-/

namespace A099994.P2320906642258629490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099994.P2320906642258629490

/-! ## A099994.P1083431878101375310

`record[A002113(A000265(n+1))]`
-/

namespace A099994.P1083431878101375310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099994.P1083431878101375310

/-! ## A099994.P16914017314244103967

`record[A002113(A006257(n+1))]`
-/

namespace A099994.P16914017314244103967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A006257 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099994.P16914017314244103967

/-! ## A099994.P14804409700721290696

`A002113(2*n+1)%A005901(n)`
-/

namespace A099994.P14804409700721290696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002113 (2 * n + 1)) (A005901 n)

end

end A099994.P14804409700721290696

/-! ## A099994.P9158903307549992785

`lcm(A002113(2*n+1), A057077(n))`
-/

namespace A099994.P9158903307549992785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002113 (2 * n + 1)) (A057077 n)

end

end A099994.P9158903307549992785

/-! ## A099994.P16352684892510801173

`A002113(2*n+1)*A093178(2*n)`
-/

namespace A099994.P16352684892510801173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (2 * n + 1) * A093178 (2 * n)

end

end A099994.P16352684892510801173

/-! ## A099994.P1213849810190940521

`A002113(2*n+1)*A178226(2*n)`
-/

namespace A099994.P1213849810190940521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (2 * n + 1) * A178226 (2 * n)

end

end A099994.P1213849810190940521

/-! ## A099994.P15237437652784055142

`A002113(2*n+1)*A208576(2*n)`
-/

namespace A099994.P15237437652784055142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (2 * n + 1) * A208576 (2 * n)

end

end A099994.P15237437652784055142

/-! ## A099994.P253020806750404806

`A002113(2*n+1)+A000007(n+1)`
-/

namespace A099994.P253020806750404806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (2 * n + 1) + A000007 (n + 1)

end

end A099994.P253020806750404806

/-! ## A099994.P10041692938735272415

`record[A002113(A014681(n)+1)]`
-/

namespace A099994.P10041692938735272415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099994.P10041692938735272415

/-! ## A099994.P11646374292553414525

`sqrt(A014186(Δ[n²]))`
-/

namespace A099994.P11646374292553414525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014186 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A099994.P11646374292553414525

/-! ## A099994.P13926696548722898080

`sqrt(sqrt(A014188(2*n)))`
-/

namespace A099994.P13926696548722898080
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A014188 (2 * n) : ℝ))

end

end A099994.P13926696548722898080

/-! ## A099994.P7231664296555041925

`A002113(2*n+1)*A152271(2*n)`
-/

namespace A099994.P7231664296555041925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (2 * n + 1) * A152271 (2 * n)

end

end A099994.P7231664296555041925

/-!
# A099995: Bisection of A002113.

The programs for A099995, there is no canonical definition to state claims against.
-/

/-! ## A099995.P10613095631543533533

`A002113(2*(n+1))`
-/

namespace A099995.P10613095631543533533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (2 * (n + 1))

end

end A099995.P10613095631543533533

/-! ## A099995.P5545446135489747937

`record[A002113(xor(1, n)+1)]`
-/

namespace A099995.P5545446135489747937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099995.P5545446135489747937

/-! ## A099995.P18021944423718225949

`record[A002113(n+1)^(n%2)]`
-/

namespace A099995.P18021944423718225949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099995.P18021944423718225949

/-! ## A099995.P14271708383586761502

`record[A002113(n+2)/(-1)^n]`
-/

namespace A099995.P14271708383586761502
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002113 (n + 2) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099995.P14271708383586761502

/-! ## A099995.P11944986141069181513

`abs(A002113(Δ[n²]+1)-1)+1`
-/

namespace A099995.P11944986141069181513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002113 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat - 1| + 1

end

end A099995.P11944986141069181513

/-! ## A099995.P3529284850258729339

`A002113(n+2+n)%(n+2)²`
-/

namespace A099995.P3529284850258729339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002113 (n + 2 + n)) ((n + 2) ^ 2 : ℤ)

end

end A099995.P3529284850258729339

/-! ## A099995.P9062232752978572512

`record[A002113(A093178(n)+1)]`
-/

namespace A099995.P9062232752978572512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A093178 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099995.P9062232752978572512

/-! ## A099995.P8868307500238028155

`record[A002113(2*A328399(n))]`
-/

namespace A099995.P8868307500238028155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (2 * A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099995.P8868307500238028155

/-! ## A099995.P6434754340991303164

`record[A002113(A000265(n+1)+1)]`
-/

namespace A099995.P6434754340991303164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099995.P6434754340991303164

/-! ## A099995.P16059988689288674068

`record[A002113(A006257(n+1)+1)]`
-/

namespace A099995.P16059988689288674068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A006257 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099995.P16059988689288674068

/-! ## A099995.P9341621761675692008

`record[A002113(A014681(n)+2)]`
-/

namespace A099995.P9341621761675692008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A014681 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099995.P9341621761675692008

/-! ## A099995.P4578694071919159783

`sqrt(A014186(2*(n+1)))`
-/

namespace A099995.P4578694071919159783
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014186 (2 * (n + 1)) : ℝ)

end

end A099995.P4578694071919159783

/-! ## A099995.P17139847454306912055

`sqrt(sqrt(A014188(2*n+1)))`
-/

namespace A099995.P17139847454306912055
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A014188 (2 * n + 1) : ℝ))

end

end A099995.P17139847454306912055

/-! ## A099995.P2564874501005014706

`record[A002113(2*A152271(n))]`
-/

namespace A099995.P2564874501005014706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (2 * A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099995.P2564874501005014706

/-! ## A099995.P4184411241065714536

`A099994(n+1)+A086862(2*n+1)`
-/

namespace A099995.P4184411241065714536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099994 (n + 1) + A086862 (2 * n + 1)

end

end A099995.P4184411241065714536

/-! ## A099995.P8082216694157556019

`A014188(2*n+1)/A014187(2*n+1)`
-/

namespace A099995.P8082216694157556019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014188 (2 * n + 1) : ℚ) / (A014187 (2 * n + 1) : ℚ)

end

end A099995.P8082216694157556019

/-! ## A099995.P10607735285524861933

`∩[A002113(A005843(n+1)), A002113(n+2)]`
-/

namespace A099995.P10607735285524861933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A005843 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099995.P10607735285524861933

/-! ## A099995.P18141721872559154691

`A261914(A099994(n+2))`
-/

namespace A099995.P18141721872559154691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 (A099994 (n + 2)).toNat

end

end A099995.P18141721872559154691

/-!
# A099996: a(n) = lcm{1, 2, ..., 2*n}.

The programs for A099996, the canonical program `A099996.P7171243027720418745` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099996 has offset 0).

The definition of A099996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099996.P7171243027720418745

`lcm(n*record[lcm(2, n)], a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A099996

/-- `lcm(n*record[lcm(2, n)], a(n-1))` -/
def P7171243027720418745.Spec : Prop :=
  ∀ n, (P7171243027720418745.a n : ℤ) = A099996 n

theorem P7171243027720418745.correct : P7171243027720418745.Spec := by
  intro n
  simp only [A099996]

end A099996

/-! ## A099996.P3703533395545205332

`lcm((2*n)²-2*n, abs(a(n-1)))` with `a(0)=1`
-/

namespace A099996.P3703533395545205332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (((2 * n) ^ 2 : ℤ) - (2 * n : ℤ)) (a (n - 1) : ℤ)

end

end A099996.P3703533395545205332

namespace A099996

/-- `lcm((2*n)²-2*n, abs(a(n-1)))` -/
def P3703533395545205332.Spec : Prop :=
  ∀ n, (P3703533395545205332.a n : ℤ) = A099996 n

end A099996

/-! ## A099996.P13270146990494272836

`lcm(2*n-(2*n)², floor(a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A099996.P13270146990494272836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm ((2 * n : ℤ) - ((2 * n) ^ 2 : ℤ)) (a (n - 1) : ℤ)

end

end A099996.P13270146990494272836

namespace A099996

/-- `lcm(2*n-(2*n)², floor(a(n-1)))` -/
def P13270146990494272836.Spec : Prop :=
  ∀ n, (P13270146990494272836.a n : ℤ) = A099996 n

end A099996

/-! ## A099996.P13869064137953422873

`A003418(2*n)`
-/

namespace A099996.P13869064137953422873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (2 * n)

end

end A099996.P13869064137953422873

namespace A099996

/-- `A003418(2*n)` -/
def P13869064137953422873.Spec : Prop :=
  ∀ n, P13869064137953422873.a n = A099996 n

end A099996

/-! ## A099996.P9493522681782516629

`A139550(4*n)`
-/

namespace A099996.P9493522681782516629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (4 * n)

end

end A099996.P9493522681782516629

namespace A099996

/-- `A139550(4*n)` -/
def P9493522681782516629.Spec : Prop :=
  ∀ n, P9493522681782516629.a n = A099996 n

end A099996

/-! ## A099996.P3883104795490290183

`A139554(8*n)`
-/

namespace A099996.P3883104795490290183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139554 (8 * n)

end

end A099996.P3883104795490290183

namespace A099996

/-- `A139554(8*n)` -/
def P3883104795490290183.Spec : Prop :=
  ∀ n, P3883104795490290183.a n = A099996 n

end A099996

/-! ## A099996.P1868633700753855534

`A025560(Δ[n²])`
-/

namespace A099996.P1868633700753855534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025560 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099996.P1868633700753855534

namespace A099996

/-- `A025560(Δ[n²])` -/
def P1868633700753855534.Spec : Prop :=
  ∀ n, P1868633700753855534.a n = A099996 n

end A099996

/-! ## A099996.P11278451101709451649

`A067391(Δ[n²])`
-/

namespace A099996.P11278451101709451649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067391 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099996.P11278451101709451649

namespace A099996

/-- `A067391(Δ[n²])` -/
def P11278451101709451649.Spec : Prop :=
  ∀ n, P11278451101709451649.a n = A099996 n

end A099996

/-! ## A099996.P7257399989288658386

`A073618(Δ[n²])`
-/

namespace A099996.P7257399989288658386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073618 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099996.P7257399989288658386

namespace A099996

/-- `A073618(Δ[n²])` -/
def P7257399989288658386.Spec : Prop :=
  ∀ n, P7257399989288658386.a n = A099996 n

end A099996

/-! ## A099996.P15964544684751834272

`A075059(2*n)-1`
-/

namespace A099996.P15964544684751834272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 (2 * n) - 1

end

end A099996.P15964544684751834272

namespace A099996

/-- `A075059(2*n)-1` -/
def P15964544684751834272.Spec : Prop :=
  ∀ n, P15964544684751834272.a n = A099996 n

end A099996

/-! ## A099996.P2464983833654809568

`lcm(a(n-1), A002939(n))` with `a(0)=1, a(1)=2`
-/

namespace A099996.P2464983833654809568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A002939 n)

end

end A099996.P2464983833654809568

namespace A099996

/-- `lcm(a(n-1), A002939(n))` -/
def P2464983833654809568.Spec : Prop :=
  ∀ n, (P2464983833654809568.a n : ℤ) = A099996 n

end A099996

/-! ## A099996.P17554723857372496964

`lcm(n+1, A025560(2*n+1))`
-/

namespace A099996.P17554723857372496964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A025560 (2 * n + 1))

end

end A099996.P17554723857372496964

namespace A099996

/-- `lcm(n+1, A025560(2*n+1))` -/
def P17554723857372496964.Spec : Prop :=
  ∀ n, (P17554723857372496964.a n : ℤ) = A099996 n

end A099996

/-! ## A099996.P15061926550028982401

`A195507(2*n+1)-Δ[n²]`
-/

namespace A099996.P15061926550028982401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195507 (2 * n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A099996.P15061926550028982401

namespace A099996

/-- `A195507(2*n+1)-Δ[n²]` -/
def P15061926550028982401.Spec : Prop :=
  ∀ n, P15061926550028982401.a n = A099996 n

end A099996

/-! ## A099996.P2484721788134298863

`a(n-1)*A120114(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A099996.P2484721788134298863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A120114 (n - 2)

end

end A099996.P2484721788134298863

namespace A099996

/-- `a(n-1)*A120114(n-2)` -/
def P2484721788134298863.Spec : Prop :=
  ∀ n, P2484721788134298863.a n = A099996 n

end A099996

/-! ## A099996.P4610063082547854274

`lcm(2*n, a(n-1)*A014963(2*n-1))` with `a(0)=1`
-/

namespace A099996.P4610063082547854274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (2 * n : ℤ) ((a (n - 1) : ℤ) * A014963 (2 * n - 1))

end

end A099996.P4610063082547854274

namespace A099996

/-- `lcm(2*n, a(n-1)*A014963(2*n-1))` -/
def P4610063082547854274.Spec : Prop :=
  ∀ n, (P4610063082547854274.a n : ℤ) = A099996 n

end A099996

/-! ## A099996.P6058596038066478582

`A000984(n)*A068550(n)`
-/

namespace A099996.P6058596038066478582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A068550 n

end

end A099996.P6058596038066478582

namespace A099996

/-- `A000984(n)*A068550(n)` -/
def P6058596038066478582.Spec : Prop :=
  ∀ n, P6058596038066478582.a n = A099996 n

end A099996

/-! ## A099996.P1510041699003725288

`A001405(2*n)*A068550(n)`
-/

namespace A099996.P1510041699003725288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A068550 n

end

end A099996.P1510041699003725288

namespace A099996

/-- `A001405(2*n)*A068550(n)` -/
def P1510041699003725288.Spec : Prop :=
  ∀ n, P1510041699003725288.a n = A099996 n

end A099996

/-! ## A099996.P10690040224167521804

`A000984(n)*A180000(2*n)`
-/

namespace A099996.P10690040224167521804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A180000 (2 * n)

end

end A099996.P10690040224167521804

namespace A099996

/-- `A000984(n)*A180000(2*n)` -/
def P10690040224167521804.Spec : Prop :=
  ∀ n, P10690040224167521804.a n = A099996 n

end A099996

/-! ## A099996.P12043342708034458972

`A068550(n)*A129383(2*n)`
-/

namespace A099996.P12043342708034458972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068550 n * A129383 (2 * n)

end

end A099996.P12043342708034458972

namespace A099996

/-- `A068550(n)*A129383(2*n)` -/
def P12043342708034458972.Spec : Prop :=
  ∀ n, P12043342708034458972.a n = A099996 n

end A099996

/-! ## A099996.P6928173555258805054

`A000984(n)*A263673(2*n)`
-/

namespace A099996.P6928173555258805054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A263673 (2 * n)

end

end A099996.P6928173555258805054

namespace A099996

/-- `A000984(n)*A263673(2*n)` -/
def P6928173555258805054.Spec : Prop :=
  ∀ n, P6928173555258805054.a n = A099996 n

end A099996

/-!
# A099997: Bisection of A001597.

The programs for A099997, there is no canonical definition to state claims against.
-/

/-! ## A099997.P16629376446749427964

`A001597(Δ[n²])`
-/

namespace A099997.P16629376446749427964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099997.P16629376446749427964

/-! ## A099997.P1666919102809928112

`abs(A157985(Δ[n²]))`
-/

namespace A099997.P1666919102809928112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A099997.P1666919102809928112

/-! ## A099997.P6202929889147002019

`sqrt(A340588(Δ[n²]))`
-/

namespace A099997.P6202929889147002019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340588 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A099997.P6202929889147002019

/-! ## A099997.P12547953777738400833

`record[A001597(n^(n%2))]`
-/

namespace A099997.P12547953777738400833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099997.P12547953777738400833

/-! ## A099997.P4568580129036374430

`and(-1, A001597(2*n+1))`
-/

namespace A099997.P4568580129036374430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A001597 (2 * n + 1))

end

end A099997.P4568580129036374430

/-! ## A099997.P6930847500158354591

`root(A157985(2*n+1)², 2)`
-/

namespace A099997.P6930847500158354591
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A157985 (2 * n + 1) ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A099997.P6930847500158354591

/-! ## A099997.P13421818111127343336

`record[A001597((n+1)%4+n)]`
-/

namespace A099997.P13421818111127343336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 ((n + 1) % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099997.P13421818111127343336

/-! ## A099997.P12871971491588464942

`record[A001597(n+1)/(-1)^n]`
-/

namespace A099997.P12871971491588464942
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099997.P12871971491588464942

/-! ## A099997.P8359378371454386286

`record[A001597((n+1)/and(n+1, -(n+1)))]`
-/

namespace A099997.P8359378371454386286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099997.P8359378371454386286

/-! ## A099997.P13055175926124178754

`record[A001597(A000265(n+1))]`
-/

namespace A099997.P13055175926124178754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099997.P13055175926124178754

/-! ## A099997.P6876563805394809993

`record[A001597(A062157(n)+1+n)]`
-/

namespace A099997.P6876563805394809993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A062157 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099997.P6876563805394809993

/-! ## A099997.P9000123398545653714

`gcd(A000038(n), A157985(2*n+1))`
-/

namespace A099997.P9000123398545653714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A157985 (2 * n + 1))

end

end A099997.P9000123398545653714

/-! ## A099997.P16769582964573046101

`lcm(A020985(n), A157985(2*n+1))`
-/

namespace A099997.P16769582964573046101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A157985 (2 * n + 1))

end

end A099997.P16769582964573046101

/-! ## A099997.P1310664039494941349

`abs(A001597(2*n+1)*A033999(n))`
-/

namespace A099997.P1310664039494941349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001597 (2 * n + 1) * A033999 n|

end

end A099997.P1310664039494941349

/-! ## A099997.P16157403626573400341

`A158388(n)²*A001597(2*n+1)`
-/

namespace A099997.P16157403626573400341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n ^ 2 * A001597 (2 * n + 1)

end

end A099997.P16157403626573400341

/-! ## A099997.P4785484359662709007

`record[A000035(n+1)*A001597(n+1)]`
-/

namespace A099997.P4785484359662709007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099997.P4785484359662709007

/-! ## A099997.P3897226798811770789

`A001597(2*n+1)+A000007(n+1)`
-/

namespace A099997.P3897226798811770789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (2 * n + 1) + A000007 (n + 1)

end

end A099997.P3897226798811770789

/-! ## A099997.P14872266604381669140

`A001597(2*n+1)+A000038(n+1)`
-/

namespace A099997.P14872266604381669140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (2 * n + 1) + A000038 (n + 1)

end

end A099997.P14872266604381669140

/-! ## A099997.P1901022062037514431

`A001597(2*n+1)*A057427(n+1)`
-/

namespace A099997.P1901022062037514431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (2 * n + 1) * A057427 (n + 1)

end

end A099997.P1901022062037514431

/-! ## A099997.P17936680791881874485

`A001597(2*n+1)*A158388(n+1)`
-/

namespace A099997.P17936680791881874485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (2 * n + 1) * A158388 (n + 1)

end

end A099997.P17936680791881874485

/-!
# A099998: Bisection of A001597.

The programs for A099998, there is no canonical definition to state claims against.
-/

/-! ## A099998.P14356904656403644226

`∑[A076412(2*n+1)+A076412(2*n)]`
-/

namespace A099998.P14356904656403644226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 (2 * n + 1) + A076412 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099998.P14356904656403644226

/-! ## A099998.P1591842111450744779

`A001597(2*(n+1))`
-/

namespace A099998.P1591842111450744779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (2 * (n + 1))

end

end A099998.P1591842111450744779

/-! ## A099998.P8004996231720217680

`A045542(Δ[n²])+1`
-/

namespace A099998.P8004996231720217680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A099998.P8004996231720217680

/-! ## A099998.P14448243176720862561

`A216765(Δ[n²])-1`
-/

namespace A099998.P14448243176720862561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A099998.P14448243176720862561

/-! ## A099998.P6147863516596520190

`abs(A157985(2*(n+1)))`
-/

namespace A099998.P6147863516596520190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (2 * (n + 1))|

end

end A099998.P6147863516596520190

/-! ## A099998.P6298333063933582606

`sqrt(A340588(2*(n+1)))`
-/

namespace A099998.P6298333063933582606
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340588 (2 * (n + 1)) : ℝ)

end

end A099998.P6298333063933582606

/-! ## A099998.P13410032118074277378

`record[A001597(xor(1, n)+1)]`
-/

namespace A099998.P13410032118074277378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099998.P13410032118074277378

/-! ## A099998.P17737742344406679298

`ceil(sqrt(A062965(2*n+1)))`
-/

namespace A099998.P17737742344406679298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A062965 (2 * n + 1) : ℝ)⌉

end

end A099998.P17737742344406679298

/-! ## A099998.P5967577262383303773

`record[A001597((n+2)%4+n)]`
-/

namespace A099998.P5967577262383303773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 ((n + 2) % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099998.P5967577262383303773

/-! ## A099998.P9527075846964129800

`or(char[1], A001597(n+2+n))`
-/

namespace A099998.P9527075846964129800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001597 (n + 2 + n))

end

end A099998.P9527075846964129800

/-! ## A099998.P10841035810911461945

`record[A001597(n+2)/(-1)^n]`
-/

namespace A099998.P10841035810911461945
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 2) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099998.P10841035810911461945

/-! ## A099998.P7362257973326116591

`record[A001597(Δ[round(n/2)²]+1)]`
-/

namespace A099998.P7362257973326116591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099998.P7362257973326116591

/-! ## A099998.P15344361242950673186

`abs(A001597(Δ[n²]+1)-n)+n`
-/

namespace A099998.P15344361242950673186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001597 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat - (n : ℤ)| + (n : ℤ)

end

end A099998.P15344361242950673186

/-! ## A099998.P15248370193425603799

`record[A045542(A000265(n+2))+1]`
-/

namespace A099998.P15248370193425603799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (A000265 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099998.P15248370193425603799

/-! ## A099998.P15872308448307789593

`lcm(A020985(n), A157985(2*(n+1)))`
-/

namespace A099998.P15872308448307789593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A157985 (2 * (n + 1)))

end

end A099998.P15872308448307789593

/-! ## A099998.P15283114440505960755

`gcd(A000038(n)², A157985(2*(n+1)))`
-/

namespace A099998.P15283114440505960755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n ^ 2) (A157985 (2 * (n + 1)))

end

end A099998.P15283114440505960755

/-! ## A099998.P12037444383551816810

`gcd(A000038(n+1), A157985(2*n+2))`
-/

namespace A099998.P12037444383551816810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n + 1)) (A157985 (2 * n + 2))

end

end A099998.P12037444383551816810

/-! ## A099998.P14464606080229572633

`A075146(2*(n+1))+A000040(2*(n+1))`
-/

namespace A099998.P14464606080229572633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075146 (2 * (n + 1)) + A000040 (2 * (n + 1))

end

end A099998.P14464606080229572633

/-! ## A099998.P13617540745890152327

`A377043(2*(n+1))+A246655(2*n+1)`
-/

namespace A099998.P13617540745890152327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377043 (2 * (n + 1)) + A246655 (2 * n + 1)

end

end A099998.P13617540745890152327

/-! ## A099998.P2733920372666788022

`A076408(2*(n+1))-A076408(2*n+1)`
-/

namespace A099998.P2733920372666788022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076408 (2 * (n + 1)) - A076408 (2 * n + 1)

end

end A099998.P2733920372666788022

/-!
# A099999: Number of geometrical configurations of type (n_3).

The programs for A099999, there is no canonical definition to state claims against.
-/

/-! ## A099999.P15289585643261007151

`∑{p}[A001403(n+1), A022998(#)]`
-/

namespace A099999.P15289585643261007151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A022998 p

end

end A099999.P15289585643261007151

/-! ## A099999.P4892595934291658274

`∑[A000022(n)]²%A147207(n+1)`
-/

namespace A099999.P4892595934291658274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (A147207 (n + 1))

end

end A099999.P4892595934291658274

/-! ## A099999.P5345346116481722586

`∑{p}[A001403(n+1), or(#, A001222(n))]`
-/

namespace A099999.P5345346116481722586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Int.lor (p : ℤ) (A001222 n)

end

end A099999.P5345346116481722586

/-! ## A099999.P5947525156123132344

`∑{p}[A001403(n+1), or(#, A098804(n))]`
-/

namespace A099999.P5947525156123132344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Int.lor (p : ℤ) (A098804 n)

end

end A099999.P5947525156123132344

/-! ## A099999.P8328389805967864992

`A001403(n+1)-char[A164989(n+1)]`
-/

namespace A099999.P8328389805967864992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164989 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001403 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A099999.P8328389805967864992

