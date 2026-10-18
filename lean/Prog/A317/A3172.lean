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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
# A317200: Expansion of g.f. -x*(2*x^3+2*x^2+x-2)/(x^4-2*x+1).

The programs for A317200, the canonical program `A317200.P13391794210511876373` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317200 has offset 1).

The definition of A317200 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x-x^2-2x^3-2x^4)/(1-2x+x^4))` (program `A317200.P13391794210511876373`, by `A317200.P13391794210511876373.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317200.P13391794210511876373

`ogf((2x-x^2-2x^3-2x^4)/(1-2x+x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A317200

/-- `ogf((2x-x^2-2x^3-2x^4)/(1-2x+x^4))` -/
def P13391794210511876373.Spec : Prop :=
  ∀ n, P13391794210511876373.a n = A317200 (n + 1)

theorem P13391794210511876373.correct : P13391794210511876373.Spec := by
  intro n
  simp only [A317200, Nat.add_sub_cancel]

end A317200

/-! ## A317200.P13606065888513880380

`2*a(n-1)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=6`
-/

namespace A317200.P13606065888513880380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 4, 6] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A317200.P13606065888513880380

namespace A317200

/-- `2*a(n-1)-a(n-4)` -/
def P13606065888513880380.Spec : Prop :=
  ∀ n, P13606065888513880380.a n = A317200 (n + 1)

end A317200

/-! ## A317200.P4122940592011730082

`a(n-1)+a(n-1)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=6`
-/

namespace A317200.P4122940592011730082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 4, 6] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 4))

end

end A317200.P4122940592011730082

namespace A317200

/-- `a(n-1)+a(n-1)-a(n-4)` -/
def P4122940592011730082.Spec : Prop :=
  ∀ n, P4122940592011730082.a n = A317200 (n + 1)

end A317200

/-! ## A317200.P2904653647926671288

`∑[A000073(n)+2*char[1]]`
-/

namespace A317200.P2904653647926671288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + ((2 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317200.P2904653647926671288

namespace A317200

/-- `∑[A000073(n)+2*char[1]]` -/
def P2904653647926671288.Spec : Prop :=
  ∀ n, P2904653647926671288.a n = A317200 (n + 1)

end A317200

/-! ## A317200.P16731877735789337590

`∑[A000073(A169585(n)+n)]`
-/

namespace A317200.P16731877735789337590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A169585 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317200.P16731877735789337590

namespace A317200

/-- `∑[A000073(A169585(n)+n)]` -/
def P16731877735789337590.Spec : Prop :=
  ∀ n, P16731877735789337590.a n = A317200 (n + 1)

end A317200

/-! ## A317200.P3383449040176237725

`∑[A134824(n)+A000073(n)]+n`
-/

namespace A317200.P3383449040176237725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n + A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A317200.P3383449040176237725

namespace A317200

/-- `∑[A134824(n)+A000073(n)]+n` -/
def P3383449040176237725.Spec : Prop :=
  ∀ n, P3383449040176237725.a n = A317200 (n + 1)

end A317200

/-! ## A317200.P16316259745334232130

`Δ[A325473(A233583(n+2))+A233583(n+2)]`
-/

namespace A317200.P16316259745334232130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 (A233583 (n + 2)).toNat + A233583 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317200.P16316259745334232130

namespace A317200

/-- `Δ[A325473(A233583(n+2))+A233583(n+2)]` -/
def P16316259745334232130.Spec : Prop :=
  ∀ n, P16316259745334232130.a n = A317200 (n + 1)

end A317200

/-! ## A317200.P18296263351267030625

`A018921(n)%∑[∑[A000213(n)]]`
-/

namespace A317200.P18296263351267030625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018921 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317200.P18296263351267030625

namespace A317200

/-- `A018921(n)%∑[∑[A000213(n)]]` -/
def P18296263351267030625.Spec : Prop :=
  ∀ n, P18296263351267030625.a n = A317200 (n + 1)

end A317200

/-! ## A317200.P7700739916524079711

`∑[A000073(n)]+2%A000051(n)`
-/

namespace A317200.P7700739916524079711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod 2 (A000051 n)

end

end A317200.P7700739916524079711

namespace A317200

/-- `∑[A000073(n)]+2%A000051(n)` -/
def P7700739916524079711.Spec : Prop :=
  ∀ n, P7700739916524079711.a n = A317200 (n + 1)

end A317200

/-! ## A317200.P15497708050003649341

`(A192804(n+1)+1)*A057979(A025487(n+1))`
-/

namespace A317200.P15497708050003649341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A192804 (n + 1) + 1) * A057979 (A025487 (n + 1)).toNat

end

end A317200.P15497708050003649341

namespace A317200

/-- `(A192804(n+1)+1)*A057979(A025487(n+1))` -/
def P15497708050003649341.Spec : Prop :=
  ∀ n, P15497708050003649341.a n = A317200 (n + 1)

end A317200

/-!
# A317202: Decimal expansion of 3 + (t^2+t^4)/2, where t = 0.543689... (A192918) is the real root of x^3 + x^2 + x = 1.

The programs for A317202, there is no canonical definition to state claims against.
-/

/-! ## A317202.P3595526098911547063

`floor(A316711(n)+acot(n))`
-/

namespace A317202.P3595526098911547063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A316711 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A317202.P3595526098911547063

/-! ## A317202.P14719027548114319340

`A316711(n)+A000007(n)`
-/

namespace A317202.P14719027548114319340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316711 (n + 1) + A000007 n

end

end A317202.P14719027548114319340

/-! ## A317202.P500743894640588123

`or(char[A278038(n)], A316711(n))`
-/

namespace A317202.P500743894640588123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A316711 (n + 1))

end

end A317202.P500743894640588123

/-! ## A317202.P10748466126661644304

`A316711(n)+A084099(2*n)`
-/

namespace A317202.P10748466126661644304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316711 (n + 1) + A084099 (2 * n)

end

end A317202.P10748466126661644304

/-! ## A317202.P199953968980662468

`A316711(n)+A000038(n)/2`
-/

namespace A317202.P199953968980662468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316711 (n + 1) : ℚ) + (A000038 n : ℚ) / 2

end

end A317202.P199953968980662468

/-! ## A317202.P17744534374068661184

`A028310(n)+A316711(n)-n`
-/

namespace A317202.P17744534374068661184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A316711 (n + 1) - (n : ℤ))

end

end A317202.P17744534374068661184

/-! ## A317202.P2935601743288762223

`A316711(A028310(n))+A000038(n)`
-/

namespace A317202.P2935601743288762223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316711 ((A028310 n).toNat + 1) + A000038 n

end

end A317202.P2935601743288762223

/-! ## A317202.P14742954221545103595

`A316711(n)+A059841(A020484(n))`
-/

namespace A317202.P14742954221545103595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316711 (n + 1) + A059841 (A020484 n).toNat

end

end A317202.P14742954221545103595

/-! ## A317202.P4977980129091857880

`A316711(n)+A073424(A008818(n))`
-/

namespace A317202.P4977980129091857880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316711 (n + 1) + A073424 (A008818 n).toNat

end

end A317202.P4977980129091857880

/-! ## A317202.P9636673551882119218

`A316711(n)+A088157(A110655(n))`
-/

namespace A317202.P9636673551882119218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316711 (n + 1) + A088157 (A110655 n).toNat

end

end A317202.P9636673551882119218

/-!
# A317203: Fixed under the morphism 1 -> 132, 2 -> 1, 3 -> 3, starting with 31.

The programs for A317203, the canonical program `A317203.P3755290457602580711` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317203 has offset 1).

The definition of A317203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317203.P3755290457602580711

`dr(gcd(12, A267860(n)))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A317203

/-- `dr(gcd(12, A267860(n)))` -/
def P3755290457602580711.Spec : Prop :=
  ∀ n, (P3755290457602580711.a n : ℤ) = A317203 (n + 1)

theorem P3755290457602580711.correct : P3755290457602580711.Spec := by
  intro n
  simp only [A317203, Nat.add_sub_cancel]

end A317203

/-! ## A317203.P13872495110289184925

`A227216(Δ[floor((floor(n/2)+1)*ϕ²)+n])`
-/

namespace A317203.P13872495110289184925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 2⌋ + 1 : ℝ) * Real.goldenRatio ^ 2⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227216 (f1 (n + 1) - f1 n).toNat

end

end A317203.P13872495110289184925

namespace A317203

/-- `A227216(Δ[floor((floor(n/2)+1)*ϕ²)+n])` -/
def P13872495110289184925.Spec : Prop :=
  ∀ n, P13872495110289184925.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P6630609506921241717

`A176059(n)-A379275(n)`
-/

namespace A317203.P6630609506921241717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n - A379275 n

end

end A317203.P6630609506921241717

namespace A317203

/-- `A176059(n)-A379275(n)` -/
def P6630609506921241717.Spec : Prop :=
  ∀ n, P6630609506921241717.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P13580000387560773639

`gcd(n*A267860(n), A010702(n))`
-/

namespace A317203.P13580000387560773639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A267860 n) (A010702 n)

end

end A317203.P13580000387560773639

namespace A317203

/-- `gcd(n*A267860(n), A010702(n))` -/
def P13580000387560773639.Spec : Prop :=
  ∀ n, (P13580000387560773639.a n : ℤ) = A317203 (n + 1)

end A317203

/-! ## A317203.P1131584177459377392

`xor(a(n-1), A001468(A110654(n)))` with `a(0)=3`
-/

namespace A317203.P1131584177459377392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.xor (a (n - 1)) (A001468 (A110654 n).toNat)

end

end A317203.P1131584177459377392

namespace A317203

/-- `xor(a(n-1), A001468(A110654(n)))` -/
def P1131584177459377392.Spec : Prop :=
  ∀ n, P1131584177459377392.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P14229607494322569547

`xor(a(n-1), A001468(A065033(n)))` with `a(0)=3, a(1)=1`
-/

namespace A317203.P14229607494322569547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  Int.xor (a (n - 1)) (A001468 (A065033 n).toNat)

end

end A317203.P14229607494322569547

namespace A317203

/-- `xor(a(n-1), A001468(A065033(n)))` -/
def P14229607494322569547.Spec : Prop :=
  ∀ n, P14229607494322569547.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P13127500175076738693

`4-Δ[floor(∑[ϕ*(ϕ-and(1, n))])]`
-/

namespace A317203.P13127500175076738693
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (Real.goldenRatio - (Nat.land 1 n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A317203.P13127500175076738693

namespace A317203

/-- `4-Δ[floor(∑[ϕ*(ϕ-and(1, n))])]` -/
def P13127500175076738693.Spec : Prop :=
  ∀ n, P13127500175076738693.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P15660247867106852242

`4-Δ[A287775(n+1)]`
-/

namespace A317203.P15660247867106852242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A317203.P15660247867106852242

namespace A317203

/-- `4-Δ[A287775(n+1)]` -/
def P15660247867106852242.Spec : Prop :=
  ∀ n, P15660247867106852242.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P16457183829906359649

`Δ[A187949(n+1)]%4`
-/

namespace A317203.P16457183829906359649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 4

end

end A317203.P16457183829906359649

namespace A317203

/-- `Δ[A187949(n+1)]%4` -/
def P16457183829906359649.Spec : Prop :=
  ∀ n, P16457183829906359649.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P13085270053598931314

`3-Δ[A000201(A004526(n)+1)]`
-/

namespace A317203.P13085270053598931314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A004526 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A317203.P13085270053598931314

namespace A317203

/-- `3-Δ[A000201(A004526(n)+1)]` -/
def P13085270053598931314.Spec : Prop :=
  ∀ n, P13085270053598931314.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P3313399600333520695

`4-A108103(n+3)`
-/

namespace A317203.P3313399600333520695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A108103 (n + 3)

end

end A317203.P3313399600333520695

namespace A317203

/-- `4-A108103(n+3)` -/
def P3313399600333520695.Spec : Prop :=
  ∀ n, P3313399600333520695.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P6070687892946539549

`and(3, Δ[A188473(n+2)])`
-/

namespace A317203.P6070687892946539549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (f1 (n + 1) - f1 n)

end

end A317203.P6070687892946539549

namespace A317203

/-- `and(3, Δ[A188473(n+2)])` -/
def P6070687892946539549.Spec : Prop :=
  ∀ n, P6070687892946539549.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P6028049636974975813

`A214063(Δ[A188018(n+3)])`
-/

namespace A317203.P6028049636974975813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214063 (f1 (n + 1) - f1 n).toNat

end

end A317203.P6028049636974975813

namespace A317203

/-- `A214063(Δ[A188018(n+3)])` -/
def P6028049636974975813.Spec : Prop :=
  ∀ n, P6028049636974975813.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P14253154435717319970

`A214064(Δ[A188018(n+3)])`
-/

namespace A317203.P14253154435717319970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214064 (f1 (n + 1) - f1 n).toNat

end

end A317203.P14253154435717319970

namespace A317203

/-- `A214064(Δ[A188018(n+3)])` -/
def P14253154435717319970.Spec : Prop :=
  ∀ n, P14253154435717319970.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P14151820760939661830

`A000032(2-val(lt[and(n, 2*n), 3]+1, 2))`
-/

namespace A317203.P14151820760939661830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 - SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) 2)

end

end A317203.P14151820760939661830

namespace A317203

/-- `A000032(2-val(lt[and(n, 2*n), 3]+1, 2))` -/
def P14151820760939661830.Spec : Prop :=
  ∀ n, P14151820760939661830.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P11641477818909628135

`A108103(val(lt[and(n, 2*n), 3]+1, 2)+4)`
-/

namespace A317203.P11641477818909628135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108103 (SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) 2 + 4)

end

end A317203.P11641477818909628135

namespace A317203

/-- `A108103(val(lt[and(n, 2*n), 3]+1, 2)+4)` -/
def P11641477818909628135.Spec : Prop :=
  ∀ n, P11641477818909628135.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P2281045893427790423

`A106590(val(lt[and(n, 2*n), 3]+1, 2)+5)`
-/

namespace A317203.P2281045893427790423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106590 (SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) 2 + 5)

end

end A317203.P2281045893427790423

namespace A317203

/-- `A106590(val(lt[and(n, 2*n), 3]+1, 2)+5)` -/
def P2281045893427790423.Spec : Prop :=
  ∀ n, P2281045893427790423.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P15069568887427359685

`A001222(8-val(lt[and(n, 2*n), 3]+1, 2))`
-/

namespace A317203.P15069568887427359685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 - SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) 2)

end

end A317203.P15069568887427359685

namespace A317203

/-- `A001222(8-val(lt[and(n, 2*n), 3]+1, 2))` -/
def P15069568887427359685.Spec : Prop :=
  ∀ n, P15069568887427359685.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P15585264032154662215

`A120614(A054084(n+1)+1)+1`
-/

namespace A317203.P15585264032154662215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120614 (A054084 (n + 1) + 1).toNat + 1

end

end A317203.P15585264032154662215

namespace A317203

/-- `A120614(A054084(n+1)+1)+1` -/
def P15585264032154662215.Spec : Prop :=
  ∀ n, P15585264032154662215.a n = A317203 (n + 1)

end A317203

/-! ## A317203.P7911661779031576811

`A270788(A054084(n+1)+A054084(n+2))`
-/

namespace A317203.P7911661779031576811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270788 (A054084 (n + 1) + A054084 (n + 2)).toNat

end

end A317203.P7911661779031576811

