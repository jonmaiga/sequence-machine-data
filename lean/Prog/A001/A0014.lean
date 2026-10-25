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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A001400: Number of partitions of n into at most 4 parts.

The programs for A001400, the canonical program `A001400.P17105359062635275807` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001400 has offset 0).

The definition of A001400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001400.P17105359062635275807

`round(((n+4)^3+3*(n+4)²-9*(n+4)*(n+4)%2)/144)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001400

/-- `round(((n+4)^3+3*(n+4)²-9*(n+4)*(n+4)%2)/144)` -/
def P17105359062635275807.Spec : Prop :=
  ∀ n, P17105359062635275807.a n = A001400 n

theorem P17105359062635275807.correct : P17105359062635275807.Spec := by
  intro n
  simp only [A001400]

end A001400

/-! ## A001400.P190378086668430993

`round((2*n^3+30*n²+135*n+175)/288+(-1)^n*(n+5)/32)`
-/

namespace A001400.P190378086668430993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n ^ 3 + 30 * n ^ 2 + 135 * n + 175 : ℚ) / 288 + ((-1) ^ n * (n + 5 : ℤ) : ℚ) / 32)

end

end A001400.P190378086668430993

namespace A001400

/-- `round((2*n^3+30*n²+135*n+175)/288+(-1)^n*(n+5)/32)` -/
def P190378086668430993.Spec : Prop :=
  ∀ n, P190378086668430993.a n = A001400 n

end A001400

/-! ## A001400.P17027616324403249757

`a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=6, a(6)=9, a(7)=11, a(8)=15, a(9)=18`
-/

namespace A001400.P17027616324403249757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 6, 9, 11, 15, 18] fun n a =>
  a (n - 1) + a (n - 2) - 2 * a (n - 5) + a (n - 8) + a (n - 9) - a (n - 10)

end

end A001400.P17027616324403249757

namespace A001400

/-- `a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` -/
def P17027616324403249757.Spec : Prop :=
  ∀ n, P17027616324403249757.a n = A001400 n

end A001400

/-! ## A001400.P13301635767751209660

`a(n-4)+A001399(n)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A001400.P13301635767751209660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  a (n - 4) + A001399 n

end

end A001400.P13301635767751209660

namespace A001400

/-- `a(n-4)+A001399(n)` -/
def P13301635767751209660.Spec : Prop :=
  ∀ n, P13301635767751209660.a n = A001400 n

end A001400

/-! ## A001400.P5433576272599846715

`a(n-1)+A005044(n+3)` with `a(0)=1`
-/

namespace A001400.P5433576272599846715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A005044 (n + 3)

end

end A001400.P5433576272599846715

namespace A001400

/-- `a(n-1)+A005044(n+3)` -/
def P5433576272599846715.Spec : Prop :=
  ∀ n, P5433576272599846715.a n = A001400 n

end A001400

/-! ## A001400.P2390174791392918998

`∑[A266755(n)]`
-/

namespace A001400.P2390174791392918998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001400.P2390174791392918998

namespace A001400

/-- `∑[A266755(n)]` -/
def P2390174791392918998.Spec : Prop :=
  ∀ n, P2390174791392918998.a n = A001400 n

end A001400

/-! ## A001400.P1043815890540722633

`A008762(n)-a(n-1)` with `a(0)=1`
-/

namespace A001400.P1043815890540722633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008762 n - a (n - 1)

end

end A001400.P1043815890540722633

namespace A001400

/-- `A008762(n)-a(n-1)` -/
def P1043815890540722633.Spec : Prop :=
  ∀ n, P1043815890540722633.a n = A001400 n

end A001400

/-! ## A001400.P5270527584728658226

