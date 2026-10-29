import SequenceMachineLib.Basic
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A314900: Coordination sequence Gal.6.572.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314900, there is no canonical definition to state claims against.
-/

/-! ## A314900.P4363107567964049352

`A350950(A329738(n))+A250120(n)`
-/

namespace A314900.P4363107567964049352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350950 (A329738 n).toNat + A250120 n

end

end A314900.P4363107567964049352

/-! ## A314900.P11037727257959490131

`A350950(A329738(n))+A047309(2*n+1)+A004273(n)`
-/

namespace A314900.P11037727257959490131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350950 (A329738 n).toNat + (A047309 (2 * n + 1) + A004273 n)

end

end A314900.P11037727257959490131

/-! ## A314900.P7220245845555007329

`A350950(A329738(n))+A008574(2*n)-A047486(2*n+1)`
-/

namespace A314900.P7220245845555007329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350950 (A329738 n).toNat + (A008574 (2 * n) - A047486 (2 * n + 1))

end

end A314900.P7220245845555007329

/-! ## A314900.P17918450701304825891

`A350950(A329738(n))+A008574(2*n)+1-A047412(2*(n+1))`
-/

namespace A314900.P17918450701304825891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350950 (A329738 n).toNat + (A008574 (2 * n) + (1 - A047412 (2 * (n + 1))))

end

end A314900.P17918450701304825891

/-! ## A314900.P15548581265743203986

`A128026(n+1)%A325849(n)+4*n+1`
-/

namespace A314900.P15548581265743203986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128026 (n + 1)) (A325849 n) + (4 * n : ℤ) + 1

end

end A314900.P15548581265743203986

/-!
# A314901: Coordination sequence Gal.5.282.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314901, there is no canonical definition to state claims against.
-/

/-! ## A314901.P3029340167089791976

`A313207(n)+A101455(n)`
-/

namespace A314901.P3029340167089791976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313207 n + A101455 n

end

end A314901.P3029340167089791976

/-! ## A314901.P15653412966744325283

`A313207(n)-A056594(n+1)`
-/

namespace A314901.P15653412966744325283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313207 n - A056594 (n + 1)

end

end A314901.P15653412966744325283

/-! ## A314901.P1444050685779281844

`A313207(n)+2*A004525(n)-n`
-/

namespace A314901.P1444050685779281844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313207 n + (2 * A004525 n - (n : ℤ))

end

end A314901.P1444050685779281844

/-! ## A314901.P267261850034915978

`A252474(A301708(n))-n`
-/

namespace A314901.P267261850034915978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (A301708 n).toNat - (n : ℤ)

end

end A314901.P267261850034915978

/-! ## A314901.P3419299035288363100

`∑[A083399(A045648(n+5))]+n-1+n`
-/

namespace A314901.P3419299035288363100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (A045648 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) - 1 + (n : ℤ)

end

end A314901.P3419299035288363100

/-!
# A314902: Coordination sequence Gal.6.322.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314902, the canonical program `A314902.P13121381249915276676` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314902 has offset 0).

The definition of A314902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314902.P13121381249915276676

`abs(A008592(n)-A314109(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A314902

/-- `abs(A008592(n)-A314109(n))` -/
def P13121381249915276676.Spec : Prop :=
  ∀ n, P13121381249915276676.a n = A314902 n

theorem P13121381249915276676.correct : P13121381249915276676.Spec := by
  intro n
  simp only [A314902]

end A314902

/-! ## A314902.P17427555298264649817

`A008458(n)+A008574(n)-A314109(n)`
-/

namespace A314902.P17427555298264649817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314109 n)

end

end A314902.P17427555298264649817

namespace A314902

/-- `A008458(n)+A008574(n)-A314109(n)` -/
def P17427555298264649817.Spec : Prop :=
  ∀ n, P17427555298264649817.a n = A314902 n

end A314902

/-! ## A314902.P12292984460110661407

`2*n+A004396(A311331(n))`
-/

namespace A314902.P12292984460110661407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A311331 n).toNat

end

end A314902.P12292984460110661407

namespace A314902

/-- `2*n+A004396(A311331(n))` -/
def P12292984460110661407.Spec : Prop :=
  ∀ n, P12292984460110661407.a n = A314902 n

end A314902

/-! ## A314902.P6619350001767438025

`A008585(n)-(n-A004396(A311331(n)))`
-/

namespace A314902.P6619350001767438025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A311331 n).toNat)

end

end A314902.P6619350001767438025

namespace A314902

/-- `A008585(n)-(n-A004396(A311331(n)))` -/
def P6619350001767438025.Spec : Prop :=
  ∀ n, P6619350001767438025.a n = A314902 n

end A314902

/-! ## A314902.P1603613649950918885

`A004396(A311481(n))+2*n`
-/

namespace A314902.P1603613649950918885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311481 n).toNat + (2 * n : ℤ)

end

end A314902.P1603613649950918885

namespace A314902

/-- `A004396(A311481(n))+2*n` -/
def P1603613649950918885.Spec : Prop :=
  ∀ n, P1603613649950918885.a n = A314902 n

end A314902

/-! ## A314902.P14982709787765232018

`A005843(n)+A004396(A311481(n))`
-/

namespace A314902.P14982709787765232018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A311481 n).toNat

end

end A314902.P14982709787765232018

namespace A314902

/-- `A005843(n)+A004396(A311481(n))` -/
def P14982709787765232018.Spec : Prop :=
  ∀ n, P14982709787765232018.a n = A314902 n

end A314902

/-! ## A314902.P14745519542740285503

`A004396(A311331(n)+A008486(n))`
-/

namespace A314902.P14745519542740285503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311331 n + A008486 n).toNat

end

end A314902.P14745519542740285503

namespace A314902

/-- `A004396(A311331(n)+A008486(n))` -/
def P14745519542740285503.Spec : Prop :=
  ∀ n, P14745519542740285503.a n = A314902 n

end A314902

/-! ## A314902.P7976919112633174843

`A004396(A311331(n)+A008585(n))`
-/

namespace A314902.P7976919112633174843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311331 n + A008585 n).toNat

end

end A314902.P7976919112633174843

namespace A314902

/-- `A004396(A311331(n)+A008585(n))` -/
def P7976919112633174843.Spec : Prop :=
  ∀ n, P7976919112633174843.a n = A314902 n

end A314902

/-! ## A314902.P8568644668469236573

`A004396(A311481(n)+A008486(n))`
-/

namespace A314902.P8568644668469236573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311481 n + A008486 n).toNat

end

end A314902.P8568644668469236573

namespace A314902

/-- `A004396(A311481(n)+A008486(n))` -/
def P8568644668469236573.Spec : Prop :=
  ∀ n, P8568644668469236573.a n = A314902 n

end A314902

/-!
# A314903: Coordination sequence Gal.6.339.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314903, the canonical program `A314903.P4262956308037847245` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314903 has offset 0).

The definition of A314903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314903.P65991301248099222

`A311312(n)+A004396(n)`
-/

namespace A314903.P65991301248099222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + A004396 n

end

end A314903.P65991301248099222

namespace A314903

/-- `A311312(n)+A004396(n)` -/
def P65991301248099222.Spec : Prop :=
  ∀ n, P65991301248099222.a n = A314903 n

theorem P65991301248099222.correct : P65991301248099222.Spec := by
  intro n
  simp only [A314903, Nat.add_sub_cancel, A314903.P65991301248099222.a, A314903.P4262956308037847245.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A008706, A008706.P1571514609299617601.a, A128834, A128834.P4430347604004376390.a, A311312, A311312.P1118141043632426917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314903

/-! ## A314903.P3638995428370127833

`A311312(n)+A002264(2*n+1)`
-/

namespace A314903.P3638995428370127833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + A002264 (2 * n + 1)

end

end A314903.P3638995428370127833

namespace A314903

/-- `A311312(n)+A002264(2*n+1)` -/
def P3638995428370127833.Spec : Prop :=
  ∀ n, P3638995428370127833.a n = A314903 n

theorem P3638995428370127833.correct : P3638995428370127833.Spec := by
  intro n
  simp only [A314903, Nat.add_sub_cancel, A314903.P3638995428370127833.a, A314903.P4262956308037847245.a, A002264, A002264.P5647656940077635922.a, A004525, A004525.P4158271949796742323.a, A008706, A008706.P1571514609299617601.a, A128834, A128834.P4430347604004376390.a, A311312, A311312.P1118141043632426917.a, A004396, A004396.P17032557045289780609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314903

/-! ## A314903.P4262956308037847245

`A008706(n)-A128834(n-A004525(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A314903

/-- `A008706(n)-A128834(n-A004525(n))` -/
def P4262956308037847245.Spec : Prop :=
  ∀ n, P4262956308037847245.a n = A314903 n

theorem P4262956308037847245.correct : P4262956308037847245.Spec := by
  intro n
  simp only [A314903]

end A314903

/-! ## A314903.P7861360412151476965

`A313126(n)+A134667(n)`
-/

namespace A314903.P7861360412151476965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313126 n + A134667 n

end

end A314903.P7861360412151476965

namespace A314903

/-- `A313126(n)+A134667(n)` -/
def P7861360412151476965.Spec : Prop :=
  ∀ n, P7861360412151476965.a n = A314903 n

end A314903

/-! ## A314903.P14961074254236904912

`abs(A008592(n)-A314108(n))`
-/

namespace A314903.P14961074254236904912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314108 n|

end

end A314903.P14961074254236904912

namespace A314903

/-- `abs(A008592(n)-A314108(n))` -/
def P14961074254236904912.Spec : Prop :=
  ∀ n, P14961074254236904912.a n = A314903 n

end A314903

/-! ## A314903.P9055942947276837032

`floor(A010015(n)/A314108(n))`
-/

namespace A314903.P9055942947276837032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A314108 n : ℚ)⌋

end

end A314903.P9055942947276837032

namespace A314903

/-- `floor(A010015(n)/A314108(n))` -/
def P9055942947276837032.Spec : Prop :=
  ∀ n, P9055942947276837032.a n = A314903 n

end A314903

/-! ## A314903.P10228282363306011397

`2*A008706(n)-A314108(n)`
-/

namespace A314903.P10228282363306011397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314108 n

end

end A314903.P10228282363306011397

namespace A314903

/-- `2*A008706(n)-A314108(n)` -/
def P10228282363306011397.Spec : Prop :=
  ∀ n, P10228282363306011397.a n = A314903 n

theorem P10228282363306011397.correct : P10228282363306011397.Spec := by
  intro n
  simp only [A314903, Nat.add_sub_cancel, A314903.P10228282363306011397.a, A314903.P4262956308037847245.a, A004525, A004525.P4158271949796742323.a, A008706, A008706.P1571514609299617601.a, A128834, A128834.P4430347604004376390.a, A314108, A314108.P14678985322811750842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314903

/-! ## A314903.P16934820235787607919

`A008458(n)+A008574(n)-A314108(n)`
-/

namespace A314903.P16934820235787607919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314108 n)

end

end A314903.P16934820235787607919

namespace A314903

/-- `A008458(n)+A008574(n)-A314108(n)` -/
def P16934820235787607919.Spec : Prop :=
  ∀ n, P16934820235787607919.a n = A314903 n

end A314903

/-! ## A314903.P15927123824131678463

`A312144(n)+n-∑[A131735(n)]`
-/

namespace A314903.P15927123824131678463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A314903.P15927123824131678463

namespace A314903

/-- `A312144(n)+n-∑[A131735(n)]` -/
def P15927123824131678463.Spec : Prop :=
  ∀ n, P15927123824131678463.a n = A314903 n

end A314903

/-! ## A314903.P15252839709749554202

`A312144(n)+A004525(A004396(n))`
-/

namespace A314903.P15252839709749554202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + A004525 (A004396 n).toNat

end

end A314903.P15252839709749554202

namespace A314903

/-- `A312144(n)+A004525(A004396(n))` -/
def P15252839709749554202.Spec : Prop :=
  ∀ n, P15252839709749554202.a n = A314903 n

end A314903

/-! ## A314903.P15628698666204016194

`A004396(A004525(n))+A314964(n)-A004525(n)`
-/

namespace A314903.P15628698666204016194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A314964 n - A004525 n)

end

end A314903.P15628698666204016194

namespace A314903

/-- `A004396(A004525(n))+A314964(n)-A004525(n)` -/
def P15628698666204016194.Spec : Prop :=
  ∀ n, P15628698666204016194.a n = A314903 n

end A314903

/-! ## A314903.P15827308737086373895

`A313739(n)-A004525(n-A004396(n))`
-/

namespace A314903.P15827308737086373895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A314903.P15827308737086373895

namespace A314903

/-- `A313739(n)-A004525(n-A004396(n))` -/
def P15827308737086373895.Spec : Prop :=
  ∀ n, P15827308737086373895.a n = A314903 n

end A314903

/-! ## A314903.P4421192202091017403

`A004525(A004396(n))+A314970(n)-A004525(n)`
-/

namespace A314903.P4421192202091017403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A314970 n - A004525 n)

end

end A314903.P4421192202091017403

namespace A314903

/-- `A004525(A004396(n))+A314970(n)-A004525(n)` -/
def P4421192202091017403.Spec : Prop :=
  ∀ n, P4421192202091017403.a n = A314903 n

theorem P4421192202091017403.correct : P4421192202091017403.Spec := by
  intro n
  simp only [A314903, Nat.add_sub_cancel, A314903.P4421192202091017403.a, A314903.P4262956308037847245.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A008706, A008706.P1571514609299617601.a, A128834, A128834.P4430347604004376390.a, A314970, A314970.P16762046121003014077.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314903

/-! ## A314903.P17044159969791108352

`A313754(n)-floor((n+1)/3)`
-/

namespace A314903.P17044159969791108352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313754 n - ⌊(n + 1 : ℚ) / 3⌋

end

end A314903.P17044159969791108352

namespace A314903

/-- `A313754(n)-floor((n+1)/3)` -/
def P17044159969791108352.Spec : Prop :=
  ∀ n, P17044159969791108352.a n = A314903 n

theorem P17044159969791108352.correct : P17044159969791108352.Spec := by
  intro n
  simp only [A314903, Nat.add_sub_cancel, A314903.P17044159969791108352.a, A314903.P4262956308037847245.a, A004525, A004525.P4158271949796742323.a, A008706, A008706.P1571514609299617601.a, A128834, A128834.P4430347604004376390.a, A313754, A313754.P6499129976907502351.a, A002264, A002264.P5647656940077635922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314903

/-! ## A314903.P17763262978355398136

`A008576(n)+A313754(n)-A008486(n)`
-/

namespace A314903.P17763262978355398136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313754 n - A008486 n)

end

end A314903.P17763262978355398136

namespace A314903

/-- `A008576(n)+A313754(n)-A008486(n)` -/
def P17763262978355398136.Spec : Prop :=
  ∀ n, P17763262978355398136.a n = A314903 n

end A314903

/-! ## A314903.P16610651012470444059

`A004396(n)+A314737(n)-A004525(n)`
-/

namespace A314903.P16610651012470444059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314737 n - A004525 n)

end

end A314903.P16610651012470444059

namespace A314903

/-- `A004396(n)+A314737(n)-A004525(n)` -/
def P16610651012470444059.Spec : Prop :=
  ∀ n, P16610651012470444059.a n = A314903 n

end A314903

/-! ## A314903.P4989867919011373012

`A313930(n)-∑[A131735(n)]`
-/

namespace A314903.P4989867919011373012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313930 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314903.P4989867919011373012

namespace A314903

/-- `A313930(n)-∑[A131735(n)]` -/
def P4989867919011373012.Spec : Prop :=
  ∀ n, P4989867919011373012.a n = A314903 n

end A314903

/-! ## A314903.P492975383938985825

`A004525(A004396(n))+A313930(n)-n`
-/

namespace A314903.P492975383938985825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313930 n - (n : ℤ))

end

end A314903.P492975383938985825

namespace A314903

/-- `A004525(A004396(n))+A313930(n)-n` -/
def P492975383938985825.Spec : Prop :=
  ∀ n, P492975383938985825.a n = A314903 n

end A314903

/-! ## A314903.P7161154094812815616

`A074067(A314108(n))`
-/

namespace A314903.P7161154094812815616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A314108 n).toNat

end

end A314903.P7161154094812815616

namespace A314903

/-- `A074067(A314108(n))` -/
def P7161154094812815616.Spec : Prop :=
  ∀ n, P7161154094812815616.a n = A314903 n

end A314903

/-! ## A314903.P13993288544316257052

`A163806(A008587(n)+A004525(n))+A008587(n)`
-/

namespace A314903.P13993288544316257052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 (A008587 n + A004525 n).toNat + A008587 n

end

end A314903.P13993288544316257052

namespace A314903

/-- `A163806(A008587(n)+A004525(n))+A008587(n)` -/
def P13993288544316257052.Spec : Prop :=
  ∀ n, P13993288544316257052.a n = A314903 n

end A314903

/-!
# A314905: Coordination sequence Gal.4.125.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314905, there is no canonical definition to state claims against.
-/

/-! ## A314905.P13880699649238315599

`A286060(2*(n+1))-A105805(A107848(n+1))`
-/

namespace A314905.P13880699649238315599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (2 * (n + 1)) - A105805 (A107848 (n + 1)).toNat

end

end A314905.P13880699649238315599

/-! ## A314905.P3836947494014992937

`A360617(A055234(n+1))+A360613(3*n+2)`
-/

namespace A314905.P3836947494014992937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360617 (A055234 (n + 1)).toNat + A360613 (3 * n + 2)

end

end A314905.P3836947494014992937

/-!
# A314906: Coordination sequence Gal.5.228.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314906, there is no canonical definition to state claims against.
-/

/-! ## A314906.P5742914489277833534

`A314901(n)+A185014(A005206(n))`
-/

namespace A314906.P5742914489277833534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314901 n + A185014 (A005206 n).toNat

end

end A314906.P5742914489277833534

/-! ## A314906.P2809001868817339808

`A314901(n)+A185014(A008619(n))`
-/

namespace A314906.P2809001868817339808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314901 n + A185014 (A008619 n).toNat

end

end A314906.P2809001868817339808

/-! ## A314906.P8116505952472920085

`or(A162641(A256353(n+1)), A314901(n))`
-/

namespace A314906.P8116505952472920085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A162641 (A256353 (n + 1)).toNat) (A314901 n)

end

end A314906.P8116505952472920085

/-! ## A314906.P7336447014101299350

`or(A290079(A092539(n)), A314901(n))`
-/

namespace A314906.P7336447014101299350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290079 (A092539 n).toNat) (A314901 n)

end

end A314906.P7336447014101299350

/-! ## A314906.P5702001495950675704

`A114904(A311039(n))`
-/

namespace A314906.P5702001495950675704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114904 (A311039 n).toNat

end

end A314906.P5702001495950675704

/-!
# A314907: Coordination sequence Gal.5.198.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314907, there is no canonical definition to state claims against.
-/

/-! ## A314907.P869761541786061688

`A314917(A062399(n))-A185714(n+1)`
-/

namespace A314907.P869761541786061688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314917 (A062399 n).toNat - A185714 (n + 1)

end

end A314907.P869761541786061688

/-! ## A314907.P6507510232014043611

`A314901(n)+A286133(A148515(n))`
-/

namespace A314907.P6507510232014043611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314901 n + A286133 (A148515 n).toNat

end

end A314907.P6507510232014043611

/-! ## A314907.P15896462650693808345

`or(A285530(A061550(n)), A312568(n))`
-/

namespace A314907.P15896462650693808345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285530 (A061550 n).toNat) (A312568 n)

end

end A314907.P15896462650693808345

/-! ## A314907.P11116944748510699922

`A339579(A234658(n+1))+A312568(n)`
-/

namespace A314907.P11116944748510699922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A234658 (n + 1)).toNat + A312568 n

end

end A314907.P11116944748510699922

/-! ## A314907.P16963047506462739418

`A313708(n)-A206566(A011260(n+1))`
-/

namespace A314907.P16963047506462739418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313708 n - A206566 (A011260 (n + 1)).toNat

end

end A314907.P16963047506462739418

/-!
# A314908: Coordination sequence Gal.6.367.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314908, there is no canonical definition to state claims against.
-/

/-! ## A314908.P11302748446354165714

`∑[A060130(A007088(3*(n+1))+1)]`
-/

namespace A314908.P11302748446354165714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A007088 (3 * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314908.P11302748446354165714

/-! ## A314908.P6774288527114606987

`A312155(n)+A121444(A247672(n+1))`
-/

namespace A314908.P6774288527114606987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312155 n + A121444 (A247672 (n + 1)).toNat

end

end A314908.P6774288527114606987

/-! ## A314908.P9376761472696192871

`A314730(n)+A001221(A003319(n))`
-/

namespace A314908.P9376761472696192871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314730 n + A001221 (A003319 n).toNat

end

end A314908.P9376761472696192871

/-! ## A314908.P16624464367071224596

`A312155(n)+A000035(A007689(n))`
-/

namespace A314908.P16624464367071224596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312155 n + A000035 (A007689 n).toNat

end

end A314908.P16624464367071224596

/-! ## A314908.P2355027375096751683

`A312155(n)+A000035(A052919(n))`
-/

namespace A314908.P2355027375096751683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312155 n + A000035 (A052919 n).toNat

end

end A314908.P2355027375096751683

/-!
# A314909: Coordination sequence Gal.6.467.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314909, there is no canonical definition to state claims against.
-/

/-! ## A314909.P7154702590296337097

`xor(A091447(A000073(n)), A314554(n))`
-/

namespace A314909.P7154702590296337097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091447 (A000073 n).toNat) (A314554 n)

end

end A314909.P7154702590296337097

/-! ## A314909.P11886269454720536623

`A311513(n)+A037888(A025192(n))`
-/

namespace A314909.P11886269454720536623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311513 n + A037888 (A025192 n).toNat

end

end A314909.P11886269454720536623

/-! ## A314909.P7320850941829739857

`A311514(n)+A037888(A025192(n))`
-/

namespace A314909.P7320850941829739857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311514 n + A037888 (A025192 n).toNat

end

end A314909.P7320850941829739857

/-! ## A314909.P6877051795675195702

`A301298(n)+A014081(A115293(3*n+1))`
-/

namespace A314909.P6877051795675195702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A014081 (A115293 (3 * n + 1)).toNat

end

end A314909.P6877051795675195702

/-!
# A314910: Coordination sequence Gal.6.386.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314910, there is no canonical definition to state claims against.
-/

/-! ## A314910.P13745271068547319608

`∑[A088939(A125552(3*n+4))-A130304(2*(n+1))]`
-/

namespace A314910.P13745271068547319608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088939 (A125552 (3 * n + 4)).toNat - A130304 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314910.P13745271068547319608

/-! ## A314910.P12464960659455396723

`or(A151512(A345973(n+1)), A312544(n))`
-/

namespace A314910.P12464960659455396723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151512 (A345973 (n + 1)).toNat) (A312544 n)

end

end A314910.P12464960659455396723

/-! ## A314910.P1208008437075005297

`A360005(A258031(n+1))-A325563(n+1)`
-/

namespace A314910.P1208008437075005297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360005 (A258031 (n + 1)).toNat - A325563 (n + 1)

end

end A314910.P1208008437075005297

/-!
# A314911: Coordination sequence Gal.6.563.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314911, there is no canonical definition to state claims against.
-/

/-! ## A314911.P12438830759957352470

`xor(A010051(A000931(2*n+3)), A250120(n))`
-/

namespace A314911.P12438830759957352470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A000931 (2 * n + 3)).toNat) (A250120 n)

end

end A314911.P12438830759957352470

/-! ## A314911.P16897227287264875145

`A250120(n)-A014027(A000213(n))`
-/

namespace A314911.P16897227287264875145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A014027 (A000213 n).toNat

end

end A314911.P16897227287264875145

/-! ## A314911.P11205816102420845033

`A072154(2*n)-A014027(A000213(n))`
-/

namespace A314911.P11205816102420845033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A014027 (A000213 n).toNat

end

end A314911.P11205816102420845033

/-! ## A314911.P16732813754359203505

`record[A072154(n)/(-1)^n]-A014027(A000213(n))`
-/

namespace A314911.P16732813754359203505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072154 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A014027 (A000213 n).toNat : ℚ)

end

end A314911.P16732813754359203505

/-! ## A314911.P3928454343138325255

`A047486(A008486(n)+1)-A014027(A000213(n))`
-/

namespace A314911.P3928454343138325255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008486 n + 1).toNat - A014027 (A000213 n).toNat

end

end A314911.P3928454343138325255

/-!
# A314912: Coordination sequence Gal.6.195.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314912, the canonical program `A314912.P18076292877621533634` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314912 has offset 0).

The definition of A314912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314912.P11621485551691901413

`A311924(n)+Δ[ceil(C(n, 2)/2)]`
-/

namespace A314912.P11621485551691901413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + (f1 (n + 1) - f1 n)

end

end A314912.P11621485551691901413

namespace A314912

/-- `A311924(n)+Δ[ceil(C(n, 2)/2)]` -/
def P11621485551691901413.Spec : Prop :=
  ∀ n, P11621485551691901413.a n = A314912 n

end A314912

/-! ## A314912.P10827838446123333348

`A311924(n)+A004525(n)`
-/

namespace A314912.P10827838446123333348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + A004525 n

end

end A314912.P10827838446123333348

namespace A314912

/-- `A311924(n)+A004525(n)` -/
def P10827838446123333348.Spec : Prop :=
  ∀ n, P10827838446123333348.a n = A314912 n

end A314912

/-! ## A314912.P4132731238793640026

`A313213(n)+A101455(n)`
-/

namespace A314912.P4132731238793640026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313213 n + A101455 n

end

end A314912.P4132731238793640026

namespace A314912

/-- `A313213(n)+A101455(n)` -/
def P4132731238793640026.Spec : Prop :=
  ∀ n, P4132731238793640026.a n = A314912 n

end A314912

/-! ## A314912.P6918304038342238035

`A311924(n)+n-∑[A021913(n)]`
-/

namespace A314912.P6918304038342238035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A314912.P6918304038342238035

namespace A314912

/-- `A311924(n)+n-∑[A021913(n)]` -/
def P6918304038342238035.Spec : Prop :=
  ∀ n, P6918304038342238035.a n = A314912 n

end A314912

/-! ## A314912.P7833998619437099412

`A311924(n)+n-Δ[A011848(n)]`
-/

namespace A314912.P7833998619437099412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314912.P7833998619437099412

namespace A314912

/-- `A311924(n)+n-Δ[A011848(n)]` -/
def P7833998619437099412.Spec : Prop :=
  ∀ n, P7833998619437099412.a n = A314912 n

end A314912

/-! ## A314912.P16291298318852292467

`A312123(n)+A004396(A004525(n))`
-/

namespace A314912.P16291298318852292467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312123 n + A004396 (A004525 n).toNat

end

end A314912.P16291298318852292467

namespace A314912

/-- `A312123(n)+A004396(A004525(n))` -/
def P16291298318852292467.Spec : Prop :=
  ∀ n, P16291298318852292467.a n = A314912 n

end A314912

/-! ## A314912.P18076292877621533634

