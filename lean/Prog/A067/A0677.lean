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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A067700: a(n) = 2*(n^2)!*Product_{k=0..n-1} k!/(n+k)!.

The programs for A067700, the canonical program `A067700.P5517301389494608979` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067700 has offset 0).

The definition of A067700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067700.P5517301389494608979

`2*A039622(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A067700

/-- `2*A039622(n)` -/
def P5517301389494608979.Spec : Prop :=
  ∀ n, P5517301389494608979.a n = A067700 n

theorem P5517301389494608979.correct : P5517301389494608979.Spec := by
  intro n
  simp only [A067700]

end A067700

/-! ## A067700.P13657733327290395012

`2*A321716(A000096(n))`
-/

namespace A067700.P13657733327290395012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321716 (A000096 n).toNat

end

end A067700.P13657733327290395012

namespace A067700

/-- `2*A321716(A000096(n))` -/
def P13657733327290395012.Spec : Prop :=
  ∀ n, P13657733327290395012.a n = A067700 n

end A067700

/-! ## A067700.P6992190170914709605

`A039622(n)+A039622(A055645(n))`
-/

namespace A067700.P6992190170914709605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039622 n + A039622 (A055645 n).toNat

end

end A067700.P6992190170914709605

namespace A067700

/-- `A039622(n)+A039622(A055645(n))` -/
def P6992190170914709605.Spec : Prop :=
  ∀ n, P6992190170914709605.a n = A067700 n

end A067700

/-! ## A067700.P2682018826918026561

`A039622(n)+lcm(A009963(n), A039622(n))`
-/

namespace A067700.P2682018826918026561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039622 n + (Int.lcm (A009963 n) (A039622 n) : ℤ)

end

end A067700.P2682018826918026561

namespace A067700

/-- `A039622(n)+lcm(A009963(n), A039622(n))` -/
def P2682018826918026561.Spec : Prop :=
  ∀ n, P2682018826918026561.a n = A067700 n

end A067700

/-!
# A067701: Numbers n such that phi(n-1) + phi(n+1) = phi(2n).

The programs for A067701, there is no canonical definition to state claims against.
-/

/-! ## A067701.P15292116829200095559

`A066231(n+1)-1`
-/

namespace A067701.P15292116829200095559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066231 (n + 1) - 1

end

end A067701.P15292116829200095559

/-! ## A067701.P4974578739189768784

`A260196(n+2)+A066231(n+1)`
-/

namespace A067701.P4974578739189768784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A066231 (n + 1)

end

end A067701.P4974578739189768784

/-! ## A067701.P6013168908446563664

`abs(xor(-A066231(n+1), A033999(n)))`
-/

namespace A067701.P6013168908446563664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-A066231 (n + 1)) (A033999 n)|

end

end A067701.P6013168908446563664

/-! ## A067701.P10640490762541068686

`A134824(2*(n+2))+A066231(n+1)`
-/

namespace A067701.P10640490762541068686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (2 * (n + 2)) + A066231 (n + 1)

end

end A067701.P10640490762541068686

/-! ## A067701.P16427919505212996074

`A092220(A017569(n))+A066231(n+1)`
-/

namespace A067701.P16427919505212996074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (A017569 n).toNat + A066231 (n + 1)

end

end A067701.P16427919505212996074

/-! ## A067701.P9671857275577777779

`A141416(∑[A197870(n)])+A066231(n+1)`
-/

namespace A067701.P9671857275577777779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141416 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A066231 (n + 1)

end

end A067701.P9671857275577777779

/-! ## A067701.P364765788556912999

`A141416(Δ[A003056(n)])+A066231(n+1)`
-/

namespace A067701.P364765788556912999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141416 (f1 (n + 1) - f1 n).toNat + A066231 (n + 1)

end

end A067701.P364765788556912999

/-! ## A067701.P7263439196084736342

`A136261(Δ[A022847(n)])+A066231(n+1)`
-/

namespace A067701.P7263439196084736342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136261 (f1 (n + 1) - f1 n).toNat + A066231 (n + 1)

end

end A067701.P7263439196084736342

/-! ## A067701.P2747807798279854728

`A070238(A070258(n+1))+A066231(n+1)`
-/

namespace A067701.P2747807798279854728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070238 (A070258 (n + 1)).toNat + A066231 (n + 1)

end

end A067701.P2747807798279854728

/-! ## A067701.P11672289839701664936

`A157658(A109373(n+1))+A066231(n+1)`
-/

namespace A067701.P11672289839701664936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (A109373 (n + 1)).toNat + A066231 (n + 1)

end

end A067701.P11672289839701664936

/-! ## A067701.P14954731764291369598

`xor(-A066231(n+1), A008683(A238086(n+1)))`
-/

namespace A067701.P14954731764291369598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A066231 (n + 1)) (A008683 (A238086 (n + 1)).toNat)

end

end A067701.P14954731764291369598

/-! ## A067701.P16945217177076093964

`A110315(A014963(2*(n+1)))+A066231(n+1)`
-/

namespace A067701.P16945217177076093964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110315 (A014963 (2 * (n + 1))).toNat + A066231 (n + 1)

end

end A067701.P16945217177076093964

/-! ## A067701.P4040139076172739858

`A110281(A020639(2*(n+1)))+A066231(n+1)`
-/

namespace A067701.P4040139076172739858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110281 (A020639 (2 * (n + 1))).toNat + A066231 (n + 1)

end

end A067701.P4040139076172739858

/-!
# A067704: Numbers n such that phi(sigma(n)) = 2*phi(n).

The programs for A067704, the canonical program `A067704.P10410918183322062006` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067704 has offset 1).

The definition of A067704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067704.P10410918183322062006

`eq[2, A000010(A000203(n+1))/A000010(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067704

/-- `eq[2, A000010(A000203(n+1))/A000010(n+1)]+1` -/
def P10410918183322062006.Spec : Prop :=
  ∀ n, (P10410918183322062006.a n : ℤ) = A067704 (n + 1)

theorem P10410918183322062006.correct : P10410918183322062006.Spec := by
  intro n
  simp only [A067704, Nat.add_sub_cancel]

end A067704

/-! ## A067704.P5993150585838998155

`eq[A000010(n+1), A353636(n+1)]+1`
-/

namespace A067704.P5993150585838998155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067704.P5993150585838998155

namespace A067704

/-- `eq[A000010(n+1), A353636(n+1)]+1` -/
def P5993150585838998155.Spec : Prop :=
  ∀ n, (P5993150585838998155.a n : ℤ) = A067704 (n + 1)

end A067704

/-! ## A067704.P17459390846835820852

`eq[A353636(n+1)², A127473(n+1)]+1`
-/

namespace A067704.P17459390846835820852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067704.P17459390846835820852

namespace A067704

/-- `eq[A353636(n+1)², A127473(n+1)]+1` -/
def P17459390846835820852.Spec : Prop :=
  ∀ n, (P17459390846835820852.a n : ℤ) = A067704 (n + 1)

end A067704

/-! ## A067704.P6298629501583093509

`eq[A109606(n+1)+1, A353636(n+1)]+1`
-/

namespace A067704.P6298629501583093509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067704.P6298629501583093509

namespace A067704

/-- `eq[A109606(n+1)+1, A353636(n+1)]+1` -/
def P6298629501583093509.Spec : Prop :=
  ∀ n, (P6298629501583093509.a n : ℤ) = A067704 (n + 1)

end A067704

/-! ## A067704.P18042131035251940997

`eq[A039649(n+1)-1, A353636(n+1)]+1`
-/

namespace A067704.P18042131035251940997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067704.P18042131035251940997

namespace A067704

/-- `eq[A039649(n+1)-1, A353636(n+1)]+1` -/
def P18042131035251940997.Spec : Prop :=
  ∀ n, (P18042131035251940997.a n : ℤ) = A067704 (n + 1)

end A067704

/-! ## A067704.P4056930775326461451

`eq[A319998(2*(n+1))/2, A353636(n+1)]+1`
-/

namespace A067704.P4056930775326461451
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319998 (2 * (n + 1)) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A067704.P4056930775326461451

namespace A067704

/-- `eq[A319998(2*(n+1))/2, A353636(n+1)]+1` -/
def P4056930775326461451.Spec : Prop :=
  ∀ n, (P4056930775326461451.a n : ℤ) = A067704 (n + 1)

end A067704

/-! ## A067704.P4254695790043969809

`eq[2-A062830(n+1)+n, A353636(n+1)]+1`
-/

namespace A067704.P4254695790043969809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A062830 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067704.P4254695790043969809

namespace A067704

/-- `eq[2-A062830(n+1)+n, A353636(n+1)]+1` -/
def P4254695790043969809.Spec : Prop :=
  ∀ n, (P4254695790043969809.a n : ℤ) = A067704 (n + 1)

end A067704

/-! ## A067704.P16965937777166771937

`eq[A002618(n+1)/(n+1), A353636(n+1)]+1`
-/

namespace A067704.P16965937777166771937
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A067704.P16965937777166771937

namespace A067704

/-- `eq[A002618(n+1)/(n+1), A353636(n+1)]+1` -/
def P16965937777166771937.Spec : Prop :=
  ∀ n, (P16965937777166771937.a n : ℤ) = A067704 (n + 1)

end A067704

/-! ## A067704.P10994025645026679861

`eq[A000040(n+1)-A104192(n+1), A353636(n+1)]+1`
-/

namespace A067704.P10994025645026679861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A104192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067704.P10994025645026679861

namespace A067704

/-- `eq[A000040(n+1)-A104192(n+1), A353636(n+1)]+1` -/
def P10994025645026679861.Spec : Prop :=
  ∀ n, (P10994025645026679861.a n : ℤ) = A067704 (n + 1)

end A067704

/-!
# A067705: a(n) = 11*n^2 + 22*n.

The programs for A067705, the canonical program `A067705.P17568998580690962890` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067705 has offset 1).

The definition of A067705 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*(n+1)²+22*(n+1)` (program `A067705.P17568998580690962890`, by `A067705.P17568998580690962890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067705.P6734244244034271908

`11*(n+1)*(n+3)`
-/

namespace A067705.P6734244244034271908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (n + 1) * (n + 3)

end

end A067705.P6734244244034271908

namespace A067705

/-- `11*(n+1)*(n+3)` -/
def P6734244244034271908.Spec : Prop :=
  ∀ n, (P6734244244034271908.a n : ℤ) = A067705 (n + 1)

theorem P6734244244034271908.correct : P6734244244034271908.Spec := by
  intro n
  simp only [A067705, Nat.add_sub_cancel, A067705.P6734244244034271908.a, A067705.P17568998580690962890.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067705

/-! ## A067705.P17568998580690962890

`11*(n+1)²+22*(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067705

/-- `11*(n+1)²+22*(n+1)` -/
def P17568998580690962890.Spec : Prop :=
  ∀ n, (P17568998580690962890.a n : ℤ) = A067705 (n + 1)

theorem P17568998580690962890.correct : P17568998580690962890.Spec := by
  intro n
  simp only [A067705, Nat.add_sub_cancel]

end A067705

/-! ## A067705.P3446190900699097059

`∑[a(n-1)+22]` with `a(0)=33`
-/

namespace A067705.P3446190900699097059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [33] fun n f1 =>
  f1 (n - 1) + 22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067705.P3446190900699097059

namespace A067705

/-- `∑[a(n-1)+22]` -/
def P3446190900699097059.Spec : Prop :=
  ∀ n, (P3446190900699097059.a n : ℤ) = A067705 (n + 1)

end A067705

/-! ## A067705.P8737982544736390751

`∑[A008593(n+3)+A008593(n)]`
-/

namespace A067705.P8737982544736390751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (n + 3) + A008593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067705.P8737982544736390751

namespace A067705

/-- `∑[A008593(n+3)+A008593(n)]` -/
def P8737982544736390751.Spec : Prop :=
  ∀ n, P8737982544736390751.a n = A067705 (n + 1)

end A067705

/-! ## A067705.P9773127996926332716

`A008593((n+1)*(n+3))`
-/

namespace A067705.P9773127996926332716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 ((n + 1) * (n + 3))

end

end A067705.P9773127996926332716

namespace A067705

/-- `A008593((n+1)*(n+3))` -/
def P9773127996926332716.Spec : Prop :=
  ∀ n, P9773127996926332716.a n = A067705 (n + 1)

theorem P9773127996926332716.correct : P9773127996926332716.Spec := by
  intro n
  simp only [A067705, Nat.add_sub_cancel, A067705.P9773127996926332716.a, A067705.P17568998580690962890.a, A008593, A008593.P2680892499938115192.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067705

/-! ## A067705.P17509642630025674842

`A053715(A054000(n+2))`
-/

namespace A067705.P17509642630025674842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053715 (A054000 (n + 2)).toNat

end

end A067705.P17509642630025674842

namespace A067705

/-- `A053715(A054000(n+2))` -/
def P17509642630025674842.Spec : Prop :=
  ∀ n, P17509642630025674842.a n = A067705 (n + 1)

end A067705

/-! ## A067705.P714397488589830395

`A343028(A067725(n+1))`
-/

namespace A067705.P714397488589830395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343028 (A067725 (n + 1)).toNat

end

end A067705.P714397488589830395

namespace A067705

/-- `A343028(A067725(n+1))` -/
def P714397488589830395.Spec : Prop :=
  ∀ n, P714397488589830395.a n = A067705 (n + 1)

end A067705

/-! ## A067705.P17935979264842089314

`A112654(A100536(n+2))`
-/

namespace A067705.P17935979264842089314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112654 (A100536 (n + 2)).toNat

end

end A067705.P17935979264842089314

namespace A067705

/-- `A112654(A100536(n+2))` -/
def P17935979264842089314.Spec : Prop :=
  ∀ n, P17935979264842089314.a n = A067705 (n + 1)

end A067705

/-!
# A067706: Numbers k such that phi(sigma(k)) = 3*phi(k).

The programs for A067706, there is no canonical definition to state claims against.
-/

/-! ## A067706.P7084687819834175723

`eq[3*A000010(n+1), A062401(n+1)]+1`
-/

namespace A067706.P7084687819834175723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067706.P7084687819834175723

/-! ## A067706.P5859380015812722836

`record[Δ[A117369(A023244(n+1))]]`
-/

namespace A067706.P5859380015812722836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117369 (A023244 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067706.P5859380015812722836

/-! ## A067706.P9265183196580451374

`A007953(A145839(n))*A061775(3*n+5)`
-/

namespace A067706.P9265183196580451374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A145839 n).toNat * A061775 (3 * n + 5)

end

end A067706.P9265183196580451374

/-!
# A067707: a(n) = 3*n^2 + 12*n.

The programs for A067707, the canonical program `A067707.P5911507643238364005` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067707 has offset 1).

The definition of A067707 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)²+12*(n+1)` (program `A067707.P5911507643238364005`, by `A067707.P5911507643238364005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067707.P8334034263650301017

`3*(n+1)*(n+5)`
-/

namespace A067707.P8334034263650301017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) * (n + 5)

end

end A067707.P8334034263650301017

namespace A067707

/-- `3*(n+1)*(n+5)` -/
def P8334034263650301017.Spec : Prop :=
  ∀ n, (P8334034263650301017.a n : ℤ) = A067707 (n + 1)

theorem P8334034263650301017.correct : P8334034263650301017.Spec := by
  intro n
  simp only [A067707, Nat.add_sub_cancel, A067707.P8334034263650301017.a, A067707.P5911507643238364005.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067707

/-! ## A067707.P5911507643238364005

`3*(n+1)²+12*(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067707

/-- `3*(n+1)²+12*(n+1)` -/
def P5911507643238364005.Spec : Prop :=
  ∀ n, (P5911507643238364005.a n : ℤ) = A067707 (n + 1)

theorem P5911507643238364005.correct : P5911507643238364005.Spec := by
  intro n
  simp only [A067707, Nat.add_sub_cancel]

end A067707

/-! ## A067707.P10589711570411138396

`∑[a(n-1)+6]` with `a(0)=15`
-/

namespace A067707.P10589711570411138396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067707.P10589711570411138396

namespace A067707

/-- `∑[a(n-1)+6]` -/
def P10589711570411138396.Spec : Prop :=
  ∀ n, (P10589711570411138396.a n : ℤ) = A067707 (n + 1)

end A067707

/-! ## A067707.P10689226061088970183

`∑[ogf((15-9x)/(1-2x+x^2))]`
-/

namespace A067707.P10689226061088970183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, -9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067707.P10689226061088970183

namespace A067707

/-- `∑[ogf((15-9x)/(1-2x+x^2))]` -/
def P10689226061088970183.Spec : Prop :=
  ∀ n, P10689226061088970183.a n = A067707 (n + 1)

end A067707

/-! ## A067707.P8748703877382428013

`ogf((15-9x)/(1-3x+3x^2-x^3))`
-/

namespace A067707.P8748703877382428013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, -9] [1, -3, 3, -1] n

end

end A067707.P8748703877382428013

namespace A067707

/-- `ogf((15-9x)/(1-3x+3x^2-x^3))` -/
def P8748703877382428013.Spec : Prop :=
  ∀ n, P8748703877382428013.a n = A067707 (n + 1)

end A067707

/-! ## A067707.P13144419897500772470

`record[3*((3-n)²-4)]`
-/

namespace A067707.P13144419897500772470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((3 - (n : ℤ)) ^ 2 - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067707.P13144419897500772470

namespace A067707

/-- `record[3*((3-n)²-4)]` -/
def P13144419897500772470.Spec : Prop :=
  ∀ n, P13144419897500772470.a n = A067707 (n + 1)

end A067707

/-! ## A067707.P2040756737175010830

`∑[3*A020735(n+1)]`
-/

namespace A067707.P2040756737175010830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A020735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067707.P2040756737175010830

namespace A067707

/-- `∑[3*A020735(n+1)]` -/
def P2040756737175010830.Spec : Prop :=
  ∀ n, P2040756737175010830.a n = A067707 (n + 1)

end A067707

/-! ## A067707.P5521059241144740589

`3*A067728(n+1)/2`
-/

namespace A067707.P5521059241144740589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A067728 (n + 1) : ℚ) / 2

end

end A067707.P5521059241144740589

namespace A067707

/-- `3*A067728(n+1)/2` -/
def P5521059241144740589.Spec : Prop :=
  ∀ n, P5521059241144740589.a n = (A067707 (n + 1) : ℚ)

theorem P5521059241144740589.correct : P5521059241144740589.Spec := by
  intro n
  simp only [A067707, Nat.add_sub_cancel, A067707.P5521059241144740589.a, A067707.P5911507643238364005.a, A067728, A067728.P6158032751772494089.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067707

/-! ## A067707.P10985902322599042307

`∑[A016969(n+1)+4]`
-/

namespace A067707.P10985902322599042307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067707.P10985902322599042307

namespace A067707

/-- `∑[A016969(n+1)+4]` -/
def P10985902322599042307.Spec : Prop :=
  ∀ n, P10985902322599042307.a n = A067707 (n + 1)

end A067707

/-! ## A067707.P9551973305610290702

`∑[A016957(n+1)+5]`
-/

namespace A067707.P9551973305610290702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067707.P9551973305610290702

namespace A067707

/-- `∑[A016957(n+1)+5]` -/
def P9551973305610290702.Spec : Prop :=
  ∀ n, P9551973305610290702.a n = A067707 (n + 1)

end A067707

/-! ## A067707.P980733765667721844

`∑[3*A062545(n+1)]`
-/

namespace A067707.P980733765667721844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A062545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067707.P980733765667721844

namespace A067707

/-- `∑[3*A062545(n+1)]` -/
def P980733765667721844.Spec : Prop :=
  ∀ n, P980733765667721844.a n = A067707 (n + 1)

end A067707

/-! ## A067707.P6191300684218566189

`∑[A016945(n+2)]`
-/

namespace A067707.P6191300684218566189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067707.P6191300684218566189

namespace A067707

/-- `∑[A016945(n+2)]` -/
def P6191300684218566189.Spec : Prop :=
  ∀ n, P6191300684218566189.a n = A067707 (n + 1)

end A067707

/-! ## A067707.P10871536210054036124

`∑[sqrt(A016946(n+2))]`
-/

namespace A067707.P10871536210054036124
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016946 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067707.P10871536210054036124

namespace A067707

/-- `∑[sqrt(A016946(n+2))]` -/
def P10871536210054036124.Spec : Prop :=
  ∀ n, P10871536210054036124.a n = (A067707 (n + 1) : ℝ)

end A067707

/-! ## A067707.P4476859313944203727

`∑[A270545(n+3)]`
-/

namespace A067707.P4476859313944203727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270545 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067707.P4476859313944203727

namespace A067707

/-- `∑[A270545(n+3)]` -/
def P4476859313944203727.Spec : Prop :=
  ∀ n, P4476859313944203727.a n = A067707 (n + 1)

end A067707

/-! ## A067707.P1195893502430582715

`∑[abs(A228935(n+3))]`
-/

namespace A067707.P1195893502430582715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A228935 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067707.P1195893502430582715

namespace A067707

/-- `∑[abs(A228935(n+3))]` -/
def P1195893502430582715.Spec : Prop :=
  ∀ n, P1195893502430582715.a n = A067707 (n + 1)

end A067707

/-! ## A067707.P1067960118334968928

`∑[A091361(n+5)]`
-/

namespace A067707.P1067960118334968928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091361 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067707.P1067960118334968928

namespace A067707

/-- `∑[A091361(n+5)]` -/
def P1067960118334968928.Spec : Prop :=
  ∀ n, P1067960118334968928.a n = A067707 (n + 1)

end A067707

/-! ## A067707.P6475035358851584537

`A098847(3*(n+1))/3`
-/

namespace A067707.P6475035358851584537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098847 (3 * (n + 1)) : ℚ) / 3

end

end A067707.P6475035358851584537

namespace A067707

/-- `A098847(3*(n+1))/3` -/
def P6475035358851584537.Spec : Prop :=
  ∀ n, P6475035358851584537.a n = (A067707 (n + 1) : ℚ)

theorem P6475035358851584537.correct : P6475035358851584537.Spec := by
  intro n
  simp only [A067707, Nat.add_sub_cancel, A067707.P6475035358851584537.a, A067707.P5911507643238364005.a, A098847, A098847.P15102155222867633188.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067707

/-! ## A067707.P10821819950097759342

`∑[A353653(A353653(n+3))]`
-/

namespace A067707.P10821819950097759342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353653 (A353653 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067707.P10821819950097759342

namespace A067707

/-- `∑[A353653(A353653(n+3))]` -/
def P10821819950097759342.Spec : Prop :=
  ∀ n, P10821819950097759342.a n = A067707 (n + 1)

end A067707

/-! ## A067707.P9545001710405721774

`∑[A080720(A080720(2*n+1))]`
-/

namespace A067707.P9545001710405721774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080720 (A080720 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067707.P9545001710405721774

namespace A067707

/-- `∑[A080720(A080720(2*n+1))]` -/
def P9545001710405721774.Spec : Prop :=
  ∀ n, P9545001710405721774.a n = A067707 (n + 1)

end A067707

/-! ## A067707.P15504918199243749274

`A083031(A276382(n+2))`
-/

namespace A067707.P15504918199243749274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083031 (A276382 (n + 2)).toNat

end

end A067707.P15504918199243749274

namespace A067707

/-- `A083031(A276382(n+2))` -/
def P15504918199243749274.Spec : Prop :=
  ∀ n, P15504918199243749274.a n = A067707 (n + 1)

end A067707

/-!
# A067709: Numbers k such that phi(2*sigma(k)) = 2*sigma(phi(k)).

The programs for A067709, there is no canonical definition to state claims against.
-/

/-! ## A067709.P15618183373207299834

`filter[A073858(n+1), A189702(#)]`
-/

namespace A067709.P15618183373207299834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189702 (f1 j).toNat = 1) n)

end

end A067709.P15618183373207299834

/-! ## A067709.P12160990361245703477

`∩[A073858(n+1), A350780(n+1)]`
-/

namespace A067709.P12160990361245703477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067709.P12160990361245703477

/-! ## A067709.P1707102869601599507

`∩[A073858(n+1), A386213(n+1)]`
-/

namespace A067709.P1707102869601599507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067709.P1707102869601599507

/-!
# A067711: a(n+1) is the smallest square > a(n) such that the digits of a(n) are all (with multiplicity) properly contained in the digits of a(n+1), with a(0)=1.

The programs for A067711, there is no canonical definition to state claims against.
-/

/-! ## A067711.P1038303053250314170

`A065297(n)²`
-/

namespace A067711.P1038303053250314170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065297 n ^ 2

end

end A067711.P1038303053250314170

/-! ## A067711.P13003723586960534309

`A065297(n)^(A055237(n)%4)`
-/

namespace A067711.P13003723586960534309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065297 n : ℚ) ^ (Int.tmod (A055237 n) 4 : ℤ)

end

end A067711.P13003723586960534309

/-! ## A067711.P17204305088180256451

`A065297(n)^A020639(A005914(n))`
-/

namespace A067711.P17204305088180256451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065297 n : ℚ) ^ (A020639 (A005914 n).toNat : ℤ)

end

end A067711.P17204305088180256451

/-! ## A067711.P5876557851683129439

`A065297(n)^A020639(A013601(n))`
-/

namespace A067711.P5876557851683129439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065297 n : ℚ) ^ (A020639 (A013601 n).toNat : ℤ)

end

end A067711.P5876557851683129439

/-! ## A067711.P101563935772750991

`A065297(n)^A000005(A065296(n+1))`
-/

namespace A067711.P101563935772750991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065297 n : ℚ) ^ (A000005 (A065296 (n + 1)).toNat : ℤ)

end

end A067711.P101563935772750991

/-!
# A067712: Numbers k such that sum of exponents in prime factorization of k is > log(k).

The programs for A067712, the canonical program `A067712.P5394162300607780817` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067712 has offset 1).

The definition of A067712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067712.P6760256000956567749

`lt[n+1, exp(A001222(n+1))]+1`
-/

namespace A067712.P6760256000956567749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A001222 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A067712.P6760256000956567749

namespace A067712

/-- `lt[n+1, exp(A001222(n+1))]+1` -/
def P6760256000956567749.Spec : Prop :=
  ∀ n, (P6760256000956567749.a n : ℤ) = A067712 (n + 1)

end A067712

/-! ## A067712.P2652638842981389884

`(lt[log(n+1), A001222(n+1)]+1)*A054977(n+1)`
-/

namespace A067712.P2652638842981389884
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1 : ℤ) * A054977 (n + 1)

end

end A067712.P2652638842981389884

namespace A067712

/-- `(lt[log(n+1), A001222(n+1)]+1)*A054977(n+1)` -/
def P2652638842981389884.Spec : Prop :=
  ∀ n, P2652638842981389884.a n = A067712 (n + 1)

end A067712

/-! ## A067712.P7312855303416317190

`lt[log(A117571(n)), A001222(n+1)]+1`
-/

namespace A067712.P7312855303416317190
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A117571 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A067712.P7312855303416317190

namespace A067712

/-- `lt[log(A117571(n)), A001222(n+1)]+1` -/
def P7312855303416317190.Spec : Prop :=
  ∀ n, (P7312855303416317190.a n : ℤ) = A067712 (n + 1)

end A067712

/-! ## A067712.P5394162300607780817

