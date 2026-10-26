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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
# A259400: a(n) = Sum_{k=0..n} 2^k*p(k), where p(k) is the partition function A000041.

The programs for A259400, there is no canonical definition to state claims against.
-/

/-! ## A259400.P2252393751533077551

`∑[A327550(n)]`
-/

namespace A259400.P2252393751533077551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P2252393751533077551

/-! ## A259400.P7198174135945032076

`∑[2^n*A000041(n)]`
-/

namespace A259400.P7198174135945032076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P7198174135945032076

/-! ## A259400.P1821578623248769992

`∑[2^n*∑[A002865(n)]]`
-/

namespace A259400.P1821578623248769992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P1821578623248769992

/-! ## A259400.P12752103004955731587

`∑[2^n*A035363(2*n)]`
-/

namespace A259400.P12752103004955731587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A035363 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P12752103004955731587

/-! ## A259400.P9141397068261605450

`∑[A299474(n)/4*2^n]`
-/

namespace A259400.P9141397068261605450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299474 n : ℚ) / 4 * (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P9141397068261605450

/-! ## A259400.P15568514533937451050

`∑[(A133041(n)-n)*2^n]`
-/

namespace A259400.P15568514533937451050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133041 n - (n : ℤ)) * (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P15568514533937451050

/-! ## A259400.P5352539044874015183

`∑[A228816(n+1)/(n+1)*2^n]`
-/

namespace A259400.P5352539044874015183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228816 (n + 1) : ℚ) / (n + 1 : ℚ) * (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P5352539044874015183

/-! ## A259400.P11904167702729225789

`∑[A000041(n)*A000079(n)]`
-/

namespace A259400.P11904167702729225789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P11904167702729225789

/-! ## A259400.P13719839391939364775

`∑[∑[A002865(n)]*A000079(n)]`
-/

namespace A259400.P13719839391939364775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P13719839391939364775

/-! ## A259400.P8024195191818212180

`∑[A000041(n)*∑[A011782(n)]]`
-/

namespace A259400.P8024195191818212180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P8024195191818212180

/-! ## A259400.P8604889196948927840

`∑[A000041(n)*Δ[A000225(n)]]`
-/

namespace A259400.P8604889196948927840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P8604889196948927840

/-! ## A259400.P3480433196938786321

`∑[A000041(n)*Δ[A000918(n)]]`
-/

namespace A259400.P3480433196938786321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P3480433196938786321

/-! ## A259400.P14459468612456818646

`∑[(A000065(n)+1)*A000079(n)]`
-/

namespace A259400.P14459468612456818646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 n + 1) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P14459468612456818646

/-! ## A259400.P13620667566785111487

`∑[A000079(n)*A035377(3*n)]`
-/

namespace A259400.P13620667566785111487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A035377 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P13620667566785111487

/-! ## A259400.P6940897961293688726

`∑[A000079(n)/2*A139582(n)]`
-/

namespace A259400.P6940897961293688726
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / 2 * (A139582 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P6940897961293688726

/-! ## A259400.P12369157736399569583

`∑[∑[A002865(n)]*A011782(n+1)]`
-/

namespace A259400.P12369157736399569583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P12369157736399569583

/-! ## A259400.P13142712862834229390

`∑[(A039900(n)+A003106(n))*2^n]`
-/

namespace A259400.P13142712862834229390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039900 n + A003106 n) * (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P13142712862834229390

/-! ## A259400.P2087610814185988117

`∑[(A027193(n)+A027187(n))*2^n]`
-/

namespace A259400.P2087610814185988117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027193 n + A027187 n) * (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P2087610814185988117

/-! ## A259400.P16946502731483214765

`∑[(A052810(n)-A057427(n))*2^n]`
-/

namespace A259400.P16946502731483214765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052810 n - A057427 n) * (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P16946502731483214765

/-! ## A259400.P15509469823764427424

`∑[(A047967(n)+A000009(n))*A000079(n)]`
-/

namespace A259400.P15509469823764427424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047967 n + A000009 n) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259400.P15509469823764427424

/-!
# A259401: a(n) = Sum_{k=0..n} 2^(n-k)*p(k), where p(k) is the partition function A000041.

The programs for A259401, there is no canonical definition to state claims against.
-/

/-! ## A259401.P5306293295369064413

`∑[A090764(n)]`
-/

namespace A259401.P5306293295369064413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259401.P5306293295369064413

/-! ## A259401.P12729006861944535665

`∑[∑[A320733(n)]]`
-/

namespace A259401.P12729006861944535665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320733 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259401.P12729006861944535665

/-! ## A259401.P5920561011098691825

`2*a(n-1)+A000041(n)` with `a(0)=1`
-/

namespace A259401.P5920561011098691825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A000041 n

end

end A259401.P5920561011098691825

/-! ## A259401.P16102678524020696673

`∑[A002865(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A259401.P16102678524020696673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A259401.P16102678524020696673

/-! ## A259401.P10834131835745961629

`A035363(2*n)+2*a(n-1)` with `a(0)=1`
-/

namespace A259401.P10834131835745961629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035363 (2 * n) + 2 * a (n - 1)

end

end A259401.P10834131835745961629

/-! ## A259401.P1416383266882950505

`A119620(2*n)+2*a(n-1)` with `a(0)=1`
-/

namespace A259401.P1416383266882950505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A119620 (2 * n) + 2 * a (n - 1)

end

end A259401.P1416383266882950505

/-! ## A259401.P17665536539726818835

`2*A090764(n)-A000041(n)`
-/

namespace A259401.P17665536539726818835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090764 n - A000041 n

end

end A259401.P17665536539726818835

/-! ## A259401.P13724443879872497145

`A090764(n+1)-A000041(n+1)`
-/

namespace A259401.P13724443879872497145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090764 (n + 1) - A000041 (n + 1)

end

end A259401.P13724443879872497145

/-! ## A259401.P4103419947108475262

`A320733(n+2)-A000041(n+2)`
-/

namespace A259401.P4103419947108475262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320733 (n + 2) - A000041 (n + 2)

end

end A259401.P4103419947108475262

/-! ## A259401.P16831934785458257584

`2*a(n-1)+A295341(n)+A000726(n)` with `a(0)=1, a(1)=3`
-/

namespace A259401.P16831934785458257584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + (A295341 n + A000726 n)

end

end A259401.P16831934785458257584

/-! ## A259401.P10644933877100796781

`∑[A000041(n)/A000079(n)]*A000079(n)`
-/

namespace A259401.P10644933877100796781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A259401.P10644933877100796781

/-! ## A259401.P7143280084139017770

`A090764(n+1)-(A087787(n+1)+A087787(n))`
-/

namespace A259401.P7143280084139017770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090764 (n + 1) - (A087787 (n + 1) + A087787 n)

end

end A259401.P7143280084139017770

/-! ## A259401.P1674929532574748473

`∑[∑[A292745(∑[n+3])]]`
-/

namespace A259401.P1674929532574748473
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259401.P1674929532574748473

/-!
# A259407: 

The programs for A259407, there is no canonical definition to state claims against.
-/

/-! ## A259407.P15994554411377724753

`A000045(A214852(n+1))`
-/

namespace A259407.P15994554411377724753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A214852 (n + 1)).toNat

end

end A259407.P15994554411377724753

/-!
# A259408: a(1) = 1 thereafter a(n) = Sum_{m=1..n-1} prime(a(m)).

The programs for A259408, the canonical program `A259408.P373491290013901960` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259408 has offset 1).

The definition of A259408 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014688, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259408.P373491290013901960

`A014688(a(n-1))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A259408

/-- `A014688(a(n-1))` -/
def P373491290013901960.Spec : Prop :=
  ∀ n, P373491290013901960.a n = A259408 (n + 1)

theorem P373491290013901960.correct : P373491290013901960.Spec := by
  intro n
  simp only [A259408, Nat.add_sub_cancel]

end A259408

/-! ## A259408.P15389185331272501102

`a(n-1)+A000040(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A259408.P15389185331272501102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A000040 (a (n - 1)).toNat

end

end A259408.P15389185331272501102

namespace A259408

/-- `a(n-1)+A000040(a(n-1))` -/
def P15389185331272501102.Spec : Prop :=
  ∀ n, P15389185331272501102.a n = A259408 (n + 1)

end A259408

/-! ## A259408.P10594643818254744586

`A176628(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A259408.P10594643818254744586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A176628 (a (n - 1)).toNat

end

end A259408.P10594643818254744586

namespace A259408

/-- `A176628(a(n-1))` -/
def P10594643818254744586.Spec : Prop :=
  ∀ n, P10594643818254744586.a n = A259408 (n + 1)

end A259408

/-! ## A259408.P1393306221339129599

`A095116(a(n-1))+1` with `a(0)=1, a(1)=2`
-/

namespace A259408.P1393306221339129599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A095116 (a (n - 1)).toNat + 1

end

end A259408.P1393306221339129599

namespace A259408

/-- `A095116(a(n-1))+1` -/
def P1393306221339129599.Spec : Prop :=
  ∀ n, P1393306221339129599.a n = A259408 (n + 1)

end A259408

/-!
# A259409: The pi-based arithmetic derivative of the double factorial of n.

The programs for A259409, there is no canonical definition to state claims against.
-/

/-! ## A259409.P15730623732188835418

`A258851(A006882(n))`
-/

namespace A259409.P15730623732188835418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A006882 n).toNat

end

end A259409.P15730623732188835418

/-! ## A259409.P1579445933364386513

`A258851(∏[n/a(n-1)])` with `a(0)=1`
-/

namespace A259409.P1579445933364386513
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A259409.P1579445933364386513

/-! ## A259409.P440266577110875722

`A258851(A230698(∑[n]))`
-/

namespace A259409.P440266577110875722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A230698 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A259409.P440266577110875722

/-! ## A259409.P8364791516424533970

`A258851(A128882(n)+1)`
-/

namespace A259409.P8364791516424533970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A128882 n + 1).toNat

end

end A259409.P8364791516424533970

/-!
# A259410: a(n) = 1 - sigma(n) + sigma(n)^2 - sigma(n)^3 + sigma(n)^4.

The programs for A259410, the canonical program `A259410.P9183798347773047213` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259410 has offset 1).

The definition of A259410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-A000203(n+1)+A000203(n+1)²-A000203(n+1)^3+A000203(n+1)^4` (program `A259410.P9183798347773047213`, by `A259410.P9183798347773047213.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259410.P9183798347773047213

`1-A000203(n+1)+A000203(n+1)²-A000203(n+1)^3+A000203(n+1)^4`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259410

/-- `1-A000203(n+1)+A000203(n+1)²-A000203(n+1)^3+A000203(n+1)^4` -/
def P9183798347773047213.Spec : Prop :=
  ∀ n, P9183798347773047213.a n = A259410 (n + 1)

theorem P9183798347773047213.correct : P9183798347773047213.Spec := by
  intro n
  simp only [A259410, Nat.add_sub_cancel]

end A259410

/-! ## A259410.P7580479100357844483

`A060884(A000203(n+1))`
-/

namespace A259410.P7580479100357844483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 (A000203 (n + 1)).toNat

end

end A259410.P7580479100357844483

namespace A259410

/-- `A060884(A000203(n+1))` -/
def P7580479100357844483.Spec : Prop :=
  ∀ n, P7580479100357844483.a n = A259410 (n + 1)

end A259410

/-! ## A259410.P14678545484559002063

`A259308(n+1)-A000203(n+1)*A259184(n+1)`
-/

namespace A259410.P14678545484559002063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259308 (n + 1) - A000203 (n + 1) * A259184 (n + 1)

end

end A259410.P14678545484559002063

namespace A259410

/-- `A259308(n+1)-A000203(n+1)*A259184(n+1)` -/
def P14678545484559002063.Spec : Prop :=
  ∀ n, P14678545484559002063.a n = A259410 (n + 1)

