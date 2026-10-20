import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.B013.C000
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

/-!
# A295500: a(n) = phi(3^n-1), where phi is Euler's totient function (A000010).

The programs for A295500, the canonical program `A295500.P6030466195170645878` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295500 has offset 1).

The definition of A295500 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295500.P9730170543315384901

`(n+1)*A027385(n+1)`
-/

namespace A295500.P9730170543315384901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A027385 (n + 1)

end

end A295500.P9730170543315384901

namespace A295500

/-- `(n+1)*A027385(n+1)` -/
def P9730170543315384901.Spec : Prop :=
  ∀ n, P9730170543315384901.a n = A295500 (n + 1)

end A295500

/-! ## A295500.P6030466195170645878

`A000010(A024023(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A295500

/-- `A000010(A024023(n+1))` -/
def P6030466195170645878.Spec : Prop :=
  ∀ n, P6030466195170645878.a n = A295500 (n + 1)

theorem P6030466195170645878.correct : P6030466195170645878.Spec := by
  intro n
  simp only [A295500, Nat.add_sub_cancel]

end A295500

/-! ## A295500.P817948937741590670

`record[A027385(A008619(n))*A028242(n)]`
-/

namespace A295500.P817948937741590670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027385 (A008619 n).toNat * A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295500.P817948937741590670

namespace A295500

/-- `record[A027385(A008619(n))*A028242(n)]` -/
def P817948937741590670.Spec : Prop :=
  ∀ n, P817948937741590670.a n = A295500 (n + 1)

end A295500

/-! ## A295500.P11718288464555345841

`record[A027385(A038568(n))*A038568(n)]`
-/

namespace A295500.P11718288464555345841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027385 (A038568 n).toNat * A038568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295500.P11718288464555345841

namespace A295500

/-- `record[A027385(A038568(n))*A038568(n)]` -/
def P11718288464555345841.Spec : Prop :=
  ∀ n, P11718288464555345841.a n = A295500 (n + 1)

end A295500

/-! ## A295500.P531436036609567886

`record[A027385(A008619(n))*A131732(n)]`
-/

namespace A295500.P531436036609567886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027385 (A008619 n).toNat * A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295500.P531436036609567886

namespace A295500

/-- `record[A027385(A008619(n))*A131732(n)]` -/
def P531436036609567886.Spec : Prop :=
  ∀ n, P531436036609567886.a n = A295500 (n + 1)

end A295500

/-! ## A295500.P5399509910056167742

`A027385(A028242(2*n))*A028242(2*n)`
-/

namespace A295500.P5399509910056167742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027385 (A028242 (2 * n)).toNat * A028242 (2 * n)

end

end A295500.P5399509910056167742

namespace A295500

/-- `A027385(A028242(2*n))*A028242(2*n)` -/
def P5399509910056167742.Spec : Prop :=
  ∀ n, P5399509910056167742.a n = A295500 (n + 1)

end A295500

/-! ## A295500.P16966400196897432009

`A027385(A131732(2*n))*A131732(2*n)`
-/

namespace A295500.P16966400196897432009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027385 (A131732 (2 * n)).toNat * A131732 (2 * n)

end

end A295500.P16966400196897432009

namespace A295500

/-- `A027385(A131732(2*n))*A131732(2*n)` -/
def P16966400196897432009.Spec : Prop :=
  ∀ n, P16966400196897432009.a n = A295500 (n + 1)

end A295500

/-!
# A295501: a(n) = phi(4^n-1), where phi is Euler's totient function (A000010).

The programs for A295501, the canonical program `A295501.P9575803984090535079` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295501 has offset 1).

The definition of A295501 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053287, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295501.P9575803984090535079

`A053287(2*(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A295501

/-- `A053287(2*(n+1))` -/
def P9575803984090535079.Spec : Prop :=
  ∀ n, P9575803984090535079.a n = A295501 (n + 1)

theorem P9575803984090535079.correct : P9575803984090535079.Spec := by
  intro n
  simp only [A295501, Nat.add_sub_cancel]

end A295501

/-! ## A295501.P2902459992379328860

`(n+1)*A027695(n+1)`
-/

namespace A295501.P2902459992379328860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A027695 (n + 1)

end

end A295501.P2902459992379328860

namespace A295501

/-- `(n+1)*A027695(n+1)` -/
def P2902459992379328860.Spec : Prop :=
  ∀ n, P2902459992379328860.a n = A295501 (n + 1)

end A295501

/-! ## A295501.P8621082034786997031

`2*A056742(2*(n+1))`
-/

namespace A295501.P8621082034786997031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056742 (2 * (n + 1))

end

end A295501.P8621082034786997031

namespace A295501

/-- `2*A056742(2*(n+1))` -/
def P8621082034786997031.Spec : Prop :=
  ∀ n, P8621082034786997031.a n = A295501 (n + 1)

end A295501

/-! ## A295501.P17100393748163406411

`lcm(2, A053287(Δ[n²]+1))`
-/

namespace A295501.P17100393748163406411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A053287 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat)

end

end A295501.P17100393748163406411

namespace A295501

/-- `lcm(2, A053287(Δ[n²]+1))` -/
def P17100393748163406411.Spec : Prop :=
  ∀ n, (P17100393748163406411.a n : ℤ) = A295501 (n + 1)

end A295501

/-! ## A295501.P3530517305535926007

`record[A053287(and(n, n-1)+2)]`
-/

namespace A295501.P3530517305535926007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053287 (Int.land (n : ℤ) ((n : ℤ) - 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295501.P3530517305535926007

namespace A295501

/-- `record[A053287(and(n, n-1)+2)]` -/
def P3530517305535926007.Spec : Prop :=
  ∀ n, P3530517305535926007.a n = A295501 (n + 1)

end A295501

/-! ## A295501.P12923143791623824823

`2*(n+1)*A027742(n+1)`
-/

namespace A295501.P12923143791623824823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A027742 (n + 1))

end

end A295501.P12923143791623824823

namespace A295501

/-- `2*(n+1)*A027742(n+1)` -/
def P12923143791623824823.Spec : Prop :=
  ∀ n, P12923143791623824823.a n = A295501 (n + 1)

end A295501

/-! ## A295501.P2859959868410922245

`A000020(2*(n+1))*2*(n+1)`
-/

namespace A295501.P2859959868410922245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (2 * (n + 1)) * (2 * (n + 1) : ℤ)

end

end A295501.P2859959868410922245

namespace A295501

/-- `A000020(2*(n+1))*2*(n+1)` -/
def P2859959868410922245.Spec : Prop :=
  ∀ n, P2859959868410922245.a n = A295501 (n + 1)

end A295501

/-! ## A295501.P5594522861588065884

`A004277(n+1)*A011260(2*(n+1))`
-/

namespace A295501.P5594522861588065884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) * A011260 (2 * (n + 1))

end

end A295501.P5594522861588065884

namespace A295501

/-- `A004277(n+1)*A011260(2*(n+1))` -/
def P5594522861588065884.Spec : Prop :=
  ∀ n, P5594522861588065884.a n = A295501 (n + 1)

end A295501

/-! ## A295501.P11770417863435206413

`A005843(n+1)*A011260(2*(n+1))`
-/

namespace A295501.P11770417863435206413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A011260 (2 * (n + 1))

end

end A295501.P11770417863435206413

namespace A295501

/-- `A005843(n+1)*A011260(2*(n+1))` -/
def P11770417863435206413.Spec : Prop :=
  ∀ n, P11770417863435206413.a n = A295501 (n + 1)

end A295501

/-! ## A295501.P10862659346382347093

`A092589(2*n+1)+A000225(2*n+1)`
-/

namespace A295501.P10862659346382347093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092589 (2 * n + 1) + A000225 (2 * n + 1)

end

end A295501.P10862659346382347093

namespace A295501

/-- `A092589(2*n+1)+A000225(2*n+1)` -/
def P10862659346382347093.Spec : Prop :=
  ∀ n, P10862659346382347093.a n = A295501 (n + 1)

end A295501

/-! ## A295501.P2771827740908402699

`A255047(2*n+1)+A092589(2*n+1)`
-/

namespace A295501.P2771827740908402699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (2 * n + 1) + A092589 (2 * n + 1)

end

end A295501.P2771827740908402699

namespace A295501

/-- `A255047(2*n+1)+A092589(2*n+1)` -/
def P2771827740908402699.Spec : Prop :=
  ∀ n, P2771827740908402699.a n = A295501 (n + 1)

end A295501

/-! ## A295501.P7594383491508059466

`A126646(2*n+1)-A053288(2*(n+1))`
-/

namespace A295501.P7594383491508059466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (2 * n + 1) - A053288 (2 * (n + 1))

end

end A295501.P7594383491508059466

namespace A295501

/-- `A126646(2*n+1)-A053288(2*(n+1))` -/
def P7594383491508059466.Spec : Prop :=
  ∀ n, P7594383491508059466.a n = A295501 (n + 1)

end A295501

/-!
# A295502: a(n) = phi(5^n-1), where phi is Euler's totient function (A000010).

The programs for A295502, the canonical program `A295502.P2320973420440957742` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295502 has offset 1).

The definition of A295502 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295502.P2317736368278541711

`(n+1)*A027741(n+1)`
-/

namespace A295502.P2317736368278541711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A027741 (n + 1)

end

end A295502.P2317736368278541711

namespace A295502

/-- `(n+1)*A027741(n+1)` -/
def P2317736368278541711.Spec : Prop :=
  ∀ n, P2317736368278541711.a n = A295502 (n + 1)

end A295502

/-! ## A295502.P2320973420440957742

`A000010(A024049(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A295502

/-- `A000010(A024049(n+1))` -/
def P2320973420440957742.Spec : Prop :=
  ∀ n, P2320973420440957742.a n = A295502 (n + 1)

theorem P2320973420440957742.correct : P2320973420440957742.Spec := by
  intro n
  simp only [A295502, Nat.add_sub_cancel]

end A295502

/-! ## A295502.P17816677171260034832

`record[A008611(n)*A027741(A008611(n))]`
-/

namespace A295502.P17816677171260034832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A027741 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295502.P17816677171260034832

namespace A295502

/-- `record[A008611(n)*A027741(A008611(n))]` -/
def P17816677171260034832.Spec : Prop :=
  ∀ n, P17816677171260034832.a n = A295502 (n + 1)

end A295502

/-! ## A295502.P3625443389898586015

`record[A027741(A028242(n))*A028242(n)]`
-/

namespace A295502.P3625443389898586015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027741 (A028242 n).toNat * A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295502.P3625443389898586015

namespace A295502

/-- `record[A027741(A028242(n))*A028242(n)]` -/
def P3625443389898586015.Spec : Prop :=
  ∀ n, P3625443389898586015.a n = A295502 (n + 1)

end A295502

/-! ## A295502.P7220334550276539124

`record[A027741(A152271(n))*A152271(n)]`
-/

namespace A295502.P7220334550276539124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027741 (A152271 n).toNat * A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295502.P7220334550276539124

namespace A295502

/-- `record[A027741(A152271(n))*A152271(n)]` -/
def P7220334550276539124.Spec : Prop :=
  ∀ n, P7220334550276539124.a n = A295502 (n + 1)

end A295502

/-! ## A295502.P18248749015692160159

`record[A027741(A344180(n))*A344180(n)]`
-/

namespace A295502.P18248749015692160159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027741 (A344180 n).toNat * A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295502.P18248749015692160159

namespace A295502

/-- `record[A027741(A344180(n))*A344180(n)]` -/
def P18248749015692160159.Spec : Prop :=
  ∀ n, P18248749015692160159.a n = A295502 (n + 1)

end A295502

/-!
# A295503: a(n) = phi(10^n-1), where phi is Euler's totient function (A000010).

The programs for A295503, there is no canonical definition to state claims against.
-/

/-! ## A295503.P17352939417136282634

`(n+1)*A295497(n+1)`
-/

namespace A295503.P17352939417136282634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A295497 (n + 1)

end

end A295503.P17352939417136282634

/-!
# A295504: G.f. A(x) satisfies: A(x) = 1 + x*A(x)^2 - x^2/A(x)^2.

The programs for A295504, there is no canonical definition to state claims against.
-/

/-! ## A295504.P8425642611937958183

`A082984(A396311(n))`
-/

namespace A295504.P8425642611937958183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082984 (A396311 n).toNat

end

end A295504.P8425642611937958183

/-! ## A295504.P6686821146038978514

`A316503(A240736(n+1))`
-/

namespace A295504.P6686821146038978514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316503 (A240736 (n + 1)).toNat

end

end A295504.P6686821146038978514

/-! ## A295504.P16216608070838443786

`A162340(A124791(n))-1`
-/

namespace A295504.P16216608070838443786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162340 (A124791 n).toNat - 1

end

end A295504.P16216608070838443786

/-!
# A295505: a(n) = Sum_{d|n} mu(n/d)*4^(d-1).

The programs for A295505, the canonical program `A295505.P10874738563649779947` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295505 has offset 1).

The definition of A295505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295505.P12271287217469474994

`A054719(n+1)/4`
-/

namespace A295505.P12271287217469474994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054719 (n + 1) : ℚ) / 4

end

end A295505.P12271287217469474994

namespace A295505

/-- `A054719(n+1)/4` -/
def P12271287217469474994.Spec : Prop :=
  ∀ n, P12271287217469474994.a n = (A295505 (n + 1) : ℚ)

end A295505

/-! ## A295505.P12110104612977807030

`(n+1)/2*A131764(n+1)`
-/

namespace A295505.P12110104612977807030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A131764 (n + 1) : ℚ)

end

end A295505.P12110104612977807030

namespace A295505

/-- `(n+1)/2*A131764(n+1)` -/
def P12110104612977807030.Spec : Prop :=
  ∀ n, P12110104612977807030.a n = (A295505 (n + 1) : ℚ)

end A295505

/-! ## A295505.P3830455409797751707

`(n+1)/2*A027377(n+1)/2`
-/

namespace A295505.P3830455409797751707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * ((A027377 (n + 1) : ℚ) / 2)

end

end A295505.P3830455409797751707

namespace A295505

/-- `(n+1)/2*A027377(n+1)/2` -/
def P3830455409797751707.Spec : Prop :=
  ∀ n, P3830455409797751707.a n = (A295505 (n + 1) : ℚ)

end A295505

/-! ## A295505.P18342309366100856729

`∑{d}[n+1, A007427(#)*A339684((n+1)/#)]`
-/

namespace A295505.P18342309366100856729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A339684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A295505.P18342309366100856729

namespace A295505

/-- `∑{d}[n+1, A007427(#)*A339684((n+1)/#)]` -/
def P18342309366100856729.Spec : Prop :=
  ∀ n, P18342309366100856729.a n = A295505 (n + 1)

end A295505

/-! ## A295505.P16427843105351406244

`∑{d}[n+1, A055615(#)*A343490((n+1)/#)]`
-/

namespace A295505.P16427843105351406244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A343490 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A295505.P16427843105351406244

namespace A295505

/-- `∑{d}[n+1, A055615(#)*A343490((n+1)/#)]` -/
def P16427843105351406244.Spec : Prop :=
  ∀ n, P16427843105351406244.a n = A295505 (n + 1)

end A295505

/-! ## A295505.P10874738563649779947

`∑{d}[n+1, A046692(#)*A359190((n+1)/#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A295505

/-- `∑{d}[n+1, A046692(#)*A359190((n+1)/#)]` -/
def P10874738563649779947.Spec : Prop :=
  ∀ n, P10874738563649779947.a n = A295505 (n + 1)

theorem P10874738563649779947.correct : P10874738563649779947.Spec := by
  intro n
  simp only [A295505, Nat.add_sub_cancel]

end A295505

/-! ## A295505.P9788951306654870658

`∑{d}[n+1, A000302(#-1)*A008683((n+1)/#)]`
-/

namespace A295505.P9788951306654870658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000302 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A295505.P9788951306654870658

namespace A295505

/-- `∑{d}[n+1, A000302(#-1)*A008683((n+1)/#)]` -/
def P9788951306654870658.Spec : Prop :=
  ∀ n, P9788951306654870658.a n = A295505 (n + 1)

end A295505

/-! ## A295505.P7983843012767977829

`A143325(A055998(n+2))`
-/

namespace A295505.P7983843012767977829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A055998 (n + 2)).toNat

end

end A295505.P7983843012767977829

namespace A295505

/-- `A143325(A055998(n+2))` -/
def P7983843012767977829.Spec : Prop :=
  ∀ n, P7983843012767977829.a n = A295505 (n + 1)

end A295505

/-! ## A295505.P6887395968836703993

`A143325(A155212(n)+5)`
-/

namespace A295505.P6887395968836703993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A155212 n + 5).toNat

end

end A295505.P6887395968836703993

namespace A295505

/-- `A143325(A155212(n)+5)` -/
def P6887395968836703993.Spec : Prop :=
  ∀ n, P6887395968836703993.a n = A295505 (n + 1)

end A295505

/-! ## A295505.P10116749829242263483

`A143325(A052905(n+1)+2)`
-/

namespace A295505.P10116749829242263483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A052905 (n + 1) + 2).toNat

end

end A295505.P10116749829242263483

namespace A295505

/-- `A143325(A052905(n+1)+2)` -/
def P10116749829242263483.Spec : Prop :=
  ∀ n, P10116749829242263483.a n = A295505 (n + 1)

end A295505

/-!
# A295506: a(n) = Sum_{d|n} mu(n/d)*5^(d-1).

The programs for A295506, the canonical program `A295506.P4264135978440819762` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295506 has offset 1).