`A025767(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001400.P5270527584728658226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025767 n + a (n - 2)

end

end A001400.P5270527584728658226

namespace A001400

/-- `A025767(n)+a(n-2)` -/
def P5270527584728658226.Spec : Prop :=
  ∀ n, P5270527584728658226.a n = A001400 n

end A001400

/-! ## A001400.P12738235630746290202

`A266769(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001400.P12738235630746290202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A266769 n - a (n - 2)

end

end A001400.P12738235630746290202

namespace A001400

/-- `A266769(n)-a(n-2)` -/
def P12738235630746290202.Spec : Prop :=
  ∀ n, P12738235630746290202.a n = A001400 n

end A001400

/-! ## A001400.P2632228580488933544

`A008642(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A001400.P2632228580488933544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A008642 n + a (n - 3)

end

end A001400.P2632228580488933544

namespace A001400

/-- `A008642(n)+a(n-3)` -/
def P2632228580488933544.Spec : Prop :=
  ∀ n, P2632228580488933544.a n = A001400 n

end A001400

/-! ## A001400.P9229296408691163701

`A008764(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A001400.P9229296408691163701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A008764 n - a (n - 3)

end

end A001400.P9229296408691163701

namespace A001400

/-- `A008764(n)-a(n-3)` -/
def P9229296408691163701.Spec : Prop :=
  ∀ n, P9229296408691163701.a n = A001400 n

end A001400

/-! ## A001400.P961389256021832721

`A026810(n)+A001399(n)`
-/

namespace A001400.P961389256021832721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n + A001399 n

end

end A001400.P961389256021832721

namespace A001400

/-- `A026810(n)+A001399(n)` -/
def P961389256021832721.Spec : Prop :=
  ∀ n, P961389256021832721.a n = A001400 n

end A001400

/-! ## A001400.P18141948881701971493

`A001401(n)-A026811(n)`
-/

namespace A001400.P18141948881701971493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A026811 n

end

end A001400.P18141948881701971493

namespace A001400

/-- `A001401(n)-A026811(n)` -/
def P18141948881701971493.Spec : Prop :=
  ∀ n, P18141948881701971493.a n = A001400 n

theorem P18141948881701971493.correct : P18141948881701971493.Spec := by
  intro n
  simp only [A001400, Nat.add_sub_cancel, A001400.P18141948881701971493.a, A001400.P17105359062635275807.a, A001401, A001401.P12728375563230237513.a, A026811, A026811.P6823680176287512686.f1, A026811.P6823680176287512686.a, A008667, A008667.P1446437464412478859.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001400

/-! ## A001400.P17348634579830737106

`A008765(n)-A026810(n)`
-/

namespace A001400.P17348634579830737106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008765 n - A026810 n

end

end A001400.P17348634579830737106

namespace A001400

/-- `A008765(n)-A026810(n)` -/
def P17348634579830737106.Spec : Prop :=
  ∀ n, P17348634579830737106.a n = A001400 n

end A001400

/-! ## A001400.P14602500584301172625

`∑[A069905(A052938(n+1))]`
-/

namespace A001400.P14602500584301172625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A052938 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001400.P14602500584301172625

namespace A001400

/-- `∑[A069905(A052938(n+1))]` -/
def P14602500584301172625.Spec : Prop :=
  ∀ n, P14602500584301172625.a n = A001400 n

end A001400

/-! ## A001400.P15973733858952243265

`∑[A069905(A028242(n)+2)]`
-/

namespace A001400.P15973733858952243265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A028242 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001400.P15973733858952243265

namespace A001400

/-- `∑[A069905(A028242(n)+2)]` -/
def P15973733858952243265.Spec : Prop :=
  ∀ n, P15973733858952243265.a n = A001400 n

end A001400

/-! ## A001400.P12839485268178986765

`A008642(n)+∑[A005044(n)]`
-/

namespace A001400.P12839485268178986765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001400.P12839485268178986765

namespace A001400

/-- `A008642(n)+∑[A005044(n)]` -/
def P12839485268178986765.Spec : Prop :=
  ∀ n, P12839485268178986765.a n = A001400 n

end A001400

/-! ## A001400.P16561231953134860182

`A026810(n)+∑[A103221(n)]`
-/

namespace A001400.P16561231953134860182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001400.P16561231953134860182

namespace A001400

/-- `A026810(n)+∑[A103221(n)]` -/
def P16561231953134860182.Spec : Prop :=
  ∀ n, P16561231953134860182.a n = A001400 n

end A001400

/-! ## A001400.P2822770618682904715

`A026810(n+1)+A008642(n)`
-/

namespace A001400.P2822770618682904715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 1) + A008642 n

end

end A001400.P2822770618682904715

namespace A001400

/-- `A026810(n+1)+A008642(n)` -/
def P2822770618682904715.Spec : Prop :=
  ∀ n, P2822770618682904715.a n = A001400 n

end A001400

/-! ## A001400.P18189198943022229384

`A026810(n)+∑[∑[A115360(n)]]`
-/

namespace A001400.P18189198943022229384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001400.P18189198943022229384

namespace A001400

/-- `A026810(n)+∑[∑[A115360(n)]]` -/
def P18189198943022229384.Spec : Prop :=
  ∀ n, P18189198943022229384.a n = A001400 n

end A001400

/-!
# A001401: Number of partitions of n into at most 5 parts.

The programs for A001401, the canonical program `A001401.P12728375563230237513` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001401 has offset 0).

The definition of A001401 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001401.P12728375563230237513

`A001400(n)+A026811(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001401

/-- `A001400(n)+A026811(n)` -/
def P12728375563230237513.Spec : Prop :=
  ∀ n, P12728375563230237513.a n = A001401 n

theorem P12728375563230237513.correct : P12728375563230237513.Spec := by
  intro n
  simp only [A001401]

end A001401

/-! ## A001401.P8983187589582296879

`∑[A008667(n)]`
-/

namespace A001401.P8983187589582296879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001401.P8983187589582296879

namespace A001401

/-- `∑[A008667(n)]` -/
def P8983187589582296879.Spec : Prop :=
  ∀ n, P8983187589582296879.a n = A001401 n

theorem P8983187589582296879.correct : P8983187589582296879.Spec := by
  intro n
  simp only [A001401, Nat.add_sub_cancel, A001401.P8983187589582296879.f1, A001401.P8983187589582296879.a, A001401.P12728375563230237513.a, A001400, A001400.P17105359062635275807.a, A008667, A008667.P1446437464412478859.a, A026811, A026811.P6823680176287512686.f1, A026811.P6823680176287512686.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001401

/-! ## A001401.P12540743755573320144

`A029032(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001401.P12540743755573320144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029032 n + a (n - 2)

end

end A001401.P12540743755573320144

namespace A001401

/-- `A029032(n)+a(n-2)` -/
def P12540743755573320144.Spec : Prop :=
  ∀ n, P12540743755573320144.a n = A001401 n

end A001401

/-! ## A001401.P7790433345495353383

`A029007(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A001401.P7790433345495353383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A029007 n + a (n - 3)

end

end A001401.P7790433345495353383

namespace A001401

/-- `A029007(n)+a(n-3)` -/
def P7790433345495353383.Spec : Prop :=
  ∀ n, P7790433345495353383.a n = A001401 n

end A001401

/-! ## A001401.P7834737790779901720

`A001402(n)-A026812(n)`
-/

namespace A001401.P7834737790779901720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - A026812 n

end

end A001401.P7834737790779901720

namespace A001401

/-- `A001402(n)-A026812(n)` -/
def P7834737790779901720.Spec : Prop :=
  ∀ n, P7834737790779901720.a n = A001401 n

theorem P7834737790779901720.correct : P7834737790779901720.Spec := by
  intro n
  simp only [A001401, Nat.add_sub_cancel, A001401.P7834737790779901720.a, A001401.P12728375563230237513.a, A001400, A001400.P17105359062635275807.a, A001402, A001402.P12217424370709294362.f1, A001402.P12217424370709294362.a, A026811, A026811.P6823680176287512686.f1, A026811.P6823680176287512686.a, A026812, A026812.P368867106460486570.a, A008667, A008667.P1446437464412478859.a, A037145, A037145.P14292097428719380923.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001401

/-! ## A001401.P17022102180234198048

`A026811(n)+∑[A266755(n)]`
-/

namespace A001401.P17022102180234198048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001401.P17022102180234198048

namespace A001401

/-- `A026811(n)+∑[A266755(n)]` -/
def P17022102180234198048.Spec : Prop :=
  ∀ n, P17022102180234198048.a n = A001401 n

end A001401

/-! ## A001401.P503244172203192085

`∑[A037145(n)]-A026812(n)`
-/

namespace A001401.P503244172203192085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026812 n

end

end A001401.P503244172203192085

namespace A001401

/-- `∑[A037145(n)]-A026812(n)` -/
def P503244172203192085.Spec : Prop :=
  ∀ n, P503244172203192085.a n = A001401 n

theorem P503244172203192085.correct : P503244172203192085.Spec := by
  intro n
  simp only [A001401, Nat.add_sub_cancel, A001401.P503244172203192085.f1, A001401.P503244172203192085.a, A001401.P12728375563230237513.a, A001400, A001400.P17105359062635275807.a, A026811, A026811.P6823680176287512686.f1, A026811.P6823680176287512686.a, A026812, A026812.P368867106460486570.a, A037145, A037145.P14292097428719380923.a, A001402, A001402.P12217424370709294362.f1, A001402.P12217424370709294362.a, A008667, A008667.P1446437464412478859.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001401

/-! ## A001401.P3431157441952297495

`A026811(n+1)+A008669(n)`
-/

namespace A001401.P3431157441952297495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 1) + A008669 n

end

end A001401.P3431157441952297495

namespace A001401

/-- `A026811(n+1)+A008669(n)` -/
def P3431157441952297495.Spec : Prop :=
  ∀ n, P3431157441952297495.a n = A001401 n

end A001401

/-! ## A001401.P17085805881114278018

`A001399(n)+A026811(n)+A026810(n)`
-/

namespace A001401.P17085805881114278018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + (A026811 n + A026810 n)

end

end A001401.P17085805881114278018

namespace A001401

/-- `A001399(n)+A026811(n)+A026810(n)` -/
def P17085805881114278018.Spec : Prop :=
  ∀ n, P17085805881114278018.a n = A001401 n

end A001401

/-! ## A001401.P3369379107788168314

`A029007(n)+A026811(n+2)`
-/

namespace A001401.P3369379107788168314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029007 n + A026811 (n + 2)

end

end A001401.P3369379107788168314

namespace A001401

/-- `A029007(n)+A026811(n+2)` -/
def P3369379107788168314.Spec : Prop :=
  ∀ n, P3369379107788168314.a n = A001401 n

end A001401

/-! ## A001401.P12662699632991249848

`A002622(n+1)-(A008667(n+1)+A002622(n))`
-/

namespace A001401.P12662699632991249848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002622 (n + 1) - (A008667 (n + 1) + A002622 n)

end

end A001401.P12662699632991249848

namespace A001401

/-- `A002622(n+1)-(A008667(n+1)+A002622(n))` -/
def P12662699632991249848.Spec : Prop :=
  ∀ n, P12662699632991249848.a n = A001401 n

end A001401

/-! ## A001401.P13464679378721096729

`A002621(n+1)-(A060024(n+1)+A002621(n))`
-/

namespace A001401.P13464679378721096729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002621 (n + 1) - (A060024 (n + 1) + A002621 n)

end

end A001401.P13464679378721096729

namespace A001401

/-- `A002621(n+1)-(A060024(n+1)+A002621(n))` -/
def P13464679378721096729.Spec : Prop :=
  ∀ n, P13464679378721096729.a n = A001401 n

end A001401

/-! ## A001401.P11266537899528338562

`A029032(n)+A026811(n+3)`
-/

namespace A001401.P11266537899528338562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029032 n + A026811 (n + 3)

end

end A001401.P11266537899528338562

namespace A001401

/-- `A029032(n)+A026811(n+3)` -/
def P11266537899528338562.Spec : Prop :=
  ∀ n, P11266537899528338562.a n = A001401 n

end A001401

/-! ## A001401.P860766765395142247

`A026811(n+5)`
-/

namespace A001401.P860766765395142247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 5)

end

end A001401.P860766765395142247

namespace A001401

/-- `A026811(n+5)` -/
def P860766765395142247.Spec : Prop :=
  ∀ n, P860766765395142247.a n = A001401 n

end A001401

/-! ## A001401.P4231815622489994133

`A266768(2*n)`
-/

namespace A001401.P4231815622489994133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 (2 * n)

end

end A001401.P4231815622489994133

namespace A001401

/-- `A266768(2*n)` -/
def P4231815622489994133.Spec : Prop :=
  ∀ n, P4231815622489994133.a n = A001401 n

end A001401

/-! ## A001401.P4106622528445757424

`∑[A029263(2*n)]`
-/

namespace A001401.P4106622528445757424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029263 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001401.P4106622528445757424

namespace A001401

/-- `∑[A029263(2*n)]` -/
def P4106622528445757424.Spec : Prop :=
  ∀ n, P4106622528445757424.a n = A001401 n

end A001401

/-! ## A001401.P16713377817487288480

`∑[A029327(2*n)]`
-/

namespace A001401.P16713377817487288480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029327 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001401.P16713377817487288480

namespace A001401

/-- `∑[A029327(2*n)]` -/
def P16713377817487288480.Spec : Prop :=
  ∀ n, P16713377817487288480.a n = A001401 n

end A001401

/-! ## A001401.P7883702994113503815

`A029263(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A001401.P7883702994113503815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029263 (n + n) + a (n - 1)

end

end A001401.P7883702994113503815

namespace A001401

/-- `A029263(n+n)+a(n-1)` -/
def P7883702994113503815.Spec : Prop :=
  ∀ n, P7883702994113503815.a n = A001401 n

end A001401

/-! ## A001401.P18412305542168927714

`A029327(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A001401.P18412305542168927714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029327 (n + n) + a (n - 1)

end

end A001401.P18412305542168927714

namespace A001401

/-- `A029327(n+n)+a(n-1)` -/
def P18412305542168927714.Spec : Prop :=
  ∀ n, P18412305542168927714.a n = A001401 n

end A001401

/-! ## A001401.P10158452254995706823

`∑[A001400(n)-A029140(2*n+1)]`
-/

namespace A001401.P10158452254995706823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - A029140 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001401.P10158452254995706823

namespace A001401

/-- `∑[A001400(n)-A029140(2*n+1)]` -/
def P10158452254995706823.Spec : Prop :=
  ∀ n, P10158452254995706823.a n = A001401 n

end A001401

/-!
# A001402: Number of partitions of n into at most 6 parts.

The programs for A001402, the canonical program `A001402.P12217424370709294362` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001402 has offset 0).

The definition of A001402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001402.P12217424370709294362

`∑[A037145(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001402

/-- `∑[A037145(n)]` -/
def P12217424370709294362.Spec : Prop :=
  ∀ n, P12217424370709294362.a n = A001402 n

theorem P12217424370709294362.correct : P12217424370709294362.Spec := by
  intro n
  simp only [A001402]

end A001402

/-! ## A001402.P10124327011007865282

`A003402(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A001402.P10124327011007865282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A003402 n - a (n - 3)

end

end A001402.P10124327011007865282

namespace A001402

/-- `A003402(n)-a(n-3)` -/
def P10124327011007865282.Spec : Prop :=
  ∀ n, P10124327011007865282.a n = A001402 n

end A001402

/-! ## A001402.P6495756769016196398

`A026812(n)+A001401(n)`
-/

namespace A001402.P6495756769016196398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 n + A001401 n

end

end A001402.P6495756769016196398

namespace A001402

/-- `A026812(n)+A001401(n)` -/
def P6495756769016196398.Spec : Prop :=
  ∀ n, P6495756769016196398.a n = A001402 n

theorem P6495756769016196398.correct : P6495756769016196398.Spec := by
  intro n
  simp only [A001402, Nat.add_sub_cancel, A001402.P6495756769016196398.a, A001402.P12217424370709294362.f1, A001402.P12217424370709294362.a, A001401, A001401.P12728375563230237513.a, A026812, A026812.P368867106460486570.a, A037145, A037145.P14292097428719380923.a, A001400, A001400.P17105359062635275807.a, A026811, A026811.P6823680176287512686.f1, A026811.P6823680176287512686.a, A008667, A008667.P1446437464412478859.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001402

/-! ## A001402.P806474632770442753

`A001401(n+1)-A060025(n+1)`
-/

namespace A001402.P806474632770442753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 (n + 1) - A060025 (n + 1)

end

end A001402.P806474632770442753

namespace A001402

/-- `A001401(n+1)-A060025(n+1)` -/
def P806474632770442753.Spec : Prop :=
  ∀ n, P806474632770442753.a n = A001402 n

end A001402

/-! ## A001402.P18261636446357773948

`A026812(n+6)`
-/

namespace A001402.P18261636446357773948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n + 6)

end

end A001402.P18261636446357773948

namespace A001402

/-- `A026812(n+6)` -/
def P18261636446357773948.Spec : Prop :=
  ∀ n, P18261636446357773948.a n = A001402 n

end A001402

/-! ## A001402.P8761355113166876830

`A026813(n+7)-A026813(n)`
-/

namespace A001402.P8761355113166876830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 (n + 7) - A026813 n

end

end A001402.P8761355113166876830

namespace A001402

/-- `A026813(n+7)-A026813(n)` -/
def P8761355113166876830.Spec : Prop :=
  ∀ n, P8761355113166876830.a n = A001402 n

end A001402

/-! ## A001402.P16875183034415867251

`A212545(n+7)-A212546(n+6)`
-/

namespace A001402.P16875183034415867251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212545 (n + 7) - A212546 (n + 6)

end

end A001402.P16875183034415867251

namespace A001402

/-- `A212545(n+7)-A212546(n+6)` -/
def P16875183034415867251.Spec : Prop :=
  ∀ n, P16875183034415867251.a n = A001402 n

end A001402

/-! ## A001402.P6022786700875652366

`A008636(n)-A026813(n)`
-/

namespace A001402.P6022786700875652366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A026813 n

end

end A001402.P6022786700875652366

namespace A001402

/-- `A008636(n)-A026813(n)` -/
def P6022786700875652366.Spec : Prop :=
  ∀ n, P6022786700875652366.a n = A001402 n

end A001402

/-! ## A001402.P9247210446963323581

`∑[A001996(n)]-A026813(n)`
-/

namespace A001402.P9247210446963323581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026813 n

end

end A001402.P9247210446963323581

namespace A001402

/-- `∑[A001996(n)]-A026813(n)` -/
def P9247210446963323581.Spec : Prop :=
  ∀ n, P9247210446963323581.a n = A001402 n

end A001402

/-! ## A001402.P11824691478249374982

`A152146(A167614(n+2))`
-/

namespace A001402.P11824691478249374982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A167614 (n + 2)).toNat

end

end A001402.P11824691478249374982

namespace A001402

/-- `A152146(A167614(n+2))` -/
def P11824691478249374982.Spec : Prop :=
  ∀ n, P11824691478249374982.a n = A001402 n

end A001402

/-! ## A001402.P4233261105961691891

`A152146(A340266(n+2)+1)`
-/

namespace A001402.P4233261105961691891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A340266 (n + 2) + 1).toNat

end

end A001402.P4233261105961691891

namespace A001402

/-- `A152146(A340266(n+2)+1)` -/
def P4233261105961691891.Spec : Prop :=
  ∀ n, P4233261105961691891.a n = A001402 n

end A001402

/-! ## A001402.P7481686933820145360

`A152146(A166136(n+2)-3)`
-/

namespace A001402.P7481686933820145360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A166136 (n + 2) - 3).toNat

end

end A001402.P7481686933820145360

namespace A001402

/-- `A152146(A166136(n+2)-3)` -/
def P7481686933820145360.Spec : Prop :=
  ∀ n, P7481686933820145360.a n = A001402 n

end A001402

/-! ## A001402.P8542157979412519842

`A058398(A055998(n+4)-2)`
-/

namespace A001402.P8542157979412519842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (A055998 (n + 4) - 2).toNat

end

end A001402.P8542157979412519842

namespace A001402

/-- `A058398(A055998(n+4)-2)` -/
def P8542157979412519842.Spec : Prop :=
  ∀ n, P8542157979412519842.a n = A001402 n

end A001402

/-! ## A001402.P11251335685765055984

`A072233(A000217(n+6)+6)`
-/

namespace A001402.P11251335685765055984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A000217 (n + 6) + 6).toNat

end

end A001402.P11251335685765055984

namespace A001402

/-- `A072233(A000217(n+6)+6)` -/
def P11251335685765055984.Spec : Prop :=
  ∀ n, P11251335685765055984.a n = A001402 n

end A001402

/-!
# A001403: Number of combinatorial configurations of type (n_3).

The programs for A001403, there is no canonical definition to state claims against.
-/

/-! ## A001403.P7710238783407572532

`A284751(A324184(n))+A099999(n+1)`
-/

namespace A001403.P7710238783407572532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (A324184 n).toNat + A099999 (n + 1)

end

end A001403.P7710238783407572532

/-! ## A001403.P7225834731927083705

`A099999(n+1)+A027351(A100014(n+1))`
-/

namespace A001403.P7225834731927083705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099999 (n + 1) + A027351 (A100014 (n + 1)).toNat

end

end A001403.P7225834731927083705

/-! ## A001403.P1756317682924201002

`A099999(n+1)+A066272(A350674(n+1))`
-/

namespace A001403.P1756317682924201002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099999 (n + 1) + A066272 (A350674 (n + 1)).toNat

end

end A001403.P1756317682924201002

/-! ## A001403.P15144378117624794746

`A330682(A235151(n+1))+A099999(n+1)`
-/

namespace A001403.P15144378117624794746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330682 (A235151 (n + 1)).toNat + A099999 (n + 1)

end

end A001403.P15144378117624794746

/-! ## A001403.P15002032197706470529

`A099999(n+1)+A049320(A146337(n+3))`
-/

namespace A001403.P15002032197706470529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099999 (n + 1) + A049320 (A146337 (n + 3)).toNat

end

end A001403.P15002032197706470529

/-!
# A001404: Triangle of values of 2-d recurrence.

The programs for A001404, there is no canonical definition to state claims against.
-/

/-! ## A001404.P6134169203971342975

`A094838(A089606(n+1)*A193592(n))`
-/

namespace A001404.P6134169203971342975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094838 (A089606 (n + 1) * A193592 n).toNat

end

end A001404.P6134169203971342975

/-! ## A001404.P10369211566682500441

`A066063(A238483(n+1)%A105599(n+1))`
-/

namespace A001404.P10369211566682500441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066063 (Int.tmod (A238483 (n + 1)) (A105599 (n + 1))).toNat

end

end A001404.P10369211566682500441

/-! ## A001404.P6840128886580023641

`A332577(C(A357134(n), A308135(n+1)))`
-/

namespace A001404.P6840128886580023641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332577 (Nat.choose (A357134 n).toNat (A308135 (n + 1)).toNat)

end

end A001404.P6840128886580023641

/-!
# A001405: a(n) = binomial(n, floor(n/2)).

The programs for A001405, the canonical program `A001405.P5205018418992951678` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001405 has offset 0).

The definition of A001405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/2))` (program `A001405.P5205018418992951678`, by `A001405.P5205018418992951678.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001405.P5205018418992951678

`C(n, floor(n/2))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001405

/-- `C(n, floor(n/2))` -/
def P5205018418992951678.Spec : Prop :=
  ∀ n, (P5205018418992951678.a n : ℤ) = A001405 n

theorem P5205018418992951678.correct : P5205018418992951678.Spec := by
  intro n
  simp only [A001405]

end A001405

/-! ## A001405.P6223087014868278219

`n*a(n-1)/∑[n%2]` with `a(0)=1`
-/

namespace A001405.P6223087014868278219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A001405.P6223087014868278219

namespace A001405

/-- `n*a(n-1)/∑[n%2]` -/
def P6223087014868278219.Spec : Prop :=
  ∀ n, P6223087014868278219.a n = (A001405 n : ℚ)

end A001405

/-! ## A001405.P11853805184017676065

`n/∑[and(1, n)]*a(n-1)` with `a(0)=1`
-/

namespace A001405.P11853805184017676065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * a (n - 1)

end

end A001405.P11853805184017676065

namespace A001405

/-- `n/∑[and(1, n)]*a(n-1)` -/
def P11853805184017676065.Spec : Prop :=
  ∀ n, P11853805184017676065.a n = (A001405 n : ℚ)

end A001405

/-! ## A001405.P4414336899844118350

`n*a(n-1)/floor(∑[n]/n)` with `a(0)=1`
-/

namespace A001405.P4414336899844118350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / (⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n : ℚ)⌋ : ℚ))

end

end A001405.P4414336899844118350

namespace A001405

/-- `n*a(n-1)/floor(∑[n]/n)` -/
def P4414336899844118350.Spec : Prop :=
  ∀ n, P4414336899844118350.a n = (A001405 n : ℚ)

end A001405

/-! ## A001405.P6160522071408634327

`n/floor((n+1)/2)*a(n-1)` with `a(0)=1`
-/

namespace A001405.P6160522071408634327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (⌊(n + 1 : ℚ) / 2⌋ : ℚ) * a (n - 1)

end

end A001405.P6160522071408634327

namespace A001405

/-- `n/floor((n+1)/2)*a(n-1)` -/
def P6160522071408634327.Spec : Prop :=
  ∀ n, P6160522071408634327.a n = (A001405 n : ℚ)

end A001405

/-! ## A001405.P17599450465758106947

`a(n-1)/(1-floor(n/2)/n)` with `a(0)=1`
-/

namespace A001405.P17599450465758106947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (1 - (⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ))

end

end A001405.P17599450465758106947

namespace A001405

/-- `a(n-1)/(1-floor(n/2)/n)` -/
def P17599450465758106947.Spec : Prop :=
  ∀ n, P17599450465758106947.a n = (A001405 n : ℚ)

end A001405

/-! ## A001405.P16597156766018453907

`abs(A126930(n))`
-/

namespace A001405.P16597156766018453907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 n|

end

end A001405.P16597156766018453907

namespace A001405

/-- `abs(A126930(n))` -/
def P16597156766018453907.Spec : Prop :=
  ∀ n, P16597156766018453907.a n = A001405 n

end A001405

/-! ## A001405.P9276289068095302169

`A014495(n)+1`
-/

namespace A001405.P9276289068095302169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 n + 1

end

end A001405.P9276289068095302169

namespace A001405

/-- `A014495(n)+1` -/
def P9276289068095302169.Spec : Prop :=
  ∀ n, P9276289068095302169.a n = A001405 n

theorem P9276289068095302169.correct : P9276289068095302169.Spec := by
  intro n
  simp only [A001405, Nat.add_sub_cancel, A001405.P9276289068095302169.a, A001405.P5205018418992951678.a, A014495, A014495.P8648755420632744383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001405

/-! ## A001405.P6352578782188517289

`A210736(n+1)`
-/

namespace A001405.P6352578782188517289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1)

end

end A001405.P6352578782188517289

namespace A001405

/-- `A210736(n+1)` -/
def P6352578782188517289.Spec : Prop :=
  ∀ n, P6352578782188517289.a n = A001405 n

end A001405

/-! ## A001405.P371350035250846426

`A051920(n)-1`
-/

namespace A001405.P371350035250846426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 n - 1

end

end A001405.P371350035250846426

namespace A001405

/-- `A051920(n)-1` -/
def P371350035250846426.Spec : Prop :=
  ∀ n, P371350035250846426.a n = A001405 n

theorem P371350035250846426.correct : P371350035250846426.Spec := by
  intro n
  simp only [A001405, Nat.add_sub_cancel, A001405.P371350035250846426.a, A001405.P5205018418992951678.a, A051920, A051920.P2707849764288868979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001405

/-! ## A001405.P7873372700043886601

`A201686(n)+2`
-/

namespace A001405.P7873372700043886601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 n + 2

end

end A001405.P7873372700043886601

namespace A001405

/-- `A201686(n)+2` -/
def P7873372700043886601.Spec : Prop :=
  ∀ n, P7873372700043886601.a n = A001405 n

theorem P7873372700043886601.correct : P7873372700043886601.Spec := by
  intro n
  simp only [A001405, Nat.add_sub_cancel, A001405.P7873372700043886601.a, A001405.P5205018418992951678.a, A201686, A201686.P5560453005708353295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001405

/-! ## A001405.P4423440202961290345

`∑[A037952(abs(1-n))]`
-/

namespace A001405.P4423440202961290345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001405.P4423440202961290345

namespace A001405

/-- `∑[A037952(abs(1-n))]` -/
def P4423440202961290345.Spec : Prop :=
  ∀ n, P4423440202961290345.a n = A001405 n

end A001405

/-! ## A001405.P14643613594811209740

`∑[∑[A191529(n)]]-n`
-/

namespace A001405.P14643613594811209740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A001405.P14643613594811209740

namespace A001405

/-- `∑[∑[A191529(n)]]-n` -/
def P14643613594811209740.Spec : Prop :=
  ∀ n, P14643613594811209740.a n = A001405 n

end A001405

/-! ## A001405.P9079115596816093109

`A050168(n)-a(n-1)` with `a(0)=1`
-/

namespace A001405.P9079115596816093109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050168 n - a (n - 1)

end

end A001405.P9079115596816093109

namespace A001405

/-- `A050168(n)-a(n-1)` -/
def P9079115596816093109.Spec : Prop :=
  ∀ n, P9079115596816093109.a n = A001405 n

end A001405

/-! ## A001405.P17583271378222805147

`∏[A063210(n+1)/(n+1)]`
-/

namespace A001405.P17583271378222805147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063210 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001405.P17583271378222805147

namespace A001405

/-- `∏[A063210(n+1)/(n+1)]` -/
def P17583271378222805147.Spec : Prop :=
  ∀ n, P17583271378222805147.a n = (A001405 n : ℚ)

end A001405

/-! ## A001405.P16207392493755919285

`A037952(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A001405.P16207392493755919285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037952 (n - 1) + a (n - 1)

end

end A001405.P16207392493755919285

namespace A001405

/-- `A037952(n-1)+a(n-1)` -/
def P16207392493755919285.Spec : Prop :=
  ∀ n, P16207392493755919285.a n = A001405 n

end A001405

/-! ## A001405.P14016164288695380113

`a(n-1)+A210628(n)+a(n-1)` with `a(0)=1`
-/

namespace A001405.P14016164288695380113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A210628 n + a (n - 1))

end

end A001405.P14016164288695380113

namespace A001405

/-- `a(n-1)+A210628(n)+a(n-1)` -/
def P14016164288695380113.Spec : Prop :=
  ∀ n, P14016164288695380113.a n = A001405 n

end A001405

/-! ## A001405.P9913525750814497922

`a(n-1)+a(n-1)-A097331(n)` with `a(0)=1`
-/

namespace A001405.P9913525750814497922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A097331 n)

end

end A001405.P9913525750814497922

namespace A001405

/-- `a(n-1)+a(n-1)-A097331(n)` -/
def P9913525750814497922.Spec : Prop :=
  ∀ n, P9913525750814497922.a n = A001405 n

end A001405

/-! ## A001405.P10535697777030163907

`A037956(n)+A026008(n)`
-/

namespace A001405.P10535697777030163907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037956 n + A026008 n

end

end A001405.P10535697777030163907

namespace A001405

/-- `A037956(n)+A026008(n)` -/
def P10535697777030163907.Spec : Prop :=
  ∀ n, P10535697777030163907.a n = A001405 n

theorem P10535697777030163907.correct : P10535697777030163907.Spec := by
  intro n
  simp only [A001405, Nat.add_sub_cancel, A001405.P10535697777030163907.a, A001405.P5205018418992951678.a, A026008, A026008.P1049361676505189419.a, A037956, A037956.P945758566745438306.a, A097331, A097331.P4426990625459901142.a, A208355, A208355.P6360215552861429744.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001405

/-! ## A001405.P17477925847738938156

`A037957(n)+A026021(n)`
-/

namespace A001405.P17477925847738938156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037957 n + A026021 n

end

end A001405.P17477925847738938156

namespace A001405

/-- `A037957(n)+A026021(n)` -/
def P17477925847738938156.Spec : Prop :=
  ∀ n, P17477925847738938156.a n = A001405 n

theorem P17477925847738938156.correct : P17477925847738938156.Spec := by
  intro n
  simp only [A001405, Nat.add_sub_cancel, A001405.P17477925847738938156.a, A001405.P5205018418992951678.a, A026021, A026021.P624873047912347274.f1, A026021.P624873047912347274.a, A037957, A037957.P523599438952609535.a, A026016, A026016.P4489379988257310928.a, A065033, A065033.P13150710762287634520.a, A208355, A208355.P6360215552861429744.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001405

/-!
# A001406: High temperature series for partition function for spin-1/2 Ising model on b.c.c. lattice.

The programs for A001406, there is no canonical definition to state claims against.
-/

/-! ## A001406.P5282122196577655849

`A290335(∑[A046662(n)+3]*∑[n]+n+12)`
-/

namespace A001406.P5282122196577655849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046662 n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290335 ((∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (n + 12 : ℤ)).toNat

end

end A001406.P5282122196577655849

/-!
# A001407: High temperature series for partition function for spin-1/2 Ising model on f.c.c. lattice.

The programs for A001407, there is no canonical definition to state claims against.
-/

/-! ## A001407.P13160958697142533758

`and(9^n, A070822(n+1))`
-/

namespace A001407.P13160958697142533758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (9 ^ n : ℤ) (A070822 (n + 1))

end

end A001407.P13160958697142533758

/-! ## A001407.P16184790336313278689

`A233386(xor(4, A150518(n)))`
-/

namespace A001407.P16184790336313278689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233386 (Int.xor 4 (A150518 n)).toNat

end

end A001407.P16184790336313278689

/-!
# A001408: High temperature series for spin-1/2 Ising specific heat on 3-dimensional simple cubic lattice, divided by 3.

The programs for A001408, there is no canonical definition to state claims against.
-/

/-! ## A001408.P6083344684498263904

`A002916(n)/3`
-/

namespace A001408.P6083344684498263904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002916 n : ℚ) / 3

end

end A001408.P6083344684498263904

/-!
# A001409: Number of 2n-step polygons on cubic lattice.

The programs for A001409, there is no canonical definition to state claims against.
-/

/-! ## A001409.P1374491410844088868

`A319255(∑[n])-ceil(n/4)`
-/

namespace A001409.P1374491410844088868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319255 (∑ j ∈ Finset.range (n + 1), f1 j) - ⌈(n : ℚ) / 4⌉

end

end A001409.P1374491410844088868

/-!
# A001410: Sum of rows of triangle defined in A001404.

The programs for A001410, there is no canonical definition to state claims against.
-/

/-! ## A001410.P14441598246709699741

`A001404(∑[4*n])`
-/

namespace A001410.P14441598246709699741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001404 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001410.P14441598246709699741

/-! ## A001410.P15279815476822377591

`A001404(A046092(n))%A001551(n)`
-/

namespace A001410.P15279815476822377591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001404 (A046092 n).toNat) (A001551 n)

end

end A001410.P15279815476822377591

/-! ## A001410.P15173019017309876906

`A033999(n)²*A001404(A046092(n))`
-/

namespace A001410.P15173019017309876906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A001404 (A046092 n).toNat

end

end A001410.P15173019017309876906

/-! ## A001410.P6387544110777309890

`A001404(A046092(n))+val(A016222(n+1), 2)`
-/

namespace A001410.P6387544110777309890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001404 (A046092 n).toNat + (SequenceMachineLib.valuation (A016222 (n + 1)).toNat 2 : ℤ)

end

end A001410.P6387544110777309890

/-! ## A001410.P2644775699519830047

`A007318(A000217(n))*A001404(A046092(n))`
-/

namespace A001410.P2644775699519830047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A001404 (A046092 n).toNat

end

end A001410.P2644775699519830047

/-! ## A001410.P13545579218270197799

`lcm(1-4/2, A001404(2*(n+1)²))`
-/

namespace A001410.P13545579218270197799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (A001404 (2 * (n + 1) ^ 2))

end

end A001410.P13545579218270197799

/-! ## A001410.P8064932128650065864

`A055641(n)!*A001404(2*(n+1)²)`
-/

namespace A001410.P8064932128650065864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A055641 n).toNat : ℤ) * A001404 (2 * (n + 1) ^ 2)

end

end A001410.P8064932128650065864

/-! ## A001410.P7847255470477227446

`A001404(2*(n+1)²)%A001420(n+1)`
-/

namespace A001410.P7847255470477227446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001404 (2 * (n + 1) ^ 2)) (A001420 (n + 1))

end

end A001410.P7847255470477227446

/-! ## A001410.P7437492772043134919

`record[A001404(A004525(n)+A000124(n))]`
-/

namespace A001410.P7437492772043134919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001404 (A004525 n + A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001410.P7437492772043134919

/-! ## A001410.P12392972393784971198

`A001404(2*(n+1)²)%A034386(A013634(n))`
-/

namespace A001410.P12392972393784971198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001404 (2 * (n + 1) ^ 2)) (A034386 (A013634 n).toNat)

end

end A001410.P12392972393784971198

/-!
# A001411: Number of n-step self-avoiding walks on square lattice.

The programs for A001411, there is no canonical definition to state claims against.
-/

/-! ## A001411.P6616237872087411349

`A046661(A028310(n))*A123932(n)`
-/

namespace A001411.P6616237872087411349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046661 (A028310 n).toNat * A123932 n

end

end A001411.P6616237872087411349

/-! ## A001411.P11069053493680965584

`A280560(n)²*A046661(A028310(n))`
-/

namespace A001411.P11069053493680965584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n ^ 2 * A046661 (A028310 n).toNat

end

end A001411.P11069053493680965584

/-! ## A001411.P7935920804723354808

`A046661(A123108(2*n))*A123932(n)`
-/

namespace A001411.P7935920804723354808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046661 (A123108 (2 * n)).toNat * A123932 n

end

end A001411.P7935920804723354808

/-! ## A001411.P9124271651287613613

`A046661(n^A070750(n+1)²)*A123932(n)`
-/

namespace A001411.P9124271651287613613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046661 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A070750 (n + 1) ^ 2 : ℤ))).toNat * A123932 n

end

end A001411.P9124271651287613613

/-! ## A001411.P13547575426430107518

`A002906(A178334(n))*A046661(A028310(n))`
-/

namespace A001411.P13547575426430107518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002906 (A178334 n).toNat * A046661 (A028310 n).toNat

end

end A001411.P13547575426430107518

/-!
# A001412: Number of n-step self-avoiding walks on cubic lattice.

The programs for A001412, there is no canonical definition to state claims against.
-/

/-! ## A001412.P14575846509190592847

`record[gcd(A152815(n), A337023(n+1))]`
-/

namespace A001412.P14575846509190592847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152815 n) (A337023 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001412.P14575846509190592847

/-! ## A001412.P18100198113031275577

`record[gcd(A201701(n), A337400(n+1))]`
-/

namespace A001412.P18100198113031275577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A201701 n) (A337400 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001412.P18100198113031275577

/-!
# A001413: Number of 2n-step self-avoiding cycles on the cubic lattice.

The programs for A001413, there is no canonical definition to state claims against.
-/

/-! ## A001413.P7715123836698925746

`4*(n+1)*A001409(n+1)`
-/

namespace A001413.P7715123836698925746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) * A001409 (n + 1)

end

end A001413.P7715123836698925746

/-! ## A001413.P294895020524294173

`and(-7, A010567(n+1))`
-/

namespace A001413.P294895020524294173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-7) (A010567 (n + 1))

end

end A001413.P294895020524294173

/-! ## A001413.P625075407827297865

`A010567(n+1)*A178334(n)`
-/

namespace A001413.P625075407827297865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010567 (n + 1) * A178334 n

end

end A001413.P625075407827297865

/-! ## A001413.P13302457403440368954

`A010567(n+1)-A130706(n+1)*A167858(n)`
-/

namespace A001413.P13302457403440368954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010567 (n + 1) - A130706 (n + 1) * A167858 n

end

end A001413.P13302457403440368954

/-! ## A001413.P16515756660407381983

`A010567(n+1)-A169585(n+1)-A169585(n+1)`
-/

namespace A001413.P16515756660407381983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010567 (n + 1) - A169585 (n + 1) - A169585 (n + 1)

end

end A001413.P16515756660407381983

/-!
# A001414: Integer log of n: sum of primes dividing n (with repetition). Also called sopfr(n).

The programs for A001414, the canonical program `A001414.P8293929508439252105` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001414 has offset 1).

The definition of A001414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001414.P8293929508439252105

`∑{p}[n+1, #*val(n+1, #)]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001414

/-- `∑{p}[n+1, #*val(n+1, #)]` -/
def P8293929508439252105.Spec : Prop :=
  ∀ n, (P8293929508439252105.a n : ℤ) = A001414 (n + 1)

theorem P8293929508439252105.correct : P8293929508439252105.Spec := by
  intro n
  simp only [A001414, Nat.add_sub_cancel]

end A001414

/-! ## A001414.P12073453196060329398

`Δ[A025281(n)]`
-/

namespace A001414.P12073453196060329398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001414.P12073453196060329398

namespace A001414

/-- `Δ[A025281(n)]` -/
def P12073453196060329398.Spec : Prop :=
  ∀ n, P12073453196060329398.a n = A001414 (n + 1)

end A001414

/-! ## A001414.P8211075810515496766

`sqrt(A074373(n+1))`
-/

namespace A001414.P8211075810515496766
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074373 (n + 1) : ℝ)

end

end A001414.P8211075810515496766

namespace A001414

/-- `sqrt(A074373(n+1))` -/
def P8211075810515496766.Spec : Prop :=
  ∀ n, P8211075810515496766.a n = (A001414 (n + 1) : ℝ)

end A001414

/-! ## A001414.P2205032118431743099

`A036288(n+1)-1`
-/

namespace A001414.P2205032118431743099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - 1

end

end A001414.P2205032118431743099

namespace A001414

/-- `A036288(n+1)-1` -/
def P2205032118431743099.Spec : Prop :=
  ∀ n, P2205032118431743099.a n = A001414 (n + 1)

theorem P2205032118431743099.correct : P2205032118431743099.Spec := by
  intro n
  simp only [A001414, Nat.add_sub_cancel, A001414.P2205032118431743099.a, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001414

/-! ## A001414.P10709704299231099908

`A100006(n+1)-2`
-/

namespace A001414.P10709704299231099908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (n + 1) - 2

end

end A001414.P10709704299231099908

namespace A001414

/-- `A100006(n+1)-2` -/
def P10709704299231099908.Spec : Prop :=
  ∀ n, P10709704299231099908.a n = A001414 (n + 1)

theorem P10709704299231099908.correct : P10709704299231099908.Spec := by
  intro n
  simp only [A001414, Nat.add_sub_cancel, A001414.P10709704299231099908.a, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A100006, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001414

/-! ## A001414.P766710827060159408

`∑{d}[n+1, A120007(#)]`
-/

namespace A001414.P766710827060159408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120007 d

end

end A001414.P766710827060159408

namespace A001414

/-- `∑{d}[n+1, A120007(#)]` -/
def P766710827060159408.Spec : Prop :=
  ∀ n, P766710827060159408.a n = A001414 (n + 1)

end A001414

/-! ## A001414.P6749021004179476065

`1-A075255(n+1)+n`
-/

namespace A001414.P6749021004179476065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A075255 (n + 1) + (n : ℤ)

end

end A001414.P6749021004179476065

namespace A001414

/-- `1-A075255(n+1)+n` -/
def P6749021004179476065.Spec : Prop :=
  ∀ n, P6749021004179476065.a n = A001414 (n + 1)

theorem P6749021004179476065.correct : P6749021004179476065.Spec := by
  intro n
  simp only [A001414, Nat.add_sub_cancel, A001414.P6749021004179476065.a, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A075255, A075255.P12137973761347593222.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001414

/-! ## A001414.P14319315234981893656

`A075254(n+1)-(n+1)`
-/

namespace A001414.P14319315234981893656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) - (n + 1 : ℤ)

end

end A001414.P14319315234981893656

namespace A001414

/-- `A075254(n+1)-(n+1)` -/
def P14319315234981893656.Spec : Prop :=
  ∀ n, P14319315234981893656.a n = A001414 (n + 1)

theorem P14319315234981893656.correct : P14319315234981893656.Spec := by
  intro n
  simp only [A001414, Nat.add_sub_cancel, A001414.P14319315234981893656.a, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A075254, A075254.P6422447875050144596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001414

/-! ## A001414.P7146004608572221903

`A280292(n+1)+∑{p}[n+1, #]`
-/

namespace A001414.P7146004608572221903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A001414.P7146004608572221903

namespace A001414

/-- `A280292(n+1)+∑{p}[n+1, #]` -/
def P7146004608572221903.Spec : Prop :=
  ∀ n, P7146004608572221903.a n = A001414 (n + 1)

theorem P7146004608572221903.correct : P7146004608572221903.Spec := by
  intro n
  simp only [A001414, Nat.add_sub_cancel, A001414.P7146004608572221903.f1, A001414.P7146004608572221903.a, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A280292, A280292.P17147228295463227534.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001414

/-! ## A001414.P15523518217927885892

`A023443(A036288(n+1))`
-/

namespace A001414.P15523518217927885892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036288 (n + 1)).toNat

end

end A001414.P15523518217927885892

namespace A001414

/-- `A023443(A036288(n+1))` -/
def P15523518217927885892.Spec : Prop :=
  ∀ n, P15523518217927885892.a n = A001414 (n + 1)

end A001414

/-! ## A001414.P15774418903058119826

`A023444(A100006(n+1))`
-/

namespace A001414.P15774418903058119826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A100006 (n + 1)).toNat

end

end A001414.P15774418903058119826

namespace A001414

/-- `A023444(A100006(n+1))` -/
def P15774418903058119826.Spec : Prop :=
  ∀ n, P15774418903058119826.a n = A001414 (n + 1)

end A001414

/-! ## A001414.P14457971759372433796

`A181894(A354547(n+1))`
-/

namespace A001414.P14457971759372433796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181894 (A354547 (n + 1)).toNat

end

end A001414.P14457971759372433796

namespace A001414

/-- `A181894(A354547(n+1))` -/
def P14457971759372433796.Spec : Prop :=
  ∀ n, P14457971759372433796.a n = A001414 (n + 1)

end A001414

/-! ## A001414.P1358871370114155745

`A025281(n+1)-A025281(n)`
-/

namespace A001414.P1358871370114155745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 (n + 1) - A025281 n

end

end A001414.P1358871370114155745

namespace A001414

/-- `A025281(n+1)-A025281(n)` -/
def P1358871370114155745.Spec : Prop :=
  ∀ n, P1358871370114155745.a n = A001414 (n + 1)

end A001414

/-! ## A001414.P11800926908070239540

`A023443(A075254(n+1)-n)`
-/

namespace A001414.P11800926908070239540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A075254 (n + 1) - (n : ℤ)).toNat

end

end A001414.P11800926908070239540

namespace A001414

/-- `A023443(A075254(n+1)-n)` -/
def P11800926908070239540.Spec : Prop :=
  ∀ n, P11800926908070239540.a n = A001414 (n + 1)

end A001414

/-! ## A001414.P4429378647533153879

`n-A023443(A075255(n+1))`
-/

namespace A001414.P4429378647533153879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A075255 (n + 1)).toNat

end

end A001414.P4429378647533153879

namespace A001414

/-- `n-A023443(A075255(n+1))` -/
def P4429378647533153879.Spec : Prop :=
  ∀ n, P4429378647533153879.a n = A001414 (n + 1)

end A001414

/-! ## A001414.P17946939488944920143

`A109958(n+1)%A103517(n)`
-/

namespace A001414.P17946939488944920143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109958 (n + 1)) (A103517 n)

end

end A001414.P17946939488944920143

namespace A001414

/-- `A109958(n+1)%A103517(n)` -/
def P17946939488944920143.Spec : Prop :=
  ∀ n, P17946939488944920143.a n = A001414 (n + 1)

end A001414

/-! ## A001414.P8885627289829817673

`∑{d}[n+1, A029908(A014963(#))]`
-/

namespace A001414.P8885627289829817673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029908 (A014963 d).toNat

end

end A001414.P8885627289829817673

namespace A001414

/-- `∑{d}[n+1, A029908(A014963(#))]` -/
def P8885627289829817673.Spec : Prop :=
  ∀ n, P8885627289829817673.a n = A001414 (n + 1)

end A001414

/-! ## A001414.P7313962865598862449

`A059975(n+1)+A001222(n+1)`
-/

namespace A001414.P7313962865598862449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (n + 1) + A001222 (n + 1)

end

end A001414.P7313962865598862449

namespace A001414

/-- `A059975(n+1)+A001222(n+1)` -/
def P7313962865598862449.Spec : Prop :=
  ∀ n, P7313962865598862449.a n = A001414 (n + 1)

theorem P7313962865598862449.correct : P7313962865598862449.Spec := by
  intro n
  simp only [A001414, Nat.add_sub_cancel, A001414.P7313962865598862449.a, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A001222, A001222.P11318177267732088261.a, A059975, A059975.P3594971538098503590.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001414

/-! ## A001414.P18074801175072400055

`A280292(n+1)+A008472(n+1)`
-/

namespace A001414.P18074801175072400055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (n + 1) + A008472 (n + 1)

end

end A001414.P18074801175072400055

namespace A001414

/-- `A280292(n+1)+A008472(n+1)` -/
def P18074801175072400055.Spec : Prop :=
  ∀ n, P18074801175072400055.a n = A001414 (n + 1)

theorem P18074801175072400055.correct : P18074801175072400055.Spec := by
  intro n
  simp only [A001414, Nat.add_sub_cancel, A001414.P18074801175072400055.a, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A280292, A280292.P17147228295463227534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001414

/-! ## A001414.P9440345728314870606

`A331415(n+1)+A056239(n+1)`
-/

namespace A001414.P9440345728314870606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331415 (n + 1) + A056239 (n + 1)

end

end A001414.P9440345728314870606

namespace A001414

/-- `A331415(n+1)+A056239(n+1)` -/
def P9440345728314870606.Spec : Prop :=
  ∀ n, P9440345728314870606.a n = A001414 (n + 1)

theorem P9440345728314870606.correct : P9440345728314870606.Spec := by
  intro n
  simp only [A001414, Nat.add_sub_cancel, A001414.P9440345728314870606.a, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A056239, A056239.P11316688788989965672.a, A331415, A331415.P4846081659728035053.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A048881, A048881.P16567064232951496228.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001414

/-!
# A001415: Number of ways of folding a 2 X n strip of stamps.

The programs for A001415, there is no canonical definition to state claims against.
-/

/-! ## A001415.P10682576239157091631

`A102440(A065033(n)*A155609(n))`
-/

namespace A001415.P10682576239157091631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (A065033 n * A155609 n).toNat

end

end A001415.P10682576239157091631

/-! ## A001415.P263714305554692927

`A102440(A155609(n)*A231149(n+2))`
-/

namespace A001415.P263714305554692927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (A155609 n * A231149 (n + 2)).toNat

end

end A001415.P263714305554692927

/-!
# A001417: Number of ways of folding a 2 X 2 X ... X 2 n-dimensional map.

The programs for A001417, there is no canonical definition to state claims against.
-/

/-! ## A001417.P5600497980338453354

`A000165(n)*A055034(A105787(n+1))`
-/

namespace A001417.P5600497980338453354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A055034 (A105787 (n + 1)).toNat

end

end A001417.P5600497980338453354

/-!
# A001419: Number of n-celled polyominoes with holes.

The programs for A001419, there is no canonical definition to state claims against.
-/

/-! ## A001419.P4055568802241199223

`A000105(n+1)-A000104(n+1)`
-/

namespace A001419.P4055568802241199223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1) - A000104 (n + 1)

end

end A001419.P4055568802241199223

/-! ## A001419.P15401846231559322972

`Δ[A173271(n)-∑[A000104(n)]]`
-/

namespace A001419.P15401846231559322972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000104 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001419.P15401846231559322972

/-! ## A001419.P17924698878711788053

`Δ[A173271(n)]-A000104(n+1)`
-/

namespace A001419.P17924698878711788053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000104 (n + 1)

end

end A001419.P17924698878711788053

/-! ## A001419.P8370660444494314137

`Δ[A173271(n)]%A000104(A000027(n+1))`
-/

namespace A001419.P8370660444494314137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000104 (A000027 (n + 1)).toNat)

end

end A001419.P8370660444494314137

/-! ## A001419.P8465172006243931236

`A006749(n+1)+A259090(n+1)-A000104(n+1)`
-/

namespace A001419.P8465172006243931236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006749 (n + 1) + (A259090 (n + 1) - A000104 (n + 1))

end

end A001419.P8465172006243931236

/-!
# A001420: Number of fixed 2-dimensional triangular-celled animals with n cells (n-iamonds, polyiamonds) in the 2-dimensional hexagonal lattice.

The programs for A001420, there is no canonical definition to state claims against.
-/

/-! ## A001420.P9754401612945207573

`A389190(n+1)+A341630(n+1)`
-/

namespace A001420.P9754401612945207573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389190 (n + 1) + A341630 (n + 1)

end

end A001420.P9754401612945207573

/-! ## A001420.P11824719249713663842

`2/(n+1)*A094164(n+1)`
-/

namespace A001420.P11824719249713663842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A094164 (n + 1) : ℚ)

end

end A001420.P11824719249713663842

/-! ## A001420.P7290107097264872049

`(A094164(n+1)+A094164(n+1))/A000027(n+1)`
-/

namespace A001420.P7290107097264872049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094164 (n + 1) + A094164 (n + 1) : ℚ) / (A000027 (n + 1) : ℚ)

end

end A001420.P7290107097264872049

/-! ## A001420.P1514111600109959217

`2*A094166(∑[n+1])/(n+1)`
-/

namespace A001420.P1514111600109959217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A094166 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ))

end

end A001420.P1514111600109959217

/-! ## A001420.P16111724844565767101

`2/(n+1)*A094166(record[A286158(n+1)])`
-/

namespace A001420.P16111724844565767101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A094166 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A001420.P16111724844565767101

/-!
# A001421: a(n) = (6*n)!/((n!)^3*(3*n)!).

The programs for A001421, the canonical program `A001421.P2783496816998661935` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001421 has offset 0).

The definition of A001421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001421.P2783496816998661935

`24*(6*n-1)*(2*n-1)*(6*n-5)*a(n-1)/n^3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001421

/-- `24*(6*n-1)*(2*n-1)*(6*n-5)*a(n-1)/n^3` -/
def P2783496816998661935.Spec : Prop :=
  ∀ n, P2783496816998661935.a n = (A001421 n : ℚ)

end A001421

/-! ## A001421.P12886635999125947758

`C(6*n, n)*C(5*n, n)*C(4*n, n)`
-/

namespace A001421.P12886635999125947758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (6 * n) n * Nat.choose (5 * n) n * Nat.choose (4 * n) n

end

end A001421.P12886635999125947758

namespace A001421

/-- `C(6*n, n)*C(5*n, n)*C(4*n, n)` -/
def P12886635999125947758.Spec : Prop :=
  ∀ n, (P12886635999125947758.a n : ℤ) = A001421 n

end A001421

/-! ## A001421.P3510635555384744764

`C(3*n, n)*C(4*n, n)*A211419(n)`
-/

namespace A001421.P3510635555384744764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n * Nat.choose (4 * n) n : ℤ) * A211419 n

end

end A001421.P3510635555384744764

namespace A001421

/-- `C(3*n, n)*C(4*n, n)*A211419(n)` -/
def P3510635555384744764.Spec : Prop :=
  ∀ n, P3510635555384744764.a n = A001421 n

end A001421

/-! ## A001421.P6718336215715305459

`C(3*n, n)*C(2*n, n)*A000984(3*n)`
-/

namespace A001421.P6718336215715305459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n * Nat.choose (2 * n) n : ℤ) * A000984 (3 * n)

end

end A001421.P6718336215715305459

namespace A001421

/-- `C(3*n, n)*C(2*n, n)*A000984(3*n)` -/
def P6718336215715305459.Spec : Prop :=
  ∀ n, P6718336215715305459.a n = A001421 n

end A001421

/-! ## A001421.P11930804830056358596

`record[a(n-1)/(floor(n/2)/n-1)]*A113424(n)` with `a(0)=1`
-/

namespace A001421.P11930804830056358596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (A113424 n : ℚ)

end

end A001421.P11930804830056358596

namespace A001421

/-- `record[a(n-1)/(floor(n/2)/n-1)]*A113424(n)` -/
def P11930804830056358596.Spec : Prop :=
  ∀ n, P11930804830056358596.a n = (A001421 n : ℚ)

end A001421

/-!
# A001422: Numbers which are not the sum of distinct squares.

The programs for A001422, there is no canonical definition to state claims against.
-/

/-! ## A001422.P5180221304975022707

`record[A097757(n)]`
-/

namespace A001422.P5180221304975022707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001422.P5180221304975022707

/-! ## A001422.P11650990146420971398

`A304028(n+2)`
-/

namespace A001422.P11650990146420971398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304028 (n + 2)

end

end A001422.P11650990146420971398

/-! ## A001422.P1042861888939225431

`eq[0, A033461(n)]`
-/

namespace A001422.P1042861888939225431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001422.P1042861888939225431

/-! ## A001422.P10176899479286253685

`eq[0, A242434(n)]`
-/

namespace A001422.P10176899479286253685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242434 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001422.P10176899479286253685

/-! ## A001422.P6947007272871664057

`eq[0, A279360(n)]`
-/

namespace A001422.P6947007272871664057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279360 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001422.P6947007272871664057

/-!
# A001423: Number of semigroups of order n, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A001423, there is no canonical definition to state claims against.
-/

/-! ## A001423.P10184101443854209253

`(A027851(n)+A029851(n))/2`
-/

namespace A001423.P10184101443854209253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027851 n + A029851 n : ℚ) / 2

end

end A001423.P10184101443854209253

/-! ## A001423.P12639886127857819051

`A058133(n+1)-A151823(n+1)`
-/

namespace A001423.P12639886127857819051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058133 (n + 1) - A151823 (n + 1)

end

end A001423.P12639886127857819051

/-! ## A001423.P14180204893067754435

`A014682(A029851(n)+A027851(n))`
-/

namespace A001423.P14180204893067754435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A029851 n + A027851 n).toNat

end

end A001423.P14180204893067754435

/-!
# A001424: Number of nonisomorphic and nonantiisomorphic groupoids with n elements.

The programs for A001424, there is no canonical definition to state claims against.
-/

/-! ## A001424.P14614471182997571952

`(A001329(n)+A029850(n))/2`
-/

namespace A001424.P14614471182997571952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001329 n + A029850 n : ℚ) / 2

end

end A001424.P14614471182997571952

/-!
# A001425: Number of commutative groupoids with n elements.

The programs for A001425, there is no canonical definition to state claims against.
-/

/-! ## A001425.P14165796311220222373

`A391161(∑[n]+n)`
-/

namespace A001425.P14165796311220222373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391161 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A001425.P14165796311220222373

/-! ## A001425.P12568293847393221984

`A079196(n)+A001426(n)`
-/

namespace A001425.P12568293847393221984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079196 n + A001426 n

end

end A001425.P12568293847393221984

/-! ## A001425.P13084738278622615714

`A001329(n)-A079183(A028310(n))`
-/

namespace A001425.P13084738278622615714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001329 n - A079183 (A028310 n).toNat

end

end A001425.P13084738278622615714

/-! ## A001425.P13798772990284230621

`A001329(n)-A079183(A114806(n))`
-/

namespace A001425.P13798772990284230621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001329 n - A079183 (A114806 n).toNat

end

end A001425.P13798772990284230621

/-! ## A001425.P13288670957972153568

`A027851(n)+A079196(n)-A079199(A028310(n))`
-/

namespace A001425.P13288670957972153568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027851 n + (A079196 n - A079199 (A028310 n).toNat)

end

end A001425.P13288670957972153568

/-!
# A001426: Number of commutative semigroups of order n.

The programs for A001426, there is no canonical definition to state claims against.
-/

/-! ## A001426.P3589363679479097834

`A001425(n)-A079196(n)`
-/

namespace A001426.P3589363679479097834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001425 n - A079196 n

end

end A001426.P3589363679479097834

/-! ## A001426.P5382410671308949436

`A001329(n)-A079183(A028310(n))-A079196(n)`
-/

namespace A001426.P5382410671308949436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001329 n - A079183 (A028310 n).toNat - A079196 n

end

end A001426.P5382410671308949436

/-! ## A001426.P13343100111273305045

`A027851(n)-A079199(round(sqrt(n²+1)))`
-/

namespace A001426.P13343100111273305045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027851 n - A079199 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A001426.P13343100111273305045

/-! ## A001426.P9066103944799646567

`2*A001423(n)-A029851(n)-A079199(A028310(n))`
-/

namespace A001426.P9066103944799646567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001423 n - A029851 n - A079199 (A028310 n).toNat

end

end A001426.P9066103944799646567

/-! ## A001426.P10974641157293068316

`A058129(n)+A318987(n)-A079199(A028310(n))`
-/

namespace A001426.P10974641157293068316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058129 n + (A318987 n - A079199 (A028310 n).toNat)

end

end A001426.P10974641157293068316

/-!
# A001427: Number of regular semigroups of order n, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A001427, there is no canonical definition to state claims against.
-/

/-! ## A001427.P8607872943021502973

`∑[A074634(∏[2*n+1])]`
-/

namespace A001427.P8607872943021502973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074634 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001427.P8607872943021502973

/-!
# A001428: Number of inverse semigroups of order n, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A001428, there is no canonical definition to state claims against.
-/

/-! ## A001428.P17696560953597395540

`ceil(sqrt(A000010(or(1, Δ[n^n]))))`
-/

namespace A001428.P17696560953597395540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000010 (Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat : ℝ)⌉

end

end A001428.P17696560953597395540

/-! ## A001428.P1643219102475266440

`ceil(sqrt(A000010(Δ[(n^n)%(61^n)])))`
-/

namespace A001428.P1643219102475266440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n % 61 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)⌉

end

end A001428.P1643219102475266440

/-!
# A001429: Number of n-node connected unicyclic graphs.

The programs for A001429, there is no canonical definition to state claims against.
-/

/-! ## A001429.P4889144380547277941

`A068051(n+3)-A027852(n+3)-A000081(n+3)`
-/

namespace A001429.P4889144380547277941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068051 (n + 3) - A027852 (n + 3) - A000081 (n + 3)

end

end A001429.P4889144380547277941

/-! ## A001429.P6500446314517562411

`A005703(n+3)-A000055(n+3)`
-/

namespace A001429.P6500446314517562411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005703 (n + 3) - A000055 (n + 3)

end

end A001429.P6500446314517562411

/-! ## A001429.P11562480774754237463

`A054923(∑[n+4]+4)`
-/

namespace A001429.P11562480774754237463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A001429.P11562480774754237463

/-! ## A001429.P16442578846484267555

`record[A054923(A054254(n))]`
-/

namespace A001429.P16442578846484267555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 (A054254 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001429.P16442578846484267555

/-! ## A001429.P4565821644158448948

`record[gcd(A054923(n), A341279(n))]`
-/

namespace A001429.P4565821644158448948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054923 n) (A341279 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001429.P4565821644158448948

/-!
# A001430: Number of graphs with n nodes and n-2 edges.

The programs for A001430, there is no canonical definition to state claims against.
-/

/-! ## A001430.P1635683779127727417

`A054924(∑[∑[n]]+2)`
-/

namespace A001430.P1635683779127727417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054924 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A001430.P1635683779127727417

/-! ## A001430.P83108703745437905

`A046751(∑[a(n-1)+n])` with `a(0)=3, a(1)=-1, a(2)=2`
-/

namespace A001430.P83108703745437905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, 2] fun n f1 =>
  f1 (n - 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046751 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001430.P83108703745437905

/-! ## A001430.P14765823180406791049

`A370167(A000292(n)+2)`
-/

namespace A001430.P14765823180406791049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370167 (A000292 n + 2).toNat

end

end A001430.P14765823180406791049

/-! ## A001430.P15427281736470543071

`A008406(∑[A238531(n)])-A000007(n)`
-/

namespace A001430.P15427281736470543071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000007 n

end

end A001430.P15427281736470543071

/-! ## A001430.P10503174407450225331

`A008406(∑[A238531(n)])%A000302(n)`
-/

namespace A001430.P10503174407450225331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008406 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A000302 n)

end

end A001430.P10503174407450225331

/-!
# A001431: Number of graphs with n nodes and n-3 edges.

The programs for A001431, there is no canonical definition to state claims against.
-/

/-! ## A001431.P4311843222957435052

`A046751(∑[a(n-1)+n])` with `a(0)=3, a(1)=0`
-/

namespace A001431.P4311843222957435052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046751 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001431.P4311843222957435052

/-! ## A001431.P18382983665091666652

`A054924(∑[a(n-1)+n])` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A001431.P18382983665091666652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 3] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054924 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001431.P18382983665091666652

/-! ## A001431.P16826615110657711860

`A054924(A157532(n+1)+A000292(n))`
-/

namespace A001431.P16826615110657711860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054924 (A157532 (n + 1) + A000292 n).toNat

end

end A001431.P16826615110657711860

/-! ## A001431.P6645168316692608229

`A339071(A000125(n)+2-n)`
-/

namespace A001431.P6645168316692608229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339071 (A000125 n + (2 - (n : ℤ))).toNat

end

end A001431.P6645168316692608229

/-! ## A001431.P8647681813674816396

`A339071(2-(n-A000125(n)))`
-/

namespace A001431.P8647681813674816396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339071 (2 - ((n : ℤ) - A000125 n)).toNat

end

end A001431.P8647681813674816396

/-!
# A001432: Number of graphs with n nodes and n-4 edges.

The programs for A001432, there is no canonical definition to state claims against.
-/

/-! ## A001432.P739939940370849411

`A054924(∑[∑[n]]+4)`
-/

namespace A001432.P739939940370849411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054924 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A001432.P739939940370849411

/-! ## A001432.P14306975947422321468

`A370167(A000292(n)+4)`
-/

namespace A001432.P14306975947422321468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370167 (A000292 n + 4).toNat

end

end A001432.P14306975947422321468

/-! ## A001432.P17827697031314348476

`A370167(∑[record[A206924(n+1)]])`
-/

namespace A001432.P17827697031314348476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206924 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370167 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001432.P17827697031314348476

/-! ## A001432.P16219594918471561133

`A123545(∑[∑[n]]+4)`
-/

namespace A001432.P16219594918471561133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123545 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A001432.P16219594918471561133

/-! ## A001432.P12014662275474440628

`A123546(∑[∑[n]]+4)`
-/

namespace A001432.P12014662275474440628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123546 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A001432.P12014662275474440628

/-!
# A001433: Number of graphs with n nodes and n-1 edges.

The programs for A001433, there is no canonical definition to state claims against.
-/

/-! ## A001433.P12937900086096083642

`A328057(n+1)-A333865(n+1)`
-/

namespace A001433.P12937900086096083642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328057 (n + 1) - A333865 (n + 1)

end

end A001433.P12937900086096083642

/-! ## A001433.P15068459416175804231

`A328057(n+1)+A057428(n)*A333865(n+1)`
-/

namespace A001433.P15068459416175804231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328057 (n + 1) + A057428 n * A333865 (n + 1)

end

end A001433.P15068459416175804231

/-! ## A001433.P17100774466802741515

`A008406(∑[∑[n]]+1)`
-/

namespace A001433.P17100774466802741515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008406 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001433.P17100774466802741515

/-! ## A001433.P5963633130443767297

`A025443(n)+A008406(A180415(n+1))`
-/

namespace A001433.P5963633130443767297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n + A008406 (A180415 (n + 1)).toNat

end

end A001433.P5963633130443767297

/-! ## A001433.P9366025912436575652

`or(A000007(n), A008406(A180415(n+1)))`
-/

namespace A001433.P9366025912436575652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A008406 (A180415 (n + 1)).toNat)

end

end A001433.P9366025912436575652

/-!
# A001434: Number of graphs with n nodes and n edges.

The programs for A001434, there is no canonical definition to state claims against.
-/

/-! ## A001434.P14617033174558642785

`A368836(∑[n])`
-/

namespace A001434.P14617033174558642785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368836 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001434.P14617033174558642785

/-! ## A001434.P2588871234028684063

`A369201(n)+A137917(n)`
-/

namespace A001434.P2588871234028684063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369201 n + A137917 n

end

end A001434.P2588871234028684063

/-! ## A001434.P8828742499080866496

`A368836(A000217(n))%A033891(n)`
-/

namespace A001434.P8828742499080866496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368836 (A000217 n).toNat) (A033891 n)

end

end A001434.P8828742499080866496

/-! ## A001434.P15377613678696689082

`A368836(A000217(n))+A130706(2*(n+1))`
-/

namespace A001434.P15377613678696689082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368836 (A000217 n).toNat + A130706 (2 * (n + 1))

end

end A001434.P15377613678696689082

/-! ## A001434.P15174315150088278851

`A011655(3*n+2)*A368836(A000217(n))`
-/

namespace A001434.P15174315150088278851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (3 * n + 2) * A368836 (A000217 n).toNat

end

end A001434.P15174315150088278851

/-!
# A001435: Number of connected graphs with n nodes and n+1 edges.

The programs for A001435, there is no canonical definition to state claims against.
-/

/-! ## A001435.P15511091529396974317

`A054923(∑[n+3])`
-/

namespace A001435.P15511091529396974317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001435.P15511091529396974317

/-! ## A001435.P14189640522140382334

`or(char[3], A054923(A055998(n+1)))`
-/

namespace A001435.P14189640522140382334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A054923 (A055998 (n + 1)).toNat)

end

end A001435.P14189640522140382334

/-! ## A001435.P11609475212126058815

`A054923(A055998(n+1))+A000007(n+1)`
-/

namespace A001435.P11609475212126058815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A001435.P11609475212126058815

/-! ## A001435.P11730738248313695572

`A054923(A055998(n+1))+A000038(n+1)`
-/

namespace A001435.P11730738248313695572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 (A055998 (n + 1)).toNat + A000038 (n + 1)

end

end A001435.P11730738248313695572

/-! ## A001435.P5746590224625562875

`A001221(A002144(n+1))*A054923(A055998(n+1))`
-/

namespace A001435.P5746590224625562875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002144 (n + 1)).toNat * A054923 (A055998 (n + 1)).toNat

end

end A001435.P5746590224625562875

/-!
# A001436: Number of connected graphs with n nodes, n+2 edges.

The programs for A001436, there is no canonical definition to state claims against.
-/

/-! ## A001436.P18423579581341635229

`A054923(∑[n+3]+n+3)`
-/

namespace A001436.P18423579581341635229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054923 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A001436.P18423579581341635229

/-! ## A001436.P10955941072662699500

`gcd(A000038(n+1), A054923(A046691(n+2)))`
-/

namespace A001436.P10955941072662699500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n + 1)) (A054923 (A046691 (n + 2)).toNat)

end

end A001436.P10955941072662699500

/-! ## A001436.P15308114573242293914

`A054923(A046691(n+2))%A001045(2*n+1)`
-/

namespace A001436.P15308114573242293914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054923 (A046691 (n + 2)).toNat) (A001045 (2 * n + 1))

end

end A001436.P15308114573242293914

/-! ## A001436.P15341544088256732524

`A046742(A141214(A210709(n)+n))`
-/

namespace A001436.P15341544088256732524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046742 (A141214 (A210709 n + (n : ℤ)).toNat).toNat

end

end A001436.P15341544088256732524

/-! ## A001436.P12523445794119320283

`A046742(A141214(n)-A210709(n))`
-/

namespace A001436.P12523445794119320283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046742 (A141214 n - A210709 n).toNat

end

end A001436.P12523445794119320283

/-!
# A001437: Number of connected graphs with n nodes and ceiling(n(n-1)/4) edges.

The programs for A001437, there is no canonical definition to state claims against.
-/

/-! ## A001437.P9443852514502931992

`xor(A032447(A185621(n)), A258829(2*n+1))`
-/

namespace A001437.P9443852514502931992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032447 (A185621 n).toNat) (A258829 (2 * n + 1))

end

end A001437.P9443852514502931992

/-! ## A001437.P2800088287893903877

`A293278(A010786(n))`
-/

namespace A001437.P2800088287893903877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293278 (A010786 n).toNat

end

end A001437.P2800088287893903877

/-!
# A001439: Number of proper linear spaces of order n.

The programs for A001439, there is no canonical definition to state claims against.
-/

/-! ## A001439.P547390913553906556

`A031436(n+3)+log2(A139549(n))`
-/

namespace A001439.P547390913553906556
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A031436 (n + 3) : ℝ) + Real.logb 2 (A139549 n : ℝ)

end

end A001439.P547390913553906556

/-! ## A001439.P1938839761859426664

`A231367(3*n+1)+A031436(n+3)`
-/

namespace A001439.P1938839761859426664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231367 (3 * n + 1) + A031436 (n + 3)

end

end A001439.P1938839761859426664

/-! ## A001439.P9902218985755182251

`A031436(n+3)+char[A083348(2*(n+1))]`
-/

namespace A001439.P9902218985755182251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083348 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031436 (n + 3) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A001439.P9902218985755182251

/-! ## A001439.P3783483813339866102

`A084143(A031437(n))+A031436(n+3)`
-/

namespace A001439.P3783483813339866102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (A031437 n).toNat + A031436 (n + 3)

end

end A001439.P3783483813339866102

/-! ## A001439.P16750004741047396290

`A118164(A034851(n))+A031436(n+3)`
-/

namespace A001439.P16750004741047396290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118164 (A034851 n).toNat + A031436 (n + 3)

end

end A001439.P16750004741047396290

/-!
# A001440: Number of symmetric Costas arrays of order n that are inequivalent under dihedral group.

The programs for A001440, there is no canonical definition to state claims against.
-/

/-! ## A001440.P7289475240598400870

`ceil(A213270(n+1)/2)`
-/

namespace A001440.P7289475240598400870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A213270 (n + 1) : ℚ) / 2⌉

end

end A001440.P7289475240598400870

/-! ## A001440.P11348835076753607419

`A004525(A213270(n+1))`
-/

namespace A001440.P11348835076753607419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213270 (n + 1)).toNat

end

end A001440.P11348835076753607419

/-! ## A001440.P3037979380326903875

`A004526(A213270(n+1)+1)`
-/

namespace A001440.P3037979380326903875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A213270 (n + 1) + 1).toNat

end

end A001440.P3037979380326903875

/-! ## A001440.P635304543002381047

`A006370(lcm(2, A213270(n+1)))`
-/

namespace A001440.P635304543002381047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (Int.lcm 2 (A213270 (n + 1)))

end

end A001440.P635304543002381047

/-!
# A001443: Number of strong starters in cyclic group of order 2n+1.

The programs for A001443, there is no canonical definition to state claims against.
-/

/-! ## A001443.P17453825276343435810

`A018461(a(n-2)+5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=0, a(4)=4`
-/

namespace A001443.P17453825276343435810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 0, 4] fun n a =>
  A018461 (a (n - 2) + 5).toNat

end

end A001443.P17453825276343435810

/-! ## A001443.P16260400831624495864

`and(A005378(A142471(n)), A135706(n))`
-/

namespace A001443.P16260400831624495864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005378 (A142471 n).toNat) (A135706 n)

end

end A001443.P16260400831624495864

/-! ## A001443.P13535193528598990652

`and(A011772(A072133(n)), A228292(n))`
-/

namespace A001443.P13535193528598990652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011772 (A072133 n).toNat) (A228292 n)

end

end A001443.P13535193528598990652

/-! ## A001443.P11337353314348244211

`A139435(A057996(n)+A000045(n+1))`
-/

namespace A001443.P11337353314348244211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139435 (A057996 n + A000045 (n + 1)).toNat

end

end A001443.P11337353314348244211

/-!
# A001444: Bending a piece of wire of length n+1 (configurations that can only be brought into coincidence by turning the figure over are counted as different).

The programs for A001444, the canonical program `A001444.P8713415588681568015` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001444 has offset 0).

The definition of A001444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001444.P5867209679998736010

`(3^floor(n/2)+3^n)/2`
-/

namespace A001444.P5867209679998736010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) + (3 ^ n : ℚ)) / 2

end

end A001444.P5867209679998736010

namespace A001444

/-- `(3^floor(n/2)+3^n)/2` -/
def P5867209679998736010.Spec : Prop :=
  ∀ n, P5867209679998736010.a n = (A001444 n : ℚ)

end A001444

/-! ## A001444.P8713415588681568015

`3*a(n-1)+3*a(n-2)-9*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001444

/-- `3*a(n-1)+3*a(n-2)-9*a(n-3)` -/
def P8713415588681568015.Spec : Prop :=
  ∀ n, P8713415588681568015.a n = A001444 n

theorem P8713415588681568015.correct : P8713415588681568015.Spec := by
  intro n
  simp only [A001444]

end A001444

/-! ## A001444.P4072701175118393807

`ogf((-1+x+3x^2)/(-1+3x+3x^2-9x^3))`
-/

namespace A001444.P4072701175118393807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -3] [1, -3, -3, 9] n

end

end A001444.P4072701175118393807

namespace A001444

/-- `ogf((-1+x+3x^2)/(-1+3x+3x^2-9x^3))` -/
def P4072701175118393807.Spec : Prop :=
  ∀ n, P4072701175118393807.a n = A001444 n

end A001444

/-! ## A001444.P15162905075573263210

`3^(n-1)+3*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A001444.P15162905075573263210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 3 * a (n - 2)

end

end A001444.P15162905075573263210

namespace A001444

/-- `3^(n-1)+3*a(n-2)` -/
def P15162905075573263210.Spec : Prop :=
  ∀ n, P15162905075573263210.a n = (A001444 n : ℚ)

end A001444

/-! ## A001444.P7305022135832965253

`A167993(n+1)+A108411(n)`
-/

namespace A001444.P7305022135832965253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 (n + 1) + A108411 n

end

end A001444.P7305022135832965253

namespace A001444

/-- `A167993(n+1)+A108411(n)` -/
def P7305022135832965253.Spec : Prop :=
  ∀ n, P7305022135832965253.a n = A001444 n

end A001444

/-! ## A001444.P8863658733861370429

`A007051(floor(n/2))+A003462(n)`
-/

namespace A001444.P8863658733861370429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 ⌊(n : ℚ) / 2⌋.toNat + A003462 n

end

end A001444.P8863658733861370429

namespace A001444

/-- `A007051(floor(n/2))+A003462(n)` -/
def P8863658733861370429.Spec : Prop :=
  ∀ n, P8863658733861370429.a n = A001444 n

end A001444

/-! ## A001444.P8901616417130062621

`A108411(n)+∑[A122006(n+1)]`
-/

namespace A001444.P8901616417130062621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001444.P8901616417130062621

namespace A001444

/-- `A108411(n)+∑[A122006(n+1)]` -/
def P8901616417130062621.Spec : Prop :=
  ∀ n, P8901616417130062621.a n = A001444 n

end A001444

/-! ## A001444.P948528642871873626

`A032120(n)-Δ[A108411(n)/2]`
-/

namespace A001444.P948528642871873626
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108411 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032120 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A001444.P948528642871873626

namespace A001444

/-- `A032120(n)-Δ[A108411(n)/2]` -/
def P948528642871873626.Spec : Prop :=
  ∀ n, P948528642871873626.a n = (A001444 n : ℚ)

end A001444

/-! ## A001444.P10039319039543918180

`Δ[A038754(n)]+∑[A122006(n+1)]`
-/

namespace A001444.P10039319039543918180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A001444.P10039319039543918180

namespace A001444

/-- `Δ[A038754(n)]+∑[A122006(n+1)]` -/
def P10039319039543918180.Spec : Prop :=
  ∀ n, P10039319039543918180.a n = A001444 n

end A001444

/-! ## A001444.P18153242927619186369

`A007051(floor(n/2))+A007051(n)-1`
-/

namespace A001444.P18153242927619186369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 ⌊(n : ℚ) / 2⌋.toNat + (A007051 n - 1)

end

end A001444.P18153242927619186369

namespace A001444

/-- `A007051(floor(n/2))+A007051(n)-1` -/
def P18153242927619186369.Spec : Prop :=
  ∀ n, P18153242927619186369.a n = A001444 n

end A001444

/-! ## A001444.P2320251520890230542

`A124302(A008619(n))+A003462(n)`
-/

namespace A001444.P2320251520890230542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (A008619 n).toNat + A003462 n

end

end A001444.P2320251520890230542

namespace A001444

/-- `A124302(A008619(n))+A003462(n)` -/
def P2320251520890230542.Spec : Prop :=
  ∀ n, P2320251520890230542.a n = A001444 n

end A001444

/-! ## A001444.P6838709578715209040

`A108411(n)*A124302(A080513(n))`
-/

namespace A001444.P6838709578715209040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n * A124302 (A080513 n).toNat

end

end A001444.P6838709578715209040

namespace A001444

/-- `A108411(n)*A124302(A080513(n))` -/
def P6838709578715209040.Spec : Prop :=
  ∀ n, P6838709578715209040.a n = A001444 n

end A001444

/-! ## A001444.P18084596754856692646

`A032120(n)-Δ[A007051(A004526(n))]`
-/

namespace A001444.P18084596754856692646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032120 n - (f1 (n + 1) - f1 n)

end

end A001444.P18084596754856692646

namespace A001444

/-- `A032120(n)-Δ[A007051(A004526(n))]` -/
def P18084596754856692646.Spec : Prop :=
  ∀ n, P18084596754856692646.a n = A001444 n

end A001444

/-! ## A001444.P8442121442550332760

`A003462(n)+A003462(A004526(n))+1`
-/

namespace A001444.P8442121442550332760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + (A003462 (A004526 n).toNat + 1)

end

end A001444.P8442121442550332760

namespace A001444

/-- `A003462(n)+A003462(A004526(n))+1` -/
def P8442121442550332760.Spec : Prop :=
  ∀ n, P8442121442550332760.a n = A001444 n

end A001444

/-! ## A001444.P12087600455894135830

`A032120(n)+Δ[A038754(n)]-A038754(n)`
-/

namespace A001444.P12087600455894135830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032120 n + (f1 (n + 1) - f1 n - A038754 n)

end

end A001444.P12087600455894135830

namespace A001444

/-- `A032120(n)+Δ[A038754(n)]-A038754(n)` -/
def P12087600455894135830.Spec : Prop :=
  ∀ n, P12087600455894135830.a n = A001444 n

end A001444

/-! ## A001444.P1327187469252043245

`Δ[(3-1/gcd(a(n-1), a(n-2)))*a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A001444.P1327187469252043245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (3 - 1 / (Int.gcd (SequenceMachineLib.roundAway (f1 (n - 1))) (SequenceMachineLib.roundAway (f1 (n - 2))) : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001444.P1327187469252043245

namespace A001444

/-- `Δ[(3-1/gcd(a(n-1), a(n-2)))*a(n-1)]` -/
def P1327187469252043245.Spec : Prop :=
  ∀ n, P1327187469252043245.a n = (A001444 n : ℚ)

end A001444

/-! ## A001444.P13429292377655715704

`Δ[A001998(n)]`
-/

namespace A001444.P13429292377655715704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001444.P13429292377655715704

namespace A001444

/-- `Δ[A001998(n)]` -/
def P13429292377655715704.Spec : Prop :=
  ∀ n, P13429292377655715704.a n = A001444 n

end A001444

/-! ## A001444.P13287107950400443049

`A001998(n+1)-A001998(n)`
-/

namespace A001444.P13287107950400443049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 (n + 1) - A001998 n

end

end A001444.P13287107950400443049

namespace A001444

/-- `A001998(n+1)-A001998(n)` -/
def P13287107950400443049.Spec : Prop :=
  ∀ n, P13287107950400443049.a n = A001444 n

end A001444

/-! ## A001444.P7978405083754951773

`A032124(n+1)-A032120(n)`
-/

namespace A001444.P7978405083754951773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032124 (n + 1) - A032120 n

end

end A001444.P7978405083754951773

namespace A001444

/-- `A032124(n+1)-A032120(n)` -/
def P7978405083754951773.Spec : Prop :=
  ∀ n, P7978405083754951773.a n = A001444 n

end A001444

/-! ## A001444.P11276686824270009337

`A000244(n)-A167993(n+1)`
-/

namespace A001444.P11276686824270009337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A167993 (n + 1)

end

end A001444.P11276686824270009337

namespace A001444

/-- `A000244(n)-A167993(n+1)` -/
def P11276686824270009337.Spec : Prop :=
  ∀ n, P11276686824270009337.a n = A001444 n

end A001444

/-!
# A001445: a(n) = (2^n + 2^[ n/2 ] )/2.

The programs for A001445, the canonical program `A001445.P12299181998088527979` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001445 has offset 2).

The definition of A001445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001445.P8248778727364897671

`(2^(n+2)+2^floor((n+2)/2))/2`
-/

namespace A001445.P8248778727364897671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 2) : ℚ) + (2 : ℚ) ^ (⌊(n + 2 : ℚ) / 2⌋ : ℤ)) / 2