theorem P14678545484559002063.correct : P14678545484559002063.Spec := by
  intro n
  simp only [A259410, Nat.add_sub_cancel, A259410.P14678545484559002063.a, A259410.P9183798347773047213.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A259184, A259184.P15193479453645985553.a, A259308, A259308.P10719289397753992737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259410

/-! ## A259410.P2090783871703102523

`A258974(n+1)*A259184(n+1)-A072861(n+1)`
-/

namespace A259410.P2090783871703102523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258974 (n + 1) * A259184 (n + 1) - A072861 (n + 1)

end

end A259410.P2090783871703102523

namespace A259410

/-- `A258974(n+1)*A259184(n+1)-A072861(n+1)` -/
def P2090783871703102523.Spec : Prop :=
  ∀ n, P2090783871703102523.a n = A259410 (n + 1)

theorem P2090783871703102523.correct : P2090783871703102523.Spec := by
  intro n
  simp only [A259410, Nat.add_sub_cancel, A259410.P2090783871703102523.a, A259410.P9183798347773047213.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A072861, A072861.P7379814568350881994.a, A258974, A258974.P4466533170833626338.a, A259184, A259184.P15193479453645985553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259410

/-! ## A259410.P2384622008913641130

`A060884(∑{d}[n+1, #])`
-/

namespace A259410.P2384622008913641130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A259410.P2384622008913641130

namespace A259410

/-- `A060884(∑{d}[n+1, #])` -/
def P2384622008913641130.Spec : Prop :=
  ∀ n, P2384622008913641130.a n = A259410 (n + 1)

theorem P2384622008913641130.correct : P2384622008913641130.Spec := by
  intro n
  simp only [A259410, Nat.add_sub_cancel, A259410.P2384622008913641130.f1, A259410.P2384622008913641130.a, A259410.P9183798347773047213.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A060884, A060884.P17835107360669808419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259410

/-! ## A259410.P15356995829240313425

`A060884(A039653(n+1)+1)`
-/

namespace A259410.P15356995829240313425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 (A039653 (n + 1) + 1).toNat

end

end A259410.P15356995829240313425

namespace A259410

/-- `A060884(A039653(n+1)+1)` -/
def P15356995829240313425.Spec : Prop :=
  ∀ n, P15356995829240313425.a n = A259410 (n + 1)

end A259410

/-! ## A259410.P562311123357118068

`A060884(A001065(n+1)+1+n)`
-/

namespace A259410.P562311123357118068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A259410.P562311123357118068

namespace A259410

/-- `A060884(A001065(n+1)+1+n)` -/
def P562311123357118068.Spec : Prop :=
  ∀ n, P562311123357118068.a n = A259410 (n + 1)

end A259410

/-! ## A259410.P3000226500065270472

`A060884(A155085(n+1)-(n+1))`
-/

namespace A259410.P3000226500065270472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A259410.P3000226500065270472

namespace A259410

/-- `A060884(A155085(n+1)-(n+1))` -/
def P3000226500065270472.Spec : Prop :=
  ∀ n, P3000226500065270472.a n = A259410 (n + 1)

end A259410

/-! ## A259410.P15787617775218319068

`A059839(∑{d}[n+1, #])/A258978(n+1)`
-/

namespace A259410.P15787617775218319068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059839 (∑ d ∈ Nat.divisors (f1 n), d) : ℚ) / (A258978 (n + 1) : ℚ)

end

end A259410.P15787617775218319068

namespace A259410

/-- `A059839(∑{d}[n+1, #])/A258978(n+1)` -/
def P15787617775218319068.Spec : Prop :=
  ∀ n, P15787617775218319068.a n = (A259410 (n + 1) : ℚ)

theorem P15787617775218319068.correct : P15787617775218319068.Spec := by
  intro n
  simp only [A259410, Nat.add_sub_cancel, A259410.P15787617775218319068.f1, A259410.P15787617775218319068.a, A259410.P9183798347773047213.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A059839, A059839.P16029782246819662926.a, A258978, A258978.P6810193940928802397.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259410

/-!
# A259412: Primes of the form 1 - sigma(n) + sigma(n)^2 - sigma(n)^3 + sigma(n)^4.

The programs for A259412, there is no canonical definition to state claims against.
-/

/-! ## A259412.P3628249915210721412

`A259410(A259411(n+1))`
-/

namespace A259412.P3628249915210721412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259410 (A259411 (n + 1)).toNat

end

end A259412.P3628249915210721412

/-! ## A259412.P11834720496362463954

`A060884(∑{d}[A259411(n+1), #])`
-/

namespace A259412.P11834720496362463954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A259412.P11834720496362463954

/-!
# A259416: The pi-based arithmetic derivative of the n-th Fibonacci number.

The programs for A259416, there is no canonical definition to state claims against.
-/

/-! ## A259416.P13967989660092886660

`A258851(A000045(n))`
-/

namespace A259416.P13967989660092886660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A000045 n).toNat

end

end A259416.P13967989660092886660

/-! ## A259416.P7609161508920990375

`A258851(round(ϕ^n/sqrt(5)))`
-/

namespace A259416.P7609161508920990375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))).toNat

end

end A259416.P7609161508920990375

/-! ## A259416.P18290582192742106461

`A258851(A053602(2*n))+char[23]`
-/

namespace A259416.P18290582192742106461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A053602 (2 * n)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A259416.P18290582192742106461

/-! ## A259416.P5310714380810934214

`A258851(A212804(n+1))%floor(∑[(ϕ^(2*n+2*n+1))²])`
-/

namespace A259416.P5310714380810934214
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio ^ (2 * n + (2 * n + 1))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258851 (A212804 (n + 1)).toNat) ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A259416.P5310714380810934214

/-! ## A259416.P16901394116022330968

`A258851(A157725(n)-2)%floor(∑[(ϕ^(2*n+2*n+1))²])`
-/

namespace A259416.P16901394116022330968
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio ^ (2 * n + (2 * n + 1))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258851 (A157725 n - 2).toNat) ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A259416.P16901394116022330968

/-!
# A259417: Even powers of the odd primes listed in increasing order.

The programs for A259417, the canonical program `A259417.P10542583928533564101` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259417 has offset 1).

The definition of A259417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259417.P10542583928533564101