`A004525(n)+A314841(n)-A004525(A004396(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A314912

/-- `A004525(n)+A314841(n)-A004525(A004396(n))` -/
def P18076292877621533634.Spec : Prop :=
  ∀ n, P18076292877621533634.a n = A314912 n

theorem P18076292877621533634.correct : P18076292877621533634.Spec := by
  intro n
  simp only [A314912]

end A314912

/-! ## A314912.P3942083813440562402

`A004525(n)+A314847(n)-A004396(A004525(n))`
-/

namespace A314912.P3942083813440562402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314847 n - A004396 (A004525 n).toNat)

end

end A314912.P3942083813440562402

namespace A314912

/-- `A004525(n)+A314847(n)-A004396(A004525(n))` -/
def P3942083813440562402.Spec : Prop :=
  ∀ n, P3942083813440562402.a n = A314912 n

end A314912

/-! ## A314912.P4850952472792947442

`A004525(n)+A315058(n)-A004396(n)`
-/

namespace A314912.P4850952472792947442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315058 n - A004396 n)

end

end A314912.P4850952472792947442

namespace A314912

/-- `A004525(n)+A315058(n)-A004396(n)` -/
def P4850952472792947442.Spec : Prop :=
  ∀ n, P4850952472792947442.a n = A314912 n

end A314912

/-! ## A314912.P6343050628831061375

`abs(A008592(n)-A314107(n))`
-/

namespace A314912.P6343050628831061375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314107 n|

end

end A314912.P6343050628831061375

namespace A314912

/-- `abs(A008592(n)-A314107(n))` -/
def P6343050628831061375.Spec : Prop :=
  ∀ n, P6343050628831061375.a n = A314912 n

end A314912

/-! ## A314912.P4306841923072707364

`A008458(n)+A008574(n)-A314107(n)`
-/

namespace A314912.P4306841923072707364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314107 n)

end

end A314912.P4306841923072707364

namespace A314912

/-- `A008458(n)+A008574(n)-A314107(n)` -/
def P4306841923072707364.Spec : Prop :=
  ∀ n, P4306841923072707364.a n = A314912 n

end A314912

/-! ## A314912.P1931402428405622270

`A313891(n)-∑[A021913(n)]`
-/

namespace A314912.P1931402428405622270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314912.P1931402428405622270

namespace A314912

/-- `A313891(n)-∑[A021913(n)]` -/
def P1931402428405622270.Spec : Prop :=
  ∀ n, P1931402428405622270.a n = A314912 n

end A314912

/-! ## A314912.P12005744404039589909

`A313891(n)-Δ[A011848(n)]`
-/

namespace A314912.P12005744404039589909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 n - (f1 (n + 1) - f1 n)

end

end A314912.P12005744404039589909

namespace A314912

/-- `A313891(n)-Δ[A011848(n)]` -/
def P12005744404039589909.Spec : Prop :=
  ∀ n, P12005744404039589909.a n = A314912 n

end A314912

/-! ## A314912.P2326163651709870243

`A004525(n)+A313891(n)-n`
-/

namespace A314912.P2326163651709870243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313891 n - (n : ℤ))

end

end A314912.P2326163651709870243

namespace A314912

/-- `A004525(n)+A313891(n)-n` -/
def P2326163651709870243.Spec : Prop :=
  ∀ n, P2326163651709870243.a n = A314912 n

end A314912

/-! ## A314912.P16530850056137466919

`Δ[A054925(n)]+A313891(n)-n`
-/

namespace A314912.P16530850056137466919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313891 n - (n : ℤ))

end

end A314912.P16530850056137466919

namespace A314912

/-- `Δ[A054925(n)]+A313891(n)-n` -/
def P16530850056137466919.Spec : Prop :=
  ∀ n, P16530850056137466919.a n = A314912 n

end A314912

/-! ## A314912.P14356086947666343609

`A004396(A004525(n))+A313924(n)-n`
-/

namespace A314912.P14356086947666343609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313924 n - (n : ℤ))

end

end A314912.P14356086947666343609

namespace A314912

/-- `A004396(A004525(n))+A313924(n)-n` -/
def P14356086947666343609.Spec : Prop :=
  ∀ n, P14356086947666343609.a n = A314912 n

end A314912

/-! ## A314912.P10840342852479155272

`A004525(n)+A004396(A315058(n))+n`
-/

namespace A314912.P10840342852479155272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004396 (A315058 n).toNat + (n : ℤ))

end

end A314912.P10840342852479155272

namespace A314912

/-- `A004525(n)+A004396(A315058(n))+n` -/
def P10840342852479155272.Spec : Prop :=
  ∀ n, P10840342852479155272.a n = A314912 n

end A314912

/-! ## A314912.P17302862320282000279

`A004525(n)+A004396(A315067(n))+n`
-/

namespace A314912.P17302862320282000279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004396 (A315067 n).toNat + (n : ℤ))

end

end A314912.P17302862320282000279

namespace A314912

/-- `A004525(n)+A004396(A315067(n))+n` -/
def P17302862320282000279.Spec : Prop :=
  ∀ n, P17302862320282000279.a n = A314912 n

end A314912

/-! ## A314912.P5002286140629816681

`A004525(n)+A004396(A313924(n)+n)`
-/

namespace A314912.P5002286140629816681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + A004396 (A313924 n + (n : ℤ)).toNat

end

end A314912.P5002286140629816681

namespace A314912

/-- `A004525(n)+A004396(A313924(n)+n)` -/
def P5002286140629816681.Spec : Prop :=
  ∀ n, P5002286140629816681.a n = A314912 n

end A314912

/-! ## A314912.P13142102841339764000

`A004525(A312184(n)+5*n)`
-/

namespace A314912.P13142102841339764000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312184 n + (5 * n : ℤ)).toNat

end

end A314912.P13142102841339764000

namespace A314912

/-- `A004525(A312184(n)+5*n)` -/
def P13142102841339764000.Spec : Prop :=
  ∀ n, P13142102841339764000.a n = A314912 n

end A314912

/-!
# A314913: Coordination sequence Gal.6.268.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314913, there is no canonical definition to state claims against.
-/

/-! ## A314913.P7342761006617989367

`A324917(A015767(n+2))+A314899(n)`
-/

namespace A314913.P7342761006617989367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324917 (A015767 (n + 2)).toNat + A314899 n

end

end A314913.P7342761006617989367

/-! ## A314913.P3653014921206722704

`or(A061358(A002380(n)), A314899(n))`
-/

namespace A314913.P3653014921206722704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061358 (A002380 n).toNat) (A314899 n)

end

end A314913.P3653014921206722704

/-! ## A314913.P12536215376830828805

`A250120(n)-A100047(A097035(3*n+4))`
-/

namespace A314913.P12536215376830828805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A100047 (A097035 (3 * n + 4)).toNat

end

end A314913.P12536215376830828805

/-! ## A314913.P3821870286521768549

`A353492(A065840(n+1))+A314912(n)`
-/

namespace A314913.P3821870286521768549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353492 (A065840 (n + 1)).toNat + A314912 n

end

end A314913.P3821870286521768549

/-! ## A314913.P3283679546788787252

`A250120(n)+A056594(A000111(n))`
-/

namespace A314913.P3283679546788787252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A056594 (A000111 n).toNat

end

end A314913.P3283679546788787252

/-!
# A314914: Coordination sequence Gal.6.562.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314914, there is no canonical definition to state claims against.
-/

/-! ## A314914.P14222696736870869058

`or(A314849(n), A316824(2^n))`
-/

namespace A314914.P14222696736870869058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314849 n) (A316824 (2 ^ n))

end

end A314914.P14222696736870869058

/-! ## A314914.P5050195276009845725

`A046072(A045655(n))+A045672(n)`
-/

namespace A314914.P5050195276009845725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A045655 n).toNat + A045672 n

end

end A314914.P5050195276009845725

/-! ## A314914.P12075918757460756388

`A311520(n)+A001221(A027741(n))`
-/

namespace A314914.P12075918757460756388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311520 n + A001221 (A027741 n).toNat

end

end A314914.P12075918757460756388

/-! ## A314914.P11520907885723802044

`A313757(n)-A268833(A253677(n+1))`
-/

namespace A314914.P11520907885723802044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313757 n - A268833 (A253677 (n + 1)).toNat

end

end A314914.P11520907885723802044

/-! ## A314914.P5408758964793572834

`or(A034003(A242171(n+1)), A313112(n))`
-/

namespace A314914.P5408758964793572834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034003 (A242171 (n + 1)).toNat) (A313112 n)

end

end A314914.P5408758964793572834

/-!
# A314915: Coordination sequence Gal.6.248.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314915, the canonical program `A314915.P8542026392828308054` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314915 has offset 0).

The definition of A314915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2358 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314915.P8542026392828308054

`A314765(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A314915

/-- `A314765(n)+Δ[A011864(n)]` -/
def P8542026392828308054.Spec : Prop :=
  ∀ n, P8542026392828308054.a n = A314915 n

theorem P8542026392828308054.correct : P8542026392828308054.Spec := by
  intro n
  simp only [A314915]

end A314915

/-! ## A314915.P16160599408223482742

`abs(A008592(n)-A314106(n))`
-/

namespace A314915.P16160599408223482742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314106 n|

end

end A314915.P16160599408223482742

namespace A314915

/-- `abs(A008592(n)-A314106(n))` -/
def P16160599408223482742.Spec : Prop :=
  ∀ n, P16160599408223482742.a n = A314915 n

end A314915

/-! ## A314915.P14958595454531857530

`2*A008706(n)-A314106(n)`
-/

namespace A314915.P14958595454531857530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314106 n

end

end A314915.P14958595454531857530

namespace A314915

/-- `2*A008706(n)-A314106(n)` -/
def P14958595454531857530.Spec : Prop :=
  ∀ n, P14958595454531857530.a n = A314915 n

end A314915

/-! ## A314915.P11558730432295016786

`A008458(n)+A008574(n)-A314106(n)`
-/

namespace A314915.P11558730432295016786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314106 n)

end

end A314915.P11558730432295016786

namespace A314915

/-- `A008458(n)+A008574(n)-A314106(n)` -/
def P11558730432295016786.Spec : Prop :=
  ∀ n, P11558730432295016786.a n = A314915 n

end A314915

/-! ## A314915.P6899595994216440663

`∑{d}[A008592(n)-A314106(n), A000010(#)]`
-/

namespace A314915.P6899595994216440663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A314915.P6899595994216440663

namespace A314915

/-- `∑{d}[A008592(n)-A314106(n), A000010(#)]` -/
def P6899595994216440663.Spec : Prop :=
  ∀ n, P6899595994216440663.a n = A314915 n

end A314915

/-! ## A314915.P831472601069251466

`2*n+A004396(A311356(n))`
-/

namespace A314915.P831472601069251466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A311356 n).toNat

end

end A314915.P831472601069251466

namespace A314915

/-- `2*n+A004396(A311356(n))` -/
def P831472601069251466.Spec : Prop :=
  ∀ n, P831472601069251466.a n = A314915 n

end A314915

/-! ## A314915.P8430224166744649092

`A008585(n)-(n-A004396(A311356(n)))`
-/

namespace A314915.P8430224166744649092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A311356 n).toNat)

end

end A314915.P8430224166744649092

namespace A314915

/-- `A008585(n)-(n-A004396(A311356(n)))` -/
def P8430224166744649092.Spec : Prop :=
  ∀ n, P8430224166744649092.a n = A314915 n

end A314915

/-! ## A314915.P4648573355405888795

`2*n+A004396(A311523(n))`
-/

namespace A314915.P4648573355405888795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A311523 n).toNat

end

end A314915.P4648573355405888795

namespace A314915

/-- `2*n+A004396(A311523(n))` -/
def P4648573355405888795.Spec : Prop :=
  ∀ n, P4648573355405888795.a n = A314915 n

end A314915

/-! ## A314915.P15839207720880763012

`A008585(n)-(n-A004396(A311523(n)))`
-/

namespace A314915.P15839207720880763012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A311523 n).toNat)

end

end A314915.P15839207720880763012

namespace A314915

/-- `A008585(n)-(n-A004396(A311523(n)))` -/
def P15839207720880763012.Spec : Prop :=
  ∀ n, P15839207720880763012.a n = A314915 n

end A314915

/-! ## A314915.P8787487247650878710

`A004396(2*A311262(n)-n)`
-/

namespace A314915.P8787487247650878710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A311262 n - (n : ℤ)).toNat

end

end A314915.P8787487247650878710

namespace A314915

/-- `A004396(2*A311262(n)-n)` -/
def P8787487247650878710.Spec : Prop :=
  ∀ n, P8787487247650878710.a n = A314915 n

end A314915

/-! ## A314915.P201971847349974352

`A004396(A311356(n)+A008486(n))`
-/

namespace A314915.P201971847349974352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311356 n + A008486 n).toNat

end

end A314915.P201971847349974352

namespace A314915

/-- `A004396(A311356(n)+A008486(n))` -/
def P201971847349974352.Spec : Prop :=
  ∀ n, P201971847349974352.a n = A314915 n

end A314915

/-! ## A314915.P437466582621660046

`A004396(A311356(n)+A008585(n))`
-/

namespace A314915.P437466582621660046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311356 n + A008585 n).toNat

end

end A314915.P437466582621660046

namespace A314915

/-- `A004396(A311356(n)+A008585(n))` -/
def P437466582621660046.Spec : Prop :=
  ∀ n, P437466582621660046.a n = A314915 n

end A314915

/-! ## A314915.P821740814130770048

`A004396(A311523(n)+A008486(n))`
-/

namespace A314915.P821740814130770048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311523 n + A008486 n).toNat

end

end A314915.P821740814130770048

namespace A314915

/-- `A004396(A311523(n)+A008486(n))` -/
def P821740814130770048.Spec : Prop :=
  ∀ n, P821740814130770048.a n = A314915 n

end A314915

/-! ## A314915.P1026502784401733360

`A004396(A311523(n)+A008585(n))`
-/

namespace A314915.P1026502784401733360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311523 n + A008585 n).toNat

end

end A314915.P1026502784401733360

namespace A314915

/-- `A004396(A311523(n)+A008585(n))` -/
def P1026502784401733360.Spec : Prop :=
  ∀ n, P1026502784401733360.a n = A314915 n

end A314915

/-! ## A314915.P16957204439220342090

`A004396(A311262(n)+A311262(n)-n)`
-/

namespace A314915.P16957204439220342090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311262 n + (A311262 n - (n : ℤ))).toNat

end

end A314915.P16957204439220342090

namespace A314915

/-- `A004396(A311262(n)+A311262(n)-n)` -/
def P16957204439220342090.Spec : Prop :=
  ∀ n, P16957204439220342090.a n = A314915 n

end A314915

/-! ## A314915.P17256745929979215850

`A004396(A311262(n)-(n-A311262(n)))`
-/

namespace A314915.P17256745929979215850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311262 n - ((n : ℤ) - A311262 n)).toNat

end

end A314915.P17256745929979215850

namespace A314915

/-- `A004396(A311262(n)-(n-A311262(n)))` -/
def P17256745929979215850.Spec : Prop :=
  ∀ n, P17256745929979215850.a n = A314915 n

end A314915

/-!
# A314916: Coordination sequence Gal.6.367.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314916, there is no canonical definition to state claims against.
-/

/-! ## A314916.P8485375300137675713

`or(A313076(n), A349082(A011782(n)))`
-/

namespace A314916.P8485375300137675713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A313076 n) (A349082 (A011782 n).toNat)

end

end A314916.P8485375300137675713

/-! ## A314916.P1789786769269572423

`or(A314915(n), A349082(A011782(n)))`
-/

namespace A314916.P1789786769269572423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314915 n) (A349082 (A011782 n).toNat)

end

end A314916.P1789786769269572423

/-! ## A314916.P7907810763439020085

`or(A314915(n), A318983(A148065(n)))`
-/

namespace A314916.P7907810763439020085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314915 n) (A318983 (A148065 n).toNat)

end

end A314916.P7907810763439020085

/-! ## A314916.P8072317129654582841

`or(A314915(n), A339629(A275836(n)))`
-/

namespace A314916.P8072317129654582841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314915 n) (A339629 (A275836 n).toNat)

end

end A314916.P8072317129654582841

/-! ## A314916.P12824291111664713824

`xor(A308927(n), A347707(A016921(n)))`
-/

namespace A314916.P12824291111664713824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A308927 n) (A347707 (A016921 n).toNat)

end

end A314916.P12824291111664713824

/-!
# A314917: Coordination sequence Gal.5.202.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314917, there is no canonical definition to state claims against.
-/

/-! ## A314917.P2595655674392407926

`A314907(A062399(n))+A185714(n+1)`
-/

namespace A314917.P2595655674392407926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314907 (A062399 n).toNat + A185714 (n + 1)

end

end A314917.P2595655674392407926

/-! ## A314917.P12504776836431070867

`A185714(n+1)+A314901(n)+A286133(A148515(n))`
-/

namespace A314917.P12504776836431070867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (n + 1) + (A314901 n + A286133 (A148515 n).toNat)

end

end A314917.P12504776836431070867

/-! ## A314917.P9824629907566121566

`A185714(n+1)+A339579(A234658(n+1))+A312568(n)`
-/

namespace A314917.P9824629907566121566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (n + 1) + (A339579 (A234658 (n + 1)).toNat + A312568 n)

end

end A314917.P9824629907566121566

/-! ## A314917.P17727578127919191575

`A185714(n+1)+A313708(n)-A206566(A011260(n+1))`
-/

namespace A314917.P17727578127919191575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (n + 1) + (A313708 n - A206566 (A011260 (n + 1)).toNat)

end

end A314917.P17727578127919191575

/-! ## A314917.P15309229649944988989

`A000120(A317652(n))+4*n`
-/

namespace A314917.P15309229649944988989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A317652 n).toNat + (4 * n : ℤ)

end

end A314917.P15309229649944988989

/-!
# A314918: Coordination sequence Gal.6.589.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314918, there is no canonical definition to state claims against.
-/

/-! ## A314918.P16864760058554481958

`A312918(n)+A089293(A317327(n+3))`
-/

namespace A314918.P16864760058554481958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312918 n + A089293 (A317327 (n + 3)).toNat

end

end A314918.P16864760058554481958

/-! ## A314918.P14167959398672289349

`or(A003849(A189898(n+1)), A314500(n))`
-/

namespace A314918.P14167959398672289349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 (A189898 (n + 1)).toNat) (A314500 n)

end

end A314918.P14167959398672289349

/-! ## A314918.P5790495404815279647

`or(A010878(A126202(n)), A312549(n))`
-/

namespace A314918.P5790495404815279647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010878 (A126202 n).toNat) (A312549 n)

end

end A314918.P5790495404815279647

/-! ## A314918.P11868553036725275532

`xor(A000035(A263102(n)), A314554(n))`
-/

namespace A314918.P11868553036725275532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A263102 n).toNat) (A314554 n)

end

end A314918.P11868553036725275532

/-!
# A314919: Coordination sequence Gal.5.275.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314919, there is no canonical definition to state claims against.
-/

/-! ## A314919.P14507869794462012467

`A314920(n)%p?[A336256(n)]`
-/

namespace A314919.P14507869794462012467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A314920 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A314919.P14507869794462012467

/-! ## A314919.P1306429485955441325

`record[A314920(n)]%A341152(3*(n+1))`
-/

namespace A314919.P1306429485955441325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A341152 (3 * (n + 1)))

end

end A314919.P1306429485955441325

/-! ## A314919.P9017446493722864059

`A314920(n)+A000007(A000110(n))`
-/

namespace A314919.P9017446493722864059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314920 n + A000007 (A000110 n).toNat

end

end A314919.P9017446493722864059

/-! ## A314919.P7627907072663734677

`A314920(n)+A000007(A034472(n))`
-/

namespace A314919.P7627907072663734677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314920 n + A000007 (A034472 n).toNat

end

end A314919.P7627907072663734677

/-! ## A314919.P10053773760680929284

`A311967(n)+A001221(A052990(n))`
-/

namespace A314919.P10053773760680929284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311967 n + A001221 (A052990 n).toNat

end

end A314919.P10053773760680929284

/-!
# A314920: Coordination sequence Gal.6.588.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314920, there is no canonical definition to state claims against.
-/

/-! ## A314920.P2307432739437165735

`(A315220(n)+A008579(n))/2`
-/

namespace A314920.P2307432739437165735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315220 n + A008579 n : ℚ) / 2

end

end A314920.P2307432739437165735

/-! ## A314920.P1667999441391666384

`A014682(A315220(n)+A008579(n))`
-/

namespace A314920.P1667999441391666384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A315220 n + A008579 n).toNat

end

end A314920.P1667999441391666384

/-! ## A314920.P2887265425791550668

`A008579(n)+A004525(A315220(n)-A008579(n))`
-/

namespace A314920.P2887265425791550668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A004525 (A315220 n - A008579 n).toNat

end

end A314920.P2887265425791550668

/-! ## A314920.P6157716905998888076

`A026741(A315220(n)-A008579(n))+A008579(n)`
-/

namespace A314920.P6157716905998888076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A315220 n - A008579 n).toNat + A008579 n

end

end A314920.P6157716905998888076

/-! ## A314920.P7874464344729229973

`A029578(A315220(n)-A008579(n))+A008579(n)`
-/

namespace A314920.P7874464344729229973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A315220 n - A008579 n).toNat + A008579 n

end

end A314920.P7874464344729229973

/-! ## A314920.P14008533296538117303

`A142150(A315220(n)-A008579(n))+A008579(n)`
-/

namespace A314920.P14008533296538117303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A315220 n - A008579 n).toNat + A008579 n

end

end A314920.P14008533296538117303

/-! ## A314920.P6086582566239531087

`A315220(n)-A004526(A315220(n)-A008579(n))`
-/

namespace A314920.P6086582566239531087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315220 n - A004526 (A315220 n - A008579 n).toNat

end

end A314920.P6086582566239531087

/-! ## A314920.P2761947493805327265

`A004525(A315220(n)+A008579(n))`
-/

namespace A314920.P2761947493805327265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315220 n + A008579 n).toNat

end

end A314920.P2761947493805327265

/-! ## A314920.P13880051782878240792

`A004526(A315220(n)+A008579(n))`
-/

namespace A314920.P13880051782878240792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315220 n + A008579 n).toNat

end

end A314920.P13880051782878240792

/-! ## A314920.P12474491450888781432

`A026741(A315220(n)+A008579(n))`
-/

namespace A314920.P12474491450888781432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A315220 n + A008579 n).toNat

end

end A314920.P12474491450888781432

/-! ## A314920.P11070820026340424893

`A029578(A315220(n)+A008579(n))`
-/

namespace A314920.P11070820026340424893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A315220 n + A008579 n).toNat

end

end A314920.P11070820026340424893

/-! ## A314920.P14582065529624436885

`A065033(A315220(n)+A008579(n))`
-/

namespace A314920.P14582065529624436885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A315220 n + A008579 n).toNat

end

end A314920.P14582065529624436885

/-! ## A314920.P17088543062387620515

`A142150(A315220(n)+A008579(n))`
-/

namespace A314920.P17088543062387620515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A315220 n + A008579 n).toNat

end

end A314920.P17088543062387620515

/-! ## A314920.P1638126301326417548

`A008619(A008579(n)+A315220(n)-1)`
-/

namespace A314920.P1638126301326417548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008579 n + (A315220 n - 1)).toNat

end

end A314920.P1638126301326417548

/-! ## A314920.P15932596906997104427

`A008619(A008579(n)-(1-A315220(n)))`
-/

namespace A314920.P15932596906997104427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008579 n - (1 - A315220 n)).toNat

end

end A314920.P15932596906997104427

/-! ## A314920.P13843535470791659718

`A065033(A008579(n)-(1-A315220(n)))`
-/

namespace A314920.P13843535470791659718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008579 n - (1 - A315220 n)).toNat

end

end A314920.P13843535470791659718

/-!
# A314921: Coordination sequence Gal.5.203.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314921, there is no canonical definition to state claims against.
-/

/-! ## A314921.P11796413519412515793

`A312001(n)+A225654(A010000(n))`
-/

namespace A314921.P11796413519412515793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312001 n + A225654 (A010000 n).toNat

end

end A314921.P11796413519412515793

/-! ## A314921.P2849606638382889715

`or(A236533(A056470(n+1)), A314849(n))`
-/

namespace A314921.P2849606638382889715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A236533 (A056470 (n + 1)).toNat) (A314849 n)

end

end A314921.P2849606638382889715

/-! ## A314921.P15359250492788114583

`∑[∑{e}[xor(A329818(n)²²+1, -3), #]]-1`
-/

namespace A314921.P15359250492788114583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((A329818 n ^ 2) ^ 2 + 1) (-3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A314921.P15359250492788114583

/-! ## A314921.P11207822641138014245

`A304449(A344327(3^n))`
-/

namespace A314921.P11207822641138014245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304449 (A344327 (3 ^ n)).toNat

end

end A314921.P11207822641138014245

/-! ## A314921.P2729827575398451837

`A072774(A016813(n))%A091124(2*(n+1))`
-/

namespace A314921.P2729827575398451837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072774 (A016813 n).toNat) (A091124 (2 * (n + 1)))

end

end A314921.P2729827575398451837

/-!
# A314922: Coordination sequence Gal.6.474.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314922, the canonical program `A314922.P17749781584277462255` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314922 has offset 0).

The definition of A314922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314922.P17749781584277462255

`A315036(n)-A002264(A088439(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314922

/-- `A315036(n)-A002264(A088439(n))` -/
def P17749781584277462255.Spec : Prop :=
  ∀ n, P17749781584277462255.a n = A314922 n

theorem P17749781584277462255.correct : P17749781584277462255.Spec := by
  intro n
  simp only [A314922]

end A314922

/-! ## A314922.P4024571850551748426

`A315036(n)-A142150(A002264(2*n+1))`
-/

namespace A314922.P4024571850551748426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315036 n - A142150 (A002264 (2 * n + 1)).toNat

end

end A314922.P4024571850551748426

namespace A314922

/-- `A315036(n)-A142150(A002264(2*n+1))` -/
def P4024571850551748426.Spec : Prop :=
  ∀ n, P4024571850551748426.a n = A314922 n

end A314922

/-! ## A314922.P12128462007960166473

`A315039(n)-A008615(A019425(n))`
-/

namespace A314922.P12128462007960166473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315039 n - A008615 (A019425 n).toNat

end

end A314922.P12128462007960166473

namespace A314922

/-- `A315039(n)-A008615(A019425(n))` -/
def P12128462007960166473.Spec : Prop :=
  ∀ n, P12128462007960166473.a n = A314922 n

theorem P12128462007960166473.correct : P12128462007960166473.Spec := by
  intro n
  simp only [A314922, Nat.add_sub_cancel, A314922.P12128462007960166473.a, A314922.P17749781584277462255.a, A002264, A002264.P5647656940077635922.a, A008615, A008615.P10410393553474300613.a, A019425, A019425.P4664560728438288772.a, A088439, A088439.P15402745793749335137.a, A315036, A315036.P2155873158218205657.a, A315039, A315039.P14949474118116711109.a, A008706, A008706.P1571514609299617601.a, A060145, A060145.P9806475002723103157.a, A062157, A062157.P13834877263571195293.a, A004956, A004956.P1094694600621767936.a, A195121, A195121.P14500461516378876145.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314922

/-! ## A314922.P10490099049291332959

`A026741(n)+A313786(n)-n-A002264(A088439(n))`
-/

namespace A314922.P10490099049291332959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + (A313786 n - (n : ℤ)) - A002264 (A088439 n).toNat

end

end A314922.P10490099049291332959

namespace A314922

/-- `A026741(n)+A313786(n)-n-A002264(A088439(n))` -/
def P10490099049291332959.Spec : Prop :=
  ∀ n, P10490099049291332959.a n = A314922 n

end A314922

/-! ## A314922.P4643562110722708656

`A315036(n)+A196199(floor(n/3)*ceil(n/3))`
-/

namespace A314922.P4643562110722708656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315036 n + A196199 (⌊(n : ℚ) / 3⌋ * ⌈(n : ℚ) / 3⌉).toNat

end

end A314922.P4643562110722708656

namespace A314922

/-- `A315036(n)+A196199(floor(n/3)*ceil(n/3))` -/
def P4643562110722708656.Spec : Prop :=
  ∀ n, P4643562110722708656.a n = A314922 n

end A314922

/-!
# A314923: Coordination sequence Gal.6.565.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314923, there is no canonical definition to state claims against.
-/

/-! ## A314923.P4942424438191096172

`A313758(n)-A073490(A034472(n))`
-/

namespace A314923.P4942424438191096172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313758 n - A073490 (A034472 n).toNat

end

end A314923.P4942424438191096172

/-! ## A314923.P3726245340037625385

`A313759(n)-A073490(A034472(n))`
-/

namespace A314923.P3726245340037625385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313759 n - A073490 (A034472 n).toNat

end

end A314923.P3726245340037625385

/-! ## A314923.P14655809071408844221

`A313760(n)-A073490(A034472(n))`
-/

namespace A314923.P14655809071408844221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313760 n - A073490 (A034472 n).toNat

end

end A314923.P14655809071408844221

/-! ## A314923.P10348264330216100903

`A313758(n)-A001221(A196151(n))`
-/

namespace A314923.P10348264330216100903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313758 n - A001221 (A196151 n).toNat

end

end A314923.P10348264330216100903

/-! ## A314923.P6493081727059030678

`A314907(n)+A144600(A090573(n))`
-/

namespace A314923.P6493081727059030678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314907 n + A144600 (A090573 n).toNat

end

end A314923.P6493081727059030678

/-!
# A314924: Coordination sequence Gal.6.375.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314924, there is no canonical definition to state claims against.
-/

/-! ## A314924.P12478555665138752018

`or(A141299(A245156(n)), A314862(n))`
-/

namespace A314924.P12478555665138752018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A141299 (A245156 n).toNat) (A314862 n)

end

end A314924.P12478555665138752018

/-!
# A314925: Coordination sequence Gal.6.564.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314925, there is no canonical definition to state claims against.
-/

/-! ## A314925.P17830901730190157994

`A311625(n)+A001222(A270393(n+1))`
-/

namespace A314925.P17830901730190157994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311625 n + A001222 (A270393 (n + 1)).toNat

end

end A314925.P17830901730190157994

/-! ## A314925.P13232631718885077978

`A314923(n)+A010894(A077169(n))`
-/

namespace A314925.P13232631718885077978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314923 n + A010894 ((A077169 n).toNat + 21)

end

end A314925.P13232631718885077978

/-! ## A314925.P6920434013377403787

`A314923(n)+A210717(A110135(n))`
-/

namespace A314925.P6920434013377403787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314923 n + A210717 (A110135 n).toNat

end

end A314925.P6920434013377403787

/-! ## A314925.P12838402664776642169

`or(A038189(A038319(n)), A314923(n))`
-/

namespace A314925.P12838402664776642169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038189 (A038319 n).toNat) (A314923 n)

end

end A314925.P12838402664776642169

/-! ## A314925.P541263521492892252

`A314746(n)+A056979(A000244(n))`
-/

namespace A314925.P541263521492892252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314746 n + A056979 (A000244 n).toNat

end

end A314925.P541263521492892252

/-!
# A314927: Coordination sequence Gal.6.603.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314927, there is no canonical definition to state claims against.
-/

/-! ## A314927.P17246335975495628504

`or(A164555(A057977(n)), A314497(n))`
-/

namespace A314927.P17246335975495628504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A164555 (A057977 n).toNat) (A314497 n)

end

end A314927.P17246335975495628504

/-! ## A314927.P7565609152480353027

`A311643(n)+A046067(A032555(n+1))`
-/

namespace A314927.P7565609152480353027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311643 n + A046067 (A032555 (n + 1)).toNat

end

end A314927.P7565609152480353027

/-! ## A314927.P7825127716011651891

`A311643(n)+A046067(A032559(n+1))`
-/

namespace A314927.P7825127716011651891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311643 n + A046067 (A032559 (n + 1)).toNat

end

end A314927.P7825127716011651891

/-! ## A314927.P2318137763119975972

`or(A047412(3*n+1), A164555(A057977(n)))`
-/

namespace A314927.P2318137763119975972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047412 (3 * n + 1)) (A164555 (A057977 n).toNat)

end

end A314927.P2318137763119975972

/-! ## A314927.P14908849202008833109

`A046067(n+1)+A311601(n)+A057918(A168607(n))`
-/

namespace A314927.P14908849202008833109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (n + 1) + (A311601 n + A057918 (A168607 n).toNat)

end

end A314927.P14908849202008833109

/-!
# A314928: Coordination sequence Gal.6.306.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314928, there is no canonical definition to state claims against.
-/

/-! ## A314928.P6403451172606657733

`∏{e}[n^6+n, #]+4*n`
-/

namespace A314928.P6403451172606657733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 4 * n

end

end A314928.P6403451172606657733

/-! ## A314928.P8927847586246313427

`A117136(n)+A001414(A000302(n))`
-/

namespace A314928.P8927847586246313427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117136 n + A001414 (A000302 n).toNat

end

end A314928.P8927847586246313427

/-! ## A314928.P14850451122327129622

`or(A277873(A343498(n+1)), A311196(n))`
-/

namespace A314928.P14850451122327129622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277873 (A343498 (n + 1)).toNat) (A311196 n)

