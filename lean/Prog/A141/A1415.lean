import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
# A141500: A triangular sequence of coefficients based on a skip prime prime power sequence: t(n,m)=Prime[m + 1]^n*Prime[m + 3]; qualified so the m=0 and n=0 terms are well-defined.

The programs for A141500, there is no canonical definition to state claims against.
-/

/-! ## A141500.P2449858579333124602

`floor(∑[sqrt(A031437(2*n))])`
-/

namespace A141500.P2449858579333124602
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A031437 (2 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A141500.P2449858579333124602

/-! ## A141500.P12087144660995585764

`A057142(∏[∏[A095149(n)]])+n`
-/

namespace A141500.P12087144660995585764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A141500.P12087144660995585764

/-! ## A141500.P17946297761290471996

`A057142(∏[∏[A153206(n)]])+n`
-/

namespace A141500.P17946297761290471996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A141500.P17946297761290471996

/-! ## A141500.P796030126179966146

`A056239(A320173(n+1)+A003470(n))`
-/

namespace A141500.P796030126179966146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A320173 (n + 1) + A003470 n).toNat

end

end A141500.P796030126179966146

/-!
# A141501: a(n) is smallest integer for which the number of integers from 1 to a(n) that are not divisors of n is greater than the number of integers from 1 to a(n) that are divisors of n.

The programs for A141501, there is no canonical definition to state claims against.
-/

/-! ## A141501.P11685238942334888451

`A114567(A034729(n+1))`
-/

namespace A141501.P11685238942334888451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114567 (A034729 (n + 1)).toNat

end

end A141501.P11685238942334888451

/-!
# A141504: Number of n X n binary matrices, symmetric under horizontal and vertical reflection, with no more than 2 ones in any 2 X 2 subblock.

The programs for A141504, there is no canonical definition to state claims against.
-/

/-! ## A141504.P13375486818078132972

`A027750(A023393(n)^3+n+1)`
-/

namespace A141504.P13375486818078132972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A023393 n ^ 3 + (n + 1 : ℤ)).toNat

end

end A141504.P13375486818078132972

/-! ## A141504.P18425858893465458469

`A290103(A208914(2*n+1)+n^n)`
-/

namespace A141504.P18425858893465458469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A208914 (2 * n + 1) + (n ^ n : ℤ)).toNat

end

end A141504.P18425858893465458469

/-!
# A141505: Number of n X n binary matrices, symmetric about both diagonal and antidiagonal, with no more than 2 ones in any 2 X 2 subblock.

The programs for A141505, there is no canonical definition to state claims against.
-/

/-! ## A141505.P12406105277482486835

`A238790(A038754(n)+n)`
-/

namespace A141505.P12406105277482486835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238790 (A038754 n + (n : ℤ)).toNat

end

end A141505.P12406105277482486835

/-! ## A141505.P587898684804999328

`A238790(A062318(n+1)+1+n)`
-/

namespace A141505.P587898684804999328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238790 (A062318 (n + 1) + 1 + (n : ℤ)).toNat

end

end A141505.P587898684804999328

/-! ## A141505.P7401912195317424442

`A327072(n)+A218585(A155588(n))`
-/

namespace A141505.P7401912195317424442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327072 n + A218585 (A155588 n).toNat

end

end A141505.P7401912195317424442

/-!
# A141508: Number of n X n binary matrices, symmetric under 180 degree rotation, with no more than 2 ones in any 2 X 2 subblock.

The programs for A141508, there is no canonical definition to state claims against.
-/

/-! ## A141508.P7172253396092387256

`A276633(A276629(n+1))-A082066(n+1)`
-/

namespace A141508.P7172253396092387256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276633 (A276629 (n + 1)).toNat - A082066 (n + 1)

end

end A141508.P7172253396092387256

/-! ## A141508.P17614628429085344662

`A075177(A000009(A000040(A000009(2*n+1))))`
-/

namespace A141508.P17614628429085344662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (A000009 (A000040 (A000009 (2 * n + 1)).toNat).toNat).toNat

end

end A141508.P17614628429085344662

/-!
# A141509: Number of n X n binary matrices, symmetric under horizontal reflection, with no more than 3 ones in any 2 X 2 subblock.

The programs for A141509, there is no canonical definition to state claims against.
-/

/-! ## A141509.P17054803647256805981

`ceil(∑[A297624(n+1)/4])`
-/

namespace A141509.P17054803647256805981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297624 (n + 1) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A141509.P17054803647256805981

/-!
# A141510: Number of n X n binary matrices, symmetric under horizontal and vertical reflection, with no more than 3 ones in any 2 X 2 subblock.

The programs for A141510, there is no canonical definition to state claims against.
-/

/-! ## A141510.P9625204093431100668

`A350844(A000120(n)*A053638(n+2))`
-/

namespace A141510.P9625204093431100668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350844 (A000120 n * A053638 (n + 2)).toNat

end

end A141510.P9625204093431100668

/-!
# A141511: Number of n X n binary matrices, symmetric about both diagonal and antidiagonal, with no more than 3 ones in any 2 X 2 subblock.

The programs for A141511, there is no canonical definition to state claims against.
-/

/-! ## A141511.P17273114930596094415

`A100919(A204516(n+2))`
-/

namespace A141511.P17273114930596094415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100919 (A204516 (n + 2)).toNat

end

end A141511.P17273114930596094415

/-! ## A141511.P12416753491162687761

`record[A126759(Δ[A247584(n)])]`
-/

namespace A141511.P12416753491162687761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247584 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141511.P12416753491162687761

/-!
# A141513: Number of n X n binary matrices, symmetric under 90-degree rotation, with no more than 3 ones in any 2 X 2 subblock.

The programs for A141513, there is no canonical definition to state claims against.
-/

/-! ## A141513.P7520798592839087418

`A001068((a(n-1)+1)²)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=7, a(4)=8`
-/

namespace A141513.P7520798592839087418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 7, 8] fun n a =>
  A001068 ((a (n - 1) + 1) ^ 2).toNat

end

end A141513.P7520798592839087418

/-! ## A141513.P10760056263953925823

`A130517(A362080(n)+n)`
-/

namespace A141513.P10760056263953925823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A362080 n + (n : ℤ)).toNat

end

end A141513.P10760056263953925823

/-!
# A141514: Number of n X n binary matrices, symmetric under 180 degree rotation, with no more than 3 ones in any 2 X 2 subblock.

The programs for A141514, there is no canonical definition to state claims against.
-/

/-! ## A141514.P16863376438397905513

`∑{d}[∑[2^n], A141760(#)]`
-/

namespace A141514.P16863376438397905513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A141760 d

end

end A141514.P16863376438397905513

/-!
# A141515: a(n) = phi(A067774(n)) where phi is Euler totient function.

The programs for A141515, the canonical program `A141515.P7322677319686946413` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141515 has offset 1).

The definition of A141515 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067774, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141515.P7322677319686946413

`A000010(A067774(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A141515

/-- `A000010(A067774(n+1))` -/
def P7322677319686946413.Spec : Prop :=
  ∀ n, P7322677319686946413.a n = A141515 (n + 1)

theorem P7322677319686946413.correct : P7322677319686946413.Spec := by
  intro n
  simp only [A141515, Nat.add_sub_cancel]

end A141515

/-! ## A141515.P13295544373704182203

`A107986(n+1)-3`
-/

namespace A141515.P13295544373704182203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 1) - 3

end

end A141515.P13295544373704182203

namespace A141515

/-- `A107986(n+1)-3` -/
def P13295544373704182203.Spec : Prop :=
  ∀ n, P13295544373704182203.a n = A141515 (n + 1)

end A141515

/-! ## A141515.P14220279695539741171

`∪[A002476(n+1), A007510(n+1)]-1`
-/

namespace A141515.P14220279695539741171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A141515.P14220279695539741171

namespace A141515

/-- `∪[A002476(n+1), A007510(n+1)]-1` -/
def P14220279695539741171.Spec : Prop :=
  ∀ n, P14220279695539741171.a n = A141515 (n + 1)

end A141515

/-! ## A141515.P918262795597412414

`p?[A100317(n+1)-1]-1`
-/

namespace A141515.P918262795597412414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141515.P918262795597412414

namespace A141515

/-- `p?[A100317(n+1)-1]-1` -/
def P918262795597412414.Spec : Prop :=
  ∀ n, P918262795597412414.a n = A141515 (n + 1)

end A141515

/-! ## A141515.P17913751313485288018

`record[A000010(A100317(n+2)-1)]`
-/

namespace A141515.P17913751313485288018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A100317 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141515.P17913751313485288018

namespace A141515

/-- `record[A000010(A100317(n+2)-1)]` -/
def P17913751313485288018.Spec : Prop :=
  ∀ n, P17913751313485288018.a n = A141515 (n + 1)

end A141515

/-! ## A141515.P349305966187106824

`A000010(A100317(2*(n+1))-1)`
-/

namespace A141515.P349305966187106824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A100317 (2 * (n + 1)) - 1).toNat

end

end A141515.P349305966187106824

namespace A141515

/-- `A000010(A100317(2*(n+1))-1)` -/
def P349305966187106824.Spec : Prop :=
  ∀ n, P349305966187106824.a n = A141515 (n + 1)

end A141515

/-! ## A141515.P15610499519587134172

`A100317(2*(n+1))-A052410(A061142(n+1))`
-/

namespace A141515.P15610499519587134172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (2 * (n + 1)) - A052410 (A061142 (n + 1)).toNat

end

end A141515.P15610499519587134172

namespace A141515

/-- `A100317(2*(n+1))-A052410(A061142(n+1))` -/
def P15610499519587134172.Spec : Prop :=
  ∀ n, P15610499519587134172.a n = A141515 (n + 1)

end A141515

/-! ## A141515.P11714709045249296511

`comp[n-2*A010051(n+1)]`
-/

namespace A141515.P11714709045249296511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A010051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A141515.P11714709045249296511

namespace A141515

/-- `comp[n-2*A010051(n+1)]` -/
def P11714709045249296511.Spec : Prop :=
  ∀ n, (P11714709045249296511.a n : ℤ) = A141515 (n + 1)

end A141515

/-! ## A141515.P4199889846111582633

`lt[A010051(n+3), A010051(n+1)]`
-/

namespace A141515.P4199889846111582633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141515.P4199889846111582633

namespace A141515

/-- `lt[A010051(n+3), A010051(n+1)]` -/
def P4199889846111582633.Spec : Prop :=
  ∀ n, (P4199889846111582633.a n : ℤ) = A141515 (n + 1)

end A141515

/-! ## A141515.P13696552859041327796

`record[A020482(A016789(n))-1]`
-/

namespace A141515.P13696552859041327796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A016789 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141515.P13696552859041327796

namespace A141515

/-- `record[A020482(A016789(n))-1]` -/
def P13696552859041327796.Spec : Prop :=
  ∀ n, P13696552859041327796.a n = A141515 (n + 1)

end A141515

/-! ## A141515.P7357438995274253779

`record[A000010(A020482(3*n+2))]`
-/

namespace A141515.P7357438995274253779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A020482 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141515.P7357438995274253779

namespace A141515

/-- `record[A000010(A020482(3*n+2))]` -/
def P7357438995274253779.Spec : Prop :=
  ∀ n, P7357438995274253779.a n = A141515 (n + 1)

end A141515

/-! ## A141515.P10738240258397599346

`p?[A264720(n+1)-1]-1`
-/

namespace A141515.P10738240258397599346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141515.P10738240258397599346

namespace A141515

/-- `p?[A264720(n+1)-1]-1` -/
def P10738240258397599346.Spec : Prop :=
  ∀ n, P10738240258397599346.a n = A141515 (n + 1)

end A141515

/-! ## A141515.P8935349215439306497

`p?[A002808(n+1)-2]-1`
-/

namespace A141515.P8935349215439306497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141515.P8935349215439306497

namespace A141515

/-- `p?[A002808(n+1)-2]-1` -/
def P8935349215439306497.Spec : Prop :=
  ∀ n, P8935349215439306497.a n = A141515 (n + 1)

end A141515

/-! ## A141515.P3372009271785717841

`p?[A018252(n+1)-2]-1`
-/

namespace A141515.P3372009271785717841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141515.P3372009271785717841

namespace A141515

/-- `p?[A018252(n+1)-2]-1` -/
def P3372009271785717841.Spec : Prop :=
  ∀ n, P3372009271785717841.a n = A141515 (n + 1)

end A141515

/-! ## A141515.P7590024638372837839

`p?[A141468(n+1)-2]-1`
-/

namespace A141515.P7590024638372837839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141515.P7590024638372837839

namespace A141515

/-- `p?[A141468(n+1)-2]-1` -/
def P7590024638372837839.Spec : Prop :=
  ∀ n, P7590024638372837839.a n = A141515 (n + 1)

end A141515

/-! ## A141515.P10977061988735868250

`A000010(p?[A018252(n+1)-2])`
-/

namespace A141515.P10977061988735868250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141515.P10977061988735868250

namespace A141515

/-- `A000010(p?[A018252(n+1)-2])` -/
def P10977061988735868250.Spec : Prop :=
  ∀ n, P10977061988735868250.a n = A141515 (n + 1)

end A141515

/-! ## A141515.P14742825602606067343

`A033879(p?[A018252(n+1)-2])`
-/

namespace A141515.P14742825602606067343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141515.P14742825602606067343

namespace A141515

/-- `A033879(p?[A018252(n+1)-2])` -/
def P14742825602606067343.Spec : Prop :=
  ∀ n, P14742825602606067343.a n = A141515 (n + 1)

end A141515

/-! ## A141515.P15812101874109367011

`A000010(p?[A141468(n+1)-2])`
-/

namespace A141515.P15812101874109367011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141515.P15812101874109367011

namespace A141515

/-- `A000010(p?[A141468(n+1)-2])` -/
def P15812101874109367011.Spec : Prop :=
  ∀ n, P15812101874109367011.a n = A141515 (n + 1)

end A141515

/-! ## A141515.P8784713213814271997

`record[A326129(A018252(n+2)-2)]`
-/

namespace A141515.P8784713213814271997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326129 (A018252 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141515.P8784713213814271997

namespace A141515

/-- `record[A326129(A018252(n+2)-2)]` -/
def P8784713213814271997.Spec : Prop :=
  ∀ n, P8784713213814271997.a n = A141515 (n + 1)

end A141515

/-!
# A141517: A141498(n)/A027760(n).

The programs for A141517, the canonical program `A141517.P8902521936123961455` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141517 has offset 1).

The definition of A141517 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027760, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141517.P8902521936123961455

`A141498(n+1)/A027760(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A141517

/-- `A141498(n+1)/A027760(n+1)` -/
def P8902521936123961455.Spec : Prop :=
  ∀ n, P8902521936123961455.a n = (A141517 (n + 1) : ℚ)

end A141517

/-! ## A141517.P1544115970654412224

`(n%2+2)!*A086892(n+1)/A027760(n+1)`
-/

namespace A141517.P1544115970654412224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n % 2 + 2) : ℤ) * A086892 (n + 1) : ℚ) / (A027760 (n + 1) : ℚ)

end

end A141517.P1544115970654412224

namespace A141517

/-- `(n%2+2)!*A086892(n+1)/A027760(n+1)` -/
def P1544115970654412224.Spec : Prop :=
  ∀ n, P1544115970654412224.a n = (A141517 (n + 1) : ℚ)

end A141517

/-! ## A141517.P3845813432534187497

`A086892(n+1)/A027760(n+1)*A010696(n)`
-/

namespace A141517.P3845813432534187497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086892 (n + 1) : ℚ) / (A027760 (n + 1) : ℚ) * (A010696 n : ℚ)

end

end A141517.P3845813432534187497

namespace A141517

/-- `A086892(n+1)/A027760(n+1)*A010696(n)` -/
def P3845813432534187497.Spec : Prop :=
  ∀ n, P3845813432534187497.a n = (A141517 (n + 1) : ℚ)

end A141517

/-! ## A141517.P15130586598602162391

`lcm(A010696(n²), A086892(n+1))/A027760(n+1)`
-/

namespace A141517.P15130586598602162391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A010696 (n ^ 2)) (A086892 (n + 1)) : ℚ) / (A027760 (n + 1) : ℚ)

end

end A141517.P15130586598602162391

namespace A141517

/-- `lcm(A010696(n²), A086892(n+1))/A027760(n+1)` -/
def P15130586598602162391.Spec : Prop :=
  ∀ n, P15130586598602162391.a n = (A141517 (n + 1) : ℚ)

end A141517

/-! ## A141517.P17365027905138962735

`2*A086892(n+1)*A010684(n)/A027760(n+1)`
-/

namespace A141517.P17365027905138962735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A086892 (n + 1) * A010684 n : ℚ) / (A027760 (n + 1) : ℚ)

end

end A141517.P17365027905138962735

namespace A141517

/-- `2*A086892(n+1)*A010684(n)/A027760(n+1)` -/
def P17365027905138962735.Spec : Prop :=
  ∀ n, P17365027905138962735.a n = (A141517 (n + 1) : ℚ)

end A141517

/-! ## A141517.P1984942060790202177

`A086892(n+1)/gcd(A086892(n+1), A260119(n+1))`
-/

namespace A141517.P1984942060790202177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086892 (n + 1) : ℚ) / (Int.gcd (A086892 (n + 1)) (A260119 (n + 1)) : ℚ)

end

end A141517.P1984942060790202177

namespace A141517

/-- `A086892(n+1)/gcd(A086892(n+1), A260119(n+1))` -/
def P1984942060790202177.Spec : Prop :=
  ∀ n, P1984942060790202177.a n = (A141517 (n + 1) : ℚ)

end A141517

/-! ## A141517.P9667778500635106752

`A086892(n+1)*A131800(2*n+1)/A027760(n+1)`
-/

namespace A141517.P9667778500635106752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086892 (n + 1) * A131800 (2 * n + 1) : ℚ) / (A027760 (n + 1) : ℚ)

end

end A141517.P9667778500635106752

namespace A141517

/-- `A086892(n+1)*A131800(2*n+1)/A027760(n+1)` -/
def P9667778500635106752.Spec : Prop :=
  ∀ n, P9667778500635106752.a n = (A141517 (n + 1) : ℚ)

end A141517

/-!
# A141518: Period 5: repeat [1, 3, 5, 7, 9].

The programs for A141518, the canonical program `A141518.P11748609387850186145` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141518 has offset 0).

The definition of A141518 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A141518.anchor (n : ℕ) : A141518 n = (([1, 3, 5, 7, 9].getD (n % 5) 0 : ℕ) : ℤ)` in `Proof.A141.A141518`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141518.P11748609387850186145

`1+2*n%5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141518

/-- `1+2*n%5` -/
def P11748609387850186145.Spec : Prop :=
  ∀ n, (P11748609387850186145.a n : ℤ) = A141518 n

theorem P11748609387850186145.correct : P11748609387850186145.Spec := by
  intro n
  simp only [A141518]

end A141518

/-!
# A141519: Period 10: repeat [-1, 1, -3, 7, -5, 3, -7, 9, -9, 5].

The programs for A141519, the canonical program `A141519.P1085458204072581816` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141519 has offset 0).

The definition of A141519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141519.P1085458204072581816

`Δ[A000567(xor(1, n))]%10`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141519

/-- `Δ[A000567(xor(1, n))]%10` -/
def P1085458204072581816.Spec : Prop :=
  ∀ n, P1085458204072581816.a n = A141519 n

theorem P1085458204072581816.correct : P1085458204072581816.Spec := by
  intro n
  simp only [A141519]

end A141519

/-!
# A141520: a(1) = 0, a(2) = a(3) = 1; a(n) = a(n-1)*a(n-2) + a(n-2)*a(n-3) for n > 3.

The programs for A141520, the canonical program `A141520.P17596857060299975752` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141520 has offset 1).

The definition of A141520 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+a(n-2)*a(n-3)` (program `A141520.P17596857060299975752`, by `A141520.P17596857060299975752.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141520.P17596857060299975752

`a(n-1)*a(n-2)+a(n-2)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141520

/-- `a(n-1)*a(n-2)+a(n-2)*a(n-3)` -/
def P17596857060299975752.Spec : Prop :=
  ∀ n, (P17596857060299975752.a n : ℤ) = A141520 (n + 1)

theorem P17596857060299975752.correct : P17596857060299975752.Spec := by
  intro n
  simp only [A141520, Nat.add_sub_cancel]

end A141520

/-! ## A141520.P6034600836867171848

`(a(n-1)+a(n-3))*a(n-2)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A141520.P6034600836867171848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  (a (n - 1) + a (n - 3)) * a (n - 2)

end

end A141520.P6034600836867171848

namespace A141520

/-- `(a(n-1)+a(n-3))*a(n-2)` -/
def P6034600836867171848.Spec : Prop :=
  ∀ n, (P6034600836867171848.a n : ℤ) = A141520 (n + 1)

end A141520

/-! ## A141520.P8321354341083198261

`(a(n-1)+a(n-3))/a(n-2)^(-1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A141520.P8321354341083198261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  (a (n - 1) + a (n - 3)) / a (n - 2) ^ (-1 : ℤ)

end

end A141520.P8321354341083198261

namespace A141520

/-- `(a(n-1)+a(n-3))/a(n-2)^(-1)` -/
def P8321354341083198261.Spec : Prop :=
  ∀ n, P8321354341083198261.a n = (A141520 (n + 1) : ℚ)

end A141520

/-! ## A141520.P7226435237634511035

`(a(n-1)-floor(-a(n-3)))*a(n-2)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A141520.P7226435237634511035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  (a (n - 1) - (-a (n - 3))) * a (n - 2)

end

end A141520.P7226435237634511035

namespace A141520

/-- `(a(n-1)-floor(-a(n-3)))*a(n-2)` -/
def P7226435237634511035.Spec : Prop :=
  ∀ n, P7226435237634511035.a n = A141520 (n + 1)

end A141520

/-! ## A141520.P12392889410916014571

`(a(n-1)-ceil(-a(n-3)))*a(n-2)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A141520.P12392889410916014571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  (a (n - 1) - (-a (n - 3))) * a (n - 2)

end

end A141520.P12392889410916014571

namespace A141520

/-- `(a(n-1)-ceil(-a(n-3)))*a(n-2)` -/
def P12392889410916014571.Spec : Prop :=
  ∀ n, P12392889410916014571.a n = A141520 (n + 1)

end A141520

/-!
# A141521: Primes with a prime number of digits, all of which are distinct primes.

The programs for A141521, there is no canonical definition to state claims against.
-/

/-! ## A141521.P13298181877171540672

`A124674(n+5)`
-/

namespace A141521.P13298181877171540672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124674 (n + 5)

end

end A141521.P13298181877171540672

/-!
# A141522: a(1) = 0, a(2) = a(3) = 1; a(n) = a(n-1)*a(n-2) + a(n-1)*a(n-3) for n > 3.

The programs for A141522, the canonical program `A141522.P4713986315062293381` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141522 has offset 1).

The definition of A141522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+a(n-1)*a(n-3)` (program `A141522.P4713986315062293381`, by `A141522.P4713986315062293381.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141522.P4713986315062293381

`a(n-1)*a(n-2)+a(n-1)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141522

/-- `a(n-1)*a(n-2)+a(n-1)*a(n-3)` -/
def P4713986315062293381.Spec : Prop :=
  ∀ n, (P4713986315062293381.a n : ℤ) = A141522 (n + 1)

theorem P4713986315062293381.correct : P4713986315062293381.Spec := by
  intro n
  simp only [A141522, Nat.add_sub_cancel]

end A141522

/-! ## A141522.P12116912995135002331

`(a(n-2)+a(n-3))*a(n-1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A141522.P12116912995135002331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  (a (n - 2) + a (n - 3)) * a (n - 1)

end

end A141522.P12116912995135002331

namespace A141522

/-- `(a(n-2)+a(n-3))*a(n-1)` -/
def P12116912995135002331.Spec : Prop :=
  ∀ n, (P12116912995135002331.a n : ℤ) = A141522 (n + 1)

end A141522

/-! ## A141522.P3734855748011999260

`(a(n-2)-floor(-a(n-3)))*a(n-1)` with `a(0)=0, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A141522.P3734855748011999260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  (a (n - 2) - (-a (n - 3))) * a (n - 1)

end

end A141522.P3734855748011999260

namespace A141522

/-- `(a(n-2)-floor(-a(n-3)))*a(n-1)` -/
def P3734855748011999260.Spec : Prop :=
  ∀ n, P3734855748011999260.a n = A141522 (n + 1)

end A141522

/-! ## A141522.P3057065588978130955

`a(n-1)/(a(n-2)+a(n-3))^(-1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A141522.P3057065588978130955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 1) / (a (n - 2) + a (n - 3)) ^ (-1 : ℤ)

end

end A141522.P3057065588978130955

namespace A141522

/-- `a(n-1)/(a(n-2)+a(n-3))^(-1)` -/
def P3057065588978130955.Spec : Prop :=
  ∀ n, P3057065588978130955.a n = (A141522 (n + 1) : ℚ)

end A141522

/-! ## A141522.P7272620653888413472

`A352488(2*a(n-1)-a(n-4))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A141522.P7272620653888413472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 2] fun n a =>
  A352488 (2 * a (n - 1) - a (n - 4)).toNat