`lt[∑{p}[n, 2-#+n], n]²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259417

/-- `lt[∑{p}[n, 2-#+n], n]²` -/
def P10542583928533564101.Spec : Prop :=
  ∀ n, (P10542583928533564101.a n : ℤ) = A259417 (n + 1)

theorem P10542583928533564101.correct : P10542583928533564101.Spec := by
  intro n
  simp only [A259417, Nat.add_sub_cancel]

end A259417

/-! ## A259417.P11215018700572958

`lt[∏{p}[n, n+3-#], n+1]²`
-/

namespace A259417.P11215018700572958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((n + 3 : ℤ) - (p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n ^ 2

end

end A259417.P11215018700572958

namespace A259417

/-- `lt[∏{p}[n, n+3-#], n+1]²` -/
def P11215018700572958.Spec : Prop :=
  ∀ n, (P11215018700572958.a n : ℤ) = A259417 (n + 1)

end A259417

/-! ## A259417.P14999576725979839466

`A061345(n)²`
-/

namespace A259417.P14999576725979839466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n ^ 2

end

end A259417.P14999576725979839466

namespace A259417

/-- `A061345(n)²` -/
def P14999576725979839466.Spec : Prop :=
  ∀ n, P14999576725979839466.a n = A259417 (n + 1)

end A259417

/-! ## A259417.P4958562613486641717

`record[A336650(n+1)²]`
-/

namespace A259417.P4958562613486641717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336650 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259417.P4958562613486641717

namespace A259417

/-- `record[A336650(n+1)²]` -/
def P4958562613486641717.Spec : Prop :=
  ∀ n, P4958562613486641717.a n = A259417 (n + 1)

end A259417

/-! ## A259417.P13971154752815903774

`record[A028233(or(1, n))²]`
-/

namespace A259417.P13971154752815903774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (Nat.lor 1 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259417.P13971154752815903774

namespace A259417

/-- `record[A028233(or(1, n))²]` -/
def P13971154752815903774.Spec : Prop :=
  ∀ n, P13971154752815903774.a n = A259417 (n + 1)

end A259417

/-! ## A259417.P3593473016556433554

`record[A034684(or(1, n))²]`
-/

namespace A259417.P3593473016556433554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (Nat.lor 1 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259417.P3593473016556433554

namespace A259417

/-- `record[A034684(or(1, n))²]` -/
def P3593473016556433554.Spec : Prop :=
  ∀ n, P3593473016556433554.a n = A259417 (n + 1)

end A259417

/-! ## A259417.P3538063143117955850

`record[A130065(or(1, n))²]`
-/

namespace A259417.P3538063143117955850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130065 (Nat.lor 1 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259417.P3538063143117955850

namespace A259417

/-- `record[A130065(or(1, n))²]` -/
def P3538063143117955850.Spec : Prop :=
  ∀ n, P3538063143117955850.a n = A259417 (n + 1)

end A259417

/-! ## A259417.P13929485113560062489

`record[A324388(or(1, n))²]`
-/

namespace A259417.P13929485113560062489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324388 (Nat.lor 1 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259417.P13929485113560062489

namespace A259417

/-- `record[A324388(or(1, n))²]` -/
def P13929485113560062489.Spec : Prop :=
  ∀ n, P13929485113560062489.a n = A259417 (n + 1)

end A259417

/-! ## A259417.P8824198362807274067

`record[A343996(or(1, n))²]`
-/

namespace A259417.P8824198362807274067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343996 (Nat.lor 1 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259417.P8824198362807274067

namespace A259417

/-- `record[A343996(or(1, n))²]` -/
def P8824198362807274067.Spec : Prop :=
  ∀ n, P8824198362807274067.a n = A259417 (n + 1)

end A259417

/-! ## A259417.P16583830637722968278

`record[A354933(or(1, n))²]`
-/

namespace A259417.P16583830637722968278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (Nat.lor 1 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259417.P16583830637722968278

namespace A259417

/-- `record[A354933(or(1, n))²]` -/
def P16583830637722968278.Spec : Prop :=
  ∀ n, P16583830637722968278.a n = A259417 (n + 1)

end A259417

/-! ## A259417.P13380392811125764466

`(A278568(n+1)/2)²`
-/

namespace A259417.P13380392811125764466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A278568 (n + 1) : ℚ) / 2) ^ 2

end

end A259417.P13380392811125764466

namespace A259417

/-- `(A278568(n+1)/2)²` -/
def P13380392811125764466.Spec : Prop :=
  ∀ n, P13380392811125764466.a n = (A259417 (n + 1) : ℚ)

end A259417

/-! ## A259417.P18437712427267849457

`record[A304233(2*n+1)]`
-/

namespace A259417.P18437712427267849457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304233 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259417.P18437712427267849457

namespace A259417

/-- `record[A304233(2*n+1)]` -/
def P18437712427267849457.Spec : Prop :=
  ∀ n, P18437712427267849457.a n = A259417 (n + 1)

end A259417

/-! ## A259417.P1565416121132448573

`∩[A244623(n+1), n²]`
-/

namespace A259417.P1565416121132448573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A259417.P1565416121132448573

namespace A259417

/-- `∩[A244623(n+1), n²]` -/
def P1565416121132448573.Spec : Prop :=
  ∀ n, (P1565416121132448573.a n : ℤ) = A259417 (n + 1)

end A259417

/-! ## A259417.P67065013603737036

`record[A028233(2*n+1)²]`
-/

namespace A259417.P67065013603737036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259417.P67065013603737036

namespace A259417

/-- `record[A028233(2*n+1)²]` -/
def P67065013603737036.Spec : Prop :=
  ∀ n, P67065013603737036.a n = A259417 (n + 1)

end A259417

/-! ## A259417.P9221480791642799531

`record[A034684(2*n+1)²]`
-/

namespace A259417.P9221480791642799531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259417.P9221480791642799531

namespace A259417

/-- `record[A034684(2*n+1)²]` -/
def P9221480791642799531.Spec : Prop :=
  ∀ n, P9221480791642799531.a n = A259417 (n + 1)

end A259417

/-! ## A259417.P2154758508899149151

`record[A034699(2*n+1)²]`
-/

namespace A259417.P2154758508899149151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259417.P2154758508899149151

namespace A259417

/-- `record[A034699(2*n+1)²]` -/
def P2154758508899149151.Spec : Prop :=
  ∀ n, P2154758508899149151.a n = A259417 (n + 1)

end A259417

/-! ## A259417.P10538726531102062374

`record[A053585(2*n+1)²]`
-/

namespace A259417.P10538726531102062374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259417.P10538726531102062374

namespace A259417

/-- `record[A053585(2*n+1)²]` -/
def P10538726531102062374.Spec : Prop :=
  ∀ n, P10538726531102062374.a n = A259417 (n + 1)

end A259417

/-! ## A259417.P1978707571677629482

`record[A068794(2*n+1)²]`
-/

namespace A259417.P1978707571677629482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259417.P1978707571677629482

namespace A259417

/-- `record[A068794(2*n+1)²]` -/
def P1978707571677629482.Spec : Prop :=
  ∀ n, P1978707571677629482.a n = A259417 (n + 1)

end A259417

/-! ## A259417.P3687399949809335566

`record[A100994(2*n+1)²]`
-/

namespace A259417.P3687399949809335566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259417.P3687399949809335566

namespace A259417

/-- `record[A100994(2*n+1)²]` -/
def P3687399949809335566.Spec : Prop :=
  ∀ n, P3687399949809335566.a n = A259417 (n + 1)

end A259417

/-! ## A259417.P5761688719150041799

`record[A130065(2*n+1)²]`
-/

namespace A259417.P5761688719150041799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130065 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259417.P5761688719150041799

namespace A259417

/-- `record[A130065(2*n+1)²]` -/
def P5761688719150041799.Spec : Prop :=
  ∀ n, P5761688719150041799.a n = A259417 (n + 1)

end A259417

/-!
# A259418: Primes p such that p plus the cube of sum of digits of p is a perfect square.

The programs for A259418, there is no canonical definition to state claims against.
-/

/-! ## A259418.P2053006651612967007

`p?[A259489(n+1)]`
-/

namespace A259418.P2053006651612967007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259418.P2053006651612967007

/-! ## A259418.P5627430713387401787

`or(1, p?[A259489(-xor(n, -1))])`
-/

namespace A259418.P5627430713387401787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259489 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A259418.P5627430713387401787

/-! ## A259418.P3401530210743851128

`p?[record[A259489(A052938(n))]]`
-/

namespace A259418.P3401530210743851128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259489 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259418.P3401530210743851128

/-! ## A259418.P6479630351582618746

`p?[record[A259489(A324347(n))]]`
-/

namespace A259418.P6479630351582618746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259489 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259418.P6479630351582618746

/-! ## A259418.P6280300032607046488

`∩[A003627(n+1), A259489(n+1)]`
-/

namespace A259418.P6280300032607046488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259418.P6280300032607046488

/-!
# A259420: Number of (n+1)X(n+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0001 0011 or 0111.

The programs for A259420, there is no canonical definition to state claims against.
-/

/-! ## A259420.P5820149836125990523

`A259427(∑[4*n]+1)`
-/

namespace A259420.P5820149836125990523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259420.P5820149836125990523

/-! ## A259420.P15015428364573722963

`or(1, A259427(A001844(n)))`
-/

namespace A259420.P15015428364573722963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259427 (A001844 n).toNat)

end

end A259420.P15015428364573722963

/-! ## A259420.P3893012365810061638

`record[gcd(A049581(n), A259427(n+1))]`
-/

namespace A259420.P3893012365810061638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A259427 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259420.P3893012365810061638

/-! ## A259420.P6371291870024232553

`A259427(A001844(n))+A025439(n)`
-/

namespace A259420.P6371291870024232553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (A001844 n).toNat + A025439 n

end

end A259420.P6371291870024232553

/-! ## A259420.P9685868281142109838

`A007318(∑[n])*A259427(A001844(n))`
-/

namespace A259420.P9685868281142109838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A259427 (A001844 n).toNat

end

end A259420.P9685868281142109838

/-!
# A259421: Number of (n+1) X (2+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0001 0011 or 0111.

The programs for A259421, there is no canonical definition to state claims against.
-/

/-! ## A259421.P12242317168399831746

`A259427(∑[n+1]+2)`
-/

namespace A259421.P12242317168399831746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A259421.P12242317168399831746

/-! ## A259421.P7939622435687111602

`record[A010054(n)*A259427(n+2)]`
-/

namespace A259421.P7939622435687111602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A259427 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259421.P7939622435687111602

/-! ## A259421.P1832134941991179745

`record[gcd(A081417(n+2), A259427(n+2))]`
-/

namespace A259421.P1832134941991179745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081417 (n + 2)) (A259427 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259421.P1832134941991179745

/-! ## A259421.P14925901110919407807

`lcm(1-and(2, n), A259427(A000096(n+1)))`
-/

namespace A259421.P14925901110919407807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A259427 (A000096 (n + 1)).toNat)

end

end A259421.P14925901110919407807

/-! ## A259421.P9324539443592085197

`lcm(A057077(n), A259427(A000096(n+1)))`
-/

namespace A259421.P9324539443592085197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A259427 (A000096 (n + 1)).toNat)

end

end A259421.P9324539443592085197

/-!
# A259422: Number of (n+1)X(3+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0001 0011 or 0111.

The programs for A259422, there is no canonical definition to state claims against.
-/

/-! ## A259422.P9060713404760030455

`A259427(∑[n+2]+4)`
-/

namespace A259422.P9060713404760030455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259422.P9060713404760030455

/-! ## A259422.P10261076316912440986

`lcm(1-and(2, n), A259427(A167614(n+1)))`
-/

namespace A259422.P10261076316912440986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A259427 (A167614 (n + 1)).toNat)

end

end A259422.P10261076316912440986

/-! ## A259422.P13314722347673838163

`lcm(A057077(n), A259427(A167614(n+1)))`
-/

namespace A259422.P13314722347673838163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A259427 (A167614 (n + 1)).toNat)

end

end A259422.P13314722347673838163

/-! ## A259422.P17326015201954162078

`A259427(A167614(n+1))+A000035(2*n)`
-/

namespace A259422.P17326015201954162078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A259422.P17326015201954162078

/-! ## A259422.P14896621779089741575

`A258409(2*(n+1))*A259427(A167614(n+1))`
-/

namespace A259422.P14896621779089741575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258409 (2 * (n + 1)) * A259427 (A167614 (n + 1)).toNat

end

end A259422.P14896621779089741575

/-!
# A259423: Number of (n+1)X(4+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0001 0011 or 0111.

The programs for A259423, there is no canonical definition to state claims against.
-/

/-! ## A259423.P3696767607950895594

`A259427(A167614(n+2)+1)`
-/

namespace A259423.P3696767607950895594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (A167614 (n + 2) + 1).toNat

end

end A259423.P3696767607950895594

/-! ## A259423.P4696663396861761994

`A259427(Δ[A264443(n)-n²])`
-/

namespace A259423.P4696663396861761994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (f1 (n + 1) - f1 n).toNat

end

end A259423.P4696663396861761994

/-! ## A259423.P10593363467695930208

`A259427(Δ[A023545(n+1)-n²])`
-/

namespace A259423.P10593363467695930208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (f1 (n + 1) - f1 n).toNat

end

end A259423.P10593363467695930208

/-! ## A259423.P4773793087146277194

`A259427(A141214(n+2)-2-2*n)`
-/

namespace A259423.P4773793087146277194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (A141214 (n + 2) - 2 - (2 * n : ℤ)).toNat

end

end A259423.P4773793087146277194

/-! ## A259423.P6014939555972548712

`A259427(A141214(n+1))`
-/

namespace A259423.P6014939555972548712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (A141214 (n + 1)).toNat

end

end A259423.P6014939555972548712

/-!
# A259424: Number of (n+1)X(5+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0001 0011 or 0111.

The programs for A259424, there is no canonical definition to state claims against.
-/

/-! ## A259424.P7969686475280180559

`A259427(eq[7, A066657(n)])`
-/

namespace A259424.P7969686475280180559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259424.P7969686475280180559

/-! ## A259424.P8244430831256438267

`A259427(Δ[A264443(n)])`
-/

namespace A259424.P8244430831256438267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (f1 (n + 1) - f1 n).toNat

end

end A259424.P8244430831256438267

/-! ## A259424.P15544697393138536698

`A259427(A374005(n+1))`
-/

namespace A259424.P15544697393138536698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (A374005 (n + 1)).toNat

end

end A259424.P15544697393138536698

/-! ## A259424.P17433315410818807173

`A259427(eq[4, A193592(n)])`
-/

namespace A259424.P17433315410818807173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259424.P17433315410818807173

/-! ## A259424.P8143608331279180907

`A259427(Δ[A023545(n+1)])`
-/

namespace A259424.P8143608331279180907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (f1 (n + 1) - f1 n).toNat

end

end A259424.P8143608331279180907

/-!
# A259425: Number of (n+1)X(6+1) 0..1 arrays with each 2X2 subblock having clockwise pattern 0000 0001 0011 or 0111.

The programs for A259425, there is no canonical definition to state claims against.
-/

/-! ## A259425.P7103191684039710391

`A259427(A374007(n+1))`
-/

namespace A259425.P7103191684039710391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (A374007 (n + 1)).toNat

end

end A259425.P7103191684039710391

/-! ## A259425.P15589513784437558653

`A259427(A052905(n+3))`
-/

namespace A259425.P15589513784437558653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (A052905 (n + 3)).toNat

end

end A259425.P15589513784437558653

/-! ## A259425.P2272392359316615088

`A259427(eq[3, A219347(n)])`
-/

namespace A259425.P2272392359316615088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259425.P2272392359316615088

/-! ## A259425.P9412531648654041719

`A259427(eq[5, A193592(n)])`
-/

namespace A259425.P9412531648654041719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259425.P9412531648654041719

/-! ## A259425.P17835225203631741690

`A259427(eq[8, A258709(n)])`
-/

namespace A259425.P17835225203631741690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259425.P17835225203631741690

/-!
# A259426: Number of (n+1) X (7+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0001 0011 or 0111.

The programs for A259426, there is no canonical definition to state claims against.
-/

/-! ## A259426.P16517474625161818802

`A259427(eq[11, A066657(n)])`
-/

namespace A259426.P16517474625161818802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259426.P16517474625161818802

/-! ## A259426.P14674519142974496579

`A259427(A374008(n+1))`
-/

namespace A259426.P14674519142974496579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (A374008 (n + 1)).toNat

end

end A259426.P14674519142974496579

/-! ## A259426.P12242462983338338751

`A259427(A055999(n+4))`
-/

namespace A259426.P12242462983338338751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (A055999 (n + 4)).toNat

end

end A259426.P12242462983338338751

/-! ## A259426.P2575351939679469912

`A259427(eq[4, A219347(n)])`
-/

namespace A259426.P2575351939679469912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259426.P2575351939679469912

/-! ## A259426.P6390278092442253324

`A259427(eq[6, A193592(n)])`
-/

namespace A259426.P6390278092442253324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259426.P6390278092442253324

/-!
# A259429: With a(1) = 1, a(n) is the smallest number not already in the sequence such that the arithmetic mean of two neighboring terms is a cube.

The programs for A259429, there is no canonical definition to state claims against.
-/

/-! ## A259429.P17675100785152549723

`A126950(A032551(n+2))`
-/

namespace A259429.P17675100785152549723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126950 (A032551 (n + 2)).toNat

end

end A259429.P17675100785152549723

/-! ## A259429.P12618285939058571850

`A126950(n+1)^A015113(ceil(xor(1, n²)/4))`
-/

namespace A259429.P12618285939058571850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126950 (n + 1) : ℚ) ^ (A015113 ⌈(Nat.xor 1 (n ^ 2) : ℚ) / 4⌉.toNat : ℤ)

end

end A259429.P12618285939058571850

/-!
# A259430: a(n) is the arithmetic mean of the first n terms in A073883.

The programs for A259430, there is no canonical definition to state claims against.
-/

/-! ## A259430.P8686690367719539424

`p?[A256450(A004396(A346447(n+1)))]`
-/

namespace A259430.P8686690367719539424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 (A004396 (A346447 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259430.P8686690367719539424

/-! ## A259430.P8811993104036389369

`A151800(lt[A276075(2*n+5), A232040(n+1)])`
-/

namespace A259430.P8811993104036389369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276075 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A259430.P8811993104036389369

/-! ## A259430.P17347736767178585711

`A151800(eq[1, A140356(3*n+4)])`
-/

namespace A259430.P17347736767178585711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259430.P17347736767178585711

/-!
# A259433: Irregular table read by rows: suppose n has d decimal digits; then T(n,j) for 1 <= j <= d is the number obtained by discarding the d-j least significant digits of n.

The programs for A259433, there is no canonical definition to state claims against.
-/

/-! ## A259433.P13006626349540441604

`A158416(lt[A225346(n+1), A358832(n+2)])`
-/

namespace A259433.P13006626349540441604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358832 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A259433.P13006626349540441604

/-! ## A259433.P5398752052648032244

`A158416(lt[A275644(n+3), A002531(n)])`
-/

namespace A259433.P5398752052648032244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275644 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A259433.P5398752052648032244

/-! ## A259433.P18000447554884683599

`A158416(lt[A275644(n+3), A002530(n+1)])`
-/

namespace A259433.P18000447554884683599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275644 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A259433.P18000447554884683599

/-! ## A259433.P7872749983375392908

`A158416(lt[A275644(n+3), A275600(n+1)])`
-/

namespace A259433.P7872749983375392908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275644 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A259433.P7872749983375392908

/-! ## A259433.P9615235086339725268

`A002260(eq[1, A368311(n)])`
-/

namespace A259433.P9615235086339725268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259433.P9615235086339725268

/-!
# A259434: Irregular table read by rows: suppose n has d decimal digits; then T(n,j) for 1 <= j <= d is the number obtained by discarding the d-j most significant digits of n.

The programs for A259434, there is no canonical definition to state claims against.
-/

/-! ## A259434.P1619972392012035667

`A381965(n+1)+A341620(A131572(n+2))`
-/

namespace A259434.P1619972392012035667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381965 (n + 1) + A341620 (A131572 (n + 2)).toNat

end

end A259434.P1619972392012035667

/-! ## A259434.P14303530612054381707

`A381965(n+1)+A000007(A033498(n+1))`
-/

namespace A259434.P14303530612054381707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381965 (n + 1) + A000007 (A033498 (n + 1)).toNat

end

end A259434.P14303530612054381707

/-! ## A259434.P17416855575824973992

`A381965(n+1)%A002997(A107893(n+1))`
-/

namespace A259434.P17416855575824973992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381965 (n + 1)) (A002997 (A107893 (n + 1)).toNat)

end

end A259434.P17416855575824973992

/-! ## A259434.P11145745631292484613

`A329079(A281873(n+1)+1)`
-/

namespace A259434.P11145745631292484613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329079 (A281873 (n + 1) + 1).toNat

end

end A259434.P11145745631292484613

/-! ## A259434.P2477642983318480589

`A329079(n+2)%A329128(n+3)`
-/

namespace A259434.P2477642983318480589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329079 (n + 2)) (A329128 (n + 3))

end

end A259434.P2477642983318480589

/-!
# A259435: a(n) = 2*(n-1)^6*(n+1)^2*(n^2+10*n+1).

The programs for A259435, the canonical program `A259435.P4793702170718342615` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259435 has offset 0).

The definition of A259435 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n-1)^6*(n+1)²*(n²+10*n+1)` (program `A259435.P4793702170718342615`, by `A259435.P4793702170718342615.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259435.P4793702170718342615