`lt[A212445(n+1), A064800(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067712

/-- `lt[A212445(n+1), A064800(n+1)]+1` -/
def P5394162300607780817.Spec : Prop :=
  ∀ n, (P5394162300607780817.a n : ℤ) = A067712 (n + 1)

theorem P5394162300607780817.correct : P5394162300607780817.Spec := by
  intro n
  simp only [A067712, Nat.add_sub_cancel]

end A067712

/-! ## A067712.P6857109487973747218

`lt[log(n+1), A001222(A046523(n+1))]+1`
-/

namespace A067712.P6857109487973747218
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046523 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A067712.P6857109487973747218

namespace A067712

/-- `lt[log(n+1), A001222(A046523(n+1))]+1` -/
def P6857109487973747218.Spec : Prop :=
  ∀ n, (P6857109487973747218.a n : ℤ) = A067712 (n + 1)

end A067712

/-!
# A067713: a(n+1) is the smallest square > a(n) such that the digits of a(n) are all (with multiplicity) contained in the digits of a(n+1), with a(0)=1.

The programs for A067713, there is no canonical definition to state claims against.
-/

/-! ## A067713.P12592897372817609295

`A014563(n)²`
-/

namespace A067713.P12592897372817609295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014563 n ^ 2

end

end A067713.P12592897372817609295

/-! ## A067713.P2726424465461616293

`A014563(n)^A020639(2*(n+1))`
-/

namespace A067713.P2726424465461616293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014563 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A067713.P2726424465461616293

/-! ## A067713.P15766603701499069466

`A014563(n)^A014963(A001316(n))`
-/

namespace A067713.P15766603701499069466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014563 n : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A067713.P15766603701499069466

/-! ## A067713.P12416422959256957165

`A014563(n)^A000005(A000040(n+1))`
-/

namespace A067713.P12416422959256957165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014563 n : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A067713.P12416422959256957165

/-! ## A067713.P10670467591001526357

`A014563(n)^A001222(A001747(n+1))`
-/

namespace A067713.P10670467591001526357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014563 n : ℚ) ^ (A001222 (A001747 (n + 1)).toNat : ℤ)

end

end A067713.P10670467591001526357

/-! ## A067713.P7654748173152299512

`A014563(n)^A000034(A000040(2*(n+1)))`
-/

namespace A067713.P7654748173152299512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014563 n : ℚ) ^ (A000034 (A000040 (2 * (n + 1))).toNat : ℤ)

end

end A067713.P7654748173152299512

/-!
# A067714: a(n+1) is the smallest square > a(n) such that the digits of a(n) are all (with multiplicity) properly contained in the digits of a(n+1), with a(0)=4.

The programs for A067714, there is no canonical definition to state claims against.
-/

/-! ## A067714.P4619547014351710836

`A065298(n)²`
-/

namespace A067714.P4619547014351710836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065298 n ^ 2

end

end A067714.P4619547014351710836

/-! ## A067714.P13952959572970624932

`A065298(n)^A020639(A133265(n))`
-/

namespace A067714.P13952959572970624932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065298 n : ℚ) ^ (A020639 (A133265 n).toNat : ℤ)

end

end A067714.P13952959572970624932

/-! ## A067714.P6892052788665860727

`A065298(n)^A000005(A065296(n+1))`
-/

namespace A067714.P6892052788665860727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065298 n : ℚ) ^ (A000005 (A065296 (n + 1)).toNat : ℤ)

end

end A067714.P6892052788665860727

/-! ## A067714.P3073055972898763084

`A065298(n)^A000005(A065308(n+1))`
-/

namespace A067714.P3073055972898763084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065298 n : ℚ) ^ (A000005 (A065308 (n + 1)).toNat : ℤ)

end

end A067714.P3073055972898763084

/-!
# A067715: Numbers k such that the sum of exponents in the prime factorization of k is < log(k).

The programs for A067715, the canonical program `A067715.P12844734517266382009` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067715 has offset 1).

The definition of A067715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9856 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067715.P14605521761898818599

`lt[exp(A001222(abs(1-n)+1)), n]`
-/

namespace A067715.P14605521761898818599
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A001222 (|1 - (n : ℤ)| + 1).toNat : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A067715.P14605521761898818599

namespace A067715

/-- `lt[exp(A001222(abs(1-n)+1)), n]` -/
def P14605521761898818599.Spec : Prop :=
  ∀ n, (P14605521761898818599.a n : ℤ) = A067715 (n + 1)

end A067715

/-! ## A067715.P897516574539952764

`lt[exp(A001222(n+1)), n+1]+1`
-/

namespace A067715.P897516574539952764
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A001222 (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A067715.P897516574539952764

namespace A067715

/-- `lt[exp(A001222(n+1)), n+1]+1` -/
def P897516574539952764.Spec : Prop :=
  ∀ n, (P897516574539952764.a n : ℤ) = A067715 (n + 1)

end A067715

/-! ## A067715.P12844734517266382009

`lt[∑{e}[n+1, #], log(n+1)]+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067715

/-- `lt[∑{e}[n+1, #], log(n+1)]+1` -/
def P12844734517266382009.Spec : Prop :=
  ∀ n, (P12844734517266382009.a n : ℤ) = A067715 (n + 1)

theorem P12844734517266382009.correct : P12844734517266382009.Spec := by
  intro n
  simp only [A067715, Nat.add_sub_cancel]

end A067715

/-! ## A067715.P16179280575987416580

`lt[exp(∑{e}[n, #]), n]`
-/

namespace A067715.P16179280575987416580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A067715.P16179280575987416580

namespace A067715

/-- `lt[exp(∑{e}[n, #]), n]` -/
def P16179280575987416580.Spec : Prop :=
  ∀ n, (P16179280575987416580.a n : ℤ) = A067715 (n + 1)

end A067715

/-! ## A067715.P3586055995190802037

`lt[∏{e}[n, exp(#)], n]`
-/

namespace A067715.P3586055995190802037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Real.exp (Nat.factorization (f2 n) p : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A067715.P3586055995190802037

namespace A067715

/-- `lt[∏{e}[n, exp(#)], n]` -/
def P3586055995190802037.Spec : Prop :=
  ∀ n, (P3586055995190802037.a n : ℤ) = A067715 (n + 1)

end A067715

/-! ## A067715.P9397647277545916647

`∪[A047821(n+1), A325798(n+1)]`
-/

namespace A067715.P9397647277545916647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067715.P9397647277545916647

namespace A067715

/-- `∪[A047821(n+1), A325798(n+1)]` -/
def P9397647277545916647.Spec : Prop :=
  ∀ n, (P9397647277545916647.a n : ℤ) = A067715 (n + 1)

end A067715

/-! ## A067715.P490368420107121900

`∪[A075658(n+1), A325798(n+1)]`
-/

namespace A067715.P490368420107121900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067715.P490368420107121900

namespace A067715

/-- `∪[A075658(n+1), A325798(n+1)]` -/
def P490368420107121900.Spec : Prop :=
  ∀ n, (P490368420107121900.a n : ℤ) = A067715 (n + 1)

end A067715

/-! ## A067715.P3398235649689586152

`∪[A141164(n+1), A325798(n+1)]`
-/

namespace A067715.P3398235649689586152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067715.P3398235649689586152

namespace A067715

/-- `∪[A141164(n+1), A325798(n+1)]` -/
def P3398235649689586152.Spec : Prop :=
  ∀ n, (P3398235649689586152.a n : ℤ) = A067715 (n + 1)

end A067715

/-! ## A067715.P17460219599094492408

`∪[A195238(n+1), A325798(n+1)]`
-/

namespace A067715.P17460219599094492408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067715.P17460219599094492408

namespace A067715

/-- `∪[A195238(n+1), A325798(n+1)]` -/
def P17460219599094492408.Spec : Prop :=
  ∀ n, (P17460219599094492408.a n : ℤ) = A067715 (n + 1)

end A067715

/-!
# A067717: a(n+1) is the smallest square > a(n) such that the digits of a(n) are all (with multiplicity) contained in the digits of a(n+1), with a(0)=4.

The programs for A067717, there is no canonical definition to state claims against.
-/

/-! ## A067717.P16226864359260802440

`A067975(n)²`
-/

namespace A067717.P16226864359260802440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067975 n ^ 2

end

end A067717.P16226864359260802440

/-! ## A067717.P13756626388734055162

`A067975(n)^A020639(2*(n+1))`
-/

namespace A067717.P13756626388734055162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067975 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A067717.P13756626388734055162

/-! ## A067717.P11337485918331228830

`A067975(n)^(A035263(2*n+3)+1)`
-/

namespace A067717.P11337485918331228830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067975 n : ℚ) ^ (A035263 (2 * n + 3) + 1 : ℤ)

end

end A067717.P11337485918331228830

/-! ## A067717.P14725038917633928813

`A067975(n)^A053669(A008589(2*n+1))`
-/

namespace A067717.P14725038917633928813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067975 n : ℚ) ^ (A053669 (A008589 (2 * n + 1)).toNat : ℤ)

end

end A067717.P14725038917633928813

/-!
# A067718: Numbers k such that sigma(2^k+1) == 0 (mod k).

The programs for A067718, there is no canonical definition to state claims against.
-/

/-! ## A067718.P5447660550762209808

`record[gcd(n+1, A069061(n+1))]`
-/

namespace A067718.P5447660550762209808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A069061 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067718.P5447660550762209808

/-!
# A067719: Numbers k such that sigma(k^2 + 1) == 0 (mod k).

The programs for A067719, there is no canonical definition to state claims against.
-/

/-! ## A067719.P9082977310714778855

`eq[n, gcd(n, A193433(n))]`
-/

namespace A067719.P9082977310714778855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A193433 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067719.P9082977310714778855

/-! ## A067719.P16572430423332781026

`eq[2, a(A000203(n²+1)%n)+1]` with `a(0)=1`
-/

namespace A067719.P16572430423332781026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (Int.tmod (A000203 (n ^ 2 + 1)) (n : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067719.P16572430423332781026

/-! ## A067719.P1924717009777044679

`lt[A000203((n+1)²+1)%(n+1), 1]+1`
-/

namespace A067719.P1924717009777044679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 ((n + 1) ^ 2 + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A067719.P1924717009777044679

/-! ## A067719.P6116128401295144468

`eq[1, A248189(n+1)]+1`
-/

namespace A067719.P6116128401295144468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248189 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067719.P6116128401295144468

/-! ## A067719.P15896709375590223277

`record[A000027(n+1)/A248189(n+1)]`
-/

namespace A067719.P15896709375590223277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A248189 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067719.P15896709375590223277

/-!
# A067720: Numbers k such that phi(k^2+1) = k*phi(k+1).

The programs for A067720, the canonical program `A067720.P10605338190023800648` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067720 has offset 1).

The definition of A067720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067720.P14589854072624582420

`eq[A098189(n+1), A193432(n)]`
-/

namespace A067720.P14589854072624582420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P14589854072624582420

namespace A067720

/-- `eq[A098189(n+1), A193432(n)]` -/
def P14589854072624582420.Spec : Prop :=
  ∀ n, (P14589854072624582420.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P3242253872227828890

`eq[A024994(n+1), A284376(n)]`
-/

namespace A067720.P3242253872227828890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P3242253872227828890

namespace A067720

/-- `eq[A024994(n+1), A284376(n)]` -/
def P3242253872227828890.Spec : Prop :=
  ∀ n, (P3242253872227828890.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P7461719698302752966

`eq[A083711(n+1), A284376(n)]`
-/

namespace A067720.P7461719698302752966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P7461719698302752966

namespace A067720

/-- `eq[A083711(n+1), A284376(n)]` -/
def P7461719698302752966.Spec : Prop :=
  ∀ n, (P7461719698302752966.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P17006992249131648245

`eq[A062955(n+1), A333169(n)]`
-/

namespace A067720.P17006992249131648245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P17006992249131648245

namespace A067720

/-- `eq[A062955(n+1), A333169(n)]` -/
def P17006992249131648245.Spec : Prop :=
  ∀ n, (P17006992249131648245.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P8043714814301936584

`eq[A053000(n), A347129(n+1)]`
-/

namespace A067720.P8043714814301936584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347129 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P8043714814301936584

namespace A067720

/-- `eq[A053000(n), A347129(n+1)]` -/
def P8043714814301936584.Spec : Prop :=
  ∀ n, (P8043714814301936584.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P7341747886541106124

`eq[A053000(n), A347959(n+1)]`
-/

namespace A067720.P7341747886541106124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P7341747886541106124

namespace A067720

/-- `eq[A053000(n), A347959(n+1)]` -/
def P7341747886541106124.Spec : Prop :=
  ∀ n, (P7341747886541106124.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P5383617363129972001

`eq[A053000(n), A347963(n+1)]`
-/

namespace A067720.P5383617363129972001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P5383617363129972001

namespace A067720

/-- `eq[A053000(n), A347963(n+1)]` -/
def P5383617363129972001.Spec : Prop :=
  ∀ n, (P5383617363129972001.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P13031313265154462602

`eq[A053000(n), A378547(n+1)]`
-/

namespace A067720.P13031313265154462602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P13031313265154462602

namespace A067720

/-- `eq[A053000(n), A378547(n+1)]` -/
def P13031313265154462602.Spec : Prop :=
  ∀ n, (P13031313265154462602.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P12923241351384930606

`eq[A053000(n), A378549(n+1)]`
-/

namespace A067720.P12923241351384930606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378549 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P12923241351384930606

namespace A067720

/-- `eq[A053000(n), A378549(n+1)]` -/
def P12923241351384930606.Spec : Prop :=
  ∀ n, (P12923241351384930606.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P10904303369424781531

`eq[A053000(n), A385349(n+1)]`
-/

namespace A067720.P10904303369424781531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385349 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P10904303369424781531

namespace A067720

/-- `eq[A053000(n), A385349(n+1)]` -/
def P10904303369424781531.Spec : Prop :=
  ∀ n, (P10904303369424781531.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P6564006267834492539

`eq[A053000(n), A393063(n+1)]`
-/

namespace A067720.P6564006267834492539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393063 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P6564006267834492539

namespace A067720

/-- `eq[A053000(n), A393063(n+1)]` -/
def P6564006267834492539.Spec : Prop :=
  ∀ n, (P6564006267834492539.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P16022352167042907920

`eq[A062790(n+1), A397263(n)]`
-/

namespace A067720.P16022352167042907920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P16022352167042907920

namespace A067720

/-- `eq[A062790(n+1), A397263(n)]` -/
def P16022352167042907920.Spec : Prop :=
  ∀ n, (P16022352167042907920.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P3473103876833622738

`eq[A214579(n+1), A284376(n)]`
-/

namespace A067720.P3473103876833622738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P3473103876833622738

namespace A067720

/-- `eq[A214579(n+1), A284376(n)]` -/
def P3473103876833622738.Spec : Prop :=
  ∀ n, (P3473103876833622738.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P13992573732859046530

`eq[A117494(n+1), A397263(n)]`
-/

namespace A067720.P13992573732859046530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P13992573732859046530

namespace A067720

/-- `eq[A117494(n+1), A397263(n)]` -/
def P13992573732859046530.Spec : Prop :=
  ∀ n, (P13992573732859046530.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P5263865534885061953

`eq[A284376(n), A347129(n+1)]`
-/

namespace A067720.P5263865534885061953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347129 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P5263865534885061953

namespace A067720

/-- `eq[A284376(n), A347129(n+1)]` -/
def P5263865534885061953.Spec : Prop :=
  ∀ n, (P5263865534885061953.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P6538346734878166784

`eq[A284376(n), A347957(n+1)]`
-/

namespace A067720.P6538346734878166784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P6538346734878166784

namespace A067720

/-- `eq[A284376(n), A347957(n+1)]` -/
def P6538346734878166784.Spec : Prop :=
  ∀ n, (P6538346734878166784.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P11075762023251811358

`eq[A284376(n), A347959(n+1)]`
-/

namespace A067720.P11075762023251811358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P11075762023251811358

namespace A067720

/-- `eq[A284376(n), A347959(n+1)]` -/
def P11075762023251811358.Spec : Prop :=
  ∀ n, (P11075762023251811358.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P11243819370930628824

`eq[A284376(n), A347963(n+1)]`
-/

namespace A067720.P11243819370930628824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067720.P11243819370930628824

namespace A067720

/-- `eq[A284376(n), A347963(n+1)]` -/
def P11243819370930628824.Spec : Prop :=
  ∀ n, (P11243819370930628824.a n : ℤ) = A067720 (n + 1)

end A067720

/-! ## A067720.P10605338190023800648

`eq[A053000(A053000(n))², A001065(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067720

/-- `eq[A053000(A053000(n))², A001065(n+1)]` -/
def P10605338190023800648.Spec : Prop :=
  ∀ n, (P10605338190023800648.a n : ℤ) = A067720 (n + 1)

theorem P10605338190023800648.correct : P10605338190023800648.Spec := by
  intro n
  simp only [A067720, Nat.add_sub_cancel]

end A067720

/-!
# A067722: Least positive integer k such that n*(n + k) is a perfect square.

The programs for A067722, the canonical program `A067722.P13571453614909956213` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067722 has offset 0).

The definition of A067722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067722.P13571453614909956213

`A193800(A004277(n))%A016885(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A067722

/-- `A193800(A004277(n))%A016885(n)` -/
def P13571453614909956213.Spec : Prop :=
  ∀ n, P13571453614909956213.a n = A067722 n

theorem P13571453614909956213.correct : P13571453614909956213.Spec := by
  intro n
  simp only [A067722]

end A067722

/-! ## A067722.P6161935088371843253

`A193800(A123108(4*n))%A047924(n)`
-/

namespace A067722.P6161935088371843253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193800 (A123108 (4 * n)).toNat) (A047924 n)

end

end A067722.P6161935088371843253

namespace A067722

/-- `A193800(A123108(4*n))%A047924(n)` -/
def P6161935088371843253.Spec : Prop :=
  ∀ n, P6161935088371843253.a n = A067722 n

end A067722

/-! ## A067722.P10322720791035593164

`A193800(A004277(n))/(A000007(n)+1)²`
-/

namespace A067722.P10322720791035593164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193800 (A004277 n).toNat : ℚ) / ((A000007 n + 1) ^ 2 : ℚ)

end

end A067722.P10322720791035593164

namespace A067722

/-- `A193800(A004277(n))/(A000007(n)+1)²` -/
def P10322720791035593164.Spec : Prop :=
  ∀ n, P10322720791035593164.a n = (A067722 n : ℚ)

end A067722

/-! ## A067722.P5637651048301649401

`A193800(A004277(n))^A088440(A003817(n))`
-/

namespace A067722.P5637651048301649401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193800 (A004277 n).toNat : ℚ) ^ (A088440 (A003817 n).toNat : ℤ)

end

end A067722.P5637651048301649401

namespace A067722

/-- `A193800(A004277(n))^A088440(A003817(n))` -/
def P5637651048301649401.Spec : Prop :=
  ∀ n, P5637651048301649401.a n = (A067722 n : ℚ)

end A067722

/-! ## A067722.P18364551613113487800

`A193800(A004277(n))^A057979(A103517(n))`
-/

namespace A067722.P18364551613113487800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193800 (A004277 n).toNat : ℚ) ^ (A057979 (A103517 n).toNat : ℤ)

end

end A067722.P18364551613113487800

namespace A067722

/-- `A193800(A004277(n))^A057979(A103517(n))` -/
def P18364551613113487800.Spec : Prop :=
  ∀ n, P18364551613113487800.a n = (A067722 n : ℚ)

end A067722

/-! ## A067722.P13868590197142743947

`A022144(n)%A193800(A022144(n))`
-/

namespace A067722.P13868590197142743947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 n) (A193800 (A022144 n).toNat)

end

end A067722.P13868590197142743947

namespace A067722

/-- `A022144(n)%A193800(A022144(n))` -/
def P13868590197142743947.Spec : Prop :=
  ∀ n, P13868590197142743947.a n = A067722 n

end A067722

/-!
# A067723: Nontrivial palindromes k such that phi(k) is also a palindrome.

The programs for A067723, there is no canonical definition to state claims against.
-/

/-! ## A067723.P6521274343759514536

`A069747(n+10)`
-/

namespace A067723.P6521274343759514536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069747 (n + 10)

end

end A067723.P6521274343759514536

/-! ## A067723.P9891148586236511371

`record[A069747(A020723(abs(1-n)))]`
-/

namespace A067723.P9891148586236511371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069747 (A020723 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067723.P9891148586236511371

/-! ## A067723.P16101472271050827437

`log2(1/2)^2*A069747(A047842(n))`
-/

namespace A067723.P16101472271050827437
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((1 : ℚ) / 2 : ℝ) ^ 2 * (A069747 (A047842 n).toNat : ℝ)

end

end A067723.P16101472271050827437

/-! ## A067723.P5925511729541810721

`A069747(A045918(n))-A025442(n)`
-/

namespace A067723.P5925511729541810721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069747 (A045918 n).toNat - A025442 n

end

end A067723.P5925511729541810721

/-! ## A067723.P12378121368947839631

`A069747(A047842(n))-A025442(n)`
-/

namespace A067723.P12378121368947839631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069747 (A047842 n).toNat - A025442 n

end

end A067723.P12378121368947839631

/-!
# A067724: a(n) = 5*n^2 + 10*n.

The programs for A067724, the canonical program `A067724.P9963393938596018905` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067724 has offset 1).

The definition of A067724 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(n+1)²+10*(n+1)` (program `A067724.P9963393938596018905`, by `A067724.P9963393938596018905.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067724.P7730351662417493030

`5*(n+1)*(n+3)`
-/

namespace A067724.P7730351662417493030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1) * (n + 3)

end

end A067724.P7730351662417493030

namespace A067724

/-- `5*(n+1)*(n+3)` -/
def P7730351662417493030.Spec : Prop :=
  ∀ n, (P7730351662417493030.a n : ℤ) = A067724 (n + 1)

theorem P7730351662417493030.correct : P7730351662417493030.Spec := by
  intro n
  simp only [A067724, Nat.add_sub_cancel, A067724.P7730351662417493030.a, A067724.P9963393938596018905.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067724

/-! ## A067724.P9963393938596018905

`5*(n+1)²+10*(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067724

/-- `5*(n+1)²+10*(n+1)` -/
def P9963393938596018905.Spec : Prop :=
  ∀ n, (P9963393938596018905.a n : ℤ) = A067724 (n + 1)

theorem P9963393938596018905.correct : P9963393938596018905.Spec := by
  intro n
  simp only [A067724, Nat.add_sub_cancel]

end A067724

/-! ## A067724.P11906850497029493840

`∑[a(n-1)+10]` with `a(0)=15`
-/

namespace A067724.P11906850497029493840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067724.P11906850497029493840

namespace A067724

/-- `∑[a(n-1)+10]` -/
def P11906850497029493840.Spec : Prop :=
  ∀ n, (P11906850497029493840.a n : ℤ) = A067724 (n + 1)

end A067724

/-! ## A067724.P2341625092344623046

`∑[ogf((15-5x)/(1-2x+x^2))]`
-/

namespace A067724.P2341625092344623046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, -5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067724.P2341625092344623046

namespace A067724

/-- `∑[ogf((15-5x)/(1-2x+x^2))]` -/
def P2341625092344623046.Spec : Prop :=
  ∀ n, P2341625092344623046.a n = A067724 (n + 1)

end A067724

/-! ## A067724.P17539392845018375056

`ogf((15-5x)/(1-3x+3x^2-x^3))`
-/

namespace A067724.P17539392845018375056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, -5] [1, -3, 3, -1] n

end

end A067724.P17539392845018375056

namespace A067724

/-- `ogf((15-5x)/(1-3x+3x^2-x^3))` -/
def P17539392845018375056.Spec : Prop :=
  ∀ n, P17539392845018375056.a n = A067724 (n + 1)

end A067724

/-! ## A067724.P8381355167594432105

`record[5*((2-n)²-1)]`
-/

namespace A067724.P8381355167594432105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((2 - (n : ℤ)) ^ 2 - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067724.P8381355167594432105

namespace A067724

/-- `record[5*((2-n)²-1)]` -/
def P8381355167594432105.Spec : Prop :=
  ∀ n, P8381355167594432105.a n = A067724 (n + 1)

end A067724

/-! ## A067724.P15420052265356009307

`∑[sqrt(A017330(n+1))]`
-/

namespace A067724.P15420052265356009307
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017330 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067724.P15420052265356009307

namespace A067724

/-- `∑[sqrt(A017330(n+1))]` -/
def P15420052265356009307.Spec : Prop :=
  ∀ n, P15420052265356009307.a n = (A067724 (n + 1) : ℝ)

end A067724

/-! ## A067724.P6575227920864674050

`A067705(n+1)%A067726(n+1)`
-/

namespace A067724.P6575227920864674050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067705 (n + 1)) (A067726 (n + 1))

end

end A067724.P6575227920864674050

namespace A067724

/-- `A067705(n+1)%A067726(n+1)` -/
def P6575227920864674050.Spec : Prop :=
  ∀ n, P6575227920864674050.a n = A067724 (n + 1)

end A067724

/-! ## A067724.P10839826415518610818

`∑[A017329(n+1)]`
-/

namespace A067724.P10839826415518610818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067724.P10839826415518610818

namespace A067724

/-- `∑[A017329(n+1)]` -/
def P10839826415518610818.Spec : Prop :=
  ∀ n, P10839826415518610818.a n = A067724 (n + 1)

end A067724

/-! ## A067724.P15882047164818616241

`Δ[5*A047732(n)]`
-/

namespace A067724.P15882047164818616241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A047732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067724.P15882047164818616241

namespace A067724

/-- `Δ[5*A047732(n)]` -/
def P15882047164818616241.Spec : Prop :=
  ∀ n, P15882047164818616241.a n = A067724 (n + 1)

end A067724

/-! ## A067724.P1454201538444906392

`A302576(n+3)/2`
-/

namespace A067724.P1454201538444906392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302576 (n + 3) : ℚ) / 2

end

end A067724.P1454201538444906392

namespace A067724

/-- `A302576(n+3)/2` -/
def P1454201538444906392.Spec : Prop :=
  ∀ n, P1454201538444906392.a n = (A067724 (n + 1) : ℚ)

theorem P1454201538444906392.correct : P1454201538444906392.Spec := by
  intro n
  simp only [A067724, Nat.add_sub_cancel, A067724.P1454201538444906392.a, A067724.P9963393938596018905.a, A302576, A302576.P14598838994082414962.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067724

/-! ## A067724.P12694697846496422670

`A120070(A022267(n+1))`
-/

namespace A067724.P12694697846496422670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (A022267 (n + 1)).toNat

end

end A067724.P12694697846496422670

namespace A067724

/-- `A120070(A022267(n+1))` -/
def P12694697846496422670.Spec : Prop :=
  ∀ n, P12694697846496422670.a n = A067724 (n + 1)

end A067724

/-!
# A067725: a(n) = 3*n^2 + 6*n.

The programs for A067725, the canonical program `A067725.P18258344800788486266` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067725 has offset 0).

The definition of A067725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²+6*n` (program `A067725.P18258344800788486266`, by `A067725.P18258344800788486266.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067725.P7390264164644770550

`3*n*(n+2)`
-/

namespace A067725.P7390264164644770550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n * (n + 2)

end

end A067725.P7390264164644770550

namespace A067725

/-- `3*n*(n+2)` -/
def P7390264164644770550.Spec : Prop :=
  ∀ n, (P7390264164644770550.a n : ℤ) = A067725 n

theorem P7390264164644770550.correct : P7390264164644770550.Spec := by
  intro n
  simp only [A067725, Nat.add_sub_cancel, A067725.P7390264164644770550.a, A067725.P18258344800788486266.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067725

/-! ## A067725.P18258344800788486266

`3*n²+6*n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067725

/-- `3*n²+6*n` -/
def P18258344800788486266.Spec : Prop :=
  ∀ n, (P18258344800788486266.a n : ℤ) = A067725 n

theorem P18258344800788486266.correct : P18258344800788486266.Spec := by
  intro n
  simp only [A067725]

end A067725

/-! ## A067725.P5700984778872037765

`record[3*n*(n-2)]`
-/

namespace A067725.P5700984778872037765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067725.P5700984778872037765

namespace A067725

/-- `record[3*n*(n-2)]` -/
def P5700984778872037765.Spec : Prop :=
  ∀ n, P5700984778872037765.a n = A067725 n

end A067725

/-! ## A067725.P6450956781138317535

`∑[a(n-1)+6]` with `a(0)=0, a(1)=9`
-/

namespace A067725.P6450956781138317535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067725.P6450956781138317535

namespace A067725

/-- `∑[a(n-1)+6]` -/
def P6450956781138317535.Spec : Prop :=
  ∀ n, (P6450956781138317535.a n : ℤ) = A067725 n

end A067725

/-! ## A067725.P1126035892533702787

`∑[ogf((9x-3x^2)/(1-2x+x^2))]`
-/

namespace A067725.P1126035892533702787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, -3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067725.P1126035892533702787

namespace A067725

/-- `∑[ogf((9x-3x^2)/(1-2x+x^2))]` -/
def P1126035892533702787.Spec : Prop :=
  ∀ n, P1126035892533702787.a n = A067725 n

end A067725

/-! ## A067725.P400351660298974926

`ogf((9x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A067725.P400351660298974926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, -3] [1, -3, 3, -1] n

end

end A067725.P400351660298974926

namespace A067725

/-- `ogf((9x-3x^2)/(1-3x+3x^2-x^3))` -/
def P400351660298974926.Spec : Prop :=
  ∀ n, P400351660298974926.a n = A067725 n

end A067725

/-! ## A067725.P16537088151195847061

`((n+1)²-1)/tan(acot(3))`
-/

namespace A067725.P16537088151195847061
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - 1 : ℝ) / Real.tan (SequenceMachineLib.acot (3 : ℝ))

end

end A067725.P16537088151195847061

namespace A067725

/-- `((n+1)²-1)/tan(acot(3))` -/
def P16537088151195847061.Spec : Prop :=
  ∀ n, P16537088151195847061.a n = (A067725 n : ℝ)

end A067725

/-! ## A067725.P8722501225517174715

`((n+1)²-1)/cot(atan(3))`
-/

namespace A067725.P8722501225517174715
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - 1 : ℝ) / Real.cot (Real.arctan (3 : ℝ))

end

end A067725.P8722501225517174715

namespace A067725

/-- `((n+1)²-1)/cot(atan(3))` -/
def P8722501225517174715.Spec : Prop :=
  ∀ n, P8722501225517174715.a n = (A067725 n : ℝ)

end A067725

/-! ## A067725.P8228054559821798002

`lcm(n, (1-n)²-Δ[n²]²)`
-/

namespace A067725.P8228054559821798002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ 2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A067725.P8228054559821798002

namespace A067725

/-- `lcm(n, (1-n)²-Δ[n²]²)` -/
def P8228054559821798002.Spec : Prop :=
  ∀ n, (P8228054559821798002.a n : ℤ) = A067725 n

end A067725

/-! ## A067725.P2442518299858536361

`A147651(n)/3`
-/

namespace A067725.P2442518299858536361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147651 n : ℚ) / 3

end

end A067725.P2442518299858536361

namespace A067725

/-- `A147651(n)/3` -/
def P2442518299858536361.Spec : Prop :=
  ∀ n, P2442518299858536361.a n = (A067725 n : ℚ)

theorem P2442518299858536361.correct : P2442518299858536361.Spec := by
  intro n
  simp only [A067725, Nat.add_sub_cancel, A067725.P2442518299858536361.a, A067725.P18258344800788486266.a, A147651, A147651.P5567796470201540316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067725

/-! ## A067725.P1833984969137811043

`A081275(n)%A080861(n)`
-/

namespace A067725.P1833984969137811043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081275 n) (A080861 n)

end

end A067725.P1833984969137811043

namespace A067725

/-- `A081275(n)%A080861(n)` -/
def P1833984969137811043.Spec : Prop :=
  ∀ n, P1833984969137811043.a n = A067725 n

end A067725

/-! ## A067725.P18125691962625216458

`A131878(n)%A082109(n)`
-/

namespace A067725.P18125691962625216458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131878 n) (A082109 n)

end

end A067725.P18125691962625216458

namespace A067725

/-- `A131878(n)%A082109(n)` -/
def P18125691962625216458.Spec : Prop :=
  ∀ n, P18125691962625216458.a n = A067725 n

end A067725

/-! ## A067725.P16068744155692722942

`A080861(n)%A158480(n)`
-/

namespace A067725.P16068744155692722942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080861 n) (A158480 n)

end

end A067725.P16068744155692722942

namespace A067725

/-- `A080861(n)%A158480(n)` -/
def P16068744155692722942.Spec : Prop :=
  ∀ n, P16068744155692722942.a n = A067725 n

end A067725

/-! ## A067725.P8871649926781428482

`A144459(n)%A194454(n)`
-/

namespace A067725.P8871649926781428482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144459 n) (A194454 n)

end

end A067725.P8871649926781428482

namespace A067725

/-- `A144459(n)%A194454(n)` -/
def P8871649926781428482.Spec : Prop :=
  ∀ n, P8871649926781428482.a n = A067725 n

end A067725

/-! ## A067725.P2040729522551047535

`A001539(n)%A387659(n)`
-/

namespace A067725.P2040729522551047535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001539 n) (A387659 n)

end

end A067725.P2040729522551047535

namespace A067725

/-- `A001539(n)%A387659(n)` -/
def P2040729522551047535.Spec : Prop :=
  ∀ n, P2040729522551047535.a n = A067725 n

end A067725

/-! ## A067725.P6183279331860140822

`A161587(n)%A272039(n)`
-/

namespace A067725.P6183279331860140822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161587 n) (A272039 n)

end

end A067725.P6183279331860140822

namespace A067725

/-- `A161587(n)%A272039(n)` -/
def P6183279331860140822.Spec : Prop :=
  ∀ n, P6183279331860140822.a n = A067725 n

end A067725

/-! ## A067725.P8097234153466141006

`A069133(n+1)%A005892(n)`
-/

namespace A067725.P8097234153466141006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069133 (n + 1)) (A005892 n)

end

end A067725.P8097234153466141006

namespace A067725

/-- `A069133(n+1)%A005892(n)` -/
def P8097234153466141006.Spec : Prop :=
  ∀ n, P8097234153466141006.a n = A067725 n

end A067725

/-! ## A067725.P8787274395778055144

`A069190(n+1)%A016778(n)`
-/

namespace A067725.P8787274395778055144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069190 (n + 1)) (A016778 n)

end

end A067725.P8787274395778055144

namespace A067725

/-- `A069190(n+1)%A016778(n)` -/
def P8787274395778055144.Spec : Prop :=
  ∀ n, P8787274395778055144.a n = A067725 n

end A067725

/-! ## A067725.P394032294689306041

`A069131(n+1)%A085473(n)`
-/

namespace A067725.P394032294689306041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069131 (n + 1)) (A085473 n)

end

end A067725.P394032294689306041

namespace A067725

/-- `A069131(n+1)%A085473(n)` -/
def P394032294689306041.Spec : Prop :=
  ∀ n, P394032294689306041.a n = A067725 n

end A067725

/-!
# A067726: a(n) = 6*n^2 + 12*n.

The programs for A067726, the canonical program `A067726.P5504740399403573179` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067726 has offset 1).

The definition of A067726 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(n+1)²+12*(n+1)` (program `A067726.P5504740399403573179`, by `A067726.P5504740399403573179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067726.P9288459625079231537

`6*(n+1)*(n+3)`
-/

namespace A067726.P9288459625079231537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1) * (n + 3)

end

end A067726.P9288459625079231537

namespace A067726

/-- `6*(n+1)*(n+3)` -/
def P9288459625079231537.Spec : Prop :=
  ∀ n, (P9288459625079231537.a n : ℤ) = A067726 (n + 1)

theorem P9288459625079231537.correct : P9288459625079231537.Spec := by
  intro n
  simp only [A067726, Nat.add_sub_cancel, A067726.P9288459625079231537.a, A067726.P5504740399403573179.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067726

/-! ## A067726.P5504740399403573179

`6*(n+1)²+12*(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067726

/-- `6*(n+1)²+12*(n+1)` -/
def P5504740399403573179.Spec : Prop :=
  ∀ n, (P5504740399403573179.a n : ℤ) = A067726 (n + 1)

theorem P5504740399403573179.correct : P5504740399403573179.Spec := by
  intro n
  simp only [A067726, Nat.add_sub_cancel]

end A067726

/-! ## A067726.P5544149781371317726

`∑[a(n-1)+12]` with `a(0)=18`
-/

namespace A067726.P5544149781371317726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067726.P5544149781371317726

namespace A067726

/-- `∑[a(n-1)+12]` -/
def P5544149781371317726.Spec : Prop :=
  ∀ n, (P5544149781371317726.a n : ℤ) = A067726 (n + 1)

end A067726

/-! ## A067726.P2790612244859351218

`record[6*((2-n)²-1)]`
-/

namespace A067726.P2790612244859351218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((2 - (n : ℤ)) ^ 2 - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067726.P2790612244859351218

namespace A067726

/-- `record[6*((2-n)²-1)]` -/
def P2790612244859351218.Spec : Prop :=
  ∀ n, P2790612244859351218.a n = A067726 (n + 1)

end A067726

/-! ## A067726.P2125181496119395990

`A158230(n+1)%A157514(n+1)`
-/

namespace A067726.P2125181496119395990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158230 (n + 1)) (A157514 (n + 1))

end

end A067726.P2125181496119395990

namespace A067726

/-- `A158230(n+1)%A157514(n+1)` -/
def P2125181496119395990.Spec : Prop :=
  ∀ n, P2125181496119395990.a n = A067726 (n + 1)

end A067726

/-! ## A067726.P15885176870492744976

`∑[A017593(n+1)]`
-/

namespace A067726.P15885176870492744976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067726.P15885176870492744976

namespace A067726

/-- `∑[A017593(n+1)]` -/
def P15885176870492744976.Spec : Prop :=
  ∀ n, P15885176870492744976.a n = A067726 (n + 1)

end A067726

/-! ## A067726.P12474409614881187950

`∑[sqrt(A017594(n+1))]`
-/

namespace A067726.P12474409614881187950
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017594 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067726.P12474409614881187950

namespace A067726

/-- `∑[sqrt(A017594(n+1))]` -/
def P12474409614881187950.Spec : Prop :=
  ∀ n, P12474409614881187950.a n = (A067726 (n + 1) : ℝ)

end A067726

/-! ## A067726.P18062806831196161085

`Δ[Δ[A243645(n+2)]]`
-/

namespace A067726.P18062806831196161085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243645 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067726.P18062806831196161085

namespace A067726

/-- `Δ[Δ[A243645(n+2)]]` -/
def P18062806831196161085.Spec : Prop :=
  ∀ n, P18062806831196161085.a n = A067726 (n + 1)

end A067726

/-! ## A067726.P15224311708515664901

`∑[record[A174012(n+3)]]`
-/

namespace A067726.P15224311708515664901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174012 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067726.P15224311708515664901

namespace A067726

/-- `∑[record[A174012(n+3)]]` -/
def P15224311708515664901.Spec : Prop :=
  ∀ n, P15224311708515664901.a n = A067726 (n + 1)

end A067726

/-! ## A067726.P17832612236851629198

`∑[record[A298026(n+3)]]`
-/

namespace A067726.P17832612236851629198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067726.P17832612236851629198

namespace A067726

/-- `∑[record[A298026(n+3)]]` -/
def P17832612236851629198.Spec : Prop :=
  ∀ n, P17832612236851629198.a n = A067726 (n + 1)

end A067726

/-! ## A067726.P7311261391706694542

`∑[record[A340519(n+3)]]`
-/

namespace A067726.P7311261391706694542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340519 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067726.P7311261391706694542

namespace A067726

/-- `∑[record[A340519(n+3)]]` -/
def P7311261391706694542.Spec : Prop :=
  ∀ n, P7311261391706694542.a n = A067726 (n + 1)

end A067726

/-! ## A067726.P8281399446168627496

`A157632(A340266(n+2))`
-/

namespace A067726.P8281399446168627496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157632 (A340266 (n + 2)).toNat

end

end A067726.P8281399446168627496

namespace A067726

/-- `A157632(A340266(n+2))` -/
def P8281399446168627496.Spec : Prop :=
  ∀ n, P8281399446168627496.a n = A067726 (n + 1)

end A067726

/-! ## A067726.P4842254876773912244

`A298038(A066830(n+2))`
-/

namespace A067726.P4842254876773912244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298038 (A066830 (n + 2)).toNat

end

end A067726.P4842254876773912244

namespace A067726

/-- `A298038(A066830(n+2))` -/
def P4842254876773912244.Spec : Prop :=
  ∀ n, P4842254876773912244.a n = A067726 (n + 1)

end A067726

/-!
# A067727: a(n) = 7*n^2 + 14*n.

The programs for A067727, the canonical program `A067727.P1628858591748561100` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067727 has offset 1).

The definition of A067727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*(n+1)²+14*(n+1)` (program `A067727.P1628858591748561100`, by `A067727.P1628858591748561100.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067727.P3611646545159172757

`7*(n+1)*(n+3)`
-/

namespace A067727.P3611646545159172757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 1) * (n + 3)

end

end A067727.P3611646545159172757

namespace A067727

/-- `7*(n+1)*(n+3)` -/
def P3611646545159172757.Spec : Prop :=
  ∀ n, (P3611646545159172757.a n : ℤ) = A067727 (n + 1)

theorem P3611646545159172757.correct : P3611646545159172757.Spec := by
  intro n
  simp only [A067727, Nat.add_sub_cancel, A067727.P3611646545159172757.a, A067727.P1628858591748561100.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067727

/-! ## A067727.P1628858591748561100

`7*(n+1)²+14*(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067727

/-- `7*(n+1)²+14*(n+1)` -/
def P1628858591748561100.Spec : Prop :=
  ∀ n, (P1628858591748561100.a n : ℤ) = A067727 (n + 1)

theorem P1628858591748561100.correct : P1628858591748561100.Spec := by
  intro n
  simp only [A067727, Nat.add_sub_cancel]

end A067727

/-! ## A067727.P6505493182203291997

`∑[a(n-1)+14]` with `a(0)=21`
-/

namespace A067727.P6505493182203291997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21] fun n f1 =>
  f1 (n - 1) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067727.P6505493182203291997

namespace A067727

/-- `∑[a(n-1)+14]` -/
def P6505493182203291997.Spec : Prop :=
  ∀ n, (P6505493182203291997.a n : ℤ) = A067727 (n + 1)

end A067727

/-! ## A067727.P434504761902120825

`record[7*((2-n)²-1)]`
-/

namespace A067727.P434504761902120825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((2 - (n : ℤ)) ^ 2 - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067727.P434504761902120825

namespace A067727

/-- `record[7*((2-n)²-1)]` -/
def P434504761902120825.Spec : Prop :=
  ∀ n, P434504761902120825.a n = A067727 (n + 1)

end A067727

/-! ## A067727.P1089993235143178804

`∑[A147587(n+1)]`
-/

namespace A067727.P1089993235143178804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067727.P1089993235143178804

namespace A067727

/-- `∑[A147587(n+1)]` -/
def P1089993235143178804.Spec : Prop :=
  ∀ n, P1089993235143178804.a n = A067727 (n + 1)

end A067727

/-! ## A067727.P12636666767313902223

`∑[record[A147601(n+2)]]`
-/

namespace A067727.P12636666767313902223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147601 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067727.P12636666767313902223

namespace A067727

/-- `∑[record[A147601(n+2)]]` -/
def P12636666767313902223.Spec : Prop :=
  ∀ n, P12636666767313902223.a n = A067727 (n + 1)

end A067727

/-! ## A067727.P12259557766531699568

`A008589((n+1)*(n+3))`
-/

namespace A067727.P12259557766531699568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 ((n + 1) * (n + 3))

end

end A067727.P12259557766531699568

namespace A067727

/-- `A008589((n+1)*(n+3))` -/
def P12259557766531699568.Spec : Prop :=
  ∀ n, P12259557766531699568.a n = A067727 (n + 1)

theorem P12259557766531699568.correct : P12259557766531699568.Spec := by
  intro n
  simp only [A067727, Nat.add_sub_cancel, A067727.P12259557766531699568.a, A067727.P1628858591748561100.a, A008589, A008589.P8963889148823201939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067727

/-! ## A067727.P9226624939150986320

`A168102((n+1)*(n+3))`
-/

namespace A067727.P9226624939150986320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168102 ((n + 1) * (n + 3))

end

end A067727.P9226624939150986320

namespace A067727

/-- `A168102((n+1)*(n+3))` -/
def P9226624939150986320.Spec : Prop :=
  ∀ n, P9226624939150986320.a n = A067727 (n + 1)

end A067727

/-! ## A067727.P692919341035902870

`A120070(A139275(n+1))`
-/

namespace A067727.P692919341035902870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (A139275 (n + 1)).toNat

end

end A067727.P692919341035902870

namespace A067727

/-- `A120070(A139275(n+1))` -/
def P692919341035902870.Spec : Prop :=
  ∀ n, P692919341035902870.a n = A067727 (n + 1)

end A067727

/-! ## A067727.P7515606684601867184

`A030123(A054000(n+2))`
-/

namespace A067727.P7515606684601867184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 (A054000 (n + 2)).toNat

end

end A067727.P7515606684601867184

namespace A067727

/-- `A030123(A054000(n+2))` -/
def P7515606684601867184.Spec : Prop :=
  ∀ n, P7515606684601867184.a n = A067727 (n + 1)

end A067727

/-!
# A067728: a(n) = 2*n^2 + 8*n.

The programs for A067728, the canonical program `A067728.P6158032751772494089` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067728 has offset 1).

The definition of A067728 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²+8*(n+1)` (program `A067728.P6158032751772494089`, by `A067728.P6158032751772494089.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067728.P5783943101999693464

`2*(n+1)*(n+5)`
-/

namespace A067728.P5783943101999693464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) * (n + 5)

end

end A067728.P5783943101999693464

namespace A067728

/-- `2*(n+1)*(n+5)` -/
def P5783943101999693464.Spec : Prop :=
  ∀ n, (P5783943101999693464.a n : ℤ) = A067728 (n + 1)

theorem P5783943101999693464.correct : P5783943101999693464.Spec := by
  intro n
  simp only [A067728, Nat.add_sub_cancel, A067728.P5783943101999693464.a, A067728.P6158032751772494089.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067728

/-! ## A067728.P6158032751772494089

`2*(n+1)²+8*(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067728

/-- `2*(n+1)²+8*(n+1)` -/
def P6158032751772494089.Spec : Prop :=
  ∀ n, (P6158032751772494089.a n : ℤ) = A067728 (n + 1)

theorem P6158032751772494089.correct : P6158032751772494089.Spec := by
  intro n
  simp only [A067728, Nat.add_sub_cancel]

end A067728

/-! ## A067728.P9087790114305485930

`∑[a(n-1)+4]` with `a(0)=10`
-/

namespace A067728.P9087790114305485930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067728.P9087790114305485930

namespace A067728

/-- `∑[a(n-1)+4]` -/
def P9087790114305485930.Spec : Prop :=
  ∀ n, (P9087790114305485930.a n : ℤ) = A067728 (n + 1)

end A067728

/-! ## A067728.P832524484736315310

`∑[ogf((10-6x)/(1-2x+x^2))]`
-/

namespace A067728.P832524484736315310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067728.P832524484736315310

namespace A067728

/-- `∑[ogf((10-6x)/(1-2x+x^2))]` -/
def P832524484736315310.Spec : Prop :=
  ∀ n, P832524484736315310.a n = A067728 (n + 1)

end A067728

/-! ## A067728.P5516041085842370632

`ogf((10-6x)/(1-3x+3x^2-x^3))`
-/

namespace A067728.P5516041085842370632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -6] [1, -3, 3, -1] n

end

end A067728.P5516041085842370632

namespace A067728

/-- `ogf((10-6x)/(1-3x+3x^2-x^3))` -/
def P5516041085842370632.Spec : Prop :=
  ∀ n, P5516041085842370632.a n = A067728 (n + 1)

end A067728

/-! ## A067728.P13796626427703156143

`record[2*((3-n)²-4)]`
-/

namespace A067728.P13796626427703156143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((3 - (n : ℤ)) ^ 2 - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067728.P13796626427703156143

namespace A067728

/-- `record[2*((3-n)²-4)]` -/
def P13796626427703156143.Spec : Prop :=
  ∀ n, P13796626427703156143.a n = A067728 (n + 1)

end A067728

/-! ## A067728.P17274282414865797955

`∑[A016825(n+2)]`
-/

namespace A067728.P17274282414865797955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067728.P17274282414865797955

namespace A067728

/-- `∑[A016825(n+2)]` -/
def P17274282414865797955.Spec : Prop :=
  ∀ n, P17274282414865797955.a n = A067728 (n + 1)

end A067728

/-! ## A067728.P11863545090136184741

`∑[A073760(n+2)]`
-/

namespace A067728.P11863545090136184741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073760 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067728.P11863545090136184741

namespace A067728

/-- `∑[A073760(n+2)]` -/
def P11863545090136184741.Spec : Prop :=
  ∀ n, P11863545090136184741.a n = A067728 (n + 1)

end A067728

/-! ## A067728.P10505557693280785650

`∑[A130824(n+3)]`
-/

namespace A067728.P10505557693280785650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067728.P10505557693280785650

namespace A067728

/-- `∑[A130824(n+3)]` -/
def P10505557693280785650.Spec : Prop :=
  ∀ n, P10505557693280785650.a n = A067728 (n + 1)

end A067728

/-! ## A067728.P3039578103347506961

`∑[A133653(n+3)]`
-/

namespace A067728.P3039578103347506961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133653 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067728.P3039578103347506961

namespace A067728

/-- `∑[A133653(n+3)]` -/
def P3039578103347506961.Spec : Prop :=
  ∀ n, P3039578103347506961.a n = A067728 (n + 1)

end A067728

/-! ## A067728.P8267896108047310736

`∑[A190035(n+3)]`
-/

namespace A067728.P8267896108047310736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190035 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067728.P8267896108047310736

namespace A067728

/-- `∑[A190035(n+3)]` -/
def P8267896108047310736.Spec : Prop :=
  ∀ n, P8267896108047310736.a n = A067728 (n + 1)

end A067728

/-! ## A067728.P3804013884646954086

`∑[abs(A161718(n+3))]`
-/

namespace A067728.P3804013884646954086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A161718 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067728.P3804013884646954086

namespace A067728

/-- `∑[abs(A161718(n+3))]` -/
def P3804013884646954086.Spec : Prop :=
  ∀ n, P3804013884646954086.a n = A067728 (n + 1)

end A067728

/-! ## A067728.P13969070820549839228

`∑[A113127(n+3)]`
-/

namespace A067728.P13969070820549839228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067728.P13969070820549839228

namespace A067728

/-- `∑[A113127(n+3)]` -/
def P13969070820549839228.Spec : Prop :=
  ∀ n, P13969070820549839228.a n = A067728 (n + 1)

end A067728

/-! ## A067728.P14033163680726146546

`∑[A111284(n+4)]`
-/

namespace A067728.P14033163680726146546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067728.P14033163680726146546

namespace A067728

/-- `∑[A111284(n+4)]` -/
def P14033163680726146546.Spec : Prop :=
  ∀ n, P14033163680726146546.a n = A067728 (n + 1)

end A067728

/-! ## A067728.P1668171643692496720

`∑[abs(A113142(n+3))]`
-/

namespace A067728.P1668171643692496720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113142 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067728.P1668171643692496720

namespace A067728

/-- `∑[abs(A113142(n+3))]` -/
def P1668171643692496720.Spec : Prop :=
  ∀ n, P1668171643692496720.a n = A067728 (n + 1)

end A067728

/-! ## A067728.P8170957794604711262

`∑[A139544(n+5)]`
-/

namespace A067728.P8170957794604711262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139544 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067728.P8170957794604711262

namespace A067728

/-- `∑[A139544(n+5)]` -/
def P8170957794604711262.Spec : Prop :=
  ∀ n, P8170957794604711262.a n = A067728 (n + 1)

end A067728

/-! ## A067728.P5005529945783878621

`A271911(2*n+3)`
-/

namespace A067728.P5005529945783878621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271911 (2 * n + 3)

end

end A067728.P5005529945783878621

namespace A067728

/-- `A271911(2*n+3)` -/
def P5005529945783878621.Spec : Prop :=
  ∀ n, P5005529945783878621.a n = A067728 (n + 1)

end A067728

/-! ## A067728.P2474525503979153081

`A307028(2*n+3)`
-/

namespace A067728.P2474525503979153081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307028 (2 * n + 3)

end

end A067728.P2474525503979153081

namespace A067728

/-- `A307028(2*n+3)` -/
def P2474525503979153081.Spec : Prop :=
  ∀ n, P2474525503979153081.a n = A067728 (n + 1)

end A067728

/-! ## A067728.P8125092029016609436

`∩[A271911(n+1), A307028(n+1)]`
-/

namespace A067728.P8125092029016609436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067728.P8125092029016609436

namespace A067728

/-- `∩[A271911(n+1), A307028(n+1)]` -/
def P8125092029016609436.Spec : Prop :=
  ∀ n, (P8125092029016609436.a n : ℤ) = A067728 (n + 1)

end A067728

/-! ## A067728.P16469191125046574491

`∩[A307028(n+1), A380535(n+1)]`
-/

namespace A067728.P16469191125046574491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067728.P16469191125046574491

namespace A067728

/-- `∩[A307028(n+1), A380535(n+1)]` -/
def P16469191125046574491.Spec : Prop :=
  ∀ n, (P16469191125046574491.a n : ℤ) = A067728 (n + 1)

end A067728

/-!
# A067729: Numbers k such that floor(log(3)^k) is prime.

The programs for A067729, there is no canonical definition to state claims against.
-/

/-! ## A067729.P5085089729857037970

`eq[1, A001222(floor(log(3)^n))]`
-/

namespace A067729.P5085089729857037970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌊Real.log (3 : ℝ) ^ n⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067729.P5085089729857037970

/-! ## A067729.P9553874274402339365

`eq[1, A010051(floor(log(3)^n))]`
-/

namespace A067729.P9553874274402339365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ⌊Real.log (3 : ℝ) ^ n⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067729.P9553874274402339365

/-! ## A067729.P8024822103372986630

`eq[2, A000005(floor(log(3)^n))]`
-/

namespace A067729.P8024822103372986630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌊Real.log (3 : ℝ) ^ n⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067729.P8024822103372986630

/-! ## A067729.P5346156877857488651

`eq[1, A001065(floor(log(3)^n))]`
-/

namespace A067729.P5346156877857488651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 ⌊Real.log (3 : ℝ) ^ n⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067729.P5346156877857488651

/-! ## A067729.P10203611906869819473

`eq[1, A003415(floor(log(3)^n))]`
-/

namespace A067729.P10203611906869819473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ⌊Real.log (3 : ℝ) ^ n⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067729.P10203611906869819473

/-!
# A067731: Maximum number of distinct parts in a self-conjugate partition of n, or 0 if n=2.

The programs for A067731, the canonical program `A067731.P9905737685120558648` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067731 has offset 0).

The definition of A067731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067731.P5394184985608233132

`row(n)-(col(n)+2)%2`
-/

namespace A067731.P5394184985608233132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (((SequenceMachineLib.triCol n + 2) % 2 : ℕ) : ℤ)

end

end A067731.P5394184985608233132

namespace A067731

/-- `row(n)-(col(n)+2)%2` -/
def P5394184985608233132.Spec : Prop :=
  ∀ n, P5394184985608233132.a n = A067731 n

end A067731

/-! ## A067731.P8083382235498992139

`∑[char[∑[n+1]]]-char[comp[n²]+n]`
-/

namespace A067731.P8083382235498992139
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ)

end

end A067731.P8083382235498992139

namespace A067731

/-- `∑[char[∑[n+1]]]-char[comp[n²]+n]` -/
def P8083382235498992139.Spec : Prop :=
  ∀ n, P8083382235498992139.a n = A067731 n

end A067731

/-! ## A067731.P17526420348819532204

`abs(char[comp[n²]+n]-A003056(n))`
-/

namespace A067731.P17526420348819532204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A003056 n|

end

end A067731.P17526420348819532204

namespace A067731

/-- `abs(char[comp[n²]+n]-A003056(n))` -/
def P17526420348819532204.Spec : Prop :=
  ∀ n, P17526420348819532204.a n = A067731 n

end A067731

/-! ## A067731.P14544264840227701429

`A116939(∑[char[∑[n]]]²-comp[2*n²])`
-/

namespace A067731.P14544264840227701429
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A067731.P14544264840227701429

namespace A067731

/-- `A116939(∑[char[∑[n]]]²-comp[2*n²])` -/
def P14544264840227701429.Spec : Prop :=
  ∀ n, P14544264840227701429.a n = A067731 n

end A067731

/-! ## A067731.P59126645819660928

`(∑[char[∑[n]]]-A059268(n)%3)%(n+1)`
-/

namespace A067731.P59126645819660928
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.tmod (A059268 n) 3) (n + 1 : ℤ)

end

end A067731.P59126645819660928

namespace A067731

/-- `(∑[char[∑[n]]]-A059268(n)%3)%(n+1)` -/
def P59126645819660928.Spec : Prop :=
  ∀ n, P59126645819660928.a n = A067731 n

end A067731

/-! ## A067731.P862093658176436129

`round(sqrt(2*(n+1))-gcd(2, A002260(n+1)))`
-/

namespace A067731.P862093658176436129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ) - (Int.gcd 2 (A002260 (n + 1)) : ℝ))

end

end A067731.P862093658176436129

namespace A067731

/-- `round(sqrt(2*(n+1))-gcd(2, A002260(n+1)))` -/
def P862093658176436129.Spec : Prop :=
  ∀ n, P862093658176436129.a n = A067731 n

end A067731

/-! ## A067731.P14833178495972874933

`A023443(comp[C(n, 2)]-(n+1)-(comp[2*n²]+1)%2)`
-/

namespace A067731.P14833178495972874933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ) - (((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) % 2 : ℕ) : ℤ)).toNat

end

end A067731.P14833178495972874933

namespace A067731

/-- `A023443(comp[C(n, 2)]-(n+1)-(comp[2*n²]+1)%2)` -/
def P14833178495972874933.Spec : Prop :=
  ∀ n, P14833178495972874933.a n = A067731 n

end A067731

/-! ## A067731.P9905737685120558648

`abs(A003056(n)-A060510(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067731

/-- `abs(A003056(n)-A060510(n))` -/
def P9905737685120558648.Spec : Prop :=
  ∀ n, P9905737685120558648.a n = A067731 n

theorem P9905737685120558648.correct : P9905737685120558648.Spec := by
  intro n
  simp only [A067731]

end A067731

/-! ## A067731.P2231555730550521466

`abs(1-(A002024(n+1)-A060510(n)))`
-/

namespace A067731.P2231555730550521466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A002024 (n + 1) - A060510 n)|

end

end A067731.P2231555730550521466

namespace A067731

/-- `abs(1-(A002024(n+1)-A060510(n)))` -/
def P2231555730550521466.Spec : Prop :=
  ∀ n, P2231555730550521466.a n = A067731 n

end A067731

/-! ## A067731.P5199994892439805674

`A025581(n-A052928(A002262(n)))`
-/

namespace A067731.P5199994892439805674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 ((n : ℤ) - A052928 (A002262 n).toNat).toNat

end

end A067731.P5199994892439805674

namespace A067731

/-- `A025581(n-A052928(A002262(n)))` -/
def P5199994892439805674.Spec : Prop :=
  ∀ n, P5199994892439805674.a n = A067731 n

end A067731

/-! ## A067731.P14488339119199045725

`(C(comp[∑[n]]-n, 2)+1+n)%A008619(C(∑[char[∑[n]]], 2)+1+n)`
-/

namespace A067731.P14488339119199045725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1 + n : ℤ) (A008619 (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 + 1 + n))

end

end A067731.P14488339119199045725

namespace A067731

/-- `(C(comp[∑[n]]-n, 2)+1+n)%A008619(C(∑[char[∑[n]]], 2)+1+n)` -/
def P14488339119199045725.Spec : Prop :=
  ∀ n, P14488339119199045725.a n = A067731 n

end A067731

/-!
# A067732: Numbers k such that phi(prime(k) + 1) == 0 (mod k).

The programs for A067732, there is no canonical definition to state claims against.
-/

/-! ## A067732.P6688842554741623774

`A000720(p?[A073465(n+1)-1])`
-/

namespace A067732.P6688842554741623774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073465 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A067732.P6688842554741623774

/-! ## A067732.P412906846476358572

`A061395(p?[A073465(n+1)-1])`
-/

namespace A067732.P412906846476358572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073465 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A067732.P412906846476358572

/-! ## A067732.P150332363864433900

`lt[A000010(A000040(n+1)+1)%(n+1), 1]+1`
-/

namespace A067732.P150332363864433900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A000040 (n + 1) + 1).toNat) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A067732.P150332363864433900

/-! ## A067732.P3686454930005685615

`eq[A000007(n), A073464(A028815(n))]`
-/

namespace A067732.P3686454930005685615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073464 (A028815 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067732.P3686454930005685615

/-! ## A067732.P10306591733899128690

`A131883(A288338(n)*A288349(n+1))`
-/

namespace A067732.P10306591733899128690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (A288338 n * A288349 (n + 1)).toNat

end

end A067732.P10306591733899128690

/-!
# A067734: Number of ways writing n as a product of decimal digits of some other number which has no digits equal to 1.

The programs for A067734, there is no canonical definition to state claims against.
-/

/-! ## A067734.P13695473707402659492

`A338565(n+1)%A000123(A068190(n+1))`
-/

namespace A067734.P13695473707402659492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338565 (n + 1)) (A000123 (A068190 (n + 1)).toNat)

end

end A067734.P13695473707402659492

/-! ## A067734.P4717616889153843567

`A338565(n+1)-A000030(A244173(n))`
-/

namespace A067734.P4717616889153843567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338565 (n + 1) - A000030 (A244173 (n + 10)).toNat

end

end A067734.P4717616889153843567

/-! ## A067734.P13630014559119584783

`A000030(xor(A244173(n), A338565(n+1)))`
-/

namespace A067734.P13630014559119584783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (Int.xor (A244173 (n + 10)) (A338565 (n + 1))).toNat

end

end A067734.P13630014559119584783

/-! ## A067734.P16566562527747045051

`A004086(xor(A244173(n), A338565(n+1)))`
-/

namespace A067734.P16566562527747045051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.xor (A244173 (n + 10)) (A338565 (n + 1))).toNat

end

end A067734.P16566562527747045051

/-! ## A067734.P10792867313588894995

`A244173(A244173(n)²)*A338565(n+1)`
-/

namespace A067734.P10792867313588894995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244173 ((A244173 (n + 10) ^ 2).toNat + 10) * A338565 (n + 1)

end

end A067734.P10792867313588894995

/-!
# A067735: Number of partitions of 2^n into distinct parts.

The programs for A067735, there is no canonical definition to state claims against.
-/

/-! ## A067735.P12643540336628469663

`A000009(2^n)`
-/

namespace A067735.P12643540336628469663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 ^ n)

end

end A067735.P12643540336628469663

/-! ## A067735.P1918007975778664284

`A035294(ceil(2^(n-1)))`
-/

namespace A067735.P1918007975778664284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035294 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A067735.P1918007975778664284

/-! ## A067735.P1407079973947941704

`abs(A081360(2^n))`
-/

namespace A067735.P1407079973947941704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 (2 ^ n)|

end

end A067735.P1407079973947941704

/-! ## A067735.P12548059769849734492

`∑[A078374(2^n)]`
-/

namespace A067735.P12548059769849734492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067735.P12548059769849734492

/-!
# A067737: Integers n such that [number of integers k such that k is not of the form m + reverse(m) for any m and n occurs in the "Reverse and Add!" trajectory of k] is greater than [number of integers k such that n = k + reverse(k)].

The programs for A067737, there is no canonical definition to state claims against.
-/

/-! ## A067737.P13572557554776605919

`A067030(lt[A067032(n), A067284(n)])`
-/

namespace A067737.P13572557554776605919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A067737.P13572557554776605919

/-! ## A067737.P3740204912337599364

`lt[A093614(A030057(n+1)), A244569(n)]`
-/

namespace A067737.P3740204912337599364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093614 (A030057 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067737.P3740204912337599364

/-! ## A067737.P11122165380624313977

`A181421(A270061(n))*A243824(2*(n+2))`
-/

namespace A067737.P11122165380624313977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181421 (A270061 n).toNat * A243824 (2 * (n + 2))

end

end A067737.P11122165380624313977

/-! ## A067737.P8322844136677819333

`lt[A247640(A001055(n+1)), A244569(n)]`
-/

namespace A067737.P8322844136677819333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247640 (A001055 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067737.P8322844136677819333

/-!
# A067739: Integers x such that for some integer y we have uphi(x) = uphi(y) = x-y, where uphi(n) = A047994(n) is the unitary totient function: If n = Product p_i^e_i, uphi(n) = Product (p_i^e_i - 1).

The programs for A067739, there is no canonical definition to state claims against.
-/

/-! ## A067739.P12325408531313319475

`A245092(lcm(A225627(2*(n+1)), A272809(n)))`
-/

namespace A067739.P12325408531313319475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (Int.lcm (A225627 (2 * (n + 1))) (A272809 n))

end

end A067739.P12325408531313319475

/-!
# A067741: Integers y such that for some integer x we have uphi(x) = uphi(y) = x-y, where uphi(n) = A047994(n) is the unitary totient function: If n = Product p_i^e_i, uphi(n) = Product (p_i^e_i - 1).

The programs for A067741, there is no canonical definition to state claims against.
-/

/-! ## A067741.P18007545536282618282

`A067739(n+1)-A047994(A067739(n+1))`
-/

namespace A067741.P18007545536282618282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067739 (n + 1) - A047994 (A067739 (n + 1)).toNat

end

end A067741.P18007545536282618282

/-! ## A067741.P13089776572860466061

`A323410(A067739(n+1)*A347174(n+1))`
-/

namespace A067741.P13089776572860466061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323410 (A067739 (n + 1) * A347174 (n + 1)).toNat

end

end A067741.P13089776572860466061

/-! ## A067741.P15980694315274868954

`A323410(A067739(n+1)^A347174(n+1))`
-/

namespace A067741.P15980694315274868954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323410 (SequenceMachineLib.roundAway ((A067739 (n + 1) : ℚ) ^ (A347174 (n + 1) : ℤ))).toNat

end

end A067741.P15980694315274868954

/-! ## A067741.P9755895792392289899

`A323410(lcm(A067739(n+1), A194319(n+2)))`
-/

namespace A067741.P9755895792392289899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323410 (Int.lcm (A067739 (n + 1)) (A194319 (n + 2)))

end

end A067741.P9755895792392289899

/-!
# A067742: Number of middle divisors of n, i.e., divisors in the half-open interval [sqrt(n/2), sqrt(n*2)).

The programs for A067742, there is no canonical definition to state claims against.
-/

/-! ## A067742.P9274120048836207678

`A348406(n+1)-1`
-/

namespace A067742.P9274120048836207678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (n + 1) - 1

end

end A067742.P9274120048836207678

/-! ## A067742.P15058513494850402048

`A000005(n+1)-A067743(n+1)`
-/

namespace A067742.P15058513494850402048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A067743 (n + 1)

end

end A067742.P15058513494850402048

/-! ## A067742.P8985685589931254036

`A247802(A348406(n+1))`
-/

namespace A067742.P8985685589931254036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247802 (A348406 (n + 1)).toNat

end

end A067742.P8985685589931254036

/-! ## A067742.P9144212966649866668

`A048105(2^A348406(n+1))`
-/

namespace A067742.P9144212966649866668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A348406 (n + 1) : ℤ))).toNat

end

end A067742.P9144212966649866668

/-! ## A067742.P8441928868386766170

`A025581(2*A348406(n+1)²)`
-/

namespace A067742.P8441928868386766170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A348406 (n + 1) ^ 2).toNat

end

end A067742.P8441928868386766170

/-! ## A067742.P5982517353915835690

`A082647(n+1)-A131576(n+1)`
-/

namespace A067742.P5982517353915835690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (n + 1) - A131576 (n + 1)

end

end A067742.P5982517353915835690

/-! ## A067742.P13168834923867177169

`A001227(n+1)-A281009(n+1)`
-/

namespace A067742.P13168834923867177169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A281009 (n + 1)

end

end A067742.P13168834923867177169

/-! ## A067742.P17090620803335400367

`A127229(n+5)%A348406(n+1)`
-/

namespace A067742.P17090620803335400367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A348406 (n + 1))

end

end A067742.P17090620803335400367

/-! ## A067742.P4203267003929589373

`A334954(n+1)-(A067743(n+1)+1)`
-/

namespace A067742.P4203267003929589373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (A067743 (n + 1) + 1)

end

end A067742.P4203267003929589373

/-! ## A067742.P3902370072945983100

`2*A082647(n+1)-A001227(n+1)`
-/

namespace A067742.P3902370072945983100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082647 (n + 1) - A001227 (n + 1)

end

end A067742.P3902370072945983100

/-! ## A067742.P7376585831196099184

`A001227(n+1)-2*A131576(n+1)`
-/

namespace A067742.P7376585831196099184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - 2 * A131576 (n + 1)

end

end A067742.P7376585831196099184

/-! ## A067742.P16519697039270802670

`A001478(n+1)+A348406(n+1)+n`
-/

namespace A067742.P16519697039270802670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A348406 (n + 1) + (n : ℤ))

end

end A067742.P16519697039270802670

/-! ## A067742.P16093473979230259795

`A001227(n+1)-2*A341675(2*(n+1))`
-/

namespace A067742.P16093473979230259795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - 2 * A341675 (2 * (n + 1))

end

end A067742.P16093473979230259795

/-! ## A067742.P9851126852014288407

`A333805(2*(n+1))-A341594(2*(n+1))`
-/

namespace A067742.P9851126852014288407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (2 * (n + 1)) - A341594 (2 * (n + 1))

end

end A067742.P9851126852014288407

/-! ## A067742.P595479459873775755

`A333805(2*(n+1))-A341675(2*(n+1))`
-/

namespace A067742.P595479459873775755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (2 * (n + 1)) - A341675 (2 * (n + 1))

end

end A067742.P595479459873775755

/-! ## A067742.P13733807734626998956

`A005843(A082647(n+1))-A001227(n+1)`
-/

namespace A067742.P13733807734626998956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A082647 (n + 1)).toNat - A001227 (n + 1)

end

end A067742.P13733807734626998956

/-! ## A067742.P2178008688874137996

`A001227(n+1)-A005843(A131576(n+1))`
-/

namespace A067742.P2178008688874137996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A005843 (A131576 (n + 1)).toNat

end

end A067742.P2178008688874137996

/-! ## A067742.P8813333789410969246

`A025581(2*A348406(n+1)*A348406(n+1))`
-/

namespace A067742.P8813333789410969246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A348406 (n + 1) * A348406 (n + 1)).toNat

end

end A067742.P8813333789410969246

/-! ## A067742.P14050050191541975768

`Δ[A060831(n)]-A281009(n+1)`
-/

namespace A067742.P14050050191541975768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A281009 (n + 1)

end

end A067742.P14050050191541975768

/-! ## A067742.P1002413025046106135

`A060831(n+1)-(A281009(n+1)+A060831(n))`
-/

namespace A067742.P1002413025046106135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (n + 1) - (A281009 (n + 1) + A060831 n)

end

end A067742.P1002413025046106135

/-!
# A067743: Number of divisors of n not in the half-open interval [sqrt(n/2), sqrt(n*2)).

The programs for A067743, there is no canonical definition to state claims against.
-/

/-! ## A067743.P17793999433732417622

`A000005(n+1)-A067742(n+1)`
-/

namespace A067743.P17793999433732417622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A067742 (n + 1)

end

end A067743.P17793999433732417622

/-! ## A067743.P3537615731678065422

`A281009(n+1)+A183063(n+1)`
-/

namespace A067743.P3537615731678065422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281009 (n + 1) + A183063 (n + 1)

end

end A067743.P3537615731678065422

/-! ## A067743.P11628585204446944499

`A334954(n+1)-A348406(n+1)`
-/

namespace A067743.P11628585204446944499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A348406 (n + 1)

end

end A067743.P11628585204446944499

/-! ## A067743.P2633271591961959813

`A000005(n+1)+1-A348406(n+1)`
-/

namespace A067743.P2633271591961959813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (1 - A348406 (n + 1))

end

end A067743.P2633271591961959813

/-! ## A067743.P12610312572667128771

`A099777(n+1)-2*A082647(n+1)`
-/

namespace A067743.P12610312572667128771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) - 2 * A082647 (n + 1)

end

end A067743.P12610312572667128771

/-! ## A067743.P9001373178567330822

`A000005(2*(n+1))-2*A333805(2*(n+1))`
-/

namespace A067743.P9001373178567330822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - 2 * A333805 (2 * (n + 1))

end

end A067743.P9001373178567330822

/-! ## A067743.P10089070038148177557

`A000005(n+1)+A131576(n+1)-A082647(n+1)`
-/

namespace A067743.P10089070038148177557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A131576 (n + 1) - A082647 (n + 1))

end

end A067743.P10089070038148177557

/-! ## A067743.P2671820939885672849

`A001227(n+1)*A001511(n+1)-A067742(n+1)`
-/

namespace A067743.P2671820939885672849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A067742 (n + 1)

end

end A067743.P2671820939885672849

/-! ## A067743.P1808334176516485876

`A183063(2*(n+1))-A067742(n+1)`
-/

namespace A067743.P1808334176516485876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (n + 1)) - A067742 (n + 1)

end

end A067743.P1808334176516485876

/-! ## A067743.P6390994599471396045

`A038548(2*(n+1))-A333809(2*(n+1))`
-/

namespace A067743.P6390994599471396045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (2 * (n + 1)) - A333809 (2 * (n + 1))

end

end A067743.P6390994599471396045

/-! ## A067743.P13356147883396922807

`A056924(2*(n+1))-A333781(2*(n+1))`
-/

namespace A067743.P13356147883396922807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (2 * (n + 1)) - A333781 (2 * (n + 1))

end

end A067743.P13356147883396922807

/-! ## A067743.P1389865418199031125

`A000005(2*(n+1))-2*A069288(2*(n+1))`
-/

namespace A067743.P1389865418199031125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - 2 * A069288 (2 * (n + 1))

end

end A067743.P1389865418199031125

/-! ## A067743.P16404186703765079342

`A099777(n+1)-2*A069288(A103517(n))`
-/

namespace A067743.P16404186703765079342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) - 2 * A069288 (A103517 n).toNat

end

end A067743.P16404186703765079342

/-! ## A067743.P158684675534702191

`A175239(n+1)-A082647(n+1)`
-/

namespace A067743.P158684675534702191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175239 (n + 1) - A082647 (n + 1)

end

end A067743.P158684675534702191

/-! ## A067743.P11384809210045623561

`2*A175239(n+1)-A099777(n+1)`
-/

namespace A067743.P11384809210045623561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175239 (n + 1) - A099777 (n + 1)

end

end A067743.P11384809210045623561

/-!
# A067744: Number of terms yielding particularly small errors in a numerical integration of exp((cos(x)-1)/(cos(x)+1)) having non-monotonic sub-geometric convergence.

The programs for A067744, the canonical program `A067744.P2758754992288386760` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067744 has offset 2).

The definition of A067744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067744.P2758754992288386760

`round((2*π/3^(3/2)*(6*(n+2)-5)/6)^(3/2))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067744

/-- `round((2*π/3^(3/2)*(6*(n+2)-5)/6)^(3/2))` -/
def P2758754992288386760.Spec : Prop :=
  ∀ n, P2758754992288386760.a n = A067744 (n + 2)

theorem P2758754992288386760.correct : P2758754992288386760.Spec := by
  intro n
  simp only [A067744, Nat.add_sub_cancel]

end A067744

/-! ## A067744.P7199820732135601587

`A003056(A001400(5*n+2)+1)`
-/

namespace A067744.P7199820732135601587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001400 (5 * n + 2) + 1).toNat

end

end A067744.P7199820732135601587

namespace A067744

/-- `A003056(A001400(5*n+2)+1)` -/
def P7199820732135601587.Spec : Prop :=
  ∀ n, P7199820732135601587.a n = A067744 (n + 2)

end A067744

/-! ## A067744.P241990869007662752

`A003056(A001400(A008706(n)+2))`
-/

namespace A067744.P241990869007662752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001400 (A008706 n + 2).toNat).toNat

end

end A067744.P241990869007662752

namespace A067744

/-- `A003056(A001400(A008706(n)+2))` -/
def P241990869007662752.Spec : Prop :=
  ∀ n, P241990869007662752.a n = A067744 (n + 2)

end A067744

/-! ## A067744.P10441613039929039694

`A000194(A239059(n+1)+A100182(n+1))`
-/

namespace A067744.P10441613039929039694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A239059 (n + 1) + A100182 (n + 1)).toNat

end

end A067744.P10441613039929039694

namespace A067744

/-- `A000194(A239059(n+1)+A100182(n+1))` -/
def P10441613039929039694.Spec : Prop :=
  ∀ n, P10441613039929039694.a n = A067744 (n + 2)

end A067744

/-! ## A067744.P15924522462817523385

`A000196(A048395(n+1)-A199771(n+1))`
-/

namespace A067744.P15924522462817523385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A048395 (n + 1) - A199771 (n + 1)).toNat

end

end A067744.P15924522462817523385

namespace A067744

/-- `A000196(A048395(n+1)-A199771(n+1))` -/
def P15924522462817523385.Spec : Prop :=
  ∀ n, P15924522462817523385.a n = A067744 (n + 2)

end A067744

/-!
# A067745: Numerator of ((3*n - 2)/(n^(2*n - 1)*(2*n - 1)*4^(n - 1))).

The programs for A067745, the canonical program `A067745.P11467522278281817014` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067745 has offset 1).

The definition of A067745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067745.P11467522278281817014

`A000265(3*n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067745

/-- `A000265(3*n+1)` -/
def P11467522278281817014.Spec : Prop :=
  ∀ n, P11467522278281817014.a n = A067745 (n + 1)

theorem P11467522278281817014.correct : P11467522278281817014.Spec := by
  intro n
  simp only [A067745, Nat.add_sub_cancel]

end A067745

/-! ## A067745.P16288951172069493431

`A075677(2*n+1)`
-/

namespace A067745.P16288951172069493431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (2 * n + 1)

end

end A067745.P16288951172069493431

namespace A067745

/-- `A075677(2*n+1)` -/
def P16288951172069493431.Spec : Prop :=
  ∀ n, P16288951172069493431.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P10527147772171205868

`A093411(3*n+1)`
-/

namespace A067745.P10527147772171205868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (3 * n + 1)

end

end A067745.P10527147772171205868

namespace A067745

/-- `A093411(3*n+1)` -/
def P10527147772171205868.Spec : Prop :=
  ∀ n, P10527147772171205868.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P13098635435128348578

`A328478(3*n+1)`
-/

namespace A067745.P13098635435128348578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328478 (3 * n + 1)

end

end A067745.P13098635435128348578

namespace A067745

/-- `A328478(3*n+1)` -/
def P13098635435128348578.Spec : Prop :=
  ∀ n, P13098635435128348578.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P2003717909859988117

`A302044(5*n+n+2)`
-/

namespace A067745.P2003717909859988117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (5 * n + (n + 2))

end

end A067745.P2003717909859988117

namespace A067745

/-- `A302044(5*n+n+2)` -/
def P2003717909859988117.Spec : Prop :=
  ∀ n, P2003717909859988117.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P7667712843729984881

`A171435(3*(2*n+1)-1)`
-/

namespace A067745.P7667712843729984881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (3 * (2 * n + 1) - 1)

end

end A067745.P7667712843729984881

namespace A067745

/-- `A171435(3*(2*n+1)-1)` -/
def P7667712843729984881.Spec : Prop :=
  ∀ n, P7667712843729984881.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P12467042336554611545

`(3*n+1)/2^A371093(n)`
-/

namespace A067745.P12467042336554611545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℚ) / (2 : ℚ) ^ (A371093 n : ℤ)

end

end A067745.P12467042336554611545

namespace A067745

/-- `(3*n+1)/2^A371093(n)` -/
def P12467042336554611545.Spec : Prop :=
  ∀ n, P12467042336554611545.a n = (A067745 (n + 1) : ℚ)

end A067745

/-! ## A067745.P4197398556650008261

`A176672(A385109(n))`
-/

namespace A067745.P4197398556650008261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176672 (A385109 n).toNat

end

end A067745.P4197398556650008261

namespace A067745

/-- `A176672(A385109(n))` -/
def P4197398556650008261.Spec : Prop :=
  ∀ n, P4197398556650008261.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P8644651621652540757

`A007310(A126760(2*n+1+n))`
-/

namespace A067745.P8644651621652540757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A126760 (2 * n + 1 + n)).toNat

end

end A067745.P8644651621652540757

namespace A067745

/-- `A007310(A126760(2*n+1+n))` -/
def P8644651621652540757.Spec : Prop :=
  ∀ n, P8644651621652540757.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P5621782953971572494

`A302034(6*n+2)`
-/

namespace A067745.P5621782953971572494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (6 * n + 2)

end

end A067745.P5621782953971572494

namespace A067745

/-- `A302034(6*n+2)` -/
def P5621782953971572494.Spec : Prop :=
  ∀ n, P5621782953971572494.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P4429453876431929998

`2*A173732(2*n)+1`
-/

namespace A067745.P4429453876431929998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173732 (2 * n) + 1

end

end A067745.P4429453876431929998

namespace A067745

/-- `2*A173732(2*n)+1` -/
def P4429453876431929998.Spec : Prop :=
  ∀ n, P4429453876431929998.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P14260963728232855205

`A146535(A173732(2*n)+1)`
-/

namespace A067745.P14260963728232855205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (A173732 (2 * n) + 1).toNat

end

end A067745.P14260963728232855205

namespace A067745

/-- `A146535(A173732(2*n)+1)` -/
def P14260963728232855205.Spec : Prop :=
  ∀ n, P14260963728232855205.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P17822066355726778328

`A065330(3*n+1)`
-/

namespace A067745.P17822066355726778328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (3 * n + 1)

end

end A067745.P17822066355726778328

namespace A067745

/-- `A065330(3*n+1)` -/
def P17822066355726778328.Spec : Prop :=
  ∀ n, P17822066355726778328.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P3995733684979066192

`A153733(3*n)+1`
-/

namespace A067745.P3995733684979066192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (3 * n) + 1

end

end A067745.P3995733684979066192

namespace A067745

/-- `A153733(3*n)+1` -/
def P3995733684979066192.Spec : Prop :=
  ∀ n, P3995733684979066192.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P8990741507925113150

`A214681(3*n+1)`
-/

namespace A067745.P8990741507925113150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214681 (3 * n + 1)

end

end A067745.P8990741507925113150

namespace A067745

/-- `A214681(3*n+1)` -/
def P8990741507925113150.Spec : Prop :=
  ∀ n, P8990741507925113150.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P2227093544685618759

`A003961(A064989(3*n+1))`
-/

namespace A067745.P2227093544685618759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064989 (3 * n + 1)).toNat

end

end A067745.P2227093544685618759

namespace A067745

/-- `A003961(A064989(3*n+1))` -/
def P2227093544685618759.Spec : Prop :=
  ∀ n, P2227093544685618759.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P9576857304664459772

`A030101(A030101(2*n+1+n))`
-/

namespace A067745.P9576857304664459772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 (2 * n + 1 + n)).toNat

end

end A067745.P9576857304664459772

namespace A067745

/-- `A030101(A030101(2*n+1+n))` -/
def P9576857304664459772.Spec : Prop :=
  ∀ n, P9576857304664459772.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P14328095845112765732

`A161151(6*n+1)`
-/

namespace A067745.P14328095845112765732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161151 (6 * n + 1)

end

end A067745.P14328095845112765732

namespace A067745

/-- `A161151(6*n+1)` -/
def P14328095845112765732.Spec : Prop :=
  ∀ n, P14328095845112765732.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P4072639008156833219

`A351565(A271114(n))`
-/

namespace A067745.P4072639008156833219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (A271114 n).toNat

end

end A067745.P4072639008156833219

namespace A067745

/-- `A351565(A271114(n))` -/
def P4072639008156833219.Spec : Prop :=
  ∀ n, P4072639008156833219.a n = A067745 (n + 1)

end A067745

/-! ## A067745.P16671446390396165405

`A353412(2*A016777(n))`
-/

namespace A067745.P16671446390396165405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (2 * A016777 n).toNat

end

end A067745.P16671446390396165405

namespace A067745

/-- `A353412(2*A016777(n))` -/
def P16671446390396165405.Spec : Prop :=
  ∀ n, P16671446390396165405.a n = A067745 (n + 1)

end A067745

/-!
# A067747: Primes interleaved between composite numbers: n-th prime followed by the n-th composite number.

The programs for A067747, the canonical program `A067747.P14118183397394803050` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067747 has offset 1).

The definition of A067747 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A067747.P14118183397394803050

`A000040(ceil((n+1)/2))*A000035(n+1)+A002808(ceil((n+1)/2))*A059841(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067747

/-- `A000040(ceil((n+1)/2))*A000035(n+1)+A002808(ceil((n+1)/2))*A059841(n+1)` -/
def P14118183397394803050.Spec : Prop :=
  ∀ n, P14118183397394803050.a n = A067747 (n + 1)

theorem P14118183397394803050.correct : P14118183397394803050.Spec := by
  intro n
  simp only [A067747, Nat.add_sub_cancel]

end A067747

/-! ## A067747.P17751636094403145468

`A066251(n+1)+1`
-/

namespace A067747.P17751636094403145468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066251 (n + 1) + 1

end

end A067747.P17751636094403145468

namespace A067747

/-- `A066251(n+1)+1` -/
def P17751636094403145468.Spec : Prop :=
  ∀ n, P17751636094403145468.a n = A067747 (n + 1)

end A067747

/-! ## A067747.P16142739888997348967

`A129131(A014681(n+1))`
-/

namespace A067747.P16142739888997348967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129131 (A014681 (n + 1)).toNat

end

end A067747.P16142739888997348967

namespace A067747

/-- `A129131(A014681(n+1))` -/
def P16142739888997348967.Spec : Prop :=
  ∀ n, P16142739888997348967.a n = A067747 (n + 1)

end A067747

/-! ## A067747.P8698158599549277232

`A129131(A103889(n+1))`
-/

namespace A067747.P8698158599549277232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129131 (A103889 (n + 1)).toNat

end

end A067747.P8698158599549277232

namespace A067747

/-- `A129131(A103889(n+1))` -/
def P8698158599549277232.Spec : Prop :=
  ∀ n, P8698158599549277232.a n = A067747 (n + 1)

end A067747

/-! ## A067747.P5770915403613506342

`A018252(ceil(n/2)+1)*A000035(n)+A000040(ceil(n/2)+1)*A059841(n)`
-/

namespace A067747.P5770915403613506342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (⌈(n : ℚ) / 2⌉ + 1).toNat * A000035 n + A000040 (⌈(n : ℚ) / 2⌉ + 1).toNat * A059841 n

end

end A067747.P5770915403613506342

namespace A067747

/-- `A018252(ceil(n/2)+1)*A000035(n)+A000040(ceil(n/2)+1)*A059841(n)` -/
def P5770915403613506342.Spec : Prop :=
  ∀ n, P5770915403613506342.a n = A067747 (n + 1)

end A067747

/-! ## A067747.P14605548051794828394

`A073846(n+2)`
-/

namespace A067747.P14605548051794828394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 2)

end

end A067747.P14605548051794828394

namespace A067747

/-- `A073846(n+2)` -/
def P14605548051794828394.Spec : Prop :=
  ∀ n, P14605548051794828394.a n = A067747 (n + 1)

end A067747

/-! ## A067747.P9723099630912559708

`Δ[A088636(n+1)]`
-/

namespace A067747.P9723099630912559708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067747.P9723099630912559708

namespace A067747

/-- `Δ[A088636(n+1)]` -/
def P9723099630912559708.Spec : Prop :=
  ∀ n, P9723099630912559708.a n = A067747 (n + 1)

end A067747

/-! ## A067747.P6025250281227190582

`abs(Δ[A073892(n+1)])`
-/

namespace A067747.P6025250281227190582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A067747.P6025250281227190582

namespace A067747

/-- `abs(Δ[A073892(n+1)])` -/
def P6025250281227190582.Spec : Prop :=
  ∀ n, P6025250281227190582.a n = A067747 (n + 1)

end A067747

/-! ## A067747.P16920830536069399811

`A088636(n+2)-A088636(n+1)`
-/

namespace A067747.P16920830536069399811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088636 (n + 2) - A088636 (n + 1)

end

end A067747.P16920830536069399811

namespace A067747

/-- `A088636(n+2)-A088636(n+1)` -/
def P16920830536069399811.Spec : Prop :=
  ∀ n, P16920830536069399811.a n = A067747 (n + 1)

end A067747

/-! ## A067747.P9415655883691725024

`A066255(A066250(n+1))+1`
-/

namespace A067747.P9415655883691725024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066255 (A066250 (n + 1)).toNat + 1

end

end A067747.P9415655883691725024

namespace A067747

/-- `A066255(A066250(n+1))+1` -/
def P9415655883691725024.Spec : Prop :=
  ∀ n, P9415655883691725024.a n = A067747 (n + 1)

end A067747

/-! ## A067747.P5898216718676650140

`A026239(A129131(n+1))`
-/

namespace A067747.P5898216718676650140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A129131 (n + 1)).toNat

end

end A067747.P5898216718676650140

namespace A067747

/-- `A026239(A129131(n+1))` -/
def P5898216718676650140.Spec : Prop :=
  ∀ n, P5898216718676650140.a n = A067747 (n + 1)

end A067747

/-! ## A067747.P3641774869283585399

`A026239(A066249(n+1)+1)`
-/

namespace A067747.P3641774869283585399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A066249 (n + 1) + 1).toNat

end

end A067747.P3641774869283585399

namespace A067747

/-- `A026239(A066249(n+1)+1)` -/
def P3641774869283585399.Spec : Prop :=
  ∀ n, P3641774869283585399.a n = A067747 (n + 1)

end A067747

/-! ## A067747.P13106239284593593916

`A026239(A073846(1-xor(n, -2)))`
-/

namespace A067747.P13106239284593593916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A073846 (1 - Int.xor (n : ℤ) (-2)).toNat).toNat

end

end A067747.P13106239284593593916

namespace A067747

/-- `A026239(A073846(1-xor(n, -2)))` -/
def P13106239284593593916.Spec : Prop :=
  ∀ n, P13106239284593593916.a n = A067747 (n + 1)

end A067747

/-! ## A067747.P17073915632861377684

`A020725(A066251(n+1))`
-/

namespace A067747.P17073915632861377684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A066251 (n + 1)).toNat

end

end A067747.P17073915632861377684

namespace A067747

/-- `A020725(A066251(n+1))` -/
def P17073915632861377684.Spec : Prop :=
  ∀ n, P17073915632861377684.a n = A067747 (n + 1)

end A067747

/-! ## A067747.P5687441237353673933

`A139636(a(n-2))` with `a(0)=2, a(1)=4`
-/

namespace A067747.P5687441237353673933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  A139636 (a (n - 2)).toNat

end

end A067747.P5687441237353673933

namespace A067747

/-- `A139636(a(n-2))` -/
def P5687441237353673933.Spec : Prop :=
  ∀ n, P5687441237353673933.a n = A067747 (n + 1)

end A067747

/-!
# A067749: Numbers k such that k and 3^k end with the same two digits.

The programs for A067749, the canonical program `A067749.P9957302103210825934` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067749 has offset 1).

The definition of A067749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067749.P9957302103210825934

`100*(n+1)-13`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067749

/-- `100*(n+1)-13` -/
def P9957302103210825934.Spec : Prop :=
  ∀ n, P9957302103210825934.a n = A067749 (n + 1)

theorem P9957302103210825934.correct : P9957302103210825934.Spec := by
  intro n
  simp only [A067749, Nat.add_sub_cancel]

end A067749

/-!
# A067750: Numbers k whose last digit is the k-th digit of Pi.

The programs for A067750, there is no canonical definition to state claims against.
-/

/-! ## A067750.P13577292967632741961

`eq[n%10, A000796(n)]`
-/

namespace A067750.P13577292967632741961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067750.P13577292967632741961

/-! ## A067750.P10514688217638733463

`eq[A000796(n), A010879(n)]`
-/

namespace A067750.P10514688217638733463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067750.P10514688217638733463

/-! ## A067750.P10529685947043567566

`eq[A010889(n), A123152(n+1)]`
-/

namespace A067750.P10529685947043567566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067750.P10529685947043567566

/-! ## A067750.P7030366745043805184

`eq[9-A030644(n), A010879(n)]`
-/

namespace A067750.P7030366745043805184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A030644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067750.P7030366745043805184

/-! ## A067750.P10828357908447307541

`eq[A010879(n)+1, A123152(n+1)]`
-/

namespace A067750.P10828357908447307541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067750.P10828357908447307541

/-! ## A067750.P18374789097086968967

`eq[A010879(A065253(n+1)), A010879(n)]`
-/

namespace A067750.P18374789097086968967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065253 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067750.P18374789097086968967

/-! ## A067750.P9087331314799023183

`eq[-A001355(2*n+1), -n%10]`
-/

namespace A067750.P9087331314799023183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001355 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067750.P9087331314799023183

/-! ## A067750.P14723265862388725201

`eq[A001355(2*n+1), A010879(n)]`
-/

namespace A067750.P14723265862388725201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067750.P14723265862388725201

/-! ## A067750.P4098042390072602702

`eq[A010879(n), A110766(2*n+1)]`
-/

namespace A067750.P4098042390072602702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067750.P4098042390072602702

/-!
# A067751: Number of ordered triples (x,y,z) of nonnegative integers such that x*y+x*z+y*z = n.

The programs for A067751, there is no canonical definition to state claims against.
-/

/-! ## A067751.P6589810072972285132

`A066851(n+1)+3*A000005(n+1)`
-/

namespace A067751.P6589810072972285132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066851 (n + 1) + 3 * A000005 (n + 1)

end

end A067751.P6589810072972285132

/-! ## A067751.P14313654937907998483

`∑{d}[n+1, A010052(#)*A067753((n+1)/#)]`
-/

namespace A067751.P14313654937907998483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A067753 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067751.P14313654937907998483

/-!
# A067752: Number of unordered solutions of xy + xz + yz = n in nonnegative integers.

The programs for A067752, there is no canonical definition to state claims against.
-/

/-! ## A067752.P8968772677350229317

`A066955(n+1)+A038548(n+1)`
-/

namespace A067752.P8968772677350229317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066955 (n + 1) + A038548 (n + 1)

end

end A067752.P8968772677350229317

/-! ## A067752.P600282738454897489

`A320111(n+1)+A290870(n+1)`
-/

namespace A067752.P600282738454897489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) + A290870 (n + 1)

end

end A067752.P600282738454897489

/-! ## A067752.P7495776986859313191

`A006374(n+1)-A290870(n+1)`
-/

namespace A067752.P7495776986859313191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006374 (n + 1) - A290870 (n + 1)

end

end A067752.P7495776986859313191

/-! ## A067752.P22918183340733667

`A290870(n+1)+A338117(n+1)+1`
-/

namespace A067752.P22918183340733667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (n + 1) + (A338117 (n + 1) + 1)

end

end A067752.P22918183340733667

/-! ## A067752.P15861949428413330741

`(A320111(n+1)+A006374(n+1))/2`
-/

namespace A067752.P15861949428413330741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320111 (n + 1) + A006374 (n + 1) : ℚ) / 2

end

end A067752.P15861949428413330741

/-! ## A067752.P15897626400111089984

`∑{d}[n+1, A010052(#)*A067754((n+1)/#)]`
-/

namespace A067752.P15897626400111089984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A067754 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067752.P15897626400111089984

/-! ## A067752.P12803535675257126115

`A066955(n+1)+A065033(A000005(n+1))`
-/

namespace A067752.P12803535675257126115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066955 (n + 1) + A065033 (A000005 (n + 1)).toNat

end

end A067752.P12803535675257126115

/-! ## A067752.P10962874772218318964

`A290870(n+1)+A000005(A026741(n+1))`
-/

namespace A067752.P10962874772218318964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (n + 1) + A000005 (A026741 (n + 1)).toNat

end

end A067752.P10962874772218318964

/-! ## A067752.P16027888430914536566

`A004525(A320111(n+1)+A006374(n+1))`
-/

namespace A067752.P16027888430914536566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A320111 (n + 1) + A006374 (n + 1)).toNat