end

end A141522.P7272620653888413472

namespace A141522

/-- `A352488(2*a(n-1)-a(n-4))` -/
def P7272620653888413472.Spec : Prop :=
  ∀ n, P7272620653888413472.a n = A141522 (n + 1)

end A141522

/-!
# A141523: Expansion of (3-2*x-3*x^2)/(1-x-x^2-x^3).

The programs for A141523, the canonical program `A141523.P4161493871090751566` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141523 has offset 0).

The definition of A141523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3-2x-3x^2)/(1-x-x^2-x^3))` (program `A141523.P4161493871090751566`, by `A141523.P4161493871090751566.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141523.P4161493871090751566

`ogf((3-2x-3x^2)/(1-x-x^2-x^3))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141523

/-- `ogf((3-2x-3x^2)/(1-x-x^2-x^3))` -/
def P4161493871090751566.Spec : Prop :=
  ∀ n, P4161493871090751566.a n = A141523 n

theorem P4161493871090751566.correct : P4161493871090751566.Spec := by
  intro n
  simp only [A141523]

end A141523

/-! ## A141523.P13632311774567877665

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=3, a(1)=1, a(2)=1`
-/

namespace A141523.P13632311774567877665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3)

end

end A141523.P13632311774567877665

namespace A141523

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P13632311774567877665.Spec : Prop :=
  ∀ n, (P13632311774567877665.a n : ℤ) = A141523 n

end A141523

/-! ## A141523.P4089891196114838698

`A001644(n)-2*A000073(n)`
-/

namespace A141523.P4089891196114838698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n - 2 * A000073 n

end

end A141523.P4089891196114838698

namespace A141523

/-- `A001644(n)-2*A000073(n)` -/
def P4089891196114838698.Spec : Prop :=
  ∀ n, P4089891196114838698.a n = A141523 n

end A141523

/-! ## A141523.P16189989634870988689

`2*a(n-1)-a(n-4)` with `a(0)=3, a(1)=1, a(2)=1, a(3)=5`
-/

namespace A141523.P16189989634870988689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 1, 5] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A141523.P16189989634870988689

namespace A141523

/-- `2*a(n-1)-a(n-4)` -/
def P16189989634870988689.Spec : Prop :=
  ∀ n, P16189989634870988689.a n = A141523 n

end A141523

/-! ## A141523.P2919634576955553287

`a(n-1)-(a(n-4)-a(n-1))` with `a(0)=3, a(1)=1, a(2)=1, a(3)=5`
-/

namespace A141523.P2919634576955553287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 1, 5] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1))

end

end A141523.P2919634576955553287

namespace A141523

/-- `a(n-1)-(a(n-4)-a(n-1))` -/
def P2919634576955553287.Spec : Prop :=
  ∀ n, P2919634576955553287.a n = A141523 n

end A141523

/-! ## A141523.P2889427374185765906

`A081172(n)+A141036(n)-A001590(n)`
-/

namespace A141523.P2889427374185765906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + (A141036 n - A001590 n)

end

end A141523.P2889427374185765906

namespace A141523

/-- `A081172(n)+A141036(n)-A001590(n)` -/
def P2889427374185765906.Spec : Prop :=
  ∀ n, P2889427374185765906.a n = A141523 n

end A141523

/-! ## A141523.P2316556272595943565

`A141036(n)+A141036(n)-A000213(n)`
-/

namespace A141523.P2316556272595943565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n + (A141036 n - A000213 n)

end

end A141523.P2316556272595943565

namespace A141523

/-- `A141036(n)+A141036(n)-A000213(n)` -/
def P2316556272595943565.Spec : Prop :=
  ∀ n, P2316556272595943565.a n = A141523 n

end A141523

/-! ## A141523.P2689293336560385887

`A001590(n+1)+A141036(n)-A000073(n)`
-/

namespace A141523.P2689293336560385887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) + (A141036 n - A000073 n)

end

end A141523.P2689293336560385887

namespace A141523

/-- `A001590(n+1)+A141036(n)-A000073(n)` -/
def P2689293336560385887.Spec : Prop :=
  ∀ n, P2689293336560385887.a n = A141523 n

end A141523

/-! ## A141523.P12350617561411204194

`A214899(n)+A214899(n)-A000213(n+1)`
-/

namespace A141523.P12350617561411204194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n + (A214899 n - A000213 (n + 1))

end

end A141523.P12350617561411204194

namespace A141523

/-- `A214899(n)+A214899(n)-A000213(n+1)` -/
def P12350617561411204194.Spec : Prop :=
  ∀ n, P12350617561411204194.a n = A141523 n

end A141523

/-! ## A141523.P6564298139106547161

`2*A020992(n)-a(n-1)` with `a(0)=3`
-/

namespace A141523.P6564298139106547161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * A020992 n - a (n - 1)

end

end A141523.P6564298139106547161

namespace A141523

/-- `2*A020992(n)-a(n-1)` -/
def P6564298139106547161.Spec : Prop :=
  ∀ n, P6564298139106547161.a n = A141523 n

end A141523

/-! ## A141523.P11619784251214198393

`A001644(n)-A354784(n)`
-/

namespace A141523.P11619784251214198393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n - A354784 n

end

end A141523.P11619784251214198393

namespace A141523

/-- `A001644(n)-A354784(n)` -/
def P11619784251214198393.Spec : Prop :=
  ∀ n, P11619784251214198393.a n = A141523 n

end A141523

/-! ## A141523.P17661505490282309559

`A001644(n)-Δ[A000213(n)]`
-/

namespace A141523.P17661505490282309559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n - (f1 (n + 1) - f1 n)

end

end A141523.P17661505490282309559

namespace A141523

/-- `A001644(n)-Δ[A000213(n)]` -/
def P17661505490282309559.Spec : Prop :=
  ∀ n, P17661505490282309559.a n = A141523 n

end A141523

/-! ## A141523.P2666182111110168059

`2*A141036(n)-A000213(n)`
-/

namespace A141523.P2666182111110168059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141036 n - A000213 n

end

end A141523.P2666182111110168059

namespace A141523

/-- `2*A141036(n)-A000213(n)` -/
def P2666182111110168059.Spec : Prop :=
  ∀ n, P2666182111110168059.a n = A141523 n

end A141523

/-! ## A141523.P18192437334011530369

`A001590(n)+A001644(n)-record[A001590(n)]`
-/

namespace A141523.P18192437334011530369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + (A001644 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A141523.P18192437334011530369

namespace A141523

/-- `A001590(n)+A001644(n)-record[A001590(n)]` -/
def P18192437334011530369.Spec : Prop :=
  ∀ n, P18192437334011530369.a n = A141523 n

end A141523

/-! ## A141523.P1213109987257529408

`A000213(n)+A001644(n)-A000213(n+1)`
-/

namespace A141523.P1213109987257529408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (A001644 n - A000213 (n + 1))

end

end A141523.P1213109987257529408

namespace A141523

/-- `A000213(n)+A001644(n)-A000213(n+1)` -/
def P1213109987257529408.Spec : Prop :=
  ∀ n, P1213109987257529408.a n = A141523 n

end A141523

/-! ## A141523.P1726229298120535842

`A100683(n+1)+A001590(n)-A100683(n)`
-/

namespace A141523.P1726229298120535842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100683 (n + 1) + (A001590 n - A100683 n)

end

end A141523.P1726229298120535842

namespace A141523

/-- `A100683(n+1)+A001590(n)-A100683(n)` -/
def P1726229298120535842.Spec : Prop :=
  ∀ n, P1726229298120535842.a n = A141523 n

end A141523

/-! ## A141523.P17624682887281149755

`A001644(n)-Δ[A001590(n+1)+A001590(n)]`
-/

namespace A141523.P17624682887281149755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) + A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n - (f1 (n + 1) - f1 n)

end

end A141523.P17624682887281149755

namespace A141523

/-- `A001644(n)-Δ[A001590(n+1)+A001590(n)]` -/
def P17624682887281149755.Spec : Prop :=
  ∀ n, P17624682887281149755.a n = A141523 n

end A141523

/-! ## A141523.P15722563693902210658

`A001644(n)-Δ[A000073(n+2)-A000073(n)]`
-/

namespace A141523.P15722563693902210658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n - (f1 (n + 1) - f1 n)

end

end A141523.P15722563693902210658

namespace A141523

/-- `A001644(n)-Δ[A000073(n+2)-A000073(n)]` -/
def P15722563693902210658.Spec : Prop :=
  ∀ n, P15722563693902210658.a n = A141523 n

end A141523

/-! ## A141523.P7728833791430968282

`A001644(n)-Δ[A112476(n+2)-A112476(n)]`
-/

namespace A141523.P7728833791430968282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 (n + 2) - A112476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n - (f1 (n + 1) - f1 n)

end

end A141523.P7728833791430968282

namespace A141523

/-- `A001644(n)-Δ[A112476(n+2)-A112476(n)]` -/
def P7728833791430968282.Spec : Prop :=
  ∀ n, P7728833791430968282.a n = A141523 n

end A141523

/-! ## A141523.P9498412074185688593

`Δ[Δ[A020992(n+1)]]`
-/

namespace A141523.P9498412074185688593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141523.P9498412074185688593

namespace A141523

/-- `Δ[Δ[A020992(n+1)]]` -/
def P9498412074185688593.Spec : Prop :=
  ∀ n, P9498412074185688593.a n = A141523 n

end A141523

/-!
# A141524: Consider the array T(n, m) where the n-th row is the sequence of integer coefficients of A(x), where 1<=a(n)<=n, such that A(x)^(1/n) consists entirely of integer coefficients and where m is the (m+1)-th coefficient. This is the table in the example of A112283 read term by term, row by row.

The programs for A141524, there is no canonical definition to state claims against.
-/

/-! ## A141524.P13510373548345451373

`gcd(A007318(A161951(n+1)), A212144(n))`
-/

namespace A141524.P13510373548345451373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 (A161951 (n + 1)).toNat) (A212144 n)

end

end A141524.P13510373548345451373

/-!
# A141526: Numbers n such that prime(n)+n^3 is prime.

The programs for A141526, there is no canonical definition to state claims against.
-/

/-! ## A141526.P18103714349871027219

`A000720(A254461(n+1))`
-/

namespace A141526.P18103714349871027219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A254461 (n + 1)).toNat

end

end A141526.P18103714349871027219

/-!
# A141527: Expansion of x*(2 + x)/(1 + x + 41*x^2).

The programs for A141527, the canonical program `A141527.P17605951991270455314` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141527 has offset 1).

The definition of A141527 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+x)/(1+x+41x^2))` (program `A141527.P17605951991270455314`, by `A141527.P17605951991270455314.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141527.P17605951991270455314

`ogf((2+x)/(1+x+41x^2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141527

/-- `ogf((2+x)/(1+x+41x^2))` -/
def P17605951991270455314.Spec : Prop :=
  ∀ n, P17605951991270455314.a n = A141527 (n + 1)

theorem P17605951991270455314.correct : P17605951991270455314.Spec := by
  intro n
  simp only [A141527, Nat.add_sub_cancel]

end A141527

/-!
# A141528: Expansion of -x/(1 + x + 41*x^2).

The programs for A141528, the canonical program `A141528.P5154365411434288706` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141528 has offset 1).

The definition of A141528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(-x/(1+x+41x^2))` (program `A141528.P5154365411434288706`, by `A141528.P5154365411434288706.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141528.P5154365411434288706

`ogf(-x/(1+x+41x^2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141528

/-- `ogf(-x/(1+x+41x^2))` -/
def P5154365411434288706.Spec : Prop :=
  ∀ n, P5154365411434288706.a n = A141528 (n + 1)

theorem P5154365411434288706.correct : P5154365411434288706.Spec := by
  intro n
  simp only [A141528, Nat.add_sub_cancel]

end A141528

/-!
# A141529: A cyclotomic Binet solution for the first 11 primes: solution of a set of linear equations with cyclotomic polynomial roots; roots: r[i]->(x^11-1): a(n)=Sum[r(i)^n*c(i),{i,1,11}].

The programs for A141529, there is no canonical definition to state claims against.
-/

/-! ## A141529.P8318738917544463769

`p?[and(-n, or(30, n))]`
-/

namespace A141529.P8318738917544463769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) (Nat.lor 30 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141529.P8318738917544463769

/-!
# A141530: a(n) = 4*n^3 - 6*n^2 + 1.

The programs for A141530, the canonical program `A141530.P17727032395850956273` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141530 has offset 0).

The definition of A141530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^3-6*n²+1` (program `A141530.P17727032395850956273`, by `A141530.P17727032395850956273.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141530.P17727032395850956273

`4*n^3-6*n²+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141530

/-- `4*n^3-6*n²+1` -/
def P17727032395850956273.Spec : Prop :=
  ∀ n, P17727032395850956273.a n = A141530 n

theorem P17727032395850956273.correct : P17727032395850956273.Spec := by
  intro n
  simp only [A141530]

end A141530

/-! ## A141530.P6686156283104738548

`or(1, Δ[(1-(1-n)²)²])`
-/

namespace A141530.P6686156283104738548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (1 - (n : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A141530.P6686156283104738548

namespace A141530

/-- `or(1, Δ[(1-(1-n)²)²])` -/
def P6686156283104738548.Spec : Prop :=
  ∀ n, P6686156283104738548.a n = A141530 n

end A141530

/-! ## A141530.P4197829259668916590

`(1-2*n)*(n+1-C(2*n, 2))`
-/

namespace A141530.P4197829259668916590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) * ((n + 1 : ℤ) - (Nat.choose (2 * n) 2 : ℤ))

end

end A141530.P4197829259668916590

namespace A141530

/-- `(1-2*n)*(n+1-C(2*n, 2))` -/
def P4197829259668916590.Spec : Prop :=
  ∀ n, P4197829259668916590.a n = A141530 n

theorem P4197829259668916590.correct : P4197829259668916590.Spec := by
  intro n
  simp only [A141530, Nat.add_sub_cancel, A141530.P4197829259668916590.a, A141530.P17727032395850956273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141530

/-! ## A141530.P4452798718629036106

`Δ[-A157371(n)]`
-/

namespace A141530.P4452798718629036106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A157371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141530.P4452798718629036106

namespace A141530

/-- `Δ[-A157371(n)]` -/
def P4452798718629036106.Spec : Prop :=
  ∀ n, P4452798718629036106.a n = A141530 n

theorem P4452798718629036106.correct : P4452798718629036106.Spec := by
  intro n
  simp only [A141530, Nat.add_sub_cancel, A141530.P4452798718629036106.f1, A141530.P4452798718629036106.a, A141530.P17727032395850956273.a, A157371, A157371.P11123575271812654545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141530

/-! ## A141530.P7115627426027322888

`Δ[A178392(abs(1-n))]`
-/

namespace A141530.P7115627426027322888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178392 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141530.P7115627426027322888

namespace A141530

/-- `Δ[A178392(abs(1-n))]` -/
def P7115627426027322888.Spec : Prop :=
  ∀ n, P7115627426027322888.a n = A141530 n

end A141530

/-! ## A141530.P11822095667631398882

`Δ[(n+1-A002061(n))²]`
-/

namespace A141530.P11822095667631398882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A002061 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141530.P11822095667631398882

namespace A141530

/-- `Δ[(n+1-A002061(n))²]` -/
def P11822095667631398882.Spec : Prop :=
  ∀ n, P11822095667631398882.a n = A141530 n

theorem P11822095667631398882.correct : P11822095667631398882.Spec := by
  intro n
  simp only [A141530, Nat.add_sub_cancel, A141530.P11822095667631398882.f1, A141530.P11822095667631398882.a, A141530.P17727032395850956273.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141530

/-! ## A141530.P10192957809015256424

`(n²-1+A067998(n))*A060747(n)`
-/

namespace A141530.P10192957809015256424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 1 + A067998 n) * A060747 n

end

end A141530.P10192957809015256424

namespace A141530

/-- `(n²-1+A067998(n))*A060747(n)` -/
def P10192957809015256424.Spec : Prop :=
  ∀ n, P10192957809015256424.a n = A141530 n

theorem P10192957809015256424.correct : P10192957809015256424.Spec := by
  intro n
  simp only [A141530, Nat.add_sub_cancel, A141530.P10192957809015256424.a, A141530.P17727032395850956273.a, A060747, A060747.P16920431360270313306.a, A067998, A067998.P12062298001294777272.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141530

/-! ## A141530.P8994409489049634045

`Δ[A067998(n)²]`
-/

namespace A141530.P8994409489049634045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141530.P8994409489049634045

namespace A141530

/-- `Δ[A067998(n)²]` -/
def P8994409489049634045.Spec : Prop :=
  ∀ n, P8994409489049634045.a n = A141530 n

theorem P8994409489049634045.correct : P8994409489049634045.Spec := by
  intro n
  simp only [A141530, Nat.add_sub_cancel, A141530.P8994409489049634045.f1, A141530.P8994409489049634045.a, A141530.P17727032395850956273.a, A067998, A067998.P12062298001294777272.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141530

/-! ## A141530.P3597780380565530769

`Δ[(n*A022958(n))²]`
-/

namespace A141530.P3597780380565530769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A022958 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141530.P3597780380565530769

namespace A141530

/-- `Δ[(n*A022958(n))²]` -/
def P3597780380565530769.Spec : Prop :=
  ∀ n, P3597780380565530769.a n = A141530 n

theorem P3597780380565530769.correct : P3597780380565530769.Spec := by
  intro n
  simp only [A141530, Nat.add_sub_cancel, A141530.P3597780380565530769.f1, A141530.P3597780380565530769.a, A141530.P17727032395850956273.a, A022958, A022958.P1044776346471009207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141530

/-! ## A141530.P9479726570387984097

`Δ[(n*A023444(n))²]`
-/

namespace A141530.P9479726570387984097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A023444 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141530.P9479726570387984097

namespace A141530

/-- `Δ[(n*A023444(n))²]` -/
def P9479726570387984097.Spec : Prop :=
  ∀ n, P9479726570387984097.a n = A141530 n

theorem P9479726570387984097.correct : P9479726570387984097.Spec := by
  intro n
  simp only [A141530, Nat.add_sub_cancel, A141530.P9479726570387984097.f1, A141530.P9479726570387984097.a, A141530.P17727032395850956273.a, A023444, A023444.P8712163668128210297.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141530

/-! ## A141530.P1380320845635078025

`Δ[(n*A097141(n))²]`
-/

namespace A141530.P1380320845635078025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A097141 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141530.P1380320845635078025

namespace A141530

/-- `Δ[(n*A097141(n))²]` -/
def P1380320845635078025.Spec : Prop :=
  ∀ n, P1380320845635078025.a n = A141530 n

end A141530

/-! ## A141530.P5702513364139509253

`Δ[(n*A105811(n))²]`
-/

namespace A141530.P5702513364139509253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A105811 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141530.P5702513364139509253

namespace A141530

/-- `Δ[(n*A105811(n))²]` -/
def P5702513364139509253.Spec : Prop :=
  ∀ n, P5702513364139509253.a n = A141530 n

end A141530

/-! ## A141530.P9926281260413491498

`Δ[(n*A022959(n+1))²]`
-/

namespace A141530.P9926281260413491498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A022959 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141530.P9926281260413491498

namespace A141530

/-- `Δ[(n*A022959(n+1))²]` -/
def P9926281260413491498.Spec : Prop :=
  ∀ n, P9926281260413491498.a n = A141530 n

theorem P9926281260413491498.correct : P9926281260413491498.Spec := by
  intro n
  simp only [A141530, Nat.add_sub_cancel, A141530.P9926281260413491498.f1, A141530.P9926281260413491498.a, A141530.P17727032395850956273.a, A022959, A022959.P11065877920924967018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141530

/-! ## A141530.P16243109519297717944

`Δ[(n*A023445(n+1))²]`
-/

namespace A141530.P16243109519297717944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A023445 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141530.P16243109519297717944

namespace A141530

/-- `Δ[(n*A023445(n+1))²]` -/
def P16243109519297717944.Spec : Prop :=
  ∀ n, P16243109519297717944.a n = A141530 n

theorem P16243109519297717944.correct : P16243109519297717944.Spec := by
  intro n
  simp only [A141530, Nat.add_sub_cancel, A141530.P16243109519297717944.f1, A141530.P16243109519297717944.a, A141530.P17727032395850956273.a, A023445, A023445.P17030645253662401943.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141530

/-! ## A141530.P15172018422752536410

`Δ[(n*A248157(n+1))²]`
-/

namespace A141530.P15172018422752536410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A248157 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141530.P15172018422752536410

namespace A141530

/-- `Δ[(n*A248157(n+1))²]` -/
def P15172018422752536410.Spec : Prop :=
  ∀ n, P15172018422752536410.a n = A141530 n

end A141530

/-! ## A141530.P241390855075687352

`Δ[A174474(2*n)²]`
-/

namespace A141530.P241390855075687352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174474 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141530.P241390855075687352

namespace A141530

/-- `Δ[A174474(2*n)²]` -/
def P241390855075687352.Spec : Prop :=
  ∀ n, P241390855075687352.a n = A141530 n

end A141530

/-! ## A141530.P16161919728208022681

`Δ[A154533((1-n)²)]`
-/

namespace A141530.P16161919728208022681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154533 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141530.P16161919728208022681

namespace A141530

/-- `Δ[A154533((1-n)²)]` -/
def P16161919728208022681.Spec : Prop :=
  ∀ n, P16161919728208022681.a n = A141530 n

end A141530

/-! ## A141530.P11423625336708168405

`Δ[A160457((1-n)²)]`
-/

namespace A141530.P11423625336708168405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160457 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141530.P11423625336708168405

namespace A141530

/-- `Δ[A160457((1-n)²)]` -/
def P11423625336708168405.Spec : Prop :=
  ∀ n, P11423625336708168405.a n = A141530 n

end A141530

/-!
# A141531: Inverse binomial transform of A001651.

The programs for A141531, the canonical program `A141531.P13433101705866540167` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141531 has offset 0).

The definition of A141531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141531.P15635345895872817755

`ogf((1+3x+3x^2)/(1+2x))`
-/

namespace A141531.P15635345895872817755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3] [1, 2] n

end

end A141531.P15635345895872817755

namespace A141531

/-- `ogf((1+3x+3x^2)/(1+2x))` -/
def P15635345895872817755.Spec : Prop :=
  ∀ n, P15635345895872817755.a n = A141531 n

end A141531

/-! ## A141531.P1175226566751002838

`(-2)^(n-ceil(atan(n)))`
-/

namespace A141531.P1175226566751002838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ ((n : ℤ) - ⌈Real.arctan (n : ℝ)⌉ : ℤ)

end

end A141531.P1175226566751002838

namespace A141531

/-- `(-2)^(n-ceil(atan(n)))` -/
def P1175226566751002838.Spec : Prop :=
  ∀ n, P1175226566751002838.a n = (A141531 n : ℚ)

end A141531

/-! ## A141531.P13433101705866540167

`-(2*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141531

/-- `-(2*a(n-1))` -/
def P13433101705866540167.Spec : Prop :=
  ∀ n, P13433101705866540167.a n = A141531 n

theorem P13433101705866540167.correct : P13433101705866540167.Spec := by
  intro n
  simp only [A141531]

end A141531

/-! ## A141531.P10069576320736775089

`(C(3, n²)-2)^(n-2)`
-/

namespace A141531.P10069576320736775089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 3 (n ^ 2) : ℤ) - 2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A141531.P10069576320736775089

namespace A141531

/-- `(C(3, n²)-2)^(n-2)` -/
def P10069576320736775089.Spec : Prop :=
  ∀ n, P10069576320736775089.a n = (A141531 n : ℚ)

end A141531

/-! ## A141531.P7283730437881010585

`4*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-2`
-/

namespace A141531.P7283730437881010585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, -2] fun n a =>
  4 * a (n - 2)

end

end A141531.P7283730437881010585

namespace A141531

/-- `4*a(n-2)` -/
def P7283730437881010585.Spec : Prop :=
  ∀ n, P7283730437881010585.a n = A141531 n

end A141531

/-! ## A141531.P14151128157031515986

`floor(atan(2*(2-n)))^(n-2)`
-/

namespace A141531.P14151128157031515986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊Real.arctan (2 * (2 - (n : ℤ)) : ℝ)⌋ : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A141531.P14151128157031515986

namespace A141531

/-- `floor(atan(2*(2-n)))^(n-2)` -/
def P14151128157031515986.Spec : Prop :=
  ∀ n, P14151128157031515986.a n = (A141531 n : ℚ)

end A141531

/-! ## A141531.P1097644342493751850

`(-2)^floor(n^3/(n+1)²)`
-/

namespace A141531.P1097644342493751850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (⌊(n ^ 3 : ℚ) / ((n + 1) ^ 2 : ℚ)⌋ : ℤ)

end

end A141531.P1097644342493751850

namespace A141531

/-- `(-2)^floor(n^3/(n+1)²)` -/
def P1097644342493751850.Spec : Prop :=
  ∀ n, P1097644342493751850.a n = (A141531 n : ℚ)

end A141531

/-! ## A141531.P11872560753938273319

`ceil((C(4, n+2)-2)^(n-2))`
-/

namespace A141531.P11872560753938273319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose 4 (n + 2) : ℤ) - 2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

