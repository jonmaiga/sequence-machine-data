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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A265400: a(n) = one-based index to the nearest horizontally or vertically adjacent inner neighbor in square-grid spirals, or 0 if n is one of the corner cases A033638.

The programs for A265400, the canonical program `A265400.P16005783905109969964` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265400 has offset 1).

The definition of A265400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265400.P16005783905109969964

`A083479(Δ[C(A083479(n), 2)])`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A265400

/-- `A083479(Δ[C(A083479(n), 2)])` -/
def P16005783905109969964.Spec : Prop :=
  ∀ n, P16005783905109969964.a n = A265400 (n + 1)

theorem P16005783905109969964.correct : P16005783905109969964.Spec := by
  intro n
  simp only [A265400, Nat.add_sub_cancel]

end A265400

/-! ## A265400.P14868446339895427017

`(1-A240025(n))*A265410(n+1)`
-/

namespace A265400.P14868446339895427017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A240025 n) * A265410 (n + 1)

end

end A265400.P14868446339895427017

namespace A265400

/-- `(1-A240025(n))*A265410(n+1)` -/
def P14868446339895427017.Spec : Prop :=
  ∀ n, P14868446339895427017.a n = A265400 (n + 1)

end A265400

/-! ## A265400.P8779651157445101883

`A083479(A083479(n*Δ[A083479(n)]))`
-/

namespace A265400.P8779651157445101883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A083479 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat).toNat

end

end A265400.P8779651157445101883

namespace A265400

/-- `A083479(A083479(n*Δ[A083479(n)]))` -/
def P8779651157445101883.Spec : Prop :=
  ∀ n, P8779651157445101883.a n = A265400 (n + 1)

end A265400

/-! ## A265400.P319104552711574685

`A083479(A083479(n)%A083479(n+1))`
-/

namespace A265400.P319104552711574685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (Int.tmod (A083479 n) (A083479 (n + 1))).toNat

end

end A265400.P319104552711574685

namespace A265400

/-- `A083479(A083479(n)%A083479(n+1))` -/
def P319104552711574685.Spec : Prop :=
  ∀ n, P319104552711574685.a n = A265400 (n + 1)

end A265400

/-! ## A265400.P2736529185870433930

`A265410(n+1)%A059344(n)`
-/

namespace A265400.P2736529185870433930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265410 (n + 1)) (A059344 n)

end

end A265400.P2736529185870433930

namespace A265400

/-- `A265410(n+1)%A059344(n)` -/
def P2736529185870433930.Spec : Prop :=
  ∀ n, P2736529185870433930.a n = A265400 (n + 1)

end A265400

/-!
# A265401: Numbers m for which gcd{k=1..m-1} binomial(2*m, 2*k) = 1.

The programs for A265401, there is no canonical definition to state claims against.
-/

/-! ## A265401.P3454188796684742196

`eq[1, A265388(n+1)]+1`
-/

namespace A265401.P3454188796684742196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265401.P3454188796684742196

/-! ## A265401.P16962086522845405401

`A061767(eq[1, A265388(n+1)])`
-/

namespace A265401.P16962086522845405401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265401.P16962086522845405401

/-! ## A265401.P3574661785258700544

`A153152(eq[1, A265388(n+1)])`
-/

namespace A265401.P3574661785258700544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265401.P3574661785258700544

/-! ## A265401.P14732250793191895766

`A181569(eq[1, A265388(n+1)])`
-/

namespace A265401.P14732250793191895766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265401.P14732250793191895766

/-! ## A265401.P18151814197023300001

`A113484(eq[1, A265388(n+1)])`
-/

namespace A265401.P18151814197023300001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265401.P18151814197023300001

/-! ## A265401.P13992578514079500659

`eq[1, A265388(A233583(n+1))]`
-/

namespace A265401.P13992578514079500659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265401.P13992578514079500659

/-!
# A265402: Fixed points of A265388: numbers n for which gcd{k=1..n-1} binomial(2*n, 2*k) = n.

The programs for A265402, the canonical program `A265402.P14245081475958957780` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265402 has offset 1).

The definition of A265402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1770 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265402.P14245081475958957780

`p?[comp[(n+1)*A001221(2*n+1)]]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A265402

/-- `p?[comp[(n+1)*A001221(2*n+1)]]` -/
def P14245081475958957780.Spec : Prop :=
  ∀ n, (P14245081475958957780.a n : ℤ) = A265402 (n + 1)

theorem P14245081475958957780.correct : P14245081475958957780.Spec := by
  intro n
  simp only [A265402, Nat.add_sub_cancel]

end A265402

/-! ## A265402.P7272426664014166534

`p?[eq[2, A228518(n+1)]+2]`
-/

namespace A265402.P7272426664014166534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228518 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A265402.P7272426664014166534

namespace A265402

/-- `p?[eq[2, A228518(n+1)]+2]` -/
def P7272426664014166534.Spec : Prop :=
  ∀ n, (P7272426664014166534.a n : ℤ) = A265402 (n + 1)

end A265402

/-! ## A265402.P4938321811788685310

`A005408(eq[A005408(n), A265388(2*n+1)])`
-/

namespace A265402.P4938321811788685310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A265402.P4938321811788685310

namespace A265402

/-- `A005408(eq[A005408(n), A265388(2*n+1)])` -/
def P4938321811788685310.Spec : Prop :=
  ∀ n, P4938321811788685310.a n = A265402 (n + 1)

end A265402

/-! ## A265402.P17022452320694414689

`A137576(eq[A137576(n), A265388(2*n+1)])`
-/

namespace A265402.P17022452320694414689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137576 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A265402.P17022452320694414689

namespace A265402

/-- `A137576(eq[A137576(n), A265388(2*n+1)])` -/
def P17022452320694414689.Spec : Prop :=
  ∀ n, P17022452320694414689.a n = A265402 (n + 1)

end A265402

/-! ## A265402.P8356054474911150726

`A267873(eq[A265388(2*n+1), A267873(n)])`
-/

namespace A265402.P8356054474911150726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A265402.P8356054474911150726

namespace A265402

/-- `A267873(eq[A265388(2*n+1), A267873(n)])` -/
def P8356054474911150726.Spec : Prop :=
  ∀ n, P8356054474911150726.a n = A265402 (n + 1)

end A265402

/-! ## A265402.P1654240394475005877

`p?[A048671(2*n+1)-n]`
-/

namespace A265402.P1654240394475005877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265402.P1654240394475005877

namespace A265402

/-- `p?[A048671(2*n+1)-n]` -/
def P1654240394475005877.Spec : Prop :=
  ∀ n, P1654240394475005877.a n = A265402 (n + 1)

end A265402

/-! ## A265402.P15395334833092477460

`p?[lt[A014963(abs(1-2*n)), 2]]`
-/

namespace A265402.P15395334833092477460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 |1 - (2 * n : ℤ)|.toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A265402.P15395334833092477460

namespace A265402

/-- `p?[lt[A014963(abs(1-2*n)), 2]]` -/
def P15395334833092477460.Spec : Prop :=
  ∀ n, (P15395334833092477460.a n : ℤ) = A265402 (n + 1)

end A265402

/-! ## A265402.P12500749507506176355

`p?[lt[A014963(2*n+3), 2]+2]`
-/

namespace A265402.P12500749507506176355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A265402.P12500749507506176355

namespace A265402

/-- `p?[lt[A014963(2*n+3), 2]+2]` -/
def P12500749507506176355.Spec : Prop :=
  ∀ n, (P12500749507506176355.a n : ℤ) = A265402 (n + 1)

end A265402

/-! ## A265402.P9444873975042098741

`p?[xor(n, A008683(A014963(2*n+1)))]`
-/

namespace A265402.P9444873975042098741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A008683 (A014963 (2 * n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265402.P9444873975042098741

namespace A265402

/-- `p?[xor(n, A008683(A014963(2*n+1)))]` -/
def P9444873975042098741.Spec : Prop :=
  ∀ n, P9444873975042098741.a n = A265402 (n + 1)

end A265402

/-! ## A265402.P10201579471149301056

`p?[A063973(n+2)-A063973(2*(n+1))]`
-/

namespace A265402.P10201579471149301056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063973 (n + 2) - A063973 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265402.P10201579471149301056

namespace A265402

/-- `p?[A063973(n+2)-A063973(2*(n+1))]` -/
def P10201579471149301056.Spec : Prop :=
  ∀ n, P10201579471149301056.a n = A265402 (n + 1)

end A265402

/-! ## A265402.P13070980316019148606

`eq[A001222(n+1), A014963(2*n+1)]+1`
-/

namespace A265402.P13070980316019148606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A265402.P13070980316019148606

namespace A265402

/-- `eq[A001222(n+1), A014963(2*n+1)]+1` -/
def P13070980316019148606.Spec : Prop :=
  ∀ n, (P13070980316019148606.a n : ℤ) = A265402 (n + 1)

end A265402

/-! ## A265402.P16255476062722068874

`eq[A014963(2*n+1), A003415(n+1)]+1`
-/

namespace A265402.P16255476062722068874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A265402.P16255476062722068874

namespace A265402

/-- `eq[A014963(2*n+1), A003415(n+1)]+1` -/
def P16255476062722068874.Spec : Prop :=
  ∀ n, (P16255476062722068874.a n : ℤ) = A265402 (n + 1)

end A265402

/-! ## A265402.P13807793309697197656

`eq[A014963(2*n+1), A054024(n+1)]+1`
-/

namespace A265402.P13807793309697197656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A265402.P13807793309697197656

namespace A265402

/-- `eq[A014963(2*n+1), A054024(n+1)]+1` -/
def P13807793309697197656.Spec : Prop :=
  ∀ n, (P13807793309697197656.a n : ℤ) = A265402 (n + 1)

end A265402

/-! ## A265402.P13982472275751211839

`eq[A007920(n+1), A103310(2*n+1)]+1`
-/

namespace A265402.P13982472275751211839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103310 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A265402.P13982472275751211839

namespace A265402

/-- `eq[A007920(n+1), A103310(2*n+1)]+1` -/
def P13982472275751211839.Spec : Prop :=
  ∀ n, (P13982472275751211839.a n : ℤ) = A265402 (n + 1)

end A265402

/-! ## A265402.P11393451860614013277

`eq[n, A000010(A014963(2*n+1)+n)]+1`
-/

namespace A265402.P11393451860614013277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265402.P11393451860614013277

namespace A265402

/-- `eq[n, A000010(A014963(2*n+1)+n)]+1` -/
def P11393451860614013277.Spec : Prop :=
  ∀ n, (P11393451860614013277.a n : ℤ) = A265402 (n + 1)

end A265402

/-! ## A265402.P10931624399496239084

`eq[2*A014963(2*n+1), A000005(n+1)]+1`
-/

namespace A265402.P10931624399496239084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014963 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A265402.P10931624399496239084

namespace A265402

/-- `eq[2*A014963(2*n+1), A000005(n+1)]+1` -/
def P10931624399496239084.Spec : Prop :=
  ∀ n, (P10931624399496239084.a n : ℤ) = A265402 (n + 1)

end A265402

/-! ## A265402.P13708266673307848997

`eq[n+2, A000203(A014963(2*n+1)+n)]+1`
-/

namespace A265402.P13708266673307848997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A014963 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265402.P13708266673307848997

namespace A265402

/-- `eq[n+2, A000203(A014963(2*n+1)+n)]+1` -/
def P13708266673307848997.Spec : Prop :=
  ∀ n, (P13708266673307848997.a n : ℤ) = A265402 (n + 1)

end A265402

/-! ## A265402.P12791420338105631120

`eq[n+1, A006530(A014963(2*n+1)+2*n+1)]+1`
-/

namespace A265402.P12791420338105631120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014963 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265402.P12791420338105631120

namespace A265402

/-- `eq[n+1, A006530(A014963(2*n+1)+2*n+1)]+1` -/
def P12791420338105631120.Spec : Prop :=
  ∀ n, (P12791420338105631120.a n : ℤ) = A265402 (n + 1)

end A265402

/-! ## A265402.P13907502540912375240

`eq[n, A265388(A233583(n+1))]`
-/

namespace A265402.P13907502540912375240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265402.P13907502540912375240

namespace A265402

/-- `eq[n, A265388(A233583(n+1))]` -/
def P13907502540912375240.Spec : Prop :=
  ∀ n, (P13907502540912375240.a n : ℤ) = A265402 (n + 1)

end A265402

/-!
# A265403: Numbers m for which gcd{k=1..m-1} binomial(2*m, 2*k) = 2*m-1.

The programs for A265403, there is no canonical definition to state claims against.
-/

/-! ## A265403.P14611298888138202025

`eq[A005408(n), A265388(n+1)]+1`
-/

namespace A265403.P14611298888138202025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A265403.P14611298888138202025

/-! ## A265403.P18199724778534359918

`eq[A137576(n), A265388(n+1)]+1`
-/

namespace A265403.P18199724778534359918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A265403.P18199724778534359918

/-! ## A265403.P15133302469251228054

`eq[A265388(n+1), A267873(n)]+1`
-/

namespace A265403.P15133302469251228054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A265403.P15133302469251228054

/-! ## A265403.P1498953462594729183

`eq[A265388(n+1), A317439(n+1)]+1`
-/

namespace A265403.P1498953462594729183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317439 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A265403.P1498953462594729183

/-! ## A265403.P17009219835907973240

`A061767(eq[A005408(n), A265388(n+1)])`
-/

namespace A265403.P17009219835907973240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A265403.P17009219835907973240

/-! ## A265403.P8445646582038554520

`A153152(eq[A005408(n), A265388(n+1)])`
-/

namespace A265403.P8445646582038554520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A265403.P8445646582038554520

/-! ## A265403.P14739301691046319569

`A181569(eq[A005408(n), A265388(n+1)])`
-/

namespace A265403.P14739301691046319569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A265403.P14739301691046319569

/-! ## A265403.P5412898081474806964

`A181569(eq[A265388(n+1), A267873(n)])`
-/

namespace A265403.P5412898081474806964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A265403.P5412898081474806964

/-! ## A265403.P8784803038410430038

`A153152(eq[A265388(n+1), A317439(n+1)])`
-/

namespace A265403.P8784803038410430038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A265403.P8784803038410430038

/-! ## A265403.P15182616574137445941

`eq[A265388(n+1), A317107(n+1)]+1`
-/

namespace A265403.P15182616574137445941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317107 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A265403.P15182616574137445941

/-! ## A265403.P2616523806816785003

`A153152(eq[A265388(n+1), A317107(n+1)])`
-/

namespace A265403.P2616523806816785003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A265403.P2616523806816785003

/-! ## A265403.P1756120089387617018

`eq[A004273(n), A265388(A233583(n+1))]`
-/

namespace A265403.P1756120089387617018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265403.P1756120089387617018

/-! ## A265403.P17068571272107986909

`A110654(p?[A265388(A006254(n+1))])`
-/

namespace A265403.P17068571272107986909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (A006254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A265403.P17068571272107986909

/-!
# A265404: a(n) = number of Spironacci numbers (A078510) needed to sum to n using the greedy algorithm.

The programs for A265404, the canonical program `A265404.P15777867062804018376` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265404 has offset 0).

The definition of A265404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265404.P15777867062804018376

`A001227(A156300(n+1))-char[A078510(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A265404

/-- `A001227(A156300(n+1))-char[A078510(n)]` -/
def P15777867062804018376.Spec : Prop :=
  ∀ n, P15777867062804018376.a n = A265404 n

theorem P15777867062804018376.correct : P15777867062804018376.Spec := by
  intro n
  simp only [A265404]

end A265404

/-! ## A265404.P8872752357419237500

`A001227(A214889(n+1))-char[A078510(n)]`
-/

namespace A265404.P8872752357419237500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078510 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A214889 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265404.P8872752357419237500

namespace A265404

/-- `A001227(A214889(n+1))-char[A078510(n)]` -/
def P8872752357419237500.Spec : Prop :=
  ∀ n, P8872752357419237500.a n = A265404 n

end A265404

/-! ## A265404.P13104582074159012428

`A040000(∑[n])-char[A078510(n)]`
-/

namespace A265404.P13104582074159012428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078510 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265404.P13104582074159012428

namespace A265404

/-- `A040000(∑[n])-char[A078510(n)]` -/
def P13104582074159012428.Spec : Prop :=
  ∀ n, P13104582074159012428.a n = A265404 n

end A265404

/-! ## A265404.P14901372601268727120

`A001227(A005384(n+1))-char[A078510(n)]`
-/

namespace A265404.P14901372601268727120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078510 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A005384 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265404.P14901372601268727120

namespace A265404

/-- `A001227(A005384(n+1))-char[A078510(n)]` -/
def P14901372601268727120.Spec : Prop :=
  ∀ n, P14901372601268727120.a n = A265404 n

end A265404

/-! ## A265404.P6892034066679400963

`A006530(A056672(n+1))-char[A078510(n)]`
-/

namespace A265404.P6892034066679400963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078510 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056672 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265404.P6892034066679400963

namespace A265404

/-- `A006530(A056672(n+1))-char[A078510(n)]` -/
def P6892034066679400963.Spec : Prop :=
  ∀ n, P6892034066679400963.a n = A265404 n

end A265404

/-! ## A265404.P16358507144503775735

`A020639(A118239(n+1))-char[A078510(n)]`
-/

namespace A265404.P16358507144503775735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078510 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A118239 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265404.P16358507144503775735

namespace A265404

/-- `A020639(A118239(n+1))-char[A078510(n)]` -/
def P16358507144503775735.Spec : Prop :=
  ∀ n, P16358507144503775735.a n = A265404 n

end A265404

/-! ## A265404.P17240510288494729822

`A134451(A082953(n+1)-char[A078510(n)])`
-/

namespace A265404.P17240510288494729822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078510 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A082953 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265404.P17240510288494729822

namespace A265404

/-- `A134451(A082953(n+1)-char[A078510(n)])` -/
def P17240510288494729822.Spec : Prop :=
  ∀ n, P17240510288494729822.a n = A265404 n

end A265404

/-! ## A265404.P3846835079976059170

`A002262(A133263(n)-char[A078510(n)])`
-/

namespace A265404.P3846835079976059170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078510 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A133263 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265404.P3846835079976059170

namespace A265404

/-- `A002262(A133263(n)-char[A078510(n)])` -/
def P3846835079976059170.Spec : Prop :=
  ∀ n, P3846835079976059170.a n = A265404 n

end A265404

/-! ## A265404.P14024053238522703664

`A001221(A189047(n+1))-char[A078510(n)]`
-/

namespace A265404.P14024053238522703664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078510 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A189047 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265404.P14024053238522703664

namespace A265404

/-- `A001221(A189047(n+1))-char[A078510(n)]` -/
def P14024053238522703664.Spec : Prop :=
  ∀ n, P14024053238522703664.a n = A265404 n

end A265404

/-! ## A265404.P17357765199160215421

`A014963(A137688(n))-char[A078510(n)]`
-/

namespace A265404.P17357765199160215421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078510 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A137688 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265404.P17357765199160215421

namespace A265404

/-- `A014963(A137688(n))-char[A078510(n)]` -/
def P17357765199160215421.Spec : Prop :=
  ∀ n, P17357765199160215421.a n = A265404 n

end A265404

/-!
# A265407: Spironacci-style recurrence: a(0)=0, a(1)=1, a(n) = 2*a(n) XOR a(A265409(n)).

The programs for A265407, the canonical program `A265407.P516872660325429595` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265407 has offset 0).

The definition of A265407 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248663, A265408, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265407.P516872660325429595

`A248663(A265408(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A265407

/-- `A248663(A265408(n))` -/
def P516872660325429595.Spec : Prop :=
  ∀ n, P516872660325429595.a n = A265407 n

theorem P516872660325429595.correct : P516872660325429595.Spec := by
  intro n
  simp only [A265407]

end A265407

/-! ## A265407.P389831943598516287

`A334872(4*A265408(n))`
-/

namespace A265407.P389831943598516287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334872 (4 * A265408 n).toNat

end

end A265407.P389831943598516287

namespace A265407

/-- `A334872(4*A265408(n))` -/
def P389831943598516287.Spec : Prop :=
  ∀ n, P389831943598516287.a n = A265407 n

end A265407

/-! ## A265407.P141812962134656252

`floor(Δ[A071047(A033484(n))]/e²)`
-/

namespace A265407.P141812962134656252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071047 (A033484 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℝ) / Real.exp 1 ^ 2⌋

end

end A265407.P141812962134656252

namespace A265407

/-- `floor(Δ[A071047(A033484(n))]/e²)` -/
def P141812962134656252.Spec : Prop :=
  ∀ n, P141812962134656252.a n = A265407 n

end A265407

/-! ## A265407.P14175308760961916039

`floor(A132292(A367653(n+4)+1)/2)`
-/

namespace A265407.P14175308760961916039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132292 (A367653 (n + 4) + 1).toNat : ℚ) / 2⌋

end

end A265407.P14175308760961916039

namespace A265407

/-- `floor(A132292(A367653(n+4)+1)/2)` -/
def P14175308760961916039.Spec : Prop :=
  ∀ n, P14175308760961916039.a n = A265407 n

end A265407

/-! ## A265407.P16265891845412511901

`∑[A326774(A007059(n))]`
-/

namespace A265407.P16265891845412511901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326774 (A007059 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265407.P16265891845412511901

namespace A265407

/-- `∑[A326774(A007059(n))]` -/
def P16265891845412511901.Spec : Prop :=
  ∀ n, P16265891845412511901.a n = A265407 n

end A265407

/-!
# A265408: Prime factorization representation of Spironacci polynomials: a(0) = 1, a(1) = 2, and for n > 1, a(n) = A003961(a(n-1)) * a(A265409(n)).

The programs for A265408, the canonical program `A265408.P18241322525872121723` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265408 has offset 0).

The definition of A265408 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A265409, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265408.P18241322525872121723

`A003961(a(n-1))*a(A265409(n))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A265408

/-- `A003961(a(n-1))*a(A265409(n))` -/
def P18241322525872121723.Spec : Prop :=
  ∀ n, P18241322525872121723.a n = A265408 n

theorem P18241322525872121723.correct : P18241322525872121723.Spec := by
  intro n
  simp only [A265408]

end A265408

/-! ## A265408.P2298850169259053177

`A242424(∏[∑[A331845(n)]])`
-/

namespace A265408.P2298850169259053177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242424 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265408.P2298850169259053177

namespace A265408

/-- `A242424(∏[∑[A331845(n)]])` -/
def P2298850169259053177.Spec : Prop :=
  ∀ n, P2298850169259053177.a n = A265408 n

end A265408

/-! ## A265408.P6363770752624969018

`A242424(∏[∑[A332016(n)]])`
-/

namespace A265408.P6363770752624969018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332016 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242424 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265408.P6363770752624969018

namespace A265408

/-- `A242424(∏[∑[A332016(n)]])` -/
def P6363770752624969018.Spec : Prop :=
  ∀ n, P6363770752624969018.a n = A265408 n

end A265408

/-! ## A265408.P13688189308268880264

`A243072(∏[∑[A331845(n)]])`
-/

namespace A265408.P13688189308268880264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243072 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265408.P13688189308268880264

namespace A265408

/-- `A243072(∏[∑[A331845(n)]])` -/
def P13688189308268880264.Spec : Prop :=
  ∀ n, P13688189308268880264.a n = A265408 n

end A265408

/-! ## A265408.P7998991904084254862

`A000040(n)*A085685(a(n-1))` with `a(0)=1`
-/

namespace A265408.P7998991904084254862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 n * A085685 (a (n - 1)).toNat

end

end A265408.P7998991904084254862

namespace A265408

/-- `A000040(n)*A085685(a(n-1))` -/
def P7998991904084254862.Spec : Prop :=
  ∀ n, P7998991904084254862.a n = A265408 n

end A265408

/-!
# A265409: a(n) = index to the nearest inner neighbor in Ulam-style square-spirals using zero-based indexing.

The programs for A265409, the canonical program `A265409.P1403475869823103822` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265409 has offset 1).