end

end A314928.P14850451122327129622

/-!
# A314929: Coordination sequence Gal.5.189.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314929, the canonical program `A314929.P13052152574673917349` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314929 has offset 0).

The definition of A314929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314929.P13052152574673917349

`ogf((1+5x+10x^2+18x^3+25x^4+30x^5+40x^6+37x^7+40x^8+29x^9+25x^10+18x^11+11x^12+5x^13+x^14)/(1+x^2-x^3+x^4-x^5-2x^7-x^9+x^10-x^11+x^12+x^14))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A314929

/-- `ogf((1+5x+10x^2+18x^3+25x^4+30x^5+40x^6+37x^7+40x^8+29x^9+25x^10+18x^11+11x^12+5x^13+x^14)/(1+x^2-x^3+x^4-x^5-2x^7-x^9+x^10-x^11+x^12+x^14))` -/
def P13052152574673917349.Spec : Prop :=
  ∀ n, P13052152574673917349.a n = A314929 n

theorem P13052152574673917349.correct : P13052152574673917349.Spec := by
  intro n
  simp only [A314929]

end A314929

/-! ## A314929.P3615645824706228510

`A315074(n)-A327051(A313080(2*n))`
-/

namespace A314929.P3615645824706228510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315074 n - A327051 (A313080 (2 * n)).toNat

end

end A314929.P3615645824706228510

namespace A314929

/-- `A315074(n)-A327051(A313080(2*n))` -/
def P3615645824706228510.Spec : Prop :=
  ∀ n, P3615645824706228510.a n = A314929 n

end A314929

/-! ## A314929.P11249502551793543006

`A315074(n)-A327051(A060432(2*(n+1)))`
-/

namespace A314929.P11249502551793543006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315074 n - A327051 (A060432 (2 * (n + 1))).toNat

end

end A314929.P11249502551793543006

namespace A314929

/-- `A315074(n)-A327051(A060432(2*(n+1)))` -/
def P11249502551793543006.Spec : Prop :=
  ∀ n, P11249502551793543006.a n = A314929 n

end A314929

/-! ## A314929.P7443595217530961662

`A314930(n)-A185284(A000124(n))`
-/

namespace A314929.P7443595217530961662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314930 n - A185284 (A000124 n).toNat

end

end A314929.P7443595217530961662

namespace A314929

/-- `A314930(n)-A185284(A000124(n))` -/
def P7443595217530961662.Spec : Prop :=
  ∀ n, P7443595217530961662.a n = A314929 n

end A314929

/-! ## A314929.P7596662500812908310

`A314930(n)-A055641(A164651(n))`
-/

namespace A314929.P7596662500812908310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314930 n - A055641 (A164651 n).toNat

end

end A314929.P7596662500812908310

namespace A314929

/-- `A314930(n)-A055641(A164651(n))` -/
def P7596662500812908310.Spec : Prop :=
  ∀ n, P7596662500812908310.a n = A314929 n

end A314929

/-!
# A314930: Coordination sequence Gal.5.192.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314930, there is no canonical definition to state claims against.
-/

/-! ## A314930.P9336014603018008000

`A314929(n)+A185284(A000124(n))`
-/

namespace A314930.P9336014603018008000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314929 n + A185284 (A000124 n).toNat

end

end A314930.P9336014603018008000

/-! ## A314930.P7525872303835754472

`A314929(n)+A055641(A164651(n))`
-/

namespace A314930.P7525872303835754472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314929 n + A055641 (A164651 n).toNat

end

end A314930.P7525872303835754472

/-! ## A314930.P5516033393041976052

`A314929(n)+A111430(A111429(n))`
-/

namespace A314930.P5516033393041976052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314929 n + A111430 (A111429 n).toNat

end

end A314930.P5516033393041976052

/-! ## A314930.P13811487715443290725

`A314929(n)+A242086(A013612(n))`
-/

namespace A314930.P13811487715443290725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314929 n + A242086 (A013612 n).toNat

end

end A314930.P13811487715443290725

/-! ## A314930.P2926173760777957490

`A314929(n)+A289011(A000667(n))`
-/

namespace A314930.P2926173760777957490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314929 n + A289011 (A000667 n).toNat

end

end A314930.P2926173760777957490

/-!
# A314931: Coordination sequence Gal.6.301.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314931, there is no canonical definition to state claims against.
-/

/-! ## A314931.P2914024511727407117

`A315050(n)-A139352(A046979(n))`
-/

namespace A314931.P2914024511727407117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315050 n - A139352 (A046979 n).toNat

end

end A314931.P2914024511727407117

/-! ## A314931.P17614489861965634082

`A314516(n)-A101676(A126939(n))`
-/

namespace A314931.P17614489861965634082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314516 n - A101676 (A126939 n).toNat

end

end A314931.P17614489861965634082

/-! ## A314931.P13956757805320612402

`or(A030302(A149893(n)), A314516(n))`
-/

namespace A314931.P13956757805320612402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030302 (A149893 n).toNat) (A314516 n)

end

end A314931.P13956757805320612402

/-! ## A314931.P10015326026359612110

`A287243(n+1)+A188171(A033864(n))`
-/

namespace A314931.P10015326026359612110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287243 (n + 1) + A188171 (A033864 n).toNat

end

end A314931.P10015326026359612110

/-!
# A314932: Coordination sequence Gal.6.558.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314932, there is no canonical definition to state claims against.
-/

/-! ## A314932.P1197657279399971091

`A313763(n)-A257991(A000110(n))`
-/

namespace A314932.P1197657279399971091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313763 n - A257991 (A000110 n).toNat

end

end A314932.P1197657279399971091

/-!
# A314933: Coordination sequence Gal.6.568.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314933, there is no canonical definition to state claims against.
-/

/-! ## A314933.P14213812580184253876

`A315194(n)-A330025(A077551(n))`
-/

namespace A314933.P14213812580184253876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315194 n - A330025 (A077551 n).toNat

end

end A314933.P14213812580184253876

/-! ## A314933.P17741747051135939587

`A310765(n)+A001222(A150163(n))`
-/

namespace A314933.P17741747051135939587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310765 n + A001222 (A150163 n).toNat

end

end A314933.P17741747051135939587

/-! ## A314933.P3113573790534995545

`A292836(A314458(n)+1)+A001222(A150163(n))`
-/

namespace A314933.P3113573790534995545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292836 (A314458 n + 1).toNat + A001222 (A150163 n).toNat

end

end A314933.P3113573790534995545

/-! ## A314933.P7388710158697357924

`A314934(n)%A052447(n+4)`
-/

namespace A314933.P7388710158697357924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A314934 n) (A052447 (n + 4))

end

end A314933.P7388710158697357924

/-!
# A314934: Coordination sequence Gal.6.485.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314934, the canonical program `A314934.P10745395469202390610` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314934 has offset 0).

The definition of A314934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314934.P10745395469202390610

`A004396(n)+A313907(n)-A047263(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314934

/-- `A004396(n)+A313907(n)-A047263(n+1)` -/
def P10745395469202390610.Spec : Prop :=
  ∀ n, P10745395469202390610.a n = A314934 n

theorem P10745395469202390610.correct : P10745395469202390610.Spec := by
  intro n
  simp only [A314934]

end A314934

/-! ## A314934.P12472474963780289022

`A250120(n)+A173950(A283877(n))`
-/

namespace A314934.P12472474963780289022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A173950 (A283877 n).toNat

end

end A314934.P12472474963780289022

namespace A314934

/-- `A250120(n)+A173950(A283877(n))` -/
def P12472474963780289022.Spec : Prop :=
  ∀ n, P12472474963780289022.a n = A314934 n

end A314934

/-! ## A314934.P9252126871671812549

`A311449(n)+A001222(A149946(n))`
-/

namespace A314934.P9252126871671812549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311449 n + A001222 (A149946 n).toNat

end

end A314934.P9252126871671812549

namespace A314934

/-- `A311449(n)+A001222(A149946(n))` -/
def P9252126871671812549.Spec : Prop :=
  ∀ n, P9252126871671812549.a n = A314934 n

end A314934

/-!
# A314935: Coordination sequence Gal.6.464.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314935, there is no canonical definition to state claims against.
-/

/-! ## A314935.P1140936131158689399

`A313613(n)-A238470(n²²)`
-/

namespace A314935.P1140936131158689399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n - A238470 ((n ^ 2) ^ 2)

end

end A314935.P1140936131158689399

/-! ## A314935.P149996007150379911

`A301298(n)+A257992(A094941(n))`
-/

namespace A314935.P149996007150379911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A257992 (A094941 n).toNat

end

end A314935.P149996007150379911

/-! ## A314935.P8714179845915857912

`A008706(n)-A284556(A087051(n))`
-/

namespace A314935.P8714179845915857912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A284556 (A087051 n).toNat

end

end A314935.P8714179845915857912

/-! ## A314935.P16298853317400909778

`A310398(A087051(n))-Δ[A247506(n)]`
-/

namespace A314935.P16298853317400909778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 (A087051 n).toNat - (f1 (n + 1) - f1 n)

end

end A314935.P16298853317400909778

/-! ## A314935.P2244303948991297334

`A301298(n)+A030341(A075217(n+1))`
-/

namespace A314935.P2244303948991297334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A030341 (A075217 (n + 1)).toNat

end

end A314935.P2244303948991297334

/-!
# A314936: Coordination sequence Gal.5.227.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314936, there is no canonical definition to state claims against.
-/

/-! ## A314936.P15095868226900411847

`A050430(A214833(n+1))+4*n`
-/

namespace A314936.P15095868226900411847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050430 (A214833 (n + 1)).toNat + (4 * n : ℤ)

end

end A314936.P15095868226900411847

/-! ## A314936.P16621429936761776939

`A316012(n)-A030565(A000244(n))`
-/

namespace A314936.P16621429936761776939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316012 n - A030565 (A000244 n).toNat

end

end A314936.P16621429936761776939

/-! ## A314936.P13840473615623971602

`A250120(n)-A047885(A148783(n))`
-/

namespace A314936.P13840473615623971602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A047885 (A148783 n).toNat

end

end A314936.P13840473615623971602

/-! ## A314936.P16522585069857959011

`A314947(n)-A135136(A020062(n))`
-/

namespace A314936.P16522585069857959011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314947 n - A135136 (A020062 n).toNat

end

end A314936.P16522585069857959011

/-!
# A314937: Coordination sequence Gal.6.570.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314937, there is no canonical definition to state claims against.
-/

/-! ## A314937.P4668097646186533313

`(A315232(n)+A008579(n))/2`
-/

namespace A314937.P4668097646186533313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315232 n + A008579 n : ℚ) / 2

end

end A314937.P4668097646186533313

/-! ## A314937.P11263720281020066685

`A008579(n)+A004525(A315232(n)-A008579(n))`
-/

namespace A314937.P11263720281020066685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A004525 (A315232 n - A008579 n).toNat

end

end A314937.P11263720281020066685

/-! ## A314937.P13621358553702117771

`A025480(A315232(n)-A008579(n))+A008579(n)`
-/

namespace A314937.P13621358553702117771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A315232 n - A008579 n).toNat + A008579 n

end

end A314937.P13621358553702117771

/-! ## A314937.P14919592242161749019

`A078898(A315232(n)-A008579(n))+A008579(n)`
-/

namespace A314937.P14919592242161749019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A315232 n - A008579 n).toNat + A008579 n

end

end A314937.P14919592242161749019

/-! ## A314937.P6023958219159801263

`A315232(n)-A004526(A315232(n)-A008579(n))`
-/

namespace A314937.P6023958219159801263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315232 n - A004526 (A315232 n - A008579 n).toNat

end

end A314937.P6023958219159801263

/-! ## A314937.P7288125311651428809

`A004525(A315232(n)+A008579(n))`
-/

namespace A314937.P7288125311651428809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315232 n + A008579 n).toNat

end

end A314937.P7288125311651428809

/-! ## A314937.P3105971230673100983

`A004526(A315232(n)+A008579(n))`
-/

namespace A314937.P3105971230673100983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315232 n + A008579 n).toNat

end

end A314937.P3105971230673100983

/-! ## A314937.P10242417623079664985

`A025480(A315232(n)+A008579(n))`
-/

namespace A314937.P10242417623079664985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A315232 n + A008579 n).toNat

end

end A314937.P10242417623079664985

/-! ## A314937.P13092122717200802872

`A065033(A315232(n)+A008579(n))`
-/

namespace A314937.P13092122717200802872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A315232 n + A008579 n).toNat

end

end A314937.P13092122717200802872

/-! ## A314937.P1484313130785240138

`A078898(A315232(n)+A008579(n))`
-/

namespace A314937.P1484313130785240138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A315232 n + A008579 n).toNat

end

end A314937.P1484313130785240138

/-! ## A314937.P10019003149172497613

`A123108(A315232(n)+A008579(n))`
-/

namespace A314937.P10019003149172497613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A315232 n + A008579 n).toNat

end

end A314937.P10019003149172497613

/-! ## A314937.P880538183623299920

`A028242(A008579(n)+A315232(n)+1)`
-/

namespace A314937.P880538183623299920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A008579 n + (A315232 n + 1)).toNat

end

end A314937.P880538183623299920

/-! ## A314937.P10082003537554516068

`A003602(A008579(n)+A315232(n)-1)`
-/

namespace A314937.P10082003537554516068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A008579 n + (A315232 n - 1)).toNat

end

end A314937.P10082003537554516068

/-! ## A314937.P14320491040645352029

`A008619(A008579(n)+A315232(n)-1)`
-/

namespace A314937.P14320491040645352029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008579 n + (A315232 n - 1)).toNat

end

end A314937.P14320491040645352029

/-! ## A314937.P10001884007684336971

`A003602(A008579(n)-(1-A315232(n)))`
-/

namespace A314937.P10001884007684336971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A008579 n - (1 - A315232 n)).toNat

end

end A314937.P10001884007684336971

/-! ## A314937.P4218150050606587409

`A008619(A008579(n)-(1-A315232(n)))`
-/

namespace A314937.P4218150050606587409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008579 n - (1 - A315232 n)).toNat

end

end A314937.P4218150050606587409

/-! ## A314937.P463220498143402943

`A065033(A008579(n)-(1-A315232(n)))`
-/

namespace A314937.P463220498143402943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008579 n - (1 - A315232 n)).toNat

end

end A314937.P463220498143402943

/-! ## A314937.P8555415291733919152

`A028242(A008579(n)-(2-A315232(n)))`
-/

namespace A314937.P8555415291733919152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A008579 n - (2 - A315232 n)).toNat

end

end A314937.P8555415291733919152

/-!
# A314938: Coordination sequence Gal.6.474.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314938, there is no canonical definition to state claims against.
-/

/-! ## A314938.P15540930653803826010

`A314934(n)+A046660(A026135(n))`
-/

namespace A314938.P15540930653803826010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314934 n + A046660 (A026135 n).toNat

end

end A314938.P15540930653803826010

/-! ## A314938.P3917707290271366466

`A314935(n)+A000001(A102748(n))`
-/

namespace A314938.P3917707290271366466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314935 n + A000001 (A102748 n).toNat

end

end A314938.P3917707290271366466

/-! ## A314938.P5640421370950507480

`A313615(n)-A059841(A069921(n))`
-/

namespace A314938.P5640421370950507480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313615 n - A059841 (A069921 n).toNat

end

end A314938.P5640421370950507480

/-! ## A314938.P7521032564839511536

`A313615(n)-A059841(A077995(n))`
-/

namespace A314938.P7521032564839511536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313615 n - A059841 (A077995 n).toNat

end

end A314938.P7521032564839511536

/-!
# A314939: Coordination sequence Gal.5.143.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314939, there is no canonical definition to state claims against.
-/

/-! ## A314939.P16900232342148328126

`A314711(n)+A265859(A138265(n))`
-/

namespace A314939.P16900232342148328126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314711 n + A265859 (A138265 n).toNat

end

end A314939.P16900232342148328126

/-! ## A314939.P16678733094057612635

`A314940(n)-A140344(A116866(n))`
-/

namespace A314939.P16678733094057612635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314940 n - A140344 (A116866 n).toNat

end

end A314939.P16678733094057612635

/-! ## A314939.P7252647117267806446

`A311482(n)+A001222(A134378(n))`
-/

namespace A314939.P7252647117267806446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311482 n + A001222 (A134378 n).toNat

end

end A314939.P7252647117267806446

/-! ## A314939.P8463119845642091274

`A310764(n)+A001222(A328281(n))`
-/

namespace A314939.P8463119845642091274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310764 n + A001222 (A328281 n).toNat

end

end A314939.P8463119845642091274

/-! ## A314939.P6738430718231234521

`or(A001222(A352617(n)), A314930(n))`
-/

namespace A314939.P6738430718231234521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A352617 n).toNat) (A314930 n)

end

end A314939.P6738430718231234521

/-!
# A314940: Coordination sequence Gal.6.560.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314940, there is no canonical definition to state claims against.
-/

/-! ## A314940.P11991285634767494499

`A312036(n)+A001221(A091352(n))`
-/

namespace A314940.P11991285634767494499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312036 n + A001221 (A091352 n).toNat

end

end A314940.P11991285634767494499

/-! ## A314940.P10241364411627978418

`A314939(n)+A140344(A116866(n))`
-/

namespace A314940.P10241364411627978418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314939 n + A140344 (A116866 n).toNat

end

end A314940.P10241364411627978418

/-! ## A314940.P8383238387855132875

`A312602(n)+A010060(A334859(n+1))`
-/

namespace A314940.P8383238387855132875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312602 n + A010060 (A334859 (n + 1)).toNat

end

end A314940.P8383238387855132875

/-!
# A314941: Coordination sequence Gal.3.41.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314941, the canonical program `A314941.P1130173180913522709` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314941 has offset 0).

The definition of A314941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314941.P7107890248378948569

`A008706(n)-A077814(n)`
-/

namespace A314941.P7107890248378948569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A077814 n

end

end A314941.P7107890248378948569

namespace A314941

/-- `A008706(n)-A077814(n)` -/
def P7107890248378948569.Spec : Prop :=
  ∀ n, P7107890248378948569.a n = A314941 n

end A314941

/-! ## A314941.P17204304794856963966

`A008706(n)-Δ[A159915(n)]`
-/

namespace A314941.P17204304794856963966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (f1 (n + 1) - f1 n)

end

end A314941.P17204304794856963966

namespace A314941

/-- `A008706(n)-Δ[A159915(n)]` -/
def P17204304794856963966.Spec : Prop :=
  ∀ n, P17204304794856963966.a n = A314941 n

end A314941

/-! ## A314941.P3229856675976401261

`A008458(n)-(A077814(n)+n)`
-/

namespace A314941.P3229856675976401261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A077814 n + (n : ℤ))

end

end A314941.P3229856675976401261

namespace A314941

/-- `A008458(n)-(A077814(n)+n)` -/
def P3229856675976401261.Spec : Prop :=
  ∀ n, P3229856675976401261.a n = A314941 n

end A314941

/-! ## A314941.P1130173180913522709