end

end A141531.P11872560753938273319

namespace A141531

/-- `ceil((C(4, n+2)-2)^(n-2))` -/
def P11872560753938273319.Spec : Prop :=
  ∀ n, P11872560753938273319.a n = A141531 n

end A141531

/-! ## A141531.P5882367540749261839

`a(n-1)/(1/2-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A141531.P5882367540749261839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A141531.P5882367540749261839

namespace A141531

/-- `a(n-1)/(1/2-1)` -/
def P5882367540749261839.Spec : Prop :=
  ∀ n, P5882367540749261839.a n = (A141531 n : ℚ)

end A141531

/-! ## A141531.P17058493106046274133

`round((C(n+3, 2*n+1)-2)^(n-2))`
-/

namespace A141531.P17058493106046274133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose (n + 3) (2 * n + 1) : ℤ) - 2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A141531.P17058493106046274133

namespace A141531

/-- `round((C(n+3, 2*n+1)-2)^(n-2))` -/
def P17058493106046274133.Spec : Prop :=
  ∀ n, P17058493106046274133.a n = A141531 n

end A141531

/-! ## A141531.P17896969922746880858

`1-floor(a(n-1)+a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A141531.P17896969922746880858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  1 - (a (n - 1) + (a (n - 1) + 1))

end

end A141531.P17896969922746880858

namespace A141531

/-- `1-floor(a(n-1)+a(n-1)+1)` -/
def P17896969922746880858.Spec : Prop :=
  ∀ n, P17896969922746880858.a n = A141531 n

theorem P17896969922746880858.correct : P17896969922746880858.Spec := by
  intro n
  simp only [A141531, Nat.add_sub_cancel, A141531.P17896969922746880858.a, A141531.P13433101705866540167.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141531

/-! ## A141531.P7948497385965886437

`floor(1-a(n-1)-a(n-1))-1` with `a(0)=1, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A141531.P7948497385965886437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  1 - a (n - 1) - a (n - 1) - 1

end

end A141531.P7948497385965886437

namespace A141531

/-- `floor(1-a(n-1)-a(n-1))-1` -/
def P7948497385965886437.Spec : Prop :=
  ∀ n, P7948497385965886437.a n = A141531 n

theorem P7948497385965886437.correct : P7948497385965886437.Spec := by
  intro n
  simp only [A141531, Nat.add_sub_cancel, A141531.P7948497385965886437.a, A141531.P13433101705866540167.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141531

/-! ## A141531.P16159025869418317412

`2-(a(n-1)+a(n-1)+2%n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A141531.P16159025869418317412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 - (a (n - 1) + (a (n - 1) + ((2 % n : ℕ) : ℤ)))

end

end A141531.P16159025869418317412

namespace A141531

/-- `2-(a(n-1)+a(n-1)+2%n)` -/
def P16159025869418317412.Spec : Prop :=
  ∀ n, P16159025869418317412.a n = A141531 n

end A141531

/-! ## A141531.P15136291196906480232

`n%gcd(2, n)-a(n-1)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A141531.P15136291196906480232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ((n % Nat.gcd 2 n : ℕ) : ℤ) - a (n - 1) - a (n - 1)

end

end A141531.P15136291196906480232

namespace A141531

/-- `n%gcd(2, n)-a(n-1)-a(n-1)` -/
def P15136291196906480232.Spec : Prop :=
  ∀ n, P15136291196906480232.a n = A141531 n

end A141531

/-! ## A141531.P14244420722429243144

`a(n-2)+a(n-2)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-2`
-/

namespace A141531.P14244420722429243144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, -2] fun n a =>
  a (n - 2) + (a (n - 2) - a (n - 1))

end

end A141531.P14244420722429243144

namespace A141531

/-- `a(n-2)+a(n-2)-a(n-1)` -/
def P14244420722429243144.Spec : Prop :=
  ∀ n, P14244420722429243144.a n = A141531 n

end A141531

/-! ## A141531.P17244860314111587673

`a(n-1)%a(n-2)-a(n-1)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A141531.P17244860314111587673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Int.tmod (a (n - 1)) (a (n - 2)) - a (n - 1) - a (n - 1)

end

end A141531.P17244860314111587673

namespace A141531

/-- `a(n-1)%a(n-2)-a(n-1)-a(n-1)` -/
def P17244860314111587673.Spec : Prop :=
  ∀ n, P17244860314111587673.a n = A141531 n

end A141531

/-! ## A141531.P3098377927892868901

`A123344(abs(1-n))`
-/

namespace A141531.P3098377927892868901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 |1 - (n : ℤ)|.toNat

end

end A141531.P3098377927892868901

namespace A141531

/-- `A123344(abs(1-n))` -/
def P3098377927892868901.Spec : Prop :=
  ∀ n, P3098377927892868901.a n = A141531 n

end A141531

/-! ## A141531.P12914606419375828114

`A122803(A289207(n))`
-/

namespace A141531.P12914606419375828114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (A289207 n).toNat

end

end A141531.P12914606419375828114

namespace A141531

/-- `A122803(A289207(n))` -/
def P12914606419375828114.Spec : Prop :=
  ∀ n, P12914606419375828114.a n = A141531 n

end A141531

/-! ## A141531.P1052342646535379321

`A168150(n)+A168150(n+1)+A168150(n)`
-/

namespace A141531.P1052342646535379321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168150 n + (A168150 (n + 1) + A168150 n)

end

end A141531.P1052342646535379321

namespace A141531

/-- `A168150(n)+A168150(n+1)+A168150(n)` -/
def P1052342646535379321.Spec : Prop :=
  ∀ n, P1052342646535379321.a n = A141531 n

end A141531

/-! ## A141531.P15347322854597041989

`A128018(A289207(n)+n)/A128018(n)`
-/

namespace A141531.P15347322854597041989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128018 (A289207 n + (n : ℤ)).toNat : ℚ) / (A128018 n : ℚ)

end

end A141531.P15347322854597041989

namespace A141531

/-- `A128018(A289207(n)+n)/A128018(n)` -/
def P15347322854597041989.Spec : Prop :=
  ∀ n, P15347322854597041989.a n = (A141531 n : ℚ)

end A141531

/-!
# A141533: The first subdiagonal of the array of A141425 and its higher order differences.

The programs for A141533, the canonical program `A141533.P1968467145533938291` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141533 has offset 1).

The definition of A141533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141533.P1968467145533938291

`a(n-1)-a(n-2)+3*a(n-3)+6*a(n-4)` with `a(0)=1, a(1)=-1, a(2)=-2, a(3)=23`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141533

/-- `a(n-1)-a(n-2)+3*a(n-3)+6*a(n-4)` -/
def P1968467145533938291.Spec : Prop :=
  ∀ n, P1968467145533938291.a n = A141533 (n + 1)

theorem P1968467145533938291.correct : P1968467145533938291.Spec := by
  intro n
  simp only [A141533, Nat.add_sub_cancel]

end A141533

/-! ## A141533.P8041466624430804385

`(3*(-1)^(n+1)+2^(n+1)-A128019(n+2))/2`
-/

namespace A141533.P8041466624430804385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (-1) ^ (n + 1) + (2 ^ (n + 1) : ℤ) - A128019 (n + 2) : ℚ) / 2

end

end A141533.P8041466624430804385

namespace A141533

/-- `(3*(-1)^(n+1)+2^(n+1)-A128019(n+2))/2` -/
def P8041466624430804385.Spec : Prop :=
  ∀ n, P8041466624430804385.a n = (A141533 (n + 1) : ℚ)

end A141533

/-!
# A141534: Derived from the centered polygonal numbers: start with the first triangular number, then the sum of the first square number and the second triangular number, then the sum of first pentagonal number, the second square number and the third triangular number, and so on and so on...

The programs for A141534, the canonical program `A141534.P9252539419535406305` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141534 has offset 1).

The definition of A141534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141534.P9252539419535406305

`∑[∑[∑[a(n-1)+a(n-a(n-2))]]]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141534

/-- `∑[∑[∑[a(n-1)+a(n-a(n-2))]]]` -/
def P9252539419535406305.Spec : Prop :=
  ∀ n, (P9252539419535406305.a n : ℤ) = A141534 (n + 1)

theorem P9252539419535406305.correct : P9252539419535406305.Spec := by
  intro n
  simp only [A141534, Nat.add_sub_cancel]

end A141534

/-! ## A141534.P1624905822924448951

`∑[∑[∑[n+2]]]-A005918(n)`
-/

namespace A141534.P1624905822924448951
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A005918 n

end

end A141534.P1624905822924448951

namespace A141534

/-- `∑[∑[∑[n+2]]]-A005918(n)` -/
def P1624905822924448951.Spec : Prop :=
  ∀ n, P1624905822924448951.a n = A141534 (n + 1)

end A141534

/-! ## A141534.P11533900768660703786

`∑[∑[∑[n]+1]+A289207(n)²]`
-/

namespace A141534.P11533900768660703786
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + A289207 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141534.P11533900768660703786

namespace A141534

/-- `∑[∑[∑[n]+1]+A289207(n)²]` -/
def P11533900768660703786.Spec : Prop :=
  ∀ n, P11533900768660703786.a n = A141534 (n + 1)

end A141534

/-! ## A141534.P7061429337228671694

`A000332(n)+A008487(n)-n²`
-/

namespace A141534.P7061429337228671694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + (A008487 n - (n ^ 2 : ℤ))

end

end A141534.P7061429337228671694

namespace A141534

/-- `A000332(n)+A008487(n)-n²` -/
def P7061429337228671694.Spec : Prop :=
  ∀ n, P7061429337228671694.a n = A141534 (n + 1)

end A141534

/-! ## A141534.P2467451651227544458

`A000127(n+2)+(n-1)*A238531(n)`
-/

namespace A141534.P2467451651227544458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 2) + ((n : ℤ) - 1) * A238531 n

end

end A141534.P2467451651227544458

namespace A141534

/-- `A000127(n+2)+(n-1)*A238531(n)` -/
def P2467451651227544458.Spec : Prop :=
  ∀ n, P2467451651227544458.a n = A141534 (n + 1)

end A141534

/-! ## A141534.P11894474011326571221

`A308680(A052905(n+1))+4*n`
-/

namespace A141534.P11894474011326571221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A052905 (n + 1)).toNat + (4 * n : ℤ)

end

end A141534.P11894474011326571221

namespace A141534

/-- `A308680(A052905(n+1))+4*n` -/
def P11894474011326571221.Spec : Prop :=
  ∀ n, P11894474011326571221.a n = A141534 (n + 1)

end A141534

/-! ## A141534.P17553574186940465558

`∑[A004274(A016028(n+1))+A000292(n)]`
-/

namespace A141534.P17553574186940465558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A016028 (n + 1)).toNat + A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141534.P17553574186940465558

namespace A141534

/-- `∑[A004274(A016028(n+1))+A000292(n)]` -/
def P17553574186940465558.Spec : Prop :=
  ∀ n, P17553574186940465558.a n = A141534 (n + 1)

end A141534

/-!
# A141535: An eighth of the product of three integers surrounding the (n+1)-st prime, minus half of the product of the 3 numbers surrounding n+1.

The programs for A141535, the canonical program `A141535.P16437882667195549549` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141535 has offset 1).

The definition of A141535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141535.P16437882667195549549

`A127917(n+2)/8-A027480(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141535

/-- `A127917(n+2)/8-A027480(n+1)` -/
def P16437882667195549549.Spec : Prop :=
  ∀ n, P16437882667195549549.a n = (A141535 (n + 1) : ℚ)

end A141535

/-! ## A141535.P311210954887657336

`(A000040(n+2)-1)*A000040(n+2)*(A000040(n+2)+1)/8-(n+1)*(n+2)*(n+3)/2`
-/

namespace A141535.P311210954887657336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000040 (n + 2) - 1) * A000040 (n + 2) * (A000040 (n + 2) + 1) : ℚ) / 8 - ((n + 1) * (n + 2) * (n + 3) : ℚ) / 2

end

end A141535.P311210954887657336

namespace A141535

/-- `(A000040(n+2)-1)*A000040(n+2)*(A000040(n+2)+1)/8-(n+1)*(n+2)*(n+3)/2` -/
def P311210954887657336.Spec : Prop :=
  ∀ n, P311210954887657336.a n = (A141535 (n + 1) : ℚ)

end A141535

/-! ## A141535.P15964127425389347798

`3*(A127922(n+2)-∑[∑[n+1]])`
-/

namespace A141535.P15964127425389347798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A127922 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A141535.P15964127425389347798

namespace A141535

/-- `3*(A127922(n+2)-∑[∑[n+1]])` -/
def P15964127425389347798.Spec : Prop :=
  ∀ n, P15964127425389347798.a n = A141535 (n + 1)

end A141535

/-!
# A141539: Square array A(n,k) of numbers of length n binary words with at least k "0" between any two "1" digits (n,k >= 0), read by antidiagonals.

The programs for A141539, there is no canonical definition to state claims against.
-/

/-! ## A141539.P6979634893252462937

`A062050(∑[A213945(n)])`
-/

namespace A141539.P6979634893252462937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A141539.P6979634893252462937

/-! ## A141539.P7998933381951630561

`ceil(A144696(n+2)/A007401(A008292(n+1)))`
-/

namespace A141539.P7998933381951630561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A144696 (n + 2) : ℚ) / (A007401 (A008292 (n + 1)).toNat : ℚ)⌉

end

end A141539.P7998933381951630561

/-! ## A141539.P14724521047106152924

`A005171(A082889(n+1))+A003963(A143453(n))`
-/

namespace A141539.P14724521047106152924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A082889 (n + 1)).toNat + A003963 (A143453 n).toNat

end

end A141539.P14724521047106152924

/-! ## A141539.P121402273432765732

`A001511(A031565(n+1))*A003963(A143453(n))`
-/

namespace A141539.P121402273432765732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A031565 (n + 1)).toNat * A003963 (A143453 n).toNat

end

end A141539.P121402273432765732

/-! ## A141539.P432875462224401256

`A353236(A329049(n))`
-/

namespace A141539.P432875462224401256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353236 (A329049 n).toNat

end

end A141539.P432875462224401256

/-!
# A141541: A triangular sequence of coefficients in a renormalized fractional factorial recursion ( a neo -combinatorial process): a(n) = A000045[n]; Renormalized factorial; f(n) = a(n)*n*f(n - 1)/a(n - 1); Neo-combination: t(n, m) = f(n)/(f(n - m)*f(m)).

The programs for A141541, there is no canonical definition to state claims against.
-/

/-! ## A141541.P5803558713351511888

`A219760(A382444(n))`
-/

namespace A141541.P5803558713351511888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219760 (A382444 n).toNat

end

end A141541.P5803558713351511888

/-! ## A141541.P8731178375637165697

`A000005(A241066(A109128(n)))`
-/

namespace A141541.P8731178375637165697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A241066 (A109128 n).toNat).toNat

end

end A141541.P8731178375637165697

/-! ## A141541.P18100591015196177318

`A000005(A089330(A007318(n)²))`
-/

namespace A141541.P18100591015196177318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A089330 (A007318 n ^ 2).toNat).toNat

end

end A141541.P18100591015196177318

/-! ## A141541.P3459805031521818264

`A008342(A008300(n))+A008288(n)`
-/

namespace A141541.P3459805031521818264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008342 (A008300 n).toNat + A008288 n

end

end A141541.P3459805031521818264

/-!
# A141542: A triangular sequence of coefficients in a renormalized fractional factorial recursion ( a neo -combinatorial process): a(n) =a(n - 1) + a(n - 2) + a(n - 3) + a(n - 4); Renormalized factorial; f(n) = a(n)*n*f(n - 1)/a(n - 1); Neo-combination: t(n, m) = f(n)/(f(n - m)*f(m)).

The programs for A141542, there is no canonical definition to state claims against.
-/

/-! ## A141542.P4737249536955149922

`A063059(A146772(n))*A174116(n)`
-/

namespace A141542.P4737249536955149922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063059 (A146772 n).toNat * A174116 n

end

end A141542.P4737249536955149922

/-! ## A141542.P15190173073198351200

`A174116(n)+A001222(A174119(A174125(n)))`
-/

namespace A141542.P15190173073198351200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174116 n + A001222 (A174119 (A174125 n).toNat).toNat

end

end A141542.P15190173073198351200

/-! ## A141542.P6539588872415857955

`A111615(A173881(n))`
-/

namespace A141542.P6539588872415857955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111615 (A173881 n).toNat

end

end A141542.P6539588872415857955

/-! ## A141542.P12814802522713398398

`∏{e}[A255163(A007318(n)), #]`
-/

namespace A141542.P12814802522713398398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255163 (A007318 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A141542.P12814802522713398398

/-! ## A141542.P3864626016056927345

`A007318(n)*A124736(A281936(n+1))`
-/

namespace A141542.P3864626016056927345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A124736 (A281936 (n + 1)).toNat

end

end A141542.P3864626016056927345

/-!
# A141543: Triangle T(n,k) read by rows: T(n,2k)=k, T(n,2k+1) = k-n, for 0<=k<=n.

The programs for A141543, the canonical program `A141543.P279450556099849721` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141543 has offset 0).

The definition of A141543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141543.P1765892056962260246

`A130266(A061579(n))-comp[∑[n]]+1+n`
-/

namespace A141543.P1765892056962260246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130266 (A061579 n).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + 1 + (n : ℤ)

end

end A141543.P1765892056962260246

namespace A141543

/-- `A130266(A061579(n))-comp[∑[n]]+1+n` -/
def P1765892056962260246.Spec : Prop :=
  ∀ n, P1765892056962260246.a n = A141543 n

end A141543

/-! ## A141543.P279450556099849721

`A130266(A061579(n))-∑[A010054(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141543

/-- `A130266(A061579(n))-∑[A010054(n)]` -/
def P279450556099849721.Spec : Prop :=
  ∀ n, P279450556099849721.a n = A141543 n

theorem P279450556099849721.correct : P279450556099849721.Spec := by
  intro n
  simp only [A141543]

end A141543

/-! ## A141543.P10550349513938673098

`A130266(A061579(n))-A002024(n+1)`
-/

namespace A141543.P10550349513938673098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130266 (A061579 n).toNat - A002024 (n + 1)

end

end A141543.P10550349513938673098

namespace A141543

/-- `A130266(A061579(n))-A002024(n+1)` -/
def P10550349513938673098.Spec : Prop :=
  ∀ n, P10550349513938673098.a n = A141543 n

end A141543

/-! ## A141543.P14856413285498124566

`A130266(A061579(n))-(A003056(n)+1)`
-/

namespace A141543.P14856413285498124566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130266 (A061579 n).toNat - (A003056 n + 1)

end

end A141543.P14856413285498124566

namespace A141543

/-- `A130266(A061579(n))-(A003056(n)+1)` -/
def P14856413285498124566.Spec : Prop :=
  ∀ n, P14856413285498124566.a n = A141543 n

end A141543

/-! ## A141543.P550432087656017929

`A093178(A002260(n+1))-A057058(n+1)`
-/

namespace A141543.P550432087656017929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A002260 (n + 1)).toNat - A057058 (n + 1)

end

end A141543.P550432087656017929

namespace A141543

/-- `A093178(A002260(n+1))-A057058(n+1)` -/
def P550432087656017929.Spec : Prop :=
  ∀ n, P550432087656017929.a n = A141543 n

end A141543

/-! ## A141543.P6485045870774509179

`A245300(n)+1-A057027(A245300(n)+1)`
-/

namespace A141543.P6485045870774509179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n + 1 - A057027 (A245300 n + 1).toNat

end

end A141543.P6485045870774509179

namespace A141543

/-- `A245300(n)+1-A057027(A245300(n)+1)` -/
def P6485045870774509179.Spec : Prop :=
  ∀ n, P6485045870774509179.a n = A141543 n

end A141543

/-! ## A141543.P1344202396290601445

`A130266(A061579(n))+1-A003057(n+2)`
-/

namespace A141543.P1344202396290601445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130266 (A061579 n).toNat + (1 - A003057 (n + 2))

end

end A141543.P1344202396290601445

namespace A141543

/-- `A130266(A061579(n))+1-A003057(n+2)` -/
def P1344202396290601445.Spec : Prop :=
  ∀ n, P1344202396290601445.a n = A141543 n

end A141543

/-! ## A141543.P5334729796462268470

`A223544(n+1)%A131507(n)-A003056(n)`
-/

namespace A141543.P5334729796462268470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223544 (n + 1)) (A131507 n) - A003056 n

end

end A141543.P5334729796462268470

namespace A141543

/-- `A223544(n+1)%A131507(n)-A003056(n)` -/
def P5334729796462268470.Spec : Prop :=
  ∀ n, P5334729796462268470.a n = A141543 n

end A141543

/-! ## A141543.P18260068653101518125

`A130266(A061579(n))-A114327(A127739(n+1))`
-/

namespace A141543.P18260068653101518125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130266 (A061579 n).toNat - A114327 (A127739 (n + 1)).toNat

end

end A141543.P18260068653101518125

namespace A141543

/-- `A130266(A061579(n))-A114327(A127739(n+1))` -/
def P18260068653101518125.Spec : Prop :=
  ∀ n, P18260068653101518125.a n = A141543 n

end A141543

/-! ## A141543.P4081492153934572841

`A130266(A061579(n))-A007306(A137688(n))`
-/

namespace A141543.P4081492153934572841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130266 (A061579 n).toNat - A007306 (A137688 n).toNat

end

end A141543.P4081492153934572841

namespace A141543

/-- `A130266(A061579(n))-A007306(A137688(n))` -/
def P4081492153934572841.Spec : Prop :=
  ∀ n, P4081492153934572841.a n = A141543 n

end A141543

/-!
# A141544: Odd numbers k such that 2k+5 is a prime.

The programs for A141544, the canonical program `A141544.P1087422406127598241` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141544 has offset 1).

The definition of A141544 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141544.P1087422406127598241

`A087915(n+2)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A141544

/-- `A087915(n+2)-1` -/
def P1087422406127598241.Spec : Prop :=
  ∀ n, P1087422406127598241.a n = A141544 (n + 1)

theorem P1087422406127598241.correct : P1087422406127598241.Spec := by
  intro n
  simp only [A141544, Nat.add_sub_cancel]

end A141544