The definition of A265409 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265410, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265409.P1403475869823103822

`A265410(n+2)-1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A265409

/-- `A265410(n+2)-1` -/
def P1403475869823103822.Spec : Prop :=
  ∀ n, P1403475869823103822.a n = A265409 (n + 1)

theorem P1403475869823103822.correct : P1403475869823103822.Spec := by
  intro n
  simp only [A265409, Nat.add_sub_cancel]

end A265409

/-! ## A265409.P14486646573639803148

`n+1-A265359(n+1)`
-/

namespace A265409.P14486646573639803148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A265359 (n + 1)

end

end A265409.P14486646573639803148

namespace A265409

/-- `n+1-A265359(n+1)` -/
def P14486646573639803148.Spec : Prop :=
  ∀ n, P14486646573639803148.a n = A265409 (n + 1)

end A265409

/-! ## A265409.P8825484501126462997

`a(n-1)+(1-A240025(n+1))*(1-A240025(n))` with `a(0)=0`
-/

namespace A265409.P8825484501126462997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A240025 (n + 1)) * (1 - A240025 n)

end

end A265409.P8825484501126462997

namespace A265409

/-- `a(n-1)+(1-A240025(n+1))*(1-A240025(n))` -/
def P8825484501126462997.Spec : Prop :=
  ∀ n, P8825484501126462997.a n = A265409 (n + 1)

end A265409

/-! ## A265409.P13231656045451814203

`∑[1-Δ[A265359(n)]]`
-/

namespace A265409.P13231656045451814203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265409.P13231656045451814203

namespace A265409

/-- `∑[1-Δ[A265359(n)]]` -/
def P13231656045451814203.Spec : Prop :=
  ∀ n, P13231656045451814203.a n = A265409 (n + 1)

end A265409

/-! ## A265409.P824055707119135467

`∑[C(A278354(n+1), 4)]`
-/

namespace A265409.P824055707119135467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A278354 (n + 1)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265409.P824055707119135467

namespace A265409

/-- `∑[C(A278354(n+1), 4)]` -/
def P824055707119135467.Spec : Prop :=
  ∀ n, (P824055707119135467.a n : ℤ) = A265409 (n + 1)

end A265409

/-! ## A265409.P11126094582341494400

`∑[char[A265412(n+1)-1]]`
-/

namespace A265409.P11126094582341494400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265409.P11126094582341494400

namespace A265409

/-- `∑[char[A265412(n+1)-1]]` -/
def P11126094582341494400.Spec : Prop :=
  ∀ n, (P11126094582341494400.a n : ℤ) = A265409 (n + 1)

end A265409

/-! ## A265409.P7954414022291023488

`∑[A060025(Δ[A265359(n)])]`
-/

namespace A265409.P7954414022291023488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060025 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265409.P7954414022291023488

namespace A265409

/-- `∑[A060025(Δ[A265359(n)])]` -/
def P7954414022291023488.Spec : Prop :=
  ∀ n, P7954414022291023488.a n = A265409 (n + 1)

end A265409

/-! ## A265409.P17586478957754122357

`A083479(A083479(n+1))-1`
-/

namespace A265409.P17586478957754122357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A083479 (n + 1)).toNat - 1

end

end A265409.P17586478957754122357

namespace A265409

/-- `A083479(A083479(n+1))-1` -/
def P17586478957754122357.Spec : Prop :=
  ∀ n, P17586478957754122357.a n = A265409 (n + 1)

end A265409

/-! ## A265409.P4019723882891704036

`A028391(A028391(A028391(A028391(n))))`
-/

namespace A265409.P4019723882891704036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A028391 (A028391 (A028391 n).toNat).toNat).toNat

end

end A265409.P4019723882891704036

namespace A265409

/-- `A028391(A028391(A028391(A028391(n))))` -/
def P4019723882891704036.Spec : Prop :=
  ∀ n, P4019723882891704036.a n = A265409 (n + 1)

end A265409

/-! ## A265409.P6099113311900979244

`A056847(A056847(A056847(A056847(n+2))))`
-/

namespace A265409.P6099113311900979244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A056847 (A056847 (A056847 (n + 2)).toNat).toNat).toNat

end

end A265409.P6099113311900979244

namespace A265409

/-- `A056847(A056847(A056847(A056847(n+2))))` -/
def P6099113311900979244.Spec : Prop :=
  ∀ n, P6099113311900979244.a n = A265409 (n + 1)

end A265409

/-! ## A265409.P12834098580588835203

`∑[1-A167686(n)²]`
-/

namespace A265409.P12834098580588835203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A167686 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265409.P12834098580588835203

namespace A265409

/-- `∑[1-A167686(n)²]` -/
def P12834098580588835203.Spec : Prop :=
  ∀ n, P12834098580588835203.a n = A265409 (n + 1)

end A265409

/-!
# A265410: a(n) = one-based index to the nearest horizontally or vertically adjacent inner neighbor in square-grid spirals, and to the nearest diagonally adjacent inner neighbor when n is one of the corner cases A033638.

The programs for A265410, the canonical program `A265410.P7138294630023427214` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265410 has offset 1).

The definition of A265410 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265410.P7138294630023427214

`a(n-1)+(1-A240025(n-1))*(1-A240025(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A265410

/-- `a(n-1)+(1-A240025(n-1))*(1-A240025(n))` -/
def P7138294630023427214.Spec : Prop :=
  ∀ n, P7138294630023427214.a n = A265410 (n + 1)

theorem P7138294630023427214.correct : P7138294630023427214.Spec := by
  intro n
  simp only [A265410, Nat.add_sub_cancel]

end A265410

/-! ## A265410.P11640038941590844407

`∑[char[A265412(n)]]`
-/

namespace A265410.P11640038941590844407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265410.P11640038941590844407

namespace A265410

/-- `∑[char[A265412(n)]]` -/
def P11640038941590844407.Spec : Prop :=
  ∀ n, (P11640038941590844407.a n : ℤ) = A265410 (n + 1)

end A265410

/-! ## A265410.P8526977656504930697

`∑[char[∑[A265411(n)]]]`
-/

namespace A265410.P8526977656504930697
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265410.P8526977656504930697

namespace A265410

/-- `∑[char[∑[A265411(n)]]]` -/
def P8526977656504930697.Spec : Prop :=
  ∀ n, (P8526977656504930697.a n : ℤ) = A265410 (n + 1)

end A265410

/-! ## A265410.P6054469838012610692

`∑[char[A265413(n)-1]]-1`
-/

namespace A265410.P6054469838012610692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265413 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A265410.P6054469838012610692

namespace A265410

/-- `∑[char[A265413(n)-1]]-1` -/
def P6054469838012610692.Spec : Prop :=
  ∀ n, P6054469838012610692.a n = A265410 (n + 1)

end A265410

/-! ## A265410.P1864844196605469052

`(n*A265359(n))%(n+1)`
-/

namespace A265410.P1864844196605469052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A265359 n) (n + 1 : ℤ)

end

end A265410.P1864844196605469052

namespace A265410

/-- `(n*A265359(n))%(n+1)` -/
def P1864844196605469052.Spec : Prop :=
  ∀ n, P1864844196605469052.a n = A265410 (n + 1)

end A265410

/-! ## A265410.P5504560921101183949

`∑[char[comp[A173151(n+2)]]]-1`
-/

namespace A265410.P5504560921101183949
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173151 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A265410.P5504560921101183949

namespace A265410

/-- `∑[char[comp[A173151(n+2)]]]-1` -/
def P5504560921101183949.Spec : Prop :=
  ∀ n, P5504560921101183949.a n = A265410 (n + 1)

end A265410

/-! ## A265410.P9216458519377713505

`A083479(A083479(n))`
-/

namespace A265410.P9216458519377713505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A083479 n).toNat

end

end A265410.P9216458519377713505

namespace A265410

/-- `A083479(A083479(n))` -/
def P9216458519377713505.Spec : Prop :=
  ∀ n, P9216458519377713505.a n = A265410 (n + 1)

end A265410

/-! ## A265410.P17934472327702400781

`A087156(n+1)-A265359(n)`
-/

namespace A265410.P17934472327702400781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) - A265359 n

end

end A265410.P17934472327702400781

namespace A265410

/-- `A087156(n+1)-A265359(n)` -/
def P17934472327702400781.Spec : Prop :=
  ∀ n, P17934472327702400781.a n = A265410 (n + 1)

end A265410

/-! ## A265410.P1615350576058835613

`n-A055086(A002620(A265359(n)))`
-/

namespace A265410.P1615350576058835613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055086 (A002620 (A265359 n).toNat).toNat

end

end A265410.P1615350576058835613

namespace A265410

/-- `n-A055086(A002620(A265359(n)))` -/
def P1615350576058835613.Spec : Prop :=
  ∀ n, P1615350576058835613.a n = A265410 (n + 1)

end A265410

/-! ## A265410.P928775476048116235

`n+1-A265359(A000267(A002620(n)))`
-/

namespace A265410.P928775476048116235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A265359 (A000267 (A002620 n).toNat).toNat

end

end A265410.P928775476048116235

namespace A265410

/-- `n+1-A265359(A000267(A002620(n)))` -/
def P928775476048116235.Spec : Prop :=
  ∀ n, P928775476048116235.a n = A265410 (n + 1)

end A265410

/-!
# A265411: a(0) = 1, a(1) = 7, otherwise, if A240025(n-1) = 1 [when n is in A033638] a(n) = 3, otherwise a(n) = 1.

The programs for A265411, the canonical program `A265411.P7044820118345598143` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265411 has offset 0).

The definition of A265411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265411.P7044820118345598143