end

end A067752.P16027888430914536566

/-! ## A067752.P16648154126634866298

`A290870(n+1)+A000005(A252463(n+1))`
-/

namespace A067752.P16648154126634866298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (n + 1) + A000005 (A252463 (n + 1)).toNat

end

end A067752.P16648154126634866298

/-!
# A067753: Number of primitive solutions in nonnegative integers of x*y+x*z+y*z = n.

The programs for A067753, there is no canonical definition to state claims against.
-/

/-! ## A067753.P10913489662483243960

`∑{d}[n+1, A067751(#)*A271102((n+1)/#)]`
-/

namespace A067753.P10913489662483243960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067751 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067753.P10913489662483243960

/-! ## A067753.P17752496050052262522

`A066958(n+1)+A008585(A034444(n+1))`
-/

namespace A067753.P17752496050052262522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066958 (n + 1) + A008585 (A034444 (n + 1)).toNat

end

end A067753.P17752496050052262522

/-!
# A067754: Number of unordered primitive solutions to xy+xz+yz=n.

The programs for A067754, there is no canonical definition to state claims against.
-/

/-! ## A067754.P7747778011725604661

`A066360(n+1)+A007875(n+1)`
-/

namespace A067754.P7747778011725604661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066360 (n + 1) + A007875 (n + 1)