`A008574(n)+n-A077814(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A314941

/-- `A008574(n)+n-A077814(n)` -/
def P1130173180913522709.Spec : Prop :=
  ∀ n, P1130173180913522709.a n = A314941 n

theorem P1130173180913522709.correct : P1130173180913522709.Spec := by
  intro n
  simp only [A314941]

end A314941

/-! ## A314941.P420372289363128016

`A008486(2*n)-(A077814(n)+n)`
-/

namespace A314941.P420372289363128016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - (A077814 n + (n : ℤ))

end

end A314941.P420372289363128016

namespace A314941

/-- `A008486(2*n)-(A077814(n)+n)` -/
def P420372289363128016.Spec : Prop :=
  ∀ n, P420372289363128016.a n = A314941 n

end A314941

/-! ## A314941.P8575690804666937945

`A001068(A008574(n))-A077814(n)`
-/

namespace A314941.P8575690804666937945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A008574 n).toNat - A077814 n

end

end A314941.P8575690804666937945

namespace A314941

/-- `A001068(A008574(n))-A077814(n)` -/
def P8575690804666937945.Spec : Prop :=
  ∀ n, P8575690804666937945.a n = A314941 n

end A314941

/-! ## A314941.P14013890623614174288

`A315972(n)-A101455(n)`
-/

namespace A314941.P14013890623614174288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315972 n - A101455 n

end

end A314941.P14013890623614174288

namespace A314941

/-- `A315972(n)-A101455(n)` -/
def P14013890623614174288.Spec : Prop :=
  ∀ n, P14013890623614174288.a n = A314941 n

end A314941

/-! ## A314941.P1472084752970160814

`A315972(n)+A056594(n+1)`
-/

namespace A314941.P1472084752970160814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315972 n + A056594 (n + 1)

end

end A314941.P1472084752970160814

namespace A314941

/-- `A315972(n)+A056594(n+1)` -/
def P1472084752970160814.Spec : Prop :=
  ∀ n, P1472084752970160814.a n = A314941 n

theorem P1472084752970160814.correct : P1472084752970160814.Spec := by
  intro n
  simp only [A314941, Nat.add_sub_cancel, A314941.P1472084752970160814.a, A314941.P1130173180913522709.a, A008574, A008574.P1300280032690682112.a, A056594, A056594.P16236062631889685808.a, A077814, A077814.P14443698375759428085.a, A315972, A315972.P13546847080952124926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314941

/-! ## A314941.P349649626200277792

`A065033(A008592(n))-A077814(n)`
-/

namespace A314941.P349649626200277792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008592 n).toNat - A077814 n

end

end A314941.P349649626200277792

namespace A314941

/-- `A065033(A008592(n))-A077814(n)` -/
def P349649626200277792.Spec : Prop :=
  ∀ n, P349649626200277792.a n = A314941 n

end A314941

/-!
# A314942: Coordination sequence Gal.6.563.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314942, there is no canonical definition to state claims against.
-/

/-! ## A314942.P1058043490249929956

`A105566(A086617(n)+A008458(n))`
-/

namespace A314942.P1058043490249929956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105566 (A086617 n + A008458 n).toNat

end

end A314942.P1058043490249929956

/-! ## A314942.P369902170239895952

`A353381(A000244(n))+A312076(n)`
-/

namespace A314942.P369902170239895952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353381 (A000244 n).toNat + A312076 n

end

end A314942.P369902170239895952

/-! ## A314942.P12510601386350159527

`A219640(3*n+1)+A010051(A002982(2*n+5))`
-/

namespace A314942.P12510601386350159527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 (3 * n + 1) + A010051 (A002982 (2 * n + 5)).toNat

end

end A314942.P12510601386350159527

/-!
# A314943: Coordination sequence Gal.6.321.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314943, the canonical program `A314943.P18056239451754514052` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314943 has offset 0).

The definition of A314943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314943.P17549883859097447616

`A330033(n)+A310439(n)`
-/

namespace A314943.P17549883859097447616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330033 n + A310439 n

end

end A314943.P17549883859097447616

namespace A314943

/-- `A330033(n)+A310439(n)` -/
def P17549883859097447616.Spec : Prop :=
  ∀ n, P17549883859097447616.a n = A314943 n

end A314943

/-! ## A314943.P6173907251507404814

`A330025(n)+A312195(n)`
-/

namespace A314943.P6173907251507404814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A312195 n

end

end A314943.P6173907251507404814

namespace A314943

/-- `A330025(n)+A312195(n)` -/
def P6173907251507404814.Spec : Prop :=
  ∀ n, P6173907251507404814.a n = A314943 n

end A314943

/-! ## A314943.P16717214184755279309

`A313719(n)+A014019(n+3)`
-/

namespace A314943.P16717214184755279309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n + A014019 (n + 3)

end

end A314943.P16717214184755279309

namespace A314943

/-- `A313719(n)+A014019(n+3)` -/
def P16717214184755279309.Spec : Prop :=
  ∀ n, P16717214184755279309.a n = A314943 n

end A314943

/-! ## A314943.P18056239451754514052

`A047263(n+1)+A314754(n)-n`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314943

/-- `A047263(n+1)+A314754(n)-n` -/
def P18056239451754514052.Spec : Prop :=
  ∀ n, P18056239451754514052.a n = A314943 n

theorem P18056239451754514052.correct : P18056239451754514052.Spec := by
  intro n
  simp only [A314943]

end A314943

/-! ## A314943.P4037495980795350949

`A314754(n)+A110654(A057354(n))`
-/

namespace A314943.P4037495980795350949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314754 n + A110654 (A057354 n).toNat

end

end A314943.P4037495980795350949

namespace A314943

/-- `A314754(n)+A110654(A057354(n))` -/
def P4037495980795350949.Spec : Prop :=
  ∀ n, P4037495980795350949.a n = A314943 n

end A314943

/-! ## A314943.P2424184033604842591

`A314740(n)+A253262(n-A253262(n))`
-/

namespace A314943.P2424184033604842591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314740 n + A253262 ((n : ℤ) - A253262 n).toNat

end

end A314943.P2424184033604842591

namespace A314943

/-- `A314740(n)+A253262(n-A253262(n))` -/
def P2424184033604842591.Spec : Prop :=
  ∀ n, P2424184033604842591.a n = A314943 n

end A314943

/-! ## A314943.P6592948982214735378

`A315255(n)-A330025(A330025(n)+n)`
-/

namespace A314943.P6592948982214735378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315255 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A314943.P6592948982214735378

namespace A314943

/-- `A315255(n)-A330025(A330025(n)+n)` -/
def P6592948982214735378.Spec : Prop :=
  ∀ n, P6592948982214735378.a n = A314943 n

end A314943

/-! ## A314943.P871817554643119244

`abs(A008592(n)-A314100(n))`
-/

namespace A314943.P871817554643119244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314100 n|

end

end A314943.P871817554643119244

namespace A314943

/-- `abs(A008592(n)-A314100(n))` -/
def P871817554643119244.Spec : Prop :=
  ∀ n, P871817554643119244.a n = A314943 n

end A314943

/-! ## A314943.P324678856282704710

`2*A008706(n)-A314100(n)`
-/

namespace A314943.P324678856282704710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314100 n

end

end A314943.P324678856282704710

namespace A314943

/-- `2*A008706(n)-A314100(n)` -/
def P324678856282704710.Spec : Prop :=
  ∀ n, P324678856282704710.a n = A314943 n

end A314943

/-! ## A314943.P1038373527704063688

`A008458(n)+A008574(n)-A314100(n)`
-/

namespace A314943.P1038373527704063688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314100 n)

end

end A314943.P1038373527704063688

namespace A314943

/-- `A008458(n)+A008574(n)-A314100(n)` -/
def P1038373527704063688.Spec : Prop :=
  ∀ n, P1038373527704063688.a n = A314943 n

end A314943

/-! ## A314943.P11593948185106968442

`A314100(n)-A005843(A314100(n)-A008706(n))`
-/

namespace A314943.P11593948185106968442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314100 n - A005843 (A314100 n - A008706 n).toNat

end

end A314943.P11593948185106968442

namespace A314943

/-- `A314100(n)-A005843(A314100(n)-A008706(n))` -/
def P11593948185106968442.Spec : Prop :=
  ∀ n, P11593948185106968442.a n = A314943 n

end A314943

/-! ## A314943.P4514394407799721000

`A064429(A312979(n)+A000007(n))`
-/

namespace A314943.P4514394407799721000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A312979 n + A000007 n).toNat

end

end A314943.P4514394407799721000

namespace A314943

/-- `A064429(A312979(n)+A000007(n))` -/
def P4514394407799721000.Spec : Prop :=
  ∀ n, P4514394407799721000.a n = A314943 n

end A314943

/-! ## A314943.P17836736978816986462

`A005843(A008706(n))-A314100(n)`
-/

namespace A314943.P17836736978816986462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314100 n

end

end A314943.P17836736978816986462

namespace A314943

/-- `A005843(A008706(n))-A314100(n)` -/
def P17836736978816986462.Spec : Prop :=
  ∀ n, P17836736978816986462.a n = A314943 n

end A314943

/-!
# A314944: Coordination sequence Gal.5.201.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314944, there is no canonical definition to state claims against.
-/

/-! ## A314944.P9914173675491645839

`A106744(A314885(n)+n)`
-/

namespace A314944.P9914173675491645839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A314885 n + (n : ℤ)).toNat

end

end A314944.P9914173675491645839

/-! ## A314944.P13271862038355259560

`A016777(n)+record[A051699(3*(n+1))]`
-/

namespace A314944.P13271862038355259560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A314944.P13271862038355259560

/-! ## A314944.P17698444529028058939

`A250120(n)+A030216(A076864(n))`
-/

namespace A314944.P17698444529028058939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A030216 (A076864 n).toNat

end

end A314944.P17698444529028058939

/-! ## A314944.P3346175728054402033

`A314756(n)+A086597(A001006(n))`
-/

namespace A314944.P3346175728054402033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314756 n + A086597 (A001006 n).toNat

end

end A314944.P3346175728054402033

/-! ## A314944.P11332916826661009698

`A313771(n)-A001222(A149659(n))`
-/

namespace A314944.P11332916826661009698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313771 n - A001222 (A149659 n).toNat

end

end A314944.P11332916826661009698

/-!
# A314945: Coordination sequence Gal.5.84.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314945, the canonical program `A314945.P6456220943170628107` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314945 has offset 0).

The definition of A314945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314945.P8996472253998098714

`ogf((1+4x+4x^2+5x^3+6x^4+4x^5+6x^6+5x^7+4x^8+4x^9+x^10)/(1-x-x^9+x^10))`
-/

namespace A314945.P8996472253998098714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4, 5, 6, 4, 6, 5, 4, 4, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A314945.P8996472253998098714

namespace A314945

/-- `ogf((1+4x+4x^2+5x^3+6x^4+4x^5+6x^6+5x^7+4x^8+4x^9+x^10)/(1-x-x^9+x^10))` -/
def P8996472253998098714.Spec : Prop :=
  ∀ n, P8996472253998098714.a n = A314945 n

end A314945

/-! ## A314945.P6456220943170628107

`A311458(n)+A004396(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314945

/-- `A311458(n)+A004396(n)` -/
def P6456220943170628107.Spec : Prop :=
  ∀ n, P6456220943170628107.a n = A314945 n

theorem P6456220943170628107.correct : P6456220943170628107.Spec := by
  intro n
  simp only [A314945]

end A314945

/-! ## A314945.P1541082679681627926

`A311458(n)+A002264(2*n+1)`
-/

namespace A314945.P1541082679681627926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + A002264 (2 * n + 1)

end

end A314945.P1541082679681627926

namespace A314945

/-- `A311458(n)+A002264(2*n+1)` -/
def P1541082679681627926.Spec : Prop :=
  ∀ n, P1541082679681627926.a n = A314945 n

theorem P1541082679681627926.correct : P1541082679681627926.Spec := by
  intro n
  simp only [A314945, Nat.add_sub_cancel, A314945.P1541082679681627926.a, A314945.P6456220943170628107.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A311458, A311458.P16823108361581684520.a, A312932, A312932.P265636690513476108.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314945

/-! ## A314945.P10193320314819288283

`A311458(n)+A004525(A004773(n))`
-/

namespace A314945.P10193320314819288283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + A004525 (A004773 n).toNat

end

end A314945.P10193320314819288283

namespace A314945

/-- `A311458(n)+A004525(A004773(n))` -/
def P10193320314819288283.Spec : Prop :=
  ∀ n, P10193320314819288283.a n = A314945 n

end A314945

/-! ## A314945.P6708488241498097723

`A312100(n)+A004396(A004396(n))`
-/

namespace A314945.P6708488241498097723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n + A004396 (A004396 n).toNat

end

end A314945.P6708488241498097723

namespace A314945

/-- `A312100(n)+A004396(A004396(n))` -/
def P6708488241498097723.Spec : Prop :=
  ∀ n, P6708488241498097723.a n = A314945 n

end A314945

/-! ## A314945.P8162142770676378181

`abs(A008592(n)-A314099(n))`
-/

namespace A314945.P8162142770676378181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314099 n|

end

end A314945.P8162142770676378181

namespace A314945

/-- `abs(A008592(n)-A314099(n))` -/
def P8162142770676378181.Spec : Prop :=
  ∀ n, P8162142770676378181.a n = A314945 n

end A314945

/-! ## A314945.P10714765306326569985

`A008458(n)+A008574(n)-A314099(n)`
-/

namespace A314945.P10714765306326569985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314099 n)

end

end A314945.P10714765306326569985

namespace A314945

/-- `A008458(n)+A008574(n)-A314099(n)` -/
def P10714765306326569985.Spec : Prop :=
  ∀ n, P10714765306326569985.a n = A314945 n

end A314945

/-! ## A314945.P12109315295403518001

`A313773(n)-A004396(n-A004396(n))`
-/

namespace A314945.P12109315295403518001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313773 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A314945.P12109315295403518001

namespace A314945

/-- `A313773(n)-A004396(n-A004396(n))` -/
def P12109315295403518001.Spec : Prop :=
  ∀ n, P12109315295403518001.a n = A314945 n

end A314945

/-! ## A314945.P12568267829592919528

`A314163(n)-A008612(4*n+1)`
-/

namespace A314945.P12568267829592919528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314163 n - A008612 (4 * n + 1)

end

end A314945.P12568267829592919528

namespace A314945

/-- `A314163(n)-A008612(4*n+1)` -/
def P12568267829592919528.Spec : Prop :=
  ∀ n, P12568267829592919528.a n = A314945 n

end A314945

/-! ## A314945.P13512456024420363994

`A315546(n)-A004396(A004396(2*n))`
-/

namespace A314945.P13512456024420363994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315546 n - A004396 (A004396 (2 * n)).toNat

end

end A314945.P13512456024420363994

namespace A314945

/-- `A315546(n)-A004396(A004396(2*n))` -/
def P13512456024420363994.Spec : Prop :=
  ∀ n, P13512456024420363994.a n = A314945 n

end A314945

/-! ## A314945.P13071652561679644938

`A004396(A313799(n))+2*A004396(n)`
-/

namespace A314945.P13071652561679644938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313799 n).toNat + 2 * A004396 n

end

end A314945.P13071652561679644938

namespace A314945

/-- `A004396(A313799(n))+2*A004396(n)` -/
def P13071652561679644938.Spec : Prop :=
  ∀ n, P13071652561679644938.a n = A314945 n

end A314945

/-! ## A314945.P960293808509026160

`A004396(n)+A004396(A313799(n)+n)`
-/

namespace A314945.P960293808509026160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A313799 n + (n : ℤ)).toNat

end

end A314945.P960293808509026160

namespace A314945

/-- `A004396(n)+A004396(A313799(n)+n)` -/
def P960293808509026160.Spec : Prop :=
  ∀ n, P960293808509026160.a n = A314945 n

end A314945

/-! ## A314945.P16814507269678919171

`A321232(A008458(n)+n)+n`
-/

namespace A314945.P16814507269678919171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321232 (A008458 n + (n : ℤ)).toNat + (n : ℤ)

end

end A314945.P16814507269678919171

namespace A314945

/-- `A321232(A008458(n)+n)+n` -/
def P16814507269678919171.Spec : Prop :=
  ∀ n, P16814507269678919171.a n = A314945 n

end A314945

/-! ## A314945.P13148404548047480898

`A321232(A022144(n)-n)+n`
-/

namespace A314945.P13148404548047480898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321232 (A022144 n - (n : ℤ)).toNat + (n : ℤ)

end

end A314945.P13148404548047480898

namespace A314945

/-- `A321232(A022144(n)-n)+n` -/
def P13148404548047480898.Spec : Prop :=
  ∀ n, P13148404548047480898.a n = A314945 n

end A314945

/-! ## A314945.P1614803843388704477

`A313703(2*n)+A313703(n+1)-A313703(2*n+1)`
-/

namespace A314945.P1614803843388704477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313703 (2 * n) + (A313703 (n + 1) - A313703 (2 * n + 1))

end

end A314945.P1614803843388704477

namespace A314945

/-- `A313703(2*n)+A313703(n+1)-A313703(2*n+1)` -/
def P1614803843388704477.Spec : Prop :=
  ∀ n, P1614803843388704477.a n = A314945 n

end A314945

/-! ## A314945.P6104959332741706279

`A004396(A312896(2*n))-A004396(A004396(2*n))`
-/

namespace A314945.P6104959332741706279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312896 (2 * n)).toNat - A004396 (A004396 (2 * n)).toNat

end

end A314945.P6104959332741706279

namespace A314945

/-- `A004396(A312896(2*n))-A004396(A004396(2*n))` -/
def P6104959332741706279.Spec : Prop :=
  ∀ n, P6104959332741706279.a n = A314945 n

end A314945

/-! ## A314945.P12415311558291568424

`A004396(A312901(2*n))-A004396(A004396(2*n))`
-/

namespace A314945.P12415311558291568424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312901 (2 * n)).toNat - A004396 (A004396 (2 * n)).toNat

end

end A314945.P12415311558291568424

namespace A314945

/-- `A004396(A312901(2*n))-A004396(A004396(2*n))` -/
def P12415311558291568424.Spec : Prop :=
  ∀ n, P12415311558291568424.a n = A314945 n

end A314945

/-! ## A314945.P17675669057717183506

`A004396(A314677(2*n))-A004396(A004396(2*n))`
-/

namespace A314945.P17675669057717183506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314677 (2 * n)).toNat - A004396 (A004396 (2 * n)).toNat

end

end A314945.P17675669057717183506

namespace A314945

/-- `A004396(A314677(2*n))-A004396(A004396(2*n))` -/
def P17675669057717183506.Spec : Prop :=
  ∀ n, P17675669057717183506.a n = A314945 n

end A314945

/-! ## A314945.P7902640522080657675

`A004396(A314683(2*n))-A004396(A004396(2*n))`
-/

namespace A314945.P7902640522080657675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314683 (2 * n)).toNat - A004396 (A004396 (2 * n)).toNat

end

end A314945.P7902640522080657675

namespace A314945

/-- `A004396(A314683(2*n))-A004396(A004396(2*n))` -/
def P7902640522080657675.Spec : Prop :=
  ∀ n, P7902640522080657675.a n = A314945 n

end A314945

/-!
# A314946: Coordination sequence Gal.5.224.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314946, there is no canonical definition to state claims against.
-/

/-! ## A314946.P604403677369300447

`A301684(n)+A190592(A035617(n+1))`
-/

namespace A314946.P604403677369300447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301684 n + A190592 (A035617 (n + 1)).toNat

end

end A314946.P604403677369300447

/-! ## A314946.P15058159439249506153

`A301298(n)+A031346(A024026(n))`
-/

namespace A314946.P15058159439249506153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A031346 (A024026 n).toNat

end

end A314946.P15058159439249506153

/-! ## A314946.P1500286340207006423

`A312148(n)+A001877(A126941(n))`
-/

namespace A314946.P1500286340207006423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312148 n + A001877 (A126941 n).toNat

end

end A314946.P1500286340207006423

/-! ## A314946.P9551370816783419611

`A313617(n)-A010051(A000142(n))`
-/

namespace A314946.P9551370816783419611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313617 n - A010051 (A000142 n).toNat

end

end A314946.P9551370816783419611

/-!
# A314947: Coordination sequence Gal.6.198.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314947, the canonical program `A314947.P4377398531179062134` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314947 has offset 0).

The definition of A314947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314947.P4377398531179062134

`A311475(n)+A004396(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314947

/-- `A311475(n)+A004396(n)` -/
def P4377398531179062134.Spec : Prop :=
  ∀ n, P4377398531179062134.a n = A314947 n

theorem P4377398531179062134.correct : P4377398531179062134.Spec := by
  intro n
  simp only [A314947]

end A314947

/-! ## A314947.P12900317112604086403

`A310405(n)+A102283(n)`
-/

namespace A314947.P12900317112604086403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310405 n + A102283 n

end

end A314947.P12900317112604086403

namespace A314947

/-- `A310405(n)+A102283(n)` -/
def P12900317112604086403.Spec : Prop :=
  ∀ n, P12900317112604086403.a n = A314947 n

end A314947

/-! ## A314947.P10481741622996679720

`A311475(n)+A002264(2*n+1)`
-/

namespace A314947.P10481741622996679720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + A002264 (2 * n + 1)

end

end A314947.P10481741622996679720

namespace A314947

/-- `A311475(n)+A002264(2*n+1)` -/
def P10481741622996679720.Spec : Prop :=
  ∀ n, P10481741622996679720.a n = A314947 n

theorem P10481741622996679720.correct : P10481741622996679720.Spec := by
  intro n
  simp only [A314947, Nat.add_sub_cancel, A314947.P10481741622996679720.a, A314947.P4377398531179062134.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A311475, A311475.P11971039949641938868.f1, A311475.P11971039949641938868.a, A022003, A022003.P8302093470414743033.a, A312950, A312950.P6413655452689753570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314947

/-! ## A314947.P6383561087963601697

`abs(10*n-A314098(n))`
-/

namespace A314947.P6383561087963601697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314098 n|

end

end A314947.P6383561087963601697

namespace A314947

/-- `abs(10*n-A314098(n))` -/
def P6383561087963601697.Spec : Prop :=
  ∀ n, P6383561087963601697.a n = A314947 n

end A314947

/-! ## A314947.P5516763135159978116

`floor(A010015(n)/A314098(n))`
-/

namespace A314947.P5516763135159978116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A314098 n : ℚ)⌋

end

end A314947.P5516763135159978116

namespace A314947

/-- `floor(A010015(n)/A314098(n))` -/
def P5516763135159978116.Spec : Prop :=
  ∀ n, P5516763135159978116.a n = A314947 n

end A314947

/-! ## A314947.P10663737854834363626

`A008458(n)+A008574(n)-A314098(n)`
-/

namespace A314947.P10663737854834363626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314098 n)

end

end A314947.P10663737854834363626

namespace A314947

/-- `A008458(n)+A008574(n)-A314098(n)` -/
def P10663737854834363626.Spec : Prop :=
  ∀ n, P10663737854834363626.a n = A314947 n

end A314947

/-! ## A314947.P6147663728556935037

`A315064(n)-Δ[A011865(n)]`
-/

namespace A314947.P6147663728556935037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315064 n - (f1 (n + 1) - f1 n)

end

end A314947.P6147663728556935037

namespace A314947

/-- `A315064(n)-Δ[A011865(n)]` -/
def P6147663728556935037.Spec : Prop :=
  ∀ n, P6147663728556935037.a n = A314947 n

end A314947

/-! ## A314947.P12332800744597705099

`A313789(n)-∑[A022003(n)]`
-/

namespace A314947.P12332800744597705099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314947.P12332800744597705099

namespace A314947

/-- `A313789(n)-∑[A022003(n)]` -/
def P12332800744597705099.Spec : Prop :=
  ∀ n, P12332800744597705099.a n = A314947 n

end A314947

/-! ## A314947.P10624565382105744525

`A313789(n)-A002264(n+1)`
-/

namespace A314947.P10624565382105744525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n - A002264 (n + 1)

end

end A314947.P10624565382105744525

namespace A314947

/-- `A313789(n)-A002264(n+1)` -/
def P10624565382105744525.Spec : Prop :=
  ∀ n, P10624565382105744525.a n = A314947 n

end A314947

/-! ## A314947.P10068087141193881967

`A004396(n)+A313789(n)-n`
-/

namespace A314947.P10068087141193881967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313789 n - (n : ℤ))

end

end A314947.P10068087141193881967

namespace A314947

/-- `A004396(n)+A313789(n)-n` -/
def P10068087141193881967.Spec : Prop :=
  ∀ n, P10068087141193881967.a n = A314947 n

theorem P10068087141193881967.correct : P10068087141193881967.Spec := by
  intro n
  simp only [A314947, Nat.add_sub_cancel, A314947.P10068087141193881967.a, A314947.P4377398531179062134.a, A004396, A004396.P17032557045289780609.a, A311475, A311475.P11971039949641938868.f1, A311475.P11971039949641938868.a, A313789, A313789.P14929352302420444219.a, A022003, A022003.P8302093470414743033.a, A312950, A312950.P6413655452689753570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314947

/-! ## A314947.P12086985386205263582

`A008576(n)+A313789(n)-A008486(n)`
-/

namespace A314947.P12086985386205263582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313789 n - A008486 n)

end

end A314947.P12086985386205263582

namespace A314947

/-- `A008576(n)+A313789(n)-A008486(n)` -/
def P12086985386205263582.Spec : Prop :=
  ∀ n, P12086985386205263582.a n = A314947 n

end A314947

/-! ## A314947.P16550317784899891869

`A074067(A314098(n))`
-/

namespace A314947.P16550317784899891869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A314098 n).toNat

end

end A314947.P16550317784899891869

namespace A314947

/-- `A074067(A314098(n))` -/
def P16550317784899891869.Spec : Prop :=
  ∀ n, P16550317784899891869.a n = A314947 n

end A314947

/-! ## A314947.P13898574810868090099

`A004396(n)+A004396(A314903(n))+n`
-/

namespace A314947.P13898574810868090099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004396 (A314903 n).toNat + (n : ℤ))

end

end A314947.P13898574810868090099

namespace A314947

/-- `A004396(n)+A004396(A314903(n))+n` -/
def P13898574810868090099.Spec : Prop :=
  ∀ n, P13898574810868090099.a n = A314947 n

end A314947

/-! ## A314947.P15575640506776488915

`A004396(A313803(n))+2*A004396(n)`
-/

namespace A314947.P15575640506776488915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313803 n).toNat + 2 * A004396 n

end

end A314947.P15575640506776488915

namespace A314947

/-- `A004396(A313803(n))+2*A004396(n)` -/
def P15575640506776488915.Spec : Prop :=
  ∀ n, P15575640506776488915.a n = A314947 n

end A314947

/-! ## A314947.P5289564453865880710

`A005843(A004396(n))+A004396(A313803(n))`
-/

namespace A314947.P5289564453865880710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A004396 n).toNat + A004396 (A313803 n).toNat

end

end A314947.P5289564453865880710

namespace A314947

/-- `A005843(A004396(n))+A004396(A313803(n))` -/
def P5289564453865880710.Spec : Prop :=
  ∀ n, P5289564453865880710.a n = A314947 n

end A314947

/-! ## A314947.P5218592944363837493

`A004396(A313789(n)+A004396(n))+n`
-/

namespace A314947.P5218592944363837493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313789 n + A004396 n).toNat + (n : ℤ)

end

end A314947.P5218592944363837493

namespace A314947

/-- `A004396(A313789(n)+A004396(n))+n` -/
def P5218592944363837493.Spec : Prop :=
  ∀ n, P5218592944363837493.a n = A314947 n

end A314947

/-! ## A314947.P10260502307103835025

`A004396(n)+A004396(A313803(n)+n)`
-/

namespace A314947.P10260502307103835025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A313803 n + (n : ℤ)).toNat

end

end A314947.P10260502307103835025

namespace A314947

/-- `A004396(n)+A004396(A313803(n)+n)` -/
def P10260502307103835025.Spec : Prop :=
  ∀ n, P10260502307103835025.a n = A314947 n

end A314947

/-! ## A314947.P8562002249929195

`A004396(n)+A004396(A311536(n)+A005843(n))`
-/

namespace A314947.P8562002249929195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A311536 n + A005843 n).toNat

end

end A314947.P8562002249929195

namespace A314947

/-- `A004396(n)+A004396(A311536(n)+A005843(n))` -/
def P8562002249929195.Spec : Prop :=
  ∀ n, P8562002249929195.a n = A314947 n

end A314947

/-!
# A314948: Coordination sequence Gal.5.220.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314948, there is no canonical definition to state claims against.
-/

/-! ## A314948.P16674610717665095591

`A359244(A096322(n+1))+A314896(n)`
-/

namespace A314948.P16674610717665095591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359244 (A096322 (n + 1)).toNat + A314896 n

end

end A314948.P16674610717665095591

/-! ## A314948.P12196778816311400870

`A114904(A248232(n+1))`
-/

namespace A314948.P12196778816311400870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114904 (A248232 (n + 1)).toNat

end

end A314948.P12196778816311400870

/-! ## A314948.P1756961754104937953

`A301291(n)+A065339(A080635(n))`
-/

namespace A314948.P1756961754104937953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A065339 (A080635 n).toNat

end

end A314948.P1756961754104937953

/-! ## A314948.P7421120562300257468

`A301298(n)+A133188(A063886(n))`
-/

namespace A314948.P7421120562300257468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A133188 (A063886 n).toNat

end

end A314948.P7421120562300257468

/-! ## A314948.P10571636329019185956

`A314962(n)-A055641(A036784(n))`
-/

namespace A314948.P10571636329019185956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314962 n - A055641 (A036784 n).toNat

end

end A314948.P10571636329019185956

/-!
# A314949: Coordination sequence Gal.6.586.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314949, there is no canonical definition to state claims against.
-/

/-! ## A314949.P17558744584434587241

`A315055(n)-A276404(A066572(n+1))`
-/

namespace A314949.P17558744584434587241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315055 n - A276404 (A066572 (n + 1)).toNat

end

end A314949.P17558744584434587241

/-! ## A314949.P2025411768033018699

`A315061(n)-A038378(n+1)%2`
-/

namespace A314949.P2025411768033018699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n - Int.tmod (A038378 (n + 1)) 2

end

end A314949.P2025411768033018699

/-! ## A314949.P7075828395717799256

`A313923(n)-A001222(A155069(n))`
-/

namespace A314949.P7075828395717799256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313923 n - A001222 (A155069 n).toNat

end

end A314949.P7075828395717799256

/-! ## A314949.P17757690859530639796

`A315061(n)-A269518(A001117(n))`
-/

namespace A314949.P17757690859530639796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n - A269518 (A001117 n).toNat

end

end A314949.P17757690859530639796

/-! ## A314949.P4502008960360103451

`A315055(n)-A266243(A032132(n+1))`
-/

namespace A314949.P4502008960360103451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315055 n - A266243 (A032132 (n + 1)).toNat

end

end A314949.P4502008960360103451

/-!
# A314950: Coordination sequence Gal.6.542.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314950, there is no canonical definition to state claims against.
-/

/-! ## A314950.P9333493879791147441

`A312617(n)+A001878(A077248(n))`
-/

namespace A314950.P9333493879791147441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312617 n + A001878 (A077248 n).toNat

end

end A314950.P9333493879791147441

/-! ## A314950.P10594176177344372797

`A316223(A001009(n+4))+A314870(n)`
-/

namespace A314950.P10594176177344372797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316223 (A001009 (n + 4)).toNat + A314870 n

end

end A314950.P10594176177344372797

/-! ## A314950.P164617258266088475

`A129132(3*n+1)+A051903(A209798(n+1))`
-/

namespace A314950.P164617258266088475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129132 (3 * n + 1) + A051903 (A209798 (n + 1)).toNat

end

end A314950.P164617258266088475

/-! ## A314950.P7289738052314698858

`A034856(n+1)+A001221(A006385(n))-A005672(n)`
-/

namespace A314950.P7289738052314698858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) + (A001221 (A006385 n).toNat - A005672 n)

end

end A314950.P7289738052314698858

/-!
# A314951: Coordination sequence Gal.4.98.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314951, there is no canonical definition to state claims against.
-/

/-! ## A314951.P6960823573402213656

`A160755(A313799(n))-A282969(n+2)`
-/

namespace A314951.P6960823573402213656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A313799 n).toNat - A282969 (n + 2)

end

end A314951.P6960823573402213656

/-! ## A314951.P1721806701850377678

`A005117(3*n+1)-A324692(n²)`
-/

namespace A314951.P1721806701850377678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 1) - A324692 (n ^ 2)

end

end A314951.P1721806701850377678

/-! ## A314951.P2649537308039339212

`A316003(n)-A008683(A010904(n))`
-/

namespace A314951.P2649537308039339212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316003 n - A008683 (A010904 n).toNat

end

end A314951.P2649537308039339212

/-!
# A314952: Coordination sequence Gal.6.585.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314952, there is no canonical definition to state claims against.
-/

/-! ## A314952.P10930380508049896235

`A313757(n)-A003285(A253677(n+1))`
-/

namespace A314952.P10930380508049896235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313757 n - A003285 (A253677 (n + 1)).toNat

end

end A314952.P10930380508049896235

/-! ## A314952.P11114367672326820892

`∑[or(A098804(2*n+1), A336856(2*(n+2)))]`
-/

namespace A314952.P11114367672326820892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A098804 (2 * n + 1)) (A336856 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314952.P11114367672326820892

/-! ## A314952.P15599517176825313407

`A313911(n)-A001221(A116485(n))`
-/

namespace A314952.P15599517176825313407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313911 n - A001221 (A116485 n).toNat

end

end A314952.P15599517176825313407

/-! ## A314952.P3703804642230001123

`A313911(n)-A001221(A256205(n))`
-/

namespace A314952.P3703804642230001123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313911 n - A001221 (A256205 n).toNat

end

end A314952.P3703804642230001123

/-! ## A314952.P6512595202203737330

`xor(A081603(A275690(n)), A314943(n))`
-/

namespace A314952.P6512595202203737330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081603 (A275690 n).toNat) (A314943 n)

end

end A314952.P6512595202203737330

/-!
# A314953: Coordination sequence Gal.6.202.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314953, the canonical program `A314953.P5789728208216381140` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314953 has offset 0).

The definition of A314953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2421 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314953.P5789728208216381140

`A312065(n)+A004525(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314953

/-- `A312065(n)+A004525(n)` -/
def P5789728208216381140.Spec : Prop :=
  ∀ n, P5789728208216381140.a n = A314953 n

theorem P5789728208216381140.correct : P5789728208216381140.Spec := by
  intro n
  simp only [A314953]

end A314953

/-! ## A314953.P16366940601205720031

`A312065(n)+Δ[A054925(n)]`
-/

namespace A314953.P16366940601205720031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + (f1 (n + 1) - f1 n)

end

end A314953.P16366940601205720031

namespace A314953

/-- `A312065(n)+Δ[A054925(n)]` -/
def P16366940601205720031.Spec : Prop :=
  ∀ n, P16366940601205720031.a n = A314953 n

end A314953

/-! ## A314953.P5201206069860066598

`A312065(n)+n-∑[A021913(n)]`
-/

namespace A314953.P5201206069860066598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A314953.P5201206069860066598

namespace A314953

/-- `A312065(n)+n-∑[A021913(n)]` -/
def P5201206069860066598.Spec : Prop :=
  ∀ n, P5201206069860066598.a n = A314953 n

end A314953

/-! ## A314953.P11631415269898887627

`A312065(n)+n-Δ[A011848(n)]`
-/

namespace A314953.P11631415269898887627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314953.P11631415269898887627

namespace A314953

/-- `A312065(n)+n-Δ[A011848(n)]` -/
def P11631415269898887627.Spec : Prop :=
  ∀ n, P11631415269898887627.a n = A314953 n

end A314953

/-! ## A314953.P5458727483705570118

`A004396(n)+A301291(n)-A004525(A004396(n))`
-/

namespace A314953.P5458727483705570118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A301291 n - A004525 (A004396 n).toNat)

