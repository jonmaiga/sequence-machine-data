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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A064200: a(n) = 12*n*(n-1).

The programs for A064200, the canonical program `A064200.P18272209519029569283` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064200 has offset 0).

The definition of A064200 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n*(n-1)` (program `A064200.P18272209519029569283`, by `A064200.P18272209519029569283.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064200.P18272209519029569283

`12*n*(n-1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064200

/-- `12*n*(n-1)` -/
def P18272209519029569283.Spec : Prop :=
  ∀ n, P18272209519029569283.a n = A064200 n

theorem P18272209519029569283.correct : P18272209519029569283.Spec := by
  intro n
  simp only [A064200]

end A064200

/-! ## A064200.P15847764472209465331

`∑[a(n-1)+24]` with `a(0)=0, a(1)=0`
-/

namespace A064200.P15847764472209465331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064200.P15847764472209465331

namespace A064200

/-- `∑[a(n-1)+24]` -/
def P15847764472209465331.Spec : Prop :=
  ∀ n, (P15847764472209465331.a n : ℤ) = A064200 n

end A064200

/-! ## A064200.P4479413357458749441

`lcm(4, Δ[(n-1)^3])-4`
-/

namespace A064200.P4479413357458749441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (f1 (n + 1) - f1 n) : ℤ) - 4

end

end A064200.P4479413357458749441

namespace A064200

/-- `lcm(4, Δ[(n-1)^3])-4` -/
def P4479413357458749441.Spec : Prop :=
  ∀ n, P4479413357458749441.a n = A064200 n

end A064200

/-! ## A064200.P9406892027715280718

`∑[24*(2*n)%(n+1)]`
-/

namespace A064200.P9406892027715280718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * (2 * n % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064200.P9406892027715280718

namespace A064200

/-- `∑[24*(2*n)%(n+1)]` -/
def P9406892027715280718.Spec : Prop :=
  ∀ n, (P9406892027715280718.a n : ℤ) = A064200 n

end A064200

/-! ## A064200.P3336014145138598455

`A255185(n)-n`
-/

namespace A064200.P3336014145138598455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255185 n - (n : ℤ)

end

end A064200.P3336014145138598455

namespace A064200

/-- `A255185(n)-n` -/
def P3336014145138598455.Spec : Prop :=
  ∀ n, P3336014145138598455.a n = A064200 n

theorem P3336014145138598455.correct : P3336014145138598455.Spec := by
  intro n
  simp only [A064200, Nat.add_sub_cancel, A064200.P3336014145138598455.a, A064200.P18272209519029569283.a, A255185, A255185.P14062524724034212959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064200

/-! ## A064200.P13823784077587393307

`A161935(n)-n²`
-/

namespace A064200.P13823784077587393307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161935 n - (n ^ 2 : ℤ)

end

end A064200.P13823784077587393307

namespace A064200

/-- `A161935(n)-n²` -/
def P13823784077587393307.Spec : Prop :=
  ∀ n, P13823784077587393307.a n = A064200 n

theorem P13823784077587393307.correct : P13823784077587393307.Spec := by
  intro n
  simp only [A064200, Nat.add_sub_cancel, A064200.P13823784077587393307.a, A064200.P18272209519029569283.a, A161935, A161935.P14335868775891492350.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064200

/-! ## A064200.P17724470192265862337

`A255186(n)-∑[n]`
-/

namespace A064200.P17724470192265862337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255186 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A064200.P17724470192265862337

namespace A064200

/-- `A255186(n)-∑[n]` -/
def P17724470192265862337.Spec : Prop :=
  ∀ n, P17724470192265862337.a n = A064200 n

end A064200

/-! ## A064200.P14268411285194925321

`2*A103115(n)+2`
-/

namespace A064200.P14268411285194925321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103115 n + 2

end

end A064200.P14268411285194925321

namespace A064200

/-- `2*A103115(n)+2` -/
def P14268411285194925321.Spec : Prop :=
  ∀ n, P14268411285194925321.a n = A064200 n

theorem P14268411285194925321.correct : P14268411285194925321.Spec := by
  intro n
  simp only [A064200, Nat.add_sub_cancel, A064200.P14268411285194925321.a, A064200.P18272209519029569283.a, A103115, A103115.P1586163232865090376.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064200

/-! ## A064200.P5892843281167694495

`A152767(n)-3*n`
-/

namespace A064200.P5892843281167694495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152767 n - (3 * n : ℤ)

end

end A064200.P5892843281167694495

namespace A064200

/-- `A152767(n)-3*n` -/
def P5892843281167694495.Spec : Prop :=
  ∀ n, P5892843281167694495.a n = A064200 n

theorem P5892843281167694495.correct : P5892843281167694495.Spec := by
  intro n
  simp only [A064200, Nat.add_sub_cancel, A064200.P5892843281167694495.a, A064200.P18272209519029569283.a, A152767, A152767.P6665928962877378068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064200

/-! ## A064200.P3054258215686277407

`(A261343(n)-n)/2`
-/

namespace A064200.P3054258215686277407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261343 n - (n : ℤ) : ℚ) / 2

end

end A064200.P3054258215686277407

namespace A064200

/-- `(A261343(n)-n)/2` -/
def P3054258215686277407.Spec : Prop :=
  ∀ n, P3054258215686277407.a n = (A064200 n : ℚ)

theorem P3054258215686277407.correct : P3054258215686277407.Spec := by
  intro n
  simp only [A064200, Nat.add_sub_cancel, A064200.P3054258215686277407.a, A064200.P18272209519029569283.a, A261343, A261343.P1195641689784462972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064200

/-! ## A064200.P844788095938678018

`A153794(n)-4*n`
-/

namespace A064200.P844788095938678018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153794 n - (4 * n : ℤ)

end

end A064200.P844788095938678018

namespace A064200

/-- `A153794(n)-4*n` -/
def P844788095938678018.Spec : Prop :=
  ∀ n, P844788095938678018.a n = A064200 n

theorem P844788095938678018.correct : P844788095938678018.Spec := by
  intro n
  simp only [A064200, Nat.add_sub_cancel, A064200.P844788095938678018.a, A064200.P18272209519029569283.a, A153794, A153794.P7722697537094786455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064200

/-! ## A064200.P17666947843248355668

`A152746(n)-6*n`
-/

namespace A064200.P17666947843248355668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152746 n - (6 * n : ℤ)

end

end A064200.P17666947843248355668

namespace A064200

/-- `A152746(n)-6*n` -/
def P17666947843248355668.Spec : Prop :=
  ∀ n, P17666947843248355668.a n = A064200 n

theorem P17666947843248355668.correct : P17666947843248355668.Spec := by
  intro n
  simp only [A064200, Nat.add_sub_cancel, A064200.P17666947843248355668.a, A064200.P18272209519029569283.a, A152746, A152746.P17154373183025308854.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064200

/-! ## A064200.P4017422463123038074

`A014642(n)-8*n`
-/

namespace A064200.P4017422463123038074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n - (8 * n : ℤ)

end

end A064200.P4017422463123038074

namespace A064200

/-- `A014642(n)-8*n` -/
def P4017422463123038074.Spec : Prop :=
  ∀ n, P4017422463123038074.a n = A064200 n

theorem P4017422463123038074.correct : P4017422463123038074.Spec := by
  intro n
  simp only [A064200, Nat.add_sub_cancel, A064200.P4017422463123038074.a, A064200.P18272209519029569283.a, A014642, A014642.P1230047363248524840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064200

/-! ## A064200.P14023082105375184914

`A062783(n)-9*n`
-/

namespace A064200.P14023082105375184914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062783 n - (9 * n : ℤ)

end

end A064200.P14023082105375184914

namespace A064200

/-- `A062783(n)-9*n` -/
def P14023082105375184914.Spec : Prop :=
  ∀ n, P14023082105375184914.a n = A064200 n

theorem P14023082105375184914.correct : P14023082105375184914.Spec := by
  intro n
  simp only [A064200, Nat.add_sub_cancel, A064200.P14023082105375184914.a, A064200.P18272209519029569283.a, A062783, A062783.P15889295991207525073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064200

/-! ## A064200.P17388446426438970761

`A126964(n)-10*n`
-/

namespace A064200.P17388446426438970761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126964 n - (10 * n : ℤ)

end

end A064200.P17388446426438970761

namespace A064200

/-- `A126964(n)-10*n` -/
def P17388446426438970761.Spec : Prop :=
  ∀ n, P17388446426438970761.a n = A064200 n

theorem P17388446426438970761.correct : P17388446426438970761.Spec := by
  intro n
  simp only [A064200, Nat.add_sub_cancel, A064200.P17388446426438970761.a, A064200.P18272209519029569283.a, A126964, A126964.P15256011894595819792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064200

/-! ## A064200.P14267279256900486499

`A135453(n)-12*n`
-/

namespace A064200.P14267279256900486499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 n - (12 * n : ℤ)

end

end A064200.P14267279256900486499

namespace A064200

/-- `A135453(n)-12*n` -/
def P14267279256900486499.Spec : Prop :=
  ∀ n, P14267279256900486499.a n = A064200 n

theorem P14267279256900486499.correct : P14267279256900486499.Spec := by
  intro n
  simp only [A064200, Nat.add_sub_cancel, A064200.P14267279256900486499.a, A064200.P18272209519029569283.a, A135453, A135453.P11012822800042862878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064200

/-! ## A064200.P12425734578463459847

`Δ[A272871(abs(1-n))]`
-/

namespace A064200.P12425734578463459847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272871 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064200.P12425734578463459847

namespace A064200

/-- `Δ[A272871(abs(1-n))]` -/
def P12425734578463459847.Spec : Prop :=
  ∀ n, P12425734578463459847.a n = A064200 n

end A064200

/-! ## A064200.P12340535253274386467

`3*A272871(n)/(n+1)`
-/

namespace A064200.P12340535253274386467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A272871 n : ℚ) / (n + 1 : ℚ)

end

end A064200.P12340535253274386467

namespace A064200

/-- `3*A272871(n)/(n+1)` -/
def P12340535253274386467.Spec : Prop :=
  ∀ n, P12340535253274386467.a n = (A064200 n : ℚ)

theorem P12340535253274386467.correct : P12340535253274386467.Spec := by
  intro n
  simp only [A064200, Nat.add_sub_cancel, A064200.P12340535253274386467.a, A064200.P18272209519029569283.a, A272871, A272871.P8216137526329413230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064200

/-! ## A064200.P7629379411988568579

`A051874(n)+A014107(n)`
-/

namespace A064200.P7629379411988568579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051874 n + A014107 n

end

end A064200.P7629379411988568579

namespace A064200

/-- `A051874(n)+A014107(n)` -/
def P7629379411988568579.Spec : Prop :=
  ∀ n, P7629379411988568579.a n = A064200 n

theorem P7629379411988568579.correct : P7629379411988568579.Spec := by
  intro n
  simp only [A064200, Nat.add_sub_cancel, A064200.P7629379411988568579.a, A064200.P18272209519029569283.a, A014107, A014107.P7046062318563033165.a, A051874, A051874.P13000992848419538759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064200

/-! ## A064200.P10556452424952113956

`A067998(n)+A051876(n)`
-/

namespace A064200.P10556452424952113956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 n + A051876 n

end

end A064200.P10556452424952113956

namespace A064200

/-- `A067998(n)+A051876(n)` -/
def P10556452424952113956.Spec : Prop :=
  ∀ n, P10556452424952113956.a n = A064200 n

theorem P10556452424952113956.correct : P10556452424952113956.Spec := by
  intro n
  simp only [A064200, Nat.add_sub_cancel, A064200.P10556452424952113956.a, A064200.P18272209519029569283.a, A051876, A051876.P7910470835603757038.a, A067998, A067998.P12062298001294777272.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064200

/-!
# A064201: 9 times octagonal numbers: a(n) = 9*n*(3*n-2).

The programs for A064201, the canonical program `A064201.P17766213775117600719` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064201 has offset 0).

The definition of A064201 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n*(3*n-2)` (program `A064201.P17766213775117600719`, by `A064201.P17766213775117600719.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064201.P17766213775117600719

`9*n*(3*n-2)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064201

/-- `9*n*(3*n-2)` -/
def P17766213775117600719.Spec : Prop :=
  ∀ n, P17766213775117600719.a n = A064201 n

theorem P17766213775117600719.correct : P17766213775117600719.Spec := by
  intro n
  simp only [A064201]

end A064201

/-! ## A064201.P16955777787451212415

`3*A153796(n)/2`
-/

namespace A064201.P16955777787451212415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A153796 n : ℚ) / 2

end

end A064201.P16955777787451212415

namespace A064201

/-- `3*A153796(n)/2` -/
def P16955777787451212415.Spec : Prop :=
  ∀ n, P16955777787451212415.a n = (A064201 n : ℚ)

theorem P16955777787451212415.correct : P16955777787451212415.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P16955777787451212415.a, A064201.P17766213775117600719.a, A153796, A153796.P2544292493987041900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-! ## A064201.P15411973125602561464

`lcm(9*n, A000567(n))`
-/

namespace A064201.P15411973125602561464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (9 * n : ℤ) (A000567 n)

end

end A064201.P15411973125602561464

namespace A064201

/-- `lcm(9*n, A000567(n))` -/
def P15411973125602561464.Spec : Prop :=
  ∀ n, (P15411973125602561464.a n : ℤ) = A064201 n

end A064201

/-! ## A064201.P7257229926374423287

`A153808(n)+A000567(n)`
-/

namespace A064201.P7257229926374423287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153808 n + A000567 n

end

end A064201.P7257229926374423287

namespace A064201

/-- `A153808(n)+A000567(n)` -/
def P7257229926374423287.Spec : Prop :=
  ∀ n, P7257229926374423287.a n = A064201 n

theorem P7257229926374423287.correct : P7257229926374423287.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P7257229926374423287.a, A064201.P17766213775117600719.a, A000567, A000567.P17850767079432249295.a, A153808, A153808.P12582623721954130915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-! ## A064201.P5066175464027488919

`A152750(n)+A051876(n)`
-/

namespace A064201.P5066175464027488919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 n + A051876 n

end

end A064201.P5066175464027488919

namespace A064201

/-- `A152750(n)+A051876(n)` -/
def P5066175464027488919.Spec : Prop :=
  ∀ n, P5066175464027488919.a n = A064201 n

theorem P5066175464027488919.correct : P5066175464027488919.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P5066175464027488919.a, A064201.P17766213775117600719.a, A051876, A051876.P7910470835603757038.a, A152750, A152750.P9324821272604293728.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-! ## A064201.P3021530156112782364

`A153797(n)+A139267(n)`
-/

namespace A064201.P3021530156112782364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153797 n + A139267 n

end

end A064201.P3021530156112782364

namespace A064201

/-- `A153797(n)+A139267(n)` -/
def P3021530156112782364.Spec : Prop :=
  ∀ n, P3021530156112782364.a n = A064201 n

theorem P3021530156112782364.correct : P3021530156112782364.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P3021530156112782364.a, A064201.P17766213775117600719.a, A139267, A139267.P13870518576682485828.a, A153797, A153797.P1020360065334955704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-! ## A064201.P5325569374828257320

`A153448(n)+A152746(n)`
-/

namespace A064201.P5325569374828257320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153448 n + A152746 n

end

end A064201.P5325569374828257320

namespace A064201

/-- `A153448(n)+A152746(n)` -/
def P5325569374828257320.Spec : Prop :=
  ∀ n, P5325569374828257320.a n = A064201 n

theorem P5325569374828257320.correct : P5325569374828257320.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P5325569374828257320.a, A064201.P17766213775117600719.a, A152746, A152746.P17154373183025308854.a, A153448, A153448.P13695387970658973347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-! ## A064201.P17843505104413441761

`A153786(n)+A152767(n)`
-/

namespace A064201.P17843505104413441761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153786 n + A152767 n

end

end A064201.P17843505104413441761

namespace A064201

/-- `A153786(n)+A152767(n)` -/
def P17843505104413441761.Spec : Prop :=
  ∀ n, P17843505104413441761.a n = A064201 n

theorem P17843505104413441761.correct : P17843505104413441761.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P17843505104413441761.a, A064201.P17766213775117600719.a, A152767, A152767.P6665928962877378068.a, A153786, A153786.P15842201399555844801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-! ## A064201.P486745065270245750

`A153796(n)+A152751(n)`
-/

namespace A064201.P486745065270245750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153796 n + A152751 n

end

end A064201.P486745065270245750

namespace A064201

/-- `A153796(n)+A152751(n)` -/
def P486745065270245750.Spec : Prop :=
  ∀ n, P486745065270245750.a n = A064201 n

theorem P486745065270245750.correct : P486745065270245750.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P486745065270245750.a, A064201.P17766213775117600719.a, A152751, A152751.P17200692832550794912.a, A153796, A153796.P2544292493987041900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-! ## A064201.P2204820239911259459

`A153795(n)+A153794(n)`
-/

namespace A064201.P2204820239911259459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153795 n + A153794 n

end

end A064201.P2204820239911259459

namespace A064201

/-- `A153795(n)+A153794(n)` -/
def P2204820239911259459.Spec : Prop :=
  ∀ n, P2204820239911259459.a n = A064201 n

theorem P2204820239911259459.correct : P2204820239911259459.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P2204820239911259459.a, A064201.P17766213775117600719.a, A153794, A153794.P7722697537094786455.a, A153795, A153795.P4253151262494616072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-! ## A064201.P4424564155229251774

`A360436(n)+A014642(n)`
-/

namespace A064201.P4424564155229251774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360436 n + A014642 n

end

end A064201.P4424564155229251774

namespace A064201

/-- `A360436(n)+A014642(n)` -/
def P4424564155229251774.Spec : Prop :=
  ∀ n, P4424564155229251774.a n = A064201 n

theorem P4424564155229251774.correct : P4424564155229251774.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P4424564155229251774.a, A064201.P17766213775117600719.a, A014642, A014642.P1230047363248524840.a, A360436, A360436.P9205183385112475839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-! ## A064201.P2007860713608659845

`A226490(n)+A152777(n)`
-/

namespace A064201.P2007860713608659845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226490 n + A152777 n

end

end A064201.P2007860713608659845

namespace A064201

/-- `A226490(n)+A152777(n)` -/
def P2007860713608659845.Spec : Prop :=
  ∀ n, P2007860713608659845.a n = A064201 n

end A064201

/-! ## A064201.P15569302659926454849

`A261191(n)+A139098(n)`
-/

namespace A064201.P15569302659926454849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261191 n + A139098 n

end

end A064201.P15569302659926454849

namespace A064201

/-- `A261191(n)+A139098(n)` -/
def P15569302659926454849.Spec : Prop :=
  ∀ n, P15569302659926454849.a n = A064201 n

theorem P15569302659926454849.correct : P15569302659926454849.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P15569302659926454849.a, A064201.P17766213775117600719.a, A139098, A139098.P9529922579529552041.a, A261191, A261191.P14259318423697160448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-! ## A064201.P9923527550399551086

`A316466(n)+A161935(n)`
-/

namespace A064201.P9923527550399551086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316466 n + A161935 n

end

end A064201.P9923527550399551086

namespace A064201

/-- `A316466(n)+A161935(n)` -/
def P9923527550399551086.Spec : Prop :=
  ∀ n, P9923527550399551086.a n = A064201 n

theorem P9923527550399551086.correct : P9923527550399551086.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P9923527550399551086.a, A064201.P17766213775117600719.a, A161935, A161935.P14335868775891492350.a, A316466, A316466.P14248741323085177896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-! ## A064201.P1360854276620205117

`A396291(n)+A263226(n)`
-/

namespace A064201.P1360854276620205117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396291 n + A263226 n

end

end A064201.P1360854276620205117

namespace A064201

/-- `A396291(n)+A263226(n)` -/
def P1360854276620205117.Spec : Prop :=
  ∀ n, P1360854276620205117.a n = A064201 n