end

end A067754.P7747778011725604661

/-! ## A067754.P1519469204168673301

`∑{d}[n+1, A067752(#)*A271102((n+1)/#)]`
-/

namespace A067754.P1519469204168673301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067752 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067754.P1519469204168673301

/-! ## A067754.P3346981513952575857

`A066360(n+1)+A000010(A034444(n+1))`
-/

namespace A067754.P3346981513952575857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066360 (n + 1) + A000010 (A034444 (n + 1)).toNat

end

end A067754.P3346981513952575857

/-! ## A067754.P1492989453050532698

`A066360(n+1)+A023896(n+1)/A248003(n+1)`
-/

namespace A067754.P1492989453050532698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066360 (n + 1) : ℚ) + (A023896 (n + 1) : ℚ) / (A248003 (n + 1) : ℚ)

end

end A067754.P1492989453050532698

/-! ## A067754.P1408917750796871647

`A066360(n+1)+A000010(A000005(n+1)-A048105(n+1))`
-/

namespace A067754.P1408917750796871647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066360 (n + 1) + A000010 (A000005 (n + 1) - A048105 (n + 1)).toNat

end

end A067754.P1408917750796871647

/-! ## A067754.P15256575060537318113

`A066360(n+1)+A034444(n+1)/gcd(2, A000079(n))`
-/