end

end A314953.P5458727483705570118

namespace A314953

/-- `A004396(n)+A301291(n)-A004525(A004396(n))` -/
def P5458727483705570118.Spec : Prop :=
  ∀ n, P5458727483705570118.a n = A314953 n

end A314953

/-! ## A314953.P1697635722492955574

`A004525(n)+A301298(n)-A004525(A004396(n))`
-/

namespace A314953.P1697635722492955574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A301298 n - A004525 (A004396 n).toNat)

end

end A314953.P1697635722492955574

namespace A314953

/-- `A004525(n)+A301298(n)-A004525(A004396(n))` -/
def P1697635722492955574.Spec : Prop :=
  ∀ n, P1697635722492955574.a n = A314953 n

end A314953

/-! ## A314953.P4716415303456457039

`A004525(n)+A314893(n)-A004396(A004525(n))`
-/

namespace A314953.P4716415303456457039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314893 n - A004396 (A004525 n).toNat)

end

end A314953.P4716415303456457039

namespace A314953

/-- `A004525(n)+A314893(n)-A004396(A004525(n))` -/
def P4716415303456457039.Spec : Prop :=
  ∀ n, P4716415303456457039.a n = A314953 n

end A314953

/-! ## A314953.P6886988493213385586

`A315196(n)-A128834(n)`
-/

namespace A314953.P6886988493213385586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315196 n - A128834 n

end

end A314953.P6886988493213385586

namespace A314953

/-- `A315196(n)-A128834(n)` -/
def P6886988493213385586.Spec : Prop :=
  ∀ n, P6886988493213385586.a n = A314953 n

end A314953

/-! ## A314953.P6642539042377589433

`A315196(n)+A010892(n+2)`
-/

namespace A314953.P6642539042377589433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315196 n + A010892 (n + 2)

end

end A314953.P6642539042377589433

namespace A314953

/-- `A315196(n)+A010892(n+2)` -/
def P6642539042377589433.Spec : Prop :=
  ∀ n, P6642539042377589433.a n = A314953 n

end A314953

/-! ## A314953.P7677081960252281297

`A313237(n)+A101455(n)`
-/

namespace A314953.P7677081960252281297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313237 n + A101455 n

end

end A314953.P7677081960252281297

namespace A314953

/-- `A313237(n)+A101455(n)` -/
def P7677081960252281297.Spec : Prop :=
  ∀ n, P7677081960252281297.a n = A314953 n

end A314953

/-! ## A314953.P10819598028603455541

`A313237(n)+A046978(2*n)`
-/

namespace A314953.P10819598028603455541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313237 n + A046978 (2 * n)

end

end A314953.P10819598028603455541

namespace A314953

/-- `A313237(n)+A046978(2*n)` -/
def P10819598028603455541.Spec : Prop :=
  ∀ n, P10819598028603455541.a n = A314953 n

end A314953

/-! ## A314953.P8137818936984841869

`A313778(n)-A004525(n-A004396(n))`
-/

namespace A314953.P8137818936984841869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A314953.P8137818936984841869

namespace A314953

/-- `A313778(n)-A004525(n-A004396(n))` -/
def P8137818936984841869.Spec : Prop :=
  ∀ n, P8137818936984841869.a n = A314953 n

end A314953

/-! ## A314953.P2122736540663331875

`A313791(n)-A002264(n+1)`
-/

namespace A314953.P2122736540663331875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313791 n - A002264 (n + 1)

end

end A314953.P2122736540663331875

namespace A314953

/-- `A313791(n)-A002264(n+1)` -/
def P2122736540663331875.Spec : Prop :=
  ∀ n, P2122736540663331875.a n = A314953 n

theorem P2122736540663331875.correct : P2122736540663331875.Spec := by
  intro n
  simp only [A314953, Nat.add_sub_cancel, A314953.P2122736540663331875.a, A314953.P5789728208216381140.a, A002264, A002264.P5647656940077635922.a, A004525, A004525.P4158271949796742323.a, A312065, A312065.P12266081500591104946.a, A313791, A313791.P11156003567688367397.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P11792871085229594459.a, A313110, A313110.P8718307215339103209.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314953

/-! ## A314953.P1000927710329330717

`A004396(n)+A313791(n)-n`
-/

namespace A314953.P1000927710329330717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313791 n - (n : ℤ))

end

end A314953.P1000927710329330717

namespace A314953

/-- `A004396(n)+A313791(n)-n` -/
def P1000927710329330717.Spec : Prop :=
  ∀ n, P1000927710329330717.a n = A314953 n

end A314953

/-! ## A314953.P17183493127337038159

`A008576(n)+A313791(n)-A008486(n)`
-/

namespace A314953.P17183493127337038159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313791 n - A008486 n)

end

end A314953.P17183493127337038159

namespace A314953

/-- `A008576(n)+A313791(n)-A008486(n)` -/
def P17183493127337038159.Spec : Prop :=
  ∀ n, P17183493127337038159.a n = A314953 n

end A314953

/-! ## A314953.P7230436581590881991

`A313781(n)-A004396(n-A004525(n))`
-/

namespace A314953.P7230436581590881991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313781 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A314953.P7230436581590881991

namespace A314953

/-- `A313781(n)-A004396(n-A004525(n))` -/
def P7230436581590881991.Spec : Prop :=
  ∀ n, P7230436581590881991.a n = A314953 n

end A314953

/-! ## A314953.P15782049661203342558

`abs(A008592(n)-A314097(n))`
-/

namespace A314953.P15782049661203342558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314097 n|

end

end A314953.P15782049661203342558

namespace A314953

/-- `abs(A008592(n)-A314097(n))` -/
def P15782049661203342558.Spec : Prop :=
  ∀ n, P15782049661203342558.a n = A314953 n

end A314953

/-! ## A314953.P4521763027535222464

`A008458(n)+A008574(n)-A314097(n)`
-/

namespace A314953.P4521763027535222464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314097 n)

end

end A314953.P4521763027535222464

namespace A314953

/-- `A008458(n)+A008574(n)-A314097(n)` -/
def P4521763027535222464.Spec : Prop :=
  ∀ n, P4521763027535222464.a n = A314953 n

end A314953

/-! ## A314953.P9747067061746441832

`A004525(n)+A301697(n)-n`
-/

namespace A314953.P9747067061746441832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A301697 n - (n : ℤ))

end

end A314953.P9747067061746441832

namespace A314953

/-- `A004525(n)+A301697(n)-n` -/
def P9747067061746441832.Spec : Prop :=
  ∀ n, P9747067061746441832.a n = A314953 n

end A314953

/-!
# A314954: Coordination sequence Gal.4.77.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314954, the canonical program `A314954.P14094571028492028664` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314954 has offset 0).

The definition of A314954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314954.P14094571028492028664

`A313613(n)-A238470(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314954

/-- `A313613(n)-A238470(n)` -/
def P14094571028492028664.Spec : Prop :=
  ∀ n, P14094571028492028664.a n = A314954 n

theorem P14094571028492028664.correct : P14094571028492028664.Spec := by
  intro n
  simp only [A314954]

end A314954

/-! ## A314954.P14159572854822934191

`A314753(n)+Δ[A011860(n)]`
-/

namespace A314954.P14159572854822934191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314753 n + (f1 (n + 1) - f1 n)

end

end A314954.P14159572854822934191

namespace A314954

/-- `A314753(n)+Δ[A011860(n)]` -/
def P14159572854822934191.Spec : Prop :=
  ∀ n, P14159572854822934191.a n = A314954 n

end A314954

/-! ## A314954.P7070064540998897727

`A315032(n)+A238468(A238468(n)+n)`
-/

namespace A314954.P7070064540998897727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315032 n + A238468 (A238468 n + (n : ℤ)).toNat

end

end A314954.P7070064540998897727

namespace A314954

/-- `A315032(n)+A238468(A238468(n)+n)` -/
def P7070064540998897727.Spec : Prop :=
  ∀ n, P7070064540998897727.a n = A314954 n

end A314954

/-! ## A314954.P1748723075853531467

`A313147(n)+A238469(n)`
-/

namespace A314954.P1748723075853531467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313147 n + A238469 n

end

end A314954.P1748723075853531467

namespace A314954

/-- `A313147(n)+A238469(n)` -/
def P1748723075853531467.Spec : Prop :=
  ∀ n, P1748723075853531467.a n = A314954 n

end A314954

/-! ## A314954.P7321846298384823133

`A313147(n)+A238470(2*n)`
-/

namespace A314954.P7321846298384823133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313147 n + A238470 (2 * n)

end

end A314954.P7321846298384823133

namespace A314954

/-- `A313147(n)+A238470(2*n)` -/
def P7321846298384823133.Spec : Prop :=
  ∀ n, P7321846298384823133.a n = A314954 n

end A314954

/-! ## A314954.P2244531142473001721

`abs(A008592(n)-A314096(n))`
-/

namespace A314954.P2244531142473001721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314096 n|

end

end A314954.P2244531142473001721

namespace A314954

/-- `abs(A008592(n)-A314096(n))` -/
def P2244531142473001721.Spec : Prop :=
  ∀ n, P2244531142473001721.a n = A314954 n

end A314954

/-! ## A314954.P14372699517158094453

`2*A008706(n)-A314096(n)`
-/

namespace A314954.P14372699517158094453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314096 n

end

end A314954.P14372699517158094453

namespace A314954

/-- `2*A008706(n)-A314096(n)` -/
def P14372699517158094453.Spec : Prop :=
  ∀ n, P14372699517158094453.a n = A314954 n

end A314954

/-! ## A314954.P10631682212927745529

`A008458(n)+A008574(n)-A314096(n)`
-/

namespace A314954.P10631682212927745529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314096 n)

end

end A314954.P10631682212927745529

namespace A314954

/-- `A008458(n)+A008574(n)-A314096(n)` -/
def P10631682212927745529.Spec : Prop :=
  ∀ n, P10631682212927745529.a n = A314954 n

end A314954

/-! ## A314954.P10736566778459829421

`A314096(n)-A005843(A314096(n)-A008706(n))`
-/

namespace A314954.P10736566778459829421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314096 n - A005843 (A314096 n - A008706 n).toNat

end

end A314954.P10736566778459829421

namespace A314954

/-- `A314096(n)-A005843(A314096(n)-A008706(n))` -/
def P10736566778459829421.Spec : Prop :=
  ∀ n, P10736566778459829421.a n = A314954 n

end A314954

/-! ## A314954.P15553453261197928051

`2*n+A004396(A311586(n))`
-/

namespace A314954.P15553453261197928051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A311586 n).toNat

end

end A314954.P15553453261197928051

namespace A314954

/-- `2*n+A004396(A311586(n))` -/
def P15553453261197928051.Spec : Prop :=
  ∀ n, P15553453261197928051.a n = A314954 n

end A314954

/-! ## A314954.P6224975165465065231

`A008585(n)-(n-A004396(A311586(n)))`
-/

namespace A314954.P6224975165465065231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A311586 n).toNat)

end

end A314954.P6224975165465065231

namespace A314954

/-- `A008585(n)-(n-A004396(A311586(n)))` -/
def P6224975165465065231.Spec : Prop :=
  ∀ n, P6224975165465065231.a n = A314954 n

end A314954

/-! ## A314954.P9167767135535391156

`A242062(n)+A314249(n)-n`
-/

namespace A314954.P9167767135535391156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 n + (A314249 n - (n : ℤ))

end

end A314954.P9167767135535391156

namespace A314954

/-- `A242062(n)+A314249(n)-n` -/
def P9167767135535391156.Spec : Prop :=
  ∀ n, P9167767135535391156.a n = A314954 n

end A314954

/-! ## A314954.P1052956850219805883

`A005843(A008706(n))-A314096(n)`
-/

namespace A314954.P1052956850219805883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314096 n

end

end A314954.P1052956850219805883

namespace A314954

/-- `A005843(A008706(n))-A314096(n)` -/
def P1052956850219805883.Spec : Prop :=
  ∀ n, P1052956850219805883.a n = A314954 n

end A314954

/-! ## A314954.P14877107444765249111

`A004396(A311586(n)+A008486(n))`
-/

namespace A314954.P14877107444765249111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311586 n + A008486 n).toNat

end

end A314954.P14877107444765249111

namespace A314954

/-- `A004396(A311586(n)+A008486(n))` -/
def P14877107444765249111.Spec : Prop :=
  ∀ n, P14877107444765249111.a n = A314954 n

end A314954

/-! ## A314954.P15642016277416378631

`A004396(A311586(n)+A008585(n))`
-/

namespace A314954.P15642016277416378631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311586 n + A008585 n).toNat

end

end A314954.P15642016277416378631

namespace A314954

/-- `A004396(A311586(n)+A008585(n))` -/
def P15642016277416378631.Spec : Prop :=
  ∀ n, P15642016277416378631.a n = A314954 n

end A314954

/-! ## A314954.P16129449683783960745

`A028310(A313694(2*n)-A313694(n))`
-/

namespace A314954.P16129449683783960745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A313694 (2 * n) - A313694 n).toNat

end

end A314954.P16129449683783960745

namespace A314954

/-- `A028310(A313694(2*n)-A313694(n))` -/
def P16129449683783960745.Spec : Prop :=
  ∀ n, P16129449683783960745.a n = A314954 n

end A314954

/-! ## A314954.P9394324485097305913

`A315511(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A314954.P9394324485097305913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315511 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A314954.P9394324485097305913

namespace A314954

/-- `A315511(2*n)+A008458(n+1)-(12*n+6)` -/
def P9394324485097305913.Spec : Prop :=
  ∀ n, P9394324485097305913.a n = A314954 n

end A314954

/-! ## A314954.P11168942885723153642

`A004396(A315309(2*n))-A005843(n)`
-/

namespace A314954.P11168942885723153642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315309 (2 * n)).toNat - A005843 n

end

end A314954.P11168942885723153642

namespace A314954

/-- `A004396(A315309(2*n))-A005843(n)` -/
def P11168942885723153642.Spec : Prop :=
  ∀ n, P11168942885723153642.a n = A314954 n

end A314954

/-!
# A314955: Coordination sequence Gal.6.322.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314955, the canonical program `A314955.P12481848107650219494` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314955 has offset 0).

The definition of A314955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314955.P7839844391021139783

`ogf((1+4x+4x^2+5x^3+6x^4+5x^5+4x^6+5x^7+6x^8+5x^9+4x^10+4x^11+x^12)/(1-x-x^11+x^12))`
-/

namespace A314955.P7839844391021139783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4, 5, 6, 5, 4, 5, 6, 5, 4, 4, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A314955.P7839844391021139783

namespace A314955

/-- `ogf((1+4x+4x^2+5x^3+6x^4+5x^5+4x^6+5x^7+6x^8+5x^9+4x^10+4x^11+x^12)/(1-x-x^11+x^12))` -/
def P7839844391021139783.Spec : Prop :=
  ∀ n, P7839844391021139783.a n = A314955 n

end A314955

/-! ## A314955.P12481848107650219494

`abs(A008592(n)-A314095(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A314955

/-- `abs(A008592(n)-A314095(n))` -/
def P12481848107650219494.Spec : Prop :=
  ∀ n, P12481848107650219494.a n = A314955 n

theorem P12481848107650219494.correct : P12481848107650219494.Spec := by
  intro n
  simp only [A314955]

end A314955

/-! ## A314955.P3277265883641962846

`2*A008706(n)-A314095(n)`
-/

namespace A314955.P3277265883641962846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314095 n

end

end A314955.P3277265883641962846

namespace A314955

/-- `2*A008706(n)-A314095(n)` -/
def P3277265883641962846.Spec : Prop :=
  ∀ n, P3277265883641962846.a n = A314955 n

end A314955

/-! ## A314955.P14555458858154975242

`A008458(n)+A008574(n)-A314095(n)`
-/

namespace A314955.P14555458858154975242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314095 n)

end

end A314955.P14555458858154975242

namespace A314955

/-- `A008458(n)+A008574(n)-A314095(n)` -/
def P14555458858154975242.Spec : Prop :=
  ∀ n, P14555458858154975242.a n = A314955 n

end A314955

/-! ## A314955.P17479434237282847339

`A314095(n)-A005843(A314095(n)-A008706(n))`
-/

namespace A314955.P17479434237282847339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314095 n - A005843 (A314095 n - A008706 n).toNat

end

end A314955.P17479434237282847339

namespace A314955

/-- `A314095(n)-A005843(A314095(n)-A008706(n))` -/
def P17479434237282847339.Spec : Prop :=
  ∀ n, P17479434237282847339.a n = A314955 n

end A314955

/-! ## A314955.P13847660020414994391

`2*n+A004396(A311593(n))`
-/

namespace A314955.P13847660020414994391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A311593 n).toNat

end

end A314955.P13847660020414994391

namespace A314955

/-- `2*n+A004396(A311593(n))` -/
def P13847660020414994391.Spec : Prop :=
  ∀ n, P13847660020414994391.a n = A314955 n

end A314955

/-! ## A314955.P15947031371867846455

`A008585(n)-(n-A004396(A311593(n)))`
-/

namespace A314955.P15947031371867846455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A311593 n).toNat)

end

end A314955.P15947031371867846455

namespace A314955

/-- `A008585(n)-(n-A004396(A311593(n)))` -/
def P15947031371867846455.Spec : Prop :=
  ∀ n, P15947031371867846455.a n = A314955 n

end A314955

/-! ## A314955.P7913771917149279626

`A005843(A008706(n))-A314095(n)`
-/

namespace A314955.P7913771917149279626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314095 n

end

end A314955.P7913771917149279626

namespace A314955

/-- `A005843(A008706(n))-A314095(n)` -/
def P7913771917149279626.Spec : Prop :=
  ∀ n, P7913771917149279626.a n = A314955 n

end A314955

/-! ## A314955.P16245748934178342414

`A004396(2*A311434(n)-n)`
-/

namespace A314955.P16245748934178342414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A311434 n - (n : ℤ)).toNat

end

end A314955.P16245748934178342414

namespace A314955

/-- `A004396(2*A311434(n)-n)` -/
def P16245748934178342414.Spec : Prop :=
  ∀ n, P16245748934178342414.a n = A314955 n

end A314955

/-! ## A314955.P2354651545491358736

`A004396(A311593(n)+A008486(n))`
-/

namespace A314955.P2354651545491358736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311593 n + A008486 n).toNat

end

end A314955.P2354651545491358736

namespace A314955

/-- `A004396(A311593(n)+A008486(n))` -/
def P2354651545491358736.Spec : Prop :=
  ∀ n, P2354651545491358736.a n = A314955 n

end A314955

/-! ## A314955.P13509738327116556377

`A004396(A311593(n)+A008585(n))`
-/

namespace A314955.P13509738327116556377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311593 n + A008585 n).toNat

end

end A314955.P13509738327116556377

namespace A314955

/-- `A004396(A311593(n)+A008585(n))` -/
def P13509738327116556377.Spec : Prop :=
  ∀ n, P13509738327116556377.a n = A314955 n

end A314955

/-! ## A314955.P6873369329596646133

`A004396(A005843(A311434(n))-n)`
-/

namespace A314955.P6873369329596646133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 (A311434 n).toNat - (n : ℤ)).toNat

end

end A314955.P6873369329596646133

namespace A314955

/-- `A004396(A005843(A311434(n))-n)` -/
def P6873369329596646133.Spec : Prop :=
  ∀ n, P6873369329596646133.a n = A314955 n

end A314955

/-! ## A314955.P1767355399424315632

`A004396(A311434(n)+A311434(n)-n)`
-/

namespace A314955.P1767355399424315632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311434 n + (A311434 n - (n : ℤ))).toNat

end

end A314955.P1767355399424315632

namespace A314955

/-- `A004396(A311434(n)+A311434(n)-n)` -/
def P1767355399424315632.Spec : Prop :=
  ∀ n, P1767355399424315632.a n = A314955 n

end A314955

/-! ## A314955.P10497829570862858752

`A004396(A311434(n)-(n-A311434(n)))`
-/

namespace A314955.P10497829570862858752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311434 n - ((n : ℤ) - A311434 n)).toNat

end

end A314955.P10497829570862858752

namespace A314955

/-- `A004396(A311434(n)-(n-A311434(n)))` -/
def P10497829570862858752.Spec : Prop :=
  ∀ n, P10497829570862858752.a n = A314955 n

end A314955

/-!
# A314956: Coordination sequence Gal.6.462.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314956, there is no canonical definition to state claims against.
-/

/-! ## A314956.P9200958551241062587

`A313911(n)-A057516(A328358(n))`
-/

namespace A314956.P9200958551241062587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313911 n - A057516 (A328358 n).toNat

end

end A314956.P9200958551241062587

/-! ## A314956.P13789170155656585160

`A314440(n)+A243055(A002805(n+1))`
-/

namespace A314956.P13789170155656585160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314440 n + A243055 (A002805 (n + 1)).toNat

end

end A314956.P13789170155656585160

/-! ## A314956.P15650042750334420808

`A222172(A032559(n+1))+3*n`
-/

namespace A314956.P15650042750334420808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222172 (A032559 (n + 1)).toNat + (3 * n : ℤ)

end

end A314956.P15650042750334420808

/-! ## A314956.P3169340719273068964

`A278043(A035098(n+1))+4*n`
-/

namespace A314956.P3169340719273068964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278043 (A035098 (n + 1)).toNat + (4 * n : ℤ)

end

end A314956.P3169340719273068964

/-! ## A314956.P16379639622843660734

`∑[A109129(∑[A333520(2*n+5)])]`
-/

namespace A314956.P16379639622843660734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333520 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314956.P16379639622843660734

/-!
# A314957: Coordination sequence Gal.6.494.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314957, there is no canonical definition to state claims against.
-/

/-! ## A314957.P17322506366558483114

`A301722(n)-A001221(A000085(n))`
-/

namespace A314957.P17322506366558483114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n - A001221 (A000085 n).toNat

end

end A314957.P17322506366558483114

/-! ## A314957.P13163847406905400020

`A301722(n)-A001221(A279555(n))`
-/

namespace A314957.P13163847406905400020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n - A001221 (A279555 n).toNat

end

end A314957.P13163847406905400020

/-! ## A314957.P13313463787487143989

`A301722(n)-A001221(A319719(n))`
-/

namespace A314957.P13313463787487143989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n - A001221 (A319719 n).toNat

end

end A314957.P13313463787487143989

/-! ## A314957.P510913138049457552

`A314913(A087051(n))+A014473(n)`
-/

namespace A314957.P510913138049457552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314913 (A087051 n).toNat + A014473 n

end

end A314957.P510913138049457552

/-! ## A314957.P5696982170431453215

`A313732(n)-A003982(A292287(n))`
-/

namespace A314957.P5696982170431453215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313732 n - A003982 (A292287 n).toNat

end

end A314957.P5696982170431453215

/-!
# A314958: Coordination sequence Gal.5.229.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314958, there is no canonical definition to state claims against.
-/

/-! ## A314958.P9805970728955782740

`or(A030998(A027467(n)), A314953(n))`
-/

namespace A314958.P9805970728955782740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030998 (A027467 n).toNat) (A314953 n)

end

end A314958.P9805970728955782740

/-! ## A314958.P4436932068287393156

`A301684(n)+A001221(A225918(n+1))`
-/

namespace A314958.P4436932068287393156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301684 n + A001221 (A225918 (n + 1)).toNat

end

end A314958.P4436932068287393156

/-! ## A314958.P2261297755558058307

`A313657(n)-A174875(A081741(n+1))`
-/

namespace A314958.P2261297755558058307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313657 n - A174875 (A081741 (n + 1)).toNat

end

end A314958.P2261297755558058307

/-! ## A314958.P4923271979814131293

`or(A314953(n), A343348(A094960(n+1)))`
-/

namespace A314958.P4923271979814131293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314953 n) (A343348 (A094960 (n + 1)).toNat)

end

end A314958.P4923271979814131293

/-! ## A314958.P9886903276998696484

`A045750(n)+A001221(A052539(n))`
-/

namespace A314958.P9886903276998696484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045750 n + A001221 (A052539 n).toNat

end

end A314958.P9886903276998696484

/-!
# A314959: Coordination sequence Gal.6.340.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314959, the canonical program `A314959.P7859421504801099217` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314959 has offset 0).

The definition of A314959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314959.P17816274972736539075

`A311512(n)+∑[char[∑[n%2+1]]]`
-/

namespace A314959.P17816274972736539075
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A314959.P17816274972736539075

namespace A314959

/-- `A311512(n)+∑[char[∑[n%2+1]]]` -/
def P17816274972736539075.Spec : Prop :=
  ∀ n, P17816274972736539075.a n = A314959 n

end A314959

/-! ## A314959.P16628590325050549177

`A311512(n)+A004396(n)`
-/

namespace A314959.P16628590325050549177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n + A004396 n

end

end A314959.P16628590325050549177

namespace A314959

/-- `A311512(n)+A004396(n)` -/
def P16628590325050549177.Spec : Prop :=
  ∀ n, P16628590325050549177.a n = A314959 n

end A314959

/-! ## A314959.P7452599085410242811

`A312101(n)+A004525(n)`
-/

namespace A314959.P7452599085410242811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312101 n + A004525 n

end

end A314959.P7452599085410242811

namespace A314959

/-- `A312101(n)+A004525(n)` -/
def P7452599085410242811.Spec : Prop :=
  ∀ n, P7452599085410242811.a n = A314959 n

end A314959

/-! ## A314959.P3053691532390397645

`A312101(n)+Δ[A054925(n)]`
-/

namespace A314959.P3053691532390397645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312101 n + (f1 (n + 1) - f1 n)

end

end A314959.P3053691532390397645

namespace A314959

/-- `A312101(n)+Δ[A054925(n)]` -/
def P3053691532390397645.Spec : Prop :=
  ∀ n, P3053691532390397645.a n = A314959 n

end A314959

/-! ## A314959.P5003459471499916654

`A311512(n)+A002264(2*n+1)`
-/

namespace A314959.P5003459471499916654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n + A002264 (2 * n + 1)

end

end A314959.P5003459471499916654

namespace A314959

/-- `A311512(n)+A002264(2*n+1)` -/
def P5003459471499916654.Spec : Prop :=
  ∀ n, P5003459471499916654.a n = A314959 n

end A314959

/-! ## A314959.P5693035179678958434

`A312184(n)+A004525(A004396(n))`
-/

namespace A314959.P5693035179678958434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312184 n + A004525 (A004396 n).toNat

end

end A314959.P5693035179678958434

namespace A314959

/-- `A312184(n)+A004525(A004396(n))` -/
def P5693035179678958434.Spec : Prop :=
  ∀ n, P5693035179678958434.a n = A314959 n

end A314959

/-! ## A314959.P7859421504801099217

`A004525(n)+A314899(n)-A004396(A004525(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A314959

/-- `A004525(n)+A314899(n)-A004396(A004525(n))` -/
def P7859421504801099217.Spec : Prop :=
  ∀ n, P7859421504801099217.a n = A314959 n

theorem P7859421504801099217.correct : P7859421504801099217.Spec := by
  intro n
  simp only [A314959]

end A314959

/-! ## A314959.P12157699285882236651

`abs(A008592(n)-A314094(n))`
-/

namespace A314959.P12157699285882236651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314094 n|

end

end A314959.P12157699285882236651

namespace A314959

/-- `abs(A008592(n)-A314094(n))` -/
def P12157699285882236651.Spec : Prop :=
  ∀ n, P12157699285882236651.a n = A314959 n

end A314959

/-! ## A314959.P7946958281912740503

`floor(A010015(n)/A314094(n))`
-/

namespace A314959.P7946958281912740503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A314094 n : ℚ)⌋

end

end A314959.P7946958281912740503

namespace A314959

/-- `floor(A010015(n)/A314094(n))` -/
def P7946958281912740503.Spec : Prop :=
  ∀ n, P7946958281912740503.a n = A314959 n

end A314959

/-! ## A314959.P15830101487812304990

`A008458(n)+A008574(n)-A314094(n)`
-/

namespace A314959.P15830101487812304990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314094 n)