The definition of A295506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295506.P17516325929166704786

`A054720(n+1)/5`
-/

namespace A295506.P17516325929166704786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054720 (n + 1) : ℚ) / 5

end

end A295506.P17516325929166704786

namespace A295506

/-- `A054720(n+1)/5` -/
def P17516325929166704786.Spec : Prop :=
  ∀ n, P17516325929166704786.a n = (A295506 (n + 1) : ℚ)

end A295506

/-! ## A295506.P4264135978440819762

`∑{d}[n+1, A007427(#)*A339685((n+1)/#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A295506

/-- `∑{d}[n+1, A007427(#)*A339685((n+1)/#)]` -/
def P4264135978440819762.Spec : Prop :=
  ∀ n, P4264135978440819762.a n = A295506 (n + 1)

theorem P4264135978440819762.correct : P4264135978440819762.Spec := by
  intro n
  simp only [A295506, Nat.add_sub_cancel]

end A295506

/-! ## A295506.P4795542395663582730

`∑{d}[n+1, A055615(#)*A343492((n+1)/#)]`
-/

namespace A295506.P4795542395663582730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A343492 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A295506.P4795542395663582730

namespace A295506

/-- `∑{d}[n+1, A055615(#)*A343492((n+1)/#)]` -/
def P4795542395663582730.Spec : Prop :=
  ∀ n, P4795542395663582730.a n = A295506 (n + 1)

end A295506

/-! ## A295506.P8088726923368732506

`∑{d}[n+1, A008683(#)*A000351((n+1)/#-1)]`
-/

namespace A295506.P8088726923368732506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000351 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A295506.P8088726923368732506

namespace A295506

/-- `∑{d}[n+1, A008683(#)*A000351((n+1)/#-1)]` -/
def P8088726923368732506.Spec : Prop :=
  ∀ n, P8088726923368732506.a n = A295506 (n + 1)

end A295506

/-! ## A295506.P9828538722638816223

`A143325(Δ[A264443(n)])`
-/

namespace A295506.P9828538722638816223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (f1 (n + 1) - f1 n).toNat

end

end A295506.P9828538722638816223

namespace A295506

/-- `A143325(Δ[A264443(n)])` -/
def P9828538722638816223.Spec : Prop :=
  ∀ n, P9828538722638816223.a n = A295506 (n + 1)

end A295506

/-! ## A295506.P11969846371427963535

`A143325(A046691(n+3))`
-/

namespace A295506.P11969846371427963535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A046691 (n + 3)).toNat

end

end A295506.P11969846371427963535

namespace A295506

/-- `A143325(A046691(n+3))` -/
def P11969846371427963535.Spec : Prop :=
  ∀ n, P11969846371427963535.a n = A295506 (n + 1)

end A295506

/-! ## A295506.P4579121522773608094

`record[A143325(abs(A046691(n)))]`
-/

namespace A295506.P4579121522773608094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295506.P4579121522773608094

namespace A295506

/-- `record[A143325(abs(A046691(n)))]` -/
def P4579121522773608094.Spec : Prop :=
  ∀ n, P4579121522773608094.a n = A295506 (n + 1)

end A295506

/-! ## A295506.P135757962164128900

`A143325(Δ[A023545(n+1)])`
-/

namespace A295506.P135757962164128900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (f1 (n + 1) - f1 n).toNat

end

end A295506.P135757962164128900

namespace A295506

/-- `A143325(Δ[A023545(n+1)])` -/
def P135757962164128900.Spec : Prop :=
  ∀ n, P135757962164128900.a n = A295506 (n + 1)

end A295506

/-! ## A295506.P4072448466656000895

`record[A143325(A052905(n)+1)]`
-/

namespace A295506.P4072448466656000895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A052905 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295506.P4072448466656000895

namespace A295506

/-- `record[A143325(A052905(n)+1)]` -/
def P4072448466656000895.Spec : Prop :=
  ∀ n, P4072448466656000895.a n = A295506 (n + 1)

end A295506

/-! ## A295506.P8267386325151507734

`record[A143325(A155212(n)-n)]`
-/

namespace A295506.P8267386325151507734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143325 (A155212 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295506.P8267386325151507734

namespace A295506

/-- `record[A143325(A155212(n)-n)]` -/
def P8267386325151507734.Spec : Prop :=
  ∀ n, P8267386325151507734.a n = A295506 (n + 1)

end A295506

/-!
# A295508: Triangle read by rows, related to binary partitions of n.

The programs for A295508, there is no canonical definition to state claims against.
-/

/-! ## A295508.P9568462597265976682

`A025581(eq[1, A171968(A002262(n))])`
-/

namespace A295508.P9568462597265976682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171968 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295508.P9568462597265976682

/-! ## A295508.P16869994455428989780

`A025581(eq[1, A007305(A002260(n+1))])`
-/

namespace A295508.P16869994455428989780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295508.P16869994455428989780

/-! ## A295508.P7994652844217979886

`A025581(eq[1, A000120(A144328(n+1))])`
-/

namespace A295508.P7994652844217979886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A144328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295508.P7994652844217979886

/-! ## A295508.P13648095336862987710

`A025581(eq[1, A002487(A144328(n+1))])`
-/

namespace A295508.P13648095336862987710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A144328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295508.P13648095336862987710

/-! ## A295508.P2300498436868735155

`A025581(eq[1, A169778(A002260(n+1))])`
-/

namespace A295508.P2300498436868735155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169778 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295508.P2300498436868735155

/-! ## A295508.P716033354163703132

`A025581(eq[1, A324185(A144328(n+1))])`
-/

namespace A295508.P716033354163703132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324185 (A144328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295508.P716033354163703132

/-!
# A295509: Maxima of the numerators (and also of the denominators) of row n in the Schinzel-Sierpinski tree of fractions A295511.

The programs for A295509, there is no canonical definition to state claims against.
-/

/-! ## A295509.P10133739026213013939

`p?[A327807(n)+A036561(n)]`
-/

namespace A295509.P10133739026213013939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327807 n + A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A295509.P10133739026213013939

/-! ## A295509.P7942601987128417262

`A188552(A002944(n+1)+n)`
-/

namespace A295509.P7942601987128417262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188552 (A002944 (n + 1) + (n : ℤ)).toNat

end

end A295509.P7942601987128417262

/-!
# A295510: The numerators of the fractions in the Schinzel-Sierpiński tree A295511, read across levels. Also an encoding of Stern's diatomic series A002487.

The programs for A295510, there is no canonical definition to state claims against.
-/

/-! ## A295510.P15183109442753261333

`A295511(Δ[n²])`
-/

namespace A295510.P15183109442753261333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A295510.P15183109442753261333

/-! ## A295510.P7242613135481065126

`p?[A295511(comp[2*n])]`
-/

namespace A295510.P7242613135481065126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295511 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A295510.P7242613135481065126

/-! ## A295510.P11212702034717489269

`A295511(2*n+1)%comp[∑[n]]²`
-/

namespace A295510.P11212702034717489269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295511 (2 * n + 1)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 : ℤ)

end

end A295510.P11212702034717489269

/-! ## A295510.P9704516296038249979

`A028310(A295511(record[xor(1, n)]))`
-/

namespace A295510.P9704516296038249979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A295511 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A295510.P9704516296038249979

/-! ## A295510.P11203997136134235449

`A000027(A295511(2*n+1))`
-/

namespace A295510.P11203997136134235449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A295511 (2 * n + 1)).toNat

end

end A295510.P11203997136134235449

/-!
# A295513: a(n) = n*bil(n) - 2^bil(n) where bil(0) = 0 and bil(n) = floor(log_2(n)) + 1 for n>0.

The programs for A295513, there is no canonical definition to state claims against.
-/

/-! ## A295513.P9765909133733018144

`∑[ceil(log2(abs(1/3-n)))]`
-/

namespace A295513.P9765909133733018144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (|(1 : ℚ) / 3 - (n : ℚ)| : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295513.P9765909133733018144

/-! ## A295513.P9272591436026057814

`∑[ceil(log2(n^tanh(n)))]-1`
-/

namespace A295513.P9272591436026057814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((n : ℝ) ^ (Real.tanh (n : ℝ)))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A295513.P9272591436026057814

/-! ## A295513.P3980594697481230592

`a(n-1)+ceil(log2(n))` with `a(0)=-1`
-/

namespace A295513.P3980594697481230592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  a (n - 1) + ⌈Real.logb 2 (n : ℝ)⌉

end

end A295513.P3980594697481230592

/-! ## A295513.P6167207091300716992

`∑[ceil(log2(acot(n)-1+n))]-1`
-/

namespace A295513.P6167207091300716992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (SequenceMachineLib.acot (n : ℝ) - 1 + (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A295513.P6167207091300716992

/-! ## A295513.P4814264668692293385

`∑[a(ceil(n/2))+1]-1` with `a(0)=0, a(1)=0`
-/

namespace A295513.P4814264668692293385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 ⌈(n : ℚ) / 2⌉.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A295513.P4814264668692293385

/-! ## A295513.P4089774979878013163

`∑[ceil(log2(C(2, n+2)+n))]-1`
-/

namespace A295513.P4089774979878013163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.choose 2 (n + 2) + n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A295513.P4089774979878013163

/-! ## A295513.P15020141524051152370

`∑[ceil(log2(A028310(n)))]-1`
-/

namespace A295513.P15020141524051152370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A028310 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A295513.P15020141524051152370

/-! ## A295513.P13925753738252076152

`∑[∑[char[A000051(n)]]]-1`
-/

namespace A295513.P13925753738252076152
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A295513.P13925753738252076152

/-! ## A295513.P15936962386402973295

`∑[∑[char[A000010(2^n)+1]]]-1`
-/

namespace A295513.P15936962386402973295
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ n) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A295513.P15936962386402973295

/-! ## A295513.P6540853767167806222

`∑[ceil(log2(n+1))]-A000005(2^ceil(log2(n+1)))`
-/

namespace A295513.P6540853767167806222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

end

end A295513.P6540853767167806222

/-!
# A295514: a(n) = 2^bil(n) - bil(n) where bil(0) = 0 and bil(n) = floor(log_2(n)) + 1 for n > 0.

The programs for A295514, the canonical program `A295514.P6128396949430385763` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295514 has offset 0).

The definition of A295514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295514.P6128396949430385763

`4*a(floor(n/2))-5*a(floor(n/4))+2*a(floor(n/8))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295514

/-- `4*a(floor(n/2))-5*a(floor(n/4))+2*a(floor(n/8))` -/
def P6128396949430385763.Spec : Prop :=
  ∀ n, P6128396949430385763.a n = A295514 n

theorem P6128396949430385763.correct : P6128396949430385763.Spec := by
  intro n
  simp only [A295514]

end A295514

/-! ## A295514.P2624825883805561399

`A000325(A070939(n))`
-/

namespace A295514.P2624825883805561399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (A070939 n).toNat

end

end A295514.P2624825883805561399

namespace A295514

/-- `A000325(A070939(n))` -/
def P2624825883805561399.Spec : Prop :=
  ∀ n, P2624825883805561399.a n = A295514 n

end A295514

/-! ## A295514.P9475049381003939920

`A000325(A029837(n+1))`
-/

namespace A295514.P9475049381003939920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (A029837 (n + 1)).toNat

end

end A295514.P9475049381003939920

namespace A295514

/-- `A000325(A029837(n+1))` -/
def P9475049381003939920.Spec : Prop :=
  ∀ n, P9475049381003939920.a n = A295514 n

end A295514

/-! ## A295514.P14742504975535363351

`∑[(n-1)*char[2^n]]+1`
-/

namespace A295514.P14742504975535363351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A295514.P14742504975535363351

namespace A295514

/-- `∑[(n-1)*char[2^n]]+1` -/
def P14742504975535363351.Spec : Prop :=
  ∀ n, P14742504975535363351.a n = A295514 n

end A295514

/-! ## A295514.P16812316024789309723

`A000325(ceil(log2(n+1)))`
-/

namespace A295514.P16812316024789309723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

end

end A295514.P16812316024789309723

namespace A295514

/-- `A000325(ceil(log2(n+1)))` -/
def P16812316024789309723.Spec : Prop :=
  ∀ n, P16812316024789309723.a n = A295514 n

end A295514

/-! ## A295514.P8158787508728862785

`∑[(n-1)*a(A006530(2*n)-2)]` with `a(0)=1`
-/

namespace A295514.P8158787508728862785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1) * f1 (A006530 (2 * n) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295514.P8158787508728862785

namespace A295514

/-- `∑[(n-1)*a(A006530(2*n)-2)]` -/
def P8158787508728862785.Spec : Prop :=
  ∀ n, P8158787508728862785.a n = A295514 n

end A295514

/-! ## A295514.P17011877826995068975

`∑[(n-1)*A309215(A060632(2*n))]`
-/

namespace A295514.P17011877826995068975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A309215 (A060632 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295514.P17011877826995068975

namespace A295514

/-- `∑[(n-1)*A309215(A060632(2*n))]` -/
def P17011877826995068975.Spec : Prop :=
  ∀ n, P17011877826995068975.a n = A295514 n

end A295514

/-! ## A295514.P14160365454499415007

`A062968(A062383(n))`
-/

namespace A295514.P14160365454499415007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (A062383 n).toNat

end

end A295514.P14160365454499415007

namespace A295514

/-- `A062968(A062383(n))` -/
def P14160365454499415007.Spec : Prop :=
  ∀ n, P14160365454499415007.a n = A295514 n

end A295514

/-! ## A295514.P7653379461198307523

`A080079(or(A062383(n), A070939(n)))`
-/

namespace A295514.P7653379461198307523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (Int.lor (A062383 n) (A070939 n)).toNat

end

end A295514.P7653379461198307523

namespace A295514

/-- `A080079(or(A062383(n), A070939(n)))` -/
def P7653379461198307523.Spec : Prop :=
  ∀ n, P7653379461198307523.a n = A295514 n

end A295514

/-! ## A295514.P3022164447372116818

`A093048(2*A072376(2*n+1))`
-/

namespace A295514.P3022164447372116818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093048 (2 * A072376 (2 * n + 1)).toNat

end

end A295514.P3022164447372116818

namespace A295514

/-- `A093048(2*A072376(2*n+1))` -/
def P3022164447372116818.Spec : Prop :=
  ∀ n, P3022164447372116818.a n = A295514 n

end A295514

/-! ## A295514.P9894101008072212351

`A368428(A038572(A053644(2*n+1)))`
-/

namespace A295514.P9894101008072212351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368428 (A038572 (A053644 (2 * n + 1)).toNat).toNat

end

end A295514.P9894101008072212351

namespace A295514

/-- `A368428(A038572(A053644(2*n+1)))` -/
def P9894101008072212351.Spec : Prop :=
  ∀ n, P9894101008072212351.a n = A295514 n

end A295514

/-!
# A295515: The Euclid tree, read across levels.

The programs for A295515, the canonical program `A295515.P11785583445350184235` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295515 has offset 1).

The definition of A295515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295515.P11785583445350184235

`A002487(floor((n+1)/2))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A295515

/-- `A002487(floor((n+1)/2))` -/
def P11785583445350184235.Spec : Prop :=
  ∀ n, P11785583445350184235.a n = A295515 (n + 1)

theorem P11785583445350184235.correct : P11785583445350184235.Spec := by
  intro n
  simp only [A295515, Nat.add_sub_cancel]

end A295515

/-! ## A295515.P7764784218869268620

`∑{d}[∑[and(1, n)], A317839(#)]`
-/

namespace A295515.P7764784218869268620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317839 d

end

end A295515.P7764784218869268620

namespace A295515

/-- `∑{d}[∑[and(1, n)], A317839(#)]` -/
def P7764784218869268620.Spec : Prop :=
  ∀ n, P7764784218869268620.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P96612953951929836

`A317840(A131055(n+1))`
-/

namespace A295515.P96612953951929836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (A131055 (n + 1)).toNat

end

end A295515.P96612953951929836

namespace A295515

/-- `A317840(A131055(n+1))` -/
def P96612953951929836.Spec : Prop :=
  ∀ n, P96612953951929836.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P8100200165098097584

`and(-1, A002487(A110654(n)))`
-/

namespace A295515.P8100200165098097584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A002487 (A110654 n).toNat)

end

end A295515.P8100200165098097584

namespace A295515

/-- `and(-1, A002487(A110654(n)))` -/
def P8100200165098097584.Spec : Prop :=
  ∀ n, P8100200165098097584.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P10169332693783941862

`A007306(n+1)-A114214(n)`
-/

namespace A295515.P10169332693783941862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A114214 n

end

end A295515.P10169332693783941862

namespace A295515

/-- `A007306(n+1)-A114214(n)` -/
def P10169332693783941862.Spec : Prop :=
  ∀ n, P10169332693783941862.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P7983835840759614572

`xor(A114214(n), A283987(n+1))`
-/

namespace A295515.P7983835840759614572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A114214 n) (A283987 (n + 1))