`Δ[A265413(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A265411

/-- `Δ[A265413(n)]` -/
def P7044820118345598143.Spec : Prop :=
  ∀ n, P7044820118345598143.a n = A265411 n

theorem P7044820118345598143.correct : P7044820118345598143.Spec := by
  intro n
  simp only [A265411]

end A265411

/-! ## A265411.P6005118190737018755

`Δ[comp[A173151(n+2)]]`
-/

namespace A265411.P6005118190737018755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173151 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A265411.P6005118190737018755

namespace A265411

/-- `Δ[comp[A173151(n+2)]]` -/
def P6005118190737018755.Spec : Prop :=
  ∀ n, P6005118190737018755.a n = A265411 n

end A265411

/-! ## A265411.P16815628499096824908

`A000032(Δ[comp[a(n-2)+n]])` with `a(0)=2, a(1)=3`
-/

namespace A265411.P16815628499096824908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  f2 (n - 2) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A265411.P16815628499096824908

namespace A265411

/-- `A000032(Δ[comp[a(n-2)+n]])` -/
def P16815628499096824908.Spec : Prop :=
  ∀ n, P16815628499096824908.a n = A265411 n

end A265411

/-! ## A265411.P12852344042395767108

`A000203(Δ[comp[a(n-2)+n]])` with `a(0)=2, a(1)=3`
-/

namespace A265411.P12852344042395767108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  f2 (n - 2) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A265411.P12852344042395767108

namespace A265411

/-- `A000203(Δ[comp[a(n-2)+n]])` -/
def P12852344042395767108.Spec : Prop :=
  ∀ n, P12852344042395767108.a n = A265411 n

end A265411

/-! ## A265411.P3549913347859644622

`A265413(n+1)-A265413(n)`
-/

namespace A265411.P3549913347859644622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265413 (n + 1) - A265413 n

end

end A265411.P3549913347859644622

namespace A265411

/-- `A265413(n+1)-A265413(n)` -/
def P3549913347859644622.Spec : Prop :=
  ∀ n, P3549913347859644622.a n = A265411 n

theorem P3549913347859644622.correct : P3549913347859644622.Spec := by
  intro n
  simp only [A265411, Nat.add_sub_cancel, A265411.P3549913347859644622.a, A265411.P7044820118345598143.f1, A265411.P7044820118345598143.a, SequenceMachineLib.memo_apply]

end A265411

/-! ## A265411.P16943145794830232976

`A000203(Δ[comp[A290743(n+1)]])`
-/

namespace A265411.P16943145794830232976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290743 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A265411.P16943145794830232976

namespace A265411

/-- `A000203(Δ[comp[A290743(n+1)]])` -/
def P16943145794830232976.Spec : Prop :=
  ∀ n, P16943145794830232976.a n = A265411 n

end A265411

/-! ## A265411.P14684877154109784283

`A000720(Δ[comp[A002620(n)+2]]²+1)`
-/

namespace A265411.P14684877154109784283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + 1).toNat

end

end A265411.P14684877154109784283

namespace A265411

/-- `A000720(Δ[comp[A002620(n)+2]]²+1)` -/
def P14684877154109784283.Spec : Prop :=
  ∀ n, P14684877154109784283.a n = A265411 n

end A265411

/-! ## A265411.P12766626963208400593

`runs[A265410(n+1)]`
-/

namespace A265411.P12766626963208400593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A265411.P12766626963208400593

namespace A265411

/-- `runs[A265410(n+1)]` -/
def P12766626963208400593.Spec : Prop :=
  ∀ n, (P12766626963208400593.a n : ℤ) = A265411 n

end A265411

/-! ## A265411.P16893015084399865532

`runs[A083479(A083479(n))]`
-/

namespace A265411.P16893015084399865532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (A083479 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A265411.P16893015084399865532

namespace A265411

/-- `runs[A083479(A083479(n))]` -/
def P16893015084399865532.Spec : Prop :=
  ∀ n, (P16893015084399865532.a n : ℤ) = A265411 n

end A265411

/-! ## A265411.P8916234693209753220

`Δ[record[Δ[A347433(n+2)]+n]]`
-/

namespace A265411.P8916234693209753220
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347433 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265411.P8916234693209753220

namespace A265411

/-- `Δ[record[Δ[A347433(n+2)]+n]]` -/
def P8916234693209753220.Spec : Prop :=
  ∀ n, P8916234693209753220.a n = A265411 n

end A265411

/-!
# A265412: Partial sums of A265411.

The programs for A265412, the canonical program `A265412.P11385853226138778996` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265412 has offset 0).

The definition of A265412 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265411, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265412.P11385853226138778996

`A265411(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A265412

/-- `A265411(n)+a(n-1)` -/
def P11385853226138778996.Spec : Prop :=
  ∀ n, P11385853226138778996.a n = A265412 n

theorem P11385853226138778996.correct : P11385853226138778996.Spec := by
  intro n
  simp only [A265412]

end A265412

/-! ## A265412.P3264473290421157159

`∑[A265411(n)]`
-/

namespace A265412.P3264473290421157159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265412.P3264473290421157159

namespace A265412

/-- `∑[A265411(n)]` -/
def P3264473290421157159.Spec : Prop :=
  ∀ n, P3264473290421157159.a n = A265412 n

end A265412

/-! ## A265412.P12670530213233689332

`∑[abs(Δ[A265413(n)])]`
-/

namespace A265412.P12670530213233689332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265413 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265412.P12670530213233689332

namespace A265412

/-- `∑[abs(Δ[A265413(n)])]` -/
def P12670530213233689332.Spec : Prop :=
  ∀ n, P12670530213233689332.a n = A265412 n

end A265412

/-! ## A265412.P18255065102900800306

`A265413(n+1)-1`
-/

namespace A265412.P18255065102900800306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265413 (n + 1) - 1

end

end A265412.P18255065102900800306

namespace A265412

/-- `A265413(n+1)-1` -/
def P18255065102900800306.Spec : Prop :=
  ∀ n, P18255065102900800306.a n = A265412 n

end A265412

/-! ## A265412.P15937000068109779488

`∑[A000203(Δ[comp[a(n-2)+n]])]` with `a(0)=2, a(1)=3`
-/

namespace A265412.P15937000068109779488
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f3 =>
  f3 (n - 2) + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265412.P15937000068109779488

namespace A265412

/-- `∑[A000203(Δ[comp[a(n-2)+n]])]` -/
def P15937000068109779488.Spec : Prop :=
  ∀ n, P15937000068109779488.a n = A265412 n

end A265412

/-! ## A265412.P14389778109850271093

`∑[A006530(Δ[A265413(n)])]`
-/

namespace A265412.P14389778109850271093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265413 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265412.P14389778109850271093

namespace A265412

/-- `∑[A006530(Δ[A265413(n)])]` -/
def P14389778109850271093.Spec : Prop :=
  ∀ n, P14389778109850271093.a n = A265412 n

end A265412

/-! ## A265412.P16578050923828186598

`∑[A014963(Δ[A265413(n)])]`
-/

namespace A265412.P16578050923828186598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265413 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265412.P16578050923828186598

namespace A265412

/-- `∑[A014963(Δ[A265413(n)])]` -/
def P16578050923828186598.Spec : Prop :=
  ∀ n, P16578050923828186598.a n = A265412 n

end A265412

/-! ## A265412.P6802502342510908128

`∑[A020639(Δ[A265413(n)])]`
-/

namespace A265412.P6802502342510908128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265413 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265412.P6802502342510908128

namespace A265412

/-- `∑[A020639(Δ[A265413(n)])]` -/
def P6802502342510908128.Spec : Prop :=
  ∀ n, P6802502342510908128.a n = A265412 n

end A265412

/-! ## A265412.P10060384042953219672

`A171463(n+1)+A027709(n)`
-/

namespace A265412.P10060384042953219672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (n + 1) + A027709 n

end

end A265412.P10060384042953219672

namespace A265412

/-- `A171463(n+1)+A027709(n)` -/
def P10060384042953219672.Spec : Prop :=
  ∀ n, P10060384042953219672.a n = A265412 n

end A265412

/-! ## A265412.P8158315679661230687

`comp[A173151(n+2)%A173154(n)]`
-/

namespace A265412.P8158315679661230687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173151 (n + 2)) (A173154 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A265412.P8158315679661230687

namespace A265412

/-- `comp[A173151(n+2)%A173154(n)]` -/
def P8158315679661230687.Spec : Prop :=
  ∀ n, (P8158315679661230687.a n : ℤ) = A265412 n

end A265412

/-! ## A265412.P7099172923263231233

`lt[n, A115139(n+1)²]+1`
-/

namespace A265412.P7099172923263231233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A265412.P7099172923263231233

namespace A265412

/-- `lt[n, A115139(n+1)²]+1` -/
def P7099172923263231233.Spec : Prop :=
  ∀ n, (P7099172923263231233.a n : ℤ) = A265412 n

end A265412

/-! ## A265412.P3335566236830649103

`A164386(A164386(A164386(A164386(n+1))))`
-/

namespace A265412.P3335566236830649103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164386 (A164386 (A164386 (A164386 (n + 1)).toNat).toNat).toNat

end

end A265412.P3335566236830649103

namespace A265412

/-- `A164386(A164386(A164386(A164386(n+1))))` -/
def P3335566236830649103.Spec : Prop :=
  ∀ n, P3335566236830649103.a n = A265412 n

end A265412

/-! ## A265412.P14639626426696864675

`∑[runs[A265410(n+1)]]`
-/

namespace A265412.P14639626426696864675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265410 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265412.P14639626426696864675

namespace A265412

/-- `∑[runs[A265410(n+1)]]` -/
def P14639626426696864675.Spec : Prop :=
  ∀ n, (P14639626426696864675.a n : ℤ) = A265412 n

end A265412

/-! ## A265412.P14743000854397340579

`lt[n, A011973(n)²]+1`
-/

namespace A265412.P14743000854397340579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A265412.P14743000854397340579

namespace A265412

/-- `lt[n, A011973(n)²]+1` -/
def P14743000854397340579.Spec : Prop :=
  ∀ n, (P14743000854397340579.a n : ℤ) = A265412 n

end A265412

/-! ## A265412.P5893786073764960338

`lt[n*sqrt(2), A028271(abs(1-n))]+1`
-/

namespace A265412.P5893786073764960338
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (2 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028271 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A265412.P5893786073764960338

namespace A265412

/-- `lt[n*sqrt(2), A028271(abs(1-n))]+1` -/
def P5893786073764960338.Spec : Prop :=
  ∀ n, (P5893786073764960338.a n : ℤ) = A265412 n

end A265412

/-! ## A265412.P1740844644400286042

`A023443(A265413(n+1))`
-/

namespace A265412.P1740844644400286042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A265413 (n + 1)).toNat

end

end A265412.P1740844644400286042

namespace A265412

/-- `A023443(A265413(n+1))` -/
def P1740844644400286042.Spec : Prop :=
  ∀ n, P1740844644400286042.a n = A265412 n

end A265412

/-! ## A265412.P12831173539795575372

`lt[n, A191314(n)²]+1`
-/

namespace A265412.P12831173539795575372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191314 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A265412.P12831173539795575372

namespace A265412

/-- `lt[n, A191314(n)²]+1` -/
def P12831173539795575372.Spec : Prop :=
  ∀ n, (P12831173539795575372.a n : ℤ) = A265412 n

end A265412

/-! ## A265412.P5911856076944403053

`lt[n, A097877(n)]+1`
-/

namespace A265412.P5911856076944403053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A265412.P5911856076944403053

namespace A265412

/-- `lt[n, A097877(n)]+1` -/
def P5911856076944403053.Spec : Prop :=
  ∀ n, (P5911856076944403053.a n : ℤ) = A265412 n

end A265412

/-!
# A265413: Positions of records in A265410: a(0) = 1; for n >= 1, a(n) = 1 + A265412(n-1).

The programs for A265413, the canonical program `A265413.P7587729247371265601` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265413 has offset 0).

The definition of A265413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265413.P7587729247371265601

`2*comp[floor((n/2)²)+2]+1-n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265413

/-- `2*comp[floor((n/2)²)+2]+1-n` -/
def P7587729247371265601.Spec : Prop :=
  ∀ n, P7587729247371265601.a n = A265413 n

theorem P7587729247371265601.correct : P7587729247371265601.Spec := by
  intro n
  simp only [A265413]

end A265413

/-! ## A265413.P1064662724497757251

`∑[A265411(A028310(n)-1)]`
-/

namespace A265413.P1064662724497757251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265413.P1064662724497757251

namespace A265413

/-- `∑[A265411(A028310(n)-1)]` -/
def P1064662724497757251.Spec : Prop :=
  ∀ n, P1064662724497757251.a n = A265413 n

end A265413

/-! ## A265413.P8643128466643921662

`∑[A265411(A004273(n)-n)]`
-/

namespace A265413.P8643128466643921662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265413.P8643128466643921662

namespace A265413

/-- `∑[A265411(A004273(n)-n)]` -/
def P8643128466643921662.Spec : Prop :=
  ∀ n, P8643128466643921662.a n = A265413 n

end A265413

/-! ## A265413.P467080590140950450

`∑[A265411(n-A056926(n))]`
-/

namespace A265413.P467080590140950450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 ((n : ℤ) - A056926 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265413.P467080590140950450

namespace A265413

/-- `∑[A265411(n-A056926(n))]` -/
def P467080590140950450.Spec : Prop :=
  ∀ n, P467080590140950450.a n = A265413 n

end A265413

/-! ## A265413.P13469092722201429905

`∪[A265412(n)+1, A265412(n)²]`
-/

namespace A265413.P13469092722201429905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265413.P13469092722201429905

namespace A265413

/-- `∪[A265412(n)+1, A265412(n)²]` -/
def P13469092722201429905.Spec : Prop :=
  ∀ n, (P13469092722201429905.a n : ℤ) = A265413 n

end A265413

/-! ## A265413.P3705117968471901236

`record[(n+1)%(A014462(n+1)+1)]`
-/

namespace A265413.P3705117968471901236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014462 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265413.P3705117968471901236

namespace A265413

/-- `record[(n+1)%(A014462(n+1)+1)]` -/
def P3705117968471901236.Spec : Prop :=
  ∀ n, P3705117968471901236.a n = A265413 n

end A265413

/-! ## A265413.P5505269419602549964

`record[(n+1)%A098925(n)²+1]`
-/

namespace A265413.P5505269419602549964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A098925 n ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265413.P5505269419602549964

namespace A265413

/-- `record[(n+1)%A098925(n)²+1]` -/
def P5505269419602549964.Spec : Prop :=
  ∀ n, P5505269419602549964.a n = A265413 n

end A265413

/-! ## A265413.P6869796404960747939

`record[gcd(n+1, round(2/A126114(n+1)))]`
-/

namespace A265413.P6869796404960747939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (2 / (A126114 (n + 1) : ℚ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265413.P6869796404960747939

namespace A265413

/-- `record[gcd(n+1, round(2/A126114(n+1)))]` -/
def P6869796404960747939.Spec : Prop :=
  ∀ n, (P6869796404960747939.a n : ℤ) = A265413 n

end A265413

/-! ## A265413.P16061263088155341989

`record[n%A002522(A102426(n))+1]`
-/

namespace A265413.P16061263088155341989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A002522 (A102426 n).toNat) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265413.P16061263088155341989

namespace A265413

/-- `record[n%A002522(A102426(n))+1]` -/
def P16061263088155341989.Spec : Prop :=
  ∀ n, P16061263088155341989.a n = A265413 n

end A265413

/-! ## A265413.P17481962331058038775

`record[Δ[A347433(n+2)]+1+n]`
-/

namespace A265413.P17481962331058038775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347433 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265413.P17481962331058038775

namespace A265413

/-- `record[Δ[A347433(n+2)]+1+n]` -/
def P17481962331058038775.Spec : Prop :=
  ∀ n, P17481962331058038775.a n = A265413 n

end A265413

/-!
# A265415: Positions of ones in A260643.

The programs for A265415, there is no canonical definition to state claims against.
-/

/-! ## A265415.P730750283641023252

`eq[0, A265579(n+1)]+1`
-/

namespace A265415.P730750283641023252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265415.P730750283641023252

/-! ## A265415.P7852395535926026232

`eq[1, A260643(n+1)]+1`
-/

namespace A265415.P7852395535926026232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265415.P7852395535926026232

/-! ## A265415.P17812017497670989822

`record[n+2-A193248(A260643(n+1)²)]`
-/

namespace A265415.P17812017497670989822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A193248 (A260643 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265415.P17812017497670989822

/-! ## A265415.P16113156369479552863

`record[A327937(n+1)/A193248(A260643(n+1)²)]`
-/

namespace A265415.P16113156369479552863
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327937 (n + 1) : ℚ) / (A193248 (A260643 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265415.P16113156369479552863

/-! ## A265415.P9045005743796092151

`record[A328399(2*n)/A193248(A260643(n+1)²)]`
-/

namespace A265415.P9045005743796092151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328399 (2 * n) : ℚ) / (A193248 (A260643 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265415.P9045005743796092151

/-!
# A265417: Rectangular array T(n,m), read by upward antidiagonals: T(n,m) is the number of difunctional (regular) binary relations between an n-element set and an m-element set.

The programs for A265417, there is no canonical definition to state claims against.
-/

/-! ## A265417.P12660757783762323840

`A102564(4*A301323(n+1))`
-/

namespace A265417.P12660757783762323840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102564 (4 * A301323 (n + 1)).toNat

end

end A265417.P12660757783762323840

/-! ## A265417.P6076122435232732049

`A131996(5*A222444(n+1))`
-/

namespace A265417.P6076122435232732049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131996 (5 * A222444 (n + 1)).toNat

end

end A265417.P6076122435232732049

/-! ## A265417.P4173090754518116966

`A131996(lcm(5, A222444(n+1)))`
-/

namespace A265417.P4173090754518116966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131996 (Int.lcm 5 (A222444 (n + 1)))

end

end A265417.P4173090754518116966

/-! ## A265417.P6469326633061768007

`A304472(A184137(n+1))%58`
-/

namespace A265417.P6469326633061768007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304472 (A184137 (n + 1)).toNat) 58

end

end A265417.P6469326633061768007

/-! ## A265417.P3012827763757346862

`A344543(A218319(n+1)+1)-A305104(A131060(n))`
-/

namespace A265417.P3012827763757346862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344543 (A218319 (n + 1) + 1).toNat - A305104 (A131060 n).toNat

end

end A265417.P3012827763757346862

/-!
# A265418: a(1)=2; for n>1, a(n) is the least prime q greater than p = a(n-1) such that p/q reaches a new minimum.

The programs for A265418, there is no canonical definition to state claims against.
-/

/-! ## A265418.P3103042594346469866

`A007918(floor(a(n-1)²/a(n-2)))` with `a(0)=2, a(1)=3`
-/

namespace A265418.P3103042594346469866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A007918 ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋.toNat

end

end A265418.P3103042594346469866

/-! ## A265418.P16976713162215505175

`A007918(ceil(a(n-1)²/a(n-2))-1)` with `a(0)=2, a(1)=3`
-/

namespace A265418.P16976713162215505175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A007918 (⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1).toNat

end

end A265418.P16976713162215505175

/-! ## A265418.P818993815401158324

`A159477(A005774(n)+2)`
-/

namespace A265418.P818993815401158324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A005774 n + 2).toNat

end

end A265418.P818993815401158324

/-! ## A265418.P11433767357220844842

`A005145(or(A018099(n), A081920(n)))`
-/

namespace A265418.P11433767357220844842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (Int.lor (A018099 n) (A081920 n)).toNat

end

end A265418.P11433767357220844842

/-!
# A265419: Number of nX2 arrays containing 2 copies of 0..n-1 with no equal horizontal, vertical, diagonal or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265419, there is no canonical definition to state claims against.
-/

/-! ## A265419.P13011364895392480292

`A265421(∑[n+2])`
-/

namespace A265419.P13011364895392480292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265421 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265419.P13011364895392480292

/-! ## A265419.P6910387008722901804

`A029578(floor(comp[∑[n-1]]^(n-1)/7))`
-/

namespace A265419.P6910387008722901804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 7⌋.toNat

end

end A265419.P6910387008722901804

/-!
# A265420: Number of n X 3 arrays containing 3 copies of 0..n-1 with no equal horizontal, vertical, diagonal or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265420, there is no canonical definition to state claims against.
-/

/-! ## A265420.P4285469701895974206

`A265421(∑[n+3]+1)`
-/

namespace A265420.P4285469701895974206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265421 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265420.P4285469701895974206

/-! ## A265420.P15135855952492911948

`A004218(n+1)*A265421(A034856(n+2))`
-/

namespace A265420.P15135855952492911948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1) * A265421 (A034856 (n + 2)).toNat

end

end A265420.P15135855952492911948

/-! ## A265420.P18393109433105676757

`A061395(2^n)*A265421(A034856(n+2))`
-/

namespace A265420.P18393109433105676757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 ^ n) * A265421 (A034856 (n + 2)).toNat

end

end A265420.P18393109433105676757

/-! ## A265420.P12431462500024719942

`A278195(A046800(n))+A265421(A034856(n+2))`
-/

namespace A265420.P12431462500024719942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278195 (A046800 n).toNat + A265421 (A034856 (n + 2)).toNat

end

end A265420.P12431462500024719942

/-!
# A265421: T(n,k) = Number of n X k arrays containing k copies of 0..n-1 with no equal horizontal, vertical, diagonal or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265421, there is no canonical definition to state claims against.
-/

/-! ## A265421.P9840611363076316666

`A294142(A339033(n+1))`
-/

namespace A265421.P9840611363076316666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294142 (A339033 (n + 1)).toNat

end

end A265421.P9840611363076316666

/-! ## A265421.P1436987918918724714

`A380746(A083773(n+2))`
-/

namespace A265421.P1436987918918724714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380746 (A083773 (n + 2)).toNat

end

end A265421.P1436987918918724714

/-! ## A265421.P1658471418586653027

`A321936(A187988(n+2))`
-/

namespace A265421.P1658471418586653027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A187988 (n + 2)).toNat

end

end A265421.P1658471418586653027

/-! ## A265421.P13535176940679458923

`A316893(A211700(n+2))`
-/

namespace A265421.P13535176940679458923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316893 (A211700 (n + 2)).toNat

end

end A265421.P13535176940679458923

/-! ## A265421.P8294504526108007376

`and(A117389(n), A327149(n))`
-/

namespace A265421.P8294504526108007376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117389 n) (A327149 n)

end

end A265421.P8294504526108007376

/-!
# A265422: Number of 5Xn arrays containing n copies of 0..5-1 with no equal horizontal, vertical, diagonal or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265422, there is no canonical definition to state claims against.
-/

/-! ## A265422.P6816779122404225622

`A265421(∑[n+4]+11)`
-/

namespace A265422.P6816779122404225622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265421 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A265422.P6816779122404225622

/-! ## A265422.P16069165399922605666

`record[A265421(A167499(n))]`
-/

namespace A265422.P16069165399922605666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265421 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265422.P16069165399922605666

/-! ## A265422.P16380283052793130735

`record[A265421(A288937(n+1))]`
-/

namespace A265422.P16380283052793130735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265421 (A288937 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265422.P16380283052793130735

/-!
# A265423: a(n) = (-1)^n + 50*floor(3*n/2) - 100*floor(n/4).

The programs for A265423, the canonical program `A265423.P12282064410437593844` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265423 has offset 0).

The definition of A265423 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n+50*floor(3*n/2)-100*floor(n/4)` (program `A265423.P12282064410437593844`, by `A265423.P12282064410437593844.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A265423.P6835409870352299282

`ogf((1+48x+102x^2+48x^3+x^4)/(1-x-x^4+x^5))`
-/

namespace A265423.P6835409870352299282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 48, 102, 48, 1] [1, -1, 0, 0, -1, 1] n

end

end A265423.P6835409870352299282

namespace A265423

/-- `ogf((1+48x+102x^2+48x^3+x^4)/(1-x-x^4+x^5))` -/
def P6835409870352299282.Spec : Prop :=
  ∀ n, P6835409870352299282.a n = A265423 n

end A265423

/-! ## A265423.P12282064410437593844

`(-1)^n+50*floor(3*n/2)-100*floor(n/4)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265423

/-- `(-1)^n+50*floor(3*n/2)-100*floor(n/4)` -/
def P12282064410437593844.Spec : Prop :=
  ∀ n, P12282064410437593844.a n = A265423 n

theorem P12282064410437593844.correct : P12282064410437593844.Spec := by
  intro n
  simp only [A265423]

end A265423

/-! ## A265423.P2546167103408011925

`∑[Δ[A008852(n+1)]*A040000(n)]`
-/

namespace A265423.P2546167103408011925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008852 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265423.P2546167103408011925

namespace A265423

/-- `∑[Δ[A008852(n+1)]*A040000(n)]` -/
def P2546167103408011925.Spec : Prop :=
  ∀ n, P2546167103408011925.a n = A265423 n

end A265423

/-! ## A265423.P5075435231939383482

`A005408(A265424(n))`
-/

namespace A265423.P5075435231939383482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A265424 n).toNat

end

end A265423.P5075435231939383482

namespace A265423

/-- `A005408(A265424(n))` -/
def P5075435231939383482.Spec : Prop :=
  ∀ n, P5075435231939383482.a n = A265423 n

end A265423

/-! ## A265423.P13050461772049593062

`A005408(A008852(n+2)-1)`
-/

namespace A265423.P13050461772049593062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A008852 (n + 2) - 1).toNat

end