end

end A314959.P15830101487812304990

namespace A314959

/-- `A008458(n)+A008574(n)-A314094(n)` -/
def P15830101487812304990.Spec : Prop :=
  ∀ n, P15830101487812304990.a n = A314959 n

end A314959

/-! ## A314959.P14553679767682726832

`A313781(n)-A004525(n-A004396(n))`
-/

namespace A314959.P14553679767682726832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313781 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A314959.P14553679767682726832

namespace A314959

/-- `A313781(n)-A004525(n-A004396(n))` -/
def P14553679767682726832.Spec : Prop :=
  ∀ n, P14553679767682726832.a n = A314959 n

end A314959

/-! ## A314959.P10368005648820195494

`A313794(n)-∑[A022003(n)]`
-/

namespace A314959.P10368005648820195494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313794 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314959.P10368005648820195494

namespace A314959

/-- `A313794(n)-∑[A022003(n)]` -/
def P10368005648820195494.Spec : Prop :=
  ∀ n, P10368005648820195494.a n = A314959 n

end A314959

/-! ## A314959.P10756649926771738470

`A313794(n)-A002264(n+1)`
-/

namespace A314959.P10756649926771738470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313794 n - A002264 (n + 1)

end

end A314959.P10756649926771738470

namespace A314959

/-- `A313794(n)-A002264(n+1)` -/
def P10756649926771738470.Spec : Prop :=
  ∀ n, P10756649926771738470.a n = A314959 n

end A314959

/-! ## A314959.P8849799778983191103

`A008576(n)+A313794(n)-A008486(n)`
-/

namespace A314959.P8849799778983191103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313794 n - A008486 n)

end

end A314959.P8849799778983191103

namespace A314959

/-- `A008576(n)+A313794(n)-A008486(n)` -/
def P8849799778983191103.Spec : Prop :=
  ∀ n, P8849799778983191103.a n = A314959 n

end A314959

/-! ## A314959.P9139403621200722708

`A074067(A314094(n))`
-/

namespace A314959.P9139403621200722708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A314094 n).toNat

end

end A314959.P9139403621200722708

namespace A314959

/-- `A074067(A314094(n))` -/
def P9139403621200722708.Spec : Prop :=
  ∀ n, P9139403621200722708.a n = A314959 n

end A314959

/-! ## A314959.P5370834121214978793

`A004396(n)+A004396(A313126(n))+n`
-/

namespace A314959.P5370834121214978793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004396 (A313126 n).toNat + (n : ℤ))

end

end A314959.P5370834121214978793

namespace A314959

/-- `A004396(n)+A004396(A313126(n))+n` -/
def P5370834121214978793.Spec : Prop :=
  ∀ n, P5370834121214978793.a n = A314959 n

end A314959

/-!
# A314960: Coordination sequence Gal.6.473.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314960, there is no canonical definition to state claims against.
-/

/-! ## A314960.P12614547081289266284

`A315265(n)-A014041(A005951(n))`
-/

namespace A314960.P12614547081289266284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315265 n - A014041 (A005951 n).toNat

end

end A314960.P12614547081289266284

/-! ## A314960.P7387724169858610417

`5*n-A014027(A193004(n+2))`
-/

namespace A314960.P7387724169858610417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A014027 (A193004 (n + 2)).toNat

end

end A314960.P7387724169858610417

/-! ## A314960.P16457559347524142602

`A314765(n)+A037800(A001519(n))`
-/

namespace A314960.P16457559347524142602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314765 n + A037800 (A001519 n).toNat

end

end A314960.P16457559347524142602

/-! ## A314960.P12892704342295957317

`A314959(n)+A056594(A286783(n))`
-/

namespace A314960.P12892704342295957317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314959 n + A056594 (A286783 n).toNat

end

end A314960.P12892704342295957317

/-! ## A314960.P8657976738906663702

`A314775(n)+A187752(A181318(n))`
-/

namespace A314960.P8657976738906663702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314775 n + A187752 (A181318 n).toNat

end

end A314960.P8657976738906663702

/-!
# A314961: Coordination sequence Gal.5.137.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314961, the canonical program `A314961.P17305649603709339470` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314961 has offset 0).

The definition of A314961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314961.P17305649603709339470

`A330033(n)+A310446(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314961

/-- `A330033(n)+A310446(n)` -/
def P17305649603709339470.Spec : Prop :=
  ∀ n, P17305649603709339470.a n = A314961 n

theorem P17305649603709339470.correct : P17305649603709339470.Spec := by
  intro n
  simp only [A314961]

end A314961

/-! ## A314961.P2252619360238785495

`A315270(n)-A330025(n)`
-/

namespace A314961.P2252619360238785495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315270 n - A330025 n

end

end A314961.P2252619360238785495

namespace A314961

/-- `A315270(n)-A330025(n)` -/
def P2252619360238785495.Spec : Prop :=
  ∀ n, P2252619360238785495.a n = A314961 n

end A314961

/-! ## A314961.P13216504589938815056

`A014019(n+3)+A008706(n)`
-/

namespace A314961.P13216504589938815056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (n + 3) + A008706 n

end

end A314961.P13216504589938815056

namespace A314961

/-- `A014019(n+3)+A008706(n)` -/
def P13216504589938815056.Spec : Prop :=
  ∀ n, P13216504589938815056.a n = A314961 n

end A314961

/-! ## A314961.P7957965690243838839

`A032793(A311440(n))-A004273(n)`
-/

namespace A314961.P7957965690243838839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (A311440 n).toNat - A004273 n

end

end A314961.P7957965690243838839

namespace A314961

/-- `A032793(A311440(n))-A004273(n)` -/
def P7957965690243838839.Spec : Prop :=
  ∀ n, P7957965690243838839.a n = A314961 n

end A314961

/-! ## A314961.P13268521150086969402

`A315461(n)-A253262(n)`
-/

namespace A314961.P13268521150086969402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315461 n - A253262 n

end

end A314961.P13268521150086969402

namespace A314961

/-- `A315461(n)-A253262(n)` -/
def P13268521150086969402.Spec : Prop :=
  ∀ n, P13268521150086969402.a n = A314961 n

end A314961

/-! ## A314961.P5927899334605164108

`A330025(n)+A312208(n)`
-/

namespace A314961.P5927899334605164108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A312208 n

end

end A314961.P5927899334605164108

namespace A314961

/-- `A330025(n)+A312208(n)` -/
def P5927899334605164108.Spec : Prop :=
  ∀ n, P5927899334605164108.a n = A314961 n

end A314961

/-! ## A314961.P14891637690919260187

`abs(A008592(n)-A314093(n))`
-/

namespace A314961.P14891637690919260187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314093 n|

end

end A314961.P14891637690919260187

namespace A314961

/-- `abs(A008592(n)-A314093(n))` -/
def P14891637690919260187.Spec : Prop :=
  ∀ n, P14891637690919260187.a n = A314961 n

end A314961

/-! ## A314961.P12132119493974567216

`floor(A010015(n)/A314093(n))`
-/

namespace A314961.P12132119493974567216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A314093 n : ℚ)⌋

end

end A314961.P12132119493974567216

namespace A314961

/-- `floor(A010015(n)/A314093(n))` -/
def P12132119493974567216.Spec : Prop :=
  ∀ n, P12132119493974567216.a n = A314961 n

end A314961

/-! ## A314961.P7287467185484343677

`2*A008706(n)-A314093(n)`
-/

namespace A314961.P7287467185484343677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314093 n

end

end A314961.P7287467185484343677

namespace A314961

/-- `2*A008706(n)-A314093(n)` -/
def P7287467185484343677.Spec : Prop :=
  ∀ n, P7287467185484343677.a n = A314961 n

end A314961

/-! ## A314961.P18035055857659760783

`A008458(n)+A008574(n)-A314093(n)`
-/

namespace A314961.P18035055857659760783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314093 n)

end

end A314961.P18035055857659760783

namespace A314961

/-- `A008458(n)+A008574(n)-A314093(n)` -/
def P18035055857659760783.Spec : Prop :=
  ∀ n, P18035055857659760783.a n = A314961 n

end A314961

/-! ## A314961.P4083897272392258134

`∑{d}[A008592(n)-A314093(n), A000010(#)]`
-/

namespace A314961.P4083897272392258134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A314961.P4083897272392258134

namespace A314961

/-- `∑{d}[A008592(n)-A314093(n), A000010(#)]` -/
def P4083897272392258134.Spec : Prop :=
  ∀ n, P4083897272392258134.a n = A314961 n

end A314961

/-! ## A314961.P2693147975941999706

`A074067(A314093(n))`
-/

namespace A314961.P2693147975941999706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A314093 n).toNat

end

end A314961.P2693147975941999706

namespace A314961

/-- `A074067(A314093(n))` -/
def P2693147975941999706.Spec : Prop :=
  ∀ n, P2693147975941999706.a n = A314961 n

end A314961

/-! ## A314961.P5274828963871863055

`A005843(A008706(n))-A314093(n)`
-/

namespace A314961.P5274828963871863055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314093 n

end

end A314961.P5274828963871863055

namespace A314961

/-- `A005843(A008706(n))-A314093(n)` -/
def P5274828963871863055.Spec : Prop :=
  ∀ n, P5274828963871863055.a n = A314961 n

end A314961

/-!
# A314962: Coordination sequence Gal.5.210.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314962, there is no canonical definition to state claims against.
-/

/-! ## A314962.P8955985332718763408

`or(A314948(A087051(n)), A314954(n))`
-/

namespace A314962.P8955985332718763408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314948 (A087051 n).toNat) (A314954 n)

end

end A314962.P8955985332718763408

/-! ## A314962.P13716922370253763105

`A314901(n)+A037833(A335914(n+1))`
-/

namespace A314962.P13716922370253763105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314901 n + A037833 (A335914 (n + 1)).toNat

end

end A314962.P13716922370253763105

/-! ## A314962.P6596916252346458132

`or(A297232(A146438(n+1)), A314954(n))`
-/

namespace A314962.P6596916252346458132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A297232 (A146438 (n + 1)).toNat) (A314954 n)

end

end A314962.P6596916252346458132

/-! ## A314962.P5551464089317634857

`A353086(A059711(n)+A002202(3*n+1))`
-/

namespace A314962.P5551464089317634857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353086 (A059711 n + A002202 (3 * n + 1)).toNat

end

end A314962.P5551464089317634857

/-! ## A314962.P1776585823353950668

`A312133(n)-A001221(n!)-(n-2*n)`
-/

namespace A314962.P1776585823353950668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312133 n - A001221 (Nat.factorial n) - ((n : ℤ) - (2 * n : ℤ))

end

end A314962.P1776585823353950668

/-!
# A314963: Coordination sequence Gal.6.199.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314963, the canonical program `A314963.P16460844886811447652` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314963 has offset 0).

The definition of A314963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314963.P659221458814738714

`ogf((1+4x+4x^2+5x^3+6x^4+5x^5+6x^6+5x^7+6x^8+5x^9+4x^10+4x^11+x^12)/(1-x-x^11+x^12))`
-/

namespace A314963.P659221458814738714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4, 5, 6, 5, 6, 5, 6, 5, 4, 4, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A314963.P659221458814738714

namespace A314963

/-- `ogf((1+4x+4x^2+5x^3+6x^4+5x^5+6x^6+5x^7+6x^8+5x^9+4x^10+4x^11+x^12)/(1-x-x^11+x^12))` -/
def P659221458814738714.Spec : Prop :=
  ∀ n, P659221458814738714.a n = A314963 n

end A314963

/-! ## A314963.P16460844886811447652

`abs(A008592(n)-A314092(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A314963

/-- `abs(A008592(n)-A314092(n))` -/
def P16460844886811447652.Spec : Prop :=
  ∀ n, P16460844886811447652.a n = A314963 n

theorem P16460844886811447652.correct : P16460844886811447652.Spec := by
  intro n
  simp only [A314963]

end A314963

/-! ## A314963.P4471560150308909539

`2*A008706(n)-A314092(n)`
-/

namespace A314963.P4471560150308909539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314092 n

end

end A314963.P4471560150308909539

namespace A314963

/-- `2*A008706(n)-A314092(n)` -/
def P4471560150308909539.Spec : Prop :=
  ∀ n, P4471560150308909539.a n = A314963 n

end A314963

/-! ## A314963.P10257827357027917072

`A135042(2*n+1)-A314092(n)`
-/

namespace A314963.P10257827357027917072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A314092 n

end

end A314963.P10257827357027917072

namespace A314963

/-- `A135042(2*n+1)-A314092(n)` -/
def P10257827357027917072.Spec : Prop :=
  ∀ n, P10257827357027917072.a n = A314963 n

end A314963

/-! ## A314963.P9654286602206274707

`A008458(n)+A008574(n)-A314092(n)`
-/

namespace A314963.P9654286602206274707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314092 n)

end

end A314963.P9654286602206274707

namespace A314963

/-- `A008458(n)+A008574(n)-A314092(n)` -/
def P9654286602206274707.Spec : Prop :=
  ∀ n, P9654286602206274707.a n = A314963 n

end A314963

/-! ## A314963.P306922883276883

`A315070(n)-Δ[A011864(n)]`
-/

namespace A314963.P306922883276883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315070 n - (f1 (n + 1) - f1 n)

end

end A314963.P306922883276883

namespace A314963

/-- `A315070(n)-Δ[A011864(n)]` -/
def P306922883276883.Spec : Prop :=
  ∀ n, P306922883276883.a n = A314963 n

end A314963

/-! ## A314963.P673602674435093534

`(A315329(n)+A311635(n))/2`
-/

namespace A314963.P673602674435093534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315329 n + A311635 n : ℚ) / 2

end

end A314963.P673602674435093534

namespace A314963

/-- `(A315329(n)+A311635(n))/2` -/
def P673602674435093534.Spec : Prop :=
  ∀ n, P673602674435093534.a n = (A314963 n : ℚ)

end A314963

/-! ## A314963.P12863567613561711657

`A311635(n)+A001281(A315329(n)-A311635(n))`
-/

namespace A314963.P12863567613561711657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311635 n + A001281 (A315329 n - A311635 n).toNat

end

end A314963.P12863567613561711657

namespace A314963

/-- `A311635(n)+A001281(A315329(n)-A311635(n))` -/
def P12863567613561711657.Spec : Prop :=
  ∀ n, P12863567613561711657.a n = A314963 n

end A314963

/-! ## A314963.P6414691078013384396

`(A315345(n)+A311613(n))/2`
-/

namespace A314963.P6414691078013384396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315345 n + A311613 n : ℚ) / 2

end

end A314963.P6414691078013384396

namespace A314963

/-- `(A315345(n)+A311613(n))/2` -/
def P6414691078013384396.Spec : Prop :=
  ∀ n, P6414691078013384396.a n = (A314963 n : ℚ)

end A314963

/-! ## A314963.P9781441159738248749

`A311613(n)+A001281(A315345(n)-A311613(n))`
-/

namespace A314963.P9781441159738248749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311613 n + A001281 (A315345 n - A311613 n).toNat

end

end A314963.P9781441159738248749

namespace A314963

/-- `A311613(n)+A001281(A315345(n)-A311613(n))` -/
def P9781441159738248749.Spec : Prop :=
  ∀ n, P9781441159738248749.a n = A314963 n

end A314963

/-! ## A314963.P15811071339783635415

`A005843(A008706(n))-A314092(n)`
-/

namespace A314963.P15811071339783635415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314092 n

end

end A314963.P15811071339783635415

namespace A314963

/-- `A005843(A008706(n))-A314092(n)` -/
def P15811071339783635415.Spec : Prop :=
  ∀ n, P15811071339783635415.a n = A314963 n

end A314963

/-! ## A314963.P13336532543333031866

`A001281(A315345(n)+A311613(n))`
-/

namespace A314963.P13336532543333031866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315345 n + A311613 n).toNat

end

end A314963.P13336532543333031866

namespace A314963

/-- `A001281(A315345(n)+A311613(n))` -/
def P13336532543333031866.Spec : Prop :=
  ∀ n, P13336532543333031866.a n = A314963 n

end A314963

/-! ## A314963.P7512771193228290098

`A001281(A315329(n)+A311635(n))`
-/

namespace A314963.P7512771193228290098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315329 n + A311635 n).toNat

end

end A314963.P7512771193228290098

namespace A314963

/-- `A001281(A315329(n)+A311635(n))` -/
def P7512771193228290098.Spec : Prop :=
  ∀ n, P7512771193228290098.a n = A314963 n

end A314963

/-!
# A314964: Coordination sequence Gal.6.200.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314964, the canonical program `A314964.P2234795532318655867` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314964 has offset 0).

The definition of A314964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314964.P15883526435622834179

`abs(10*n-A314091(n))`
-/

namespace A314964.P15883526435622834179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314091 n|

end

end A314964.P15883526435622834179

namespace A314964

/-- `abs(10*n-A314091(n))` -/
def P15883526435622834179.Spec : Prop :=
  ∀ n, P15883526435622834179.a n = A314964 n

end A314964

/-! ## A314964.P2234795532318655867

`A312113(n)+A004525(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314964

/-- `A312113(n)+A004525(n)` -/
def P2234795532318655867.Spec : Prop :=
  ∀ n, P2234795532318655867.a n = A314964 n

theorem P2234795532318655867.correct : P2234795532318655867.Spec := by
  intro n
  simp only [A314964]

end A314964

/-! ## A314964.P3611129386108870579

`A312113(n)+Δ[A054925(n)]`
-/

namespace A314964.P3611129386108870579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312113 n + (f1 (n + 1) - f1 n)

end

end A314964.P3611129386108870579

namespace A314964

/-- `A312113(n)+Δ[A054925(n)]` -/
def P3611129386108870579.Spec : Prop :=
  ∀ n, P3611129386108870579.a n = A314964 n

end A314964

/-! ## A314964.P10395776384579746684

`A008458(n)+A008574(n)-A314091(n)`
-/

namespace A314964.P10395776384579746684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314091 n)

end

end A314964.P10395776384579746684

namespace A314964

/-- `A008458(n)+A008574(n)-A314091(n)` -/
def P10395776384579746684.Spec : Prop :=
  ∀ n, P10395776384579746684.a n = A314964 n

end A314964

/-! ## A314964.P8244801944342557514

`A004525(n)+A314903(n)-A004396(A004525(n))`
-/

namespace A314964.P8244801944342557514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314903 n - A004396 (A004525 n).toNat)

end

end A314964.P8244801944342557514

namespace A314964

/-- `A004525(n)+A314903(n)-A004396(A004525(n))` -/
def P8244801944342557514.Spec : Prop :=
  ∀ n, P8244801944342557514.a n = A314964 n

end A314964

/-! ## A314964.P11518942930846533422

`A311536(n)+A004396(n)`
-/

namespace A314964.P11518942930846533422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 n + A004396 n

end

end A314964.P11518942930846533422

namespace A314964

/-- `A311536(n)+A004396(n)` -/
def P11518942930846533422.Spec : Prop :=
  ∀ n, P11518942930846533422.a n = A314964 n

theorem P11518942930846533422.correct : P11518942930846533422.Spec := by
  intro n
  simp only [A314964, Nat.add_sub_cancel, A314964.P11518942930846533422.a, A314964.P2234795532318655867.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A311536, A311536.P3424526079161811311.a, A312113, A312113.P6642103030780361102.a, A046978, A046978.P5249761119991592258.a, A301298, A301298.P17841740048100400826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314964

/-! ## A314964.P9491435896859601983

`A311536(n)+A002264(2*n+1)`
-/

namespace A314964.P9491435896859601983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 n + A002264 (2 * n + 1)

end

end A314964.P9491435896859601983

namespace A314964

/-- `A311536(n)+A002264(2*n+1)` -/
def P9491435896859601983.Spec : Prop :=
  ∀ n, P9491435896859601983.a n = A314964 n

theorem P9491435896859601983.correct : P9491435896859601983.Spec := by
  intro n
  simp only [A314964, Nat.add_sub_cancel, A314964.P9491435896859601983.a, A314964.P2234795532318655867.a, A002264, A002264.P5647656940077635922.a, A004525, A004525.P4158271949796742323.a, A311536, A311536.P3424526079161811311.a, A312113, A312113.P6642103030780361102.a, A004396, A004396.P17032557045289780609.a, A046978, A046978.P5249761119991592258.a, A301298, A301298.P17841740048100400826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314964

/-! ## A314964.P8503624674122622158

`A004773(n)+A311536(n)-A004523(n)`
-/

namespace A314964.P8503624674122622158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n + (A311536 n - A004523 n)

end

end A314964.P8503624674122622158

namespace A314964

/-- `A004773(n)+A311536(n)-A004523(n)` -/
def P8503624674122622158.Spec : Prop :=
  ∀ n, P8503624674122622158.a n = A314964 n

end A314964

/-! ## A314964.P3710528589687603073

`A005843(n)-(A004396(A005843(n))-A311536(n))`
-/

namespace A314964.P3710528589687603073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (A004396 (A005843 n).toNat - A311536 n)

end

end A314964.P3710528589687603073

namespace A314964

/-- `A005843(n)-(A004396(A005843(n))-A311536(n))` -/
def P3710528589687603073.Spec : Prop :=
  ∀ n, P3710528589687603073.a n = A314964 n

end A314964

/-! ## A314964.P3549611766370015841

`A004396(n)+A314737(n)-A004396(A004525(n))`
-/

namespace A314964.P3549611766370015841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314737 n - A004396 (A004525 n).toNat)

end

end A314964.P3549611766370015841

namespace A314964

/-- `A004396(n)+A314737(n)-A004396(A004525(n))` -/
def P3549611766370015841.Spec : Prop :=
  ∀ n, P3549611766370015841.a n = A314964 n

end A314964

/-! ## A314964.P9998016770859798535

`A313803(n)-∑[A022003(n)]`
-/

namespace A314964.P9998016770859798535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313803 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314964.P9998016770859798535

namespace A314964

/-- `A313803(n)-∑[A022003(n)]` -/
def P9998016770859798535.Spec : Prop :=
  ∀ n, P9998016770859798535.a n = A314964 n

end A314964

/-! ## A314964.P10649363432876253923

`A313803(n)-A002264(n+1)`
-/

namespace A314964.P10649363432876253923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313803 n - A002264 (n + 1)

end

end A314964.P10649363432876253923

namespace A314964

/-- `A313803(n)-A002264(n+1)` -/
def P10649363432876253923.Spec : Prop :=
  ∀ n, P10649363432876253923.a n = A314964 n

end A314964

/-! ## A314964.P5579317648949929918

`A004396(n)+A313803(n)-n`
-/

namespace A314964.P5579317648949929918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313803 n - (n : ℤ))

end

end A314964.P5579317648949929918

namespace A314964

/-- `A004396(n)+A313803(n)-n` -/
def P5579317648949929918.Spec : Prop :=
  ∀ n, P5579317648949929918.a n = A314964 n

end A314964

/-! ## A314964.P8782778009262038316

`A008576(n)+A313803(n)-A008486(n)`
-/

namespace A314964.P8782778009262038316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313803 n - A008486 n)

end

end A314964.P8782778009262038316

namespace A314964

/-- `A008576(n)+A313803(n)-A008486(n)` -/
def P8782778009262038316.Spec : Prop :=
  ∀ n, P8782778009262038316.a n = A314964 n

end A314964

/-! ## A314964.P5129263187068004009

`n-(A004396(A005843(n))-A313803(n))`
-/

namespace A314964.P5129263187068004009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A004396 (A005843 n).toNat - A313803 n)

end

end A314964.P5129263187068004009

namespace A314964

/-- `n-(A004396(A005843(n))-A313803(n))` -/
def P5129263187068004009.Spec : Prop :=
  ∀ n, P5129263187068004009.a n = A314964 n

end A314964

/-!
# A314965: Coordination sequence Gal.6.488.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314965, there is no canonical definition to state claims against.
-/

/-! ## A314965.P7403828279386910104

`A346993(3*n+1)-A060398(A327879(n))`
-/

namespace A314965.P7403828279386910104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346993 (3 * n + 1) - A060398 (A327879 n).toNat

end

end A314965.P7403828279386910104

/-! ## A314965.P8888731833427835850

`A314947(n)+A051659(A311585(n))`
-/

namespace A314965.P8888731833427835850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314947 n + A051659 (A311585 n).toNat

end

end A314965.P8888731833427835850

/-! ## A314965.P15213793284039630324

`A313897(n)-A037800(A207069(n+1))`
-/

namespace A314965.P15213793284039630324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313897 n - A037800 (A207069 (n + 1)).toNat

end

end A314965.P15213793284039630324

/-! ## A314965.P2222246351418029978

`A167171(3*n+1)-A050361(A204090(n))`
-/

namespace A314965.P2222246351418029978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (3 * n + 1) - A050361 (A204090 n).toNat

end

end A314965.P2222246351418029978

/-!
# A314966: Coordination sequence Gal.6.471.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314966, there is no canonical definition to state claims against.
-/

/-! ## A314966.P6630321118896708984

`A313662(n)-A060510(A319721(n))`
-/

namespace A314966.P6630321118896708984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313662 n - A060510 (A319721 n).toNat

end

end A314966.P6630321118896708984

/-! ## A314966.P4646305200343259364

`A314954(n)+A262900(n!)`
-/

namespace A314966.P4646305200343259364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314954 n + A262900 (Nat.factorial n)

end

end A314966.P4646305200343259364

/-! ## A314966.P4232651022367821543

`A056594(A257561(n))+A008706(n)`
-/

namespace A314966.P4232651022367821543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A257561 n).toNat + A008706 n

end

end A314966.P4232651022367821543

/-! ## A314966.P16989065819516484432

`A314954(n)+A011664(A020077(n))`
-/

namespace A314966.P16989065819516484432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314954 n + A011664 (A020077 n).toNat

end

end A314966.P16989065819516484432

/-! ## A314966.P13144170548767003881

`A277193(n)+A085516(A008574(n))`
-/

namespace A314966.P13144170548767003881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 n + A085516 (A008574 n).toNat

end

end A314966.P13144170548767003881

/-!
# A314967: Coordination sequence Gal.5.200.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314967, there is no canonical definition to state claims against.
-/

/-! ## A314967.P8042731949997866715

`A315346(n)-A001221(A001077(n))`
-/

namespace A314967.P8042731949997866715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315346 n - A001221 (A001077 n).toNat

end

end A314967.P8042731949997866715

/-!
# A314968: Coordination sequence Gal.6.475.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314968, there is no canonical definition to state claims against.
-/

/-! ## A314968.P1904172006775290905

`A098745(A314090(2*n)-n)`
-/

namespace A314968.P1904172006775290905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098745 (A314090 (2 * n) - (n : ℤ)).toNat