/-! ## A141544.P6858483587741137455

`A090670(n+2)-4`
-/

namespace A141544.P6858483587741137455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 2) - 4

end

end A141544.P6858483587741137455

namespace A141544

/-- `A090670(n+2)-4` -/
def P6858483587741137455.Spec : Prop :=
  ∀ n, P6858483587741137455.a n = A141544 (n + 1)

theorem P6858483587741137455.correct : P6858483587741137455.Spec := by
  intro n
  simp only [A141544, Nat.add_sub_cancel, A141544.P6858483587741137455.a, A141544.P1087422406127598241.a, A087915, A087915.P15618837605475670392.a, A090670, A090670.P8610966387605569098.a, A005099, A005099.P16814233129974845155.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141544

/-! ## A141544.P14215963968953162795

`(p?[4*n+7]-5)/2`
-/

namespace A141544.P14215963968953162795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 5 : ℚ) / 2

end

end A141544.P14215963968953162795

namespace A141544

/-- `(p?[4*n+7]-5)/2` -/
def P14215963968953162795.Spec : Prop :=
  ∀ n, P14215963968953162795.a n = (A141544 (n + 1) : ℚ)

end A141544

/-! ## A141544.P14415404819616253952

`A104635(n+2)-2`
-/

namespace A141544.P14415404819616253952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 2) - 2

end

end A141544.P14415404819616253952

namespace A141544

/-- `A104635(n+2)-2` -/
def P14415404819616253952.Spec : Prop :=
  ∀ n, P14415404819616253952.a n = A141544 (n + 1)

end A141544

/-! ## A141544.P13265139494989846222

`A089257(n+2)-5`
-/

namespace A141544.P13265139494989846222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089257 (n + 2) - 5

end

end A141544.P13265139494989846222

namespace A141544

/-- `A089257(n+2)-5` -/
def P13265139494989846222.Spec : Prop :=
  ∀ n, P13265139494989846222.a n = A141544 (n + 1)

theorem P13265139494989846222.correct : P13265139494989846222.Spec := by
  intro n
  simp only [A141544, Nat.add_sub_cancel, A141544.P13265139494989846222.a, A141544.P1087422406127598241.a, A087915, A087915.P15618837605475670392.a, A089257, A089257.P243562782731200786.a, A005099, A005099.P16814233129974845155.a, A089193, A089193.P2689755802632067634.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141544

/-! ## A141544.P10936377066121030346

`A089193(n+2)-6`
-/

namespace A141544.P10936377066121030346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 2) - 6

end

end A141544.P10936377066121030346

namespace A141544

/-- `A089193(n+2)-6` -/
def P10936377066121030346.Spec : Prop :=
  ∀ n, P10936377066121030346.a n = A141544 (n + 1)

theorem P10936377066121030346.correct : P10936377066121030346.Spec := by
  intro n
  simp only [A141544, Nat.add_sub_cancel, A141544.P10936377066121030346.a, A141544.P1087422406127598241.a, A087915, A087915.P15618837605475670392.a, A089193, A089193.P2689755802632067634.a, A005099, A005099.P16814233129974845155.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141544

/-! ## A141544.P4186409026397503628

`A095278(n+2)+A089986(n+2)`
-/

namespace A141544.P4186409026397503628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 2) + A089986 (n + 2)

end

end A141544.P4186409026397503628

namespace A141544

/-- `A095278(n+2)+A089986(n+2)` -/
def P4186409026397503628.Spec : Prop :=
  ∀ n, P4186409026397503628.a n = A141544 (n + 1)

end A141544

/-! ## A141544.P7797022679467918745

`∩[2*n+1, A089038(n+1)]`
-/

namespace A141544.P7797022679467918745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141544.P7797022679467918745

namespace A141544

/-- `∩[2*n+1, A089038(n+1)]` -/
def P7797022679467918745.Spec : Prop :=
  ∀ n, (P7797022679467918745.a n : ℤ) = A141544 (n + 1)

end A141544

/-! ## A141544.P13086255203740994691

`∩[A089038(n+1), A241662(n+1)]`
-/

namespace A141544.P13086255203740994691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141544.P13086255203740994691

namespace A141544

/-- `∩[A089038(n+1), A241662(n+1)]` -/
def P13086255203740994691.Spec : Prop :=
  ∀ n, (P13086255203740994691.a n : ℤ) = A141544 (n + 1)

end A141544

/-! ## A141544.P12661857053705537078

`A047242(A005099(n+2))`
-/

namespace A141544.P12661857053705537078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (A005099 (n + 2)).toNat

end

end A141544.P12661857053705537078

namespace A141544

/-- `A047242(A005099(n+2))` -/
def P12661857053705537078.Spec : Prop :=
  ∀ n, P12661857053705537078.a n = A141544 (n + 1)

end A141544

/-! ## A141544.P680701550962224872

`A004273(A095278(n+2))`
-/

namespace A141544.P680701550962224872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A095278 (n + 2)).toNat

end

end A141544.P680701550962224872

namespace A141544

/-- `A004273(A095278(n+2))` -/
def P680701550962224872.Spec : Prop :=
  ∀ n, P680701550962224872.a n = A141544 (n + 1)

end A141544

/-! ## A141544.P7107439767419225823

`A033465(A089986(n+2))`
-/

namespace A141544.P7107439767419225823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033465 (A089986 (n + 2)).toNat

end

end A141544.P7107439767419225823

namespace A141544

/-- `A033465(A089986(n+2))` -/
def P7107439767419225823.Spec : Prop :=
  ∀ n, P7107439767419225823.a n = A141544 (n + 1)

end A141544

/-! ## A141544.P8366696137705957407

`∩[A089038(n+1), A060747(n)]`
-/

namespace A141544.P8366696137705957407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141544.P8366696137705957407

namespace A141544

/-- `∩[A089038(n+1), A060747(n)]` -/
def P8366696137705957407.Spec : Prop :=
  ∀ n, (P8366696137705957407.a n : ℤ) = A141544 (n + 1)

end A141544

/-! ## A141544.P5288941105345298175

`∩[A089038(n+1), A277599(n+1)]`
-/

namespace A141544.P5288941105345298175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141544.P5288941105345298175

namespace A141544

/-- `∩[A089038(n+1), A277599(n+1)]` -/
def P5288941105345298175.Spec : Prop :=
  ∀ n, (P5288941105345298175.a n : ℤ) = A141544 (n + 1)

end A141544

/-! ## A141544.P7690836819101907462

`eq[1, A359289(n+3)]`
-/

namespace A141544.P7690836819101907462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359289 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141544.P7690836819101907462

namespace A141544

/-- `eq[1, A359289(n+3)]` -/
def P7690836819101907462.Spec : Prop :=
  ∀ n, (P7690836819101907462.a n : ℤ) = A141544 (n + 1)

end A141544

/-! ## A141544.P3966597817307143082

`eq[1, A363258(n+3)]`
-/

namespace A141544.P3966597817307143082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363258 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141544.P3966597817307143082

namespace A141544

/-- `eq[1, A363258(n+3)]` -/
def P3966597817307143082.Spec : Prop :=
  ∀ n, (P3966597817307143082.a n : ℤ) = A141544 (n + 1)

end A141544

/-! ## A141544.P15924372694929845428

`eq[1, A363316(n+3)]`
-/

namespace A141544.P15924372694929845428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363316 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141544.P15924372694929845428

namespace A141544

/-- `eq[1, A363316(n+3)]` -/
def P15924372694929845428.Spec : Prop :=
  ∀ n, (P15924372694929845428.a n : ℤ) = A141544 (n + 1)

end A141544

/-! ## A141544.P5876942104814902474

`A004483(A087915(n+2))`
-/

namespace A141544.P5876942104814902474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A087915 (n + 2)).toNat

end

end A141544.P5876942104814902474

namespace A141544

/-- `A004483(A087915(n+2))` -/
def P5876942104814902474.Spec : Prop :=
  ∀ n, P5876942104814902474.a n = A141544 (n + 1)

end A141544

/-! ## A141544.P4090311769228895422

`A023448(A089193(n+2))`
-/

namespace A141544.P4090311769228895422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A089193 (n + 2)).toNat

end

end A141544.P4090311769228895422

namespace A141544

/-- `A023448(A089193(n+2))` -/
def P4090311769228895422.Spec : Prop :=
  ∀ n, P4090311769228895422.a n = A141544 (n + 1)

end A141544

/-!
# A141545: Numbers k whose abundance is 12: sigma(k) - 2*k = 12.

The programs for A141545, the canonical program `A141545.P10467952662609606234` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141545 has offset 1).

The definition of A141545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141545.P3195355694311008466

`∩[A036456(n+1), A076496(n+1)]`
-/

namespace A141545.P3195355694311008466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P3195355694311008466

namespace A141545