end

end A295515.P7983835840759614572

namespace A295515

/-- `xor(A114214(n), A283987(n+1))` -/
def P7983835840759614572.Spec : Prop :=
  ∀ n, P7983835840759614572.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P552505220921918039

`abs(∑[A002487(n)*A280193(n)])`
-/

namespace A295515.P552505220921918039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n * A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A295515.P552505220921918039

namespace A295515

/-- `abs(∑[A002487(n)*A280193(n)])` -/
def P552505220921918039.Spec : Prop :=
  ∀ n, P552505220921918039.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P11330378231547813149

`∑{d}[A316828(n)!+n-1, A317839(#)]`
-/

namespace A295515.P11330378231547813149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A316828 n).toNat : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A317839 d

end

end A295515.P11330378231547813149

namespace A295515

/-- `∑{d}[A316828(n)!+n-1, A317839(#)]` -/
def P11330378231547813149.Spec : Prop :=
  ∀ n, P11330378231547813149.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P11046229327271916242

`∑{d}[n+1, A002487(#-1)*A154955((n+1)/#)]`
-/

namespace A295515.P11046229327271916242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002487 (d - 1) * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A295515.P11046229327271916242

namespace A295515

/-- `∑{d}[n+1, A002487(#-1)*A154955((n+1)/#)]` -/
def P11046229327271916242.Spec : Prop :=
  ∀ n, P11046229327271916242.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P17474606070675892484

`A007306(n+1)-A007306(A008619(n))`
-/

namespace A295515.P17474606070675892484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A007306 (A008619 n).toNat

end

end A295515.P17474606070675892484

namespace A295515

/-- `A007306(n+1)-A007306(A008619(n))` -/
def P17474606070675892484.Spec : Prop :=
  ∀ n, P17474606070675892484.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P361191574623567224

`A288002(or(1, n+1))`
-/

namespace A295515.P361191574623567224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288002 (Nat.lor 1 (n + 1))

end

end A295515.P361191574623567224

namespace A295515

/-- `A288002(or(1, n+1))` -/
def P361191574623567224.Spec : Prop :=
  ∀ n, P361191574623567224.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P2144509979973777335

`A283976(and(1, n)+n)`
-/

namespace A295515.P2144509979973777335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (Nat.land 1 n + n)

end

end A295515.P2144509979973777335

namespace A295515

/-- `A283976(and(1, n)+n)` -/
def P2144509979973777335.Spec : Prop :=
  ∀ n, P2144509979973777335.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P5240187018880888356

`A283977(and(1, n)+n)`
-/

namespace A295515.P5240187018880888356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (Nat.land 1 n + n)

end

end A295515.P5240187018880888356

namespace A295515

/-- `A283977(and(1, n)+n)` -/
def P5240187018880888356.Spec : Prop :=
  ∀ n, P5240187018880888356.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P6615782740452088580

`A288002(A109613(n+1))`
-/

namespace A295515.P6615782740452088580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288002 (A109613 (n + 1)).toNat

end

end A295515.P6615782740452088580

namespace A295515

/-- `A288002(A109613(n+1))` -/
def P6615782740452088580.Spec : Prop :=
  ∀ n, P6615782740452088580.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P17129962676690740764

`A288002(A000034(n)+n)`
-/

namespace A295515.P17129962676690740764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288002 (A000034 n + (n : ℤ)).toNat

end

end A295515.P17129962676690740764

namespace A295515

/-- `A288002(A000034(n)+n)` -/
def P17129962676690740764.Spec : Prop :=
  ∀ n, P17129962676690740764.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P10449398879040378418

`A283976(A000034(n)-1+n)`
-/

namespace A295515.P10449398879040378418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (A000034 n - 1 + (n : ℤ)).toNat

end

end A295515.P10449398879040378418

namespace A295515

/-- `A283976(A000034(n)-1+n)` -/
def P10449398879040378418.Spec : Prop :=
  ∀ n, P10449398879040378418.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P8380488967889674697

`A283977(A000034(n)-1+n)`
-/

namespace A295515.P8380488967889674697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (A000034 n - 1 + (n : ℤ)).toNat

end

end A295515.P8380488967889674697

namespace A295515

/-- `A283977(A000034(n)-1+n)` -/
def P8380488967889674697.Spec : Prop :=
  ∀ n, P8380488967889674697.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P186906241895329246

`A283976(n-(1-A000034(n)))`
-/

namespace A295515.P186906241895329246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 ((n : ℤ) - (1 - A000034 n)).toNat

end

end A295515.P186906241895329246

namespace A295515

/-- `A283976(n-(1-A000034(n)))` -/
def P186906241895329246.Spec : Prop :=
  ∀ n, P186906241895329246.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P4093598986925272117

`A007306(n+1)-A007306(A065033(n+1))`
-/

namespace A295515.P4093598986925272117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A007306 (A065033 (n + 1)).toNat

end

end A295515.P4093598986925272117

namespace A295515

/-- `A007306(n+1)-A007306(A065033(n+1))` -/
def P4093598986925272117.Spec : Prop :=
  ∀ n, P4093598986925272117.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P11908939879700374705

`A002487(A004526(n+1))*A002487(A120880(n+1))`
-/

namespace A295515.P11908939879700374705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A004526 (n + 1)).toNat * A002487 (A120880 (n + 1)).toNat

end

end A295515.P11908939879700374705

namespace A295515

/-- `A002487(A004526(n+1))*A002487(A120880(n+1))` -/
def P11908939879700374705.Spec : Prop :=
  ∀ n, P11908939879700374705.a n = A295515 (n + 1)

end A295515

/-!
# A295518: a(n) = e^2 * Sum_{k=0..n-1} Gamma(k + 1, 2).

The programs for A295518, the canonical program `A295518.P8863327945947550057` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295518 has offset 0).

The definition of A295518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295518.P8863327945947550057