end

end A314968.P1904172006775290905

/-! ## A314968.P1065965565162428610

`A313707(n)+A107393(A005061(n))`
-/

namespace A314968.P1065965565162428610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 n + A107393 (A005061 n).toNat

end

end A314968.P1065965565162428610

/-! ## A314968.P5578295538138350850

`A314847(n)+A180094(A021103(n))`
-/

namespace A314968.P5578295538138350850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314847 n + A180094 (A021103 n).toNat

end

end A314968.P5578295538138350850

/-! ## A314968.P16881107709529757943

`or(A156596(A000085(n)), A313149(n))`
-/

namespace A314968.P16881107709529757943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A156596 (A000085 n).toNat) (A313149 n)

end

end A314968.P16881107709529757943

/-! ## A314968.P3708026904882896337

`A001221(A052990(n))+A314920(n)-A001221(n+1)`
-/

namespace A314968.P3708026904882896337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A052990 n).toNat + (A314920 n - A001221 (n + 1))

end

end A314968.P3708026904882896337

/-!
# A314969: Coordination sequence Gal.4.78.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314969, the canonical program `A314969.P17921854442604734378` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314969 has offset 0).

The definition of A314969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314969.P17921854442604734378

`A312140(n)+A004525(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314969

/-- `A312140(n)+A004525(n)` -/
def P17921854442604734378.Spec : Prop :=
  ∀ n, P17921854442604734378.a n = A314969 n

theorem P17921854442604734378.correct : P17921854442604734378.Spec := by
  intro n
  simp only [A314969]

end A314969

/-! ## A314969.P13820149031462015936

`A315259(n)-A046978(n)`
-/

namespace A314969.P13820149031462015936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n - A046978 n

end

end A314969.P13820149031462015936

namespace A314969

/-- `A315259(n)-A046978(n)` -/
def P13820149031462015936.Spec : Prop :=
  ∀ n, P13820149031462015936.a n = A314969 n

end A314969

/-! ## A314969.P11130010558227797331

`xor(A158459(n), A315411(n))`
-/

namespace A314969.P11130010558227797331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158459 n) (A315411 n)

end

end A314969.P11130010558227797331

namespace A314969

/-- `xor(A158459(n), A315411(n))` -/
def P11130010558227797331.Spec : Prop :=
  ∀ n, P11130010558227797331.a n = A314969 n

end A314969

/-! ## A314969.P14005923519166155768

`A312140(n)+Δ[A054925(n)]`
-/

namespace A314969.P14005923519166155768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + (f1 (n + 1) - f1 n)

end

end A314969.P14005923519166155768

namespace A314969

/-- `A312140(n)+Δ[A054925(n)]` -/
def P14005923519166155768.Spec : Prop :=
  ∀ n, P14005923519166155768.a n = A314969 n

end A314969

/-! ## A314969.P2178844019447986555

`A008486(n)+comp[A069909(n)]`
-/

namespace A314969.P2178844019447986555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A314969.P2178844019447986555

namespace A314969

/-- `A008486(n)+comp[A069909(n)]` -/
def P2178844019447986555.Spec : Prop :=
  ∀ n, P2178844019447986555.a n = A314969 n

end A314969

/-! ## A314969.P13359972169440989432

`A312140(n)+n-∑[A021913(n)]`
-/

namespace A314969.P13359972169440989432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A314969.P13359972169440989432

namespace A314969

/-- `A312140(n)+n-∑[A021913(n)]` -/
def P13359972169440989432.Spec : Prop :=
  ∀ n, P13359972169440989432.a n = A314969 n

end A314969

/-! ## A314969.P5610922904005931247

`A312140(n)+n-Δ[A011848(n)]`
-/

namespace A314969.P5610922904005931247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314969.P5610922904005931247

namespace A314969

/-- `A312140(n)+n-Δ[A011848(n)]` -/
def P5610922904005931247.Spec : Prop :=
  ∀ n, P5610922904005931247.a n = A314969 n

end A314969

/-! ## A314969.P18337294159669478534

`A312205(n)+A004525(A004525(n))`
-/

namespace A314969.P18337294159669478534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312205 n + A004525 (A004525 n).toNat

end

end A314969.P18337294159669478534

namespace A314969

/-- `A312205(n)+A004525(A004525(n))` -/
def P18337294159669478534.Spec : Prop :=
  ∀ n, P18337294159669478534.a n = A314969 n

end A314969

/-! ## A314969.P12785712461461571776

`A314829(n)+A201629(A004525(n))`
-/

namespace A314969.P12785712461461571776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + A201629 (A004525 n).toNat

end

end A314969.P12785712461461571776

namespace A314969

/-- `A314829(n)+A201629(A004525(n))` -/
def P12785712461461571776.Spec : Prop :=
  ∀ n, P12785712461461571776.a n = A314969 n

end A314969

/-! ## A314969.P3766846333194027819

`A311501(n)+A004525(A004525(n)+n)`
-/

namespace A314969.P3766846333194027819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311501 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A314969.P3766846333194027819

namespace A314969

/-- `A311501(n)+A004525(A004525(n)+n)` -/
def P3766846333194027819.Spec : Prop :=
  ∀ n, P3766846333194027819.a n = A314969 n

end A314969

/-! ## A314969.P13380373207984876211

`A008706(n)-A046978(n-A046978(n))`
-/

namespace A314969.P13380373207984876211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A046978 ((n : ℤ) - A046978 n).toNat

end

end A314969.P13380373207984876211

namespace A314969

/-- `A008706(n)-A046978(n-A046978(n))` -/
def P13380373207984876211.Spec : Prop :=
  ∀ n, P13380373207984876211.a n = A314969 n

end A314969

/-! ## A314969.P17836423574070353272

`A004525(n)+A314896(n)-A004525(A004525(n))`
-/

namespace A314969.P17836423574070353272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314896 n - A004525 (A004525 n).toNat)

end

end A314969.P17836423574070353272

namespace A314969

/-- `A004525(n)+A314896(n)-A004525(A004525(n))` -/
def P17836423574070353272.Spec : Prop :=
  ∀ n, P17836423574070353272.a n = A314969 n

theorem P17836423574070353272.correct : P17836423574070353272.Spec := by
  intro n
  simp only [A314969, Nat.add_sub_cancel, A314969.P17836423574070353272.a, A314969.P17921854442604734378.a, A004525, A004525.P4158271949796742323.a, A312140, A312140.P16557486338365459525.a, A314896, A314896.P16109661729483114242.a, A311843, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314969

/-! ## A314969.P7679492697157617195

`abs(A008592(n)-A314090(n))`
-/

namespace A314969.P7679492697157617195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314090 n|

end

end A314969.P7679492697157617195

namespace A314969

/-- `abs(A008592(n)-A314090(n))` -/
def P7679492697157617195.Spec : Prop :=
  ∀ n, P7679492697157617195.a n = A314969 n

end A314969

/-! ## A314969.P10992527134166081961

`floor(A010015(n)/A314090(n))`
-/

namespace A314969.P10992527134166081961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A314090 n : ℚ)⌋

end

end A314969.P10992527134166081961

namespace A314969

/-- `floor(A010015(n)/A314090(n))` -/
def P10992527134166081961.Spec : Prop :=
  ∀ n, P10992527134166081961.a n = A314969 n

end A314969

/-! ## A314969.P3485874482729013080

`A008458(n)+A008574(n)-A314090(n)`
-/

namespace A314969.P3485874482729013080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314090 n)

end

end A314969.P3485874482729013080

namespace A314969

/-- `A008458(n)+A008574(n)-A314090(n)` -/
def P3485874482729013080.Spec : Prop :=
  ∀ n, P3485874482729013080.a n = A314969 n

end A314969

/-! ## A314969.P10966501851478934345

`A312682(n)+A046978(A046978(n)+n)`
-/

namespace A314969.P10966501851478934345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312682 n + A046978 (A046978 n + (n : ℤ)).toNat

end

end A314969.P10966501851478934345

namespace A314969

/-- `A312682(n)+A046978(A046978(n)+n)` -/
def P10966501851478934345.Spec : Prop :=
  ∀ n, P10966501851478934345.a n = A314969 n

end A314969

/-! ## A314969.P4754429668515278380

`A310419(n)-A075553(A075553(n)+n)`
-/

namespace A314969.P4754429668515278380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310419 n - A075553 (A075553 n + (n : ℤ)).toNat

end

end A314969.P4754429668515278380

namespace A314969

/-- `A310419(n)-A075553(A075553(n)+n)` -/
def P4754429668515278380.Spec : Prop :=
  ∀ n, P4754429668515278380.a n = A314969 n

end A314969

/-! ## A314969.P2245228643353691310

`A313258(n)+A101455(n)`
-/

namespace A314969.P2245228643353691310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313258 n + A101455 n

end

end A314969.P2245228643353691310

namespace A314969

/-- `A313258(n)+A101455(n)` -/
def P2245228643353691310.Spec : Prop :=
  ∀ n, P2245228643353691310.a n = A314969 n

end A314969

/-! ## A314969.P1268989724014943466

`A313793(n)-A004525(n-A004525(n))`
-/

namespace A314969.P1268989724014943466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313793 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A314969.P1268989724014943466

namespace A314969

/-- `A313793(n)-A004525(n-A004525(n))` -/
def P1268989724014943466.Spec : Prop :=
  ∀ n, P1268989724014943466.a n = A314969 n

end A314969

/-! ## A314969.P5310666588246122674

`A313926(n)-∑[A021913(n)]`
-/

namespace A314969.P5310666588246122674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313926 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314969.P5310666588246122674

namespace A314969

/-- `A313926(n)-∑[A021913(n)]` -/
def P5310666588246122674.Spec : Prop :=
  ∀ n, P5310666588246122674.a n = A314969 n

end A314969

/-!
# A314970: Coordination sequence Gal.6.341.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314970, the canonical program `A314970.P16762046121003014077` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314970 has offset 0).

The definition of A314970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314970.P9647329650407135677

`A312144(n)+A004525(n)`
-/

namespace A314970.P9647329650407135677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + A004525 n

end

end A314970.P9647329650407135677

namespace A314970

/-- `A312144(n)+A004525(n)` -/
def P9647329650407135677.Spec : Prop :=
  ∀ n, P9647329650407135677.a n = A314970 n

end A314970

/-! ## A314970.P13407118800239851350

`A313262(n)+A101455(n)`
-/

namespace A314970.P13407118800239851350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313262 n + A101455 n

end

end A314970.P13407118800239851350

namespace A314970

/-- `A313262(n)+A101455(n)` -/
def P13407118800239851350.Spec : Prop :=
  ∀ n, P13407118800239851350.a n = A314970 n

end A314970

/-! ## A314970.P8881166057369215060

`abs(A008592(n)-A314089(n))`
-/

namespace A314970.P8881166057369215060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314089 n|

end

end A314970.P8881166057369215060

namespace A314970

/-- `abs(A008592(n)-A314089(n))` -/
def P8881166057369215060.Spec : Prop :=
  ∀ n, P8881166057369215060.a n = A314970 n

end A314970

/-! ## A314970.P4946751596104541202

`A312144(n)+Δ[A054925(n)]`
-/

namespace A314970.P4946751596104541202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + (f1 (n + 1) - f1 n)

end

end A314970.P4946751596104541202

namespace A314970

/-- `A312144(n)+Δ[A054925(n)]` -/
def P4946751596104541202.Spec : Prop :=
  ∀ n, P4946751596104541202.a n = A314970 n

end A314970

/-! ## A314970.P5990207516006543565

`A312144(n)+n-∑[A021913(n)]`
-/

namespace A314970.P5990207516006543565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A314970.P5990207516006543565

namespace A314970

/-- `A312144(n)+n-∑[A021913(n)]` -/
def P5990207516006543565.Spec : Prop :=
  ∀ n, P5990207516006543565.a n = A314970 n

end A314970

/-! ## A314970.P8326091786832294807

`A312144(n)+n-Δ[A011848(n)]`
-/

namespace A314970.P8326091786832294807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314970.P8326091786832294807

namespace A314970

/-- `A312144(n)+n-Δ[A011848(n)]` -/
def P8326091786832294807.Spec : Prop :=
  ∀ n, P8326091786832294807.a n = A314970 n

end A314970

/-! ## A314970.P12827215383236114206

`A008458(n)+A008574(n)-A314089(n)`
-/

namespace A314970.P12827215383236114206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314089 n)

end

end A314970.P12827215383236114206

namespace A314970

/-- `A008458(n)+A008574(n)-A314089(n)` -/
def P12827215383236114206.Spec : Prop :=
  ∀ n, P12827215383236114206.a n = A314970 n

end A314970

/-! ## A314970.P16762046121003014077

`A004525(n)+A314903(n)-A004525(A004396(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314970

/-- `A004525(n)+A314903(n)-A004525(A004396(n))` -/
def P16762046121003014077.Spec : Prop :=
  ∀ n, P16762046121003014077.a n = A314970 n

theorem P16762046121003014077.correct : P16762046121003014077.Spec := by
  intro n
  simp only [A314970]

end A314970

/-! ## A314970.P16251545369085220570

`A004396(n)+A314737(n)-A004525(A004396(n))`
-/

namespace A314970.P16251545369085220570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314737 n - A004525 (A004396 n).toNat)

end

end A314970.P16251545369085220570

namespace A314970

/-- `A004396(n)+A314737(n)-A004525(A004396(n))` -/
def P16251545369085220570.Spec : Prop :=
  ∀ n, P16251545369085220570.a n = A314970 n

end A314970

/-! ## A314970.P951338423829367223

`A313930(n)-∑[A021913(n)]`
-/

namespace A314970.P951338423829367223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313930 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314970.P951338423829367223

namespace A314970

/-- `A313930(n)-∑[A021913(n)]` -/
def P951338423829367223.Spec : Prop :=
  ∀ n, P951338423829367223.a n = A314970 n

end A314970

/-! ## A314970.P10403365945958256583

`A313930(n)-Δ[A011848(n)]`
-/

namespace A314970.P10403365945958256583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313930 n - (f1 (n + 1) - f1 n)

end

end A314970.P10403365945958256583

namespace A314970

/-- `A313930(n)-Δ[A011848(n)]` -/
def P10403365945958256583.Spec : Prop :=
  ∀ n, P10403365945958256583.a n = A314970 n

end A314970

/-! ## A314970.P9515755770966689852

`A004525(n)+A313930(n)-n`
-/

namespace A314970.P9515755770966689852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313930 n - (n : ℤ))

end

end A314970.P9515755770966689852

namespace A314970

/-- `A004525(n)+A313930(n)-n` -/
def P9515755770966689852.Spec : Prop :=
  ∀ n, P9515755770966689852.a n = A314970 n

end A314970

/-! ## A314970.P9331203059600298600

`Δ[A054925(n)]+A313930(n)-n`
-/

namespace A314970.P9331203059600298600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313930 n - (n : ℤ))

end

end A314970.P9331203059600298600

namespace A314970

/-- `Δ[A054925(n)]+A313930(n)-n` -/
def P9331203059600298600.Spec : Prop :=
  ∀ n, P9331203059600298600.a n = A314970 n

end A314970

/-!
# A314971: Coordination sequence Gal.5.138.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314971, the canonical program `A314971.P14452924613501510343` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314971 has offset 0).

The definition of A314971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314971.P13862554137036136110

`A311548(n)+A004396(n)`
-/

namespace A314971.P13862554137036136110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311548 n + A004396 n

end

end A314971.P13862554137036136110

namespace A314971

/-- `A311548(n)+A004396(n)` -/
def P13862554137036136110.Spec : Prop :=
  ∀ n, P13862554137036136110.a n = A314971 n

theorem P13862554137036136110.correct : P13862554137036136110.Spec := by
  intro n
  simp only [A314971, Nat.add_sub_cancel, A314971.P13862554137036136110.a, A314971.P14452924613501510343.a, A004396, A004396.P17032557045289780609.a, A008592, A008592.P4981059802862696142.a, A311548, A311548.P8775752580352239183.a, A314088, A314088.P4296014599447221606.a, A042965, A042965.P10256174339092268817.a, A313683, A313683.P3336220210830735973.a, A314828, A314828.P12558538320936083635.a, A312932, A312932.P265636690513476108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314971

/-! ## A314971.P14452924613501510343

`abs(A008592(n)-A314088(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A314971

/-- `abs(A008592(n)-A314088(n))` -/
def P14452924613501510343.Spec : Prop :=
  ∀ n, P14452924613501510343.a n = A314971 n

theorem P14452924613501510343.correct : P14452924613501510343.Spec := by
  intro n
  simp only [A314971]

end A314971

/-! ## A314971.P4473099314162325647

`2*A008706(n)-A314088(n)`
-/

namespace A314971.P4473099314162325647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314088 n

end

end A314971.P4473099314162325647

namespace A314971

/-- `2*A008706(n)-A314088(n)` -/
def P4473099314162325647.Spec : Prop :=
  ∀ n, P4473099314162325647.a n = A314971 n

end A314971

/-! ## A314971.P1523079668821149992

`A311548(n)+A002264(2*n+1)`
-/

namespace A314971.P1523079668821149992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311548 n + A002264 (2 * n + 1)

end

end A314971.P1523079668821149992

namespace A314971

/-- `A311548(n)+A002264(2*n+1)` -/
def P1523079668821149992.Spec : Prop :=
  ∀ n, P1523079668821149992.a n = A314971 n

theorem P1523079668821149992.correct : P1523079668821149992.Spec := by
  intro n
  simp only [A314971, Nat.add_sub_cancel, A314971.P1523079668821149992.a, A314971.P14452924613501510343.a, A002264, A002264.P5647656940077635922.a, A008592, A008592.P4981059802862696142.a, A311548, A311548.P8775752580352239183.a, A314088, A314088.P4296014599447221606.a, A004396, A004396.P17032557045289780609.a, A042965, A042965.P10256174339092268817.a, A313683, A313683.P3336220210830735973.a, A314828, A314828.P12558538320936083635.a, A312932, A312932.P265636690513476108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314971

/-! ## A314971.P10120064868838833164

`A311548(n)+A004525(A004773(n))`
-/

namespace A314971.P10120064868838833164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311548 n + A004525 (A004773 n).toNat

end

end A314971.P10120064868838833164

namespace A314971

/-- `A311548(n)+A004525(A004773(n))` -/
def P10120064868838833164.Spec : Prop :=
  ∀ n, P10120064868838833164.a n = A314971 n

end A314971

/-! ## A314971.P16522913695736592037

`A312160(n)+A004396(A004396(n))`
-/

namespace A314971.P16522913695736592037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n + A004396 (A004396 n).toNat

end

end A314971.P16522913695736592037

namespace A314971

/-- `A312160(n)+A004396(A004396(n))` -/
def P16522913695736592037.Spec : Prop :=
  ∀ n, P16522913695736592037.a n = A314971 n

end A314971

/-! ## A314971.P12663756557669098870

`A008458(n)+A008574(n)-A314088(n)`
-/

namespace A314971.P12663756557669098870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314088 n)

end

end A314971.P12663756557669098870

namespace A314971

/-- `A008458(n)+A008574(n)-A314088(n)` -/
def P12663756557669098870.Spec : Prop :=
  ∀ n, P12663756557669098870.a n = A314971 n

end A314971

/-! ## A314971.P13429710475869459167

`A313799(n)-A004396(n-A004396(n))`
-/

namespace A314971.P13429710475869459167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A314971.P13429710475869459167

namespace A314971

/-- `A313799(n)-A004396(n-A004396(n))` -/
def P13429710475869459167.Spec : Prop :=
  ∀ n, P13429710475869459167.a n = A314971 n

end A314971

/-! ## A314971.P17482263204262121910

`A004396(A311633(n))+2*n`
-/

namespace A314971.P17482263204262121910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311633 n).toNat + (2 * n : ℤ)

end

end A314971.P17482263204262121910

namespace A314971

/-- `A004396(A311633(n))+2*n` -/
def P17482263204262121910.Spec : Prop :=
  ∀ n, P17482263204262121910.a n = A314971 n

end A314971

/-! ## A314971.P4575280629397827413

`A005843(n)+A004396(A311633(n))`
-/

namespace A314971.P4575280629397827413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A311633 n).toNat

end

end A314971.P4575280629397827413

namespace A314971

/-- `A005843(n)+A004396(A311633(n))` -/
def P4575280629397827413.Spec : Prop :=
  ∀ n, P4575280629397827413.a n = A314971 n

end A314971

/-! ## A314971.P8070617703224471190

`A004396(A311633(n)+A008486(n))`
-/

namespace A314971.P8070617703224471190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311633 n + A008486 n).toNat

end

end A314971.P8070617703224471190

namespace A314971

/-- `A004396(A311633(n)+A008486(n))` -/
def P8070617703224471190.Spec : Prop :=
  ∀ n, P8070617703224471190.a n = A314971 n

end A314971

/-!
# A314972: Coordination sequence Gal.5.139.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314972, the canonical program `A314972.P7314181398495225486` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314972 has offset 0).

The definition of A314972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314972.P7314181398495225486

`abs(A008592(n)-A314087(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314972

/-- `abs(A008592(n)-A314087(n))` -/
def P7314181398495225486.Spec : Prop :=
  ∀ n, P7314181398495225486.a n = A314972 n

theorem P7314181398495225486.correct : P7314181398495225486.Spec := by
  intro n
  simp only [A314972]

end A314972

/-! ## A314972.P5167992083265243649

`2*A008706(n)-A314087(n)`
-/

namespace A314972.P5167992083265243649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314087 n

end

end A314972.P5167992083265243649

namespace A314972

/-- `2*A008706(n)-A314087(n)` -/
def P5167992083265243649.Spec : Prop :=
  ∀ n, P5167992083265243649.a n = A314972 n

end A314972

/-! ## A314972.P13854402787476403943

`A008458(n)+A008574(n)-A314087(n)`
-/

namespace A314972.P13854402787476403943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314087 n)

end

end A314972.P13854402787476403943

namespace A314972

/-- `A008458(n)+A008574(n)-A314087(n)` -/
def P13854402787476403943.Spec : Prop :=
  ∀ n, P13854402787476403943.a n = A314972 n

end A314972

/-! ## A314972.P9237958910309420524

`A315275(n)-A330025(n)`
-/

namespace A314972.P9237958910309420524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315275 n - A330025 n

end

end A314972.P9237958910309420524

namespace A314972

/-- `A315275(n)-A330025(n)` -/
def P9237958910309420524.Spec : Prop :=
  ∀ n, P9237958910309420524.a n = A314972 n

theorem P9237958910309420524.correct : P9237958910309420524.Spec := by
  intro n
  simp only [A314972, Nat.add_sub_cancel, A314972.P9237958910309420524.a, A314972.P7314181398495225486.a, A008592, A008592.P4981059802862696142.a, A314087, A314087.P6203034715714524951.a, A315275, A315275.P16320743547030048239.a, A330025, A330025.P8729701065839544525.a, A313692, A313692.P7381687034045997065.a, A047448, A047448.P12851231882716690150.a, A312892, A312892.P8731984914629007574.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A057354, A057354.P3759514669842217521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314972

/-! ## A314972.P8142211793001207988

`A313782(n)-A330025(n-A330025(n))`
-/

namespace A314972.P8142211793001207988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313782 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A314972.P8142211793001207988

namespace A314972

/-- `A313782(n)-A330025(n-A330025(n))` -/
def P8142211793001207988.Spec : Prop :=
  ∀ n, P8142211793001207988.a n = A314972 n

end A314972

/-! ## A314972.P18094142152858763950

`A315468(n)-A253262(n)`
-/

namespace A314972.P18094142152858763950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315468 n - A253262 n

end

end A314972.P18094142152858763950

namespace A314972

/-- `A315468(n)-A253262(n)` -/
def P18094142152858763950.Spec : Prop :=
  ∀ n, P18094142152858763950.a n = A314972 n

theorem P18094142152858763950.correct : P18094142152858763950.Spec := by
  intro n
  simp only [A314972, Nat.add_sub_cancel, A314972.P18094142152858763950.a, A314972.P7314181398495225486.a, A008592, A008592.P4981059802862696142.a, A253262, A253262.P6184646248567078382.a, A314087, A314087.P6203034715714524951.a, A315468, A315468.P18044790226856226141.a, A313692, A313692.P7381687034045997065.a, A330025, A330025.P8729701065839544525.a, A047448, A047448.P12851231882716690150.a, A312892, A312892.P8731984914629007574.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A057354, A057354.P3759514669842217521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314972

/-! ## A314972.P13884897241857951312

`2*n+A004396(A311634(n))`
-/

namespace A314972.P13884897241857951312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A311634 n).toNat

end

end A314972.P13884897241857951312

namespace A314972

/-- `2*n+A004396(A311634(n))` -/
def P13884897241857951312.Spec : Prop :=
  ∀ n, P13884897241857951312.a n = A314972 n

end A314972

/-! ## A314972.P8446033446356734984

`A008585(n)-(n-A004396(A311634(n)))`
-/

namespace A314972.P8446033446356734984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A311634 n).toNat)

end

end A314972.P8446033446356734984

namespace A314972

/-- `A008585(n)-(n-A004396(A311634(n)))` -/
def P8446033446356734984.Spec : Prop :=
  ∀ n, P8446033446356734984.a n = A314972 n

end A314972

/-! ## A314972.P13797740813485124957

`A004396(A311634(n)+A008486(n))`
-/

namespace A314972.P13797740813485124957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311634 n + A008486 n).toNat

end

end A314972.P13797740813485124957

namespace A314972

/-- `A004396(A311634(n)+A008486(n))` -/
def P13797740813485124957.Spec : Prop :=
  ∀ n, P13797740813485124957.a n = A314972 n

end A314972

/-! ## A314972.P16035582026950414725

`A004396(A311634(n)+A008585(n))`
-/

namespace A314972.P16035582026950414725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311634 n + A008585 n).toNat

end

end A314972.P16035582026950414725

namespace A314972

/-- `A004396(A311634(n)+A008585(n))` -/
def P16035582026950414725.Spec : Prop :=
  ∀ n, P16035582026950414725.a n = A314972 n

end A314972

/-! ## A314972.P17635604137477636236

`A004396(2*A313801(n))-A005843(n)`
-/

namespace A314972.P17635604137477636236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313801 n).toNat - A005843 n

end

end A314972.P17635604137477636236

namespace A314972

/-- `A004396(2*A313801(n))-A005843(n)` -/
def P17635604137477636236.Spec : Prop :=
  ∀ n, P17635604137477636236.a n = A314972 n

end A314972

/-!
# A314973: Coordination sequence Gal.6.342.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314973, the canonical program `A314973.P7567450070349950428` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314973 has offset 0).

The definition of A314973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314973.P1091027251899952759

`abs(A008592(n)-A314086(n))`
-/

namespace A314973.P1091027251899952759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314086 n|

end

end A314973.P1091027251899952759

namespace A314973

/-- `abs(A008592(n)-A314086(n))` -/
def P1091027251899952759.Spec : Prop :=
  ∀ n, P1091027251899952759.a n = A314973 n

end A314973

/-! ## A314973.P9701940974442980792

`2*A008706(n)-A314086(n)`
-/

namespace A314973.P9701940974442980792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314086 n

end

end A314973.P9701940974442980792

namespace A314973

/-- `2*A008706(n)-A314086(n)` -/
def P9701940974442980792.Spec : Prop :=
  ∀ n, P9701940974442980792.a n = A314973 n

end A314973

/-! ## A314973.P16052294459151655902

`A008458(n)+A008574(n)-A314086(n)`
-/

namespace A314973.P16052294459151655902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314086 n)

end

end A314973.P16052294459151655902

namespace A314973

/-- `A008458(n)+A008574(n)-A314086(n)` -/
def P16052294459151655902.Spec : Prop :=
  ∀ n, P16052294459151655902.a n = A314973 n

end A314973

/-! ## A314973.P11404771702061099318

`2*n+A004396(A311635(n))`
-/

namespace A314973.P11404771702061099318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A311635 n).toNat

end

end A314973.P11404771702061099318

namespace A314973

/-- `2*n+A004396(A311635(n))` -/
def P11404771702061099318.Spec : Prop :=
  ∀ n, P11404771702061099318.a n = A314973 n

end A314973

/-! ## A314973.P5981118163518212996

`A008585(n)-(n-A004396(A311635(n)))`
-/

namespace A314973.P5981118163518212996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A311635 n).toNat)

end