/-- `∩[A036456(n+1), A076496(n+1)]` -/
def P3195355694311008466.Spec : Prop :=
  ∀ n, (P3195355694311008466.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P10467952662609606234

`∩[A036456(n+1), A274557(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A141545

/-- `∩[A036456(n+1), A274557(n+1)]` -/
def P10467952662609606234.Spec : Prop :=
  ∀ n, (P10467952662609606234.a n : ℤ) = A141545 (n + 1)

theorem P10467952662609606234.correct : P10467952662609606234.Spec := by
  intro n
  simp only [A141545, Nat.add_sub_cancel]

end A141545

/-! ## A141545.P5186043745205410450

`∩[A274557(n+1), A376384(n+1)]`
-/

namespace A141545.P5186043745205410450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P5186043745205410450

namespace A141545

/-- `∩[A274557(n+1), A376384(n+1)]` -/
def P5186043745205410450.Spec : Prop :=
  ∀ n, (P5186043745205410450.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P1483750121022277886

`∩[A080707(n+1), A274557(n+1)]`
-/

namespace A141545.P1483750121022277886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P1483750121022277886

namespace A141545

/-- `∩[A080707(n+1), A274557(n+1)]` -/
def P1483750121022277886.Spec : Prop :=
  ∀ n, (P1483750121022277886.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P18171769539090162179

`filter[A274557(n+1), A294937(#)]`
-/

namespace A141545.P18171769539090162179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A141545.P18171769539090162179

namespace A141545

/-- `filter[A274557(n+1), A294937(#)]` -/
def P18171769539090162179.Spec : Prop :=
  ∀ n, P18171769539090162179.a n = A141545 (n + 1)

end A141545

/-! ## A141545.P1511453283593074427

`∩[A119911(n+1), A274557(n+1)]`
-/

namespace A141545.P1511453283593074427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P1511453283593074427

namespace A141545

/-- `∩[A119911(n+1), A274557(n+1)]` -/
def P1511453283593074427.Spec : Prop :=
  ∀ n, (P1511453283593074427.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P8674197456800109747

`∩[A007624(n+1), A274557(n+1)]`
-/

namespace A141545.P8674197456800109747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P8674197456800109747

namespace A141545

/-- `∩[A007624(n+1), A274557(n+1)]` -/
def P8674197456800109747.Spec : Prop :=
  ∀ n, (P8674197456800109747.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P12839992453227623882

`∩[A058080(n+1), A274557(n+1)]`
-/

namespace A141545.P12839992453227623882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P12839992453227623882

namespace A141545

/-- `∩[A058080(n+1), A274557(n+1)]` -/
def P12839992453227623882.Spec : Prop :=
  ∀ n, (P12839992453227623882.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P1260793076257497700

`∩[A033942(n+1), A274557(n+1)]`
-/

namespace A141545.P1260793076257497700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P1260793076257497700

namespace A141545

/-- `∩[A033942(n+1), A274557(n+1)]` -/
def P1260793076257497700.Spec : Prop :=
  ∀ n, (P1260793076257497700.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P12057772788264267852

`∩[A111087(n+1), A274557(n+1)]`
-/

namespace A141545.P12057772788264267852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P12057772788264267852

namespace A141545

/-- `∩[A111087(n+1), A274557(n+1)]` -/
def P12057772788264267852.Spec : Prop :=
  ∀ n, (P12057772788264267852.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P3213629908693105694

`∩[A274557(n+1), A299542(n)]`
-/

namespace A141545.P3213629908693105694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299542 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P3213629908693105694

namespace A141545

/-- `∩[A274557(n+1), A299542(n)]` -/
def P3213629908693105694.Spec : Prop :=
  ∀ n, (P3213629908693105694.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P1939319945119804832

`∩[A080639(n+1), A274557(n+1)]`
-/

namespace A141545.P1939319945119804832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P1939319945119804832

namespace A141545

/-- `∩[A080639(n+1), A274557(n+1)]` -/
def P1939319945119804832.Spec : Prop :=
  ∀ n, (P1939319945119804832.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P8967264287876557209

`∩[A100959(n+1), A274557(n+1)]`
-/

namespace A141545.P8967264287876557209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P8967264287876557209

namespace A141545

/-- `∩[A100959(n+1), A274557(n+1)]` -/
def P8967264287876557209.Spec : Prop :=
  ∀ n, (P8967264287876557209.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P9719020773577566396

`∩[A088383(n+1), A274557(n+1)]`
-/

namespace A141545.P9719020773577566396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P9719020773577566396

namespace A141545

/-- `∩[A088383(n+1), A274557(n+1)]` -/
def P9719020773577566396.Spec : Prop :=
  ∀ n, (P9719020773577566396.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P8786302120233271641

`∩[A271345(n+1), A274557(n+1)]`
-/

namespace A141545.P8786302120233271641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P8786302120233271641

namespace A141545

/-- `∩[A271345(n+1), A274557(n+1)]` -/
def P8786302120233271641.Spec : Prop :=
  ∀ n, (P8786302120233271641.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P10979175418676265917

`∩[A088381(n+1), A274557(n+1)]`
-/

namespace A141545.P10979175418676265917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P10979175418676265917

namespace A141545

/-- `∩[A088381(n+1), A274557(n+1)]` -/
def P10979175418676265917.Spec : Prop :=
  ∀ n, (P10979175418676265917.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P14348188061135488730

`∩[A158871(n+1), A274557(n+1)]`
-/

namespace A141545.P14348188061135488730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P14348188061135488730

namespace A141545

/-- `∩[A158871(n+1), A274557(n+1)]` -/
def P14348188061135488730.Spec : Prop :=
  ∀ n, (P14348188061135488730.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P5032329224338070238

`∩[A048260(n+1), A274557(n+1)]`
-/

namespace A141545.P5032329224338070238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P5032329224338070238

namespace A141545

/-- `∩[A048260(n+1), A274557(n+1)]` -/
def P5032329224338070238.Spec : Prop :=
  ∀ n, (P5032329224338070238.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P7796599540443781941

`∩[A220571(n+1), A274557(n+1)]`
-/

namespace A141545.P7796599540443781941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P7796599540443781941

namespace A141545

/-- `∩[A220571(n+1), A274557(n+1)]` -/
def P7796599540443781941.Spec : Prop :=
  ∀ n, (P7796599540443781941.a n : ℤ) = A141545 (n + 1)

end A141545

/-! ## A141545.P144543244394314966

`∩[A253594(n+1), A274557(n+1)]`
-/

namespace A141545.P144543244394314966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141545.P144543244394314966

namespace A141545

/-- `∩[A253594(n+1), A274557(n+1)]` -/
def P144543244394314966.Spec : Prop :=
  ∀ n, (P144543244394314966.a n : ℤ) = A141545 (n + 1)

end A141545

/-!
# A141546: Numbers whose abundance is 14.

The programs for A141546, there is no canonical definition to state claims against.
-/

/-! ## A141546.P803762611923133715

`A274559(n+2)`
-/

namespace A141546.P803762611923133715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274559 (n + 2)

end

end A141546.P803762611923133715

/-! ## A141546.P1974185807396273087

`record[A274559(A085058(n))]`
-/

namespace A141546.P1974185807396273087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274559 (A085058 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141546.P1974185807396273087

/-!
# A141547: Numbers whose abundance is 16.

The programs for A141547, there is no canonical definition to state claims against.
-/

/-! ## A141547.P669388652828835801

`∩[A259174(n+1), A274561(n+1)]`
-/

namespace A141547.P669388652828835801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141547.P669388652828835801

/-! ## A141547.P16819973476900371801

`∩[A109510(n+1), A274561(n+1)]`
-/

namespace A141547.P16819973476900371801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141547.P16819973476900371801

/-! ## A141547.P15428655703946263546

`∩[A185031(n+1), A274561(n+1)]`
-/

namespace A141547.P15428655703946263546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141547.P15428655703946263546

/-! ## A141547.P6326551627879806165

`∩[A006039(n+1), A274561(n+1)]`
-/

namespace A141547.P6326551627879806165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141547.P6326551627879806165

/-! ## A141547.P11970221096239859892

`∩[A071395(n+1), A274561(n+1)]`
-/

namespace A141547.P11970221096239859892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141547.P11970221096239859892

/-!
# A141548: Numbers k whose deficiency is 6.

The programs for A141548, there is no canonical definition to state claims against.
-/

/-! ## A141548.P3882877923616148471

`A274552(A107032(n+1)-3)`
-/

namespace A141548.P3882877923616148471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274552 (A107032 (n + 1) - 3).toNat

end

end A141548.P3882877923616148471

/-! ## A141548.P13065814332342265446

`A274552(A065966(n+1))`
-/

namespace A141548.P13065814332342265446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274552 (A065966 (n + 1)).toNat

end

end A141548.P13065814332342265446

/-!
# A141549: Numbers k whose deficiency is 12: 2k - sigma(k) = 12.

The programs for A141549, there is no canonical definition to state claims against.
-/

/-! ## A141549.P2435098579843518279

`filter[A274558(n+2), A166946(#)]`
-/

namespace A141549.P2435098579843518279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274558 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166946 (f1 j).toNat = 1) n)

end

end A141549.P2435098579843518279

/-!
# A141550: Numbers n whose deficiency is 14.

The programs for A141550, there is no canonical definition to state claims against.
-/

/-! ## A141550.P15788501262649131680

`A274560(lt[3, A261719(n)])`
-/

namespace A141550.P15788501262649131680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A141550.P15788501262649131680

/-!
# A141551: Numbers k with property that if d divides k, then tau(tau(d)) also divides k.

The programs for A141551, there is no canonical definition to state claims against.
-/

/-! ## A141551.P10464614285181201458

`∑[∏[A057898(A241727(n))]]`
-/

namespace A141551.P10464614285181201458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057898 (A241727 (n + 45)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141551.P10464614285181201458

/-! ## A141551.P529377210896418592

`∑[∏[A244569(A068910(n))]]`
-/

namespace A141551.P529377210896418592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 (A068910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141551.P529377210896418592

/-! ## A141551.P7039842343252803003

`∑[A034326(A303997(n+1)!)]`
-/

namespace A141551.P7039842343252803003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034326 (Nat.factorial (A303997 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141551.P7039842343252803003

/-! ## A141551.P16254352048411165691

`∑[∏[A138904(A067162(n+4))]]`
-/

namespace A141551.P16254352048411165691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A067162 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141551.P16254352048411165691

/-! ## A141551.P15258846989796836946

`∑[∏[A138904(A270613(n+1))]]`
-/

namespace A141551.P15258846989796836946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A270613 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141551.P15258846989796836946

/-!
# A141555: Primes of the form c(p(n)) + p(c(n)), where c(n) = n-th composite and p(n) = n-th prime.

The programs for A141555, there is no canonical definition to state claims against.
-/

/-! ## A141555.P17933672072002559302

`p?[A022449(n+1)+A007821(n+1)]`
-/

namespace A141555.P17933672072002559302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022449 (n + 1) + A007821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141555.P17933672072002559302

/-! ## A141555.P16264589420021943215

`p?[A022449(n+1)+A000040(A018252(n+1))]`
-/

namespace A141555.P16264589420021943215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022449 (n + 1) + A000040 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141555.P16264589420021943215

/-! ## A141555.P10856610163062679055

`p?[A088982(n+1)+A002808(A000040(n+1))]`
-/

namespace A141555.P10856610163062679055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1) + A002808 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141555.P10856610163062679055

/-! ## A141555.P13339566286233522624

`p?[A088982(n+1)+A018252(A008864(n+1))]`
-/

namespace A141555.P13339566286233522624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1) + A018252 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141555.P13339566286233522624

/-! ## A141555.P3908834260219402740

`p?[A022449(n+2)+A000040(A002808(n+1))]`
-/

namespace A141555.P3908834260219402740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022449 (n + 2) + A000040 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141555.P3908834260219402740

/-!
# A141557: Nonprimes of form (p(c(n))-c(p(n))), where c(n)=n-th composite and p(n)=n-th prime.

The programs for A141557, there is no canonical definition to state claims against.
-/

/-! ## A141557.P3864186459055693170

`filter[A073168(n+1), A005171(#)]`
-/

namespace A141557.P3864186459055693170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A141557.P3864186459055693170

/-! ## A141557.P14497957526844274177

`filter[A073168(n+1), A174889(#)]`
-/

namespace A141557.P14497957526844274177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A141557.P14497957526844274177

/-!
# A141558: Primes of form (p(c(n))-c(p(n))), where c(n)=n-th composite and p(n)=n-th prime.

The programs for A141558, there is no canonical definition to state claims against.
-/

/-! ## A141558.P8803088851403672554

`p?[A073168(n+1)]`
-/

namespace A141558.P8803088851403672554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141558.P8803088851403672554

/-! ## A141558.P3325029840658432896

`filter[A073168(n+1), A010051(#)]`
-/

namespace A141558.P3325029840658432896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141558.P3325029840658432896

/-! ## A141558.P6131766233636724696

`filter[A073168(n+1), A171387(#)]`
-/

namespace A141558.P6131766233636724696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A141558.P6131766233636724696

/-! ## A141558.P521280176853827950

`filter[A073168(n+1), A257531(#)]`
-/

namespace A141558.P521280176853827950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A141558.P521280176853827950

/-! ## A141558.P3511661776909230983

`filter[A073168(n+1), A323153(#)]`
-/

namespace A141558.P3511661776909230983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141558.P3511661776909230983

/-! ## A141558.P17198584524685078373

`filter[A073168(n+2), A080339(#)]`
-/

namespace A141558.P17198584524685078373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073168 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A141558.P17198584524685078373

/-! ## A141558.P13674754320609058984

`filter[A073168(n+2), A080545(#)]`
-/

namespace A141558.P13674754320609058984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073168 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A141558.P13674754320609058984

/-! ## A141558.P12255268982894221391

`p?[A007821(n+1)-A022449(n+1)]`
-/

namespace A141558.P12255268982894221391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A022449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141558.P12255268982894221391

/-! ## A141558.P7558900700930389448

`p?[A088982(n+1)-A022449(n+2)]`
-/

namespace A141558.P7558900700930389448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1) - A022449 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141558.P7558900700930389448

/-! ## A141558.P17047172478387306996

`p?[A000040(A018252(n+1))-A022449(n+1)]`
-/

namespace A141558.P17047172478387306996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A018252 (n + 1)).toNat - A022449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141558.P17047172478387306996

/-!
# A141559: Primes of form (p(n)-r(n)), where A141468(n)=r(n)=n-th nonprime and p(n)=n-th prime.

The programs for A141559, the canonical program `A141559.P564601368839984872` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141559 has offset 1).

The definition of A141559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1061 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141559.P18352190049947893384

`p?[A161671(n+1)]`
-/

namespace A141559.P18352190049947893384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141559.P18352190049947893384

namespace A141559

/-- `p?[A161671(n+1)]` -/
def P18352190049947893384.Spec : Prop :=
  ∀ n, P18352190049947893384.a n = A141559 (n + 1)

end A141559

/-! ## A141559.P17259990631974980016

`filter[A161671(n+1), A010051(#)]`
-/

namespace A141559.P17259990631974980016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141559.P17259990631974980016

namespace A141559

/-- `filter[A161671(n+1), A010051(#)]` -/
def P17259990631974980016.Spec : Prop :=
  ∀ n, P17259990631974980016.a n = A141559 (n + 1)

end A141559

/-! ## A141559.P4313900525515320250

`p?[A000040(n+1)-A141468(n+1)]`
-/

namespace A141559.P4313900525515320250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141559.P4313900525515320250

namespace A141559

/-- `p?[A000040(n+1)-A141468(n+1)]` -/
def P4313900525515320250.Spec : Prop :=
  ∀ n, P4313900525515320250.a n = A141559 (n + 1)

end A141559

/-! ## A141559.P4577986850965830497

`p?[A008578(n+2)-A141468(n+1)]`
-/

namespace A141559.P4577986850965830497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141559.P4577986850965830497

namespace A141559

/-- `p?[A008578(n+2)-A141468(n+1)]` -/
def P4577986850965830497.Spec : Prop :=
  ∀ n, P4577986850965830497.a n = A141559 (n + 1)

end A141559

/-! ## A141559.P564601368839984872

`p?[A000040(n+1)-comp[A006530(n+2)]]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A141559

/-- `p?[A000040(n+1)-comp[A006530(n+2)]]` -/
def P564601368839984872.Spec : Prop :=
  ∀ n, P564601368839984872.a n = A141559 (n + 1)

theorem P564601368839984872.correct : P564601368839984872.Spec := by
  intro n
  simp only [A141559, Nat.add_sub_cancel]

end A141559

/-! ## A141559.P50083587385854899

`p?[A000040(n+1)-comp[A020639(n+2)]]`
-/

namespace A141559.P50083587385854899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141559.P50083587385854899

namespace A141559

/-- `p?[A000040(n+1)-comp[A020639(n+2)]]` -/
def P50083587385854899.Spec : Prop :=
  ∀ n, P50083587385854899.a n = A141559 (n + 1)

end A141559

/-! ## A141559.P18108008796417701167

`p?[A008578(n+2)-comp[A006530(n+2)]]`
-/

namespace A141559.P18108008796417701167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141559.P18108008796417701167

namespace A141559

/-- `p?[A008578(n+2)-comp[A006530(n+2)]]` -/
def P18108008796417701167.Spec : Prop :=
  ∀ n, P18108008796417701167.a n = A141559 (n + 1)

end A141559

/-! ## A141559.P2306478357519058990

`p?[A182986(n+2)-comp[A182986(n+2)]]`
-/

namespace A141559.P2306478357519058990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141559.P2306478357519058990

namespace A141559

/-- `p?[A182986(n+2)-comp[A182986(n+2)]]` -/
def P2306478357519058990.Spec : Prop :=
  ∀ n, P2306478357519058990.a n = A141559 (n + 1)

end A141559

/-! ## A141559.P2592530014875419783

`p?[A006093(n+1)+1-A141468(n+1)]`
-/

namespace A141559.P2592530014875419783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A141468 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141559.P2592530014875419783

namespace A141559

/-- `p?[A006093(n+1)+1-A141468(n+1)]` -/
def P2592530014875419783.Spec : Prop :=
  ∀ n, P2592530014875419783.a n = A141559 (n + 1)

end A141559

/-! ## A141559.P3460441121567468972

`p?[A008864(n+1)-(A141468(n+1)+1)]`
-/

namespace A141559.P3460441121567468972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A141468 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141559.P3460441121567468972

namespace A141559

/-- `p?[A008864(n+1)-(A141468(n+1)+1)]` -/
def P3460441121567468972.Spec : Prop :=
  ∀ n, P3460441121567468972.a n = A141559 (n + 1)

end A141559

/-! ## A141559.P17900498270450154454

`p?[A040976(n+1)+2-A141468(n+1)]`
-/

namespace A141559.P17900498270450154454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (2 - A141468 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141559.P17900498270450154454

namespace A141559

/-- `p?[A040976(n+1)+2-A141468(n+1)]` -/
def P17900498270450154454.Spec : Prop :=
  ∀ n, P17900498270450154454.a n = A141559 (n + 1)

end A141559

/-! ## A141559.P5104725465862577825

`p?[A014692(n+1)-A141468(n+1)+n]`
-/

namespace A141559.P5104725465862577825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - A141468 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141559.P5104725465862577825

namespace A141559

/-- `p?[A014692(n+1)-A141468(n+1)+n]` -/
def P5104725465862577825.Spec : Prop :=
  ∀ n, P5104725465862577825.a n = A141559 (n + 1)

end A141559

/-! ## A141559.P14068263157701674729

`p?[A000040(n+1)-(A173073(n+1)+n)]`
-/

namespace A141559.P14068263157701674729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A173073 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141559.P14068263157701674729

namespace A141559

/-- `p?[A000040(n+1)-(A173073(n+1)+n)]` -/
def P14068263157701674729.Spec : Prop :=
  ∀ n, P14068263157701674729.a n = A141559 (n + 1)

end A141559

/-! ## A141559.P15080201878332312926

`p?[record[A000010(n+1)+1]-A141468(n+1)]`
-/

namespace A141559.P15080201878332312926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141559.P15080201878332312926

namespace A141559

/-- `p?[record[A000010(n+1)+1]-A141468(n+1)]` -/
def P15080201878332312926.Spec : Prop :=
  ∀ n, P15080201878332312926.a n = A141559 (n + 1)

end A141559

/-! ## A141559.P2648264560640844915

`filter[A161671(n+1), A323153(#)]`
-/

namespace A141559.P2648264560640844915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A141559.P2648264560640844915

namespace A141559

/-- `filter[A161671(n+1), A323153(#)]` -/
def P2648264560640844915.Spec : Prop :=
  ∀ n, P2648264560640844915.a n = A141559 (n + 1)

end A141559

/-! ## A141559.P6092310783285119791

`p?[eq[1, A001222(n+1)]+1-A141468(n+1)]`
-/

namespace A141559.P6092310783285119791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ) - A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141559.P6092310783285119791

namespace A141559

/-- `p?[eq[1, A001222(n+1)]+1-A141468(n+1)]` -/
def P6092310783285119791.Spec : Prop :=
  ∀ n, P6092310783285119791.a n = A141559 (n + 1)

end A141559

/-! ## A141559.P11845742332116236789

`p?[eq[2, A000005(n+1)]+1-A141468(n+1)]`
-/

namespace A141559.P11845742332116236789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ) - A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141559.P11845742332116236789

namespace A141559

/-- `p?[eq[2, A000005(n+1)]+1-A141468(n+1)]` -/
def P11845742332116236789.Spec : Prop :=
  ∀ n, P11845742332116236789.a n = A141559 (n + 1)

end A141559

/-!
# A141560: Nonprimes of form (prime(n)-r(n)), where A141468(n)=r(n)=n-th nonprime and prime(n)=n-th prime.

The programs for A141560, there is no canonical definition to state claims against.
-/

/-! ## A141560.P15750599007854595905

`filter[A161671(n+1), A005171(#)]`
-/

namespace A141560.P15750599007854595905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A141560.P15750599007854595905

/-! ## A141560.P15225709333056683079

`filter[A168563(n+1), A005171(#)]`
-/

namespace A141560.P15225709333056683079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A141560.P15225709333056683079

/-! ## A141560.P4092778628650128082

`A026234(p?[A026234(A161671(n+1))])`
-/

namespace A141560.P4092778628650128082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A161671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141560.P4092778628650128082

/-! ## A141560.P4892807072158623542

`A026234(p?[A026234(A168563(n+1))])`
-/

namespace A141560.P4892807072158623542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A168563 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141560.P4892807072158623542

/-! ## A141560.P15669049516374124393

`filter[A161671(n+1), A174889(#)]`
-/

namespace A141560.P15669049516374124393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A141560.P15669049516374124393

/-!
# A141561: Primes of the form 7*k - prime(k) (terms can be repeated).

The programs for A141561, the canonical program `A141561.P7283071268337444597` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141561 has offset 1).

The definition of A141561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141561.P7283071268337444597

`p?[∑[7-A054541(n+1)]]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A141561

/-- `p?[∑[7-A054541(n+1)]]` -/
def P7283071268337444597.Spec : Prop :=
  ∀ n, P7283071268337444597.a n = A141561 (n + 1)

theorem P7283071268337444597.correct : P7283071268337444597.Spec := by
  intro n
  simp only [A141561, Nat.add_sub_cancel]

end A141561

/-! ## A141561.P17213015094346174848

`p?[7*n-A008578(n+1)]`
-/

namespace A141561.P17213015094346174848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P17213015094346174848

namespace A141561

/-- `p?[7*n-A008578(n+1)]` -/
def P17213015094346174848.Spec : Prop :=
  ∀ n, P17213015094346174848.a n = A141561 (n + 1)

end A141561

/-! ## A141561.P5145473247697546250

`p?[7*n-A182986(n+1)]`
-/

namespace A141561.P5145473247697546250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P5145473247697546250

namespace A141561

/-- `p?[7*n-A182986(n+1)]` -/
def P5145473247697546250.Spec : Prop :=
  ∀ n, P5145473247697546250.a n = A141561 (n + 1)

end A141561

/-! ## A141561.P97098704465800370

`p?[7*n-(A028815(n)-1)]`
-/

namespace A141561.P97098704465800370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - (A028815 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P97098704465800370

namespace A141561

/-- `p?[7*n-(A028815(n)-1)]` -/
def P97098704465800370.Spec : Prop :=
  ∀ n, P97098704465800370.a n = A141561 (n + 1)

end A141561

/-! ## A141561.P14919732619325820525

`p?[7*n-record[A006530(n+1)]]`
-/

namespace A141561.P14919732619325820525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P14919732619325820525

namespace A141561

/-- `p?[7*n-record[A006530(n+1)]]` -/
def P14919732619325820525.Spec : Prop :=
  ∀ n, P14919732619325820525.a n = A141561 (n + 1)

end A141561

/-! ## A141561.P9881088791180493179

`p?[7*(n+1)-A000040(n+1)]`
-/

namespace A141561.P9881088791180493179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) : ℤ) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P9881088791180493179

namespace A141561

/-- `p?[7*(n+1)-A000040(n+1)]` -/
def P9881088791180493179.Spec : Prop :=
  ∀ n, P9881088791180493179.a n = A141561 (n + 1)

end A141561

/-! ## A141561.P17929836175038933483

`p?[7*n+6-A006093(n+1)]`
-/

namespace A141561.P17929836175038933483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 6 : ℤ) - A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P17929836175038933483

namespace A141561

/-- `p?[7*n+6-A006093(n+1)]` -/
def P17929836175038933483.Spec : Prop :=
  ∀ n, P17929836175038933483.a n = A141561 (n + 1)

end A141561

/-! ## A141561.P2890741253128969176

`p?[7*(n+1)-(A014692(n+1)+n)]`
-/

namespace A141561.P2890741253128969176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (n + 1) : ℤ) - (A014692 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P2890741253128969176

namespace A141561

/-- `p?[7*(n+1)-(A014692(n+1)+n)]` -/
def P2890741253128969176.Spec : Prop :=
  ∀ n, P2890741253128969176.a n = A141561 (n + 1)

end A141561

/-! ## A141561.P10021756690496847149

`p?[A017041(n)-A040976(n+1)]`
-/

namespace A141561.P10021756690496847149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n - A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P10021756690496847149

namespace A141561

/-- `p?[A017041(n)-A040976(n+1)]` -/
def P10021756690496847149.Spec : Prop :=
  ∀ n, P10021756690496847149.a n = A141561 (n + 1)

end A141561

/-! ## A141561.P7793722789683971725

`p?[A016969(n)-A065890(n+1)]`
-/

namespace A141561.P7793722789683971725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - A065890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P7793722789683971725

namespace A141561

/-- `p?[A016969(n)-A065890(n+1)]` -/
def P7793722789683971725.Spec : Prop :=
  ∀ n, P7793722789683971725.a n = A141561 (n + 1)

end A141561

/-! ## A141561.P9824847811258457622

`p?[A004771(n)-A095116(n+1)]`
-/

namespace A141561.P9824847811258457622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n - A095116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P9824847811258457622

namespace A141561

/-- `p?[A004771(n)-A095116(n+1)]` -/
def P9824847811258457622.Spec : Prop :=
  ∀ n, P9824847811258457622.a n = A141561 (n + 1)

end A141561

/-! ## A141561.P6713314424749001443

`p?[A017053(n)+1-A000040(n+1)]`
-/

namespace A141561.P6713314424749001443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n + (1 - A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P6713314424749001443

namespace A141561

/-- `p?[A017053(n)+1-A000040(n+1)]` -/
def P6713314424749001443.Spec : Prop :=
  ∀ n, P6713314424749001443.a n = A141561 (n + 1)

end A141561

/-! ## A141561.P5247874489276805634

`p?[A017041(n)+2-A000040(n+1)]`
-/

namespace A141561.P5247874489276805634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n + (2 - A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P5247874489276805634

namespace A141561

/-- `p?[A017041(n)+2-A000040(n+1)]` -/
def P5247874489276805634.Spec : Prop :=
  ∀ n, P5247874489276805634.a n = A141561 (n + 1)

end A141561

/-! ## A141561.P279634628902224094

`p?[A017017(n)+4-A000040(n+1)]`
-/

namespace A141561.P279634628902224094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + (4 - A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P279634628902224094

namespace A141561

/-- `p?[A017017(n)+4-A000040(n+1)]` -/
def P279634628902224094.Spec : Prop :=
  ∀ n, P279634628902224094.a n = A141561 (n + 1)

end A141561

/-! ## A141561.P4779465979882569216

`p?[7*n-A026239(A018252(n+1))]`
-/

namespace A141561.P4779465979882569216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - A026239 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P4779465979882569216

namespace A141561

/-- `p?[7*n-A026239(A018252(n+1))]` -/
def P4779465979882569216.Spec : Prop :=
  ∀ n, P4779465979882569216.a n = A141561 (n + 1)

end A141561

/-! ## A141561.P4802722095203506949

`p?[A004771(n)-(A000040(n+1)+n)]`
-/

namespace A141561.P4802722095203506949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n - (A000040 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P4802722095203506949

namespace A141561

/-- `p?[A004771(n)-(A000040(n+1)+n)]` -/
def P4802722095203506949.Spec : Prop :=
  ∀ n, P4802722095203506949.a n = A141561 (n + 1)

end A141561

/-! ## A141561.P7736812853476443393

`p?[A008458(n)-A008578(n+1)+n]`
-/

namespace A141561.P7736812853476443393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A008578 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141561.P7736812853476443393

namespace A141561

/-- `p?[A008458(n)-A008578(n+1)+n]` -/
def P7736812853476443393.Spec : Prop :=
  ∀ n, P7736812853476443393.a n = A141561 (n + 1)

end A141561

/-!
# A141563: Primes of the form 2*3*5*7*n+79.

The programs for A141563, the canonical program `A141563.P13827635468112491936` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141563 has offset 1).

The definition of A141563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141563.P13827635468112491936

`∩[A140743(n+1), A142082(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A141563

/-- `∩[A140743(n+1), A142082(n+1)]` -/
def P13827635468112491936.Spec : Prop :=
  ∀ n, (P13827635468112491936.a n : ℤ) = A141563 (n + 1)

theorem P13827635468112491936.correct : P13827635468112491936.Spec := by
  intro n
  simp only [A141563, Nat.add_sub_cancel]

end A141563

/-! ## A141563.P1543028155581814134

`∩[A030433(n+1), A140743(n+1)]`
-/

namespace A141563.P1543028155581814134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P1543028155581814134

namespace A141563

/-- `∩[A030433(n+1), A140743(n+1)]` -/
def P1543028155581814134.Spec : Prop :=
  ∀ n, (P1543028155581814134.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P4645108122418578013

`∩[A030433(n+1), A141895(n+1)]`
-/

namespace A141563.P4645108122418578013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P4645108122418578013

namespace A141563

/-- `∩[A030433(n+1), A141895(n+1)]` -/
def P4645108122418578013.Spec : Prop :=
  ∀ n, (P4645108122418578013.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P9654182285996920765

`∩[A140743(n+1), A141895(n+1)]`
-/

namespace A141563.P9654182285996920765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P9654182285996920765

namespace A141563

/-- `∩[A140743(n+1), A141895(n+1)]` -/
def P9654182285996920765.Spec : Prop :=
  ∀ n, (P9654182285996920765.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P16841155130141309607

`∩[A141895(n+1), A142082(n+1)]`
-/

namespace A141563.P16841155130141309607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P16841155130141309607

namespace A141563

/-- `∩[A141895(n+1), A142082(n+1)]` -/
def P16841155130141309607.Spec : Prop :=
  ∀ n, (P16841155130141309607.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P13815549771313979730

`∩[A139503(n+1), A140743(n+1)]`
-/

namespace A141563.P13815549771313979730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P13815549771313979730

namespace A141563

/-- `∩[A139503(n+1), A140743(n+1)]` -/
def P13815549771313979730.Spec : Prop :=
  ∀ n, (P13815549771313979730.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P3709930374974046366

`∩[A139503(n+1), A142082(n+1)]`
-/

namespace A141563.P3709930374974046366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P3709930374974046366

namespace A141563

/-- `∩[A139503(n+1), A142082(n+1)]` -/
def P3709930374974046366.Spec : Prop :=
  ∀ n, (P3709930374974046366.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P13949603072678173163

`∩[A132234(n+1), A140743(n+1)]`
-/

namespace A141563.P13949603072678173163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P13949603072678173163

namespace A141563

/-- `∩[A132234(n+1), A140743(n+1)]` -/
def P13949603072678173163.Spec : Prop :=
  ∀ n, (P13949603072678173163.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P11463210918894259563

`∩[A132234(n+1), A141895(n+1)]`
-/

namespace A141563.P11463210918894259563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P11463210918894259563

namespace A141563

/-- `∩[A132234(n+1), A141895(n+1)]` -/
def P11463210918894259563.Spec : Prop :=
  ∀ n, (P11463210918894259563.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P1387123096013522356

`∩[A132234(n+1), A142082(n+1)]`
-/

namespace A141563.P1387123096013522356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P1387123096013522356

namespace A141563

/-- `∩[A132234(n+1), A142082(n+1)]` -/
def P1387123096013522356.Spec : Prop :=
  ∀ n, (P1387123096013522356.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P14851980686863847489

`p?[7*15*n-26]`
-/

namespace A141563.P14851980686863847489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (15 * n) : ℤ) - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141563.P14851980686863847489

namespace A141563

/-- `p?[7*15*n-26]` -/
def P14851980686863847489.Spec : Prop :=
  ∀ n, P14851980686863847489.a n = A141563 (n + 1)

end A141563

/-! ## A141563.P16357640921630889766

`∩[A045383(n+1), A132234(n+1)]`
-/

namespace A141563.P16357640921630889766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P16357640921630889766

namespace A141563

/-- `∩[A045383(n+1), A132234(n+1)]` -/
def P16357640921630889766.Spec : Prop :=
  ∀ n, (P16357640921630889766.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P10887053418919717301

`∩[A045392(n+1), A132234(n+1)]`
-/

namespace A141563.P10887053418919717301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P10887053418919717301

namespace A141563

/-- `∩[A045392(n+1), A132234(n+1)]` -/
def P10887053418919717301.Spec : Prop :=
  ∀ n, (P10887053418919717301.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P15200463396069775298

`∩[A045383(n+1), A140743(n+1)]`
-/

namespace A141563.P15200463396069775298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P15200463396069775298

namespace A141563

/-- `∩[A045383(n+1), A140743(n+1)]` -/
def P15200463396069775298.Spec : Prop :=
  ∀ n, (P15200463396069775298.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P9786944687861195696

`∩[A045392(n+1), A140743(n+1)]`
-/

namespace A141563.P9786944687861195696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P9786944687861195696

namespace A141563

/-- `∩[A045392(n+1), A140743(n+1)]` -/
def P9786944687861195696.Spec : Prop :=
  ∀ n, (P9786944687861195696.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P13640660723817092580

`∩[A132234(n+1), A140442(n+1)]`
-/

namespace A141563.P13640660723817092580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P13640660723817092580

namespace A141563

/-- `∩[A132234(n+1), A140442(n+1)]` -/
def P13640660723817092580.Spec : Prop :=
  ∀ n, (P13640660723817092580.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P10964571467927149756

`∩[A140442(n+1), A140743(n+1)]`
-/

namespace A141563.P10964571467927149756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P10964571467927149756

namespace A141563

/-- `∩[A140442(n+1), A140743(n+1)]` -/
def P10964571467927149756.Spec : Prop :=
  ∀ n, (P10964571467927149756.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P257564527244781914

`∩[A140743(n+1), A243174(n+1)]`
-/

namespace A141563.P257564527244781914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P257564527244781914

namespace A141563

/-- `∩[A140743(n+1), A243174(n+1)]` -/
def P257564527244781914.Spec : Prop :=
  ∀ n, (P257564527244781914.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P15468371377598173208

`∩[A142082(n+1), A243174(n+1)]`
-/

namespace A141563.P15468371377598173208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P15468371377598173208

namespace A141563

/-- `∩[A142082(n+1), A243174(n+1)]` -/
def P15468371377598173208.Spec : Prop :=
  ∀ n, (P15468371377598173208.a n : ℤ) = A141563 (n + 1)

end A141563

/-! ## A141563.P1501882093044553867

`∩[A106881(n+1), A140743(n+1)]`
-/

namespace A141563.P1501882093044553867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P1501882093044553867

namespace A141563

/-- `∩[A106881(n+1), A140743(n+1)]` -/
def P1501882093044553867.Spec : Prop :=
  ∀ n, (P1501882093044553867.a n : ℤ) = A141563 (n + 1)

end A141563

/-!
# A141564: Subtract 1 from all bases and exponents which are greater than 1 in the prime number decomposition of n.

The programs for A141564, there is no canonical definition to state claims against.
-/

/-! ## A141564.P9413286549584210742

`A326297(lcm(1-(4/2+n), ∏{p}[n+1, #²]))%Δ[n²]`
-/

namespace A141564.P9413286549584210742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326297 (Int.lcm (SequenceMachineLib.roundAway (1 - ((4 : ℚ) / 2 + (n : ℚ)))) ((∏ p ∈ Nat.primeFactors (f1 n), p ^ 2 : ℕ) : ℤ))) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A141564.P9413286549584210742

/-! ## A141564.P13443821291771765789

`A326297(A197863(n+1))%(n+1)`
-/

namespace A141564.P13443821291771765789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326297 (A197863 (n + 1)).toNat) (n + 1 : ℤ)

end

end A141564.P13443821291771765789

/-! ## A141564.P18058256982212167863

`A326297(A197863(n+1))-A000007(n)`
-/

namespace A141564.P18058256982212167863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326297 (A197863 (n + 1)).toNat - A000007 n

end

end A141564.P18058256982212167863

/-! ## A141564.P17020018966816254284

`A057427(n)*A326297(A197863(n+1))`
-/

namespace A141564.P17020018966816254284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A326297 (A197863 (n + 1)).toNat

end

end A141564.P17020018966816254284

/-! ## A141564.P2508950283109280600

`and(A003817(n), A326297(A197863(n+1)))`
-/

namespace A141564.P2508950283109280600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A326297 (A197863 (n + 1)).toNat)

end

end A141564.P2508950283109280600

/-! ## A141564.P17368451974353965463

`A326297(A197863(n+1))-A008683((n+1)²)`
-/

namespace A141564.P17368451974353965463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326297 (A197863 (n + 1)).toNat - A008683 ((n + 1) ^ 2)

end

end A141564.P17368451974353965463

/-! ## A141564.P16441286027850876736

`A326297(A197863(n+1))-and(1, A000010(n+2))`
-/

namespace A141564.P16441286027850876736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326297 (A197863 (n + 1)).toNat - Int.land 1 (A000010 (n + 2))

end

end A141564.P16441286027850876736

/-! ## A141564.P18376484321316990207

`and(1, A000040(n+1))*A326297(A197863(n+1))`
-/

namespace A141564.P18376484321316990207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A326297 (A197863 (n + 1)).toNat

end

end A141564.P18376484321316990207

/-! ## A141564.P3176336746826018967

`A008683(2*A000040(n+1))*A326297(A197863(n+1))`
-/

namespace A141564.P3176336746826018967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000040 (n + 1)).toNat * A326297 (A197863 (n + 1)).toNat

end

end A141564.P3176336746826018967

/-!
# A141565: Add 1 to all bases and exponents which are greater than 1 in the prime number decomposition of n.

The programs for A141565, the canonical program `A141565.P5722058412581182413` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141565 has offset 1).

The definition of A141565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141565.P12133629151445535328

`A064478(A007948(n+1))*A327564(n+1)`
-/

namespace A141565.P12133629151445535328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064478 (A007948 (n + 1)).toNat * A327564 (n + 1)

end

end A141565.P12133629151445535328

namespace A141565

/-- `A064478(A007948(n+1))*A327564(n+1)` -/
def P12133629151445535328.Spec : Prop :=
  ∀ n, P12133629151445535328.a n = A141565 (n + 1)

end A141565

/-! ## A141565.P13425798775502021298

`A064478(n+1)*A295295(n+1)`
-/

namespace A141565.P13425798775502021298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064478 (n + 1) * A295295 (n + 1)

end

end A141565.P13425798775502021298

namespace A141565

/-- `A064478(n+1)*A295295(n+1)` -/
def P13425798775502021298.Spec : Prop :=
  ∀ n, P13425798775502021298.a n = A141565 (n + 1)

end A141565

/-! ## A141565.P397041429266905193

`A048250(A000188(n+1))*A064478(n+1)`
-/

namespace A141565.P397041429266905193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A000188 (n + 1)).toNat * A064478 (n + 1)

end

end A141565.P397041429266905193

namespace A141565

/-- `A048250(A000188(n+1))*A064478(n+1)` -/
def P397041429266905193.Spec : Prop :=
  ∀ n, P397041429266905193.a n = A141565 (n + 1)

end A141565

/-! ## A141565.P5722058412581182413

`A048250(A003557(n+1))*A064478(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A141565

/-- `A048250(A003557(n+1))*A064478(n+1)` -/
def P5722058412581182413.Spec : Prop :=
  ∀ n, P5722058412581182413.a n = A141565 (n + 1)

theorem P5722058412581182413.correct : P5722058412581182413.Spec := by
  intro n
  simp only [A141565, Nat.add_sub_cancel]

end A141565

/-! ## A141565.P5235711163659703757

`A254667(A003959(n+1))*A295295(n+1)`
-/

namespace A141565.P5235711163659703757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A003959 (n + 1)).toNat * A295295 (n + 1)

end

end A141565.P5235711163659703757

namespace A141565

/-- `A254667(A003959(n+1))*A295295(n+1)` -/
def P5235711163659703757.Spec : Prop :=
  ∀ n, P5235711163659703757.a n = A141565 (n + 1)

end A141565

/-! ## A141565.P8893575917456758169

`A064478((n+1)*A071773(n+1))`
-/

namespace A141565.P8893575917456758169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064478 ((n + 1 : ℤ) * A071773 (n + 1)).toNat

end

end A141565.P8893575917456758169

namespace A141565

/-- `A064478((n+1)*A071773(n+1))` -/
def P8893575917456758169.Spec : Prop :=
  ∀ n, P8893575917456758169.a n = A141565 (n + 1)

end A141565

/-! ## A141565.P16272496306750180384

`A064478((n+1)*A007947(A003557(n+1)))`
-/

namespace A141565.P16272496306750180384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064478 ((n + 1 : ℤ) * A007947 (A003557 (n + 1)).toNat).toNat

end

end A141565.P16272496306750180384

namespace A141565

/-- `A064478((n+1)*A007947(A003557(n+1)))` -/
def P16272496306750180384.Spec : Prop :=
  ∀ n, P16272496306750180384.a n = A141565 (n + 1)

end A141565

/-! ## A141565.P10927113553514805014

`A064478(A003557(n+1)*A007948(n+1))`
-/

namespace A141565.P10927113553514805014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064478 (A003557 (n + 1) * A007948 (n + 1)).toNat

end

end A141565.P10927113553514805014

namespace A141565

/-- `A064478(A003557(n+1)*A007948(n+1))` -/
def P10927113553514805014.Spec : Prop :=
  ∀ n, P10927113553514805014.a n = A141565 (n + 1)

end A141565

/-! ## A141565.P10811364419388703922

`A064478(A007947(n+1)*A057521(n+1))`
-/

namespace A141565.P10811364419388703922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064478 (A007947 (n + 1) * A057521 (n + 1)).toNat

end

end A141565.P10811364419388703922

namespace A141565

/-- `A064478(A007947(n+1)*A057521(n+1))` -/
def P10811364419388703922.Spec : Prop :=
  ∀ n, P10811364419388703922.a n = A141565 (n + 1)

end A141565

/-!
# A141566: Primes and exponents in the prime number decomposition of n replaced by primes at these positions.

The programs for A141566, there is no canonical definition to state claims against.
-/

/-! ## A141566.P15415543082315645682

`A331737(A321874(n+1)+A000007(n))`
-/

namespace A141566.P15415543082315645682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A321874 (n + 1) + A000007 n).toNat

end

end A141566.P15415543082315645682

/-! ## A141566.P16836198018686433661

`A331737(A054977(n)*A321874(n+1))`
-/

namespace A141566.P16836198018686433661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A054977 n * A321874 (n + 1)).toNat

end

end A141566.P16836198018686433661

/-! ## A141566.P12920554347451670299

`A331737(lcm(A054977(n), A321874(n+1)))`
-/

namespace A141566.P12920554347451670299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (Int.lcm (A054977 n) (A321874 (n + 1)))

end

end A141566.P12920554347451670299

/-! ## A141566.P7669414186436109047

`A331737(A321874(n+1)+A054977(n)-1)`
-/

namespace A141566.P7669414186436109047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A321874 (n + 1) + (A054977 n - 1)).toNat

end

end A141566.P7669414186436109047

/-! ## A141566.P15130192482225111426

`A319993(A064988((n+1)²))+char[32*n]`
-/

namespace A141566.P15130192482225111426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319993 (A064988 ((n + 1) ^ 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A141566.P15130192482225111426

/-!
# A141567: Bases and exponents in the prime decomposition of n replaced by nonprimes with these indices.

The programs for A141567, there is no canonical definition to state claims against.
-/

/-! ## A141567.P16691082180167297127

`A018252(∏{p}[n+1, #-1])%A122539(n)`
-/

namespace A141567.P16691082180167297127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat) (A122539 n)

end

end A141567.P16691082180167297127

/-! ## A141567.P15638583161102092129

`∑{p}[A006530(A077168(n)), A141468(#)]`
-/

namespace A141567.P15638583161102092129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A141468 p

end

end A141567.P15638583161102092129

/-! ## A141567.P15412686682609391326

`A141468(A077168(n)/A052126(n+1))`
-/

namespace A141567.P15412686682609391326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (SequenceMachineLib.roundAway ((A077168 n : ℚ) / (A052126 (n + 1) : ℚ))).toNat

end

end A141567.P15412686682609391326

/-! ## A141567.P13059952948655935930

`A141468(A006530(n+1)%A058328(n+1))`
-/

namespace A141567.P13059952948655935930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (Int.tmod (A006530 (n + 1)) (A058328 (n + 1))).toNat

end

end A141567.P13059952948655935930

/-! ## A141567.P11126686566440396897

`A141468(A006530(n+1))%A064539(n+1)`
-/

namespace A141567.P11126686566440396897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141468 (A006530 (n + 1)).toNat) (A064539 (n + 1))

end

end A141567.P11126686566440396897

/-!
# A141570: Primes of the form 2*3*5*7*n+83.

The programs for A141570, the canonical program `A141570.P17933169272359299398` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141570 has offset 1).

The definition of A141570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141570.P11492995856417508660

`∩[A140771(n+1), A142085(n+1)]`
-/

namespace A141570.P11492995856417508660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P11492995856417508660

namespace A141570

/-- `∩[A140771(n+1), A142085(n+1)]` -/
def P11492995856417508660.Spec : Prop :=
  ∀ n, (P11492995856417508660.a n : ℤ) = A141570 (n + 1)

end A141570

/-! ## A141570.P15307087232387037258

`∩[A030431(n+1), A140771(n+1)]`
-/

namespace A141570.P15307087232387037258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P15307087232387037258

namespace A141570

/-- `∩[A030431(n+1), A140771(n+1)]` -/
def P15307087232387037258.Spec : Prop :=
  ∀ n, (P15307087232387037258.a n : ℤ) = A141570 (n + 1)

end A141570

/-! ## A141570.P15877555868878192835

`∩[A030431(n+1), A141898(n+1)]`
-/

namespace A141570.P15877555868878192835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P15877555868878192835

namespace A141570

/-- `∩[A030431(n+1), A141898(n+1)]` -/
def P15877555868878192835.Spec : Prop :=
  ∀ n, (P15877555868878192835.a n : ℤ) = A141570 (n + 1)

end A141570

/-! ## A141570.P17933169272359299398

`∩[A140771(n+1), A141898(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141570

/-- `∩[A140771(n+1), A141898(n+1)]` -/
def P17933169272359299398.Spec : Prop :=
  ∀ n, (P17933169272359299398.a n : ℤ) = A141570 (n + 1)

theorem P17933169272359299398.correct : P17933169272359299398.Spec := by
  intro n
  simp only [A141570, Nat.add_sub_cancel]

end A141570

/-! ## A141570.P9344328374924666007

`∩[A141898(n+1), A142085(n+1)]`
-/

namespace A141570.P9344328374924666007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P9344328374924666007

namespace A141570

/-- `∩[A141898(n+1), A142085(n+1)]` -/
def P9344328374924666007.Spec : Prop :=
  ∀ n, (P9344328374924666007.a n : ℤ) = A141570 (n + 1)

end A141570

/-! ## A141570.P4444447823650295724

`∩[A132235(n+1), A140771(n+1)]`
-/

namespace A141570.P4444447823650295724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P4444447823650295724

namespace A141570

/-- `∩[A132235(n+1), A140771(n+1)]` -/
def P4444447823650295724.Spec : Prop :=
  ∀ n, (P4444447823650295724.a n : ℤ) = A141570 (n + 1)

end A141570

/-! ## A141570.P13021029529289451014

`∩[A132235(n+1), A141898(n+1)]`
-/

namespace A141570.P13021029529289451014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P13021029529289451014

namespace A141570

/-- `∩[A132235(n+1), A141898(n+1)]` -/
def P13021029529289451014.Spec : Prop :=
  ∀ n, (P13021029529289451014.a n : ℤ) = A141570 (n + 1)

end A141570

/-! ## A141570.P1957027916355955710

`∩[A132235(n+1), A142085(n+1)]`
-/

namespace A141570.P1957027916355955710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P1957027916355955710

namespace A141570

/-- `∩[A132235(n+1), A142085(n+1)]` -/
def P1957027916355955710.Spec : Prop :=
  ∀ n, (P1957027916355955710.a n : ℤ) = A141570 (n + 1)

end A141570

/-! ## A141570.P9502029174278470676

`p?[42*(n+1)-n%5]`
-/

namespace A141570.P9502029174278470676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (42 * (n + 1) : ℤ) - ((n % 5 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141570.P9502029174278470676

namespace A141570

/-- `p?[42*(n+1)-n%5]` -/
def P9502029174278470676.Spec : Prop :=
  ∀ n, P9502029174278470676.a n = A141570 (n + 1)

end A141570

/-! ## A141570.P10821468461546290672

`p?[6*7*(5*n+2)-1]`
-/

namespace A141570.P10821468461546290672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (7 * (5 * n + 2)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141570.P10821468461546290672

namespace A141570

/-- `p?[6*7*(5*n+2)-1]` -/
def P10821468461546290672.Spec : Prop :=
  ∀ n, P10821468461546290672.a n = A141570 (n + 1)

end A141570

/-! ## A141570.P4818221656477340864

`∩[A045464(n+1), A132235(n+1)]`
-/

namespace A141570.P4818221656477340864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P4818221656477340864

namespace A141570

/-- `∩[A045464(n+1), A132235(n+1)]` -/
def P4818221656477340864.Spec : Prop :=
  ∀ n, (P4818221656477340864.a n : ℤ) = A141570 (n + 1)

end A141570

/-! ## A141570.P7285212264169103347

`∩[A045473(n+1), A132235(n+1)]`
-/

namespace A141570.P7285212264169103347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P7285212264169103347

namespace A141570

/-- `∩[A045473(n+1), A132235(n+1)]` -/
def P7285212264169103347.Spec : Prop :=
  ∀ n, (P7285212264169103347.a n : ℤ) = A141570 (n + 1)

end A141570

/-! ## A141570.P17266326643273103549

`∩[A045464(n+1), A140771(n+1)]`
-/

namespace A141570.P17266326643273103549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P17266326643273103549

namespace A141570

/-- `∩[A045464(n+1), A140771(n+1)]` -/
def P17266326643273103549.Spec : Prop :=
  ∀ n, (P17266326643273103549.a n : ℤ) = A141570 (n + 1)

end A141570

/-! ## A141570.P12091885108908581450

`∩[A045473(n+1), A140771(n+1)]`
-/

namespace A141570.P12091885108908581450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P12091885108908581450

namespace A141570

/-- `∩[A045473(n+1), A140771(n+1)]` -/
def P12091885108908581450.Spec : Prop :=
  ∀ n, (P12091885108908581450.a n : ℤ) = A141570 (n + 1)

end A141570

/-! ## A141570.P6470855179243541820

`∩[A004624(n+1), A132235(n+1)]`
-/

namespace A141570.P6470855179243541820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P6470855179243541820

namespace A141570

/-- `∩[A004624(n+1), A132235(n+1)]` -/
def P6470855179243541820.Spec : Prop :=
  ∀ n, (P6470855179243541820.a n : ℤ) = A141570 (n + 1)

end A141570

/-! ## A141570.P14619152487256063998

`∩[A004624(n+1), A140771(n+1)]`
-/

namespace A141570.P14619152487256063998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P14619152487256063998

namespace A141570

/-- `∩[A004624(n+1), A140771(n+1)]` -/
def P14619152487256063998.Spec : Prop :=
  ∀ n, (P14619152487256063998.a n : ℤ) = A141570 (n + 1)

end A141570

/-! ## A141570.P13842433766443437117

`∩[A106859(n+1), A140771(n+1)]`
-/

namespace A141570.P13842433766443437117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P13842433766443437117

namespace A141570

/-- `∩[A106859(n+1), A140771(n+1)]` -/
def P13842433766443437117.Spec : Prop :=
  ∀ n, (P13842433766443437117.a n : ℤ) = A141570 (n + 1)

end A141570

/-! ## A141570.P3774893343347432367

`∩[A106859(n+1), A142085(n+1)]`
-/

namespace A141570.P3774893343347432367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P3774893343347432367

namespace A141570

/-- `∩[A106859(n+1), A142085(n+1)]` -/
def P3774893343347432367.Spec : Prop :=
  ∀ n, (P3774893343347432367.a n : ℤ) = A141570 (n + 1)

end A141570

/-! ## A141570.P2816277117093188662

`∩[A140771(n+1), A343241(n+1)]`
-/

namespace A141570.P2816277117093188662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P2816277117093188662

namespace A141570

/-- `∩[A140771(n+1), A343241(n+1)]` -/
def P2816277117093188662.Spec : Prop :=
  ∀ n, (P2816277117093188662.a n : ℤ) = A141570 (n + 1)

end A141570

/-! ## A141570.P13440421322131347252

`∩[A142085(n+1), A343241(n+1)]`
-/

namespace A141570.P13440421322131347252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141570.P13440421322131347252

namespace A141570

/-- `∩[A142085(n+1), A343241(n+1)]` -/
def P13440421322131347252.Spec : Prop :=
  ∀ n, (P13440421322131347252.a n : ℤ) = A141570 (n + 1)

end A141570

/-!
# A141571: Decimal expansion of 11999/99900.

The programs for A141571, the canonical program `A141571.P11709835996077577978` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141571 has offset 0).

The definition of A141571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141571.P11709835996077577978

`char[1]+char[∑[n%3]]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141571

/-- `char[1]+char[∑[n%3]]` -/
def P11709835996077577978.Spec : Prop :=
  ∀ n, (P11709835996077577978.a n : ℤ) = A141571 n

theorem P11709835996077577978.correct : P11709835996077577978.Spec := by
  intro n
  simp only [A141571]

end A141571

/-!
# A141572: Products of pairs of the infinite list of primes generated by flattening the factorizations of the integers.

The programs for A141572, there is no canonical definition to state claims against.
-/

/-! ## A141572.P5942379533974760179

`A027746(2*(n+1))*A027746(2*n+1)`
-/

namespace A141572.P5942379533974760179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (2 * (n + 1)) * A027746 (2 * n + 1)

end

end A141572.P5942379533974760179

/-! ## A141572.P10715728601138245789

`A006530(A265110(2*n+1))*A006530(A265110(2*(n+1)))`
-/

namespace A141572.P10715728601138245789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A265110 (2 * n + 1)).toNat * A006530 (A265110 (2 * (n + 1))).toNat

end

end A141572.P10715728601138245789

/-! ## A141572.P5799101474228775527

`A175943(2*(n+1))/A175943(A185048(2*n+1))`
-/

namespace A141572.P5799101474228775527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175943 (2 * (n + 1)) : ℚ) / (A175943 (A185048 (2 * n + 1)).toNat : ℚ)

end

end A141572.P5799101474228775527

/-! ## A141572.P8809704240845356428

`abs(A207338(2*n+1)*A207338(2*(n+1)))`
-/

namespace A141572.P8809704240845356428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A207338 (2 * n + 1) * A207338 (2 * (n + 1))|

end

end A141572.P8809704240845356428

/-! ## A141572.P164721913501407402

`gcd(A207338(2*n+1)*A207338(2*n+2), A000038(n+1))`
-/

namespace A141572.P164721913501407402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A207338 (2 * n + 1) * A207338 (2 * n + 2)) (A000038 (n + 1))

end

end A141572.P164721913501407402

/-!
# A141573: Prime powers of pairs of the infinite list generated by the flat list of the factorizations of all integers.

The programs for A141573, there is no canonical definition to state claims against.
-/

/-! ## A141573.P1929531766881915182

`A027746(2*n+1)^A027746(2*(n+1))`
-/

namespace A141573.P1929531766881915182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027746 (2 * n + 1) : ℚ) ^ (A027746 (2 * (n + 1)) : ℤ)

end

end A141573.P1929531766881915182

/-! ## A141573.P1524635461833838626

`root(A027746(2*n+1), 1/A027746(2*n+2))`
-/

namespace A141573.P1524635461833838626
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A027746 (2 * n + 1) : ℝ) ^ (1 / (1 / (A027746 (2 * n + 2) : ℚ) : ℝ))

end

end A141573.P1524635461833838626

/-!
# A141574: Sums of pairs of the infinite list generated by the flat list of the factorizations of all integers.

The programs for A141574, there is no canonical definition to state claims against.
-/

/-! ## A141574.P7654022413136825712

`A063655(A141572(n+1))`
-/

namespace A141574.P7654022413136825712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A141572 (n + 1)).toNat

end

end A141574.P7654022413136825712

/-! ## A141574.P14583351195101427972

`A027746(2*(n+1))+A027746(Δ[n²])`
-/

namespace A141574.P14583351195101427972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (2 * (n + 1)) + A027746 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A141574.P14583351195101427972

/-! ## A141574.P17221186578922743132

`A003415(A141572(n+1))+A000038(n)`
-/

namespace A141574.P17221186578922743132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A141572 (n + 1)).toNat + A000038 n

end

end A141574.P17221186578922743132

/-! ## A141574.P6797096397354697714

`A003415(A141572(n+1))-2*A073097(2*n)`
-/

namespace A141574.P6797096397354697714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A141572 (n + 1)).toNat - 2 * A073097 (2 * n)

end

end A141574.P6797096397354697714

/-! ## A141574.P17734024248900709528

`A014963(C(n+3, 2))*A003415(A141572(n+1))`
-/

namespace A141574.P17734024248900709528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 3) 2) * A003415 (A141572 (n + 1)).toNat

end

end A141574.P17734024248900709528

/-! ## A141574.P15703832445531371086

`A010673(A008579(n))+A003415(A141572(n+1))`
-/

namespace A141574.P15703832445531371086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A008579 n).toNat + A003415 (A141572 (n + 1)).toNat

end

end A141574.P15703832445531371086

/-! ## A141574.P16042410485756915313

`A006530(A265110(2*n+1))+A006530(A265110(2*(n+1)))`
-/

namespace A141574.P16042410485756915313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A265110 (2 * n + 1)).toNat + A006530 (A265110 (2 * (n + 1))).toNat

end

end A141574.P16042410485756915313

/-!
# A141576: a(0)=-1, a(1)=0, a(2)=1, a(n) = a(n-1) - 2*a(n-2) + a(n-3).

The programs for A141576, the canonical program `A141576.P878227437054349943` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141576 has offset 0).

The definition of A141576 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-2*a(n-2)+a(n-3)` (program `A141576.P878227437054349943`, by `A141576.P878227437054349943.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141576.P878227437054349943

`a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=-1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141576

/-- `a(n-1)-2*a(n-2)+a(n-3)` -/
def P878227437054349943.Spec : Prop :=
  ∀ n, P878227437054349943.a n = A141576 n

theorem P878227437054349943.correct : P878227437054349943.Spec := by
  intro n
  simp only [A141576]

end A141576

/-! ## A141576.P3857632329984270114

`ogf((1-x+x^2)/(-1+x-2x^2+x^3))`
-/

namespace A141576.P3857632329984270114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 1, -1] [1, -1, 2, -1] n

end

end A141576.P3857632329984270114

namespace A141576

/-- `ogf((1-x+x^2)/(-1+x-2x^2+x^3))` -/
def P3857632329984270114.Spec : Prop :=
  ∀ n, P3857632329984270114.a n = A141576 n

end A141576

/-! ## A141576.P16488888284830605429

`a(n-4)-(a(n-2)+a(n-3))` with `a(0)=-1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A141576.P16488888284830605429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 1, 0] fun n a =>
  a (n - 4) - (a (n - 2) + a (n - 3))

end

end A141576.P16488888284830605429

namespace A141576

/-- `a(n-4)-(a(n-2)+a(n-3))` -/
def P16488888284830605429.Spec : Prop :=
  ∀ n, P16488888284830605429.a n = A141576 n

end A141576

/-! ## A141576.P14579668007528761977

`a(n-4)-a(n-2)-a(n-3)` with `a(0)=-1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A141576.P14579668007528761977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 1, 0] fun n a =>
  a (n - 4) - a (n - 2) - a (n - 3)

end

end A141576.P14579668007528761977

namespace A141576

/-- `a(n-4)-a(n-2)-a(n-3)` -/
def P14579668007528761977.Spec : Prop :=
  ∀ n, P14579668007528761977.a n = A141576 n

end A141576

/-! ## A141576.P10781791755601178025

`-A176971(2*n)`
-/

namespace A141576.P10781791755601178025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A176971 (2 * n)

end

end A141576.P10781791755601178025

namespace A141576

/-- `-A176971(2*n)` -/
def P10781791755601178025.Spec : Prop :=
  ∀ n, P10781791755601178025.a n = A141576 n

end A141576

/-! ## A141576.P15629180320236101145

`∑[A176971(2*n+1)]-1`
-/

namespace A141576.P15629180320236101145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A141576.P15629180320236101145

namespace A141576

/-- `∑[A176971(2*n+1)]-1` -/
def P15629180320236101145.Spec : Prop :=
  ∀ n, P15629180320236101145.a n = A141576 n

end A141576

/-! ## A141576.P107195453165084545

`A000007(n+1)-A176971(2*n)`
-/

namespace A141576.P107195453165084545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A176971 (2 * n)

end

end A141576.P107195453165084545

namespace A141576

/-- `A000007(n+1)-A176971(2*n)` -/
def P107195453165084545.Spec : Prop :=
  ∀ n, P107195453165084545.a n = A141576 n

end A141576

/-! ## A141576.P15713522547248527105

`A014021(2*n+1)-A176971(2*n)`
-/

namespace A141576.P15713522547248527105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014021 (2 * n + 1) - A176971 (2 * n)

end

end A141576.P15713522547248527105

namespace A141576

/-- `A014021(2*n+1)-A176971(2*n)` -/
def P15713522547248527105.Spec : Prop :=
  ∀ n, P15713522547248527105.a n = A141576 n

end A141576

/-! ## A141576.P14631634624110782902

`1-(A176971(2*n)+A033999(2*n))`
-/

namespace A141576.P14631634624110782902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A176971 (2 * n) + A033999 (2 * n))

end

end A141576.P14631634624110782902

namespace A141576

/-- `1-(A176971(2*n)+A033999(2*n))` -/
def P14631634624110782902.Spec : Prop :=
  ∀ n, P14631634624110782902.a n = A141576 n

end A141576

/-! ## A141576.P17410335046268134099

`A056594(2*n+1)-A176971(2*n)`
-/

namespace A141576.P17410335046268134099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n + 1) - A176971 (2 * n)

end

end A141576.P17410335046268134099

namespace A141576

/-- `A056594(2*n+1)-A176971(2*n)` -/
def P17410335046268134099.Spec : Prop :=
  ∀ n, P17410335046268134099.a n = A141576 n

end A141576

/-! ## A141576.P106770139323691633

`A033999(2*n+1)*A176971(2*n)`
-/

namespace A141576.P106770139323691633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A176971 (2 * n)

end

end A141576.P106770139323691633

namespace A141576

/-- `A033999(2*n+1)*A176971(2*n)` -/
def P106770139323691633.Spec : Prop :=
  ∀ n, P106770139323691633.a n = A141576 n

end A141576

/-! ## A141576.P3587053364679397768

`A029578(2*n)-(A176971(2*n)+n)`
-/

namespace A141576.P3587053364679397768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (2 * n) - (A176971 (2 * n) + (n : ℤ))

end

end A141576.P3587053364679397768

namespace A141576

/-- `A029578(2*n)-(A176971(2*n)+n)` -/
def P3587053364679397768.Spec : Prop :=
  ∀ n, P3587053364679397768.a n = A141576 n

end A141576

/-! ## A141576.P4241499518802867904

`n*A000007(2*n)-A176971(2*n)`
-/

namespace A141576.P4241499518802867904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 (2 * n) - A176971 (2 * n)

end

end A141576.P4241499518802867904

namespace A141576

/-- `n*A000007(2*n)-A176971(2*n)` -/
def P4241499518802867904.Spec : Prop :=
  ∀ n, P4241499518802867904.a n = A141576 n

end A141576

/-! ## A141576.P15911144020243673011

`A176971(∑[A163806(2*n)])-A176971(2*n)`
-/

namespace A141576.P15911144020243673011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A176971 (2 * n)

end

end A141576.P15911144020243673011

namespace A141576

/-- `A176971(∑[A163806(2*n)])-A176971(2*n)` -/
def P15911144020243673011.Spec : Prop :=
  ∀ n, P15911144020243673011.a n = A141576 n

end A141576

/-! ## A141576.P9654252004171030134

`∑[∑[A104769(2*n)]]-1`
-/

namespace A141576.P9654252004171030134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A141576.P9654252004171030134

namespace A141576

/-- `∑[∑[A104769(2*n)]]-1` -/
def P9654252004171030134.Spec : Prop :=
  ∀ n, P9654252004171030134.a n = A141576 n

end A141576

/-! ## A141576.P2910977703885991762

`A104769(2*n)-A077954(n)`
-/

namespace A141576.P2910977703885991762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (2 * n) - A077954 n

end

end A141576.P2910977703885991762

namespace A141576

/-- `A104769(2*n)-A077954(n)` -/
def P2910977703885991762.Spec : Prop :=
  ∀ n, P2910977703885991762.a n = A141576 n

end A141576

/-! ## A141576.P7964674623920233115

`A104769(2*n+1)+A104769(2*n)`
-/

namespace A141576.P7964674623920233115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (2 * n + 1) + A104769 (2 * n)

end

end A141576.P7964674623920233115

namespace A141576

/-- `A104769(2*n+1)+A104769(2*n)` -/
def P7964674623920233115.Spec : Prop :=
  ∀ n, P7964674623920233115.a n = A141576 n

end A141576

/-! ## A141576.P7903784763215131875

`A050935(2*(n+1))-A050935(2*n+3)`
-/

namespace A141576.P7903784763215131875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (2 * (n + 1)) - A050935 (2 * n + 3)

end

end A141576.P7903784763215131875

namespace A141576

/-- `A050935(2*(n+1))-A050935(2*n+3)` -/
def P7903784763215131875.Spec : Prop :=
  ∀ n, P7903784763215131875.a n = A141576 n

end A141576

/-! ## A141576.P13455037996822432274

`A078019(n)-A166117(n+2)`
-/

namespace A141576.P13455037996822432274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078019 n - A166117 (n + 2)

end

end A141576.P13455037996822432274

namespace A141576

/-- `A078019(n)-A166117(n+2)` -/
def P13455037996822432274.Spec : Prop :=
  ∀ n, P13455037996822432274.a n = A141576 n

end A141576

/-!
# A141577: a(0) = -1; a(1) = 0; a(2) = 1; a(3) = -1; a(n) = a(n-1) - 3*a(n-2) + 3*a(n-3) - a(n-4).

The programs for A141577, the canonical program `A141577.P11180140923981616516` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141577 has offset 0).

The definition of A141577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` (program `A141577.P11180140923981616516`, by `A141577.P11180140923981616516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141577.P11180140923981616516

`a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=-1, a(1)=0, a(2)=1, a(3)=-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141577

/-- `a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` -/
def P11180140923981616516.Spec : Prop :=
  ∀ n, P11180140923981616516.a n = A141577 n

theorem P11180140923981616516.correct : P11180140923981616516.Spec := by
  intro n
  simp only [A141577]

end A141577

/-! ## A141577.P17740251378694193939

`ogf((-1+x-2x^2+x^3)/(1-x+3x^2-3x^3+x^4))`
-/

namespace A141577.P17740251378694193939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 1, -2, 1] [1, -1, 3, -3, 1] n

end

end A141577.P17740251378694193939

namespace A141577

/-- `ogf((-1+x-2x^2+x^3)/(1-x+3x^2-3x^3+x^4))` -/
def P17740251378694193939.Spec : Prop :=
  ∀ n, P17740251378694193939.a n = A141577 n

end A141577

/-! ## A141577.P4111540938826027476

`∑[A193884(3*(n+1))]-A099530(3*(n+1))`
-/

namespace A141577.P4111540938826027476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193884 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099530 (3 * (n + 1))

end

end A141577.P4111540938826027476

namespace A141577

/-- `∑[A193884(3*(n+1))]-A099530(3*(n+1))` -/
def P4111540938826027476.Spec : Prop :=
  ∀ n, P4111540938826027476.a n = A141577 n

end A141577

/-!
# A141579: Numbers k such that the arithmetic mean of the first k tribonacci numbers A000073 is an integer.

The programs for A141579, there is no canonical definition to state claims against.
-/

/-! ## A141579.P3884817343441547067

`filter[A072874(n+1), A359374(#)]`
-/

namespace A141579.P3884817343441547067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A141579.P3884817343441547067

/-! ## A141579.P8431516925137942647

`filter[A072874(n+1), A166486(#)]`
-/

namespace A141579.P8431516925137942647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A141579.P8431516925137942647

/-! ## A141579.P1522127255493705400

`∩[A072874(n+1), A359375(n+1)]`
-/

namespace A141579.P1522127255493705400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141579.P1522127255493705400

/-! ## A141579.P6939603835549484644

`∩[A048103(n+1), A072874(n+1)]`
-/

namespace A141579.P6939603835549484644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141579.P6939603835549484644

/-! ## A141579.P10809125077700153993

`∩[A072874(n+1), A014528(n)]`
-/

namespace A141579.P10809125077700153993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014528 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141579.P10809125077700153993

/-! ## A141579.P17894319709763544635

`∩[A042968(n+1), A072874(n+1)]`
-/

namespace A141579.P17894319709763544635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141579.P17894319709763544635

/-!
# A141580: Number of unlabeled non-mating graphs with n vertices.

The programs for A141580, there is no canonical definition to state claims against.
-/

/-! ## A141580.P17811104649991114409

`A000088(n+1)-A004110(n+1)`
-/

namespace A141580.P17811104649991114409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A004110 (n + 1)

end

end A141580.P17811104649991114409

/-! ## A141580.P2758213655135349940

`∑[A324693(n+1)]`
-/

namespace A141580.P2758213655135349940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141580.P2758213655135349940

/-! ## A141580.P10876767436240866017

`Δ[A006897(n)]-A004110(n+1)`
-/

namespace A141580.P10876767436240866017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A004110 (n + 1)

end

end A141580.P10876767436240866017

/-! ## A141580.P11460301806233851993

`-∑[-Δ[A000088(n)-A004110(n)]]`
-/

namespace A141580.P11460301806233851993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A004110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141580.P11460301806233851993

/-! ## A141580.P4793556525580205271

`∑[A002494(n+1)-A261919(n+1)]`
-/

namespace A141580.P4793556525580205271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (n + 1) - A261919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141580.P4793556525580205271

/-!
# A141581: Irregular triangle read by rows: T(n, k) = coefficients of f(n, x), where f(n, x) = (1-x)^(2*n+2) * Sum_{k >=0} (k^n * x^k).

The programs for A141581, there is no canonical definition to state claims against.
-/

/-! ## A141581.P1221715842024156223

`Δ[A036580(A057731(n+5)²)]`
-/

namespace A141581.P1221715842024156223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (A057731 (n + 5) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141581.P1221715842024156223

/-! ## A141581.P4350831110279839157

`or(A357380(n+4), A357704(A000217(n)))`
-/

namespace A141581.P4350831110279839157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A357380 (n + 4)) (A357704 (A000217 n).toNat)

end

end A141581.P4350831110279839157

/-! ## A141581.P5013891459303003160

`A357380(n+4)+A330735(A075565(n+1))`
-/

namespace A141581.P5013891459303003160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357380 (n + 4) + A330735 (A075565 (n + 1)).toNat

end

end A141581.P5013891459303003160

/-! ## A141581.P3739860728561988248

`A357380(n+4)+A000007(A335919(3*n))`
-/

namespace A141581.P3739860728561988248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357380 (n + 4) + A000007 (A335919 (3 * n)).toNat

end

end A141581.P3739860728561988248

/-! ## A141581.P11149271899549265033

`A237271(A016116(2*n+3))*A357380(n+4)`
-/

namespace A141581.P11149271899549265033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A016116 (2 * n + 3)).toNat * A357380 (n + 4)

end

end A141581.P11149271899549265033

/-!
# A141582: a(n) = number of ways to dispose two pawns on a chessboard of size n X n (two dispositions are equivalent if one can be rotated or reflected to give the other one).

The programs for A141582, the canonical program `A141582.P13202688551417230151` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141582 has offset 0).

The definition of A141582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141582.P13202688551417230151

`A011863(n)+∑[A029578(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141582

/-- `A011863(n)+∑[A029578(n)]` -/
def P13202688551417230151.Spec : Prop :=
  ∀ n, P13202688551417230151.a n = A141582 n

theorem P13202688551417230151.correct : P13202688551417230151.Spec := by
  intro n
  simp only [A141582]

end A141582

/-! ## A141582.P14868377256691024824

`A011863(n)+Δ[A111384(n)]`
-/

namespace A141582.P14868377256691024824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 n + (f1 (n + 1) - f1 n)

end

end A141582.P14868377256691024824

namespace A141582

/-- `A011863(n)+Δ[A111384(n)]` -/
def P14868377256691024824.Spec : Prop :=
  ∀ n, P14868377256691024824.a n = A141582 n

end A141582

/-! ## A141582.P10255900794104839692

`A011863(n)+∑[A029579(n)-1]`
-/

namespace A141582.P10255900794104839692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141582.P10255900794104839692

namespace A141582

/-- `A011863(n)+∑[A029579(n)-1]` -/
def P10255900794104839692.Spec : Prop :=
  ∀ n, P10255900794104839692.a n = A141582 n

end A141582

/-! ## A141582.P3154261343963786837

`A001318(n)+A011863(n)-A110654(n)`
-/

namespace A141582.P3154261343963786837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + (A011863 n - A110654 n)

end

end A141582.P3154261343963786837

namespace A141582

/-- `A001318(n)+A011863(n)-A110654(n)` -/
def P3154261343963786837.Spec : Prop :=
  ∀ n, P3154261343963786837.a n = A141582 n

end A141582

/-! ## A141582.P17990087874920613858

`A005563(A002620(n))-A000217(A142150(n))`
-/

namespace A141582.P17990087874920613858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A002620 n).toNat - A000217 (A142150 n).toNat

end

end A141582.P17990087874920613858

namespace A141582

/-- `A005563(A002620(n))-A000217(A142150(n))` -/
def P17990087874920613858.Spec : Prop :=
  ∀ n, P17990087874920613858.a n = A141582 n

end A141582

/-!
# A141583: Squares of tribonacci numbers A000213.

The programs for A141583, the canonical program `A141583.P10660450269153239686` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141583 has offset 0).

The definition of A141583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141583.P10660450269153239686

`2*a(n-1)+3*a(n-2)+6*a(n-3)-a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=9, a(4)=25, a(5)=81`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141583

/-- `2*a(n-1)+3*a(n-2)+6*a(n-3)-a(n-4)-a(n-6)` -/
def P10660450269153239686.Spec : Prop :=
  ∀ n, P10660450269153239686.a n = A141583 n

theorem P10660450269153239686.correct : P10660450269153239686.Spec := by
  intro n
  simp only [A141583]

end A141583

/-! ## A141583.P7443429528303554456

`A000213(n)²`
-/

namespace A141583.P7443429528303554456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n ^ 2

end

end A141583.P7443429528303554456

namespace A141583

/-- `A000213(n)²` -/
def P7443429528303554456.Spec : Prop :=
  ∀ n, P7443429528303554456.a n = A141583 n

end A141583

/-! ## A141583.P4556226198854327731

`Δ[2*a(n-1)-a(n-4)]²` with `a(0)=3, a(1)=2, a(2)=1, a(3)=0`
-/

namespace A141583.P4556226198854327731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 1, 0] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A141583.P4556226198854327731

namespace A141583

/-- `Δ[2*a(n-1)-a(n-4)]²` -/
def P4556226198854327731.Spec : Prop :=
  ∀ n, P4556226198854327731.a n = A141583 n

end A141583

/-! ## A141583.P15936299779536946397

`∑[2*a(n-1)-a(n-4)]²` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=2`
-/

namespace A141583.P15936299779536946397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2, 2] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A141583.P15936299779536946397

namespace A141583

/-- `∑[2*a(n-1)-a(n-4)]²` -/
def P15936299779536946397.Spec : Prop :=
  ∀ n, P15936299779536946397.a n = A141583 n

end A141583

/-! ## A141583.P10072986226457914265

`Δ[Δ[A089068(n)]]²`
-/

namespace A141583.P10072986226457914265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A141583.P10072986226457914265

namespace A141583

/-- `Δ[Δ[A089068(n)]]²` -/
def P10072986226457914265.Spec : Prop :=
  ∀ n, P10072986226457914265.a n = A141583 n

end A141583

/-! ## A141583.P12564768637445187956

`Δ[record[A001590(n)]]²`
-/

namespace A141583.P12564768637445187956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A141583.P12564768637445187956

namespace A141583

/-- `Δ[record[A001590(n)]]²` -/
def P12564768637445187956.Spec : Prop :=
  ∀ n, P12564768637445187956.a n = A141583 n

end A141583

/-! ## A141583.P10965593588236335895

`Δ[A001590(n+2)]²`
-/

namespace A141583.P10965593588236335895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A141583.P10965593588236335895

namespace A141583

/-- `Δ[A001590(n+2)]²` -/
def P10965593588236335895.Spec : Prop :=
  ∀ n, P10965593588236335895.a n = A141583 n

end A141583

/-! ## A141583.P18143154191296082821

`(1-2*A192804(n))²`
-/

namespace A141583.P18143154191296082821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A192804 n) ^ 2

end

end A141583.P18143154191296082821

namespace A141583

/-- `(1-2*A192804(n))²` -/
def P18143154191296082821.Spec : Prop :=
  ∀ n, P18143154191296082821.a n = A141583 n

end A141583

/-! ## A141583.P7018402216728585151

`Δ[Δ[A000073(n+2)]]²`
-/

namespace A141583.P7018402216728585151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A141583.P7018402216728585151

namespace A141583

/-- `Δ[Δ[A000073(n+2)]]²` -/
def P7018402216728585151.Spec : Prop :=
  ∀ n, P7018402216728585151.a n = A141583 n

end A141583

/-! ## A141583.P4325042428318282953

`Δ[Δ[A213816(2*n+1)]]²`
-/

namespace A141583.P4325042428318282953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A141583.P4325042428318282953

namespace A141583

/-- `Δ[Δ[A213816(2*n+1)]]²` -/
def P4325042428318282953.Spec : Prop :=
  ∀ n, P4325042428318282953.a n = A141583 n

end A141583

/-! ## A141583.P10328721128946835932

`(A081172(n)+A000073(n))²`
-/

namespace A141583.P10328721128946835932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081172 n + A000073 n) ^ 2

end

end A141583.P10328721128946835932

namespace A141583

/-- `(A081172(n)+A000073(n))²` -/
def P10328721128946835932.Spec : Prop :=
  ∀ n, P10328721128946835932.a n = A141583 n

end A141583

/-! ## A141583.P510919368468965672

`(A001590(n)-A275778(n))²`
-/

namespace A141583.P510919368468965672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001590 n - A275778 n) ^ 2

end

end A141583.P510919368468965672

namespace A141583

/-- `(A001590(n)-A275778(n))²` -/
def P510919368468965672.Spec : Prop :=
  ∀ n, P510919368468965672.a n = A141583 n

end A141583

/-! ## A141583.P9542362828136285988

`(∑[A001590(n)]-A214727(n))²`
-/

namespace A141583.P9542362828136285988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - A214727 n) ^ 2

end

end A141583.P9542362828136285988

namespace A141583

/-- `(∑[A001590(n)]-A214727(n))²` -/
def P9542362828136285988.Spec : Prop :=
  ∀ n, P9542362828136285988.a n = A141583 n

end A141583

/-! ## A141583.P6056501258828069320

`(A000073(n)-Δ[A008937(n)])²`
-/

namespace A141583.P6056501258828069320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000073 n - (f1 (n + 1) - f1 n)) ^ 2

end

end A141583.P6056501258828069320

namespace A141583

/-- `(A000073(n)-Δ[A008937(n)])²` -/
def P6056501258828069320.Spec : Prop :=
  ∀ n, P6056501258828069320.a n = A141583 n

end A141583

/-! ## A141583.P8554823291872924616

`Δ[A001644(n)-A274761(n)]²`
-/

namespace A141583.P8554823291872924616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n - A274761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A141583.P8554823291872924616

namespace A141583

/-- `Δ[A001644(n)-A274761(n)]²` -/
def P8554823291872924616.Spec : Prop :=
  ∀ n, P8554823291872924616.a n = A141583 n

end A141583

/-! ## A141583.P11540362152733954611

`(A001590(n+1)+A001590(n))²`
-/

namespace A141583.P11540362152733954611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001590 (n + 1) + A001590 n) ^ 2