namespace A317203

/-- `A270788(A054084(n+1)+A054084(n+2))` -/
def P7911661779031576811.Spec : Prop :=
  ∀ n, P7911661779031576811.a n = A317203 (n + 1)

end A317203

/-!
# A317204: Expansion of n in the p-system based on convergents to sqrt(2).

The programs for A317204, there is no canonical definition to state claims against.
-/

/-! ## A317204.P13536668725589467976

`A014418(A035064(n+1)%A072394(n+1))`
-/

namespace A317204.P13536668725589467976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014418 (Int.tmod (A035064 (n + 1)) (A072394 (n + 1))).toNat

end

end A317204.P13536668725589467976

/-! ## A317204.P4392980339006182577

`A008835(A003612(n+1))*A014418(A035064(n+1))`
-/

namespace A317204.P4392980339006182577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (A003612 (n + 1)).toNat * A014418 (A035064 (n + 1)).toNat

end

end A317204.P4392980339006182577

/-! ## A317204.P2258220403056559197

`A014418(comp[A349854(3*(n+1))])`
-/

namespace A317204.P2258220403056559197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349854 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014418 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A317204.P2258220403056559197

/-! ## A317204.P10652938026606595372

`A014418(A035064(n+1)%A352614(n))`
-/

namespace A317204.P10652938026606595372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014418 (Int.tmod (A035064 (n + 1)) (A352614 n)).toNat

end

end A317204.P10652938026606595372

/-! ## A317204.P13861308455454213604

`A014418(comp[A000404(n+5)-A356504(n)])`
-/

namespace A317204.P13861308455454213604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 5) - A356504 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014418 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A317204.P13861308455454213604

/-!
# A317205: Sprague-Grundy values for Wythoff's game.

The programs for A317205, there is no canonical definition to state claims against.
-/

/-! ## A317205.P16539637721308663477

`A004481(A245300(n))`
-/

namespace A317205.P16539637721308663477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A245300 n).toNat

end

end A317205.P16539637721308663477

/-! ## A317205.P6723574506147043392

`A004481((A214604(n+1)-1)/2)`
-/

namespace A317205.P6723574506147043392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (SequenceMachineLib.roundAway ((A214604 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A317205.P6723574506147043392

/-! ## A317205.P2910482458243963097

`A004481(A008619(A214604(n+1))-1)`
-/

namespace A317205.P2910482458243963097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A008619 (A214604 (n + 1)).toNat - 1).toNat

end

end A317205.P2910482458243963097

/-!
# A317206: An alternative tribonacci representation of n: an encoding of the position of n in the A003144, A003145, A003146 table.

The programs for A317206, there is no canonical definition to state claims against.
-/

/-! ## A317206.P9293184413843894604

`A192624(a(n-1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=12, a(4)=3`
-/

namespace A317206.P9293184413843894604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 12, 3] fun n a =>
  A192624 (a (n - 1)).toNat

end

end A317206.P9293184413843894604

/-! ## A317206.P309459071219482342

`∑{e}[A000595(n), A241596(#)]`
-/

namespace A317206.P309459071219482342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A241596 (Nat.factorization (f1 n).natAbs p)

end

end A317206.P309459071219482342

/-!
# A317207: Length of alternative tribonacci representation of n defined in A317206.

The programs for A317207, there is no canonical definition to state claims against.
-/

/-! ## A317207.P3545903959464814928

`∑{digits}[A317206(n), A007318(#)]`
-/

namespace A317207.P3545903959464814928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007318 x).sum

end

end A317207.P3545903959464814928

/-! ## A317207.P2353973619026829003

`∑{digits}[A317206(n), A008621(#)]`
-/

namespace A317207.P2353973619026829003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008621 x).sum

end

end A317207.P2353973619026829003

/-! ## A317207.P11874139831984293920

`∑{digits}[A317206(n), A029129(#)]`
-/

namespace A317207.P11874139831984293920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A029129 x).sum

end

end A317207.P11874139831984293920

/-! ## A317207.P11141237965650665693

`∑{digits}[A317206(n), A033932(#)]`
-/

namespace A317207.P11141237965650665693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033932 x).sum

end

end A317207.P11141237965650665693

/-! ## A317207.P2931319473635884338

`∑{digits}[A317206(n), A098576(#)]`
-/

namespace A317207.P2931319473635884338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A098576 x).sum

end

end A317207.P2931319473635884338

/-! ## A317207.P12026045677151061508

`∑{digits}[A317206(n), A254730(#)]`
-/

namespace A317207.P12026045677151061508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A254730 x).sum

end

end A317207.P12026045677151061508

/-! ## A317207.P12458364946772930931

`∑{digits}[A317206(n), A331927(#)]`
-/

namespace A317207.P12458364946772930931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A331927 x).sum

end

end A317207.P12458364946772930931

/-!
# A317208: The Wythoff representation of n: an alternative way of presenting A189921.

The programs for A317208, there is no canonical definition to state claims against.
-/

/-! ## A317208.P3535463086493836300

`A317206(lt[A200714(n+1), 7])`
-/

namespace A317208.P3535463086493836300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200714 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317206 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A317208.P3535463086493836300

/-! ## A317208.P6275704307603007426

`A016005(A364739(n))-floor(1/(n+1))`
-/

namespace A317208.P6275704307603007426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016005 (A364739 n).toNat - ⌊1 / (n + 1 : ℚ)⌋

end

end A317208.P6275704307603007426

/-! ## A317208.P18158693979906637343

`lcm(A001221(n+1), A016005(A364739(n)))`
-/

namespace A317208.P18158693979906637343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 1)) (A016005 (A364739 n).toNat)

end

end A317208.P18158693979906637343

/-!
# A317209: Coefficients arising from the Taylor series expansion of log(arcsin(x)/log(1+x)).

The programs for A317209, there is no canonical definition to state claims against.
-/

/-! ## A317209.P17314065741052127157

`A013568(n)%A073788(A001930(n))`
-/

namespace A317209.P17314065741052127157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013568 n) (A073788 (A001930 n).toNat)

end

end A317209.P17314065741052127157

/-! ## A317209.P15912232192228965130

`A351525(n+2)%A130958(A351502(n))`
-/

namespace A317209.P15912232192228965130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351525 (n + 2)) (A130958 (A351502 n).toNat)

end

end A317209.P15912232192228965130

/-!
# A317210: Composite numbers k+1 such that A002322(A027760(k)) = k.

The programs for A317210, there is no canonical definition to state claims against.
-/

/-! ## A317210.P14040499272391762114

`eq[A110560(n), A346468(n+1)]+1`
-/

namespace A317210.P14040499272391762114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A317210.P14040499272391762114

/-! ## A317210.P6961686320054854070

`eq[A089026(n+1), A346468(n+1)]+1`
-/

namespace A317210.P6961686320054854070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A317210.P6961686320054854070

/-! ## A317210.P10709239002537494277

`A004442(eq[A110560(n), A346468(n+1)])`
-/

namespace A317210.P10709239002537494277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A317210.P10709239002537494277

/-! ## A317210.P1967734040112607365

`A004442(eq[A089026(n+1), A346468(n+1)])`
-/

namespace A317210.P1967734040112607365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A317210.P1967734040112607365

/-! ## A317210.P4616897969156824642

`A079097(eq[A089026(n+1), A346468(n+1)])`
-/

namespace A317210.P4616897969156824642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A317210.P4616897969156824642

/-! ## A317210.P16001021266950468826

`A109613(eq[A089026(n+1), A346468(n+1)])`
-/

namespace A317210.P16001021266950468826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A317210.P16001021266950468826

/-! ## A317210.P15186454703647373606

`A131738(eq[A089026(n+1), A346468(n+1)])`
-/

namespace A317210.P15186454703647373606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A317210.P15186454703647373606

/-! ## A317210.P10954704952941941592

`A141310(eq[A089026(n+1), A346468(n+1)])`
-/

namespace A317210.P10954704952941941592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A317210.P10954704952941941592

/-!
# A317211: Number of nXn 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317211, there is no canonical definition to state claims against.
-/

/-! ## A317211.P13791903604849736715

`A317215(∑[4*n]+1)`
-/

namespace A317211.P13791903604849736715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317211.P13791903604849736715

/-! ## A317211.P2325595874887379

`record[gcd(A114327(n), A317215(n+1))]`
-/

namespace A317211.P2325595874887379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A317215 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317211.P2325595874887379

/-! ## A317211.P8941450657162386846

`record[lcm(A185917(n+1), A317215(n+1))]`
-/

namespace A317211.P8941450657162386846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A185917 (n + 1)) (A317215 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317211.P8941450657162386846

/-! ## A317211.P1176857072021753332

`char[A001222(n+1)]*A317215(A001844(n))`
-/

namespace A317211.P1176857072021753332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A317215 (A001844 n).toNat

end

end A317211.P1176857072021753332

/-! ## A317211.P1127660291612395812

`A006530(gcd(n, n+1))*A317215(A001844(n))`
-/

namespace A317211.P1127660291612395812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd n (n + 1)) * A317215 (A001844 n).toNat

end

end A317211.P1127660291612395812

/-!
# A317212: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317212, there is no canonical definition to state claims against.
-/

/-! ## A317212.P2366832423646262158

`A317215(A374005(n+1))`
-/

namespace A317212.P2366832423646262158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (A374005 (n + 1)).toNat

end

end A317212.P2366832423646262158

/-! ## A317212.P9496110961431274908

`A317215(A167499(n+3))`
-/

namespace A317212.P9496110961431274908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (A167499 (n + 3)).toNat

end

end A317212.P9496110961431274908

/-! ## A317212.P11310924331930495165

`A317215(A155212(n)+13)`
-/

namespace A317212.P11310924331930495165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (A155212 n + 13).toNat

end

end A317212.P11310924331930495165

/-! ## A317212.P15758295935713670647

`A317215(A056000(n)+15)`
-/

namespace A317212.P15758295935713670647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (A056000 n + 15).toNat

end

end A317212.P15758295935713670647

/-! ## A317212.P14550786153727607805

`A317215(eq[6, A131818(n+1)])`
-/

namespace A317212.P14550786153727607805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317212.P14550786153727607805

/-!
# A317213: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317213, there is no canonical definition to state claims against.
-/

/-! ## A317213.P1408720634657140425

`A317215(A374007(n+1))`
-/

namespace A317213.P1408720634657140425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (A374007 (n + 1)).toNat

end

end A317213.P1408720634657140425

/-! ## A317213.P14923996947839875693

`A317215(A056115(n)+21)`
-/

namespace A317213.P14923996947839875693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (A056115 n + 21).toNat

end

end A317213.P14923996947839875693

/-! ## A317213.P17313884625821246132

`A317215(eq[7, A131818(n+1)])`
-/

namespace A317213.P17313884625821246132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317213.P17313884625821246132

/-! ## A317213.P15919739766902686709

`A317215(eq[5, A193592(n)])`
-/

namespace A317213.P15919739766902686709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317213.P15919739766902686709

/-! ## A317213.P15719141542908565044

`A317215(eq[8, A258709(n)])`
-/

namespace A317213.P15719141542908565044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317213.P15719141542908565044

/-!
# A317214: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317214, there is no canonical definition to state claims against.
-/

/-! ## A317214.P14524441014922804552

`A317215(A374008(n+1))`
-/

namespace A317214.P14524441014922804552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (A374008 (n + 1)).toNat

end

end A317214.P14524441014922804552

/-! ## A317214.P10308260697364355915

`A317215(eq[8, A131818(n+1)])`
-/

namespace A317214.P10308260697364355915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317214.P10308260697364355915

/-! ## A317214.P5524565611953651818

`A317215(eq[7, A025581(n)]-2*n)`
-/

namespace A317214.P5524565611953651818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A317214.P5524565611953651818

/-! ## A317214.P12081045684317571820

`A317215(A055999(n+4))`
-/

namespace A317214.P12081045684317571820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (A055999 (n + 4)).toNat

end

end A317214.P12081045684317571820

/-! ## A317214.P10546986537659960689

`A317215(eq[6, A193592(n)])`
-/

namespace A317214.P10546986537659960689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317215 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317214.P10546986537659960689

/-!
# A317216: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317216, there is no canonical definition to state claims against.
-/

/-! ## A317216.P2455648977704635361

`A317222(∑[4*n]+1)`
-/

namespace A317216.P2455648977704635361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317216.P2455648977704635361

/-! ## A317216.P7714038116982161520

`A317222(A001844(n))+A011737(n)`
-/

namespace A317216.P7714038116982161520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A001844 n).toNat + A011737 n

end

end A317216.P7714038116982161520

/-! ## A317216.P9193928911288501226

`A317222(A001844(n))+A025465(n)`
-/

namespace A317216.P9193928911288501226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A001844 n).toNat + A025465 n

end

end A317216.P9193928911288501226

/-! ## A317216.P18057737487678559981

`A317222(A001844(n))+A185238(n)`
-/

namespace A317216.P18057737487678559981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A001844 n).toNat + A185238 n

end

end A317216.P18057737487678559981

/-! ## A317216.P16962033196153470968

`A057427(n)*A317222(A001844(n))`
-/

namespace A317216.P16962033196153470968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A317222 (A001844 n).toNat

end

end A317216.P16962033196153470968

/-!
# A317217: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317217, there is no canonical definition to state claims against.
-/

/-! ## A317217.P6957674259602865054

`A317222(∑[n+2]+4)`
-/

namespace A317217.P6957674259602865054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317217.P6957674259602865054

/-! ## A317217.P11436004186227673166

`record[gcd(A303913(n), A317222(n+1))]`
-/

namespace A317217.P11436004186227673166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A317222 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317217.P11436004186227673166

/-! ## A317217.P1393642978360644991

`A317222(A167614(n+1))^ceil(n/98)`
-/

namespace A317217.P1393642978360644991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317222 (A167614 (n + 1)).toNat : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ)

end

end A317217.P1393642978360644991

/-! ## A317217.P4441817858385799617

`A317222(A167614(n+1))+A011737(n)`
-/

namespace A317217.P4441817858385799617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A167614 (n + 1)).toNat + A011737 n

end

end A317217.P4441817858385799617

/-! ## A317217.P15732809963009528781

`A317222(A167614(n+1))+A185238(n)`
-/

namespace A317217.P15732809963009528781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A167614 (n + 1)).toNat + A185238 n

end

end A317217.P15732809963009528781

/-!
# A317218: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317218, there is no canonical definition to state claims against.
-/

/-! ## A317218.P9215605288708954029

`A317222(A374004(n+1))`
-/

namespace A317218.P9215605288708954029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A374004 (n + 1)).toNat

end

end A317218.P9215605288708954029

/-! ## A317218.P8947982135941482327

`A317222(A141214(n)+7)`
-/

namespace A317218.P8947982135941482327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A141214 n + 7).toNat

end

end A317218.P8947982135941482327

/-! ## A317218.P6776593028758927993

`A317222(A052905(n)+9)`
-/

namespace A317218.P6776593028758927993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A052905 n + 9).toNat

end

end A317218.P6776593028758927993

/-! ## A317218.P2953733475179662147

`A317222(A055999(n)+10)`
-/

namespace A317218.P2953733475179662147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A055999 n + 10).toNat

end

end A317218.P2953733475179662147

/-! ## A317218.P8501330882574596708

`A317222(A167614(n+2)+1)`
-/

namespace A317218.P8501330882574596708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A167614 (n + 2) + 1).toNat