end

end A001445.P8248778727364897671

namespace A001445

/-- `(2^(n+2)+2^floor((n+2)/2))/2` -/
def P8248778727364897671.Spec : Prop :=
  ∀ n, P8248778727364897671.a n = (A001445 (n + 2) : ℚ)

end A001445

/-! ## A001445.P12299181998088527979

`2*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=3, a(1)=5, a(2)=10`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001445

/-- `2*a(n-1)+2*a(n-2)-4*a(n-3)` -/
def P12299181998088527979.Spec : Prop :=
  ∀ n, P12299181998088527979.a n = A001445 (n + 2)

theorem P12299181998088527979.correct : P12299181998088527979.Spec := by
  intro n
  simp only [A001445, Nat.add_sub_cancel]

end A001445

/-! ## A001445.P9034315502453941767

`1/2*A005418(n+4)`
-/

namespace A001445.P9034315502453941767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A005418 (n + 4) : ℚ)

end

end A001445.P9034315502453941767

namespace A001445

/-- `1/2*A005418(n+4)` -/
def P9034315502453941767.Spec : Prop :=
  ∀ n, P9034315502453941767.a n = (A001445 (n + 2) : ℚ)

end A001445

/-! ## A001445.P16201530257683848447

`ogf((-3+x+6x^2)/(-1+2x+2x^2-4x^3))`
-/

namespace A001445.P16201530257683848447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, -6] [1, -2, -2, 4] n

end

end A001445.P16201530257683848447

namespace A001445

/-- `ogf((-3+x+6x^2)/(-1+2x+2x^2-4x^3))` -/
def P16201530257683848447.Spec : Prop :=
  ∀ n, P16201530257683848447.a n = A001445 (n + 2)

end A001445

/-! ## A001445.P669462716054573703

`2^n+2*a(n-2)` with `a(0)=3, a(1)=5`
-/

namespace A001445.P669462716054573703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n a =>
  2 ^ n + 2 * a (n - 2)

end

end A001445.P669462716054573703

namespace A001445

/-- `2^n+2*a(n-2)` -/
def P669462716054573703.Spec : Prop :=
  ∀ n, (P669462716054573703.a n : ℤ) = A001445 (n + 2)

end A001445

/-! ## A001445.P10636679872085182930