namespace A067754.P15256575060537318113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066360 (n + 1) : ℚ) + (A034444 (n + 1) : ℚ) / (Int.gcd 2 (A000079 n) : ℚ)

end

end A067754.P15256575060537318113

/-!
# A067755: Even legs of Pythagorean triangles whose other leg and hypotenuse are both prime.

The programs for A067755, there is no canonical definition to state claims against.
-/

/-! ## A067755.P17491959876043592556

`A067756(n+1)-1`
-/

namespace A067755.P17491959876043592556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067756 (n + 1) - 1

end

end A067755.P17491959876043592556

/-! ## A067755.P856177746308825018

`(A048161(n+1)²-1)/2`
-/

namespace A067755.P856177746308825018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048161 (n + 1) ^ 2 - 1 : ℚ) / 2

end

end A067755.P856177746308825018

/-! ## A067755.P5485903588956645364

`floor(A263951(n+1)/2)`
-/

namespace A067755.P5485903588956645364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A263951 (n + 1) : ℚ) / 2⌋

end

end A067755.P5485903588956645364

/-! ## A067755.P18389654182412221084

`A259979(n+1)/2-1`
-/

namespace A067755.P18389654182412221084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259979 (n + 1) : ℚ) / 2 - 1

end

end A067755.P18389654182412221084

/-! ## A067755.P16290794833615098109

`floor(A048161(n+1)²/2)`
-/

namespace A067755.P16290794833615098109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048161 (n + 1) ^ 2 : ℚ) / 2⌋

end

end A067755.P16290794833615098109

/-! ## A067755.P13949702777911115884

`4*C(A068501(n+1)+1, 2)`
-/

namespace A067755.P13949702777911115884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (A068501 (n + 1) + 1).toNat 2

end

end A067755.P13949702777911115884

/-! ## A067755.P15143658854973087884

`A263951(n+1)%A067756(n+1)`
-/

namespace A067755.P15143658854973087884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263951 (n + 1)) (A067756 (n + 1))

end

end A067755.P15143658854973087884

/-! ## A067755.P18436534383063871992

`(A048161(n+1)+1)*A068501(n+1)`
-/

namespace A067755.P18436534383063871992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048161 (n + 1) + 1) * A068501 (n + 1)

end

end A067755.P18436534383063871992

/-! ## A067755.P5263132684928624142

`(A048161(n+1)-1)*A178659(n+1)`
-/

namespace A067755.P5263132684928624142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048161 (n + 1) - 1) * A178659 (n + 1)

end

end A067755.P5263132684928624142

/-! ## A067755.P13154086773747915814

`A334802(n+1)/A048161(n+1)-1`
-/

namespace A067755.P13154086773747915814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334802 (n + 1) : ℚ) / (A048161 (n + 1) : ℚ) - 1

end

end A067755.P13154086773747915814

/-! ## A067755.P17731028179992300872

`2*A068501(n+1)*A178659(n+1)`
-/

namespace A067755.P17731028179992300872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A068501 (n + 1) * A178659 (n + 1))

end

end A067755.P17731028179992300872

/-! ## A067755.P16263450080951955845

`∩[A230444(n+1), A308442(n+1)]-1`
-/

namespace A067755.P16263450080951955845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308442 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067755.P16263450080951955845

/-! ## A067755.P18089862686090768609

`(p?[A002731(n+1)]²-1)/2`
-/

namespace A067755.P18089862686090768609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 1 : ℚ) / 2

end

end A067755.P18089862686090768609

/-! ## A067755.P260671272969861235

`∩[A027862(n+1), A230444(n+1)]-1`
-/

namespace A067755.P260671272969861235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230444 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067755.P260671272969861235

/-! ## A067755.P3861685353444520392

`∩[A027862(n+1), A110494(n+1)]-1`
-/

namespace A067755.P3861685353444520392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067755.P3861685353444520392

/-! ## A067755.P9169659374870612972

`∩[A110494(n+1), A230444(n+1)]-1`
-/

namespace A067755.P9169659374870612972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230444 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067755.P9169659374870612972

/-! ## A067755.P1500970555723048770

`∩[A110494(n+1), A308442(n+1)]-1`
-/

namespace A067755.P1500970555723048770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308442 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067755.P1500970555723048770

/-! ## A067755.P2354636445911708741

`∩[A027862(n+1), A066885(n+2)]-1`
-/

namespace A067755.P2354636445911708741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066885 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067755.P2354636445911708741

/-! ## A067755.P301271899482200189

`∩[A308442(n+1), A066885(n+2)]-1`
-/

namespace A067755.P301271899482200189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066885 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A067755.P301271899482200189

/-! ## A067755.P17147721057624028936

`2*2*A000217(A068501(n+1))`
-/

namespace A067755.P17147721057624028936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A000217 (A068501 (n + 1)).toNat)

end

end A067755.P17147721057624028936

/-!
# A067756: Prime hypotenuses of Pythagorean triangles with a prime leg.

The programs for A067756, there is no canonical definition to state claims against.
-/

/-! ## A067756.P18166861967267076367

`A067755(n+1)+1`
-/

namespace A067756.P18166861967267076367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067755 (n + 1) + 1

end

end A067756.P18166861967267076367

/-! ## A067756.P6919468109635768815

`(A048161(n+1)²+1)/2`
-/

namespace A067756.P6919468109635768815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048161 (n + 1) ^ 2 + 1 : ℚ) / 2

end

end A067756.P6919468109635768815

/-! ## A067756.P10619638746513197836

`A259979(n+1)/2`
-/

namespace A067756.P10619638746513197836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259979 (n + 1) : ℚ) / 2

end

end A067756.P10619638746513197836

/-! ## A067756.P1139344430458703510

`ceil(A263951(n+1)/2)`
-/

namespace A067756.P1139344430458703510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A263951 (n + 1) : ℚ) / 2⌉

end

end A067756.P1139344430458703510

/-! ## A067756.P14243540522250003038

`ceil(A048161(n+1)²/2)`
-/

namespace A067756.P14243540522250003038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048161 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A067756.P14243540522250003038

/-! ## A067756.P14000483486897840052

`4*C(A068501(n+1)+1, 2)+1`
-/

namespace A067756.P14000483486897840052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (A068501 (n + 1) + 1).toNat 2 + 1

end

end A067756.P14000483486897840052

/-! ## A067756.P3157289982238249298

`A334802(n+1)/A048161(n+1)`
-/

namespace A067756.P3157289982238249298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334802 (n + 1) : ℚ) / (A048161 (n + 1) : ℚ)

end

end A067756.P3157289982238249298

/-! ## A067756.P9154650964475378678

`A334802(n+1)%A259979(n+1)`
-/

namespace A067756.P9154650964475378678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334802 (n + 1)) (A259979 (n + 1))

end

end A067756.P9154650964475378678

/-! ## A067756.P4671435446473736383

`gcd(A263951(n+1)+1, A334802(n+1))`
-/

namespace A067756.P4671435446473736383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A263951 (n + 1) + 1) (A334802 (n + 1))

end

end A067756.P4671435446473736383

/-! ## A067756.P258184186559647215

`A068501(n+1)²+A178659(n+1)²`
-/

namespace A067756.P258184186559647215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068501 (n + 1) ^ 2 + A178659 (n + 1) ^ 2

end

end A067756.P258184186559647215

/-! ## A067756.P9474144639884012307

`A048161(n+1)+2*A068501(n+1)²`
-/

namespace A067756.P9474144639884012307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1) + 2 * A068501 (n + 1) ^ 2

end

end A067756.P9474144639884012307

/-! ## A067756.P1478774855263750799

`2*A178659(n+1)²-A048161(n+1)`
-/

namespace A067756.P1478774855263750799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178659 (n + 1) ^ 2 - A048161 (n + 1)

end

end A067756.P1478774855263750799

/-! ## A067756.P5699532205999722674

`A178659(n+1)+A048161(n+1)*A068501(n+1)`
-/

namespace A067756.P5699532205999722674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178659 (n + 1) + A048161 (n + 1) * A068501 (n + 1)

end

end A067756.P5699532205999722674

/-! ## A067756.P4007961087081041003

`A334802(n+1)/(A178659(n+1)+A068501(n+1))`
-/

namespace A067756.P4007961087081041003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334802 (n + 1) : ℚ) / (A178659 (n + 1) + A068501 (n + 1) : ℚ)

end

end A067756.P4007961087081041003

/-! ## A067756.P6022229672674597469

`∩[A230444(n+1), A308442(n+1)]`
-/

namespace A067756.P6022229672674597469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067756.P6022229672674597469

/-! ## A067756.P16011846321083443293

`(p?[A002731(n+1)]²+1)/2`
-/

namespace A067756.P16011846321083443293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1 : ℚ) / 2

end

end A067756.P16011846321083443293

/-! ## A067756.P7200410979617993656

`∩[A027862(n+1), A230444(n+1)]`
-/

namespace A067756.P7200410979617993656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067756.P7200410979617993656

/-! ## A067756.P5010050891612425257

`∩[A027862(n+1), A110494(n+1)]`
-/

namespace A067756.P5010050891612425257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067756.P5010050891612425257

/-! ## A067756.P13286651501195352745

`∩[A110494(n+1), A230444(n+1)]`
-/

namespace A067756.P13286651501195352745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067756.P13286651501195352745

/-! ## A067756.P14553467850456819756

`∩[A110494(n+1), A308442(n+1)]`
-/

namespace A067756.P14553467850456819756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067756.P14553467850456819756

/-!
# A067757: Numbers k whose last digit is the k-th digit of sqrt(2).

The programs for A067757, there is no canonical definition to state claims against.
-/

/-! ## A067757.P5273155308893126606

`eq[n%10, A002193(n)]`
-/

namespace A067757.P5273155308893126606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067757.P5273155308893126606

/-! ## A067757.P7262607745001698980

`eq[A002193(n), A010879(n)]`
-/

namespace A067757.P7262607745001698980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067757.P7262607745001698980

/-! ## A067757.P1300522254270652359

`eq[A010879(n), A014176(n)]`
-/

namespace A067757.P1300522254270652359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067757.P1300522254270652359

/-! ## A067757.P17005580949085141754

`eq[A010879(n), A120731(n+1)]`
-/

namespace A067757.P17005580949085141754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 1 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067757.P17005580949085141754

/-! ## A067757.P14343137752218049277

`eq[A028310(n)%10, A014176(n)]`
-/

namespace A067757.P14343137752218049277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067757.P14343137752218049277

/-!
# A067758: Numbers k such that sigma(prime(k) - 1) == 0 (mod k).

The programs for A067758, there is no canonical definition to state claims against.
-/

/-! ## A067758.P7721855199759478329

`eq[0, A008332(n+1)%(n+1)]+1`
-/

namespace A067758.P7721855199759478329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008332 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067758.P7721855199759478329

/-!
# A067759: Numbers k such that sigma(prime(k) + 1) == 0 (mod k).

The programs for A067759, there is no canonical definition to state claims against.
-/

/-! ## A067759.P12135229412947547031

`record[gcd(n+1, A008333(n+1))]`
-/

namespace A067759.P12135229412947547031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A008333 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067759.P12135229412947547031

/-! ## A067759.P2165230478383422285

`record[gcd(n, A051027(A008578(n+1)))]`
-/

namespace A067759.P2165230478383422285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A051027 (A008578 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067759.P2165230478383422285

/-! ## A067759.P8878115497217015490

`record[gcd(A143348(n+1), A263111(n))]`
-/

namespace A067759.P8878115497217015490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143348 (n + 1)) (A263111 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067759.P8878115497217015490

/-! ## A067759.P12214891845170395239

`record[gcd(A051027(n+1), A055396(n+1))]`
-/

namespace A067759.P12214891845170395239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051027 (n + 1)) (A055396 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067759.P12214891845170395239

/-! ## A067759.P2779087496769849512

`eq[A000007(n), A072548(A028815(n))]`
-/

namespace A067759.P2779087496769849512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072548 (A028815 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067759.P2779087496769849512

/-!
# A067760: a(n) is the least positive k such that (2n+1) + 2^k is prime, or 0 if no such k exists.

The programs for A067760, there is no canonical definition to state claims against.
-/

/-! ## A067760.P5342133312738483019

`log2(A123252(n+1)-Δ[n²])`
-/

namespace A067760.P5342133312738483019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A123252 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℝ)

end

end A067760.P5342133312738483019

/-! ## A067760.P2339058638763137918

`val(A123252(abs(1-n)+2)-Δ[n²], 2)`
-/

namespace A067760.P2339058638763137918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A123252 (|1 - (n : ℤ)| + 2).toNat - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat 2

end

end A067760.P2339058638763137918

/-! ## A067760.P14867983094871638842

`A000523(A123252(n+1)-2*n)`
-/

namespace A067760.P14867983094871638842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A123252 (n + 1) - (2 * n : ℤ)).toNat

end

end A067760.P14867983094871638842

/-! ## A067760.P8294514464989388107

`A000523(A123252(n+1)-n-n)`
-/

namespace A067760.P8294514464989388107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A123252 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A067760.P8294514464989388107

/-! ## A067760.P891972530829150682

`A001222(A123252(n+1)-Δ[n²])`
-/

namespace A067760.P891972530829150682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A123252 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A067760.P891972530829150682

/-! ## A067760.P7572817377347689881

`A005361(A123252(n+1)-Δ[n²])`
-/

namespace A067760.P7572817377347689881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A123252 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A067760.P7572817377347689881

/-! ## A067760.P5526193465690449913

`A000120(A123252(n+1)-2*(n+1))`
-/

namespace A067760.P5526193465690449913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A123252 (n + 1) - (2 * (n + 1) : ℤ)).toNat

end

end A067760.P5526193465690449913

/-! ## A067760.P2002460757188965304

`A000005(A123252(n+1)-Δ[n²])-1`
-/

namespace A067760.P2002460757188965304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A123252 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat - 1

end

end A067760.P2002460757188965304

/-! ## A067760.P11683457126451050607

`A000005(A004526(A123252(n+1))-n)`
-/

namespace A067760.P11683457126451050607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004526 (A123252 (n + 1)).toNat - (n : ℤ)).toNat

end

end A067760.P11683457126451050607

/-! ## A067760.P5772747085147049865

`A000005(A123108(A123252(n+1))-n)`
-/

namespace A067760.P5772747085147049865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A123108 (A123252 (n + 1)).toNat - (n : ℤ)).toNat

end

end A067760.P5772747085147049865

/-!
# A067761: Positive integers divisible by 5 but not by 7.

The programs for A067761, the canonical program `A067761.P4795784631609582241` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067761 has offset 1).

The definition of A067761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067761.P4795784631609582241

`a(n-6)+35` with `a(0)=5, a(1)=10, a(2)=15, a(3)=20, a(4)=25, a(5)=30`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067761

/-- `a(n-6)+35` -/
def P4795784631609582241.Spec : Prop :=
  ∀ n, (P4795784631609582241.a n : ℤ) = A067761 (n + 1)

theorem P4795784631609582241.correct : P4795784631609582241.Spec := by
  intro n
  simp only [A067761, Nat.add_sub_cancel]

end A067761

/-! ## A067761.P14112995596015370651

`5*A047304(n+1)`
-/

namespace A067761.P14112995596015370651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A047304 (n + 1)

end

end A067761.P14112995596015370651

namespace A067761

/-- `5*A047304(n+1)` -/
def P14112995596015370651.Spec : Prop :=
  ∀ n, P14112995596015370651.a n = A067761 (n + 1)

end A067761

/-! ## A067761.P16925683897970385926

`5*comp[7*n]`
-/

namespace A067761.P16925683897970385926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A067761.P16925683897970385926

namespace A067761

/-- `5*comp[7*n]` -/
def P16925683897970385926.Spec : Prop :=
  ∀ n, (P16925683897970385926.a n : ℤ) = A067761 (n + 1)

end A067761

/-! ## A067761.P4388864086013577459

`record[5*lcm(7, n+1)/7]`
-/

namespace A067761.P4388864086013577459
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((Nat.lcm 7 (n + 1) : ℚ) / 7)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067761.P4388864086013577459

namespace A067761

/-- `record[5*lcm(7, n+1)/7]` -/
def P4388864086013577459.Spec : Prop :=
  ∀ n, P4388864086013577459.a n = (A067761 (n + 1) : ℚ)

end A067761

/-! ## A067761.P4206019759299099164

`record[(n+1)*(6-gcd(7, n+1))]`
-/

namespace A067761.P4206019759299099164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (6 - (Nat.gcd 7 (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067761.P4206019759299099164

namespace A067761

/-- `record[(n+1)*(6-gcd(7, n+1))]` -/
def P4206019759299099164.Spec : Prop :=
  ∀ n, P4206019759299099164.a n = A067761 (n + 1)

end A067761

/-! ## A067761.P10368923582964099380

`record[5*(1-val(n+1, 7)+n)]`
-/

namespace A067761.P10368923582964099380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (1 - (SequenceMachineLib.valuation (n + 1) 7 : ℤ) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067761.P10368923582964099380

namespace A067761

/-- `record[5*(1-val(n+1, 7)+n)]` -/
def P10368923582964099380.Spec : Prop :=
  ∀ n, P10368923582964099380.a n = A067761 (n + 1)

end A067761

/-! ## A067761.P11957863542251016230

`record[5*A242603(n+1)]`
-/

namespace A067761.P11957863542251016230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A242603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067761.P11957863542251016230

namespace A067761

/-- `record[5*A242603(n+1)]` -/
def P11957863542251016230.Spec : Prop :=
  ∀ n, P11957863542251016230.a n = A067761 (n + 1)

end A067761

/-! ## A067761.P4179917829755962234

`A008706(A047304(n+1))`
-/

namespace A067761.P4179917829755962234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A047304 (n + 1)).toNat

end

end A067761.P4179917829755962234

namespace A067761

/-- `A008706(A047304(n+1))` -/
def P4179917829755962234.Spec : Prop :=
  ∀ n, P4179917829755962234.a n = A067761 (n + 1)

end A067761

/-! ## A067761.P12645502991262080842

`A008706(A097992(n)+n)`
-/

namespace A067761.P12645502991262080842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A097992 n + (n : ℤ)).toNat

end

end A067761.P12645502991262080842

namespace A067761

/-- `A008706(A097992(n)+n)` -/
def P12645502991262080842.Spec : Prop :=
  ∀ n, P12645502991262080842.a n = A067761 (n + 1)

end A067761

/-! ## A067761.P9846263793696788001

`A016885(A047304(n+1)-1)+2`
-/

namespace A067761.P9846263793696788001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (A047304 (n + 1) - 1).toNat + 2

end

end A067761.P9846263793696788001

namespace A067761

/-- `A016885(A047304(n+1)-1)+2` -/
def P9846263793696788001.Spec : Prop :=
  ∀ n, P9846263793696788001.a n = A067761 (n + 1)

end A067761

/-! ## A067761.P3417830072294256332

`A016897(comp[A016969(n)+n+1])+1`
-/

namespace A067761.P3417830072294256332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A067761.P3417830072294256332

namespace A067761

/-- `A016897(comp[A016969(n)+n+1])+1` -/
def P3417830072294256332.Spec : Prop :=
  ∀ n, P3417830072294256332.a n = A067761 (n + 1)

end A067761

/-! ## A067761.P3113097768792261839

`A016969((comp[or(6, n)]+n)/2)-(A275910(n+1)+n-2+n)/3`
-/

namespace A067761.P3113097768792261839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016969 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℚ) / 2)).toNat : ℚ) - (A275910 (n + 1) + ((n : ℤ) - 2) + (n : ℤ) : ℚ) / 3

