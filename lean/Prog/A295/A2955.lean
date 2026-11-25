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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A295500: a(n) = phi(3^n-1), where phi is Euler's totient function (A000010).

The programs for A295500, the canonical program `A295500.P1753605882960463589` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295500 has offset 1).

The definition of A295500 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(3^(n+1)-1)` (program `A295500.P1753605882960463589`, by `A295500.P1753605882960463589.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
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

/-! ## A295500.P1753605882960463589

`A000010(3^(n+1)-1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A295500

/-- `A000010(3^(n+1)-1)` -/
def P1753605882960463589.Spec : Prop :=
  ∀ n, P1753605882960463589.a n = A295500 (n + 1)

theorem P1753605882960463589.correct : P1753605882960463589.Spec := by
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

/-!
# A295501: a(n) = phi(4^n-1), where phi is Euler's totient function (A000010).

The programs for A295501, the canonical program `A295501.P4869209951066471894` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295501 has offset 1).

The definition of A295501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(4^(n+1)-1)` (program `A295501.P4869209951066471894`, by `A295501.P4869209951066471894.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295501.P9575803984090535079

`A053287(2*(n+1))`
-/

namespace A295501.P9575803984090535079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053287 (2 * (n + 1))

end

end A295501.P9575803984090535079

namespace A295501

/-- `A053287(2*(n+1))` -/
def P9575803984090535079.Spec : Prop :=
  ∀ n, P9575803984090535079.a n = A295501 (n + 1)

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

/-! ## A295501.P4869209951066471894

`A000010(4^(n+1)-1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A295501

/-- `A000010(4^(n+1)-1)` -/
def P4869209951066471894.Spec : Prop :=
  ∀ n, P4869209951066471894.a n = A295501 (n + 1)

theorem P4869209951066471894.correct : P4869209951066471894.Spec := by
  intro n
  simp only [A295501, Nat.add_sub_cancel]

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

/-! ## A295501.P396538390749598021

`A027742(n+1)*A317108(n+1)`
-/

namespace A295501.P396538390749598021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027742 (n + 1) * A317108 (n + 1)

end

end A295501.P396538390749598021

namespace A295501

/-- `A027742(n+1)*A317108(n+1)` -/
def P396538390749598021.Spec : Prop :=
  ∀ n, P396538390749598021.a n = A295501 (n + 1)

end A295501

/-! ## A295501.P2959439511185073974

`A027742(n+1)*A317440(n+1)`
-/

namespace A295501.P2959439511185073974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027742 (n + 1) * A317440 (n + 1)

end

end A295501.P2959439511185073974

namespace A295501

/-- `A027742(n+1)*A317440(n+1)` -/
def P2959439511185073974.Spec : Prop :=
  ∀ n, P2959439511185073974.a n = A295501 (n + 1)

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

The programs for A295502, the canonical program `A295502.P436210428483275086` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295502 has offset 1).

The definition of A295502 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(5^(n+1)-1)` (program `A295502.P436210428483275086`, by `A295502.P436210428483275086.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
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

/-! ## A295502.P436210428483275086

`A000010(5^(n+1)-1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A295502

/-- `A000010(5^(n+1)-1)` -/
def P436210428483275086.Spec : Prop :=
  ∀ n, P436210428483275086.a n = A295502 (n + 1)

theorem P436210428483275086.correct : P436210428483275086.Spec := by
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

The programs for A295503, the canonical program `A295503.P16393159655749531957` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295503 has offset 1).

The definition of A295503 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(10^(n+1)-1)` (program `A295503.P16393159655749531957`, by `A295503.P16393159655749531957.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
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

namespace A295503

/-- `(n+1)*A295497(n+1)` -/
def P17352939417136282634.Spec : Prop :=
  ∀ n, P17352939417136282634.a n = A295503 (n + 1)

end A295503

/-! ## A295503.P16393159655749531957

`A000010(10^(n+1)-1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A295503

/-- `A000010(10^(n+1)-1)` -/
def P16393159655749531957.Spec : Prop :=
  ∀ n, P16393159655749531957.a n = A295503 (n + 1)

theorem P16393159655749531957.correct : P16393159655749531957.Spec := by
  intro n
  simp only [A295503, Nat.add_sub_cancel]

end A295503

/-! ## A295503.P4239451172305915417

`(1+n)*A369291(eq[8, A193592(n)])`
-/

namespace A295503.P4239451172305915417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A369291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295503.P4239451172305915417

namespace A295503

/-- `(1+n)*A369291(eq[8, A193592(n)])` -/
def P4239451172305915417.Spec : Prop :=
  ∀ n, P4239451172305915417.a n = A295503 (n + 1)

end A295503

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

The programs for A295505, the canonical program `A295505.P7080475511588809232` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295505 has offset 1).

The definition of A295505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295505.P7080475511588809232

`∑{d}[n+1, A008683((n+1)/#)*4^(#-1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A295505

/-- `∑{d}[n+1, A008683((n+1)/#)*4^(#-1)]` -/
def P7080475511588809232.Spec : Prop :=
  ∀ n, P7080475511588809232.a n = (A295505 (n + 1) : ℚ)

end A295505

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
-/

namespace A295505.P10874738563649779947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A359190 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A295505.P10874738563649779947

namespace A295505

/-- `∑{d}[n+1, A046692(#)*A359190((n+1)/#)]` -/
def P10874738563649779947.Spec : Prop :=
  ∀ n, P10874738563649779947.a n = A295505 (n + 1)

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

/-!
# A295506: a(n) = Sum_{d|n} mu(n/d)*5^(d-1).

The programs for A295506, the canonical program `A295506.P11062977929518269718` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295506 has offset 1).

The definition of A295506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295506.P11062977929518269718

`∑{d}[n+1, A008683((n+1)/#)*5^(#-1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A295506

/-- `∑{d}[n+1, A008683((n+1)/#)*5^(#-1)]` -/
def P11062977929518269718.Spec : Prop :=
  ∀ n, P11062977929518269718.a n = (A295506 (n + 1) : ℚ)

end A295506

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

/-! ## A295506.P12057665081308842528

`A001692(n+1)/5*(n+1)`
-/

namespace A295506.P12057665081308842528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001692 (n + 1) : ℚ) / 5 * (n + 1 : ℚ)

end

end A295506.P12057665081308842528

namespace A295506

/-- `A001692(n+1)/5*(n+1)` -/
def P12057665081308842528.Spec : Prop :=
  ∀ n, P12057665081308842528.a n = (A295506 (n + 1) : ℚ)

end A295506

/-! ## A295506.P4264135978440819762

`∑{d}[n+1, A007427(#)*A339685((n+1)/#)]`
-/

namespace A295506.P4264135978440819762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A339685 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A295506.P4264135978440819762

namespace A295506

/-- `∑{d}[n+1, A007427(#)*A339685((n+1)/#)]` -/
def P4264135978440819762.Spec : Prop :=
  ∀ n, P4264135978440819762.a n = A295506 (n + 1)

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

/-!
# A295513: a(n) = n*bil(n) - 2^bil(n) where bil(0) = 0 and bil(n) = floor(log_2(n)) + 1 for n>0.

The programs for A295513, the canonical program `A295513.P4814264668692293385` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295513 has offset 0).

The definition of A295513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
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

namespace A295513

/-- `∑[ceil(log2(abs(1/3-n)))]` -/
def P9765909133733018144.Spec : Prop :=
  ∀ n, P9765909133733018144.a n = A295513 n

end A295513

/-! ## A295513.P3980594697481230592

`a(n-1)+ceil(log2(n))` with `a(0)=-1`
-/

namespace A295513.P3980594697481230592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  a (n - 1) + ⌈Real.logb 2 (n : ℝ)⌉

end

end A295513.P3980594697481230592

namespace A295513

/-- `a(n-1)+ceil(log2(n))` -/
def P3980594697481230592.Spec : Prop :=
  ∀ n, P3980594697481230592.a n = A295513 n

end A295513

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

namespace A295513

/-- `∑[ceil(log2(acot(n)-1+n))]-1` -/
def P6167207091300716992.Spec : Prop :=
  ∀ n, P6167207091300716992.a n = A295513 n

end A295513

/-! ## A295513.P4814264668692293385

`∑[a(ceil(n/2))+1]-1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295513

/-- `∑[a(ceil(n/2))+1]-1` -/
def P4814264668692293385.Spec : Prop :=
  ∀ n, P4814264668692293385.a n = A295513 n

theorem P4814264668692293385.correct : P4814264668692293385.Spec := by
  intro n
  simp only [A295513]

end A295513

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

namespace A295513

/-- `∑[ceil(log2(C(2, n+2)+n))]-1` -/
def P4089774979878013163.Spec : Prop :=
  ∀ n, P4089774979878013163.a n = A295513 n

end A295513

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

namespace A295513

/-- `∑[ceil(log2(A028310(n)))]-1` -/
def P15020141524051152370.Spec : Prop :=
  ∀ n, P15020141524051152370.a n = A295513 n

end A295513

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

namespace A295513

/-- `∑[∑[char[A000051(n)]]]-1` -/
def P13925753738252076152.Spec : Prop :=
  ∀ n, P13925753738252076152.a n = A295513 n

end A295513

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

namespace A295513

/-- `∑[∑[char[A000010(2^n)+1]]]-1` -/
def P15936962386402973295.Spec : Prop :=
  ∀ n, P15936962386402973295.a n = A295513 n

end A295513

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

namespace A295513

/-- `∑[ceil(log2(n+1))]-A000005(2^ceil(log2(n+1)))` -/
def P6540853767167806222.Spec : Prop :=
  ∀ n, P6540853767167806222.a n = A295513 n

end A295513

/-! ## A295513.P906303424121140230

`A296349(n)-A040000(n)`
-/

namespace A295513.P906303424121140230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296349 n - A040000 n

end

end A295513.P906303424121140230

namespace A295513

/-- `A296349(n)-A040000(n)` -/
def P906303424121140230.Spec : Prop :=
  ∀ n, P906303424121140230.a n = A295513 n

end A295513

/-! ## A295513.P544601618159051233

`A380230(n)-A062383(n)`
-/

namespace A295513.P544601618159051233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380230 n - A062383 n

end

end A295513.P544601618159051233

namespace A295513

/-- `A380230(n)-A062383(n)` -/
def P544601618159051233.Spec : Prop :=
  ∀ n, P544601618159051233.a n = A295513 n

end A295513

/-! ## A295513.P15808346487923042477

`A001855(n+1)-A070941(n)`
-/

namespace A295513.P15808346487923042477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1) - A070941 n

end

end A295513.P15808346487923042477

namespace A295513

/-- `A001855(n+1)-A070941(n)` -/
def P15808346487923042477.Spec : Prop :=
  ∀ n, P15808346487923042477.a n = A295513 n

end A295513

/-! ## A295513.P5505209397537260535

`A001855(n+1)-A070939(2*n)`
-/

namespace A295513.P5505209397537260535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1) - A070939 (2 * n)

end

end A295513.P5505209397537260535

namespace A295513

/-- `A001855(n+1)-A070939(2*n)` -/
def P5505209397537260535.Spec : Prop :=
  ∀ n, P5505209397537260535.a n = A295513 n

end A295513

/-! ## A295513.P6782875015679711375

`A083652(n)-A070941(2*n+1)`
-/

namespace A295513.P6782875015679711375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n - A070941 (2 * n + 1)

end

end A295513.P6782875015679711375

namespace A295513

/-- `A083652(n)-A070941(2*n+1)` -/
def P6782875015679711375.Spec : Prop :=
  ∀ n, P6782875015679711375.a n = A295513 n

end A295513

/-! ## A295513.P3196365102524087765

`A001855(n+1)-A029837(2*(n+1))`
-/

namespace A295513.P3196365102524087765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1) - A029837 (2 * (n + 1))

end

end A295513.P3196365102524087765

namespace A295513

/-- `A001855(n+1)-A029837(2*(n+1))` -/
def P3196365102524087765.Spec : Prop :=
  ∀ n, P3196365102524087765.a n = A295513 n

end A295513

/-! ## A295513.P6084021066004895633

`A001855(2*n+1)-A033156(n+1)`
-/

namespace A295513.P6084021066004895633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (2 * n + 1) - A033156 (n + 1)

end

end A295513.P6084021066004895633

namespace A295513

/-- `A001855(2*n+1)-A033156(n+1)` -/
def P6084021066004895633.Spec : Prop :=
  ∀ n, P6084021066004895633.a n = A295513 n

end A295513

/-! ## A295513.P11933244765300085927

`fp[A120385(n+1)+1]-1`
-/

namespace A295513.P11933244765300085927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120385 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 : ℤ) - 1

end

end A295513.P11933244765300085927

namespace A295513

/-- `fp[A120385(n+1)+1]-1` -/
def P11933244765300085927.Spec : Prop :=
  ∀ n, P11933244765300085927.a n = A295513 n

end A295513

/-! ## A295513.P2031298028301641103

`fp[A334594(n+1)+1]-1`
-/

namespace A295513.P2031298028301641103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334594 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 : ℤ) - 1

end

end A295513.P2031298028301641103

namespace A295513

/-- `fp[A334594(n+1)+1]-1` -/
def P2031298028301641103.Spec : Prop :=
  ∀ n, P2031298028301641103.a n = A295513 n

end A295513

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

namespace A295513

/-- `∑[ceil(log2(n^tanh(n)))]-1` -/
def P9272591436026057814.Spec : Prop :=
  ∀ n, P9272591436026057814.a n = A295513 n

end A295513

/-!
# A295514: a(n) = 2^bil(n) - bil(n) where bil(0) = 0 and bil(n) = floor(log_2(n)) + 1 for n > 0.

The programs for A295514, the canonical program `A295514.P6128396949430385763` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295514 has offset 0).

The definition of A295514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295514.P6128396949430385763

`4*a(floor(n/2))-5*a(floor(n/4))+2*a(floor(n/8))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C042`.
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

/-! ## A295514.P6573953344209887229

`∑[lcm(n-1, ∏{p}[n, val(#, 2)])]`
-/

namespace A295514.P6573953344209887229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) ((∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295514.P6573953344209887229

namespace A295514

/-- `∑[lcm(n-1, ∏{p}[n, val(#, 2)])]` -/
def P6573953344209887229.Spec : Prop :=
  ∀ n, (P6573953344209887229.a n : ℤ) = A295514 n

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

/-! ## A295514.P15114228856215946735

`xor(xor(n, a(n-1))%(n+1), n)` with `a(0)=1`
-/

namespace A295514.P15114228856215946735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (Nat.xor n (a (n - 1)) % (n + 1)) n

end

end A295514.P15114228856215946735

namespace A295514

/-- `xor(xor(n, a(n-1))%(n+1), n)` -/
def P15114228856215946735.Spec : Prop :=
  ∀ n, (P15114228856215946735.a n : ℤ) = A295514 n

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

The programs for A295515, the canonical program `A295515.P11785583445350184235` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295515 has offset 1).

The definition of A295515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295515.P11785583445350184235

`A002487(floor((n+1)/2))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A295515

/-- `A002487(floor((n+1)/2))` -/
def P11785583445350184235.Spec : Prop :=
  ∀ n, P11785583445350184235.a n = A295515 (n + 1)

theorem P11785583445350184235.correct : P11785583445350184235.Spec := by
  intro n
  simp only [A295515, Nat.add_sub_cancel]

end A295515

/-! ## A295515.P17733780658287636146

`A002487(∑[n%2])`
-/

namespace A295515.P17733780658287636146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A295515.P17733780658287636146

namespace A295515

/-- `A002487(∑[n%2])` -/
def P17733780658287636146.Spec : Prop :=
  ∀ n, P17733780658287636146.a n = A295515 (n + 1)

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

/-! ## A295515.P4047629725350621143

`min(A002487(n), A002487(n+1))`
-/

namespace A295515.P4047629725350621143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A002487 n) (A002487 (n + 1))

end

end A295515.P4047629725350621143

namespace A295515

/-- `min(A002487(n), A002487(n+1))` -/
def P4047629725350621143.Spec : Prop :=
  ∀ n, P4047629725350621143.a n = A295515 (n + 1)

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

/-! ## A295515.P16167831967940903052

`min(A283976(n), A283976(n+1))`
-/

namespace A295515.P16167831967940903052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A283976 n) (A283976 (n + 1))

end

end A295515.P16167831967940903052

namespace A295515

/-- `min(A283976(n), A283976(n+1))` -/
def P16167831967940903052.Spec : Prop :=
  ∀ n, P16167831967940903052.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P2047734038944853836

`max(A288002(n+1), A288002(n+2))`
-/

namespace A295515.P2047734038944853836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A288002 (n + 1)) (A288002 (n + 2))

end

end A295515.P2047734038944853836

namespace A295515

/-- `max(A288002(n+1), A288002(n+2))` -/
def P2047734038944853836.Spec : Prop :=
  ∀ n, P2047734038944853836.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P10123088363933734385

`A114214(2*n)-A114214(n)`
-/

namespace A295515.P10123088363933734385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (2 * n) - A114214 n

end

end A295515.P10123088363933734385

namespace A295515

/-- `A114214(2*n)-A114214(n)` -/
def P10123088363933734385.Spec : Prop :=
  ∀ n, P10123088363933734385.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P13770572368442080499

`A309014(A321220(n))`
-/

namespace A295515.P13770572368442080499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309014 (A321220 n).toNat

end

end A295515.P13770572368442080499

namespace A295515

/-- `A309014(A321220(n))` -/
def P13770572368442080499.Spec : Prop :=
  ∀ n, P13770572368442080499.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P1694607343676811045

`min(A309014(2*n+1), A309014(2*(n+1)))`
-/

namespace A295515.P1694607343676811045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A309014 (2 * n + 1)) (A309014 (2 * (n + 1)))

end

end A295515.P1694607343676811045

namespace A295515

/-- `min(A309014(2*n+1), A309014(2*(n+1)))` -/
def P1694607343676811045.Spec : Prop :=
  ∀ n, P1694607343676811045.a n = A295515 (n + 1)

end A295515

/-! ## A295515.P150891222400179099

`A309014(lcm(2, n+2))`
-/

namespace A295515.P150891222400179099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309014 (Nat.lcm 2 (n + 2))

end

end A295515.P150891222400179099

namespace A295515

/-- `A309014(lcm(2, n+2))` -/
def P150891222400179099.Spec : Prop :=
  ∀ n, P150891222400179099.a n = A295515 (n + 1)

end A295515

/-!
# A295518: a(n) = e^2 * Sum_{k=0..n-1} Gamma(k + 1, 2).

The programs for A295518, the canonical program `A295518.P8863327945947550057` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295518 has offset 0).

The definition of A295518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295518.P8863327945947550057

`(2*n-4)*a(n-3)+(3-3*n)*a(n-2)+(2+n)*a(n-1)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C042`.
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

The programs for A295519, the canonical program `A295519.P13687198677937790096` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295519 has offset 0).

The definition of A295519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295519.P13687198677937790096

`(3*n-6)*a(n-3)+(4-4*n)*a(n-2)+(3+n)*a(n-1)` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C042`.
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

The programs for A295521, the canonical program `A295521.P13746151947795808381` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295521 has offset 1).

The definition of A295521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295521.P13746151947795808381

`1/(n+1)*∑{d}[n+1, A008683((n+1)/#)*(4^#-3^#-2^#+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A295521

/-- `1/(n+1)*∑{d}[n+1, A008683((n+1)/#)*(4^#-3^#-2^#+1)]` -/
def P13746151947795808381.Spec : Prop :=
  ∀ n, P13746151947795808381.a n = (A295521 (n + 1) : ℚ)

end A295521

/-! ## A295521.P8869853871176781372

`A065179(n+1)-A059966(n+1)`
-/

namespace A295521.P8869853871176781372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065179 (n + 1) - A059966 (n + 1)

end

end A295521.P8869853871176781372

namespace A295521

/-- `A065179(n+1)-A059966(n+1)` -/
def P8869853871176781372.Spec : Prop :=
  ∀ n, P8869853871176781372.a n = A295521 (n + 1)

end A295521

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

namespace A295521

/-- `record[A065179(A028310(n))-A001037(n)]` -/
def P7055858316511812046.Spec : Prop :=
  ∀ n, P7055858316511812046.a n = A295521 (n + 1)

end A295521

/-! ## A295521.P1259613764524685549

`A065179(n+1)-A001037(A028310(n)+1)`
-/

namespace A295521.P1259613764524685549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065179 (n + 1) - A001037 (A028310 n + 1).toNat

end

end A295521.P1259613764524685549

namespace A295521

/-- `A065179(n+1)-A001037(A028310(n)+1)` -/
def P1259613764524685549.Spec : Prop :=
  ∀ n, P1259613764524685549.a n = A295521 (n + 1)

end A295521

/-! ## A295521.P17688255963683218848

`A065179(n+1)-and(A060477(n+1), A260196(n))`
-/

namespace A295521.P17688255963683218848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065179 (n + 1) - Int.land (A060477 (n + 1)) (A260196 n)

end

end A295521.P17688255963683218848

namespace A295521

/-- `A065179(n+1)-and(A060477(n+1), A260196(n))` -/
def P17688255963683218848.Spec : Prop :=
  ∀ n, P17688255963683218848.a n = A295521 (n + 1)

end A295521

/-! ## A295521.P12585426528359170457

`A065178(n+1)+A065179(n+1)-A185171(n+1)`
-/

namespace A295521.P12585426528359170457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065178 (n + 1) + (A065179 (n + 1) - A185171 (n + 1))

end

end A295521.P12585426528359170457

namespace A295521

/-- `A065178(n+1)+A065179(n+1)-A185171(n+1)` -/
def P12585426528359170457.Spec : Prop :=
  ∀ n, P12585426528359170457.a n = A295521 (n + 1)

end A295521

/-! ## A295521.P5901425307960564579

`A185172(n+1)-(A185171(n+1)+A059966(n+1))`
-/

namespace A295521.P5901425307960564579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185172 (n + 1) - (A185171 (n + 1) + A059966 (n + 1))

end

end A295521.P5901425307960564579

namespace A295521

/-- `A185172(n+1)-(A185171(n+1)+A059966(n+1))` -/
def P5901425307960564579.Spec : Prop :=
  ∀ n, P5901425307960564579.a n = A295521 (n + 1)

end A295521

/-! ## A295521.P11827126389641805456

`A027377(n+1)-A027376(n+1)-A059966(n+1)`
-/

namespace A295521.P11827126389641805456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 (n + 1) - A027376 (n + 1) - A059966 (n + 1)

end

end A295521.P11827126389641805456

namespace A295521

/-- `A027377(n+1)-A027376(n+1)-A059966(n+1)` -/
def P11827126389641805456.Spec : Prop :=
  ∀ n, P11827126389641805456.a n = A295521 (n + 1)

end A295521

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

/-!
# A295525: Number of n X 2 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 4 1s.

The programs for A295525, the canonical program `A295525.P1047727917070849878` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295525 has offset 1).

The definition of A295525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295525.P11100234431566707179

`ogf((2+6x+5x^2-x^3-2x^4-x^5)/(1-2x-2x^2-5x^3+x^5+x^6))`
-/

namespace A295525.P11100234431566707179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, 5, -1, -2, -1] [1, -2, -2, -5, 0, 1, 1] n

end

end A295525.P11100234431566707179

namespace A295525

/-- `ogf((2+6x+5x^2-x^3-2x^4-x^5)/(1-2x-2x^2-5x^3+x^5+x^6))` -/
def P11100234431566707179.Spec : Prop :=
  ∀ n, P11100234431566707179.a n = A295525 (n + 1)

end A295525

/-! ## A295525.P1047727917070849878

`2*a(n-1)+2*a(n-2)+5*a(n-3)-a(n-5)-a(n-6)` with `a(0)=2, a(1)=10, a(2)=29, a(3)=87, a(4)=280, a(5)=876`

The canonical program, it is in `Seq.B000.C042`.
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

/-! ## A295525.P9420175801281095676

`A295531(∑[n+1]+2)`
-/

namespace A295525.P9420175801281095676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A295525.P9420175801281095676

namespace A295525

/-- `A295531(∑[n+1]+2)` -/
def P9420175801281095676.Spec : Prop :=
  ∀ n, P9420175801281095676.a n = A295525 (n + 1)

end A295525

/-! ## A295525.P10662776373796492471

`A297506(∑[n+2])`
-/

namespace A295525.P10662776373796492471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297506 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A295525.P10662776373796492471

namespace A295525

/-- `A297506(∑[n+2])` -/
def P10662776373796492471.Spec : Prop :=
  ∀ n, P10662776373796492471.a n = A295525 (n + 1)

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

/-! ## A295527.P12083106451984090234

`A295531(A141214(n+1))`
-/

namespace A295527.P12083106451984090234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A141214 (n + 1)).toNat

end

end A295527.P12083106451984090234

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

/-!
# A295529: Number of nX6 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 4 1s.

The programs for A295529, there is no canonical definition to state claims against.
-/

/-! ## A295529.P11179895348207488127

`A295531(A056115(n)+21)`
-/

namespace A295529.P11179895348207488127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A056115 n + 21).toNat

end

end A295529.P11179895348207488127

/-! ## A295529.P455211966537572278

`A295531(A374007(n+1))`
-/

namespace A295529.P455211966537572278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A374007 (n + 1)).toNat

end

end A295529.P455211966537572278

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

/-! ## A295530.P16671962661348560068

`A295531(A374008(n+1))`
-/

namespace A295530.P16671962661348560068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295531 (A374008 (n + 1)).toNat

end

end A295530.P16671962661348560068

/-!
# A295531: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally or vertically adjacent to 1, 2 or 4 1s.

The programs for A295531, there is no canonical definition to state claims against.
-/

/-! ## A295531.P16552453489207080324

`A295040(n+1)`
-/

namespace A295531.P16552453489207080324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (n + 1)

end

end A295531.P16552453489207080324

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

/-! ## A295537.P13384571515728740696

`A011792((n-1)%(n+1))`
-/

namespace A295537.P13384571515728740696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011792 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A295537.P13384571515728740696

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

/-! ## A295547.P9835500914611636353

`A295551(A141214(n+1))`
-/

namespace A295547.P9835500914611636353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A141214 (n + 1)).toNat

end

end A295547.P9835500914611636353

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

/-! ## A295548.P7928033275096903845

`A295551(A374005(n+1))`
-/

namespace A295548.P7928033275096903845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A374005 (n + 1)).toNat

end

end A295548.P7928033275096903845

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

/-! ## A295549.P2181673375927600617

`A295551(A374007(n+1))`
-/

namespace A295549.P2181673375927600617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (A374007 (n + 1)).toNat

end

end A295549.P2181673375927600617

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

/-! ## A295551.P16320649379756935021

`A295097(n+1)+A184159(A174545(n))`
-/

namespace A295551.P16320649379756935021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (n + 1) + A184159 (A174545 n).toNat

end

end A295551.P16320649379756935021

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

/-!
# A295552: a(n) = n! * [x^n] exp(x*exp(n*x)).

The programs for A295552, the canonical program `A295552.P3711051016129781817` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295552 has offset 0).