`(2*n-4)*a(n-3)+(3-3*n)*a(n-2)+(2+n)*a(n-1)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295518

/-- `(2*n-4)*a(n-3)+(3-3*n)*a(n-2)+(2+n)*a(n-1)` -/
def P8863327945947550057.Spec : Prop :=
  ∀ n, P8863327945947550057.a n = A295518 n

theorem P8863327945947550057.correct : P8863327945947550057.Spec := by
  intro n
  simp only [A295518]

end A295518

/-! ## A295518.P6048228536236970983

`∑[floor(A195254(n)/2)]`
-/

namespace A295518.P6048228536236970983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A195254 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295518.P6048228536236970983

namespace A295518

/-- `∑[floor(A195254(n)/2)]` -/
def P6048228536236970983.Spec : Prop :=
  ∀ n, P6048228536236970983.a n = A295518 n

end A295518

/-! ## A295518.P5665594645545394141

`∑[A011782(n)+(n-1)*a(n-1)]-1` with `a(0)=1`
-/

namespace A295518.P5665594645545394141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A011782 n + ((n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A295518.P5665594645545394141

namespace A295518

/-- `∑[A011782(n)+(n-1)*a(n-1)]-1` -/
def P5665594645545394141.Spec : Prop :=
  ∀ n, P5665594645545394141.a n = A295518 n

end A295518

/-! ## A295518.P15080099737068295110

`∑[A010842(n)]-A010842(n)`
-/

namespace A295518.P15080099737068295110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010842 n

end

end A295518.P15080099737068295110

namespace A295518

/-- `∑[A010842(n)]-A010842(n)` -/
def P15080099737068295110.Spec : Prop :=
  ∀ n, P15080099737068295110.a n = A295518 n

end A295518

/-! ## A295518.P15269110863307724323

`∑[A066534(n)/A028310(n)]`
-/

namespace A295518.P15269110863307724323
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066534 n : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295518.P15269110863307724323

namespace A295518

/-- `∑[A066534(n)/A028310(n)]` -/
def P15269110863307724323.Spec : Prop :=
  ∀ n, P15269110863307724323.a n = (A295518 n : ℚ)

end A295518

/-! ## A295518.P14246333480994022364

`∑[A066534(n)/or(n, A036987(n))]`
-/

namespace A295518.P14246333480994022364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066534 n : ℚ) / (Int.lor (n : ℤ) (A036987 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295518.P14246333480994022364

namespace A295518

/-- `∑[A066534(n)/or(n, A036987(n))]` -/
def P14246333480994022364.Spec : Prop :=
  ∀ n, P14246333480994022364.a n = (A295518 n : ℚ)

end A295518

/-!
# A295519: a(n) = e^3 * Sum_{k=0..n-1} Gamma(k + 1, 3).

The programs for A295519, the canonical program `A295519.P13687198677937790096` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295519 has offset 0).

The definition of A295519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295519.P13687198677937790096

`(3*n-6)*a(n-3)+(4-4*n)*a(n-2)+(3+n)*a(n-1)` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295519

/-- `(3*n-6)*a(n-3)+(4-4*n)*a(n-2)+(3+n)*a(n-1)` -/
def P13687198677937790096.Spec : Prop :=
  ∀ n, P13687198677937790096.a n = A295519 n

theorem P13687198677937790096.correct : P13687198677937790096.Spec := by
  intro n
  simp only [A295519]

end A295519

/-! ## A295519.P4877373194535512973

`∑[A053486(n)]-A053486(n)`
-/

namespace A295519.P4877373194535512973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A053486 n

end

end A295519.P4877373194535512973

namespace A295519

/-- `∑[A053486(n)]-A053486(n)` -/
def P4877373194535512973.Spec : Prop :=
  ∀ n, P4877373194535512973.a n = A295519 n

end A295519

/-! ## A295519.P5683941170380365298

`∑[A348312(n)/A028310(n)]`
-/

namespace A295519.P5683941170380365298
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348312 n : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295519.P5683941170380365298

namespace A295519

/-- `∑[A348312(n)/A028310(n)]` -/
def P5683941170380365298.Spec : Prop :=
  ∀ n, P5683941170380365298.a n = (A295519 n : ℚ)

end A295519

/-! ## A295519.P13504468979591291935

`∑[A348312(n)/A065033(2*n)]`
-/

namespace A295519.P13504468979591291935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348312 n : ℚ) / (A065033 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295519.P13504468979591291935

namespace A295519

/-- `∑[A348312(n)/A065033(2*n)]` -/
def P13504468979591291935.Spec : Prop :=
  ∀ n, P13504468979591291935.a n = (A295519 n : ℚ)

end A295519

/-! ## A295519.P18340796664014303244

`∑[A053486(n)]%(A348312(n)+3^n)`
-/

namespace A295519.P18340796664014303244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A348312 n + (3 ^ n : ℤ))

end

end A295519.P18340796664014303244

namespace A295519

/-- `∑[A053486(n)]%(A348312(n)+3^n)` -/
def P18340796664014303244.Spec : Prop :=
  ∀ n, P18340796664014303244.a n = A295519 n

end A295519

/-!
# A295520: a(n) is the least k >= 0 such that n XOR k is prime (where XOR denotes the bitwise XOR operator).

The programs for A295520, there is no canonical definition to state claims against.
-/

/-! ## A295520.P9526550502875130103

`A295335(n)%A007935(A144303(n))`
-/

namespace A295520.P9526550502875130103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295335 n) (A007935 (A144303 n).toNat)

end

end A295520.P9526550502875130103

/-! ## A295520.P11109530268345009371

`(A295609(n)-n)%A007935(A144303(n))`
-/

namespace A295520.P11109530268345009371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295609 n - (n : ℤ)) (A007935 (A144303 n).toNat)

end

end A295520.P11109530268345009371

/-! ## A295520.P14218665662299925049

`A007920(n)+A000007(A007894(n))`
-/

namespace A295520.P14218665662299925049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n + A000007 (A007894 (n + 10)).toNat

end

end A295520.P14218665662299925049

/-! ## A295520.P17835716761673539207

`A007920(A001605(n+1))+A007920(n)`
-/

namespace A295520.P17835716761673539207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A001605 (n + 1)).toNat + A007920 n

end

end A295520.P17835716761673539207

/-! ## A295520.P15088976886169993131

`A151666(A060735(n+2))+A007920(n)`
-/

namespace A295520.P15088976886169993131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 (A060735 (n + 2)).toNat + A007920 n

end

end A295520.P15088976886169993131

/-!
# A295521: a(n) = (1/n) * Sum_{d|n} mu(n/d)*(4^d - 3^d - 2^d + 1).

The programs for A295521, there is no canonical definition to state claims against.
-/

/-! ## A295521.P8869853871176781372

`A065179(n+1)-A059966(n+1)`
-/

namespace A295521.P8869853871176781372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065179 (n + 1) - A059966 (n + 1)

end

end A295521.P8869853871176781372

/-! ## A295521.P7055858316511812046

`record[A065179(A028310(n))-A001037(n)]`
-/

namespace A295521.P7055858316511812046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065179 (A028310 n).toNat - A001037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295521.P7055858316511812046

/-! ## A295521.P1259613764524685549

`A065179(n+1)-A001037(A028310(n)+1)`
-/

namespace A295521.P1259613764524685549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065179 (n + 1) - A001037 (A028310 n + 1).toNat

end

end A295521.P1259613764524685549

/-! ## A295521.P12585426528359170457

`A065178(n+1)+A065179(n+1)-A185171(n+1)`
-/

namespace A295521.P12585426528359170457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065178 (n + 1) + (A065179 (n + 1) - A185171 (n + 1))

end

end A295521.P12585426528359170457

/-! ## A295521.P5901425307960564579

`A185172(n+1)-(A185171(n+1)+A059966(n+1))`
-/

namespace A295521.P5901425307960564579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185172 (n + 1) - (A185171 (n + 1) + A059966 (n + 1))

end

end A295521.P5901425307960564579

/-! ## A295521.P11827126389641805456

`A027377(n+1)-A027376(n+1)-A059966(n+1)`
-/

namespace A295521.P11827126389641805456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 (n + 1) - A027376 (n + 1) - A059966 (n + 1)

end

end A295521.P11827126389641805456

/-!
# A295524: Number of n X n 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 4 1's.

The programs for A295524, there is no canonical definition to state claims against.
-/

/-! ## A295524.P10264518097044712394

`A295531(∑[4*n]+1)`
-/

namespace A295524.P10264518097044712394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295524.P10264518097044712394

/-! ## A295524.P5448108623180896379

`record[A003982(n)*A295531(n+1)]`
-/

namespace A295524.P5448108623180896379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A295531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295524.P5448108623180896379

/-! ## A295524.P9140712781322505558

`record[gcd(A008482(n), A295531(n+1))]`
-/

namespace A295524.P9140712781322505558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A295531 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295524.P9140712781322505558

/-! ## A295524.P11233840049707829970

`A295531(A001844(n))+A185238(n)`
-/

namespace A295524.P11233840049707829970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A001844 n).toNat + A185238 n

end

end A295524.P11233840049707829970

/-! ## A295524.P10002364589529195686

`gcd(A000038(n), A295531(A001844(n)))`
-/

namespace A295524.P10002364589529195686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A295531 (A001844 n).toNat)

end

end A295524.P10002364589529195686

/-!
# A295525: Number of n X 2 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 4 1s.

The programs for A295525, the canonical program `A295525.P1047727917070849878` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295525 has offset 1).

The definition of A295525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295525.P1047727917070849878

`2*a(n-1)+2*a(n-2)+5*a(n-3)-a(n-5)-a(n-6)` with `a(0)=2, a(1)=10, a(2)=29, a(3)=87, a(4)=280, a(5)=876`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295525

/-- `2*a(n-1)+2*a(n-2)+5*a(n-3)-a(n-5)-a(n-6)` -/
def P1047727917070849878.Spec : Prop :=
  ∀ n, P1047727917070849878.a n = A295525 (n + 1)

theorem P1047727917070849878.correct : P1047727917070849878.Spec := by
  intro n
  simp only [A295525, Nat.add_sub_cancel]

end A295525

/-! ## A295525.P2846403643444130150

`A295040(∑[n+1]+2)`
-/

namespace A295525.P2846403643444130150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A295525.P2846403643444130150

namespace A295525

/-- `A295040(∑[n+1]+2)` -/
def P2846403643444130150.Spec : Prop :=
  ∀ n, P2846403643444130150.a n = A295525 (n + 1)

end A295525

/-! ## A295525.P15584280386857697604

`gcd(A000038(n), A295040(C(n+2, 2)+2))`
-/

namespace A295525.P15584280386857697604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A295040 (Nat.choose (n + 2) 2 + 2))

end

end A295525.P15584280386857697604

namespace A295525

/-- `gcd(A000038(n), A295040(C(n+2, 2)+2))` -/
def P15584280386857697604.Spec : Prop :=
  ∀ n, (P15584280386857697604.a n : ℤ) = A295525 (n + 1)

end A295525

/-! ## A295525.P15745605292011187056

`A295040(C(n+2, 2)+2)%A103897(n+1)`
-/

namespace A295525.P15745605292011187056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295040 (Nat.choose (n + 2) 2 + 2)) (A103897 (n + 1))

end

end A295525.P15745605292011187056

namespace A295525

/-- `A295040(C(n+2, 2)+2)%A103897(n+1)` -/
def P15745605292011187056.Spec : Prop :=
  ∀ n, P15745605292011187056.a n = A295525 (n + 1)

end A295525

/-! ## A295525.P17096700331231010487

`A003602(A130321(n)²)*A295040(C(n+2, 2)+2)`
-/

namespace A295525.P17096700331231010487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A130321 n ^ 2).toNat * A295040 (Nat.choose (n + 2) 2 + 2)

end

end A295525.P17096700331231010487

namespace A295525

/-- `A003602(A130321(n)²)*A295040(C(n+2, 2)+2)` -/
def P17096700331231010487.Spec : Prop :=
  ∀ n, P17096700331231010487.a n = A295525 (n + 1)

end A295525

/-!
# A295526: Number of nX3 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 4 1s.

The programs for A295526, there is no canonical definition to state claims against.
-/

/-! ## A295526.P3024151003389585832

`A295531(∑[n+2]+4)`
-/

namespace A295526.P3024151003389585832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295526.P3024151003389585832

/-! ## A295526.P8374290038920829374

`A015970(n)*A295531(A167614(n+1))`
-/

namespace A295526.P8374290038920829374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 n * A295531 (A167614 (n + 1)).toNat

end

end A295526.P8374290038920829374

/-! ## A295526.P15103097914237785899

`lcm(A033999(n), A295531(A167614(n+1)))`
-/

namespace A295526.P15103097914237785899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A295531 (A167614 (n + 1)).toNat)

end

end A295526.P15103097914237785899

/-! ## A295526.P10727235454723566406

`A295531(A167614(n+1))*A319101(n+1)`
-/

namespace A295526.P10727235454723566406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A167614 (n + 1)).toNat * A319101 (n + 1)

end

end A295526.P10727235454723566406

/-! ## A295526.P16368366183210866867

`A295531(A167614(n+1))%A208696(n+1)`
-/

namespace A295526.P16368366183210866867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295531 (A167614 (n + 1)).toNat) (A208696 (n + 1))

end

end A295526.P16368366183210866867

/-!
# A295527: Number of nX4 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 4 1s.

The programs for A295527, there is no canonical definition to state claims against.
-/

/-! ## A295527.P18431298922577612564

`A295531(A052905(n)+9)`
-/

namespace A295527.P18431298922577612564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A052905 n + 9).toNat

end

end A295527.P18431298922577612564

/-! ## A295527.P16911888232666848820

`A295531(A055999(n)+10)`
-/

namespace A295527.P16911888232666848820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A055999 n + 10).toNat

end

end A295527.P16911888232666848820

/-! ## A295527.P15542400061246411063

`A295531(A167614(n+2)+1)`
-/

namespace A295527.P15542400061246411063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A167614 (n + 2) + 1).toNat

end

end A295527.P15542400061246411063

/-! ## A295527.P10406331230751517994

`A295531(A166136(n+2)-2)`
-/

namespace A295527.P10406331230751517994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A166136 (n + 2) - 2).toNat

end

end A295527.P10406331230751517994

/-! ## A295527.P13184674053158528989

`A295531(Δ[A264443(n)-n²])`
-/

namespace A295527.P13184674053158528989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (f1 (n + 1) - f1 n).toNat

end

end A295527.P13184674053158528989

/-!
# A295528: Number of nX5 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 4 1s.

The programs for A295528, there is no canonical definition to state claims against.
-/

/-! ## A295528.P805894529959366516

`A295531(A167499(n+3))`
-/

namespace A295528.P805894529959366516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A167499 (n + 3)).toNat

end

end A295528.P805894529959366516

/-! ## A295528.P2975287503952895172

`A295531(eq[7, A066657(n)])`
-/

namespace A295528.P2975287503952895172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295528.P2975287503952895172

/-! ## A295528.P7275089994737323232

`A295531(A000217(n+4)+5)`
-/

namespace A295528.P7275089994737323232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A000217 (n + 4) + 5).toNat

end

end A295528.P7275089994737323232

/-! ## A295528.P10714536827279472906

`A295531(Δ[A264443(n)])`
-/

namespace A295528.P10714536827279472906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (f1 (n + 1) - f1 n).toNat

end

end A295528.P10714536827279472906

/-! ## A295528.P13733885623952516232

`A295531(A374005(n+1))`
-/

namespace A295528.P13733885623952516232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A374005 (n + 1)).toNat

end

end A295528.P13733885623952516232

/-!
# A295529: Number of nX6 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 4 1s.

The programs for A295529, there is no canonical definition to state claims against.
-/

/-! ## A295529.P8529016141005287126

`A295531(A167499(n+4)+1)`
-/

namespace A295529.P8529016141005287126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A167499 (n + 4) + 1).toNat

end

end A295529.P8529016141005287126

/-! ## A295529.P20547707574150376

`A295531(eq[7, A131818(n+1)])`
-/

namespace A295529.P20547707574150376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295529.P20547707574150376

/-! ## A295529.P455211966537572278

`A295531(A374007(n+1))`
-/

namespace A295529.P455211966537572278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A374007 (n + 1)).toNat

end

end A295529.P455211966537572278

/-! ## A295529.P3778723051761855706

`A295531(A052905(n+3))`
-/

namespace A295529.P3778723051761855706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A052905 (n + 3)).toNat

end

end A295529.P3778723051761855706

/-! ## A295529.P7223879341925262717

`A295531(eq[5, A193592(n)])`
-/

namespace A295529.P7223879341925262717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295529.P7223879341925262717

/-!
# A295530: Number of nX7 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 4 1s.

The programs for A295530, there is no canonical definition to state claims against.
-/

/-! ## A295530.P15652451372890736011

`A295531(eq[11, A066657(n)])`
-/

namespace A295530.P15652451372890736011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295530.P15652451372890736011

/-! ## A295530.P5707233459882230103

`A295531(A000096(n+5)+8)`
-/

namespace A295530.P5707233459882230103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A000096 (n + 5) + 8).toNat

end

end A295530.P5707233459882230103

/-! ## A295530.P7220254798697285848

`A295531(eq[8, A131818(n+1)])`
-/

namespace A295530.P7220254798697285848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295530.P7220254798697285848

/-! ## A295530.P16671962661348560068

`A295531(A374008(n+1))`
-/

namespace A295530.P16671962661348560068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A374008 (n + 1)).toNat

end

end A295530.P16671962661348560068

/-! ## A295530.P8947214878827733651

`A295531(A055999(n+4))`
-/

namespace A295530.P8947214878827733651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A055999 (n + 4)).toNat

end

end A295530.P8947214878827733651

/-!
# A295531: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 4 1s.

The programs for A295531, there is no canonical definition to state claims against.
-/

/-! ## A295531.P14439513241566697710

`A118759(A295040(n+1))`
-/

namespace A295531.P14439513241566697710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A295040 (n + 1)).toNat

end

end A295531.P14439513241566697710

/-! ## A295531.P11051081973618562310

`A295040(A004896(n+2))`
-/

namespace A295531.P11051081973618562310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A004896 (n + 2)).toNat

end

end A295531.P11051081973618562310

/-! ## A295531.P13280469589343216142

`A295040(A004907(n+2))`
-/

namespace A295531.P13280469589343216142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A004907 (n + 2)).toNat

end

end A295531.P13280469589343216142

/-! ## A295531.P4019059372067253304

`A295040(A004918(n+2))`
-/

namespace A295531.P4019059372067253304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A004918 (n + 2)).toNat

end

end A295531.P4019059372067253304

/-! ## A295531.P8562796379388069255

`A000194(A295040(n+1)²)`
-/

namespace A295531.P8562796379388069255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A295040 (n + 1) ^ 2).toNat

end

end A295531.P8562796379388069255

/-!
# A295533: G.f. A(x) satisfies: A(x) = 1 + x*A(x)^3 - x^2/A(x)^7.

The programs for A295533, there is no canonical definition to state claims against.
-/

/-! ## A295533.P12914525126926229803

`A000069(A270339(round(2^(n-1))))`
-/

namespace A295533.P12914525126926229803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A270339 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat).toNat

end

end A295533.P12914525126926229803

/-! ## A295533.P4044712441660510393

`A034868(n)*A237270(A347585(n))`
-/

namespace A295533.P4044712441660510393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 n * A237270 (A347585 n).toNat

end

end A295533.P4044712441660510393

/-!
# A295534: G.f. A(x) satisfies: A(x) = 1 + x*A(x)^4 - x^2/A(x)^13.

The programs for A295534, there is no canonical definition to state claims against.
-/

/-! ## A295534.P12191668369390664975

`A334054(A319719(lt[0, ∏{digits}[n, (3-#)²]]))`
-/

namespace A295534.P12191668369390664975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (3 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334054 (A319719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)).toNat

end

end A295534.P12191668369390664975

/-! ## A295534.P9333198530153744350

`or(A058104(n), A318987(A116854(n+1)))`
-/

namespace A295534.P9333198530153744350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058104 n) (A318987 (A116854 (n + 1)).toNat)

end

end A295534.P9333198530153744350

/-!
# A295535: G.f. A(x) satisfies: A(x) = 1 + x*A(x)^5 - x^2/A(x)^19.

The programs for A295535, there is no canonical definition to state claims against.
-/

/-! ## A295535.P13524713509374089521

`A111272(a(n-1)+2)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A295535.P13524713509374089521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A111272 (a (n - 1) + 2).toNat

end

end A295535.P13524713509374089521

/-!
# A295536: G.f. A(x) satisfies: A(x) = 1 + x*A(x)^6 - x^2/A(x)^26.

The programs for A295536, there is no canonical definition to state claims against.
-/

/-! ## A295536.P17375944258587929822

`or(a(n-1), A171554(n+1))` with `a(0)=1`
-/

namespace A295536.P17375944258587929822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1)) (A171554 (n + 1))

end

end A295536.P17375944258587929822

/-!
# A295537: G.f. A(x) satisfies A(x)^2 = 1 + x + x*A(x)^7.

The programs for A295537, there is no canonical definition to state claims against.
-/

/-! ## A295537.P14921633656196559237

`A011792(n-floor(sqrt(sqrt(n))))`
-/

namespace A295537.P14921633656196559237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011792 ((n : ℤ) - ⌊Real.sqrt (Real.sqrt (n : ℝ))⌋).toNat

end

end A295537.P14921633656196559237

/-! ## A295537.P6297209611018739139

`∏{e}[floor(2^(n-1)), A011792(#)]`
-/

namespace A295537.P6297209611018739139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A011792 (Nat.factorization (f1 n).natAbs p)

end

end A295537.P6297209611018739139

/-! ## A295537.P15624103455841513193

`A332579(n)+A011792(A220506(n+1))`
-/

namespace A295537.P15624103455841513193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332579 n + A011792 (A220506 (n + 1)).toNat

end

end A295537.P15624103455841513193

/-! ## A295537.P17361141286649929672

`A011792(A220506(n+1))*A058060(n+3)`
-/

namespace A295537.P17361141286649929672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011792 (A220506 (n + 1)).toNat * A058060 (n + 3)

end

end A295537.P17361141286649929672

/-!
# A295538: G.f. A(x) satisfies A(x)^2 = 1 + x + x*A(x)^9.

The programs for A295538, there is no canonical definition to state claims against.
-/

/-! ## A295538.P3165056851543906078

`A072236(n)-A003434(A072236(n))`
-/

namespace A295538.P3165056851543906078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072236 n - A003434 (A072236 n).toNat

end

end A295538.P3165056851543906078

/-! ## A295538.P4331828420093486148

`A028310(A072236(n)-A169985(n))`
-/

namespace A295538.P4331828420093486148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A072236 n - A169985 n).toNat

end

end A295538.P4331828420093486148

/-!
# A295539: G.f. A(x) satisfies: A(x - x^2 - x^2*A(x)) = x.

The programs for A295539, there is no canonical definition to state claims against.
-/

/-! ## A295539.P6237083235510204806

`A008615(A174347(n)+A151282(n))`
-/

namespace A295539.P6237083235510204806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A174347 n + A151282 n).toNat

end

end A295539.P6237083235510204806

/-! ## A295539.P4970676672165664972

`A263270(A064318(n)*A226316(n))`
-/

namespace A295539.P4970676672165664972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A064318 n * A226316 n).toNat

end

end A295539.P4970676672165664972

/-! ## A295539.P10980904094949447676

`A301409(n)+A044941(A301417(n+1))`
-/

namespace A295539.P10980904094949447676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301409 n + A044941 (A301417 (n + 1)).toNat

end

end A295539.P10980904094949447676

/-!
# A295540: Number of ways of writing n as the sum of a lower Wythoff number (A000201) and an upper Wythoff number (A001950), when zero is included in both sequences.

The programs for A295540, there is no canonical definition to state claims against.
-/

/-! ## A295540.P3972124263918418563

`A259598(floor(acot(n)+n))+1`
-/

namespace A295540.P3972124263918418563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259598 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1

end

end A295540.P3972124263918418563

/-! ## A295540.P2278788387457078114

`A259598(round(acot(n)+n))+1`
-/

namespace A295540.P2278788387457078114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259598 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1

end

end A295540.P2278788387457078114

/-! ## A295540.P4986274037777337798

`A259598(n^floor(atan(n)))+1`
-/

namespace A295540.P4986274037777337798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259598 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat + 1

end

end A295540.P4986274037777337798

/-! ## A295540.P8692871430211872928

`A259598(abs(1-n)+1)+1`
-/

namespace A295540.P8692871430211872928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259598 (|1 - (n : ℤ)| + 1).toNat + 1

end

end A295540.P8692871430211872928

/-! ## A295540.P4033492379416135218

`(A259598(n)+1)%(37*a(n-1))` with `a(0)=1`
-/

namespace A295540.P4033492379416135218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A259598 n + 1) (37 * a (n - 1))

end

end A295540.P4033492379416135218

/-! ## A295540.P4677829816728925855

`(A259598(A028310(n))+1)%37`
-/

namespace A295540.P4677829816728925855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259598 (A028310 n).toNat + 1) 37

end

end A295540.P4677829816728925855

/-! ## A295540.P8940961968478945405

`A008683(4*(n+1))+A259598(A028310(n))+1`
-/

namespace A295540.P8940961968478945405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + (A259598 (A028310 n).toNat + 1)

end

end A295540.P8940961968478945405

/-! ## A295540.P757450665511090570

`(A259598(A028310(n))+1)*A014963(10*(n+1))`
-/

namespace A295540.P757450665511090570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A259598 (A028310 n).toNat + 1) * A014963 (10 * (n + 1))