theorem P1360854276620205117.correct : P1360854276620205117.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P1360854276620205117.a, A064201.P17766213775117600719.a, A263226, A263226.P10219769499938942172.a, A396291, A396291.P2280103338649089632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-! ## A064201.P5168022022913079046

`A064763(n)-A098850(n)`
-/

namespace A064201.P5168022022913079046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064763 n - A098850 n

end

end A064201.P5168022022913079046

namespace A064201

/-- `A064763(n)-A098850(n)` -/
def P5168022022913079046.Spec : Prop :=
  ∀ n, P5168022022913079046.a n = A064201 n

theorem P5168022022913079046.correct : P5168022022913079046.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P5168022022913079046.a, A064201.P17766213775117600719.a, A064763, A064763.P5638320516339495305.a, A098850, A098850.P17400619238635245445.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-! ## A064201.P1784487697099733614

`A016910(n)-A147651(n)`
-/

namespace A064201.P1784487697099733614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016910 n - A147651 n

end

end A064201.P1784487697099733614

namespace A064201

/-- `A016910(n)-A147651(n)` -/
def P1784487697099733614.Spec : Prop :=
  ∀ n, P1784487697099733614.a n = A064201 n

theorem P1784487697099733614.correct : P1784487697099733614.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P1784487697099733614.a, A064201.P17766213775117600719.a, A016910, A016910.P3732514033866141413.a, A147651, A147651.P5567796470201540316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-! ## A064201.P11041099965742891537

`A174371(n)-A016778(n)`
-/

namespace A064201.P11041099965742891537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174371 n - A016778 n

end

end A064201.P11041099965742891537

namespace A064201

/-- `A174371(n)-A016778(n)` -/
def P11041099965742891537.Spec : Prop :=
  ∀ n, P11041099965742891537.a n = A064201 n

theorem P11041099965742891537.correct : P11041099965742891537.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P11041099965742891537.a, A064201.P17766213775117600719.a, A016778, A016778.P16000663877604072744.a, A174371, A174371.P17431519558292009846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-! ## A064201.P6512688411777745377

`A244634(n)-A008600(n)`
-/

namespace A064201.P6512688411777745377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244634 n - A008600 n

end

end A064201.P6512688411777745377

namespace A064201

/-- `A244634(n)-A008600(n)` -/
def P6512688411777745377.Spec : Prop :=
  ∀ n, P6512688411777745377.a n = A064201 n

theorem P6512688411777745377.correct : P6512688411777745377.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P6512688411777745377.a, A064201.P17766213775117600719.a, A008600, A008600.P8081908058967824863.a, A244634, A244634.P2988327600076018202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-! ## A064201.P7931089913133935857

`A244636(n)-A140681(n)`
-/

namespace A064201.P7931089913133935857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244636 n - A140681 n

end

end A064201.P7931089913133935857

namespace A064201

/-- `A244636(n)-A140681(n)` -/
def P7931089913133935857.Spec : Prop :=
  ∀ n, P7931089913133935857.a n = A064201 n

theorem P7931089913133935857.correct : P7931089913133935857.Spec := by
  intro n
  simp only [A064201, Nat.add_sub_cancel, A064201.P7931089913133935857.a, A064201.P17766213775117600719.a, A140681, A140681.P11404641493444198903.a, A244636, A244636.P15245594885132756061.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064201

/-!
# A064202: a(n) = n*(n+1)*(n+2)*(2*n^3 + 6*n^2 + 7*n - 3)/36.

The programs for A064202, the canonical program `A064202.P6093841460947549176` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064202 has offset 0).

The definition of A064202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064202.P6093841460947549176

`n*(n+1)*(n+2)*(2*n^3+6*n²+7*n-3)/36`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064202

/-- `n*(n+1)*(n+2)*(2*n^3+6*n²+7*n-3)/36` -/
def P6093841460947549176.Spec : Prop :=
  ∀ n, P6093841460947549176.a n = (A064202 n : ℚ)

end A064202

/-! ## A064202.P4775792821711996376

`∑[∑[n²]]+C(∑[∑[2*n]], 2)`
-/

namespace A064202.P4775792821711996376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2

end

end A064202.P4775792821711996376

namespace A064202

/-- `∑[∑[n²]]+C(∑[∑[2*n]], 2)` -/
def P4775792821711996376.Spec : Prop :=
  ∀ n, (P4775792821711996376.a n : ℤ) = A064202 n

end A064202

/-! ## A064202.P2149799740478684048

`∑[A002413(n)+A000292(n)*A000384(n)]`
-/

namespace A064202.P2149799740478684048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 n + A000292 n * A000384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064202.P2149799740478684048

namespace A064202

/-- `∑[A002413(n)+A000292(n)*A000384(n)]` -/
def P2149799740478684048.Spec : Prop :=
  ∀ n, P2149799740478684048.a n = A064202 n

end A064202

/-! ## A064202.P12158745505458304495

`∑[(2*n+1)*A006325(n+1)-∑[n]]`
-/

namespace A064202.P12158745505458304495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A006325 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064202.P12158745505458304495

namespace A064202

/-- `∑[(2*n+1)*A006325(n+1)-∑[n]]` -/
def P12158745505458304495.Spec : Prop :=
  ∀ n, P12158745505458304495.a n = A064202 n

end A064202

/-!
# A064204: a(n) = 280*binomial(n+4,9) + 280*binomial(n+4,8) + 105*binomial(n+3,7) + 77*binomial(n+3,6) + 43*binomial(n+2,5) - 16*binomial(n+2,4) + 20*binomial(n+1,3) - floor(n*(n^2 - 1)*(n^2 - 4)*(n-3)/360).

The programs for A064204, there is no canonical definition to state claims against.
-/

/-! ## A064204.P16446560250286076682

`A334702(∑[∑[n+2]])`
-/

namespace A064204.P16446560250286076682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334702 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064204.P16446560250286076682

/-!
# A064205: Numbers k such that sigma(k) + tau(k) is a prime.

The programs for A064205, there is no canonical definition to state claims against.
-/

/-! ## A064205.P18392672543915963475

`floor(A272060(n+1)/2)`
-/

namespace A064205.P18392672543915963475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A272060 (n + 1) : ℚ) / 2⌋

end

end A064205.P18392672543915963475

/-! ## A064205.P7620901402482943769

`round(A272060(n+1)/2-(A004442(n)-n)²)`
-/

namespace A064205.P7620901402482943769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A272060 (n + 1) : ℚ) / 2 - ((A004442 n - (n : ℤ)) ^ 2 : ℚ))

end

end A064205.P7620901402482943769

/-! ## A064205.P17057352810696510510

`A272060(n+1)/2+A008683(A020483(n))/2`
-/

namespace A064205.P17057352810696510510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272060 (n + 1) : ℚ) / 2 + (A008683 (A020483 n).toNat : ℚ) / 2

end

end A064205.P17057352810696510510

/-! ## A064205.P10417031965945699165

`A272060(n+1)/2-A048671(A000040(n+1))/2`
-/

namespace A064205.P10417031965945699165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272060 (n + 1) : ℚ) / 2 - (A048671 (A000040 (n + 1)).toNat : ℚ) / 2

end

end A064205.P10417031965945699165

/-! ## A064205.P18200604486148474992

`(A272060(n+1)-ceil(A257023(3*n+2)/6))/2`
-/

namespace A064205.P18200604486148474992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272060 (n + 1) - ⌈(A257023 (3 * n + 2) : ℚ) / 6⌉ : ℚ) / 2

end

end A064205.P18200604486148474992

/-! ## A064205.P1281377683016107494

`round(A272060(n+1)/2-A007318(∑[n]))`
-/

namespace A064205.P1281377683016107494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A272060 (n + 1) : ℚ) / 2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))

end

end A064205.P1281377683016107494

/-!
# A064210: Numbers n such that sum of the digits of n is >= the sum of the digits of n^4.

The programs for A064210, there is no canonical definition to state claims against.
-/

/-! ## A064210.P16814086911512411631

`eq[A007953(n+1), A055565(n+1)]+1`
-/

namespace A064210.P16814086911512411631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064210.P16814086911512411631

/-! ## A064210.P7302240842832620474

`eq[A007953(n), A055565(A028310(n))]`
-/

namespace A064210.P7302240842832620474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055565 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064210.P7302240842832620474

/-! ## A064210.P17555944867231317439

`eq[A055565(A028310(n))+n, A062028(n)]`
-/

namespace A064210.P17555944867231317439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055565 (A028310 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064210.P17555944867231317439

/-! ## A064210.P7471462109369508306

`eq[A004277(A055565(n)), A169805(n)]`
-/

namespace A064210.P7471462109369508306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A055565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064210.P7471462109369508306

/-! ## A064210.P15152480774465410852

`eq[2*A055565(A028310(n)), A169805(n)]`
-/

namespace A064210.P15152480774465410852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055565 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A064210.P15152480774465410852

/-!
# A064212: a(n) = sigma(n) + usigma(n) = A000203(n) + A034448(n).

The programs for A064212, the canonical program `A064212.P10229143328642602721` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064212 has offset 1).

The definition of A064212 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064212.P10229143328642602721

`A000203(n+1)+A034448(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A064212

/-- `A000203(n+1)+A034448(n+1)` -/
def P10229143328642602721.Spec : Prop :=
  ∀ n, P10229143328642602721.a n = A064212 (n + 1)

theorem P10229143328642602721.correct : P10229143328642602721.Spec := by
  intro n
  simp only [A064212, Nat.add_sub_cancel]

end A064212

/-! ## A064212.P14298803557202735414

`A034448(n+1)+Δ[A160664(n)]`
-/

namespace A064212.P14298803557202735414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (f1 (n + 1) - f1 n)

end

end A064212.P14298803557202735414

namespace A064212

/-- `A034448(n+1)+Δ[A160664(n)]` -/
def P14298803557202735414.Spec : Prop :=
  ∀ n, P14298803557202735414.a n = A064212 (n + 1)

end A064212

/-! ## A064212.P9565958598490597902

`A098189(n+1)+A065387(n+1)`
-/

namespace A064212.P9565958598490597902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098189 (n + 1) + A065387 (n + 1)

end

end A064212.P9565958598490597902

namespace A064212

/-- `A098189(n+1)+A065387(n+1)` -/
def P9565958598490597902.Spec : Prop :=
  ∀ n, P9565958598490597902.a n = A064212 (n + 1)

theorem P9565958598490597902.correct : P9565958598490597902.Spec := by
  intro n
  simp only [A064212, Nat.add_sub_cancel, A064212.P9565958598490597902.a, A064212.P10229143328642602721.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A065387, A065387.P11284875715279330998.a, A098189, A098189.P4675613756573831951.a, A000010, A000010.P4673923239450215316.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A003557, A003557.P6364735403900941810.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A173557, A173557.P15666735857375843373.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A001221, A001221.P10258181745752134128.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064212

/-! ## A064212.P16497388502254850033

`A155085(n+1)+A034460(n+1)`
-/

namespace A064212.P16497388502254850033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) + A034460 (n + 1)

end

end A064212.P16497388502254850033

namespace A064212

/-- `A155085(n+1)+A034460(n+1)` -/
def P16497388502254850033.Spec : Prop :=
  ∀ n, P16497388502254850033.a n = A064212 (n + 1)

theorem P16497388502254850033.correct : P16497388502254850033.Spec := by
  intro n
  simp only [A064212, Nat.add_sub_cancel, A064212.P16497388502254850033.a, A064212.P10229143328642602721.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A034460, A034460.P1958235575820581513.a, A155085, A155085.P2440965829929837208.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064212

/-! ## A064212.P15054281860668047375

`A233541(n+1)+A063085(n+1)`
-/

namespace A064212.P15054281860668047375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233541 (n + 1) + A063085 (n + 1)

end

end A064212.P15054281860668047375

namespace A064212

/-- `A233541(n+1)+A063085(n+1)` -/
def P15054281860668047375.Spec : Prop :=
  ∀ n, P15054281860668047375.a n = A064212 (n + 1)

theorem P15054281860668047375.correct : P15054281860668047375.Spec := by
  intro n
  simp only [A064212, Nat.add_sub_cancel, A064212.P15054281860668047375.a, A064212.P10229143328642602721.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A063085, A063085.P4754823976141225556.a, A233541, A233541.P8613134617587554925.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A061468, A061468.P5735709615131522244.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A173557, A173557.P15666735857375843373.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A001221, A001221.P10258181745752134128.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064212

/-! ## A064212.P14655167996288287589

`A224880(n+1)+A129468(n+1)`
-/

namespace A064212.P14655167996288287589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1) + A129468 (n + 1)

end

end A064212.P14655167996288287589

namespace A064212

/-- `A224880(n+1)+A129468(n+1)` -/
def P14655167996288287589.Spec : Prop :=
  ∀ n, P14655167996288287589.a n = A064212 (n + 1)

theorem P14655167996288287589.correct : P14655167996288287589.Spec := by
  intro n
  simp only [A064212, Nat.add_sub_cancel, A064212.P14655167996288287589.a, A064212.P10229143328642602721.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A129468, A129468.P11362039589036067826.a, A224880, A224880.P6780601834210635688.a, A034460, A034460.P1958235575820581513.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A155085, A155085.P2440965829929837208.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064212

/-! ## A064212.P12506669463858964077

`A345451(n+1)+A088580(n+1)`
-/

namespace A064212.P12506669463858964077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1) + A088580 (n + 1)

end

end A064212.P12506669463858964077

namespace A064212

/-- `A345451(n+1)+A088580(n+1)` -/
def P12506669463858964077.Spec : Prop :=
  ∀ n, P12506669463858964077.a n = A064212 (n + 1)

theorem P12506669463858964077.correct : P12506669463858964077.Spec := by
  intro n
  simp only [A064212, Nat.add_sub_cancel, A064212.P12506669463858964077.a, A064212.P10229143328642602721.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A088580, A088580.P3089093194242277422.a, A345451, A345451.P7254326500789221208.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064212

/-! ## A064212.P1675432671280444358

`A074400(n+1)-A048146(n+1)`
-/

namespace A064212.P1675432671280444358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A048146 (n + 1)

end

end A064212.P1675432671280444358

namespace A064212

/-- `A074400(n+1)-A048146(n+1)` -/
def P1675432671280444358.Spec : Prop :=
  ∀ n, P1675432671280444358.a n = A064212 (n + 1)

theorem P1675432671280444358.correct : P1675432671280444358.Spec := by
  intro n
  simp only [A064212, Nat.add_sub_cancel, A064212.P1675432671280444358.a, A064212.P10229143328642602721.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A074400, A074400.P16312391460013478761.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064212

/-! ## A064212.P12041578563405811676

`A000203(n+1)+A345451(n+1)+1`
-/

namespace A064212.P12041578563405811676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A345451 (n + 1) + 1)

end

end A064212.P12041578563405811676

namespace A064212

/-- `A000203(n+1)+A345451(n+1)+1` -/
def P12041578563405811676.Spec : Prop :=
  ∀ n, P12041578563405811676.a n = A064212 (n + 1)

theorem P12041578563405811676.correct : P12041578563405811676.Spec := by
  intro n
  simp only [A064212, Nat.add_sub_cancel, A064212.P12041578563405811676.a, A064212.P10229143328642602721.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A345451, A345451.P7254326500789221208.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064212

/-! ## A064212.P15615862186636668149

`A034448(n+1)+A088580(n+1)-1`
-/

namespace A064212.P15615862186636668149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A088580 (n + 1) - 1)

end

end A064212.P15615862186636668149

namespace A064212

/-- `A034448(n+1)+A088580(n+1)-1` -/
def P15615862186636668149.Spec : Prop :=
  ∀ n, P15615862186636668149.a n = A064212 (n + 1)

theorem P15615862186636668149.correct : P15615862186636668149.Spec := by
  intro n
  simp only [A064212, Nat.add_sub_cancel, A064212.P15615862186636668149.a, A064212.P10229143328642602721.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A088580, A088580.P3089093194242277422.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064212

/-! ## A064212.P15729084945722030987

`A048146(n+1)+2*A034448(n+1)`
-/

namespace A064212.P15729084945722030987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) + 2 * A034448 (n + 1)

end

end A064212.P15729084945722030987

namespace A064212

/-- `A048146(n+1)+2*A034448(n+1)` -/
def P15729084945722030987.Spec : Prop :=
  ∀ n, P15729084945722030987.a n = A064212 (n + 1)

theorem P15729084945722030987.correct : P15729084945722030987.Spec := by
  intro n
  simp only [A064212, Nat.add_sub_cancel, A064212.P15729084945722030987.a, A064212.P10229143328642602721.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064212

/-! ## A064212.P18154152104138163054

`A162296(n+1)+2*A325973(n+1)`
-/

namespace A064212.P18154152104138163054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1) + 2 * A325973 (n + 1)

end

end A064212.P18154152104138163054

namespace A064212

/-- `A162296(n+1)+2*A325973(n+1)` -/
def P18154152104138163054.Spec : Prop :=
  ∀ n, P18154152104138163054.a n = A064212 (n + 1)

end A064212

/-! ## A064212.P11020160480972737436

`2*A000203(n+1)-A048146(n+1)`
-/

namespace A064212.P11020160480972737436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A048146 (n + 1)

end

end A064212.P11020160480972737436

namespace A064212

/-- `2*A000203(n+1)-A048146(n+1)` -/
def P11020160480972737436.Spec : Prop :=
  ∀ n, P11020160480972737436.a n = A064212 (n + 1)

theorem P11020160480972737436.correct : P11020160480972737436.Spec := by
  intro n
  simp only [A064212, Nat.add_sub_cancel, A064212.P11020160480972737436.a, A064212.P10229143328642602721.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064212

/-! ## A064212.P7562324817495986041

`A034448(n+1)+A074400(n+1)/2`
-/

namespace A064212.P7562324817495986041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) + (A074400 (n + 1) : ℚ) / 2

end

end A064212.P7562324817495986041

namespace A064212

/-- `A034448(n+1)+A074400(n+1)/2` -/
def P7562324817495986041.Spec : Prop :=
  ∀ n, P7562324817495986041.a n = (A064212 (n + 1) : ℚ)

theorem P7562324817495986041.correct : P7562324817495986041.Spec := by
  intro n
  simp only [A064212, Nat.add_sub_cancel, A064212.P7562324817495986041.a, A064212.P10229143328642602721.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A074400, A074400.P16312391460013478761.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064212

/-! ## A064212.P16827974617526756425

`2*A348944(n+1)-A348029(n+1)`
-/

namespace A064212.P16827974617526756425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348944 (n + 1) - A348029 (n + 1)

end

end A064212.P16827974617526756425

namespace A064212

/-- `2*A348944(n+1)-A348029(n+1)` -/
def P16827974617526756425.Spec : Prop :=
  ∀ n, P16827974617526756425.a n = A064212 (n + 1)

end A064212

/-! ## A064212.P5067187155058390214

`A034448(n+1)+A001065(n+1)+1+n`
-/

namespace A064212.P5067187155058390214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A001065 (n + 1) + 1 + (n : ℤ))

end

end A064212.P5067187155058390214

namespace A064212

/-- `A034448(n+1)+A001065(n+1)+1+n` -/
def P5067187155058390214.Spec : Prop :=
  ∀ n, P5067187155058390214.a n = A064212 (n + 1)

theorem P5067187155058390214.correct : P5067187155058390214.Spec := by
  intro n
  simp only [A064212, Nat.add_sub_cancel, A064212.P5067187155058390214.a, A064212.P10229143328642602721.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A034448, A034448.P17017727775393200719.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064212

/-! ## A064212.P8107470923518103932

`A034448(n+1)+A155085(n+1)-(n+1)`
-/

namespace A064212.P8107470923518103932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A155085 (n + 1) - (n + 1 : ℤ))

end

end A064212.P8107470923518103932

namespace A064212

/-- `A034448(n+1)+A155085(n+1)-(n+1)` -/
def P8107470923518103932.Spec : Prop :=
  ∀ n, P8107470923518103932.a n = A064212 (n + 1)

theorem P8107470923518103932.correct : P8107470923518103932.Spec := by
  intro n
  simp only [A064212, Nat.add_sub_cancel, A064212.P8107470923518103932.a, A064212.P10229143328642602721.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A155085, A155085.P2440965829929837208.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064212

/-! ## A064212.P3150493859743018316

`A034448(n+1)+A237588(n+1)+Δ[n²]`
-/

namespace A064212.P3150493859743018316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A237588 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A064212.P3150493859743018316

namespace A064212

/-- `A034448(n+1)+A237588(n+1)+Δ[n²]` -/
def P3150493859743018316.Spec : Prop :=
  ∀ n, P3150493859743018316.a n = A064212 (n + 1)

theorem P3150493859743018316.correct : P3150493859743018316.Spec := by
  intro n
  simp only [A064212, Nat.add_sub_cancel, A064212.P3150493859743018316.f1, A064212.P3150493859743018316.a, A064212.P10229143328642602721.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A237588, A237588.P10590847318200798620.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064212

/-! ## A064212.P10968563002403308583

`∑{d}[n+1, A055210(#)*A056134((n+1)/#)]`
-/

namespace A064212.P10968563002403308583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055210 d * A056134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064212.P10968563002403308583

namespace A064212

/-- `∑{d}[n+1, A055210(#)*A056134((n+1)/#)]` -/
def P10968563002403308583.Spec : Prop :=
  ∀ n, P10968563002403308583.a n = A064212 (n + 1)

end A064212

/-! ## A064212.P13153948740956453673

`A034448(n+1)+A162296(n+1)+A048250(n+1)`
-/

namespace A064212.P13153948740956453673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A162296 (n + 1) + A048250 (n + 1))

end

end A064212.P13153948740956453673

namespace A064212

/-- `A034448(n+1)+A162296(n+1)+A048250(n+1)` -/
def P13153948740956453673.Spec : Prop :=
  ∀ n, P13153948740956453673.a n = A064212 (n + 1)

end A064212

/-!
# A064216: Replace each p^e with prevprime(p)^e in the prime factorization of odd numbers; inverse of sequence A048673 considered as a permutation of the natural numbers.

The programs for A064216, the canonical program `A064216.P5935432423843156478` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064216 has offset 1).