`2*(n-1)^6*(n+1)²*(n²+10*n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259435

/-- `2*(n-1)^6*(n+1)²*(n²+10*n+1)` -/
def P4793702170718342615.Spec : Prop :=
  ∀ n, P4793702170718342615.a n = A259435 n

theorem P4793702170718342615.correct : P4793702170718342615.Spec := by
  intro n
  simp only [A259435]

end A259435

/-!
# A259436: a(n) = Sum_{k=0..n} p(k)^k, where p(k) is the partition function A000041.

The programs for A259436, there is no canonical definition to state claims against.
-/

/-! ## A259436.P14123439190332059779

`∑[A133018(n)]`
-/

namespace A259436.P14123439190332059779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259436.P14123439190332059779

/-! ## A259436.P2716591797793174097

`∑[A000041(n)^n]`
-/

namespace A259436.P2716591797793174097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259436.P2716591797793174097

/-! ## A259436.P4710511040418327815

`∑[A213598(n)^n]`
-/

namespace A259436.P4710511040418327815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259436.P4710511040418327815

/-! ## A259436.P13080433849889332975

`∑[A330643(n)^n]`
-/

namespace A259436.P13080433849889332975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330643 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259436.P13080433849889332975

/-! ## A259436.P16085792062206890981

`∑[sqrt(A001255(n))^n]`
-/

namespace A259436.P16085792062206890981
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259436.P16085792062206890981

/-!
# A259437: a(n) = Sum_{k=0..n} p(k)^n, where p(k) is the partition function A000041.

The programs for A259437, there is no canonical definition to state claims against.
-/

/-! ## A259437.P8667540535654466577

`A097621(ceil(exp(∑[n])/(n+1)))`
-/

namespace A259437.P8667540535654466577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097621 ⌈Real.exp ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / (n + 1 : ℝ)⌉.toNat

end

end A259437.P8667540535654466577

/-!
# A259438: a(n) = Sum_{k=0..n} p(k)^(n-k), where p(k) is the partition function A000041.

The programs for A259438, there is no canonical definition to state claims against.
-/

/-! ## A259438.P13423798472517887860

`∑[A281965(A005751(n+1))]`
-/

namespace A259438.P13423798472517887860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281965 (A005751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259438.P13423798472517887860

/-! ## A259438.P15804928563150561145

`A058122(n)+∑[A349592(n)]`
-/

namespace A259438.P15804928563150561145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058122 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259438.P15804928563150561145

/-! ## A259438.P738677793560013432

`A066888(A189283(n)+A058396(n))`
-/

namespace A259438.P738677793560013432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (A189283 n + A058396 n).toNat

end

end A259438.P738677793560013432

/-! ## A259438.P2594096635670666638

`A355662(A006553(n+1))+A135934(n)`
-/

namespace A259438.P2594096635670666638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355662 (A006553 (n + 1)).toNat + A135934 n

end

end A259438.P2594096635670666638

/-!
# A259439: a(n) = A143482(n)/n.

The programs for A259439, there is no canonical definition to state claims against.
-/

/-! ## A259439.P14420628874823284614

`A143482(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259439.P14420628874823284614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143482 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A259439.P14420628874823284614

/-! ## A259439.P16893580918133857303

`(n+1)^A008683(A104887(n+1))*A143482(n+1)`
-/

namespace A259439.P16893580918133857303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A104887 (n + 1)).toNat : ℤ) * (A143482 (n + 1) : ℚ)

end

end A259439.P16893580918133857303

/-! ## A259439.P1964121789350819119

`(n+1)^A008683(A000040(n+1))*A143482(n+1)`
-/

namespace A259439.P1964121789350819119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A000040 (n + 1)).toNat : ℤ) * (A143482 (n + 1) : ℚ)

end

end A259439.P1964121789350819119

/-! ## A259439.P15895778689080942179

`(n+1)^A008683(A000928(n+1))*A143482(n+1)`
-/

namespace A259439.P15895778689080942179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A000928 (n + 1)).toNat : ℤ) * (A143482 (n + 1) : ℚ)

end

end A259439.P15895778689080942179

/-! ## A259439.P3420860345988242949

`(n+1)^A008683(A034470(n+1))*A143482(n+1)`
-/

namespace A259439.P3420860345988242949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A034470 (n + 1)).toNat : ℤ) * (A143482 (n + 1) : ℚ)

end

end A259439.P3420860345988242949

/-! ## A259439.P13651405402921370304

`A008586(A143482(n+1))%A004767(n)`
-/

namespace A259439.P13651405402921370304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 (A143482 (n + 1)).toNat) (A004767 n)

end

end A259439.P13651405402921370304

/-! ## A259439.P3632679519596441660

`A008486(A143482(n+1))%A016789(n)`
-/

namespace A259439.P3632679519596441660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A143482 (n + 1)).toNat) (A016789 n)

end

end A259439.P3632679519596441660

/-! ## A259439.P3551016360896598281

`A017377(A143482(n+1)+n)%A017377(n)`
-/

namespace A259439.P3551016360896598281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017377 (A143482 (n + 1) + (n : ℤ)).toNat) (A017377 n)

end

end A259439.P3551016360896598281

/-!
# A259441: a(n) is the least number of sides of a regular inscribed k-gon whose perimeter yields Pi to within 1/10^n.

The programs for A259441, there is no canonical definition to state claims against.
-/

/-! ## A259441.P18201268121044289042

`A248231(A259442(n))`
-/

namespace A259441.P18201268121044289042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A259442 n).toNat

end

end A259441.P18201268121044289042

/-! ## A259441.P7733964891053638849

`A289122(A289115(3*n+2))+2`
-/

namespace A259441.P7733964891053638849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (A289115 (3 * n + 2)).toNat + 2

end

end A259441.P7733964891053638849

/-!
# A259442: a(n) is the least number of sides of a regular circumscribed k-gon whose perimeter yields Pi to within 1/10^n.

The programs for A259442, there is no canonical definition to state claims against.
-/

/-! ## A259442.P15803791046251305591

`A248231(2*A259441(n))`
-/

namespace A259442.P15803791046251305591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (2 * A259441 n).toNat

end

end A259442.P15803791046251305591

/-!
# A259444: a(1)=2. For n>1, a(n) = smallest number > a(n-1) which is different from all the numbers a(i)^a(j) for 1 <= i < n, 1 <= j < n.

The programs for A259444, the canonical program `A259444.P7980636661045444568` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259444 has offset 1).

The definition of A259444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9881 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259444.P11329499883005294299

`eq[C(n, n²), A028963(A253641(n))]`
-/

namespace A259444.P11329499883005294299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028963 (A253641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259444.P11329499883005294299

namespace A259444

/-- `eq[C(n, n²), A028963(A253641(n))]` -/
def P11329499883005294299.Spec : Prop :=
  ∀ n, (P11329499883005294299.a n : ℤ) = A259444 (n + 1)

end A259444

/-! ## A259444.P654625581218119605

`lt[A025680(A316789(n+2)+1), 1]+2`
-/

namespace A259444.P654625581218119605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025680 (A316789 (n + 2) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A259444.P654625581218119605

namespace A259444

/-- `lt[A025680(A316789(n+2)+1), 1]+2` -/
def P654625581218119605.Spec : Prop :=
  ∀ n, (P654625581218119605.a n : ℤ) = A259444 (n + 1)

end A259444

/-! ## A259444.P13760283807611350737

`eq[1, A286159(A295931(n+2)²+1)]+2`
-/

namespace A259444.P13760283807611350737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286159 (A295931 (n + 2) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A259444.P13760283807611350737

namespace A259444

/-- `eq[1, A286159(A295931(n+2)²+1)]+2` -/
def P13760283807611350737.Spec : Prop :=
  ∀ n, (P13760283807611350737.a n : ℤ) = A259444 (n + 1)

end A259444

/-! ## A259444.P7980636661045444568

`eq[A010052(A253641(n)), A157928(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A259444

/-- `eq[A010052(A253641(n)), A157928(n)]` -/
def P7980636661045444568.Spec : Prop :=
  ∀ n, (P7980636661045444568.a n : ℤ) = A259444 (n + 1)

theorem P7980636661045444568.correct : P7980636661045444568.Spec := by
  intro n
  simp only [A259444, Nat.add_sub_cancel]

end A259444

/-! ## A259444.P1800726377723847227

`record[A233583(n+1)/A007913(A253641(n))]`
-/

namespace A259444.P1800726377723847227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (n + 1) : ℚ) / (A007913 (A253641 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259444.P1800726377723847227

namespace A259444

/-- `record[A233583(n+1)/A007913(A253641(n))]` -/
def P1800726377723847227.Spec : Prop :=
  ∀ n, P1800726377723847227.a n = (A259444 (n + 1) : ℚ)

end A259444

/-! ## A259444.P15103355494577000293

`eq[A010052(n), A191613(A253641(n)!)]`
-/

namespace A259444.P15103355494577000293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191613 (Nat.factorial (A253641 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259444.P15103355494577000293

namespace A259444

/-- `eq[A010052(n), A191613(A253641(n)!)]` -/
def P15103355494577000293.Spec : Prop :=
  ∀ n, (P15103355494577000293.a n : ℤ) = A259444 (n + 1)

end A259444

/-! ## A259444.P7887684966166512711

`eq[1, C(2, A339553(n+1))]+1`
-/

namespace A259444.P7887684966166512711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A339553 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A259444.P7887684966166512711

namespace A259444

/-- `eq[1, C(2, A339553(n+1))]+1` -/
def P7887684966166512711.Spec : Prop :=
  ∀ n, (P7887684966166512711.a n : ℤ) = A259444 (n + 1)

end A259444

/-! ## A259444.P5022387070656154466

`eq[1, A063725(A253641(n²))]`
-/

namespace A259444.P5022387070656154466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A253641 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259444.P5022387070656154466

namespace A259444

/-- `eq[1, A063725(A253641(n²))]` -/
def P5022387070656154466.Spec : Prop :=
  ∀ n, (P5022387070656154466.a n : ℤ) = A259444 (n + 1)

end A259444

/-!
# A259445: Multiplicative with a(n) = n if n is odd and a(2^s)=2.

The programs for A259445, the canonical program `A259445.P16044234078598449350` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259445 has offset 1).

The definition of A259445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259445.P16044234078598449350

`(n+1)/A160467(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A259445

/-- `(n+1)/A160467(n+1)` -/
def P16044234078598449350.Spec : Prop :=
  ∀ n, P16044234078598449350.a n = (A259445 (n + 1) : ℚ)

end A259445

/-! ## A259445.P11499018774183808146

`(n+1)*gcd(n+1, 2)/gcd(n+1, 2^(n+1))`
-/

namespace A259445.P11499018774183808146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.gcd (n + 1) 2 : ℚ) / (Nat.gcd (n + 1) (2 ^ (n + 1)) : ℚ)

end

end A259445.P11499018774183808146

namespace A259445

/-- `(n+1)*gcd(n+1, 2)/gcd(n+1, 2^(n+1))` -/
def P11499018774183808146.Spec : Prop :=
  ∀ n, P11499018774183808146.a n = (A259445 (n + 1) : ℚ)

end A259445

/-! ## A259445.P4576896322767963488

`(n+1)/ceil(xor(n, n+1)/4)`
-/

namespace A259445.P4576896322767963488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ)

end

end A259445.P4576896322767963488

namespace A259445

/-- `(n+1)/ceil(xor(n, n+1)/4)` -/
def P4576896322767963488.Spec : Prop :=
  ∀ n, P4576896322767963488.a n = (A259445 (n + 1) : ℚ)

end A259445

/-! ## A259445.P1541147736338231138

`(n+1)/2^val(n+1, 2)*gcd(2, n+1)`
-/

namespace A259445.P1541147736338231138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (Nat.gcd 2 (n + 1) : ℚ)

end

end A259445.P1541147736338231138

namespace A259445

/-- `(n+1)/2^val(n+1, 2)*gcd(2, n+1)` -/
def P1541147736338231138.Spec : Prop :=
  ∀ n, P1541147736338231138.a n = (A259445 (n + 1) : ℚ)

end A259445

/-! ## A259445.P1966243615769112350

`(and(1, n)+1)*(n+1)/2^val(n+1, 2)`
-/

namespace A259445.P1966243615769112350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1 : ℚ) * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))

end

end A259445.P1966243615769112350

namespace A259445

/-- `(and(1, n)+1)*(n+1)/2^val(n+1, 2)` -/
def P1966243615769112350.Spec : Prop :=
  ∀ n, P1966243615769112350.a n = (A259445 (n + 1) : ℚ)

end A259445

/-! ## A259445.P8607978710073320324

`(n+1)*(2-(n+1)%2)/2^val(n+1, 2)`
-/

namespace A259445.P8607978710073320324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (2 - (((n + 1) % 2 : ℕ) : ℤ)) : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A259445.P8607978710073320324

namespace A259445

/-- `(n+1)*(2-(n+1)%2)/2^val(n+1, 2)` -/
def P8607978710073320324.Spec : Prop :=
  ∀ n, P8607978710073320324.a n = (A259445 (n + 1) : ℚ)

end A259445

/-! ## A259445.P2436748714426383029