end

end A295540.P757450665511090570

/-! ## A295540.P3603720401160596180

`(A259598(A028310(n))+1)*A000041(C(2, n+2))`
-/

namespace A295540.P3603720401160596180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A259598 (A028310 n).toNat + 1) * A000041 (Nat.choose 2 (n + 2))

end

end A295540.P3603720401160596180

/-! ## A295540.P2083446761037520094

`(A259598(A028310(n))+1)*A007318(C(2, n+2))`
-/

namespace A295540.P2083446761037520094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A259598 (A028310 n).toNat + 1) * A007318 (Nat.choose 2 (n + 2))

end

end A295540.P2083446761037520094

/-!
# A295541: G.f. A(x) satisfies: x = 1 + 2*A(x) - 6*A(x)^2 + 3*A(x)^3.

The programs for A295541, there is no canonical definition to state claims against.
-/

/-! ## A295541.P5712016028441106229

`(-1)^n*A205558(A193478(n+1))`
-/

namespace A295541.P5712016028441106229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A205558 (A193478 (n + 1)).toNat

end

end A295541.P5712016028441106229

/-!
# A295545: Number of n X n 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 3 or 4 1's.

The programs for A295545, there is no canonical definition to state claims against.
-/

/-! ## A295545.P1702709388404498267

`A295551(∑[4*n]+1)`
-/

namespace A295545.P1702709388404498267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295545.P1702709388404498267

/-! ## A295545.P12119600575563974588

`record[gcd(A114327(n), A295551(n+1))]`
-/

namespace A295545.P12119600575563974588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A295551 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295545.P12119600575563974588

/-! ## A295545.P10257415855239067427

`A295551(A001844(n))+A262889(n)`
-/

namespace A295545.P10257415855239067427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A001844 n).toNat + A262889 n

end

end A295545.P10257415855239067427

/-! ## A295545.P13652494319030256375

`A295551(A001844(n))*A295555(n)`
-/

namespace A295545.P13652494319030256375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A001844 n).toNat * A295555 n

end

end A295545.P13652494319030256375

/-! ## A295545.P8940855549876303396

`lcm(A033999(n), A295551(A001844(n)))`
-/

namespace A295545.P8940855549876303396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A295551 (A001844 n).toNat)

end

end A295545.P8940855549876303396

/-!
# A295546: Number of n X 3 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 3 or 4 1's.

The programs for A295546, there is no canonical definition to state claims against.
-/

/-! ## A295546.P6644422230683513262

`A295551(∑[n+2]+4)`
-/

namespace A295546.P6644422230683513262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295546.P6644422230683513262

/-! ## A295546.P16001831009575524677

`or(floor(acot(n)), A295551(A167614(n+1)))`
-/

namespace A295546.P16001831009575524677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A295551 (A167614 (n + 1)).toNat)

end

end A295546.P16001831009575524677

/-! ## A295546.P14856497824981264428

`A295551(A167614(n+1))+A185037(n)`
-/

namespace A295546.P14856497824981264428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A167614 (n + 1)).toNat + A185037 n

end

end A295546.P14856497824981264428

/-! ## A295546.P14633354226445322419

`A015900(n)*A295551(A167614(n+1))`
-/

namespace A295546.P14633354226445322419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015900 n * A295551 (A167614 (n + 1)).toNat

end

end A295546.P14633354226445322419

/-! ## A295546.P14510093894291019378

`lcm(A033999(n), A295551(A167614(n+1)))`
-/

namespace A295546.P14510093894291019378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A295551 (A167614 (n + 1)).toNat)

end

end A295546.P14510093894291019378

/-!
# A295547: Number of nX4 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 3 or 4 1s.

The programs for A295547, there is no canonical definition to state claims against.
-/

/-! ## A295547.P5834648795428599057

`A295551(A145018(n+4))`
-/

namespace A295547.P5834648795428599057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A145018 (n + 4)).toNat

end

end A295547.P5834648795428599057

/-! ## A295547.P11082743185472789890

`A295551(A141214(n)+7)`
-/

namespace A295547.P11082743185472789890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A141214 n + 7).toNat

end

end A295547.P11082743185472789890

/-! ## A295547.P798664268370301476

`A295551(A052905(n)+9)`
-/

namespace A295547.P798664268370301476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A052905 n + 9).toNat

end

end A295547.P798664268370301476

/-! ## A295547.P13466256435765872464

`A295551(A055999(n)+10)`
-/

namespace A295547.P13466256435765872464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A055999 n + 10).toNat

end

end A295547.P13466256435765872464

/-! ## A295547.P2900999363769070137

`A295551(A167614(n+2)+1)`
-/

namespace A295547.P2900999363769070137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A167614 (n + 2) + 1).toNat

end

end A295547.P2900999363769070137

/-!
# A295548: Number of nX5 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 3 or 4 1s.

The programs for A295548, there is no canonical definition to state claims against.
-/

/-! ## A295548.P17906922892646385193

`A295551(A167499(n+3))`
-/

namespace A295548.P17906922892646385193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A167499 (n + 3)).toNat

end

end A295548.P17906922892646385193

/-! ## A295548.P2807601893874077805

`A295551(A056000(n)+15)`
-/

namespace A295548.P2807601893874077805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A056000 n + 15).toNat

end

end A295548.P2807601893874077805

/-! ## A295548.P6751444016573017891

`A295551(eq[7, A066657(n)])`
-/

namespace A295548.P6751444016573017891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295548.P6751444016573017891

/-! ## A295548.P7998881060493953920

`A295551(A052905(n+1)+10)`
-/

namespace A295548.P7998881060493953920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A052905 (n + 1) + 10).toNat

end

end A295548.P7998881060493953920

/-! ## A295548.P7750060972792865741

`A295551(eq[6, A131818(n+1)])`
-/

namespace A295548.P7750060972792865741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295548.P7750060972792865741

/-!
# A295549: Number of n X 6 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 3 or 4 1's.

The programs for A295549, there is no canonical definition to state claims against.
-/

/-! ## A295549.P6846870407019509987

`A295551(A166136(n+4))`
-/

namespace A295549.P6846870407019509987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A166136 (n + 4)).toNat

end

end A295549.P6846870407019509987

/-! ## A295549.P15787673223513020192

`A295551(A167614(n+4)+3)`
-/

namespace A295549.P15787673223513020192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A167614 (n + 4) + 3).toNat

end

end A295549.P15787673223513020192

/-! ## A295549.P14858708984168523369

`A295551(A141214(n+2)+9)`
-/

namespace A295549.P14858708984168523369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A141214 (n + 2) + 9).toNat

end

end A295549.P14858708984168523369

/-! ## A295549.P10731286181813407588

`A295551(eq[7, A131818(n+1)])`
-/

namespace A295549.P10731286181813407588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295549.P10731286181813407588

/-! ## A295549.P8411919719998226521

`A295551(A172336(n+4)+A000124(n))`
-/

namespace A295549.P8411919719998226521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A172336 (n + 4) + A000124 n).toNat

end

end A295549.P8411919719998226521

/-!
# A295550: Number of nX7 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 3 or 4 1s.

The programs for A295550, there is no canonical definition to state claims against.
-/

/-! ## A295550.P18038000360773411113

`A295551(eq[8, A131818(n+1)])`
-/

namespace A295550.P18038000360773411113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295550.P18038000360773411113

/-! ## A295550.P10026438118218511319

`A295551(A374008(n+1))`
-/

namespace A295550.P10026438118218511319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A374008 (n + 1)).toNat

end

end A295550.P10026438118218511319

/-! ## A295550.P15241227736612690473

`A295551(A055999(n+4))`
-/

namespace A295550.P15241227736612690473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A055999 (n + 4)).toNat

end

end A295550.P15241227736612690473

/-! ## A295550.P18195606579859397658

`A295551(eq[4, A219347(n)])`
-/

namespace A295550.P18195606579859397658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295550.P18195606579859397658

/-! ## A295550.P12728708569440140084

`A295551(eq[6, A193592(n)])`
-/

namespace A295550.P12728708569440140084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295550.P12728708569440140084

/-!
# A295551: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 3 or 4 1s.

The programs for A295551, there is no canonical definition to state claims against.
-/

/-! ## A295551.P16970083750771660806

`A295097(n+1)+A184159(A099594(n))`
-/

namespace A295551.P16970083750771660806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (n + 1) + A184159 (A099594 n).toNat

end

end A295551.P16970083750771660806

/-! ## A295551.P5218601748596895998

`A295097(n+1)+A173920(A173917(n))`
-/

namespace A295551.P5218601748596895998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (n + 1) + A173920 (A173917 n).toNat

end

end A295551.P5218601748596895998

/-! ## A295551.P222316539640923592

`A295097(n+1)+A280737(A301784(n+1))`
-/

namespace A295551.P222316539640923592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (n + 1) + A280737 (A301784 (n + 1)).toNat

end

end A295551.P222316539640923592

/-! ## A295551.P14971939905470297989

`A316717(A316576(n+1))+A295097(n+1)`
-/

namespace A295551.P14971939905470297989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316717 (A316576 (n + 1)).toNat + A295097 (n + 1)

end

end A295551.P14971939905470297989

/-! ## A295551.P14765130697818407888

`A295097(n+1)-A016389(A176561(n))`
-/

namespace A295551.P14765130697818407888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (n + 1) - A016389 (A176561 n).toNat

end

end A295551.P14765130697818407888

/-!
# A295552: a(n) = n! * [x^n] exp(x*exp(n*x)).

The programs for A295552, there is no canonical definition to state claims against.
-/

/-! ## A295552.P9862842114542764666

`A276341(n!²)`
-/

namespace A295552.P9862842114542764666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276341 (Nat.factorial n ^ 2)

end

end A295552.P9862842114542764666

/-!
# A295553: Expansion of 1/(1 - Sum_{k>=1} (2*k-1)!!*x^k).

The programs for A295553, there is no canonical definition to state claims against.
-/

/-! ## A295553.P3832610410791381893

`ceil(A321628(n)/2)`
-/