end

end A141583.P11540362152733954611

namespace A141583

/-- `(A001590(n+1)+A001590(n))²` -/
def P11540362152733954611.Spec : Prop :=
  ∀ n, P11540362152733954611.a n = A141583 n

end A141583

/-! ## A141583.P3228421921197030652

`(A000073(n)-(A089068(n)+1))²`
-/

namespace A141583.P3228421921197030652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000073 n - (A089068 n + 1)) ^ 2

end

end A141583.P3228421921197030652

namespace A141583

/-- `(A000073(n)-(A089068(n)+1))²` -/
def P3228421921197030652.Spec : Prop :=
  ∀ n, P3228421921197030652.a n = A141583 n

end A141583

/-! ## A141583.P7904536721425069086

`(A000073(n+1)-A214727(n))²`
-/

namespace A141583.P7904536721425069086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000073 (n + 1) - A214727 n) ^ 2

end

end A141583.P7904536721425069086

namespace A141583

/-- `(A000073(n+1)-A214727(n))²` -/
def P7904536721425069086.Spec : Prop :=
  ∀ n, P7904536721425069086.a n = A141583 n

end A141583

/-! ## A141583.P12039071115944388702

`(A145027(n+1)-A280308(n))²`
-/

namespace A141583.P12039071115944388702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A145027 (n + 1) - A280308 n) ^ 2