The definition of A295552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295552.P3711051016129781817

`∑{#}[n, C(n, #)*(n*#)^(n-#)]`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A295552

/-- `∑{#}[n, C(n, #)*(n*#)^(n-#)]` -/
def P3711051016129781817.Spec : Prop :=
  ∀ n, P3711051016129781817.a n = (A295552 n : ℚ)

end A295552

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

/-! ## A295554.P7377301805822416108

`A311676(A350040(1+n))-3`
-/

namespace A295554.P7377301805822416108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311676 (A350040 (1 + n)).toNat - 3

end

end A295554.P7377301805822416108

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

/-! ## A295557.P2343427803437019329

`(2%∑[n+2])!*A173675(n+1)`
-/

namespace A295557.P2343427803437019329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 % (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ) * A173675 (n + 1)

end

end A295557.P2343427803437019329

/-! ## A295557.P12877589381916304533

`A040000(n)*A173675(n+1)`
-/

namespace A295557.P12877589381916304533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A173675 (n + 1)

end

end A295557.P12877589381916304533

/-! ## A295557.P13243085363032271333

`A036453(1+n)*A173675(n+1)`
-/

namespace A295557.P13243085363032271333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (1 + n) * A173675 (n + 1)

end

end A295557.P13243085363032271333

/-! ## A295557.P5322259731675983639