The definition of A064216 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064216.P5935432423843156478

`A064989(2*n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A064216

/-- `A064989(2*n+1)` -/
def P5935432423843156478.Spec : Prop :=
  ∀ n, P5935432423843156478.a n = A064216 (n + 1)

theorem P5935432423843156478.correct : P5935432423843156478.Spec := by
  intro n
  simp only [A064216, Nat.add_sub_cancel]

end A064216

/-! ## A064216.P15855690572463155493

`A349122(Δ[n²])`
-/

namespace A064216.P15855690572463155493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A064216.P15855690572463155493

namespace A064216

/-- `A349122(Δ[n²])` -/
def P15855690572463155493.Spec : Prop :=
  ∀ n, P15855690572463155493.a n = A064216 (n + 1)

end A064216

/-! ## A064216.P5605763220725179418

`A243502(n+1)/2`
-/

namespace A064216.P5605763220725179418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243502 (n + 1) : ℚ) / 2

end

end A064216.P5605763220725179418

namespace A064216

/-- `A243502(n+1)/2` -/
def P5605763220725179418.Spec : Prop :=
  ∀ n, P5605763220725179418.a n = (A064216 (n + 1) : ℚ)

theorem P5605763220725179418.correct : P5605763220725179418.Spec := by
  intro n
  simp only [A064216, Nat.add_sub_cancel, A064216.P5605763220725179418.a, A064216.P5935432423843156478.a, A064989, A064989.P13349672914146769936.a, A243502, A243502.P11791647281875328885.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A064216

/-! ## A064216.P10780465264265823258

`A302847(a(n-1)+1)` with `a(0)=1`
-/

namespace A064216.P10780465264265823258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A302847 (a (n - 1) + 1).toNat

end

end A064216.P10780465264265823258

namespace A064216

/-- `A302847(a(n-1)+1)` -/
def P10780465264265823258.Spec : Prop :=
  ∀ n, P10780465264265823258.a n = A064216 (n + 1)

end A064216

/-! ## A064216.P4835675909808518370

`∑{d}[2*n+1, A349127(#)]`
-/

namespace A064216.P4835675909808518370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349127 d

end

end A064216.P4835675909808518370

namespace A064216

/-- `∑{d}[2*n+1, A349127(#)]` -/
def P4835675909808518370.Spec : Prop :=
  ∀ n, P4835675909808518370.a n = A064216 (n + 1)

end A064216

/-! ## A064216.P10758397603416148578

`∑{d}[2*n+1, A349128(#)]`
-/

namespace A064216.P10758397603416148578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349128 d

end

end A064216.P10758397603416148578

namespace A064216

/-- `∑{d}[2*n+1, A349128(#)]` -/
def P10758397603416148578.Spec : Prop :=
  ∀ n, P10758397603416148578.a n = A064216 (n + 1)

end A064216

/-! ## A064216.P6744047737038361764

`A302849(a(n-2)+2)` with `a(0)=1, a(1)=2`
-/

namespace A064216.P6744047737038361764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A302849 (a (n - 2) + 2).toNat

end

end A064216.P6744047737038361764

namespace A064216

/-- `A302849(a(n-2)+2)` -/
def P6744047737038361764.Spec : Prop :=
  ∀ n, P6744047737038361764.a n = A064216 (n + 1)

end A064216

/-! ## A064216.P13388230677589735391

`A292245(n+1)+A292244(n+1)`
-/

namespace A064216.P13388230677589735391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292245 (n + 1) + A292244 (n + 1)

end

end A064216.P13388230677589735391

namespace A064216

/-- `A292245(n+1)+A292244(n+1)` -/
def P13388230677589735391.Spec : Prop :=
  ∀ n, P13388230677589735391.a n = A064216 (n + 1)

end A064216

/-! ## A064216.P10691110572645817395

`A349359(n+1)-A349358(n+1)`
-/

namespace A064216.P10691110572645817395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349359 (n + 1) - A349358 (n + 1)

end

end A064216.P10691110572645817395

namespace A064216

/-- `A349359(n+1)-A349358(n+1)` -/
def P10691110572645817395.Spec : Prop :=
  ∀ n, P10691110572645817395.a n = A064216 (n + 1)

end A064216

/-! ## A064216.P6844758058276808073

`∑{d}[n+1, A048673(#)*A349397((n+1)/#)]`
-/

namespace A064216.P6844758058276808073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048673 d * A349397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064216.P6844758058276808073

namespace A064216

/-- `∑{d}[n+1, A048673(#)*A349397((n+1)/#)]` -/
def P6844758058276808073.Spec : Prop :=
  ∀ n, P6844758058276808073.a n = A064216 (n + 1)

end A064216

/-! ## A064216.P8600927322921820604

`A266407(A264985(n)+1)`
-/

namespace A064216.P8600927322921820604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266407 (A264985 n + 1).toNat

end

end A064216.P8600927322921820604

namespace A064216

/-- `A266407(A264985(n)+1)` -/
def P8600927322921820604.Spec : Prop :=
  ∀ n, P8600927322921820604.a n = A064216 (n + 1)

end A064216

/-! ## A064216.P13909822728795675586

`A266407(A264996(n+1))`
-/

namespace A064216.P13909822728795675586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266407 (A264996 (n + 1)).toNat

end

end A064216.P13909822728795675586

namespace A064216

/-- `A266407(A264996(n+1))` -/
def P13909822728795675586.Spec : Prop :=
  ∀ n, P13909822728795675586.a n = A064216 (n + 1)

end A064216

/-! ## A064216.P4334474619892948708

`A290099(Δ[n²])`
-/

namespace A064216.P4334474619892948708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290099 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A064216.P4334474619892948708

namespace A064216

/-- `A290099(Δ[n²])` -/
def P4334474619892948708.Spec : Prop :=
  ∀ n, P4334474619892948708.a n = A064216 (n + 1)

end A064216

/-! ## A064216.P15095664001696695292

`abs(A290099(2*n+1))`
-/

namespace A064216.P15095664001696695292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290099 (2 * n + 1)|

end

end A064216.P15095664001696695292

namespace A064216

/-- `abs(A290099(2*n+1))` -/
def P15095664001696695292.Spec : Prop :=
  ∀ n, P15095664001696695292.a n = A064216 (n + 1)

end A064216

/-! ## A064216.P7153183795912199020

`∑{d}[2*n+1, A348045(#)]`
-/

namespace A064216.P7153183795912199020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A348045 d

end

end A064216.P7153183795912199020

namespace A064216

/-- `∑{d}[2*n+1, A348045(#)]` -/
def P7153183795912199020.Spec : Prop :=
  ∀ n, P7153183795912199020.a n = A064216 (n + 1)

end A064216

/-! ## A064216.P17525066084574081213

`A000010(2*n+1)-A353748(2*n+1)`
-/

namespace A064216.P17525066084574081213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1) - A353748 (2 * n + 1)

end

end A064216.P17525066084574081213

namespace A064216

/-- `A000010(2*n+1)-A353748(2*n+1)` -/
def P17525066084574081213.Spec : Prop :=
  ∀ n, P17525066084574081213.a n = A064216 (n + 1)

theorem P17525066084574081213.correct : P17525066084574081213.Spec := by
  intro n
  simp only [A064216, Nat.add_sub_cancel, A064216.P17525066084574081213.a, A064216.P5935432423843156478.a, A000010, A000010.P4673923239450215316.a, A064989, A064989.P13349672914146769936.a, A353748, A353748.P1336225986400836670.a, A003557, A003557.P6364735403900941810.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A006530, A006530.P13372528560459906635.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A059841, A059841.P7264174615531153985.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064216

/-! ## A064216.P3597797123789582657

`A353747(2*n+1)-A000010(2*n+1)`
-/

namespace A064216.P3597797123789582657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353747 (2 * n + 1) - A000010 (2 * n + 1)

end

end A064216.P3597797123789582657

namespace A064216

/-- `A353747(2*n+1)-A000010(2*n+1)` -/
def P3597797123789582657.Spec : Prop :=
  ∀ n, P3597797123789582657.a n = A064216 (n + 1)

theorem P3597797123789582657.correct : P3597797123789582657.Spec := by
  intro n
  simp only [A064216, Nat.add_sub_cancel, A064216.P3597797123789582657.a, A064216.P5935432423843156478.a, A000010, A000010.P4673923239450215316.a, A064989, A064989.P13349672914146769936.a, A353747, A353747.P3016860989461656940.a, A003557, A003557.P6364735403900941810.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A006530, A006530.P13372528560459906635.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A059841, A059841.P7264174615531153985.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064216

/-! ## A064216.P16017462362858949783

`A353749(2*n+1)/A000010(2*n+1)`
-/

namespace A064216.P16017462362858949783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353749 (2 * n + 1) : ℚ) / (A000010 (2 * n + 1) : ℚ)

end

end A064216.P16017462362858949783

namespace A064216

/-- `A353749(2*n+1)/A000010(2*n+1)` -/
def P16017462362858949783.Spec : Prop :=
  ∀ n, P16017462362858949783.a n = (A064216 (n + 1) : ℚ)

end A064216

/-! ## A064216.P3434570174297240598

`A079707(Δ[n²])`
-/

namespace A064216.P3434570174297240598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079707 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A064216.P3434570174297240598

namespace A064216

/-- `A079707(Δ[n²])` -/
def P3434570174297240598.Spec : Prop :=
  ∀ n, P3434570174297240598.a n = A064216 (n + 1)

end A064216

/-! ## A064216.P9194556435756762907

`A252463(Δ[n²])`
-/

namespace A064216.P9194556435756762907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A064216.P9194556435756762907

namespace A064216

/-- `A252463(Δ[n²])` -/
def P9194556435756762907.Spec : Prop :=
  ∀ n, P9194556435756762907.a n = A064216 (n + 1)

end A064216

/-!
# A064217: Least k such that k*7^n +/ - 1 are twin primes.

The programs for A064217, there is no canonical definition to state claims against.
-/

/-! ## A064217.P8593902677147920740

`A071558(7^n)`
-/

namespace A064217.P8593902677147920740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (7 ^ n)

end

end A064217.P8593902677147920740

/-!
# A064218: Least k such that k*10^n +/ - 1 are twin primes.

The programs for A064218, there is no canonical definition to state claims against.
-/

/-! ## A064218.P17597516009333595184

`A048994(n)+A038699(A091894(3*n))`
-/

namespace A064218.P17597516009333595184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 n + A038699 (A091894 (3 * n)).toNat

end

end A064218.P17597516009333595184

/-! ## A064218.P1894027865336548640

`xor(A084341(2*n+1), A357581(A000108(n)))`
-/

namespace A064218.P1894027865336548640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084341 (2 * n + 1)) (A357581 (A000108 n).toNat)

end

end A064218.P1894027865336548640

/-!
# A064219: a(1) = 1; a(n) > 0; for each k from 1 to n, k divides a(n) or a(n)+1 and a(n) is the least such integer.

The programs for A064219, there is no canonical definition to state claims against.
-/

/-! ## A064219.P15256727354635687579

`A361246(n+1)-1`
-/

namespace A064219.P15256727354635687579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361246 (n + 1) - 1

end

end A064219.P15256727354635687579

/-! ## A064219.P9918424900246176101

`A361916(A020639(2*(n+1)))+A361246(n+1)`
-/

namespace A064219.P9918424900246176101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361916 (A020639 (2 * (n + 1))).toNat + A361246 (n + 1)

end

end A064219.P9918424900246176101

/-! ## A064219.P2206744079241901654

`A023443(A361246(n+1))`
-/

namespace A064219.P2206744079241901654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A361246 (n + 1)).toNat

end

end A064219.P2206744079241901654

/-! ## A064219.P11605789331252750898

`A023448(A361246(n+1)+5)`
-/

namespace A064219.P11605789331252750898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A361246 (n + 1) + 5).toNat

end

end A064219.P11605789331252750898

/-!
# A064220: Least k such that k*11^n +/ - 1 are twin primes.

The programs for A064220, there is no canonical definition to state claims against.
-/

/-! ## A064220.P7277878157959184328

`lcm(∏{e}[A125948(n+1), #+1], A014567(n+1))`
-/

namespace A064220.P7277878157959184328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) (A014567 (n + 1))

end

end A064220.P7277878157959184328

/-!
# A064222: a(0) = 0; a(n) = DecimalDigitsSortedDecreasing(a(n-1) + 1) for n > 0.

The programs for A064222, there is no canonical definition to state claims against.
-/

/-! ## A064222.P9514015198653429556

`A004186(a(n-1)+1)` with `a(0)=0`
-/

namespace A064222.P9514015198653429556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004186 (a (n - 1) + 1).toNat

end

end A064222.P9514015198653429556

/-! ## A064222.P15568229628769642227