end

end A317218.P8501330882574596708

/-!
# A317219: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317219, there is no canonical definition to state claims against.
-/

/-! ## A317219.P9331088143744550090

`A317222(A374005(n+1))`
-/

namespace A317219.P9331088143744550090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A374005 (n + 1)).toNat

end

end A317219.P9331088143744550090

/-! ## A317219.P8857771092799744325

`A317222(A167499(n+3))`
-/

namespace A317219.P8857771092799744325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A167499 (n + 3)).toNat

end

end A317219.P8857771092799744325

/-! ## A317219.P18223705724912236749

`A317222(A056000(n)+15)`
-/

namespace A317219.P18223705724912236749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A056000 n + 15).toNat

end

end A317219.P18223705724912236749

/-! ## A317219.P2718636047964973167

`A317222(Δ[A264443(n)])`
-/

namespace A317219.P2718636047964973167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (f1 (n + 1) - f1 n).toNat

end

end A317219.P2718636047964973167

/-! ## A317219.P1313967653156536431

`A317222(A046691(n+3))`
-/

namespace A317219.P1313967653156536431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A046691 (n + 3)).toNat

end

end A317219.P1313967653156536431

/-!
# A317220: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317220, there is no canonical definition to state claims against.
-/

/-! ## A317220.P16766195156309957598

`A317222(A374007(n+1))`
-/

namespace A317220.P16766195156309957598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A374007 (n + 1)).toNat

end

end A317220.P16766195156309957598

/-! ## A317220.P12586296876981829597

`A317222(A056115(n)+21)`
-/

namespace A317220.P12586296876981829597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A056115 n + 21).toNat

end

end A317220.P12586296876981829597

/-! ## A317220.P15411309345920373836

`A317222(A052905(n+3))`
-/

namespace A317220.P15411309345920373836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A052905 (n + 3)).toNat

end

end A317220.P15411309345920373836

/-! ## A317220.P3809426235869436844

`A317222(eq[3, A219347(n)])`
-/

namespace A317220.P3809426235869436844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317220.P3809426235869436844

/-! ## A317220.P10021134283329972170

`A317222(eq[5, A193592(n)])`
-/

namespace A317220.P10021134283329972170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317220.P10021134283329972170

/-!
# A317221: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317221, there is no canonical definition to state claims against.
-/

/-! ## A317221.P2531231069752582100

`A317222(A374008(n+1))`
-/

namespace A317221.P2531231069752582100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A374008 (n + 1)).toNat

end

end A317221.P2531231069752582100

/-! ## A317221.P14958099507381634907

`A317222(eq[8, A131818(n+1)])`
-/

namespace A317221.P14958099507381634907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317221.P14958099507381634907

/-! ## A317221.P17778046789272510410

`A317222(A055999(n+4))`
-/

namespace A317221.P17778046789272510410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (A055999 (n + 4)).toNat

end

end A317221.P17778046789272510410

/-! ## A317221.P7864063926767593734

`A317222(eq[4, A219347(n)])`
-/

namespace A317221.P7864063926767593734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317221.P7864063926767593734

/-! ## A317221.P13393540828280435264

`A317222(eq[6, A193592(n)])`
-/

namespace A317221.P13393540828280435264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317221.P13393540828280435264

/-!
# A317222: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 4, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317222, there is no canonical definition to state claims against.
-/

/-! ## A317222.P3703974517145279337

`A305961(n+1)+A010894(A003401(n+1))`
-/

namespace A317222.P3703974517145279337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (n + 1) + A010894 ((A003401 (n + 1)).toNat + 21)

end

end A317222.P3703974517145279337

/-! ## A317222.P10436352999759283870

`A305961(n+1)+A011737(A022171(n))`
-/

namespace A317222.P10436352999759283870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (n + 1) + A011737 (A022171 n).toNat

end

end A317222.P10436352999759283870

/-! ## A317222.P5715081445496262309

`A305961(n+1)+A025465(A022345(n))`
-/

namespace A317222.P5715081445496262309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (n + 1) + A025465 (A022345 n).toNat

end

end A317222.P5715081445496262309

/-! ## A317222.P1662377713076390438

`A305961(n+1)+A025465(A023105(n))`
-/

namespace A317222.P1662377713076390438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (n + 1) + A025465 (A023105 n).toNat

end

end A317222.P1662377713076390438

/-! ## A317222.P3550564525870664402

`A305961(n+1)+A055641(A002843(n))`
-/

namespace A317222.P3550564525870664402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305961 (n + 1) + A055641 (A002843 n).toNat

end

end A317222.P3550564525870664402

/-!
# A317223: a(0) = 0, a(1) = 1; for n >= 2, a(n) = freq(a(freq(a(n-1),n)),n) where freq(i, j) is the number of times i appears in the terms a(0) .. a(j-1).

The programs for A317223, there is no canonical definition to state claims against.
-/

/-! ## A317223.P16640300626433566633

`gcd(2*n, A096198(A011972(n)))`
-/

namespace A317223.P16640300626433566633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A096198 (A011972 n).toNat)

end

end A317223.P16640300626433566633

/-! ## A317223.P9109364102387164859

`∑{e}[A048621(n+1)-A003946(n), #]`
-/

namespace A317223.P9109364102387164859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (n + 1) - A003946 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A317223.P9109364102387164859

/-! ## A317223.P7980369607243410832

`A086342(A084639(n))%A133128(n)`
-/

namespace A317223.P7980369607243410832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086342 (A084639 n).toNat) (A133128 n)

end

end A317223.P7980369607243410832

/-! ## A317223.P1449126866807103028

`gcd(A096198(A011972(n))², A064680(n))`
-/

namespace A317223.P1449126866807103028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096198 (A011972 n).toNat ^ 2) (A064680 n)

end

end A317223.P1449126866807103028

/-! ## A317223.P11644555024979793720

`A334029(A056508(n+1)%A166625(n+1))`
-/

namespace A317223.P11644555024979793720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (Int.tmod (A056508 (n + 1)) (A166625 (n + 1))).toNat

end

end A317223.P11644555024979793720

/-!
# A317224: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317224, there is no canonical definition to state claims against.
-/

/-! ## A317224.P12960595646514119190

`A317230(∑[4*n]+1)`
-/

namespace A317224.P12960595646514119190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317224.P12960595646514119190

/-! ## A317224.P1326637904269541758

`A261585(n)*A317230(A001844(n))`
-/

namespace A317224.P1326637904269541758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 n * A317230 (A001844 n).toNat

end

end A317224.P1326637904269541758

/-! ## A317224.P356496177760171216

`gcd(A317230(A001844(n)), A321936(n))`
-/

namespace A317224.P356496177760171216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A317230 (A001844 n).toNat) (A321936 n)

end

end A317224.P356496177760171216

/-! ## A317224.P2022317321151003618

`log2(A020639(4*(n+1)))*A317230(A001844(n))`
-/

namespace A317224.P2022317321151003618
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (4 * (n + 1)) : ℝ) * (A317230 (A001844 n).toNat : ℝ)

end

end A317224.P2022317321151003618

/-! ## A317224.P15609673476011722690

`A007318(A014963(2*(n+1)))*A317230(A001844(n))`
-/

namespace A317224.P15609673476011722690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014963 (2 * (n + 1))).toNat * A317230 (A001844 n).toNat

end

end A317224.P15609673476011722690

/-!
# A317225: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317225, there is no canonical definition to state claims against.
-/

/-! ## A317225.P11825671456999115962

`A317230(∑[n+2]+4)`
-/

namespace A317225.P11825671456999115962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317225.P11825671456999115962

/-! ## A317225.P5651789255176809995

`A317230(A167614(n+1))+A011737(n)`
-/

namespace A317225.P5651789255176809995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (A167614 (n + 1)).toNat + A011737 n

end

end A317225.P5651789255176809995

/-! ## A317225.P3364973795114270771

`A317230(A167614(n+1))%A213256(n)`
-/

namespace A317225.P3364973795114270771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317230 (A167614 (n + 1)).toNat) (A213256 n)

end

end A317225.P3364973795114270771

/-! ## A317225.P8142894008247322614

`lcm(A033999(n), A317230(A167614(n+1)))`
-/

namespace A317225.P8142894008247322614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A317230 (A167614 (n + 1)).toNat)

end

end A317225.P8142894008247322614

/-! ## A317225.P2555499959047736396

`A317230(A167614(n+1))+A070204(n+1)`
-/

namespace A317225.P2555499959047736396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (A167614 (n + 1)).toNat + A070204 (n + 1)

end

end A317225.P2555499959047736396

/-!
# A317226: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317226, there is no canonical definition to state claims against.
-/

/-! ## A317226.P15954355234598246942

`A317230(A374004(n+1))`
-/

namespace A317226.P15954355234598246942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (A374004 (n + 1)).toNat

end

end A317226.P15954355234598246942

/-! ## A317226.P107799053827539920

`A317230(A141214(n)+7)`
-/

namespace A317226.P107799053827539920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (A141214 n + 7).toNat

end

end A317226.P107799053827539920

/-! ## A317226.P4586654449281680256

`A317230(A052905(n)+9)`
-/

namespace A317226.P4586654449281680256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (A052905 n + 9).toNat

end

end A317226.P4586654449281680256

/-! ## A317226.P7416960374616823091

`A317230(A055999(n)+10)`
-/

namespace A317226.P7416960374616823091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (A055999 n + 10).toNat

end

end A317226.P7416960374616823091

/-! ## A317226.P9011450078154341891

`A317230(A167614(n+2)+1)`
-/

namespace A317226.P9011450078154341891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (A167614 (n + 2) + 1).toNat

end

end A317226.P9011450078154341891

/-!
# A317227: Number of n X 5 0..1 arrays with every element unequal to 0, 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317227, there is no canonical definition to state claims against.
-/

/-! ## A317227.P5725362851587452553

`A317230(A374005(n+1))`
-/

namespace A317227.P5725362851587452553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (A374005 (n + 1)).toNat

end

end A317227.P5725362851587452553

/-! ## A317227.P15949518975457466741

`A317230(A077169(n+5))`
-/

namespace A317227.P15949518975457466741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (A077169 (n + 5)).toNat

end

end A317227.P15949518975457466741

/-! ## A317227.P16584931668731398585

`A317230(A155212(n)+13)`
-/

namespace A317227.P16584931668731398585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (A155212 n + 13).toNat

end

end A317227.P16584931668731398585

/-! ## A317227.P14459404585106302966

`A317230(eq[7, A066657(n)])`
-/

namespace A317227.P14459404585106302966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317227.P14459404585106302966

/-! ## A317227.P13469405106425126592

`A317230(A000124(n+4)+4)`
-/

namespace A317227.P13469405106425126592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (A000124 (n + 4) + 4).toNat

end

end A317227.P13469405106425126592

/-!
# A317228: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317228, there is no canonical definition to state claims against.
-/

/-! ## A317228.P5153384963819009881

`A317230(A374007(n+1))`
-/

namespace A317228.P5153384963819009881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (A374007 (n + 1)).toNat

end

end A317228.P5153384963819009881

/-! ## A317228.P6144486885921896052

`A317230(A166136(n+4))`
-/

namespace A317228.P6144486885921896052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (A166136 (n + 4)).toNat

end

end A317228.P6144486885921896052

/-! ## A317228.P3563317823417430112

`A317230(Δ[A255994(n+2)])`
-/

namespace A317228.P3563317823417430112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255994 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (f1 (n + 1) - f1 n).toNat

end

end A317228.P3563317823417430112

/-! ## A317228.P6750591235937914348

`A317230(eq[7, A131818(n+1)])`
-/

namespace A317228.P6750591235937914348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317228.P6750591235937914348

/-! ## A317228.P7944331060918184751

`A317230(A052905(n+3))`
-/

namespace A317228.P7944331060918184751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (A052905 (n + 3)).toNat

end

end A317228.P7944331060918184751

/-!
# A317229: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317229, there is no canonical definition to state claims against.
-/

/-! ## A317229.P12205388786604605994

`A317230(A374008(n+1))`
-/

namespace A317229.P12205388786604605994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (A374008 (n + 1)).toNat

end

end A317229.P12205388786604605994

/-! ## A317229.P5858342686919532286

`A317230(eq[11, A066657(n)])`
-/

namespace A317229.P5858342686919532286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317229.P5858342686919532286

/-! ## A317229.P1397465174394729625

`A317230(A000217(n+6)+7)`
-/

namespace A317229.P1397465174394729625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (A000217 (n + 6) + 7).toNat

end

end A317229.P1397465174394729625

/-! ## A317229.P16241248669360212446

`A317230(eq[8, A131818(n+1)])`
-/

namespace A317229.P16241248669360212446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317229.P16241248669360212446

/-! ## A317229.P756365790588237766

`A317230(eq[4, A219347(n)])`
-/

namespace A317229.P756365790588237766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317229.P756365790588237766

/-!
# A317230: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317230, there is no canonical definition to state claims against.
-/

/-! ## A317230.P1241435504929046016

`A306053(n+1)+A186745(A306100(n))`
-/

namespace A317230.P1241435504929046016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (n + 1) + A186745 (A306100 n).toNat

end

end A317230.P1241435504929046016

/-! ## A317230.P18184335683297497520

`lcm(A283666(n+1)!, A303727(n+1))`
-/

namespace A317230.P18184335683297497520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A283666 (n + 1)).toNat : ℤ) (A303727 (n + 1))

end

end A317230.P18184335683297497520

/-! ## A317230.P14066626541016130177

`A306053(n+1)+A025466(A001296(n))`
-/

namespace A317230.P14066626541016130177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (n + 1) + A025466 (A001296 n).toNat

end

end A317230.P14066626541016130177

/-! ## A317230.P9771004950693665840

`A306053(n+1)+A011737(A022171(n))`
-/

namespace A317230.P9771004950693665840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (n + 1) + A011737 (A022171 n).toNat

end

end A317230.P9771004950693665840

/-! ## A317230.P17049321246861369357

`A306053(n+1)+A025465(A023105(n))`
-/

namespace A317230.P17049321246861369357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306053 (n + 1) + A025465 (A023105 n).toNat

end

end A317230.P17049321246861369357

/-!
# A317232: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317232, there is no canonical definition to state claims against.
-/

/-! ## A317232.P15319834754754689642

`A317238(∑[4*n]+1)`
-/

namespace A317232.P15319834754754689642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317232.P15319834754754689642

/-! ## A317232.P10796271836837892571

`record[A317238(Δ[A235355(n)])]`
-/

namespace A317232.P10796271836837892571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317232.P10796271836837892571

/-! ## A317232.P14648509626896556016

`record[A317238(A330613(n+1))]`
-/

namespace A317232.P14648509626896556016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317232.P14648509626896556016

/-! ## A317232.P16404591414082665605

`A317238(A001844(n))^gcd(13, n)`
-/

namespace A317232.P16404591414082665605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (A001844 n).toNat ^ Nat.gcd 13 n

end

end A317232.P16404591414082665605

/-! ## A317232.P11862088277158068258

`record[A317238(Δ[A079824(n+1)])]`
-/

namespace A317232.P11862088277158068258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317232.P11862088277158068258

/-!
# A317233: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317233, there is no canonical definition to state claims against.
-/

/-! ## A317233.P5798585783076058331

`A317238(∑[n+2]+4)`
-/

namespace A317233.P5798585783076058331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317233.P5798585783076058331