end A265423.P13050461772049593062

namespace A265423

/-- `A005408(A008852(n+2)-1)` -/
def P13050461772049593062.Spec : Prop :=
  ∀ n, P13050461772049593062.a n = A265423 n

end A265423

/-! ## A265423.P1358666524460467649

`A004273(A265424(n)+1)`
-/

namespace A265423.P1358666524460467649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A265424 n + 1).toNat

end

end A265423.P1358666524460467649

namespace A265423

/-- `A004273(A265424(n)+1)` -/
def P1358666524460467649.Spec : Prop :=
  ∀ n, P1358666524460467649.a n = A265423 n

end A265423

/-! ## A265423.P13554138985742766280

`A004273(A008852(n+2))`
-/

namespace A265423.P13554138985742766280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A008852 (n + 2)).toNat

end

end A265423.P13554138985742766280

namespace A265423

/-- `A004273(A008852(n+2))` -/
def P13554138985742766280.Spec : Prop :=
  ∀ n, P13554138985742766280.a n = A265423 n

end A265423

/-! ## A265423.P13433452975533599254

`A033465(2*A265424(n)-A265424(n))`
-/

namespace A265423.P13433452975533599254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033465 (2 * A265424 n - A265424 n).toNat

end

end A265423.P13433452975533599254

namespace A265423

/-- `A033465(2*A265424(n)-A265424(n))` -/
def P13433452975533599254.Spec : Prop :=
  ∀ n, P13433452975533599254.a n = A265423 n

end A265423

/-! ## A265423.P15919568577809969755

`A004442(2*A265424(n))`
-/

namespace A265423.P15919568577809969755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A265424 n).toNat

end

end A265423.P15919568577809969755

namespace A265423

/-- `A004442(2*A265424(n))` -/
def P15919568577809969755.Spec : Prop :=
  ∀ n, P15919568577809969755.a n = A265423 n

end A265423

/-! ## A265423.P4263371343782949339

`A023443(2*A008852(n+2))`
-/

namespace A265423.P4263371343782949339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A008852 (n + 2)).toNat

end

end A265423.P4263371343782949339

namespace A265423

/-- `A023443(2*A008852(n+2))` -/
def P4263371343782949339.Spec : Prop :=
  ∀ n, P4263371343782949339.a n = A265423 n

end A265423

/-!
# A265424: a(n) = ((-1)^n - 1)/2 + 25*floor(3*n/2) - 50*floor(n/4).

The programs for A265424, the canonical program `A265424.P14170914658416835341` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265424 has offset 0).

The definition of A265424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265424.P14827150668685525814

`ogf((24x+51x^2+24x^3+x^4)/(1-x-x^4+x^5))`
-/

namespace A265424.P14827150668685525814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 24, 51, 24, 1] [1, -1, 0, 0, -1, 1] n

end

end A265424.P14827150668685525814

namespace A265424

/-- `ogf((24x+51x^2+24x^3+x^4)/(1-x-x^4+x^5))` -/
def P14827150668685525814.Spec : Prop :=
  ∀ n, P14827150668685525814.a n = A265424 n

end A265424

/-! ## A265424.P14170914658416835341

`((-1)^n-1)/2+25*floor(3*n/2)-50*floor(n/4)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265424

/-- `((-1)^n-1)/2+25*floor(3*n/2)-50*floor(n/4)` -/
def P14170914658416835341.Spec : Prop :=
  ∀ n, P14170914658416835341.a n = (A265424 n : ℚ)

end A265424

/-! ## A265424.P2137694225198942402

`(A265423(n)-1)/2`
-/

namespace A265424.P2137694225198942402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265423 n - 1 : ℚ) / 2

end

end A265424.P2137694225198942402

namespace A265424

/-- `(A265423(n)-1)/2` -/
def P2137694225198942402.Spec : Prop :=
  ∀ n, P2137694225198942402.a n = (A265424 n : ℚ)

end A265424

/-! ## A265424.P7485493075345508568

`floor(A265423(n)/2)`
-/

namespace A265424.P7485493075345508568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265423 n : ℚ) / 2⌋

end

end A265424.P7485493075345508568

namespace A265424

/-- `floor(A265423(n)/2)` -/
def P7485493075345508568.Spec : Prop :=
  ∀ n, P7485493075345508568.a n = A265424 n

end A265424

/-! ## A265424.P1528684144528701877

`abs(1-A008852(n+2))`
-/

namespace A265424.P1528684144528701877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A008852 (n + 2)|

end

end A265424.P1528684144528701877

namespace A265424

/-- `abs(1-A008852(n+2))` -/
def P1528684144528701877.Spec : Prop :=
  ∀ n, P1528684144528701877.a n = A265424 n

end A265424

/-! ## A265424.P16027656832093571489

`Δ[∑[A008852(n+1)]-n]`
-/

namespace A265424.P16027656832093571489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008852 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265424.P16027656832093571489

namespace A265424

/-- `Δ[∑[A008852(n+1)]-n]` -/
def P16027656832093571489.Spec : Prop :=
  ∀ n, P16027656832093571489.a n = A265424 n

end A265424

/-! ## A265424.P4100217903102493406

`A008856(A028836(n+2)-1)`
-/

namespace A265424.P4100217903102493406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (A028836 (n + 2) - 1).toNat

end

end A265424.P4100217903102493406

namespace A265424

/-- `A008856(A028836(n+2)-1)` -/
def P4100217903102493406.Spec : Prop :=
  ∀ n, P4100217903102493406.a n = A265424 n

end A265424

/-! ## A265424.P8864565598791040483

`∩[A008856(n+1)-1, A008856(n+1)]`
-/

namespace A265424.P8864565598791040483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265424.P8864565598791040483

namespace A265424

/-- `∩[A008856(n+1)-1, A008856(n+1)]` -/
def P8864565598791040483.Spec : Prop :=
  ∀ n, (P8864565598791040483.a n : ℤ) = A265424 n

end A265424

/-! ## A265424.P12837751128661594923

`A038572(A265423(n)-1)`
-/

namespace A265424.P12837751128661594923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A265423 n - 1).toNat

end

end A265424.P12837751128661594923

namespace A265424

/-- `A038572(A265423(n)-1)` -/
def P12837751128661594923.Spec : Prop :=
  ∀ n, P12837751128661594923.a n = A265424 n

end A265424

/-! ## A265424.P18215236450827989869

`A023443(A008852(n+2))`
-/

namespace A265424.P18215236450827989869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A008852 (n + 2)).toNat

end

end A265424.P18215236450827989869

namespace A265424

/-- `A023443(A008852(n+2))` -/
def P18215236450827989869.Spec : Prop :=
  ∀ n, P18215236450827989869.a n = A265424 n

end A265424

/-! ## A265424.P4712721315828258713

`A004525(A265423(n)-1)`
-/

namespace A265424.P4712721315828258713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A265423 n - 1).toNat

end

end A265424.P4712721315828258713

namespace A265424

/-- `A004525(A265423(n)-1)` -/
def P4712721315828258713.Spec : Prop :=
  ∀ n, P4712721315828258713.a n = A265424 n

end A265424

/-! ## A265424.P3556670528937731541

`A004525(xor(1, A265423(n)))`
-/

namespace A265424.P3556670528937731541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.xor 1 (A265423 n)).toNat

end

end A265424.P3556670528937731541

namespace A265424

/-- `A004525(xor(1, A265423(n)))` -/
def P3556670528937731541.Spec : Prop :=
  ∀ n, P3556670528937731541.a n = A265424 n

end A265424

/-! ## A265424.P7449971951461944310

`A004524(A265423(n))`
-/

namespace A265424.P7449971951461944310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A265423 n).toNat

end

end A265424.P7449971951461944310

namespace A265424

/-- `A004524(A265423(n))` -/
def P7449971951461944310.Spec : Prop :=
  ∀ n, P7449971951461944310.a n = A265424 n

end A265424

/-!
# A265425: Numbers k such that k+2 and sigma(k-1) are both primes.

The programs for A265425, there is no canonical definition to state claims against.
-/

/-! ## A265425.P3975956977738093257

`(A136005(n+1)+3)/2`
-/

namespace A265425.P3975956977738093257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136005 (n + 1) + 3 : ℚ) / 2

end

end A265425.P3975956977738093257

/-! ## A265425.P14127256398906539819

`(A183077(n+1)+3)/2`
-/

namespace A265425.P14127256398906539819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183077 (n + 1) + 3 : ℚ) / 2

end

end A265425.P14127256398906539819

/-! ## A265425.P2343818341613840706

`(A336720(n+1)+3)/2`
-/

namespace A265425.P2343818341613840706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336720 (n + 1) + 3 : ℚ) / 2

end

end A265425.P2343818341613840706

/-! ## A265425.P14193824858362232304

`A169628(A025707(n))`
-/

namespace A265425.P14193824858362232304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (A025707 n).toNat

end

end A265425.P14193824858362232304

/-!
# A265426: Primes p such that p - 1 is a binary Keith number (A162724).

The programs for A265426, there is no canonical definition to state claims against.
-/

/-! ## A265426.P15982589021287307167

`p?[A162724(n+1)+1]`
-/

namespace A265426.P15982589021287307167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162724 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265426.P15982589021287307167

/-! ## A265426.P3986516779349145569

`record[A020639(A162724(n+1)+1)]`
-/

namespace A265426.P3986516779349145569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A162724 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265426.P3986516779349145569

/-! ## A265426.P212192769012666066

`p?[or(A080880(n), A080885(n+3))]`
-/

namespace A265426.P212192769012666066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080880 n) (A080885 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265426.P212192769012666066

/-!
# A265427: Binary representation of the n-th iteration of the "Rule 188" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265427, there is no canonical definition to state claims against.
-/

/-! ## A265427.P14580302503152753389

`A007088(A118173(n))`
-/

namespace A265427.P14580302503152753389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A118173 n).toNat

end

end A265427.P14580302503152753389

/-! ## A265427.P13640999056568701138

`A007088(A265381(2*(n+2))%(1-A265381(n+4)))`
-/

namespace A265427.P13640999056568701138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A265381 (2 * (n + 2))) (1 - A265381 (n + 4))).toNat

end

end A265427.P13640999056568701138

/-! ## A265427.P5116970599307704297

`A305989(A006977(n))`
-/

namespace A265427.P5116970599307704297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A006977 n).toNat

end

end A265427.P5116970599307704297

/-! ## A265427.P13997073315856953111

`A185544(2*A118173(n))`
-/

namespace A265427.P13997073315856953111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A118173 n).toNat

end

end A265427.P13997073315856953111

/-! ## A265427.P6237323262053210019

`A185544(lcm(2, A118173(n)))`
-/

namespace A265427.P6237323262053210019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A118173 n))

end

end A265427.P6237323262053210019

/-!
# A265428: Number of ON (black) cells in the n-th iteration of the "Rule 188" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265428, the canonical program `A265428.P10687533622041744861` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265428 has offset 0).

The definition of A265428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265428.P10687533622041744861

`(6*n+9+2*cos(n*π/2)-3*cos(n*π)-2*sin(n*π/2))/8`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265428

/-- `(6*n+9+2*cos(n*π/2)-3*cos(n*π)-2*sin(n*π/2))/8` -/
def P10687533622041744861.Spec : Prop :=
  ∀ n, P10687533622041744861.a n = (A265428 n : ℝ)

end A265428

/-! ## A265428.P18069307651503731852

`∑[log2(gcd(4, n+1))]+1`
-/

namespace A265428.P18069307651503731852
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 4 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A265428.P18069307651503731852

namespace A265428

/-- `∑[log2(gcd(4, n+1))]+1` -/
def P18069307651503731852.Spec : Prop :=
  ∀ n, P18069307651503731852.a n = (A265428 n : ℝ)

end A265428

/-! ## A265428.P6595927821199346893

`a(n-4)+3` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A265428.P6595927821199346893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 4] fun n a =>
  a (n - 4) + 3

end

end A265428.P6595927821199346893

namespace A265428

/-- `a(n-4)+3` -/
def P6595927821199346893.Spec : Prop :=
  ∀ n, (P6595927821199346893.a n : ℤ) = A265428 n

end A265428

/-! ## A265428.P17061726490692524825

`ceil(xor(1, 3*(n+1))/4)`
-/

namespace A265428.P17061726490692524825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (3 * (n + 1)) : ℚ) / 4⌉

end

end A265428.P17061726490692524825

namespace A265428

/-- `ceil(xor(1, 3*(n+1))/4)` -/
def P17061726490692524825.Spec : Prop :=
  ∀ n, P17061726490692524825.a n = A265428 n

end A265428

/-! ## A265428.P13976114646685445880

`round(3*or(1, n+1)/4)`
-/

namespace A265428.P13976114646685445880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((Nat.lor 1 (n + 1) : ℚ) / 4))

end

end A265428.P13976114646685445880

namespace A265428

/-- `round(3*or(1, n+1)/4)` -/
def P13976114646685445880.Spec : Prop :=
  ∀ n, P13976114646685445880.a n = A265428 n

end A265428

/-! ## A265428.P14465140884004232573

`floor(or(1, n+1)-n/4)`
-/

namespace A265428.P14465140884004232573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (n + 1) : ℚ) - (n : ℚ) / 4⌋

end

end A265428.P14465140884004232573

namespace A265428

/-- `floor(or(1, n+1)-n/4)` -/
def P14465140884004232573.Spec : Prop :=
  ∀ n, P14465140884004232573.a n = A265428 n

end A265428

/-! ## A265428.P13100635112765594905

`or(1, n+1)-ceil(n/4)`
-/

namespace A265428.P13100635112765594905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) : ℤ) - ⌈(n : ℚ) / 4⌉

end

end A265428.P13100635112765594905

namespace A265428

/-- `or(1, n+1)-ceil(n/4)` -/
def P13100635112765594905.Spec : Prop :=
  ∀ n, P13100635112765594905.a n = A265428 n

end A265428

/-! ## A265428.P17449211238921041182

`round(n+1-xor(1, n)/4)`
-/

namespace A265428.P17449211238921041182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) - (Nat.xor 1 n : ℚ) / 4)

end

end A265428.P17449211238921041182

namespace A265428

/-- `round(n+1-xor(1, n)/4)` -/
def P17449211238921041182.Spec : Prop :=
  ∀ n, P17449211238921041182.a n = A265428 n

end A265428

/-! ## A265428.P992038729025633351

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2, a(4)=0`
-/

namespace A265428.P992038729025633351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 2, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265428.P992038729025633351

namespace A265428

/-- `∑[abs(a(n-4))]` -/
def P992038729025633351.Spec : Prop :=
  ∀ n, (P992038729025633351.a n : ℤ) = A265428 n

end A265428

/-! ## A265428.P11819967114214845222

`∑[dr(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2, a(4)=0`
-/

namespace A265428.P11819967114214845222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 2, 0] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265428.P11819967114214845222

namespace A265428

/-- `∑[dr(a(n-4))]` -/
def P11819967114214845222.Spec : Prop :=
  ∀ n, (P11819967114214845222.a n : ℤ) = A265428 n

end A265428

/-! ## A265428.P9651666976109993735

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A265428.P9651666976109993735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 2, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265428.P9651666976109993735

namespace A265428

/-- `∑[floor(a(n-4))]` -/
def P9651666976109993735.Spec : Prop :=
  ∀ n, (P9651666976109993735.a n : ℤ) = A265428 n

end A265428

/-! ## A265428.P4297384689934480985

`∑[ceil(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2, a(4)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A265428.P4297384689934480985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 2, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265428.P4297384689934480985

namespace A265428

/-- `∑[ceil(a(n-4))]` -/
def P4297384689934480985.Spec : Prop :=
  ∀ n, (P4297384689934480985.a n : ℤ) = A265428 n

end A265428

/-! ## A265428.P9930927489862233289

`∑[round(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2, a(4)=0`

`round` is left out, it is the identity on integers.
-/

namespace A265428.P9930927489862233289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 2, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265428.P9930927489862233289

namespace A265428

/-- `∑[round(a(n-4))]` -/
def P9930927489862233289.Spec : Prop :=
  ∀ n, (P9930927489862233289.a n : ℤ) = A265428 n

end A265428

/-! ## A265428.P15492625455086717729

`∑[and(n, a(n-4))]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A265428.P15492625455086717729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 2] fun n f1 =>
  Nat.land n (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265428.P15492625455086717729

namespace A265428

/-- `∑[and(n, a(n-4))]` -/
def P15492625455086717729.Spec : Prop :=
  ∀ n, (P15492625455086717729.a n : ℤ) = A265428 n

end A265428

/-! ## A265428.P2240335369577162877

`floor(∑[lcm(2, n)+ϕ]/(n+1))`
-/

namespace A265428.P2240335369577162877
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℝ) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) / (n + 1 : ℝ)⌋

end

end A265428.P2240335369577162877

namespace A265428

/-- `floor(∑[lcm(2, n)+ϕ]/(n+1))` -/
def P2240335369577162877.Spec : Prop :=
  ∀ n, P2240335369577162877.a n = A265428 n

end A265428

/-! ## A265428.P686621668310841008

`∑[a(n-4)%3]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2, a(4)=0`
-/

namespace A265428.P686621668310841008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 2, 0] fun n f1 =>
  f1 (n - 4) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265428.P686621668310841008

namespace A265428

/-- `∑[a(n-4)%3]` -/
def P686621668310841008.Spec : Prop :=
  ∀ n, (P686621668310841008.a n : ℤ) = A265428 n

end A265428

/-! ## A265428.P4894890816959932157

`round(or(1, n+1)-(n+2)/4)`
-/

namespace A265428.P4894890816959932157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n + 1) : ℚ) - (n + 2 : ℚ) / 4)

end

end A265428.P4894890816959932157

namespace A265428

/-- `round(or(1, n+1)-(n+2)/4)` -/
def P4894890816959932157.Spec : Prop :=
  ∀ n, P4894890816959932157.a n = A265428 n

end A265428

/-! ## A265428.P6242377374464261697

`floor(n+1-xor(1, n-2)/4)`
-/

namespace A265428.P6242377374464261697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) - (Int.xor 1 ((n : ℤ) - 2) : ℚ) / 4⌋

end

end A265428.P6242377374464261697

namespace A265428

/-- `floor(n+1-xor(1, n-2)/4)` -/
def P6242377374464261697.Spec : Prop :=
  ∀ n, P6242377374464261697.a n = A265428 n

end A265428

/-! ## A265428.P12617744550949370742

`n+1-ceil(xor(1, n-2)/4)`
-/

namespace A265428.P12617744550949370742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌈(Int.xor 1 ((n : ℤ) - 2) : ℚ) / 4⌉

end

end A265428.P12617744550949370742

namespace A265428

/-- `n+1-ceil(xor(1, n-2)/4)` -/
def P12617744550949370742.Spec : Prop :=
  ∀ n, P12617744550949370742.a n = A265428 n

end A265428

/-! ## A265428.P11318154079967652809

`ceil((or(3, n+1)+2*n)/4)`
-/

namespace A265428.P11318154079967652809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 3 (n + 1) + 2 * n : ℚ) / 4⌉

end

end A265428.P11318154079967652809

namespace A265428

/-- `ceil((or(3, n+1)+2*n)/4)` -/
def P11318154079967652809.Spec : Prop :=
  ∀ n, P11318154079967652809.a n = A265428 n

end A265428

/-!
# A265429: Total number of ON (black) cells after n iterations of the "Rule 188" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265429, the canonical program `A265429.P17937643046909514164` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265429 has offset 0).

The definition of A265429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265429.P10989130762713081020

`∑[∑[log2(gcd(4, n+1))]+1]`
-/

namespace A265429.P10989130762713081020
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 4 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265429.P10989130762713081020

namespace A265429