`A130130(n+1)*A173675(n+1)`
-/

namespace A295557.P5322259731675983639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (n + 1) * A173675 (n + 1)

end

end A295557.P5322259731675983639

/-! ## A295557.P15216436675210675304

`(1-A057428(n))*A173675(n+1)`
-/

namespace A295557.P15216436675210675304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057428 n) * A173675 (n + 1)

end

end A295557.P15216436675210675304

/-! ## A295557.P14754166852804714704

`A127750(2*n)*A173675(n+1)`
-/

namespace A295557.P14754166852804714704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127750 (2 * n) * A173675 (n + 1)

end

end A295557.P14754166852804714704

/-! ## A295557.P14358833360080611587

`(char[A026250(n+1)]+1)*A173675(n+1)`
-/

namespace A295557.P14358833360080611587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026250 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * A173675 (n + 1)

end

end A295557.P14358833360080611587

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

The programs for A295559, the canonical program `A295559.P1679768290174420295` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295559 has offset 0).

The definition of A295559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295559.P1679768290174420295

`A296515(A114212(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A295559

/-- `A296515(A114212(n))` -/
def P1679768290174420295.Spec : Prop :=
  ∀ n, P1679768290174420295.a n = A295559 n

theorem P1679768290174420295.correct : P1679768290174420295.Spec := by
  intro n
  simp only [A295559]

end A295559

/-! ## A295559.P2208217033554639896

`Δ[A295560(A028310(n)-1)]`
-/

namespace A295559.P2208217033554639896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295559.P2208217033554639896

namespace A295559

/-- `Δ[A295560(A028310(n)-1)]` -/
def P2208217033554639896.Spec : Prop :=
  ∀ n, P2208217033554639896.a n = A295559 n

end A295559

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

namespace A295559

/-- `Δ[A295560(A004273(n)-n)]` -/
def P8852910434373488361.Spec : Prop :=
  ∀ n, P8852910434373488361.a n = A295559 n

end A295559

/-! ## A295559.P228215522936460534

`A295560(n)-A295560(A057428(n)+n)`
-/

namespace A295559.P228215522936460534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 n - A295560 (A057428 n + (n : ℤ)).toNat

end

end A295559.P228215522936460534

namespace A295559

/-- `A295560(n)-A295560(A057428(n)+n)` -/
def P228215522936460534.Spec : Prop :=
  ∀ n, P228215522936460534.a n = A295559 n

end A295559

/-! ## A295559.P6111325012958517423

`A295560(n)-A295560(A004273(n)-n)`
-/

namespace A295559.P6111325012958517423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 n - A295560 (A004273 n - (n : ℤ)).toNat

end

end A295559.P6111325012958517423

namespace A295559

/-- `A295560(n)-A295560(A004273(n)-n)` -/
def P6111325012958517423.Spec : Prop :=
  ∀ n, P6111325012958517423.a n = A295559 n

end A295559

/-! ## A295559.P17650358992072313585

`A295560(n)-A295560(n-A057427(n))`
-/

namespace A295559.P17650358992072313585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 n - A295560 ((n : ℤ) - A057427 n).toNat

end

end A295559.P17650358992072313585

namespace A295559

/-- `A295560(n)-A295560(n-A057427(n))` -/
def P17650358992072313585.Spec : Prop :=
  ∀ n, P17650358992072313585.a n = A295559 n

end A295559

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

namespace A295559

/-- `Δ[A295560(A057428(n)+n)]` -/
def P1252395338281604.Spec : Prop :=
  ∀ n, P1252395338281604.a n = A295559 n

end A295559

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

namespace A295559

/-- `Δ[A295560(n-A057427(n))]` -/
def P6524454385898496153.Spec : Prop :=
  ∀ n, P6524454385898496153.a n = A295559 n

end A295559

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

namespace A295559

/-- `Δ[A295560(n-A057428(n)²)]` -/
def P17080668947222461780.Spec : Prop :=
  ∀ n, P17080668947222461780.a n = A295559 n

end A295559

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

namespace A295559

/-- `Δ[A295560(n-A084360(2*(n+1)))]` -/
def P15986626836917546381.Spec : Prop :=
  ∀ n, P15986626836917546381.a n = A295559 n

end A295559

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

namespace A295559

/-- `Δ[A295560(A004526(A004273(n)))]` -/
def P2996397998908945213.Spec : Prop :=
  ∀ n, P2996397998908945213.a n = A295559 n

end A295559

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

namespace A295559

/-- `Δ[A295560(A004526(A004275(n)))]` -/
def P4469559216802559745.Spec : Prop :=
  ∀ n, P4469559216802559745.a n = A295559 n

end A295559

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

namespace A295559

/-- `Δ[A295560(A084360(A000040(n+1)))]` -/
def P6059131140340328453.Spec : Prop :=
  ∀ n, P6059131140340328453.a n = A295559 n

end A295559

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

namespace A295559

/-- `Δ[A295560(A033270(A008578(n+1)))]` -/
def P11168747381892231214.Spec : Prop :=
  ∀ n, P11168747381892231214.a n = A295559 n

end A295559

/-! ## A295559.P16063053094942420783

`A295560(n)-A295560(A259361(n²))`
-/

namespace A295559.P16063053094942420783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 n - A295560 (A259361 (n ^ 2)).toNat

end

end A295559.P16063053094942420783

namespace A295559

/-- `A295560(n)-A295560(A259361(n²))` -/
def P16063053094942420783.Spec : Prop :=
  ∀ n, P16063053094942420783.a n = A295559 n

end A295559

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

namespace A295559

/-- `Δ[A295560(A259361(n²))]` -/
def P8786039899124796427.Spec : Prop :=
  ∀ n, P8786039899124796427.a n = A295559 n

end A295559

/-!
# A295560: Same as A161644 except that triangles must always grow outwards.

The programs for A295560, the canonical program `A295560.P4623748994939400805` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295560 has offset 0).

The definition of A295560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295560.P4623748994939400805

`∑[A295559(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A295560

/-- `∑[A295559(n)]` -/
def P4623748994939400805.Spec : Prop :=
  ∀ n, P4623748994939400805.a n = A295560 n

theorem P4623748994939400805.correct : P4623748994939400805.Spec := by
  intro n
  simp only [A295560]

end A295560

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

namespace A295560

/-- `∑[A296515(A114212(n))]` -/
def P17473436370426409834.Spec : Prop :=
  ∀ n, P17473436370426409834.a n = A295560 n

end A295560

/-! ## A295560.P7405629608713908546

`A295559(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A295560.P7405629608713908546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A295559 n + a (A023443 n).toNat

end

end A295560.P7405629608713908546

namespace A295560

/-- `A295559(n)+a(A023443(n))` -/
def P7405629608713908546.Spec : Prop :=
  ∀ n, P7405629608713908546.a n = A295560 n

end A295560

/-! ## A295560.P18407187049337792385

`a(n-1)+A295559(A000007(n)+n)` with `a(0)=0`
-/

namespace A295560.P18407187049337792385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A295559 (A000007 n + (n : ℤ)).toNat

end

end A295560.P18407187049337792385

namespace A295560

/-- `a(n-1)+A295559(A000007(n)+n)` -/
def P18407187049337792385.Spec : Prop :=
  ∀ n, P18407187049337792385.a n = A295560 n

end A295560

/-! ## A295560.P6123403549457694668

`a(n-1)+A295559(n)%A000124(n)` with `a(0)=0`
-/

namespace A295560.P6123403549457694668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A295559 n) (A000124 n)

end

end A295560.P6123403549457694668

namespace A295560

/-- `a(n-1)+A295559(n)%A000124(n)` -/
def P6123403549457694668.Spec : Prop :=
  ∀ n, P6123403549457694668.a n = A295560 n

end A295560

/-! ## A295560.P10883596900446825722

`A032766(A151567(n))`
-/

namespace A295560.P10883596900446825722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A151567 n).toNat

end

end A295560.P10883596900446825722

namespace A295560

/-- `A032766(A151567(n))` -/
def P10883596900446825722.Spec : Prop :=
  ∀ n, P10883596900446825722.a n = A295560 n

end A295560

/-! ## A295560.P8130371347311125496

`A057353(2*A151567(n))`
-/

namespace A295560.P8130371347311125496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * A151567 n).toNat

end

end A295560.P8130371347311125496

namespace A295560

/-- `A057353(2*A151567(n))` -/
def P8130371347311125496.Spec : Prop :=
  ∀ n, P8130371347311125496.a n = A295560 n

end A295560

/-!
# A295561: Prefixal-derivation of A092782.

The programs for A295561, the canonical program `A295561.P9491063815369172689` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295561 has offset 1).

The definition of A295561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295561.P16774457708613899155

`A059832(∑[gcd(3, A059832(n+2))])`
-/

namespace A295561.P16774457708613899155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A059832 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A295561.P16774457708613899155

namespace A295561

/-- `A059832(∑[gcd(3, A059832(n+2))])` -/
def P16774457708613899155.Spec : Prop :=
  ∀ n, P16774457708613899155.a n = A295561 (n + 1)

end A295561

/-! ## A295561.P9491063815369172689

`4-Δ[A288464(1+n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A295561

/-- `4-Δ[A288464(1+n)]` -/
def P9491063815369172689.Spec : Prop :=
  ∀ n, P9491063815369172689.a n = A295561 (n + 1)

theorem P9491063815369172689.correct : P9491063815369172689.Spec := by
  intro n
  simp only [A295561, Nat.add_sub_cancel]

end A295561

/-! ## A295561.P5470532937066218755

`round(3/Δ[A288464(n+1)])`
-/

namespace A295561.P5470532937066218755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / (f1 (n + 1) - f1 n : ℚ))

end

end A295561.P5470532937066218755

namespace A295561

/-- `round(3/Δ[A288464(n+1)])` -/
def P5470532937066218755.Spec : Prop :=
  ∀ n, P5470532937066218755.a n = A295561 (n + 1)

end A295561

/-! ## A295561.P15191742978531710509

`A133334(Δ[A288464(1+n)]+3)`
-/

namespace A295561.P15191742978531710509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288464 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133334 (f1 (n + 1) - f1 n + 3).toNat

end

end A295561.P15191742978531710509

namespace A295561

/-- `A133334(Δ[A288464(1+n)]+3)` -/
def P15191742978531710509.Spec : Prop :=
  ∀ n, P15191742978531710509.a n = A295561 (n + 1)

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

/-! ## A295561.P5159523646996487833

`A288464(n+1)+4-A288464(n+2)`
-/

namespace A295561.P5159523646996487833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288464 (n + 1) + (4 - A288464 (n + 2))

end

end A295561.P5159523646996487833

namespace A295561

/-- `A288464(n+1)+4-A288464(n+2)` -/
def P5159523646996487833.Spec : Prop :=
  ∀ n, P5159523646996487833.a n = A295561 (n + 1)

theorem P5159523646996487833.correct : P5159523646996487833.Spec := by
  intro n
  simp only [A295561, Nat.add_sub_cancel, A295561.P5159523646996487833.a, A295561.P9491063815369172689.f1, A295561.P9491063815369172689.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

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

/-! ## A295563.P14409709123648596975

`A274315(1+n)-1`
-/

namespace A295563.P14409709123648596975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274315 (1 + n) - 1

end

end A295563.P14409709123648596975

/-! ## A295563.P623690385248774495

`A023443(A274315(1+n))`
-/

namespace A295563.P623690385248774495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274315 (1 + n)).toNat

end

end A295563.P623690385248774495

/-! ## A295563.P4970994992435943745

`A023444(A274315(1+n)+1)`
-/

namespace A295563.P4970994992435943745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A274315 (1 + n) + 1).toNat

end

end A295563.P4970994992435943745

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

/-! ## A295564.P5529229719599950442

`comp[A295566(1+n)]`
-/

namespace A295564.P5529229719599950442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295566 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A295564.P5529229719599950442

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

/-! ## A295565.P2873328609764375440

`A295563(A295564(1+n))`
-/

namespace A295565.P2873328609764375440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 (A295564 (1 + n)).toNat

end

end A295565.P2873328609764375440

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

/-! ## A295566.P16381744672595065990

`comp[A295564(1+n)]`
-/

namespace A295566.P16381744672595065990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295564 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A295566.P16381744672595065990

/-! ## A295566.P3158611008475435861

`record[(1+n)%A295563(n+1)]`
-/

namespace A295566.P3158611008475435861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 + n : ℤ) (A295563 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295566.P3158611008475435861

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

/-! ## A295566.P13909236232826361339

`lt[n, A023443(A274315(1+n))]`
-/

namespace A295566.P13909236232826361339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274315 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295566.P13909236232826361339

/-! ## A295566.P7808215136927838914

`lt[n, A052419(A274315(n+1))]`
-/

namespace A295566.P7808215136927838914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (A274315 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295566.P7808215136927838914

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

/-! ## A295566.P5540844598861324364

`eq[A069782(n+1)%A274315(n+1), A069782(n+1)]`
-/

namespace A295566.P5540844598861324364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069782 (n + 1)) (A274315 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069782 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295566.P5540844598861324364

/-!
# A295567: Consider numbers k such that A295563(k) > k (see A295566); sequence lists the values A295563(k).

The programs for A295567, there is no canonical definition to state claims against.
-/

/-! ## A295567.P11357112659498504455

`A295563(A295566(1+n))`
-/

namespace A295567.P11357112659498504455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 (A295566 (1 + n)).toNat

end

end A295567.P11357112659498504455

/-!
# A295568: Irregular triangle, read by rows: the Catalan generating tree, read from left to right, row by row, starting at the root.

The programs for A295568, there is no canonical definition to state claims against.
-/

/-! ## A295568.P17094847713383274919

`1+A080237(1+n)`
-/

namespace A295568.P17094847713383274919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A080237 (1 + n)

end

end A295568.P17094847713383274919

/-! ## A295568.P3951172264412574244

`val(A071152(1+n), 2)`
-/

namespace A295568.P3951172264412574244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071152 (1 + n)).toNat 2

end

end A295568.P3951172264412574244

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

/-! ## A295568.P7458746011804551892

`val(A057547(1+n), 2)`
-/

namespace A295568.P7458746011804551892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A057547 (1 + n)).toNat 2

end

end A295568.P7458746011804551892

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

/-! ## A295568.P8330079060043647319

`Δ[A085223(1+n)]`
-/

namespace A295568.P8330079060043647319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085223 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295568.P8330079060043647319

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

/-! ## A295568.P5056285758879148489

`A057515(A080067(n+1))`
-/

namespace A295568.P5056285758879148489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A080067 (n + 1)).toNat