`floor(a(n-2)+a(n-2)+2^n)` with `a(0)=3, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A001445.P10636679872085182930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n a =>
  a (n - 2) + (a (n - 2) + 2 ^ n)

end

end A001445.P10636679872085182930

namespace A001445

/-- `floor(a(n-2)+a(n-2)+2^n)` -/
def P10636679872085182930.Spec : Prop :=
  ∀ n, (P10636679872085182930.a n : ℤ) = A001445 (n + 2)

end A001445

/-! ## A001445.P14657052588851705594

`A016116(n)+2^(n+1)`
-/

namespace A001445.P14657052588851705594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + (2 ^ (n + 1) : ℤ)

end

end A001445.P14657052588851705594

namespace A001445

/-- `A016116(n)+2^(n+1)` -/
def P14657052588851705594.Spec : Prop :=
  ∀ n, P14657052588851705594.a n = A001445 (n + 2)

end A001445

/-! ## A001445.P216251314563528452

`2^(n+1)+2^A004526(n)`
-/

namespace A001445.P216251314563528452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) + (2 : ℚ) ^ (A004526 n : ℤ)

end

end A001445.P216251314563528452

namespace A001445

/-- `2^(n+1)+2^A004526(n)` -/
def P216251314563528452.Spec : Prop :=
  ∀ n, P216251314563528452.a n = (A001445 (n + 2) : ℚ)

end A001445

/-! ## A001445.P6295059568491537588

`or(2^floor(n/2), A000079(n+1))`
-/

namespace A001445.P6295059568491537588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A000079 (n + 1))

end

end A001445.P6295059568491537588

namespace A001445

/-- `or(2^floor(n/2), A000079(n+1))` -/
def P6295059568491537588.Spec : Prop :=
  ∀ n, P6295059568491537588.a n = A001445 (n + 2)

end A001445

/-! ## A001445.P5631600974898315678

`A052957(n)+A051437(n)`
-/

namespace A001445.P5631600974898315678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052957 n + A051437 n

end

end A001445.P5631600974898315678

namespace A001445

/-- `A052957(n)+A051437(n)` -/
def P5631600974898315678.Spec : Prop :=
  ∀ n, P5631600974898315678.a n = A001445 (n + 2)

end A001445

/-! ## A001445.P13629227110501884664

`A198633(n)+A131572(n)`
-/

namespace A001445.P13629227110501884664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n + A131572 n

end

end A001445.P13629227110501884664

namespace A001445

/-- `A198633(n)+A131572(n)` -/
def P13629227110501884664.Spec : Prop :=
  ∀ n, P13629227110501884664.a n = A001445 (n + 2)

end A001445

/-! ## A001445.P9621737072895185520

`A056309(n+1)+A052548(n)`
-/

namespace A001445.P9621737072895185520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056309 (n + 1) + A052548 n

end

end A001445.P9621737072895185520

namespace A001445

/-- `A056309(n+1)+A052548(n)` -/
def P9621737072895185520.Spec : Prop :=
  ∀ n, P9621737072895185520.a n = A001445 (n + 2)

end A001445

/-! ## A001445.P5682074797062598323

`A164090(n+1)+A122746(n)`
-/

namespace A001445.P5682074797062598323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) + A122746 n

end

end A001445.P5682074797062598323

namespace A001445

/-- `A164090(n+1)+A122746(n)` -/
def P5682074797062598323.Spec : Prop :=
  ∀ n, P5682074797062598323.a n = A001445 (n + 2)

end A001445

/-! ## A001445.P17564851610607495264

`A005418(n+2)+A000079(n)`
-/

namespace A001445.P17564851610607495264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2) + A000079 n

end

end A001445.P17564851610607495264

namespace A001445

/-- `A005418(n+2)+A000079(n)` -/
def P17564851610607495264.Spec : Prop :=
  ∀ n, P17564851610607495264.a n = A001445 (n + 2)

end A001445

/-! ## A001445.P2073541118313296894

`A131577(n+2)+A016116(n)`
-/

namespace A001445.P2073541118313296894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 2) + A016116 n

end

end A001445.P2073541118313296894

namespace A001445

/-- `A131577(n+2)+A016116(n)` -/
def P2073541118313296894.Spec : Prop :=
  ∀ n, P2073541118313296894.a n = A001445 (n + 2)

end A001445

/-! ## A001445.P14575926805976582163

`A135530(2*n)+A016116(n)`
-/

namespace A001445.P14575926805976582163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (2 * n) + A016116 n

end

end A001445.P14575926805976582163

namespace A001445

/-- `A135530(2*n)+A016116(n)` -/
def P14575926805976582163.Spec : Prop :=
  ∀ n, P14575926805976582163.a n = A001445 (n + 2)

end A001445

/-! ## A001445.P12117572747310767626

`or(A000079(n+1), A016116(n))`
-/

namespace A001445.P12117572747310767626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (n + 1)) (A016116 n)

end

end A001445.P12117572747310767626

namespace A001445

/-- `or(A000079(n+1), A016116(n))` -/
def P12117572747310767626.Spec : Prop :=
  ∀ n, P12117572747310767626.a n = A001445 (n + 2)

end A001445

/-! ## A001445.P10545739988244997719

`or(2*A000079(n), A016116(n))`
-/

namespace A001445.P10545739988244997719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A000079 n) (A016116 n)

end

end A001445.P10545739988244997719

namespace A001445

/-- `or(2*A000079(n), A016116(n))` -/
def P10545739988244997719.Spec : Prop :=
  ∀ n, P10545739988244997719.a n = A001445 (n + 2)

end A001445

/-! ## A001445.P6974218084043580403

`A011782(n+1)+A005418(n+2)`
-/

namespace A001445.P6974218084043580403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + A005418 (n + 2)

end

end A001445.P6974218084043580403

namespace A001445

/-- `A011782(n+1)+A005418(n+2)` -/
def P6974218084043580403.Spec : Prop :=
  ∀ n, P6974218084043580403.a n = A001445 (n + 2)

end A001445

/-! ## A001445.P7910215547025233158

`A158780(n+2)+A000079(n+1)`
-/

namespace A001445.P7910215547025233158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 2) + A000079 (n + 1)

end

end A001445.P7910215547025233158

namespace A001445

/-- `A158780(n+2)+A000079(n+1)` -/
def P7910215547025233158.Spec : Prop :=
  ∀ n, P7910215547025233158.a n = A001445 (n + 2)

end A001445

/-!
# A001446: a(n) = (4^n + 4^[n/2])/2.

The programs for A001446, the canonical program `A001446.P17876291638131146532` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001446 has offset 2).

The definition of A001446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001446.P17876291638131146532

`4*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=10, a(1)=34, a(2)=136`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001446

/-- `4*a(n-1)+4*a(n-2)-16*a(n-3)` -/
def P17876291638131146532.Spec : Prop :=
  ∀ n, P17876291638131146532.a n = A001446 (n + 2)

theorem P17876291638131146532.correct : P17876291638131146532.Spec := by
  intro n
  simp only [A001446, Nat.add_sub_cancel]

end A001446

/-! ## A001446.P297915822477113348

`2^n*A049332(n+3)`
-/

namespace A001446.P297915822477113348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A049332 (n + 3)

end

end A001446.P297915822477113348

namespace A001446

/-- `2^n*A049332(n+3)` -/
def P297915822477113348.Spec : Prop :=
  ∀ n, P297915822477113348.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P17520530892441057187

`A131577(2*(n+2))+2^n*gcd(2, n)`
-/

namespace A001446.P17520530892441057187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (2 * (n + 2)) + (2 ^ n * Nat.gcd 2 n : ℤ)

end

end A001446.P17520530892441057187

namespace A001446

/-- `A131577(2*(n+2))+2^n*gcd(2, n)` -/
def P17520530892441057187.Spec : Prop :=
  ∀ n, P17520530892441057187.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P2796985276914830032

`A032121(n+1)+Δ[A083420(n)]`
-/

namespace A001446.P2796985276914830032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032121 (n + 1) + (f1 (n + 1) - f1 n)

end

end A001446.P2796985276914830032

namespace A001446

/-- `A032121(n+1)+Δ[A083420(n)]` -/
def P2796985276914830032.Spec : Prop :=
  ∀ n, P2796985276914830032.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P15768687527674468001

`A140252(n+1)+A087289(n+1)`
-/

namespace A001446.P15768687527674468001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140252 (n + 1) + A087289 (n + 1)

end

end A001446.P15768687527674468001

namespace A001446

/-- `A140252(n+1)+A087289(n+1)` -/
def P15768687527674468001.Spec : Prop :=
  ∀ n, P15768687527674468001.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P8222894481023232262

`A056486(n+1)+A032087(n+2)`
-/

namespace A001446.P8222894481023232262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056486 (n + 1) + A032087 (n + 2)

end

end A001446.P8222894481023232262

namespace A001446

/-- `A056486(n+1)+A032087(n+2)` -/
def P8222894481023232262.Spec : Prop :=
  ∀ n, P8222894481023232262.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P9171030657609992503

`A158302(n+1)+A081294(n+2)`
-/

namespace A001446.P9171030657609992503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158302 (n + 1) + A081294 (n + 2)

end

end A001446.P9171030657609992503

namespace A001446

/-- `A158302(n+1)+A081294(n+2)` -/
def P9171030657609992503.Spec : Prop :=
  ∀ n, P9171030657609992503.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P9912123297468866074

`A028403(n+2)-A122756(n+1)`
-/

namespace A001446.P9912123297468866074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028403 (n + 2) - A122756 (n + 1)

end

end A001446.P9912123297468866074

namespace A001446

/-- `A028403(n+2)-A122756(n+1)` -/
def P9912123297468866074.Spec : Prop :=
  ∀ n, P9912123297468866074.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P17243860597099336307

`2*(A028402(n+2)-A084221(n))`
-/

namespace A001446.P17243860597099336307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028402 (n + 2) - A084221 n)

end

end A001446.P17243860597099336307

namespace A001446

/-- `2*(A028402(n+2)-A084221(n))` -/
def P17243860597099336307.Spec : Prop :=
  ∀ n, P17243860597099336307.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P5877834433826822561

`A158302(n+1)+8*A000079(n)²`
-/

namespace A001446.P5877834433826822561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158302 (n + 1) + 8 * A000079 n ^ 2

end

end A001446.P5877834433826822561

namespace A001446

/-- `A158302(n+1)+8*A000079(n)²` -/
def P5877834433826822561.Spec : Prop :=
  ∀ n, P5877834433826822561.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P748010020773369896

`A158302(2*(n+2))+A158302(n+1)`
-/

namespace A001446.P748010020773369896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158302 (2 * (n + 2)) + A158302 (n + 1)

end

end A001446.P748010020773369896

namespace A001446

/-- `A158302(2*(n+2))+A158302(n+1)` -/
def P748010020773369896.Spec : Prop :=
  ∀ n, P748010020773369896.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P13673094078700405460

`2*A016116(n)²+8*A000079(n)²`
-/

namespace A001446.P13673094078700405460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016116 n ^ 2 + 8 * A000079 n ^ 2

end

end A001446.P13673094078700405460

namespace A001446

/-- `2*A016116(n)²+8*A000079(n)²` -/
def P13673094078700405460.Spec : Prop :=
  ∀ n, P13673094078700405460.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P6330480138014371165

`A032121(n+1)+2*A084221(2*n+1)`
-/

namespace A001446.P6330480138014371165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032121 (n + 1) + 2 * A084221 (2 * n + 1)

end

end A001446.P6330480138014371165

namespace A001446

/-- `A032121(n+1)+2*A084221(2*n+1)` -/
def P6330480138014371165.Spec : Prop :=
  ∀ n, P6330480138014371165.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P13955570513462080869

`8*A000079(n)²+A000225(char[2*n]+n)+1`
-/

namespace A001446.P13955570513462080869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000079 n ^ 2 + (A000225 ((if ∃ j, f1 j = n then 1 else 0) + n) + 1)

end

end A001446.P13955570513462080869

namespace A001446

/-- `8*A000079(n)²+A000225(char[2*n]+n)+1` -/
def P13955570513462080869.Spec : Prop :=
  ∀ n, P13955570513462080869.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P6755242037347572625

`A004171(n+1)+A004171(A004526(n))`
-/

namespace A001446.P6755242037347572625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (n + 1) + A004171 (A004526 n).toNat

end

end A001446.P6755242037347572625

namespace A001446

/-- `A004171(n+1)+A004171(A004526(n))` -/
def P6755242037347572625.Spec : Prop :=
  ∀ n, P6755242037347572625.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P3957221726868649781

`8*A000079(n)²+A000079(A109613(n))`
-/

namespace A001446.P3957221726868649781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000079 n ^ 2 + A000079 (A109613 n).toNat

end

end A001446.P3957221726868649781

namespace A001446

/-- `8*A000079(n)²+A000079(A109613(n))` -/
def P3957221726868649781.Spec : Prop :=
  ∀ n, P3957221726868649781.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P13232688034431095349

`A000079(2*n+3)+A000079(A109613(n))`
-/

namespace A001446.P13232688034431095349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 3) + A000079 (A109613 n).toNat

end

end A001446.P13232688034431095349

namespace A001446

/-- `A000079(2*n+3)+A000079(A109613(n))` -/
def P13232688034431095349.Spec : Prop :=
  ∀ n, P13232688034431095349.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P6393930403279585523

`A000225(A109613(n))+A000051(2*n+3)`
-/

namespace A001446.P6393930403279585523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A109613 n).toNat + A000051 (2 * n + 3)

end

end A001446.P6393930403279585523

namespace A001446

/-- `A000225(A109613(n))+A000051(2*n+3)` -/
def P6393930403279585523.Spec : Prop :=
  ∀ n, P6393930403279585523.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P16781029778153027901

`A004171(n+1)+A084221(n+1)-A000079(n)`
-/

namespace A001446.P16781029778153027901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (n + 1) + (A084221 (n + 1) - A000079 n)

end

end A001446.P16781029778153027901

namespace A001446

/-- `A004171(n+1)+A084221(n+1)-A000079(n)` -/
def P16781029778153027901.Spec : Prop :=
  ∀ n, P16781029778153027901.a n = A001446 (n + 2)

end A001446

/-! ## A001446.P2733349152500019639

`A004171(n+1)+A086893(n+2)-A086893(n+1)`
-/

namespace A001446.P2733349152500019639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (n + 1) + (A086893 (n + 2) - A086893 (n + 1))

end

end A001446.P2733349152500019639

namespace A001446

/-- `A004171(n+1)+A086893(n+2)-A086893(n+1)` -/
def P2733349152500019639.Spec : Prop :=
  ∀ n, P2733349152500019639.a n = A001446 (n + 2)

end A001446

/-!
# A001447: a(n) = (5^n + 5^floor(n/2))/2.

The programs for A001447, the canonical program `A001447.P6487107438615394008` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001447 has offset 0).

The definition of A001447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001447.P6227225257835535858

`(5^n+5^floor(n/2))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001447.P6227225257835535858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℚ) + (5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) / 2

end

end A001447.P6227225257835535858

namespace A001447

/-- `(5^n+5^floor(n/2))/2` -/
def P6227225257835535858.Spec : Prop :=
  ∀ n, P6227225257835535858.a n = (A001447 n : ℚ)

end A001447

/-! ## A001447.P6487107438615394008

`5*a(n-1)+5*a(n-2)-25*a(n-3)` with `a(0)=1, a(1)=3, a(2)=15`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001447

/-- `5*a(n-1)+5*a(n-2)-25*a(n-3)` -/
def P6487107438615394008.Spec : Prop :=
  ∀ n, P6487107438615394008.a n = A001447 n

theorem P6487107438615394008.correct : P6487107438615394008.Spec := by
  intro n
  simp only [A001447]

end A001447

/-! ## A001447.P4210562440000769981

`A034478(A004526(n))+A034478(n)-1`
-/

namespace A001447.P4210562440000769981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 (A004526 n).toNat + (A034478 n - 1)

end

end A001447.P4210562440000769981

namespace A001447

/-- `A034478(A004526(n))+A034478(n)-1` -/
def P4210562440000769981.Spec : Prop :=
  ∀ n, P4210562440000769981.a n = A001447 n

end A001447

/-! ## A001447.P15479571104922536566

`A032122(n)+A056487(n)-A056451(n)`
-/

namespace A001447.P15479571104922536566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032122 n + (A056487 n - A056451 n)

end

end A001447.P15479571104922536566

namespace A001447

/-- `A032122(n)+A056487(n)-A056451(n)` -/
def P15479571104922536566.Spec : Prop :=
  ∀ n, P15479571104922536566.a n = A001447 n

end A001447

/-! ## A001447.P3101952240884822377

`Δ[A121101(n+2)/2]`
-/

namespace A001447.P3101952240884822377
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121101 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001447.P3101952240884822377

namespace A001447

/-- `Δ[A121101(n+2)/2]` -/
def P3101952240884822377.Spec : Prop :=
  ∀ n, P3101952240884822377.a n = (A001447 n : ℚ)

end A001447

/-! ## A001447.P14664524838410362243

`A032122(n+1)/A000351(n+1)*A000351(n)`
-/

namespace A001447.P14664524838410362243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032122 (n + 1) : ℚ) / (A000351 (n + 1) : ℚ) * (A000351 n : ℚ)

end

end A001447.P14664524838410362243

namespace A001447

/-- `A032122(n+1)/A000351(n+1)*A000351(n)` -/
def P14664524838410362243.Spec : Prop :=
  ∀ n, P14664524838410362243.a n = (A001447 n : ℚ)

end A001447

/-! ## A001447.P11714583293589240399

`A073217(A000982(n+1))`
-/

namespace A001447.P11714583293589240399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073217 (A000982 (n + 1)).toNat

end

end A001447.P11714583293589240399

namespace A001447

/-- `A073217(A000982(n+1))` -/
def P11714583293589240399.Spec : Prop :=
  ∀ n, P11714583293589240399.a n = A001447 n

end A001447

/-! ## A001447.P2721620245438983669

`A073217(A099392(n+1)+n)`
-/

namespace A001447.P2721620245438983669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073217 (A099392 (n + 1) + (n : ℤ)).toNat

end

end A001447.P2721620245438983669

namespace A001447

/-- `A073217(A099392(n+1)+n)` -/
def P2721620245438983669.Spec : Prop :=
  ∀ n, P2721620245438983669.a n = A001447 n

end A001447

/-!
# A001448: a(n) = binomial(4n,2n) or (4*n)!/((2*n)!*(2*n)!).

The programs for A001448, the canonical program `A001448.P10146391060409880259` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001448 has offset 0).

The definition of A001448 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*n, 2*n)` (program `A001448.P10146391060409880259`, by `A001448.P10146391060409880259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001448.P6676403900796229286

`A000984(2*n)`
-/

namespace A001448.P6676403900796229286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n)

end

end A001448.P6676403900796229286

namespace A001448

/-- `A000984(2*n)` -/
def P6676403900796229286.Spec : Prop :=
  ∀ n, P6676403900796229286.a n = A001448 n

theorem P6676403900796229286.correct : P6676403900796229286.Spec := by
  intro n
  simp only [A001448, Nat.add_sub_cancel, A001448.P6676403900796229286.a, A001448.P10146391060409880259.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001448

/-! ## A001448.P10146391060409880259

`C(4*n, 2*n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001448

/-- `C(4*n, 2*n)` -/
def P10146391060409880259.Spec : Prop :=
  ∀ n, (P10146391060409880259.a n : ℤ) = A001448 n

theorem P10146391060409880259.correct : P10146391060409880259.Spec := by
  intro n
  simp only [A001448]

end A001448

/-! ## A001448.P6657413189939936561

`(4*n)!/((2*n)!*(2*n)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001448.P6657413189939936561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (4 * n) : ℚ) / (Nat.factorial (2 * n) * Nat.factorial (2 * n) : ℚ)

end

end A001448.P6657413189939936561

namespace A001448

/-- `(4*n)!/((2*n)!*(2*n)!)` -/
def P6657413189939936561.Spec : Prop :=
  ∀ n, P6657413189939936561.a n = (A001448 n : ℚ)

end A001448

/-! ## A001448.P16458013246370767054

`record[(2/n-4)*a(n-1)]` with `a(0)=1`
-/

namespace A001448.P16458013246370767054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 / (n : ℚ) - 4) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001448.P16458013246370767054

namespace A001448

/-- `record[(2/n-4)*a(n-1)]` -/
def P16458013246370767054.Spec : Prop :=
  ∀ n, P16458013246370767054.a n = (A001448 n : ℚ)

end A001448

/-! ## A001448.P9042832072853541706

`record[-(2*(2-n^(-1))*a(n-1))]` with `a(0)=1`
-/

namespace A001448.P9042832072853541706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  -(2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * f1 (n - 1)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001448.P9042832072853541706

namespace A001448

/-- `record[-(2*(2-n^(-1))*a(n-1))]` -/
def P9042832072853541706.Spec : Prop :=
  ∀ n, P9042832072853541706.a n = (A001448 n : ℚ)

end A001448

/-! ## A001448.P6194601804558966889

`A129369(2*n)`
-/

namespace A001448.P6194601804558966889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129369 (2 * n)

end

end A001448.P6194601804558966889

namespace A001448

/-- `A129369(2*n)` -/
def P6194601804558966889.Spec : Prop :=
  ∀ n, P6194601804558966889.a n = A001448 n

end A001448

/-! ## A001448.P6264594218681167778

`A001405(4*n)`
-/

namespace A001448.P6264594218681167778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (4 * n)

end

end A001448.P6264594218681167778

namespace A001448

/-- `A001405(4*n)` -/
def P6264594218681167778.Spec : Prop :=
  ∀ n, P6264594218681167778.a n = A001448 n

end A001448

/-! ## A001448.P14294920564661659034

`A063886(4*n)`
-/

namespace A001448.P14294920564661659034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (4 * n)

end

end A001448.P14294920564661659034

namespace A001448

/-- `A063886(4*n)` -/
def P14294920564661659034.Spec : Prop :=
  ∀ n, P14294920564661659034.a n = A001448 n

end A001448

/-! ## A001448.P6755204517651761920

`A081668(4*n)`
-/

namespace A001448.P6755204517651761920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (4 * n)

end

end A001448.P6755204517651761920

namespace A001448

/-- `A081668(4*n)` -/
def P6755204517651761920.Spec : Prop :=
  ∀ n, P6755204517651761920.a n = A001448 n

end A001448

/-! ## A001448.P753337035396313017

`A089849(4*n)`
-/

namespace A001448.P753337035396313017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 (4 * n)

end

end A001448.P753337035396313017

namespace A001448

/-- `A089849(4*n)` -/
def P753337035396313017.Spec : Prop :=
  ∀ n, P753337035396313017.a n = A001448 n

end A001448

/-!
# A001449: Binomial coefficients binomial(5n,n).

The programs for A001449, the canonical program `A001449.P5242817683919227837` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001449 has offset 0).

The definition of A001449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*n, n)` (program `A001449.P5242817683919227837`, by `A001449.P5242817683919227837.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001449.P5242817683919227837

`C(5*n, n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001449

/-- `C(5*n, n)` -/
def P5242817683919227837.Spec : Prop :=
  ∀ n, (P5242817683919227837.a n : ℤ) = A001449 n

theorem P5242817683919227837.correct : P5242817683919227837.Spec := by
  intro n
  simp only [A001449]

end A001449

/-! ## A001449.P8900207155245306717

`A051052(5*n)`
-/

namespace A001449.P8900207155245306717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051052 (5 * n)

end

end A001449.P8900207155245306717

namespace A001449

/-- `A051052(5*n)` -/
def P8900207155245306717.Spec : Prop :=
  ∀ n, P8900207155245306717.a n = A001449 n

end A001449

/-! ## A001449.P15329535782534345920

`A221315(3*n+n+1)`
-/

namespace A001449.P15329535782534345920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221315 (3 * n + (n + 1))

end

end A001449.P15329535782534345920

namespace A001449

/-- `A221315(3*n+n+1)` -/
def P15329535782534345920.Spec : Prop :=
  ∀ n, P15329535782534345920.a n = A001449 n

end A001449

/-! ## A001449.P4470254706144292854

`(4*n+1)*A002294(n)`
-/

namespace A001449.P4470254706144292854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A002294 n

end

end A001449.P4470254706144292854

namespace A001449

/-- `(4*n+1)*A002294(n)` -/
def P4470254706144292854.Spec : Prop :=
  ∀ n, P4470254706144292854.a n = A001449 n

end A001449

/-! ## A001449.P18154833060460203663

`A002294(n)*A016813(n)`
-/

namespace A001449.P18154833060460203663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A016813 n

end

end A001449.P18154833060460203663

namespace A001449

/-- `A002294(n)*A016813(n)` -/
def P18154833060460203663.Spec : Prop :=
  ∀ n, P18154833060460203663.a n = A001449 n

end A001449

/-! ## A001449.P8513492745582987661

`A002294(n)*A005408(2*n)`
-/

namespace A001449.P8513492745582987661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A005408 (2 * n)

end

end A001449.P8513492745582987661

namespace A001449

/-- `A002294(n)*A005408(2*n)` -/
def P8513492745582987661.Spec : Prop :=
  ∀ n, P8513492745582987661.a n = A001449 n

end A001449

/-! ## A001449.P5201943510457268596

`A079589(n)-n*A002294(n)`
-/

namespace A001449.P5201943510457268596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079589 n - (n : ℤ) * A002294 n

end

end A001449.P5201943510457268596

namespace A001449

/-- `A079589(n)-n*A002294(n)` -/
def P5201943510457268596.Spec : Prop :=
  ∀ n, P5201943510457268596.a n = A001449 n

end A001449

/-! ## A001449.P10155906528263964548

`A002294(n)*A004273(A005408(n))`
-/

namespace A001449.P10155906528263964548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A004273 (A005408 n).toNat

end

end A001449.P10155906528263964548

namespace A001449

/-- `A002294(n)*A004273(A005408(n))` -/
def P10155906528263964548.Spec : Prop :=
  ∀ n, P10155906528263964548.a n = A001449 n

end A001449

/-! ## A001449.P18029695750577431362

`record[C(n, lcm(5, n)/gcd(5, n))]`
-/

namespace A001449.P18029695750577431362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.roundAway ((Nat.lcm 5 n : ℚ) / (Nat.gcd 5 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001449.P18029695750577431362

namespace A001449

/-- `record[C(n, lcm(5, n)/gcd(5, n))]` -/
def P18029695750577431362.Spec : Prop :=
  ∀ n, (P18029695750577431362.a n : ℤ) = A001449 n

end A001449

/-! ## A001449.P7726578249100587530

`record[C(n, A283442(n))]`
-/

namespace A001449.P7726578249100587530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A283442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001449.P7726578249100587530

namespace A001449

/-- `record[C(n, A283442(n))]` -/
def P7726578249100587530.Spec : Prop :=
  ∀ n, (P7726578249100587530.a n : ℤ) = A001449 n

end A001449

/-!
# A001450: a(n) = binomial(5*n,2*n).

The programs for A001450, the canonical program `A001450.P15480000550435913586` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001450 has offset 0).

The definition of A001450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*n, 2*n)` (program `A001450.P15480000550435913586`, by `A001450.P15480000550435913586.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001450.P15480000550435913586

`C(5*n, 2*n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001450

/-- `C(5*n, 2*n)` -/
def P15480000550435913586.Spec : Prop :=
  ∀ n, (P15480000550435913586.a n : ℤ) = A001450 n

theorem P15480000550435913586.correct : P15480000550435913586.Spec := by
  intro n
  simp only [A001450]

end A001450

/-! ## A001450.P2133541071556865868

`A190152(∑[4*n])`
-/

namespace A001450.P2133541071556865868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190152 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001450.P2133541071556865868

namespace A001450

/-- `A190152(∑[4*n])` -/
def P2133541071556865868.Spec : Prop :=
  ∀ n, P2133541071556865868.a n = A001450 n

end A001450

/-! ## A001450.P8046994009889665602

`A001449(n)/A000984(n)*A005810(n)`
-/

namespace A001450.P8046994009889665602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001449 n : ℚ) / (A000984 n : ℚ) * (A005810 n : ℚ)

end

end A001450.P8046994009889665602

namespace A001450

/-- `A001449(n)/A000984(n)*A005810(n)` -/
def P8046994009889665602.Spec : Prop :=
  ∀ n, P8046994009889665602.a n = (A001450 n : ℚ)

end A001450

/-! ## A001450.P14640203438484916725

`record[C(A195140(n), n)]`
-/

namespace A001450.P14640203438484916725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A195140 n).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001450.P14640203438484916725

namespace A001450

/-- `record[C(A195140(n), n)]` -/
def P14640203438484916725.Spec : Prop :=
  ∀ n, (P14640203438484916725.a n : ℤ) = A001450 n

end A001450

/-! ## A001450.P3312850858341608453

`record[C(A135089(n), A073107(n))]`
-/

namespace A001450.P3312850858341608453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135089 n).toNat (A073107 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001450.P3312850858341608453

namespace A001450

/-- `record[C(A135089(n), A073107(n))]` -/
def P3312850858341608453.Spec : Prop :=
  ∀ n, (P3312850858341608453.a n : ℤ) = A001450 n

end A001450

/-! ## A001450.P3978413980391366631

`record[C(A025480(n), A283442(n))]`
-/

namespace A001450.P3978413980391366631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025480 n).toNat (A283442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001450.P3978413980391366631

namespace A001450

/-- `record[C(A025480(n), A283442(n))]` -/
def P3978413980391366631.Spec : Prop :=
  ∀ n, (P3978413980391366631.a n : ℤ) = A001450 n

end A001450

/-! ## A001450.P12612233556365705493

`A046899(A062728(n))`
-/

namespace A001450.P12612233556365705493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A062728 n).toNat

end

end A001450.P12612233556365705493

namespace A001450

/-- `A046899(A062728(n))` -/
def P12612233556365705493.Spec : Prop :=
  ∀ n, P12612233556365705493.a n = A001450 n

end A001450

/-! ## A001450.P292503326989676888

`A046899(A027468(n)-n)`
-/

namespace A001450.P292503326989676888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A027468 n - (n : ℤ)).toNat

end

end A001450.P292503326989676888

namespace A001450

/-- `A046899(A027468(n)-n)` -/
def P292503326989676888.Spec : Prop :=
  ∀ n, P292503326989676888.a n = A001450 n

end A001450

/-! ## A001450.P7067745941808628152

`A046899(A008585(A045943(n))-n)`
-/

namespace A001450.P7067745941808628152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A008585 (A045943 n).toNat - (n : ℤ)).toNat

end

end A001450.P7067745941808628152

namespace A001450

/-- `A046899(A008585(A045943(n))-n)` -/
def P7067745941808628152.Spec : Prop :=
  ∀ n, P7067745941808628152.a n = A001450 n

end A001450

/-! ## A001450.P9881009598606322309

`A092392(A062725(n))`
-/

namespace A001450.P9881009598606322309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A062725 n).toNat

end

end A001450.P9881009598606322309

namespace A001450

/-- `A092392(A062725(n))` -/
def P9881009598606322309.Spec : Prop :=
  ∀ n, P9881009598606322309.a n = A001450 n

end A001450

/-!
# A001451: a(n) = (5*n)!/((3*n)!*n!*n!).

The programs for A001451, the canonical program `A001451.P5145639856277284048` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001451 has offset 0).

The definition of A001451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001451.P5145639856277284048