/-! ## A317233.P8567120973139569240

`A317238(A152950(n+3))+char[18]`
-/

namespace A317233.P8567120973139569240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (A152950 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317233.P8567120973139569240

/-! ## A317233.P5116167506148167807

`A317238(A167614(n+1))+char[21]`
-/

namespace A317233.P5116167506148167807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317233.P5116167506148167807

/-! ## A317233.P9791035145080195163

`A177849(n)*A317238(A167614(n+1))`
-/

namespace A317233.P9791035145080195163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n * A317238 (A167614 (n + 1)).toNat

end

end A317233.P9791035145080195163

/-! ## A317233.P10815001379843646982

`xor(A185264(n), A317238(A167614(n+1)))`
-/

namespace A317233.P10815001379843646982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185264 n) (A317238 (A167614 (n + 1)).toNat)

end

end A317233.P10815001379843646982

/-!
# A317234: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317234, there is no canonical definition to state claims against.
-/

/-! ## A317234.P13984179139443764477

`A317238(∑[n+3]+7)`
-/

namespace A317234.P13984179139443764477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A317234.P13984179139443764477

/-! ## A317234.P652345332209076058

`A317238(A052905(n)+9)+char[17]`
-/

namespace A317234.P652345332209076058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317234.P652345332209076058

/-! ## A317234.P8649245004346934600

`A317238(A000217(n+3)+4)+char[18]`
-/

namespace A317234.P8649245004346934600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317234.P8649245004346934600

/-! ## A317234.P1228120565372312858

`A317238(A055999(n)+10)+A068640(3*n+4)`
-/

namespace A317234.P1228120565372312858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (A055999 n + 10).toNat + A068640 (3 * n + 4)

end

end A317234.P1228120565372312858

/-! ## A317234.P17735096182419467565

`A285373(2*n+3)*A317238(A055999(n)+10)`
-/

namespace A317234.P17735096182419467565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285373 (2 * n + 3) * A317238 (A055999 n + 10).toNat

end

end A317234.P17735096182419467565

/-!
# A317235: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317235, there is no canonical definition to state claims against.
-/

/-! ## A317235.P1912638975858531327

`A317238(∑[n+4]+11)`
-/

namespace A317235.P1912638975858531327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A317235.P1912638975858531327

/-! ## A317235.P16926117647780464963

`A317238(A056115(n)+11)%A304846(n+1)`
-/

namespace A317235.P16926117647780464963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317238 (A056115 n + 11).toNat) (A304846 (n + 1))

end

end A317235.P16926117647780464963

/-! ## A317235.P14826176524821988868

`A317238(Δ[A023545(n+1)])+A236241(n+1)`
-/

namespace A317235.P14826176524821988868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (f1 (n + 1) - f1 n).toNat + A236241 (n + 1)

end

end A317235.P14826176524821988868

/-! ## A317235.P5455915337123458544

`A317238(Δ[A023545(n+1)])%A304846(n+1)`
-/

namespace A317235.P5455915337123458544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317238 (f1 (n + 1) - f1 n).toNat) (A304846 (n + 1))

end

end A317235.P5455915337123458544

/-!
# A317236: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317236, there is no canonical definition to state claims against.
-/

/-! ## A317236.P3613349715287057243

`A317238(A056115(n)+21)`
-/

namespace A317236.P3613349715287057243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (A056115 n + 21).toNat

end

end A317236.P3613349715287057243

/-! ## A317236.P5849752529116583637

`A317238(∑[A020710(n)]+16)`
-/

namespace A317236.P5849752529116583637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A317236.P5849752529116583637

/-! ## A317236.P3331941515915341662

`A317238(A167499(n+4)+1)`
-/

namespace A317236.P3331941515915341662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (A167499 (n + 4) + 1).toNat

end

end A317236.P3331941515915341662

/-! ## A317236.P14985966925083186403

`A317238(A000124(n+5)+5)`
-/

namespace A317236.P14985966925083186403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (A000124 (n + 5) + 5).toNat

end

end A317236.P14985966925083186403

/-! ## A317236.P4122272328042702308

`A317238(A000217(n+5)+6)`
-/

namespace A317236.P4122272328042702308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (A000217 (n + 5) + 6).toNat

end

end A317236.P4122272328042702308

/-!
# A317237: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317237, there is no canonical definition to state claims against.
-/

/-! ## A317237.P5931789686065924096

`A317238(A167487(n+5))`
-/

namespace A317237.P5931789686065924096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (A167487 (n + 5)).toNat

end

end A317237.P5931789686065924096

/-! ## A317237.P5785424358851159325

`A317238(A056119(n)+28)`
-/

namespace A317237.P5785424358851159325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (A056119 n + 28).toNat

end

end A317237.P5785424358851159325

/-! ## A317237.P12137618609514827272

`A317238(eq[11, A066657(n)])`
-/

namespace A317237.P12137618609514827272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317237.P12137618609514827272

/-! ## A317237.P2362226730656954911

`A317238(A166136(n+5)+1)`
-/

namespace A317237.P2362226730656954911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (A166136 (n + 5) + 1).toNat

end

end A317237.P2362226730656954911

/-! ## A317237.P7799036556452191615

`A317238(A167499(n+5)+2)`
-/

namespace A317237.P7799036556452191615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317238 (A167499 (n + 5) + 2).toNat

end

end A317237.P7799036556452191615

/-!
# A317238: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317238, there is no canonical definition to state claims against.
-/

/-! ## A317238.P10551071543640548690

`A306060(n+1)+A186034(A022167(n))`
-/

namespace A317238.P10551071543640548690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (n + 1) + A186034 (A022167 n).toNat

end

end A317238.P10551071543640548690

/-! ## A317238.P3600134215888684342

`A306060(n+1)+A173920(A173917(n))`
-/

namespace A317238.P3600134215888684342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (n + 1) + A173920 (A173917 n).toNat

end

end A317238.P3600134215888684342

/-! ## A317238.P13959540795930662705

`A306060(n+1)+A186034(A203346(n+1))`
-/

namespace A317238.P13959540795930662705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (n + 1) + A186034 (A203346 (n + 1)).toNat

end

end A317238.P13959540795930662705

/-! ## A317238.P23523935161122549

`A306060(n+1)+A025465(A003099(n))`
-/

namespace A317238.P23523935161122549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 (n + 1) + A025465 (A003099 n).toNat

end

end A317238.P23523935161122549

/-!
# A317239: Number of partitions of n into distinct parts with an even sum of Hamming weights.

The programs for A317239, there is no canonical definition to state claims against.
-/

/-! ## A317239.P15953614434136511592

`A000009(n)-A316996(n)`
-/

namespace A317239.P15953614434136511592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A316996 n

end

end A317239.P15953614434136511592

/-! ## A317239.P16997119839667264533

`abs(A081360(n))-A316996(n)`
-/

namespace A317239.P16997119839667264533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A316996 n

end

end A317239.P16997119839667264533

/-! ## A317239.P9247102252296921530

`∑[A087897(n)]-A316996(n)`
-/

namespace A317239.P9247102252296921530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A316996 n

end

end A317239.P9247102252296921530

/-! ## A317239.P8437671304021317855

`A111133(n)+1-A316996(n)`
-/

namespace A317239.P8437671304021317855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A316996 n)

end

end A317239.P8437671304021317855

/-! ## A317239.P5403947571335169672

`A025147(n)+A096765(n)-A316996(n)`
-/

namespace A317239.P5403947571335169672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n + (A096765 n - A316996 n)

end

end A317239.P5403947571335169672

/-! ## A317239.P5170316356353270447

`A003114(n)+A238708(n)-A316996(n)`
-/

namespace A317239.P5170316356353270447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n + (A238708 n - A316996 n)

end

end A317239.P5170316356353270447

/-! ## A317239.P17312935688901813441

`A035363(n)+A282892(n)-A316996(n)`
-/

namespace A317239.P17312935688901813441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A282892 n - A316996 n)

end

end A317239.P17312935688901813441

/-! ## A317239.P16680839000926359848

`A239239(n)+A239243(n)-A316996(n)`
-/

namespace A317239.P16680839000926359848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239239 n + (A239243 n - A316996 n)

end

end A317239.P16680839000926359848

/-! ## A317239.P3464446451573056642

`A239240(n)+A239242(n)-A316996(n)`
-/

namespace A317239.P3464446451573056642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239240 n + (A239242 n - A316996 n)

end

end A317239.P3464446451573056642

/-! ## A317239.P9732751761366127871

`A035457(2*n)-A316996(n)`
-/

namespace A317239.P9732751761366127871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A316996 n

end

end A317239.P9732751761366127871

/-! ## A317239.P964877837938517954

`A332285(n)+A332286(n)-A316996(n)`
-/

namespace A317239.P964877837938517954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332285 n + (A332286 n - A316996 n)

end

end A317239.P964877837938517954

/-! ## A317239.P13732712357355225878

`A219347(A000124(n))-A316996(n)`
-/

namespace A317239.P13732712357355225878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A000124 n).toNat - A316996 n

end

end A317239.P13732712357355225878

/-!
# A317240: Number of representations of n of the form 1 + p1 * (1 + p2* ... * (1 + p_j)...), where [p1, ..., p_j] is a (possibly empty) list of (not necessarily distinct) primes.

The programs for A317240, there is no canonical definition to state claims against.
-/

/-! ## A317240.P13290154292752356934

`A072376(A167865(n))%A331150(4*n+6)`
-/

namespace A317240.P13290154292752356934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072376 (A167865 n).toNat) (A331150 (4 * n + 6))

end

end A317240.P13290154292752356934

/-! ## A317240.P2618841213839563082

`A002324(n+1)^A002324(A263673(A296612(n)))`
-/

namespace A317240.P2618841213839563082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002324 (n + 1) : ℚ) ^ (A002324 (A263673 (A296612 n).toNat).toNat : ℤ)

end

end A317240.P2618841213839563082

/-! ## A317240.P18074245312238498394

`A327144(lcm(4, A085265(n+1)))`
-/

namespace A317240.P18074245312238498394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 (Int.lcm 4 (A085265 (n + 1)))

end

end A317240.P18074245312238498394

/-! ## A317240.P9417694046973305339

`Δ[A127321(∑[A266543(n+1)])]`
-/

namespace A317240.P9417694046973305339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266543 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317240.P9417694046973305339

/-!
# A317241: Number of representations of n of the form 1 + p1 * (1 + p2* ... * (1 + p_j)...), where [p1, ..., p_j] is a (possibly empty) list of distinct primes.

The programs for A317241, there is no canonical definition to state claims against.
-/

/-! ## A317241.P935595252577918730

`ceil((1-C(2, n)-A220400(2*n))^n/3)^n`
-/

namespace A317241.P935595252577918730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 - (Nat.choose 2 n : ℤ) - A220400 (2 * n)) ^ n : ℚ) / 3⌉ ^ n

end

end A317241.P935595252577918730

/-! ## A317241.P5993718719125306851

`A103583(A364138(n+1))`
-/

namespace A317241.P5993718719125306851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103583 (A364138 (n + 1)).toNat

end

end A317241.P5993718719125306851

/-! ## A317241.P2615398163578859408

`and(1, A201163(A331888(n)))`
-/

namespace A317241.P2615398163578859408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A201163 (A331888 n).toNat)

end

end A317241.P2615398163578859408

/-! ## A317241.P3996867937740263247

`A014578(A351201(2*(n+1))+A000045(n+2))`
-/

namespace A317241.P3996867937740263247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 (A351201 (2 * (n + 1)) + A000045 (n + 2)).toNat

end

end A317241.P3996867937740263247

/-! ## A317241.P3872804024480341835

`A285960(A285980(2*n+5)+A003114(3*(n+1)))`
-/

namespace A317241.P3872804024480341835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285960 (A285980 (2 * n + 5) + A003114 (3 * (n + 1))).toNat

end

end A317241.P3872804024480341835

/-!
# A317242: Positive integers having no representation of the form 1 + p1 * (1 + p2* ... * (1 + p_j)...), where [p1, ..., p_j] is a (possibly empty) list of distinct primes.

The programs for A317242, there is no canonical definition to state claims against.
-/

/-! ## A317242.P3094988499561551145

`record[gcd(n, A317241(n+1))+1]`
-/

namespace A317242.P3094988499561551145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A317241 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317242.P3094988499561551145

/-! ## A317242.P17865339141572292541

`record[(n+2)/A317391(A317241(n+2)+1)]`
-/