end

end A067761.P3113097768792261839

namespace A067761

/-- `A016969((comp[or(6, n)]+n)/2)-(A275910(n+1)+n-2+n)/3` -/
def P3113097768792261839.Spec : Prop :=
  ∀ n, P3113097768792261839.a n = (A067761 (n + 1) : ℚ)

end A067761

/-! ## A067761.P8752226945494006118

`A008587(comp[7*n])`
-/

namespace A067761.P8752226945494006118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A067761.P8752226945494006118

namespace A067761

/-- `A008587(comp[7*n])` -/
def P8752226945494006118.Spec : Prop :=
  ∀ n, P8752226945494006118.a n = A067761 (n + 1)

end A067761

/-! ## A067761.P10937864897214324540

`A016969((A275910(n+1)+n-2+n)/3)-lt[n, A283444(n+1)]`
-/

namespace A067761.P10937864897214324540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (SequenceMachineLib.roundAway ((A275910 (n + 1) + ((n : ℤ) - 2) + (n : ℤ) : ℚ) / 3)).toNat - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A067761.P10937864897214324540

namespace A067761

/-- `A016969((A275910(n+1)+n-2+n)/3)-lt[n, A283444(n+1)]` -/
def P10937864897214324540.Spec : Prop :=
  ∀ n, P10937864897214324540.a n = A067761 (n + 1)

end A067761

/-! ## A067761.P9987299405555684358

`A135042(A047306(n+2))`
-/

namespace A067761.P9987299405555684358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (A047306 (n + 2)).toNat

end

end A067761.P9987299405555684358

namespace A067761

/-- `A135042(A047306(n+2))` -/
def P9987299405555684358.Spec : Prop :=
  ∀ n, P9987299405555684358.a n = A067761 (n + 1)

end A067761

/-! ## A067761.P13378562792126420321

`A008587(A047304(n+1)+n)-A008587(n)`
-/

namespace A067761.P13378562792126420321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A047304 (n + 1) + (n : ℤ)).toNat - A008587 n

end

end A067761.P13378562792126420321

namespace A067761

/-- `A008587(A047304(n+1)+n)-A008587(n)` -/
def P13378562792126420321.Spec : Prop :=
  ∀ n, P13378562792126420321.a n = A067761 (n + 1)

end A067761

/-! ## A067761.P2010197121010063116

`A166598(A047391(n+1))`
-/

namespace A067761.P2010197121010063116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166598 (A047391 (n + 1)).toNat

end

end A067761.P2010197121010063116

namespace A067761

/-- `A166598(A047391(n+1))` -/
def P2010197121010063116.Spec : Prop :=
  ∀ n, P2010197121010063116.a n = A067761 (n + 1)

end A067761

/-! ## A067761.P1603163702190305876

`A168284(A047292(n+1))`
-/

namespace A067761.P1603163702190305876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168284 (A047292 (n + 1)).toNat

end

end A067761.P1603163702190305876

namespace A067761

/-- `A168284(A047292(n+1))` -/
def P1603163702190305876.Spec : Prop :=
  ∀ n, P1603163702190305876.a n = A067761 (n + 1)

end A067761

/-! ## A067761.P4731244925579229333

`filter[A047304(n+1), A079998(#)]`
-/

namespace A067761.P4731244925579229333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A067761.P4731244925579229333

namespace A067761

/-- `filter[A047304(n+1), A079998(#)]` -/
def P4731244925579229333.Spec : Prop :=
  ∀ n, P4731244925579229333.a n = A067761 (n + 1)

end A067761

/-! ## A067761.P17460212291116524132

`∩[A047304(n+1), A008587(n)]`
-/

namespace A067761.P17460212291116524132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067761.P17460212291116524132

namespace A067761

/-- `∩[A047304(n+1), A008587(n)]` -/
def P17460212291116524132.Spec : Prop :=
  ∀ n, (P17460212291116524132.a n : ℤ) = A067761 (n + 1)

end A067761

/-!
# A067762: Numbers n such that bigomega(sigma(n))=bigomega(n).

The programs for A067762, the canonical program `A067762.P760824322121721622` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067762 has offset 1).

The definition of A067762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067762.P11446140804075595831

`record[gcd(n+1, A336386(n+1))]`
-/

namespace A067762.P11446140804075595831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A336386 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067762.P11446140804075595831

namespace A067762

/-- `record[gcd(n+1, A336386(n+1))]` -/
def P11446140804075595831.Spec : Prop :=
  ∀ n, (P11446140804075595831.a n : ℤ) = A067762 (n + 1)

end A067762

/-! ## A067762.P7901426746959034196

`eq[0, A336386(n+1)]+1`
-/

namespace A067762.P7901426746959034196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336386 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067762.P7901426746959034196

namespace A067762

/-- `eq[0, A336386(n+1)]+1` -/
def P7901426746959034196.Spec : Prop :=
  ∀ n, (P7901426746959034196.a n : ℤ) = A067762 (n + 1)

end A067762

/-! ## A067762.P760824322121721622

`eq[A001222(A000203(n+1)), A001222(n+1)]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067762

/-- `eq[A001222(A000203(n+1)), A001222(n+1)]+1` -/
def P760824322121721622.Spec : Prop :=
  ∀ n, (P760824322121721622.a n : ℤ) = A067762 (n + 1)

theorem P760824322121721622.correct : P760824322121721622.Spec := by
  intro n
  simp only [A067762, Nat.add_sub_cancel]

end A067762

/-! ## A067762.P8843080569233416064

`eq[A000007(n), A336386(A028310(n))]`
-/

namespace A067762.P8843080569233416064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336386 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067762.P8843080569233416064

namespace A067762

/-- `eq[A000007(n), A336386(A028310(n))]` -/
def P8843080569233416064.Spec : Prop :=
  ∀ n, (P8843080569233416064.a n : ℤ) = A067762 (n + 1)

end A067762

/-! ## A067762.P17835808210467819135

`eq[A000038(n), A336386(A028310(n))]`
-/

namespace A067762.P17835808210467819135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336386 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067762.P17835808210467819135

namespace A067762

/-- `eq[A000038(n), A336386(A028310(n))]` -/
def P17835808210467819135.Spec : Prop :=
  ∀ n, (P17835808210467819135.a n : ℤ) = A067762 (n + 1)

end A067762

/-!
# A067763: Square array read by antidiagonals of base n numbers written as 122...222 with k 2's (and a suitable interpretation for n=0, 1 or 2).

The programs for A067763, the canonical program `A067763.P14479320546737986162` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067763 has offset 0).

The definition of A067763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4773 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067763.P14479320546737986162

`A104878(n)+A104878(n)-A004248(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067763

/-- `A104878(n)+A104878(n)-A004248(n)` -/
def P14479320546737986162.Spec : Prop :=
  ∀ n, P14479320546737986162.a n = A067763 n

theorem P14479320546737986162.correct : P14479320546737986162.Spec := by
  intro n
  simp only [A067763]

end A067763

/-! ## A067763.P10060009646184962625

`2*A104878(n)-A004248(n)`
-/

namespace A067763.P10060009646184962625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104878 n - A004248 n

end

end A067763.P10060009646184962625

namespace A067763

/-- `2*A104878(n)-A004248(n)` -/
def P10060009646184962625.Spec : Prop :=
  ∀ n, P10060009646184962625.a n = A067763 n

theorem P10060009646184962625.correct : P10060009646184962625.Spec := by
  intro n
  simp only [A067763, Nat.add_sub_cancel, A067763.P10060009646184962625.a, A067763.P14479320546737986162.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067763

/-! ## A067763.P18109728920080658290

`A005843(A104878(n))-A004248(n)`
-/

namespace A067763.P18109728920080658290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A104878 n).toNat - A004248 n

end

end A067763.P18109728920080658290

namespace A067763

/-- `A005843(A104878(n))-A004248(n)` -/
def P18109728920080658290.Spec : Prop :=
  ∀ n, P18109728920080658290.a n = A067763 n

end A067763

/-! ## A067763.P14833669556572221692

`A112739(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A067763.P14833669556572221692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112739 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A067763.P14833669556572221692

namespace A067763

/-- `A112739(∑[2*n]%(comp[∑[n]]+1)+1+n)` -/
def P14833669556572221692.Spec : Prop :=
  ∀ n, P14833669556572221692.a n = A067763 n

end A067763

/-! ## A067763.P7523832150398751395

`A112739(2*(C(comp[∑[n]]-n, 2)-n)-1+n)`
-/

namespace A067763.P7523832150398751395
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112739 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 + (n : ℤ)).toNat

end

end A067763.P7523832150398751395

namespace A067763

/-- `A112739(2*(C(comp[∑[n]]-n, 2)-n)-1+n)` -/
def P7523832150398751395.Spec : Prop :=
  ∀ n, P7523832150398751395.a n = A067763 n

end A067763

/-! ## A067763.P5051907368038886541

`A112739(A380649(n+1))`
-/

namespace A067763.P5051907368038886541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112739 (A380649 (n + 1)).toNat

end

end A067763.P5051907368038886541

namespace A067763

/-- `A112739(A380649(n+1))` -/
def P5051907368038886541.Spec : Prop :=
  ∀ n, P5051907368038886541.a n = A067763 n

end A067763

/-! ## A067763.P12661737948863325121

`A112739(A099375(n)+n)`
-/

namespace A067763.P12661737948863325121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112739 (A099375 n + (n : ℤ)).toNat

end

end A067763.P12661737948863325121

namespace A067763

/-- `A112739(A099375(n)+n)` -/
def P12661737948863325121.Spec : Prop :=
  ∀ n, P12661737948863325121.a n = A067763 n

end A067763

/-! ## A067763.P16254250896539880215

`A112739(A061579(n)+∑[char[∑[n]]])`
-/

namespace A067763.P16254250896539880215
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112739 (A061579 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A067763.P16254250896539880215

namespace A067763

/-- `A112739(A061579(n)+∑[char[∑[n]]])` -/
def P16254250896539880215.Spec : Prop :=
  ∀ n, P16254250896539880215.a n = A067763 n

end A067763

/-! ## A067763.P4634166421364967195

`A112739(A002024(n+1)+∑[2*n]%comp[∑[n]])`
-/

namespace A067763.P4634166421364967195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112739 (A002024 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ)).toNat

end

end A067763.P4634166421364967195

namespace A067763

/-- `A112739(A002024(n+1)+∑[2*n]%comp[∑[n]])` -/
def P4634166421364967195.Spec : Prop :=
  ∀ n, P4634166421364967195.a n = A067763 n

end A067763

/-! ## A067763.P696694074161985190

`A112739(A061579(∑[A035214(n)]))`
-/

namespace A067763.P696694074161985190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112739 (A061579 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A067763.P696694074161985190

namespace A067763

/-- `A112739(A061579(∑[A035214(n)]))` -/
def P696694074161985190.Spec : Prop :=
  ∀ n, P696694074161985190.a n = A067763 n

end A067763

/-!
# A067764: Numerators of the coefficients in exp(x/(1-x)) power series.

The programs for A067764, there is no canonical definition to state claims against.
-/

/-! ## A067764.P6595322926267797192

`A000262(n)/gcd(n!, A052866(n))`
-/

namespace A067764.P6595322926267797192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000262 n : ℚ) / (Int.gcd (Nat.factorial n : ℤ) (A052866 n) : ℚ)

end

end A067764.P6595322926267797192

/-! ## A067764.P8760605913700465393

`A000262(n)/A000142(n)*A067653(n)`
-/

namespace A067764.P8760605913700465393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000262 n : ℚ) / (A000142 n : ℚ) * (A067653 n : ℚ)

end

end A067764.P8760605913700465393

/-! ## A067764.P3091539766750675986

`A000262(n)/gcd(A000262(n), A002868(n))`
-/

namespace A067764.P3091539766750675986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000262 n : ℚ) / (Int.gcd (A000262 n) (A002868 n) : ℚ)

end

end A067764.P3091539766750675986

/-! ## A067764.P14034087230898119779

`lcm(A000262(n), A001710(n))/A001710(n)`
-/

namespace A067764.P14034087230898119779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000262 n) (A001710 n) : ℚ) / (A001710 n : ℚ)

end

end A067764.P14034087230898119779

/-! ## A067764.P11905164370971871836

`lcm(A000142(n), A293125(n))/A000142(n)`
-/

namespace A067764.P11905164370971871836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000142 n) (A293125 n) : ℚ) / (A000142 n : ℚ)

end

end A067764.P11905164370971871836

/-!
# A067766: Numbers k such that sigma(k)^2 > 4*sigma_2(k) where sigma_2(k) is the sum of squares over the divisors of k.

The programs for A067766, the canonical program `A067766.P12496777605607687847` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067766 has offset 1).

The definition of A067766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067766.P12496777605607687847

`lt[A001157(n+1), A002620(A000203(n+1))]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067766

/-- `lt[A001157(n+1), A002620(A000203(n+1))]+1` -/
def P12496777605607687847.Spec : Prop :=
  ∀ n, (P12496777605607687847.a n : ℤ) = A067766 (n + 1)

theorem P12496777605607687847.correct : P12496777605607687847.Spec := by
  intro n
  simp only [A067766, Nat.add_sub_cancel]

end A067766

/-! ## A067766.P3429117134983586637

`∩[A068544(n+1), A387113(n+1)]`
-/

namespace A067766.P3429117134983586637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067766.P3429117134983586637

namespace A067766

/-- `∩[A068544(n+1), A387113(n+1)]` -/
def P3429117134983586637.Spec : Prop :=
  ∀ n, (P3429117134983586637.a n : ℤ) = A067766 (n + 1)

end A067766

/-! ## A067766.P1966288012461366702

`lt[A106600(n), A155597(A032741(n))]`
-/

namespace A067766.P1966288012461366702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155597 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067766.P1966288012461366702

namespace A067766

/-- `lt[A106600(n), A155597(A032741(n))]` -/
def P1966288012461366702.Spec : Prop :=
  ∀ n, (P1966288012461366702.a n : ℤ) = A067766 (n + 1)

end A067766

/-! ## A067766.P11210909448368516071

`lt[A080156(n+1), A007051(A032741(n))]`
-/

namespace A067766.P11210909448368516071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067766.P11210909448368516071

namespace A067766

/-- `lt[A080156(n+1), A007051(A032741(n))]` -/
def P11210909448368516071.Spec : Prop :=
  ∀ n, (P11210909448368516071.a n : ℤ) = A067766 (n + 1)

end A067766

/-! ## A067766.P1211865169469035055

`lt[A001993(n), A000112(A032741(n))]`
-/

namespace A067766.P1211865169469035055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001993 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000112 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067766.P1211865169469035055

namespace A067766

/-- `lt[A001993(n), A000112(A032741(n))]` -/
def P1211865169469035055.Spec : Prop :=
  ∀ n, (P1211865169469035055.a n : ℤ) = A067766 (n + 1)

end A067766

/-!
# A067770: a(n) = Catalan(n) mod (n+2).

The programs for A067770, the canonical program `A067770.P4395971528787361647` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067770 has offset 0).

The definition of A067770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)%(n+2)` (program `A067770.P4395971528787361647`, by `A067770.P4395971528787361647.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A067770.P4395971528787361647

`A000108(n)%(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A067770

/-- `A000108(n)%(n+2)` -/
def P4395971528787361647.Spec : Prop :=
  ∀ n, P4395971528787361647.a n = A067770 n

theorem P4395971528787361647.correct : P4395971528787361647.Spec := by
  intro n
  simp only [A067770]

end A067770

/-! ## A067770.P15834457254967640433

`A065344(A028310(n))/(A028310(n)+1)`
-/

namespace A067770.P15834457254967640433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065344 (A028310 n).toNat : ℚ) / (A028310 n + 1 : ℚ)

end

end A067770.P15834457254967640433

namespace A067770

/-- `A065344(A028310(n))/(A028310(n)+1)` -/
def P15834457254967640433.Spec : Prop :=
  ∀ n, P15834457254967640433.a n = (A067770 n : ℚ)

end A067770

/-! ## A067770.P2830037262881316402

`A065344(A065033(2*n))/A233583(n+2)`
-/

namespace A067770.P2830037262881316402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065344 (A065033 (2 * n)).toNat : ℚ) / (A233583 (n + 2) : ℚ)

end

end A067770.P2830037262881316402

namespace A067770

/-- `A065344(A065033(2*n))/A233583(n+2)` -/
def P2830037262881316402.Spec : Prop :=
  ∀ n, P2830037262881316402.a n = (A067770 n : ℚ)

end A067770

/-! ## A067770.P14886208591059879091

`A065344(A000007(n)+n)/A233583(n+2)`
-/

namespace A067770.P14886208591059879091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065344 (A000007 n + (n : ℤ)).toNat : ℚ) / (A233583 (n + 2) : ℚ)

end

end A067770.P14886208591059879091

namespace A067770

/-- `A065344(A000007(n)+n)/A233583(n+2)` -/
def P14886208591059879091.Spec : Prop :=
  ∀ n, P14886208591059879091.a n = (A067770 n : ℚ)

end A067770

/-! ## A067770.P3656450562244536094

`abs(A168491(n)%(n+2))`
-/

namespace A067770.P3656450562244536094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A168491 n) (n + 2 : ℤ)|

end

end A067770.P3656450562244536094

namespace A067770

/-- `abs(A168491(n)%(n+2))` -/
def P3656450562244536094.Spec : Prop :=
  ∀ n, P3656450562244536094.a n = A067770 n

end A067770

/-! ## A067770.P5427144517068251762

`A120588(n+1)%(n+2)`
-/

namespace A067770.P5427144517068251762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 (n + 1)) (n + 2 : ℤ)

end

end A067770.P5427144517068251762

namespace A067770

/-- `A120588(n+1)%(n+2)` -/
def P5427144517068251762.Spec : Prop :=
  ∀ n, P5427144517068251762.a n = A067770 n

end A067770

/-! ## A067770.P15340716610514009427

`(A120304(n)+2)%(n+2)`
-/

namespace A067770.P15340716610514009427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120304 n + 2) (n + 2 : ℤ)

end

end A067770.P15340716610514009427

namespace A067770

/-- `(A120304(n)+2)%(n+2)` -/
def P15340716610514009427.Spec : Prop :=
  ∀ n, P15340716610514009427.a n = A067770 n

theorem P15340716610514009427.correct : P15340716610514009427.Spec := by
  intro n
  simp only [A067770, Nat.add_sub_cancel, A067770.P15340716610514009427.a, A067770.P4395971528787361647.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067770

/-! ## A067770.P9362313913849472522

`A028303(2*n)%(n+2)`
-/

namespace A067770.P9362313913849472522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028303 (2 * n)) (n + 2 : ℤ)

end

end A067770.P9362313913849472522

namespace A067770

/-- `A028303(2*n)%(n+2)` -/
def P9362313913849472522.Spec : Prop :=
  ∀ n, P9362313913849472522.a n = A067770 n

end A067770

/-! ## A067770.P191421048105654594

`A028304(2*n)%(n+2)`
-/

namespace A067770.P191421048105654594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028304 (2 * n)) (n + 2 : ℤ)

end

end A067770.P191421048105654594

namespace A067770

/-- `A028304(2*n)%(n+2)` -/
def P191421048105654594.Spec : Prop :=
  ∀ n, P191421048105654594.a n = A067770 n

end A067770

/-! ## A067770.P17397956794249577011

`A126120(2*n)%(n+2)`
-/

namespace A067770.P17397956794249577011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126120 (2 * n)) (n + 2 : ℤ)

end

end A067770.P17397956794249577011

namespace A067770

/-- `A126120(2*n)%(n+2)` -/
def P17397956794249577011.Spec : Prop :=
  ∀ n, P17397956794249577011.a n = A067770 n

end A067770

/-! ## A067770.P6190248647002154158

`A126324(2*n)%(n+2)`
-/

namespace A067770.P6190248647002154158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126324 (2 * n)) (n + 2 : ℤ)

end

end A067770.P6190248647002154158

namespace A067770

/-- `A126324(2*n)%(n+2)` -/
def P6190248647002154158.Spec : Prop :=
  ∀ n, P6190248647002154158.a n = A067770 n

end A067770

/-! ## A067770.P7482192657793562999

`A208355(2*n)%(n+2)`
-/

namespace A067770.P7482192657793562999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208355 (2 * n)) (n + 2 : ℤ)

end

end A067770.P7482192657793562999

namespace A067770

/-- `A208355(2*n)%(n+2)` -/
def P7482192657793562999.Spec : Prop :=
  ∀ n, P7482192657793562999.a n = A067770 n

end A067770

/-! ## A067770.P2327074153902778675

`A089408(2*n+1)%(n+2)`
-/

namespace A067770.P2327074153902778675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089408 (2 * n + 1)) (n + 2 : ℤ)

end

end A067770.P2327074153902778675

namespace A067770

/-- `A089408(2*n+1)%(n+2)` -/
def P2327074153902778675.Spec : Prop :=
  ∀ n, P2327074153902778675.a n = A067770 n

end A067770

/-! ## A067770.P6046879308796339225

`A097331(2*n+1)%(n+2)`
-/

namespace A067770.P6046879308796339225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097331 (2 * n + 1)) (n + 2 : ℤ)

end

end A067770.P6046879308796339225

namespace A067770

/-- `A097331(2*n+1)%(n+2)` -/
def P6046879308796339225.Spec : Prop :=
  ∀ n, P6046879308796339225.a n = A067770 n

end A067770

/-! ## A067770.P4119405562878043215

`abs(A182492(4*n+3))%(n+2)`
-/

namespace A067770.P4119405562878043215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A182492 (4 * n + 3)| (n + 2 : ℤ)

end

end A067770.P4119405562878043215

namespace A067770

/-- `abs(A182492(4*n+3))%(n+2)` -/
def P4119405562878043215.Spec : Prop :=
  ∀ n, P4119405562878043215.a n = A067770 n

end A067770

/-! ## A067770.P3806983729519007251

`A099363(2*n)%(n+2)`
-/

namespace A067770.P3806983729519007251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099363 (2 * n)) (n + 2 : ℤ)

end

end A067770.P3806983729519007251

namespace A067770

/-- `A099363(2*n)%(n+2)` -/
def P3806983729519007251.Spec : Prop :=
  ∀ n, P3806983729519007251.a n = A067770 n

end A067770

/-! ## A067770.P1365019525596911874

`A119358(n)%(n+2)`
-/

namespace A067770.P1365019525596911874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119358 n) (n + 2 : ℤ)

end

end A067770.P1365019525596911874

namespace A067770

/-- `A119358(n)%(n+2)` -/
def P1365019525596911874.Spec : Prop :=
  ∀ n, P1365019525596911874.a n = A067770 n

end A067770

/-! ## A067770.P405423034045554151

`A032095(n+1)%(n+2)`
-/

namespace A067770.P405423034045554151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032095 (n + 1)) (n + 2 : ℤ)

end

end A067770.P405423034045554151

namespace A067770

/-- `A032095(n+1)%(n+2)` -/
def P405423034045554151.Spec : Prop :=
  ∀ n, P405423034045554151.a n = A067770 n

end A067770

/-! ## A067770.P8302733609236378387

`A057977(2*n)%(n+2)`
-/

namespace A067770.P8302733609236378387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057977 (2 * n)) (n + 2 : ℤ)

end

end A067770.P8302733609236378387

namespace A067770

/-- `A057977(2*n)%(n+2)` -/
def P8302733609236378387.Spec : Prop :=
  ∀ n, P8302733609236378387.a n = A067770 n

end A067770

/-! ## A067770.P3696330460430657844

`A089849(2*n+1)%(n+2)`
-/

namespace A067770.P3696330460430657844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089849 (2 * n + 1)) (n + 2 : ℤ)

end

end A067770.P3696330460430657844

namespace A067770

/-- `A089849(2*n+1)%(n+2)` -/
def P3696330460430657844.Spec : Prop :=
  ∀ n, P3696330460430657844.a n = A067770 n

end A067770

/-!
# A067771: Number of vertices in Sierpiński triangle of order n.

The programs for A067771, the canonical program `A067771.P15536293959813524838` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067771 has offset 0).

The definition of A067771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067771.P9635804291651961824

`3/2*(1+3^n)`
-/

namespace A067771.P9635804291651961824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (1 + 3 ^ n : ℚ)

end

end A067771.P9635804291651961824

namespace A067771

/-- `3/2*(1+3^n)` -/
def P9635804291651961824.Spec : Prop :=
  ∀ n, P9635804291651961824.a n = (A067771 n : ℚ)

theorem P9635804291651961824.correct : P9635804291651961824.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A067771, Nat.add_sub_cancel, A067771.P9635804291651961824.a, A067771.P15536293959813524838.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A067771, Nat.add_sub_cancel, A067771.P9635804291651961824.a, A067771.P15536293959813524838.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A067771

/-! ## A067771.P15536293959813524838

`3*a(n-1)-3` with `a(0)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067771

/-- `3*a(n-1)-3` -/
def P15536293959813524838.Spec : Prop :=
  ∀ n, P15536293959813524838.a n = A067771 n

theorem P15536293959813524838.correct : P15536293959813524838.Spec := by
  intro n
  simp only [A067771]

end A067771

/-! ## A067771.P8295990596703400715

`a(n-1)+3^n` with `a(0)=3`
-/

namespace A067771.P8295990596703400715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 3 ^ n

end

end A067771.P8295990596703400715

namespace A067771

/-- `a(n-1)+3^n` -/
def P8295990596703400715.Spec : Prop :=
  ∀ n, (P8295990596703400715.a n : ℤ) = A067771 n

end A067771

/-! ## A067771.P9081857293033057327

`A029858(n+1)+3`
-/

namespace A067771.P9081857293033057327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 1) + 3

end

end A067771.P9081857293033057327

namespace A067771

/-- `A029858(n+1)+3` -/
def P9081857293033057327.Spec : Prop :=
  ∀ n, P9081857293033057327.a n = A067771 n

end A067771

/-! ## A067771.P5783218834976975520

`A233774(2^n)`
-/

namespace A067771.P5783218834976975520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233774 (2 ^ n)

end

end A067771.P5783218834976975520

namespace A067771

/-- `A233774(2^n)` -/
def P5783218834976975520.Spec : Prop :=
  ∀ n, P5783218834976975520.a n = A067771 n

end A067771

/-! ## A067771.P8638633897811967817

`or(2, ∑[3^n])`
-/

namespace A067771.P8638633897811967817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067771.P8638633897811967817

namespace A067771

/-- `or(2, ∑[3^n])` -/
def P8638633897811967817.Spec : Prop :=
  ∀ n, (P8638633897811967817.a n : ℤ) = A067771 n

end A067771

/-! ## A067771.P3890734715267716110

`xor(2, ∑[3^n])`
-/

namespace A067771.P3890734715267716110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067771.P3890734715267716110

namespace A067771

/-- `xor(2, ∑[3^n])` -/
def P3890734715267716110.Spec : Prop :=
  ∀ n, (P3890734715267716110.a n : ℤ) = A067771 n

end A067771

/-! ## A067771.P14272399301496099826

`∑[lcm(3, (-3)^n)]`
-/

namespace A067771.P14272399301496099826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ((-3) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067771.P14272399301496099826

namespace A067771

/-- `∑[lcm(3, (-3)^n)]` -/
def P14272399301496099826.Spec : Prop :=
  ∀ n, (P14272399301496099826.a n : ℤ) = A067771 n

end A067771

/-! ## A067771.P15674979398620155078

`ogf((3-6x)/(1-4x+3x^2))`
-/

namespace A067771.P15674979398620155078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6] [1, -4, 3] n

end

end A067771.P15674979398620155078

namespace A067771

/-- `ogf((3-6x)/(1-4x+3x^2))` -/
def P15674979398620155078.Spec : Prop :=
  ∀ n, P15674979398620155078.a n = A067771 n

end A067771

/-! ## A067771.P15664855210206856659