`C(5*n, 2*n)*C(2*n, n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001451

/-- `C(5*n, 2*n)*C(2*n, n)` -/
def P5145639856277284048.Spec : Prop :=
  ∀ n, (P5145639856277284048.a n : ℤ) = A001451 n

theorem P5145639856277284048.correct : P5145639856277284048.Spec := by
  intro n
  simp only [A001451]

end A001451

/-! ## A001451.P11410090921123935545

`C(4*n, n)*A001449(n)`
-/

namespace A001451.P11410090921123935545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) n : ℤ) * A001449 n

end

end A001451.P11410090921123935545

namespace A001451

/-- `C(4*n, n)*A001449(n)` -/
def P11410090921123935545.Spec : Prop :=
  ∀ n, P11410090921123935545.a n = A001451 n

end A001451

/-! ## A001451.P13468655978340336213

`C(5*n, n)*A005810(n)`
-/

namespace A001451.P13468655978340336213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n) n : ℤ) * A005810 n

end

end A001451.P13468655978340336213

namespace A001451

/-- `C(5*n, n)*A005810(n)` -/
def P13468655978340336213.Spec : Prop :=
  ∀ n, P13468655978340336213.a n = A001451 n

end A001451

/-! ## A001451.P1678641159750320504

`C(4*n, n)*A051052(5*n)`
-/

namespace A001451.P1678641159750320504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) n : ℤ) * A051052 (5 * n)

end

end A001451.P1678641159750320504

namespace A001451

/-- `C(4*n, n)*A051052(5*n)` -/
def P1678641159750320504.Spec : Prop :=
  ∀ n, P1678641159750320504.a n = A001451 n

end A001451

/-! ## A001451.P3619616040737337561

`A000984(n)*A001450(n)`
-/

namespace A001451.P3619616040737337561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A001450 n

end

end A001451.P3619616040737337561

namespace A001451

/-- `A000984(n)*A001450(n)` -/
def P3619616040737337561.Spec : Prop :=
  ∀ n, P3619616040737337561.a n = A001451 n

theorem P3619616040737337561.correct : P3619616040737337561.Spec := by
  intro n
  simp only [A001451, Nat.add_sub_cancel, A001451.P3619616040737337561.a, A001451.P5145639856277284048.a, A000984, A000984.P7946844122574426130.a, A001450, A001450.P15480000550435913586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001451

/-! ## A001451.P15555254958391331406

`A001449(n)*A005810(n)`
-/

namespace A001451.P15555254958391331406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001449 n * A005810 n

end

end A001451.P15555254958391331406

namespace A001451

/-- `A001449(n)*A005810(n)` -/
def P15555254958391331406.Spec : Prop :=
  ∀ n, P15555254958391331406.a n = A001451 n

end A001451

/-! ## A001451.P7386747426144225033

`A005810(n)*A051052(5*n)`
-/

namespace A001451.P7386747426144225033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n * A051052 (5 * n)

end

end A001451.P7386747426144225033

namespace A001451

/-- `A005810(n)*A051052(5*n)` -/
def P7386747426144225033.Spec : Prop :=
  ∀ n, P7386747426144225033.a n = A001451 n

end A001451

/-! ## A001451.P17159046980750962829

`A001449(n)*A062344(A046092(n))`
-/

namespace A001451.P17159046980750962829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001449 n * A062344 (A046092 n).toNat

end

end A001451.P17159046980750962829

namespace A001451

/-- `A001449(n)*A062344(A046092(n))` -/
def P17159046980750962829.Spec : Prop :=
  ∀ n, P17159046980750962829.a n = A001451 n

end A001451

/-! ## A001451.P14152481729360470160

`A001449(n)*A119304(A000217(n))`
-/

namespace A001451.P14152481729360470160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001449 n * A119304 (A000217 n).toNat

end

end A001451.P14152481729360470160

namespace A001451

/-- `A001449(n)*A119304(A000217(n))` -/
def P14152481729360470160.Spec : Prop :=
  ∀ n, P14152481729360470160.a n = A001451 n

end A001451

/-! ## A001451.P12296485371114087425

`A001449(n)*A092392(A062728(n))`
-/

namespace A001451.P12296485371114087425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001449 n * A092392 (A062728 n).toNat

end

end A001451.P12296485371114087425

namespace A001451

/-- `A001449(n)*A092392(A062728(n))` -/
def P12296485371114087425.Spec : Prop :=
  ∀ n, P12296485371114087425.a n = A001451 n

end A001451

/-!
# A001452: Number of 5-line partitions of n.

The programs for A001452, there is no canonical definition to state claims against.
-/

/-! ## A001452.P915019606771060197

`A242641(∑[n+5]+6)`
-/

namespace A001452.P915019606771060197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A001452.P915019606771060197

/-! ## A001452.P9205499687385199608

`gcd(C(2, n+2), A242641(A046691(n+3)))`
-/

namespace A001452.P9205499687385199608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A242641 (A046691 (n + 3)).toNat)

end

end A001452.P9205499687385199608

/-! ## A001452.P4903453786788305273

`A242641(A046691(n+3))%A021011(n)`
-/

namespace A001452.P4903453786788305273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242641 (A046691 (n + 3)).toNat) (A021011 n)

end

end A001452.P4903453786788305273

/-! ## A001452.P2217983138867982910

`or(A000007(n), A242641(A046691(n+3)))`
-/

namespace A001452.P2217983138867982910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A242641 (A046691 (n + 3)).toNat)

end

end A001452.P2217983138867982910

/-! ## A001452.P7083685713235595014

`A242641(A000124(n+5)-5)%A000051(n)`
-/

namespace A001452.P7083685713235595014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242641 (A000124 (n + 5) - 5).toNat) (A000051 n)

end

end A001452.P7083685713235595014

/-! ## A001452.P3695163634481367381

`or(A019590(n+1), A242641(A000124(n+5)-5))`
-/

namespace A001452.P3695163634481367381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019590 (n + 1)) (A242641 (A000124 (n + 5) - 5).toNat)

end

end A001452.P3695163634481367381

/-! ## A001452.P15040019020856272837

`A001511(A001844(n))*A242641(A000124(n+5)-5)`
-/

namespace A001452.P15040019020856272837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001844 n).toNat * A242641 (A000124 (n + 5) - 5).toNat

end

end A001452.P15040019020856272837

/-!
# A001453: Catalan numbers - 1.

The programs for A001453, the canonical program `A001453.P10090653544380295411` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001453 has offset 2).

The definition of A001453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001453.P10090653544380295411

`A000108(n+2)-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001453

/-- `A000108(n+2)-1` -/
def P10090653544380295411.Spec : Prop :=
  ∀ n, P10090653544380295411.a n = A001453 (n + 2)

theorem P10090653544380295411.correct : P10090653544380295411.Spec := by
  intro n
  simp only [A001453, Nat.add_sub_cancel]

end A001453

/-! ## A001453.P17619423767968754491

`C(2*(n+2), n+2)/(n+3)-1`
-/

namespace A001453.P17619423767968754491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 2)) (n + 2) : ℚ) / (n + 3 : ℚ) - 1

end

end A001453.P17619423767968754491

namespace A001453

/-- `C(2*(n+2), n+2)/(n+3)-1` -/
def P17619423767968754491.Spec : Prop :=
  ∀ n, P17619423767968754491.a n = (A001453 (n + 2) : ℚ)

end A001453

/-! ## A001453.P12901192432377872958

`∏[(n-3)/(n+3)+3]-1`
-/

namespace A001453.P12901192432377872958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) / (n + 3 : ℚ) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001453.P12901192432377872958

namespace A001453

/-- `∏[(n-3)/(n+3)+3]-1` -/
def P12901192432377872958.Spec : Prop :=
  ∀ n, P12901192432377872958.a n = (A001453 (n + 2) : ℚ)

end A001453

/-! ## A001453.P3122813941779696327

`record[A141364(n)]`
-/

namespace A001453.P3122813941779696327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001453.P3122813941779696327

namespace A001453

/-- `record[A141364(n)]` -/
def P3122813941779696327.Spec : Prop :=
  ∀ n, P3122813941779696327.a n = A001453 (n + 2)

end A001453

/-! ## A001453.P17040873609508545855

`A141364(n+2)`
-/

namespace A001453.P17040873609508545855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141364 (n + 2)

end

end A001453.P17040873609508545855

namespace A001453

/-- `A141364(n+2)` -/
def P17040873609508545855.Spec : Prop :=
  ∀ n, P17040873609508545855.a n = A001453 (n + 2)

end A001453

/-! ## A001453.P13217606277513459641

`∑[∑[A026012(n)]]`
-/

namespace A001453.P13217606277513459641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001453.P13217606277513459641

namespace A001453

/-- `∑[∑[A026012(n)]]` -/
def P13217606277513459641.Spec : Prop :=
  ∀ n, P13217606277513459641.a n = A001453 (n + 2)

end A001453

/-! ## A001453.P864386626161848097

`∑[A000245(n+1)]`
-/

namespace A001453.P864386626161848097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001453.P864386626161848097

namespace A001453

/-- `∑[A000245(n+1)]` -/
def P864386626161848097.Spec : Prop :=
  ∀ n, P864386626161848097.a n = A001453 (n + 2)

end A001453

/-! ## A001453.P11054228354873030025

`∑[A071724(n+1)]`
-/

namespace A001453.P11054228354873030025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001453.P11054228354873030025

namespace A001453

/-- `∑[A071724(n+1)]` -/
def P11054228354873030025.Spec : Prop :=
  ∀ n, P11054228354873030025.a n = A001453 (n + 2)

end A001453

/-! ## A001453.P14073405702014215796

`∑[record[abs(A115142(n))]]`
-/

namespace A001453.P14073405702014215796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115142 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001453.P14073405702014215796

namespace A001453

/-- `∑[record[abs(A115142(n))]]` -/
def P14073405702014215796.Spec : Prop :=
  ∀ n, P14073405702014215796.a n = A001453 (n + 2)

end A001453

/-! ## A001453.P17660702818733418597

`∑[abs(A115142(n+3))]`
-/

namespace A001453.P17660702818733418597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115142 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001453.P17660702818733418597

namespace A001453

/-- `∑[abs(A115142(n+3))]` -/
def P17660702818733418597.Spec : Prop :=
  ∀ n, P17660702818733418597.a n = A001453 (n + 2)

end A001453

/-! ## A001453.P1967827999255799498

`∑[∑[A071738(n+1)]]`
-/

namespace A001453.P1967827999255799498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001453.P1967827999255799498

namespace A001453

/-- `∑[∑[A071738(n+1)]]` -/
def P1967827999255799498.Spec : Prop :=
  ∀ n, P1967827999255799498.a n = A001453 (n + 2)

end A001453

/-! ## A001453.P18364136689891546922

`∑[∑[A026021(2*n)]]`
-/

namespace A001453.P18364136689891546922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001453.P18364136689891546922

namespace A001453

/-- `∑[∑[A026021(2*n)]]` -/
def P18364136689891546922.Spec : Prop :=
  ∀ n, P18364136689891546922.a n = A001453 (n + 2)

end A001453

/-! ## A001453.P10153195235752616130

`∑[A026008(2*n+1)]`
-/

namespace A001453.P10153195235752616130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001453.P10153195235752616130

namespace A001453

/-- `∑[A026008(2*n+1)]` -/
def P10153195235752616130.Spec : Prop :=
  ∀ n, P10153195235752616130.a n = A001453 (n + 2)

end A001453

/-! ## A001453.P1711203210360228247

`∑[abs(Δ[A000108(n+1)])]`
-/

namespace A001453.P1711203210360228247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001453.P1711203210360228247

namespace A001453

/-- `∑[abs(Δ[A000108(n+1)])]` -/
def P1711203210360228247.Spec : Prop :=
  ∀ n, P1711203210360228247.a n = A001453 (n + 2)

end A001453

/-! ## A001453.P18250465877118484973

`record[abs(1-A126120(n+1))]`
-/

namespace A001453.P18250465877118484973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A126120 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001453.P18250465877118484973

namespace A001453

/-- `record[abs(1-A126120(n+1))]` -/
def P18250465877118484973.Spec : Prop :=
  ∀ n, P18250465877118484973.a n = A001453 (n + 2)

end A001453

/-! ## A001453.P10898421647309593930

`record[A000108(abs(2-n))-1]`
-/

namespace A001453.P10898421647309593930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 |2 - (n : ℤ)|.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001453.P10898421647309593930

namespace A001453

/-- `record[A000108(abs(2-n))-1]` -/
def P10898421647309593930.Spec : Prop :=
  ∀ n, P10898421647309593930.a n = A001453 (n + 2)

end A001453

/-! ## A001453.P1340922361881149713

`∑[Δ[A246604(n+1)]+1]`
-/

namespace A001453.P1340922361881149713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001453.P1340922361881149713

namespace A001453

/-- `∑[Δ[A246604(n+1)]+1]` -/
def P1340922361881149713.Spec : Prop :=
  ∀ n, P1340922361881149713.a n = A001453 (n + 2)

end A001453

/-! ## A001453.P15793712464739129348

`record[Δ[A182492(2*n+1)]-1]`
-/

namespace A001453.P15793712464739129348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001453.P15793712464739129348

namespace A001453

/-- `record[Δ[A182492(2*n+1)]-1]` -/
def P15793712464739129348.Spec : Prop :=
  ∀ n, P15793712464739129348.a n = A001453 (n + 2)

end A001453

/-! ## A001453.P5179113851988229065

`abs(1-A000108(2*n-(n-2)))`
-/

namespace A001453.P5179113851988229065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000108 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat|

end

end A001453.P5179113851988229065

namespace A001453

/-- `abs(1-A000108(2*n-(n-2)))` -/
def P5179113851988229065.Spec : Prop :=
  ∀ n, P5179113851988229065.a n = A001453 (n + 2)

end A001453

/-! ## A001453.P3128817163316668724

`A349740(A000124(n+2)+n)`
-/

namespace A001453.P3128817163316668724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349740 (A000124 (n + 2) + (n : ℤ)).toNat

end

end A001453.P3128817163316668724

namespace A001453

/-- `A349740(A000124(n+2)+n)` -/
def P3128817163316668724.Spec : Prop :=
  ∀ n, P3128817163316668724.a n = A001453 (n + 2)

end A001453

/-!
# A001454: Number of permutations of length n with longest increasing subsequence of length 3.

The programs for A001454, there is no canonical definition to state claims against.
-/

/-! ## A001454.P14140172438796254094

`A047874(∑[n+2]+4)`
-/

namespace A001454.P14140172438796254094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A001454.P14140172438796254094

/-! ## A001454.P3358138220217637910

`record[gcd(A047874(n+4), A214015(n))]`
-/

namespace A001454.P3358138220217637910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047874 (n + 4)) (A214015 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001454.P3358138220217637910

/-! ## A001454.P12219118898517764627

`gcd(A000038(n), A047874(A167614(n+1)))`
-/

namespace A001454.P12219118898517764627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A047874 (A167614 (n + 1)).toNat)

end

end A001454.P12219118898517764627

/-! ## A001454.P6806142709574516986

`A047874(A167614(n+1))%A231217(n+1)`
-/

namespace A001454.P6806142709574516986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047874 (A167614 (n + 1)).toNat) (A231217 (n + 1))

end

end A001454.P6806142709574516986

/-! ## A001454.P12576498004833643087

`A000035(4*n+3)*A047874(A167614(n+1))`
-/

namespace A001454.P12576498004833643087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (4 * n + 3) * A047874 (A167614 (n + 1)).toNat

end

end A001454.P12576498004833643087

/-! ## A001454.P167233972709789536

`A126065(∑[n+3]+1)`
-/

namespace A001454.P167233972709789536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001454.P167233972709789536

/-!
# A001455: Number of permutations of length n with longest increasing subsequence of length 4.

The programs for A001455, there is no canonical definition to state claims against.
-/

/-! ## A001455.P100910971464730781

`A047874(A052905(n)+9)`
-/

namespace A001455.P100910971464730781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (A052905 n + 9).toNat

end

end A001455.P100910971464730781

/-! ## A001455.P17591907021633654975

`A126065(A055998(n+2))`
-/

namespace A001455.P17591907021633654975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (A055998 (n + 2)).toNat

end

end A001455.P17591907021633654975

/-! ## A001455.P16889935102614454986

`A126065(A155212(n)+5)`
-/

namespace A001455.P16889935102614454986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (A155212 n + 5).toNat

end

end A001455.P16889935102614454986

/-! ## A001455.P8921869406548260672

`A126065(eq[3, A193592(n)])`
-/

namespace A001455.P8921869406548260672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001455.P8921869406548260672

/-! ## A001455.P12670926575559477997

`A126065(eq[2, A057728(n+1)-2])`
-/

namespace A001455.P12670926575559477997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001455.P12670926575559477997

/-! ## A001455.P10439561301952723441

`A126065(eq[2, A185782(n+1)-2])`
-/

namespace A001455.P10439561301952723441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001455.P10439561301952723441

/-! ## A001455.P6995674401220177704

`A126065(eq[2, A057728(n+1)/2])`
-/

namespace A001455.P6995674401220177704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057728 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A001455.P6995674401220177704

/-! ## A001455.P9982352208906038756

`A126065(eq[2, A185782(n+1)/2])`
-/

namespace A001455.P9982352208906038756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185782 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A001455.P9982352208906038756

/-! ## A001455.P3027930770359264378

`A126065(A046691(n)+A020744(n))`
-/

namespace A001455.P3027930770359264378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (A046691 n + A020744 n).toNat

end

end A001455.P3027930770359264378

/-! ## A001455.P12377774384321282773

`A126065(A167614(n+1)+A005408(n))`
-/

namespace A001455.P12377774384321282773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (A167614 (n + 1) + A005408 n).toNat

end

end A001455.P12377774384321282773

/-!
# A001456: Number of permutations of length n with longest increasing subsequence of length 5.

The programs for A001456, there is no canonical definition to state claims against.
-/

/-! ## A001456.P2130371799085128441

`A047874(A000124(n+4)+4)`
-/

namespace A001456.P2130371799085128441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (A000124 (n + 4) + 4).toNat

end

end A001456.P2130371799085128441

/-! ## A001456.P16680859492051748143

`A047874(n+10+A000096(n+2))`
-/

namespace A001456.P16680859492051748143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 ((n + 10 : ℤ) + A000096 (n + 2)).toNat

end

end A001456.P16680859492051748143

/-! ## A001456.P9194868319730918397

`A047874(A038722(Δ[A023545(n+1)]))`
-/

namespace A001456.P9194868319730918397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A001456.P9194868319730918397

/-! ## A001456.P15377158158461811472

`A126065(A046691(n+3))`
-/

namespace A001456.P15377158158461811472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (A046691 (n + 3)).toNat

end

end A001456.P15377158158461811472

/-! ## A001456.P8160776027193143537

`A126065(eq[4, A193592(n)])`
-/

namespace A001456.P8160776027193143537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001456.P8160776027193143537

/-! ## A001456.P11978157862917455675

`A126065(Δ[A023545(n+1)])`
-/

namespace A001456.P11978157862917455675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (f1 (n + 1) - f1 n).toNat

end

end A001456.P11978157862917455675

/-! ## A001456.P6571725785625314965

`A126065(∑[A020710(n)]+6)`
-/

namespace A001456.P6571725785625314965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A001456.P6571725785625314965

/-! ## A001456.P16505050858572381524

`A126065(eq[8, A057728(n+1)])`
-/

namespace A001456.P16505050858572381524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001456.P16505050858572381524

/-!
# A001457: Number of permutations of length n with longest increasing subsequence of length 6.

The programs for A001457, there is no canonical definition to state claims against.
-/

/-! ## A001457.P282149604727998100

`A047874(A166136(n+4))`
-/

namespace A001457.P282149604727998100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (A166136 (n + 4)).toNat

end

end A001457.P282149604727998100

/-! ## A001457.P8372072680652619689

`A047874(eq[7, A131818(n+1)])`
-/

namespace A001457.P8372072680652619689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001457.P8372072680652619689

/-! ## A001457.P6847177066374359834

`A047874(Δ[A023545(n+1)]+10)`
-/

namespace A001457.P6847177066374359834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (f1 (n + 1) - f1 n + 10).toNat

end

end A001457.P6847177066374359834

/-! ## A001457.P14433526336245909564

`A126065(eq[3, A219347(n)])`
-/

namespace A001457.P14433526336245909564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001457.P14433526336245909564

/-! ## A001457.P7738689427417178067

`A126065(eq[5, A193592(n)])`
-/

namespace A001457.P7738689427417178067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001457.P7738689427417178067

/-! ## A001457.P13281784089122812936

`A126065(eq[16, A057728(n+1)])`
-/

namespace A001457.P13281784089122812936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001457.P13281784089122812936

/-! ## A001457.P11567423074777762607

`A126065(Δ[A023545(n+2)]-1)`
-/

namespace A001457.P11567423074777762607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (f1 (n + 1) - f1 n - 1).toNat

end

end A001457.P11567423074777762607

/-! ## A001457.P8292234868278748725

`A126065(A166136(n+3)+2*n)`
-/

namespace A001457.P8292234868278748725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (A166136 (n + 3) + (2 * n : ℤ)).toNat

end

end A001457.P8292234868278748725

/-! ## A001457.P10212139392869267276

`A126065(A020710(n)+Δ[A023545(n+1)])`
-/

namespace A001457.P10212139392869267276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (A020710 n + (f1 (n + 1) - f1 n)).toNat

end

end A001457.P10212139392869267276

/-!
# A001458: Number of permutations of length n with longest increasing subsequence of length 7.

The programs for A001458, there is no canonical definition to state claims against.
-/

/-! ## A001458.P2924378962199015510

`A047874(eq[8, A131818(n+1)])`
-/

namespace A001458.P2924378962199015510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001458.P2924378962199015510

/-! ## A001458.P3748142227896186964

`A126065(eq[4, A219347(n)])`
-/

namespace A001458.P3748142227896186964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001458.P3748142227896186964

/-! ## A001458.P907520937141485210

`A126065(eq[6, A193592(n)])`
-/

namespace A001458.P907520937141485210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001458.P907520937141485210

/-! ## A001458.P11157837428247390726

`A126065(eq[10, A185782(n+1)])`
-/

namespace A001458.P11157837428247390726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001458.P11157837428247390726

/-! ## A001458.P8064014355235018079

`A126065(eq[32, A057728(n+1)])`
-/

namespace A001458.P8064014355235018079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001458.P8064014355235018079

/-! ## A001458.P10710500918755057543

`A126065(Δ[A023545(n+1)+A020710(n)²])`
-/

namespace A001458.P10710500918755057543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) + A020710 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126065 (f1 (n + 1) - f1 n).toNat

end

end A001458.P10710500918755057543

/-!
# A001459: a(n) = (5*n)!/((2*n)!*(2*n)!*n!).

The programs for A001459, the canonical program `A001459.P12379512137492819835` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001459 has offset 0).

The definition of A001459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001459.P12379512137492819835

`C(5*n, 2*n)*C(3*n, n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001459

/-- `C(5*n, 2*n)*C(3*n, n)` -/
def P12379512137492819835.Spec : Prop :=
  ∀ n, (P12379512137492819835.a n : ℤ) = A001459 n

theorem P12379512137492819835.correct : P12379512137492819835.Spec := by
  intro n
  simp only [A001459]

end A001459

/-! ## A001459.P2310991461525615074

`A063007(A062728(n))`
-/

namespace A001459.P2310991461525615074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 (A062728 n).toNat

end

end A001459.P2310991461525615074

namespace A001459

/-- `A063007(A062728(n))` -/
def P2310991461525615074.Spec : Prop :=
  ∀ n, P2310991461525615074.a n = A001459 n

end A001459

/-! ## A001459.P8506643174469704343

`A104684(A062725(n))`
-/

namespace A001459.P8506643174469704343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 (A062725 n).toNat

end

end A001459.P8506643174469704343

namespace A001459

/-- `A104684(A062725(n))` -/
def P8506643174469704343.Spec : Prop :=
  ∀ n, P8506643174469704343.a n = A001459 n

end A001459

/-! ## A001459.P2210973019747602991

`A001448(n)*A001449(n)`
-/

namespace A001459.P2210973019747602991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n * A001449 n

end

end A001459.P2210973019747602991

namespace A001459

/-- `A001448(n)*A001449(n)` -/
def P2210973019747602991.Spec : Prop :=
  ∀ n, P2210973019747602991.a n = A001459 n

end A001459

/-! ## A001459.P7167875685867443973

`A001450(n)*A005809(n)`
-/

namespace A001459.P7167875685867443973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001450 n * A005809 n

end

end A001459.P7167875685867443973

namespace A001459

/-- `A001450(n)*A005809(n)` -/
def P7167875685867443973.Spec : Prop :=
  ∀ n, P7167875685867443973.a n = A001459 n

theorem P7167875685867443973.correct : P7167875685867443973.Spec := by
  intro n
  simp only [A001459, Nat.add_sub_cancel, A001459.P7167875685867443973.a, A001459.P12379512137492819835.a, A001450, A001450.P15480000550435913586.a, A005809, A005809.P15087077436016713419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001459

/-!
# A001460: a(n) = (5*n)!/((2*n)!*(n!)^3).

The programs for A001460, the canonical program `A001460.P9154710953866965039` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001460 has offset 0).

The definition of A001460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001460.P9154710953866965039

`C(3*n, n)*C(4*n, n)*C(5*n, n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001460

/-- `C(3*n, n)*C(4*n, n)*C(5*n, n)` -/
def P9154710953866965039.Spec : Prop :=
  ∀ n, (P9154710953866965039.a n : ℤ) = A001460 n

theorem P9154710953866965039.correct : P9154710953866965039.Spec := by
  intro n
  simp only [A001460]

end A001460

/-! ## A001460.P11384043950254448139

`A008978(n)/A000984(n)`
-/

namespace A001460.P11384043950254448139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008978 n : ℚ) / (A000984 n : ℚ)

end

end A001460.P11384043950254448139

namespace A001460

/-- `A008978(n)/A000984(n)` -/
def P11384043950254448139.Spec : Prop :=
  ∀ n, P11384043950254448139.a n = (A001460 n : ℚ)

end A001460

/-! ## A001460.P16634017113727834441

`C(3*n, n)*C(4*n, n)*A001449(n)`
-/

namespace A001460.P16634017113727834441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n * Nat.choose (4 * n) n : ℤ) * A001449 n

end

end A001460.P16634017113727834441

namespace A001460

/-- `C(3*n, n)*C(4*n, n)*A001449(n)` -/
def P16634017113727834441.Spec : Prop :=
  ∀ n, P16634017113727834441.a n = A001460 n

theorem P16634017113727834441.correct : P16634017113727834441.Spec := by
  intro n
  simp only [A001460, Nat.add_sub_cancel, A001460.P16634017113727834441.a, A001460.P9154710953866965039.a, A001449, A001449.P5242817683919227837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001460

/-! ## A001460.P6562713047727349189

`C(4*n, n)*C(5*n, n)*A005809(n)`
-/

namespace A001460.P6562713047727349189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) n * Nat.choose (5 * n) n : ℤ) * A005809 n

end

end A001460.P6562713047727349189

namespace A001460

/-- `C(4*n, n)*C(5*n, n)*A005809(n)` -/
def P6562713047727349189.Spec : Prop :=
  ∀ n, P6562713047727349189.a n = A001460 n