`gcd(n+1, A368744(n+1))`
-/

namespace A259445.P2436748714426383029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A368744 (n + 1))

end

end A259445.P2436748714426383029

namespace A259445

/-- `gcd(n+1, A368744(n+1))` -/
def P2436748714426383029.Spec : Prop :=
  ∀ n, (P2436748714426383029.a n : ℤ) = A259445 (n + 1)

end A259445

/-! ## A259445.P2853387531905255505

`(n%2+1)*A000265(n+1)`
-/

namespace A259445.P2853387531905255505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A000265 (n + 1)

end

end A259445.P2853387531905255505

namespace A259445

/-- `(n%2+1)*A000265(n+1)` -/
def P2853387531905255505.Spec : Prop :=
  ∀ n, P2853387531905255505.a n = A259445 (n + 1)

end A259445

/-! ## A259445.P7322360735491707943

`(n+1)/A011782(val(n+1, 2))`
-/

namespace A259445.P7322360735491707943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A011782 (SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A259445.P7322360735491707943

namespace A259445

/-- `(n+1)/A011782(val(n+1, 2))` -/
def P7322360735491707943.Spec : Prop :=
  ∀ n, P7322360735491707943.a n = (A259445 (n + 1) : ℚ)

end A259445

/-! ## A259445.P12420482900060584205

`(n+1)/A000010(2^val(n+1, 2))`
-/

namespace A259445.P12420482900060584205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A259445.P12420482900060584205

namespace A259445

/-- `(n+1)/A000010(2^val(n+1, 2))` -/
def P12420482900060584205.Spec : Prop :=
  ∀ n, P12420482900060584205.a n = (A259445 (n + 1) : ℚ)

end A259445

/-! ## A259445.P11461040891594623161

`(n+1)/A078898(2^val(n+1, 2))`
-/

namespace A259445.P11461040891594623161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A078898 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A259445.P11461040891594623161

namespace A259445

/-- `(n+1)/A078898(2^val(n+1, 2))` -/
def P11461040891594623161.Spec : Prop :=
  ∀ n, P11461040891594623161.a n = (A259445 (n + 1) : ℚ)

end A259445

/-! ## A259445.P2620105590758804459

`(n+1)/A000010(or(n, n+1)-n)`
-/

namespace A259445.P2620105590758804459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (Nat.lor n (n + 1) - n) : ℚ)

end

end A259445.P2620105590758804459

namespace A259445

/-- `(n+1)/A000010(or(n, n+1)-n)` -/
def P2620105590758804459.Spec : Prop :=
  ∀ n, P2620105590758804459.a n = (A259445 (n + 1) : ℚ)

end A259445

/-! ## A259445.P12456977288003971169

`(n+1)/A000010(and(n+1, -(n+1)))`
-/

namespace A259445.P12456977288003971169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat : ℚ)

end

end A259445.P12456977288003971169

namespace A259445

/-- `(n+1)/A000010(and(n+1, -(n+1)))` -/
def P12456977288003971169.Spec : Prop :=
  ∀ n, P12456977288003971169.a n = (A259445 (n + 1) : ℚ)

end A259445

/-! ## A259445.P3090200746956676811

`(n+1)/A000010(n+1-and(n, n+1))`
-/

namespace A259445.P3090200746956676811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (n + 1 - Nat.land n (n + 1)) : ℚ)

end

end A259445.P3090200746956676811

namespace A259445

/-- `(n+1)/A000010(n+1-and(n, n+1))` -/
def P3090200746956676811.Spec : Prop :=
  ∀ n, P3090200746956676811.a n = (A259445 (n + 1) : ℚ)

end A259445

/-! ## A259445.P15762057271969734877

`(n+1)/A000010(-or(n+1, -(n+1)))`
-/

namespace A259445.P15762057271969734877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (-Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat : ℚ)

end

end A259445.P15762057271969734877

namespace A259445

/-- `(n+1)/A000010(-or(n+1, -(n+1)))` -/
def P15762057271969734877.Spec : Prop :=
  ∀ n, P15762057271969734877.a n = (A259445 (n + 1) : ℚ)

end A259445

/-! ## A259445.P9074249549532339116

`A042968(A336146(n+1))`
-/

namespace A259445.P9074249549532339116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (A336146 (n + 1)).toNat

end

end A259445.P9074249549532339116

namespace A259445

/-- `A042968(A336146(n+1))` -/
def P9074249549532339116.Spec : Prop :=
  ∀ n, P9074249549532339116.a n = A259445 (n + 1)

end A259445

/-! ## A259445.P3312096893304738803

`A086767(n)*A141310(n)`
-/

namespace A259445.P3312096893304738803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 n * A141310 n

end

end A259445.P3312096893304738803

namespace A259445

/-- `A086767(n)*A141310(n)` -/
def P3312096893304738803.Spec : Prop :=
  ∀ n, P3312096893304738803.a n = A259445 (n + 1)

end A259445

/-! ## A259445.P6261754278215994162

`A123390(A327492(n+1)-1)`
-/

namespace A259445.P6261754278215994162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123390 (A327492 (n + 1) - 1).toNat

end

end A259445.P6261754278215994162

namespace A259445

/-- `A123390(A327492(n+1)-1)` -/
def P6261754278215994162.Spec : Prop :=
  ∀ n, P6261754278215994162.a n = A259445 (n + 1)

end A259445

/-! ## A259445.P13481804843374383944

`A000034(n)*A000265(n+1)`
-/

namespace A259445.P13481804843374383944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A000265 (n + 1)

end

end A259445.P13481804843374383944

namespace A259445

/-- `A000034(n)*A000265(n+1)` -/
def P13481804843374383944.Spec : Prop :=
  ∀ n, P13481804843374383944.a n = A259445 (n + 1)

end A259445

/-!
# A259446: Number of triangles with sides pairwise relatively prime and no greater than n; permutations of sides are not considered distinct.

The programs for A259446, there is no canonical definition to state claims against.
-/

/-! ## A259446.P8722993239606480248

`∑[A259053(n+1)]`
-/

namespace A259446.P8722993239606480248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259446.P8722993239606480248

/-! ## A259446.P8933629530077581066

`A259053(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A259446.P8933629530077581066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259053 (n + 1) + a (A023443 n).toNat

end

end A259446.P8933629530077581066

/-! ## A259446.P11341690707380932439

`A259053(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A259446.P11341690707380932439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259053 (n + 1) + a (A028310 n - 1).toNat

end

end A259446.P11341690707380932439

/-! ## A259446.P8420654261960337645

`A259053(n+1)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A259446.P8420654261960337645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259053 (n + 1) - (A000007 n - a (n - 1))

end

end A259446.P8420654261960337645

/-! ## A259446.P17361810102022606021

`a(n-1)+A259053(n+1)+A000045(C(2, n+2))` with `a(0)=1`
-/

namespace A259446.P17361810102022606021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A259053 (n + 1) + A000045 (Nat.choose 2 (n + 2)))

end

end A259446.P17361810102022606021

/-! ## A259446.P14549225666131843886

`a(n-1)+A001222(A002476(n+1))*A259053(n+1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A259446.P14549225666131843886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + A001222 (A002476 (n + 1)).toNat * A259053 (n + 1)

end

end A259446.P14549225666131843886

/-!
# A259447: Triangle read by rows arising from enumeration of partitions into non-integral powers.

The programs for A259447, there is no canonical definition to state claims against.
-/

/-! ## A259447.P319074229633384555

`A029618(n+1)%A153438(A029618(n))`
-/

namespace A259447.P319074229633384555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029618 (n + 1)) (A153438 (A029618 n).toNat)

end

end A259447.P319074229633384555

/-!
# A259451: a(n) = n^2*Fibonacci(n).

The programs for A259451, the canonical program `A259451.P12788333351686099515` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259451 has offset 0).

The definition of A259451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*A000045(n)` (program `A259451.P12788333351686099515`, by `A259451.P12788333351686099515.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259451.P12788333351686099515