namespace A317242.P17865339141572292541
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A317391 (A317241 (n + 2) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317242.P17865339141572292541

/-! ## A317242.P1877580040003693251

`eq[0, A317241(n+1)]+1`
-/

namespace A317242.P1877580040003693251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A317242.P1877580040003693251

/-! ## A317242.P16433148286047756812

`eq[0, A317241(A028310(n))]`
-/

namespace A317242.P16433148286047756812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317242.P16433148286047756812

/-! ## A317242.P1422898580048486814

`A020725(eq[0, A317241(n+1)])`
-/

namespace A317242.P1422898580048486814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317242.P1422898580048486814

/-! ## A317242.P182302044023918118

`eq[0, A317241(A065033(2*n))]`
-/

namespace A317242.P182302044023918118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317242.P182302044023918118

/-!
# A317243: a(n) is the number of open intervals (m, m+1) containing at least one fraction n/k, where m and k are integers between 1 and n.

The programs for A317243, there is no canonical definition to state claims against.
-/

/-! ## A317243.P9326634569479992734

`ceil(2*sqrt(n+1))-2-floor(∏{e}[n+1, #+1]/2)`
-/

namespace A317243.P9326634569479992734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (n + 1 : ℝ)⌉ - 2 - ⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌋

end

end A317243.P9326634569479992734

/-! ## A317243.P4980794963471248606

`A236627(n+1)+round(sqrt(n+1))-1`
-/

namespace A317243.P4980794963471248606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236627 (n + 1) + (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1)

end

end A317243.P4980794963471248606

/-! ## A317243.P5425743400135341354

`floor(1/Δ[sqrt(n)])-1-A056924(n+1)`
-/

namespace A317243.P5425743400135341354
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (f1 (n + 1) - f1 n)⌋ - 1 - A056924 (n + 1)

end

end A317243.P5425743400135341354

/-! ## A317243.P2339665800772946745

`floor(1/Δ[sqrt(n)])-A008619(∏{e}[n+1, #+1])`
-/

namespace A317243.P2339665800772946745
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (f1 (n + 1) - f1 n)⌋ - A008619 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A317243.P2339665800772946745

/-! ## A317243.P514536373261513335

`ceil(2*(sqrt(n+1)-1))-A211263(2*(n+1))`
-/

namespace A317243.P514536373261513335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * (Real.sqrt (n + 1 : ℝ) - 1)⌉ - A211263 (2 * (n + 1))

end

end A317243.P514536373261513335

/-! ## A317243.P8917850819898251066

`ceil(2*(sqrt(n+1)-1))-A004526(∏{e}[n+1, #+1])`
-/

namespace A317243.P8917850819898251066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * (Real.sqrt (n + 1 : ℝ) - 1)⌉ - A004526 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A317243.P8917850819898251066

/-! ## A317243.P13250234321365445777

`ceil(2*(sqrt(n+1)-1))-A123108(∏{e}[n+1, #+1])`
-/

namespace A317243.P13250234321365445777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * (Real.sqrt (n + 1 : ℝ) - 1)⌉ - A123108 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A317243.P13250234321365445777

/-! ## A317243.P11430263716767973528

`A259361(n)+A236627(n+1)`
-/

namespace A317243.P11430263716767973528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 n + A236627 (n + 1)

end

end A317243.P11430263716767973528

/-! ## A317243.P17475703515634404405

`A078152(n+1)+A033831(n+1)`
-/

namespace A317243.P17475703515634404405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078152 (n + 1) + A033831 (n + 1)

end

end A317243.P17475703515634404405

/-! ## A317243.P18049556790875534923

`A000267(n)-(A056924(n+1)+1)`
-/

namespace A317243.P18049556790875534923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n - (A056924 (n + 1) + 1)

end

end A317243.P18049556790875534923

/-!
# A317244: For n >= 3, smallest prime number N such that for every prime p >= N, every element in Z_p can be expressed as a sum of two n-gonal numbers mod p, without allowing zero as a summand.

The programs for A317244, there is no canonical definition to state claims against.
-/

/-! ## A317244.P4563121092940619637

`A117366(7*A245474(n))`
-/

namespace A317244.P4563121092940619637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (7 * A245474 n).toNat

end

end A317244.P4563121092940619637

/-! ## A317244.P16884484020107308369

`A117366(lcm(7, A245474(n)))`
-/

namespace A317244.P16884484020107308369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (Int.lcm 7 (A245474 n))

end

end A317244.P16884484020107308369

/-!
# A317246: Heinz numbers of supernormal integer partitions.

The programs for A317246, there is no canonical definition to state claims against.
-/

/-! ## A317246.P14754773270982588928

`A332276(A328617(n+1))`
-/

namespace A317246.P14754773270982588928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332276 (A328617 (n + 1)).toNat

end

end A317246.P14754773270982588928

/-! ## A317246.P4227706783319764701

`A332276(A351831(n+2))`
-/

namespace A317246.P4227706783319764701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332276 (A351831 (n + 2)).toNat

end

end A317246.P4227706783319764701

/-! ## A317246.P5920896678372985790

`A332276(A135156(2*n))`
-/

namespace A317246.P5920896678372985790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332276 (A135156 (2 * n)).toNat

end

end A317246.P5920896678372985790

/-! ## A317246.P12394590086769603506

`A106617(16*A332276(n+1))`
-/

namespace A317246.P12394590086769603506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (16 * A332276 (n + 1)).toNat

end

end A317246.P12394590086769603506

/-! ## A317246.P10222541966443508975

`A332276((n+1)*(A061858(n)+1))`
-/

namespace A317246.P10222541966443508975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332276 ((n + 1 : ℤ) * (A061858 n + 1)).toNat

end

end A317246.P10222541966443508975

/-!
# A317248: Semiprimes which when truncated arbitrarily on either side in base 10 yield semiprimes.

The programs for A317248, there is no canonical definition to state claims against.
-/

/-! ## A317248.P9143211763529424942

`A086698(∑[Δ[A087027(n)]%8])`
-/

namespace A317248.P9143211763529424942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087027 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086698 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A317248.P9143211763529424942

/-! ## A317248.P14959090313111460093

`∩[A086698(n+1), A107342(n+1)]`
-/

namespace A317248.P14959090313111460093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317248.P14959090313111460093

/-! ## A317248.P12131423412620669789

`∪[A086698(n+1), A086698(A302796(n+1))]`
-/

namespace A317248.P12131423412620669789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086698 (A302796 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317248.P12131423412620669789

/-! ## A317248.P3067043609682428650

`∩[A086698(n+1), A242751(n+1)]`
-/

namespace A317248.P3067043609682428650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317248.P3067043609682428650

/-! ## A317248.P17479287066887347526

`A086698(A087027(n+1))`
-/

namespace A317248.P17479287066887347526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086698 (A087027 (n + 1)).toNat

end

end A317248.P17479287066887347526

/-!
# A317250: Record values in A204911.

The programs for A317250, there is no canonical definition to state claims against.
-/

/-! ## A317250.P14346216085955645925

`A204911(A317249(n+1))`
-/

namespace A317250.P14346216085955645925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204911 (A317249 (n + 1)).toNat

end

end A317250.P14346216085955645925

/-! ## A317250.P2802207644842170961

`record[A204911(2*n+1)]`
-/

namespace A317250.P2802207644842170961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204911 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317250.P2802207644842170961

/-! ## A317250.P17945097173946743999

`p?[record[A204911(A005408(n))]]`
-/

namespace A317250.P17945097173946743999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204911 (A005408 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A317250.P17945097173946743999

/-! ## A317250.P668649052088995816

`p?[record[A204911(A267872(n))]]`
-/

namespace A317250.P668649052088995816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204911 (A267872 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A317250.P668649052088995816

/-!
# A317251: 

The programs for A317251, there is no canonical definition to state claims against.
-/

/-! ## A317251.P15826851737651508834

`(2^(n+1))!/A000203(∏[2*n+1])`
-/

namespace A317251.P15826851737651508834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 ^ (n + 1)) : ℚ) / (A000203 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A317251.P15826851737651508834

/-!
# A317252: (Number of 4 X 4 pandiagonal magic squares with distinct positive entries less than n)/384.

The programs for A317252, there is no canonical definition to state claims against.
-/

/-! ## A317252.P8369107425704906356

`A256976(2*n+1)+A174624(A264172(2*n+1))`
-/

namespace A317252.P8369107425704906356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256976 (2 * n + 1) + A174624 (A264172 (2 * n + 1)).toNat

end

end A317252.P8369107425704906356

/-!
# A317253: Indices m for which A317414(m) = 1.

The programs for A317253, the canonical program `A317253.P478334919827293391` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317253 has offset 1).

The definition of A317253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317253.P478334919827293391

`∪[A317331(n+1), A317332(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A317253

/-- `∪[A317331(n+1), A317332(n+1)]` -/
def P478334919827293391.Spec : Prop :=
  ∀ n, (P478334919827293391.a n : ℤ) = A317253 (n + 1)

theorem P478334919827293391.correct : P478334919827293391.Spec := by
  intro n
  simp only [A317253, Nat.add_sub_cancel]

end A317253

/-! ## A317253.P13147279646844597551

`∪[eq[1, A004200(n+1)], A317332(n+1)]`
-/

namespace A317253.P13147279646844597551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A317253.P13147279646844597551

namespace A317253

/-- `∪[eq[1, A004200(n+1)], A317332(n+1)]` -/
def P13147279646844597551.Spec : Prop :=
  ∀ n, (P13147279646844597551.a n : ℤ) = A317253 (n + 1)

end A317253

/-! ## A317253.P1339962308868399121

`∪[eq[2, A006464(n+1)], A317332(n+1)]`
-/

namespace A317253.P1339962308868399121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A317253.P1339962308868399121

namespace A317253

/-- `∪[eq[2, A006464(n+1)], A317332(n+1)]` -/
def P1339962308868399121.Spec : Prop :=
  ∀ n, (P1339962308868399121.a n : ℤ) = A317253 (n + 1)

end A317253

/-! ## A317253.P3616909117477661842

`∪[A317332(n+1), A014710(n)+4*n+2]`
-/

namespace A317253.P3616909117477661842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 n + (4 * n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317253.P3616909117477661842

namespace A317253

/-- `∪[A317332(n+1), A014710(n)+4*n+2]` -/
def P3616909117477661842.Spec : Prop :=
  ∀ n, (P3616909117477661842.a n : ℤ) = A317253 (n + 1)

end A317253

/-! ## A317253.P3592467840997895437

`∪[8*n+10-A014709(n)², A317331(n+1)]`
-/

namespace A317253.P3592467840997895437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 10 : ℤ) - A014709 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317253.P3592467840997895437

namespace A317253

/-- `∪[8*n+10-A014709(n)², A317331(n+1)]` -/
def P3592467840997895437.Spec : Prop :=
  ∀ n, (P3592467840997895437.a n : ℤ) = A317253 (n + 1)

end A317253

/-! ## A317253.P18218888652083306927

`A317627(n+1)+∑[n²%3+2]`
-/

namespace A317253.P18218888652083306927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317627 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A317253.P18218888652083306927

namespace A317253

/-- `A317627(n+1)+∑[n²%3+2]` -/
def P18218888652083306927.Spec : Prop :=
  ∀ n, P18218888652083306927.a n = A317253 (n + 1)

end A317253

/-! ## A317253.P5495868530567859101

`A317627(n+1)+A236535(n+1)`
-/

namespace A317253.P5495868530567859101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317627 (n + 1) + A236535 (n + 1)

end

end A317253.P5495868530567859101

namespace A317253

/-- `A317627(n+1)+A236535(n+1)` -/
def P5495868530567859101.Spec : Prop :=
  ∀ n, P5495868530567859101.a n = A317253 (n + 1)

end A317253

/-! ## A317253.P12872076036320570270

`A047537(n+1)+A317627(n+1)+1`
-/

namespace A317253.P12872076036320570270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047537 (n + 1) + (A317627 (n + 1) + 1)

end

end A317253.P12872076036320570270

namespace A317253

/-- `A047537(n+1)+A317627(n+1)+1` -/
def P12872076036320570270.Spec : Prop :=
  ∀ n, P12872076036320570270.a n = A317253 (n + 1)

end A317253

/-! ## A317253.P12108834242451794015

`A317627(n+1)+A004773(2*(n+1))`
-/

namespace A317253.P12108834242451794015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317627 (n + 1) + A004773 (2 * (n + 1))

end

end A317253.P12108834242451794015

namespace A317253

/-- `A317627(n+1)+A004773(2*(n+1))` -/
def P12108834242451794015.Spec : Prop :=
  ∀ n, P12108834242451794015.a n = A317253 (n + 1)

end A317253

/-!
# A317254: a(n) is the smallest integer such that for all s >= a(n), there are at least n-1 different partitions of s into n parts, namely {x_{11},x_{12},...,x_{1n}}, {x_{21},x_{22},...,x_{2n}},..., and {x_{n-1,1},x_{n-1,2},...,x_{n-1,n}}, such that the products of every set are equal.

The programs for A317254, there is no canonical definition to state claims against.
-/

/-! ## A317254.P11522270172778459661

`A353280(A045918(n+1))-A045918(n+1)`
-/

namespace A317254.P11522270172778459661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353280 (A045918 (n + 1)).toNat - A045918 (n + 1)

end

end A317254.P11522270172778459661

/-!
# A317256: Number of alternately co-strong integer partitions of n.

The programs for A317256, there is no canonical definition to state claims against.
-/

/-! ## A317256.P8622222083717924680

`A100883(n)-A095111(A045623(n))`
-/

namespace A317256.P8622222083717924680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100883 n - A095111 (A045623 n).toNat

end

end A317256.P8622222083717924680

/-! ## A317256.P17153748275592233331

`A100883(n)-A342023(A280781(n))`
-/

namespace A317256.P17153748275592233331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100883 n - A342023 (A280781 n).toNat

end

end A317256.P17153748275592233331

/-! ## A317256.P10567407505426884439

`or(A000035(A051286(n)), A341154(n))`
-/

namespace A317256.P10567407505426884439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A051286 n).toNat) (A341154 n)

end

end A317256.P10567407505426884439

/-! ## A317256.P15687110061897883600

`A100883(n)+∑[A178798(A000096(n))]`
-/

namespace A317256.P15687110061897883600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100883 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317256.P15687110061897883600

/-! ## A317256.P9055801612787846127

`A100883(n)-A137189(A338708(n+1))%2`
-/

namespace A317256.P9055801612787846127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100883 n - Int.tmod (A137189 (A338708 (n + 1)).toNat) 2

end

end A317256.P9055801612787846127

/-!
# A317258: Heinz numbers of integer partitions that are not totally nonincreasing.

The programs for A317258, there is no canonical definition to state claims against.
-/

/-! ## A317258.P1578910605036715648

`∪[A071365(n+1), A160134(n+1)]`
-/

namespace A317258.P1578910605036715648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317258.P1578910605036715648

/-! ## A317258.P8901000622350187697

`∪[A071365(n+1), A179643(n+1)]`
-/

namespace A317258.P8901000622350187697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317258.P8901000622350187697

/-! ## A317258.P5162703041018239537

`∪[A071365(n+1), A393947(n+1)]`
-/

namespace A317258.P5162703041018239537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317258.P5162703041018239537

/-!
# A317260: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317260, there is no canonical definition to state claims against.
-/

/-! ## A317260.P10591384583281075153

`A317266(∑[4*n]+1)`
-/

namespace A317260.P10591384583281075153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317260.P10591384583281075153

/-! ## A317260.P9849606468464315555

`record[A317266(Δ[A235355(n)])]`
-/

namespace A317260.P9849606468464315555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317260.P9849606468464315555

/-! ## A317260.P1919569381299785944

`record[A317266(A330613(n+1))]`
-/

namespace A317260.P1919569381299785944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317260.P1919569381299785944

/-! ## A317260.P8490934303688120946

`A317266(A001844(n))+char[11]`
-/

namespace A317260.P8490934303688120946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317260.P8490934303688120946

/-! ## A317260.P12542201928167707261

`record[A003982(n)*A317266(n+1)]`
-/

namespace A317260.P12542201928167707261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A317266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317260.P12542201928167707261

/-!
# A317261: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317261, there is no canonical definition to state claims against.
-/

/-! ## A317261.P220417222963084512

`A317266(∑[n+2]+4)`
-/

namespace A317261.P220417222963084512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317261.P220417222963084512

/-! ## A317261.P12677944636685434387

`A317266(A167614(n+1))+char[20]`
-/

namespace A317261.P12677944636685434387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317261.P12677944636685434387

/-! ## A317261.P17219095916477631135

`A317266(A055998(n)+6)+char[20]`
-/

namespace A317261.P17219095916477631135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317261.P17219095916477631135

/-! ## A317261.P8760163363672899490

`record[A023531(n)*A317266(n+4)]`
-/

namespace A317261.P8760163363672899490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A317266 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317261.P8760163363672899490

/-! ## A317261.P9084146553289629950

`record[A317266(n+4)/A126954(n)]`
-/

namespace A317261.P9084146553289629950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317266 (n + 4) : ℚ) / (A126954 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317261.P9084146553289629950

/-!
# A317262: Number of n X 4 0..1 arrays with every element unequal to 0, 1, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317262, there is no canonical definition to state claims against.
-/

/-! ## A317262.P13912236685709877104

`A317266(∑[n+3]+7)`
-/

namespace A317262.P13912236685709877104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A317262.P13912236685709877104

/-! ## A317262.P12385979989597262912

`record[A317266(n+5)/A038207(n)]`
-/

namespace A317262.P12385979989597262912
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317266 (n + 5) : ℚ) / (A038207 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317262.P12385979989597262912

/-! ## A317262.P7034310185983139866

`record[A154990(n+1)*A317266(n+5)]`
-/

namespace A317262.P7034310185983139866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) * A317266 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317262.P7034310185983139866

/-! ## A317262.P8119169459508516569

`A317266(A167614(n+2)+1)%A059044(n+1)`
-/

namespace A317262.P8119169459508516569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317266 (A167614 (n + 2) + 1).toNat) (A059044 (n + 1))

end

end A317262.P8119169459508516569

/-! ## A317262.P7859998875659283127

`A317266(A000124(n+4)-4)+char[16]`
-/

namespace A317262.P7859998875659283127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (A000124 (n + 4) - 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317262.P7859998875659283127

/-!
# A317263: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317263, there is no canonical definition to state claims against.
-/

/-! ## A317263.P5063880796450900176

`A317266(A155212(n)+13)`
-/

namespace A317263.P5063880796450900176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (A155212 n + 13).toNat

end

end A317263.P5063880796450900176

/-! ## A317263.P1164425155503636319

`A317266(A056000(n)+15)`
-/

namespace A317263.P1164425155503636319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (A056000 n + 15).toNat

end

end A317263.P1164425155503636319

/-! ## A317263.P4466707052942610212

`A317266(eq[7, A066657(n)])`
-/

namespace A317263.P4466707052942610212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317263.P4466707052942610212

/-! ## A317263.P12578894874500875989

`A317266(A145018(n+5)+1)`
-/

namespace A317263.P12578894874500875989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (A145018 (n + 5) + 1).toNat

end

end A317263.P12578894874500875989

/-!
# A317264: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317264, there is no canonical definition to state claims against.
-/

/-! ## A317264.P2187157487685471123

`A317266(A056115(n)+21)`
-/

namespace A317264.P2187157487685471123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (A056115 n + 21).toNat

end

end A317264.P2187157487685471123

/-! ## A317264.P5428522158391911657

`A317266(∑[A020710(n)]+16)`
-/

namespace A317264.P5428522158391911657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A317264.P5428522158391911657

/-! ## A317264.P18432322780391327317

`A317266(A167499(n+4)+1)`
-/

namespace A317264.P18432322780391327317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (A167499 (n + 4) + 1).toNat

end

end A317264.P18432322780391327317

/-! ## A317264.P15194614998541114407

`A317266(A000124(n+5)+5)`
-/

namespace A317264.P15194614998541114407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (A000124 (n + 5) + 5).toNat

end

end A317264.P15194614998541114407

/-! ## A317264.P3946067732198124257

`A317266(A253145(n+4)+6)`
-/

namespace A317264.P3946067732198124257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (A253145 (n + 4) + 6).toNat

end

end A317264.P3946067732198124257

/-!
# A317265: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317265, there is no canonical definition to state claims against.
-/

/-! ## A317265.P14558411673655844054

`A317266(A056119(n)+28)`
-/

namespace A317265.P14558411673655844054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (A056119 n + 28).toNat

end

end A317265.P14558411673655844054

/-! ## A317265.P11864488181470940117

`A317266(eq[11, A066657(n)])`
-/

namespace A317265.P11864488181470940117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317265.P11864488181470940117

/-! ## A317265.P6858965384227193682

`A317266(A167499(n+5)+2)`
-/

namespace A317265.P6858965384227193682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (A167499 (n + 5) + 2).toNat

end

end A317265.P6858965384227193682

/-! ## A317265.P3925949027189754180

`A317266(A000124(n+6)+6)`
-/

namespace A317265.P3925949027189754180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (A000124 (n + 6) + 6).toNat

end

end A317265.P3925949027189754180

/-! ## A317265.P17283512795144466951

`A317266(A000217(n+6)+7)`
-/

namespace A317265.P17283512795144466951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317266 (A000217 (n + 6) + 7).toNat

end

end A317265.P17283512795144466951

/-!
# A317266: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317266, there is no canonical definition to state claims against.
-/

/-! ## A317266.P17987247808399361491

`A316311(n+1)+A309785(A299321(n+1))`
-/

namespace A317266.P17987247808399361491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (n + 1) + A309785 (A299321 (n + 1)).toNat

end

end A317266.P17987247808399361491

/-! ## A317266.P9660505274180292087

`or(A200214(A197561(n+1)), A316311(n+1))`
-/

namespace A317266.P9660505274180292087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A200214 (A197561 (n + 1)).toNat) (A316311 (n + 1))

end

end A317266.P9660505274180292087

/-! ## A317266.P16000177170004034028

`A316311(n+1)+A025466(A270890(n+1))`
-/

namespace A317266.P16000177170004034028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (n + 1) + A025466 (A270890 (n + 1)).toNat

end

end A317266.P16000177170004034028

/-! ## A317266.P6636108397547869483

`or(A316311(n+1), A316864(A066607(n+1)))`
-/

namespace A317266.P6636108397547869483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A316311 (n + 1)) (A316864 (A066607 (n + 1)).toNat)

end

end A317266.P6636108397547869483

/-! ## A317266.P13989801844844781432

`A316311(n+1)+A075206(n+1)%A117358(n+1)`
-/

namespace A317266.P13989801844844781432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (n + 1) + Int.tmod (A075206 (n + 1)) (A117358 (n + 1))

end

end A317266.P13989801844844781432

/-!
# A317267: Number of nXn 0..1 arrays with every element unequal to 0, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317267, there is no canonical definition to state claims against.
-/

/-! ## A317267.P15678219472466581139

`A317271(∑[4*n]+1)`
-/

namespace A317267.P15678219472466581139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317267.P15678219472466581139

/-! ## A317267.P14139188494787523982

`record[A317271(∑[A266981(n)])]`
-/

namespace A317267.P14139188494787523982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317267.P14139188494787523982

/-! ## A317267.P16382313324226458255

`record[A317271(A272267(n+1))]`
-/

namespace A317267.P16382313324226458255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317267.P16382313324226458255

/-! ## A317267.P9543423985961748728

`record[A317271(A330613(n+1))]`
-/

namespace A317267.P9543423985961748728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317267.P9543423985961748728

/-! ## A317267.P10803838344553178915

`record[A003982(n)*A317271(n+1)]`
-/

namespace A317267.P10803838344553178915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A317271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317267.P10803838344553178915

/-!
# A317268: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317268, there is no canonical definition to state claims against.
-/

/-! ## A317268.P543353068717514850

`A317271(∑[n+4]+11)`
-/

namespace A317268.P543353068717514850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A317268.P543353068717514850

/-! ## A317268.P3790708212824876120

`A317271(A374005(n+1))%A183320(n+1)`
-/

namespace A317268.P3790708212824876120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317271 (A374005 (n + 1)).toNat) (A183320 (n + 1))

end

end A317268.P3790708212824876120

/-!
# A317269: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317269, there is no canonical definition to state claims against.
-/

/-! ## A317269.P5301079057713688453

`A317271(A374007(n+1))`
-/

namespace A317269.P5301079057713688453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (A374007 (n + 1)).toNat

end

end A317269.P5301079057713688453

/-! ## A317269.P8021131297045623695

`A317271(A056115(n)+21)`
-/

namespace A317269.P8021131297045623695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (A056115 n + 21).toNat

end

end A317269.P8021131297045623695

/-! ## A317269.P2912960427012600146

`A317271(A046691(n+3)+10)`
-/

namespace A317269.P2912960427012600146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (A046691 (n + 3) + 10).toNat

end

end A317269.P2912960427012600146

/-! ## A317269.P7714145417550477067

`A317271(eq[6, A130270(n+1)])`
-/

namespace A317269.P7714145417550477067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317269.P7714145417550477067

/-! ## A317269.P529201506881639131

`A317271(eq[7, A131818(n+1)])`
-/

namespace A317269.P529201506881639131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317269.P529201506881639131

/-!
# A317270: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 4, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317270, there is no canonical definition to state claims against.
-/

/-! ## A317270.P7402944711824938071

`A317271(A374008(n+1))`
-/

namespace A317270.P7402944711824938071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (A374008 (n + 1)).toNat

end

end A317270.P7402944711824938071

/-! ## A317270.P7360445935216872400

`A317271(eq[8, A131818(n+1)])`
-/

namespace A317270.P7360445935216872400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317270.P7360445935216872400

/-! ## A317270.P1564566638831709195

`A317271(eq[4, A219347(n)])`
-/

namespace A317270.P1564566638831709195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317270.P1564566638831709195

/-! ## A317270.P8552321771724699438

`A317271(eq[6, A193592(n)])`
-/

namespace A317270.P8552321771724699438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317270.P8552321771724699438

/-! ## A317270.P4725914636778207159

`A317271(eq[7, A200370(n+1)])`
-/

namespace A317270.P4725914636778207159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317270.P4725914636778207159

/-!
# A317273: Number of permutations of [n*(n+1)/2] whose lengths of increasing runs are the positive integers from 1 to n.

The programs for A317273, there is no canonical definition to state claims against.
-/

/-! ## A317273.P1475360312726250006

`A317327(∑[n²]+n)`
-/

namespace A317273.P1475360312726250006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317327 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A317273.P1475360312726250006

/-!
# A317274: a(n) = Sum_{k=0..n} binomial(n,k)*Stirling1(n,k).

The programs for A317274, there is no canonical definition to state claims against.
-/

/-! ## A317274.P9553571485643897877

`A176154(∑[n])-1`
-/

namespace A317274.P9553571485643897877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176154 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A317274.P9553571485643897877

/-! ## A317274.P12391399376352934531

`A176153(∑[n]+n)`
-/

namespace A317274.P12391399376352934531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176153 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A317274.P12391399376352934531

/-! ## A317274.P1794810538628906816

`or(A000007(n), A176153(A000096(n)))`
-/

namespace A317274.P1794810538628906816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A176153 (A000096 n).toNat)

end

end A317274.P1794810538628906816

/-! ## A317274.P17306339372664039228

`A176153(A000096(n))+A000007(n+1)`
-/

namespace A317274.P17306339372664039228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176153 (A000096 n).toNat + A000007 (n + 1)

end

end A317274.P17306339372664039228

/-! ## A317274.P17135467530010861965

`A176153(A000096(n))+A000038(n+1)`
-/

namespace A317274.P17135467530010861965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176153 (A000096 n).toNat + A000038 (n + 1)

end

end A317274.P17135467530010861965

/-!
# A317275: a(1) = 1; a(n) = Sum_{k=1..n-1} |Stirling1(n-1,k)|*a(k)*a(n-k).

The programs for A317275, there is no canonical definition to state claims against.
-/

/-! ## A317275.P3485432629082721775

`A316983(A319616(n))%(A049311(n+1)+A006126(n))`
-/

namespace A317275.P3485432629082721775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316983 (A319616 n).toNat) (A049311 (n + 1) + A006126 n)

end

end A317275.P3485432629082721775

/-!
# A317276: a(n) = Sum_{k=0..n} binomial(n-1,k-1)*binomial(2*k,k)*n!/(k + 1)!.

The programs for A317276, there is no canonical definition to state claims against.
-/

/-! ## A317276.P16718824346528934841

`A057353(A344098(n)+A028421(n))`
-/

namespace A317276.P16718824346528934841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A344098 n + A028421 n).toNat

end

end A317276.P16718824346528934841

/-! ## A317276.P6814709857045050813

`A352654(n)+A352632(A143968(n))`
-/

namespace A317276.P6814709857045050813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352654 n + A352632 (A143968 n).toNat

end

end A317276.P6814709857045050813

/-!
# A317277: a(n) = Sum_{k=0..n} binomial(n-1,k-1)*k^n*n!/k!; a(0) = 1.

The programs for A317277, there is no canonical definition to state claims against.
-/

/-! ## A317277.P12049459214003578798

`A004151(A193265(n))`
-/

namespace A317277.P12049459214003578798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A193265 n).toNat

end

end A317277.P12049459214003578798

/-!
# A317278: a(n) = Sum_{k=0..n} (-1)^(n-k)*binomial(n-1,k-1)*k^n*n!/k!.

The programs for A317278, there is no canonical definition to state claims against.
-/

/-! ## A317278.P12608431480118511870

`A324701(A023432(2*n+1))-A059945(n+1)`
-/

namespace A317278.P12608431480118511870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324701 (A023432 (2 * n + 1)).toNat - A059945 (n + 1)

end

end A317278.P12608431480118511870

/-!
# A317279: a(n) = Sum_{k=0..n} (-1)^(n-k)*binomial(n-1,k-1)*n^k*n!/k!.

The programs for A317279, there is no canonical definition to state claims against.
-/

/-! ## A317279.P6421769657792350286

`n*a(floor(acot(n)))*A334316(n)` with `a(0)=1`
-/

namespace A317279.P6421769657792350286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat * A334316 n

end

end A317279.P6421769657792350286

/-! ## A317279.P17652810114435557796

`n*a(A025444(n))*A334316(n)` with `a(0)=1`
-/

namespace A317279.P17652810114435557796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (A025444 n).toNat * A334316 n

end

end A317279.P17652810114435557796

/-! ## A317279.P11893978333561184316

`n*A008683(a(n%2))*A334316(n)` with `a(0)=1, a(1)=1`
-/

namespace A317279.P11893978333561184316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A008683 (a (n % 2)).toNat * A334316 n

end

end A317279.P11893978333561184316

/-! ## A317279.P9697439364803679205

`A028310(n)*A334316(A028310(n))`
-/

namespace A317279.P9697439364803679205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A334316 (A028310 n).toNat

end

end A317279.P9697439364803679205

/-!
# A317280: Expansion of e.g.f. 1/(1 - log(1 + x))^2.

The programs for A317280, there is no canonical definition to state claims against.
-/

/-! ## A317280.P3989541559568903932

`A320344(n)+A006252(n)`
-/

namespace A317280.P3989541559568903932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320344 n + A006252 n

end

end A317280.P3989541559568903932

/-! ## A317280.P14176586198326077436

`A108125(n)+Δ[A306038(n)]`
-/

namespace A317280.P14176586198326077436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108125 n + (f1 (n + 1) - f1 n)

end

end A317280.P14176586198326077436

/-! ## A317280.P4316036395408701982

`A306038(n+1)-A006252(n)`
-/

namespace A317280.P4316036395408701982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306038 (n + 1) - A006252 n

end

end A317280.P4316036395408701982

/-! ## A317280.P16958157550233872055

`A306038(n)+A320344(n)-A108125(n)`
-/

namespace A317280.P16958157550233872055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306038 n + (A320344 n - A108125 n)

end

end A317280.P16958157550233872055

/-! ## A317280.P2369082277460011233

`A306038(n+1)+A006252(n)*A064179(A000040(n+1))`
-/

namespace A317280.P2369082277460011233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306038 (n + 1) + A006252 n * A064179 (A000040 (n + 1)).toNat

end

end A317280.P2369082277460011233

/-! ## A317280.P17019765856348046771

`Δ[A006252(n)+∑[A108125(n)]]`
-/

namespace A317280.P17019765856348046771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108125 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006252 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A317280.P17019765856348046771

/-! ## A317280.P11130809588255084299

`A108125(n+1)+Δ[A006252(n)]`
-/

namespace A317280.P11130809588255084299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108125 (n + 1) + (f1 (n + 1) - f1 n)

end

end A317280.P11130809588255084299

/-! ## A317280.P2621990512478222829

`A006252(n+1)+n*A006252(n)`
-/

namespace A317280.P2621990512478222829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006252 (n + 1) + (n : ℤ) * A006252 n

end

end A317280.P2621990512478222829

/-! ## A317280.P7024381948656354172

`A006252(n+1)+A108125(n+1)-A006252(n)`
-/

namespace A317280.P7024381948656354172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006252 (n + 1) + (A108125 (n + 1) - A006252 n)

end

end A317280.P7024381948656354172

/-!
# A317281: Number of permutations of [n] with exactly one increasing run of even length.

The programs for A317281, there is no canonical definition to state claims against.
-/

/-! ## A317281.P2767252603681445174

`A097592(A033638(n+3))`
-/

namespace A317281.P2767252603681445174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A033638 (n + 3)).toNat

end

end A317281.P2767252603681445174

/-! ## A317281.P1235380818626863886

`record[A097592(A076110(n+1))]`
-/

namespace A317281.P1235380818626863886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A076110 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317281.P1235380818626863886

/-! ## A317281.P3473241100610914137

`A097592(A002620(n+3)+1)`
-/

namespace A317281.P3473241100610914137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A002620 (n + 3) + 1).toNat

end

end A317281.P3473241100610914137

/-! ## A317281.P1947031692903534210

`A097592(A024206(n+2)+2)`
-/

namespace A317281.P1947031692903534210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A024206 (n + 2) + 2).toNat

end

end A317281.P1947031692903534210

/-! ## A317281.P4940967220113276244

`record[A097592(A033638(A008616(n)))]`
-/

namespace A317281.P4940967220113276244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A033638 (A008616 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317281.P4940967220113276244

/-!
# A317282: Number of permutations of [n] with exactly two increasing runs of even length.

The programs for A317282, there is no canonical definition to state claims against.
-/

/-! ## A317282.P12143135301426685330

`A097592(eq[2, n%floor(sqrt(n+1))])`
-/

namespace A317282.P12143135301426685330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.sqrt (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A317282.P12143135301426685330

/-! ## A317282.P17036089202817497055

`A097592(A002620(n+5)+2)`
-/

namespace A317282.P17036089202817497055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A002620 (n + 5) + 2).toNat

end

end A317282.P17036089202817497055

/-! ## A317282.P12271418138617774601

`A097592(A129895(n+1)+A129895(n+5))`
-/

namespace A317282.P12271418138617774601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (A129895 (n + 1) + A129895 (n + 5)).toNat

end

end A317282.P12271418138617774601

/-!
# A317284: Number of permutations of [n] with exactly four increasing runs of even length.

The programs for A317284, there is no canonical definition to state claims against.
-/

/-! ## A317284.P8445668696097215463

`A097592(eq[4, n%floor(sqrt(n+1))])`
-/

namespace A317284.P8445668696097215463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.sqrt (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A317284.P8445668696097215463

/-!
# A317286: Number of permutations of [n] with exactly six increasing runs of even length.

The programs for A317286, there is no canonical definition to state claims against.
-/

/-! ## A317286.P3580196847748327637

`A097592(eq[6, n%floor(sqrt(n+1))])`
-/

namespace A317286.P3580196847748327637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.sqrt (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A317286.P3580196847748327637

/-!
# A317287: Number of permutations of [n] with exactly seven increasing runs of even length.

The programs for A317287, there is no canonical definition to state claims against.
-/

/-! ## A317287.P15569179991884852929

`A097592(eq[7, n%floor(sqrt(n+1))])`
-/

namespace A317287.P15569179991884852929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.sqrt (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097592 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A317287.P15569179991884852929

/-!
# A317292: a(n) is the total number of edges after n-th stage in the diagram of the symmetries of sigma in which the parts of width > 1 are dissected into subparts of width 1, with a(0) = 0.

The programs for A317292, there is no canonical definition to state claims against.
-/

/-! ## A317292.P1063309770435459829

`A317293(n)+A060831(n)-1`
-/

namespace A317292.P1063309770435459829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317293 n + A060831 n - 1

end

end A317292.P1063309770435459829

/-! ## A317292.P12131116583833052761

`A029578(A317293(n)+A060831(n))`
-/

namespace A317292.P12131116583833052761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A317293 n + A060831 n).toNat

end

end A317292.P12131116583833052761

/-! ## A317292.P15045861971677079986

`xor(1, A004151(A317293(n)+A060831(n)))`
-/

namespace A317292.P15045861971677079986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A004151 (A317293 n + A060831 n).toNat)

end

end A317292.P15045861971677079986

/-! ## A317292.P8416840845518869314

`A060831(n)-(A033999(n)²-A317293(n))`
-/

namespace A317292.P8416840845518869314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n - (A033999 n ^ 2 - A317293 n)

end

end A317292.P8416840845518869314

/-! ## A317292.P289665306716751933

`A008683(A020484(n))+A317293(n)+A060831(n)`
-/

namespace A317292.P289665306716751933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat + (A317293 n + A060831 n)

end

end A317292.P289665306716751933

/-!
# A317293: a(n) is the total number of vertices after n-th stage in the diagram of the symmetries of sigma in which the parts of width > 1 are dissected into subparts of width 1, with a(0) = 1.

The programs for A317293, there is no canonical definition to state claims against.
-/

/-! ## A317293.P14170637164131395192

`A317292(n)-A060831(n)+1`
-/

namespace A317293.P14170637164131395192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317292 n - A060831 n + 1

end

end A317293.P14170637164131395192

/-! ## A317293.P8977788528637227587

`A079097(A317292(n))-A060831(n)`
-/

namespace A317293.P8977788528637227587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (A317292 n).toNat - A060831 n

end

end A317293.P8977788528637227587

/-! ## A317293.P5037395886278245375

`A294723(n)+∑[A235127(A193530(n+4))]`
-/

namespace A317293.P5037395886278245375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A193530 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294723 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317293.P5037395886278245375

/-! ## A317293.P7283182953312892030

`A363807(A178963(n))+A294723(n)`
-/

namespace A317293.P7283182953312892030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363807 (A178963 n).toNat + A294723 n

end

end A317293.P7283182953312892030

/-! ## A317293.P10529193138798725658

`A187263(n+1)+A000120(A163896(n))`
-/

namespace A317293.P10529193138798725658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187263 (n + 1) + A000120 (A163896 n).toNat

end

end A317293.P10529193138798725658

/-!
# A317294: Numbers with a noncomposite number of 1's in their binary expansion.

The programs for A317294, the canonical program `A317294.P12259097841120540514` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317294 has offset 1).

The definition of A317294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317294.P3214474274020072171

`eq[1, A000001(A000120(n))]`
-/

namespace A317294.P3214474274020072171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317294.P3214474274020072171

namespace A317294

/-- `eq[1, A000001(A000120(n))]` -/
def P3214474274020072171.Spec : Prop :=
  ∀ n, (P3214474274020072171.a n : ℤ) = A317294 (n + 1)

end A317294

/-! ## A317294.P7709859325015463120

`lt[A001222(A000120(n+1)), 2]+1`
-/

namespace A317294.P7709859325015463120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000120 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A317294.P7709859325015463120

namespace A317294

/-- `lt[A001222(A000120(n+1)), 2]+1` -/
def P7709859325015463120.Spec : Prop :=
  ∀ n, (P7709859325015463120.a n : ℤ) = A317294 (n + 1)

end A317294

/-! ## A317294.P18079719665223616130

`record[(n+1)/A078898(n+1-A011371(n+1))]`
-/

namespace A317294.P18079719665223616130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A078898 ((n + 1 : ℤ) - A011371 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317294.P18079719665223616130

namespace A317294

/-- `record[(n+1)/A078898(n+1-A011371(n+1))]` -/
def P18079719665223616130.Spec : Prop :=
  ∀ n, P18079719665223616130.a n = (A317294 (n + 1) : ℚ)

end A317294

/-! ## A317294.P12259097841120540514

`eq[A000120(n), A136548(A000120(n)+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A317294

/-- `eq[A000120(n), A136548(A000120(n)+1)]` -/
def P12259097841120540514.Spec : Prop :=
  ∀ n, (P12259097841120540514.a n : ℤ) = A317294 (n + 1)

theorem P12259097841120540514.correct : P12259097841120540514.Spec := by
  intro n
  simp only [A317294, Nat.add_sub_cancel]

end A317294

/-! ## A317294.P2293831179321411032

`lt[A143862(A000120(n)²), A000120(n)+1]`
-/

namespace A317294.P2293831179321411032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 (A000120 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317294.P2293831179321411032

namespace A317294

/-- `lt[A143862(A000120(n)²), A000120(n)+1]` -/
def P2293831179321411032.Spec : Prop :=
  ∀ n, (P2293831179321411032.a n : ℤ) = A317294 (n + 1)

end A317294

/-! ## A317294.P17605115099627607777

`eq[A137331(n), A347523(n)]`
-/

namespace A317294.P17605115099627607777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137331 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317294.P17605115099627607777

namespace A317294

/-- `eq[A137331(n), A347523(n)]` -/
def P17605115099627607777.Spec : Prop :=
  ∀ n, (P17605115099627607777.a n : ℤ) = A317294 (n + 1)

end A317294

/-! ## A317294.P2928450155427153069

`eq[A057427(n), A140185(A000120(n))]`
-/

namespace A317294.P2928450155427153069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140185 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317294.P2928450155427153069

namespace A317294

/-- `eq[A057427(n), A140185(A000120(n))]` -/
def P2928450155427153069.Spec : Prop :=
  ∀ n, (P2928450155427153069.a n : ℤ) = A317294 (n + 1)

end A317294

/-! ## A317294.P2592479162586269602

`record[A260739(2*(n+1))/A260739(A000120(n+1))]`
-/

namespace A317294.P2592479162586269602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260739 (2 * (n + 1)) : ℚ) / (A260739 (A000120 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317294.P2592479162586269602

namespace A317294

/-- `record[A260739(2*(n+1))/A260739(A000120(n+1))]` -/
def P2592479162586269602.Spec : Prop :=
  ∀ n, P2592479162586269602.a n = (A317294 (n + 1) : ℚ)

end A317294

/-! ## A317294.P10445771090167147361

`record[(n+1)/A078899(A000120(2*(n+1)))]`
-/

namespace A317294.P10445771090167147361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A078899 (A000120 (2 * (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317294.P10445771090167147361

namespace A317294

/-- `record[(n+1)/A078899(A000120(2*(n+1)))]` -/
def P10445771090167147361.Spec : Prop :=
  ∀ n, P10445771090167147361.a n = (A317294 (n + 1) : ℚ)

end A317294

/-! ## A317294.P14984649233046077662

`eq[1, A074206(A048881(2*n))]`
-/

namespace A317294.P14984649233046077662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A048881 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317294.P14984649233046077662

namespace A317294

/-- `eq[1, A074206(A048881(2*n))]` -/
def P14984649233046077662.Spec : Prop :=
  ∀ n, (P14984649233046077662.a n : ℤ) = A317294 (n + 1)

end A317294

/-! ## A317294.P2183057155988348201

`lt[∏{d}[A000120(n), #], A000120(2*n+1)]`
-/

namespace A317294.P2183057155988348201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A317294.P2183057155988348201

namespace A317294

/-- `lt[∏{d}[A000120(n), #], A000120(2*n+1)]` -/
def P2183057155988348201.Spec : Prop :=
  ∀ n, (P2183057155988348201.a n : ℤ) = A317294 (n + 1)

end A317294

/-! ## A317294.P2511336969219340933

`lt[A007318(A038573(2*n+1)), A038573(2*n+1)]`
-/

namespace A317294.P2511336969219340933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A038573 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317294.P2511336969219340933

namespace A317294

/-- `lt[A007318(A038573(2*n+1)), A038573(2*n+1)]` -/
def P2511336969219340933.Spec : Prop :=
  ∀ n, (P2511336969219340933.a n : ℤ) = A317294 (n + 1)

end A317294

/-! ## A317294.P14537247379285159187

`lt[A348649(A001316(n)), A001316(n)]`
-/

namespace A317294.P14537247379285159187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348649 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A317294.P14537247379285159187

namespace A317294

/-- `lt[A348649(A001316(n)), A001316(n)]` -/
def P14537247379285159187.Spec : Prop :=
  ∀ n, (P14537247379285159187.a n : ℤ) = A317294 (n + 1)

end A317294

/-! ## A317294.P10246870437096985906

`eq[A000120(n), A000120(A093659(n)+1)]`
-/

namespace A317294.P10246870437096985906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A093659 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317294.P10246870437096985906

namespace A317294

/-- `eq[A000120(n), A000120(A093659(n)+1)]` -/
def P10246870437096985906.Spec : Prop :=
  ∀ n, (P10246870437096985906.a n : ℤ) = A317294 (n + 1)

end A317294

/-!
# A317295: Numbers with a composite number of 1's in their binary expansion.

The programs for A317295, the canonical program `A317295.P6293647833958562741` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317295 has offset 1).

The definition of A317295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9985 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317295.P6293647833958562741

`filter[A084345(n+2), A347523(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A317295

/-- `filter[A084345(n+2), A347523(#)]` -/
def P6293647833958562741.Spec : Prop :=
  ∀ n, P6293647833958562741.a n = A317295 (n + 1)

theorem P6293647833958562741.correct : P6293647833958562741.Spec := by
  intro n
  simp only [A317295, Nat.add_sub_cancel]

end A317295

/-! ## A317295.P10391045476960698023

`∩[A084345(n+1), A175382(n+1)]`
-/

namespace A317295.P10391045476960698023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317295.P10391045476960698023

namespace A317295

/-- `∩[A084345(n+1), A175382(n+1)]` -/
def P10391045476960698023.Spec : Prop :=
  ∀ n, (P10391045476960698023.a n : ℤ) = A317295 (n + 1)

end A317295

/-! ## A317295.P1009456132480131359

`∩[A084345(n+1), A161992(n+1)]`
-/

namespace A317295.P1009456132480131359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317295.P1009456132480131359

namespace A317295

/-- `∩[A084345(n+1), A161992(n+1)]` -/
def P1009456132480131359.Spec : Prop :=
  ∀ n, (P1009456132480131359.a n : ℤ) = A317295 (n + 1)

end A317295

/-! ## A317295.P6447033270787387766

`∩[A084345(n+1), A116451(n)]`
-/

namespace A317295.P6447033270787387766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317295.P6447033270787387766

namespace A317295

/-- `∩[A084345(n+1), A116451(n)]` -/
def P6447033270787387766.Spec : Prop :=
  ∀ n, (P6447033270787387766.a n : ℤ) = A317295 (n + 1)

end A317295

/-! ## A317295.P6182591079081845029

`∩[A005767(n+1), A084345(n+1)]`
-/

namespace A317295.P6182591079081845029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317295.P6182591079081845029

namespace A317295

/-- `∩[A005767(n+1), A084345(n+1)]` -/
def P6182591079081845029.Spec : Prop :=
  ∀ n, (P6182591079081845029.a n : ℤ) = A317295 (n + 1)

end A317295

/-! ## A317295.P13753937862649489828

`∩[A084345(n+1), A165513(n+1)]`
-/

namespace A317295.P13753937862649489828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317295.P13753937862649489828

namespace A317295

/-- `∩[A084345(n+1), A165513(n+1)]` -/
def P13753937862649489828.Spec : Prop :=
  ∀ n, (P13753937862649489828.a n : ℤ) = A317295 (n + 1)

end A317295

/-! ## A317295.P16828861278474751066

`lt[1, A143862(A000120(n))]`
-/

namespace A317295.P16828861278474751066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A317295.P16828861278474751066

namespace A317295

/-- `lt[1, A143862(A000120(n))]` -/
def P16828861278474751066.Spec : Prop :=
  ∀ n, (P16828861278474751066.a n : ℤ) = A317295 (n + 1)

end A317295

/-! ## A317295.P11670545586638852101

`filter[A084345(n+3), A267579(#)]`
-/

namespace A317295.P11670545586638852101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084345 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A317295.P11670545586638852101

namespace A317295

/-- `filter[A084345(n+3), A267579(#)]` -/
def P11670545586638852101.Spec : Prop :=
  ∀ n, P11670545586638852101.a n = A317295 (n + 1)

end A317295

/-! ## A317295.P16741337585003031406

`eq[A137331(n), A255738(n+1)]`
-/

namespace A317295.P16741337585003031406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137331 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317295.P16741337585003031406

namespace A317295

/-- `eq[A137331(n), A255738(n+1)]` -/
def P16741337585003031406.Spec : Prop :=
  ∀ n, (P16741337585003031406.a n : ℤ) = A317295 (n + 1)

end A317295

/-! ## A317295.P11126110555036185865

`lt[1, A025480(A000120(2*n))]`
-/

namespace A317295.P11126110555036185865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A000120 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A317295.P11126110555036185865

namespace A317295

/-- `lt[1, A025480(A000120(2*n))]` -/
def P11126110555036185865.Spec : Prop :=
  ∀ n, (P11126110555036185865.a n : ℤ) = A317295 (n + 1)

end A317295

/-! ## A317295.P8520273791412365760

`eq[A099890(n), A137331(n)]`
-/

namespace A317295.P8520273791412365760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137331 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317295.P8520273791412365760

namespace A317295

/-- `eq[A099890(n), A137331(n)]` -/
def P8520273791412365760.Spec : Prop :=
  ∀ n, (P8520273791412365760.a n : ℤ) = A317295 (n + 1)

end A317295

/-! ## A317295.P1950914274399580235

`lt[2, A350883(A000120(n)²)]`
-/

namespace A317295.P1950914274399580235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350883 (A000120 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A317295.P1950914274399580235

namespace A317295

/-- `lt[2, A350883(A000120(n)²)]` -/
def P1950914274399580235.Spec : Prop :=
  ∀ n, (P1950914274399580235.a n : ℤ) = A317295 (n + 1)

end A317295

/-!
# A317296: Records in A299774.

The programs for A317296, there is no canonical definition to state claims against.
-/

/-! ## A317296.P574965921406268676

`record[A299774(n+1)]`
-/

namespace A317296.P574965921406268676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317296.P574965921406268676

/-! ## A317296.P9507961724738911657

`eq[char[A299774(n+1)], A304042(n)]`
-/

namespace A317296.P9507961724738911657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299774 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A317296.P9507961724738911657

/-! ## A317296.P555698952089216879

`eq[A141285(n+1), A196930(n+1)]+1`
-/

namespace A317296.P555698952089216879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196930 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A317296.P555698952089216879

/-! ## A317296.P5883371235337491009

`record[A299774(A008619(n))%A116570(n)]`
-/

namespace A317296.P5883371235337491009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299774 (A008619 n).toNat) (A116570 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317296.P5883371235337491009

/-!
# A317297: a(n) = (n - 1)*(4*n^2 - 8*n + 5).

The programs for A317297, the canonical program `A317297.P8241889574889995076` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317297 has offset 1).

The definition of A317297 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*(n+1)²-8*(n+1)+5)` (program `A317297.P8241889574889995076`, by `A317297.P8241889574889995076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317297.P8241889574889995076

`n*(4*(n+1)²-8*(n+1)+5)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A317297

/-- `n*(4*(n+1)²-8*(n+1)+5)` -/
def P8241889574889995076.Spec : Prop :=
  ∀ n, P8241889574889995076.a n = A317297 (n + 1)

theorem P8241889574889995076.correct : P8241889574889995076.Spec := by
  intro n
  simp only [A317297, Nat.add_sub_cancel]

end A317297

/-! ## A317297.P13293371295639096642

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=34, a(3)=111`
-/

namespace A317297.P13293371295639096642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 34, 111] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A317297.P13293371295639096642

namespace A317297

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13293371295639096642.Spec : Prop :=
  ∀ n, P13293371295639096642.a n = A317297 (n + 1)

theorem P13293371295639096642.correct : P13293371295639096642.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A317297, Nat.add_sub_cancel, A317297.P13293371295639096642.a, A317297.P8241889574889995076.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A317297, Nat.add_sub_cancel, A317297.P13293371295639096642.a, A317297.P8241889574889995076.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A317297

/-! ## A317297.P12107115208229035592

`A033430(n+1)-A135453(n+1)+A008595(n+1)-5`
-/

namespace A317297.P12107115208229035592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 (n + 1) - A135453 (n + 1) + A008595 (n + 1) - 5

end

end A317297.P12107115208229035592

namespace A317297

/-- `A033430(n+1)-A135453(n+1)+A008595(n+1)-5` -/
def P12107115208229035592.Spec : Prop :=
  ∀ n, P12107115208229035592.a n = A317297 (n + 1)

end A317297

/-! ## A317297.P13158771849829281381

`lcm(n, (2*n)²+1)`
-/

namespace A317297.P13158771849829281381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((2 * n) ^ 2 + 1)

end

end A317297.P13158771849829281381

namespace A317297

/-- `lcm(n, (2*n)²+1)` -/
def P13158771849829281381.Spec : Prop :=
  ∀ n, (P13158771849829281381.a n : ℤ) = A317297 (n + 1)

end A317297

/-! ## A317297.P15204384778234178771

`n/sin(acot(2*n))²`
-/

namespace A317297.P15204384778234178771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.sin (SequenceMachineLib.acot (2 * n : ℝ)) ^ 2

end

end A317297.P15204384778234178771

namespace A317297

/-- `n/sin(acot(2*n))²` -/
def P15204384778234178771.Spec : Prop :=
  ∀ n, P15204384778234178771.a n = (A317297 (n + 1) : ℝ)

end A317297

/-! ## A317297.P4038902666931316563

`ceil(C(2*n+1, 2)²/(n+1))`
-/

namespace A317297.P4038902666931316563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n + 1) 2 ^ 2 : ℚ) / (n + 1 : ℚ)⌉

end

end A317297.P4038902666931316563

namespace A317297

/-- `ceil(C(2*n+1, 2)²/(n+1))` -/
def P4038902666931316563.Spec : Prop :=
  ∀ n, P4038902666931316563.a n = A317297 (n + 1)

end A317297

/-! ## A317297.P12188884534836441163

`(record[n-xor(1, -n)^3]+1)/2`
-/

namespace A317297.P12188884534836441163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor 1 (-(n : ℤ)) ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / 2

end

end A317297.P12188884534836441163

namespace A317297

/-- `(record[n-xor(1, -n)^3]+1)/2` -/
def P12188884534836441163.Spec : Prop :=
  ∀ n, P12188884534836441163.a n = (A317297 (n + 1) : ℚ)

end A317297

/-!
# A317298: a(n) = (1/2)*(1 + (-1)^n + 2*n + 4*n^2).

The programs for A317298, the canonical program `A317298.P866328998308692690` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317298 has offset 0).

The definition of A317298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317298.P866328998308692690

`1+2*(n²+floor(n/2))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A317298

/-- `1+2*(n²+floor(n/2))` -/
def P866328998308692690.Spec : Prop :=
  ∀ n, P866328998308692690.a n = A317298 n

theorem P866328998308692690.correct : P866328998308692690.Spec := by
  intro n
  simp only [A317298]

end A317298

/-! ## A317298.P10098368527757205453

`1/2*(1+(-1)^n+2*n+4*n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A317298.P10098368527757205453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (1 + (-1) ^ n + (2 * n : ℤ) + (4 * n ^ 2 : ℤ) : ℚ)

end

end A317298.P10098368527757205453

namespace A317298

/-- `1/2*(1+(-1)^n+2*n+4*n²)` -/
def P10098368527757205453.Spec : Prop :=
  ∀ n, P10098368527757205453.a n = (A317298 n : ℚ)

end A317298

/-! ## A317298.P6237194826355081780

`or(1, C(Δ[n²], 2))`
-/

namespace A317298.P6237194826355081780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2)

end

end A317298.P6237194826355081780

namespace A317298

/-- `or(1, C(Δ[n²], 2))` -/
def P6237194826355081780.Spec : Prop :=
  ∀ n, (P6237194826355081780.a n : ℤ) = A317298 n

end A317298

/-! ## A317298.P1468964865623684987

`or(1, n*Δ[n²])`
-/

namespace A317298.P1468964865623684987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A317298.P1468964865623684987

namespace A317298

/-- `or(1, n*Δ[n²])` -/
def P1468964865623684987.Spec : Prop :=
  ∀ n, P1468964865623684987.a n = A317298 n

end A317298

/-! ## A317298.P15911001021406750228

`xor(1, ∑[record[and(n, -6)]])`
-/

namespace A317298.P15911001021406750228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317298.P15911001021406750228

namespace A317298

/-- `xor(1, ∑[record[and(n, -6)]])` -/
def P15911001021406750228.Spec : Prop :=
  ∀ n, P15911001021406750228.a n = A317298 n

end A317298

/-! ## A317298.P14349095537334239527

`xor(1, ∑[2*comp[or(2, n)]])`
-/

namespace A317298.P14349095537334239527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317298.P14349095537334239527

namespace A317298

/-- `xor(1, ∑[2*comp[or(2, n)]])` -/
def P14349095537334239527.Spec : Prop :=
  ∀ n, (P14349095537334239527.a n : ℤ) = A317298 n

end A317298

/-! ## A317298.P7081150597766215991

`∑[a(n-2)+8]` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A317298.P7081150597766215991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317298.P7081150597766215991

namespace A317298

/-- `∑[a(n-2)+8]` -/
def P7081150597766215991.Spec : Prop :=
  ∀ n, (P7081150597766215991.a n : ℤ) = A317298 n

end A317298

/-! ## A317298.P660255681735031003

`∑[∑[8-a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A317298.P660255681735031003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317298.P660255681735031003

namespace A317298

/-- `∑[∑[8-a(n-1)]]` -/
def P660255681735031003.Spec : Prop :=
  ∀ n, P660255681735031003.a n = A317298 n

end A317298

/-! ## A317298.P12509883270592482117

`ogf((1+x+5x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A317298.P12509883270592482117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 5, 1] [1, -2, 0, 2, -1] n

end

end A317298.P12509883270592482117

namespace A317298

/-- `ogf((1+x+5x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P12509883270592482117.Spec : Prop :=
  ∀ n, P12509883270592482117.a n = A317298 n

end A317298

/-! ## A317298.P14873712030505653876

`abs(or(1, (n+1)*2*n-n))`
-/

namespace A317298.P14873712030505653876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (((n + 1) * (2 * n) : ℤ) - (n : ℤ))|

end

end A317298.P14873712030505653876

namespace A317298

/-- `abs(or(1, (n+1)*2*n-n))` -/
def P14873712030505653876.Spec : Prop :=
  ∀ n, P14873712030505653876.a n = A317298 n

end A317298

/-! ## A317298.P11309785573991649179

`or(2, (2*n+1)*2*n)/2`
-/

namespace A317298.P11309785573991649179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 ((2 * n + 1) * (2 * n)) : ℚ) / 2

end

end A317298.P11309785573991649179

namespace A317298

/-- `or(2, (2*n+1)*2*n)/2` -/
def P11309785573991649179.Spec : Prop :=
  ∀ n, P11309785573991649179.a n = (A317298 n : ℚ)

end A317298

/-! ## A317298.P8415282803494942633

`xor((n+1)%2, C(2*n+1, 2))`
-/

namespace A317298.P8415282803494942633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor ((n + 1) % 2) (Nat.choose (2 * n + 1) 2)

end

end A317298.P8415282803494942633

namespace A317298

/-- `xor((n+1)%2, C(2*n+1, 2))` -/
def P8415282803494942633.Spec : Prop :=
  ∀ n, (P8415282803494942633.a n : ℤ) = A317298 n

end A317298

/-! ## A317298.P6422907803952894366

`-or(1, n-1-(n+1)*2*n)`
-/

namespace A317298.P6422907803952894366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 ((n : ℤ) - 1 - ((n + 1) * (2 * n) : ℤ))

end

end A317298.P6422907803952894366

namespace A317298

/-- `-or(1, n-1-(n+1)*2*n)` -/
def P6422907803952894366.Spec : Prop :=
  ∀ n, P6422907803952894366.a n = A317298 n

end A317298

/-! ## A317298.P1761057864168012994

`xor(n*(2*n+1), and(1, n+1)²)`
-/

namespace A317298.P1761057864168012994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n * (2 * n + 1)) (Nat.land 1 (n + 1) ^ 2)

end

end A317298.P1761057864168012994

namespace A317298

/-- `xor(n*(2*n+1), and(1, n+1)²)` -/
def P1761057864168012994.Spec : Prop :=
  ∀ n, (P1761057864168012994.a n : ℤ) = A317298 n

end A317298

/-! ## A317298.P5454512891473267272

`A175109(n)%A069894(n)`
-/

namespace A317298.P5454512891473267272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175109 n) (A069894 n)

end

end A317298.P5454512891473267272

namespace A317298

/-- `A175109(n)%A069894(n)` -/
def P5454512891473267272.Spec : Prop :=
  ∀ n, P5454512891473267272.a n = A317298 n

end A317298

/-! ## A317298.P6252788037877024422

`xor(A014105(n), A059841(n))`
-/

namespace A317298.P6252788037877024422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014105 n) (A059841 n)

end

end A317298.P6252788037877024422

namespace A317298

/-- `xor(A014105(n), A059841(n))` -/
def P6252788037877024422.Spec : Prop :=
  ∀ n, P6252788037877024422.a n = A317298 n

end A317298

/-! ## A317298.P10998705471416977653

`∪[A033567(n), A188135(n)]`
-/

namespace A317298.P10998705471416977653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188135 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317298.P10998705471416977653

namespace A317298

/-- `∪[A033567(n), A188135(n)]` -/
def P10998705471416977653.Spec : Prop :=
  ∀ n, (P10998705471416977653.a n : ℤ) = A317298 n

end A317298

/-! ## A317298.P751945338820269287

`A131179(A042963(n+1))`
-/

namespace A317298.P751945338820269287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 (A042963 (n + 1)).toNat

end

end A317298.P751945338820269287

namespace A317298

/-- `A131179(A042963(n+1))` -/
def P751945338820269287.Spec : Prop :=
  ∀ n, P751945338820269287.a n = A317298 n

end A317298

/-! ## A317298.P10248927055569363681

`A129895(A131098(n+1))`
-/

namespace A317298.P10248927055569363681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129895 (A131098 (n + 1)).toNat

end

end A317298.P10248927055569363681

namespace A317298

/-- `A129895(A131098(n+1))` -/
def P10248927055569363681.Spec : Prop :=
  ∀ n, P10248927055569363681.a n = A317298 n

end A317298

/-!
# A317299: Semiprimes in A072226.

The programs for A317299, there is no canonical definition to state claims against.
-/

/-! ## A317299.P5042152212120325201

`filter[A072226(n+1), A064911(#)]`
-/

namespace A317299.P5042152212120325201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A317299.P5042152212120325201

/-! ## A317299.P2467189006471436145

`eq[A085398(A028310(n)), A105700(n)]`
-/

namespace A317299.P2467189006471436145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317299.P2467189006471436145

/-! ## A317299.P8220045155058174410

`∩[A001358(n+1), A072226(n+1)]`
-/

namespace A317299.P8220045155058174410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317299.P8220045155058174410

/-! ## A317299.P8849746678119298481

`∩[A072226(n+1), A176540(n+1)]`
-/

namespace A317299.P8849746678119298481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317299.P8849746678119298481