theorem P6562713047727349189.correct : P6562713047727349189.Spec := by
  intro n
  simp only [A001460, Nat.add_sub_cancel, A001460.P6562713047727349189.a, A001460.P9154710953866965039.a, A005809, A005809.P15087077436016713419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001460

/-! ## A001460.P769578155083702543

`A000897(n)*A001449(n)`
-/

namespace A001460.P769578155083702543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000897 n * A001449 n

end

end A001460.P769578155083702543

namespace A001460

/-- `A000897(n)*A001449(n)` -/
def P769578155083702543.Spec : Prop :=
  ∀ n, P769578155083702543.a n = A001460 n

end A001460

/-!
# A001461: Partial sums of A006206.

The programs for A001461, there is no canonical definition to state claims against.
-/

/-! ## A001461.P1197956516302553501

`∑[A006206(n+1)]`
-/

namespace A001461.P1197956516302553501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001461.P1197956516302553501

/-! ## A001461.P15334845350633274781

`A060280(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A001461.P15334845350633274781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A060280 (n + 1) + a (n - 1)

end

end A001461.P15334845350633274781

/-! ## A001461.P3133899889517666821

`A286271(n)+A057427(n)`
-/

namespace A001461.P3133899889517666821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286271 n + A057427 n

end

end A001461.P3133899889517666821

/-! ## A001461.P12224930761633220430

`A286271(n)-A057428(n)`
-/

namespace A001461.P12224930761633220430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286271 n - A057428 n

end

end A001461.P12224930761633220430

/-! ## A001461.P6479098964582019307

`∑[∑{d}[n+1, A008683(#)*A000358((n+1)/#)]]`
-/

namespace A001461.P6479098964582019307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A000358 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001461.P6479098964582019307

/-! ## A001461.P6064654924825996335

`A286271(n)+A286253(A286250(n+1))`
-/

namespace A001461.P6064654924825996335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286271 n + A286253 (A286250 (n + 1)).toNat

end

end A001461.P6064654924825996335

/-! ## A001461.P13414499444749525577

`A286271(n)+A060280(n+2)/A006206(n+2)`
-/

namespace A001461.P13414499444749525577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286271 n : ℚ) + (A060280 (n + 2) : ℚ) / (A006206 (n + 2) : ℚ)

end

end A001461.P13414499444749525577

/-! ## A001461.P16291709572414100395

`A286271(n+1)+1-A006206(n+2)`
-/

namespace A001461.P16291709572414100395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286271 (n + 1) + (1 - A006206 (n + 2))

end

end A001461.P16291709572414100395

/-! ## A001461.P17291089450364732074

`∑[(A250113(n+1)+A250112(n+1))/(n+1)]`
-/

namespace A001461.P17291089450364732074
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250113 (n + 1) + A250112 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001461.P17291089450364732074

/-! ## A001461.P15660401468563972899

`a(n-1)+A006206(n+1)%A000204(n+1)` with `a(0)=1`
-/

namespace A001461.P15660401468563972899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A006206 (n + 1)) (A000204 (n + 1))

end

end A001461.P15660401468563972899

/-! ## A001461.P5619108498564975486

`∑[A060280(A000031(n+1)%2+n+1)]`
-/

namespace A001461.P5619108498564975486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060280 (Int.tmod (A000031 (n + 1)) 2 + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001461.P5619108498564975486

/-!
# A001462: Golomb's sequence: a(n) is the number of times n occurs in the sequence, starting with a(1) = 1.

The programs for A001462, the canonical program `A001462.P2570616953797054601` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001462 has offset 1).

The definition of A001462 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095114, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001462.P11964604737876515935

`1+a(n-a(a(n-1)-1))` with `a(0)=1`
-/

namespace A001462.P11964604737876515935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (n - a (a (n - 1) - 1))

end

end A001462.P11964604737876515935

namespace A001462

/-- `1+a(n-a(a(n-1)-1))` -/
def P11964604737876515935.Spec : Prop :=
  ∀ n, (P11964604737876515935.a n : ℤ) = A001462 (n + 1)

end A001462

/-! ## A001462.P2570616953797054601

`A095114(n+2)-A095114(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001462

/-- `A095114(n+2)-A095114(n+1)` -/
def P2570616953797054601.Spec : Prop :=
  ∀ n, P2570616953797054601.a n = A001462 (n + 1)

theorem P2570616953797054601.correct : P2570616953797054601.Spec := by
  intro n
  simp only [A001462, Nat.add_sub_cancel]

end A001462

/-! ## A001462.P4697793727543338257

`∑[char[A109512(n)-n]]`
-/

namespace A001462.P4697793727543338257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 n - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001462.P4697793727543338257

namespace A001462

/-- `∑[char[A109512(n)-n]]` -/
def P4697793727543338257.Spec : Prop :=
  ∀ n, (P4697793727543338257.a n : ℤ) = A001462 (n + 1)

end A001462

/-! ## A001462.P5421914066992010466

`A104236(n+1)/(n+1)`
-/

namespace A001462.P5421914066992010466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104236 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A001462.P5421914066992010466

namespace A001462

/-- `A104236(n+1)/(n+1)` -/
def P5421914066992010466.Spec : Prop :=
  ∀ n, P5421914066992010466.a n = (A001462 (n + 1) : ℚ)

end A001462

/-! ## A001462.P6920881014022927162

`A088517(n)+a(n-1)` with `a(0)=1`
-/

namespace A001462.P6920881014022927162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088517 n + a (n - 1)

end

end A001462.P6920881014022927162

namespace A001462

/-- `A088517(n)+a(n-1)` -/
def P6920881014022927162.Spec : Prop :=
  ∀ n, P6920881014022927162.a n = A001462 (n + 1)

end A001462

/-! ## A001462.P15802870105994792840

`∑[char[A001463(n+1)]]+1`
-/

namespace A001462.P15802870105994792840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001463 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A001462.P15802870105994792840

namespace A001462

/-- `∑[char[A001463(n+1)]]+1` -/
def P15802870105994792840.Spec : Prop :=
  ∀ n, (P15802870105994792840.a n : ℤ) = A001462 (n + 1)

end A001462

/-! ## A001462.P7998732519212890825

`A319434(n+1-a(n-1))` with `a(0)=1`
-/

namespace A001462.P7998732519212890825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A319434 ((n + 1 : ℤ) - a (n - 1)).toNat

end

end A001462.P7998732519212890825

namespace A001462

/-- `A319434(n+1-a(n-1))` -/
def P7998732519212890825.Spec : Prop :=
  ∀ n, P7998732519212890825.a n = A001462 (n + 1)

end A001462

/-! ## A001462.P14994362420057373240

`∑[A088517(A028310(n))]`
-/

namespace A001462.P14994362420057373240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088517 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001462.P14994362420057373240

namespace A001462

/-- `∑[A088517(A028310(n))]` -/
def P14994362420057373240.Spec : Prop :=
  ∀ n, P14994362420057373240.a n = A001462 (n + 1)

end A001462

/-! ## A001462.P18183069290128475112

`∑[A088517(n+1)]+1-A088517(n+1)`
-/

namespace A001462.P18183069290128475112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A088517 (n + 1))

end

end A001462.P18183069290128475112

namespace A001462

/-- `∑[A088517(n+1)]+1-A088517(n+1)` -/
def P18183069290128475112.Spec : Prop :=
  ∀ n, P18183069290128475112.a n = A001462 (n + 1)

end A001462

/-! ## A001462.P16556863563995492240

`Δ[A095114(n+1)]`
-/

namespace A001462.P16556863563995492240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001462.P16556863563995492240

namespace A001462

/-- `Δ[A095114(n+1)]` -/
def P16556863563995492240.Spec : Prop :=
  ∀ n, P16556863563995492240.a n = A001462 (n + 1)

theorem P16556863563995492240.correct : P16556863563995492240.Spec := by
  intro n
  simp only [A001462, Nat.add_sub_cancel, A001462.P16556863563995492240.f1, A001462.P16556863563995492240.a, A001462.P2570616953797054601.a, SequenceMachineLib.memo_apply]

end A001462

/-! ## A001462.P14969631281200215910

`A224731(n+1)-(n+1)`
-/

namespace A001462.P14969631281200215910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224731 (n + 1) - (n + 1 : ℤ)

end

end A001462.P14969631281200215910

namespace A001462

/-- `A224731(n+1)-(n+1)` -/
def P14969631281200215910.Spec : Prop :=
  ∀ n, P14969631281200215910.a n = A001462 (n + 1)

end A001462

/-! ## A001462.P7871843678098333202

`Δ[A001463(n+1)]-A088517(n+1)`
-/

namespace A001462.P7871843678098333202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A088517 (n + 1)

end

end A001462.P7871843678098333202

namespace A001462

/-- `Δ[A001463(n+1)]-A088517(n+1)` -/
def P7871843678098333202.Spec : Prop :=
  ∀ n, P7871843678098333202.a n = A001462 (n + 1)

end A001462

/-! ## A001462.P17641492236097056154

`A001463(n+2)-(A088517(n+1)+A001463(n+1))`
-/

namespace A001462.P17641492236097056154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001463 (n + 2) - (A088517 (n + 1) + A001463 (n + 1))

end

end A001462.P17641492236097056154

namespace A001462

/-- `A001463(n+2)-(A088517(n+1)+A001463(n+1))` -/
def P17641492236097056154.Spec : Prop :=
  ∀ n, P17641492236097056154.a n = A001462 (n + 1)

end A001462

/-! ## A001462.P11787149353764026919

`Δ[A109512(n+1)]-1`
-/

namespace A001462.P11787149353764026919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A001462.P11787149353764026919

namespace A001462

/-- `Δ[A109512(n+1)]-1` -/
def P11787149353764026919.Spec : Prop :=
  ∀ n, P11787149353764026919.a n = A001462 (n + 1)

end A001462

/-!
# A001463: Partial sums of A001462; also a(n) is the last occurrence of n in A001462.

The programs for A001463, the canonical program `A001463.P4387598032807140957` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001463 has offset 1).

The definition of A001463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001463.P4387598032807140957

`∑[a(n-a(a(n-1)-1))+1]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001463

/-- `∑[a(n-a(a(n-1)-1))+1]` -/
def P4387598032807140957.Spec : Prop :=
  ∀ n, (P4387598032807140957.a n : ℤ) = A001463 (n + 1)

theorem P4387598032807140957.correct : P4387598032807140957.Spec := by
  intro n
  simp only [A001463, Nat.add_sub_cancel]

end A001463

/-! ## A001463.P11613182747277523589

`∑[A001462(n+1)]`
-/

namespace A001463.P11613182747277523589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001463.P11613182747277523589

namespace A001463

/-- `∑[A001462(n+1)]` -/
def P11613182747277523589.Spec : Prop :=
  ∀ n, P11613182747277523589.a n = A001463 (n + 1)

end A001463

/-! ## A001463.P3420906780256909211

`∑[∑[char[A109512(n)-n]]]`
-/

namespace A001463.P3420906780256909211
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 n - (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001463.P3420906780256909211

namespace A001463

/-- `∑[∑[char[A109512(n)-n]]]` -/
def P3420906780256909211.Spec : Prop :=
  ∀ n, (P3420906780256909211.a n : ℤ) = A001463 (n + 1)

end A001463

/-! ## A001463.P12157797300437667858

`∑[A104236(n+1)/(n+1)]`
-/

namespace A001463.P12157797300437667858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104236 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001463.P12157797300437667858

namespace A001463

/-- `∑[A104236(n+1)/(n+1)]` -/
def P12157797300437667858.Spec : Prop :=
  ∀ n, P12157797300437667858.a n = (A001463 (n + 1) : ℚ)

end A001463

/-! ## A001463.P11805082858930804460

`∑[A088517(n)+a(n-1)]` with `a(0)=1`
-/

namespace A001463.P11805082858930804460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A088517 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001463.P11805082858930804460

namespace A001463

/-- `∑[A088517(n)+a(n-1)]` -/
def P11805082858930804460.Spec : Prop :=
  ∀ n, P11805082858930804460.a n = A001463 (n + 1)

end A001463

/-! ## A001463.P3118295679148189510

`∑[A319434(n+1-a(n-1))]` with `a(0)=1`
-/

namespace A001463.P3118295679148189510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A319434 ((n + 1 : ℤ) - f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001463.P3118295679148189510

namespace A001463

/-- `∑[A319434(n+1-a(n-1))]` -/
def P3118295679148189510.Spec : Prop :=
  ∀ n, P3118295679148189510.a n = A001463 (n + 1)

end A001463

/-! ## A001463.P1309430649893412917

`∑[∑[A088517(A028310(n))]]`
-/

namespace A001463.P1309430649893412917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088517 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001463.P1309430649893412917

namespace A001463

/-- `∑[∑[A088517(A028310(n))]]` -/
def P1309430649893412917.Spec : Prop :=
  ∀ n, P1309430649893412917.a n = A001463 (n + 1)

end A001463

/-! ## A001463.P7551464681573157993

`A001462(n+1)+A095114(n+1)-1`
-/

namespace A001463.P7551464681573157993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1) + (A095114 (n + 1) - 1)

end

end A001463.P7551464681573157993

namespace A001463

/-- `A001462(n+1)+A095114(n+1)-1` -/
def P7551464681573157993.Spec : Prop :=
  ∀ n, P7551464681573157993.a n = A001463 (n + 1)

end A001463

/-! ## A001463.P4403229590631140410

`A095114(n+2)-1`
-/

namespace A001463.P4403229590631140410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (n + 2) - 1

end

end A001463.P4403229590631140410

namespace A001463

/-- `A095114(n+2)-1` -/
def P4403229590631140410.Spec : Prop :=
  ∀ n, P4403229590631140410.a n = A001463 (n + 1)

end A001463

/-! ## A001463.P5201622223905708060

`∑[abs(Δ[A095114(n+1)])]`
-/

namespace A001463.P5201622223905708060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001463.P5201622223905708060

namespace A001463

/-- `∑[abs(Δ[A095114(n+1)])]` -/
def P5201622223905708060.Spec : Prop :=
  ∀ n, P5201622223905708060.a n = A001463 (n + 1)

end A001463

/-! ## A001463.P13737373753646370314

`∑[A224731(n+1)-(n+1)]`
-/

namespace A001463.P13737373753646370314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224731 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001463.P13737373753646370314

namespace A001463

/-- `∑[A224731(n+1)-(n+1)]` -/
def P13737373753646370314.Spec : Prop :=
  ∀ n, P13737373753646370314.a n = A001463 (n + 1)

end A001463

/-! ## A001463.P4895656264615957185

`∑[Δ[A095114(n+1)]%A013948(n+1)]`
-/

namespace A001463.P4895656264615957185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A013948 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001463.P4895656264615957185

namespace A001463

/-- `∑[Δ[A095114(n+1)]%A013948(n+1)]` -/
def P4895656264615957185.Spec : Prop :=
  ∀ n, P4895656264615957185.a n = A001463 (n + 1)

end A001463

/-! ## A001463.P15366186205110215652

`A109512(n+2)-(n+2)`
-/

namespace A001463.P15366186205110215652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 (n + 2) - (n + 2 : ℤ)

end

end A001463.P15366186205110215652

namespace A001463

/-- `A109512(n+2)-(n+2)` -/
def P15366186205110215652.Spec : Prop :=
  ∀ n, P15366186205110215652.a n = A001463 (n + 1)

end A001463

/-! ## A001463.P13625449480501213652

`filter[n+1, A088517(#)]`
-/

namespace A001463.P13625449480501213652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088517 (f1 j) = 1) n)

end

end A001463.P13625449480501213652

namespace A001463

/-- `filter[n+1, A088517(#)]` -/
def P13625449480501213652.Spec : Prop :=
  ∀ n, (P13625449480501213652.a n : ℤ) = A001463 (n + 1)

end A001463

/-! ## A001463.P16333745811525553566

`eq[1, A088517(n+1)]+1`
-/

namespace A001463.P16333745811525553566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088517 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A001463.P16333745811525553566

namespace A001463

/-- `eq[1, A088517(n+1)]+1` -/
def P16333745811525553566.Spec : Prop :=
  ∀ n, (P16333745811525553566.a n : ℤ) = A001463 (n + 1)

end A001463

/-! ## A001463.P9908456218063901011

`A023443(A095114(n+2))`
-/

namespace A001463.P9908456218063901011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A095114 (n + 2)).toNat

end

end A001463.P9908456218063901011

namespace A001463

/-- `A023443(A095114(n+2))` -/
def P9908456218063901011.Spec : Prop :=
  ∀ n, P9908456218063901011.a n = A001463 (n + 1)

end A001463

/-!
# A001464: Expansion of e.g.f. exp(-x - (1/2)*x^2).

The programs for A001464, the canonical program `A001464.P11249083225092603948` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001464 has offset 0).

The definition of A001464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001464.P11249083225092603948

`(1-n)*a(n-2)-a(n-1)` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001464

/-- `(1-n)*a(n-2)-a(n-1)` -/
def P11249083225092603948.Spec : Prop :=
  ∀ n, P11249083225092603948.a n = A001464 n

theorem P11249083225092603948.correct : P11249083225092603948.Spec := by
  intro n
  simp only [A001464]

end A001464

/-! ## A001464.P8788922757201087657

`2*A085386(n)-A000085(n)`
-/

namespace A001464.P8788922757201087657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085386 n - A000085 n

end

end A001464.P8788922757201087657

namespace A001464

/-- `2*A085386(n)-A000085(n)` -/
def P8788922757201087657.Spec : Prop :=
  ∀ n, P8788922757201087657.a n = A001464 n

end A001464

/-! ## A001464.P17943900519249725827

`A159834(∑[n])`
-/

namespace A001464.P17943900519249725827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159834 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001464.P17943900519249725827

namespace A001464

/-- `A159834(∑[n])` -/
def P17943900519249725827.Spec : Prop :=
  ∀ n, P17943900519249725827.a n = A001464 n

end A001464

/-! ## A001464.P2199557853386745871

`A159834(A000217(n))%A000085(n+2)`
-/

namespace A001464.P2199557853386745871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159834 (A000217 n).toNat) (A000085 (n + 2))

end

end A001464.P2199557853386745871

namespace A001464

/-- `A159834(A000217(n))%A000085(n+2)` -/
def P2199557853386745871.Spec : Prop :=
  ∀ n, P2199557853386745871.a n = A001464 n

end A001464

/-! ## A001464.P13673479557144808817

`A007318(A000217(n))*A159834(A000217(n))`
-/

namespace A001464.P13673479557144808817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A159834 (A000217 n).toNat

end

end A001464.P13673479557144808817

namespace A001464

/-- `A007318(A000217(n))*A159834(A000217(n))` -/
def P13673479557144808817.Spec : Prop :=
  ∀ n, P13673479557144808817.a n = A001464 n

end A001464

/-! ## A001464.P15092834688209771666

`A159834(A000217(n+1)+1)/(n+1)`
-/

namespace A001464.P15092834688209771666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159834 (A000217 (n + 1) + 1).toNat : ℚ) / (n + 1 : ℚ)

end

end A001464.P15092834688209771666

namespace A001464

/-- `A159834(A000217(n+1)+1)/(n+1)` -/
def P15092834688209771666.Spec : Prop :=
  ∀ n, P15092834688209771666.a n = (A001464 n : ℚ)

end A001464

/-! ## A001464.P200127834036813904

`A159834(A133263(n+2))/A000217(n+1)`
-/

namespace A001464.P200127834036813904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159834 (A133263 (n + 2)).toNat : ℚ) / (A000217 (n + 1) : ℚ)

end

end A001464.P200127834036813904

namespace A001464

/-- `A159834(A133263(n+2))/A000217(n+1)` -/
def P200127834036813904.Spec : Prop :=
  ∀ n, P200127834036813904.a n = (A001464 n : ℚ)

end A001464

/-! ## A001464.P12244238475773736240

`A334568(∑[n+2]-1)`
-/

namespace A001464.P12244238475773736240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334568 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A001464.P12244238475773736240

namespace A001464

/-- `A334568(∑[n+2]-1)` -/
def P12244238475773736240.Spec : Prop :=
  ∀ n, P12244238475773736240.a n = A001464 n

end A001464

/-! ## A001464.P1638061786956246055

`2*A038205(n)-A137482(n)`
-/

namespace A001464.P1638061786956246055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038205 n - A137482 n

end

end A001464.P1638061786956246055

namespace A001464

/-- `2*A038205(n)-A137482(n)` -/
def P1638061786956246055.Spec : Prop :=
  ∀ n, P1638061786956246055.a n = A001464 n

end A001464

/-!
# A001465: Number of degree-n odd permutations of order 2.

The programs for A001465, the canonical program `A001465.P11263082568877116543` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001465 has offset 0).

The definition of A001465 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000704, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001465.P11263082568877116543

`A000085(n)-A000704(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001465

/-- `A000085(n)-A000704(n)` -/
def P11263082568877116543.Spec : Prop :=
  ∀ n, P11263082568877116543.a n = A001465 n

theorem P11263082568877116543.correct : P11263082568877116543.Spec := by
  intro n
  simp only [A001465]

end A001465

/-! ## A001465.P10737877951395234788

`A099020(∑[n])-A000704(n)`
-/

namespace A001465.P10737877951395234788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f1 j) - A000704 n

end

end A001465.P10737877951395234788

namespace A001465

/-- `A099020(∑[n])-A000704(n)` -/
def P10737877951395234788.Spec : Prop :=
  ∀ n, P10737877951395234788.a n = A001465 n

end A001465

/-! ## A001465.P4414401243406098675

`A293808(∑[A254667(n)])-A000704(n)`
-/

namespace A001465.P4414401243406098675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000704 n

end

end A001465.P4414401243406098675

namespace A001465

/-- `A293808(∑[A254667(n)])-A000704(n)` -/
def P4414401243406098675.Spec : Prop :=
  ∀ n, P4414401243406098675.a n = A001465 n

end A001465

/-! ## A001465.P14994379568570662411

`A293808(A133263(n)-1)-A000704(n)`
-/

namespace A001465.P14994379568570662411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A133263 n - 1).toNat - A000704 n

end

end A001465.P14994379568570662411

namespace A001465

/-- `A293808(A133263(n)-1)-A000704(n)` -/
def P14994379568570662411.Spec : Prop :=
  ∀ n, P14994379568570662411.a n = A001465 n

end A001465

/-! ## A001465.P14131835655006303526

`A187044(n)-A186739(n+1)-A000704(n)`
-/

namespace A001465.P14131835655006303526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187044 n - A186739 (n + 1) - A000704 n

end

end A001465.P14131835655006303526

namespace A001465

/-- `A187044(n)-A186739(n+1)-A000704(n)` -/
def P14131835655006303526.Spec : Prop :=
  ∀ n, P14131835655006303526.a n = A001465 n

end A001465

/-! ## A001465.P12317258668913961750

`A220699(n+3)-A187044(n)-A000704(n)`
-/

namespace A001465.P12317258668913961750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220699 (n + 3) - A187044 n - A000704 n

end

end A001465.P12317258668913961750

namespace A001465

/-- `A220699(n+3)-A187044(n)-A000704(n)` -/
def P12317258668913961750.Spec : Prop :=
  ∀ n, P12317258668913961750.a n = A001465 n

end A001465

/-! ## A001465.P12253233730440876376

`2*A085386(n)-A001464(n)-A000704(n)`
-/

namespace A001465.P12253233730440876376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085386 n - A001464 n - A000704 n

end

end A001465.P12253233730440876376

namespace A001465

/-- `2*A085386(n)-A001464(n)-A000704(n)` -/
def P12253233730440876376.Spec : Prop :=
  ∀ n, P12253233730440876376.a n = A001465 n

end A001465

/-! ## A001465.P8098545734763865688

`A297708(n)-2*A000900(n)-A000704(n)`
-/

namespace A001465.P8098545734763865688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297708 n - 2 * A000900 n - A000704 n

end

end A001465.P8098545734763865688

namespace A001465

/-- `A297708(n)-2*A000900(n)-A000704(n)` -/
def P8098545734763865688.Spec : Prop :=
  ∀ n, P8098545734763865688.a n = A001465 n

end A001465

/-! ## A001465.P2997599646100203835

`A220699(n+3)-A193361(n+2)-A000704(n)`
-/

namespace A001465.P2997599646100203835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220699 (n + 3) - A193361 (n + 2) - A000704 n

end

end A001465.P2997599646100203835

namespace A001465

/-- `A220699(n+3)-A193361(n+2)-A000704(n)` -/
def P2997599646100203835.Spec : Prop :=
  ∀ n, P2997599646100203835.a n = A001465 n

end A001465

/-! ## A001465.P14381963462711190325

`Δ[A000704(n+1)]/(n+1)`
-/

namespace A001465.P14381963462711190325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000704 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A001465.P14381963462711190325

namespace A001465

/-- `Δ[A000704(n+1)]/(n+1)` -/
def P14381963462711190325.Spec : Prop :=
  ∀ n, P14381963462711190325.a n = (A001465 n : ℚ)

end A001465

/-! ## A001465.P12711990100756182675

`Δ[A048099(n+1)]/(n+1)`
-/

namespace A001465.P12711990100756182675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048099 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A001465.P12711990100756182675

namespace A001465

/-- `Δ[A048099(n+1)]/(n+1)` -/
def P12711990100756182675.Spec : Prop :=
  ∀ n, P12711990100756182675.a n = (A001465 n : ℚ)

end A001465

/-! ## A001465.P10183776426343620300

`(A048099(n+2)-A048099(n+1))/(n+1)`
-/

namespace A001465.P10183776426343620300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048099 (n + 2) - A048099 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A001465.P10183776426343620300

namespace A001465

/-- `(A048099(n+2)-A048099(n+1))/(n+1)` -/
def P10183776426343620300.Spec : Prop :=
  ∀ n, P10183776426343620300.a n = (A001465 n : ℚ)

end A001465

/-!
# A001466: 

The programs for A001466, there is no canonical definition to state claims against.
-/

/-! ## A001466.P1615351088296214679

`A224230(n+1)`
-/

namespace A001466.P1615351088296214679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224230 (n + 1)

end

end A001466.P1615351088296214679

/-! ## A001466.P2116306732173571947

`A182257(n+3)`
-/

namespace A001466.P2116306732173571947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182257 (n + 3)

end

end A001466.P2116306732173571947

/-! ## A001466.P17116534299217095912

`record[A224230(A193592(n))]`
-/

namespace A001466.P17116534299217095912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224230 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001466.P17116534299217095912

/-!
# A001467: Denominators of an expansion for Pi.

The programs for A001467, there is no canonical definition to state claims against.
-/

/-! ## A001467.P1906572564702841286

`floor(A156736(round(acot(n)+n)-1)/2)`
-/

namespace A001467.P1906572564702841286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A156736 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - 1).toNat : ℚ) / 2⌋

end

end A001467.P1906572564702841286

/-! ## A001467.P3391670917520310654

`A156736(A029032(n))/2`
-/

namespace A001467.P3391670917520310654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156736 (A029032 n).toNat : ℚ) / 2

end

end A001467.P3391670917520310654

/-! ## A001467.P12625642542032351886

`A156736(A330193(n+1))/2`
-/

namespace A001467.P12625642542032351886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156736 (A330193 (n + 1)).toNat : ℚ) / 2

end

end A001467.P12625642542032351886

/-!
# A001468: There are a(n) 2's between successive 1's.

The programs for A001468, the canonical program `A001468.P12360075344960480253` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001468 has offset 0).

The definition of A001468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001468.P12360075344960480253

`floor(ϕ*(n+1))-floor(ϕ*n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001468

/-- `floor(ϕ*(n+1))-floor(ϕ*n)` -/
def P12360075344960480253.Spec : Prop :=
  ∀ n, P12360075344960480253.a n = A001468 n

theorem P12360075344960480253.correct : P12360075344960480253.Spec := by
  intro n
  simp only [A001468]

end A001468

/-! ## A001468.P5041129744431836494

`C(2, Δ[floor(n/ϕ)])`
-/

namespace A001468.P5041129744431836494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat

end

end A001468.P5041129744431836494

namespace A001468

/-- `C(2, Δ[floor(n/ϕ)])` -/
def P5041129744431836494.Spec : Prop :=
  ∀ n, (P5041129744431836494.a n : ℤ) = A001468 n

end A001468

/-! ## A001468.P15530128666376513900

`a(Δ[floor(n/ϕ)])` with `a(0)=1, a(1)=2`
-/

namespace A001468.P15530128666376513900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (f1 (n + 1) - f1 n).toNat

end

end A001468.P15530128666376513900

namespace A001468

/-- `a(Δ[floor(n/ϕ)])` -/
def P15530128666376513900.Spec : Prop :=
  ∀ n, (P15530128666376513900.a n : ℤ) = A001468 n

end A001468

/-! ## A001468.P4952470364116600725

`(Δ[floor(n/ϕ)]+1)!`
-/

namespace A001468.P4952470364116600725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n + 1).toNat

end

end A001468.P4952470364116600725

namespace A001468

/-- `(Δ[floor(n/ϕ)]+1)!` -/
def P4952470364116600725.Spec : Prop :=
  ∀ n, (P4952470364116600725.a n : ℤ) = A001468 n

end A001468

/-! ## A001468.P14973733498869020557

`gcd(2, Δ[floor(n/ϕ)]+1)`
-/

namespace A001468.P14973733498869020557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n + 1)

end

end A001468.P14973733498869020557

namespace A001468

/-- `gcd(2, Δ[floor(n/ϕ)]+1)` -/
def P14973733498869020557.Spec : Prop :=
  ∀ n, (P14973733498869020557.a n : ℤ) = A001468 n

end A001468

/-! ## A001468.P10852723405422779651

`Δ[A026351(n)]`
-/

namespace A001468.P10852723405422779651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001468.P10852723405422779651

namespace A001468

/-- `Δ[A026351(n)]` -/
def P10852723405422779651.Spec : Prop :=
  ∀ n, P10852723405422779651.a n = A001468 n

theorem P10852723405422779651.correct : P10852723405422779651.Spec := by
  intro n
  simp only [A001468, Nat.add_sub_cancel, A001468.P10852723405422779651.f1, A001468.P10852723405422779651.a, A001468.P12360075344960480253.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001468

/-! ## A001468.P9290651968259468834

`Δ[A066096(n)]`
-/

namespace A001468.P9290651968259468834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001468.P9290651968259468834

namespace A001468

/-- `Δ[A066096(n)]` -/
def P9290651968259468834.Spec : Prop :=
  ∀ n, P9290651968259468834.a n = A001468 n

theorem P9290651968259468834.correct : P9290651968259468834.Spec := by
  intro n
  simp only [A001468, Nat.add_sub_cancel, A001468.P9290651968259468834.f1, A001468.P9290651968259468834.a, A001468.P12360075344960480253.a, A066096, A066096.P2651506377198414293.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001468

/-! ## A001468.P10433575347472161673

`A363057(Δ[n²])`
-/

namespace A001468.P10433575347472161673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363057 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001468.P10433575347472161673

namespace A001468

/-- `A363057(Δ[n²])` -/
def P10433575347472161673.Spec : Prop :=
  ∀ n, P10433575347472161673.a n = A001468 n

end A001468

/-! ## A001468.P8560466431070156626

`A014675(abs(1-n))`
-/

namespace A001468.P8560466431070156626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 |1 - (n : ℤ)|.toNat

end

end A001468.P8560466431070156626

namespace A001468

/-- `A014675(abs(1-n))` -/
def P8560466431070156626.Spec : Prop :=
  ∀ n, P8560466431070156626.a n = A001468 n

end A001468

/-! ## A001468.P9279485180451532133

`A001513(n)%A282162(n)`
-/

namespace A001468.P9279485180451532133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A282162 n)

end

end A001468.P9279485180451532133

namespace A001468

/-- `A001513(n)%A282162(n)` -/
def P9279485180451532133.Spec : Prop :=
  ∀ n, P9279485180451532133.a n = A001468 n

end A001468

/-! ## A001468.P7791221160929924053

`A001538(n)%A282162(n)`
-/

namespace A001468.P7791221160929924053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A282162 n)

end

end A001468.P7791221160929924053

namespace A001468

/-- `A001538(n)%A282162(n)` -/
def P7791221160929924053.Spec : Prop :=
  ∀ n, P7791221160929924053.a n = A001468 n

end A001468

/-! ## A001468.P3326794682098566345

`A002148(n)%A282162(n)`
-/

namespace A001468.P3326794682098566345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A282162 n)

end

end A001468.P3326794682098566345

namespace A001468

/-- `A002148(n)%A282162(n)` -/
def P3326794682098566345.Spec : Prop :=
  ∀ n, P3326794682098566345.a n = A001468 n

end A001468

/-! ## A001468.P6860330095205721702

`A016969(n)%A282162(n)`
-/

namespace A001468.P6860330095205721702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A282162 n)

end

end A001468.P6860330095205721702

namespace A001468

/-- `A016969(n)%A282162(n)` -/
def P6860330095205721702.Spec : Prop :=
  ∀ n, P6860330095205721702.a n = A001468 n

end A001468

/-! ## A001468.P16025023639642198639

`A016971(n)%A282162(n)`
-/

namespace A001468.P16025023639642198639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 n) (A282162 n)

end

end A001468.P16025023639642198639

namespace A001468

/-- `A016971(n)%A282162(n)` -/
def P16025023639642198639.Spec : Prop :=
  ∀ n, P16025023639642198639.a n = A001468 n

end A001468

/-! ## A001468.P5808669354042935811

`A016973(n)%A282162(n)`
-/

namespace A001468.P5808669354042935811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016973 n) (A282162 n)

end

end A001468.P5808669354042935811

namespace A001468

/-- `A016973(n)%A282162(n)` -/
def P5808669354042935811.Spec : Prop :=
  ∀ n, P5808669354042935811.a n = A001468 n

end A001468

/-! ## A001468.P15136222244382990149

`A016975(n)%A282162(n)`
-/

namespace A001468.P15136222244382990149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016975 n) (A282162 n)

end

end A001468.P15136222244382990149

namespace A001468

/-- `A016975(n)%A282162(n)` -/
def P15136222244382990149.Spec : Prop :=
  ∀ n, P15136222244382990149.a n = A001468 n

end A001468

/-!
# A001469: Genocchi numbers (of first kind); unsigned coefficients give expansion of x*tan(x/2).

The programs for A001469, there is no canonical definition to state claims against.
-/

/-! ## A001469.P2926756577744571796

`Δ[-A102055(n)]`
-/

namespace A001469.P2926756577744571796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A102055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001469.P2926756577744571796

/-! ## A001469.P10033184308592296047

`A060083(∑[n+1])`
-/

namespace A001469.P10033184308592296047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060083 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001469.P10033184308592296047

/-! ## A001469.P8039945340631620262

`A036968(2*(n+1))`
-/

namespace A001469.P8039945340631620262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036968 (2 * (n + 1))

end

end A001469.P8039945340631620262

/-! ## A001469.P1785706939034190179

`A226158(2*(n+1))`
-/

namespace A001469.P1785706939034190179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 (2 * (n + 1))

end

end A001469.P1785706939034190179

/-! ## A001469.P465582614047311551

`A004172((n+1)²+1)`
-/

namespace A001469.P465582614047311551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004172 ((n + 1) ^ 2 + 1)

end

end A001469.P465582614047311551

/-!
# A001470: Number of degree-n permutations of order dividing 3.

The programs for A001470, the canonical program `A001470.P15610145594865730543` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001470 has offset 0).

The definition of A001470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001470.P15610145594865730543