`A004186(1-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A064222.P15568229628769642227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004186 (1 - (-a (n - 1))).toNat

end

end A064222.P15568229628769642227

/-! ## A064222.P12925981946541744036

`A004186(1-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A064222.P12925981946541744036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004186 (1 - (-a (n - 1))).toNat

end

end A064222.P12925981946541744036

/-! ## A064222.P15630230515199484768

`A004186(A020725(a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A064222.P15630230515199484768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004186 (A020725 (a (n - 1)).toNat).toNat

end

end A064222.P15630230515199484768

/-! ## A064222.P1333314009570864908

`A056967(A244112(a(n-1)+1))` with `a(0)=0`
-/

namespace A064222.P1333314009570864908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056967 (A244112 (a (n - 1) + 1).toNat).toNat

end

end A064222.P1333314009570864908

/-! ## A064222.P4744927674695630959

`A004186(1-(A283001(a(n-1))-a(n-1)))` with `a(0)=0`
-/

namespace A064222.P4744927674695630959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004186 (1 - (A283001 (a (n - 1)).toNat - a (n - 1))).toNat

end

end A064222.P4744927674695630959

/-! ## A064222.P2963539168568473695

`record[A004186(n)-A084021(A108782(n))]`
-/

namespace A064222.P2963539168568473695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n - A084021 (A108782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064222.P2963539168568473695

/-! ## A064222.P13703810830457231341

`eq[n, A004186(A328447(n+1)-1)]`
-/

namespace A064222.P13703810830457231341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A328447 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064222.P13703810830457231341

/-! ## A064222.P5120618968063959333

`eq[1, A004719(A108782(n)+A151949(n)+1)]`
-/

namespace A064222.P5120618968063959333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A108782 n + (A151949 n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064222.P5120618968063959333

/-!
# A064223: a(1) = 1; a(n+1) = a(n) + number of decimal digits of a(n) for n > 0.

The programs for A064223, there is no canonical definition to state claims against.
-/

/-! ## A064223.P5784535071820511497

`A088235(n+1)`
-/

namespace A064223.P5784535071820511497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088235 (n + 1)

end

end A064223.P5784535071820511497

/-! ## A064223.P7738673752798836807

`a(n-1)+A073053(a(n-1))%10` with `a(0)=1`
-/

namespace A064223.P7738673752798836807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A073053 (a (n - 1)).toNat) 10

end

end A064223.P7738673752798836807

/-! ## A064223.P14839528835728711087

`A055642(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A064223.P14839528835728711087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055642 (a (n - 1)).toNat + a (n - 1)

end

end A064223.P14839528835728711087

/-! ## A064223.P3689483148336216456

`1+A004216(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A064223.P3689483148336216456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 + A004216 (a (n - 1)).toNat + a (n - 1)

end

end A064223.P3689483148336216456

/-! ## A064223.P6232810101663501913

`A055642(floor(a(n-1)))-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A064223.P6232810101663501913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055642 (a (n - 1)).toNat - (-a (n - 1))

end

end A064223.P6232810101663501913

/-! ## A064223.P9226493395756904559

`A004218(a(n-1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A064223.P9226493395756904559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004218 (a (n - 1) + 1).toNat + a (n - 1)

end

end A064223.P9226493395756904559

/-!
# A064225: a(n) = (9*n^2 + 5*n + 2)/2.

The programs for A064225, the canonical program `A064225.P15843063240312422298` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064225 has offset 0).

The definition of A064225 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n²+5*n+2)/2` (program `A064225.P5497223282124139898`, by `A064225.P5497223282124139898.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064225.P9255893241261932294

`1+n*(9*n+5)/2`
-/

namespace A064225.P9255893241261932294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (n * (9 * n + 5) : ℚ) / 2

end

end A064225.P9255893241261932294

namespace A064225

/-- `1+n*(9*n+5)/2` -/
def P9255893241261932294.Spec : Prop :=
  ∀ n, P9255893241261932294.a n = (A064225 n : ℚ)

theorem P9255893241261932294.correct : P9255893241261932294.Spec := by
  intro n
  induction n with
  | zero => simp [A064225, A064225.P9255893241261932294.a, A064225.P15843063240312422298.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A064225, Nat.add_sub_cancel, A064225.P9255893241261932294.a, A064225.P15843063240312422298.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A064225

/-! ## A064225.P5497223282124139898

`(9*n²+5*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064225.P5497223282124139898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 2 + 5 * n + 2 : ℚ) / 2

end

end A064225.P5497223282124139898

namespace A064225

/-- `(9*n²+5*n+2)/2` -/
def P5497223282124139898.Spec : Prop :=
  ∀ n, P5497223282124139898.a n = (A064225 n : ℚ)

theorem P5497223282124139898.correct : P5497223282124139898.Spec := by
  intro n
  induction n with
  | zero => simp [A064225, A064225.P5497223282124139898.a, A064225.P15843063240312422298.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A064225, Nat.add_sub_cancel, A064225.P5497223282124139898.a, A064225.P15843063240312422298.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A064225

/-! ## A064225.P1736531661506404018

`∑[a(n-1)+9]` with `a(0)=1, a(1)=7`
-/

namespace A064225.P1736531661506404018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064225.P1736531661506404018

namespace A064225

/-- `∑[a(n-1)+9]` -/
def P1736531661506404018.Spec : Prop :=
  ∀ n, (P1736531661506404018.a n : ℤ) = A064225 n

end A064225

/-! ## A064225.P7898910875287305125

`∑[ogf((1+5x+3x^2)/(1-2x+x^2))]`
-/

namespace A064225.P7898910875287305125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064225.P7898910875287305125

namespace A064225

/-- `∑[ogf((1+5x+3x^2)/(1-2x+x^2))]` -/
def P7898910875287305125.Spec : Prop :=
  ∀ n, P7898910875287305125.a n = A064225 n

end A064225

/-! ## A064225.P9790547685074721566

`ogf((1+5x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A064225.P9790547685074721566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 3] [1, -3, 3, -1] n

end

end A064225.P9790547685074721566

namespace A064225

/-- `ogf((1+5x+3x^2)/(1-3x+3x^2-x^3))` -/
def P9790547685074721566.Spec : Prop :=
  ∀ n, P9790547685074721566.a n = A064225 n

end A064225

/-! ## A064225.P9861062064981520694

`floor(9*n+a(n-1)-2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A064225.P9861062064981520694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (9 * n : ℤ) + (a (n - 1) - 2)

end

end A064225.P9861062064981520694

namespace A064225

/-- `floor(9*n+a(n-1)-2)` -/
def P9861062064981520694.Spec : Prop :=
  ∀ n, P9861062064981520694.a n = A064225 n

theorem P9861062064981520694.correct : P9861062064981520694.Spec := by
  intro n
  simp only [A064225, Nat.add_sub_cancel, A064225.P9861062064981520694.a, A064225.P15843063240312422298.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A064225

/-! ## A064225.P15843063240312422298

`floor(9*n-(2-a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064225

/-- `floor(9*n-(2-a(n-1)))` -/
def P15843063240312422298.Spec : Prop :=
  ∀ n, P15843063240312422298.a n = A064225 n

theorem P15843063240312422298.correct : P15843063240312422298.Spec := by
  intro n
  simp only [A064225]

end A064225

/-! ## A064225.P434066612706695964

`floor((2*n)²+C(n+3, 2)-ϕ)`
-/

namespace A064225.P434066612706695964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℝ) + ((Nat.choose (n + 3) 2 : ℝ) - Real.goldenRatio)⌋

end

end A064225.P434066612706695964

namespace A064225

/-- `floor((2*n)²+C(n+3, 2)-ϕ)` -/
def P434066612706695964.Spec : Prop :=
  ∀ n, P434066612706695964.a n = A064225 n

end A064225

/-! ## A064225.P884023477651445036

`abs(2*n-C(2*n+n+2, 2))`
-/

namespace A064225.P884023477651445036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (Nat.choose (2 * n + (n + 2)) 2 : ℤ)|

end

end A064225.P884023477651445036

namespace A064225

/-- `abs(2*n-C(2*n+n+2, 2))` -/
def P884023477651445036.Spec : Prop :=
  ∀ n, P884023477651445036.a n = A064225 n

end A064225

/-! ## A064225.P13206779801852440757

`floor(lcm(2*n+1, 2*n)+∑[n]+ϕ)`
-/

namespace A064225.P13206779801852440757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (2 * n + 1) (2 * n) : ℝ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.goldenRatio)⌋

end

end A064225.P13206779801852440757

namespace A064225

/-- `floor(lcm(2*n+1, 2*n)+∑[n]+ϕ)` -/
def P13206779801852440757.Spec : Prop :=
  ∀ n, P13206779801852440757.a n = A064225 n

end A064225

/-! ## A064225.P15131586707155079307

`A178574(n+1)%A178977(n)`
-/

namespace A064225.P15131586707155079307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178574 (n + 1)) (A178977 n)

end

end A064225.P15131586707155079307

namespace A064225

/-- `A178574(n+1)%A178977(n)` -/
def P15131586707155079307.Spec : Prop :=
  ∀ n, P15131586707155079307.a n = A064225 n

end A064225

/-! ## A064225.P3584046221973822839

`A304163(n+1)%A235332(n)`
-/

namespace A064225.P3584046221973822839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304163 (n + 1)) (A235332 n)

end

end A064225.P3584046221973822839

namespace A064225

/-- `A304163(n+1)%A235332(n)` -/
def P3584046221973822839.Spec : Prop :=
  ∀ n, P3584046221973822839.a n = A064225 n

end A064225

/-! ## A064225.P231541986585157710

`A026393(2*(n+1))`
-/

namespace A064225.P231541986585157710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026393 (2 * (n + 1))

end

end A064225.P231541986585157710

namespace A064225

/-- `A026393(2*(n+1))` -/
def P231541986585157710.Spec : Prop :=
  ∀ n, P231541986585157710.a n = A064225 n

end A064225

/-! ## A064225.P1883531613490030576

`A325260(A016921(n))`
-/

namespace A064225.P1883531613490030576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325260 (A016921 n).toNat

end

end A064225.P1883531613490030576

namespace A064225

/-- `A325260(A016921(n))` -/
def P1883531613490030576.Spec : Prop :=
  ∀ n, P1883531613490030576.a n = A064225 n

end A064225

/-! ## A064225.P3638617397088801517

`∑[A310857(2*n)]`
-/

namespace A064225.P3638617397088801517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310857 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064225.P3638617397088801517

namespace A064225

/-- `∑[A310857(2*n)]` -/
def P3638617397088801517.Spec : Prop :=
  ∀ n, P3638617397088801517.a n = A064225 n

end A064225

/-! ## A064225.P11176656833077392449

`A158687(∑[n+3])`
-/

namespace A064225.P11176656833077392449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158687 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064225.P11176656833077392449

namespace A064225

/-- `A158687(∑[n+3])` -/
def P11176656833077392449.Spec : Prop :=
  ∀ n, P11176656833077392449.a n = A064225 n

end A064225

/-!
# A064226: a(n) = (9*n^2 + 13*n + 6)/2.

The programs for A064226, the canonical program `A064226.P18360739950071325615` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064226 has offset 0).

The definition of A064226 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n²+13*n+6)/2` (program `A064226.P12479180422057309107`, by `A064226.P12479180422057309107.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064226.P9106261388097470176

`3+n*(9*n+13)/2`
-/

namespace A064226.P9106261388097470176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 + (n * (9 * n + 13) : ℚ) / 2

end

end A064226.P9106261388097470176

namespace A064226

/-- `3+n*(9*n+13)/2` -/
def P9106261388097470176.Spec : Prop :=
  ∀ n, P9106261388097470176.a n = (A064226 n : ℚ)

theorem P9106261388097470176.correct : P9106261388097470176.Spec := by
  intro n
  induction n with
  | zero => simp [A064226, A064226.P9106261388097470176.a, A064226.P18360739950071325615.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A064226, Nat.add_sub_cancel, A064226.P9106261388097470176.a, A064226.P18360739950071325615.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A064226

/-! ## A064226.P12479180422057309107

`(9*n²+13*n+6)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064226.P12479180422057309107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 2 + 13 * n + 6 : ℚ) / 2

end

end A064226.P12479180422057309107

namespace A064226

/-- `(9*n²+13*n+6)/2` -/
def P12479180422057309107.Spec : Prop :=
  ∀ n, P12479180422057309107.a n = (A064226 n : ℚ)

theorem P12479180422057309107.correct : P12479180422057309107.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A064226, Nat.add_sub_cancel, A064226.P12479180422057309107.a, A064226.P18360739950071325615.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A064226, Nat.add_sub_cancel, A064226.P12479180422057309107.a, A064226.P18360739950071325615.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A064226

/-! ## A064226.P6625073433846430517

`∑[a(n-1)+9]` with `a(0)=3, a(1)=11`
-/

namespace A064226.P6625073433846430517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 11] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064226.P6625073433846430517

namespace A064226

/-- `∑[a(n-1)+9]` -/
def P6625073433846430517.Spec : Prop :=
  ∀ n, (P6625073433846430517.a n : ℤ) = A064226 n

end A064226

/-! ## A064226.P10775581204549319622

`∑[ogf((3+5x+x^2)/(1-2x+x^2))]`
-/

namespace A064226.P10775581204549319622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064226.P10775581204549319622

namespace A064226

/-- `∑[ogf((3+5x+x^2)/(1-2x+x^2))]` -/
def P10775581204549319622.Spec : Prop :=
  ∀ n, P10775581204549319622.a n = A064226 n

end A064226

/-! ## A064226.P16526549257283200081

`ogf((3+5x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A064226.P16526549257283200081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, 1] [1, -3, 3, -1] n

end

end A064226.P16526549257283200081

namespace A064226

/-- `ogf((3+5x+x^2)/(1-3x+3x^2-x^3))` -/
def P16526549257283200081.Spec : Prop :=
  ∀ n, P16526549257283200081.a n = A064226 n

end A064226

/-! ## A064226.P18360739950071325615

`floor(9*n+a(n-1)+2)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064226

/-- `floor(9*n+a(n-1)+2)` -/
def P18360739950071325615.Spec : Prop :=
  ∀ n, (P18360739950071325615.a n : ℤ) = A064226 n

theorem P18360739950071325615.correct : P18360739950071325615.Spec := by
  intro n
  simp only [A064226]

end A064226

/-! ## A064226.P9900217376672308794

`gcd(∑[n+2]+(2*n+1)², C(2, n+3))`
-/

namespace A064226.P9900217376672308794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1) ^ 2) (Nat.choose 2 (n + 3))

end

end A064226.P9900217376672308794

namespace A064226

/-- `gcd(∑[n+2]+(2*n+1)², C(2, n+3))` -/
def P9900217376672308794.Spec : Prop :=
  ∀ n, (P9900217376672308794.a n : ℤ) = A064226 n

end A064226

/-! ## A064226.P18422071984152564435

`(∑[n+2]+(2*n+1)²)*gcd(n, n+1)`
-/

namespace A064226.P18422071984152564435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1) ^ 2) * Nat.gcd n (n + 1)

end

end A064226.P18422071984152564435

namespace A064226

/-- `(∑[n+2]+(2*n+1)²)*gcd(n, n+1)` -/
def P18422071984152564435.Spec : Prop :=
  ∀ n, (P18422071984152564435.a n : ℤ) = A064226 n

end A064226

/-! ## A064226.P11864989064363360393

`(∑[n+2]+(2*n+1)²)*and(1, 2*n+1)`
-/

namespace A064226.P11864989064363360393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1) ^ 2) * Nat.land 1 (2 * n + 1)

end

end A064226.P11864989064363360393

namespace A064226

/-- `(∑[n+2]+(2*n+1)²)*and(1, 2*n+1)` -/
def P11864989064363360393.Spec : Prop :=
  ∀ n, (P11864989064363360393.a n : ℤ) = A064226 n

end A064226

/-! ## A064226.P17794536248096573351

`Δ[(n+1)*A143689(n)]`
-/

namespace A064226.P17794536248096573351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064226.P17794536248096573351

namespace A064226

/-- `Δ[(n+1)*A143689(n)]` -/
def P17794536248096573351.Spec : Prop :=
  ∀ n, P17794536248096573351.a n = A064226 n

end A064226

/-! ## A064226.P11564589062107712711

`A154516(n+1)%A178977(n)`
-/

namespace A064226.P11564589062107712711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154516 (n + 1)) (A178977 n)

end

end A064226.P11564589062107712711

namespace A064226

/-- `A154516(n+1)%A178977(n)` -/
def P11564589062107712711.Spec : Prop :=
  ∀ n, P11564589062107712711.a n = A064226 n

end A064226

/-! ## A064226.P13961371349408525384

`A140064(n+1)`
-/

namespace A064226.P13961371349408525384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140064 (n + 1)

end

end A064226.P13961371349408525384

namespace A064226

/-- `A140064(n+1)` -/
def P13961371349408525384.Spec : Prop :=
  ∀ n, P13961371349408525384.a n = A064226 n

end A064226

/-! ## A064226.P3301261304058269796

`Δ[A067389(n)/2]`
-/

namespace A064226.P3301261304058269796
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067389 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064226.P3301261304058269796

namespace A064226

/-- `Δ[A067389(n)/2]` -/
def P3301261304058269796.Spec : Prop :=
  ∀ n, P3301261304058269796.a n = (A064226 n : ℚ)

theorem P3301261304058269796.correct : P3301261304058269796.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A064226, Nat.add_sub_cancel, A064226.P3301261304058269796.f1, A064226.P3301261304058269796.a, A064226.P18360739950071325615.a, A067389, A067389.P14097551594125527113.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A064226, Nat.add_sub_cancel, A064226.P3301261304058269796.f1, A064226.P3301261304058269796.a, A064226.P18360739950071325615.a, A067389, A067389.P14097551594125527113.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A064226

/-! ## A064226.P1245282307268994548

`Δ[A130884(n)/2]`
-/

namespace A064226.P1245282307268994548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130884 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A064226.P1245282307268994548

namespace A064226

/-- `Δ[A130884(n)/2]` -/
def P1245282307268994548.Spec : Prop :=
  ∀ n, P1245282307268994548.a n = (A064226 n : ℚ)

theorem P1245282307268994548.correct : P1245282307268994548.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A064226, Nat.add_sub_cancel, A064226.P1245282307268994548.f1, A064226.P1245282307268994548.a, A064226.P18360739950071325615.a, A130884, A130884.P3109233479067967411.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A064226, Nat.add_sub_cancel, A064226.P1245282307268994548.f1, A064226.P1245282307268994548.a, A064226.P18360739950071325615.a, A130884, A130884.P3109233479067967411.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A064226

/-! ## A064226.P12465179929353415527

`record[A140064(abs(1-n))]`
-/

namespace A064226.P12465179929353415527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140064 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064226.P12465179929353415527

namespace A064226

/-- `record[A140064(abs(1-n))]` -/
def P12465179929353415527.Spec : Prop :=
  ∀ n, P12465179929353415527.a n = A064226 n

end A064226

/-! ## A064226.P10770743656569633514

`A389143(3*n+2)`
-/

namespace A064226.P10770743656569633514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389143 (3 * n + 2)

end

end A064226.P10770743656569633514

namespace A064226

/-- `A389143(3*n+2)` -/
def P10770743656569633514.Spec : Prop :=
  ∀ n, P10770743656569633514.a n = A064226 n

end A064226

/-! ## A064226.P4808382364049292477

`A321986(A004767(n))`
-/

namespace A064226.P4808382364049292477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321986 (A004767 n).toNat

end

end A064226.P4808382364049292477

namespace A064226

/-- `A321986(A004767(n))` -/
def P4808382364049292477.Spec : Prop :=
  ∀ n, P4808382364049292477.a n = A064226 n

end A064226

/-! ## A064226.P4364963079516292083

`A321986(A047535(n+1))`
-/

namespace A064226.P4364963079516292083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321986 (A047535 (n + 1)).toNat

end

end A064226.P4364963079516292083

namespace A064226

/-- `A321986(A047535(n+1))` -/
def P4364963079516292083.Spec : Prop :=
  ∀ n, P4364963079516292083.a n = A064226 n

end A064226

/-! ## A064226.P2051568787002922384

`A321986(A083031(n+2))`
-/

namespace A064226.P2051568787002922384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321986 (A083031 (n + 2)).toNat

end

end A064226.P2051568787002922384

namespace A064226

/-- `A321986(A083031(n+2))` -/
def P2051568787002922384.Spec : Prop :=
  ∀ n, P2051568787002922384.a n = A064226 n

end A064226

/-! ## A064226.P17205925594411928446

`A321986(A131098(n+2))`
-/

namespace A064226.P17205925594411928446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321986 (A131098 (n + 2)).toNat

end

end A064226.P17205925594411928446

namespace A064226

/-- `A321986(A131098(n+2))` -/
def P17205925594411928446.Spec : Prop :=
  ∀ n, P17205925594411928446.a n = A064226 n

end A064226

/-!
# A064227: From Recamán's sequence (A005132): record values in A057167.

The programs for A064227, there is no canonical definition to state claims against.
-/

/-! ## A064227.P10888283519158560426

`record[A057167(n)]`
-/

namespace A064227.P10888283519158560426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064227.P10888283519158560426

/-! ## A064227.P14652094399029824836

`A057167(A064228(n+1))`
-/

namespace A064227.P14652094399029824836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 (A064228 (n + 1)).toNat

end

end A064227.P14652094399029824836

/-!
# A064230: Triangle T(n,k) = number of rational (0,1) matrices of rank k (n >= 0, 0 <= k <= n).

The programs for A064230, there is no canonical definition to state claims against.
-/

/-! ## A064230.P7333196042488600021

`A064231(n+1)/A004171(A003056(n))`
-/

namespace A064230.P7333196042488600021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064231 (n + 1) : ℚ) / (A004171 (A003056 n).toNat : ℚ)

end

end A064230.P7333196042488600021

/-! ## A064230.P1783006885472415262

`A064231(n+1)/A000079(A131507(n))`
-/

namespace A064230.P1783006885472415262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064231 (n + 1) : ℚ) / (A000079 (A131507 n).toNat : ℚ)

end

end A064230.P1783006885472415262

/-! ## A064230.P17584294586280123031

`A286331(n)-A024155(A000110(n))`
-/

namespace A064230.P17584294586280123031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286331 n - A024155 (A000110 n).toNat

end

end A064230.P17584294586280123031

/-!
# A064231: Triangle read by rows: T(n,k) = number of rational (+1,-1) matrices of rank k (n >= 1, 1 <= k <= n).

The programs for A064231, there is no canonical definition to state claims against.
-/

/-! ## A064231.P15793743792816070374

`A004171(A003056(n))*A064230(n)`
-/

namespace A064231.P15793743792816070374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (A003056 n).toNat * A064230 n

end

end A064231.P15793743792816070374

/-! ## A064231.P1372918223465361170

`A000079(A131507(n))*A064230(n)`
-/

namespace A064231.P1372918223465361170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A131507 n).toNat * A064230 n

end

end A064231.P1372918223465361170

/-! ## A064231.P8755360274590327203

`A004171(A169894(n))*A064230(n)`
-/

namespace A064231.P8755360274590327203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (A169894 n).toNat * A064230 n

end

end A064231.P8755360274590327203

/-! ## A064231.P15269357805635988263

`and(A000265(A100102(n)), A286331(n))*A004171(A003056(n))`
-/

namespace A064231.P15269357805635988263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000265 (A100102 n).toNat) (A286331 n) * A004171 (A003056 n).toNat

end

end A064231.P15269357805635988263

/-!
# A064232: a(n) = n^(n+2) mod (n+1)^(n+1).

The programs for A064232, the canonical program `A064232.P11338699749963750884` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064232 has offset 0).

The definition of A064232 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^(n+2))%((n+1)^(n+1))` (program `A064232.P11338699749963750884`, by `A064232.P11338699749963750884.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A064232.P11338699749963750884