namespace A295553.P3832610410791381893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321628 n : ℚ) / 2⌉

end

end A295553.P3832610410791381893

/-! ## A295553.P11383355873492770555

`A321628(A028310(n))/2`
-/

namespace A295553.P11383355873492770555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321628 (A028310 n).toNat : ℚ) / 2

end

end A295553.P11383355873492770555

/-! ## A295553.P15033589724492866388

`A321628(n)/A020639(A004277(n))`
-/

namespace A295553.P15033589724492866388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321628 n : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A295553.P15033589724492866388

/-! ## A295553.P16542556580128747839

`A321628(n)/A020639(A063008(n))`
-/

namespace A295553.P16542556580128747839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321628 n : ℚ) / (A020639 (A063008 n).toNat : ℚ)

end

end A295553.P16542556580128747839

/-! ## A295553.P4144756589653633089

`A321628(n)/A020639(A321623(n))`
-/

namespace A295553.P4144756589653633089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321628 n : ℚ) / (A020639 (A321623 n).toNat : ℚ)

end

end A295553.P4144756589653633089

/-!
# A295554: a(n) is the number of distinct integer-sided triangles inscribed in a circle of radius A009003(n) whose inradius are integers.

The programs for A295554, there is no canonical definition to state claims against.
-/

/-! ## A295554.P13501819762070039880

`A311676(A350040(n+1))-3`
-/

namespace A295554.P13501819762070039880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311676 (A350040 (n + 1)).toNat - 3

end

end A295554.P13501819762070039880

/-! ## A295554.P1722072356797208301

`∑{d}[∑{d}[A350040(n+1), #], A000201(#)]`
-/

namespace A295554.P1722072356797208301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350040 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000201 d

end

end A295554.P1722072356797208301

/-! ## A295554.P5086244978722121728

`∑{d}[∑{d}[A350040(n+1), #], A066096(#)]`
-/

namespace A295554.P5086244978722121728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350040 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066096 d

end

end A295554.P5086244978722121728

/-! ## A295554.P15173083538313734484

`∑{d}[A000204(A350040(n+1)), A000201(#)]`
-/

namespace A295554.P15173083538313734484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A350040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000201 d

end

end A295554.P15173083538313734484

/-! ## A295554.P13867995166089017930

`∑{d}[A000204(A350040(n+1)), A066096(#)]`
-/

namespace A295554.P13867995166089017930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A350040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066096 d

end

end A295554.P13867995166089017930

/-! ## A295554.P13150636827408719378

`A010137(A000328(n)*A350040(n+1))`
-/

namespace A295554.P13150636827408719378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 (A000328 n * A350040 (n + 1)).toNat

end

end A295554.P13150636827408719378

/-! ## A295554.P13558301593445879757

`A010137(A350040(n+1)%A162597(n+1))`
-/

namespace A295554.P13558301593445879757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 (Int.tmod (A350040 (n + 1)) (A162597 (n + 1))).toNat

end

end A295554.P13558301593445879757

/-!
# A295555: Generalized Pascal triangle read by rows: add the four terms that are right above you, three rows back.

The programs for A295555, there is no canonical definition to state claims against.
-/

/-! ## A295555.P13789427237054536696

`A332025(A135966(n))`
-/

namespace A295555.P13789427237054536696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332025 (A135966 n).toNat

end

end A295555.P13789427237054536696

/-! ## A295555.P9885260220966715914

`A076869(A076831(n)+1)`
-/

namespace A295555.P9885260220966715914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076869 (A076831 n + 1).toNat

end

end A295555.P9885260220966715914

/-! ## A295555.P2831026530763410505

`A043536(A189150(n+1))`
-/

namespace A295555.P2831026530763410505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (A189150 (n + 1)).toNat

end

end A295555.P2831026530763410505

/-! ## A295555.P829343575493559044

`A086833(A196922(n+1))`
-/

namespace A295555.P829343575493559044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086833 (A196922 (n + 1)).toNat

end

end A295555.P829343575493559044

/-! ## A295555.P11473049002848403525

`A256660(A215292(n+1))`
-/

namespace A295555.P11473049002848403525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256660 (A215292 (n + 1)).toNat

end

end A295555.P11473049002848403525

/-!
# A295556: a(n) = 0 for n <= 1; thereafter a(n) = a(floor(n/2)) + a(ceiling(n/2)) + floor(n/2) if n not congruent to 0 mod 4, a(n) = a(n/2-1) + a(n/2+1) + n/2 if n == 0 (mod 4).

The programs for A295556, there is no canonical definition to state claims against.
-/

/-! ## A295556.P13588119595300757891

`ceil((A130252(n)-n)/2)`
-/

namespace A295556.P13588119595300757891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130252 n - (n : ℤ) : ℚ) / 2⌉

end

end A295556.P13588119595300757891

/-! ## A295556.P12808714447166877609

`ceil((∑[A130250(n)]-n)/2)`
-/

namespace A295556.P12808714447166877609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 2⌉

end

end A295556.P12808714447166877609

/-! ## A295556.P3514766999690208405

`∑[floor((A070939(3*n)-and(1, n))/2)]`
-/

namespace A295556.P3514766999690208405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070939 (3 * n) - (Nat.land 1 n : ℤ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295556.P3514766999690208405

/-! ## A295556.P6420528598714766897

`∑[A102572(A298028(n))]`
-/

namespace A295556.P6420528598714766897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (A298028 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295556.P6420528598714766897

/-! ## A295556.P11046270356472000540

`A110654(A130252(n)-n)`
-/

namespace A295556.P11046270356472000540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A130252 n - (n : ℤ)).toNat

end

end A295556.P11046270356472000540

/-! ## A295556.P8520620505933511139

`∑[A110591(A165988(n))-1]`
-/

namespace A295556.P8520620505933511139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A165988 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295556.P8520620505933511139

/-! ## A295556.P10969692706575164744

`A110654(∑[A130250(n)]-n)`
-/

namespace A295556.P10969692706575164744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A295556.P10969692706575164744

/-! ## A295556.P18370274329925525419

`floor(∑[A130250(A110654(n))/2])`
-/

namespace A295556.P18370274329925525419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130250 (A110654 n).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A295556.P18370274329925525419

/-! ## A295556.P8185118526779467136

`ceil((A130251(n)-A130249(n))/2)`
-/

namespace A295556.P8185118526779467136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130251 n - A130249 n : ℚ) / 2⌉

end

end A295556.P8185118526779467136

/-! ## A295556.P9062123695092930364

`floor(∑[A000523(A033627(n+1))/2])`
-/

namespace A295556.P9062123695092930364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000523 (A033627 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A295556.P9062123695092930364

/-!
# A295557: Let d_1, d_2, d_3, ..., d_tau(n) be the divisors of n; a(n) = number of permutations p of d_1, d_2, d_3, ..., d_tau(n) such that p_(i+1)/p_i is a prime or 1/prime for i = 1,2,...,tau(n)-1.

The programs for A295557, there is no canonical definition to state claims against.
-/

/-! ## A295557.P10399469798019137309

`A036453(n+1)*A173675(n+1)`
-/

namespace A295557.P10399469798019137309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A173675 (n + 1)

end

end A295557.P10399469798019137309

/-! ## A295557.P14754166852804714704

`A127750(2*n)*A173675(n+1)`
-/

namespace A295557.P14754166852804714704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127750 (2 * n) * A173675 (n + 1)

end

end A295557.P14754166852804714704

/-! ## A295557.P1713831929823241587

`A173675(n+1)*(2-A278500(2*n+1))`
-/

namespace A295557.P1713831929823241587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (n + 1) * (2 - A278500 (2 * n + 1))

end

end A295557.P1713831929823241587

/-! ## A295557.P1848256524784731814

`(2-A278169(A000040(n+1)+1))*A173675(n+1)`
-/

namespace A295557.P1848256524784731814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A278169 (A000040 (n + 1) + 1).toNat) * A173675 (n + 1)

end

end A295557.P1848256524784731814

/-! ## A295557.P5446607292539257037

`A173675(n+1)*A278500(gcd(n, A345099(n+2))+1)`
-/

namespace A295557.P5446607292539257037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (n + 1) * A278500 (Int.gcd (n : ℤ) (A345099 (n + 2)) + 1)

end

end A295557.P5446607292539257037

/-! ## A295557.P15709894115027474941

`A173675(n+1)+A173675(n+1)%A002064(n)`
-/

namespace A295557.P15709894115027474941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (n + 1) + Int.tmod (A173675 (n + 1)) (A002064 n)

end

end A295557.P15709894115027474941

/-! ## A295557.P11436938161547693838

`A010673(A067060(A173675(a(n-1)+1)+1))*A173675(n+1)` with `a(0)=1`
-/

namespace A295557.P11436938161547693838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010673 (A067060 (A173675 (a (n - 1) + 1).toNat + 1).toNat).toNat * A173675 (n + 1)

end

end A295557.P11436938161547693838

/-! ## A295557.P16417813408346810477

`(2-A278169(n²+1))*A173675(n+1)`
-/

namespace A295557.P16417813408346810477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A278169 (n ^ 2 + 1)) * A173675 (n + 1)

end

end A295557.P16417813408346810477

/-!
# A295559: Same as A161645 except that triangles must always grow outwards.

The programs for A295559, there is no canonical definition to state claims against.
-/

/-! ## A295559.P8852910434373488361

`Δ[A295560(A004273(n)-n)]`
-/

namespace A295559.P8852910434373488361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295559.P8852910434373488361

/-! ## A295559.P228215522936460534

`A295560(n)-A295560(A057428(n)+n)`
-/

namespace A295559.P228215522936460534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 n - A295560 (A057428 n + (n : ℤ)).toNat

end

end A295559.P228215522936460534

/-! ## A295559.P6111325012958517423

`A295560(n)-A295560(A004273(n)-n)`
-/

namespace A295559.P6111325012958517423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 n - A295560 (A004273 n - (n : ℤ)).toNat

end

end A295559.P6111325012958517423

/-! ## A295559.P17650358992072313585

`A295560(n)-A295560(n-A057427(n))`
-/

namespace A295559.P17650358992072313585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 n - A295560 ((n : ℤ) - A057427 n).toNat

end

end A295559.P17650358992072313585

/-! ## A295559.P1252395338281604

`Δ[A295560(A057428(n)+n)]`
-/

namespace A295559.P1252395338281604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295559.P1252395338281604

/-! ## A295559.P6524454385898496153

`Δ[A295560(n-A057427(n))]`
-/

namespace A295559.P6524454385898496153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295559.P6524454385898496153

/-! ## A295559.P17080668947222461780

`Δ[A295560(n-A057428(n)²)]`
-/

namespace A295559.P17080668947222461780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 ((n : ℤ) - A057428 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295559.P17080668947222461780

/-! ## A295559.P15986626836917546381

`Δ[A295560(n-A084360(2*(n+1)))]`
-/

namespace A295559.P15986626836917546381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 ((n : ℤ) - A084360 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295559.P15986626836917546381

/-! ## A295559.P2996397998908945213

`Δ[A295560(A004526(A004273(n)))]`
-/

namespace A295559.P2996397998908945213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295559.P2996397998908945213

/-! ## A295559.P4469559216802559745

`Δ[A295560(A004526(A004275(n)))]`
-/

namespace A295559.P4469559216802559745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295559.P4469559216802559745

/-! ## A295559.P6059131140340328453

`Δ[A295560(A084360(A000040(n+1)))]`
-/

namespace A295559.P6059131140340328453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 (A084360 (A000040 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295559.P6059131140340328453

/-! ## A295559.P11168747381892231214

`Δ[A295560(A033270(A008578(n+1)))]`
-/

namespace A295559.P11168747381892231214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 (A033270 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295559.P11168747381892231214

/-! ## A295559.P16063053094942420783

`A295560(n)-A295560(A259361(n²))`
-/

namespace A295559.P16063053094942420783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 n - A295560 (A259361 (n ^ 2)).toNat

end

end A295559.P16063053094942420783

/-! ## A295559.P8786039899124796427

`Δ[A295560(A259361(n²))]`
-/

namespace A295559.P8786039899124796427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295559.P8786039899124796427

/-!
# A295560: Same as A161644 except that triangles must always grow outwards.

The programs for A295560, there is no canonical definition to state claims against.
-/

/-! ## A295560.P4623748994939400805

`∑[A295559(n)]`
-/

namespace A295560.P4623748994939400805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295560.P4623748994939400805

/-! ## A295560.P7405629608713908546

`A295559(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A295560.P7405629608713908546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A295559 n + a (A023443 n).toNat

end

end A295560.P7405629608713908546

/-! ## A295560.P18407187049337792385

`a(n-1)+A295559(A000007(n)+n)` with `a(0)=0`
-/

namespace A295560.P18407187049337792385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A295559 (A000007 n + (n : ℤ)).toNat

end

end A295560.P18407187049337792385

/-! ## A295560.P6123403549457694668

`a(n-1)+A295559(n)%A000124(n)` with `a(0)=0`
-/

namespace A295560.P6123403549457694668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A295559 n) (A000124 n)

end

end A295560.P6123403549457694668

/-! ## A295560.P11773912728659242831

`a(n-1)+A000120(A061142(n+2))*A295559(n)` with `a(0)=0`
-/

namespace A295560.P11773912728659242831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000120 (A061142 (n + 2)).toNat * A295559 n

end

end A295560.P11773912728659242831

/-! ## A295560.P17473436370426409834

`∑[A296515(A114212(n))]`
-/

namespace A295560.P17473436370426409834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296515 (A114212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295560.P17473436370426409834

/-! ## A295560.P10883596900446825722

`A032766(A151567(n))`
-/

namespace A295560.P10883596900446825722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A151567 n).toNat

end

end A295560.P10883596900446825722

/-! ## A295560.P8130371347311125496

`A057353(2*A151567(n))`
-/

namespace A295560.P8130371347311125496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * A151567 n).toNat

end

end A295560.P8130371347311125496

/-! ## A295560.P10324980919123406698

`A057353(lcm(2, A151567(n)))`
-/

namespace A295560.P10324980919123406698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (Int.lcm 2 (A151567 n))

end

end A295560.P10324980919123406698

/-!
# A295561: Prefixal-derivation of A092782.

The programs for A295561, the canonical program `A295561.P10524131366108131501` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295561 has offset 1).

The definition of A295561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295561.P10524131366108131501

`4-Δ[A288464(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A295561

/-- `4-Δ[A288464(n+1)]` -/
def P10524131366108131501.Spec : Prop :=
  ∀ n, P10524131366108131501.a n = A295561 (n + 1)

theorem P10524131366108131501.correct : P10524131366108131501.Spec := by
  intro n
  simp only [A295561, Nat.add_sub_cancel]

end A295561

/-! ## A295561.P8543567284788039444

`A133334(Δ[A288464(n+1)]+3)`
-/

namespace A295561.P8543567284788039444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133334 (f1 (n + 1) - f1 n + 3).toNat

end

end A295561.P8543567284788039444

namespace A295561

/-- `A133334(Δ[A288464(n+1)]+3)` -/
def P8543567284788039444.Spec : Prop :=
  ∀ n, P8543567284788039444.a n = A295561 (n + 1)

end A295561

/-! ## A295561.P14909845906518659904

`6/A288754(Δ[A288464(n+1)])`
-/

namespace A295561.P14909845906518659904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288464 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (A288754 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A295561.P14909845906518659904

namespace A295561

/-- `6/A288754(Δ[A288464(n+1)])` -/
def P14909845906518659904.Spec : Prop :=
  ∀ n, P14909845906518659904.a n = (A295561 (n + 1) : ℚ)

end A295561

/-! ## A295561.P17172128822963617350

`A007318(xor(6, Δ[A288464(n+1)]))`
-/

namespace A295561.P17172128822963617350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.xor 6 (f1 (n + 1) - f1 n)).toNat

end

end A295561.P17172128822963617350

namespace A295561

/-- `A007318(xor(6, Δ[A288464(n+1)]))` -/
def P17172128822963617350.Spec : Prop :=
  ∀ n, P17172128822963617350.a n = A295561 (n + 1)

end A295561

/-! ## A295561.P16916426459229149256

`A006530(round(3/Δ[A288464(n+1)]))`
-/

namespace A295561.P16916426459229149256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (3 / (f1 (n + 1) - f1 n : ℚ))).toNat

end

end A295561.P16916426459229149256

namespace A295561

/-- `A006530(round(3/Δ[A288464(n+1)]))` -/
def P16916426459229149256.Spec : Prop :=
  ∀ n, P16916426459229149256.a n = A295561 (n + 1)

end A295561

/-! ## A295561.P13701443887020497635

`(A288464(n+1)+4)%A288464(n+2)`
-/

namespace A295561.P13701443887020497635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288464 (n + 1) + 4) (A288464 (n + 2))

end

end A295561.P13701443887020497635

namespace A295561

/-- `(A288464(n+1)+4)%A288464(n+2)` -/
def P13701443887020497635.Spec : Prop :=
  ∀ n, P13701443887020497635.a n = A295561 (n + 1)

end A295561

/-! ## A295561.P14539815139273687831

`and(3, A288463(Δ[A288464(n+1)]²²+1))`
-/

namespace A295561.P14539815139273687831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A288463 (((f1 (n + 1) - f1 n) ^ 2) ^ 2 + 1).toNat)

end

end A295561.P14539815139273687831

namespace A295561

/-- `and(3, A288463(Δ[A288464(n+1)]²²+1))` -/
def P14539815139273687831.Spec : Prop :=
  ∀ n, P14539815139273687831.a n = A295561 (n + 1)

end A295561

/-! ## A295561.P946385095837759844

`A007376(A288464(n+1)+4-A288464(n+2))`
-/

namespace A295561.P946385095837759844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A288464 (n + 1) + (4 - A288464 (n + 2))).toNat

end

end A295561.P946385095837759844

namespace A295561

/-- `A007376(A288464(n+1)+4-A288464(n+2))` -/
def P946385095837759844.Spec : Prop :=
  ∀ n, P946385095837759844.a n = A295561 (n + 1)

end A295561

/-! ## A295561.P4179055835204302134

`A092782(eq[A092782(n+4), A319431(n+5)])`
-/

namespace A295561.P4179055835204302134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319431 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A295561.P4179055835204302134

namespace A295561

/-- `A092782(eq[A092782(n+4), A319431(n+5)])` -/
def P4179055835204302134.Spec : Prop :=
  ∀ n, P4179055835204302134.a n = A295561 (n + 1)

end A295561

/-!
# A295563: First row of array in A274528.

The programs for A295563, there is no canonical definition to state claims against.
-/

/-! ## A295563.P11016356776566590837

`A274315(n+1)-1`
-/

namespace A295563.P11016356776566590837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274315 (n + 1) - 1

end

end A295563.P11016356776566590837

/-! ## A295563.P3074795125803877145

`A023443(A274315(n+1))`
-/

namespace A295563.P3074795125803877145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274315 (n + 1)).toNat

end

end A295563.P3074795125803877145

/-! ## A295563.P14303634325735141327

`A023444(A274315(n+1)+1)`
-/

namespace A295563.P14303634325735141327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A274315 (n + 1) + 1).toNat

end

end A295563.P14303634325735141327

/-! ## A295563.P17574638948422416541

`A065423(2*A274315(n+1))`
-/

namespace A295563.P17574638948422416541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A274315 (n + 1)).toNat