`a(n-1)+(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001470

/-- `a(n-1)+(n-1)*(n-2)*a(n-3)` -/
def P15610145594865730543.Spec : Prop :=
  ∀ n, P15610145594865730543.a n = A001470 n

theorem P15610145594865730543.correct : P15610145594865730543.Spec := by
  intro n
  simp only [A001470]

end A001470

/-! ## A001470.P17455530947199886814

`A001471(n)+1`
-/

namespace A001470.P17455530947199886814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001471 n + 1

end

end A001470.P17455530947199886814

namespace A001470

/-- `A001471(n)+1` -/
def P17455530947199886814.Spec : Prop :=
  ∀ n, P17455530947199886814.a n = A001470 n

end A001470

/-! ## A001470.P11756719781055405152

`xor(1, A001471(A028310(n)))`
-/

namespace A001470.P11756719781055405152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A001471 (A028310 n).toNat)

end

end A001470.P11756719781055405152

namespace A001470

/-- `xor(1, A001471(A028310(n)))` -/
def P11756719781055405152.Spec : Prop :=
  ∀ n, P11756719781055405152.a n = A001470 n

end A001470

/-! ## A001470.P912219357179975931

`xor(A025468(n)!, A001471(n))`
-/

namespace A001470.P912219357179975931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A025468 n).toNat : ℤ) (A001471 n)

end

end A001470.P912219357179975931

namespace A001470

/-- `xor(A025468(n)!, A001471(n))` -/
def P912219357179975931.Spec : Prop :=
  ∀ n, P912219357179975931.a n = A001470 n

end A001470

/-! ## A001470.P3009489354375057306

`or(char[A029578(n)], A001471(n))`
-/

namespace A001470.P3009489354375057306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A001471 n)

end

end A001470.P3009489354375057306

namespace A001470

/-- `or(char[A029578(n)], A001471(n))` -/
def P3009489354375057306.Spec : Prop :=
  ∀ n, P3009489354375057306.a n = A001470 n

end A001470

/-! ## A001470.P837537203518612291

`or(char[A171181(n)], A001471(n))`
-/

namespace A001470.P837537203518612291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A001471 n)

end

end A001470.P837537203518612291

namespace A001470

/-- `or(char[A171181(n)], A001471(n))` -/
def P837537203518612291.Spec : Prop :=
  ∀ n, P837537203518612291.a n = A001470 n

end A001470

/-! ## A001470.P12706827261129139122

`or(A000034(2*n), A001471(n))`
-/

namespace A001470.P12706827261129139122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000034 (2 * n)) (A001471 n)

end

end A001470.P12706827261129139122

namespace A001470

/-- `or(A000034(2*n), A001471(n))` -/
def P12706827261129139122.Spec : Prop :=
  ∀ n, P12706827261129139122.a n = A001470 n

end A001470

/-! ## A001470.P10519455806719439843

`xor(A000034(10*n), A001471(n))`
-/

namespace A001470.P10519455806719439843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 (10 * n)) (A001471 n)

end

end A001470.P10519455806719439843

namespace A001470

/-- `xor(A000034(10*n), A001471(n))` -/
def P10519455806719439843.Spec : Prop :=
  ∀ n, P10519455806719439843.a n = A001470 n

end A001470

/-! ## A001470.P4930498786629334147

`or(A001471(n), A144150(A227185(n)))`
-/

namespace A001470.P4930498786629334147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001471 n) (A144150 (A227185 n).toNat)

end

end A001470.P4930498786629334147

namespace A001470

/-- `or(A001471(n), A144150(A227185(n)))` -/
def P4930498786629334147.Spec : Prop :=
  ∀ n, P4930498786629334147.a n = A001470 n

end A001470

/-! ## A001470.P12296296615956929579

`A362043(∑[n+3])`
-/

namespace A001470.P12296296615956929579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362043 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001470.P12296296615956929579

namespace A001470

/-- `A362043(∑[n+3])` -/
def P12296296615956929579.Spec : Prop :=
  ∀ n, P12296296615956929579.a n = A001470 n

end A001470

/-!
# A001471: Number of degree-n permutations of order exactly 3.

The programs for A001471, the canonical program `A001471.P6129878581103067977` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001471 has offset 0).

The definition of A001471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001471.P6129878581103067977

`a(n-1)+(1+a(n-3))*(n-1)*(n-2)` with `a(0)=0, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001471

/-- `a(n-1)+(1+a(n-3))*(n-1)*(n-2)` -/
def P6129878581103067977.Spec : Prop :=
  ∀ n, P6129878581103067977.a n = A001471 n

theorem P6129878581103067977.correct : P6129878581103067977.Spec := by
  intro n
  simp only [A001471]

end A001471

/-! ## A001471.P10348649517987580452

`A001470(n)-1`
-/

namespace A001471.P10348649517987580452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001470 n - 1

end

end A001471.P10348649517987580452

namespace A001471

/-- `A001470(n)-1` -/
def P10348649517987580452.Spec : Prop :=
  ∀ n, P10348649517987580452.a n = A001471 n

end A001471

/-! ## A001471.P8754553246353520494

`xor(1, A001470(A028310(n)))`
-/

namespace A001471.P8754553246353520494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A001470 (A028310 n).toNat)

end

end A001471.P8754553246353520494

namespace A001471

/-- `xor(1, A001470(A028310(n)))` -/
def P8754553246353520494.Spec : Prop :=
  ∀ n, P8754553246353520494.a n = A001471 n

end A001471

/-! ## A001471.P2953225053608866505

`xor(char[A002262(n)], A001470(n))`
-/

namespace A001471.P2953225053608866505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A001470 n)

end

end A001471.P2953225053608866505

namespace A001471

/-- `xor(char[A002262(n)], A001470(n))` -/
def P2953225053608866505.Spec : Prop :=
  ∀ n, P2953225053608866505.a n = A001471 n

end A001471

/-! ## A001471.P14860200968852805396

`xor(char[A026730(n)], A001470(n))`
-/

namespace A001471.P14860200968852805396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A001470 n)

end

end A001471.P14860200968852805396

namespace A001471

/-- `xor(char[A026730(n)], A001470(n))` -/
def P14860200968852805396.Spec : Prop :=
  ∀ n, P14860200968852805396.a n = A001471 n

end A001471

/-! ## A001471.P10028784664250474545

`xor(1, A001470(A233583(n+1)))`
-/

namespace A001471.P10028784664250474545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A001470 (A233583 (n + 1)).toNat)

end

end A001471.P10028784664250474545

namespace A001471

/-- `xor(1, A001470(A233583(n+1)))` -/
def P10028784664250474545.Spec : Prop :=
  ∀ n, P10028784664250474545.a n = A001471 n

end A001471

/-! ## A001471.P14662232686425251468

`xor(A007318(A000096(n)), A001470(n))`
-/

namespace A001471.P14662232686425251468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (A000096 n).toNat) (A001470 n)

end

end A001471.P14662232686425251468

namespace A001471

/-- `xor(A007318(A000096(n)), A001470(n))` -/
def P14662232686425251468.Spec : Prop :=
  ∀ n, P14662232686425251468.a n = A001471 n

end A001471

/-! ## A001471.P16486112139544560463

`xor(A007318(A000217(n)), A001470(n))`
-/

namespace A001471.P16486112139544560463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (A000217 n).toNat) (A001470 n)

end

end A001471.P16486112139544560463

namespace A001471

/-- `xor(A007318(A000217(n)), A001470(n))` -/
def P16486112139544560463.Spec : Prop :=
  ∀ n, P16486112139544560463.a n = A001471 n

end A001471

/-! ## A001471.P79161288399156013

`xor(A001470(n), A001492(A001481(n+1)))`
-/

namespace A001471.P79161288399156013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001470 n) (A001492 (A001481 (n + 1)).toNat)

end

end A001471.P79161288399156013

namespace A001471

/-- `xor(A001470(n), A001492(A001481(n+1)))` -/
def P79161288399156013.Spec : Prop :=
  ∀ n, P79161288399156013.a n = A001471 n

end A001471

/-! ## A001471.P14289049737631495057

`xor(A001470(n), A001492(A001476(2*n+3)))`
-/

namespace A001471.P14289049737631495057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001470 n) (A001492 (A001476 (2 * n + 3)).toNat)

end

end A001471.P14289049737631495057

namespace A001471

/-- `xor(A001470(n), A001492(A001476(2*n+3)))` -/
def P14289049737631495057.Spec : Prop :=
  ∀ n, P14289049737631495057.a n = A001471 n

end A001471

/-!
# A001472: Number of degree-n permutations of order dividing 4.

The programs for A001472, there is no canonical definition to state claims against.
-/

/-! ## A001472.P9212348397441863058

`a(n-1)+(n-1)*a(n-2)+(n^3-6*n²+11*n-6)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A001472.P9212348397441863058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  a (n - 1) + ((n : ℤ) - 1) * a (n - 2) + ((n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (11 * n : ℤ) - 6) * a (n - 4)

end

end A001472.P9212348397441863058

/-! ## A001472.P7404201799093354380

`A061136(n)+A061129(n)`
-/

namespace A001472.P7404201799093354380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061136 n + A061129 n

end

end A001472.P7404201799093354380

/-! ## A001472.P5914711386116251119

`A051695(A233583(n+1))+A061136(n)+A000704(n)`
-/

namespace A001472.P5914711386116251119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051695 (A233583 (n + 1)).toNat + (A061136 n + A000704 n)

end

end A001472.P5914711386116251119

/-! ## A001472.P9507267607153926211

`A008307(∑[n+2]+5)`
-/

namespace A001472.P9507267607153926211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A001472.P9507267607153926211

/-! ## A001472.P10874157590893610743

`A061131(n)+A061136(n)-A061134(A028310(n))`
-/

namespace A001472.P10874157590893610743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061131 n + (A061136 n - A061134 (A028310 n).toNat)

end

end A001472.P10874157590893610743

/-!
# A001473: Number of degree-n permutations of order exactly 4.

The programs for A001473, there is no canonical definition to state claims against.
-/

/-! ## A001473.P10283673793920704917

`A061138(n+1)+A051695(n+1)`
-/

namespace A001473.P10283673793920704917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061138 (n + 1) + A051695 (n + 1)

end

end A001473.P10283673793920704917

/-! ## A001473.P1443327918245103669

`A001472(n+1)-A000085(n+1)`
-/

namespace A001473.P1443327918245103669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001472 (n + 1) - A000085 (n + 1)

end

end A001473.P1443327918245103669

/-! ## A001473.P305980222346947849

`2*A051695(n+1)-A051685(n+1)`
-/

namespace A001473.P305980222346947849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051695 (n + 1) - A051685 (n + 1)

end

end A001473.P305980222346947849

/-! ## A001473.P3314767708697103561

`A001472(n+1)-A138177(A179865(n+2))`
-/

namespace A001473.P3314767708697103561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001472 (n + 1) - A138177 (A179865 (n + 2)).toNat

end

end A001473.P3314767708697103561

/-! ## A001473.P7282433343388500307

`A061129(n+1)+A061138(n+1)-A000704(n+1)`
-/

namespace A001473.P7282433343388500307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061129 (n + 1) + (A061138 (n + 1) - A000704 (n + 1))

end

end A001473.P7282433343388500307

/-!
# A001475: a(n) = a(n-1) + n * a(n-2), where a(1) = 1, a(2) = 2.

The programs for A001475, the canonical program `A001475.P3937187660511433167` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001475 has offset 1).

The definition of A001475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n+1)*a(n-2)` (program `A001475.P3937187660511433167`, by `A001475.P3937187660511433167.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001475.P3937187660511433167

`a(n-1)+(n+1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001475

/-- `a(n-1)+(n+1)*a(n-2)` -/
def P3937187660511433167.Spec : Prop :=
  ∀ n, (P3937187660511433167.a n : ℤ) = A001475 (n + 1)

theorem P3937187660511433167.correct : P3937187660511433167.Spec := by
  intro n
  simp only [A001475, Nat.add_sub_cancel]

end A001475

/-! ## A001475.P6156499829972016793

`1/2*A000085(n+2)`
-/

namespace A001475.P6156499829972016793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000085 (n + 2) : ℚ)

end

end A001475.P6156499829972016793

namespace A001475

/-- `1/2*A000085(n+2)` -/
def P6156499829972016793.Spec : Prop :=
  ∀ n, P6156499829972016793.a n = (A001475 (n + 1) : ℚ)

end A001475

/-! ## A001475.P9004719810038155295

`∏[(n+1)/a(n-1)+1]` with `a(0)=1, a(1)=2`
-/

namespace A001475.P9004719810038155295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n + 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001475.P9004719810038155295

namespace A001475

/-- `∏[(n+1)/a(n-1)+1]` -/
def P9004719810038155295.Spec : Prop :=
  ∀ n, P9004719810038155295.a n = (A001475 (n + 1) : ℚ)

end A001475

/-! ## A001475.P10635962382963365393

`a(n-1)+a(n-2)/(n+1)^(-1)` with `a(0)=1, a(1)=2`
-/

namespace A001475.P10635962382963365393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A001475.P10635962382963365393

namespace A001475

/-- `a(n-1)+a(n-2)/(n+1)^(-1)` -/
def P10635962382963365393.Spec : Prop :=
  ∀ n, P10635962382963365393.a n = (A001475 (n + 1) : ℚ)

end A001475

/-! ## A001475.P18193019282168505555

`∑[ceil(A013989(n)/2)]`
-/

namespace A001475.P18193019282168505555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A013989 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001475.P18193019282168505555

namespace A001475

/-- `∑[ceil(A013989(n)/2)]` -/
def P18193019282168505555.Spec : Prop :=
  ∀ n, P18193019282168505555.a n = A001475 (n + 1)

end A001475

/-! ## A001475.P7362805089602834533

`∑[A013989(round(sqrt(n²+1)))/2]`
-/

namespace A001475.P7362805089602834533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013989 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001475.P7362805089602834533

namespace A001475

/-- `∑[A013989(round(sqrt(n²+1)))/2]` -/
def P7362805089602834533.Spec : Prop :=
  ∀ n, P7362805089602834533.a n = (A001475 (n + 1) : ℚ)

end A001475

/-! ## A001475.P18253093517260459024

`a(n-1)+A162970(n)+a(n-1)` with `a(0)=1`
-/

namespace A001475.P18253093517260459024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A162970 n + a (n - 1))

end

end A001475.P18253093517260459024

namespace A001475

/-- `a(n-1)+A162970(n)+a(n-1)` -/
def P18253093517260459024.Spec : Prop :=
  ∀ n, P18253093517260459024.a n = A001475 (n + 1)

end A001475

/-! ## A001475.P2190241055222357295

`∑[A161125(n)+A000085(n)]`
-/

namespace A001475.P2190241055222357295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161125 n + A000085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001475.P2190241055222357295

namespace A001475

/-- `∑[A161125(n)+A000085(n)]` -/
def P2190241055222357295.Spec : Prop :=
  ∀ n, P2190241055222357295.a n = A001475 (n + 1)

end A001475

/-! ## A001475.P13745613384473940501

`A245176(n)+∑[A161125(n)]`
-/

namespace A001475.P13745613384473940501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245176 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001475.P13745613384473940501

namespace A001475

/-- `A245176(n)+∑[A161125(n)]` -/
def P13745613384473940501.Spec : Prop :=
  ∀ n, P13745613384473940501.a n = A001475 (n + 1)

end A001475

/-! ## A001475.P7893396368362879670

`A186738(n+2)-A185309(n)`
-/

namespace A001475.P7893396368362879670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186738 (n + 2) - A185309 n

end

end A001475.P7893396368362879670

namespace A001475

/-- `A186738(n+2)-A185309(n)` -/
def P7893396368362879670.Spec : Prop :=
  ∀ n, P7893396368362879670.a n = A001475 (n + 1)

end A001475

/-! ## A001475.P2509471117230558718

`A000085(n+2)/2`
-/

namespace A001475.P2509471117230558718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 (n + 2) : ℚ) / 2

end

end A001475.P2509471117230558718

namespace A001475

/-- `A000085(n+2)/2` -/
def P2509471117230558718.Spec : Prop :=
  ∀ n, P2509471117230558718.a n = (A001475 (n + 1) : ℚ)

end A001475

/-! ## A001475.P548751073756015276

`Δ[A245176(n+1)/2]`
-/

namespace A001475.P548751073756015276
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245176 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001475.P548751073756015276

namespace A001475

/-- `Δ[A245176(n+1)/2]` -/
def P548751073756015276.Spec : Prop :=
  ∀ n, P548751073756015276.a n = (A001475 (n + 1) : ℚ)

end A001475

/-! ## A001475.P15180696474605750333

`Δ[A294129(n+2)/2]`
-/

namespace A001475.P15180696474605750333
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294129 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001475.P15180696474605750333

namespace A001475

/-- `Δ[A294129(n+2)/2]` -/
def P15180696474605750333.Spec : Prop :=
  ∀ n, P15180696474605750333.a n = (A001475 (n + 1) : ℚ)

end A001475

/-! ## A001475.P2248667586710509847

`record[A099020(n+3)/2]`
-/

namespace A001475.P2248667586710509847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099020 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001475.P2248667586710509847

namespace A001475

/-- `record[A099020(n+3)/2]` -/
def P2248667586710509847.Spec : Prop :=
  ∀ n, P2248667586710509847.a n = (A001475 (n + 1) : ℚ)

end A001475

/-! ## A001475.P10795047067321778407

`(A001189(n+2)+1)/2`
-/

namespace A001475.P10795047067321778407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001189 (n + 2) + 1 : ℚ) / 2

end

end A001475.P10795047067321778407

namespace A001475

/-- `(A001189(n+2)+1)/2` -/
def P10795047067321778407.Spec : Prop :=
  ∀ n, P10795047067321778407.a n = (A001475 (n + 1) : ℚ)

end A001475

/-! ## A001475.P10549027925106193850

`A099020(∑[n]+2*n+3)/2`
-/

namespace A001475.P10549027925106193850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099020 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 3)) : ℚ) / 2

end

end A001475.P10549027925106193850

namespace A001475

/-- `A099020(∑[n]+2*n+3)/2` -/
def P10549027925106193850.Spec : Prop :=
  ∀ n, P10549027925106193850.a n = (A001475 (n + 1) : ℚ)

end A001475

/-! ## A001475.P12555600857136665629

`record[A293808(n)/A059268(n)]`
-/

namespace A001475.P12555600857136665629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293808 n : ℚ) / (A059268 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001475.P12555600857136665629

namespace A001475

/-- `record[A293808(n)/A059268(n)]` -/
def P12555600857136665629.Spec : Prop :=
  ∀ n, P12555600857136665629.a n = (A001475 (n + 1) : ℚ)

end A001475

/-! ## A001475.P8613251336823070685

`record[A293808(n)/A002260(n+1)]`
-/

namespace A001475.P8613251336823070685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293808 n : ℚ) / (A002260 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001475.P8613251336823070685

namespace A001475

/-- `record[A293808(n)/A002260(n+1)]` -/
def P8613251336823070685.Spec : Prop :=
  ∀ n, P8613251336823070685.a n = (A001475 (n + 1) : ℚ)

end A001475

/-! ## A001475.P3750717512589737974

`record[A293808(n)/(A002262(n)+1)]`
-/

namespace A001475.P3750717512589737974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293808 n : ℚ) / (A002262 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001475.P3750717512589737974

namespace A001475

/-- `record[A293808(n)/(A002262(n)+1)]` -/
def P3750717512589737974.Spec : Prop :=
  ∀ n, P3750717512589737974.a n = (A001475 (n + 1) : ℚ)

end A001475

/-! ## A001475.P3558355414206203107

`A293808(A167614(n+1)-2)/2`
-/

namespace A001475.P3558355414206203107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293808 (A167614 (n + 1) - 2).toNat : ℚ) / 2

end

end A001475.P3558355414206203107

namespace A001475

/-- `A293808(A167614(n+1)-2)/2` -/
def P3558355414206203107.Spec : Prop :=
  ∀ n, P3558355414206203107.a n = (A001475 (n + 1) : ℚ)

end A001475

/-!
# A001476: Numbers that are not the sum of distinct positive cubes.

The programs for A001476, there is no canonical definition to state claims against.
-/

/-! ## A001476.P16756868940678024436

`A031981(n+2)`
-/

namespace A001476.P16756868940678024436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031981 (n + 2)

end

end A001476.P16756868940678024436

/-! ## A001476.P892049520895377255

`eq[0, A279329(n)]`
-/

namespace A001476.P892049520895377255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001476.P892049520895377255

/-! ## A001476.P12932268146894233609

`eq[0, A331845(n)]`
-/

namespace A001476.P12932268146894233609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001476.P12932268146894233609

/-! ## A001476.P10518642940681700548

`A000027(lt[A331845(n), 1])`
-/

namespace A001476.P10518642940681700548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A001476.P10518642940681700548

/-! ## A001476.P1061575516670673915

`lt[A279329(n), A055165(val(n²+2, 6))]`
-/

namespace A001476.P1061575516670673915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055165 (SequenceMachineLib.valuation (n ^ 2 + 2) 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001476.P1061575516670673915

/-! ## A001476.P13575400658992352397

`lt[A279329(n), A010051(2*(n+2))+1]`
-/

namespace A001476.P13575400658992352397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 2)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001476.P13575400658992352397

/-! ## A001476.P722567905397100795

`lt[A279329(A028310(n)), 1]`
-/

namespace A001476.P722567905397100795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A001476.P722567905397100795

/-! ## A001476.P6028562396698949991

`lt[A331845(n), A092782(A342671(2*n+1))]`
-/

namespace A001476.P6028562396698949991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (A342671 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001476.P6028562396698949991

/-! ## A001476.P13264548113105486741

`lt[A331845(n), A001221(A183095(2*n+1))]`
-/

namespace A001476.P13264548113105486741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A183095 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001476.P13264548113105486741

/-! ## A001476.P1654901690025545933

`lt[A331845(n), A001285(A250120(n+2))]`
-/

namespace A001476.P1654901690025545933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A250120 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001476.P1654901690025545933

/-! ## A001476.P12340424423728323380

`lt[A331845(n), A001221(A063643(n+1))]`
-/

namespace A001476.P12340424423728323380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A063643 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001476.P12340424423728323380

/-! ## A001476.P1283910705271259019

`comp[A384816(n+1)]`
-/

namespace A001476.P1283910705271259019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001476.P1283910705271259019

/-!
# A001477: The nonnegative integers.

The programs for A001477, the canonical program `A001477.P4768854913810210398` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001477 has offset 0).

The definition of A001477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001477.P4768854913810210398

`n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001477

/-- `n` -/
def P4768854913810210398.Spec : Prop :=
  ∀ n, (P4768854913810210398.a n : ℤ) = A001477 n

theorem P4768854913810210398.correct : P4768854913810210398.Spec := by
  intro n
  simp only [A001477]

end A001477

/-!
# A001478: The negative integers.

The programs for A001478, the canonical program `A001478.P11279598861711037921` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001478 has offset 1).

The definition of A001478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001478.P11279598861711037921

`-(n+1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001478

/-- `-(n+1)` -/
def P11279598861711037921.Spec : Prop :=
  ∀ n, P11279598861711037921.a n = A001478 (n + 1)

theorem P11279598861711037921.correct : P11279598861711037921.Spec := by
  intro n
  simp only [A001478, Nat.add_sub_cancel]

end A001478

/-!
# A001479: Let p = A007645(n) be the n-th generalized cuban prime and write p = x^2 + 3*y^2; a(n) = x.

The programs for A001479, there is no canonical definition to state claims against.
-/

/-! ## A001479.P885474086826688382

`A000196(A007645(n+1)-A033428(A001480(n+1)))`
-/

namespace A001479.P885474086826688382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A007645 (n + 1) - A033428 (A001480 (n + 1)).toNat).toNat

end

end A001479.P885474086826688382

/-!
# A001480: Let p = A007645(n) be the n-th generalized cuban prime and write p = x^2 + 3*y^2; a(n) = y.

The programs for A001480, there is no canonical definition to state claims against.
-/

/-! ## A001480.P15667210180177864711

`A259176(A161345(n+2)+1)`
-/

namespace A001480.P15667210180177864711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259176 (A161345 (n + 2) + 1).toNat

end

end A001480.P15667210180177864711

/-! ## A001480.P2641234871631974829

`A055089(A373158(n+1)+n)`
-/

namespace A001480.P2641234871631974829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 (A373158 (n + 1) + (n : ℤ)).toNat

end

end A001480.P2641234871631974829

/-! ## A001480.P16529744975166189701

`A055778(A152194(n)^A303864(n))`
-/

namespace A001480.P16529744975166189701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 (SequenceMachineLib.roundAway ((A152194 n : ℚ) ^ (A303864 n : ℤ))).toNat

end

end A001480.P16529744975166189701

/-! ## A001480.P10343084510072007974

`A080339(n+1)+A001222(A148672(n))`
-/

namespace A001480.P10343084510072007974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) + A001222 (A148672 n).toNat

end

end A001480.P10343084510072007974

/-! ## A001480.P14900915211509650600

`A001222(A247295(n+2)+A000108(n))`
-/

namespace A001480.P14900915211509650600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A247295 (n + 2) + A000108 n).toNat

end

end A001480.P14900915211509650600

/-!
# A001481: Numbers that are the sum of 2 squares.

The programs for A001481, the canonical program `A001481.P14266788823695492218` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001481 has offset 1).

The definition of A001481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001481.P14266788823695492218

`eq[1, A229062(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A001481

/-- `eq[1, A229062(n)]` -/
def P14266788823695492218.Spec : Prop :=
  ∀ n, (P14266788823695492218.a n : ℤ) = A001481 (n + 1)

theorem P14266788823695492218.correct : P14266788823695492218.Spec := by
  intro n
  simp only [A001481, Nat.add_sub_cancel]

end A001481

/-! ## A001481.P17465730911158262200

`A166687(n+1)-1`
-/

namespace A001481.P17465730911158262200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) - 1

end

end A001481.P17465730911158262200

namespace A001481

/-- `A166687(n+1)-1` -/
def P17465730911158262200.Spec : Prop :=
  ∀ n, P17465730911158262200.a n = A001481 (n + 1)

theorem P17465730911158262200.correct : P17465730911158262200.Spec := by
  intro n
  simp only [A001481, Nat.add_sub_cancel, A001481.P17465730911158262200.a, A001481.P14266788823695492218.f1, A001481.P14266788823695492218.f2, A001481.P14266788823695492218.a, A166687, A166687.P18219030986989704232.a, A229062, A229062.P3765704353507649483.f1, A229062.P3765704353507649483.a, A069011, A069011.P9337676359071489470.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A001481

/-! ## A001481.P10117054051622023369

`floor(A128106(n+1)/2)`
-/

namespace A001481.P10117054051622023369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A128106 (n + 1) : ℚ) / 2⌋

end

end A001481.P10117054051622023369

namespace A001481

/-- `floor(A128106(n+1)/2)` -/
def P10117054051622023369.Spec : Prop :=
  ∀ n, P10117054051622023369.a n = A001481 (n + 1)

end A001481

/-! ## A001481.P13584702264584474605

`∪[A000404(n+1), n²]`
-/

namespace A001481.P13584702264584474605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A001481.P13584702264584474605

namespace A001481

/-- `∪[A000404(n+1), n²]` -/
def P13584702264584474605.Spec : Prop :=
  ∀ n, (P13584702264584474605.a n : ℤ) = A001481 (n + 1)

end A001481

/-! ## A001481.P10792471068295896270

`∪[A000415(n+1), n²]`
-/

namespace A001481.P10792471068295896270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A001481.P10792471068295896270

namespace A001481

/-- `∪[A000415(n+1), n²]` -/
def P10792471068295896270.Spec : Prop :=
  ∀ n, (P10792471068295896270.a n : ℤ) = A001481 (n + 1)

end A001481

/-! ## A001481.P17608942766145769015

`A125110(n+1)^(1/3)`
-/

namespace A001481.P17608942766145769015
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A125110 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A001481.P17608942766145769015

namespace A001481

/-- `A125110(n+1)^(1/3)` -/
def P17608942766145769015.Spec : Prop :=
  ∀ n, P17608942766145769015.a n = (A001481 (n + 1) : ℝ)

end A001481

/-! ## A001481.P4680519486522123179

`∪[2*n², A001983(n+1)]`
-/

namespace A001481.P4680519486522123179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001481.P4680519486522123179

namespace A001481

/-- `∪[2*n², A001983(n+1)]` -/
def P4680519486522123179.Spec : Prop :=
  ∀ n, (P4680519486522123179.a n : ℤ) = A001481 (n + 1)

end A001481

/-! ## A001481.P4389394421726575995

`record[n-A262678(A262678(n))]`
-/

namespace A001481.P4389394421726575995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A262678 (A262678 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001481.P4389394421726575995

namespace A001481

/-- `record[n-A262678(A262678(n))]` -/
def P4389394421726575995.Spec : Prop :=
  ∀ n, P4389394421726575995.a n = A001481 (n + 1)

end A001481

/-! ## A001481.P16387698547451981161

`∪[A000290(n), A000404(n+1)]`
-/

namespace A001481.P16387698547451981161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001481.P16387698547451981161

namespace A001481

/-- `∪[A000290(n), A000404(n+1)]` -/
def P16387698547451981161.Spec : Prop :=
  ∀ n, (P16387698547451981161.a n : ℤ) = A001481 (n + 1)

end A001481

/-! ## A001481.P7077808245897089904

`∪[A000290(n), A000415(n+1)]`
-/

namespace A001481.P7077808245897089904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001481.P7077808245897089904

namespace A001481

/-- `∪[A000290(n), A000415(n+1)]` -/
def P7077808245897089904.Spec : Prop :=
  ∀ n, (P7077808245897089904.a n : ℤ) = A001481 (n + 1)

end A001481

/-! ## A001481.P13746603462124023455

`∪[A001983(n+1), A000982(n)]`
-/

namespace A001481.P13746603462124023455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001481.P13746603462124023455

namespace A001481

/-- `∪[A001983(n+1), A000982(n)]` -/
def P13746603462124023455.Spec : Prop :=
  ∀ n, (P13746603462124023455.a n : ℤ) = A001481 (n + 1)

end A001481

/-! ## A001481.P6672224246809331899

`∪[A001983(n+1), A001105(n)]`
-/

namespace A001481.P6672224246809331899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001481.P6672224246809331899

namespace A001481

/-- `∪[A001983(n+1), A001105(n)]` -/
def P6672224246809331899.Spec : Prop :=
  ∀ n, (P6672224246809331899.a n : ℤ) = A001481 (n + 1)

end A001481

/-! ## A001481.P15347305576763734466

`A125110(n+1)%A166687(n+1)`
-/

namespace A001481.P15347305576763734466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125110 (n + 1)) (A166687 (n + 1))

end

end A001481.P15347305576763734466

namespace A001481

/-- `A125110(n+1)%A166687(n+1)` -/
def P15347305576763734466.Spec : Prop :=
  ∀ n, P15347305576763734466.a n = A001481 (n + 1)

end A001481

/-! ## A001481.P4691146951577465008

`∪[A020668(n+1), A000404(n+1)]`
-/

namespace A001481.P4691146951577465008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001481.P4691146951577465008

namespace A001481

/-- `∪[A020668(n+1), A000404(n+1)]` -/
def P4691146951577465008.Spec : Prop :=
  ∀ n, (P4691146951577465008.a n : ℤ) = A001481 (n + 1)

end A001481

/-! ## A001481.P16064092779125424831

`∪[A140612(n+1), A000404(n+1)]`
-/

namespace A001481.P16064092779125424831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001481.P16064092779125424831

namespace A001481

/-- `∪[A140612(n+1), A000404(n+1)]` -/
def P16064092779125424831.Spec : Prop :=
  ∀ n, (P16064092779125424831.a n : ℤ) = A001481 (n + 1)

end A001481

/-! ## A001481.P12799754583653194354

`∪[A155565(n+1), A000404(n+1)]`
-/

namespace A001481.P12799754583653194354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001481.P12799754583653194354

namespace A001481

/-- `∪[A155565(n+1), A000404(n+1)]` -/
def P12799754583653194354.Spec : Prop :=
  ∀ n, (P12799754583653194354.a n : ℤ) = A001481 (n + 1)

end A001481

/-! ## A001481.P8562807558481515291

`filter[A327609(n+1), A229062(#)]`
-/

namespace A001481.P8562807558481515291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A001481.P8562807558481515291

namespace A001481

/-- `filter[A327609(n+1), A229062(#)]` -/
def P8562807558481515291.Spec : Prop :=
  ∀ n, P8562807558481515291.a n = A001481 (n + 1)

end A001481

/-! ## A001481.P14061903477379364661

`filter[A383784(n+1), A229062(#)]`
-/

namespace A001481.P14061903477379364661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A001481.P14061903477379364661

namespace A001481

/-- `filter[A383784(n+1), A229062(#)]` -/
def P14061903477379364661.Spec : Prop :=
  ∀ n, P14061903477379364661.a n = A001481 (n + 1)

end A001481

/-! ## A001481.P1146674496930039207

`lt[A002828(n), 3]`
-/

namespace A001481.P1146674496930039207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A001481.P1146674496930039207

namespace A001481

/-- `lt[A002828(n), 3]` -/
def P1146674496930039207.Spec : Prop :=
  ∀ n, (P1146674496930039207.a n : ℤ) = A001481 (n + 1)

end A001481

/-! ## A001481.P15931018162716080493

`filter[A351723(n+1), A229062(#)]`
-/

namespace A001481.P15931018162716080493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A001481.P15931018162716080493

namespace A001481

/-- `filter[A351723(n+1), A229062(#)]` -/
def P15931018162716080493.Spec : Prop :=
  ∀ n, P15931018162716080493.a n = A001481 (n + 1)

end A001481

/-!
# A001482: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^4 in powers of x.

The programs for A001482, there is no canonical definition to state claims against.
-/

/-! ## A001482.P4482517402242337311

`A047265(A052905(n)+9)`
-/

namespace A001482.P4482517402242337311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A052905 n + 9).toNat

end

end A001482.P4482517402242337311

/-! ## A001482.P14012969088953456140

`A047265(A055999(n)+10)`
-/

namespace A001482.P14012969088953456140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A055999 n + 10).toNat