`∑[3^round(1/acot(n))]`
-/

namespace A067771.P15664855210206856659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067771.P15664855210206856659

namespace A067771

/-- `∑[3^round(1/acot(n))]` -/
def P15664855210206856659.Spec : Prop :=
  ∀ n, P15664855210206856659.a n = (A067771 n : ℚ)

end A067771

/-! ## A067771.P16066413567229055396

`∑[3^gcd(n, ∏{d}[n, #])]`
-/

namespace A067771.P16066413567229055396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.gcd n (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067771.P16066413567229055396

namespace A067771

/-- `∑[3^gcd(n, ∏{d}[n, #])]` -/
def P16066413567229055396.Spec : Prop :=
  ∀ n, (P16066413567229055396.a n : ℤ) = A067771 n

end A067771

/-! ## A067771.P17857578520736822420

`∑[3^n^floor(atan(n))]`
-/

namespace A067771.P17857578520736822420
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067771.P17857578520736822420

namespace A067771

/-- `∑[3^n^floor(atan(n))]` -/
def P17857578520736822420.Spec : Prop :=
  ∀ n, P17857578520736822420.a n = (A067771 n : ℝ)

end A067771

/-! ## A067771.P17173041168703399032

`∑[a(n%2)^n]` with `a(0)=3, a(1)=3`
-/

namespace A067771.P17173041168703399032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n % 2) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067771.P17173041168703399032

namespace A067771

/-- `∑[a(n%2)^n]` -/
def P17173041168703399032.Spec : Prop :=
  ∀ n, (P17173041168703399032.a n : ℤ) = A067771 n

end A067771

/-! ## A067771.P815433597641658359

`∑[a(∑[(-1)^n])^n]` with `a(0)=3`
-/

namespace A067771.P815433597641658359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067771.P815433597641658359

namespace A067771

/-- `∑[a(∑[(-1)^n])^n]` -/
def P815433597641658359.Spec : Prop :=
  ∀ n, (P815433597641658359.a n : ℤ) = A067771 n

end A067771

/-! ## A067771.P15428344209975916833

`(1-a(n-1))/(2/3-1)` with `a(0)=3`
-/

namespace A067771.P15428344209975916833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (1 - a (n - 1)) / ((2 : ℚ) / 3 - 1)

end

end A067771.P15428344209975916833

namespace A067771

/-- `(1-a(n-1))/(2/3-1)` -/
def P15428344209975916833.Spec : Prop :=
  ∀ n, P15428344209975916833.a n = (A067771 n : ℚ)

end A067771

/-! ## A067771.P10008331950438773998

`∑[a(n-1)+lcm(2, a(n-1))]` with `a(0)=3, a(1)=3`
-/

namespace A067771.P10008331950438773998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 1) + Nat.lcm 2 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067771.P10008331950438773998

namespace A067771

/-- `∑[a(n-1)+lcm(2, a(n-1))]` -/
def P10008331950438773998.Spec : Prop :=
  ∀ n, (P10008331950438773998.a n : ℤ) = A067771 n

end A067771

/-! ## A067771.P13044020550627003861

`a(n-1)-3+a(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A067771.P13044020550627003861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - 3 + (a (n - 1) + a (n - 1))

end

end A067771.P13044020550627003861

namespace A067771

/-- `a(n-1)-3+a(n-1)+a(n-1)` -/
def P13044020550627003861.Spec : Prop :=
  ∀ n, P13044020550627003861.a n = A067771 n

theorem P13044020550627003861.correct : P13044020550627003861.Spec := by
  intro n
  simp only [A067771, Nat.add_sub_cancel, A067771.P13044020550627003861.a, A067771.P15536293959813524838.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067771

/-! ## A067771.P6505471870260539025

`floor(floor(a(n-1))-(3-a(n-1)-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A067771.P6505471870260539025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - (3 - a (n - 1) - a (n - 1))

end

end A067771.P6505471870260539025

namespace A067771

/-- `floor(floor(a(n-1))-(3-a(n-1)-a(n-1)))` -/
def P6505471870260539025.Spec : Prop :=
  ∀ n, P6505471870260539025.a n = A067771 n

theorem P6505471870260539025.correct : P6505471870260539025.Spec := by
  intro n
  simp only [A067771, Nat.add_sub_cancel, A067771.P6505471870260539025.a, A067771.P15536293959813524838.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A067771

/-! ## A067771.P13454782696483340216

`A115098(n+1)`
-/

namespace A067771.P13454782696483340216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 (n + 1)

end

end A067771.P13454782696483340216

namespace A067771

/-- `A115098(n+1)` -/
def P13454782696483340216.Spec : Prop :=
  ∀ n, P13454782696483340216.a n = A067771 n

end A067771

/-! ## A067771.P4643915281155493228

`lcm(3, A341463(n))`
-/

namespace A067771.P4643915281155493228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A341463 n)

end

end A067771.P4643915281155493228

namespace A067771

/-- `lcm(3, A341463(n))` -/
def P4643915281155493228.Spec : Prop :=
  ∀ n, (P4643915281155493228.a n : ℤ) = A067771 n

end A067771

/-!
# A067772: One half of the number of non-self-conjugate balanced partitions.

The programs for A067772, there is no canonical definition to state claims against.
-/

/-! ## A067772.P11528786769622744872

`A331262(n+1)/2`
-/

namespace A067772.P11528786769622744872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331262 (n + 1) : ℚ) / 2

end

end A067772.P11528786769622744872

/-! ## A067772.P7296063009224799427

`(A047993(n+1)-A000700(n+1))/2`
-/

namespace A067772.P7296063009224799427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047993 (n + 1) - A000700 (n + 1) : ℚ) / 2

end

end A067772.P7296063009224799427

/-! ## A067772.P13819656801220093237

`A000701(n+1)-A064173(n+1)`
-/

namespace A067772.P13819656801220093237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (n + 1) - A064173 (n + 1)

end

end A067772.P13819656801220093237

/-! ## A067772.P6291482704887215170

`A064174(n+1)-A046682(n+1)`
-/

namespace A067772.P6291482704887215170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1) - A046682 (n + 1)

end

end A067772.P6291482704887215170

/-! ## A067772.P9369054925183156699

`A000701(n+1)-(A064174(n+1)-A047993(n+1))`
-/

namespace A067772.P9369054925183156699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (n + 1) - (A064174 (n + 1) - A047993 (n + 1))

end

end A067772.P9369054925183156699

/-! ## A067772.P13480923746389445539

`A000701(n+1)-(A000041(n+1)-A064174(n+1))`
-/

namespace A067772.P13480923746389445539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (n + 1) - (A000041 (n + 1) - A064174 (n + 1))

end

end A067772.P13480923746389445539

/-! ## A067772.P10241864977671786827

`A000701(n+1)-(A000041(n+1)-A047993(n+1))/2`
-/

namespace A067772.P10241864977671786827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000701 (n + 1) : ℚ) - (A000041 (n + 1) - A047993 (n + 1) : ℚ) / 2

end

end A067772.P10241864977671786827

/-! ## A067772.P16968573273408517563

`A064174(n+1)%A046682(A008619(2*n))`
-/

namespace A067772.P16968573273408517563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064174 (n + 1)) (A046682 (A008619 (2 * n)).toNat)

end

end A067772.P16968573273408517563

/-! ## A067772.P13656717837968124317

`A014682(A331262(n+1))`
-/

namespace A067772.P13656717837968124317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A331262 (n + 1)).toNat

end

end A067772.P13656717837968124317

/-!
# A067773: a(n) is the unique positive integer m which has a self-conjugate partition whose parts are the first n primes.

The programs for A067773, there is no canonical definition to state claims against.
-/

/-! ## A067773.P6147887538923262934

`A014342(n+1)+A001747(n+2)-A023626(n+2)`
-/

namespace A067773.P6147887538923262934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014342 (n + 1) + (A001747 (n + 2) - A023626 (n + 2))

end

end A067773.P6147887538923262934

/-! ## A067773.P7635106895250779139

`Δ[A023626(n+2)-2*A000040(n+1)]`
-/

namespace A067773.P7635106895250779139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023626 (n + 2) - 2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067773.P7635106895250779139

/-! ## A067773.P14006810376824870228

`Δ[A340991(A133263(n+1))]`
-/

namespace A067773.P14006810376824870228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (A133263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067773.P14006810376824870228

/-! ## A067773.P15683590814529961457

`Δ[A340991(A000096(n)+3)]`
-/

namespace A067773.P15683590814529961457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (A000096 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067773.P15683590814529961457

/-! ## A067773.P12734842282001410293

`Δ[A340991(A000217(n+1)+2)]`
-/

namespace A067773.P12734842282001410293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (A000217 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067773.P12734842282001410293

/-!
# A067774: Primes p such that p+2 is not a prime.

The programs for A067774, the canonical program `A067774.P9573617290434745889` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067774 has offset 1).

The definition of A067774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8368 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067774.P363312317781713682

`A141515(n+1)+1`
-/

namespace A067774.P363312317781713682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141515 (n + 1) + 1

end

end A067774.P363312317781713682

namespace A067774

/-- `A141515(n+1)+1` -/
def P363312317781713682.Spec : Prop :=
  ∀ n, P363312317781713682.a n = A067774 (n + 1)

end A067774

/-! ## A067774.P4995769089698324556

`A107986(n+1)-2`
-/

namespace A067774.P4995769089698324556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 1) - 2

end

end A067774.P4995769089698324556

namespace A067774

/-- `A107986(n+1)-2` -/
def P4995769089698324556.Spec : Prop :=
  ∀ n, P4995769089698324556.a n = A067774 (n + 1)

end A067774

/-! ## A067774.P4903849597722523972

`∪[A007510(n+1), A002476(n+1)]`
-/

namespace A067774.P4903849597722523972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067774.P4903849597722523972

namespace A067774

/-- `∪[A007510(n+1), A002476(n+1)]` -/
def P4903849597722523972.Spec : Prop :=
  ∀ n, (P4903849597722523972.a n : ℤ) = A067774 (n + 1)

end A067774

/-! ## A067774.P2946838405400925979

`∪[A083370(n+1), A045375(n+1)]`
-/

namespace A067774.P2946838405400925979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067774.P2946838405400925979

namespace A067774

/-- `∪[A083370(n+1), A045375(n+1)]` -/
def P2946838405400925979.Spec : Prop :=
  ∀ n, (P2946838405400925979.a n : ℤ) = A067774 (n + 1)

end A067774

/-! ## A067774.P9573617290434745889

`p?[A353464(n+2)+n]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067774

/-- `p?[A353464(n+2)+n]` -/
def P9573617290434745889.Spec : Prop :=
  ∀ n, P9573617290434745889.a n = A067774 (n + 1)

theorem P9573617290434745889.correct : P9573617290434745889.Spec := by
  intro n
  simp only [A067774, Nat.add_sub_cancel]

end A067774

/-! ## A067774.P8225283520573141186

`p?[A100317(n+1)-1]`
-/

namespace A067774.P8225283520573141186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067774.P8225283520573141186

namespace A067774

/-- `p?[A100317(n+1)-1]` -/
def P8225283520573141186.Spec : Prop :=
  ∀ n, P8225283520573141186.a n = A067774 (n + 1)

end A067774

/-! ## A067774.P6242704986122976490

`p?[A264720(n+1)-1]`
-/

namespace A067774.P6242704986122976490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067774.P6242704986122976490

namespace A067774

/-- `p?[A264720(n+1)-1]` -/
def P6242704986122976490.Spec : Prop :=
  ∀ n, P6242704986122976490.a n = A067774 (n + 1)

end A067774

/-! ## A067774.P12380668595613157544

`p?[n-A278500(n+1)]`
-/

namespace A067774.P12380668595613157544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A278500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067774.P12380668595613157544

namespace A067774

/-- `p?[n-A278500(n+1)]` -/
def P12380668595613157544.Spec : Prop :=
  ∀ n, P12380668595613157544.a n = A067774 (n + 1)

end A067774

/-! ## A067774.P749512237630225265

`p?[A002808(n+1)-2]`
-/

namespace A067774.P749512237630225265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067774.P749512237630225265

namespace A067774

/-- `p?[A002808(n+1)-2]` -/
def P749512237630225265.Spec : Prop :=
  ∀ n, P749512237630225265.a n = A067774 (n + 1)

end A067774

/-! ## A067774.P9142069680227459541

`p?[A018252(n+1)-2]`
-/

namespace A067774.P9142069680227459541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067774.P9142069680227459541

namespace A067774

/-- `p?[A018252(n+1)-2]` -/
def P9142069680227459541.Spec : Prop :=
  ∀ n, P9142069680227459541.a n = A067774 (n + 1)

end A067774

/-! ## A067774.P8551530301948823800

`p?[A141468(n+1)-2]`
-/

namespace A067774.P8551530301948823800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067774.P8551530301948823800

namespace A067774

/-- `p?[A141468(n+1)-2]` -/
def P8551530301948823800.Spec : Prop :=
  ∀ n, P8551530301948823800.a n = A067774 (n + 1)

end A067774

/-! ## A067774.P1356441843356472840

`A060308(A104279(n+1))`
-/

namespace A067774.P1356441843356472840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A104279 (n + 1)).toNat

end

end A067774.P1356441843356472840

namespace A067774

/-- `A060308(A104279(n+1))` -/
def P1356441843356472840.Spec : Prop :=
  ∀ n, P1356441843356472840.a n = A067774 (n + 1)

end A067774

/-! ## A067774.P151922985928581980

`eq[1, A175663(n+1)]+1`
-/

namespace A067774.P151922985928581980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067774.P151922985928581980

namespace A067774

/-- `eq[1, A175663(n+1)]+1` -/
def P151922985928581980.Spec : Prop :=
  ∀ n, (P151922985928581980.a n : ℤ) = A067774 (n + 1)

end A067774

/-! ## A067774.P7521225979373918701

`eq[A082023(n), A096500(n+1)]`
-/

namespace A067774.P7521225979373918701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067774.P7521225979373918701

namespace A067774

/-- `eq[A082023(n), A096500(n+1)]` -/
def P7521225979373918701.Spec : Prop :=
  ∀ n, (P7521225979373918701.a n : ℤ) = A067774 (n + 1)

end A067774

/-! ## A067774.P17964908219384430148

`p?[comp[p?[2*n+1]-2]]`
-/

namespace A067774.P17964908219384430148
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067774.P17964908219384430148

namespace A067774

/-- `p?[comp[p?[2*n+1]-2]]` -/
def P17964908219384430148.Spec : Prop :=
  ∀ n, (P17964908219384430148.a n : ℤ) = A067774 (n + 1)

end A067774

/-! ## A067774.P16030756984170326989

`p?[comp[p?[n+1+n]]-2]`
-/

namespace A067774.P16030756984170326989
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067774.P16030756984170326989

namespace A067774

/-- `p?[comp[p?[n+1+n]]-2]` -/
def P16030756984170326989.Spec : Prop :=
  ∀ n, P16030756984170326989.a n = A067774 (n + 1)

end A067774

/-! ## A067774.P12917126162271374714

`p?[Δ[A051349(n)]-2]`
-/

namespace A067774.P12917126162271374714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067774.P12917126162271374714

namespace A067774

/-- `p?[Δ[A051349(n)]-2]` -/
def P12917126162271374714.Spec : Prop :=
  ∀ n, P12917126162271374714.a n = A067774 (n + 1)

end A067774

/-! ## A067774.P3600877297832914457

`p?[comp[A040976(n+1)]]`
-/

namespace A067774.P3600877297832914457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067774.P3600877297832914457

namespace A067774

/-- `p?[comp[A040976(n+1)]]` -/
def P3600877297832914457.Spec : Prop :=
  ∀ n, (P3600877297832914457.a n : ℤ) = A067774 (n + 1)

end A067774

/-! ## A067774.P907341554617343480

`p?[comp[A162800(n)-1]]`
-/

namespace A067774.P907341554617343480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067774.P907341554617343480

namespace A067774

/-- `p?[comp[A162800(n)-1]]` -/
def P907341554617343480.Spec : Prop :=
  ∀ n, (P907341554617343480.a n : ℤ) = A067774 (n + 1)

end A067774

/-! ## A067774.P1563961346798231429

`p?[comp[A020484(n)-2]]`
-/

namespace A067774.P1563961346798231429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 n - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067774.P1563961346798231429

namespace A067774

/-- `p?[comp[A020484(n)-2]]` -/
def P1563961346798231429.Spec : Prop :=
  ∀ n, (P1563961346798231429.a n : ℤ) = A067774 (n + 1)

end A067774

/-!
# A067775: Primes p such that p + 4 is composite.

The programs for A067775, the canonical program `A067775.P8759455663766693638` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067775 has offset 1).

The definition of A067775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5682 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067775.P7170150667092897801

`A141427(n+1)+1`
-/

namespace A067775.P7170150667092897801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141427 (n + 1) + 1

end

end A067775.P7170150667092897801

namespace A067775

/-- `A141427(n+1)+1` -/
def P7170150667092897801.Spec : Prop :=
  ∀ n, P7170150667092897801.a n = A067775 (n + 1)

end A067775

/-! ## A067775.P4978758885932960972

`A164383(n+1)-4`
-/

namespace A067775.P4978758885932960972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164383 (n + 1) - 4

end

end A067775.P4978758885932960972

namespace A067775

/-- `A164383(n+1)-4` -/
def P4978758885932960972.Spec : Prop :=
  ∀ n, P4978758885932960972.a n = A067775 (n + 1)

end A067775

/-! ## A067775.P7124848734200545001

`∪[A003627(n+1), A083370(n+1)]`
-/

namespace A067775.P7124848734200545001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067775.P7124848734200545001

namespace A067775

/-- `∪[A003627(n+1), A083370(n+1)]` -/
def P7124848734200545001.Spec : Prop :=
  ∀ n, (P7124848734200545001.a n : ℤ) = A067775 (n + 1)

end A067775

/-! ## A067775.P15522365183102910811

`∪[A083370(n+1), A111166(n+1)]`
-/

namespace A067775.P15522365183102910811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A067775.P15522365183102910811

namespace A067775

/-- `∪[A083370(n+1), A111166(n+1)]` -/
def P15522365183102910811.Spec : Prop :=
  ∀ n, (P15522365183102910811.a n : ℤ) = A067775 (n + 1)

end A067775

/-! ## A067775.P8759455663766693638

`p?[A156037(n+1)+A005171(A175221(n+1))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067775

/-- `p?[A156037(n+1)+A005171(A175221(n+1))]` -/
def P8759455663766693638.Spec : Prop :=
  ∀ n, P8759455663766693638.a n = A067775 (n + 1)

theorem P8759455663766693638.correct : P8759455663766693638.Spec := by
  intro n
  simp only [A067775, Nat.add_sub_cancel]

end A067775

/-! ## A067775.P4099654556220962002

`p?[A018252(n+1)-4]`
-/

namespace A067775.P4099654556220962002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067775.P4099654556220962002

namespace A067775

/-- `p?[A018252(n+1)-4]` -/
def P4099654556220962002.Spec : Prop :=
  ∀ n, P4099654556220962002.a n = A067775 (n + 1)

end A067775

/-! ## A067775.P484929122299735460

`p?[comp[p?[2*n+1]-4]]`
-/

namespace A067775.P484929122299735460
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067775.P484929122299735460

namespace A067775

/-- `p?[comp[p?[2*n+1]-4]]` -/
def P484929122299735460.Spec : Prop :=
  ∀ n, (P484929122299735460.a n : ℤ) = A067775 (n + 1)

end A067775

/-! ## A067775.P8294377678908406255

`p?[∑[A073783(n+1)]]`
-/

namespace A067775.P8294377678908406255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073783 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067775.P8294377678908406255

namespace A067775

/-- `p?[∑[A073783(n+1)]]` -/
def P8294377678908406255.Spec : Prop :=
  ∀ n, P8294377678908406255.a n = A067775 (n + 1)

end A067775

/-! ## A067775.P6456663476417867749

`p?[∑[A065310(n+2)]]`
-/

namespace A067775.P6456663476417867749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067775.P6456663476417867749

namespace A067775

/-- `p?[∑[A065310(n+2)]]` -/
def P6456663476417867749.Spec : Prop :=
  ∀ n, P6456663476417867749.a n = A067775 (n + 1)

end A067775

/-! ## A067775.P15609983464525655368

`p?[∑[A054546(n+3)]]`
-/

namespace A067775.P15609983464525655368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067775.P15609983464525655368

namespace A067775

/-- `p?[∑[A054546(n+3)]]` -/
def P15609983464525655368.Spec : Prop :=
  ∀ n, P15609983464525655368.a n = A067775 (n + 1)

end A067775

/-! ## A067775.P18096109987498175258

`p?[A164028(n+1)-1]`
-/

namespace A067775.P18096109987498175258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067775.P18096109987498175258

namespace A067775

/-- `p?[A164028(n+1)-1]` -/
def P18096109987498175258.Spec : Prop :=
  ∀ n, P18096109987498175258.a n = A067775 (n + 1)

end A067775

/-! ## A067775.P17536932873997345253

`p?[A175553(n+1)-2]`
-/

namespace A067775.P17536932873997345253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175553 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067775.P17536932873997345253

namespace A067775

/-- `p?[A175553(n+1)-2]` -/
def P17536932873997345253.Spec : Prop :=
  ∀ n, P17536932873997345253.a n = A067775 (n + 1)

end A067775

/-! ## A067775.P11160483689063008252

`p?[A179620(n+1)-2]`
-/

namespace A067775.P11160483689063008252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179620 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067775.P11160483689063008252

namespace A067775

/-- `p?[A179620(n+1)-2]` -/
def P11160483689063008252.Spec : Prop :=
  ∀ n, P11160483689063008252.a n = A067775 (n + 1)

end A067775

/-! ## A067775.P4457361062426031440

`p?[comp[A040976(n+1)-2]]`
-/

namespace A067775.P4457361062426031440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067775.P4457361062426031440

namespace A067775

/-- `p?[comp[A040976(n+1)-2]]` -/
def P4457361062426031440.Spec : Prop :=
  ∀ n, (P4457361062426031440.a n : ℤ) = A067775 (n + 1)

end A067775

/-! ## A067775.P12867372802522204835

`p?[comp[A000040(n+1)-4]]`
-/

namespace A067775.P12867372802522204835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067775.P12867372802522204835

namespace A067775

/-- `p?[comp[A000040(n+1)-4]]` -/
def P12867372802522204835.Spec : Prop :=
  ∀ n, (P12867372802522204835.a n : ℤ) = A067775 (n + 1)

end A067775

/-! ## A067775.P14347119174812919577

`p?[comp[A006530(n+1)-4]]`
-/

namespace A067775.P14347119174812919577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067775.P14347119174812919577

namespace A067775

/-- `p?[comp[A006530(n+1)-4]]` -/
def P14347119174812919577.Spec : Prop :=
  ∀ n, (P14347119174812919577.a n : ℤ) = A067775 (n + 1)

end A067775

/-! ## A067775.P16384665793159116050

`p?[comp[A020639(n+1)-4]]`
-/

namespace A067775.P16384665793159116050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067775.P16384665793159116050

namespace A067775

/-- `p?[comp[A020639(n+1)-4]]` -/
def P16384665793159116050.Spec : Prop :=
  ∀ n, (P16384665793159116050.a n : ℤ) = A067775 (n + 1)

end A067775

/-! ## A067775.P6157602787040116186

`p?[∑[abs(Δ[A018252(n+2)])]]`
-/

namespace A067775.P6157602787040116186
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f3 (n + 1) - f3 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067775.P6157602787040116186

namespace A067775

/-- `p?[∑[abs(Δ[A018252(n+2)])]]` -/
def P6157602787040116186.Spec : Prop :=
  ∀ n, P6157602787040116186.a n = A067775 (n + 1)

end A067775

/-! ## A067775.P17130527494562826924

`p?[abs(3-lt[2, A000005(n+1)])]`
-/

namespace A067775.P17130527494562826924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067775.P17130527494562826924

namespace A067775

/-- `p?[abs(3-lt[2, A000005(n+1)])]` -/
def P17130527494562826924.Spec : Prop :=
  ∀ n, P17130527494562826924.a n = A067775 (n + 1)

end A067775

/-!
# A067777: Numbers k such that (2*k)! * B(6*k) is an integer where B(k) are the Bernoulli numbers B(1)=-1/2 B(2)=1/6 B(4)=-1/30... B(2*m+1)=0 m>1.

The programs for A067777, the canonical program `A067777.P5898996878864800961` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067777 has offset 1).

The definition of A067777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067777.P5898996878864800961

`eq[A080339(2*n+1)+A080339(3*n+1), A085090(3*n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067777

/-- `eq[A080339(2*n+1)+A080339(3*n+1), A085090(3*n+1)]` -/
def P5898996878864800961.Spec : Prop :=
  ∀ n, (P5898996878864800961.a n : ℤ) = A067777 (n + 1)

theorem P5898996878864800961.correct : P5898996878864800961.Spec := by
  intro n
  simp only [A067777, Nat.add_sub_cancel]

end A067777

/-! ## A067777.P12633404853530087326

`eq[A080545(2*n+1)+A080545(3*n+1), A085090(3*n+1)]`
-/

namespace A067777.P12633404853530087326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (2 * n + 1) + A080545 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067777.P12633404853530087326

namespace A067777

/-- `eq[A080545(2*n+1)+A080545(3*n+1), A085090(3*n+1)]` -/
def P12633404853530087326.Spec : Prop :=
  ∀ n, (P12633404853530087326.a n : ℤ) = A067777 (n + 1)

end A067777

/-! ## A067777.P7386912621064841789

`eq[A080339(2*n+1)+A080339(3*n+1), A283362(3*n+1)]`
-/

namespace A067777.P7386912621064841789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (2 * n + 1) + A080339 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283362 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067777.P7386912621064841789

namespace A067777

/-- `eq[A080339(2*n+1)+A080339(3*n+1), A283362(3*n+1)]` -/
def P7386912621064841789.Spec : Prop :=
  ∀ n, (P7386912621064841789.a n : ℤ) = A067777 (n + 1)

end A067777

/-! ## A067777.P2592291700869071607

`eq[A080545(2*n+1)+A080545(3*n+1), A283362(3*n+1)]`
-/

namespace A067777.P2592291700869071607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (2 * n + 1) + A080545 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283362 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067777.P2592291700869071607

namespace A067777

/-- `eq[A080545(2*n+1)+A080545(3*n+1), A283362(3*n+1)]` -/
def P2592291700869071607.Spec : Prop :=
  ∀ n, (P2592291700869071607.a n : ℤ) = A067777 (n + 1)

end A067777

/-! ## A067777.P8788378745275886791

`eq[A324642(2*n+1)+A324642(3*n+1), A085090(3*n+1)]`
-/

namespace A067777.P8788378745275886791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324642 (2 * n + 1) + A324642 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067777.P8788378745275886791

namespace A067777

/-- `eq[A324642(2*n+1)+A324642(3*n+1), A085090(3*n+1)]` -/
def P8788378745275886791.Spec : Prop :=
  ∀ n, (P8788378745275886791.a n : ℤ) = A067777 (n + 1)

end A067777

/-! ## A067777.P17776686316485497805

`eq[A324642(2*n+1)+A324642(3*n+1), A283362(3*n+1)]`
-/

namespace A067777.P17776686316485497805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324642 (2 * n + 1) + A324642 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283362 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067777.P17776686316485497805

namespace A067777

/-- `eq[A324642(2*n+1)+A324642(3*n+1), A283362(3*n+1)]` -/
def P17776686316485497805.Spec : Prop :=
  ∀ n, (P17776686316485497805.a n : ℤ) = A067777 (n + 1)

end A067777

/-! ## A067777.P2775603982953358398

`eq[A061397(2*n+1)+A061397(3*n+1), A283616(3*n+1)]`
-/

namespace A067777.P2775603982953358398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (2 * n + 1) + A061397 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283616 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067777.P2775603982953358398

namespace A067777

/-- `eq[A061397(2*n+1)+A061397(3*n+1), A283616(3*n+1)]` -/
def P2775603982953358398.Spec : Prop :=
  ∀ n, (P2775603982953358398.a n : ℤ) = A067777 (n + 1)

end A067777

/-! ## A067777.P12756959982068679095

`lt[A166333(A008458(n)), 2*n]`
-/

namespace A067777.P12756959982068679095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A008458 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067777.P12756959982068679095

namespace A067777

/-- `lt[A166333(A008458(n)), 2*n]` -/
def P12756959982068679095.Spec : Prop :=
  ∀ n, (P12756959982068679095.a n : ℤ) = A067777 (n + 1)

end A067777

/-! ## A067777.P3019367115666843409

`lt[A166333(A008458(n))+1, A004273(n)]`
-/

namespace A067777.P3019367115666843409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A008458 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067777.P3019367115666843409

namespace A067777

/-- `lt[A166333(A008458(n))+1, A004273(n)]` -/
def P3019367115666843409.Spec : Prop :=
  ∀ n, (P3019367115666843409.a n : ℤ) = A067777 (n + 1)

end A067777

/-! ## A067777.P17261898049891501347

`lt[A166333(A008458(n))+2, A004280(n+1)]`
-/

namespace A067777.P17261898049891501347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A008458 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067777.P17261898049891501347

namespace A067777

/-- `lt[A166333(A008458(n))+2, A004280(n+1)]` -/
def P17261898049891501347.Spec : Prop :=
  ∀ n, (P17261898049891501347.a n : ℤ) = A067777 (n + 1)

end A067777

/-!
# A067778: Numbers k such that gcd(k, numerator(B(2*k))) is not squarefree where B(2*k) are the Bernoulli numbers.

The programs for A067778, there is no canonical definition to state claims against.
-/

/-! ## A067778.P11275608489980002410

`lt[1, A294875(A300711(n+1))]+1`
-/

namespace A067778.P11275608489980002410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294875 (A300711 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067778.P11275608489980002410

/-!
# A067780: Numbers n such that sigma(n)/phi(n) is prime.

The programs for A067780, there is no canonical definition to state claims against.
-/

/-! ## A067780.P676422178245042438

`A114151(∑[n])+A020492(2*n+1)`
-/

namespace A067780.P676422178245042438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114151 (∑ j ∈ Finset.range (n + 1), f1 j) + A020492 (2 * n + 1)

end

end A067780.P676422178245042438

/-! ## A067780.P16419198911493293890

`A015765(∏{e}[A000010(4^n), #+1]+1)`
-/

namespace A067780.P16419198911493293890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015765 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) + 1)

end

end A067780.P16419198911493293890

/-! ## A067780.P10824734649952573842

`A020492(2*n+A020639(4^n+2)-1)`
-/

namespace A067780.P10824734649952573842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 ((2 * n : ℤ) + (A020639 (4 ^ n + 2) - 1)).toNat

end

end A067780.P10824734649952573842

/-! ## A067780.P9043611257637034122

`A121373(∑[(4*n+1)*(n+1)²])+A020492(2*n+1)`
-/

namespace A067780.P9043611257637034122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 1) * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (∑ j ∈ Finset.range (n + 1), f1 j) + A020492 (2 * n + 1)