/-- `∑[∑[log2(gcd(4, n+1))]+1]` -/
def P10989130762713081020.Spec : Prop :=
  ∀ n, P10989130762713081020.a n = (A265429 n : ℝ)

end A265429

/-! ## A265429.P17937643046909514164

`∑[n+1]-round(n²/8)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265429

/-- `∑[n+1]-round(n²/8)` -/
def P17937643046909514164.Spec : Prop :=
  ∀ n, P17937643046909514164.a n = A265429 n

theorem P17937643046909514164.correct : P17937643046909514164.Spec := by
  intro n
  simp only [A265429]

end A265429

/-! ## A265429.P16337452601383704152

`∑[a(n-4)+3]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A265429.P16337452601383704152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 4] fun n f1 =>
  f1 (n - 4) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265429.P16337452601383704152

namespace A265429

/-- `∑[a(n-4)+3]` -/
def P16337452601383704152.Spec : Prop :=
  ∀ n, (P16337452601383704152.a n : ℤ) = A265429 n

end A265429

/-! ## A265429.P7890040934255364958

`∑[∑[floor(a(n-4))]]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A265429.P7890040934255364958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 2, 0] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265429.P7890040934255364958

namespace A265429

/-- `∑[∑[floor(a(n-4))]]` -/
def P7890040934255364958.Spec : Prop :=
  ∀ n, (P7890040934255364958.a n : ℤ) = A265429 n

end A265429

/-! ## A265429.P6202681495198917788

`∑[∑[and(n, a(n-4))]]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A265429.P6202681495198917788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 2] fun n f2 =>
  Nat.land n (f2 (n - 4))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265429.P6202681495198917788

namespace A265429

/-- `∑[∑[and(n, a(n-4))]]` -/
def P6202681495198917788.Spec : Prop :=
  ∀ n, (P6202681495198917788.a n : ℤ) = A265429 n

end A265429

/-! ## A265429.P10709239465848329008

`∑[floor(∑[gcd(2, n)/2])+n%2]`
-/

namespace A265429.P10709239465848329008
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265429.P10709239465848329008

namespace A265429

/-- `∑[floor(∑[gcd(2, n)/2])+n%2]` -/
def P10709239465848329008.Spec : Prop :=
  ∀ n, P10709239465848329008.a n = A265429 n

end A265429

/-! ## A265429.P770735392788377091

`∑[∑[a(n-4)%3]]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2, a(4)=0`
-/

namespace A265429.P770735392788377091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 2, 0] fun n f2 =>
  f2 (n - 4) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265429.P770735392788377091

namespace A265429

/-- `∑[∑[a(n-4)%3]]` -/
def P770735392788377091.Spec : Prop :=
  ∀ n, (P770735392788377091.a n : ℤ) = A265429 n

end A265429

/-! ## A265429.P18440742002797015217

`∑[∑[∑[2/a(n-2)]]]` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=2`
-/

namespace A265429.P18440742002797015217
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, -1, 2] fun n f3 =>
  2 / f3 (n - 2)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265429.P18440742002797015217

namespace A265429

/-- `∑[∑[∑[2/a(n-2)]]]` -/
def P18440742002797015217.Spec : Prop :=
  ∀ n, P18440742002797015217.a n = (A265429 n : ℚ)

end A265429

/-! ## A265429.P1008679601247337637

`∑[∑[a(a(n-2))-(-1)^n]]` with `a(0)=1, a(1)=1`
-/

namespace A265429.P1008679601247337637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (f2 (n - 2)).toNat - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265429.P1008679601247337637

namespace A265429

/-- `∑[∑[a(a(n-2))-(-1)^n]]` -/
def P1008679601247337637.Spec : Prop :=
  ∀ n, P1008679601247337637.a n = A265429 n

end A265429

/-! ## A265429.P7389060834198380143

`ogf((1+x+2x^3-x^4)/(1-2x+x^2-x^4+2x^5-x^6))`
-/

namespace A265429.P7389060834198380143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 2, -1] [1, -2, 1, 0, -1, 2, -1] n

end

end A265429.P7389060834198380143

namespace A265429

/-- `ogf((1+x+2x^3-x^4)/(1-2x+x^2-x^4+2x^5-x^6))` -/
def P7389060834198380143.Spec : Prop :=
  ∀ n, P7389060834198380143.a n = A265429 n

end A265429

/-! ## A265429.P6829832052889075916

`∑[∑[a(a(n-1))*a(n-4)]]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A265429.P6829832052889075916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 2] fun n f2 =>
  f2 (f2 (n - 1)) * f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265429.P6829832052889075916

namespace A265429

/-- `∑[∑[a(a(n-1))*a(n-4)]]` -/
def P6829832052889075916.Spec : Prop :=
  ∀ n, (P6829832052889075916.a n : ℤ) = A265429 n

end A265429

/-! ## A265429.P17368975404988511975

`∑[A265428(n)]`
-/

namespace A265429.P17368975404988511975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265429.P17368975404988511975

namespace A265429

/-- `∑[A265428(n)]` -/
def P17368975404988511975.Spec : Prop :=
  ∀ n, P17368975404988511975.a n = A265429 n

end A265429

/-! ## A265429.P4018282096288867715

`∑[∑[A131743(n)]+1]`
-/

namespace A265429.P4018282096288867715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131743 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265429.P4018282096288867715

namespace A265429

/-- `∑[∑[A131743(n)]+1]` -/
def P4018282096288867715.Spec : Prop :=
  ∀ n, P4018282096288867715.a n = A265429 n

end A265429

/-! ## A265429.P17522707874332188389

`ceil(A276382(n+1)/2)`
-/

namespace A265429.P17522707874332188389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A276382 (n + 1) : ℚ) / 2⌉

end

end A265429.P17522707874332188389

namespace A265429

/-- `ceil(A276382(n+1)/2)` -/
def P17522707874332188389.Spec : Prop :=
  ∀ n, P17522707874332188389.a n = A265429 n

end A265429

/-! ## A265429.P11269441065303534788

`floor(∑[∑[1/A040001(n)]])`
-/

namespace A265429.P11269441065303534788
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A040001 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A265429.P11269441065303534788

namespace A265429

/-- `floor(∑[∑[1/A040001(n)]])` -/
def P11269441065303534788.Spec : Prop :=
  ∀ n, P11269441065303534788.a n = A265429 n

end A265429

/-! ## A265429.P7506692957492055947

`∑[∑[A364447(n+1)]-n]`
-/

namespace A265429.P7506692957492055947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364447 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265429.P7506692957492055947

namespace A265429

/-- `∑[∑[A364447(n+1)]-n]` -/
def P7506692957492055947.Spec : Prop :=
  ∀ n, P7506692957492055947.a n = A265429 n

end A265429

/-! ## A265429.P11773740030764054249

`∑[∑[and(n, A177704(n))]+1]`
-/

namespace A265429.P11773740030764054249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A177704 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265429.P11773740030764054249

namespace A265429

/-- `∑[∑[and(n, A177704(n))]+1]` -/
def P11773740030764054249.Spec : Prop :=
  ∀ n, P11773740030764054249.a n = A265429 n

end A265429

/-! ## A265429.P8253036830071852471

`∑[A047285(n+1)+1-n]`
-/

namespace A265429.P8253036830071852471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047285 (n + 1) + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265429.P8253036830071852471

namespace A265429

/-- `∑[A047285(n+1)+1-n]` -/
def P8253036830071852471.Spec : Prop :=
  ∀ n, P8253036830071852471.a n = A265429 n

end A265429

/-! ## A265429.P1403794926080986625

`∑[1-A059169(n+1)+n]`
-/

namespace A265429.P1403794926080986625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A059169 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265429.P1403794926080986625

namespace A265429

/-- `∑[1-A059169(n+1)+n]` -/
def P1403794926080986625.Spec : Prop :=
  ∀ n, P1403794926080986625.a n = A265429 n

end A265429

/-!
# A265430: Number of OFF (white) cells in the n-th iteration of the "Rule 188" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265430, the canonical program `A265430.P2017050234464629075` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265430 has offset 0).

The definition of A265430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265430.P2017050234464629075

`floor(abs(xor(n, -2))/4+n)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265430

/-- `floor(abs(xor(n, -2))/4+n)` -/
def P2017050234464629075.Spec : Prop :=
  ∀ n, P2017050234464629075.a n = A265430 n

theorem P2017050234464629075.correct : P2017050234464629075.Spec := by
  intro n
  simp only [A265430]

end A265430

/-! ## A265430.P10116879656326180103

`a(n-4)+5` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A265430.P10116879656326180103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3] fun n a =>
  a (n - 4) + 5

end

end A265430.P10116879656326180103

namespace A265430

/-- `a(n-4)+5` -/
def P10116879656326180103.Spec : Prop :=
  ∀ n, (P10116879656326180103.a n : ℤ) = A265430 n

end A265430

/-! ## A265430.P17907503501821403794

`floor(or(1, n)+(n-1)/4)`
-/

namespace A265430.P17907503501821403794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n : ℚ) + ((n : ℤ) - 1 : ℚ) / 4⌋

end

end A265430.P17907503501821403794

namespace A265430

/-- `floor(or(1, n)+(n-1)/4)` -/
def P17907503501821403794.Spec : Prop :=
  ∀ n, P17907503501821403794.a n = A265430 n

end A265430

/-! ## A265430.P16295742292211625343

`floor((xor(1, n)+1)/4)+n`
-/

namespace A265430.P16295742292211625343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n + 1 : ℚ) / 4⌋ + (n : ℤ)

end

end A265430.P16295742292211625343

namespace A265430

/-- `floor((xor(1, n)+1)/4)+n` -/
def P16295742292211625343.Spec : Prop :=
  ∀ n, P16295742292211625343.a n = A265430 n

end A265430

/-! ## A265430.P4533310322617032941

`ceil(xor(1, n-2)/4+n)`
-/

namespace A265430.P4533310322617032941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 1 ((n : ℤ) - 2) : ℚ) / 4 + (n : ℚ)⌉

end

end A265430.P4533310322617032941

namespace A265430

/-- `ceil(xor(1, n-2)/4+n)` -/
def P4533310322617032941.Spec : Prop :=
  ∀ n, P4533310322617032941.a n = A265430 n

end A265430

/-! ## A265430.P14681640833851564054

`round(or(1, n)+(n-3)/4)`
-/

namespace A265430.P14681640833851564054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 n : ℚ) + ((n : ℤ) - 3 : ℚ) / 4)

end

end A265430.P14681640833851564054

namespace A265430

/-- `round(or(1, n)+(n-3)/4)` -/
def P14681640833851564054.Spec : Prop :=
  ∀ n, P14681640833851564054.a n = A265430 n

end A265430

/-! ## A265430.P15131325062502345752

`n-floor(n%2-n/4)`
-/

namespace A265430.P15131325062502345752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊((n % 2 : ℕ) : ℚ) - (n : ℚ) / 4⌋

end

end A265430.P15131325062502345752

namespace A265430

/-- `n-floor(n%2-n/4)` -/
def P15131325062502345752.Spec : Prop :=
  ∀ n, P15131325062502345752.a n = A265430 n

end A265430

/-! ## A265430.P17093351876264021666

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0, a(4)=2`
-/

namespace A265430.P17093351876264021666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 0, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265430.P17093351876264021666

namespace A265430

/-- `∑[abs(a(n-4))]` -/
def P17093351876264021666.Spec : Prop :=
  ∀ n, (P17093351876264021666.a n : ℤ) = A265430 n

end A265430

/-! ## A265430.P6541591164395292377

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0, a(4)=2`
-/

namespace A265430.P6541591164395292377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 0, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265430.P6541591164395292377

namespace A265430

/-- `∑[dr(a(n-4))]` -/
def P6541591164395292377.Spec : Prop :=
  ∀ n, (P6541591164395292377.a n : ℤ) = A265430 n

end A265430

/-! ## A265430.P1805886014034933342

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A265430.P1805886014034933342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 0, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265430.P1805886014034933342

namespace A265430

/-- `∑[floor(a(n-4))]` -/
def P1805886014034933342.Spec : Prop :=
  ∀ n, (P1805886014034933342.a n : ℤ) = A265430 n

end A265430

/-! ## A265430.P13947902178064780181

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A265430.P13947902178064780181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 0, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265430.P13947902178064780181

namespace A265430

/-- `∑[ceil(a(n-4))]` -/
def P13947902178064780181.Spec : Prop :=
  ∀ n, (P13947902178064780181.a n : ℤ) = A265430 n

end A265430

/-! ## A265430.P946412232846293109

`∑[round(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A265430.P946412232846293109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 0, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265430.P946412232846293109

namespace A265430

/-- `∑[round(a(n-4))]` -/
def P946412232846293109.Spec : Prop :=
  ∀ n, (P946412232846293109.a n : ℤ) = A265430 n

end A265430

/-! ## A265430.P4662113302076612485

`∑[a(n-4)%3]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0, a(4)=2`
-/

namespace A265430.P4662113302076612485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 0, 2] fun n f1 =>
  f1 (n - 4) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265430.P4662113302076612485

namespace A265430

/-- `∑[a(n-4)%3]` -/
def P4662113302076612485.Spec : Prop :=
  ∀ n, (P4662113302076612485.a n : ℤ) = A265430 n

end A265430

/-! ## A265430.P17945844331284710333

`∑[C(2, gcd(n+1, n-3))]-2`
-/

namespace A265430.P17945844331284710333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A265430.P17945844331284710333

namespace A265430

/-- `∑[C(2, gcd(n+1, n-3))]-2` -/
def P17945844331284710333.Spec : Prop :=
  ∀ n, P17945844331284710333.a n = A265430 n

end A265430

/-! ## A265430.P16952001334786840561

`∑[∑[2/a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=-2`
-/

namespace A265430.P16952001334786840561
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1, -2] fun n f2 =>
  2 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265430.P16952001334786840561

namespace A265430

/-- `∑[∑[2/a(n-2)]]` -/
def P16952001334786840561.Spec : Prop :=
  ∀ n, P16952001334786840561.a n = (A265430 n : ℚ)

end A265430

/-! ## A265430.P8603984496218076127

`4-(gcd(2, ∑[n])-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A265430.P8603984496218076127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 - ((Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - a (n - 2))

end

end A265430.P8603984496218076127

namespace A265430

/-- `4-(gcd(2, ∑[n])-a(n-2))` -/
def P8603984496218076127.Spec : Prop :=
  ∀ n, P8603984496218076127.a n = A265430 n

end A265430

/-! ## A265430.P12732314535866507473

`∑[4-a(a(n-2))]-n` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A265430.P12732314535866507473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  4 - f1 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A265430.P12732314535866507473

namespace A265430

/-- `∑[4-a(a(n-2))]-n` -/
def P12732314535866507473.Spec : Prop :=
  ∀ n, P12732314535866507473.a n = A265430 n

end A265430

/-! ## A265430.P11985699235250726423

`∑[∑[ogf((x+2x^2+2x^4)/(1+x+x^2+x^3))]]`
-/

namespace A265430.P11985699235250726423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 0, 2] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265430.P11985699235250726423

namespace A265430

/-- `∑[∑[ogf((x+2x^2+2x^4)/(1+x+x^2+x^3))]]` -/
def P11985699235250726423.Spec : Prop :=
  ∀ n, P11985699235250726423.a n = A265430 n

end A265430

/-! ## A265430.P7373271561883073921

`ogf((x+2x^2+2x^4)/(1-x-x^4+x^5))`
-/

namespace A265430.P7373271561883073921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 0, 2] [1, -1, 0, 0, -1, 1] n

end

end A265430.P7373271561883073921

namespace A265430

/-- `ogf((x+2x^2+2x^4)/(1-x-x^4+x^5))` -/
def P7373271561883073921.Spec : Prop :=
  ∀ n, P7373271561883073921.a n = A265430 n

end A265430

/-! ## A265430.P7178876749040481324

`A059169(n+1)+n`
-/

namespace A265430.P7178876749040481324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1) + (n : ℤ)

end

end A265430.P7178876749040481324

namespace A265430

/-- `A059169(n+1)+n` -/
def P7178876749040481324.Spec : Prop :=
  ∀ n, P7178876749040481324.a n = A265430 n

end A265430

/-!
# A265431: Total number of OFF (white) cells after n iterations of the "Rule 188" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265431, the canonical program `A265431.P5926924290814023423` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265431 has offset 0).

The definition of A265431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265431.P5926924290814023423

`∑[n]+round(n²/8)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265431

/-- `∑[n]+round(n²/8)` -/
def P5926924290814023423.Spec : Prop :=
  ∀ n, P5926924290814023423.a n = A265431 n

theorem P5926924290814023423.correct : P5926924290814023423.Spec := by
  intro n
  simp only [A265431]

end A265431

/-! ## A265431.P4024944602511558492

`∑[floor(abs(xor(n, -2))/4+n)]`
-/

namespace A265431.P4024944602511558492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|Int.xor (n : ℤ) (-2)| : ℚ) / 4 + (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P4024944602511558492

namespace A265431

/-- `∑[floor(abs(xor(n, -2))/4+n)]` -/
def P4024944602511558492.Spec : Prop :=
  ∀ n, P4024944602511558492.a n = A265431 n

end A265431

/-! ## A265431.P9029146830634067138

`∑[a(n-4)+5]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A265431.P9029146830634067138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3] fun n f1 =>
  f1 (n - 4) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P9029146830634067138

namespace A265431

/-- `∑[a(n-4)+5]` -/
def P9029146830634067138.Spec : Prop :=
  ∀ n, (P9029146830634067138.a n : ℤ) = A265431 n

end A265431

/-! ## A265431.P11654278603728881394

`∑[floor((xor(1, n)+1)/4)+n]`
-/

namespace A265431.P11654278603728881394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n + 1 : ℚ) / 4⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P11654278603728881394

namespace A265431

/-- `∑[floor((xor(1, n)+1)/4)+n]` -/
def P11654278603728881394.Spec : Prop :=
  ∀ n, P11654278603728881394.a n = A265431 n

end A265431

/-! ## A265431.P14554234207636759611

`∑[ceil(xor(1, n-2)/4)+n]`
-/

namespace A265431.P14554234207636759611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 1 ((n : ℤ) - 2) : ℚ) / 4⌉ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P14554234207636759611

namespace A265431

/-- `∑[ceil(xor(1, n-2)/4)+n]` -/
def P14554234207636759611.Spec : Prop :=
  ∀ n, P14554234207636759611.a n = A265431 n

end A265431

/-! ## A265431.P6885203624634164069

`∑[comp[5*n+1]-n%2]`
-/

namespace A265431.P6885203624634164069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P6885203624634164069

namespace A265431

/-- `∑[comp[5*n+1]-n%2]` -/
def P6885203624634164069.Spec : Prop :=
  ∀ n, P6885203624634164069.a n = A265431 n

end A265431

/-! ## A265431.P67967205358708359

`∑[∑[floor(a(n-4))]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A265431.P67967205358708359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 0, 2] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P67967205358708359

namespace A265431

/-- `∑[∑[floor(a(n-4))]]` -/
def P67967205358708359.Spec : Prop :=
  ∀ n, (P67967205358708359.a n : ℤ) = A265431 n

end A265431

/-! ## A265431.P2993604318102096344

`∑[ceil(∑[1/a(n-1)])-2]` with `a(0)=2`
-/

namespace A265431.P2993604318102096344
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  1 / f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P2993604318102096344

namespace A265431

/-- `∑[ceil(∑[1/a(n-1)])-2]` -/
def P2993604318102096344.Spec : Prop :=
  ∀ n, P2993604318102096344.a n = A265431 n

end A265431

/-! ## A265431.P16455944570665624407

`∑[∑[a(n-4)%3]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0, a(4)=2`
-/

namespace A265431.P16455944570665624407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 0, 2] fun n f2 =>
  f2 (n - 4) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P16455944570665624407