end

end A295563.P17574638948422416541

/-! ## A295563.P18320892130947171654

`A330492(2*A274315(n+1))`
-/

namespace A295563.P18320892130947171654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330492 (2 * A274315 (n + 1)).toNat

end

end A295563.P18320892130947171654

/-! ## A295563.P234488757031931966

`abs(A274315(n+1)+A001489(n+1)+n)`
-/

namespace A295563.P234488757031931966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274315 (n + 1) + (A001489 (n + 1) + (n : ℤ))|

end

end A295563.P234488757031931966

/-! ## A295563.P11361031965273168462

`abs(A274315(n+1)+A008683(A249803(n+1)))`
-/

namespace A295563.P11361031965273168462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274315 (n + 1) + A008683 (A249803 (n + 1)).toNat|

end

end A295563.P11361031965273168462

/-! ## A295563.P8472961586627063462

`A274528(∑[n]+n)`
-/

namespace A295563.P8472961586627063462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A295563.P8472961586627063462

/-! ## A295563.P14591572067781698484

`A274528(A000096(n))%(2*(n+1))`
-/

namespace A295563.P14591572067781698484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274528 (A000096 n).toNat) (2 * (n + 1) : ℤ)

end

end A295563.P14591572067781698484

/-! ## A295563.P1014962267816703434

`A296339(C(A274315(n+1), 2))`
-/

namespace A295563.P1014962267816703434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (Nat.choose (A274315 (n + 1)).toNat 2)

end

end A295563.P1014962267816703434

/-! ## A295563.P13938953276540096677

`A269526(∑[n+1])-1`
-/

namespace A295563.P13938953276540096677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A295563.P13938953276540096677

/-! ## A295563.P1671448558493022874

`A004481(C(A274315(n+1), 2))`
-/

namespace A295563.P1671448558493022874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (Nat.choose (A274315 (n + 1)).toNat 2)

end

end A295563.P1671448558493022874

/-!
# A295564: Numbers k such that A295563(k) <= k.

The programs for A295564, there is no canonical definition to state claims against.
-/

/-! ## A295564.P12531750946894860337

`comp[A295566(n+1)]`
-/

namespace A295564.P12531750946894860337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A295564.P12531750946894860337

/-! ## A295564.P17032238748813731871

`lt[A295563(n), n+1]`
-/

namespace A295564.P17032238748813731871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295564.P17032238748813731871

/-! ## A295564.P16891504017944415737

`lt[A023443(A295563(n)), n]`
-/

namespace A295564.P16891504017944415737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A295563 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295564.P16891504017944415737

/-! ## A295564.P6906784331297149827

`eq[char[A295566(n+1)], A142150(2*n+1)]`
-/

namespace A295564.P6906784331297149827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295566 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A295564.P6906784331297149827

/-! ## A295564.P15811044382542370479

`lt[A274315(n+1), n+2]`
-/

namespace A295564.P15811044382542370479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274315 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295564.P15811044382542370479

/-! ## A295564.P13236696921517456116

`comp[record[(n+1)%A295563(n+1)]]%A072828(2*n+1)`
-/

namespace A295564.P13236696921517456116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A295563 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A072828 (2 * n + 1))

end

end A295564.P13236696921517456116

/-!
# A295565: Consider numbers k such that A295563(k) <= k (see A295564); sequence lists the values A295563(k).

The programs for A295565, there is no canonical definition to state claims against.
-/

/-! ## A295565.P1498546293088871341

`A295563(A295564(n+1))`
-/

namespace A295565.P1498546293088871341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 (A295564 (n + 1)).toNat

end

end A295565.P1498546293088871341

/-! ## A295565.P18411475402929611388

`A295563(comp[A295566(n+1)])`
-/

namespace A295565.P18411475402929611388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295566 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A295565.P18411475402929611388

/-! ## A295565.P1443260580268852482

`A295563(lt[A295563(n), n+1])`
-/

namespace A295565.P1443260580268852482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A295565.P1443260580268852482

/-! ## A295565.P3666134174335282829

`A295563(lt[A295563(n)-1, n])`
-/

namespace A295565.P3666134174335282829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A295565.P3666134174335282829

/-! ## A295565.P761897871928934958

`A295563(eq[A295563(n)%(n+1), A295563(n)])`
-/

namespace A295565.P761897871928934958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295563 n) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A295565.P761897871928934958

/-! ## A295565.P7949808644102475783

`A274315(A295564(n+1)+1)-1`
-/

namespace A295565.P7949808644102475783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274315 (A295564 (n + 1) + 1).toNat - 1

end

end A295565.P7949808644102475783

/-!
# A295566: Numbers k such that A295563(k) > k.

The programs for A295566, there is no canonical definition to state claims against.
-/

/-! ## A295566.P131905479913514077

`lt[n, A295563(n)]`
-/

namespace A295566.P131905479913514077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295566.P131905479913514077

/-! ## A295566.P17583318251339291557

`comp[A295564(n+1)]`
-/

namespace A295566.P17583318251339291557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A295566.P17583318251339291557

/-! ## A295566.P7225338276663921111

`record[(n+1)%A295563(n+1)]`
-/

namespace A295566.P7225338276663921111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A295563 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295566.P7225338276663921111

/-! ## A295566.P5596379840896567231

`eq[0, char[A295564(A000027(n+1))]]`
-/

namespace A295566.P5596379840896567231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295564 (A000027 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295566.P5596379840896567231

/-! ## A295566.P11746748271051286184

`lt[n+1, A274315(n+1)]`
-/

namespace A295566.P11746748271051286184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274315 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295566.P11746748271051286184

/-! ## A295566.P7722300557358672109

`record[A000027(n+1)%A274315(n+2)]`
-/

namespace A295566.P7722300557358672109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A274315 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295566.P7722300557358672109

/-!
# A295567: Consider numbers k such that A295563(k) > k (see A295566); sequence lists the values A295563(k).

The programs for A295567, there is no canonical definition to state claims against.
-/

/-! ## A295567.P14395701281630756649

`A295563(A295566(n+1))`
-/

namespace A295567.P14395701281630756649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 (A295566 (n + 1)).toNat

end

end A295567.P14395701281630756649

/-! ## A295567.P649896130877079646

`A295563(lt[n, A295563(n)])`
-/

namespace A295567.P649896130877079646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A295567.P649896130877079646

/-! ## A295567.P17513010306574209527

`A295563(comp[A295564(n+1)])`
-/

namespace A295567.P17513010306574209527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295564 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A295567.P17513010306574209527

/-! ## A295567.P3086334388330796041

`A295563(record[(n+1)%A295563(n+1)])`
-/

namespace A295567.P3086334388330796041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A295563 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A295567.P3086334388330796041

/-! ## A295567.P6952122818951291060

`A295563(eq[0, char[A295564(n+1)]])`
-/

namespace A295567.P6952122818951291060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295564 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A295567.P6952122818951291060

/-!
# A295568: Irregular triangle, read by rows: the Catalan generating tree, read from left to right, row by row, starting at the root.

The programs for A295568, there is no canonical definition to state claims against.
-/

/-! ## A295568.P5407132833007981411

`1+A080237(n+1)`
-/

namespace A295568.P5407132833007981411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A080237 (n + 1)

end

end A295568.P5407132833007981411

/-! ## A295568.P11952814664304819312

`val(A071152(n+1), 2)`
-/

namespace A295568.P11952814664304819312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071152 (n + 1)).toNat 2

end

end A295568.P11952814664304819312

/-! ## A295568.P2699863332312823532

`val(A014486(n+1), 2)+1`
-/

namespace A295568.P2699863332312823532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014486 (n + 1)).toNat 2 + 1

end

end A295568.P2699863332312823532

/-! ## A295568.P10295513602016019183

`val(A063171(n+1), 2)+1`
-/

namespace A295568.P10295513602016019183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A063171 (n + 1)).toNat 2 + 1

end

end A295568.P10295513602016019183

/-! ## A295568.P11269712095784878225

`A071159(n+1)%10+1`
-/

namespace A295568.P11269712095784878225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071159 (n + 1)) 10 + 1

end

end A295568.P11269712095784878225

/-! ## A295568.P8556507122541104427

`Δ[A085225(n)]`
-/

namespace A295568.P8556507122541104427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295568.P8556507122541104427

/-! ## A295568.P5636627296468341098

`val(A057547(n+1), 2)`
-/

namespace A295568.P5636627296468341098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A057547 (n + 1)).toNat 2

end

end A295568.P5636627296468341098

/-! ## A295568.P17553244521176329197

`val(A194045(n+1), 2)`
-/

namespace A295568.P17553244521176329197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A194045 (n + 1)).toNat 2

end

end A295568.P17553244521176329197

/-! ## A295568.P7815799482351278538

`A076050(A082854(n+1))`
-/

namespace A295568.P7815799482351278538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076050 (A082854 (n + 1)).toNat

end

end A295568.P7815799482351278538

/-! ## A295568.P16648483950116174352

`A085225(n+1)-A085225(n)`
-/

namespace A295568.P16648483950116174352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085225 (n + 1) - A085225 n

end

end A295568.P16648483950116174352

/-! ## A295568.P8743113091333611295

`Δ[A085223(n+1)]`
-/

namespace A295568.P8743113091333611295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295568.P8743113091333611295

/-! ## A295568.P6802672901028944839

`A085223(n+2)-A085223(n+1)`
-/

namespace A295568.P6802672901028944839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085223 (n + 2) - A085223 (n + 1)

end

end A295568.P6802672901028944839

/-! ## A295568.P6041150762951200916

`A080237(A057548(n+1))`
-/

namespace A295568.P6041150762951200916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (A057548 (n + 1)).toNat

end

end A295568.P6041150762951200916

/-! ## A295568.P1495122662684637026

`A080237(A085225(n+1))`
-/

namespace A295568.P1495122662684637026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (A085225 (n + 1)).toNat

end

end A295568.P1495122662684637026

/-! ## A295568.P11278306083856145657

`A057515(A057504(n+1))+1`
-/

namespace A295568.P11278306083856145657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A057504 (n + 1)).toNat + 1

end

end A295568.P11278306083856145657

/-! ## A295568.P12620254530163787009

`A057515(A057506(n+1))+1`
-/

namespace A295568.P12620254530163787009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A057506 (n + 1)).toNat + 1

end

end A295568.P12620254530163787009

/-! ## A295568.P433013576741795654

`A057515(A074683(n+1))+1`
-/

namespace A295568.P433013576741795654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A074683 (n + 1)).toNat + 1

end

end A295568.P433013576741795654

/-! ## A295568.P14082508422696295837

`Δ[record[A085167(n+1)]]`
-/

namespace A295568.P14082508422696295837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085167 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295568.P14082508422696295837

/-! ## A295568.P16019174473980564534

`A076050(A057549(n+1))`
-/

namespace A295568.P16019174473980564534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076050 (A057549 (n + 1)).toNat

end

end A295568.P16019174473980564534

/-! ## A295568.P10978145707389323150

`A007001(A057549(n+1)+1)`
-/