`(n^(n+2))%((n+1)^(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064232

/-- `(n^(n+2))%((n+1)^(n+1))` -/
def P11338699749963750884.Spec : Prop :=
  ∀ n, (P11338699749963750884.a n : ℤ) = A064232 n

theorem P11338699749963750884.correct : P11338699749963750884.Spec := by
  intro n
  simp only [A064232]

end A064232

/-! ## A064232.P17043997573552382356

`abs(A008788(n)%-A000312(n+1))`
-/

namespace A064232.P17043997573552382356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A008788 n) (-A000312 (n + 1))|

end

end A064232.P17043997573552382356

namespace A064232

/-- `abs(A008788(n)%-A000312(n+1))` -/
def P17043997573552382356.Spec : Prop :=
  ∀ n, P17043997573552382356.a n = A064232 n

end A064232

/-!
# A064233: Numbers that are not the sum of a prime number and a nonzero square.

The programs for A064233, there is no canonical definition to state claims against.
-/

/-! ## A064233.P10471585034877148334

`lt[A283183(n+1), 2]+1`
-/

namespace A064233.P10471585034877148334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283183 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A064233.P10471585034877148334

/-! ## A064233.P7725639246614257511

`eq[A002471(n+1), A010051(n+1)]+1`
-/

namespace A064233.P7725639246614257511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064233.P7725639246614257511

/-! ## A064233.P16196680441880663928

`eq[A002471(n+1), A283183(n+1)]+1`
-/

namespace A064233.P16196680441880663928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064233.P16196680441880663928

/-! ## A064233.P12051501404593502998

`eq[A010051(n+1), A283183(n+1)]+1`
-/

namespace A064233.P12051501404593502998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064233.P12051501404593502998

/-! ## A064233.P7356250600253122045

`eq[A000217(A283183(n+1)²), A283183(n+1)]+1`
-/

namespace A064233.P7356250600253122045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A283183 (n + 1) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283183 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064233.P7356250600253122045

/-!
# A064234: The least k such that A063994(k) = Product_{primes p dividing k} gcd(p-1, k-1) = n, or 0 if there's no such k.

The programs for A064234, there is no canonical definition to state claims against.
-/

/-! ## A064234.P13520390827702772829

`A333769(A006882(n))*A341860(n+1)`
-/

namespace A064234.P13520390827702772829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333769 (A006882 n).toNat * A341860 (n + 1)

end

end A064234.P13520390827702772829

/-!
# A064235: The smallest power of 3 that is greater than or equal to n.

The programs for A064235, the canonical program `A064235.P9847577287596558339` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064235 has offset 1).

The definition of A064235 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064235.P9847577287596558339

`3^A080342(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A064235

/-- `3^A080342(n+1)` -/
def P9847577287596558339.Spec : Prop :=
  ∀ n, P9847577287596558339.a n = (A064235 (n + 1) : ℚ)

end A064235

/-! ## A064235.P1844961263025308907

`3^∑[char[3^n]]`
-/

namespace A064235.P1844961263025308907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064235.P1844961263025308907

namespace A064235

/-- `3^∑[char[3^n]]` -/
def P1844961263025308907.Spec : Prop :=
  ∀ n, (P1844961263025308907.a n : ℤ) = A064235 (n + 1)

end A064235

/-! ## A064235.P7341326544589400826

`3*a(floor(n/3))` with `a(0)=1`
-/

namespace A064235.P7341326544589400826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a ⌊(n : ℚ) / 3⌋.toNat

end

end A064235.P7341326544589400826

namespace A064235

/-- `3*a(floor(n/3))` -/
def P7341326544589400826.Spec : Prop :=
  ∀ n, (P7341326544589400826.a n : ℤ) = A064235 (n + 1)

end A064235

/-! ## A064235.P968144157844116603

`3/a(floor(n/3))^(-1)` with `a(0)=1`
-/

namespace A064235.P968144157844116603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 / a ⌊(n : ℚ) / 3⌋.toNat ^ (-1 : ℤ)

end

end A064235.P968144157844116603

namespace A064235

/-- `3/a(floor(n/3))^(-1)` -/
def P968144157844116603.Spec : Prop :=
  ∀ n, P968144157844116603.a n = (A064235 (n + 1) : ℚ)

end A064235

/-! ## A064235.P10353999287252867989

`a(n-1)+2*(n-n%a(n-1))` with `a(0)=1`
-/

namespace A064235.P10353999287252867989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * ((n : ℤ) - Int.tmod (n : ℤ) (a (n - 1)))

end

end A064235.P10353999287252867989

namespace A064235

/-- `a(n-1)+2*(n-n%a(n-1))` -/
def P10353999287252867989.Spec : Prop :=
  ∀ n, P10353999287252867989.a n = A064235 (n + 1)

end A064235

/-! ## A064235.P12353741314746412650

`a(n-1)+2*n*C(n, a(n-1))` with `a(0)=1`
-/

namespace A064235.P12353741314746412650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * n * Nat.choose n (a (n - 1))

end

end A064235.P12353741314746412650

namespace A064235

/-- `a(n-1)+2*n*C(n, a(n-1))` -/
def P12353741314746412650.Spec : Prop :=
  ∀ n, (P12353741314746412650.a n : ℤ) = A064235 (n + 1)

end A064235

/-! ## A064235.P9578171185880254248

`3*a(n-1)/gcd(3, a(a(n-1)%n))` with `a(0)=1`
-/

namespace A064235.P9578171185880254248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) / (Int.gcd 3 (SequenceMachineLib.roundAway (a (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) (n : ℤ)).toNat)) : ℚ))

end

end A064235.P9578171185880254248

namespace A064235

/-- `3*a(n-1)/gcd(3, a(a(n-1)%n))` -/
def P9578171185880254248.Spec : Prop :=
  ∀ n, P9578171185880254248.a n = (A064235 (n + 1) : ℚ)

end A064235

/-! ## A064235.P1706825663073750513

`A000244(∑[char[A000244(n)]])`
-/

namespace A064235.P1706825663073750513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064235.P1706825663073750513

namespace A064235

/-- `A000244(∑[char[A000244(n)]])` -/
def P1706825663073750513.Spec : Prop :=
  ∀ n, P1706825663073750513.a n = A064235 (n + 1)

end A064235

/-! ## A064235.P6507709961409208817

`A050733(∑[char[A050733(n)]])`
-/

namespace A064235.P6507709961409208817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050733 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050733 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064235.P6507709961409208817

namespace A064235

/-- `A050733(∑[char[A050733(n)]])` -/
def P6507709961409208817.Spec : Prop :=
  ∀ n, P6507709961409208817.a n = A064235 (n + 1)

end A064235

/-! ## A064235.P2832028981259613854

`A140429(∑[char[A140429(n)]])`
-/

namespace A064235.P2832028981259613854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064235.P2832028981259613854

namespace A064235

/-- `A140429(∑[char[A140429(n)]])` -/
def P2832028981259613854.Spec : Prop :=
  ∀ n, P2832028981259613854.a n = A064235 (n + 1)

end A064235

/-! ## A064235.P1463773622130114039

`A008486(a(A008620(n)-1))` with `a(0)=1`
-/

namespace A064235.P1463773622130114039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008486 (a (A008620 n - 1).toNat).toNat

end

end A064235.P1463773622130114039

namespace A064235

/-- `A008486(a(A008620(n)-1))` -/
def P1463773622130114039.Spec : Prop :=
  ∀ n, P1463773622130114039.a n = A064235 (n + 1)

end A064235

/-! ## A064235.P11371678070464908544

`A056449(∑[2*char[A056449(n)]])`
-/

namespace A064235.P11371678070464908544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064235.P11371678070464908544

namespace A064235

/-- `A056449(∑[2*char[A056449(n)]])` -/
def P11371678070464908544.Spec : Prop :=
  ∀ n, P11371678070464908544.a n = A064235 (n + 1)

end A064235

/-! ## A064235.P4818974565237657567

`A000244(A276621(A261231(n)))`
-/

namespace A064235.P4818974565237657567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A276621 (A261231 n).toNat).toNat

end

end A064235.P4818974565237657567

namespace A064235

/-- `A000244(A276621(A261231(n)))` -/
def P4818974565237657567.Spec : Prop :=
  ∀ n, P4818974565237657567.a n = A064235 (n + 1)

end A064235

/-! ## A064235.P6730874748213469699

`A132171(A073849(n))`
-/

namespace A064235.P6730874748213469699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A073849 n).toNat

end

end A064235.P6730874748213469699

namespace A064235

/-- `A132171(A073849(n))` -/
def P6730874748213469699.Spec : Prop :=
  ∀ n, P6730874748213469699.a n = A064235 (n + 1)

end A064235

/-! ## A064235.P4029253808517176406

`A132171(A132141(n+1)-1)`
-/

namespace A064235.P4029253808517176406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A132141 (n + 1) - 1).toNat

end

end A064235.P4029253808517176406

namespace A064235

/-- `A132171(A132141(n+1)-1)` -/
def P4029253808517176406.Spec : Prop :=
  ∀ n, P4029253808517176406.a n = A064235 (n + 1)

end A064235

/-! ## A064235.P17303567664254456838

`A132171(A004128(n))`
-/

namespace A064235.P17303567664254456838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A004128 n).toNat

end

end A064235.P17303567664254456838

namespace A064235

/-- `A132171(A004128(n))` -/
def P17303567664254456838.Spec : Prop :=
  ∀ n, P17303567664254456838.a n = A064235 (n + 1)

end A064235

/-! ## A064235.P12687202570720068332

`A132171(A054861(n)+n)`
-/

namespace A064235.P12687202570720068332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A054861 n + (n : ℤ)).toNat

end

end A064235.P12687202570720068332

namespace A064235

/-- `A132171(A054861(n)+n)` -/
def P12687202570720068332.Spec : Prop :=
  ∀ n, P12687202570720068332.a n = A064235 (n + 1)

end A064235

/-! ## A064235.P14031504472638604515

`A132171(A032766(n))`
-/

namespace A064235.P14031504472638604515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A032766 n).toNat

end

end A064235.P14031504472638604515

namespace A064235

/-- `A132171(A032766(n))` -/
def P14031504472638604515.Spec : Prop :=
  ∀ n, P14031504472638604515.a n = A064235 (n + 1)

end A064235

/-! ## A064235.P16403989827653839039

`A132171(A127427(n))`
-/

namespace A064235.P16403989827653839039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A127427 n).toNat

end

end A064235.P16403989827653839039

namespace A064235

/-- `A132171(A127427(n))` -/
def P16403989827653839039.Spec : Prop :=
  ∀ n, P16403989827653839039.a n = A064235 (n + 1)

end A064235

/-! ## A064235.P3988619282013452364

`A132171(A140205(n))`
-/

namespace A064235.P3988619282013452364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132171 (A140205 n).toNat

end

end A064235.P3988619282013452364

namespace A064235

/-- `A132171(A140205(n))` -/
def P3988619282013452364.Spec : Prop :=
  ∀ n, P3988619282013452364.a n = A064235 (n + 1)

end A064235

/-!
# A064236: Number of decimal digits in A001042.

The programs for A064236, there is no canonical definition to state claims against.
-/

/-! ## A064236.P1506712308035466773

`ceil(A301722(ceil(A095768(n+1)/17))/17)`
-/

namespace A064236.P1506712308035466773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A301722 ⌈(A095768 (n + 1) : ℚ) / 17⌉.toNat : ℚ) / 17⌉

end

end A064236.P1506712308035466773

/-! ## A064236.P12839887238705905253

`floor(A054899(∑[2^n])/3)+1`
-/

namespace A064236.P12839887238705905253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054899 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3⌋ + 1

end

end A064236.P12839887238705905253

/-! ## A064236.P12265520511685932639

`ceil(A101402(floor(5*2^(n-2)))/6)`
-/

namespace A064236.P12265520511685932639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101402 ⌊5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋.toNat : ℚ) / 6⌉

end

end A064236.P12265520511685932639

/-! ## A064236.P7631772022943510381

`ceil(A004524(ceil(3*2^(n-3))+ceil(5*2^(n-2)))/11)`
-/

namespace A064236.P7631772022943510381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004524 (⌈3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉ + ⌈5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉).toNat : ℚ) / 11⌉

end

end A064236.P7631772022943510381

/-! ## A064236.P504352925233579378

`A008618(A141025(n))+1`
-/

namespace A064236.P504352925233579378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A141025 n).toNat + 1

end

end A064236.P504352925233579378

/-!
# A064238: Values of m such that N = (am+1)(bm+1)(cm+1) is a 3-Carmichael number (A087788), where a,b,c = 1,2,3.

The programs for A064238, there is no canonical definition to state claims against.
-/

/-! ## A064238.P201083007021205848

`6*A046025(n+1)`
-/

namespace A064238.P201083007021205848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A046025 (n + 1)

end

end A064238.P201083007021205848

/-! ## A064238.P3695307189355595519

`a(n-1)+6*A033503(n)` with `a(0)=6`
-/

namespace A064238.P3695307189355595519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 6 * A033503 n

end

end A064238.P3695307189355595519

/-! ## A064238.P9273811681528838156

`A174734(n+2)-1`
-/

namespace A064238.P9273811681528838156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174734 (n + 2) - 1

end

end A064238.P9273811681528838156

/-! ## A064238.P9500710083916852987

`2*A124408(n+2)`
-/

namespace A064238.P9500710083916852987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124408 (n + 2)

end

end A064238.P9500710083916852987

/-! ## A064238.P4934419454807298549

`floor(A137702(n+2)/2)`
-/

namespace A064238.P4934419454807298549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A137702 (n + 2) : ℚ) / 2⌋

end

end A064238.P4934419454807298549

/-! ## A064238.P11387691648451341288

`2*(A105652(n+2)+1)`
-/

namespace A064238.P11387691648451341288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A105652 (n + 2) + 1)

end

end A064238.P11387691648451341288

/-! ## A064238.P10645262225620385430

`A137702(n+2)%A174734(n+2)`
-/

namespace A064238.P10645262225620385430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137702 (n + 2)) (A174734 (n + 2))

end

end A064238.P10645262225620385430

/-! ## A064238.P14126932538744181959

`(A137702(n+2)-A257679(2*n+1))/2`
-/

namespace A064238.P14126932538744181959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137702 (n + 2) - A257679 (2 * n + 1) : ℚ) / 2

end

end A064238.P14126932538744181959

/-! ## A064238.P1340590281234663655

`2*∩[A123998(n+2), A255607(n+2)]`
-/

namespace A064238.P1340590281234663655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123998 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064238.P1340590281234663655

/-! ## A064238.P17418258139491745723

`∩[A005382(n+2), A088878(n+2)]-1`
-/

namespace A064238.P17418258139491745723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A064238.P17418258139491745723

/-! ## A064238.P1486814750491437562

`∩[A088878(n+2), A174568(n+2)]-1`
-/

namespace A064238.P1486814750491437562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A064238.P1486814750491437562

/-! ## A064238.P1288532781519188751

`2*∩[A123998(n+2), A174100(n+2)]`
-/

namespace A064238.P1288532781519188751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123998 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064238.P1288532781519188751

/-! ## A064238.P5416694276775497307

`2*∩[A174100(n+2), A255607(n+2)]`
-/

namespace A064238.P5416694276775497307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064238.P5416694276775497307

/-! ## A064238.P14790983768502036091

`∩[A068080(n+2), A088878(n+2)]-1`
-/

namespace A064238.P14790983768502036091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068080 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A064238.P14790983768502036091

/-! ## A064238.P17020805677998180885

`∩[A130800(n+1), A141515(n+1)]`
-/

namespace A064238.P17020805677998180885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064238.P17020805677998180885

/-! ## A064238.P12753324156943837295

`2*∩[A005098(n+2), A174100(n+2)]`
-/

namespace A064238.P12753324156943837295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064238.P12753324156943837295

/-! ## A064238.P17583269444538530561

`∩[A130800(n+1), A165972(n+1)]`
-/

namespace A064238.P17583269444538530561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064238.P17583269444538530561

/-! ## A064238.P11977664694638386705

`2*∩[A005097(n+2), A255607(n+2)]`
-/

namespace A064238.P11977664694638386705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064238.P11977664694638386705

/-! ## A064238.P4266873285320440480

`2*∩[A102781(n+2), A255607(n+2)]`
-/

namespace A064238.P4266873285320440480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064238.P4266873285320440480

/-! ## A064238.P7776737992594041794

`A000010(A174734(n+2))`
-/

namespace A064238.P7776737992594041794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A174734 (n + 2)).toNat

end

end A064238.P7776737992594041794

/-!
# A064244: Values of m such that N=(am+1)(bm+1)(cm+1) is a 3-Carmichael number (A087788), where a,b,c = 1,2,15.

The programs for A064244, there is no canonical definition to state claims against.
-/

/-! ## A064244.P17339504189811785726

`∩[A063157(n+1), A086378(n+1)]`
-/

namespace A064244.P17339504189811785726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064244.P17339504189811785726

/-!
# A064263: a(n) = 11*n mod 30.

The programs for A064263, the canonical program `A064263.P17184208965746812833` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064263 has offset 0).

The definition of A064263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064263.P17184208965746812833

`(11*n)%30`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064263

/-- `(11*n)%30` -/
def P17184208965746812833.Spec : Prop :=
  ∀ n, (P17184208965746812833.a n : ℤ) = A064263 n

theorem P17184208965746812833.correct : P17184208965746812833.Spec := by
  intro n
  simp only [A064263]

end A064263

/-!
# A064264: a(n) = 19*n mod 30.

The programs for A064264, the canonical program `A064264.P5937820716179192664` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064264 has offset 0).

The definition of A064264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064264.P5937820716179192664

`(19*n)%30`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064264

/-- `(19*n)%30` -/
def P5937820716179192664.Spec : Prop :=
  ∀ n, (P5937820716179192664.a n : ℤ) = A064264 n

theorem P5937820716179192664.correct : P5937820716179192664.Spec := by
  intro n
  simp only [A064264]

end A064264

/-!
# A064265: Paschal regular in Julian calendar for a year with Golden Number n.

The programs for A064265, there is no canonical definition to state claims against.
-/

/-! ## A064265.P8682316475847390882

`A064267(n+1)%7`
-/

namespace A064265.P8682316475847390882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064267 (n + 1)) 7

end

end A064265.P8682316475847390882

/-! ## A064265.P9270559370780054391

`(A348924(n)+4)%7`
-/

namespace A064265.P9270559370780054391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348924 n + 4) 7

end

end A064265.P9270559370780054391

/-! ## A064265.P448061786799082029

`(A349710(n)+4)%7`
-/

namespace A064265.P448061786799082029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349710 n + 4) 7

end

end A064265.P448061786799082029

/-! ## A064265.P2226450491427447261

`(A064264(n+4)+10)%7`
-/

namespace A064265.P2226450491427447261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064264 (n + 4) + 10) 7

end

end A064265.P2226450491427447261

/-! ## A064265.P7776171024261891878

`(40-A064263(n+4))%7`
-/

namespace A064265.P7776171024261891878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (40 - A064263 (n + 4)) 7

end

end A064265.P7776171024261891878

/-!
# A064266: Lune of Jan 01 in Julian calendar for a year with Golden Number n.

The programs for A064266, there is no canonical definition to state claims against.
-/

/-! ## A064266.P5792162216081312348

`(11*(n+9))%30`
-/

namespace A064266.P5792162216081312348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (n + 9) % 30

end

end A064266.P5792162216081312348

/-! ## A064266.P3837376363419981291

`abs((a(n-1)+11)%30)` with `a(0)=9`
-/

namespace A064266.P3837376363419981291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  (a (n - 1) + 11) % 30

end

end A064266.P3837376363419981291

/-! ## A064266.P15724002564401224037

`(a(n-1)+40)%30+1` with `a(0)=9`
-/

namespace A064266.P15724002564401224037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  (a (n - 1) + 40) % 30 + 1

end

end A064266.P15724002564401224037

/-! ## A064266.P8167997753453995035

`A064263(n+9)`
-/

namespace A064266.P8167997753453995035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064263 (n + 9)

end

end A064266.P8167997753453995035

/-! ## A064266.P8269540862899573871

`A017485(n)%30+1`
-/

namespace A064266.P8269540862899573871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017485 n) 30 + 1

end

end A064266.P8269540862899573871

/-!
# A064267: Clavis terminorum in Julian calendar for a year with Golden Number n.

The programs for A064267, there is no canonical definition to state claims against.
-/

/-! ## A064267.P6051565638113779323

`A348924(n)+11`
-/

namespace A064267.P6051565638113779323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348924 n + 11

end

end A064267.P6051565638113779323

/-! ## A064267.P10823314502439164761

`A349710(n)+11`
-/

namespace A064267.P10823314502439164761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349710 n + 11

end

end A064267.P10823314502439164761

/-! ## A064267.P15789494323125035941

`A064264(n+4)+10`
-/

namespace A064267.P15789494323125035941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064264 (n + 4) + 10

end

end A064267.P15789494323125035941

/-! ## A064267.P2712483084118627854

`40-A064263(n+4)`
-/

namespace A064267.P2712483084118627854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  40 - A064263 (n + 4)