namespace A265431

/-- `∑[∑[a(n-4)%3]]` -/
def P16455944570665624407.Spec : Prop :=
  ∀ n, (P16455944570665624407.a n : ℤ) = A265431 n

end A265431

/-! ## A265431.P17722785170726148827

`∑[∑[∑[2/a(n-2)]]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=-2`
-/

namespace A265431.P17722785170726148827
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1, -2] fun n f3 =>
  2 / f3 (n - 2)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P17722785170726148827

namespace A265431

/-- `∑[∑[∑[2/a(n-2)]]]` -/
def P17722785170726148827.Spec : Prop :=
  ∀ n, P17722785170726148827.a n = (A265431 n : ℚ)

end A265431

/-! ## A265431.P15638164095870735056

`ogf((x+2x^2+2x^4)/(1-2x+x^2-x^4+2x^5-x^6))`
-/

namespace A265431.P15638164095870735056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 0, 2] [1, -2, 1, 0, -1, 2, -1] n

end

end A265431.P15638164095870735056

namespace A265431

/-- `ogf((x+2x^2+2x^4)/(1-2x+x^2-x^4+2x^5-x^6))` -/
def P15638164095870735056.Spec : Prop :=
  ∀ n, P15638164095870735056.a n = A265431 n

end A265431

/-! ## A265431.P12876047253230867582

`∑[∑[a(n-2)^a(n-2)-a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A265431.P12876047253230867582
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  f2 (n - 2) ^ (f2 (n - 2)) - f2 (n - 2)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P12876047253230867582

namespace A265431

/-- `∑[∑[a(n-2)^a(n-2)-a(n-2)]]` -/
def P12876047253230867582.Spec : Prop :=
  ∀ n, P12876047253230867582.a n = (A265431 n : ℝ)

end A265431

/-! ## A265431.P12691991278087561800

`∑[A265430(n)]`
-/

namespace A265431.P12691991278087561800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P12691991278087561800

namespace A265431

/-- `∑[A265430(n)]` -/
def P12691991278087561800.Spec : Prop :=
  ∀ n, P12691991278087561800.a n = A265431 n

end A265431

/-! ## A265431.P924474879248925537

`ceil(A249547(n)/2)`
-/

namespace A265431.P924474879248925537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A249547 n : ℚ) / 2⌉

end

end A265431.P924474879248925537

namespace A265431

/-- `ceil(A249547(n)/2)` -/
def P924474879248925537.Spec : Prop :=
  ∀ n, P924474879248925537.a n = A265431 n

end A265431

/-! ## A265431.P9330110784896515217

`∑[A059169(n+1)+n]`
-/

namespace A265431.P9330110784896515217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P9330110784896515217

namespace A265431

/-- `∑[A059169(n+1)+n]` -/
def P9330110784896515217.Spec : Prop :=
  ∀ n, P9330110784896515217.a n = A265431 n

end A265431

/-! ## A265431.P16948489697344245478

`∑[2*n+1-A265428(n)]`
-/

namespace A265431.P16948489697344245478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A265428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P16948489697344245478

namespace A265431

/-- `∑[2*n+1-A265428(n)]` -/
def P16948489697344245478.Spec : Prop :=
  ∀ n, P16948489697344245478.a n = A265431 n

end A265431

/-! ## A265431.P7307210321295997599

`∑[A047203(n+1)-and(1, n)]`
-/

namespace A265431.P7307210321295997599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 1) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P7307210321295997599

namespace A265431

/-- `∑[A047203(n+1)-and(1, n)]` -/
def P7307210321295997599.Spec : Prop :=
  ∀ n, P7307210321295997599.a n = A265431 n

end A265431

/-! ## A265431.P13166477236946280917

`∑[floor(A005563(floor(n/2))/(n+1))+n]`
-/

namespace A265431.P13166477236946280917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005563 ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (n + 1 : ℚ)⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P13166477236946280917

namespace A265431

/-- `∑[floor(A005563(floor(n/2))/(n+1))+n]` -/
def P13166477236946280917.Spec : Prop :=
  ∀ n, P13166477236946280917.a n = A265431 n

end A265431

/-! ## A265431.P17094775464844963653

`∑[A004526(A028242(n))+n]`
-/

namespace A265431.P17094775464844963653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028242 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P17094775464844963653

namespace A265431

/-- `∑[A004526(A028242(n))+n]` -/
def P17094775464844963653.Spec : Prop :=
  ∀ n, P17094775464844963653.a n = A265431 n

end A265431

/-! ## A265431.P4581108607196973232

`∑[A110655(n)+2*A004526(n)]`
-/

namespace A265431.P4581108607196973232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n + 2 * A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265431.P4581108607196973232

namespace A265431

/-- `∑[A110655(n)+2*A004526(n)]` -/
def P4581108607196973232.Spec : Prop :=
  ∀ n, P4581108607196973232.a n = A265431 n

end A265431

/-!
# A265433: Number of primes with digit sum n whose digit product is maximal among all numbers with digit sum n.

The programs for A265433, there is no canonical definition to state claims against.
-/

/-! ## A265433.P7175227795591998536

`A137269(n+1)%A098789(n)`
-/

namespace A265433.P7175227795591998536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137269 (n + 1)) (A098789 n)

end

end A265433.P7175227795591998536

/-! ## A265433.P16835720520232720576

`A351870(A137269(n+1))%A077993(n)`
-/

namespace A265433.P16835720520232720576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351870 (A137269 (n + 1)).toNat) (A077993 n)

end

end A265433.P16835720520232720576

/-! ## A265433.P11908242173124920912

`A137269(n+1)%A062038(n)`
-/

namespace A265433.P11908242173124920912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137269 (n + 1)) (A062038 n)

end

end A265433.P11908242173124920912

/-! ## A265433.P16197873495581302760

`abs(A137269(n+1)-A000038(A017898(n)))`
-/

namespace A265433.P16197873495581302760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137269 (n + 1) - A000038 (A017898 n).toNat|

end

end A265433.P16197873495581302760

/-! ## A265433.P17203653448103040010

`and(A137269(n+1), A326392(A147534(n+1)))`
-/

namespace A265433.P17203653448103040010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137269 (n + 1)) (A326392 (A147534 (n + 1)).toNat)

end

end A265433.P17203653448103040010

/-!
# A265435: Riordan array (1, x*f(x)) where f(x) is the g.f. of A007564.

The programs for A265435, there is no canonical definition to state claims against.
-/

/-! ## A265435.P11101979683618210446

`A072088(A357586(n))`
-/

namespace A265435.P11101979683618210446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A357586 n).toNat

end

end A265435.P11101979683618210446

/-! ## A265435.P16176392825530336551

`A367306(A380841(n))`
-/

namespace A265435.P16176392825530336551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A380841 n).toNat

end

end A265435.P16176392825530336551

/-! ## A265435.P12339526870301845511

`A243924(A268436(n)+1)`
-/

namespace A265435.P12339526870301845511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243924 (A268436 n + 1).toNat

end

end A265435.P12339526870301845511

/-! ## A265435.P12423614591232215735

`A327036(A357585(n)+1)`
-/

namespace A265435.P12423614591232215735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327036 (A357585 n + 1).toNat

end

end A265435.P12423614591232215735

/-! ## A265435.P14101296828704923961

`A192002(2*(A110510(n)+1))`
-/

namespace A265435.P14101296828704923961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192002 (2 * (A110510 n + 1)).toNat

end

end A265435.P14101296828704923961

/-!
# A265436: a(n) is the least m (1 <= m <= n) such that the set of pairs (x, y) of distinct terms from [m, n] can be ordered in such a way that the corresponding sums (x+y) and products (x*y) are monotonic.

The programs for A265436, there is no canonical definition to state claims against.
-/

/-! ## A265436.P14687383436919322521

`∑[char[comp[a(n-2)+n]]]` with `a(0)=3, a(1)=-1, a(2)=1`
-/

namespace A265436.P14687383436919322521
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, 1] fun n f3 =>
  f3 (n - 2) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265436.P14687383436919322521

/-! ## A265436.P16544996959212473676

`∑[1-char[a(n-2)-1+n]]` with `a(0)=3, a(1)=-1, a(2)=-1`
-/

namespace A265436.P16544996959212473676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -1] fun n f2 =>
  f2 (n - 2) - 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265436.P16544996959212473676

/-! ## A265436.P13253793978208786562

`floor((n²+4)/(n+1+floor(2*sqrt(n+2))))`
-/

namespace A265436.P13253793978208786562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 + 4 : ℚ) / ((n + 1 : ℤ) + ⌊2 * Real.sqrt (n + 2 : ℝ)⌋ : ℚ)⌋

end

end A265436.P13253793978208786562

/-! ## A265436.P13749762369559311366

`∑[floor(atan(A162974(n)))]+1`
-/

namespace A265436.P13749762369559311366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A162974 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A265436.P13749762369559311366

/-! ## A265436.P5264161275048676683

`∑[char[A183867(n+2)]]+1`
-/

namespace A265436.P5264161275048676683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183867 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A265436.P5264161275048676683

/-! ## A265436.P3953321423154186044

`A135662((n+2)*a(n-1)+1)` with `a(0)=1`
-/

namespace A265436.P3953321423154186044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135662 ((n + 2 : ℤ) * a (n - 1) + 1).toNat

end

end A265436.P3953321423154186044

/-! ## A265436.P11212208927688771708

`A193592(∑[n]+floor((sqrt(n+2)+1)²)-2)`
-/

namespace A265436.P11212208927688771708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (⌊(Real.sqrt (n + 2 : ℝ) + 1) ^ 2⌋ - 2)).toNat

end

end A265436.P11212208927688771708

/-! ## A265436.P15585279263720364724

`A028310((2*n+3)%(floor((sqrt(n+2)+1)²)-2))`
-/

namespace A265436.P15585279263720364724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (2 * n + 3 : ℤ) (⌊(Real.sqrt (n + 2 : ℝ) + 1) ^ 2⌋ - 2)).toNat

end

end A265436.P15585279263720364724

/-! ## A265436.P4223530793757542797

`A028310(∑[char[A183867(n+1)]])`
-/

namespace A265436.P4223530793757542797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183867 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265436.P4223530793757542797

/-! ## A265436.P8170960735000089268

`A028310(n+2-A060018(n+4))`
-/

namespace A265436.P8170960735000089268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n + 2 : ℤ) - A060018 (n + 4)).toNat

end

end A265436.P8170960735000089268

/-!
# A265439: Number of n X n 0..2n-2 arrays with upper left zero and lower right 2n-2 and each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265439, there is no canonical definition to state claims against.
-/

/-! ## A265439.P6620246942446172577

`A265447(∑[4*n]+1)`
-/

namespace A265439.P6620246942446172577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265439.P6620246942446172577

/-! ## A265439.P15919486652878363890

`A265447(A001844(n))+A031286(n)`
-/

namespace A265439.P15919486652878363890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (A001844 n).toNat + A031286 n

end

end A265439.P15919486652878363890

/-! ## A265439.P7816437374585642446

`A265447(A001844(n))+A036600(n)`
-/

namespace A265439.P7816437374585642446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (A001844 n).toNat + A036600 n

end

end A265439.P7816437374585642446

/-! ## A265439.P2524011877801071426

`A265447(A001844(n))+A008683(8*n+4)`
-/

namespace A265439.P2524011877801071426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (A001844 n).toNat + A008683 (8 * n + 4)

end

end A265439.P2524011877801071426

/-!
# A265440: Number of nX1 0..n+1-2 arrays with upper left zero and lower right n+1-2 and each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265440, there is no canonical definition to state claims against.
-/

/-! ## A265440.P5141772926093616607

`A265447(∑[n]+1)`
-/

namespace A265440.P5141772926093616607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265440.P5141772926093616607

/-! ## A265440.P9852042453812412713

`A265447(A000124(n))+char[18]`
-/

namespace A265440.P9852042453812412713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A265440.P9852042453812412713

/-! ## A265440.P11849017454235674307

`A265447(A000124(n))%A000747(n)`
-/

namespace A265440.P11849017454235674307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265447 (A000124 n).toNat) (A000747 n)

end

end A265440.P11849017454235674307

/-! ## A265440.P8783229898290213776

`gcd(A000038(n), A265447(A000124(n)))`
-/

namespace A265440.P8783229898290213776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A265447 (A000124 n).toNat)

end

end A265440.P8783229898290213776

/-! ## A265440.P15628571480970941872

`lcm(A033999(n), A265447(A000124(n)))`
-/

namespace A265440.P15628571480970941872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A265447 (A000124 n).toNat)

end

end A265440.P15628571480970941872

/-!
# A265441: Number of nX2 0..n+2-2 arrays with upper left zero and lower right n+2-2 and each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265441, there is no canonical definition to state claims against.
-/

/-! ## A265441.P5833040157825093368

`A265447(∑[n+1]+2)`
-/

namespace A265441.P5833040157825093368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A265441.P5833040157825093368

/-! ## A265441.P12888962956308633315

`A265447(A000096(n)+3)%A199751(n)`
-/

namespace A265441.P12888962956308633315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265447 (A000096 n + 3).toNat) (A199751 n)

end

end A265441.P12888962956308633315

/-! ## A265441.P6515631579404179554

`A000027(A265447(∑[n+2]))`
-/

namespace A265441.P6515631579404179554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A265447 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A265441.P6515631579404179554

/-!
# A265442: Number of nX3 0..n+3-2 arrays with upper left zero and lower right n+3-2 and each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265442, there is no canonical definition to state claims against.
-/

/-! ## A265442.P176230742621783070

`A265447(∑[n+2]+4)`
-/

namespace A265442.P176230742621783070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265442.P176230742621783070

/-! ## A265442.P1708833017346669493

`A265447(A167614(n+1))^ceil(sin(n)²)`
-/

namespace A265442.P1708833017346669493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265447 (A167614 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A265442.P1708833017346669493

/-! ## A265442.P2782349342713204934

`lcm(A106400(n), A265447(A167614(n+1)))`
-/

namespace A265442.P2782349342713204934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A265447 (A167614 (n + 1)).toNat)

end

end A265442.P2782349342713204934

/-! ## A265442.P13371804105723863351

`or(A000007(n), A265447(A167614(n+1)))`
-/

namespace A265442.P13371804105723863351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A265447 (A167614 (n + 1)).toNat)

end

end A265442.P13371804105723863351

/-! ## A265442.P4943553485474644007

`or(A047885(n), A265447(A167614(n+1)))`
-/

namespace A265442.P4943553485474644007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047885 n) (A265447 (A167614 (n + 1)).toNat)

end

end A265442.P4943553485474644007

/-!
# A265443: Number of nX4 0..n+4-2 arrays with upper left zero and lower right n+4-2 and each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265443, there is no canonical definition to state claims against.
-/

/-! ## A265443.P3377570569559613982

`A265447(A141214(n)+7)`
-/

namespace A265443.P3377570569559613982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (A141214 n + 7).toNat

end

end A265443.P3377570569559613982

/-! ## A265443.P13564779709111545189

`A265447(A052905(n)+9)`
-/

namespace A265443.P13564779709111545189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (A052905 n + 9).toNat

end

end A265443.P13564779709111545189

/-! ## A265443.P15232723666798920418

`A265447(A055999(n)+10)`
-/

namespace A265443.P15232723666798920418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (A055999 n + 10).toNat

end

end A265443.P15232723666798920418

/-! ## A265443.P704139473285046066

`A265447(A167614(n+2)+1)`
-/

namespace A265443.P704139473285046066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (A167614 (n + 2) + 1).toNat

end

end A265443.P704139473285046066

/-! ## A265443.P16081273188079362634

`A265447(Δ[A023545(n+1)-n²])`
-/

namespace A265443.P16081273188079362634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (f1 (n + 1) - f1 n).toNat

end

end A265443.P16081273188079362634

/-!
# A265444: Number of nX5 0..n+5-2 arrays with upper left zero and lower right n+5-2 and each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265444, there is no canonical definition to state claims against.
-/

/-! ## A265444.P5689428625272732323

`A265447(A253145(n+3)+5)`
-/

namespace A265444.P5689428625272732323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (A253145 (n + 3) + 5).toNat

end

end A265444.P5689428625272732323

/-! ## A265444.P11330050920108047697

`A265447(eq[6, A131818(n+1)])`
-/

namespace A265444.P11330050920108047697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265444.P11330050920108047697

/-! ## A265444.P13483532263046028956

`A265447(A374005(n+1))`
-/

namespace A265444.P13483532263046028956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (A374005 (n + 1)).toNat

end

end A265444.P13483532263046028956

/-! ## A265444.P5930734573094179800

`A265447(eq[3, A152157(n)])`
-/

namespace A265444.P5930734573094179800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265444.P5930734573094179800

/-! ## A265444.P16770839786767407604

`A265447(eq[4, A193592(n)])`
-/

namespace A265444.P16770839786767407604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265444.P16770839786767407604

/-!
# A265445: Number of nX6 0..n+6-2 arrays with upper left zero and lower right n+6-2 and each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265445, there is no canonical definition to state claims against.
-/

/-! ## A265445.P11725516307372244340

`A265447(A000217(n+5)+6)`
-/

namespace A265445.P11725516307372244340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (A000217 (n + 5) + 6).toNat

end

end A265445.P11725516307372244340

/-! ## A265445.P8168161108304653066

`A265447(eq[7, A131818(n+1)])`
-/

namespace A265445.P8168161108304653066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265445.P8168161108304653066

/-! ## A265445.P15078647123633381591

`A265447(A374007(n+1))`
-/

namespace A265445.P15078647123633381591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (A374007 (n + 1)).toNat

end

end A265445.P15078647123633381591

/-! ## A265445.P2722528248338387899

`A265447(eq[3, A219347(n)])`
-/

namespace A265445.P2722528248338387899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265445.P2722528248338387899

/-! ## A265445.P6269376139970242632

`A265447(eq[5, A193592(n)])`
-/

namespace A265445.P6269376139970242632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265445.P6269376139970242632

/-!
# A265446: Number of nX7 0..n+7-2 arrays with upper left zero and lower right n+7-2 and each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265446, there is no canonical definition to state claims against.
-/

/-! ## A265446.P8888666338414622719

`A265447(eq[8, A131818(n+1)])`
-/

namespace A265446.P8888666338414622719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265446.P8888666338414622719

/-! ## A265446.P8782078093727474644

`A265447(A374008(n+1))`
-/

namespace A265446.P8782078093727474644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (A374008 (n + 1)).toNat

end

end A265446.P8782078093727474644

/-! ## A265446.P7996052507649015638

`A265447(eq[4, A219347(n)])`
-/

namespace A265446.P7996052507649015638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265446.P7996052507649015638

/-! ## A265446.P11757143526274800213

`A265447(eq[5, A332954(n)])`
-/

namespace A265446.P11757143526274800213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265446.P11757143526274800213

/-! ## A265446.P10406003875404164127

`A265447(eq[6, A193592(n)])`
-/

namespace A265446.P10406003875404164127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265447 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265446.P10406003875404164127

/-!
# A265447: T(n,k)=Number of nXk 0..n+k-2 arrays with upper left zero and lower right n+k-2 and each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265447, there is no canonical definition to state claims against.
-/

/-! ## A265447.P7496984946583475600

`A214455(A003114(n)²)`
-/

namespace A265447.P7496984946583475600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214455 (A003114 n ^ 2).toNat

end

end A265447.P7496984946583475600

/-! ## A265447.P15573818862607200362

`A192391(∑[A065715(n)]!)`
-/

namespace A265447.P15573818862607200362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192391 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A265447.P15573818862607200362

/-! ## A265447.P15600634691310737145

`A192391(∑[A316717(n)]!)`
-/

namespace A265447.P15600634691310737145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192391 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A265447.P15600634691310737145

/-! ## A265447.P9623430773292869854

`A214455(A237980(n+1)²)`
-/

namespace A265447.P9623430773292869854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214455 (A237980 (n + 1) ^ 2).toNat

end

end A265447.P9623430773292869854

/-! ## A265447.P13457543230521701373

`A214455(A003114(n)*A003114(n))`
-/

namespace A265447.P13457543230521701373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214455 (A003114 n * A003114 n).toNat

end

end A265447.P13457543230521701373

/-!
# A265449: Palindromes that are the sums of consecutive fourth powers.

The programs for A265449, there is no canonical definition to state claims against.
-/

/-! ## A265449.P16401894502736219929

`∩[A002113(n+1), A217844(n+1)]`
-/

namespace A265449.P16401894502736219929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265449.P16401894502736219929

/-!
# A265450: Number of n X n 0..2n-2 arrays with each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265450, there is no canonical definition to state claims against.
-/

/-! ## A265450.P7001961237159922613

`A265458((n+1)²+n²)`
-/

namespace A265450.P7001961237159922613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 ((n + 1) ^ 2 + n ^ 2)

end

end A265450.P7001961237159922613

/-!
# A265451: Number of n X 1 0..n+1-2 arrays with each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265451, there is no canonical definition to state claims against.
-/

/-! ## A265451.P14564673786008993396

`A265458(∑[abs(1-n)])`
-/

namespace A265451.P14564673786008993396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265451.P14564673786008993396

/-! ## A265451.P3811876787302815670

`A090127(A007092(n)!)`
-/

namespace A265451.P3811876787302815670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090127 (Nat.factorial (A007092 n).toNat)

end

end A265451.P3811876787302815670

/-!
# A265452: Number of nX2 0..n+2-2 arrays with each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265452, there is no canonical definition to state claims against.
-/

/-! ## A265452.P17967096218593789170

`A265458(∑[n+1]+2)`
-/

namespace A265452.P17967096218593789170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A265452.P17967096218593789170

/-! ## A265452.P14893987639969855739

`record[gcd(A002262(n), A265458(n+2))]`
-/

namespace A265452.P14893987639969855739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A265458 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265452.P14893987639969855739

/-! ## A265452.P10742456030379133383

`record[A265458(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A265452.P10742456030379133383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265452.P10742456030379133383

/-! ## A265452.P9014761868268345550

`lcm(2, A265458(A000096(n+1)))`
-/

namespace A265452.P9014761868268345550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A265458 (A000096 (n + 1)).toNat)

end

end A265452.P9014761868268345550

/-! ## A265452.P6580818134765539546

`A209929(2*n+1)*A265458(A000096(n+1))`
-/

namespace A265452.P6580818134765539546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209929 (2 * n + 1) * A265458 (A000096 (n + 1)).toNat

end

end A265452.P6580818134765539546

/-!
# A265453: Number of nX3 0..n+3-2 arrays with each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265453, there is no canonical definition to state claims against.
-/

/-! ## A265453.P9614303986612517608

`A265458(∑[n+2]+4)`
-/

namespace A265453.P9614303986612517608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265453.P9614303986612517608

/-! ## A265453.P17180049603408236354

`lcm(2, A265458(A167614(n+1)))`
-/

namespace A265453.P17180049603408236354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A265458 (A167614 (n + 1)).toNat)