namespace A295568.P10978145707389323150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (A057549 (n + 1) + 1).toNat

end

end A295568.P10978145707389323150

/-!
# A295569: Irregular triangle, read by rows: the Schroeder generating tree, read from left to right, row by row, starting at the root.

The programs for A295569, there is no canonical definition to state claims against.
-/

/-! ## A295569.P9634411986903363829

`A043561(33*A000961(5*n+1))`
-/

namespace A295569.P9634411986903363829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (33 * A000961 (5 * n + 1)).toNat

end

end A295569.P9634411986903363829

/-! ## A295569.P13442716455536839564

`A001221(lcm(A106420(n+1), A188195(n+1)))`
-/

namespace A295569.P13442716455536839564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A106420 (n + 1)) (A188195 (n + 1)))

end

end A295569.P13442716455536839564

/-! ## A295569.P16410565341928189154

`A043561(A332519(3*n+4)-A122111(n+1))`
-/

namespace A295569.P16410565341928189154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A332519 (3 * n + 4) - A122111 (n + 1)).toNat

end

end A295569.P16410565341928189154

/-! ## A295569.P15145858363579317815

`A001221(A142954(2*(n+1))*A213497(2*n+1))`
-/

namespace A295569.P15145858363579317815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A142954 (2 * (n + 1)) * A213497 (2 * n + 1)).toNat

end

end A295569.P15145858363579317815

/-! ## A295569.P1962604370130584532

`A082863(A076617(n+3)-A093492(n+2))`
-/

namespace A295569.P1962604370130584532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (A076617 (n + 3) - A093492 (n + 2)).toNat

end

end A295569.P1962604370130584532

/-!
# A295570: Limiting sequence if we start with 2 and successively apply the morphism k -> 3,4,...,k,k+1,k+1 for k=2,3,4,5,....

The programs for A295570, there is no canonical definition to state claims against.
-/

/-! ## A295570.P14918723633709332635

`A295569(A177949(n+1)+25)`
-/

namespace A295570.P14918723633709332635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295569 (A177949 (n + 1) + 25).toNat

end

end A295570.P14918723633709332635

/-! ## A295570.P313757001411575055

`A295569(A187829(n+1)+9)`
-/

namespace A295570.P313757001411575055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295569 (A187829 (n + 1) + 9).toNat

end

end A295570.P313757001411575055

/-! ## A295570.P14195144013932457350

`A295569(A077168(n)+9)`
-/

namespace A295570.P14195144013932457350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295569 (A077168 n + 9).toNat

end

end A295570.P14195144013932457350

/-! ## A295570.P18144265561134675307

`A128130(A274476(n))+4`
-/

namespace A295570.P18144265561134675307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128130 (A274476 n).toNat + 4

end

end A295570.P18144265561134675307

/-! ## A295570.P6268926221459954269

`A128130(A278821(n))+4`
-/

namespace A295570.P6268926221459954269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128130 (A278821 n).toNat + 4

end

end A295570.P6268926221459954269

/-!
# A295571: a(n) = A081881(n) - 1.

The programs for A295571, there is no canonical definition to state claims against.
-/

/-! ## A295571.P11197772283338587789

`A081881(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295571.P11197772283338587789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081881 (n + 1) - 1

end

end A295571.P11197772283338587789

/-! ## A295571.P8997871661382844795

`record[A081881(A126759(n))-1]`
-/

namespace A295571.P8997871661382844795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081881 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295571.P8997871661382844795

/-! ## A295571.P10321171211402681517

`∑[A295572(A065033(2*n))]-1`
-/

namespace A295571.P10321171211402681517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295572 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A295571.P10321171211402681517

/-! ## A295571.P9629448654699493870

`∑[A295572(A000007(n)+n)]-1`
-/

namespace A295571.P9629448654699493870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295572 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A295571.P9629448654699493870

/-! ## A295571.P8502647774189082408

`A309873(A016825(n))+A081881(n+1)`
-/

namespace A295571.P8502647774189082408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A016825 n).toNat + A081881 (n + 1)

end

end A295571.P8502647774189082408

/-! ## A295571.P6689377907705959615

`∑[A295572(n+1)]-A295572(n+1)`
-/

namespace A295571.P6689377907705959615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295572 (n + 1)

end

end A295571.P6689377907705959615

/-! ## A295571.P9534925759918337825

`∑[A295572(n+1)]%Δ[A081881(n+1)]`
-/

namespace A295571.P9534925759918337825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (n + 1) - f2 n)

end

end A295571.P9534925759918337825

/-!
# A295572: First differences of A081881.

The programs for A295572, there is no canonical definition to state claims against.
-/

/-! ## A295572.P6176801152389709444

`Δ[A081881(n+1)]`
-/

namespace A295572.P6176801152389709444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295572.P6176801152389709444

/-! ## A295572.P16409431908954199282

`Δ[A295571(n+1)]`
-/

namespace A295572.P16409431908954199282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295572.P16409431908954199282

/-! ## A295572.P15646579298836354553

`Δ[record[A081881(A126759(n))]]`
-/

namespace A295572.P15646579298836354553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081881 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295572.P15646579298836354553

/-! ## A295572.P12079075121096243568

`A081881(n+2)-A081881(n+1)`
-/

namespace A295572.P12079075121096243568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081881 (n + 2) - A081881 (n + 1)

end

end A295572.P12079075121096243568

/-! ## A295572.P16086184101498421736

`A295571(n+2)-A295571(n+1)`
-/

namespace A295572.P16086184101498421736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295571 (n + 2) - A295571 (n + 1)

end

end A295572.P16086184101498421736

/-!
# A295573: Array read by upwards antidiagonals: T(n,k) = nk + floor(phi n) ceiling(phi k) where phi = (1 + sqrt(5))/2.

The programs for A295573, there is no canonical definition to state claims against.
-/

/-! ## A295573.P11135773629884311214

`A101866(n+1)-A004956(A002260(n+1))`
-/

namespace A295573.P11135773629884311214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101866 (n + 1) - A004956 (A002260 (n + 1)).toNat

end

end A295573.P11135773629884311214

/-! ## A295573.P14847674839768518028

`A000201(A340429(n+1)+A004736(n+1))`
-/

namespace A295573.P14847674839768518028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A340429 (n + 1) + A004736 (n + 1)).toNat

end

end A295573.P14847674839768518028

/-! ## A295573.P13001849983636178109

`A066096(A340429(n+1)+A004736(n+1))`
-/

namespace A295573.P13001849983636178109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A340429 (n + 1) + A004736 (n + 1)).toNat

end

end A295573.P13001849983636178109

/-! ## A295573.P15692120794324697075

`A101866(n+1)-A026351(A097285(2*n+1))`
-/

namespace A295573.P15692120794324697075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101866 (n + 1) - A026351 (A097285 (2 * n + 1)).toNat

end

end A295573.P15692120794324697075

/-! ## A295573.P1070001068672252543

`A101858(n+1)+A000201(A004736(n+1))`
-/

namespace A295573.P1070001068672252543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101858 (n + 1) + A000201 (A004736 (n + 1)).toNat

end

end A295573.P1070001068672252543

/-!
# A295574: a(n) = Sum_{1 <= j <= n/2, gcd(j,n)=1} j^2.

The programs for A295574, there is no canonical definition to state claims against.
-/

/-! ## A295574.P14875270187143109939

`(n+1)*A066840(n+1)-A334628(n+1)`
-/

namespace A295574.P14875270187143109939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A066840 (n + 1) - A334628 (n + 1)

end

end A295574.P14875270187143109939

/-!
# A295575: a(n) = Sum_{1 <= j <= n/2, gcd(j,n)=1} j^3.

The programs for A295575, there is no canonical definition to state claims against.
-/

/-! ## A295575.P14389320229957228287

`A276634(xor(A078213(n+1), A333805(n+1)))`
-/

namespace A295575.P14389320229957228287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276634 (Int.xor (A078213 (n + 1)) (A333805 (n + 1))).toNat

end

end A295575.P14389320229957228287

/-!
# A295576: a(n) = Sum_{1 <= j <= n/2, gcd(j,n)=1} j^4.

The programs for A295576, there is no canonical definition to state claims against.
-/

/-! ## A295576.P16712103227624807817

`A347142(∑[A347699(2*(n+2))])`
-/

namespace A295576.P16712103227624807817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347699 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347142 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A295576.P16712103227624807817

/-! ## A295576.P12491719279684972661

`A279363(xor(A032555(n+1), A178334(n)))`
-/

namespace A295576.P12491719279684972661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279363 (Int.xor (A032555 (n + 1)) (A178334 n)).toNat

end

end A295576.P12491719279684972661

/-!
# A295577: a(1)=1; thereafter, a(n+1) = Sum_{d divides n} (n!/(d!*(n/d)!))*a(d).

The programs for A295577, there is no canonical definition to state claims against.
-/

/-! ## A295577.P6295444435939792647

`A028310(A092986(n+1))`
-/

namespace A295577.P6295444435939792647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A092986 (n + 1)).toNat

end

end A295577.P6295444435939792647

/-! ## A295577.P948219013935982921

`A289207(A092986(n+1)+2)`
-/

namespace A295577.P948219013935982921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A092986 (n + 1) + 2).toNat

end

end A295577.P948219013935982921

/-! ## A295577.P1442987226645587563

`A004526(2*A092986(n+1))`
-/

namespace A295577.P1442987226645587563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A092986 (n + 1)).toNat

end

end A295577.P1442987226645587563

/-! ## A295577.P897518906861404451

`A025480(2*A092986(n+1))`
-/

namespace A295577.P897518906861404451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (2 * A092986 (n + 1)).toNat

end

end A295577.P897518906861404451

/-!
# A295580: Number of length-n "minimal good sequence" in the sense of Cavenagh et al. (2006).

The programs for A295580, there is no canonical definition to state claims against.
-/

/-! ## A295580.P7373701835292027588

`A320305(3*n)%A083538(A030019(n))`
-/

namespace A295580.P7373701835292027588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320305 (3 * n)) (A083538 (A030019 n).toNat)

end

end A295580.P7373701835292027588

/-! ## A295580.P10470778867444630374

`lcm(A221062(n+1), A262626(A221063(n+1)))`
-/

namespace A295580.P10470778867444630374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A221062 (n + 1)) (A262626 (A221063 (n + 1)).toNat)

end

end A295580.P10470778867444630374

/-! ## A295580.P7364085209908614575

`A089873(gcd(A089841(n+1), A089851(3*n)))`
-/

namespace A295580.P7364085209908614575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089873 (Int.gcd (A089841 (n + 1)) (A089851 (3 * n)))

end

end A295580.P7364085209908614575

/-!
# A295583: a(1)=1; thereafter, a(n+1) = Sum_{d divides n} (n!/(d!*(n/d)!))*2^d*a(n/d).

The programs for A295583, there is no canonical definition to state claims against.
-/

/-! ## A295583.P3811661505779924102

`2^n*A005811(A027710(n))`
-/

namespace A295583.P3811661505779924102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A005811 (A027710 n).toNat

end

end A295583.P3811661505779924102

/-! ## A295583.P18026899333997286605

`2^n*A034968(A005046(n))`
-/

namespace A295583.P18026899333997286605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A034968 (A005046 n).toNat

end

end A295583.P18026899333997286605

/-!
# A295584: Odd numbers that are not a product of Mersenne numbers (A000225).

The programs for A295584, the canonical program `A295584.P3807937795834831549` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295584 has offset 1).

The definition of A295584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295584.P3809128346604811993

`eq[char[A302436(n)], A022896(n+1)]`
-/

namespace A295584.P3809128346604811993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302436 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022896 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A295584.P3809128346604811993

namespace A295584

/-- `eq[char[A302436(n)], A022896(n+1)]` -/
def P3809128346604811993.Spec : Prop :=
  ∀ n, (P3809128346604811993.a n : ℤ) = A295584 (n + 1)

end A295584

/-! ## A295584.P3807937795834831549

`eq[char[A182139(n+1)], A126120(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A295584

/-- `eq[char[A182139(n+1)], A126120(n)]` -/
def P3807937795834831549.Spec : Prop :=
  ∀ n, (P3807937795834831549.a n : ℤ) = A295584 (n + 1)

theorem P3807937795834831549.correct : P3807937795834831549.Spec := by
  intro n
  simp only [A295584, Nat.add_sub_cancel]

end A295584

/-! ## A295584.P5894136524868297375

`eq[char[A182139(n+1)], A182122(n)]`
-/

namespace A295584.P5894136524868297375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182139 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A295584.P5894136524868297375

namespace A295584

/-- `eq[char[A182139(n+1)], A182122(n)]` -/
def P5894136524868297375.Spec : Prop :=
  ∀ n, (P5894136524868297375.a n : ℤ) = A295584 (n + 1)

end A295584

/-! ## A295584.P9270597575908742843

`eq[char[A302436(n)], A126869(n)]`
-/

namespace A295584.P9270597575908742843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302436 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A295584.P9270597575908742843

namespace A295584

/-- `eq[char[A302436(n)], A126869(n)]` -/
def P9270597575908742843.Spec : Prop :=
  ∀ n, (P9270597575908742843.a n : ℤ) = A295584 (n + 1)

end A295584

/-! ## A295584.P9669796723452307880

`eq[char[A282572(n+1)], A282577(n)]`
-/

namespace A295584.P9669796723452307880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282572 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282577 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A295584.P9669796723452307880

namespace A295584

/-- `eq[char[A282572(n+1)], A282577(n)]` -/
def P9669796723452307880.Spec : Prop :=
  ∀ n, (P9669796723452307880.a n : ℤ) = A295584 (n + 1)

end A295584

/-! ## A295584.P16649093925837370571

`eq[char[A282572(n+1)], A282579(n)]`
-/

namespace A295584.P16649093925837370571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282572 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A295584.P16649093925837370571

namespace A295584

/-- `eq[char[A282572(n+1)], A282579(n)]` -/
def P16649093925837370571.Spec : Prop :=
  ∀ n, (P16649093925837370571.a n : ℤ) = A295584 (n + 1)

end A295584

/-!
# A295585: Numbers k such that Dirichlet's theorem has a purely elementary proof mod k via the Erdős method.

The programs for A295585, there is no canonical definition to state claims against.
-/

/-! ## A295585.P11758573119529402180

`lt[A300703(n)+A300584(n), A032303(n)]`
-/

namespace A295585.P11758573119529402180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300703 n + A300584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032303 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295585.P11758573119529402180

/-! ## A295585.P16627438940666921189

`lt[A300703(n), A032766(A078658(n))]`
-/

namespace A295585.P16627438940666921189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A078658 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295585.P16627438940666921189

/-! ## A295585.P4536035204170849925

`lt[A019320(n), A279286(A080513(n)+1)]`
-/

namespace A295585.P4536035204170849925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279286 (A080513 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295585.P4536035204170849925

/-! ## A295585.P15523065104128952106

`lt[A309326(A000010(n+1)), n+1]+1`
-/

namespace A295585.P15523065104128952106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309326 (A000010 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A295585.P15523065104128952106

/-! ## A295585.P5991085842450276604

`lt[A051258(n), A051261(A051217(n+1))]`
-/

namespace A295585.P5991085842450276604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051258 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051261 (A051217 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295585.P5991085842450276604