end

end A001482.P14012969088953456140

/-! ## A001482.P8633720531762935796

`A047265(A167614(n+2)+1)`
-/

namespace A001482.P8633720531762935796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A167614 (n + 2) + 1).toNat

end

end A001482.P8633720531762935796

/-! ## A001482.P18174534372925313636

`A047265(A167499(n+2)-1)`
-/

namespace A001482.P18174534372925313636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A167499 (n + 2) - 1).toNat

end

end A001482.P18174534372925313636

/-! ## A001482.P9234933044473319558

`A047265(A167487(n+2)-3)`
-/

namespace A001482.P9234933044473319558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A167487 (n + 2) - 3).toNat

end

end A001482.P9234933044473319558

/-! ## A001482.P7619424418169330839

`A047265(A000096(n+2)+5)`
-/

namespace A001482.P7619424418169330839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A000096 (n + 2) + 5).toNat

end

end A001482.P7619424418169330839

/-! ## A001482.P10992942834370242922

`A047265(A000217(n+3)+4)`
-/

namespace A001482.P10992942834370242922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A000217 (n + 3) + 4).toNat

end

end A001482.P10992942834370242922

/-! ## A001482.P17534602503464494524

`A047265(A027379(n+1)+7)`
-/

namespace A001482.P17534602503464494524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A027379 (n + 1) + 7).toNat

end

end A001482.P17534602503464494524

/-! ## A001482.P2320003711866293194

`A047265(A055998(n+1)+7)`
-/

namespace A001482.P2320003711866293194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A055998 (n + 1) + 7).toNat

end

end A001482.P2320003711866293194

/-! ## A001482.P16637251403541707917

`A047265(A046691(n+1)+8)`
-/

namespace A001482.P16637251403541707917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A046691 (n + 1) + 8).toNat

end

end A001482.P16637251403541707917

/-! ## A001482.P14342174546407392334

`A047265(A008805(2*(n+2))+4)`
-/

namespace A001482.P14342174546407392334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A008805 (2 * (n + 2)) + 4).toNat

end

end A001482.P14342174546407392334

/-!
# A001483: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^5 in powers of x.

The programs for A001483, there is no canonical definition to state claims against.
-/

/-! ## A001483.P17003299083904851588

`A047265(A167499(n+3))`
-/

namespace A001483.P17003299083904851588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A167499 (n + 3)).toNat

end

end A001483.P17003299083904851588

/-! ## A001483.P3908344763010157044

`A047265(A167614(n+3)+2)`
-/

namespace A001483.P3908344763010157044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A167614 (n + 3) + 2).toNat

end

end A001483.P3908344763010157044

/-! ## A001483.P16456465286797751613

`A047265(A000217(n+4)+5)`
-/

namespace A001483.P16456465286797751613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A000217 (n + 4) + 5).toNat

end

end A001483.P16456465286797751613

/-! ## A001483.P2884010932409338720

`A047265(A027379(n+2)+8)`
-/

namespace A001483.P2884010932409338720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A027379 (n + 2) + 8).toNat

end

end A001483.P2884010932409338720

/-! ## A001483.P7709434394113097176

`A047265(A055998(n+3)-(n-3))`
-/

namespace A001483.P7709434394113097176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A055998 (n + 3) - ((n : ℤ) - 3)).toNat

end

end A001483.P7709434394113097176

/-!
# A001484: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^6 in powers of x.

The programs for A001484, there is no canonical definition to state claims against.
-/

/-! ## A001484.P3715072498300844701

`A047265(A167499(n+4)+1)`
-/

namespace A001484.P3715072498300844701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A167499 (n + 4) + 1).toNat

end

end A001484.P3715072498300844701

/-! ## A001484.P9930318000966145141

`A047265(A000217(n+5)+6)`
-/

namespace A001484.P9930318000966145141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A000217 (n + 5) + 6).toNat

end

end A001484.P9930318000966145141

/-! ## A001484.P638552746071378292

`A047265(A161680(n+6)+6)`
-/

namespace A001484.P638552746071378292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A161680 (n + 6) + 6).toNat

end

end A001484.P638552746071378292

/-! ## A001484.P1964613937149013745

`A047265(A000124(n+6)-(n+1))`
-/

namespace A001484.P1964613937149013745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A001484.P1964613937149013745

/-! ## A001484.P3252100991149387445

`A047265(A046691(n)+A016777(n+7))`
-/

namespace A001484.P3252100991149387445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A046691 n + A016777 (n + 7)).toNat

end

end A001484.P3252100991149387445

/-! ## A001484.P17427105445589746867

`A047265(A055999(n+4)-A004273(n+1))`
-/

namespace A001484.P17427105445589746867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A055999 (n + 4) - A004273 (n + 1)).toNat

end

end A001484.P17427105445589746867

/-! ## A001484.P7881270356184138584

`A047265(A002620(n+2)+A002620(n+9))`
-/

namespace A001484.P7881270356184138584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A001484.P7881270356184138584

/-!
# A001485: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^7 in powers of x.

The programs for A001485, there is no canonical definition to state claims against.
-/

/-! ## A001485.P7316521669245138360

`A047265(A167487(n+5))`
-/

namespace A001485.P7316521669245138360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A167487 (n + 5)).toNat

end

end A001485.P7316521669245138360

/-! ## A001485.P15353404129337321188

`A047265(A167499(n+5)+2)`
-/

namespace A001485.P15353404129337321188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A167499 (n + 5) + 2).toNat

end

end A001485.P15353404129337321188

/-! ## A001485.P13463325490451166654

`A047265(A167614(n+5)+4)`
-/

namespace A001485.P13463325490451166654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A167614 (n + 5) + 4).toNat

end

end A001485.P13463325490451166654

/-! ## A001485.P6910246595695629625

`A047265(A000217(n+6)+7)`
-/

namespace A001485.P6910246595695629625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A000217 (n + 6) + 7).toNat

end

end A001485.P6910246595695629625

/-! ## A001485.P6851363883555453663

`A047265(A161680(n+7)+7)`
-/

namespace A001485.P6851363883555453663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A161680 (n + 7) + 7).toNat

end

end A001485.P6851363883555453663

/-! ## A001485.P12804758708200584445

`A047265(A046691(n+7)-A016777(n+4))`
-/

namespace A001485.P12804758708200584445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A046691 (n + 7) - A016777 (n + 4)).toNat

end

end A001485.P12804758708200584445

/-!
# A001486: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^8 in powers of x.

The programs for A001486, there is no canonical definition to state claims against.
-/

/-! ## A001486.P13873343614193825833

`A047265(A167499(n+6)+3)`
-/

namespace A001486.P13873343614193825833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A167499 (n + 6) + 3).toNat

end

end A001486.P13873343614193825833

/-! ## A001486.P13096807379413612131

`A047265(A000217(n+7)+8)`
-/

namespace A001486.P13096807379413612131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A000217 (n + 7) + 8).toNat

end

end A001486.P13096807379413612131

/-! ## A001486.P9239913670020917347

`A047265(A161680(n+8)+8)`
-/

namespace A001486.P9239913670020917347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A161680 (n + 8) + 8).toNat

end

end A001486.P9239913670020917347

/-! ## A001486.P2432160840387535123

`A047265(A000124(n+8)-(n+1))`
-/

namespace A001486.P2432160840387535123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A001486.P2432160840387535123

/-! ## A001486.P328618316731659196

`A047265(A055999(n+6)-A004273(n+2))`
-/

namespace A001486.P328618316731659196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A055999 (n + 6) - A004273 (n + 2)).toNat

end

end A001486.P328618316731659196

/-!
# A001487: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^9 in powers of x.

The programs for A001487, there is no canonical definition to state claims against.
-/

/-! ## A001487.P5776322372367042942

`A047265(A000217(n+8)+9)`
-/

namespace A001487.P5776322372367042942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A000217 (n + 8) + 9).toNat

end

end A001487.P5776322372367042942

/-! ## A001487.P5732772897534622324

`A047265(A161680(n+9)+9)`
-/

namespace A001487.P5732772897534622324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A161680 (n + 9) + 9).toNat

end

end A001487.P5732772897534622324

/-! ## A001487.P16696228410336891845

`A047265(A000124(n+9)-(n+1))`
-/

namespace A001487.P16696228410336891845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A000124 (n + 9) - (n + 1 : ℤ)).toNat

end

end A001487.P16696228410336891845

/-! ## A001487.P2196907850734563615

`A047265(A055999(n+7)-2*(n+2))`
-/

namespace A001487.P2196907850734563615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A055999 (n + 7) - (2 * (n + 2) : ℤ)).toNat

end

end A001487.P2196907850734563615

/-! ## A001487.P7591069393304005820

`A047265(A046691(n+3)+A016777(n+11))`
-/

namespace A001487.P7591069393304005820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A046691 (n + 3) + A016777 (n + 11)).toNat

end

end A001487.P7591069393304005820

/-!
# A001488: Expansion of (Product_{j>=1} (1-(-x)^j) - 1)^10 in powers of x.

The programs for A001488, there is no canonical definition to state claims against.
-/

/-! ## A001488.P1356109097896832998

`A047265(A167487(n+8)+3)`
-/

namespace A001488.P1356109097896832998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A167487 (n + 8) + 3).toNat

end

end A001488.P1356109097896832998

/-! ## A001488.P16006580923661074172

`A047265(A000217(n+9)+10)`
-/

namespace A001488.P16006580923661074172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A000217 (n + 9) + 10).toNat

end

end A001488.P16006580923661074172

/-! ## A001488.P7337778884049820277

`A047265(A161680(n+10)+10)`
-/

namespace A001488.P7337778884049820277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A161680 (n + 10) + 10).toNat

end

end A001488.P7337778884049820277

/-! ## A001488.P16428730155974107895

`A047265(A055999(n+8)-A004273(n+3))`
-/

namespace A001488.P16428730155974107895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A055999 (n + 8) - A004273 (n + 3)).toNat

end

end A001488.P16428730155974107895

/-! ## A001488.P14332151611867871886

`A047265(A046691(n+10)-A016777(n+6))`
-/

namespace A001488.P14332151611867871886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A046691 (n + 10) - A016777 (n + 6)).toNat

end

end A001488.P14332151611867871886

/-!
# A001489: a(n) = -n.

The programs for A001489, the canonical program `A001489.P15233530513763566776` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001489 has offset 0).

The definition of A001489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-n` (program `A001489.P15233530513763566776`, by `A001489.P15233530513763566776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001489.P15233530513763566776

`-n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001489

/-- `-n` -/
def P15233530513763566776.Spec : Prop :=
  ∀ n, P15233530513763566776.a n = A001489 n

theorem P15233530513763566776.correct : P15233530513763566776.Spec := by
  intro n
  simp only [A001489]

end A001489

/-!
# A001490: Expansion of {Product_{j>=1} (1 - (-x)^j) - 1}^12 in powers of x.

The programs for A001490, there is no canonical definition to state claims against.
-/

/-! ## A001490.P7449054170307156152

`A047265(A000217(n+11)+12)`
-/

namespace A001490.P7449054170307156152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A000217 (n + 11) + 12).toNat

end

end A001490.P7449054170307156152

/-! ## A001490.P2381724237195823141

`A047265(A161680(n+12)+12)`
-/

namespace A001490.P2381724237195823141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A161680 (n + 12) + 12).toNat

end

end A001490.P2381724237195823141

/-! ## A001490.P3132558442753669452

`A047265(A046691(n+6)+A016777(n+15))`
-/

namespace A001490.P3132558442753669452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (A046691 (n + 6) + A016777 (n + 15)).toNat

end

end A001490.P3132558442753669452

/-! ## A001490.P1931324892482157647

`A047265(eq[13, A131818(n+1)])`
-/

namespace A001490.P1931324892482157647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001490.P1931324892482157647

/-!
# A001492: Clock chimes with a quarter-hour bell.

The programs for A001492, the canonical program `A001492.P11288150812351078527` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001492 has offset 0).

The definition of A001492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001492.P11288150812351078527

`A007879(A004524(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001492

/-- `A007879(A004524(n))` -/
def P11288150812351078527.Spec : Prop :=
  ∀ n, P11288150812351078527.a n = A001492 n

theorem P11288150812351078527.correct : P11288150812351078527.Spec := by
  intro n
  simp only [A001492]

end A001492

/-!
# A001494: Numbers k such that phi(k) = phi(k+2).

The programs for A001494, there is no canonical definition to state claims against.
-/

/-! ## A001494.P10723490645761171745

`A066812(n+1)-1`
-/

namespace A001494.P10723490645761171745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066812 (n + 1) - 1

end

end A001494.P10723490645761171745

/-! ## A001494.P2831475090747369291

`A144403(C(2, n))+A066812(n+1)`
-/

namespace A001494.P2831475090747369291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144403 (Nat.choose 2 n) + A066812 (n + 1)

end

end A001494.P2831475090747369291

/-! ## A001494.P14938157722023530719

`abs(A066812(n+1)+-A162292(n+1)%2)`
-/

namespace A001494.P14938157722023530719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066812 (n + 1) + Int.tmod (-A162292 (n + 1)) 2|

end

end A001494.P14938157722023530719

/-! ## A001494.P8673807744966043857

`A228561(A302126(gcd(n, n+1)))+A066812(n+1)`
-/

namespace A001494.P8673807744966043857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228561 (A302126 (Nat.gcd n (n + 1))).toNat + A066812 (n + 1)

end

end A001494.P8673807744966043857

/-! ## A001494.P15939740703077374351

`A067856(A065091(n+1))+A066812(n+1)`
-/

namespace A001494.P15939740703077374351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A065091 (n + 1)).toNat + A066812 (n + 1)

end

end A001494.P15939740703077374351

/-! ## A001494.P2022946974565063589

`record[A273943(A179186(n+1))]`
-/

namespace A001494.P2022946974565063589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A179186 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001494.P2022946974565063589

/-! ## A001494.P9157767160334383074

`eq[A000010(n+1), A000010(n+3)]+1`
-/

namespace A001494.P9157767160334383074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A001494.P9157767160334383074

/-! ## A001494.P2602411536385044615

`A023443(A066812(n+1))`
-/

namespace A001494.P2602411536385044615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A066812 (n + 1)).toNat

end

end A001494.P2602411536385044615

/-!
# A001495: Number of symmetric 0-1 (n+1) X (n+1) matrices with row sums 2 and first row starting 1,1 for n > 0, a(0)=1.

The programs for A001495, there is no canonical definition to state claims against.
-/

/-! ## A001495.P11824378520143912380

`A241826(A007812(n+2))`
-/

namespace A001495.P11824378520143912380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241826 (A007812 (n + 2)).toNat

end

end A001495.P11824378520143912380

/-! ## A001495.P10563256848082002970

`A008618(2*A208733(n))`
-/

namespace A001495.P10563256848082002970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (2 * A208733 n).toNat

end

end A001495.P10563256848082002970

/-! ## A001495.P11216375747968788710

`A008618(lcm(2, A208733(n)))`
-/

namespace A001495.P11216375747968788710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (Int.lcm 2 (A208733 n))

end

end A001495.P11216375747968788710

/-!
# A001496: Number of 4 X 4 matrices with nonnegative integer entries and row and column sums equal to n.

The programs for A001496, the canonical program `A001496.P11010017757842893845` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001496 has offset 0).

The definition of A001496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001496.P11010017757842893845

`C(n+3, 3)+20*C(n+4, 5)+152*C(n+5, 7)+352*C(n+6, 9)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001496

/-- `C(n+3, 3)+20*C(n+4, 5)+152*C(n+5, 7)+352*C(n+6, 9)` -/
def P11010017757842893845.Spec : Prop :=
  ∀ n, (P11010017757842893845.a n : ℤ) = A001496 n

theorem P11010017757842893845.correct : P11010017757842893845.Spec := by
  intro n
  simp only [A001496]

end A001496

/-! ## A001496.P772532904327209149

`A257493(A155212(n)+12)`
-/

namespace A001496.P772532904327209149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (A155212 n + 12).toNat

end

end A001496.P772532904327209149

namespace A001496

/-- `A257493(A155212(n)+12)` -/
def P772532904327209149.Spec : Prop :=
  ∀ n, P772532904327209149.a n = A001496 n

end A001496

/-! ## A001496.P13003809478528335397

`A257493(eq[3, A141169(n)])`
-/

namespace A001496.P13003809478528335397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001496.P13003809478528335397

namespace A001496

/-- `A257493(eq[3, A141169(n)])` -/
def P13003809478528335397.Spec : Prop :=
  ∀ n, P13003809478528335397.a n = A001496 n

end A001496

/-! ## A001496.P1261512464674970632

`A257493(eq[4, A002262(n)])`
-/

namespace A001496.P1261512464674970632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001496.P1261512464674970632

namespace A001496

/-- `A257493(eq[4, A002262(n)])` -/
def P1261512464674970632.Spec : Prop :=
  ∀ n, P1261512464674970632.a n = A001496 n

end A001496

/-! ## A001496.P1403361390291529079

`A257493(eq[5, A002260(n+1)])`
-/

namespace A001496.P1403361390291529079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001496.P1403361390291529079

namespace A001496

/-- `A257493(eq[5, A002260(n+1)])` -/
def P1403361390291529079.Spec : Prop :=
  ∀ n, P1403361390291529079.a n = A001496 n

end A001496

/-!
# A001497: Triangle of coefficients of Bessel polynomials (exponents in decreasing order).

The programs for A001497, the canonical program `A001497.P12548197760603764802` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001497 has offset 0).

The definition of A001497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001497.P12548197760603764802

`A132062(comp[∑[n]])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A001497

/-- `A132062(comp[∑[n]])` -/
def P12548197760603764802.Spec : Prop :=
  ∀ n, P12548197760603764802.a n = A001497 n

theorem P12548197760603764802.correct : P12548197760603764802.Spec := by
  intro n
  simp only [A001497]

end A001497

/-! ## A001497.P9842177283121054954

`A001498(A061579(n))`
-/

namespace A001497.P9842177283121054954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A061579 n).toNat

end

end A001497.P9842177283121054954

namespace A001497

/-- `A001498(A061579(n))` -/
def P9842177283121054954.Spec : Prop :=
  ∀ n, P9842177283121054954.a n = A001497 n

end A001497

/-! ## A001497.P3531630874483557415

`A193229(n)/A233543(n)`
-/

namespace A001497.P3531630874483557415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193229 n : ℚ) / (A233543 n : ℚ)

end

end A001497.P3531630874483557415

namespace A001497

/-- `A193229(n)/A233543(n)` -/
def P3531630874483557415.Spec : Prop :=
  ∀ n, P3531630874483557415.a n = (A001497 n : ℚ)

end A001497

/-! ## A001497.P6266713114268604608

`A001498(A038722(n+1)-1)`
-/

namespace A001497.P6266713114268604608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A038722 (n + 1) - 1).toNat

end

end A001497.P6266713114268604608

namespace A001497

/-- `A001498(A038722(n+1)-1)` -/
def P6266713114268604608.Spec : Prop :=
  ∀ n, P6266713114268604608.a n = A001497 n

end A001497

/-! ## A001497.P1353214336536293705

`A102625(n)/A166350(n+1)`
-/

namespace A001497.P1353214336536293705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102625 n : ℚ) / (A166350 (n + 1) : ℚ)

end

end A001497.P1353214336536293705

namespace A001497

/-- `A102625(n)/A166350(n+1)` -/
def P1353214336536293705.Spec : Prop :=
  ∀ n, P1353214336536293705.a n = (A001497 n : ℚ)

end A001497

/-! ## A001497.P1344785972786608443

`A001498(A002024(n+1)²-(n+1))`
-/

namespace A001497.P1344785972786608443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A001497.P1344785972786608443

namespace A001497

/-- `A001498(A002024(n+1)²-(n+1))` -/
def P1344785972786608443.Spec : Prop :=
  ∀ n, P1344785972786608443.a n = A001497 n

end A001497

/-! ## A001497.P14072117705399031194

`A001498(A014132(n+1)-2*A002260(n+1))`
-/

namespace A001497.P14072117705399031194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A014132 (n + 1) - 2 * A002260 (n + 1)).toNat

end

end A001497.P14072117705399031194

namespace A001497

/-- `A001498(A014132(n+1)-2*A002260(n+1))` -/
def P14072117705399031194.Spec : Prop :=
  ∀ n, P14072117705399031194.a n = A001497 n

end A001497

/-! ## A001497.P1921783504509699610

`A001498(A002024(n+1)*A002024(n+1)-(n+1))`
-/

namespace A001497.P1921783504509699610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A002024 (n + 1) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A001497.P1921783504509699610

namespace A001497

/-- `A001498(A002024(n+1)*A002024(n+1)-(n+1))` -/
def P1921783504509699610.Spec : Prop :=
  ∀ n, P1921783504509699610.a n = A001497 n

end A001497

/-! ## A001497.P8884760023904344266

`A001498(A014132(n+1)-A002260(n+1)-A002260(n+1))`
-/

namespace A001497.P8884760023904344266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A014132 (n + 1) - A002260 (n + 1) - A002260 (n + 1)).toNat

end

end A001497.P8884760023904344266

namespace A001497

/-- `A001498(A014132(n+1)-A002260(n+1)-A002260(n+1))` -/
def P8884760023904344266.Spec : Prop :=
  ∀ n, P8884760023904344266.a n = A001497 n

end A001497

/-! ## A001497.P1946854779579263366

`A001498(A038722(n+2))`
-/

namespace A001497.P1946854779579263366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A038722 (n + 2)).toNat

end

end A001497.P1946854779579263366

namespace A001497

/-- `A001498(A038722(n+2))` -/
def P1946854779579263366.Spec : Prop :=
  ∀ n, P1946854779579263366.a n = A001497 n

end A001497

/-! ## A001497.P2676645996774100367

`A109767(n)/A137688(n)`
-/

namespace A001497.P2676645996774100367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109767 n : ℚ) / (A137688 n : ℚ)

end

end A001497.P2676645996774100367

namespace A001497

/-- `A109767(n)/A137688(n)` -/
def P2676645996774100367.Spec : Prop :=
  ∀ n, P2676645996774100367.a n = (A001497 n : ℚ)

end A001497

/-! ## A001497.P4525858490708073663

`A119274(n)/A130321(n)`
-/

namespace A001497.P4525858490708073663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119274 n : ℚ) / (A130321 n : ℚ)

end

end A001497.P4525858490708073663

namespace A001497

/-- `A119274(n)/A130321(n)` -/
def P4525858490708073663.Spec : Prop :=
  ∀ n, P4525858490708073663.a n = (A001497 n : ℚ)

end A001497

/-! ## A001497.P7192100453849135196

`A039683(n+1)/A051142(n+1)*A119274(n)`
-/

namespace A001497.P7192100453849135196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039683 (n + 1) : ℚ) / (A051142 (n + 1) : ℚ) * (A119274 n : ℚ)

end

end A001497.P7192100453849135196

namespace A001497

/-- `A039683(n+1)/A051142(n+1)*A119274(n)` -/
def P7192100453849135196.Spec : Prop :=
  ∀ n, P7192100453849135196.a n = (A001497 n : ℚ)

end A001497

/-!
# A001498: Triangle a(n,k) (n >= 0, 0 <= k <= n) of coefficients of Bessel polynomials y_n(x) (exponents in increasing order).

The programs for A001498, the canonical program `A001498.P13887111069766710405` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001498 has offset 0).

The definition of A001498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001498.P12674898353668437665

`A144331(A061885(n))`
-/

namespace A001498.P12674898353668437665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144331 (A061885 n).toNat

end

end A001498.P12674898353668437665

namespace A001498

/-- `A144331(A061885(n))` -/
def P12674898353668437665.Spec : Prop :=
  ∀ n, P12674898353668437665.a n = A001498 n

end A001498

/-! ## A001498.P8199760897506783787

`A144331(eq[1, A118175(n)])`
-/

namespace A001498.P8199760897506783787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144331 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001498.P8199760897506783787

namespace A001498

/-- `A144331(eq[1, A118175(n)])` -/
def P8199760897506783787.Spec : Prop :=
  ∀ n, P8199760897506783787.a n = A001498 n

end A001498

/-! ## A001498.P3020247595262637533

`A144331(A004201(n+1)-1)`
-/

namespace A001498.P3020247595262637533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144331 (A004201 (n + 1) - 1).toNat

end

end A001498.P3020247595262637533

namespace A001498

/-- `A144331(A004201(n+1)-1)` -/
def P3020247595262637533.Spec : Prop :=
  ∀ n, P3020247595262637533.a n = A001498 n

end A001498

/-! ## A001498.P9345159435127523157

`A144331(record[n%(A144331(n)+n)])`
-/

namespace A001498.P9345159435127523157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A144331 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144331 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001498.P9345159435127523157

namespace A001498

/-- `A144331(record[n%(A144331(n)+n)])` -/
def P9345159435127523157.Spec : Prop :=
  ∀ n, P9345159435127523157.a n = A001498 n

end A001498

/-! ## A001498.P14495867407404693975

`A043302(n+1)/A130321(n)`
-/

namespace A001498.P14495867407404693975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043302 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A001498.P14495867407404693975

namespace A001498

/-- `A043302(n+1)/A130321(n)` -/
def P14495867407404693975.Spec : Prop :=
  ∀ n, P14495867407404693975.a n = (A001498 n : ℚ)

end A001498

/-! ## A001498.P13509671066016079416

`A193561(n)/A000142(A004736(n+1))`
-/

namespace A001498.P13509671066016079416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193561 n : ℚ) / (A000142 (A004736 (n + 1)).toNat : ℚ)

end

end A001498.P13509671066016079416

namespace A001498

/-- `A193561(n)/A000142(A004736(n+1))` -/
def P13509671066016079416.Spec : Prop :=
  ∀ n, P13509671066016079416.a n = (A001498 n : ℚ)

end A001498

/-! ## A001498.P13887111069766710405

`A001497(A061579(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A001498

/-- `A001497(A061579(n))` -/
def P13887111069766710405.Spec : Prop :=
  ∀ n, P13887111069766710405.a n = A001498 n

theorem P13887111069766710405.correct : P13887111069766710405.Spec := by
  intro n
  simp only [A001498]

end A001498

/-! ## A001498.P6097115232692296325

`A001497(A114327(n)+n)`
-/

namespace A001498.P6097115232692296325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 (A114327 n + (n : ℤ)).toNat

end

end A001498.P6097115232692296325

namespace A001498

/-- `A001497(A114327(n)+n)` -/
def P6097115232692296325.Spec : Prop :=
  ∀ n, P6097115232692296325.a n = A001498 n

end A001498

/-! ## A001498.P13115446796917125388

`A144299(A245300(n))`
-/

namespace A001498.P13115446796917125388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 (A245300 n).toNat

end

end A001498.P13115446796917125388

namespace A001498

/-- `A144299(A245300(n))` -/
def P13115446796917125388.Spec : Prop :=
  ∀ n, P13115446796917125388.a n = A001498 n

end A001498

/-! ## A001498.P12127063910043776748

`A113025(n)/A059268(n)`
-/

namespace A001498.P12127063910043776748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113025 n : ℚ) / (A059268 n : ℚ)

end

end A001498.P12127063910043776748

namespace A001498

/-- `A113025(n)/A059268(n)` -/
def P12127063910043776748.Spec : Prop :=
  ∀ n, P12127063910043776748.a n = (A001498 n : ℚ)

end A001498

/-! ## A001498.P13342660118746213620

`A104548(A007401(n+1))`
-/

namespace A001498.P13342660118746213620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104548 (A007401 (n + 1)).toNat

end

end A001498.P13342660118746213620

namespace A001498

/-- `A104548(A007401(n+1))` -/
def P13342660118746213620.Spec : Prop :=
  ∀ n, P13342660118746213620.a n = A001498 n

end A001498

/-!
# A001499: Number of n X n matrices with exactly 2 1's in each row and column, other entries 0.

The programs for A001499, the canonical program `A001499.P11499502729813492111` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001499 has offset 0).

The definition of A001499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001499.P11499502729813492111

`(n²-n)*(a(n-1)+(n-1)/2*a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001499

/-- `(n²-n)*(a(n-1)+(n-1)/2*a(n-2))` -/
def P11499502729813492111.Spec : Prop :=
  ∀ n, P11499502729813492111.a n = (A001499 n : ℚ)

end A001499

/-! ## A001499.P403736138102120468

`n*(n-1)/2*(2*a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A001499.P403736138102120468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 * (2 * a (n - 1) + ((n : ℤ) - 1 : ℚ) * a (n - 2))

end

end A001499.P403736138102120468

namespace A001499

/-- `n*(n-1)/2*(2*a(n-1)+(n-1)*a(n-2))` -/
def P403736138102120468.Spec : Prop :=
  ∀ n, P403736138102120468.a n = (A001499 n : ℚ)

end A001499

/-! ## A001499.P2087766771079646766

`A189849(n)/A000079(n)²`
-/

namespace A001499.P2087766771079646766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189849 n : ℚ) / (A000079 n ^ 2 : ℚ)

end

end A001499.P2087766771079646766

namespace A001499

/-- `A189849(n)/A000079(n)²` -/
def P2087766771079646766.Spec : Prop :=
  ∀ n, P2087766771079646766.a n = (A001499 n : ℚ)

end A001499

/-! ## A001499.P4145781399551374843

`A189849(n)/A000079(2*n)`
-/

namespace A001499.P4145781399551374843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189849 n : ℚ) / (A000079 (2 * n) : ℚ)

end

end A001499.P4145781399551374843

namespace A001499

/-- `A189849(n)/A000079(2*n)` -/
def P4145781399551374843.Spec : Prop :=
  ∀ n, P4145781399551374843.a n = (A001499 n : ℚ)

end A001499

/-! ## A001499.P11325511427527183800

`A189849(n)/A011782(n+1)²`
-/

namespace A001499.P11325511427527183800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189849 n : ℚ) / (A011782 (n + 1) ^ 2 : ℚ)

end

end A001499.P11325511427527183800

namespace A001499

/-- `A189849(n)/A011782(n+1)²` -/
def P11325511427527183800.Spec : Prop :=
  ∀ n, P11325511427527183800.a n = (A001499 n : ℚ)

end A001499