end

end A064267.P2712483084118627854

/-! ## A064267.P9234373931518386452

`12-(A000010(-or(n, -2))-A349710(n))`
-/

namespace A064267.P9234373931518386452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 - (A000010 (-Int.lor (n : ℤ) (-2)).toNat - A349710 n)

end

end A064267.P9234373931518386452

/-!
# A064268: a(n) = (a(n-1) * a(n-6) + 2 * a(n-3) * a(n-4)) / a(n-7). a(1) = ... = a(7) = 1. Somos-7 variation.

The programs for A064268, the canonical program `A064268.P4094909402140124104` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064268 has offset 1).

The definition of A064268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064268.P4094909402140124104

`(a(n-1)*a(n-6)+2*a(n-3)*a(n-4))/a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064268

/-- `(a(n-1)*a(n-6)+2*a(n-3)*a(n-4))/a(n-7)` -/
def P4094909402140124104.Spec : Prop :=
  ∀ n, P4094909402140124104.a n = (A064268 (n + 1) : ℚ)

end A064268

/-! ## A064268.P10745092467340603300

`A387963(A133846(n+1))`
-/

namespace A064268.P10745092467340603300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387963 (A133846 (n + 1)).toNat

end

end A064268.P10745092467340603300

namespace A064268

/-- `A387963(A133846(n+1))` -/
def P10745092467340603300.Spec : Prop :=
  ∀ n, P10745092467340603300.a n = A064268 (n + 1)

end A064268

/-! ## A064268.P13854101007370307318

`or(1, A307405(A001592(n)))`
-/

namespace A064268.P13854101007370307318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A307405 (A001592 n).toNat)

end

end A064268.P13854101007370307318

namespace A064268

/-- `or(1, A307405(A001592(n)))` -/
def P13854101007370307318.Spec : Prop :=
  ∀ n, P13854101007370307318.a n = A064268 (n + 1)

end A064268

/-! ## A064268.P15176043669410536824

`or(1, A341975(A023361(n)))`
-/

namespace A064268.P15176043669410536824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A341975 ((A023361 n).toNat + 11))

end

end A064268.P15176043669410536824

namespace A064268

/-- `or(1, A341975(A023361(n)))` -/
def P15176043669410536824.Spec : Prop :=
  ∀ n, P15176043669410536824.a n = A064268 (n + 1)

end A064268

/-! ## A064268.P8504250637026893409

`A165737(or(1, A308825(n)))`
-/

namespace A064268.P8504250637026893409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165737 (Int.lor 1 (A308825 n)).toNat

end

end A064268.P8504250637026893409

namespace A064268

/-- `A165737(or(1, A308825(n)))` -/
def P8504250637026893409.Spec : Prop :=
  ∀ n, P8504250637026893409.a n = A064268 (n + 1)

end A064268

/-!
# A064269: Numbers k such that prime(k) - k is prime.

The programs for A064269, there is no canonical definition to state claims against.
-/

/-! ## A064269.P3903247018808003957

`A227420(n+1)-A064270(n+1)`
-/

namespace A064269.P3903247018808003957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227420 (n + 1) - A064270 (n + 1)

end

end A064269.P3903247018808003957

/-! ## A064269.P1650224375143614687

`eq[2, A000005(A014689(n+1))]+1`
-/

namespace A064269.P1650224375143614687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A014689 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064269.P1650224375143614687

/-! ## A064269.P7369310549701290808

`eq[1, A001222(A008578(n+1)-n)]`
-/

namespace A064269.P7369310549701290808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064269.P7369310549701290808

/-! ## A064269.P15412090534013836441

`eq[1, A010051(A008578(n+1)-n)]`
-/

namespace A064269.P15412090534013836441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064269.P15412090534013836441

/-! ## A064269.P3070727104779656974

`eq[2, A000005(A008578(n+1)-n)]`
-/

namespace A064269.P3070727104779656974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064269.P3070727104779656974

/-! ## A064269.P2842762559879385868

`eq[2, A000005(A028815(n)-(n+1))]`
-/

namespace A064269.P2842762559879385868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028815 n - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064269.P2842762559879385868

/-! ## A064269.P12543186959554869578

`eq[2, A071364(A008578(n+1)-n)]`
-/

namespace A064269.P12543186959554869578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064269.P12543186959554869578

/-! ## A064269.P11358337876720091408

`eq[1, A001222(A000040(n+1)-(n+1))]+1`
-/

namespace A064269.P11358337876720091408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064269.P11358337876720091408

/-! ## A064269.P1095456524124603038

`eq[1, A001222(A040976(n+1)-n+1)]+1`
-/

namespace A064269.P1095456524124603038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A040976 (n + 1) - (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064269.P1095456524124603038

/-! ## A064269.P4198096986550604774

`eq[2, A000005(A000040(n+1)-(n+1))]+1`
-/

namespace A064269.P4198096986550604774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064269.P4198096986550604774

/-! ## A064269.P9355666747073183633

`A000720(A227420(n+1))`
-/

namespace A064269.P9355666747073183633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A227420 (n + 1)).toNat

end

end A064269.P9355666747073183633

/-! ## A064269.P18181420303648880677

`eq[2, A300835(A008578(n+1)-n)]`
-/

namespace A064269.P18181420303648880677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300835 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064269.P18181420303648880677

/-! ## A064269.P5510874280233392709

`A000720(A002808(A064270(n+1)))`
-/

namespace A064269.P5510874280233392709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002808 (A064270 (n + 1)).toNat).toNat

end

end A064269.P5510874280233392709

/-! ## A064269.P18419056162055776549

`A000720(p?[A002808(n+1)-A010051(n+1)])`
-/

namespace A064269.P18419056162055776549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064269.P18419056162055776549

/-! ## A064269.P4991329583632877522

`A073425(A064270(n+1))`
-/

namespace A064269.P4991329583632877522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 (A064270 (n + 1)).toNat

end

end A064269.P4991329583632877522

/-! ## A064269.P15339177828711752401

`eq[1, A001065(A008578(n+1)-n)]`
-/

namespace A064269.P15339177828711752401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064269.P15339177828711752401

/-! ## A064269.P16845050543511555928

`eq[1, A003415(A008578(n+1)-n)]`
-/

namespace A064269.P16845050543511555928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064269.P16845050543511555928

/-! ## A064269.P9663193897485873402

`eq[1, A032741(A008578(n+1)-n)]`
-/

namespace A064269.P9663193897485873402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064269.P9663193897485873402

/-! ## A064269.P15793173440933525556

`eq[2, A303809(A000040(n+1)-(n+1))]+1`
-/

namespace A064269.P15793173440933525556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303809 (A000040 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064269.P15793173440933525556

/-! ## A064269.P2876363692529348799

`A049084(p?[A078782(n+1)+1])`
-/

namespace A064269.P2876363692529348799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A064269.P2876363692529348799

/-!
# A064270: Primes of the form prime(k) - k; or primes arising in A014689.

The programs for A064270, there is no canonical definition to state claims against.
-/

/-! ## A064270.P2697390123501139458

`A227420(n+1)-A064269(n+1)`
-/

namespace A064270.P2697390123501139458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227420 (n + 1) - A064269 (n + 1)

end

end A064270.P2697390123501139458

/-! ## A064270.P9570388758670774753

`p?[A156037(n+1)-n]`
-/

namespace A064270.P9570388758670774753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P9570388758670774753

/-! ## A064270.P1512334511981447200

`p?[p?[2*n+1]-(n+2)]`
-/

namespace A064270.P1512334511981447200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P1512334511981447200

/-! ## A064270.P7958538672608320377

`p?[A014689(n+1)]`
-/

namespace A064270.P7958538672608320377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P7958538672608320377

/-! ## A064270.P6804967561979378615

`p?[A073170(n+1)]`
-/

namespace A064270.P6804967561979378615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P6804967561979378615

/-! ## A064270.P9004465997821848409

`record[A076557(n+3)]`
-/

namespace A064270.P9004465997821848409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076557 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064270.P9004465997821848409

/-! ## A064270.P6959998949945605408

`p?[∑[A135732(n+1)]]`
-/

namespace A064270.P6959998949945605408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P6959998949945605408

/-! ## A064270.P18219687535789330949

`p?[Δ[A112997(n+1)]]`
-/

namespace A064270.P18219687535789330949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112997 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P18219687535789330949

/-! ## A064270.P6248430145818095834

`p?[A065890(n+1)+1]`
-/

namespace A064270.P6248430145818095834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P6248430145818095834

/-! ## A064270.P8715098477341182920

`p?[A162177(n+1)+1]`
-/

namespace A064270.P8715098477341182920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P8715098477341182920

/-! ## A064270.P4151253031067339822

`p?[A014692(n+1)-1]`
-/

namespace A064270.P4151253031067339822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P4151253031067339822

/-! ## A064270.P9380339151662996535

`p?[A131733(n+1)+n]`
-/

namespace A064270.P9380339151662996535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P9380339151662996535

/-! ## A064270.P16804993262218029150

`p?[A006093(n+1)-n]`
-/

namespace A064270.P16804993262218029150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P16804993262218029150

/-! ## A064270.P13408666680048405474

`p?[A008578(n+1)-n]`
-/

namespace A064270.P13408666680048405474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P13408666680048405474

/-! ## A064270.P4903396791359709648

`p?[A028815(n)-(n+1)]`
-/

namespace A064270.P4903396791359709648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P4903396791359709648

/-! ## A064270.P235082448584304213

`p?[A182986(n+1)-n]`
-/

namespace A064270.P235082448584304213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P235082448584304213

/-! ## A064270.P7934320744548272987

`p?[A040976(n+2)-n]`
-/

namespace A064270.P7934320744548272987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P7934320744548272987

/-! ## A064270.P13608790510116701310

`p?[A154115(n+2)-n]`
-/

namespace A064270.P13608790510116701310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P13608790510116701310

/-! ## A064270.P10361405077988872330

`p?[A158611(n+2)-n]`
-/

namespace A064270.P10361405077988872330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P10361405077988872330

/-! ## A064270.P15027205554828714823

`p?[∑[A046933(n+1)]+1]`
-/

namespace A064270.P15027205554828714823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064270.P15027205554828714823

/-!
# A064271: Numbers k such that sigma(k) - 2k is prime.

The programs for A064271, there is no canonical definition to state claims against.
-/

/-! ## A064271.P2829634937519355973

`filter[A088005(n+1), A294936(#)]`
-/

namespace A064271.P2829634937519355973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A064271.P2829634937519355973

/-! ## A064271.P3088560562547853143

`filter[A088005(n+1), A378550(#)]`
-/

namespace A064271.P3088560562547853143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A064271.P3088560562547853143

/-! ## A064271.P3146720783433229048

`∩[A088005(n+1), A326133(n+1)]`
-/

namespace A064271.P3146720783433229048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064271.P3146720783433229048

/-! ## A064271.P7230447122413555017

`∩[A087245(n+1), A088005(n+1)]`
-/

namespace A064271.P7230447122413555017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A064271.P7230447122413555017

/-!
# A064272: Number of representations of n as the sum of a prime number and a nonzero square.

The programs for A064272, there is no canonical definition to state claims against.
-/

/-! ## A064272.P2144410589493845011

`A317682(n+2)-A317683(n+2)`
-/

namespace A064272.P2144410589493845011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317682 (n + 2) - A317683 (n + 2)

end

end A064272.P2144410589493845011

/-! ## A064272.P1582176337257978659

`floor(A283183(n+2)/2)`
-/

namespace A064272.P1582176337257978659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A283183 (n + 2) : ℚ) / 2⌋

end

end A064272.P1582176337257978659

/-! ## A064272.P2755470078049499251

`A004526(A283183(n+2))`
-/

namespace A064272.P2755470078049499251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A283183 (n + 2)).toNat

end

end A064272.P2755470078049499251

/-! ## A064272.P3529447941014811983

`A002265(2*A283183(n+2))`
-/

namespace A064272.P3529447941014811983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A283183 (n + 2)).toNat

end

end A064272.P3529447941014811983

/-! ## A064272.P13027727618332626439

`A002471(n+2)-A010051(n+2)`
-/

namespace A064272.P13027727618332626439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (n + 2) - A010051 (n + 2)

end

end A064272.P13027727618332626439

/-! ## A064272.P5454105492347857615

`A283183(n+2)-A002471(n+2)`
-/

namespace A064272.P5454105492347857615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283183 (n + 2) - A002471 (n + 2)

end

end A064272.P5454105492347857615

/-! ## A064272.P6316337080921925437

`(A283183(n+2)-A010051(n+2))/2`
-/

namespace A064272.P6316337080921925437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283183 (n + 2) - A010051 (n + 2) : ℚ) / 2

end

end A064272.P6316337080921925437

/-! ## A064272.P3863585053276155929

`A002471(n+2)-A000035(A035026(n+2))`
-/

namespace A064272.P3863585053276155929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (n + 2) - A000035 (A035026 (n + 2)).toNat

end

end A064272.P3863585053276155929

/-! ## A064272.P267391681635681574

`A002471(n+2)+A000720(n+1)-A000720(n+2)`
-/

namespace A064272.P267391681635681574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (n + 2) + (A000720 (n + 1) - A000720 (n + 2))

end

end A064272.P267391681635681574

/-! ## A064272.P4633420532689310422

`A002471(n+2)-Δ[A230980(n+1)]`
-/

namespace A064272.P4633420532689310422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (n + 2) - (f1 (n + 1) - f1 n)

end

end A064272.P4633420532689310422

/-! ## A064272.P10619902002098120455

`A002471(n+2)+A365167(n+2)-A365126(n+2)`
-/

namespace A064272.P10619902002098120455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (n + 2) + (A365167 (n + 2) - A365126 (n + 2))

end

end A064272.P10619902002098120455

/-! ## A064272.P13752107406322047140

`A002471(n+2)+A283760(n+2)-A302354(n+2)`
-/

namespace A064272.P13752107406322047140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 (n + 2) + (A283760 (n + 2) - A302354 (n + 2))

end

end A064272.P13752107406322047140

/-!
# A064273: Permutation of nonnegative integers: a(n) = A013928(A019565(n)).

The programs for A064273, there is no canonical definition to state claims against.
-/

/-! ## A064273.P2107984992454840602

`A246353(n)-1`
-/

namespace A064273.P2107984992454840602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246353 n - 1

end

end A064273.P2107984992454840602

/-! ## A064273.P6999361742393496983

`A013928(A019565(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064273.P6999361742393496983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A019565 n).toNat

end

end A064273.P6999361742393496983

/-! ## A064273.P10308419092235952421

`A280193(2*n+1)+A246353(n)`
-/

namespace A064273.P10308419092235952421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A246353 n

end

end A064273.P10308419092235952421

/-! ## A064273.P11790055111611834925

`A326408(A007918(n))+A246353(n)`
-/

namespace A064273.P11790055111611834925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326408 (A007918 n).toNat + A246353 n

end

end A064273.P11790055111611834925

/-! ## A064273.P2695311336226962255

`A326408(A000040(n+1))+A246353(n)`
-/

namespace A064273.P2695311336226962255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326408 (A000040 (n + 1)).toNat + A246353 n

end

end A064273.P2695311336226962255

/-! ## A064273.P11654511310064650114

`A348951(A002144(n+1))+A246353(n)`
-/

namespace A064273.P11654511310064650114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348951 (A002144 (n + 1)).toNat + A246353 n

end

end A064273.P11654511310064650114

/-! ## A064273.P8333163544441294838

`abs(A246353(n)+A008683(A065091(n+1)))`
-/

namespace A064273.P8333163544441294838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246353 n + A008683 (A065091 (n + 1)).toNat|

end

end A064273.P8333163544441294838

/-! ## A064273.P6290200757059148458

`A292935(A019425(2*(n+1)))+A246353(n)`
-/

namespace A064273.P6290200757059148458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292935 (A019425 (2 * (n + 1))).toNat + A246353 n

end

end A064273.P6290200757059148458

/-! ## A064273.P18429908445182060604

`A330025(A132239(n+1))+A246353(n)`
-/

namespace A064273.P18429908445182060604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A132239 (n + 1)).toNat + A246353 n

end

end A064273.P18429908445182060604

/-! ## A064273.P10301975428648784748

`A013928(A339809(n)+1)`
-/

namespace A064273.P10301975428648784748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A339809 n + 1).toNat

end

end A064273.P10301975428648784748

/-! ## A064273.P12565515797399919604

`A107079(A019565(n)+1)-2`
-/

namespace A064273.P12565515797399919604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (A019565 n + 1).toNat - 2

end

end A064273.P12565515797399919604

/-! ## A064273.P10573453529628838087

`A107079(root(A334110(n), 2))-1`
-/

namespace A064273.P10573453529628838087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (SequenceMachineLib.roundAway ((A334110 n : ℝ) ^ (1 / (2 : ℝ)))).toNat - 1

end

end A064273.P10573453529628838087

/-! ## A064273.P15102361529488798306

`A013928(A332462(A005940(n+1)))`
-/

namespace A064273.P15102361529488798306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A332462 (A005940 (n + 1)).toNat).toNat

end

end A064273.P15102361529488798306

/-! ## A064273.P5550067716116247808

`A277196(A048680(n))-1`
-/

namespace A064273.P5550067716116247808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277196 (A048680 n).toNat - 1

end

end A064273.P5550067716116247808

/-!
# A064275: Inverse of sequence A032447 considered as a permutation of the positive integers.

The programs for A064275, there is no canonical definition to state claims against.
-/

/-! ## A064275.P2680236312282081821

`xor(A080998(n+1), A175253(A147468(n+1)))`
-/

namespace A064275.P2680236312282081821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080998 (n + 1)) (A175253 (A147468 (n + 1)).toNat)

end

end A064275.P2680236312282081821

/-! ## A064275.P11214764277057133010

`xor(A080998(n+1), A276689(A283821(n+1)))`
-/

namespace A064275.P11214764277057133010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080998 (n + 1)) (A276689 (A283821 (n + 1)).toNat)

end

end A064275.P11214764277057133010

/-!
# A064276: Number of 2 X 2 singular integer matrices with elements from {0,...,n} up to row and column permutation.

The programs for A064276, the canonical program `A064276.P18165099478647077307` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064276 has offset 0).

The definition of A064276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A064276.P18018637172517180288

`(A059306(n)+(n+1)*(2*n+3))/4`
-/

namespace A064276.P18018637172517180288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059306 n + ((n + 1) * (2 * n + 3) : ℤ) : ℚ) / 4

end

end A064276.P18018637172517180288

namespace A064276

/-- `(A059306(n)+(n+1)*(2*n+3))/4` -/
def P18018637172517180288.Spec : Prop :=
  ∀ n, P18018637172517180288.a n = (A064276 n : ℚ)

end A064276

/-! ## A064276.P18165099478647077307

`∑[A209295(n)+1+n]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A064276

/-- `∑[A209295(n)+1+n]` -/
def P18165099478647077307.Spec : Prop :=
  ∀ n, P18165099478647077307.a n = A064276 n

theorem P18165099478647077307.correct : P18165099478647077307.Spec := by
  intro n
  simp only [A064276]

end A064276

/-! ## A064276.P18033884878748089710

`∑[∑{d}[n, A029935(#)]+Δ[n²]]`
-/

namespace A064276.P18033884878748089710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A029935 d + ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064276.P18033884878748089710

namespace A064276

/-- `∑[∑{d}[n, A029935(#)]+Δ[n²]]` -/
def P18033884878748089710.Spec : Prop :=
  ∀ n, P18033884878748089710.a n = A064276 n