end

end A265453.P17180049603408236354

/-! ## A265453.P4873016697520636879

`A265458(A167614(n+1))+A137579(n)`
-/

namespace A265453.P4873016697520636879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (A167614 (n + 1)).toNat + A137579 n

end

end A265453.P4873016697520636879

/-! ## A265453.P15311384583614893232

`A152848(n)*A265458(A167614(n+1))`
-/

namespace A265453.P15311384583614893232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152848 n * A265458 (A167614 (n + 1)).toNat

end

end A265453.P15311384583614893232

/-! ## A265453.P18288596576297310441

`A265458(A167614(n+1))%A200805(n+1)`
-/

namespace A265453.P18288596576297310441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265458 (A167614 (n + 1)).toNat) (A200805 (n + 1))

end

end A265453.P18288596576297310441

/-!
# A265454: Number of nX4 0..n+4-2 arrays with each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265454, there is no canonical definition to state claims against.
-/

/-! ## A265454.P17498410163426957341

`A265458(∑[n+3]+7)`
-/

namespace A265454.P17498410163426957341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A265454.P17498410163426957341

/-! ## A265454.P17246322608909153148

`gcd(A181735(n+1), A265458(A055999(n)+10))`
-/

namespace A265454.P17246322608909153148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181735 (n + 1)) (A265458 (A055999 n + 10).toNat)

end

end A265454.P17246322608909153148

/-! ## A265454.P13593109157231661912

`lcm(2, A265458(A307681(n+7)))`
-/

namespace A265454.P13593109157231661912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A265458 (A307681 (n + 7)).toNat)

end

end A265454.P13593109157231661912

/-! ## A265454.P14159864980470370603

`A265458(A307681(n+7))+A000007(n+2)`
-/

namespace A265454.P14159864980470370603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (A307681 (n + 7)).toNat + A000007 (n + 2)

end

end A265454.P14159864980470370603

/-! ## A265454.P18416605061018795670

`A265458(A307681(n+7))+A000038(2*n+1)`
-/

namespace A265454.P18416605061018795670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (A307681 (n + 7)).toNat + A000038 (2 * n + 1)

end

end A265454.P18416605061018795670

/-!
# A265455: Number of nX5 0..n+5-2 arrays with each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265455, there is no canonical definition to state claims against.
-/

/-! ## A265455.P3670038964402892691

`A265458(A374005(n+1))`
-/

namespace A265455.P3670038964402892691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (A374005 (n + 1)).toNat

end

end A265455.P3670038964402892691

/-! ## A265455.P5439903087624740709

`A265458(A000217(n+4)+5)`
-/

namespace A265455.P5439903087624740709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (A000217 (n + 4) + 5).toNat

end

end A265455.P5439903087624740709

/-! ## A265455.P11781531782455794791

`A265458(A014132(∑[n+3]+7)+1)`
-/

namespace A265455.P11781531782455794791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (A014132 (∑ j ∈ Finset.range (n + 1), f1 j + 7) + 1).toNat

end

end A265455.P11781531782455794791

/-! ## A265455.P16341444242077818565

`A265458(A056115(n)+11)`
-/

namespace A265455.P16341444242077818565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (A056115 n + 11).toNat

end

end A265455.P16341444242077818565

/-! ## A265455.P7037718542032339537

`A265458(eq[2, A092921(n)])`
-/

namespace A265455.P7037718542032339537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265455.P7037718542032339537

/-!
# A265456: Number of nX6 0..n+6-2 arrays with each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265456, there is no canonical definition to state claims against.
-/

/-! ## A265456.P6973464898281350899

`A265458(A374007(n+1))`
-/

namespace A265456.P6973464898281350899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (A374007 (n + 1)).toNat

end

end A265456.P6973464898281350899

/-! ## A265456.P12249549379233898185

`A265458(A167499(n+4)+1)`
-/

namespace A265456.P12249549379233898185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (A167499 (n + 4) + 1).toNat

end

end A265456.P12249549379233898185

/-! ## A265456.P11107062472770733300

`A265458(eq[16, A057728(n+1)])`
-/

namespace A265456.P11107062472770733300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265456.P11107062472770733300

/-! ## A265456.P6996662481285440152

`A265458(Δ[A023545(n+2)]-1)`
-/

namespace A265456.P6996662481285440152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (f1 (n + 1) - f1 n - 1).toNat

end

end A265456.P6996662481285440152

/-!
# A265457: Number of nX7 0..n+7-2 arrays with each element differing from its horizontal and vertical neighbors by one or two.

The programs for A265457, there is no canonical definition to state claims against.
-/

/-! ## A265457.P12967136720371209201

`A265458(A374008(n+1))`
-/

namespace A265457.P12967136720371209201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (A374008 (n + 1)).toNat

end

end A265457.P12967136720371209201

/-! ## A265457.P6053169541205026627

`A265458(eq[6, A193592(n)])`
-/

namespace A265457.P6053169541205026627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265457.P6053169541205026627

/-!
# A265459: Number of n X n 0..2n-2 arrays with upper left zero and lower right 2n-2 and each element differing from its horizontal and antidiagonal neighbors by one or two.

The programs for A265459, there is no canonical definition to state claims against.
-/

/-! ## A265459.P10177857654819899245

`A265466((n+1)²+n²)`
-/

namespace A265459.P10177857654819899245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 ((n + 1) ^ 2 + n ^ 2)

end

end A265459.P10177857654819899245

/-! ## A265459.P18118847126174903720

`record[gcd(A003987(n), A265466(n+1))]`
-/

namespace A265459.P18118847126174903720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A265466 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265459.P18118847126174903720

/-! ## A265459.P8504984925219636267

`lcm((n+1)/∏{p}[n+1, #], A265466(A001844(n)))`
-/

namespace A265459.P8504984925219636267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A265466 (A001844 n).toNat)

end

end A265459.P8504984925219636267

/-! ## A265459.P17416323560389611917

`or(A000007(n), A265466(A001844(n)))`
-/

namespace A265459.P17416323560389611917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A265466 (A001844 n).toNat)

end

end A265459.P17416323560389611917

/-!
# A265460: Number of nX2 0..n+2-2 arrays with upper left zero and lower right n+2-2 and each element differing from its horizontal and antidiagonal neighbors by one or two.

The programs for A265460, there is no canonical definition to state claims against.
-/

/-! ## A265460.P11580332566067218115

`A265466(∑[n+2])`
-/

namespace A265460.P11580332566067218115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265460.P11580332566067218115

/-! ## A265460.P3307126149581340774

`record[A265466(A347633(n+1)+1)]`
-/

namespace A265460.P3307126149581340774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (A347633 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265460.P3307126149581340774

/-! ## A265460.P7020731192903274808

`record[gcd(A102892(n), A265466(n+1))]`
-/

namespace A265460.P7020731192903274808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102892 n) (A265466 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265460.P7020731192903274808

/-! ## A265460.P9869112575546054506

`record[and(A167374(n), A265466(n+1))]`
-/

namespace A265460.P9869112575546054506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A265466 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265460.P9869112575546054506

/-! ## A265460.P16775290262486368676

`record[root(A265466(n+1), A036560(n+1))]`
-/

namespace A265460.P16775290262486368676
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265466 (n + 1) : ℝ) ^ (1 / (A036560 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265460.P16775290262486368676

/-!
# A265461: Number of nX3 0..n+3-2 arrays with upper left zero and lower right n+3-2 and each element differing from its horizontal and antidiagonal neighbors by one or two.

The programs for A265461, there is no canonical definition to state claims against.
-/

/-! ## A265461.P13818068591242311455

`A265466(∑[n+3]+1)`
-/

namespace A265461.P13818068591242311455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265461.P13818068591242311455

/-! ## A265461.P6209301781769693029

`record[A265466(A130297(n+1))]`
-/

namespace A265461.P6209301781769693029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265461.P6209301781769693029

/-! ## A265461.P17962151815826350041

`record[A265466(A347633(n+1))]`
-/

namespace A265461.P17962151815826350041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265461.P17962151815826350041

/-! ## A265461.P7097098005120886186

`record[A010054(n+3)*A265466(n+1)]`
-/

namespace A265461.P7097098005120886186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A265466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265461.P7097098005120886186

/-! ## A265461.P7352239785402128710

`record[gcd(A265466(n+1), A328610(n+1))]`
-/

namespace A265461.P7352239785402128710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A265466 (n + 1)) (A328610 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265461.P7352239785402128710

/-!
# A265462: Number of nX4 0..n+4-2 arrays with upper left zero and lower right n+4-2 and each element differing from its horizontal and antidiagonal neighbors by one or two.

The programs for A265462, there is no canonical definition to state claims against.
-/

/-! ## A265462.P4360127777222053440

`A265466(A141214(n+1))`
-/

namespace A265462.P4360127777222053440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (A141214 (n + 1)).toNat

end

end A265462.P4360127777222053440

/-! ## A265462.P8720541993924206163

`A265466(A155212(n)+5)`
-/

namespace A265462.P8720541993924206163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (A155212 n + 5).toNat

end

end A265462.P8720541993924206163

/-! ## A265462.P9905847548790818348

`A265466(A056000(n)+7)`
-/

namespace A265462.P9905847548790818348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (A056000 n + 7).toNat

end

end A265462.P9905847548790818348

/-! ## A265462.P8865902792670167783

`A265466(eq[2, A220062(n)])`
-/

namespace A265462.P8865902792670167783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265462.P8865902792670167783

/-! ## A265462.P17204087789005100935

`A265466(eq[3, A193592(n)])`
-/

namespace A265462.P17204087789005100935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265462.P17204087789005100935

/-!
# A265463: Number of nX5 0..n+5-2 arrays with upper left zero and lower right n+5-2 and each element differing from its horizontal and antidiagonal neighbors by one or two.

The programs for A265463, there is no canonical definition to state claims against.
-/

/-! ## A265463.P6841808690424367394

`A265466(Δ[A264443(n)])`
-/

namespace A265463.P6841808690424367394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (f1 (n + 1) - f1 n).toNat

end

end A265463.P6841808690424367394

/-! ## A265463.P12202108083648406118

`A265466(A056115(n)+11)`
-/

namespace A265463.P12202108083648406118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (A056115 n + 11).toNat

end

end A265463.P12202108083648406118

/-! ## A265463.P13467563054220756671

`A265466(eq[4, A193592(n)])`
-/

namespace A265463.P13467563054220756671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265463.P13467563054220756671

/-! ## A265463.P1297457393494742575

`A265466(Δ[A023545(n+1)])`
-/

namespace A265463.P1297457393494742575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (f1 (n + 1) - f1 n).toNat

end

end A265463.P1297457393494742575

/-! ## A265463.P11643964503007640690

`A265466(eq[5, A200370(n+1)])`
-/

namespace A265463.P11643964503007640690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265463.P11643964503007640690

/-!
# A265464: Number of nX6 0..n+6-2 arrays with upper left zero and lower right n+6-2 and each element differing from its horizontal and antidiagonal neighbors by one or two.

The programs for A265464, there is no canonical definition to state claims against.
-/

/-! ## A265464.P17850672757401775553

`A265466(eq[5, A193592(n)])`
-/

namespace A265464.P17850672757401775553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265464.P17850672757401775553

/-! ## A265464.P13680176135598906938

`A265466(eq[6, A200370(n+1)])`
-/

namespace A265464.P13680176135598906938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265464.P13680176135598906938

/-! ## A265464.P17506974206328272927

`A265466(Δ[Δ[A006504(n+1)]])`
-/

namespace A265464.P17506974206328272927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (f1 (n + 1) - f1 n).toNat

end

end A265464.P17506974206328272927

/-! ## A265464.P14187513612546956642

`A265466(Δ[A264443(n+1)]-1)`
-/

namespace A265464.P14187513612546956642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (f1 (n + 1) - f1 n - 1).toNat

end

end A265464.P14187513612546956642

/-!
# A265465: Number of nX7 0..n+7-2 arrays with upper left zero and lower right n+7-2 and each element differing from its horizontal and antidiagonal neighbors by one or two.

The programs for A265465, there is no canonical definition to state claims against.
-/

/-! ## A265465.P4100447127786350807

`A265466(A055999(n+4))`
-/

namespace A265465.P4100447127786350807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (A055999 (n + 4)).toNat

end

end A265465.P4100447127786350807

/-! ## A265465.P15387597767181537486

`A265466(eq[6, A193592(n)])`
-/

namespace A265465.P15387597767181537486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265465.P15387597767181537486

/-! ## A265465.P16488951873203700722

`A265466(eq[7, A200370(n+1)])`
-/

namespace A265465.P16488951873203700722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265465.P16488951873203700722

/-! ## A265465.P15015802503772889919

`A265466(A000217(n+6)+n+1)`
-/

namespace A265465.P15015802503772889919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A265465.P15015802503772889919

/-!
# A265467: Number of 2Xn 0..2+n-2 arrays with upper left zero and lower right 2+n-2 and each element differing from its horizontal and antidiagonal neighbors by one or two.

The programs for A265467, there is no canonical definition to state claims against.
-/

/-! ## A265467.P14372122490135570599

`A265466(∑[n+1]+2)`
-/

namespace A265467.P14372122490135570599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A265467.P14372122490135570599

/-! ## A265467.P6835350101925712228

`record[root(A265466(n+1), A274859(n))]`
-/

namespace A265467.P6835350101925712228
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265466 (n + 1) : ℝ) ^ (1 / (A274859 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265467.P6835350101925712228

/-! ## A265467.P6097172326803924369

`record[root(A265466(n+1), A321876(n))]`
-/

namespace A265467.P6097172326803924369
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265466 (n + 1) : ℝ) ^ (1 / (A321876 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265467.P6097172326803924369

/-! ## A265467.P14451706669311697427

`record[root(A265466(n+1), A242641(n+1))]`
-/

namespace A265467.P14451706669311697427
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265466 (n + 1) : ℝ) ^ (1 / (A242641 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265467.P14451706669311697427

/-! ## A265467.P12426262342764382893

`record[A265466(n+1)/A156883(n)]`
-/

namespace A265467.P12426262342764382893
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265466 (n + 1) : ℚ) / (A156883 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265467.P12426262342764382893

/-!
# A265468: Number of 3Xn 0..3+n-2 arrays with upper left zero and lower right 3+n-2 and each element differing from its horizontal and antidiagonal neighbors by one or two.

The programs for A265468, there is no canonical definition to state claims against.
-/

/-! ## A265468.P15757601316390973952

`A265466(∑[n+2]+4)`
-/

namespace A265468.P15757601316390973952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265468.P15757601316390973952

/-! ## A265468.P5965675138050723365

`lcm(A033999(n), A265466(A167614(n+1)))`
-/

namespace A265468.P5965675138050723365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A265466 (A167614 (n + 1)).toNat)

end

end A265468.P5965675138050723365

/-! ## A265468.P4603022263514542201

`or(A000038(n), A265466(A167614(n+1)))`
-/

namespace A265468.P4603022263514542201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A265466 (A167614 (n + 1)).toNat)

end

end A265468.P4603022263514542201

/-! ## A265468.P13707674740826509019

`A265466(A167614(n+1))+A034537(n+1)`
-/

namespace A265468.P13707674740826509019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (A167614 (n + 1)).toNat + A034537 (n + 1)

end

end A265468.P13707674740826509019

/-! ## A265468.P8187709359178639196

`A053164(n+1)*A265466(A167614(n+1))`
-/

namespace A265468.P8187709359178639196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (n + 1) * A265466 (A167614 (n + 1)).toNat

end

end A265468.P8187709359178639196

/-!
# A265469: Number of 4Xn 0..4+n-2 arrays with upper left zero and lower right 4+n-2 and each element differing from its horizontal and antidiagonal neighbors by one or two.

The programs for A265469, there is no canonical definition to state claims against.
-/

/-! ## A265469.P7600231133010471097

`A265466(∑[n+3]+7)`
-/

namespace A265469.P7600231133010471097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A265469.P7600231133010471097

/-! ## A265469.P11705253644720457384

`A265466(A055999(n)+10)%A141151(n+4)`
-/

namespace A265469.P11705253644720457384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265466 (A055999 n + 10).toNat) (A141151 (n + 4))

end

end A265469.P11705253644720457384

/-!
# A265470: Number of 5Xn 0..5+n-2 arrays with upper left zero and lower right 5+n-2 and each element differing from its horizontal and antidiagonal neighbors by one or two.

The programs for A265470, there is no canonical definition to state claims against.
-/

/-! ## A265470.P6395865036781575047

`A265466(A155212(n)+13)`
-/

namespace A265470.P6395865036781575047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (A155212 n + 13).toNat

end

end A265470.P6395865036781575047

/-! ## A265470.P12907270974353355095

`A265466(A000124(n+4)+4)`
-/

namespace A265470.P12907270974353355095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (A000124 (n + 4) + 4).toNat

end

end A265470.P12907270974353355095

/-! ## A265470.P4905884706841569717

`A265466(A000217(n+4)+5)`
-/

namespace A265470.P4905884706841569717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (A000217 (n + 4) + 5).toNat

end

end A265470.P4905884706841569717

/-! ## A265470.P10339953741544891849

`A265466(eq[6, A131818(n+1)])`
-/

namespace A265470.P10339953741544891849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265470.P10339953741544891849

/-! ## A265470.P14050819597817098004

`A265466(A014132(∑[n+3]+7)+1)`
-/

namespace A265470.P14050819597817098004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (A014132 (∑ j ∈ Finset.range (n + 1), f1 j + 7) + 1).toNat

end

end A265470.P14050819597817098004

/-!
# A265471: Number of 6Xn 0..6+n-2 arrays with upper left zero and lower right 6+n-2 and each element differing from its horizontal and antidiagonal neighbors by one or two.

The programs for A265471, there is no canonical definition to state claims against.
-/

/-! ## A265471.P16302872102303074545

`A265466(eq[7, A131818(n+1)])`
-/

namespace A265471.P16302872102303074545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265471.P16302872102303074545

/-! ## A265471.P7839442860209447828

`A265466(A000217(n+6)-n)`
-/

namespace A265471.P7839442860209447828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (A000217 (n + 6) - (n : ℤ)).toNat

end

end A265471.P7839442860209447828

/-! ## A265471.P10189692698961634542

`A265466(eq[7, A123229(n+1)])`
-/

namespace A265471.P10189692698961634542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265471.P10189692698961634542

/-!
# A265472: Number of 7Xn 0..7+n-2 arrays with upper left zero and lower right 7+n-2 and each element differing from its horizontal and antidiagonal neighbors by one or two.

The programs for A265472, there is no canonical definition to state claims against.
-/

/-! ## A265472.P17182426906660025665

`A265466(eq[8, A131818(n+1)])`
-/

namespace A265472.P17182426906660025665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265472.P17182426906660025665

/-!
# A265473: Number of n X n 0..2n-2 arrays with upper left zero and lower right 2n-2 and each element differing from its diagonal and antidiagonal neighbors by one or two.

The programs for A265473, there is no canonical definition to state claims against.
-/

/-! ## A265473.P2218715038536709605

`A265480(∑[4*n]+1)`
-/

namespace A265473.P2218715038536709605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265480 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265473.P2218715038536709605

/-!
# A265474: Number of n X 2 0..n+2-2 arrays with upper left zero and lower right n+2-2 and each element differing from its diagonal and antidiagonal neighbors by one or two.

The programs for A265474, there is no canonical definition to state claims against.
-/

/-! ## A265474.P1585168921405736147

`A265480(∑[n+1]+2)`
-/

namespace A265474.P1585168921405736147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265480 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A265474.P1585168921405736147

/-! ## A265474.P8850444583295573835

`record[gcd(A265480(n+2), A334781(n))]`
-/

namespace A265474.P8850444583295573835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A265480 (n + 2)) (A334781 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265474.P8850444583295573835

/-! ## A265474.P11694232214830084601

`record[gcd(A188285(n), A265480(n+1))]`
-/

namespace A265474.P11694232214830084601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A188285 n) (A265480 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265474.P11694232214830084601

/-! ## A265474.P10555923872204991165

`A332640(n)+A265480(A000096(n+1))`
-/

namespace A265474.P10555923872204991165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332640 n + A265480 (A000096 (n + 1)).toNat

end

end A265474.P10555923872204991165

/-! ## A265474.P132351851574578926

`record[A265480(record[A271875(n+1)])]`
-/

namespace A265474.P132351851574578926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271875 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265480 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265474.P132351851574578926

/-!
# A265475: Number of nX3 0..n+3-2 arrays with upper left zero and lower right n+3-2 and each element differing from its diagonal and antidiagonal neighbors by one or two.

The programs for A265475, there is no canonical definition to state claims against.
-/

/-! ## A265475.P8178832787263855594

`A265480(∑[n+2]+4)`
-/

namespace A265475.P8178832787263855594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265480 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265475.P8178832787263855594

/-! ## A265475.P16453244525040900542

`lcm(A033999(n), A265480(A167614(n+1)))`
-/

namespace A265475.P16453244525040900542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A265480 (A167614 (n + 1)).toNat)

end

end A265475.P16453244525040900542

/-! ## A265475.P12288310742912494833

`or(A000007(n), A265480(A167614(n+1)))`
-/

namespace A265475.P12288310742912494833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A265480 (A167614 (n + 1)).toNat)