end A314973.P5981118163518212996

namespace A314973

/-- `A008585(n)-(n-A004396(A311635(n)))` -/
def P5981118163518212996.Spec : Prop :=
  ∀ n, P5981118163518212996.a n = A314973 n

end A314973

/-! ## A314973.P16049309175519328361

`A005843(A008706(n))-A314086(n)`
-/

namespace A314973.P16049309175519328361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314086 n

end

end A314973.P16049309175519328361

namespace A314973

/-- `A005843(A008706(n))-A314086(n)` -/
def P16049309175519328361.Spec : Prop :=
  ∀ n, P16049309175519328361.a n = A314973 n

end A314973

/-! ## A314973.P7567450070349950428

`A042965(A313802(n)+1)-2*n`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A314973

/-- `A042965(A313802(n)+1)-2*n` -/
def P7567450070349950428.Spec : Prop :=
  ∀ n, P7567450070349950428.a n = A314973 n

theorem P7567450070349950428.correct : P7567450070349950428.Spec := by
  intro n
  simp only [A314973]

end A314973

/-! ## A314973.P2025159301260254478

`A004396(A311635(n)+A008486(n))`
-/

namespace A314973.P2025159301260254478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311635 n + A008486 n).toNat

end

end A314973.P2025159301260254478

namespace A314973

/-- `A004396(A311635(n)+A008486(n))` -/
def P2025159301260254478.Spec : Prop :=
  ∀ n, P2025159301260254478.a n = A314973 n

end A314973

/-! ## A314973.P5150970767972175067

`A004396(A311635(n)+A008585(n))`
-/

namespace A314973.P5150970767972175067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311635 n + A008585 n).toNat

end

end A314973.P5150970767972175067

namespace A314973

/-- `A004396(A311635(n)+A008585(n))` -/
def P5150970767972175067.Spec : Prop :=
  ∀ n, P5150970767972175067.a n = A314973 n

end A314973

/-! ## A314973.P4945509649734937676

`A004396(2*A313802(n))-A005843(n)`
-/

namespace A314973.P4945509649734937676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313802 n).toNat - A005843 n

end

end A314973.P4945509649734937676

namespace A314973

/-- `A004396(2*A313802(n))-A005843(n)` -/
def P4945509649734937676.Spec : Prop :=
  ∀ n, P4945509649734937676.a n = A314973 n

end A314973

/-!
# A314974: Coordination sequence Gal.6.343.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314974, the canonical program `A314974.P14920294554282777166` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314974 has offset 0).

The definition of A314974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314974.P4885773344864679098

`A311549(n)+round(2*n/3)`
-/

namespace A314974.P4885773344864679098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311549 n + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A314974.P4885773344864679098

namespace A314974

/-- `A311549(n)+round(2*n/3)` -/
def P4885773344864679098.Spec : Prop :=
  ∀ n, P4885773344864679098.a n = A314974 n

end A314974

/-! ## A314974.P14146586038337482891

`A312152(n)+A004525(n)`
-/

namespace A314974.P14146586038337482891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312152 n + A004525 n

end

end A314974.P14146586038337482891

namespace A314974

/-- `A312152(n)+A004525(n)` -/
def P14146586038337482891.Spec : Prop :=
  ∀ n, P14146586038337482891.a n = A314974 n

theorem P14146586038337482891.correct : P14146586038337482891.Spec := by
  intro n
  simp only [A314974, Nat.add_sub_cancel, A314974.P14146586038337482891.a, A314974.P14920294554282777166.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A312152, A312152.P14206861352301570908.a, A314742, A314742.P12640656443291314387.a, A311332, A311332.P5397505913384543494.a, A311549, A311549.P16203180800236196570.a, A046978, A046978.P5249761119991592258.a, A314688, A314688.P9311445367984874380.a, A047424, A047424.P1136796426780019943.a, A311257, A311257.P2429482415252635039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314974

/-! ## A314974.P1352042162666780880

`abs(A008592(n)-A314085(n))`
-/

namespace A314974.P1352042162666780880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314085 n|

end

end A314974.P1352042162666780880

namespace A314974

/-- `abs(A008592(n)-A314085(n))` -/
def P1352042162666780880.Spec : Prop :=
  ∀ n, P1352042162666780880.a n = A314974 n

end A314974

/-! ## A314974.P15912684985872198366

`A312152(n)+Δ[A054925(n)]`
-/

namespace A314974.P15912684985872198366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312152 n + (f1 (n + 1) - f1 n)

end

end A314974.P15912684985872198366

namespace A314974

/-- `A312152(n)+Δ[A054925(n)]` -/
def P15912684985872198366.Spec : Prop :=
  ∀ n, P15912684985872198366.a n = A314974 n

end A314974

/-! ## A314974.P5686660244140829609

`2*A008706(n)-A314085(n)`
-/

namespace A314974.P5686660244140829609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314085 n

end

end A314974.P5686660244140829609

namespace A314974

/-- `2*A008706(n)-A314085(n)` -/
def P5686660244140829609.Spec : Prop :=
  ∀ n, P5686660244140829609.a n = A314974 n

end A314974

/-! ## A314974.P16624927753090012740

`A312206(n)+A004525(A004396(n))`
-/

namespace A314974.P16624927753090012740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312206 n + A004525 (A004396 n).toNat

end

end A314974.P16624927753090012740

namespace A314974

/-- `A312206(n)+A004525(A004396(n))` -/
def P16624927753090012740.Spec : Prop :=
  ∀ n, P16624927753090012740.a n = A314974 n

end A314974

/-! ## A314974.P18335191663043495649

`A008458(n)+A008574(n)-A314085(n)`
-/

namespace A314974.P18335191663043495649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314085 n)

end

end A314974.P18335191663043495649

namespace A314974

/-- `A008458(n)+A008574(n)-A314085(n)` -/
def P18335191663043495649.Spec : Prop :=
  ∀ n, P18335191663043495649.a n = A314974 n

end A314974

/-! ## A314974.P14920294554282777166

`A004396(n)+A314742(n)-A004525(A004396(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A314974

/-- `A004396(n)+A314742(n)-A004525(A004396(n))` -/
def P14920294554282777166.Spec : Prop :=
  ∀ n, P14920294554282777166.a n = A314974 n

theorem P14920294554282777166.correct : P14920294554282777166.Spec := by
  intro n
  simp only [A314974]

end A314974

/-! ## A314974.P12009578079244558930

`A004773(A311536(n))-A004523(n)`
-/

namespace A314974.P12009578079244558930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A311536 n).toNat - A004523 n

end

end A314974.P12009578079244558930

namespace A314974

/-- `A004773(A311536(n))-A004523(n)` -/
def P12009578079244558930.Spec : Prop :=
  ∀ n, P12009578079244558930.a n = A314974 n

end A314974

/-! ## A314974.P15614911228270705291

`A005843(A008706(n))-A314085(n)`
-/

namespace A314974.P15614911228270705291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314085 n

end

end A314974.P15614911228270705291

namespace A314974

/-- `A005843(A008706(n))-A314085(n)` -/
def P15614911228270705291.Spec : Prop :=
  ∀ n, P15614911228270705291.a n = A314974 n

end A314974

/-! ## A314974.P16033785479764042032

`A004396(2*A311536(n)-n)`
-/

namespace A314974.P16033785479764042032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A311536 n - (n : ℤ)).toNat

end

end A314974.P16033785479764042032

namespace A314974

/-- `A004396(2*A311536(n)-n)` -/
def P16033785479764042032.Spec : Prop :=
  ∀ n, P16033785479764042032.a n = A314974 n

end A314974

/-! ## A314974.P14932722304172007334

`A004396(A311536(n)+A311536(n)-n)`
-/

namespace A314974.P14932722304172007334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311536 n + (A311536 n - (n : ℤ))).toNat

end

end A314974.P14932722304172007334

namespace A314974

/-- `A004396(A311536(n)+A311536(n)-n)` -/
def P14932722304172007334.Spec : Prop :=
  ∀ n, P14932722304172007334.a n = A314974 n

end A314974

/-! ## A314974.P13334247232743375615

`A004396(A311536(n)-(n-A311536(n)))`
-/

namespace A314974.P13334247232743375615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311536 n - ((n : ℤ) - A311536 n)).toNat

end

end A314974.P13334247232743375615

namespace A314974

/-- `A004396(A311536(n)-(n-A311536(n)))` -/
def P13334247232743375615.Spec : Prop :=
  ∀ n, P13334247232743375615.a n = A314974 n

end A314974

/-! ## A314974.P8057862132549352148

`A004523(2*A311536(n))-A004523(n)`
-/

namespace A314974.P8057862132549352148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (2 * A311536 n).toNat - A004523 n

end

end A314974.P8057862132549352148

namespace A314974

/-- `A004523(2*A311536(n))-A004523(n)` -/
def P8057862132549352148.Spec : Prop :=
  ∀ n, P8057862132549352148.a n = A314974 n

end A314974

/-! ## A314974.P9728955793678806761

`A004396(2*A313803(n))-A005843(n)`
-/

namespace A314974.P9728955793678806761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313803 n).toNat - A005843 n

end

end A314974.P9728955793678806761

namespace A314974

/-- `A004396(2*A313803(n))-A005843(n)` -/
def P9728955793678806761.Spec : Prop :=
  ∀ n, P9728955793678806761.a n = A314974 n

end A314974

/-!
# A314977: Coordination sequence Gal.6.563.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314977, there is no canonical definition to state claims against.
-/

/-! ## A314977.P17094148975553672412

`A314988(n)-A101688(A174506(n))`
-/

namespace A314977.P17094148975553672412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314988 n - A101688 (A174506 n).toNat

end

end A314977.P17094148975553672412

/-!
# A314978: Coordination sequence Gal.6.539.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314978, there is no canonical definition to state claims against.
-/

/-! ## A314978.P9455991274638576841

`A004525(n)+A171178(A022144(n))-A008486(n)`
-/

namespace A314978.P9455991274638576841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A171178 (A022144 n).toNat - A008486 n)

end

end A314978.P9455991274638576841

/-!
# A314979: Coordination sequence Gal.6.600.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314979, there is no canonical definition to state claims against.
-/

/-! ## A314979.P12909119971201079464

`A313763(n)-A107740(A282027(n+1))`
-/

namespace A314979.P12909119971201079464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313763 n - A107740 (A282027 (n + 1)).toNat

end

end A314979.P12909119971201079464

/-! ## A314979.P15199364045687090283

`or(A000035(A020962(n+1)), A314939(n))`
-/

namespace A314979.P15199364045687090283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A020962 (n + 1)).toNat) (A314939 n)

end

end A314979.P15199364045687090283

/-! ## A314979.P15423294090644771095

`A313720(n)+A244895(A200440(n))`
-/

namespace A314979.P15423294090644771095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n + A244895 (A200440 n).toNat

end

end A314979.P15423294090644771095

/-! ## A314979.P1549236141925894716

`or(A020639(A089126(n)), A311383(n))`
-/

namespace A314979.P1549236141925894716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A089126 n).toNat) (A311383 n)

end

end A314979.P1549236141925894716

/-! ## A314979.P7986504871099919022

`or(A001222(A266382(n)), A314930(n))`
-/

namespace A314979.P7986504871099919022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A266382 n).toNat) (A314930 n)

end

end A314979.P7986504871099919022

/-!
# A314980: Coordination sequence Gal.6.561.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314980, there is no canonical definition to state claims against.
-/

/-! ## A314980.P17050566665180958850

`A301697(n)-A051903(A045499(n))`
-/

namespace A314980.P17050566665180958850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A051903 (A045499 n).toNat

end

end A314980.P17050566665180958850

/-! ## A314980.P15332033614716098406

`A315563(n)-A001222(A147928(n+1))`
-/

namespace A314980.P15332033614716098406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315563 n - A001222 (A147928 (n + 1)).toNat

end

end A314980.P15332033614716098406

/-! ## A314980.P16867440361017102071

`A284621(n+1)-A055396(A158835(3*(n+1)))`
-/

namespace A314980.P16867440361017102071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284621 (n + 1) - A055396 (A158835 (3 * (n + 1))).toNat

end

end A314980.P16867440361017102071

/-!
# A314981: Coordination sequence Gal.6.366.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314981, there is no canonical definition to state claims against.
-/

/-! ## A314981.P3933121347331460498

`A315361(n)-A186731(A109043(n))`
-/

namespace A314981.P3933121347331460498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315361 n - A186731 (A109043 n).toNat

end

end A314981.P3933121347331460498

/-! ## A314981.P14568759506830078082

`A315361(n)+A186731(A109043(n))*A280193(2*n+1)`
-/

namespace A314981.P14568759506830078082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315361 n + A186731 (A109043 n).toNat * A280193 (2 * n + 1)

end

end A314981.P14568759506830078082

/-! ## A314981.P14698873842555393189

`A301298(n)+A301295(A301315(3*n+2))`
-/

namespace A314981.P14698873842555393189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A301295 (A301315 (3 * n + 2)).toNat

end

end A314981.P14698873842555393189

/-! ## A314981.P3557809309903021603

`A314462(n)+A128617(A328431(n))`
-/

namespace A314981.P3557809309903021603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314462 n + A128617 (A328431 n).toNat

end

end A314981.P3557809309903021603

/-!
# A314983: Coordination sequence Gal.6.596.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314983, there is no canonical definition to state claims against.
-/

/-! ## A314983.P4506353684332398243

`A141832(3*n+1)-A000005(A061581(n+1))`
-/

namespace A314983.P4506353684332398243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141832 (3 * n + 1) - A000005 (A061581 (n + 1)).toNat

end

end A314983.P4506353684332398243

/-!
# A314984: Coordination sequence Gal.6.605.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314984, there is no canonical definition to state claims against.
-/

/-! ## A314984.P17051298386176006132

`eq[A034444(A344699(3*n+5)), A036582(3*n)]`
-/

namespace A314984.P17051298386176006132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A344699 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036582 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A314984.P17051298386176006132

/-! ## A314984.P14923191949766890749

`A240692(n)+A179081(A037278(n+1))`
-/

namespace A314984.P14923191949766890749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240692 n + A179081 (A037278 (n + 1)).toNat

end

end A314984.P14923191949766890749

/-! ## A314984.P9898610667538114085

`A311652(n)+A211110(A110370(n+1))`
-/

namespace A314984.P9898610667538114085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311652 n + A211110 (A110370 (n + 1)).toNat

end

end A314984.P9898610667538114085

/-! ## A314984.P16838550184188340515

`A315529(n)+A305052(A243505(n+1))`
-/

namespace A314984.P16838550184188340515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315529 n + A305052 (A243505 (n + 1)).toNat

end

end A314984.P16838550184188340515

/-! ## A314984.P6337419659674428279

`A204631(A091222(n+1))+5*n-A007949(A161955(3^n))`
-/

namespace A314984.P6337419659674428279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204631 (A091222 (n + 1)).toNat + ((5 * n : ℤ) - A007949 (A161955 (3 ^ n)).toNat)

end

end A314984.P6337419659674428279

/-!
# A314985: Coordination sequence Gal.6.362.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314985, there is no canonical definition to state claims against.
-/

/-! ## A314985.P9420194976856040059

`or(A211992(A027151(n)), A314961(n))`
-/

namespace A314985.P9420194976856040059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A211992 (A027151 n).toNat) (A314961 n)

end

end A314985.P9420194976856040059

/-! ## A314985.P4163447590285647609

`or(A314947(n), A348687(A028338(n)))`
-/

namespace A314985.P4163447590285647609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314947 n) (A348687 (A028338 n).toNat)

end

end A314985.P4163447590285647609

/-! ## A314985.P4622561464924913362

`or(A314947(n), A350070(A041259(n)))`
-/

namespace A314985.P4622561464924913362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314947 n) (A350070 (A041259 n).toNat)

end

end A314985.P4622561464924913362

/-! ## A314985.P4702193394653456434

`or(A008313(A085152(n+1)), A314947(n))`
-/

namespace A314985.P4702193394653456434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008313 (A085152 (n + 1)).toNat) (A314947 n)

end

end A314985.P4702193394653456434

/-! ## A314985.P3519427053836606112

`∑[A035931(A000040(3*n+1)²)]`
-/

namespace A314985.P3519427053836606112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035931 (A000040 (3 * n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314985.P3519427053836606112

/-!
# A314986: Coordination sequence Gal.6.491.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314986, there is no canonical definition to state claims against.
-/

/-! ## A314986.P17271338344855434614

`A219529(n)-A059288(A361351(n))`
-/

namespace A314986.P17271338344855434614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A059288 (A361351 n).toNat

end

end A314986.P17271338344855434614

/-! ## A314986.P12960194154991734665

`A314949(n)+A037800(A036784(n))`
-/

namespace A314986.P12960194154991734665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314949 n + A037800 (A036784 n).toNat

end

end A314986.P12960194154991734665

/-! ## A314986.P4953185968786811234

`A004219(A000108(n+1))+∑{d}[n, A000196(#)]+1`
-/

namespace A314986.P4953185968786811234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 (A000108 (n + 1)).toNat + (∑ d ∈ Nat.divisors (f1 n), A000196 d + 1)

end

end A314986.P4953185968786811234

/-! ## A314986.P3086982138421199438

`A238745(A002906(n))+A007092(A001855(n+1))`
-/

namespace A314986.P3086982138421199438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (A002906 n).toNat + A007092 (A001855 (n + 1)).toNat

end

end A314986.P3086982138421199438

/-!
# A314987: Coordination sequence Gal.6.543.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314987, there is no canonical definition to state claims against.
-/

/-! ## A314987.P1481620307461751473

`A314935(n)+A056975(A268448(3*n+2))`
-/

namespace A314987.P1481620307461751473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314935 n + A056975 (A268448 (3 * n + 2)).toNat

end

end A314987.P1481620307461751473

/-!
# A314988: Coordination sequence Gal.5.203.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314988, there is no canonical definition to state claims against.
-/

/-! ## A314988.P10141069097030966756

`A143091(A314977(n)+2*n)`
-/

namespace A314988.P10141069097030966756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143091 (A314977 n + (2 * n : ℤ)).toNat

end

end A314988.P10141069097030966756

/-! ## A314988.P6691866171751714959

`A143091(A314977(n)+n+n)`
-/

namespace A314988.P6691866171751714959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143091 (A314977 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314988.P6691866171751714959

/-! ## A314988.P16475866968867292553

`A314977(n)+A101688(A174506(n))`
-/

namespace A314988.P16475866968867292553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314977 n + A101688 (A174506 n).toNat

end

end A314988.P16475866968867292553

/-! ## A314988.P14765537397685968517

`A143091(eq[A087990(n+1), A219489(n)])`
-/

namespace A314988.P14765537397685968517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A314988.P14765537397685968517

/-!
# A314989: Coordination sequence Gal.6.557.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314989, there is no canonical definition to state claims against.
-/

/-! ## A314989.P9048975806013566507

`A310597(n)+A001222(A024038(n))`
-/

namespace A314989.P9048975806013566507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310597 n + A001222 (A024038 n).toNat

end

end A314989.P9048975806013566507

/-! ## A314989.P18439595891514255551

`A315504(n)-A001222(A301600(n))`
-/

namespace A314989.P18439595891514255551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315504 n - A001222 (A301600 n).toNat

end

end A314989.P18439595891514255551

/-! ## A314989.P12403933995623628413

`A313115(n)+A014081(A185078(n+1))`
-/

namespace A314989.P12403933995623628413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + A014081 (A185078 (n + 1)).toNat

end

end A314989.P12403933995623628413

/-! ## A314989.P15723529472865489822

`A001222(A024038(n))+A250120(n)-A061394(3^n)`
-/

namespace A314989.P15723529472865489822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A024038 n).toNat + (A250120 n - A061394 (3 ^ n))

end

end A314989.P15723529472865489822

/-!
# A314990: Coordination sequence Gal.6.499.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314990, there is no canonical definition to state claims against.
-/

/-! ## A314990.P14828041266395342076

`or(A001877(A134401(n)), A314955(n))`
-/

namespace A314990.P14828041266395342076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001877 (A134401 n).toNat) (A314955 n)

end

end A314990.P14828041266395342076

/-! ## A314990.P12365345460605280214

`A008458(n)-A331553(A005563(n))`
-/

namespace A314990.P12365345460605280214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A331553 (A005563 n).toNat

end

end A314990.P12365345460605280214

/-! ## A314990.P10573514241827446429

`or(A001221(A150922(n)), A314955(n))`
-/

namespace A314990.P10573514241827446429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A150922 n).toNat) (A314955 n)

end

end A314990.P10573514241827446429

/-!
# A314994: Coordination sequence Gal.6.547.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314994, the canonical program `A314994.P37249725369232577` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314994 has offset 0).

The definition of A314994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314994.P37249725369232577

`ogf((1+4x+4x^2+6x^3+x^4+8x^5+2x^6+3x^7-x^8+x^9-x^10)/(1-x-x^6+x^7))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A314994

/-- `ogf((1+4x+4x^2+6x^3+x^4+8x^5+2x^6+3x^7-x^8+x^9-x^10)/(1-x-x^6+x^7))` -/
def P37249725369232577.Spec : Prop :=
  ∀ n, P37249725369232577.a n = A314994 n

theorem P37249725369232577.correct : P37249725369232577.Spec := by
  intro n
  simp only [A314994]

end A314994

/-! ## A314994.P2530455164845456526

`A314801(n)+A100910(A149512(n))`
-/

namespace A314994.P2530455164845456526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314801 n + A100910 (A149512 n).toNat

end

end A314994.P2530455164845456526

namespace A314994

/-- `A314801(n)+A100910(A149512(n))` -/
def P2530455164845456526.Spec : Prop :=
  ∀ n, P2530455164845456526.a n = A314994 n

end A314994

/-! ## A314994.P13505871315711902546

`A314801(n)+A285142(A014211(n))`
-/

namespace A314994.P13505871315711902546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314801 n + A285142 (A014211 n).toNat

end

end A314994.P13505871315711902546

namespace A314994

/-- `A314801(n)+A285142(A014211(n))` -/
def P13505871315711902546.Spec : Prop :=
  ∀ n, P13505871315711902546.a n = A314994 n

end A314994

/-! ## A314994.P18082222513095213178

`A313694(n)-A271620(A011782(n))`
-/

namespace A314994.P18082222513095213178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313694 n - A271620 (A011782 n).toNat

end

end A314994.P18082222513095213178

namespace A314994

/-- `A313694(n)-A271620(A011782(n))` -/
def P18082222513095213178.Spec : Prop :=
  ∀ n, P18082222513095213178.a n = A314994 n

end A314994

/-! ## A314994.P6022643728975203842

`xor(A063725(A071725(n)), A314746(n))`
-/

namespace A314994.P6022643728975203842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063725 (A071725 n).toNat) (A314746 n)

end

end A314994.P6022643728975203842

namespace A314994

/-- `xor(A063725(A071725(n)), A314746(n))` -/
def P6022643728975203842.Spec : Prop :=
  ∀ n, P6022643728975203842.a n = A314994 n

end A314994

/-!
# A314995: Coordination sequence Gal.6.566.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314995, there is no canonical definition to state claims against.
-/

/-! ## A314995.P10107588133805769458

`A034806(n+2)-A030220(A102468(n))`
-/

namespace A314995.P10107588133805769458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034806 (n + 2) - A030220 (A102468 n).toNat

end

end A314995.P10107588133805769458

/-!
# A314996: Coordination sequence Gal.5.177.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314996, there is no canonical definition to state claims against.
-/

/-! ## A314996.P13593061308516570711

`A250120(n)-A242288(A322439(n+3))`
-/

namespace A314996.P13593061308516570711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A242288 (A322439 (n + 3)).toNat

end

end A314996.P13593061308516570711

/-! ## A314996.P9374030668936324450

`A250120(n)-A120936(A118931(2*n+3))`
-/

namespace A314996.P9374030668936324450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A120936 (A118931 (2 * n + 3)).toNat

end

end A314996.P9374030668936324450

/-! ## A314996.P13276517265325072367

`A314997(n)-A186747(A288807(n))`
-/

namespace A314996.P13276517265325072367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314997 n - A186747 (A288807 n).toNat

end

end A314996.P13276517265325072367

/-! ## A314996.P6579723528825584243

`A314997(n)-A185284(A314595(n))`
-/

namespace A314996.P6579723528825584243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314997 n - A185284 (A314595 n).toNat

end

end A314996.P6579723528825584243

/-! ## A314996.P17661348086062680912

`A314997(n)-A343660(A309862(n))`
-/

namespace A314996.P17661348086062680912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314997 n - A343660 (A309862 n).toNat

end

end A314996.P17661348086062680912

/-!
# A314997: Coordination sequence Gal.5.176.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314997, there is no canonical definition to state claims against.
-/

/-! ## A314997.P11204430350874093505

`A314996(n)+A186747(A288807(n))`
-/

namespace A314997.P11204430350874093505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314996 n + A186747 (A288807 n).toNat

end

end A314997.P11204430350874093505

/-! ## A314997.P5539528365027365234

`A324232(A309862(n))+A314996(n)`
-/

namespace A314997.P5539528365027365234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324232 (A309862 n).toNat + A314996 n

end

end A314997.P5539528365027365234

/-! ## A314997.P16833429991884480161

`A250120(n)-A086008(A018022(n))`
-/

namespace A314997.P16833429991884480161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A086008 (A018022 n).toNat

end

end A314997.P16833429991884480161

/-! ## A314997.P12254051705327973151

`or(A180433(A080938(n)), A314996(n))`
-/

namespace A314997.P12254051705327973151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A180433 (A080938 n).toNat) (A314996 n)

end

end A314997.P12254051705327973151

/-! ## A314997.P7066340646417651866

`or(A185274(A135318(n)), A314996(n))`
-/

namespace A314997.P7066340646417651866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185274 (A135318 n).toNat) (A314996 n)

end

end A314997.P7066340646417651866

/-!
# A314998: Coordination sequence Gal.5.201.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314998, there is no canonical definition to state claims against.
-/

/-! ## A314998.P5955792974269429899

`A313177(n)+A010815(A005015(n))`
-/

namespace A314998.P5955792974269429899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313177 n + A010815 (A005015 n).toNat

end

end A314998.P5955792974269429899

/-! ## A314998.P13880967600234796576

`A311743(n)+A001222(A265717(n))`
-/

namespace A314998.P13880967600234796576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311743 n + A001222 (A265717 n).toNat

end

end A314998.P13880967600234796576

/-! ## A314998.P15076876595615701210

`or(A001221(A033887(n)), A314695(n))`
-/

namespace A314998.P15076876595615701210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A033887 n).toNat) (A314695 n)

end

end A314998.P15076876595615701210

/-! ## A314998.P7019502107646067152

`or(A001222(A162543(n)), A311382(n))`
-/

namespace A314998.P7019502107646067152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A162543 n).toNat) (A311382 n)

end

end A314998.P7019502107646067152

/-! ## A314998.P7638742519219452546

`or(A090239(A099965(n+4)), A314695(n))`
-/

namespace A314998.P7638742519219452546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A090239 (A099965 (n + 4)).toNat) (A314695 n)

end

end A314998.P7638742519219452546

/-!
# A314999: Coordination sequence Gal.6.295.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314999, there is no canonical definition to state claims against.
-/

/-! ## A314999.P9570157773317633253

`A313831(n)-A001222(A000108(n))`
-/

namespace A314999.P9570157773317633253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n - A001222 (A000108 n).toNat

end

end A314999.P9570157773317633253

/-! ## A314999.P2628078132710990827

`A313831(n)-A001222(A120304(n)+2)`
-/

namespace A314999.P2628078132710990827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n - A001222 (A120304 n + 2).toNat

end

end A314999.P2628078132710990827

/-! ## A314999.P10314436497034884312

`A315006(n)-A103675(n²²)`
-/

namespace A314999.P10314436497034884312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315006 n - A103675 ((n ^ 2) ^ 2)

end

end A314999.P10314436497034884312

/-! ## A314999.P11628418496397128170

`A315000(n)-A107846(A003239(n))`
-/

namespace A314999.P11628418496397128170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315000 n - A107846 (A003239 n).toNat

end

end A314999.P11628418496397128170

/-! ## A314999.P1601449859918058998

`A315000(n)-A179801(A154331(n+1))`
-/

namespace A314999.P1601449859918058998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315000 n - A179801 (A154331 (n + 1)).toNat

end

end A314999.P1601449859918058998