theorem P18033884878748089710.correct : P18033884878748089710.Spec := by
  intro n
  simp only [A064276, Nat.add_sub_cancel, A064276.P18033884878748089710.f2, A064276.P18033884878748089710.f3, A064276.P18033884878748089710.f1, A064276.P18033884878748089710.a, A064276.P18165099478647077307.f1, A064276.P18165099478647077307.a, A029935, A029935.P1636467149315566281.f1, A029935.P1636467149315566281.a, A209295, A209295.P12511635555149130807.f1, A209295.P12511635555149130807.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064276

/-! ## A064276.P332295232046339996

`∑[∑{d}[n², A000010(gcd(n, #))]]+(n+1)²`
-/

namespace A064276.P332295232046339996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000010 (Nat.gcd n d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A064276.P332295232046339996

namespace A064276

/-- `∑[∑{d}[n², A000010(gcd(n, #))]]+(n+1)²` -/
def P332295232046339996.Spec : Prop :=
  ∀ n, P332295232046339996.a n = A064276 n

end A064276

/-! ## A064276.P2602825840188538497

`∑[A005408(n)+∑{d}[n, A029935(#)]]`
-/

namespace A064276.P2602825840188538497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + ∑ d ∈ Nat.divisors (f2 n), A029935 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064276.P2602825840188538497

namespace A064276

/-- `∑[A005408(n)+∑{d}[n, A029935(#)]]` -/
def P2602825840188538497.Spec : Prop :=
  ∀ n, P2602825840188538497.a n = A064276 n

end A064276

/-! ## A064276.P6045325803056849268

`A382069(n+1)+A178881(n+1)`
-/

namespace A064276.P6045325803056849268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382069 (n + 1) + A178881 (n + 1)

end

end A064276.P6045325803056849268

namespace A064276

/-- `A382069(n+1)+A178881(n+1)` -/
def P6045325803056849268.Spec : Prop :=
  ∀ n, P6045325803056849268.a n = A064276 n

end A064276

/-! ## A064276.P1096197698171916558

`A344485(n+1)+A272718(n+1)`
-/

namespace A064276.P1096197698171916558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344485 (n + 1) + A272718 (n + 1)

end

end A064276.P1096197698171916558

namespace A064276

/-- `A344485(n+1)+A272718(n+1)` -/
def P1096197698171916558.Spec : Prop :=
  ∀ n, P1096197698171916558.a n = A064276 n

end A064276

/-! ## A064276.P15441873714821334801

`A039623(n+1)-A064363(n)`
-/

namespace A064276.P15441873714821334801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039623 (n + 1) - A064363 n

end

end A064276.P15441873714821334801

namespace A064276

/-- `A039623(n+1)-A064363(n)` -/
def P15441873714821334801.Spec : Prop :=
  ∀ n, P15441873714821334801.a n = A064276 n

end A064276

/-!
# A064277: Anti-divisorial 2-decomposition values.

The programs for A064277, there is no canonical definition to state claims against.
-/

/-! ## A064277.P3439948155949215777

`A007895(A261013(n+1)+A079907(n+1))`
-/

namespace A064277.P3439948155949215777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A261013 (n + 1) + A079907 (n + 1)).toNat

end

end A064277.P3439948155949215777

/-!
# A064279: Number of ordered pairs a,b of elements in the cyclic group C_n such that the subgroup generated by the pair a,b is a proper subgroup of C_n.

The programs for A064279, the canonical program `A064279.P12022089793920685943` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064279 has offset 1).

The definition of A064279 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007434, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A064279.P12022089793920685943

`(n+1)²-A007434(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A064279

/-- `(n+1)²-A007434(n+1)` -/
def P12022089793920685943.Spec : Prop :=
  ∀ n, P12022089793920685943.a n = A064279 (n + 1)

theorem P12022089793920685943.correct : P12022089793920685943.Spec := by
  intro n
  simp only [A064279, Nat.add_sub_cancel]

end A064279

/-! ## A064279.P4268036465033974594

`(n+1)²-Δ[A321879(n)]`
-/

namespace A064279.P4268036465033974594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A064279.P4268036465033974594

namespace A064279

/-- `(n+1)²-Δ[A321879(n)]` -/
def P4268036465033974594.Spec : Prop :=
  ∀ n, P4268036465033974594.a n = A064279 (n + 1)

end A064279

/-! ## A064279.P15159579246105462639

`(n+1)²-A379833(n+1)/(n+1)²`
-/

namespace A064279.P15159579246105462639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) - (A379833 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A064279.P15159579246105462639

namespace A064279

/-- `(n+1)²-A379833(n+1)/(n+1)²` -/
def P15159579246105462639.Spec : Prop :=
  ∀ n, P15159579246105462639.a n = (A064279 (n + 1) : ℚ)

end A064279

/-! ## A064279.P3229705752654598897

`A005563(n)+1-A007434(n+1)`
-/

namespace A064279.P3229705752654598897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - A007434 (n + 1))

end

end A064279.P3229705752654598897

namespace A064279

/-- `A005563(n)+1-A007434(n+1)` -/
def P3229705752654598897.Spec : Prop :=
  ∀ n, P3229705752654598897.a n = A064279 (n + 1)

theorem P3229705752654598897.correct : P3229705752654598897.Spec := by
  intro n
  simp only [A064279, Nat.add_sub_cancel, A064279.P3229705752654598897.a, A064279.P12022089793920685943.a, A005563, A005563.P13300161655551567421.a, A007434, A007434.P3432859153295839493.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064279

/-! ## A064279.P15335254539779331915

`A000290(n+1)%A007434(n+1)`
-/

namespace A064279.P15335254539779331915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (n + 1)) (A007434 (n + 1))

end

end A064279.P15335254539779331915

namespace A064279

/-- `A000290(n+1)%A007434(n+1)` -/
def P15335254539779331915.Spec : Prop :=
  ∀ n, P15335254539779331915.a n = A064279 (n + 1)

end A064279

/-! ## A064279.P9066208131432966333

`(n+1)²%A007434(A000027(n+1))`
-/

namespace A064279.P9066208131432966333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A007434 (A000027 (n + 1)).toNat)

end

end A064279.P9066208131432966333

namespace A064279

/-- `(n+1)²%A007434(A000027(n+1))` -/
def P9066208131432966333.Spec : Prop :=
  ∀ n, P9066208131432966333.a n = A064279 (n + 1)

end A064279

/-! ## A064279.P9116972021520546800

`∑[A000265(2*n+1)]%A007434(n+1)`
-/

namespace A064279.P9116972021520546800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A007434 (n + 1))

end

end A064279.P9116972021520546800

namespace A064279

/-- `∑[A000265(2*n+1)]%A007434(n+1)` -/
def P9116972021520546800.Spec : Prop :=
  ∀ n, P9116972021520546800.a n = A064279 (n + 1)

end A064279

/-! ## A064279.P16488911816971706144

`∑{d}[n+1, A002618(#)*A051953((n+1)/#)]`
-/

namespace A064279.P16488911816971706144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A051953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064279.P16488911816971706144

namespace A064279

/-- `∑{d}[n+1, A002618(#)*A051953((n+1)/#)]` -/
def P16488911816971706144.Spec : Prop :=
  ∀ n, P16488911816971706144.a n = A064279 (n + 1)

end A064279

/-! ## A064279.P14159687515513872245

`∑{d}[n+1, A001065(#)*A063445((n+1)/#)]`
-/

namespace A064279.P14159687515513872245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064279.P14159687515513872245

namespace A064279

/-- `∑{d}[n+1, A001065(#)*A063445((n+1)/#)]` -/
def P14159687515513872245.Spec : Prop :=
  ∀ n, P14159687515513872245.a n = A064279 (n + 1)

end A064279

/-! ## A064279.P16049530417626256916

`∑{d}[n+1, A008683(#)*A067558((n+1)/#)]`
-/

namespace A064279.P16049530417626256916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A067558 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064279.P16049530417626256916

namespace A064279

/-- `∑{d}[n+1, A008683(#)*A067558((n+1)/#)]` -/
def P16049530417626256916.Spec : Prop :=
  ∀ n, P16049530417626256916.a n = A064279 (n + 1)

end A064279

/-! ## A064279.P10852810158428356182

`∑{d}[n+1, A057660(#)*A062790((n+1)/#)]`
-/

namespace A064279.P10852810158428356182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A062790 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064279.P10852810158428356182

namespace A064279

/-- `∑{d}[n+1, A057660(#)*A062790((n+1)/#)]` -/
def P10852810158428356182.Spec : Prop :=
  ∀ n, P10852810158428356182.a n = A064279 (n + 1)

end A064279

/-! ## A064279.P13820235905817333286

`∑{d}[n+1, A046692(#)*A245484((n+1)/#)]`
-/

namespace A064279.P13820235905817333286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A245484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064279.P13820235905817333286

namespace A064279

/-- `∑{d}[n+1, A046692(#)*A245484((n+1)/#)]` -/
def P13820235905817333286.Spec : Prop :=
  ∀ n, P13820235905817333286.a n = A064279 (n + 1)

end A064279

/-! ## A064279.P13164041743145755184

`∑{d}[n+1, A063754(#)*A340850((n+1)/#)]`
-/

namespace A064279.P13164041743145755184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063754 d * A340850 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064279.P13164041743145755184

namespace A064279

/-- `∑{d}[n+1, A063754(#)*A340850((n+1)/#)]` -/
def P13164041743145755184.Spec : Prop :=
  ∀ n, P13164041743145755184.a n = A064279 (n + 1)

end A064279

/-! ## A064279.P13100154334382912073

`(n+1)²-A000010(n+1)*A001615(n+1)`
-/

namespace A064279.P13100154334382912073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000010 (n + 1) * A001615 (n + 1)

end

end A064279.P13100154334382912073

namespace A064279

/-- `(n+1)²-A000010(n+1)*A001615(n+1)` -/
def P13100154334382912073.Spec : Prop :=
  ∀ n, P13100154334382912073.a n = A064279 (n + 1)

end A064279

/-! ## A064279.P16433720249859510535

`(n+1)²-A059377(n+1)/A065958(n+1)`
-/

namespace A064279.P16433720249859510535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) - (A059377 (n + 1) : ℚ) / (A065958 (n + 1) : ℚ)

end

end A064279.P16433720249859510535

namespace A064279

/-- `(n+1)²-A059377(n+1)/A065958(n+1)` -/
def P16433720249859510535.Spec : Prop :=
  ∀ n, P16433720249859510535.a n = (A064279 (n + 1) : ℚ)

end A064279

/-! ## A064279.P8287001256281163111

`∑{d}[n+1, A007434(#)*A057427((n+1)/#-1)]`
-/

namespace A064279.P8287001256281163111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A057427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A064279.P8287001256281163111

namespace A064279

/-- `∑{d}[n+1, A007434(#)*A057427((n+1)/#-1)]` -/
def P8287001256281163111.Spec : Prop :=
  ∀ n, P8287001256281163111.a n = A064279 (n + 1)

end A064279

/-! ## A064279.P10890447958658420321

`A000217(n+1)+A000217(n)-A007434(n+1)`
-/

namespace A064279.P10890447958658420321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A007434 (n + 1))

end

end A064279.P10890447958658420321

namespace A064279

/-- `A000217(n+1)+A000217(n)-A007434(n+1)` -/
def P10890447958658420321.Spec : Prop :=
  ∀ n, P10890447958658420321.a n = A064279 (n + 1)

theorem P10890447958658420321.correct : P10890447958658420321.Spec := by
  intro n
  simp only [A064279, Nat.add_sub_cancel, A064279.P10890447958658420321.a, A064279.P12022089793920685943.a, A000217, A000217.P10269402890581615239.a, A007434, A007434.P3432859153295839493.a, A000010, A000010.P4673923239450215316.a, A001615, A001615.P12078511981713404634.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A064279

/-! ## A064279.P68238017785857075

`A000330(n+1)-(A007434(n+1)+A000330(n))`
-/

namespace A064279.P68238017785857075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) - (A007434 (n + 1) + A000330 n)

end

end A064279.P68238017785857075

namespace A064279

/-- `A000330(n+1)-(A007434(n+1)+A000330(n))` -/
def P68238017785857075.Spec : Prop :=
  ∀ n, P68238017785857075.a n = A064279 (n + 1)

end A064279

/-! ## A064279.P5298408289521742705

`∑[A060819(2*n+1)]%A007434(n+1)`
-/

namespace A064279.P5298408289521742705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A007434 (n + 1))

end

end A064279.P5298408289521742705

namespace A064279

/-- `∑[A060819(2*n+1)]%A007434(n+1)` -/
def P5298408289521742705.Spec : Prop :=
  ∀ n, P5298408289521742705.a n = A064279 (n + 1)

end A064279

/-! ## A064279.P17687029212226612965

`(n+1)²-Δ[floor(A100450(n)/4)]`
-/

namespace A064279.P17687029212226612965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100450 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A064279.P17687029212226612965

namespace A064279

/-- `(n+1)²-Δ[floor(A100450(n)/4)]` -/
def P17687029212226612965.Spec : Prop :=
  ∀ n, P17687029212226612965.a n = A064279 (n + 1)

end A064279

/-!
# A064281: Least k such that k*10^n+1, k*10^n+3, k*10^n+7 and k*10^n+9 are all prime.

The programs for A064281, there is no canonical definition to state claims against.
-/

/-! ## A064281.P8832607735863469116

`A245625(4*a(n-1))` with `a(0)=4, a(1)=1, a(2)=1`
-/

namespace A064281.P8832607735863469116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1, 1] fun n a =>
  A245625 (4 * a (n - 1)).toNat

end

end A064281.P8832607735863469116

/-!
# A064282: Triangle read by rows: T(n,k) = binomial(3n+3, k)*(n-k+1)/(n+1).

The programs for A064282, the canonical program `A064282.P15361247026332907053` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A064282 has offset 0).

The definition of A064282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A064282.P15361247026332907053

`C(3*row(n)+3, col(n))*(row(n)-col(n)+1)/(row(n)+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A064282

/-- `C(3*row(n)+3, col(n))*(row(n)-col(n)+1)/(row(n)+1)` -/
def P15361247026332907053.Spec : Prop :=
  ∀ n, P15361247026332907053.a n = (A064282 n : ℚ)

end A064282

/-! ## A064282.P12223189807919697938

`A127898(A061579(n))`
-/

namespace A064282.P12223189807919697938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (A061579 n).toNat

end

end A064282.P12223189807919697938

namespace A064282

/-- `A127898(A061579(n))` -/
def P12223189807919697938.Spec : Prop :=
  ∀ n, P12223189807919697938.a n = A064282 n

end A064282

/-! ## A064282.P15049353870726006775

`A127898(A114327(n)+n)`
-/

namespace A064282.P15049353870726006775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (A114327 n + (n : ℤ)).toNat

end

end A064282.P15049353870726006775

namespace A064282

/-- `A127898(A114327(n)+n)` -/
def P15049353870726006775.Spec : Prop :=
  ∀ n, P15049353870726006775.a n = A064282 n

end A064282

/-! ## A064282.P925526089957851623

`A127898(A038722(n+1)-1)`
-/

namespace A064282.P925526089957851623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (A038722 (n + 1) - 1).toNat

end

end A064282.P925526089957851623

namespace A064282

/-- `A127898(A038722(n+1)-1)` -/
def P925526089957851623.Spec : Prop :=
  ∀ n, P925526089957851623.a n = A064282 n

end A064282

/-! ## A064282.P7119976416735433223

`A127898(A093995(n+1)-(n+1))`
-/

namespace A064282.P7119976416735433223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A064282.P7119976416735433223

namespace A064282

/-- `A127898(A093995(n+1)-(n+1))` -/
def P7119976416735433223.Spec : Prop :=
  ∀ n, P7119976416735433223.a n = A064282 n

end A064282

/-! ## A064282.P155232190773142053

`A127898(A260196(n)+A038722(n+1))`
-/

namespace A064282.P155232190773142053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (A260196 n + A038722 (n + 1)).toNat

end

end A064282.P155232190773142053

namespace A064282

/-- `A127898(A260196(n)+A038722(n+1))` -/
def P155232190773142053.Spec : Prop :=
  ∀ n, P155232190773142053.a n = A064282 n

end A064282

/-! ## A064282.P7207738403375396961

`gcd(A127894(A061579(n)), A133089(n))`
-/

namespace A064282.P7207738403375396961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127894 (A061579 n).toNat) (A133089 n)

end

end A064282.P7207738403375396961

namespace A064282

/-- `gcd(A127894(A061579(n)), A133089(n))` -/
def P7207738403375396961.Spec : Prop :=
  ∀ n, (P7207738403375396961.a n : ℤ) = A064282 n

end A064282

/-! ## A064282.P15536148867020730135

`A173020(n+1)/A001263(n+1)*A007318(n)`
-/

namespace A064282.P15536148867020730135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173020 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A007318 n : ℚ)

end

end A064282.P15536148867020730135

namespace A064282

/-- `A173020(n+1)/A001263(n+1)*A007318(n)` -/
def P15536148867020730135.Spec : Prop :=
  ∀ n, P15536148867020730135.a n = (A064282 n : ℚ)

end A064282

/-!
# A064283: Least number which may be expressed as the sum of a prime number and a nonzero square in exactly n different ways.

The programs for A064283, there is no canonical definition to state claims against.
-/

/-! ## A064283.P17940988985230550457

`A270831(2*(n+2))-A096202(A328357(n))`
-/

namespace A064283.P17940988985230550457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270831 (2 * (n + 2)) - A096202 (A328357 n).toNat

end

end A064283.P17940988985230550457

/-!
# A064284: Number of times n appears in Recamán's sequence A005132.

The programs for A064284, there is no canonical definition to state claims against.
-/

/-! ## A064284.P3545517408696108611

`gcd(A128227(A111898(n+1)), A347456(n+2))`
-/

namespace A064284.P3545517408696108611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128227 (A111898 (n + 1)).toNat) (A347456 (n + 2))

end

end A064284.P3545517408696108611

/-! ## A064284.P12451016316467565401

`A080242(C(A165003(n+1), A370815(n+2)))`
-/

namespace A064284.P12451016316467565401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080242 (Nat.choose (A165003 (n + 1)).toNat (A370815 (n + 2)).toNat)

end

end A064284.P12451016316467565401

/-! ## A064284.P13496973870721963363

`gcd(A008277(A104758(n)), A130658(n))`
-/

namespace A064284.P13496973870721963363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008277 (A104758 n).toNat) (A130658 n)

end

end A064284.P13496973870721963363

/-! ## A064284.P14274802346015474520

`A368328(A109613(n+2)^(A069010(abs(1-n)+1)-1))`
-/

namespace A064284.P14274802346015474520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368328 (SequenceMachineLib.roundAway ((A109613 (n + 2) : ℚ) ^ (A069010 (|1 - (n : ℤ)| + 1).toNat - 1 : ℤ))).toNat

end

end A064284.P14274802346015474520

/-! ## A064284.P16792621750496785186

`∑{e}[∑{e}[A119493(A008619(n))+1, #]!+1, #]!`
-/

namespace A064284.P16792621750496785186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119493 (A008619 n).toNat + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A064284.P16792621750496785186

/-! ## A064284.P8307483141946109875

`A266227(A037024(n+1)-A194812(n+1))`
-/

namespace A064284.P8307483141946109875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (A037024 (n + 1) - A194812 (n + 1)).toNat

end

end A064284.P8307483141946109875

/-! ## A064284.P4676704115479631821

`A359910(A040095(n+5)-A178780(n))`
-/

namespace A064284.P4676704115479631821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359910 (A040095 (n + 5) - A178780 n).toNat

end

end A064284.P4676704115479631821

/-! ## A064284.P6448261998526038209

`A069016(gcd(A262478(n), A358023(n+2)))`
-/

namespace A064284.P6448261998526038209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069016 (Int.gcd (A262478 n) (A358023 (n + 2)))

end

end A064284.P6448261998526038209

/-! ## A064284.P10418183469083043311

`A000055(A343253(n+2)%A036037(n+1))`
-/

namespace A064284.P10418183469083043311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (Int.tmod (A343253 (n + 2)) (A036037 (n + 1))).toNat

end

end A064284.P10418183469083043311

/-!
# A064286: Number of cyclotomic cosets C of 2 mod 2n+1 such that -C = C.

The programs for A064286, there is no canonical definition to state claims against.
-/

/-! ## A064286.P7274404422462794295

`A141110(n+1)-A064287(n+1)`
-/

namespace A064286.P7274404422462794295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141110 (n + 1) - A064287 (n + 1)

end

end A064286.P7274404422462794295

/-! ## A064286.P7031750428665394125

`A006694(n+1)-2*A064287(n+1)`
-/

namespace A064286.P7031750428665394125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (n + 1) - 2 * A064287 (n + 1)

end

end A064286.P7031750428665394125

/-! ## A064286.P1587207445596373539

`A081844(n+1)-A005408(A064287(n+1))`
-/

namespace A064286.P1587207445596373539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081844 (n + 1) - A005408 (A064287 (n + 1)).toNat

end

end A064286.P1587207445596373539

/-! ## A064286.P9392392531128087716

`A141110(n+1)-(A006694(n+1)-A141110(n+1))`
-/

namespace A064286.P9392392531128087716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141110 (n + 1) - (A006694 (n + 1) - A141110 (n + 1))

end

end A064286.P9392392531128087716

/-! ## A064286.P16156160990073225847

`A028310(A006694(n+1)-A064287(n+1))-A064287(n+1)`
-/

namespace A064286.P16156160990073225847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A006694 (n + 1) - A064287 (n + 1)).toNat - A064287 (n + 1)

end

end A064286.P16156160990073225847

/-! ## A064286.P4857078509201144968

`A028310(A081844(n+1)-1-A064287(n+1))-A064287(n+1)`
-/

namespace A064286.P4857078509201144968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A081844 (n + 1) - 1 - A064287 (n + 1)).toNat - A064287 (n + 1)