`n²*A000045(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259451

/-- `n²*A000045(n)` -/
def P12788333351686099515.Spec : Prop :=
  ∀ n, P12788333351686099515.a n = A259451 n

theorem P12788333351686099515.correct : P12788333351686099515.Spec := by
  intro n
  simp only [A259451]

end A259451

/-! ## A259451.P8175104652160288402

`3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=18, a(4)=48, a(5)=125`
-/

namespace A259451.P8175104652160288402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 18, 48, 125] fun n a =>
  3 * a (n - 1) - 5 * a (n - 3) + 3 * a (n - 5) + a (n - 6)

end

end A259451.P8175104652160288402

namespace A259451

/-- `3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` -/
def P8175104652160288402.Spec : Prop :=
  ∀ n, P8175104652160288402.a n = A259451 n

end A259451

/-! ## A259451.P13025704109819141499

`n²*Δ[a(n-1)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A259451.P13025704109819141499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A259451.P13025704109819141499

namespace A259451

/-- `n²*Δ[a(n-1)+a(n-2)]` -/
def P13025704109819141499.Spec : Prop :=
  ∀ n, P13025704109819141499.a n = A259451 n

end A259451

/-! ## A259451.P5147376230431156201

`n²*∑[a(n-1)+a(n-2)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A259451.P5147376230431156201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259451.P5147376230431156201

namespace A259451

/-- `n²*∑[a(n-1)+a(n-2)]` -/
def P5147376230431156201.Spec : Prop :=
  ∀ n, (P5147376230431156201.a n : ℤ) = A259451 n

end A259451

/-! ## A259451.P8082316153831512202

`n*A045925(n)`
-/

namespace A259451.P8082316153831512202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A045925 n

end

end A259451.P8082316153831512202

namespace A259451

/-- `n*A045925(n)` -/
def P8082316153831512202.Spec : Prop :=
  ∀ n, P8082316153831512202.a n = A259451 n

theorem P8082316153831512202.correct : P8082316153831512202.Spec := by
  intro n
  simp only [A259451, Nat.add_sub_cancel, A259451.P8082316153831512202.a, A259451.P12788333351686099515.a, A000045, A000045.P11838749114346432762.a, A045925, A045925.P2609971174242523106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259451

/-! ## A259451.P2479895724614703360

`abs(n²*A236191(n))`
-/

namespace A259451.P2479895724614703360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A236191 n|

end

end A259451.P2479895724614703360

namespace A259451

/-- `abs(n²*A236191(n))` -/
def P2479895724614703360.Spec : Prop :=
  ∀ n, P2479895724614703360.a n = A259451 n

end A259451

/-! ## A259451.P4161138993509200229

`abs(n²*A333378(n))`
-/

namespace A259451.P4161138993509200229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A333378 n|

end

end A259451.P4161138993509200229

namespace A259451

/-- `abs(n²*A333378(n))` -/
def P4161138993509200229.Spec : Prop :=
  ∀ n, P4161138993509200229.a n = A259451 n

end A259451

/-! ## A259451.P8460644082249780156

`n²*A212804(n+1)`
-/

namespace A259451.P8460644082249780156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A212804 (n + 1)

end

end A259451.P8460644082249780156

namespace A259451

/-- `n²*A212804(n+1)` -/
def P8460644082249780156.Spec : Prop :=
  ∀ n, P8460644082249780156.a n = A259451 n

end A259451

/-! ## A259451.P12633304543266148876

`n²*A324969(n+1)`
-/

namespace A259451.P12633304543266148876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A324969 (n + 1)

end

end A259451.P12633304543266148876

namespace A259451

/-- `n²*A324969(n+1)` -/
def P12633304543266148876.Spec : Prop :=
  ∀ n, P12633304543266148876.a n = A259451 n

end A259451

/-! ## A259451.P13739164226348699127

`n²*(A001611(n)-1)`
-/

namespace A259451.P13739164226348699127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (A001611 n - 1)

end

end A259451.P13739164226348699127

namespace A259451

/-- `n²*(A001611(n)-1)` -/
def P13739164226348699127.Spec : Prop :=
  ∀ n, P13739164226348699127.a n = A259451 n

theorem P13739164226348699127.correct : P13739164226348699127.Spec := by
  intro n
  simp only [A259451, Nat.add_sub_cancel, A259451.P13739164226348699127.a, A259451.P12788333351686099515.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259451

/-! ## A259451.P12080602358170509038

`(A157725(n)-2)*n²`
-/

namespace A259451.P12080602358170509038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157725 n - 2) * (n ^ 2 : ℤ)

end

end A259451.P12080602358170509038

namespace A259451

/-- `(A157725(n)-2)*n²` -/
def P12080602358170509038.Spec : Prop :=
  ∀ n, P12080602358170509038.a n = A259451 n

theorem P12080602358170509038.correct : P12080602358170509038.Spec := by
  intro n
  simp only [A259451, Nat.add_sub_cancel, A259451.P12080602358170509038.a, A259451.P12788333351686099515.a, A000045, A000045.P11838749114346432762.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259451

/-! ## A259451.P5797268905246032984

`n²*A053602(2*n)`
-/

namespace A259451.P5797268905246032984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A053602 (2 * n)

end

end A259451.P5797268905246032984

namespace A259451

/-- `n²*A053602(2*n)` -/
def P5797268905246032984.Spec : Prop :=
  ∀ n, P5797268905246032984.a n = A259451 n

end A259451

/-! ## A259451.P1272758767101666705

`n²*A103609(2*n)`
-/

namespace A259451.P1272758767101666705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A103609 (2 * n)

end

end A259451.P1272758767101666705

namespace A259451

/-- `n²*A103609(2*n)` -/
def P1272758767101666705.Spec : Prop :=
  ∀ n, P1272758767101666705.a n = A259451 n

end A259451

/-! ## A259451.P17915653375426170511

`n²*A302126(2*n)`
-/

namespace A259451.P17915653375426170511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A302126 (2 * n)

end

end A259451.P17915653375426170511

namespace A259451

/-- `n²*A302126(2*n)` -/
def P17915653375426170511.Spec : Prop :=
  ∀ n, P17915653375426170511.a n = A259451 n

end A259451

/-! ## A259451.P3099984774187450738

`(n/2)²*A022087(n)`
-/

namespace A259451.P3099984774187450738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ 2 * (A022087 n : ℚ)

end

end A259451.P3099984774187450738

namespace A259451

/-- `(n/2)²*A022087(n)` -/
def P3099984774187450738.Spec : Prop :=
  ∀ n, P3099984774187450738.a n = (A259451 n : ℚ)

theorem P3099984774187450738.correct : P3099984774187450738.Spec := by
  intro n
  simp only [A259451, Nat.add_sub_cancel, A259451.P3099984774187450738.a, A259451.P12788333351686099515.a, A000045, A000045.P11838749114346432762.a, A022087, A022087.P15759272974687768527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259451

/-! ## A259451.P13875906430537716545

`n²*Δ[A000071(n+1)]`
-/

namespace A259451.P13875906430537716545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A259451.P13875906430537716545

namespace A259451

/-- `n²*Δ[A000071(n+1)]` -/
def P13875906430537716545.Spec : Prop :=
  ∀ n, P13875906430537716545.a n = A259451 n

end A259451

/-! ## A259451.P5837349674926684189

`n²*Δ[A187107(n+1)]`
-/

namespace A259451.P5837349674926684189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A259451.P5837349674926684189

namespace A259451

/-- `n²*Δ[A187107(n+1)]` -/
def P5837349674926684189.Spec : Prop :=
  ∀ n, P5837349674926684189.a n = A259451 n

end A259451

/-! ## A259451.P12537948485565322262

`n²*Δ[A187179(n+1)]`
-/

namespace A259451.P12537948485565322262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A259451.P12537948485565322262

namespace A259451

/-- `n²*Δ[A187179(n+1)]` -/
def P12537948485565322262.Spec : Prop :=
  ∀ n, P12537948485565322262.a n = A259451 n

end A259451

/-! ## A259451.P4398887997210483903

`n²*A129982(2*n+1)`
-/

namespace A259451.P4398887997210483903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A129982 (2 * n + 1)

end

end A259451.P4398887997210483903

namespace A259451

/-- `n²*A129982(2*n+1)` -/
def P4398887997210483903.Spec : Prop :=
  ∀ n, P4398887997210483903.a n = A259451 n

end A259451

/-!
# A259452: Number of 5 up, 5 down, 5 up, ... permutations of length 5n+1.

The programs for A259452, there is no canonical definition to state claims against.
-/

/-! ## A259452.P7011354747397835201

`A229886(A016861(n))`
-/

namespace A259452.P7011354747397835201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229886 (A016861 n).toNat

end

end A259452.P7011354747397835201

/-!
# A259455: n Sum_n Sum_n Sum_n.

The programs for A259455, the canonical program `A259455.P9332204312057483658` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259455 has offset 1).

The definition of A259455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259455.P9332204312057483658

`(n+1)^3*(n+4)*(n+3)*(n+2)²/48`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259455

/-- `(n+1)^3*(n+4)*(n+3)*(n+2)²/48` -/
def P9332204312057483658.Spec : Prop :=
  ∀ n, P9332204312057483658.a n = (A259455 (n + 1) : ℚ)

end A259455

/-! ## A259455.P8349864751581192791

`(n+1)*∑[n+1]*C(n+4, 4)`
-/

namespace A259455.P8349864751581192791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j) * Nat.choose (n + 4) 4)

end

end A259455.P8349864751581192791

namespace A259455

/-- `(n+1)*∑[n+1]*C(n+4, 4)` -/
def P8349864751581192791.Spec : Prop :=
  ∀ n, (P8349864751581192791.a n : ℤ) = A259455 (n + 1)

end A259455

/-! ## A259455.P4870797256162863249

`∑[n+1]*A027800(n)`
-/

namespace A259455.P4870797256162863249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A027800 n

end

end A259455.P4870797256162863249

namespace A259455

/-- `∑[n+1]*A027800(n)` -/
def P4870797256162863249.Spec : Prop :=
  ∀ n, P4870797256162863249.a n = A259455 (n + 1)

end A259455

/-! ## A259455.P5795794305932069316

`(n+1)*∑[A108650(n)]`
-/

namespace A259455.P5795794305932069316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259455.P5795794305932069316

namespace A259455

/-- `(n+1)*∑[A108650(n)]` -/
def P5795794305932069316.Spec : Prop :=
  ∀ n, P5795794305932069316.a n = A259455 (n + 1)

end A259455

/-! ## A259455.P585469207125075792

`Δ[A001298(n)]`
-/

namespace A259455.P585469207125075792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259455.P585469207125075792

namespace A259455

/-- `Δ[A001298(n)]` -/
def P585469207125075792.Spec : Prop :=
  ∀ n, P585469207125075792.a n = A259455 (n + 1)

end A259455

/-! ## A259455.P6064404696404372918

`(n+1)*A001297(n+1)`
-/

namespace A259455.P6064404696404372918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001297 (n + 1)

end

end A259455.P6064404696404372918

namespace A259455

/-- `(n+1)*A001297(n+1)` -/
def P6064404696404372918.Spec : Prop :=
  ∀ n, P6064404696404372918.a n = A259455 (n + 1)

end A259455

/-! ## A259455.P1052540473901809962

`A293476(n)+A001297(n+1)`
-/

namespace A259455.P1052540473901809962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293476 n + A001297 (n + 1)

end

end A259455.P1052540473901809962

namespace A259455

/-- `A293476(n)+A001297(n+1)` -/
def P1052540473901809962.Spec : Prop :=
  ∀ n, P1052540473901809962.a n = A259455 (n + 1)

end A259455

/-! ## A259455.P8330918671376355162

`A001298(n+1)-A001298(n)`
-/

namespace A259455.P8330918671376355162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001298 (n + 1) - A001298 n

end

end A259455.P8330918671376355162

namespace A259455

/-- `A001298(n+1)-A001298(n)` -/
def P8330918671376355162.Spec : Prop :=
  ∀ n, P8330918671376355162.a n = A259455 (n + 1)

end A259455

/-! ## A259455.P12281761417313375925

`A000245(n+1)/A000108(n+1)*A108647(n)`
-/

namespace A259455.P12281761417313375925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000245 (n + 1) : ℚ) / (A000108 (n + 1) : ℚ) * (A108647 n : ℚ)

end

end A259455.P12281761417313375925

namespace A259455

/-- `A000245(n+1)/A000108(n+1)*A108647(n)` -/
def P12281761417313375925.Spec : Prop :=
  ∀ n, P12281761417313375925.a n = (A259455 (n + 1) : ℚ)

end A259455

/-! ## A259455.P12084401830604464920

`A321331(∑[n+3]+n+3)`
-/

namespace A259455.P12084401830604464920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321331 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A259455.P12084401830604464920

namespace A259455

/-- `A321331(∑[n+3]+n+3)` -/
def P12084401830604464920.Spec : Prop :=
  ∀ n, P12084401830604464920.a n = A259455 (n + 1)

end A259455

/-!
# A259456: Triangle read by rows, giving coefficients in an expansion of absolute values of Stirling numbers of the first kind in terms of binomial coefficients.

The programs for A259456, there is no canonical definition to state claims against.
-/

/-! ## A259456.P17858540172551373149

`A269940(comp[∑[n]])`
-/

namespace A259456.P17858540172551373149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269940 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A259456.P17858540172551373149

/-! ## A259456.P12682520619717358025

`(n+1-C(∑[char[∑[n+1]]], 2))*A112486(n)`
-/

namespace A259456.P12682520619717358025
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A112486 n

end

end A259456.P12682520619717358025

/-! ## A259456.P15911237083709429941

`abs(A111999(A038722(n+1)))`
-/

namespace A259456.P15911237083709429941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111999 (A038722 (n + 1)).toNat|

end

end A259456.P15911237083709429941

/-! ## A259456.P2627770402244732880

`abs(A111999(A061579(n)+1))`
-/

namespace A259456.P2627770402244732880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111999 (A061579 n + 1).toNat|

end

end A259456.P2627770402244732880

/-! ## A259456.P15366232891097248674

`A008306(A056537(n+1)+1)`
-/

namespace A259456.P15366232891097248674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008306 (A056537 (n + 1) + 1).toNat

end

end A259456.P15366232891097248674

/-!
# A259457: From higher-order arithmetic progressions.

The programs for A259457, the canonical program `A259457.P13201317383668052620` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259457 has offset 0).

The definition of A259457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259457.P13201317383668052620

`(n+3)!*(n+2)*(n+1)*(n+3)*(3*n+8)/96`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259457

/-- `(n+3)!*(n+2)*(n+1)*(n+3)*(3*n+8)/96` -/
def P13201317383668052620.Spec : Prop :=
  ∀ n, P13201317383668052620.a n = (A259457 n : ℚ)

end A259457

/-! ## A259457.P454829767062732968

`A000217(n+2)*A075183(n)`
-/

namespace A259457.P454829767062732968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A075183 n

end

end A259457.P454829767062732968

namespace A259457

/-- `A000217(n+2)*A075183(n)` -/
def P454829767062732968.Spec : Prop :=
  ∀ n, P454829767062732968.a n = A259457 n

end A259457

/-! ## A259457.P9080205669971777222

`A075183(n)*A075303(2*(n+2))`
-/

namespace A259457.P9080205669971777222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075183 n * A075303 (2 * (n + 2))

end

end A259457.P9080205669971777222

namespace A259457

/-- `A075183(n)*A075303(2*(n+2))` -/
def P9080205669971777222.Spec : Prop :=
  ∀ n, P9080205669971777222.a n = A259457 n

end A259457

/-! ## A259457.P9889955993576137656

`A057944(A141214(n))*A075183(n)`
-/

namespace A259457.P9889955993576137656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (A141214 n).toNat * A075183 n

end

end A259457.P9889955993576137656

namespace A259457

/-- `A057944(A141214(n))*A075183(n)` -/
def P9889955993576137656.Spec : Prop :=
  ∀ n, P9889955993576137656.a n = A259457 n

end A259457

/-!
# A259458: From higher-order arithmetic progressions.

The programs for A259458, the canonical program `A259458.P184200458354016363` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259458 has offset 0).

The definition of A259458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259458.P184200458354016363

`(n+4)!*(n+1)*(n+2)*(n+3)²*(n+4)²/384`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259458

/-- `(n+4)!*(n+1)*(n+2)*(n+3)²*(n+4)²/384` -/
def P184200458354016363.Spec : Prop :=
  ∀ n, P184200458354016363.a n = (A259458 n : ℚ)

end A259458

/-! ## A259458.P874610001602395769

`3*A001303(n+1)*A001720(n+4)`
-/

namespace A259458.P874610001602395769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A001303 (n + 1) * A001720 (n + 4))

end

end A259458.P874610001602395769

namespace A259458

/-- `3*A001303(n+1)*A001720(n+4)` -/
def P874610001602395769.Spec : Prop :=
  ∀ n, P874610001602395769.a n = A259458 n

end A259458

/-! ## A259458.P11921199833709136511

`A001720(n+4)*A008585(A001303(n+1))`
-/

namespace A259458.P11921199833709136511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001720 (n + 4) * A008585 (A001303 (n + 1)).toNat

end

end A259458.P11921199833709136511

namespace A259458

/-- `A001720(n+4)*A008585(A001303(n+1))` -/
def P11921199833709136511.Spec : Prop :=
  ∀ n, P11921199833709136511.a n = A259458 n

end A259458

/-!
# A259459: From higher-order arithmetic progressions.

The programs for A259459, the canonical program `A259459.P10757168465144216713` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259459 has offset 0).

The definition of A259459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259459.P10757168465144216713

`(n+3)!*(n+2)!/2^(n+2)*(n+1)*(n+2)/6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259459

/-- `(n+3)!*(n+2)!/2^(n+2)*(n+1)*(n+2)/6` -/
def P10757168465144216713.Spec : Prop :=
  ∀ n, P10757168465144216713.a n = (A259459 n : ℚ)

end A259459

/-! ## A259459.P7424812267424878961

`∑[∑[(n+1)²]]*∏[∑[n+1]]`
-/

namespace A259459.P7424812267424878961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f3 j)

end

end A259459.P7424812267424878961

namespace A259459

/-- `∑[∑[(n+1)²]]*∏[∑[n+1]]` -/
def P7424812267424878961.Spec : Prop :=
  ∀ n, (P7424812267424878961.a n : ℤ) = A259459 n

end A259459

/-! ## A259459.P15344645763239593971