end

end A067780.P9043611257637034122

/-! ## A067780.P9361769055590275779

`A015769(lt[A007217(n), A238352(n)])`
-/

namespace A067780.P9361769055590275779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015769 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A067780.P9361769055590275779

/-!
# A067781: Numbers k such that phi(k) and sigma(k) are both perfect squares.

The programs for A067781, there is no canonical definition to state claims against.
-/

/-! ## A067781.P12718763316986823866

`∩[A011257(n+1), A043293(n+1)]`
-/

namespace A067781.P12718763316986823866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067781.P12718763316986823866

/-! ## A067781.P7460962215136558639

`∩[A006532(n+1), A011257(n+1)]`
-/

namespace A067781.P7460962215136558639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067781.P7460962215136558639

/-! ## A067781.P1624890569739211126

`∩[A011257(n+1), A064710(n+1)]`
-/

namespace A067781.P1624890569739211126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067781.P1624890569739211126

/-!
# A067783: Numbers k such that prime(k+1)^2 == prime(k)^2 (mod k).

The programs for A067783, there is no canonical definition to state claims against.
-/

/-! ## A067783.P1100295428204506046

`record[gcd(n+1, A069482(n+1))]`
-/

namespace A067783.P1100295428204506046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A069482 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067783.P1100295428204506046

/-! ## A067783.P5303684569339624125

`record[A255054(n)*A275215(n+2)]`
-/

namespace A067783.P5303684569339624125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255054 n * A275215 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067783.P5303684569339624125

/-!
# A067784: Numbers k such that prime(k+1)^4 == prime(k)^4 (mod k).

The programs for A067784, there is no canonical definition to state claims against.
-/

/-! ## A067784.P6327717761051176155

`record[gcd(n+1, A276963(n+1))]`
-/

namespace A067784.P6327717761051176155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A276963 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067784.P6327717761051176155

/-!
# A067786: Numbers n such that phi(n) = 2*pi(n) where pi(n) = A000720(n) and phi(n) = A000010(n).

The programs for A067786, there is no canonical definition to state claims against.
-/

/-! ## A067786.P10466594651813667347

`eq[A000720(n+1), A037228(n+1)]+1`
-/

namespace A067786.P10466594651813667347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067786.P10466594651813667347

/-! ## A067786.P1147951210399572028

`eq[2*A230980(n+1), A000010(n+1)]+1`
-/

namespace A067786.P1147951210399572028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067786.P1147951210399572028

/-! ## A067786.P14505385548980022621

`eq[A037228(A028310(n)), A230980(n)]`
-/

namespace A067786.P14505385548980022621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067786.P14505385548980022621

/-! ## A067786.P10237438134355510897

`A020725(eq[A000720(n+1), A037228(n+1)])`
-/

namespace A067786.P10237438134355510897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067786.P10237438134355510897

/-! ## A067786.P15832586065287124186

`eq[2*(A095117(n)-n), A000010(A028310(n))]`
-/

namespace A067786.P15832586065287124186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A095117 n - (n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067786.P15832586065287124186

/-!
# A067787: Numbers n such that the number of primes not exceeding sigma(n) equals phi(n), i.e., pi(sigma(n)) = phi(n).

The programs for A067787, there is no canonical definition to state claims against.
-/

/-! ## A067787.P17247085838007051711

`eq[A000010(n+1), A070803(n+1)]+1`
-/

namespace A067787.P17247085838007051711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067787.P17247085838007051711

/-! ## A067787.P18217886018001085285

`eq[A109606(n+1)+1, A070803(n+1)]+1`
-/

namespace A067787.P18217886018001085285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067787.P18217886018001085285

/-! ## A067787.P11451784385179390027

`eq[A319998(2*(n+1))/2, A070803(n+1)]+1`
-/

namespace A067787.P11451784385179390027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319998 (2 * (n + 1)) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A067787.P11451784385179390027

/-! ## A067787.P18184376532275502485

`eq[A000010(n+1), A000720(A000203(n+1))]+1`
-/

namespace A067787.P18184376532275502485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067787.P18184376532275502485

/-!
# A067790: Numbers n such that n and prime(n) end with the same digit.

The programs for A067790, the canonical program `A067790.P737613375994059207` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067790 has offset 1).

The definition of A067790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067790.P6148657753592183502

`eq[10, gcd(10, n-A008578(n+1))]`
-/

namespace A067790.P6148657753592183502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 ((n : ℤ) - A008578 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067790.P6148657753592183502

namespace A067790

/-- `eq[10, gcd(10, n-A008578(n+1))]` -/
def P6148657753592183502.Spec : Prop :=
  ∀ n, (P6148657753592183502.a n : ℤ) = A067790 (n + 1)

end A067790

/-! ## A067790.P737613375994059207

`eq[A007652(A028310(n)), A010879(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067790

/-- `eq[A007652(A028310(n)), A010879(n)]` -/
def P737613375994059207.Spec : Prop :=
  ∀ n, (P737613375994059207.a n : ℤ) = A067790 (n + 1)

theorem P737613375994059207.correct : P737613375994059207.Spec := by
  intro n
  simp only [A067790, Nat.add_sub_cancel]

end A067790

/-! ## A067790.P734082491679360388

`A000720(A085598(n+1))`
-/

namespace A067790.P734082491679360388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A085598 (n + 1)).toNat

end

end A067790.P734082491679360388

namespace A067790

/-- `A000720(A085598(n+1))` -/
def P734082491679360388.Spec : Prop :=
  ∀ n, P734082491679360388.a n = A067790 (n + 1)

end A067790

/-! ## A067790.P13060933531622371796

`A000720(p?[A018252(10*(n+1))+1])`
-/

namespace A067790.P13060933531622371796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (10 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A067790.P13060933531622371796

namespace A067790

/-- `A000720(p?[A018252(10*(n+1))+1])` -/
def P13060933531622371796.Spec : Prop :=
  ∀ n, P13060933531622371796.a n = A067790 (n + 1)

end A067790

/-! ## A067790.P4981538599231461854

`A061395(p?[A018252(10*(n+1))+1])`
-/

namespace A067790.P4981538599231461854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (10 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A067790.P4981538599231461854

namespace A067790

/-- `A061395(p?[A018252(10*(n+1))+1])` -/
def P4981538599231461854.Spec : Prop :=
  ∀ n, P4981538599231461854.a n = A067790 (n + 1)

end A067790

/-! ## A067790.P10157885274579676745

`A066328(p?[A018252(10*(n+1))+1])`
-/

namespace A067790.P10157885274579676745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (10 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A067790.P10157885274579676745

namespace A067790

/-- `A066328(p?[A018252(10*(n+1))+1])` -/
def P10157885274579676745.Spec : Prop :=
  ∀ n, P10157885274579676745.a n = A067790 (n + 1)

end A067790

/-! ## A067790.P15762780712602362899

`A297109(p?[A018252(10*(n+1))+1])`
-/

namespace A067790.P15762780712602362899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (10 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A067790.P15762780712602362899

namespace A067790

/-- `A297109(p?[A018252(10*(n+1))+1])` -/
def P15762780712602362899.Spec : Prop :=
  ∀ n, P15762780712602362899.a n = A067790 (n + 1)

end A067790

/-! ## A067790.P2241810724738135843

`eq[9, A010879(A162177(n+1))]`
-/

namespace A067790.P2241810724738135843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A162177 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067790.P2241810724738135843

namespace A067790

/-- `eq[9, A010879(A162177(n+1))]` -/
def P2241810724738135843.Spec : Prop :=
  ∀ n, (P2241810724738135843.a n : ℤ) = A067790 (n + 1)

end A067790

/-! ## A067790.P2008347490438369553

`A000720(p?[A072668(10*(n+1))])`
-/

namespace A067790.P2008347490438369553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (10 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A067790.P2008347490438369553

namespace A067790

/-- `A000720(p?[A072668(10*(n+1))])` -/
def P2008347490438369553.Spec : Prop :=
  ∀ n, P2008347490438369553.a n = A067790 (n + 1)

end A067790

/-! ## A067790.P2713156010838129474

`A061395(p?[A072668(10*(n+1))])`
-/

namespace A067790.P2713156010838129474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (10 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A067790.P2713156010838129474

namespace A067790

/-- `A061395(p?[A072668(10*(n+1))])` -/
def P2713156010838129474.Spec : Prop :=
  ∀ n, P2713156010838129474.a n = A067790 (n + 1)

end A067790

/-! ## A067790.P12134377788696901972

`A000720(p?[A079696(A017377(n))])`
-/

namespace A067790.P12134377788696901972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (A017377 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A067790.P12134377788696901972

namespace A067790

/-- `A000720(p?[A079696(A017377(n))])` -/
def P12134377788696901972.Spec : Prop :=
  ∀ n, P12134377788696901972.a n = A067790 (n + 1)

end A067790

/-! ## A067790.P3376227211416768710

`A066328(p?[A079696(A017377(n))])`
-/

namespace A067790.P3376227211416768710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (A017377 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A067790.P3376227211416768710

namespace A067790

/-- `A066328(p?[A079696(A017377(n))])` -/
def P3376227211416768710.Spec : Prop :=
  ∀ n, P3376227211416768710.a n = A067790 (n + 1)

end A067790

/-! ## A067790.P12007177316576945766

`A003963(p?[A072668(10*(n+1))])`
-/

namespace A067790.P12007177316576945766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (10 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A067790.P12007177316576945766

namespace A067790

/-- `A003963(p?[A072668(10*(n+1))])` -/
def P12007177316576945766.Spec : Prop :=
  ∀ n, P12007177316576945766.a n = A067790 (n + 1)

end A067790

/-! ## A067790.P1785104178515220035

`eq[A251984(A000040(n+1)), A251984(n+1)]+1`
-/

namespace A067790.P1785104178515220035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067790.P1785104178515220035

namespace A067790

/-- `eq[A251984(A000040(n+1)), A251984(n+1)]+1` -/
def P1785104178515220035.Spec : Prop :=
  ∀ n, (P1785104178515220035.a n : ℤ) = A067790 (n + 1)

end A067790

/-! ## A067790.P5237764363030877571

`eq[A274206(A000040(n+1)), A274206(n+1)]+1`
-/

namespace A067790.P5237764363030877571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067790.P5237764363030877571

namespace A067790

/-- `eq[A274206(A000040(n+1)), A274206(n+1)]+1` -/
def P5237764363030877571.Spec : Prop :=
  ∀ n, (P5237764363030877571.a n : ℤ) = A067790 (n + 1)

end A067790

/-!
# A067792: a(n) is the least prime >= sigma(n).

The programs for A067792, the canonical program `A067792.P11711498623631889729` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067792 has offset 1).

The definition of A067792 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A067792.P11711498623631889729

`A007918(A000203(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067792

/-- `A007918(A000203(n+1))` -/
def P11711498623631889729.Spec : Prop :=
  ∀ n, P11711498623631889729.a n = A067792 (n + 1)

theorem P11711498623631889729.correct : P11711498623631889729.Spec := by
  intro n
  simp only [A067792, Nat.add_sub_cancel]

end A067792

/-! ## A067792.P3063931802681178766

`A151800(∑{d}[n+1, #]-1)`
-/

namespace A067792.P3063931802681178766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ d ∈ Nat.divisors (f1 n), d - 1)

end

end A067792.P3063931802681178766

namespace A067792

/-- `A151800(∑{d}[n+1, #]-1)` -/
def P3063931802681178766.Spec : Prop :=
  ∀ n, P3063931802681178766.a n = A067792 (n + 1)

end A067792

/-! ## A067792.P10280419162517674822

`A151800(A039653(n+1))`
-/

namespace A067792.P10280419162517674822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A039653 (n + 1)).toNat

end

end A067792.P10280419162517674822

namespace A067792

/-- `A151800(A039653(n+1))` -/
def P10280419162517674822.Spec : Prop :=
  ∀ n, P10280419162517674822.a n = A067792 (n + 1)

end A067792

/-! ## A067792.P17467366167175590587

`A151800(Δ[A160664(n)]-1)`
-/

namespace A067792.P17467366167175590587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (n + 1) - f1 n - 1).toNat

end

end A067792.P17467366167175590587

namespace A067792

/-- `A151800(Δ[A160664(n)]-1)` -/
def P17467366167175590587.Spec : Prop :=
  ∀ n, P17467366167175590587.a n = A067792 (n + 1)

end A067792

/-! ## A067792.P10607104507652359849

`A151800(A000203(n+1)-1)`
-/

namespace A067792.P10607104507652359849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000203 (n + 1) - 1).toNat

end

end A067792.P10607104507652359849

namespace A067792

/-- `A151800(A000203(n+1)-1)` -/
def P10607104507652359849.Spec : Prop :=
  ∀ n, P10607104507652359849.a n = A067792 (n + 1)

end A067792

/-! ## A067792.P3814666291689846775

`A151800(A088580(n+1)-2)`
-/

namespace A067792.P3814666291689846775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A088580 (n + 1) - 2).toNat

end

end A067792.P3814666291689846775

namespace A067792

/-- `A151800(A088580(n+1)-2)` -/
def P3814666291689846775.Spec : Prop :=
  ∀ n, P3814666291689846775.a n = A067792 (n + 1)

end A067792

/-! ## A067792.P17783095148638080991

`A151800(A001065(n+1)+n)`
-/

namespace A067792.P17783095148638080991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001065 (n + 1) + (n : ℤ)).toNat

end

end A067792.P17783095148638080991

namespace A067792

/-- `A151800(A001065(n+1)+n)` -/
def P17783095148638080991.Spec : Prop :=
  ∀ n, P17783095148638080991.a n = A067792 (n + 1)

end A067792

/-! ## A067792.P17512161829356946056

`A151800(sqrt(A072861(n+1))-1)`
-/

namespace A067792.P17512161829356946056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ) - 1)).toNat

end

end A067792.P17512161829356946056

namespace A067792

/-- `A151800(sqrt(A072861(n+1))-1)` -/
def P17512161829356946056.Spec : Prop :=
  ∀ n, P17512161829356946056.a n = A067792 (n + 1)

end A067792

/-! ## A067792.P4786746818208356224

`A151800(A245092(2*n+1)-1)`
-/

namespace A067792.P4786746818208356224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A245092 (2 * n + 1) - 1).toNat

end

end A067792.P4786746818208356224

namespace A067792

/-- `A151800(A245092(2*n+1)-1)` -/
def P4786746818208356224.Spec : Prop :=
  ∀ n, P4786746818208356224.a n = A067792 (n + 1)

end A067792

/-! ## A067792.P2207990529064310891

`A151800(A155085(n+1)-(n+2))`
-/

namespace A067792.P2207990529064310891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A155085 (n + 1) - (n + 2 : ℤ)).toNat

end

end A067792.P2207990529064310891

namespace A067792

/-- `A151800(A155085(n+1)-(n+2))` -/
def P2207990529064310891.Spec : Prop :=
  ∀ n, P2207990529064310891.a n = A067792 (n + 1)

end A067792

/-! ## A067792.P14385854407944281684

`A151800(A064987(n+1)/(n+1)-1)`
-/

namespace A067792.P14385854407944281684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - 1)).toNat

end

end A067792.P14385854407944281684

namespace A067792

/-- `A151800(A064987(n+1)/(n+1)-1)` -/
def P14385854407944281684.Spec : Prop :=
  ∀ n, P14385854407944281684.a n = A067792 (n + 1)

end A067792

/-! ## A067792.P12809600373896048799

`A151800(A092261(n+1)*A295294(n+1)-1)`
-/

namespace A067792.P12809600373896048799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A092261 (n + 1) * A295294 (n + 1) - 1).toNat

end

end A067792.P12809600373896048799

namespace A067792

/-- `A151800(A092261(n+1)*A295294(n+1)-1)` -/
def P12809600373896048799.Spec : Prop :=
  ∀ n, P12809600373896048799.a n = A067792 (n + 1)

end A067792

/-! ## A067792.P2835918904928857914

`A151800(A341529(n+1)/A003961(n+1)-1)`
-/

namespace A067792.P2835918904928857914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A341529 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ) - 1)).toNat

end

end A067792.P2835918904928857914

namespace A067792

/-- `A151800(A341529(n+1)/A003961(n+1)-1)` -/
def P2835918904928857914.Spec : Prop :=
  ∀ n, P2835918904928857914.a n = A067792 (n + 1)

end A067792

/-! ## A067792.P82591530108211220

`A007918(∑{d}[n+1, #])`
-/

namespace A067792.P82591530108211220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A067792.P82591530108211220

namespace A067792

/-- `A007918(∑{d}[n+1, #])` -/
def P82591530108211220.Spec : Prop :=
  ∀ n, P82591530108211220.a n = A067792 (n + 1)

end A067792

/-! ## A067792.P56342274239294581

`A007920(∑{d}[n+1, #])+∑{d}[n+1, #]`
-/

namespace A067792.P56342274239294581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (∑ d ∈ Nat.divisors (f1 n), d) + ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A067792.P56342274239294581

namespace A067792

/-- `A007920(∑{d}[n+1, #])+∑{d}[n+1, #]` -/
def P56342274239294581.Spec : Prop :=
  ∀ n, P56342274239294581.a n = A067792 (n + 1)

end A067792

/-! ## A067792.P15638745233724880897

`A007918(A088580(n+1)-1)`
-/

namespace A067792.P15638745233724880897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A088580 (n + 1) - 1).toNat

end

end A067792.P15638745233724880897

namespace A067792

/-- `A007918(A088580(n+1)-1)` -/
def P15638745233724880897.Spec : Prop :=
  ∀ n, P15638745233724880897.a n = A067792 (n + 1)

theorem P15638745233724880897.correct : P15638745233724880897.Spec := by
  intro n
  simp only [A067792, Nat.add_sub_cancel, A067792.P15638745233724880897.a, A067792.P11711498623631889729.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A088580, A088580.P3089093194242277422.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067792

/-! ## A067792.P11344506108090794535

`A007918(A001065(n+1)+1+n)`
-/

namespace A067792.P11344506108090794535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A067792.P11344506108090794535

namespace A067792

/-- `A007918(A001065(n+1)+1+n)` -/
def P11344506108090794535.Spec : Prop :=
  ∀ n, P11344506108090794535.a n = A067792 (n + 1)

theorem P11344506108090794535.correct : P11344506108090794535.Spec := by
  intro n
  simp only [A067792, Nat.add_sub_cancel, A067792.P11344506108090794535.a, A067792.P11711498623631889729.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067792

/-! ## A067792.P4961912560812214583

`A007918(A074495(n+1)-A072918(n+1))`
-/

namespace A067792.P4961912560812214583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A074495 (n + 1) - A072918 (n + 1)).toNat

end

end A067792.P4961912560812214583

namespace A067792

/-- `A007918(A074495(n+1)-A072918(n+1))` -/
def P4961912560812214583.Spec : Prop :=
  ∀ n, P4961912560812214583.a n = A067792 (n + 1)

end A067792

/-! ## A067792.P11380171873414530444

`A308052(A002659(n+1))`
-/

namespace A067792.P11380171873414530444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A002659 (n + 1)).toNat

end

end A067792.P11380171873414530444

namespace A067792

/-- `A308052(A002659(n+1))` -/
def P11380171873414530444.Spec : Prop :=
  ∀ n, P11380171873414530444.a n = A067792 (n + 1)

end A067792

/-! ## A067792.P16399597633148621867

`A308052(A074400(n+1))`
-/

namespace A067792.P16399597633148621867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A074400 (n + 1)).toNat

end

end A067792.P16399597633148621867

namespace A067792

/-- `A308052(A074400(n+1))` -/
def P16399597633148621867.Spec : Prop :=
  ∀ n, P16399597633148621867.a n = A067792 (n + 1)

end A067792

/-!
# A067793: Nonprimes n such that phi(n) > 2n/3.

The programs for A067793, there is no canonical definition to state claims against.
-/

/-! ## A067793.P13020865427851011778

`A038509(A028310(n))%A173542(A321513(n+1))`
-/

namespace A067793.P13020865427851011778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038509 (A028310 n).toNat) (A173542 (A321513 (n + 1)).toNat)

end

end A067793.P13020865427851011778

/-! ## A067793.P8238525584087429465

`A038509(A028310(n))%A162282(n+1)`
-/

namespace A067793.P8238525584087429465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038509 (A028310 n).toNat) (A162282 (n + 1))

end

end A067793.P8238525584087429465

/-! ## A067793.P5121347750303211929

`A038509(A028310(n))%A003360(A299291(n))`
-/

namespace A067793.P5121347750303211929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038509 (A028310 n).toNat) (A003360 (A299291 n).toNat)

end

end A067793.P5121347750303211929

/-! ## A067793.P11981320178386973367

`lt[A322478(n+1), A074991(2*A107286(n))]`
-/

namespace A067793.P11981320178386973367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074991 (2 * A107286 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067793.P11981320178386973367

/-! ## A067793.P14885021754382819782

`∏{e}[2^n, A038509(#)]`
-/

namespace A067793.P14885021754382819782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A038509 (Nat.factorization (f1 n) p)

end

end A067793.P14885021754382819782

/-!
# A067794: Nonprime numbers k such that phi(k) > 3*k/4.

The programs for A067794, there is no canonical definition to state claims against.
-/

/-! ## A067794.P13797666012745068219

`∩[A067893(n+1), A287918(n+1)]`
-/

namespace A067794.P13797666012745068219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067794.P13797666012745068219

/-! ## A067794.P12471302044522874178

`A067893(lt[A123286(n), A136771(n+1)]+1)`
-/

namespace A067794.P12471302044522874178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123286 (n + 31)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067893 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A067794.P12471302044522874178

/-! ## A067794.P13837302925110892632

`∩[A067893(n+1), A121537(n+1)]`
-/

namespace A067794.P13837302925110892632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067794.P13837302925110892632

/-! ## A067794.P11984766363706854212

`A067893(A062399(n+1))`
-/

namespace A067794.P11984766363706854212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067893 (A062399 (n + 1)).toNat

end

end A067794.P11984766363706854212

/-! ## A067794.P11068883184396905435

`A067893(A351870(n+1))`
-/

namespace A067794.P11068883184396905435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067893 (A351870 (n + 1)).toNat

end

end A067794.P11068883184396905435

/-!
# A067795: Numbers k such that 2*k+1 is the next prime after sigma(k).

The programs for A067795, there is no canonical definition to state claims against.
-/

/-! ## A067795.P8907668354026741627

`eq[2*n+1, A074495(A028310(n))]`
-/

namespace A067795.P8907668354026741627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074495 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067795.P8907668354026741627

/-! ## A067795.P13524953351446101822

`eq[A141530(2*n+3), A141530(A074495(n+1))]+1`
-/

namespace A067795.P13524953351446101822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141530 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141530 (A074495 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067795.P13524953351446101822

/-!
# A067796: Numbers k such that phi(k) + phi(k+1) = k.

The programs for A067796, there is no canonical definition to state claims against.
-/

/-! ## A067796.P16844174259780271318

`eq[A055034(n+1), A082023(n)]`
-/

namespace A067796.P16844174259780271318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067796.P16844174259780271318

/-! ## A067796.P8598945283336341604

`eq[A000010(A028310(n)), A016035(n+1)]`
-/

namespace A067796.P8598945283336341604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067796.P8598945283336341604

/-! ## A067796.P5890157931285171342

`eq[A000010(n+1), A051953(A028310(n))]`
-/

namespace A067796.P5890157931285171342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067796.P5890157931285171342

/-! ## A067796.P10664768124041884772

`eq[A000010(A028310(n)), A219428(n+1)]`
-/

namespace A067796.P10664768124041884772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067796.P10664768124041884772

/-! ## A067796.P946316059704758656

`A103517(eq[A062570(n+1), A219428(2*n+3)])`
-/

namespace A067796.P946316059704758656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067796.P946316059704758656

/-!
# A067797: Numbers k such that phi(k) + phi(k+1) = k+2.

The programs for A067797, there is no canonical definition to state claims against.
-/

/-! ## A067797.P2309561896300876076

`eq[A000010(n+1)+A000010(n+2), n+3]+1`
-/

namespace A067797.P2309561896300876076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A000010 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A067797.P2309561896300876076

/-! ## A067797.P18342173368170222280

`eq[n, A176095(n+1)+A062830(n)]`
-/

namespace A067797.P18342173368170222280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (n + 1) + A062830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067797.P18342173368170222280

/-! ## A067797.P124983646662900478

`eq[A051953(n+1)+2, A000010(n+2)]+1`
-/

namespace A067797.P124983646662900478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067797.P124983646662900478

/-! ## A067797.P11411397206247958695

`eq[A005728(A014681(n)), A015613(n+1)]`
-/

namespace A067797.P11411397206247958695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (A014681 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067797.P11411397206247958695

/-! ## A067797.P14833487611763946637

`eq[A016035(n+1)+2, A000010(A028310(n))]`
-/

namespace A067797.P14833487611763946637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067797.P14833487611763946637

/-!
# A067798: Numbers n such that phi(n)+phi(n+1)=n+1.

The programs for A067798, there is no canonical definition to state claims against.
-/

/-! ## A067798.P5706822439410998076

`eq[A000010(n+1)+A000010(n+2), n+2]+1`
-/

namespace A067798.P5706822439410998076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A000010 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A067798.P5706822439410998076

/-! ## A067798.P7527614551666088702

`eq[A000010(n+1), A051953(n+2)]+1`
-/

namespace A067798.P7527614551666088702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067798.P7527614551666088702

/-! ## A067798.P4352669396113827798

`eq[A000010(A028310(n)), A051953(n+1)]`
-/

namespace A067798.P4352669396113827798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067798.P4352669396113827798

/-! ## A067798.P6618737870238691739

`eq[A000010(A029579(n)), A051953(n+1)]`
-/

namespace A067798.P6618737870238691739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A029579 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067798.P6618737870238691739

/-! ## A067798.P6668769072421589023

`eq[A219428(n+1)+1, A000010(A028310(n))]`
-/

namespace A067798.P6668769072421589023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067798.P6668769072421589023

/-!
# A067799: Numbers k such that phi(k) + phi(k+1) = sigma(k).

The programs for A067799, there is no canonical definition to state claims against.
-/

/-! ## A067799.P5214946052370515552

`eq[A000010(n+1), A051612(A028310(n))]`
-/

namespace A067799.P5214946052370515552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067799.P5214946052370515552

/-! ## A067799.P4698333916949263975

`eq[A109606(n+1)+1, A051612(A028310(n))]`
-/

namespace A067799.P4698333916949263975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067799.P4698333916949263975

/-! ## A067799.P3870301855561451482

`eq[A039649(n+1)-1, A051612(A028310(n))]`
-/

namespace A067799.P3870301855561451482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067799.P3870301855561451482

/-! ## A067799.P13772727499078047718

`eq[n-A219428(n+1), A051612(A028310(n))]`
-/

namespace A067799.P13772727499078047718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067799.P13772727499078047718

/-! ## A067799.P17896410127605610943

`eq[1-A051953(n+1)+n, A051612(A028310(n))]`
-/

namespace A067799.P17896410127605610943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051953 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067799.P17896410127605610943