end

end A141583.P12039071115944388702

namespace A141583

/-- `(A145027(n+1)-A280308(n))²` -/
def P12039071115944388702.Spec : Prop :=
  ∀ n, P12039071115944388702.a n = A141583 n

end A141583

/-!
# A141586: Strongly refactorable numbers: numbers n such that if n is divisible by d, it is divisible by the number of divisors of d.

The programs for A141586, there is no canonical definition to state claims against.
-/

/-! ## A141586.P10699233186805555104

`∩[A033950(n+1), A143719(n+1)]`
-/

namespace A141586.P10699233186805555104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141586.P10699233186805555104

/-! ## A141586.P7432691265198761573

`∩[A057529(n+1), A143719(n+1)]`
-/

namespace A141586.P7432691265198761573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141586.P7432691265198761573

/-! ## A141586.P5414714544423406149

`record[A306693(n+1)/(A306693(n+1)-n)]`
-/

namespace A141586.P5414714544423406149
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306693 (n + 1) : ℚ) / (A306693 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141586.P5414714544423406149

/-! ## A141586.P12282583434126576162

`lcm(A000005(A005142(n)), A100786(n+1))`
-/

namespace A141586.P12282583434126576162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A005142 n).toNat) (A100786 (n + 1))

end

end A141586.P12282583434126576162

/-! ## A141586.P11822694335487020554

`A100786(A043315(n+1))`
-/

namespace A141586.P11822694335487020554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100786 (A043315 (n + 1)).toNat

end

end A141586.P11822694335487020554

/-!
# A141588: Numerators of expansion for Debye function (D(1,x)) A120082 with 1's instead of 0's.

The programs for A141588, there is no canonical definition to state claims against.
-/

/-! ## A141588.P15630755997799770315

`or(1, A120082(n))`
-/

namespace A141588.P15630755997799770315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A120082 n)

end

end A141588.P15630755997799770315

/-! ## A141588.P17800698968884071346

`or(1, A120086(n))`
-/

namespace A141588.P17800698968884071346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A120086 n)

end

end A141588.P17800698968884071346

/-! ## A141588.P3719493201053765017

`or(1, A060054(gcd(1-n, n-1)+1))`
-/

namespace A141588.P3719493201053765017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060054 (Int.gcd (1 - (n : ℤ)) ((n : ℤ) - 1) + 1))

end

end A141588.P3719493201053765017

/-! ## A141588.P6561598339752842303

`or(1, A060054(lcm(1-n, n-1)+1))`
-/

namespace A141588.P6561598339752842303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060054 (Int.lcm (1 - (n : ℤ)) ((n : ℤ) - 1) + 1))

end

end A141588.P6561598339752842303

/-! ## A141588.P1924857480556627379

`or(1, A060054((2*n+1)%(n+2)+1))`
-/

namespace A141588.P1924857480556627379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060054 ((2 * n + 1) % (n + 2) + 1))

end

end A141588.P1924857480556627379

/-!
# A141590: a(n) = numerator of Bernoulli(2*n)/(2*n + 1)!. Bisection of A120082.

The programs for A141590, there is no canonical definition to state claims against.
-/

/-! ## A141590.P11983211048078982525

`A120082(2*n)`
-/

namespace A141590.P11983211048078982525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 (2 * n)

end

end A141590.P11983211048078982525

/-! ## A141590.P5274939480798014531

`A120080(2*n)`
-/

namespace A141590.P5274939480798014531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120080 (2 * n)

end

end A141590.P5274939480798014531

/-! ## A141590.P8195738614404872695

`A120086(2*n)`
-/

namespace A141590.P8195738614404872695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120086 (2 * n)

end

end A141590.P8195738614404872695

/-! ## A141590.P11970974057752166699

`or(1, A120082(A005843(n)))`
-/

namespace A141590.P11970974057752166699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A120082 (A005843 n).toNat)

end

end A141590.P11970974057752166699

/-! ## A141590.P11151968505856745726

`A000367(n)/A111008(n)`
-/

namespace A141590.P11151968505856745726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000367 n : ℚ) / (A111008 n : ℚ)

end

end A141590.P11151968505856745726

/-! ## A141590.P14961752484269545029

`A027641(2*n)/A111008(n)`
-/