`(n+3)*(n+2)²*a(n-1)/(2*n)` with `a(0)=1`
-/

namespace A259459.P15344645763239593971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 3) * (n + 2) ^ 2 : ℚ) * a (n - 1) / (2 * n : ℚ)

end

end A259459.P15344645763239593971

namespace A259459

/-- `(n+3)*(n+2)²*a(n-1)/(2*n)` -/
def P15344645763239593971.Spec : Prop :=
  ∀ n, P15344645763239593971.a n = (A259459 n : ℚ)

end A259459

/-! ## A259459.P3503463583592088135

`A001754(n+3)²/A001789(n+3)`
-/

namespace A259459.P3503463583592088135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001754 (n + 3) ^ 2 : ℚ) / (A001789 (n + 3) : ℚ)

end

end A259459.P3503463583592088135

namespace A259459

/-- `A001754(n+3)²/A001789(n+3)` -/
def P3503463583592088135.Spec : Prop :=
  ∀ n, P3503463583592088135.a n = (A259459 n : ℚ)

end A259459

/-!
# A259465: Triangle read by rows: enumerates pairs of amicable permutations by rises.

The programs for A259465, there is no canonical definition to state claims against.
-/

/-! ## A259465.P1226636043092976874

`A171479(val(A159147(n+6), 7))`
-/

namespace A259465.P1226636043092976874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171479 (SequenceMachineLib.valuation (A159147 (n + 6)).toNat 7)

end

end A259465.P1226636043092976874

/-! ## A259465.P8428533435022132339

`A134249(or(3, A248774(3*n+2)))`
-/

namespace A259465.P8428533435022132339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134249 (Int.lor 3 (A248774 (3 * n + 2))).toNat

end

end A259465.P8428533435022132339

/-! ## A259465.P10390073168271942102

`A002487(A240854(n)^A084510(n))`
-/

namespace A259465.P10390073168271942102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A240854 n : ℚ) ^ (A084510 n : ℤ))).toNat

end

end A259465.P10390073168271942102

/-! ## A259465.P12485317406646162509

`A137743(A242351(3*n+4)%A000792(n+3))`
-/

namespace A259465.P12485317406646162509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137743 (Int.tmod (A242351 (3 * n + 4)) (A000792 (n + 3))).toNat

end

end A259465.P12485317406646162509

/-! ## A259465.P17675812127630045670

`A128221(A148398(n))`
-/

namespace A259465.P17675812127630045670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128221 (A148398 n).toNat

end

end A259465.P17675812127630045670

/-!
# A259466: Smallest number of 10-bit complement complexity n.

The programs for A259466, there is no canonical definition to state claims against.
-/

/-! ## A259466.P969450076196588641

`A347983(n+1)-A300705(∑[n])`
-/

namespace A259466.P969450076196588641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347983 (n + 1) - A300705 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259466.P969450076196588641

/-! ## A259466.P17946613608841024425

`A347983(n+1)%A347980(n+1)`
-/

namespace A259466.P17946613608841024425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347983 (n + 1)) (A347980 (n + 1))

end

end A259466.P17946613608841024425

/-! ## A259466.P18208449561637943767

`lcm(A285728(2^n), A347983(n+1))`
-/

namespace A259466.P18208449561637943767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A285728 (2 ^ n)) (A347983 (n + 1))

end

end A259466.P18208449561637943767

/-! ## A259466.P2737113305289995493

`A347983(n+1)-A000007(∑[n]²)`
-/

namespace A259466.P2737113305289995493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347983 (n + 1) - A000007 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A259466.P2737113305289995493

/-! ## A259466.P2381966045483030046

`A347983(n+1)%A036234(A006127(n))`
-/

namespace A259466.P2381966045483030046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347983 (n + 1)) (A036234 (A006127 n).toNat)

end

end A259466.P2381966045483030046

/-!
# A259469: Digits of an idempotent 12-adic number.

The programs for A259469, there is no canonical definition to state claims against.
-/

/-! ## A259469.P511074552528045624

`2-(A259468(n)-A018247(n)-A018248(n))`
-/

namespace A259469.P511074552528045624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A259468 n - A018247 n - A018248 n)

end

end A259469.P511074552528045624

/-!
# A259471: Triangle read by rows: T(n,k) is the number of semi-regular relations on n nodes with each node having out-degree k (0 <= k <= n).

The programs for A259471, there is no canonical definition to state claims against.
-/

/-! ## A259471.P17419241835452326462

`A071610(∑{d}[A202549(n+1), #])`
-/

namespace A259471.P17419241835452326462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071610 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A259471.P17419241835452326462

/-! ## A259471.P4978054537820953713

`A071610(∑{d}[A268056(n+1), #])`
-/

namespace A259471.P4978054537820953713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071610 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A259471.P4978054537820953713

/-! ## A259471.P11280040863504598949

`A071610(∑{d}[A268079(n+1), #])`
-/

namespace A259471.P11280040863504598949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071610 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A259471.P11280040863504598949

/-! ## A259471.P11647020344215081794

`A134478(A203280(A007318(n)))`
-/

namespace A259471.P11647020344215081794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A203280 (A007318 n).toNat).toNat

end

end A259471.P11647020344215081794

/-! ## A259471.P12310197987429068334

`A071610(A000203(A268079(n+1)))`
-/

namespace A259471.P12310197987429068334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071610 (A000203 (A268079 (n + 1)).toNat).toNat

end

end A259471.P12310197987429068334

/-!
# A259472: Coefficients in an asymptotic expansion of A003319(n)/n! in falling factorials.

The programs for A259472, there is no canonical definition to state claims against.
-/

/-! ## A259472.P2282175886353472646

`A350941(A007996(n+1))-n!`
-/

namespace A259472.P2282175886353472646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350941 (A007996 (n + 1)).toNat - (Nat.factorial n : ℤ)

end

end A259472.P2282175886353472646

/-! ## A259472.P4371171647502232427

`A330944(A056156(n+2))-A342282(n)`
-/

namespace A259472.P4371171647502232427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330944 (A056156 (n + 2)).toNat - A342282 n

end

end A259472.P4371171647502232427

/-!
# A259475: Array read by antidiagonals: row n gives coefficients of Taylor series expansion of 1/F_{n+1}(t), where F_i(t) is a Fibonacci polynomial defined by F_0=1, F_1=1, F_{i+1} = F_i-t*F_{i-1}.

The programs for A259475, there is no canonical definition to state claims against.
-/

/-! ## A259475.P17510888320188617073

`A361952(n)%A046002(n+1)`
-/

namespace A259475.P17510888320188617073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361952 n) (A046002 (n + 1))

end

end A259475.P17510888320188617073

/-! ## A259475.P17190695796013943678

`A361952(n)+A000007(A322770(n))`
-/

namespace A259475.P17190695796013943678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361952 n + A000007 (A322770 n).toNat

end

end A259475.P17190695796013943678

/-! ## A259475.P13479284076743776866

`A185116(A016802(n))*A361952(n)`
-/

namespace A259475.P13479284076743776866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185116 (A016802 n).toNat * A361952 n

end

end A259475.P13479284076743776866

/-! ## A259475.P6755398745495849527

`A267922(A016826(n))*A361952(n)`
-/

namespace A259475.P6755398745495849527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267922 (A016826 n).toNat * A361952 n

end

end A259475.P6755398745495849527

/-! ## A259475.P2043874306972223095

`A101025(A361950(n))*A361952(n)`
-/

namespace A259475.P2043874306972223095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101025 (A361950 n).toNat * A361952 n

end

end A259475.P2043874306972223095

/-!
# A259477: Triangle of numbers where T(n,k) is the number of k-dimensional faces on a partially truncated n-dimensional simplex, 0 <= k <= n.

The programs for A259477, the canonical program `A259477.P5518667962722059366` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259477 has offset 0).

The definition of A259477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259477.P5518667962722059366