end

end A064286.P4857078509201144968

/-! ## A064286.P16407991423220647373

`Δ[A165006(2*n+3)]-A064287(n+1)`
-/

namespace A064286.P16407991423220647373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165006 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A064287 (n + 1)

end

end A064286.P16407991423220647373

/-!
# A064287: Number of cyclotomic cosets C of 2 mod 2n+1 such that -C is not equal to C, divided by 2.

The programs for A064287, there is no canonical definition to state claims against.
-/

/-! ## A064287.P2375670970034059457

`A006694(n+1)-A141110(n+1)`
-/

namespace A064287.P2375670970034059457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (n + 1) - A141110 (n + 1)

end

end A064287.P2375670970034059457

/-! ## A064287.P748154468635723916

`A141110(n+1)-A064286(n+1)`
-/

namespace A064287.P748154468635723916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141110 (n + 1) - A064286 (n + 1)

end

end A064287.P748154468635723916

/-! ## A064287.P12619329936736243905

`(A006694(n+1)-A064286(n+1))/2`
-/

namespace A064287.P12619329936736243905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006694 (n + 1) - A064286 (n + 1) : ℚ) / 2

end

end A064287.P12619329936736243905

/-! ## A064287.P8623289018382369955

`A123108(A081844(n+1)-A064286(n+1))`
-/

namespace A064287.P8623289018382369955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A081844 (n + 1) - A064286 (n + 1)).toNat

end

end A064287.P8623289018382369955

/-! ## A064287.P4085385434887064777

`A123108(A064286(n+1)+A006694(n+1))-A064286(n+1)`
-/

namespace A064287.P4085385434887064777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A064286 (n + 1) + A006694 (n + 1)).toNat - A064286 (n + 1)

end

end A064287.P4085385434887064777

/-! ## A064287.P5797729719966746392

`A252759(A064286(n+1)+A006694(n+1))-A064286(n+1)`
-/

namespace A064287.P5797729719966746392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252759 (A064286 (n + 1) + A006694 (n + 1)).toNat - A064286 (n + 1)

end

end A064287.P5797729719966746392

/-! ## A064287.P14149643726418926153

`Δ[A165006(2*n+3)]-A064286(n+1)`
-/

namespace A064287.P14149643726418926153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165006 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A064286 (n + 1)

end

end A064287.P14149643726418926153

/-!
# A064288: Height of n when it appears for first time in Recamán's sequence A005132.

The programs for A064288, there is no canonical definition to state claims against.
-/

/-! ## A064288.P11955910322012848902

`A064289(A057167(n)%A158462(n+1))`
-/

namespace A064288.P11955910322012848902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (Int.tmod (A057167 n) (A158462 (n + 1))).toNat

end

end A064288.P11955910322012848902

/-! ## A064288.P17905556615694210413

`A064289(A355646(n)%A158462(n+1))`
-/

namespace A064288.P17905556615694210413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (Int.tmod (A355646 n) (A158462 (n + 1))).toNat

end

end A064288.P17905556615694210413

/-! ## A064288.P12816416519580880202

`A064289(A057167(n))`
-/

namespace A064288.P12816416519580880202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (A057167 n).toNat

end

end A064288.P12816416519580880202

/-! ## A064288.P4108290042118749856

`A064289(A355646(n))`
-/

namespace A064288.P4108290042118749856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (A355646 n).toNat

end

end A064288.P4108290042118749856

/-!
# A064289: Height of n-th term in Recamán's sequence A005132.

The programs for A064289, there is no canonical definition to state claims against.
-/

/-! ## A064289.P8478983251254258386

`∑[A160357(n)]-1`
-/

namespace A064289.P8478983251254258386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A064289.P8478983251254258386

/-! ## A064289.P18254372535753251031

`∑[n/A160356(abs(1-n)+1)]`
-/

namespace A064289.P18254372535753251031
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A160356 (|1 - (n : ℤ)| + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064289.P18254372535753251031

/-! ## A064289.P12353015622867503840

`∑[2*char[A057165(n+2)]]-n`
-/

namespace A064289.P12353015622867503840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057165 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A064289.P12353015622867503840

/-! ## A064289.P10860472642058911929

`A023443(∑[A160357(n)])`
-/

namespace A064289.P10860472642058911929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064289.P10860472642058911929

/-! ## A064289.P918663645712292525

`A081331(∑[A160357(n)])`
-/

namespace A064289.P918663645712292525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081331 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064289.P918663645712292525

/-! ## A064289.P14724833960808167261

`∑[A057427(n)*A160357(n)]`
-/

namespace A064289.P14724833960808167261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A160357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064289.P14724833960808167261

/-! ## A064289.P7762231206319944716

`∑[A000040(n+1)%2*A160357(n)]`
-/

namespace A064289.P7762231206319944716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A160357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064289.P7762231206319944716

/-! ## A064289.P12443943297103551785

`(A000578(n)+∑[A160357(n)])%(n+1)`
-/

namespace A064289.P12443943297103551785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n + ∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A064289.P12443943297103551785

/-! ## A064289.P9468501534720471050

`∑[A039982(A166744(n+1))*A160357(n)]`
-/

namespace A064289.P9468501534720471050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (A166744 (n + 1)).toNat * A160357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064289.P9468501534720471050

/-! ## A064289.P4553187727411005334

`A160357(A057166(n+1))+∑[A160357(n)]`
-/

namespace A064289.P4553187727411005334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 (A057166 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064289.P4553187727411005334

/-! ## A064289.P7244311551222137594

`∑[A160357(n)%(8%A053746(n+1))]`
-/

namespace A064289.P7244311551222137594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160357 n) (Int.tmod 8 (A053746 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064289.P7244311551222137594

/-! ## A064289.P7804751087322030165

`A064288(A005132(n))%A064291(A000217(n+1))`
-/

namespace A064289.P7804751087322030165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064288 (A005132 n).toNat) (A064291 (A000217 (n + 1)).toNat)

end

end A064289.P7804751087322030165

/-!
# A064290: First number of height n in Recamán's sequence A005132.

The programs for A064290, there is no canonical definition to state claims against.
-/

/-! ## A064290.P4496835220941855252

`A005132(A064292(n))`
-/

namespace A064290.P4496835220941855252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A064292 n).toNat

end

end A064290.P4496835220941855252

/-! ## A064290.P7917538259535632498

`A209386(A064292(n))/A020639(2*(n+1))`
-/

namespace A064290.P7917538259535632498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209386 (A064292 n).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A064290.P7917538259535632498

/-! ## A064290.P6773425564405023946

`A209386(A064292(n))/A005117(C(2, n+2)+2)`
-/

namespace A064290.P6773425564405023946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209386 (A064292 n).toNat : ℚ) / (A005117 (Nat.choose 2 (n + 2) + 2) : ℚ)

end

end A064290.P6773425564405023946

/-! ## A064290.P10354214358232302995

`A209386(A064292(n))/A001222(A006530(n+2)²)`
-/

namespace A064290.P10354214358232302995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209386 (A064292 n).toNat : ℚ) / (A001222 (A006530 (n + 2) ^ 2).toNat : ℚ)

end

end A064290.P10354214358232302995

/-! ## A064290.P11799633193382665582

`A209386(A064292(n))/A001222(2*A006530(n+1))`
-/

namespace A064290.P11799633193382665582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209386 (A064292 n).toNat : ℚ) / (A001222 (2 * A006530 (n + 1)).toNat : ℚ)

end

end A064290.P11799633193382665582

/-!
# A064291: Record high values in Recamán's sequence A005132.

The programs for A064291, there is no canonical definition to state claims against.
-/

/-! ## A064291.P4813778712644829617

`record[A005132(n)]`
-/

namespace A064291.P4813778712644829617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064291.P4813778712644829617

/-! ## A064291.P17760589495219166592

`record[A063733(n)-1]`
-/

namespace A064291.P17760589495219166592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064291.P17760589495219166592

/-! ## A064291.P14299190078954972121

`record[A209386(n)/2]`
-/

namespace A064291.P14299190078954972121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209386 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064291.P14299190078954972121

/-! ## A064291.P18115675032590977481

`record[A334951(n)+n]`
-/

namespace A064291.P18115675032590977481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064291.P18115675032590977481

/-! ## A064291.P7296686047884091610

`record[floor(A209387(n)/2)]`
-/

namespace A064291.P7296686047884091610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209387 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064291.P7296686047884091610

/-! ## A064291.P13390020208669744118

`A014682(record[A209386(n)])`
-/

namespace A064291.P13390020208669744118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064291.P13390020208669744118

/-! ## A064291.P10122183372473091962

`record[∑[A160356(n+1)]-A160356(n+1)]`
-/

namespace A064291.P10122183372473091962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160356 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A160356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064291.P10122183372473091962

/-! ## A064291.P11048565187864123649

`A008683(A023236(n+1))+record[A063733(n)]`
-/

namespace A064291.P11048565187864123649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A023236 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064291.P11048565187864123649

/-! ## A064291.P15958591622459921560

`record[A382128(n+1)]`
-/

namespace A064291.P15958591622459921560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064291.P15958591622459921560

/-! ## A064291.P13154911669145882121

`A000720(A008578(record[A063733(n)]))`
-/

namespace A064291.P13154911669145882121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A064291.P13154911669145882121

/-! ## A064291.P8113039310425957573

`A004525(record[A209386(n)])`
-/

namespace A064291.P8113039310425957573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064291.P8113039310425957573

/-! ## A064291.P4869310911103897343

`A025480(record[A209386(n)])`
-/

namespace A064291.P4869310911103897343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064291.P4869310911103897343

/-! ## A064291.P9755462690347872625

`A110654(record[A209386(n)])`
-/

namespace A064291.P9755462690347872625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A064291.P9755462690347872625

/-! ## A064291.P3575437703527948541

`A000463(record[A209387(n)])-1`
-/

namespace A064291.P3575437703527948541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A064291.P3575437703527948541

/-!
# A064292: Term at which first number of height n occurs in Recamán's sequence A005132.

The programs for A064292, there is no canonical definition to state claims against.
-/

/-! ## A064292.P3830598408301370584

`A057167(A064290(n))`
-/

namespace A064292.P3830598408301370584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 (A064290 n).toNat

end

end A064292.P3830598408301370584

/-! ## A064292.P4794189251232981562

`∑[A067933(n+1)%floor(2/acot(n))]`
-/

namespace A064292.P4794189251232981562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067933 (n + 1)) ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064292.P4794189251232981562

/-! ## A064292.P18256883678392789710

`lt[∑{e}[∑[3-A328023(n+2)]+1, #], 2]`
-/

namespace A064292.P18256883678392789710
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A328023 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A064292.P18256883678392789710

/-! ## A064292.P15929564080605063845

`eq[1, A000174(A319092(n))]`
-/

namespace A064292.P15929564080605063845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (A319092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A064292.P15929564080605063845

/-! ## A064292.P7305167440997843606

`A236508(A002212(n))+n`
-/

namespace A064292.P7305167440997843606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236508 (A002212 n).toNat + (n : ℤ)

end

end A064292.P7305167440997843606

/-!
# A064293: Last number of height n in Recamán's sequence A005132.

The programs for A064293, there is no canonical definition to state claims against.
-/

/-! ## A064293.P5569377239316727116

`A269831(n+1)+char[2]`
-/

namespace A064293.P5569377239316727116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269831 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A064293.P5569377239316727116

/-! ## A064293.P12898211075339074627

`A005132(A064294(n+1))`
-/

namespace A064293.P12898211075339074627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A064294 (n + 1)).toNat

end

end A064293.P12898211075339074627

/-! ## A064293.P5266250685820392238

`or(A185012(n), A269831(n+1))`
-/

namespace A064293.P5266250685820392238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185012 n) (A269831 (n + 1))

end

end A064293.P5266250685820392238

/-! ## A064293.P2136204163363739378

`or(Δ[A225541(n)], A269831(n+1))`
-/

namespace A064293.P2136204163363739378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A269831 (n + 1))

end

end A064293.P2136204163363739378

/-! ## A064293.P4310708003016491691

`or(A271102(n+2)², A269831(n+1))`
-/

namespace A064293.P4310708003016491691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A271102 (n + 2) ^ 2) (A269831 (n + 1))

end

end A064293.P4310708003016491691

/-!
# A064294: Term at which last number of height n occurs in Recamán's sequence A005132.

The programs for A064294, there is no canonical definition to state claims against.
-/

/-! ## A064294.P14402740442957843573

`A057167(A064293(n+1))`
-/

namespace A064294.P14402740442957843573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 (A064293 (n + 1)).toNat

end

end A064294.P14402740442957843573

/-! ## A064294.P14399805233055768295

`A057167(A269831(n+1)+char[2])`
-/

namespace A064294.P14399805233055768295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 (A269831 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A064294.P14399805233055768295

/-! ## A064294.P13127272504892972889

`A057167(or(A185012(n), A269831(n+1)))`
-/

namespace A064294.P13127272504892972889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 (Int.lor (A185012 n) (A269831 (n + 1))).toNat

end

end A064294.P13127272504892972889

/-! ## A064294.P18161172047833502108

`A057167(or(A271102(n+2)², A269831(n+1)))`
-/

namespace A064294.P18161172047833502108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 (Int.lor (A271102 (n + 2) ^ 2) (A269831 (n + 1))).toNat

end

end A064294.P18161172047833502108

/-!
# A064295: Numbers k such that every (prime) factor of k!+1 is one more than a multiple of k.

The programs for A064295, there is no canonical definition to state claims against.
-/

/-! ## A064295.P14498018443070950429

`comp[∪[A064164(n+1), A064201(n)]]`
-/

namespace A064295.P14498018443070950429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064164 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064201 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A064295.P14498018443070950429

/-! ## A064295.P1487184706103024922

`eq[char[A064164(n+1)], A151933(n)]`
-/

namespace A064295.P1487184706103024922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064164 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A064295.P1487184706103024922

/-!
# A064297: Triangle of self-avoiding rook paths joining opposite corners of n X k board.

The programs for A064297, there is no canonical definition to state claims against.
-/

/-! ## A064297.P9423154824349296343

`A064298(A245300(n)+1)`
-/

namespace A064297.P9423154824349296343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (A245300 n + 1).toNat

end

end A064297.P9423154824349296343

/-! ## A064297.P2269501414829086619

`A341993(A394783(n+1))`
-/

namespace A064297.P2269501414829086619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341993 (A394783 (n + 1)).toNat

end

end A064297.P2269501414829086619

/-! ## A064297.P6775419718281633634

`A048264(C(n, A002262(n)))`
-/

namespace A064297.P6775419718281633634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048264 (Nat.choose n (A002262 n).toNat)

end

end A064297.P6775419718281633634

/-! ## A064297.P13700286220553988408

`A364444(A193606(n))-A193606(n)`
-/

namespace A064297.P13700286220553988408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364444 (A193606 n).toNat - A193606 n

end

end A064297.P13700286220553988408

/-! ## A064297.P901924651011826852

`A120246(A000041(n)^A180662(n))`
-/

namespace A064297.P901924651011826852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120246 (SequenceMachineLib.roundAway ((A000041 n : ℚ) ^ (A180662 n : ℤ))).toNat

end

end A064297.P901924651011826852

/-!
# A064298: Square array read by antidiagonals of self-avoiding rook paths joining opposite corners of n X k board.

The programs for A064298, there is no canonical definition to state claims against.
-/

/-! ## A064298.P15938611057584315371

`A102510(A154867(n))`
-/

namespace A064298.P15938611057584315371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102510 (A154867 n).toNat

end

end A064298.P15938611057584315371

/-! ## A064298.P14899827135617232591

`∑{d}[A009963(n), A303825(#)]`
-/

namespace A064298.P14899827135617232591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A303825 d

end

end A064298.P14899827135617232591

/-! ## A064298.P10047009783572002031

`A089867(A255256(n)-A299905(n))`
-/

namespace A064298.P10047009783572002031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A255256 n - A299905 n).toNat

end

end A064298.P10047009783572002031

/-! ## A064298.P3293326463724739423

`A089870(A255256(n)-A299905(n))`
-/

namespace A064298.P3293326463724739423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (A255256 n - A299905 n).toNat

end

end A064298.P3293326463724739423

/-! ## A064298.P8798528955874996496

`and(A099594(n), A207334(A099594(n)))`
-/

namespace A064298.P8798528955874996496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099594 n) (A207334 (A099594 n).toNat)

end

end A064298.P8798528955874996496

/-!
# A064299: a(n) = B(n)*C(n), where B(n) are Bell numbers (A000110) and C(n) are Catalan numbers (A000108).

The programs for A064299, there is no canonical definition to state claims against.
-/

/-! ## A064299.P10001473693389535026

`A000110(n)*A000108(n)`
-/

namespace A064299.P10001473693389535026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A000108 n

end

end A064299.P10001473693389535026

/-! ## A064299.P5877594709981608641

`abs(A000110(n)*A168491(n))`
-/

namespace A064299.P5877594709981608641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000110 n * A168491 n|

end

end A064299.P5877594709981608641

/-! ## A064299.P2228649942166120634

`abs(A000108(n)*A292935(n))`
-/

namespace A064299.P2228649942166120634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000108 n * A292935 n|

end

end A064299.P2228649942166120634

/-! ## A064299.P17467661108667566847

`A000108(n)*A011971(∑[n])`
-/

namespace A064299.P17467661108667566847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064299.P17467661108667566847

/-! ## A064299.P7016493063931133961

`A000108(n)*A033306(∑[n])`
-/

namespace A064299.P7016493063931133961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A033306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064299.P7016493063931133961

/-! ## A064299.P5574783324709980585

`A000108(n)*A095149(∑[n])`
-/

namespace A064299.P5574783324709980585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A095149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064299.P5574783324709980585

/-! ## A064299.P6683740242927360323

`A000108(n)*A108087(∑[n])`
-/

namespace A064299.P6683740242927360323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A108087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064299.P6683740242927360323

/-! ## A064299.P14693290490819368685

`A000108(n)*A123081(∑[n])`
-/

namespace A064299.P14693290490819368685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A123081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064299.P14693290490819368685

/-! ## A064299.P11359496436314734675

`A000108(n)*A186020(∑[n])`
-/

namespace A064299.P11359496436314734675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A186020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064299.P11359496436314734675

/-! ## A064299.P11304934042887206291

`A000108(n)*A212431(∑[n])`
-/

namespace A064299.P11304934042887206291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A212431 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A064299.P11304934042887206291