namespace A141590.P14961752484269545029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027641 (2 * n) : ℚ) / (A111008 n : ℚ)

end

end A141590.P14961752484269545029

/-! ## A141590.P1732769206049797445

`A000367(n)/gcd(A000367(n), A001147(n))`
-/

namespace A141590.P1732769206049797445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000367 n : ℚ) / (Int.gcd (A000367 n) (A001147 n) : ℚ)

end

end A141590.P1732769206049797445

/-!
# A141591: Triangle, read by rows, T(n, k) = 2*A123125(n-1, k), for n >= 2, otherwise T(n, 0) = T(n, n) = -1, with T(0, 0) = T(1, 0) = 1.

The programs for A141591, there is no canonical definition to state claims against.
-/

/-! ## A141591.P17489026757570251800

`A323915(A011782(n)-A106255(n+1))`
-/

namespace A141591.P17489026757570251800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323915 (A011782 n - A106255 (n + 1)).toNat

end

end A141591.P17489026757570251800

/-! ## A141591.P7737846705063823627

`A000023(A238392(n)%A296624(n))`
-/

namespace A141591.P7737846705063823627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000023 (Int.tmod (A238392 n) (A296624 n)).toNat

end

end A141591.P7737846705063823627

/-!
# A141592: Numbers k such that k, k + 210*1, k + 210*2, k + 210*3, k + 210*4 are averages of pairs of twin primes.

The programs for A141592, there is no canonical definition to state claims against.
-/

/-! ## A141592.P12086826028664689443

`A261731(n+1)+1`
-/

namespace A141592.P12086826028664689443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261731 (n + 1) + 1

end

end A141592.P12086826028664689443

/-!
# A141595: Binomial transform of A120070.

The programs for A141595, there is no canonical definition to state claims against.
-/

/-! ## A141595.P2315369494624164505

`A333219(A165572(n+1))+A065718(A101089(n+2))`
-/

namespace A141595.P2315369494624164505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (A165572 (n + 1)).toNat + A065718 (A101089 (n + 2)).toNat

end

end A141595.P2315369494624164505

/-!
# A141596: Triangle T(n,k) = 4*binomial(n,k)^2 - 3, read by rows, 0<=k<=n.

The programs for A141596, the canonical program `A141596.P17426953477732040037` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141596 has offset 0).

The definition of A141596 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*C(row(n), col(n))²-3` (program `A141596.P17426953477732040037`, by `A141596.P17426953477732040037.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141596.P17426953477732040037

`4*C(row(n), col(n))²-3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141596

/-- `4*C(row(n), col(n))²-3` -/
def P17426953477732040037.Spec : Prop :=
  ∀ n, P17426953477732040037.a n = A141596 n

theorem P17426953477732040037.correct : P17426953477732040037.Spec := by
  intro n
  simp only [A141596]

end A141596

/-! ## A141596.P103919161271172174

`A028326(n)²-3`
-/

namespace A141596.P103919161271172174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n ^ 2 - 3

end

end A141596.P103919161271172174

namespace A141596

/-- `A028326(n)²-3` -/
def P103919161271172174.Spec : Prop :=
  ∀ n, P103919161271172174.a n = A141596 n

theorem P103919161271172174.correct : P103919161271172174.Spec := by
  intro n
  simp only [A141596, Nat.add_sub_cancel, A141596.P103919161271172174.a, A141596.P17426953477732040037.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141596

/-! ## A141596.P11300783120639853936

`2*A141597(n)-1`
-/

namespace A141596.P11300783120639853936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141597 n - 1

end

end A141596.P11300783120639853936

namespace A141596

/-- `2*A141597(n)-1` -/
def P11300783120639853936.Spec : Prop :=
  ∀ n, P11300783120639853936.a n = A141596 n

theorem P11300783120639853936.correct : P11300783120639853936.Spec := by
  intro n
  simp only [A141596, Nat.add_sub_cancel, A141596.P11300783120639853936.a, A141596.P17426953477732040037.a, A141597, A141597.P14074862873981650977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141596

/-! ## A141596.P12690082245022676671

`4*A008459(n)-3`
-/

namespace A141596.P12690082245022676671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008459 n - 3

end

end A141596.P12690082245022676671

namespace A141596

/-- `4*A008459(n)-3` -/
def P12690082245022676671.Spec : Prop :=
  ∀ n, P12690082245022676671.a n = A141596 n

end A141596

/-! ## A141596.P9057747838493115096

`(A109128(n)+1)²-3`
-/

namespace A141596.P9057747838493115096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109128 n + 1) ^ 2 - 3

end

end A141596.P9057747838493115096

namespace A141596

/-- `(A109128(n)+1)²-3` -/
def P9057747838493115096.Spec : Prop :=
  ∀ n, P9057747838493115096.a n = A141596 n

theorem P9057747838493115096.correct : P9057747838493115096.Spec := by
  intro n
  simp only [A141596, Nat.add_sub_cancel, A141596.P9057747838493115096.a, A141596.P17426953477732040037.a, A109128, A109128.P7867596798531783597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141596

/-! ## A141596.P1962226929016280699

`(2*A007318(n))²-3`
-/

namespace A141596.P1962226929016280699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A007318 n) ^ 2 - 3

end

end A141596.P1962226929016280699

namespace A141596

/-- `(2*A007318(n))²-3` -/
def P1962226929016280699.Spec : Prop :=
  ∀ n, P1962226929016280699.a n = A141596 n

theorem P1962226929016280699.correct : P1962226929016280699.Spec := by
  intro n
  simp only [A141596, Nat.add_sub_cancel, A141596.P1962226929016280699.a, A141596.P17426953477732040037.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141596

/-! ## A141596.P2774657465901585155

`2*(2*A007318(n%(n+1))^2-1)-1`
-/

namespace A141596.P2774657465901585155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A007318 (n % (n + 1)) ^ 2 - 1) - 1

end

end A141596.P2774657465901585155

namespace A141596

/-- `2*(2*A007318(n%(n+1))^2-1)-1` -/
def P2774657465901585155.Spec : Prop :=
  ∀ n, P2774657465901585155.a n = A141596 n

end A141596

/-! ## A141596.P14155520274919245365

`A168625(n)+(2*A014473(n))²`
-/

namespace A141596.P14155520274919245365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168625 n + (2 * A014473 n) ^ 2

end

end A141596.P14155520274919245365

namespace A141596

/-- `A168625(n)+(2*A014473(n))²` -/
def P14155520274919245365.Spec : Prop :=
  ∀ n, P14155520274919245365.a n = A141596 n

theorem P14155520274919245365.correct : P14155520274919245365.Spec := by
  intro n
  simp only [A141596, Nat.add_sub_cancel, A141596.P14155520274919245365.a, A141596.P17426953477732040037.a, A014473, A014473.P9301799580602651200.a, A168625, A168625.P17215245163449372926.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141596

/-! ## A141596.P7186084832310871101

`A168625(n)+(A007318(n)-A131060(n))²`
-/

namespace A141596.P7186084832310871101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168625 n + (A007318 n - A131060 n) ^ 2

end

end A141596.P7186084832310871101

namespace A141596

/-- `A168625(n)+(A007318(n)-A131060(n))²` -/
def P7186084832310871101.Spec : Prop :=
  ∀ n, P7186084832310871101.a n = A141596 n

theorem P7186084832310871101.correct : P7186084832310871101.Spec := by
  intro n
  simp only [A141596, Nat.add_sub_cancel, A141596.P7186084832310871101.a, A141596.P17426953477732040037.a, A007318, A007318.P11755526479805562006.a, A131060, A131060.P6336280471409396356.a, A168625, A168625.P17215245163449372926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141596

/-! ## A141596.P16580040778424149902

`A132046(n)²+A132729(n)-A132046(n)`
-/

namespace A141596.P16580040778424149902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n ^ 2 + (A132729 n - A132046 n)

end

end A141596.P16580040778424149902

namespace A141596

/-- `A132046(n)²+A132729(n)-A132046(n)` -/
def P16580040778424149902.Spec : Prop :=
  ∀ n, P16580040778424149902.a n = A141596 n

end A141596

/-! ## A141596.P14851381752034149907

`A168625(n)+(A131060(n)-A131063(n))²`
-/

namespace A141596.P14851381752034149907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168625 n + (A131060 n - A131063 n) ^ 2

end

end A141596.P14851381752034149907

namespace A141596

/-- `A168625(n)+(A131060(n)-A131063(n))²` -/
def P14851381752034149907.Spec : Prop :=
  ∀ n, P14851381752034149907.a n = A141596 n

theorem P14851381752034149907.correct : P14851381752034149907.Spec := by
  intro n
  simp only [A141596, Nat.add_sub_cancel, A141596.P14851381752034149907.a, A141596.P17426953477732040037.a, A131060, A131060.P6336280471409396356.a, A131063, A131063.P365354353460309481.a, A168625, A168625.P17215245163449372926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141596

/-! ## A141596.P14326462796126695196

`A168625(n)+(A131063(n)-A131067(n))²`
-/

namespace A141596.P14326462796126695196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168625 n + (A131063 n - A131067 n) ^ 2

end

end A141596.P14326462796126695196

namespace A141596

/-- `A168625(n)+(A131063(n)-A131067(n))²` -/
def P14326462796126695196.Spec : Prop :=
  ∀ n, P14326462796126695196.a n = A141596 n

theorem P14326462796126695196.correct : P14326462796126695196.Spec := by
  intro n
  simp only [A141596, Nat.add_sub_cancel, A141596.P14326462796126695196.a, A141596.P17426953477732040037.a, A131063, A131063.P365354353460309481.a, A131067, A131067.P17085963103663265053.a, A168625, A168625.P17215245163449372926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141596

/-! ## A141596.P15329346015780511547

`A168625(n)+(A131065(n)-A168625(n))²`
-/

namespace A141596.P15329346015780511547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168625 n + (A131065 n - A168625 n) ^ 2

end

end A141596.P15329346015780511547

namespace A141596

/-- `A168625(n)+(A131065(n)-A168625(n))²` -/
def P15329346015780511547.Spec : Prop :=
  ∀ n, P15329346015780511547.a n = A141596 n

theorem P15329346015780511547.correct : P15329346015780511547.Spec := by
  intro n
  simp only [A141596, Nat.add_sub_cancel, A141596.P15329346015780511547.a, A141596.P17426953477732040037.a, A131065, A131065.P14918655097173088384.a, A168625, A168625.P17215245163449372926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141596

/-! ## A141596.P5615719812988680795

`2*(A014473(n)+A007318(n)*A109128(n))-1`
-/

namespace A141596.P5615719812988680795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014473 n + A007318 n * A109128 n) - 1

end

end A141596.P5615719812988680795

namespace A141596

/-- `2*(A014473(n)+A007318(n)*A109128(n))-1` -/
def P5615719812988680795.Spec : Prop :=
  ∀ n, P5615719812988680795.a n = A141596 n

theorem P5615719812988680795.correct : P5615719812988680795.Spec := by
  intro n
  simp only [A141596, Nat.add_sub_cancel, A141596.P5615719812988680795.a, A141596.P17426953477732040037.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A109128, A109128.P7867596798531783597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141596

/-! ## A141596.P9360473132467582630

`4*(ceil((A134060(n)/3)²)-1)+1`
-/

namespace A141596.P9360473132467582630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (⌈((A134060 n : ℚ) / 3) ^ 2⌉ - 1) + 1

end

end A141596.P9360473132467582630

namespace A141596

/-- `4*(ceil((A134060(n)/3)²)-1)+1` -/
def P9360473132467582630.Spec : Prop :=
  ∀ n, P9360473132467582630.a n = A141596 n

end A141596

/-! ## A141596.P7658906925979673863

`A082109(A014473(n))`
-/

namespace A141596.P7658906925979673863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082109 (A014473 n).toNat

end

end A141596.P7658906925979673863

namespace A141596

/-- `A082109(A014473(n))` -/
def P7658906925979673863.Spec : Prop :=
  ∀ n, P7658906925979673863.a n = A141596 n

end A141596

/-! ## A141596.P3387913439092794009

`A000466(A007318(n))-2`
-/

namespace A141596.P3387913439092794009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (A007318 n).toNat - 2

end

end A141596.P3387913439092794009

namespace A141596

/-- `A000466(A007318(n))-2` -/
def P3387913439092794009.Spec : Prop :=
  ∀ n, P3387913439092794009.a n = A141596 n

end A141596

/-! ## A141596.P17037961886143429654

`A028872(A028326(n))`
-/

namespace A141596.P17037961886143429654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (A028326 n).toNat

end

end A141596.P17037961886143429654

namespace A141596

/-- `A028872(A028326(n))` -/
def P17037961886143429654.Spec : Prop :=
  ∀ n, P17037961886143429654.a n = A141596 n

end A141596

/-! ## A141596.P9768480308720760425

`A227786(A109128(n))`
-/

namespace A141596.P9768480308720760425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227786 (A109128 n).toNat

end

end A141596.P9768480308720760425

namespace A141596

/-- `A227786(A109128(n))` -/
def P9768480308720760425.Spec : Prop :=
  ∀ n, P9768480308720760425.a n = A141596 n

end A141596

/-! ## A141596.P13533732553382725607

`A028872(2*A007318(n))`
-/

namespace A141596.P13533732553382725607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (2 * A007318 n).toNat

end

end A141596.P13533732553382725607

namespace A141596

/-- `A028872(2*A007318(n))` -/
def P13533732553382725607.Spec : Prop :=
  ∀ n, P13533732553382725607.a n = A141596 n

end A141596

/-!
# A141597: Triangle T(n,k) = 2*binomial(n,k)^2 - 1, read by rows, 0<=k<=n.

The programs for A141597, the canonical program `A141597.P14074862873981650977` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141597 has offset 0).

The definition of A141597 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*C(row(n), col(n))²-1` (program `A141597.P14074862873981650977`, by `A141597.P14074862873981650977.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141597.P14074862873981650977

`2*C(row(n), col(n))²-1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A141597

/-- `2*C(row(n), col(n))²-1` -/
def P14074862873981650977.Spec : Prop :=
  ∀ n, P14074862873981650977.a n = A141597 n

theorem P14074862873981650977.correct : P14074862873981650977.Spec := by
  intro n
  simp only [A141597]

end A141597

/-! ## A141597.P7167630318283122630

`ceil(A141596(n)/2)`
-/

namespace A141597.P7167630318283122630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141596 n : ℚ) / 2⌉

end

end A141597.P7167630318283122630

namespace A141597

/-- `ceil(A141596(n)/2)` -/
def P7167630318283122630.Spec : Prop :=
  ∀ n, P7167630318283122630.a n = A141597 n

end A141597

/-! ## A141597.P11140355840458504507

`2*A008459(n)-1`
-/

namespace A141597.P11140355840458504507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008459 n - 1

end

end A141597.P11140355840458504507

namespace A141597

/-- `2*A008459(n)-1` -/
def P11140355840458504507.Spec : Prop :=
  ∀ n, P11140355840458504507.a n = A141597 n

end A141597

/-! ## A141597.P12889614253170064023

`2*A007318(n)²-1`
-/

namespace A141597.P12889614253170064023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n ^ 2 - 1

end

end A141597.P12889614253170064023

namespace A141597

/-- `2*A007318(n)²-1` -/
def P12889614253170064023.Spec : Prop :=
  ∀ n, P12889614253170064023.a n = A141597 n

end A141597

/-! ## A141597.P15397466822665002190

`2*A108086(n)²-1`
-/

namespace A141597.P15397466822665002190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108086 n ^ 2 - 1

end

end A141597.P15397466822665002190

namespace A141597

/-- `2*A108086(n)²-1` -/
def P15397466822665002190.Spec : Prop :=
  ∀ n, P15397466822665002190.a n = A141597 n

end A141597

/-! ## A141597.P17434755638287098476

`2*A117440(n)²-1`
-/

namespace A141597.P17434755638287098476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117440 n ^ 2 - 1

end

end A141597.P17434755638287098476

namespace A141597

/-- `2*A117440(n)²-1` -/
def P17434755638287098476.Spec : Prop :=
  ∀ n, P17434755638287098476.a n = A141597 n

end A141597

/-! ## A141597.P6966539325621633558

`2*A130595(n)²-1`
-/

namespace A141597.P6966539325621633558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130595 n ^ 2 - 1

end

end A141597.P6966539325621633558

namespace A141597

/-- `2*A130595(n)²-1` -/
def P6966539325621633558.Spec : Prop :=
  ∀ n, P6966539325621633558.a n = A141597 n

end A141597

/-! ## A141597.P13966356269292054796

`(A109128(n)+1)²/2-1`
-/

namespace A141597.P13966356269292054796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A109128 n + 1) ^ 2 : ℚ) / 2 - 1

end

end A141597.P13966356269292054796

namespace A141597

/-- `(A109128(n)+1)²/2-1` -/
def P13966356269292054796.Spec : Prop :=
  ∀ n, P13966356269292054796.a n = (A141597 n : ℚ)

theorem P13966356269292054796.correct : P13966356269292054796.Spec := by
  intro n
  simp only [A141597, Nat.add_sub_cancel, A141597.P13966356269292054796.a, A141597.P14074862873981650977.a, A109128, A109128.P7867596798531783597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141597

/-! ## A141597.P11116816469545087226

`A007318(n)*A028326(n)-1`
-/

namespace A141597.P11116816469545087226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A028326 n - 1

end

end A141597.P11116816469545087226

namespace A141597

/-- `A007318(n)*A028326(n)-1` -/
def P11116816469545087226.Spec : Prop :=
  ∀ n, P11116816469545087226.a n = A141597 n

theorem P11116816469545087226.correct : P11116816469545087226.Spec := by
  intro n
  simp only [A141597, Nat.add_sub_cancel, A141597.P11116816469545087226.a, A141597.P14074862873981650977.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141597

/-! ## A141597.P11077163971622612033

`A007318(n)+A144404(n)-A008459(n)`
-/

namespace A141597.P11077163971622612033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A144404 n - A008459 n)

end

end A141597.P11077163971622612033

namespace A141597

/-- `A007318(n)+A144404(n)-A008459(n)` -/
def P11077163971622612033.Spec : Prop :=
  ∀ n, P11077163971622612033.a n = A141597 n

theorem P11077163971622612033.correct : P11077163971622612033.Spec := by
  intro n
  simp only [A141597, Nat.add_sub_cancel, A141597.P11077163971622612033.a, A141597.P14074862873981650977.a, A007318, A007318.P11755526479805562006.a, A008459, A008459.P3220700038138124146.a, A144404, A144404.P4125532387807916487.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141597

/-! ## A141597.P13889851220764759666

`A014473(n)+A007318(n)*A109128(n)`
-/

namespace A141597.P13889851220764759666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A007318 n * A109128 n

end

end A141597.P13889851220764759666

namespace A141597

/-- `A014473(n)+A007318(n)*A109128(n)` -/
def P13889851220764759666.Spec : Prop :=
  ∀ n, P13889851220764759666.a n = A141597 n

theorem P13889851220764759666.correct : P13889851220764759666.Spec := by
  intro n
  simp only [A141597, Nat.add_sub_cancel, A141597.P13889851220764759666.a, A141597.P14074862873981650977.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A109128, A109128.P7867596798531783597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141597

/-! ## A141597.P170339348164139728

`2*sqrt(A202750(n))-1`
-/

namespace A141597.P170339348164139728
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A202750 n : ℝ) - 1

end

end A141597.P170339348164139728

namespace A141597

/-- `2*sqrt(A202750(n))-1` -/
def P170339348164139728.Spec : Prop :=
  ∀ n, P170339348164139728.a n = (A141597 n : ℝ)

end A141597

/-! ## A141597.P3224055198598041213

`A056220(A007318(n))`
-/

namespace A141597.P3224055198598041213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A007318 n).toNat

end

end A141597.P3224055198598041213

namespace A141597

/-- `A056220(A007318(n))` -/
def P3224055198598041213.Spec : Prop :=
  ∀ n, P3224055198598041213.a n = A141597 n

end A141597

/-! ## A141597.P15736961434878243100

`A001105(A007318(n))-A007318(A000217(n))`
-/

namespace A141597.P15736961434878243100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A007318 n).toNat - A007318 (A000217 n).toNat

end

end A141597.P15736961434878243100

namespace A141597

/-- `A001105(A007318(n))-A007318(A000217(n))` -/
def P15736961434878243100.Spec : Prop :=
  ∀ n, P15736961434878243100.a n = A141597 n

end A141597

/-! ## A141597.P5181369216084712421

`A047838(A028326(n))`
-/

namespace A141597.P5181369216084712421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (A028326 n).toNat

end

end A141597.P5181369216084712421

namespace A141597

/-- `A047838(A028326(n))` -/
def P5181369216084712421.Spec : Prop :=
  ∀ n, P5181369216084712421.a n = A141597 n

end A141597

/-! ## A141597.P648815389896350251

`A074148(A109128(n))`
-/

namespace A141597.P648815389896350251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (A109128 n).toNat

end

end A141597.P648815389896350251

namespace A141597

/-- `A074148(A109128(n))` -/
def P648815389896350251.Spec : Prop :=
  ∀ n, P648815389896350251.a n = A141597 n

end A141597

/-! ## A141597.P6990838130656388209

`A188653(A124927(n))`
-/

namespace A141597.P6990838130656388209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188653 (A124927 n).toNat

end

end A141597.P6990838130656388209

namespace A141597

/-- `A188653(A124927(n))` -/
def P6990838130656388209.Spec : Prop :=
  ∀ n, P6990838130656388209.a n = A141597 n

end A141597

/-! ## A141597.P438721362124778147

`A188653(A129994(n))`
-/

namespace A141597.P438721362124778147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188653 (A129994 n).toNat

end

end A141597.P438721362124778147

namespace A141597

/-- `A188653(A129994(n))` -/
def P438721362124778147.Spec : Prop :=
  ∀ n, P438721362124778147.a n = A141597 n

end A141597

/-! ## A141597.P6802322835896489409

`A188653(A132046(n))`
-/

namespace A141597.P6802322835896489409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188653 (A132046 n).toNat

end

end A141597.P6802322835896489409

namespace A141597

/-- `A188653(A132046(n))` -/
def P6802322835896489409.Spec : Prop :=
  ∀ n, P6802322835896489409.a n = A141597 n

end A141597

/-! ## A141597.P10811791863743283819

`A188653(A134058(n))`
-/

namespace A141597.P10811791863743283819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188653 (A134058 n).toNat

end

end A141597.P10811791863743283819

namespace A141597

/-- `A188653(A134058(n))` -/
def P10811791863743283819.Spec : Prop :=
  ∀ n, P10811791863743283819.a n = A141597 n

end A141597

/-!
# A141598: Total number of all-interval rows for systems with 2n notes in the octave (2n-edo).

The programs for A141598, there is no canonical definition to state claims against.
-/

/-! ## A141598.P6327938684672406040

`2*(n+1)*A141599(n+1)`
-/

namespace A141598.P6327938684672406040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A141599 (n + 1)

end

end A141598.P6327938684672406040

/-! ## A141598.P9241743190017446943

`A341838(2*(n+1))/(n+1)`
-/

namespace A141598.P9241743190017446943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341838 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A141598.P9241743190017446943

/-!
# A141599: Number of difference sets for permutations of [2n] with distinct differences.

The programs for A141599, there is no canonical definition to state claims against.
-/

/-! ## A141599.P1639918585397134826

`A141598(n+1)/(2*(n+1))`
-/

namespace A141599.P1639918585397134826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141598 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A141599.P1639918585397134826

/-! ## A141599.P12787386793941193700

`floor(A141598(n+1)/Δ[A002378(n)])`
-/

namespace A141599.P12787386793941193700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141598 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A141599.P12787386793941193700

/-! ## A141599.P6900692883671185554

`floor(A141598(n+1)/A063114(n+1))`
-/

namespace A141599.P6900692883671185554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141598 (n + 1) : ℚ) / (A063114 (n + 1) : ℚ)⌋

end

end A141599.P6900692883671185554

/-! ## A141599.P5302735061465788643

`floor(A141598(n+1)/A098727(n+1))`
-/

namespace A141599.P5302735061465788643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141598 (n + 1) : ℚ) / (A098727 (n + 1) : ℚ)⌋

end

end A141599.P5302735061465788643