end

end A265475.P12288310742912494833

/-! ## A265475.P5841195019797667426

`or(A000038(n), A265480(A167614(n+1)))`
-/

namespace A265475.P5841195019797667426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A265480 (A167614 (n + 1)).toNat)

end

end A265475.P5841195019797667426

/-! ## A265475.P7411566929014330908

`A265480(A167614(n+1))%A265476(n+1)`
-/

namespace A265475.P7411566929014330908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265480 (A167614 (n + 1)).toNat) (A265476 (n + 1))

end

end A265475.P7411566929014330908

/-!
# A265476: Number of n X 4 0..n+4-2 arrays with upper left zero and lower right n+4-2 and each element differing from its diagonal and antidiagonal neighbors by one or two.

The programs for A265476, there is no canonical definition to state claims against.
-/

/-! ## A265476.P17492694010390404488

`A265480(∑[n+3]+7)`
-/

namespace A265476.P17492694010390404488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265480 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A265476.P17492694010390404488

/-! ## A265476.P5217827393547823131

`lcm(2, A265480(A141214(n+1)))`
-/

namespace A265476.P5217827393547823131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A265480 (A141214 (n + 1)).toNat)

end

end A265476.P5217827393547823131

/-! ## A265476.P7735144880327601964

`A265480(A141214(n+1))+A000007(n+2)`
-/

namespace A265476.P7735144880327601964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265480 (A141214 (n + 1)).toNat + A000007 (n + 2)

end

end A265476.P7735144880327601964

/-! ## A265476.P11145054929047012773

`A265480(A141214(n+1))%A265478(n+1)`
-/

namespace A265476.P11145054929047012773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265480 (A141214 (n + 1)).toNat) (A265478 (n + 1))

end

end A265476.P11145054929047012773

/-!
# A265477: Number of nX5 0..n+5-2 arrays with upper left zero and lower right n+5-2 and each element differing from its diagonal and antidiagonal neighbors by one or two.

The programs for A265477, there is no canonical definition to state claims against.
-/

/-! ## A265477.P12502518311465869678

`A265480(C(n+5, 2)+5)`
-/

namespace A265477.P12502518311465869678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265480 (Nat.choose (n + 5) 2 + 5)

end

end A265477.P12502518311465869678

/-! ## A265477.P4663303763752970202

`A265480(eq[6, A131818(n+1)])`
-/

namespace A265477.P4663303763752970202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265477.P4663303763752970202

/-! ## A265477.P12685063216689233132

`A265480(A014132(∑[n+3]+7)+1)`
-/

namespace A265477.P12685063216689233132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265480 (A014132 (∑ j ∈ Finset.range (n + 1), f1 j + 7) + 1).toNat

end

end A265477.P12685063216689233132

/-! ## A265477.P7004886041968833623

`A265480(Δ[A264443(n)])`
-/

namespace A265477.P7004886041968833623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265480 (f1 (n + 1) - f1 n).toNat

end

end A265477.P7004886041968833623

/-! ## A265477.P11618722970201069033

`A265480(A374005(n+1))`
-/

namespace A265477.P11618722970201069033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265480 (A374005 (n + 1)).toNat

end

end A265477.P11618722970201069033

/-!
# A265478: Number of nX6 0..n+6-2 arrays with upper left zero and lower right n+6-2 and each element differing from its diagonal and antidiagonal neighbors by one or two.

The programs for A265478, there is no canonical definition to state claims against.
-/

/-! ## A265478.P9696286218031858279

`A265480(eq[7, A131818(n+1)])`
-/

namespace A265478.P9696286218031858279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265478.P9696286218031858279

/-! ## A265478.P7581960337193905552

`A265480(A374007(n+1))`
-/

namespace A265478.P7581960337193905552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265480 (A374007 (n + 1)).toNat

end

end A265478.P7581960337193905552

/-! ## A265478.P15025217159057649215

`A265480(Δ[A264443(n+1)]-1)`
-/

namespace A265478.P15025217159057649215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265480 (f1 (n + 1) - f1 n - 1).toNat

end

end A265478.P15025217159057649215

/-!
# A265479: Number of nX7 0..n+7-2 arrays with upper left zero and lower right n+7-2 and each element differing from its diagonal and antidiagonal neighbors by one or two.

The programs for A265479, there is no canonical definition to state claims against.
-/

/-! ## A265479.P8002920019459207743

`A265480(A374008(n+1))`
-/

namespace A265479.P8002920019459207743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265480 (A374008 (n + 1)).toNat

end

end A265479.P8002920019459207743

/-! ## A265479.P18424028929717664126

`A265480(eq[8, A131818(n+1)])`
-/

namespace A265479.P18424028929717664126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265479.P18424028929717664126

/-!
# A265480: T(n,k)=Number of nXk 0..n+k-2 arrays with upper left zero and lower right n+k-2 and each element differing from its diagonal and antidiagonal neighbors by one or two.

The programs for A265480, there is no canonical definition to state claims against.
-/

/-! ## A265480.P7626879029073363270

`A167489(A258466(n)-A026568(n+1))`
-/

namespace A265480.P7626879029073363270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A258466 n - A026568 (n + 1)).toNat

end

end A265480.P7626879029073363270

/-! ## A265480.P3445456479174925047

`A167489(A258466(n)-A345950(2*n+3))`
-/

namespace A265480.P3445456479174925047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A258466 n - A345950 (2 * n + 3)).toNat

end

end A265480.P3445456479174925047

/-! ## A265480.P7479334704627235591

`A000010(A000010(n+1))*A349059(A290261(n+1))`
-/

namespace A265480.P7479334704627235591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1)).toNat * A349059 (A290261 (n + 1)).toNat

end

end A265480.P7479334704627235591

/-!
# A265481: Numbers k such that 9^k - 3^k - 1 is prime.

The programs for A265481, there is no canonical definition to state claims against.
-/

/-! ## A265481.P11693914634231858443

`eq[1, A200922(n+1)]+1`
-/

namespace A265481.P11693914634231858443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200922 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265481.P11693914634231858443

/-! ## A265481.P13451832567013103871

`record[A000027(n+1)/A200922(n+1)]`
-/

namespace A265481.P13451832567013103871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A200922 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265481.P13451832567013103871

/-! ## A265481.P4784786147548055815

`record[A028310(n+1)/A200922(n+1)]`
-/

namespace A265481.P4784786147548055815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (A200922 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265481.P4784786147548055815

/-! ## A265481.P12227564276340584743

`record[A053165(n+1)/A200922(n+1)]`
-/

namespace A265481.P12227564276340584743
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053165 (n + 1) : ℚ) / (A200922 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265481.P12227564276340584743

/-! ## A265481.P6178574012993504358

`lt[A000332(A200922(n+1)+1), 1]+1`
-/

namespace A265481.P6178574012993504358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A200922 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A265481.P6178574012993504358

/-!
# A265482: Numbers k such that 16^k - 4^k - 1 is prime.

The programs for A265482, there is no canonical definition to state claims against.
-/

/-! ## A265482.P15447623418306968680

`record[A273943(A098845(n+1))]`
-/

namespace A265482.P15447623418306968680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A098845 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265482.P15447623418306968680

/-! ## A265482.P17345912920027271633

`record[A078898(A098845(n+1))]`
-/

namespace A265482.P17345912920027271633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A098845 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265482.P17345912920027271633

/-! ## A265482.P17140017713546817019

`record[A057979(A098845(n+1)+1)]`
-/

namespace A265482.P17140017713546817019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A098845 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265482.P17140017713546817019

/-! ## A265482.P3047822595887442558

`A110654(record[A038608(A098845(n+1))])`
-/

namespace A265482.P3047822595887442558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A098845 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265482.P3047822595887442558

/-! ## A265482.P7113508323736765267

`A078898(filter[A098845(n+1), A057979(#)])`
-/

namespace A265482.P7113508323736765267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (f1 (SequenceMachineLib.nth (fun j => A057979 (f1 j).toNat = 1) n)).toNat

end

end A265482.P7113508323736765267

/-!
# A265485: Numbers k such that 49^k - 7^k - 1 is prime.

The programs for A265485, there is no canonical definition to state claims against.
-/

/-! ## A265485.P4155956438054330888

`A006799(A173063(n+1))*A193702(n+1)`
-/

namespace A265485.P4155956438054330888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006799 (A173063 (n + 1)).toNat * A193702 (n + 1)

end

end A265485.P4155956438054330888

/-!
# A265486: Numbers k such that 64^k - 8^k - 1 is prime.

The programs for A265486, there is no canonical definition to state claims against.
-/

/-! ## A265486.P11443607914201047944

`eq[1, A179205(3*n+2)]+1`
-/

namespace A265486.P11443607914201047944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179205 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265486.P11443607914201047944

/-! ## A265486.P7815241473339945227

`eq[1, A191620(3*(n+1))]+1`
-/

namespace A265486.P7815241473339945227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191620 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A265486.P7815241473339945227

/-! ## A265486.P11882583167410621511

`lt[A191620(3*n+3), 2]+1`
-/

namespace A265486.P11882583167410621511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191620 (3 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A265486.P11882583167410621511

/-! ## A265486.P5932349884909054475

`eq[1, A187367(A008486(n))]`
-/

namespace A265486.P5932349884909054475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187367 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265486.P5932349884909054475

/-! ## A265486.P2062818485967237446

`eq[1, A099478(A008574(n)-n)]`
-/

namespace A265486.P2062818485967237446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099478 (A008574 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265486.P2062818485967237446

/-!
# A265487: Numbers k such that 81^k - 9^k - 1 is prime.

The programs for A265487, there is no canonical definition to state claims against.
-/

/-! ## A265487.P8894840235343843002

`record[A032742(A265481(n+1))]`
-/

namespace A265487.P8894840235343843002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A265481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265487.P8894840235343843002

/-! ## A265487.P630169087068939006

`record[A057979(A265481(n+1)+1)]`
-/

namespace A265487.P630169087068939006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A265481 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265487.P630169087068939006

/-! ## A265487.P16673969877555705380

`record[A101279(A265481(n+1)+1)]`
-/

namespace A265487.P16673969877555705380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A265481 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265487.P16673969877555705380

/-! ## A265487.P14510565649844196652

`record[A078898(A265481(n+1))]*A210954(n+1)`
-/

namespace A265487.P14510565649844196652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A265481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A210954 (n + 1)

end

end A265487.P14510565649844196652

/-! ## A265487.P12968001116056470750

`record[A078898(A265481(n+1)%A154638(n+1))]`
-/

namespace A265487.P12968001116056470750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.tmod (A265481 (n + 1)) (A154638 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265487.P12968001116056470750

/-!
# A265488: Number of (3n-2)X2 0..6n-5 arrays with upper left zero and lower right 6n-5 and each element differing from its horizontal, vertical and diagonal neighbors by a power of two.

The programs for A265488, there is no canonical definition to state claims against.
-/

/-! ## A265488.P3029218326950485392

`record[A265494(∑[n+2])]`
-/

namespace A265488.P3029218326950485392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265494 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265488.P3029218326950485392

/-!
# A265489: Number of n X 3 0..n*3-1 arrays with upper left zero and lower right n*3-1 and each element differing from its horizontal, vertical and diagonal neighbors by a power of two.

The programs for A265489, there is no canonical definition to state claims against.
-/

/-! ## A265489.P9570018524070914085

`A265494(∑[n+2]+4)`
-/

namespace A265489.P9570018524070914085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265494 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265489.P9570018524070914085

/-! ## A265489.P15303927784301603852

`and(-1, A265494(A167614(n+1)))`
-/

namespace A265489.P15303927784301603852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A265494 (A167614 (n + 1)).toNat)

end

end A265489.P15303927784301603852

/-! ## A265489.P13152649303972081761

`A265494(A167614(n+1))+A025439(n)`
-/

namespace A265489.P13152649303972081761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265494 (A167614 (n + 1)).toNat + A025439 n

end

end A265489.P13152649303972081761

/-! ## A265489.P722031925527884209

`A265494(A167614(n+1))+A025443(n)`
-/

namespace A265489.P722031925527884209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265494 (A167614 (n + 1)).toNat + A025443 n

end

end A265489.P722031925527884209

/-! ## A265489.P1863459520283068988

`A265494(A167614(n+1))+A178798(n)`
-/

namespace A265489.P1863459520283068988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265494 (A167614 (n + 1)).toNat + A178798 n

end

end A265489.P1863459520283068988

/-!
# A265490: Number of n X 4 0..n*4-1 arrays with upper left zero and lower right n*4-1 and each element differing from its horizontal, vertical and diagonal neighbors by a power of two.

The programs for A265490, there is no canonical definition to state claims against.
-/

/-! ## A265490.P13689875070210478824

`A265494(A374004(n+1))`
-/

namespace A265490.P13689875070210478824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265494 (A374004 (n + 1)).toNat

end

end A265490.P13689875070210478824

/-! ## A265490.P13139156024293704381

`A265494(A141214(n)+7)`
-/

namespace A265490.P13139156024293704381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265494 (A141214 n + 7).toNat

end

end A265490.P13139156024293704381

/-! ## A265490.P2140651461213491847

`A265494(A052905(n)+9)`
-/

namespace A265490.P2140651461213491847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265494 (A052905 n + 9).toNat

end

end A265490.P2140651461213491847

/-! ## A265490.P9700096440982089819

`A265494(A055999(n)+10)`
-/

namespace A265490.P9700096440982089819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265494 (A055999 n + 10).toNat

end

end A265490.P9700096440982089819

/-! ## A265490.P5795130514229640308

`A265494(eq[5, A066657(n)])`
-/

namespace A265490.P5795130514229640308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265490.P5795130514229640308

/-!
# A265493: Number of nX7 0..n*7-1 arrays with upper left zero and lower right n*7-1 and each element differing from its horizontal, vertical and diagonal neighbors by a power of two.

The programs for A265493, there is no canonical definition to state claims against.
-/

/-! ## A265493.P12195642579895740962

`A265494(A374008(n+1))`
-/

namespace A265493.P12195642579895740962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265494 (A374008 (n + 1)).toNat

end

end A265493.P12195642579895740962

/-! ## A265493.P5484263480245506029

`A265494(eq[11, A066657(n)])`
-/

namespace A265493.P5484263480245506029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265493.P5484263480245506029

/-! ## A265493.P9553067171885891123

`A265494(A167499(n+5)+2)`
-/

namespace A265493.P9553067171885891123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265494 (A167499 (n + 5) + 2).toNat

end

end A265493.P9553067171885891123

/-! ## A265493.P11860823883778163911

`A265494(A167614(n+5)+4)`
-/

namespace A265493.P11860823883778163911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265494 (A167614 (n + 5) + 4).toNat

end

end A265493.P11860823883778163911

/-! ## A265493.P5114718722635339897

`A265494(A000217(n+6)+7)`
-/

namespace A265493.P5114718722635339897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265494 (A000217 (n + 6) + 7).toNat

end

end A265493.P5114718722635339897