`A135278(n)*A193739(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A259477

/-- `A135278(n)*A193739(n)` -/
def P5518667962722059366.Spec : Prop :=
  ∀ n, P5518667962722059366.a n = A259477 n

theorem P5518667962722059366.correct : P5518667962722059366.Spec := by
  intro n
  simp only [A259477]

end A259477

/-! ## A259477.P2889474473523622730

`A004736(n+1)*A153861(n)`
-/

namespace A259477.P2889474473523622730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A153861 n

end

end A259477.P2889474473523622730

namespace A259477

/-- `A004736(n+1)*A153861(n)` -/
def P2889474473523622730.Spec : Prop :=
  ∀ n, P2889474473523622730.a n = A259477 n

end A259477

/-! ## A259477.P5440146201727488773

`(A025581(n)+1)*A153861(n)`
-/

namespace A259477.P5440146201727488773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A153861 n

end

end A259477.P5440146201727488773

namespace A259477

/-- `(A025581(n)+1)*A153861(n)` -/
def P5440146201727488773.Spec : Prop :=
  ∀ n, P5440146201727488773.a n = A259477 n

end A259477

/-! ## A259477.P14606692330890499237

`A074909(n+1)*A193739(n)`
-/

namespace A259477.P14606692330890499237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A193739 n

end

end A259477.P14606692330890499237

namespace A259477

/-- `A074909(n+1)*A193739(n)` -/
def P14606692330890499237.Spec : Prop :=
  ∀ n, P14606692330890499237.a n = A259477 n

end A259477

/-! ## A259477.P13949466132677146398

`A007318(A014132(n+1))*A193739(n)`
-/

namespace A259477.P13949466132677146398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014132 (n + 1)).toNat * A193739 n

end

end A259477.P13949466132677146398

namespace A259477

/-- `A007318(A014132(n+1))*A193739(n)` -/
def P13949466132677146398.Spec : Prop :=
  ∀ n, P13949466132677146398.a n = A259477 n

end A259477

/-! ## A259477.P14970880934578538350

`A135853(comp[∑[n]])-A135853(n)`
-/

namespace A259477.P14970880934578538350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135853 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A135853 n

end

end A259477.P14970880934578538350

namespace A259477

/-- `A135853(comp[∑[n]])-A135853(n)` -/
def P14970880934578538350.Spec : Prop :=
  ∀ n, P14970880934578538350.a n = A259477 n

end A259477

/-! ## A259477.P18388553759460247269

`A000005(A130321(n))*A153861(n)`
-/

namespace A259477.P18388553759460247269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A153861 n

end

end A259477.P18388553759460247269

namespace A259477

/-- `A000005(A130321(n))*A153861(n)` -/
def P18388553759460247269.Spec : Prop :=
  ∀ n, P18388553759460247269.a n = A259477 n

end A259477

/-!
# A259478: Partition containment triangle.

The programs for A259478, there is no canonical definition to state claims against.
-/

/-! ## A259478.P3020577550877256096

`A323436(3*A036561(n))`
-/

namespace A259478.P3020577550877256096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 (3 * A036561 n).toNat

end

end A259478.P3020577550877256096

/-! ## A259478.P8612019879852360980

`A070939(n*A264560(n+1)+1)`
-/

namespace A259478.P8612019879852360980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 ((n : ℤ) * A264560 (n + 1) + 1).toNat

end

end A259478.P8612019879852360980

/-! ## A259478.P11785402853241902022

`A225639(A080114(n+1))+A131402(n)`
-/

namespace A259478.P11785402853241902022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225639 (A080114 (n + 1)).toNat + A131402 n

end

end A259478.P11785402853241902022

/-! ## A259478.P13065290020709087888

`A003434(A247023(n)+A233217(n+1))`
-/

namespace A259478.P13065290020709087888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A247023 n + A233217 (n + 1)).toNat

end

end A259478.P13065290020709087888

/-! ## A259478.P12245411702592273494

`A070939(A008284(n+1)*A334518(n+1))`
-/

namespace A259478.P12245411702592273494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A008284 (n + 1) * A334518 (n + 1)).toNat

end

end A259478.P12245411702592273494

/-!
# A259479: Skew diagrams, both connected or not.

The programs for A259479, there is no canonical definition to state claims against.
-/

/-! ## A259479.P16978045513333861197

`A238343(n)-A066352(A230915(n+1))`
-/

namespace A259479.P16978045513333861197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 n - A066352 (A230915 (n + 1)).toNat

end

end A259479.P16978045513333861197

/-! ## A259479.P13706419922101642799

`A238343(n)-A232580(A283666(n+1))`
-/

namespace A259479.P13706419922101642799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 n - A232580 (A283666 (n + 1)).toNat

end

end A259479.P13706419922101642799

/-!
# A259480: T(n,m) counts connected skew Ferrers diagrams of shape lambda/mu with lambda and mu partitions of n and m respectively (0<=m<=n).

The programs for A259480, there is no canonical definition to state claims against.
-/

/-! ## A259480.P14988405436890174227

`A195825(n)-A057427(A113081(n))`
-/

namespace A259480.P14988405436890174227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195825 n - A057427 (A113081 n).toNat

end

end A259480.P14988405436890174227

/-! ## A259480.P1743919675111079368

`C(A026794(n+1), A127250(A084938(n)))`
-/

namespace A259480.P1743919675111079368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A026794 (n + 1)).toNat (A127250 (A084938 n).toNat).toNat

end

end A259480.P1743919675111079368

/-! ## A259480.P10749624573757187982

`A004274(A259481(n)^A291149(n))`
-/

namespace A259480.P10749624573757187982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (SequenceMachineLib.roundAway ((A259481 n : ℚ) ^ (A291149 n : ℤ))).toNat

end

end A259480.P10749624573757187982

/-! ## A259480.P11478915331501745706

`A290089(A229708(n+1)^A259481(n))`
-/

namespace A259480.P11478915331501745706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290089 (SequenceMachineLib.roundAway ((A229708 (n + 1) : ℚ) ^ (A259481 n : ℤ))).toNat

end

end A259480.P11478915331501745706

/-! ## A259480.P16108424761290299205

`A008620(A039946(n))%A047227(A010766(n+1))`
-/

namespace A259480.P16108424761290299205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008620 (A039946 n).toNat) (A047227 (A010766 (n + 1)).toNat)

end

end A259480.P16108424761290299205

/-!
# A259481: T(n,m) counts of border strips in skew tabloids of shape lambda/mu, with lambda and mu partitions of n and m (0<=m<=n).

The programs for A259481, there is no canonical definition to state claims against.
-/

/-! ## A259481.P10640531771616297112

`A325458(∑[2*n]%comp[∑[n]])%(n+1)`
-/

namespace A259481.P10640531771616297112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325458 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)) (n + 1 : ℤ)

end

end A259481.P10640531771616297112

/-! ## A259481.P3484349399194293959

`A325458(A038722(n+2))`
-/

namespace A259481.P3484349399194293959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325458 (A038722 (n + 2)).toNat

end

end A259481.P3484349399194293959

/-! ## A259481.P10567314024047324401

`A325458(A061579(n+1)+1)`
-/

namespace A259481.P10567314024047324401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325458 (A061579 (n + 1) + 1).toNat

end

end A259481.P10567314024047324401

/-! ## A259481.P9427646553979197509

`A325458(A028310(∑[2*n]%comp[∑[n]]))`
-/

namespace A259481.P9427646553979197509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325458 (A028310 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

end

end A259481.P9427646553979197509

/-! ## A259481.P9413526715879779131

`A325458(((A000007(n)+n)²+n)%comp[∑[n]])`
-/

namespace A259481.P9413526715879779131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325458 (Int.tmod ((A000007 n + (n : ℤ)) ^ 2 + (n : ℤ)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A259481.P9413526715879779131

/-! ## A259481.P14240697149224680970

`A325458(A061579(n))-A000007(n)`
-/

namespace A259481.P14240697149224680970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325458 (A061579 n).toNat - A000007 n

end

end A259481.P14240697149224680970

/-!
# A259486: a(n) = 3*n^2 - 3*n + 1 + 6*floor((n-1)*(n-2)/6).

The programs for A259486, the canonical program `A259486.P14774602186930355879` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259486 has offset 1).

The definition of A259486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)²-3*(n+1)+1+6*floor(n*(n-1)/6)` (program `A259486.P14774602186930355879`, by `A259486.P14774602186930355879.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259486.P14774602186930355879

`3*(n+1)²-3*(n+1)+1+6*floor(n*(n-1)/6)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259486

/-- `3*(n+1)²-3*(n+1)+1+6*floor(n*(n-1)/6)` -/
def P14774602186930355879.Spec : Prop :=
  ∀ n, P14774602186930355879.a n = A259486 (n + 1)

theorem P14774602186930355879.correct : P14774602186930355879.Spec := by
  intro n
  simp only [A259486, Nat.add_sub_cancel]

end A259486

/-! ## A259486.P4622488002726966789

`or(1, ∑[6*comp[or(3, n)]])`
-/

namespace A259486.P4622488002726966789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259486.P4622488002726966789

namespace A259486

/-- `or(1, ∑[6*comp[or(3, n)]])` -/
def P4622488002726966789.Spec : Prop :=
  ∀ n, (P4622488002726966789.a n : ℤ) = A259486 (n + 1)

end A259486

/-! ## A259486.P11961609906490047675

`∑[A008458(comp[4*n-1])]`
-/

namespace A259486.P11961609906490047675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259486.P11961609906490047675

namespace A259486

/-- `∑[A008458(comp[4*n-1])]` -/
def P11961609906490047675.Spec : Prop :=
  ∀ n, P11961609906490047675.a n = A259486 (n + 1)

end A259486

/-! ## A259486.P62887118349689550

`∑[A004277(A047240(n+1)+2*n)]`
-/

namespace A259486.P62887118349689550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047240 (n + 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259486.P62887118349689550

namespace A259486

/-- `∑[A004277(A047240(n+1)+2*n)]` -/
def P62887118349689550.Spec : Prop :=
  ∀ n, P62887118349689550.a n = A259486 (n + 1)

end A259486

/-! ## A259486.P6074151005575015275

`A016921(∑[comp[or(3, n)]])`
-/

namespace A259486.P6074151005575015275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259486.P6074151005575015275

namespace A259486

/-- `A016921(∑[comp[or(3, n)]])` -/
def P6074151005575015275.Spec : Prop :=
  ∀ n, P6074151005575015275.a n = A259486 (n + 1)

end A259486

/-! ## A259486.P7209011771241025913

`A016921(∑[comp[A004767(n)]])`
-/

namespace A259486.P7209011771241025913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259486.P7209011771241025913

namespace A259486

/-- `A016921(∑[comp[A004767(n)]])` -/
def P7209011771241025913.Spec : Prop :=
  ∀ n, P7209011771241025913.a n = A259486 (n + 1)

end A259486

/-! ## A259486.P16328710270063199121

`A016921(A008748(2*n)-1)`
-/

namespace A259486.P16328710270063199121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A008748 (2 * n) - 1).toNat

end

end A259486.P16328710270063199121

namespace A259486

/-- `A016921(A008748(2*n)-1)` -/
def P16328710270063199121.Spec : Prop :=
  ∀ n, P16328710270063199121.a n = A259486 (n + 1)

end A259486

/-! ## A259486.P1908771868676886064

`A016921(A069905(2*n+1)+A069905(2*n))`
-/

namespace A259486.P1908771868676886064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A069905 (2 * n + 1) + A069905 (2 * n)).toNat

end

end A259486.P1908771868676886064

namespace A259486

/-- `A016921(A069905(2*n+1)+A069905(2*n))` -/
def P1908771868676886064.Spec : Prop :=
  ∀ n, P1908771868676886064.a n = A259486 (n + 1)

end A259486

/-! ## A259486.P16140129101677300224

`A016777(A032765(2*n+1)-(2*n+1))`
-/

namespace A259486.P16140129101677300224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A032765 (2 * n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A259486.P16140129101677300224

namespace A259486

/-- `A016777(A032765(2*n+1)-(2*n+1))` -/
def P16140129101677300224.Spec : Prop :=
  ∀ n, P16140129101677300224.a n = A259486 (n + 1)

end A259486

/-!
# A259488: Positive integers k with prime(k)+2 and prime(prime(k))+2 both prime.

The programs for A259488, the canonical program `A259488.P209394129755622119` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259488 has offset 1).

The definition of A259488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1034 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259488.P209394129755622119

`∩[A029707(n+1), A096477(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A259488

/-- `∩[A029707(n+1), A096477(n+1)]` -/
def P209394129755622119.Spec : Prop :=
  ∀ n, (P209394129755622119.a n : ℤ) = A259488 (n + 1)

theorem P209394129755622119.correct : P209394129755622119.Spec := by
  intro n
  simp only [A259488, Nat.add_sub_cancel]

end A259488

/-! ## A259488.P13866058674774621911

`A000720(A236458(n+1))`
-/

namespace A259488.P13866058674774621911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A236458 (n + 1)).toNat

end

end A259488.P13866058674774621911

namespace A259488

/-- `A000720(A236458(n+1))` -/
def P13866058674774621911.Spec : Prop :=
  ∀ n, P13866058674774621911.a n = A259488 (n + 1)

end A259488

/-! ## A259488.P18429715325067391462

`record[A061395(A067062(n+1))]`
-/

namespace A259488.P18429715325067391462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A067062 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259488.P18429715325067391462

namespace A259488

/-- `record[A061395(A067062(n+1))]` -/
def P18429715325067391462.Spec : Prop :=
  ∀ n, P18429715325067391462.a n = A259488 (n + 1)

end A259488

/-! ## A259488.P17792452282805144739

`A000720(p?[A067062(n+1)])`
-/

namespace A259488.P17792452282805144739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A259488.P17792452282805144739

namespace A259488

/-- `A000720(p?[A067062(n+1)])` -/
def P17792452282805144739.Spec : Prop :=
  ∀ n, P17792452282805144739.a n = A259488 (n + 1)

end A259488

/-! ## A259488.P17040109413951270149

`A061395(p?[A067062(n+1)])`
-/

namespace A259488.P17040109413951270149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A259488.P17040109413951270149

namespace A259488

/-- `A061395(p?[A067062(n+1)])` -/
def P17040109413951270149.Spec : Prop :=
  ∀ n, P17040109413951270149.a n = A259488 (n + 1)

end A259488

/-! ## A259488.P11891986516508221504

`A061395(or(1, A236458(n+1)))`
-/

namespace A259488.P11891986516508221504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A236458 (n + 1))).toNat

end

end A259488.P11891986516508221504

namespace A259488

/-- `A061395(or(1, A236458(n+1)))` -/
def P11891986516508221504.Spec : Prop :=
  ∀ n, P11891986516508221504.a n = A259488 (n + 1)

end A259488

/-! ## A259488.P3314290824500323449

`∑{d}[A236458(n+1), A061395(#)]`
-/

namespace A259488.P3314290824500323449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A259488.P3314290824500323449

namespace A259488

/-- `∑{d}[A236458(n+1), A061395(#)]` -/
def P3314290824500323449.Spec : Prop :=
  ∀ n, P3314290824500323449.a n = A259488 (n + 1)

end A259488

/-! ## A259488.P8516891994250249223

`A061395(A236458(n+1))%A016826(n)`
-/

namespace A259488.P8516891994250249223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A236458 (n + 1)).toNat) (A016826 n)

end

end A259488.P8516891994250249223

namespace A259488

/-- `A061395(A236458(n+1))%A016826(n)` -/
def P8516891994250249223.Spec : Prop :=
  ∀ n, P8516891994250249223.a n = A259488 (n + 1)

end A259488

/-! ## A259488.P16473767740554345549

`A061395(A236458(n+1)%A158410(n+1))`
-/

namespace A259488.P16473767740554345549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A236458 (n + 1)) (A158410 (n + 1))).toNat

end

end A259488.P16473767740554345549

namespace A259488

/-- `A061395(A236458(n+1)%A158410(n+1))` -/
def P16473767740554345549.Spec : Prop :=
  ∀ n, P16473767740554345549.a n = A259488 (n + 1)

end A259488

/-!
# A259490: Numbers k such that the denominator of the k-th convergent of the continued fraction expansion of Pi is prime.

The programs for A259490, there is no canonical definition to state claims against.
-/

/-! ## A259490.P7492476546575466814

`A258037(∏[n!])+n²+1+n`
-/

namespace A259490.P7492476546575466814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258037 (∏ j ∈ Finset.range (n + 1), f1 j) + (n ^ 2 + 1 + n : ℤ)

end

end A259490.P7492476546575466814

/-!
# A259493: Number of n-digit semiprimes whose prime factors concatenated larger to the right of smaller form an n-digit prime (in decimal).

The programs for A259493, there is no canonical definition to state claims against.
-/

/-! ## A259493.P17438987776891328196

`A194241(A127628(n))-A001057(n)`
-/

namespace A259493.P17438987776891328196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194241 (A127628 n).toNat - A001057 n

end

end A259493.P17438987776891328196

/-!
# A259495: Numbers k such that sigma(k) + phi(k) + d(k) = sigma(k+1) + phi(k+1) + d(k+1), where sigma(k) is the sum of the divisors of k, phi(k) the Euler totient function of k and d(k) the number of divisors of k.

The programs for A259495, there is no canonical definition to state claims against.
-/

/-! ## A259495.P3753504130536254624

`A244438(n+2)%A235035(A244438(n+1))`
-/

namespace A259495.P3753504130536254624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244438 (n + 2)) (A235035 (A244438 (n + 1)).toNat)

end

end A259495.P3753504130536254624

/-!
# A259496: Numbers n such that phi(n) + d(n) = phi(n+1) + d(n+1), where phi(n) is the Euler totient function of n and d(n) the number of divisors of n.

The programs for A259496, there is no canonical definition to state claims against.
-/

/-! ## A259496.P6599506741453938917

`filter[A066219(n+1), A120532(#)]`
-/

namespace A259496.P6599506741453938917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120532 (f1 j).toNat = 1) n)

end

end A259496.P6599506741453938917

/-!
# A259497: a(n) = number of steps before A055641(num(i)) = 0, when num(i) = num(i-1) + A055641(num(i-1)) and num(0) = 10^n, where A055641(n) is the number of zero digits in n.

The programs for A259497, there is no canonical definition to state claims against.
-/

/-! ## A259497.P5193333718331681800

`A214673(5*a(n-1))` with `a(0)=1`
-/

namespace A259497.P5193333718331681800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214673 (5 * a (n - 1)).toNat

end

end A259497.P5193333718331681800