end

end A295568.P5056285758879148489

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

/-! ## A295569.P13543619109697825973

`A071215((A025711(n+1)+1)²)`
-/

namespace A295569.P13543619109697825973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071215 ((A025711 (n + 1) + 1) ^ 2).toNat

end

end A295569.P13543619109697825973

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

/-! ## A295571.P17006609420732313677

`A295572(n)+a(n-1)` with `a(0)=0`
-/

namespace A295571.P17006609420732313677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A295572 n + a (n - 1)

end

end A295571.P17006609420732313677

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

/-! ## A295571.P17618894822594773783

`∑[A295572(xor(n, A000007(n)))]-1`
-/

namespace A295571.P17618894822594773783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295572 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A295571.P17618894822594773783

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

/-! ## A295572.P9263152015854055742

`Δ[A081881(1+n)]`
-/

namespace A295572.P9263152015854055742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081881 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295572.P9263152015854055742

/-! ## A295572.P9396653772547576827

`Δ[A295571(1+n)]`
-/

namespace A295572.P9396653772547576827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295571 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295572.P9396653772547576827

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

/-! ## A295577.P3269429092044412944

`A092986(n+1)`
-/

namespace A295577.P3269429092044412944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092986 (n + 1)

end

end A295577.P3269429092044412944

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

The programs for A295584, the canonical program `A295584.P3807937795834831549` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295584 has offset 1).

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

The canonical program, it is in `Seq.B004.C003`.
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

/-! ## A295585.P7248605722082997676

`lt[A308949(A028310(n)), A347307(n+1)]`
-/

namespace A295585.P7248605722082997676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308949 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347307 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295585.P7248605722082997676

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

