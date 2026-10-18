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
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A118901: Volumes of cuboids with integer sides and main diagonal.

The programs for A118901, there is no canonical definition to state claims against.
-/

/-! ## A118901.P8464524449647334413

`∑[A079430(A177930(n+1))]`
-/

namespace A118901.P8464524449647334413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079430 (A177930 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118901.P8464524449647334413

/-! ## A118901.P9735656943841546758

`∑[A178573(A102296(val(n+1, 2)))]`
-/

namespace A118901.P9735656943841546758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178573 (A102296 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118901.P9735656943841546758

/-! ## A118901.P3667836010526034607

`A003997(n+1)*A083954(A287804(n))`
-/

namespace A118901.P3667836010526034607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (n + 1) * A083954 (A287804 n).toNat

end

end A118901.P3667836010526034607

/-!
# A118902: Surfaces of cuboids with integer sides and main diagonal.

The programs for A118902, there is no canonical definition to state claims against.
-/

/-! ## A118902.P10218869250241567007

`filter[A222415(2*n+1), A369034(#)]`
-/

namespace A118902.P10218869250241567007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222415 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369034 (f1 j).toNat = 1) n)

end

end A118902.P10218869250241567007

/-!
# A118903: Areas of rectangles with integer sides and diagonal.

The programs for A118903, there is no canonical definition to state claims against.
-/

/-! ## A118903.P5919574282551716217

`2*A009112(n+1)`
-/

namespace A118903.P5919574282551716217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009112 (n + 1)

end

end A118903.P5919574282551716217

/-! ## A118903.P12118865037800772240

`A256418(n+1)/2`
-/

namespace A118903.P12118865037800772240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256418 (n + 1) : ℚ) / 2

end

end A118903.P12118865037800772240

/-! ## A118903.P18043197846211348521

`12*A177887(n+1)`
-/

namespace A118903.P18043197846211348521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A177887 (n + 1)

end

end A118903.P18043197846211348521

/-! ## A118903.P16633420803108653807

`A009112(A000027(n+1))+A009112(n+1)`
-/

namespace A118903.P16633420803108653807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009112 (A000027 (n + 1)).toNat + A009112 (n + 1)

end

end A118903.P16633420803108653807

/-! ## A118903.P3875372974442140179

`A256418(n+1)-A009112(n+1)-A009112(n+1)`
-/

namespace A118903.P3875372974442140179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256418 (n + 1) - A009112 (n + 1) - A009112 (n + 1)

end

end A118903.P3875372974442140179

/-! ## A118903.P2500832920660646575

`A009112(n+1)+A009112(n+1)%A057096(n+1)`
-/

namespace A118903.P2500832920660646575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009112 (n + 1) + Int.tmod (A009112 (n + 1)) (A057096 (n + 1))

end

end A118903.P2500832920660646575

/-! ## A118903.P3752675850536410134

`record[2*A009111(A032742(n+1))]`
-/

namespace A118903.P3752675850536410134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009111 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118903.P3752675850536410134

/-! ## A118903.P3317931371526746059

`record[2*A009111(A054576(n+1))]`
-/

namespace A118903.P3317931371526746059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009111 (A054576 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118903.P3317931371526746059

/-! ## A118903.P1019859024700100568

`A008594(A177887(n+1))`
-/

namespace A118903.P1019859024700100568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A177887 (n + 1)).toNat

end

end A118903.P1019859024700100568

/-! ## A118903.P12189887491195570052

`A008594(A009112(n+1)/6)`
-/

namespace A118903.P12189887491195570052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (SequenceMachineLib.roundAway ((A009112 (n + 1) : ℚ) / 6)).toNat

end

end A118903.P12189887491195570052

/-! ## A118903.P9705931171166592197

`A008458(A009112(n+1)/3)`
-/

namespace A118903.P9705931171166592197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((A009112 (n + 1) : ℚ) / 3)).toNat

end

end A118903.P9705931171166592197

/-! ## A118903.P17644695675665648734

`A014682(A256418(n+1))`
-/

namespace A118903.P17644695675665648734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A256418 (n + 1)).toNat

end

end A118903.P17644695675665648734

/-! ## A118903.P17389610499025074680

`A008574(A009112(n+1)/2)`
-/

namespace A118903.P17389610499025074680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway ((A009112 (n + 1) : ℚ) / 2)).toNat

end

end A118903.P17389610499025074680

/-! ## A118903.P13023975438272521739

`A004277(A009112(n+1))`
-/

namespace A118903.P13023975438272521739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A009112 (n + 1)).toNat

end

end A118903.P13023975438272521739

/-!
# A118904: Perimeters of rectangles with integer sides and diagonal.

The programs for A118904, there is no canonical definition to state claims against.
-/

/-! ## A118904.P7051338717123030207

`2*A118905(n+1)`
-/

namespace A118904.P7051338717123030207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118905 (n + 1)

end

end A118904.P7051338717123030207

/-! ## A118904.P6503316302594513853

`2*eq[1, char[A198390(n+1)]]`
-/

namespace A118904.P6503316302594513853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198390 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118904.P6503316302594513853

/-! ## A118904.P2037563903480231359

`2*(lt[0, A331671(n+1)]+1)`
-/

namespace A118904.P2037563903480231359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A118904.P2037563903480231359

/-! ## A118904.P1214991191721327622

`2*(lt[0, A082523(n+2)]+2)`
-/

namespace A118904.P1214991191721327622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082523 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A118904.P1214991191721327622

/-! ## A118904.P4694314691740859277

`∩[floor(2/acot(n)), A118905(n+2)]`
-/

namespace A118904.P4694314691740859277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118905 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118904.P4694314691740859277

/-! ## A118904.P5245004164456765797

`2*record[A198390((and(n, n+1)+2)/2)]`
-/

namespace A118904.P5245004164456765797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198390 (SequenceMachineLib.roundAway ((Nat.land n (n + 1) + 2 : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118904.P5245004164456765797

/-! ## A118904.P7270007288891134464

`A004277(A118905(n+1))`
-/

namespace A118904.P7270007288891134464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A118905 (n + 1)).toNat

end

end A118904.P7270007288891134464

/-! ## A118904.P10898094283278430314

`A004275(A118905(n+1)+1)`
-/

namespace A118904.P10898094283278430314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A118905 (n + 1) + 1).toNat

end

end A118904.P10898094283278430314

/-! ## A118904.P7850776193812194330

`A051755(A118905(n+1)+1)`
-/

namespace A118904.P7850776193812194330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A118905 (n + 1) + 1).toNat

end

end A118904.P7850776193812194330

/-! ## A118904.P4684567059954223264

`A316571(A118905(n+1)+1)`
-/

namespace A118904.P4684567059954223264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (A118905 (n + 1) + 1).toNat

end

end A118904.P4684567059954223264

/-!
# A118905: Sum of legs of Pythagorean triangles (without multiple entries).

The programs for A118905, the canonical program `A118905.P1084645949915106556` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118905 has offset 1).

The definition of A118905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118905.P14935122516634685244

`eq[1, char[A198390(n+1)]]`
-/

namespace A118905.P14935122516634685244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198390 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118905.P14935122516634685244

namespace A118905

/-- `eq[1, char[A198390(n+1)]]` -/
def P14935122516634685244.Spec : Prop :=
  ∀ n, (P14935122516634685244.a n : ℤ) = A118905 (n + 1)

end A118905

/-! ## A118905.P1084645949915106556

`lt[0, A331671(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A118905

/-- `lt[0, A331671(n+1)]+1` -/
def P1084645949915106556.Spec : Prop :=
  ∀ n, (P1084645949915106556.a n : ℤ) = A118905 (n + 1)

theorem P1084645949915106556.correct : P1084645949915106556.Spec := by
  intro n
  simp only [A118905, Nat.add_sub_cancel]

end A118905

/-! ## A118905.P12490477266241631375

`lt[0, A082523(n+2)]+2`
-/

namespace A118905.P12490477266241631375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082523 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A118905.P12490477266241631375

namespace A118905

/-- `lt[0, A082523(n+2)]+2` -/
def P12490477266241631375.Spec : Prop :=
  ∀ n, (P12490477266241631375.a n : ℤ) = A118905 (n + 1)

end A118905

/-! ## A118905.P14341793535892676415

`record[A198390((and(n, n+1)+2)/2)]`
-/

namespace A118905.P14341793535892676415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198390 (SequenceMachineLib.roundAway ((Nat.land n (n + 1) + 2 : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118905.P14341793535892676415

namespace A118905

/-- `record[A198390((and(n, n+1)+2)/2)]` -/
def P14341793535892676415.Spec : Prop :=
  ∀ n, P14341793535892676415.a n = A118905 (n + 1)

end A118905

/-! ## A118905.P1846608862929111205

`eq[1, A071974(a(A082523(n)))]` with `a(0)=4, a(1)=2`
-/

namespace A118905.P1846608862929111205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f2 =>
  A071974 (f2 (A082523 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118905.P1846608862929111205

namespace A118905

/-- `eq[1, A071974(a(A082523(n)))]` -/
def P1846608862929111205.Spec : Prop :=
  ∀ n, (P1846608862929111205.a n : ℤ) = A118905 (n + 1)

end A118905

/-! ## A118905.P4562210583185559461

`A198390(lt[1, Δ[A198390(n+1)²]]+1)`
-/

namespace A118905.P4562210583185559461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198390 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A118905.P4562210583185559461

namespace A118905

/-- `A198390(lt[1, Δ[A198390(n+1)²]]+1)` -/
def P4562210583185559461.Spec : Prop :=
  ∀ n, P4562210583185559461.a n = A118905 (n + 1)

end A118905

/-! ## A118905.P12023533710004655175

`A198390(lt[2, Δ[A198390(n+1)]+2]+1)`
-/

namespace A118905.P12023533710004655175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A118905.P12023533710004655175

namespace A118905

/-- `A198390(lt[2, Δ[A198390(n+1)]+2]+1)` -/
def P12023533710004655175.Spec : Prop :=
  ∀ n, P12023533710004655175.a n = A118905 (n + 1)

end A118905

/-! ## A118905.P7195003701134206023

`A118904(n+1)/2`
-/

namespace A118905.P7195003701134206023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118904 (n + 1) : ℚ) / 2

end

end A118905.P7195003701134206023

namespace A118905

/-- `A118904(n+1)/2` -/
def P7195003701134206023.Spec : Prop :=
  ∀ n, P7195003701134206023.a n = (A118905 (n + 1) : ℚ)

end A118905

/-! ## A118905.P15605800679599809355

`A001281(A118904(n+1))`
-/

namespace A118905.P15605800679599809355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A118904 (n + 1)).toNat

end

end A118905.P15605800679599809355

namespace A118905

/-- `A001281(A118904(n+1))` -/
def P15605800679599809355.Spec : Prop :=
  ∀ n, P15605800679599809355.a n = A118905 (n + 1)

end A118905

/-!
# A118911: Row sums of triangle in A128973.

The programs for A118911, there is no canonical definition to state claims against.
-/

/-! ## A118911.P17208861255546989529

`A071053(floor(n/2))`
-/

namespace A118911.P17208861255546989529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 ⌊(n : ℚ) / 2⌋.toNat

end

end A118911.P17208861255546989529

/-! ## A118911.P6314790420377064244

`A267148(A052928(n))`
-/

namespace A118911.P6314790420377064244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267148 (A052928 n).toNat

end

end A118911.P6314790420377064244

/-! ## A118911.P17522303264773508418

`A004526(A071053(2*n+1)-A071053(n))`
-/

namespace A118911.P17522303264773508418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A071053 (2 * n + 1) - A071053 n).toNat

end

end A118911.P17522303264773508418

/-! ## A118911.P15050707828986349028

`A026741(A071053(2*n+1)-A071053(n))`
-/

namespace A118911.P15050707828986349028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A071053 (2 * n + 1) - A071053 n).toNat

end

end A118911.P15050707828986349028

/-! ## A118911.P7567657294980785905

`A029578(A071053(2*n+1)-A071053(n))`
-/

namespace A118911.P7567657294980785905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A071053 (2 * n + 1) - A071053 n).toNat

end

end A118911.P7567657294980785905

/-! ## A118911.P9861907686172318211

`A123108(A071053(2*n+1)-A071053(n))`
-/

namespace A118911.P9861907686172318211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A071053 (2 * n + 1) - A071053 n).toNat

end

end A118911.P9861907686172318211

/-! ## A118911.P12469884575512063928

`A267148(A109043(n+1)-2)`
-/

namespace A118911.P12469884575512063928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267148 (A109043 (n + 1) - 2).toNat

end

end A118911.P12469884575512063928

/-! ## A118911.P16153266407119292718

`A237120(n)+1`
-/

namespace A118911.P16153266407119292718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237120 n + 1

end

end A118911.P16153266407119292718

/-! ## A118911.P5521750397909610768

`A004442(A237120(n))`
-/

namespace A118911.P5521750397909610768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A237120 n).toNat

end

end A118911.P5521750397909610768

/-!
# A118914: Table of the prime signatures (sorted lists of exponents of distinct prime factors) of the positive integers.

The programs for A118914, there is no canonical definition to state claims against.
-/

/-! ## A118914.P750546260725367688

`A005361(A077610(2*n+3))-A025465(A227550(n))`
-/

namespace A118914.P750546260725367688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A077610 (2 * n + 3)).toNat - A025465 (A227550 n).toNat

end

end A118914.P750546260725367688

/-! ## A118914.P6037161976810937383

`gcd(A193739(A312564(n)), A329296(n+1))`
-/

namespace A118914.P6037161976810937383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193739 (A312564 n).toNat) (A329296 (n + 1))

end

end A118914.P6037161976810937383

/-! ## A118914.P15874940678858693297

`A001222(A141810(n+2)%A141815(n+1))`
-/

namespace A118914.P15874940678858693297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A141810 (n + 2)) (A141815 (n + 1))).toNat

end

end A118914.P15874940678858693297

/-!
# A118915: Primes p such that (p^2 + 5)/6 is prime.

The programs for A118915, there is no canonical definition to state claims against.
-/

/-! ## A118915.P5833491850016407468

`p?[n*A101264(A008724(n))]`
-/

namespace A118915.P5833491850016407468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101264 (A008724 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118915.P5833491850016407468

/-! ## A118915.P14787467702920040935

`eq[A032741(n)!, A101264(A008724(n))]`
-/

namespace A118915.P14787467702920040935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A008724 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118915.P14787467702920040935

/-! ## A118915.P9254129285374419772

`eq[A107286(n)!, A101264(A008724(n))]`
-/

namespace A118915.P9254129285374419772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A107286 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A008724 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118915.P9254129285374419772

/-! ## A118915.P8664918546724663810

`eq[A053989(n+1), A101264(A008724(n))]`
-/

namespace A118915.P8664918546724663810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A008724 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118915.P8664918546724663810

/-! ## A118915.P366046773304692693

`p?[eq[3, A001222(n²+5)]]`
-/

namespace A118915.P366046773304692693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A118915.P366046773304692693

/-!
# A118916: Number of inequivalent primes in ring of integers Z[sqrt(2)] of successive norms (indexed by A055029).

The programs for A118916, there is no canonical definition to state claims against.
-/

/-! ## A118916.P14113945137826540549

`p?[A118917(n)+1]-1`
-/

namespace A118916.P14113945137826540549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A118916.P14113945137826540549

/-! ## A118916.P6948724572122697407

`A035185(A055673(n+1))`
-/

namespace A118916.P6948724572122697407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A055673 (n + 1)).toNat

end

end A118916.P6948724572122697407

/-! ## A118916.P14230898281916489841

`A118917(lt[0, A118917(n)])`
-/

namespace A118916.P14230898281916489841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A118916.P14230898281916489841

/-! ## A118916.P14893368769221682623

`A007423(2*A055673(n+1))`
-/

namespace A118916.P14893368769221682623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (2 * A055673 (n + 1)).toNat

end

end A118916.P14893368769221682623

/-! ## A118916.P11608100161245117447

`A035200(2*A055673(n+1))`
-/

namespace A118916.P11608100161245117447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035200 (2 * A055673 (n + 1)).toNat

end

end A118916.P11608100161245117447

/-! ## A118916.P11484713464610463673

`A326140(2*A055673(n+1))`
-/

namespace A118916.P11484713464610463673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326140 (2 * A055673 (n + 1)).toNat

end

end A118916.P11484713464610463673

/-! ## A118916.P13139650239505685933

`A338714(2*A055673(n+1))`
-/

namespace A118916.P13139650239505685933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338714 (2 * A055673 (n + 1)).toNat

end

end A118916.P13139650239505685933

/-! ## A118916.P1035795492449354478

`A294931(lcm(4, A055673(n+1)))`
-/

namespace A118916.P1035795492449354478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294931 (Int.lcm 4 (A055673 (n + 1)))

end

end A118916.P1035795492449354478

/-! ## A118916.P10747229548876482749

`A040001(∑{d}[A055673(n+1), #])`
-/

namespace A118916.P10747229548876482749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A118916.P10747229548876482749

/-! ## A118916.P1674071146598642883

`A118917(comp[A118917(n)²+n])`
-/

namespace A118916.P1674071146598642883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 n ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A118916.P1674071146598642883

/-! ## A118916.P1037095862006559183

`A118917(comp[n-A118917(n)²])`
-/

namespace A118916.P1037095862006559183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A118917 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A118916.P1037095862006559183

/-! ## A118916.P10074810501754421404

`A008683(2*A055673(n+1))+1`
-/

namespace A118916.P10074810501754421404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A055673 (n + 1)).toNat + 1

end

end A118916.P10074810501754421404

/-! ## A118916.P14365027004526791328

`A118917(A055673(2*n+1-n))`
-/

namespace A118916.P14365027004526791328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (A055673 (2 * n + 1 - n)).toNat

end

end A118916.P14365027004526791328

/-! ## A118916.P14625878235723486825

`A001222(A002654(A055673(n+1))+4)`
-/

namespace A118916.P14625878235723486825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002654 (A055673 (n + 1)).toNat + 4).toNat

end

end A118916.P14625878235723486825

/-! ## A118916.P12681724945525637669

`A001221(A000005(4*A055673(n+1)))`
-/

namespace A118916.P12681724945525637669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000005 (4 * A055673 (n + 1)).toNat).toNat

end

end A118916.P12681724945525637669

/-! ## A118916.P4822071517365582998

`A057427(n)-A008683(A055673(n+1))`
-/

namespace A118916.P4822071517365582998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A008683 (A055673 (n + 1)).toNat

end

end A118916.P4822071517365582998

/-! ## A118916.P1865489192142086126

`gcd(A000005(A055673(n+1)), A137688(n))`
-/

namespace A118916.P1865489192142086126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A055673 (n + 1)).toNat) (A137688 n)

end

end A118916.P1865489192142086126

/-! ## A118916.P6326755964959141535

`A035200(A055673(n+1)+A055673(n+1))`
-/

namespace A118916.P6326755964959141535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035200 (A055673 (n + 1) + A055673 (n + 1)).toNat

end

end A118916.P6326755964959141535

/-! ## A118916.P10277407366958919463

`∑{e}[A000005(4*A055673(n+1)), A000009(#)]`
-/

namespace A118916.P10277407366958919463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * A055673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000009 (Nat.factorization (f1 n).natAbs p)

end

end A118916.P10277407366958919463

/-! ## A118916.P15624624505857337515

`∑{e}[A000005(4*A055673(n+1)), A000010(#)]`
-/

namespace A118916.P15624624505857337515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * A055673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p)

end

end A118916.P15624624505857337515

/-!
# A118917: Number of inequivalent primes in ring of integers Z[sqrt(2)] with absolute value of norm = n.

The programs for A118917, there is no canonical definition to state claims against.
-/

/-! ## A118917.P4697252244037127214

`char[A038873(n+2)]+char[A055673(n+1)]`
-/

namespace A118917.P4697252244037127214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A118917.P4697252244037127214

/-! ## A118917.P7800795903533979041

`A055029(A266642(n))%A341737(A114326(n+1))`
-/

namespace A118917.P7800795903533979041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055029 (A266642 n).toNat) (A341737 (A114326 (n + 1)).toNat)

end

end A118917.P7800795903533979041

/-! ## A118917.P15065601854175208635

`and(A055029(A266642(n)), A329740(n+1))`
-/

namespace A118917.P15065601854175208635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055029 (A266642 n).toNat) (A329740 (n + 1))

end

end A118917.P15065601854175208635

/-! ## A118917.P10233792866352162726

`and(A055029(A266642(n)), A275251(n+2))`
-/

namespace A118917.P10233792866352162726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055029 (A266642 n).toNat) (A275251 (n + 2))

end

end A118917.P10233792866352162726

/-! ## A118917.P16013137889564995457

`A309505(n)%A370221(n+1)`
-/

namespace A118917.P16013137889564995457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309505 n) (A370221 (n + 1))

end

end A118917.P16013137889564995457

/-!
# A118918: Primes p such that (p^2+11)/12 is prime.

The programs for A118918, there is no canonical definition to state claims against.
-/

/-! ## A118918.P13587124317162440456

`p?[A001222(A208994(n))*A005408(n)]`
-/

namespace A118918.P13587124317162440456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A208994 n).toNat * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118918.P13587124317162440456

/-! ## A118918.P5775115041420121579

`p?[eq[2, A299150(A014591(n))]]`
-/

namespace A118918.P5775115041420121579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A014591 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A118918.P5775115041420121579

/-! ## A118918.P15280569388097617873

`p?[abs(A080332(A005097(n+1)))]`
-/

namespace A118918.P15280569388097617873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080332 (A005097 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118918.P15280569388097617873

/-! ## A118918.P6524262855977380270

`p?[(2*n+1)*A339896(A027688(n))]`
-/

namespace A118918.P6524262855977380270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A339896 (A027688 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118918.P6524262855977380270

/-! ## A118918.P5009290955599518197

`p?[A198954(A168565(n+2)-1)]`
-/

namespace A118918.P5009290955599518197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A168565 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118918.P5009290955599518197

/-!
# A118919: Triangle read by rows: T(n,k) is the number of Grand Dyck paths of semilength n that cross downwards the x-axis k times. (A Grand Dyck path of semilength n is a path in the half-plane x>=0, starting at (0,0), ending at (2n,0) and consisting of steps u=(1,1) and d=(1,-1)).

The programs for A118919, the canonical program `A118919.P10255842838776648866` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118919 has offset 0).

The definition of A118919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118919.P11485823050898357981

`A128899(comp[n²]+n)`
-/

namespace A118919.P11485823050898357981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A118919.P11485823050898357981

namespace A118919

/-- `A128899(comp[n²]+n)` -/
def P11485823050898357981.Spec : Prop :=
  ∀ n, P11485823050898357981.a n = A118919 n

end A118919

/-! ## A118919.P10255842838776648866

`A039598(2*n-floor(sqrt(n)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A118919

/-- `A039598(2*n-floor(sqrt(n)))` -/
def P10255842838776648866.Spec : Prop :=
  ∀ n, P10255842838776648866.a n = A118919 n

theorem P10255842838776648866.correct : P10255842838776648866.Spec := by
  intro n
  simp only [A118919]

end A118919

/-! ## A118919.P435448375986352955

`A050166(A056943(comp[n²]+n))`
-/

namespace A118919.P435448375986352955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (A056943 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)).toNat

end

end A118919.P435448375986352955

namespace A118919

/-- `A050166(A056943(comp[n²]+n))` -/
def P435448375986352955.Spec : Prop :=
  ∀ n, P435448375986352955.a n = A118919 n

end A118919

/-! ## A118919.P15913542639433880754

`A008313(4*n+2-A167430(n+1))`
-/

namespace A118919.P15913542639433880754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 ((4 * n + 2 : ℤ) - A167430 (n + 1)).toNat

end

end A118919.P15913542639433880754

namespace A118919

/-- `A008313(4*n+2-A167430(n+1))` -/
def P15913542639433880754.Spec : Prop :=
  ∀ n, P15913542639433880754.a n = A118919 n

end A118919

/-! ## A118919.P18157474346603422477

`A039598(floor(7*n/4))%A059609(n+1)`
-/

namespace A118919.P18157474346603422477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039598 ⌊7 * ((n : ℚ) / 4)⌋.toNat) (A059609 (n + 1))

end

end A118919.P18157474346603422477

namespace A118919

/-- `A039598(floor(7*n/4))%A059609(n+1)` -/
def P18157474346603422477.Spec : Prop :=
  ∀ n, P18157474346603422477.a n = A118919 n

end A118919

/-!
# A118920: Triangle read by rows: T(n,k) is the number of Grand Dyck paths of semilength n that cross the x-axis k times (n>=1, k>=0).

The programs for A118920, the canonical program `A118920.P14137352841196939575` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118920 has offset 1).

The definition of A118920 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039598, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A118920.P14137352841196939575

`2*A039598(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A118920

/-- `2*A039598(n)` -/
def P14137352841196939575.Spec : Prop :=
  ∀ n, P14137352841196939575.a n = A118920 (n + 1)

theorem P14137352841196939575.correct : P14137352841196939575.Spec := by
  intro n
  simp only [A118920, Nat.add_sub_cancel]

end A118920

/-! ## A118920.P14376119568156847815

`2*A128899(comp[∑[n]])`
-/

namespace A118920.P14376119568156847815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128899 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A118920.P14376119568156847815

namespace A118920

/-- `2*A128899(comp[∑[n]])` -/
def P14376119568156847815.Spec : Prop :=
  ∀ n, P14376119568156847815.a n = A118920 (n + 1)

end A118920

/-! ## A118920.P14656805062212563952

`A039598(n)+A039598(n%(n+1))`
-/

namespace A118920.P14656805062212563952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n + A039598 (n % (n + 1))

end

end A118920.P14656805062212563952

namespace A118920

/-- `A039598(n)+A039598(n%(n+1))` -/
def P14656805062212563952.Spec : Prop :=
  ∀ n, P14656805062212563952.a n = A118920 (n + 1)

theorem P14656805062212563952.correct : P14656805062212563952.Spec := by
  intro n
  simp only [A118920, Nat.add_sub_cancel, A118920.P14656805062212563952.a, A118920.P14137352841196939575.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A118920

/-! ## A118920.P17944860868322289241

`A000007(n+1)+A039598(n)+A039598(n)`
-/

namespace A118920.P17944860868322289241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A039598 n + A039598 n)

end

end A118920.P17944860868322289241

namespace A118920

/-- `A000007(n+1)+A039598(n)+A039598(n)` -/
def P17944860868322289241.Spec : Prop :=
  ∀ n, P17944860868322289241.a n = A118920 (n + 1)

end A118920

/-! ## A118920.P30557399241388019

`2*A050166(A061579(n))`
-/

namespace A118920.P30557399241388019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050166 (A061579 n).toNat

end

end A118920.P30557399241388019

namespace A118920

/-- `2*A050166(A061579(n))` -/
def P30557399241388019.Spec : Prop :=
  ∀ n, P30557399241388019.a n = A118920 (n + 1)

end A118920

/-! ## A118920.P6404564670627862863

`2*A050166(A038722(n+1)-1)`
-/

namespace A118920.P6404564670627862863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050166 (A038722 (n + 1) - 1).toNat

end

end A118920.P6404564670627862863

namespace A118920

/-- `2*A050166(A038722(n+1)-1)` -/
def P6404564670627862863.Spec : Prop :=
  ∀ n, P6404564670627862863.a n = A118920 (n + 1)

end A118920

/-! ## A118920.P7501530399390186140

`2*A050166(A038722(n+2))`
-/

namespace A118920.P7501530399390186140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050166 (A038722 (n + 2)).toNat

end

end A118920.P7501530399390186140

namespace A118920

/-- `2*A050166(A038722(n+2))` -/
def P7501530399390186140.Spec : Prop :=
  ∀ n, P7501530399390186140.a n = A118920 (n + 1)

end A118920

/-! ## A118920.P15201764665347763901

`2/A130321(n)*A201639(n)`
-/

namespace A118920.P15201764665347763901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A130321 n : ℚ) * (A201639 n : ℚ)

end

end A118920.P15201764665347763901

namespace A118920

/-- `2/A130321(n)*A201639(n)` -/
def P15201764665347763901.Spec : Prop :=
  ∀ n, P15201764665347763901.a n = (A118920 (n + 1) : ℚ)

end A118920

/-! ## A118920.P14548155934967546705

`2*A008313(A064801(n+1))`
-/

namespace A118920.P14548155934967546705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008313 (A064801 (n + 1)).toNat

end

end A118920.P14548155934967546705

namespace A118920

/-- `2*A008313(A064801(n+1))` -/
def P14548155934967546705.Spec : Prop :=
  ∀ n, P14548155934967546705.a n = A118920 (n + 1)

end A118920

/-! ## A118920.P17894300585186923258

`2*A053121(A185869(n+1))`
-/

namespace A118920.P17894300585186923258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053121 (A185869 (n + 1)).toNat

end

end A118920.P17894300585186923258

namespace A118920

/-- `2*A053121(A185869(n+1))` -/
def P17894300585186923258.Spec : Prop :=
  ∀ n, P17894300585186923258.a n = A118920 (n + 1)

end A118920

/-! ## A118920.P5962698362180159012

`2*A008482(A292565(n+1))`
-/

namespace A118920.P5962698362180159012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008482 (A292565 (n + 1)).toNat

end

end A118920.P5962698362180159012

namespace A118920

/-- `2*A008482(A292565(n+1))` -/
def P5962698362180159012.Spec : Prop :=
  ∀ n, P5962698362180159012.a n = A118920 (n + 1)

end A118920

/-! ## A118920.P6048374963325214849

`A039598(A000196(n²))+A039598(n)`
-/

namespace A118920.P6048374963325214849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (A000196 (n ^ 2)).toNat + A039598 n

end

end A118920.P6048374963325214849

namespace A118920

/-- `A039598(A000196(n²))+A039598(n)` -/
def P6048374963325214849.Spec : Prop :=
  ∀ n, P6048374963325214849.a n = A118920 (n + 1)

end A118920

/-!
# A118921: Triangle read by rows: T(n,k) is the number of Grand Dyck paths of semilength n having first return to the x-axis at (2k,0) (n,k >= 1). (A Grand Dyck path of semilength n is a path in the half-plane x >= 0, starting at (0,0), ending at (2n,0) and consisting of steps u=(1,1) and d=(1,-1)).

The programs for A118921, there is no canonical definition to state claims against.
-/

/-! ## A118921.P16737676613282224206

`2*A145890(∑[2*n]%comp[∑[n]])`
-/

namespace A118921.P16737676613282224206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145890 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A118921.P16737676613282224206

/-! ## A118921.P15283143168431959704

`2*A145890(A061579(n))`
-/

namespace A118921.P15283143168431959704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145890 (A061579 n).toNat

end

end A118921.P15283143168431959704

/-! ## A118921.P17986822390776107064

`A141811(n+1)+A078391(n)`
-/

namespace A118921.P17986822390776107064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141811 (n + 1) + A078391 n

end

end A118921.P17986822390776107064

/-! ## A118921.P7167037329785624393

`(A099375(n)+1)*A078391(n)`
-/

namespace A118921.P7167037329785624393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099375 n + 1) * A078391 n

end

end A118921.P7167037329785624393

/-! ## A118921.P7464747291717459284

`A078391(n)*A212012(n+1)`
-/

namespace A118921.P7464747291717459284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078391 n * A212012 (n + 1)

end

end A118921.P7464747291717459284

/-! ## A118921.P4630819274243292255

`2*A145890(A114327(n)+n)`
-/

namespace A118921.P4630819274243292255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145890 (A114327 n + (n : ℤ)).toNat

end

end A118921.P4630819274243292255

/-! ## A118921.P5194892165822919386

`2*A145890(A038722(n+1)-1)`
-/

namespace A118921.P5194892165822919386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145890 (A038722 (n + 1) - 1).toNat

end

end A118921.P5194892165822919386

/-! ## A118921.P10477339086937490754

`2*A004736(n+1)*A078391(n)`
-/

namespace A118921.P10477339086937490754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004736 (n + 1) * A078391 n)

end

end A118921.P10477339086937490754

/-! ## A118921.P8153242157449589874

`2/A002260(n+1)*A067804(n)`
-/

namespace A118921.P8153242157449589874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A002260 (n + 1) : ℚ) * (A067804 n : ℚ)

end

end A118921.P8153242157449589874

/-! ## A118921.P380838942932585005

`A014681(A099375(n))*A078391(n)`
-/

namespace A118921.P380838942932585005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A099375 n).toNat * A078391 n

end

end A118921.P380838942932585005

/-!
# A118922: Primes for which the weight as defined in A117078 is 9 and the gap as defined in A001223 is 8.

The programs for A118922, there is no canonical definition to state claims against.
-/

/-! ## A118922.P16827160430809733075

`p?[A031927(n)-dr(A031926(n+1))]`
-/

namespace A118922.P16827160430809733075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031927 n - (SequenceMachineLib.digitalRoot (A031926 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118922.P16827160430809733075

/-! ## A118922.P15501767808875772632

`∩[A031926(n+1), A061242(n+1)]`
-/

namespace A118922.P15501767808875772632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118922.P15501767808875772632

/-! ## A118922.P3461012800711298022

`∩[A031926(n+1), A129805(n+1)]`
-/

namespace A118922.P3461012800711298022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118922.P3461012800711298022

/-! ## A118922.P12193196553670540719

`∩[A031926(n+1), A295869(n+1)]`
-/

namespace A118922.P12193196553670540719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118922.P12193196553670540719

/-! ## A118922.P3555884943599578411

`∩[A031926(n+1), A239129(n+1)]`
-/

namespace A118922.P3555884943599578411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118922.P3555884943599578411

/-! ## A118922.P9577574509539734827

`∩[A031926(n+1), A253610(n+1)]`
-/

namespace A118922.P9577574509539734827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118922.P9577574509539734827

/-! ## A118922.P16499987018588882356

`∩[A083371(n+1), A253610(n+1)]`
-/

namespace A118922.P16499987018588882356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118922.P16499987018588882356

/-! ## A118922.P11159008511862885403

`∩[A224934(n+1), A253610(n+1)]`
-/

namespace A118922.P11159008511862885403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118922.P11159008511862885403

/-! ## A118922.P9897795619245975238

`∩[A031926(n+1), A017257(n)]`
-/

namespace A118922.P9897795619245975238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118922.P9897795619245975238

/-! ## A118922.P8956902374015063842

`∩[A031926(n+1), A133893(n)]`
-/

namespace A118922.P8956902374015063842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133893 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118922.P8956902374015063842

/-!
# A118923: Triangle T(n,k) built by placing T(n,0)=A000012(n) in the left edge, T(n,n)=A079978(n) on the right edge and filling the body with the Pascal recurrence T(n,k) = T(n-1,k) + T(n-1,k-1).

The programs for A118923, there is no canonical definition to state claims against.
-/

/-! ## A118923.P6269528664902568339

`A071919(n)+A180823(n+1)^A003418(n)`
-/

namespace A118923.P6269528664902568339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071919 n : ℚ) + (A180823 (n + 1) : ℚ) ^ (A003418 n : ℤ)

end

end A118923.P6269528664902568339

/-! ## A118923.P12612439447269049470

`A071919(n)+A180823(n+1)^A006012(n)`
-/

namespace A118923.P12612439447269049470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071919 n : ℚ) + (A180823 (n + 1) : ℚ) ^ (A006012 n : ℤ)

end

end A118923.P12612439447269049470

/-! ## A118923.P4565640512860286416

`A071919(n)+A180823(n+1)^A127666(n+1)`
-/

namespace A118923.P4565640512860286416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071919 n : ℚ) + (A180823 (n + 1) : ℚ) ^ (A127666 (n + 1) : ℤ)

end

end A118923.P4565640512860286416

/-! ## A118923.P17882604765850090529

`A071919(n)+A180823(n+1)^A252053(n+1)`
-/

namespace A118923.P17882604765850090529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071919 n : ℚ) + (A180823 (n + 1) : ℚ) ^ (A252053 (n + 1) : ℤ)

end

end A118923.P17882604765850090529

/-! ## A118923.P14511907968911424144

`A071919(n)-A016213(A192805(A296441(n)))`
-/

namespace A118923.P14511907968911424144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n - A016213 (A192805 (A296441 n).toNat).toNat

end

end A118923.P14511907968911424144

/-!
# A118925: a(n) is the least prime p such that n*((p#)^5)-1 is prime, or 0 if n > 1 is a 5th power so no prime possible.

The programs for A118925, there is no canonical definition to state claims against.
-/

/-! ## A118925.P3508781052751207880

`p?[or(2, A012775(n))]`
-/

namespace A118925.P3508781052751207880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A012775 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118925.P3508781052751207880

/-!
# A118926: Invariant column vector V under matrix product A104546*V = V: a(n) = Sum_{k=0,[n/2]} A104546(n,k)*a(k).

The programs for A118926, there is no canonical definition to state claims against.
-/

/-! ## A118926.P15501038532302473158

`A233583(3*a(n-1)+2*(n-1)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A118926.P15501038532302473158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A233583 (3 * a (n - 1) + 2 * (((n : ℤ) - 1) * a (n - 2))).toNat

end

end A118926.P15501038532302473158

/-! ## A118926.P4481246150810064240

`A110655(Δ[A231894(n)])`
-/

namespace A118926.P4481246150810064240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (f1 (n + 1) - f1 n).toNat

end

end A118926.P4481246150810064240

/-!
# A118927: Self-convolution square-root of A118926.

The programs for A118927, there is no canonical definition to state claims against.
-/

/-! ## A118927.P12626616490685682410

`5*a(n-1)-∏{e}[A338727(n), #]` with `a(0)=1, a(1)=1`
-/

namespace A118927.P12626616490685682410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338727 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 * a (n - 1) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A118927.P12626616490685682410

/-! ## A118927.P4883740003072798244

`A106216(13*n+15)+A059284(n)`
-/

namespace A118927.P4883740003072798244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106216 (13 * n + 15) + A059284 n

end

end A118927.P4883740003072798244

/-! ## A118927.P7325633558361637081

`A059284(n)+A184955(2*n+3)/2`
-/

namespace A118927.P7325633558361637081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059284 n : ℚ) + (A184955 (2 * n + 3) : ℚ) / 2

end

end A118927.P7325633558361637081

/-!
# A118928: a(n) = Sum_{k=0..floor(n/2)} C(n-k,k)*C(n-k,k+1)/(n-k) * a(k), with a(0)=1.

The programs for A118928, there is no canonical definition to state claims against.
-/

/-! ## A118928.P7490430664473450593

`A335235(2^floor(n-atan(n)))`
-/

namespace A118928.P7490430664473450593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335235 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A118928.P7490430664473450593

/-! ## A118928.P8331053463735023038

`A000194(A138549(n))`
-/

namespace A118928.P8331053463735023038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A138549 n).toNat

end

end A118928.P8331053463735023038

/-! ## A118928.P2005531595865916294

`A100617(A104429(n))`
-/

namespace A118928.P2005531595865916294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A104429 n).toNat

end

end A118928.P2005531595865916294

/-! ## A118928.P15181799150700476809

`A002024(A279840(n))`
-/

namespace A118928.P15181799150700476809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A279840 n).toNat

end

end A118928.P15181799150700476809

/-! ## A118928.P11501202355701173722

`A389483(A036374(n))`
-/

namespace A118928.P11501202355701173722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389483 (A036374 n).toNat

end

end A118928.P11501202355701173722

/-!
# A118929: a(n) = Sum_{k=0..[n/2]} 2^(n-2*k-1)*C(n-1,2*k)*C(2*k,k)/(k+1)*a(k), with a(0)=1.

The programs for A118929, there is no canonical definition to state claims against.
-/

/-! ## A118929.P14201518063593371435

`A202856(A120126(n)+floor(acot(n))-1)`
-/

namespace A118929.P14201518063593371435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202856 (A120126 n + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A118929.P14201518063593371435

/-! ## A118929.P1524923006187201162

`A202856(A120126(n)-A057427(n))`
-/

namespace A118929.P1524923006187201162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202856 (A120126 n - A057427 n).toNat

end

end A118929.P1524923006187201162

/-! ## A118929.P13216860253291745108

`A202856(A004883(n+1)-A057427(n))`
-/

namespace A118929.P13216860253291745108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202856 (A004883 (n + 1) - A057427 n).toNat

end

end A118929.P13216860253291745108

/-! ## A118929.P16437530953618152666

`A202856(A004894(n+1)-A057427(n))`
-/

namespace A118929.P16437530953618152666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202856 (A004894 (n + 1) - A057427 n).toNat

end

end A118929.P16437530953618152666

/-! ## A118929.P2251496159020334964

`A028310(A027412(n)-A000108(n))`
-/

namespace A118929.P2251496159020334964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A027412 n - A000108 n).toNat

end

end A118929.P2251496159020334964

/-!
# A118930: E.g.f.: A(x) = exp( Sum_{n>=0} x^(2^n)/2^(2^n-1) ).

The programs for A118930, there is no canonical definition to state claims against.
-/

/-! ## A118930.P4463631790320828691

`(A001472(n)+A000027(A000085(n)))/2`
-/

namespace A118930.P4463631790320828691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001472 n + A000027 (A000085 n).toNat : ℚ) / 2

end

end A118930.P4463631790320828691

/-! ## A118930.P14675561187941620770

`A014682(A001472(n)+A000085(n))`
-/

namespace A118930.P14675561187941620770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A001472 n + A000085 n).toNat

end

end A118930.P14675561187941620770

/-! ## A118930.P16023045078883995184

`A014682(A229068(n)+A001472(n))`
-/

namespace A118930.P16023045078883995184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A229068 n + A001472 n).toNat

end

end A118930.P16023045078883995184

/-! ## A118930.P12869968109441940112

`A001281(A001472(n)+A000085(n))`
-/

namespace A118930.P12869968109441940112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A001472 n + A000085 n).toNat

end

end A118930.P12869968109441940112

/-! ## A118930.P7394505080844526562

`A004525(A001472(n)+A000085(n))`
-/

namespace A118930.P7394505080844526562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A001472 n + A000085 n).toNat

end

end A118930.P7394505080844526562

/-!
# A118931: Triangle, read by rows, where T(n,k) = n!/(k!*(n-3*k)!*3^k) for n>=3*k>=0.

The programs for A118931, there is no canonical definition to state claims against.
-/

/-! ## A118931.P15895187232719213786

`A118394(n)/3^A073189(n)`
-/

namespace A118931.P15895187232719213786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118394 n : ℚ) / (3 : ℚ) ^ (A073189 n : ℤ)

end

end A118931.P15895187232719213786

/-! ## A118931.P14535144575146474087

`A118394(n)/A000244(A073189(n))`
-/

namespace A118931.P14535144575146474087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118394 n : ℚ) / (A000244 (A073189 n).toNat : ℚ)

end

end A118931.P14535144575146474087

/-! ## A118931.P15595554376525961522

`gcd(A118394(n), A186526(n))`
-/

namespace A118931.P15595554376525961522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118394 n) (A186526 n)

end

end A118931.P15595554376525961522

/-! ## A118931.P10477227537184802167

`A038502(A118394(n))`
-/

namespace A118931.P10477227537184802167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A118394 n).toNat

end

end A118931.P10477227537184802167

/-! ## A118931.P7586989942453605531

`A172500(lcm(3, A118394(n)))`
-/

namespace A118931.P7586989942453605531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172500 (Int.lcm 3 (A118394 n))

end

end A118931.P7586989942453605531

/-!
# A118933: Triangle, read by rows, where T(n,k) = n!/(k!*(n-4*k)!*4^k) for n>=4*k>=0.

The programs for A118933, there is no canonical definition to state claims against.
-/

/-! ## A118933.P9674049893286662721

`A004277(C(A001971(n), A040099(n)))`
-/

namespace A118933.P9674049893286662721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Nat.choose (A001971 n).toNat (A040099 n).toNat)

end

end A118933.P9674049893286662721

/-! ## A118933.P202260435380978846

`A246257(A163352(n²))`
-/

namespace A118933.P202260435380978846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246257 (A163352 (n ^ 2)).toNat

end

end A118933.P202260435380978846

/-! ## A118933.P4590732045136977034

`A036038(A005361(floor(sqrt(10^(n+1)))))`
-/

namespace A118933.P4590732045136977034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036038 (A005361 (Nat.sqrt (10 ^ (n + 1)))).toNat

end

end A118933.P4590732045136977034

/-!
# A118934: E.g.f.: exp(x + x^4/4).

The programs for A118934, the canonical program `A118934.P4000888288676860760` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118934 has offset 0).

The definition of A118934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118934.P4000888288676860760

`a(n-1)+(n-1)*(n-2)*(n-3)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118934

/-- `a(n-1)+(n-1)*(n-2)*(n-3)*a(n-4)` -/
def P4000888288676860760.Spec : Prop :=
  ∀ n, P4000888288676860760.a n = A118934 n

theorem P4000888288676860760.correct : P4000888288676860760.Spec := by
  intro n
  simp only [A118934]

end A118934

/-! ## A118934.P641905426396184195

`A118935(n^A271837(n))`
-/

namespace A118934.P641905426396184195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118935 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A271837 n : ℤ))).toNat

end

end A118934.P641905426396184195

namespace A118934

/-- `A118935(n^A271837(n))` -/
def P641905426396184195.Spec : Prop :=
  ∀ n, P641905426396184195.a n = A118934 n

end A118934

/-! ## A118934.P2740077371829238152

`A118935(lcm(n, A213003(n)))`
-/

namespace A118934.P2740077371829238152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118935 (Int.lcm (n : ℤ) (A213003 n))

end

end A118934.P2740077371829238152

namespace A118934

/-- `A118935(lcm(n, A213003(n)))` -/
def P2740077371829238152.Spec : Prop :=
  ∀ n, P2740077371829238152.a n = A118934 n

end A118934

/-! ## A118934.P1150297474838611980

`A118935(n)%A088677(2*n+3)²`
-/

namespace A118934.P1150297474838611980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118935 n) (A088677 (2 * n + 3) ^ 2)

end

end A118934.P1150297474838611980

namespace A118934

/-- `A118935(n)%A088677(2*n+3)²` -/
def P1150297474838611980.Spec : Prop :=
  ∀ n, P1150297474838611980.a n = A118934 n

end A118934

/-! ## A118934.P10153284247241668909

`A118935(n)+A118917(A219086(n))`
-/

namespace A118934.P10153284247241668909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118935 n + A118917 (A219086 n).toNat

end

end A118934.P10153284247241668909

namespace A118934

/-- `A118935(n)+A118917(A219086(n))` -/
def P10153284247241668909.Spec : Prop :=
  ∀ n, P10153284247241668909.a n = A118934 n

end A118934

/-!
# A118936: Sub-Kaprekar numbers: k such that k = |q - r| and k^2 = q*10^m + r, for some m >= 1, q >= 0, 0 <= r < 10^m, with k not a power of 10.

The programs for A118936, there is no canonical definition to state claims against.
-/

/-! ## A118936.P10168155557236791951

`∪[A118937(n+1), A118938(n+1)]`
-/

namespace A118936.P10168155557236791951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118936.P10168155557236791951

/-! ## A118936.P2615967625383591048

`filter[A228381(n+1), A011558(#)]`
-/

namespace A118936.P2615967625383591048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A118936.P2615967625383591048

/-! ## A118936.P5568610851093346813

`filter[A228381(n+1), A358847(#)]`
-/

namespace A118936.P5568610851093346813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A118936.P5568610851093346813

/-! ## A118936.P4655337838888003711

`filter[A228381(n+1), A168184(#)]`
-/

namespace A118936.P4655337838888003711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A118936.P4655337838888003711

/-! ## A118936.P13483163939396026364

`filter[A228381(n+2), A132350(#)]`
-/

namespace A118936.P13483163939396026364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228381 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A118936.P13483163939396026364

/-!
# A118937: Sub-Kaprekar numbers (1): n such that n=q-r and n^2=q*10^m+r, for some m>=1, q>=0, 0<=r

The programs for A118937, there is no canonical definition to state claims against.
-/

/-! ## A118937.P17614726461931933168

`∩[A228381(n+1), A064544(n)]`
-/

namespace A118937.P17614726461931933168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118937.P17614726461931933168

/-!
# A118938: Sub-Kaprekar numbers (2): n such that n=r-q and n^2=q*10^m+r, for some m>=1, q>=0, 0<=r

The programs for A118938, there is no canonical definition to state claims against.
-/

/-! ## A118938.P1755511096015970171

`A118936(A293189(n+2))`
-/

namespace A118938.P1755511096015970171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118936 (A293189 (n + 2)).toNat

end

end A118938.P1755511096015970171

/-!
# A118939: Primes p such that (p^2+3)/4 is prime.

The programs for A118939, there is no canonical definition to state claims against.
-/

/-! ## A118939.P9287364110121865082

`A180082(n+1)/A163418(n+1)`
-/

namespace A118939.P9287364110121865082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180082 (n + 1) : ℚ) / (A163418 (n + 1) : ℚ)

end

end A118939.P9287364110121865082

/-! ## A118939.P5821772680957820469

`p?[floor(2*sqrt(A002383(n+1)))]`
-/

namespace A118939.P5821772680957820469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A002383 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118939.P5821772680957820469

/-! ## A118939.P8544172029074143324

`p?[A088503(n+1)]`
-/

namespace A118939.P8544172029074143324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118939.P8544172029074143324

/-! ## A118939.P10417224709593146308

`p?[2*A002384(n+1)+1]`
-/

namespace A118939.P10417224709593146308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002384 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118939.P10417224709593146308

/-! ## A118939.P18004389680124018711

`p?[2*A055494(n+1)-1]`
-/

namespace A118939.P18004389680124018711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055494 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118939.P18004389680124018711

/-! ## A118939.P10682971336760238844

`∩[A045393(n+1), A088503(n+1)]`
-/

namespace A118939.P10682971336760238844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118939.P10682971336760238844

/-! ## A118939.P12950871055613743998

`∩[A000040(n+1), A088503(n+1)]`
-/

namespace A118939.P12950871055613743998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118939.P12950871055613743998

/-! ## A118939.P609380716432881681

`∩[A006005(n+1), A088503(n+1)]`
-/

namespace A118939.P609380716432881681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118939.P609380716432881681

/-! ## A118939.P5803773025928103224

`∩[A008578(n+1), A088503(n+1)]`
-/

namespace A118939.P5803773025928103224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118939.P5803773025928103224

/-! ## A118939.P11595833116803061396

`∩[A065091(n+1), A088503(n+1)]`
-/

namespace A118939.P11595833116803061396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118939.P11595833116803061396

/-! ## A118939.P7832357836745277505

`∩[A046022(n+1), A088503(n+1)]`
-/

namespace A118939.P7832357836745277505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118939.P7832357836745277505

/-! ## A118939.P11587535678298354306

`∩[A033946(n+1), A088503(n+1)]`
-/

namespace A118939.P11587535678298354306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118939.P11587535678298354306

/-! ## A118939.P5358720112439076889

`∩[A051948(n+1), A088503(n+1)]`
-/

namespace A118939.P5358720112439076889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118939.P5358720112439076889

/-! ## A118939.P2828618086008956136

`∩[A053813(n+1), A088503(n+1)]`
-/

namespace A118939.P2828618086008956136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118939.P2828618086008956136

/-! ## A118939.P9621811464027369132

`∩[A062972(n+1), A088503(n+1)]`
-/

namespace A118939.P9621811464027369132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118939.P9621811464027369132

/-! ## A118939.P5012041030490718819

`∩[A066050(n+1), A088503(n+1)]`
-/

namespace A118939.P5012041030490718819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118939.P5012041030490718819

/-! ## A118939.P6180393448310254570

`∩[A067126(n+1), A088503(n+1)]`
-/

namespace A118939.P6180393448310254570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118939.P6180393448310254570

/-! ## A118939.P14206288194810329727

`∩[A140826(n+1), A088503(n+1)]`
-/

namespace A118939.P14206288194810329727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118939.P14206288194810329727

/-! ## A118939.P9669526165205068118

`∩[A326715(n+1), A088503(n+1)]`
-/

namespace A118939.P9669526165205068118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118939.P9669526165205068118

/-!
# A118940: Primes p such that (p^2+7)/8 is prime.

The programs for A118940, there is no canonical definition to state claims against.
-/

/-! ## A118940.P10884483559893876235

`p?[A110872(n+1)]`
-/

namespace A118940.P10884483559893876235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118940.P10884483559893876235

/-! ## A118940.P12293620657014191967

`p?[2*A067186(n+1)+1]`
-/

namespace A118940.P12293620657014191967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067186 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118940.P12293620657014191967

/-! ## A118940.P12206706190970279819

`∩[A097958(n+1), A110872(n+1)]`
-/

namespace A118940.P12206706190970279819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P12206706190970279819

/-! ## A118940.P362599508117138479

`∩[A045323(n+1), A110872(n+1)]`
-/

namespace A118940.P362599508117138479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P362599508117138479

/-! ## A118940.P3850124570157132705

`∩[A045419(n+1), A110872(n+1)]`
-/

namespace A118940.P3850124570157132705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P3850124570157132705

/-! ## A118940.P17827308418167114326

`∩[A004139(n+1), A110872(n+1)]`
-/

namespace A118940.P17827308418167114326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P17827308418167114326

/-! ## A118940.P5795711133338812298

`∩[A000040(n+1), A110872(n+1)]`
-/

namespace A118940.P5795711133338812298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P5795711133338812298

/-! ## A118940.P4091772451780754449

`∩[A006005(n+1), A110872(n+1)]`
-/

namespace A118940.P4091772451780754449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P4091772451780754449

/-! ## A118940.P4667811251961572764

`∩[A008578(n+1), A110872(n+1)]`
-/

namespace A118940.P4667811251961572764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P4667811251961572764

/-! ## A118940.P12699265454750670754

`∩[A045319(n+1), A110872(n+1)]`
-/

namespace A118940.P12699265454750670754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P12699265454750670754

/-! ## A118940.P15569955666816104816

`∩[A046022(n+1), A110872(n+1)]`
-/

namespace A118940.P15569955666816104816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P15569955666816104816

/-! ## A118940.P17728429172724475237

`∩[A051948(n+1), A110872(n+1)]`
-/

namespace A118940.P17728429172724475237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P17728429172724475237

/-! ## A118940.P9919991193356839741

`∩[A053813(n+1), A110872(n+1)]`
-/

namespace A118940.P9919991193356839741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P9919991193356839741

/-! ## A118940.P4039901172496211997

`∩[A064728(n+1), A110872(n+1)]`
-/

namespace A118940.P4039901172496211997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P4039901172496211997

/-! ## A118940.P5487558742348643841

`∩[A065091(n+1), A110872(n+1)]`
-/

namespace A118940.P5487558742348643841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P5487558742348643841

/-! ## A118940.P16063973406231726767

`∩[A140826(n+1), A110872(n+1)]`
-/

namespace A118940.P16063973406231726767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P16063973406231726767

/-! ## A118940.P2123318342610740995

`∩[A066542(n+1), A110872(n+1)]`
-/

namespace A118940.P2123318342610740995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P2123318342610740995

/-! ## A118940.P5716182393345944487

`∩[A067133(n+1), A110872(n+1)]`
-/

namespace A118940.P5716182393345944487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P5716182393345944487

/-! ## A118940.P7779649671586967774

`∩[A174090(n+1), A110872(n+1)]`
-/

namespace A118940.P7779649671586967774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118940.P7779649671586967774

/-!
# A118941: Primes p such that (p^2-5)/4 is prime.

The programs for A118941, there is no canonical definition to state claims against.
-/

/-! ## A118941.P6236742179602313441

`p?[2*A002328(n+1)-1]`
-/

namespace A118941.P6236742179602313441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002328 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118941.P6236742179602313441

/-! ## A118941.P18062989778372687919

`p?[A088502(n+1)]`
-/

namespace A118941.P18062989778372687919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118941.P18062989778372687919

/-! ## A118941.P10861462600400339610

`p?[2*A045546(n+1)+1]`
-/

namespace A118941.P10861462600400339610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045546 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118941.P10861462600400339610

/-! ## A118941.P1759497825170796986

`p?[ceil(2*sqrt(A002327(n+1)))]`
-/

namespace A118941.P1759497825170796986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A002327 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118941.P1759497825170796986

/-! ## A118941.P933104990084875440

`∩[A000040(n+1), A088502(n+1)]`
-/

namespace A118941.P933104990084875440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118941.P933104990084875440

/-! ## A118941.P4901940501002339480

`∩[A006005(n+1), A088502(n+1)]`
-/

namespace A118941.P4901940501002339480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118941.P4901940501002339480

/-! ## A118941.P4704051151594549035

`∩[A008578(n+1), A088502(n+1)]`
-/

namespace A118941.P4704051151594549035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118941.P4704051151594549035

/-! ## A118941.P11153199119107081885

`∩[A045344(n+1), A088502(n+1)]`
-/

namespace A118941.P11153199119107081885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118941.P11153199119107081885

/-! ## A118941.P15370970023290324251

`∩[A046022(n+1), A088502(n+1)]`
-/

namespace A118941.P15370970023290324251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118941.P15370970023290324251

/-! ## A118941.P9454508668024770186

`∩[A051948(n+1), A088502(n+1)]`
-/

namespace A118941.P9454508668024770186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118941.P9454508668024770186

/-! ## A118941.P13736098605421891074

`∩[A053813(n+1), A088502(n+1)]`
-/

namespace A118941.P13736098605421891074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118941.P13736098605421891074

/-! ## A118941.P798316749950498908

`∩[A062972(n+1), A088502(n+1)]`
-/

namespace A118941.P798316749950498908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118941.P798316749950498908

/-! ## A118941.P2470732356086459457

`∩[A064728(n+1), A088502(n+1)]`
-/

namespace A118941.P2470732356086459457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118941.P2470732356086459457

/-! ## A118941.P7113453315638827755

`∩[A065091(n+1), A088502(n+1)]`
-/

namespace A118941.P7113453315638827755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118941.P7113453315638827755

/-! ## A118941.P13911490318876960329

`∩[A053577(n+1), A088502(n+1)]`
-/

namespace A118941.P13911490318876960329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118941.P13911490318876960329

/-! ## A118941.P1473662966689263182

`filter[A088502(n+1), A010051(#)]`
-/

namespace A118941.P1473662966689263182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A118941.P1473662966689263182

/-! ## A118941.P12636457354359140542

`∩[A082378(n+1), A088502(n+1)]`
-/

namespace A118941.P12636457354359140542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118941.P12636457354359140542

/-! ## A118941.P12309989397081288121

`filter[A088502(n+1), A323152(#)]`
-/

namespace A118941.P12309989397081288121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A118941.P12309989397081288121

/-! ## A118941.P16886011674805352044

`filter[A088502(n+1), A323153(#)]`
-/

namespace A118941.P16886011674805352044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A118941.P16886011674805352044

/-!
# A118942: Primes p such that (p^2-13)/12 is prime.

The programs for A118942, there is no canonical definition to state claims against.
-/

/-! ## A118942.P15372676427930180338

`p?[abs(A080332(A005097(n+1)+1))]`
-/

namespace A118942.P15372676427930180338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080332 (A005097 (n + 1) + 1).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118942.P15372676427930180338

/-! ## A118942.P11045619298140460660

`p?[A198954(A168565(n+2)+2)]`
-/

namespace A118942.P11045619298140460660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A168565 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118942.P11045619298140460660

/-! ## A118942.P7740661582156874586

`p?[A198954(3*A006254(n+1))]`
-/

namespace A118942.P7740661582156874586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (3 * A006254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118942.P7740661582156874586

/-! ## A118942.P659898817977642265

`p?[A198954(A008486(A006254(n+1)))]`
-/

namespace A118942.P659898817977642265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A008486 (A006254 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118942.P659898817977642265

/-! ## A118942.P11540558694872717388

`p?[A198954(A006368(A008864(n+1)))]`
-/

namespace A118942.P11540558694872717388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A006368 (A008864 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118942.P11540558694872717388

/-!
# A118944: n-th (starting from the right) decimal digit of 11^n.

The programs for A118944, there is no canonical definition to state claims against.
-/

/-! ## A118944.P12102200845147467050

`floor(A091947(n+1)/A011557(n))`
-/

namespace A118944.P12102200845147467050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091947 (n + 1) : ℚ) / (A011557 n : ℚ)⌋

end

end A118944.P12102200845147467050

/-! ## A118944.P17004232200840448042

`A023964(A394720(n+1))`
-/

namespace A118944.P17004232200840448042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023964 (A394720 (n + 1)).toNat

end

end A118944.P17004232200840448042

/-! ## A118944.P29466367710602838

`A023965(A018163(n+1))`
-/

namespace A118944.P29466367710602838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023965 (A018163 (n + 1)).toNat

end

end A118944.P29466367710602838

/-! ## A118944.P15698325307789639621

`A023965(A018164(n+1))`
-/

namespace A118944.P15698325307789639621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023965 (A018164 (n + 1)).toNat

end

end A118944.P15698325307789639621

/-! ## A118944.P880143048522314468

`A023965(A232582(n+2))`
-/

namespace A118944.P880143048522314468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023965 (A232582 (n + 2)).toNat

end

end A118944.P880143048522314468

/-!
# A118945: n-th (starting from the left) decimal digit of 12^n.

The programs for A118945, there is no canonical definition to state claims against.
-/

/-! ## A118945.P4576989201698644104

`A008572(∑[A008473(2^n)])`
-/

namespace A118945.P4576989201698644104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008473 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008572 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A118945.P4576989201698644104

/-! ## A118945.P6437735987912813311

`A160590(∑[A047522(p?[4*5*n+3])])`
-/

namespace A118945.P6437735987912813311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (5 * n) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160590 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A118945.P6437735987912813311

/-! ## A118945.P7794039632184389567

`A008572(A034856(n+1)^A052307(n))`
-/

namespace A118945.P7794039632184389567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008572 (SequenceMachineLib.roundAway ((A034856 (n + 1) : ℚ) ^ (A052307 n : ℤ))).toNat

end

end A118945.P7794039632184389567

/-!
# A118950: Numbers containing at least one prime digit.

The programs for A118950, the canonical program `A118950.P7310832611478025886` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118950 has offset 1).

The definition of A118950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118950.P7310832611478025886

`comp[A084984(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A118950

/-- `comp[A084984(n+1)]` -/
def P7310832611478025886.Spec : Prop :=
  ∀ n, (P7310832611478025886.a n : ℤ) = A118950 (n + 1)

theorem P7310832611478025886.correct : P7310832611478025886.Spec := by
  intro n
  simp only [A118950, Nat.add_sub_cancel]

end A118950

/-! ## A118950.P12675702479293919037

`lt[0, A193238(n)]`
-/

namespace A118950.P12675702479293919037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118950.P12675702479293919037

namespace A118950

/-- `lt[0, A193238(n)]` -/
def P12675702479293919037.Spec : Prop :=
  ∀ n, (P12675702479293919037.a n : ℤ) = A118950 (n + 1)

end A118950

/-! ## A118950.P16193681026920895333

`eq[1, gcd(25, A193238(n+1))]+1`
-/

namespace A118950.P16193681026920895333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 25 (A193238 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A118950.P16193681026920895333

namespace A118950

/-- `eq[1, gcd(25, A193238(n+1))]+1` -/
def P16193681026920895333.Spec : Prop :=
  ∀ n, (P16193681026920895333.a n : ℤ) = A118950 (n + 1)

end A118950

/-! ## A118950.P8443591017460060076

`eq[1, A136400(A211396(n))]`
-/

namespace A118950.P8443591017460060076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A211396 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118950.P8443591017460060076

namespace A118950

/-- `eq[1, A136400(A211396(n))]` -/
def P8443591017460060076.Spec : Prop :=
  ∀ n, (P8443591017460060076.a n : ℤ) = A118950 (n + 1)

end A118950

/-! ## A118950.P14099570002995543388

`lt[A276729(n), A055642(n)]`
-/

namespace A118950.P14099570002995543388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A118950.P14099570002995543388

namespace A118950

/-- `lt[A276729(n), A055642(n)]` -/
def P14099570002995543388.Spec : Prop :=
  ∀ n, (P14099570002995543388.a n : ℤ) = A118950 (n + 1)

end A118950

/-! ## A118950.P5188119352555456086

`eq[1, A004218(A211396(n)+1)]`
-/

namespace A118950.P5188119352555456086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A211396 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118950.P5188119352555456086

namespace A118950

/-- `eq[1, A004218(A211396(n)+1)]` -/
def P5188119352555456086.Spec : Prop :=
  ∀ n, (P5188119352555456086.a n : ℤ) = A118950 (n + 1)

end A118950

/-! ## A118950.P4513287741074935302

`lt[2, A054054(A211396(n)+1)]`
-/

namespace A118950.P4513287741074935302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A211396 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118950.P4513287741074935302

namespace A118950

/-- `lt[2, A054054(A211396(n)+1)]` -/
def P4513287741074935302.Spec : Prop :=
  ∀ n, (P4513287741074935302.a n : ℤ) = A118950 (n + 1)

end A118950

/-! ## A118950.P205147080314614465

`eq[1, A326670(a(A193238(n)))]` with `a(0)=5`
-/

namespace A118950.P205147080314614465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A326670 (f2 (A193238 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118950.P205147080314614465

namespace A118950

/-- `eq[1, A326670(a(A193238(n)))]` -/
def P205147080314614465.Spec : Prop :=
  ∀ n, (P205147080314614465.a n : ℤ) = A118950 (n + 1)

end A118950

/-! ## A118950.P10095214858039695482

`lt[A276729(n), A004218(n+1)]`
-/

namespace A118950.P10095214858039695482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A118950.P10095214858039695482

namespace A118950

/-- `lt[A276729(n), A004218(n+1)]` -/
def P10095214858039695482.Spec : Prop :=
  ∀ n, (P10095214858039695482.a n : ℤ) = A118950 (n + 1)

end A118950

/-! ## A118950.P16176410254905705082

`eq[2, A066900(a(A193238(n))+1)]` with `a(0)=1`
-/

namespace A118950.P16176410254905705082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A066900 (f2 (A193238 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118950.P16176410254905705082

namespace A118950

/-- `eq[2, A066900(a(A193238(n))+1)]` -/
def P16176410254905705082.Spec : Prop :=
  ∀ n, (P16176410254905705082.a n : ℤ) = A118950 (n + 1)

end A118950

/-! ## A118950.P13764781884707304368

`eq[1, A279287(a(A193238(n))+1)]` with `a(0)=3`
-/

namespace A118950.P13764781884707304368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A279287 (f2 (A193238 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118950.P13764781884707304368

namespace A118950

/-- `eq[1, A279287(a(A193238(n))+1)]` -/
def P13764781884707304368.Spec : Prop :=
  ∀ n, (P13764781884707304368.a n : ℤ) = A118950 (n + 1)

end A118950

/-! ## A118950.P12171707274158912019

`eq[1, A054977(n*A193238(n))]`
-/

namespace A118950.P12171707274158912019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 ((n : ℤ) * A193238 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118950.P12171707274158912019

namespace A118950

/-- `eq[1, A054977(n*A193238(n))]` -/
def P12171707274158912019.Spec : Prop :=
  ∀ n, (P12171707274158912019.a n : ℤ) = A118950 (n + 1)

end A118950

/-! ## A118950.P4800733565915547758

`lt[1, A257994(A113581(n))+1]`
-/

namespace A118950.P4800733565915547758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A113581 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118950.P4800733565915547758

namespace A118950

/-- `lt[1, A257994(A113581(n))+1]` -/
def P4800733565915547758.Spec : Prop :=
  ∀ n, (P4800733565915547758.a n : ℤ) = A118950 (n + 1)

end A118950

/-!
# A118951: Numbers containing at least one composite digit.

The programs for A118951, the canonical program `A118951.P16210819713689529076` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118951 has offset 1).

The definition of A118951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118951.P16210819713689529076

`comp[A202267(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A118951

/-- `comp[A202267(n+1)]` -/
def P16210819713689529076.Spec : Prop :=
  ∀ n, (P16210819713689529076.a n : ℤ) = A118951 (n + 1)

theorem P16210819713689529076.correct : P16210819713689529076.Spec := by
  intro n
  simp only [A118951, Nat.add_sub_cancel]

end A118951

/-! ## A118951.P5151536237323497150

`comp[record[A202267(A246694(n))]]`
-/

namespace A118951.P5151536237323497150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118951.P5151536237323497150

namespace A118951

/-- `comp[record[A202267(A246694(n))]]` -/
def P5151536237323497150.Spec : Prop :=
  ∀ n, (P5151536237323497150.a n : ℤ) = A118951 (n + 1)

end A118951

/-! ## A118951.P15581270263558130060

`lt[0, ∑{digits}[n, A283347(#+#+1)]]`
-/

namespace A118951.P15581270263558130060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => A283347 (x + x + 1)).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118951.P15581270263558130060

namespace A118951

/-- `lt[0, ∑{digits}[n, A283347(#+#+1)]]` -/
def P15581270263558130060.Spec : Prop :=
  ∀ n, (P15581270263558130060.a n : ℤ) = A118951 (n + 1)

end A118951

/-! ## A118951.P6413519769543113842

`lt[n*char[A202267(n+2)]+1, n+1]`
-/

namespace A118951.P6413519769543113842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A118951.P6413519769543113842

namespace A118951

/-- `lt[n*char[A202267(n+2)]+1, n+1]` -/
def P6413519769543113842.Spec : Prop :=
  ∀ n, (P6413519769543113842.a n : ℤ) = A118951 (n + 1)

end A118951

/-! ## A118951.P3015690868076347002

`lt[5, A054055(A222242(n))]`
-/

namespace A118951.P3015690868076347002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118951.P3015690868076347002

namespace A118951

/-- `lt[5, A054055(A222242(n))]` -/
def P3015690868076347002.Spec : Prop :=
  ∀ n, (P3015690868076347002.a n : ℤ) = A118951 (n + 1)

end A118951

/-! ## A118951.P16985538748139195445

`comp[A222242(A007092(n))]`
-/

namespace A118951.P16985538748139195445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A007092 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118951.P16985538748139195445

namespace A118951

/-- `comp[A222242(A007092(n))]` -/
def P16985538748139195445.Spec : Prop :=
  ∀ n, (P16985538748139195445.a n : ℤ) = A118951 (n + 1)

end A118951

/-! ## A118951.P4332494395608269041

`comp[A235049(A107130(n))]`
-/

namespace A118951.P4332494395608269041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A107130 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118951.P4332494395608269041

namespace A118951

/-- `comp[A235049(A107130(n))]` -/
def P4332494395608269041.Spec : Prop :=
  ∀ n, (P4332494395608269041.a n : ℤ) = A118951 (n + 1)

end A118951

/-!
# A118952: Characteristic function of numbers that can be written as p+2^k, where p is prime and p less than 2^k (A118957).

The programs for A118952, the canonical program `A118952.P17357093969252730800` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118952 has offset 1).

The definition of A118952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118952.P11372433923095737591

`char[A118957(n+1)-1]`
-/

namespace A118952.P11372433923095737591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118957 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A118952.P11372433923095737591

namespace A118952

/-- `char[A118957(n+1)-1]` -/
def P11372433923095737591.Spec : Prop :=
  ∀ n, (P11372433923095737591.a n : ℤ) = A118952 (n + 1)

end A118952

/-! ## A118952.P5993545628407248829

`char[comp[A118956(n+1)-1]]`
-/

namespace A118952.P5993545628407248829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118956 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A118952.P5993545628407248829

namespace A118952

/-- `char[comp[A118956(n+1)-1]]` -/
def P5993545628407248829.Spec : Prop :=
  ∀ n, (P5993545628407248829.a n : ℤ) = A118952 (n + 1)

end A118952

/-! ## A118952.P4280038556432089509

`char[eq[1, ∑{e}[A053645(n+1), #]]]`
-/

namespace A118952.P4280038556432089509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n).natAbs, Nat.factorization (f4 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A118952.P4280038556432089509

namespace A118952

/-- `char[eq[1, ∑{e}[A053645(n+1), #]]]` -/
def P4280038556432089509.Spec : Prop :=
  ∀ n, (P4280038556432089509.a n : ℤ) = A118952 (n + 1)

end A118952

/-! ## A118952.P17357093969252730800

`char[eq[2, ∑{e}[1-A006257(n), #]]-1]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A118952

/-- `char[eq[2, ∑{e}[1-A006257(n), #]]-1]` -/
def P17357093969252730800.Spec : Prop :=
  ∀ n, (P17357093969252730800.a n : ℤ) = A118952 (n + 1)

theorem P17357093969252730800.correct : P17357093969252730800.Spec := by
  intro n
  simp only [A118952, Nat.add_sub_cancel]

end A118952

/-! ## A118952.P8485086735956343046

`A228495(∑{e}[n+1-2^floor(log2(n+1)), #])`
-/

namespace A118952.P8485086735956343046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (2 ^ Nat.log 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A118952.P8485086735956343046

namespace A118952

/-- `A228495(∑{e}[n+1-2^floor(log2(n+1)), #])` -/
def P8485086735956343046.Spec : Prop :=
  ∀ n, P8485086735956343046.a n = A118952 (n + 1)

end A118952

/-! ## A118952.P7823967246369794794

`A046926(A152423(n+2))`
-/

namespace A118952.P7823967246369794794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A152423 (n + 2)).toNat

end

end A118952.P7823967246369794794

namespace A118952

/-- `A046926(A152423(n+2))` -/
def P7823967246369794794.Spec : Prop :=
  ∀ n, P7823967246369794794.a n = A118952 (n + 1)

end A118952

/-! ## A118952.P17889447938465860601

`A302048(A053645(n+1)²)`
-/

namespace A118952.P17889447938465860601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A053645 (n + 1) ^ 2).toNat

end

end A118952.P17889447938465860601

namespace A118952

/-- `A302048(A053645(n+1)²)` -/
def P17889447938465860601.Spec : Prop :=
  ∀ n, P17889447938465860601.a n = A118952 (n + 1)

end A118952

/-! ## A118952.P7236368676100269577

`A046926(A006257(n+1)+1)`
-/

namespace A118952.P7236368676100269577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A006257 (n + 1) + 1).toNat

end

end A118952.P7236368676100269577

namespace A118952

/-- `A046926(A006257(n+1)+1)` -/
def P7236368676100269577.Spec : Prop :=
  ∀ n, P7236368676100269577.a n = A118952 (n + 1)

end A118952

/-! ## A118952.P5963235438393568838

`A070095(A006257(n+1)+1)`
-/

namespace A118952.P5963235438393568838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070095 (A006257 (n + 1) + 1).toNat

end

end A118952.P5963235438393568838

namespace A118952

/-- `A070095(A006257(n+1)+1)` -/
def P5963235438393568838.Spec : Prop :=
  ∀ n, P5963235438393568838.a n = A118952 (n + 1)

end A118952

/-! ## A118952.P9908952588570517673

`A294930(A256258(n+1)+1)`
-/

namespace A118952.P9908952588570517673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (A256258 (n + 1) + 1).toNat

end

end A118952.P9908952588570517673

namespace A118952

/-- `A294930(A256258(n+1)+1)` -/
def P9908952588570517673.Spec : Prop :=
  ∀ n, P9908952588570517673.a n = A118952 (n + 1)

end A118952

/-! ## A118952.P16678571733268763970

`A046926(2*A062050(n+1))`
-/

namespace A118952.P16678571733268763970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (2 * A062050 (n + 1)).toNat

end

end A118952.P16678571733268763970

namespace A118952

/-- `A046926(2*A062050(n+1))` -/
def P16678571733268763970.Spec : Prop :=
  ∀ n, P16678571733268763970.a n = A118952 (n + 1)

end A118952

/-! ## A118952.P15342439512799322837

`A033683(∑{e}[A053645(n+1), #])`
-/

namespace A118952.P15342439512799322837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A118952.P15342439512799322837

namespace A118952

/-- `A033683(∑{e}[A053645(n+1), #])` -/
def P15342439512799322837.Spec : Prop :=
  ∀ n, P15342439512799322837.a n = A118952 (n + 1)

end A118952

/-! ## A118952.P17615065737689137614

`A098108(∑{e}[A053645(n+1), #])`
-/

namespace A118952.P17615065737689137614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A118952.P17615065737689137614

namespace A118952

/-- `A098108(∑{e}[A053645(n+1), #])` -/
def P17615065737689137614.Spec : Prop :=
  ∀ n, P17615065737689137614.a n = A118952 (n + 1)

end A118952

/-! ## A118952.P11037647373974181236

`A105700(A053645(n+1)²)/2`
-/

namespace A118952.P11037647373974181236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105700 (A053645 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A118952.P11037647373974181236

namespace A118952

/-- `A105700(A053645(n+1)²)/2` -/
def P11037647373974181236.Spec : Prop :=
  ∀ n, P11037647373974181236.a n = (A118952 (n + 1) : ℚ)

end A118952

/-! ## A118952.P11994384382632204836

`A046926(2*(A053645(n+1)+1))`
-/

namespace A118952.P11994384382632204836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (2 * (A053645 (n + 1) + 1)).toNat

end

end A118952.P11994384382632204836

namespace A118952

/-- `A046926(2*(A053645(n+1)+1))` -/
def P11994384382632204836.Spec : Prop :=
  ∀ n, P11994384382632204836.a n = A118952 (n + 1)

end A118952

/-! ## A118952.P3843346556095553773

`A046926(A053645(n+2+n)+2)`
-/

namespace A118952.P3843346556095553773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A053645 (n + 2 + n) + 2).toNat

end

end A118952.P3843346556095553773

namespace A118952

/-- `A046926(A053645(n+2+n)+2)` -/
def P3843346556095553773.Spec : Prop :=
  ∀ n, P3843346556095553773.a n = A118952 (n + 1)

end A118952

/-! ## A118952.P10557128612733571764

`A000007(xor(1, ∑{e}[A053645(n+1), #]))`
-/

namespace A118952.P10557128612733571764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.xor 1 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p))

end

end A118952.P10557128612733571764

namespace A118952

/-- `A000007(xor(1, ∑{e}[A053645(n+1), #]))` -/
def P10557128612733571764.Spec : Prop :=
  ∀ n, P10557128612733571764.a n = A118952 (n + 1)

end A118952

/-! ## A118952.P11397698504555243674

`∑{d}[∑{e}[A053645(n+1), #], A008683(#)]`
-/

namespace A118952.P11397698504555243674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d

end

end A118952.P11397698504555243674

namespace A118952

/-- `∑{d}[∑{e}[A053645(n+1), #], A008683(#)]` -/
def P11397698504555243674.Spec : Prop :=
  ∀ n, P11397698504555243674.a n = A118952 (n + 1)

end A118952

/-! ## A118952.P14639364016216234575

`A046926(A005843(A062050(n+1)))`
-/

namespace A118952.P14639364016216234575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A005843 (A062050 (n + 1)).toNat).toNat

end

end A118952.P14639364016216234575

namespace A118952

/-- `A046926(A005843(A062050(n+1)))` -/
def P14639364016216234575.Spec : Prop :=
  ∀ n, P14639364016216234575.a n = A118952 (n + 1)

end A118952

/-!
# A118953: Number of ways to write the n-th prime as 2^k + p, where p is prime and p < 2^k.

The programs for A118953, the canonical program `A118953.P11235668260339629374` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118953 has offset 1).

The definition of A118953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118953.P11235668260339629374

`A107279(A091931(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A118953

/-- `A107279(A091931(n+1))` -/
def P11235668260339629374.Spec : Prop :=
  ∀ n, P11235668260339629374.a n = A118953 (n + 1)

theorem P11235668260339629374.correct : P11235668260339629374.Spec := by
  intro n
  simp only [A118953, Nat.add_sub_cancel]

end A118953

/-! ## A118953.P9973919759703609161

`A302048(A091931(n+1)²)`
-/

namespace A118953.P9973919759703609161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A091931 (n + 1) ^ 2).toNat

end

end A118953.P9973919759703609161

namespace A118953

/-- `A302048(A091931(n+1)²)` -/
def P9973919759703609161.Spec : Prop :=
  ∀ n, P9973919759703609161.a n = A118953 (n + 1)

end A118953

/-! ## A118953.P8630442805287012201

`char[A033270(A091932(n+1))]`
-/

namespace A118953.P8630442805287012201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A091932 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A118953.P8630442805287012201

namespace A118953

/-- `char[A033270(A091932(n+1))]` -/
def P8630442805287012201.Spec : Prop :=
  ∀ n, (P8630442805287012201.a n : ℤ) = A118953 (n + 1)

end A118953

/-! ## A118953.P6577388805414334159

`A046926(A088147(n+1)+1)`
-/

namespace A118953.P6577388805414334159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A088147 (n + 1) + 1).toNat

end

end A118953.P6577388805414334159

namespace A118953

/-- `A046926(A088147(n+1)+1)` -/
def P6577388805414334159.Spec : Prop :=
  ∀ n, P6577388805414334159.a n = A118953 (n + 1)

end A118953

/-! ## A118953.P5516638259938901366

`A061358(A091931(n+1)+2)`
-/

namespace A118953.P5516638259938901366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A091931 (n + 1) + 2).toNat

end

end A118953.P5516638259938901366

namespace A118953

/-- `A061358(A091931(n+1)+2)` -/
def P5516638259938901366.Spec : Prop :=
  ∀ n, P5516638259938901366.a n = A118953 (n + 1)

end A118953

/-! ## A118953.P9778495969452265273

`A010051(or(1, A091931(n+1)))`
-/

namespace A118953.P9778495969452265273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.lor 1 (A091931 (n + 1))).toNat

end

end A118953.P9778495969452265273

namespace A118953

/-- `A010051(or(1, A091931(n+1)))` -/
def P9778495969452265273.Spec : Prop :=
  ∀ n, P9778495969452265273.a n = A118953 (n + 1)

end A118953

/-! ## A118953.P10968595254124487283

`1-A005171(or(1, A091931(n+1)))`
-/

namespace A118953.P10968595254124487283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005171 (Int.lor 1 (A091931 (n + 1))).toNat

end

end A118953.P10968595254124487283

namespace A118953

/-- `1-A005171(or(1, A091931(n+1)))` -/
def P10968595254124487283.Spec : Prop :=
  ∀ n, P10968595254124487283.a n = A118953 (n + 1)

end A118953

/-! ## A118953.P12165727842622425886

`char[lt[A130970(n+1), A001481(n+1)]]`
-/

namespace A118953.P12165727842622425886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130970 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A118953.P12165727842622425886

namespace A118953

/-- `char[lt[A130970(n+1), A001481(n+1)]]` -/
def P12165727842622425886.Spec : Prop :=
  ∀ n, (P12165727842622425886.a n : ℤ) = A118953 (n + 1)

end A118953

/-! ## A118953.P14855931043273014308

`A107279(A053645(Δ[A007504(n)]))`
-/

namespace A118953.P14855931043273014308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A053645 (f1 (n + 1) - f1 n).toNat).toNat

end

end A118953.P14855931043273014308

namespace A118953

/-- `A107279(A053645(Δ[A007504(n)]))` -/
def P14855931043273014308.Spec : Prop :=
  ∀ n, P14855931043273014308.a n = A118953 (n + 1)

end A118953

/-! ## A118953.P4656088300065081823

`A107279(A053645(record[A051698(n)]))`
-/

namespace A118953.P4656088300065081823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A053645 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A118953.P4656088300065081823

namespace A118953

/-- `A107279(A053645(record[A051698(n)]))` -/
def P4656088300065081823.Spec : Prop :=
  ∀ n, P4656088300065081823.a n = A118953 (n + 1)

end A118953

/-! ## A118953.P15820806250087966326

`A010051(A053645(p?[A072480(n)]))`
-/

namespace A118953.P15820806250087966326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A053645 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A118953.P15820806250087966326

namespace A118953

/-- `A010051(A053645(p?[A072480(n)]))` -/
def P15820806250087966326.Spec : Prop :=
  ∀ n, P15820806250087966326.a n = A118953 (n + 1)

end A118953

/-! ## A118953.P7253967974442085125

`A107279(A053645(p?[A004442(n)]))`
-/

namespace A118953.P7253967974442085125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A053645 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A118953.P7253967974442085125

namespace A118953

/-- `A107279(A053645(p?[A004442(n)]))` -/
def P7253967974442085125.Spec : Prop :=
  ∀ n, P7253967974442085125.a n = A118953 (n + 1)

end A118953

/-! ## A118953.P9293990777144833674

`A107279(A053645(p?[A006368(n)]))`
-/

namespace A118953.P9293990777144833674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A053645 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A118953.P9293990777144833674

namespace A118953

/-- `A107279(A053645(p?[A006368(n)]))` -/
def P9293990777144833674.Spec : Prop :=
  ∀ n, P9293990777144833674.a n = A118953 (n + 1)

end A118953

/-! ## A118953.P15643133791571009739

`A107279(A053645(p?[A014681(n)]))`
-/

namespace A118953.P15643133791571009739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A053645 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A118953.P15643133791571009739

namespace A118953

/-- `A107279(A053645(p?[A014681(n)]))` -/
def P15643133791571009739.Spec : Prop :=
  ∀ n, P15643133791571009739.a n = A118953 (n + 1)

end A118953

/-! ## A118953.P16906189575055932874

`A107279(A053645(p?[A080587(n)]))`
-/

namespace A118953.P16906189575055932874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A053645 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A118953.P16906189575055932874

namespace A118953

/-- `A107279(A053645(p?[A080587(n)]))` -/
def P16906189575055932874.Spec : Prop :=
  ∀ n, P16906189575055932874.a n = A118953 (n + 1)

end A118953

/-! ## A118953.P13422443025789899470

`A010051(A053645(p?[A195140(n)]))`
-/

namespace A118953.P13422443025789899470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A053645 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A118953.P13422443025789899470

namespace A118953

/-- `A010051(A053645(p?[A195140(n)]))` -/
def P13422443025789899470.Spec : Prop :=
  ∀ n, P13422443025789899470.a n = A118953 (n + 1)

end A118953

/-! ## A118953.P17245463119878058948

`A107279(A053645(p?[A107750(n)]))`
-/

namespace A118953.P17245463119878058948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A053645 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A118953.P17245463119878058948

namespace A118953

/-- `A107279(A053645(p?[A107750(n)]))` -/
def P17245463119878058948.Spec : Prop :=
  ∀ n, P17245463119878058948.a n = A118953 (n + 1)

end A118953

/-! ## A118953.P13671014875931970029

`A101264(A164089(p?[A014681(n)]))`
-/

namespace A118953.P13671014875931970029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A164089 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A118953.P13671014875931970029

namespace A118953

/-- `A101264(A164089(p?[A014681(n)]))` -/
def P13671014875931970029.Spec : Prop :=
  ∀ n, P13671014875931970029.a n = A118953 (n + 1)

end A118953

/-! ## A118953.P6867748728289109222

`A107279(A053645(A000040(n+1)))`
-/

namespace A118953.P6867748728289109222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A053645 (A000040 (n + 1)).toNat).toNat

end

end A118953.P6867748728289109222

namespace A118953

/-- `A107279(A053645(A000040(n+1)))` -/
def P6867748728289109222.Spec : Prop :=
  ∀ n, P6867748728289109222.a n = A118953 (n + 1)

end A118953

/-! ## A118953.P8339024837874415532

`A101264(A164089(record[A000010(n+1)]))`
-/

namespace A118953.P8339024837874415532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A164089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A118953.P8339024837874415532

namespace A118953

/-- `A101264(A164089(record[A000010(n+1)]))` -/
def P8339024837874415532.Spec : Prop :=
  ∀ n, P8339024837874415532.a n = A118953 (n + 1)

end A118953

/-!
# A118954: Numbers that cannot be written as 2^k + prime.

The programs for A118954, there is no canonical definition to state claims against.
-/

/-! ## A118954.P566448086199753225

`eq[0, A109925(n+1)]+1`
-/

namespace A118954.P566448086199753225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118954.P566448086199753225

/-! ## A118954.P1468226326565497646

`lt[A109925(n+1), A033999(n)²]+1`
-/

namespace A118954.P1468226326565497646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A118954.P1468226326565497646

/-! ## A118954.P1790631811770425560

`record[(n+1)/A000108(4*A109925(n+1))]`
-/

namespace A118954.P1790631811770425560
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000108 (4 * A109925 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118954.P1790631811770425560

/-! ## A118954.P10014320516111992265

`record[(n+1)/A298037(4*A109925(n+1))]`
-/

namespace A118954.P10014320516111992265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A298037 (4 * A109925 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118954.P10014320516111992265

/-! ## A118954.P14763093070924999770

`record[(n+1)/A117534(4*A109925(n+1)+1)]`
-/

namespace A118954.P14763093070924999770
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A117534 (4 * A109925 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118954.P14763093070924999770

/-! ## A118954.P11182434699756717694

`lt[A109925(n+1), A225821(2*n+1)]+1`
-/

namespace A118954.P11182434699756717694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A118954.P11182434699756717694

/-! ## A118954.P11102628437855648326

`record[(n+1)/A274601(n*A109925(n+1)+1)]`
-/

namespace A118954.P11102628437855648326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A274601 ((n : ℤ) * A109925 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118954.P11102628437855648326

/-!
# A118955: Numbers of the form 2^k + prime.

The programs for A118955, there is no canonical definition to state claims against.
-/

/-! ## A118955.P17920769097256728563

`eq[1, A000010(a(A109925(n)))]` with `a(0)=3`
-/

namespace A118955.P17920769097256728563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A109925 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118955.P17920769097256728563

/-! ## A118955.P1595594923692489645

`eq[1, A239001(a(A109925(n)))²]` with `a(0)=2`
-/

namespace A118955.P1595594923692489645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A239001 (f2 (A109925 n).toNat).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118955.P1595594923692489645

/-! ## A118955.P17057152518175434720

`eq[char[A118954(n+1)], A000007(n)]`
-/

namespace A118955.P17057152518175434720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A118955.P17057152518175434720

/-! ## A118955.P14427805198738977878

`eq[0, A000007(A109925(n+1))]+1`
-/

namespace A118955.P14427805198738977878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A109925 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118955.P14427805198738977878

/-! ## A118955.P2170910193343256532

`eq[char[A118954(n+1)], A010051(2*(n+1))]`
-/

namespace A118955.P2170910193343256532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A118955.P2170910193343256532

/-! ## A118955.P15786189396029700959

`eq[char[A118954(n+1)], A049084(2*(n+1))]`
-/

namespace A118955.P15786189396029700959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118954 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A118955.P15786189396029700959

/-!
# A118956: Numbers that cannot be written as 2^k + p with p prime < 2^k.

The programs for A118956, there is no canonical definition to state claims against.
-/

/-! ## A118956.P10445904992387747039

`comp[A118957(n+1)-1]+1`
-/

namespace A118956.P10445904992387747039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118957 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A118956.P10445904992387747039

/-! ## A118956.P17482636427642346360

`comp[lt[0, A118952(n+1)]]+1`
-/

namespace A118956.P17482636427642346360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118952 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A118956.P17482636427642346360

/-! ## A118956.P4208127531281488489

`comp[(n+2)*A118952(n+2)]`
-/

namespace A118956.P4208127531281488489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A118952 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118956.P4208127531281488489

/-! ## A118956.P659395285960675979

`comp[A233583(A118957(n+1))]+1`
-/

namespace A118956.P659395285960675979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A118957 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A118956.P659395285960675979

/-! ## A118956.P10446940407849892036

`comp[n*A070088(A006257(n)+1)]`
-/

namespace A118956.P10446940407849892036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A070088 (A006257 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118956.P10446940407849892036

/-! ## A118956.P4758450034508269158

`comp[A118952(n+1)*A153152(n)]`
-/

namespace A118956.P4758450034508269158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118952 (n + 1) * A153152 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118956.P4758450034508269158

/-! ## A118956.P17939896286676073287

`comp[A118952(n+1)*A326178(n)]`
-/

namespace A118956.P17939896286676073287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118952 (n + 1) * A326178 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118956.P17939896286676073287

/-! ## A118956.P17472985953067302128

`comp[xor(A006530(n+1), A062383(n))]`
-/

namespace A118956.P17472985953067302128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006530 (n + 1)) (A062383 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118956.P17472985953067302128

/-! ## A118956.P13687541012479268319

`comp[xor(A062383(n), A078833(n+1))]`
-/

namespace A118956.P13687541012479268319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A062383 n) (A078833 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118956.P13687541012479268319

/-! ## A118956.P12027407073631061942

`eq[0, A105700(A053645(n+1)²)]+1`
-/

namespace A118956.P12027407073631061942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A053645 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118956.P12027407073631061942

/-!
# A118957: Numbers of the form 2^k + p, where p is a prime less than 2^k.

The programs for A118957, there is no canonical definition to state claims against.
-/

/-! ## A118957.P1166239591333408380

`eq[2, ∑{e}[1-A006257(n), #]]`
-/

namespace A118957.P1166239591333408380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006257 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118957.P1166239591333408380

/-! ## A118957.P8343120047836676652

`eq[1, A070088(A006257(n)+1)]`
-/

namespace A118957.P8343120047836676652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (A006257 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118957.P8343120047836676652

/-! ## A118957.P662677423211668816

`eq[1, A003415(n-A053644(n))]`
-/

namespace A118957.P662677423211668816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((n : ℤ) - A053644 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118957.P662677423211668816

/-! ## A118957.P16545474752743915341

`eq[1, A018783(n-A053644(n))]`
-/

namespace A118957.P16545474752743915341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 ((n : ℤ) - A053644 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118957.P16545474752743915341

/-! ## A118957.P3040462489830275449

`eq[1, A032741(n-A053644(n))]`
-/

namespace A118957.P3040462489830275449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((n : ℤ) - A053644 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118957.P3040462489830275449

/-! ## A118957.P4640616123322249248

`eq[2, A073855(n-A053644(n))]`
-/

namespace A118957.P4640616123322249248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 ((n : ℤ) - A053644 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118957.P4640616123322249248

/-! ## A118957.P2398051774187866598

`eq[3, A226602(n-A053644(n))]`
-/

namespace A118957.P2398051774187866598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 ((n : ℤ) - A053644 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118957.P2398051774187866598

/-! ## A118957.P13072620090143944911

`eq[1, A018783(A053645(n+1))]+1`
-/

namespace A118957.P13072620090143944911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A053645 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118957.P13072620090143944911

/-! ## A118957.P6960445351090040681

`eq[1, A003415(A164089(2*n+1))]`
-/

namespace A118957.P6960445351090040681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A164089 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118957.P6960445351090040681

/-! ## A118957.P12896564064008638745

`eq[2, A105700(A053645(n+1)²)]+1`
-/

namespace A118957.P12896564064008638745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A053645 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118957.P12896564064008638745

/-!
# A118958: Primes that cannot be written as 2^k + p with p prime < 2^k.

The programs for A118958, the canonical program `A118958.P10422470674657479766` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118958 has offset 1).

The definition of A118958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1253 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118958.P10422470674657479766

`p?[A107279(A091931(n+1))+A000040(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A118958

/-- `p?[A107279(A091931(n+1))+A000040(n+1)]` -/
def P10422470674657479766.Spec : Prop :=
  ∀ n, P10422470674657479766.a n = A118958 (n + 1)

theorem P10422470674657479766.correct : P10422470674657479766.Spec := by
  intro n
  simp only [A118958, Nat.add_sub_cancel]

end A118958

/-! ## A118958.P16315783190604603988

`p?[A107279(A091931(n+1))+A014692(n+1)+n]`
-/

namespace A118958.P16315783190604603988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A091931 (n + 1)).toNat + (A014692 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118958.P16315783190604603988

namespace A118958

/-- `p?[A107279(A091931(n+1))+A014692(n+1)+n]` -/
def P16315783190604603988.Spec : Prop :=
  ∀ n, P16315783190604603988.a n = A118958 (n + 1)

end A118958

/-! ## A118958.P17782530500135900578

`p?[A107279(A091931(n+1))+A014688(n+1)-(n+1)]`
-/

namespace A118958.P17782530500135900578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A091931 (n + 1)).toNat + (A014688 (n + 1) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118958.P17782530500135900578

namespace A118958

/-- `p?[A107279(A091931(n+1))+A014688(n+1)-(n+1)]` -/
def P17782530500135900578.Spec : Prop :=
  ∀ n, P17782530500135900578.a n = A118958 (n + 1)

end A118958

/-! ## A118958.P869439243348504589

`p?[(n+1)*A292438(A053645(n+1))]`
-/

namespace A118958.P869439243348504589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A292438 (A053645 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118958.P869439243348504589

namespace A118958

/-- `p?[(n+1)*A292438(A053645(n+1))]` -/
def P869439243348504589.Spec : Prop :=
  ∀ n, P869439243348504589.a n = A118958 (n + 1)

end A118958

/-! ## A118958.P13669164923942331261

`A000040(eq[0, A118953(n+1)]+1)`
-/

namespace A118958.P13669164923942331261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A118958.P13669164923942331261

namespace A118958

/-- `A000040(eq[0, A118953(n+1)]+1)` -/
def P13669164923942331261.Spec : Prop :=
  ∀ n, P13669164923942331261.a n = A118958 (n + 1)

end A118958

/-! ## A118958.P825674281697274982

`p?[A118953(n+1)+A000040(n+1)]`
-/

namespace A118958.P825674281697274982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118953 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118958.P825674281697274982

namespace A118958

/-- `p?[A118953(n+1)+A000040(n+1)]` -/
def P825674281697274982.Spec : Prop :=
  ∀ n, P825674281697274982.a n = A118958 (n + 1)

end A118958

/-! ## A118958.P18439304454932478329

`record[A014963(A118953(n+1)+A000040(n+1))]`
-/

namespace A118958.P18439304454932478329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A118953 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118958.P18439304454932478329

namespace A118958

/-- `record[A014963(A118953(n+1)+A000040(n+1))]` -/
def P18439304454932478329.Spec : Prop :=
  ∀ n, P18439304454932478329.a n = A118958 (n + 1)

end A118958

/-! ## A118958.P12303508087104229245

`record[A020639(A118953(n+1)+A000040(n+1))]`
-/

namespace A118958.P12303508087104229245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A118953 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118958.P12303508087104229245

namespace A118958

/-- `record[A020639(A118953(n+1)+A000040(n+1))]` -/
def P12303508087104229245.Spec : Prop :=
  ∀ n, P12303508087104229245.a n = A118958 (n + 1)

end A118958

/-! ## A118958.P921472789448478949

`record[A006530(A000040(n+1)-A118953(n+1))]`
-/

namespace A118958.P921472789448478949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) - A118953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118958.P921472789448478949

namespace A118958

/-- `record[A006530(A000040(n+1)-A118953(n+1))]` -/
def P921472789448478949.Spec : Prop :=
  ∀ n, P921472789448478949.a n = A118958 (n + 1)

end A118958

/-!
# A118959: Non-palindromic numbers which are divisible by their reversal.

The programs for A118959, there is no canonical definition to state claims against.
-/

/-! ## A118959.P13664194996136507430

`∩[A071590(n+1), A169824(n+1)]`
-/

namespace A118959.P13664194996136507430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118959.P13664194996136507430

/-! ## A118959.P12200332513916420594

`∩[A029742(n+1), A169824(n+1)]`
-/

namespace A118959.P12200332513916420594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118959.P12200332513916420594

/-! ## A118959.P10973334443192374672

`eq[A071955(A028310(n)), A136522(n)]`
-/

namespace A118959.P10973334443192374672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071955 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118959.P10973334443192374672

/-! ## A118959.P13422501767626218075

`∩[A028310(A169824(n+1)), A008592(n)]`
-/

namespace A118959.P13422501767626218075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A169824 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118959.P13422501767626218075

/-!
# A118960: Row 3 of array in A105272.

The programs for A118960, there is no canonical definition to state claims against.
-/

/-! ## A118960.P9382589174364111040

`A105272(∑[n+2]+4)`
-/

namespace A118960.P9382589174364111040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A118960.P9382589174364111040

/-! ## A118960.P5494603127862651626

`or(char[8], A105272(A167614(n+1)))`
-/

namespace A118960.P5494603127862651626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A105272 (A167614 (n + 1)).toNat)

end

end A118960.P5494603127862651626

/-! ## A118960.P2623858855678239323

`or(char[8], A105272(A055998(n)+6))`
-/

namespace A118960.P2623858855678239323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A105272 (A055998 n + 6).toNat)

end

end A118960.P2623858855678239323

/-! ## A118960.P2413487005388410123

`A105272(A167614(n+1))%A078370(n)`
-/

namespace A118960.P2413487005388410123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105272 (A167614 (n + 1)).toNat) (A078370 n)

end

end A118960.P2413487005388410123

/-! ## A118960.P12482436965416644597

`∑{d}[A105272(A167614(n+1)), A000010(#)]`
-/

namespace A118960.P12482436965416644597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A118960.P12482436965416644597

/-!
# A118961: Difference between long leg and hypotenuse in primitive Pythagorean triangles, sorted on hypotenuse (A020882), then on long leg (A046087).

The programs for A118961, there is no canonical definition to state claims against.
-/

/-! ## A118961.P1898210469001774789

`A020882(n+1)-A046087(n+1)`
-/

namespace A118961.P1898210469001774789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) - A046087 (n + 1)

end

end A118961.P1898210469001774789

/-! ## A118961.P13608505664791997536

`A118962(n+1)-A120682(n+1)`
-/

namespace A118961.P13608505664791997536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118962 (n + 1) - A120682 (n + 1)

end

end A118961.P13608505664791997536

/-! ## A118961.P12112021176427303969

`A046086(n+1)-A087459(n+1)`
-/

namespace A118961.P12112021176427303969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046086 (n + 1) - A087459 (n + 1)

end

end A118961.P12112021176427303969

/-! ## A118961.P12237107937607019782

`A046086(n+1)-2*A014498(n+1)`
-/

namespace A118961.P12237107937607019782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046086 (n + 1) - 2 * A014498 (n + 1)

end

end A118961.P12237107937607019782

/-! ## A118961.P14935521967381303783

`2*A014498(n+1)²/A118962(n+1)`
-/

namespace A118961.P14935521967381303783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A014498 (n + 1) ^ 2 : ℚ) / (A118962 (n + 1) : ℚ))

end

end A118961.P14935521967381303783

/-! ## A118961.P7713576147870839078

`A087459(n+1)²/(2*A118962(n+1))`
-/

namespace A118961.P7713576147870839078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087459 (n + 1) ^ 2 : ℚ) / (2 * A118962 (n + 1) : ℚ)

end

end A118961.P7713576147870839078

/-! ## A118961.P8252461576164465830

`A020882(n+1)-(A120682(n+1)+A046086(n+1))`
-/

namespace A118961.P8252461576164465830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) - (A120682 (n + 1) + A046086 (n + 1))

end

end A118961.P8252461576164465830

/-! ## A118961.P14318891954004758085

`A046086(n+1)+A118962(n+1)-A046087(n+1)`
-/

namespace A118961.P14318891954004758085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046086 (n + 1) + (A118962 (n + 1) - A046087 (n + 1))

end

end A118961.P14318891954004758085

/-! ## A118961.P3634910709273555841

`A020882(n+1)-(A118962(n+1)+A087459(n+1))`
-/

namespace A118961.P3634910709273555841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) - (A118962 (n + 1) + A087459 (n + 1))

end

end A118961.P3634910709273555841

/-! ## A118961.P4662312193438178097

`A046087(n+1)-(A120682(n+1)+A087459(n+1))`
-/

namespace A118961.P4662312193438178097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046087 (n + 1) - (A120682 (n + 1) + A087459 (n + 1))

end

end A118961.P4662312193438178097

/-! ## A118961.P17780584840729885253

`A020882(n+1)-A120644(n+1)/A046086(n+1)`
-/

namespace A118961.P17780584840729885253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020882 (n + 1) : ℚ) - (A120644 (n + 1) : ℚ) / (A046086 (n + 1) : ℚ)

end

end A118961.P17780584840729885253

/-! ## A118961.P1331360940345907885

`A014498(n+1)*A087459(n+1)/A118962(n+1)`
-/

namespace A118961.P1331360940345907885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014498 (n + 1) * A087459 (n + 1) : ℚ) / (A118962 (n + 1) : ℚ)

end

end A118961.P1331360940345907885

/-! ## A118961.P4458014542390294080

`A046086(n+1)²/(A046087(n+1)+A020882(n+1))`
-/

namespace A118961.P4458014542390294080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046086 (n + 1) ^ 2 : ℚ) / (A046087 (n + 1) + A020882 (n + 1) : ℚ)

end

end A118961.P4458014542390294080

/-! ## A118961.P6996698798196083035

`A046087(n+1)²/A118962(n+1)-A120681(n+1)`
-/

namespace A118961.P6996698798196083035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046087 (n + 1) ^ 2 : ℚ) / (A118962 (n + 1) : ℚ) - (A120681 (n + 1) : ℚ)

end

end A118961.P6996698798196083035

/-! ## A118961.P14026457367212595573

`A132981(2*(n+1))-A046087(n+1)`
-/

namespace A118961.P14026457367212595573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132981 (2 * (n + 1)) - A046087 (n + 1)

end

end A118961.P14026457367212595573

/-!
# A118962: Difference between short leg and hypotenuse in primitive Pythagorean triangles, sorted on hypotenuse (A020882), then on long leg (A046087).

The programs for A118962, there is no canonical definition to state claims against.
-/

/-! ## A118962.P15120175456106184458

`A118961(n+1)+A120682(n+1)`
-/

namespace A118962.P15120175456106184458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118961 (n + 1) + A120682 (n + 1)

end

end A118962.P15120175456106184458

/-! ## A118962.P2798893628854046190

`A020882(n+1)-A046086(n+1)`
-/

namespace A118962.P2798893628854046190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) - A046086 (n + 1)

end

end A118962.P2798893628854046190

/-! ## A118962.P8863071321863287136

`A046087(n+1)-A087459(n+1)`
-/

namespace A118962.P8863071321863287136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046087 (n + 1) - A087459 (n + 1)

end

end A118962.P8863071321863287136

/-! ## A118962.P11989318220023678095

`A046087(n+1)-2*A014498(n+1)`
-/

namespace A118962.P11989318220023678095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046087 (n + 1) - 2 * A014498 (n + 1)

end

end A118962.P11989318220023678095

/-! ## A118962.P5246886961982925871

`2*A014498(n+1)²/A118961(n+1)`
-/

namespace A118962.P5246886961982925871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A014498 (n + 1) ^ 2 : ℚ) / (A118961 (n + 1) : ℚ))

end

end A118962.P5246886961982925871

/-! ## A118962.P784568068969294789

`A087459(n+1)²/(2*A118961(n+1))`
-/

namespace A118962.P784568068969294789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087459 (n + 1) ^ 2 : ℚ) / (2 * A118961 (n + 1) : ℚ)

end

end A118962.P784568068969294789

/-! ## A118962.P18380241696716523164

`A020882(n+1)+A046087(n+1)-A120681(n+1)`
-/

namespace A118962.P18380241696716523164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) + (A046087 (n + 1) - A120681 (n + 1))

end

end A118962.P18380241696716523164

/-! ## A118962.P4676423998787836994

`A020882(n+1)+A120682(n+1)-A046087(n+1)`
-/

namespace A118962.P4676423998787836994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) + (A120682 (n + 1) - A046087 (n + 1))

end

end A118962.P4676423998787836994

/-! ## A118962.P2731688900481703699

`A046087(n+1)+A118961(n+1)-A046086(n+1)`
-/

namespace A118962.P2731688900481703699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046087 (n + 1) + (A118961 (n + 1) - A046086 (n + 1))

end

end A118962.P2731688900481703699

/-! ## A118962.P13936078099750796546

`A020882(n+1)-(A118961(n+1)+A087459(n+1))`
-/

namespace A118962.P13936078099750796546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) - (A118961 (n + 1) + A087459 (n + 1))

end

end A118962.P13936078099750796546

/-! ## A118962.P16960691234448647539

`A020882(n+1)-A120644(n+1)/A046087(n+1)`
-/

namespace A118962.P16960691234448647539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020882 (n + 1) : ℚ) - (A120644 (n + 1) : ℚ) / (A046087 (n + 1) : ℚ)

end

end A118962.P16960691234448647539

/-! ## A118962.P2047769139338992106

`A014498(n+1)*A087459(n+1)/A118961(n+1)`
-/

namespace A118962.P2047769139338992106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014498 (n + 1) * A087459 (n + 1) : ℚ) / (A118961 (n + 1) : ℚ)

end

end A118962.P2047769139338992106

/-! ## A118962.P13427573034433599521

`A046087(n+1)/A328971(n+1)*A328972(n+1)`
-/

namespace A118962.P13427573034433599521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046087 (n + 1) : ℚ) / (A328971 (n + 1) : ℚ) * (A328972 (n + 1) : ℚ)

end

end A118962.P13427573034433599521

/-! ## A118962.P11496720055687557870

`A046087(n+1)²/(A046086(n+1)+A020882(n+1))`
-/

namespace A118962.P11496720055687557870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046087 (n + 1) ^ 2 : ℚ) / (A046086 (n + 1) + A020882 (n + 1) : ℚ)

end

end A118962.P11496720055687557870

/-! ## A118962.P5085575058269603466

`A132981(2*(n+1))-A046086(n+1)`
-/

namespace A118962.P5085575058269603466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132981 (2 * (n + 1)) - A046086 (n + 1)

end

end A118962.P5085575058269603466

/-!
# A118963: Triangle read by rows: T(n,k) is the number of Grand Dyck paths of semilength n that have k double rises (n >= 1, k >= 0).

The programs for A118963, the canonical program `A118963.P14007094119382325428` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118963 has offset 1).

The definition of A118963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118963.P9497859823131244570

`(comp[∑[n]]-n)*A001263(n+1)`
-/

namespace A118963.P9497859823131244570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A001263 (n + 1)

end

end A118963.P9497859823131244570

namespace A118963

/-- `(comp[∑[n]]-n)*A001263(n+1)` -/
def P9497859823131244570.Spec : Prop :=
  ∀ n, P9497859823131244570.a n = A118963 (n + 1)

end A118963

/-! ## A118963.P1894672007775747582

`(comp[∑[n]]-n)*ceil(A174124(n)/2)`
-/

namespace A118963.P1894672007775747582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * ⌈(A174124 n : ℚ) / 2⌉

end

end A118963.P1894672007775747582

namespace A118963

/-- `(comp[∑[n]]-n)*ceil(A174124(n)/2)` -/
def P1894672007775747582.Spec : Prop :=
  ∀ n, P1894672007775747582.a n = A118963 (n + 1)

end A118963

/-! ## A118963.P2338742002336554664

`A191521(A004202(n+1))`
-/

namespace A118963.P2338742002336554664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191521 (A004202 (n + 1)).toNat

end

end A118963.P2338742002336554664

namespace A118963

/-- `A191521(A004202(n+1))` -/
def P2338742002336554664.Spec : Prop :=
  ∀ n, P2338742002336554664.a n = A118963 (n + 1)

end A118963

/-! ## A118963.P14007094119382325428

`A132813(n)+A103371(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A118963

/-- `A132813(n)+A103371(n)` -/
def P14007094119382325428.Spec : Prop :=
  ∀ n, P14007094119382325428.a n = A118963 (n + 1)

theorem P14007094119382325428.correct : P14007094119382325428.Spec := by
  intro n
  simp only [A118963, Nat.add_sub_cancel]

end A118963

/-! ## A118963.P10975679220461673201

`(A014430(n)+1)*A007318(n)`
-/

namespace A118963.P10975679220461673201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014430 n + 1) * A007318 n

end

end A118963.P10975679220461673201

namespace A118963

/-- `(A014430(n)+1)*A007318(n)` -/
def P10975679220461673201.Spec : Prop :=
  ∀ n, P10975679220461673201.a n = A118963 (n + 1)

end A118963

/-! ## A118963.P17598192572253144750

`A007318(n)*A014410(n+2)`
-/

namespace A118963.P17598192572253144750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A014410 (n + 2)

end

end A118963.P17598192572253144750

namespace A118963

/-- `A007318(n)*A014410(n+2)` -/
def P17598192572253144750.Spec : Prop :=
  ∀ n, P17598192572253144750.a n = A118963 (n + 1)

end A118963

/-! ## A118963.P13095474106472971388

`A007318(n)/2*A028327(n)`
-/

namespace A118963.P13095474106472971388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / 2 * (A028327 n : ℚ)

end

end A118963.P13095474106472971388

namespace A118963

/-- `A007318(n)/2*A028327(n)` -/
def P13095474106472971388.Spec : Prop :=
  ∀ n, P13095474106472971388.a n = (A118963 (n + 1) : ℚ)

end A118963

/-! ## A118963.P15665972338145270849

`abs(A014410(n+2)*A108086(n))`
-/

namespace A118963.P15665972338145270849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014410 (n + 2) * A108086 n|

end

end A118963.P15665972338145270849

namespace A118963

/-- `abs(A014410(n+2)*A108086(n))` -/
def P15665972338145270849.Spec : Prop :=
  ∀ n, P15665972338145270849.a n = A118963 (n + 1)

end A118963

/-! ## A118963.P2455762452785513757

`sqrt(A008459(n))*A014410(n+2)`
-/

namespace A118963.P2455762452785513757
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A014410 (n + 2) : ℝ)

end

end A118963.P2455762452785513757

namespace A118963

/-- `sqrt(A008459(n))*A014410(n+2)` -/
def P2455762452785513757.Spec : Prop :=
  ∀ n, P2455762452785513757.a n = (A118963 (n + 1) : ℝ)

end A118963

/-! ## A118963.P17933462949351590557

`A132812(n+1)+A001263(n+1)`
-/

namespace A118963.P17933462949351590557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132812 (n + 1) + A001263 (n + 1)

end

end A118963.P17933462949351590557

namespace A118963

/-- `A132812(n+1)+A001263(n+1)` -/
def P17933462949351590557.Spec : Prop :=
  ∀ n, P17933462949351590557.a n = A118963 (n + 1)

end A118963

/-! ## A118963.P17201040852668677550

`A001263(n+1)*A003057(n+2)`
-/

namespace A118963.P17201040852668677550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A003057 (n + 2)

end

end A118963.P17201040852668677550

namespace A118963

/-- `A001263(n+1)*A003057(n+2)` -/
def P17201040852668677550.Spec : Prop :=
  ∀ n, P17201040852668677550.a n = A118963 (n + 1)

end A118963

/-! ## A118963.P7399384951294195663

`(A051597(n)+A007318(n))*A007318(n)`
-/

namespace A118963.P7399384951294195663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051597 n + A007318 n) * A007318 n

end

end A118963.P7399384951294195663

namespace A118963

/-- `(A051597(n)+A007318(n))*A007318(n)` -/
def P7399384951294195663.Spec : Prop :=
  ∀ n, P7399384951294195663.a n = A118963 (n + 1)

end A118963

/-! ## A118963.P14975336522240740418

`(A135278(n)+A074909(n))*A007318(n)`
-/

namespace A118963.P14975336522240740418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135278 n + A074909 n) * A007318 n

end

end A118963.P14975336522240740418

namespace A118963

/-- `(A135278(n)+A074909(n))*A007318(n)` -/
def P14975336522240740418.Spec : Prop :=
  ∀ n, P14975336522240740418.a n = A118963 (n + 1)

end A118963

/-! ## A118963.P7024454222767018621

`(A028263(n)-A007318(n))*A007318(n)`
-/

namespace A118963.P7024454222767018621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028263 n - A007318 n) * A007318 n

end

end A118963.P7024454222767018621

namespace A118963

/-- `(A028263(n)-A007318(n))*A007318(n)` -/
def P7024454222767018621.Spec : Prop :=
  ∀ n, P7024454222767018621.a n = A118963 (n + 1)

end A118963

/-! ## A118963.P3388503399509757887

`(A194121(n)-A194118(n))*A007318(n)`
-/

namespace A118963.P3388503399509757887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A194121 n - A194118 n) * A007318 n

end

end A118963.P3388503399509757887

namespace A118963

/-- `(A194121(n)-A194118(n))*A007318(n)` -/
def P3388503399509757887.Spec : Prop :=
  ∀ n, P3388503399509757887.a n = A118963 (n + 1)

end A118963

/-! ## A118963.P9366732638505717124

`(A074909(n+1)+A074909(n))*A007318(n)`
-/

namespace A118963.P9366732638505717124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074909 (n + 1) + A074909 n) * A007318 n

end

end A118963.P9366732638505717124

namespace A118963

/-- `(A074909(n+1)+A074909(n))*A007318(n)` -/
def P9366732638505717124.Spec : Prop :=
  ∀ n, P9366732638505717124.a n = A118963 (n + 1)

end A118963

/-! ## A118963.P3319602249628027418

`(A028263(n)-A014410(n+2))*A014410(n+2)`
-/

namespace A118963.P3319602249628027418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028263 n - A014410 (n + 2)) * A014410 (n + 2)

end

end A118963.P3319602249628027418

namespace A118963

/-- `(A028263(n)-A014410(n+2))*A014410(n+2)` -/
def P3319602249628027418.Spec : Prop :=
  ∀ n, P3319602249628027418.a n = A118963 (n + 1)

end A118963

/-! ## A118963.P1510878410040346872

`(A168577(n+2)-A104712(n+2))*A007318(n)`
-/

namespace A118963.P1510878410040346872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168577 (n + 2) - A104712 (n + 2)) * A007318 n

end

end A118963.P1510878410040346872

namespace A118963

/-- `(A168577(n+2)-A104712(n+2))*A007318(n)` -/
def P1510878410040346872.Spec : Prop :=
  ∀ n, P1510878410040346872.a n = A118963 (n + 1)

end A118963

/-! ## A118963.P6383356764920911264

`A103371(n)+A088459(2*n+1)`
-/

namespace A118963.P6383356764920911264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103371 n + A088459 (2 * n + 1)

end

end A118963.P6383356764920911264

namespace A118963

/-- `A103371(n)+A088459(2*n+1)` -/
def P6383356764920911264.Spec : Prop :=
  ∀ n, P6383356764920911264.a n = A118963 (n + 1)

end A118963

/-! ## A118963.P17634982929616134038

`A088459(2*n+1)+A088459(2*(n+1))`
-/

namespace A118963.P17634982929616134038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088459 (2 * n + 1) + A088459 (2 * (n + 1))

end

end A118963.P17634982929616134038

namespace A118963

/-- `A088459(2*n+1)+A088459(2*(n+1))` -/
def P17634982929616134038.Spec : Prop :=
  ∀ n, P17634982929616134038.a n = A118963 (n + 1)

end A118963

/-!
# A118965: Number of missing residues in Fibonacci sequence mod n.

The programs for A118965, there is no canonical definition to state claims against.
-/

/-! ## A118965.P2891977252620157398

`n+1-A066853(n+1)`
-/

namespace A118965.P2891977252620157398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A066853 (n + 1)

end

end A118965.P2891977252620157398

/-! ## A118965.P332721111501136428

`A024000(A066853(n+1))+n`
-/

namespace A118965.P332721111501136428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A066853 (n + 1)).toNat + (n : ℤ)

end

end A118965.P332721111501136428

/-! ## A118965.P9140796240699140710

`(A066853(n+1)*A125169(n))%(n+1)`
-/

namespace A118965.P9140796240699140710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066853 (n + 1) * A125169 n) (n + 1 : ℤ)

end

end A118965.P9140796240699140710

/-! ## A118965.P12620826380631223715

`(A066853(n+1)*A083074(n+1))%(n+1)`
-/

namespace A118965.P12620826380631223715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066853 (n + 1) * A083074 (n + 1)) (n + 1 : ℤ)

end

end A118965.P12620826380631223715

/-! ## A118965.P17637062483821179554

`-A066853(n+1)%A287803(n+2)+n+1`
-/

namespace A118965.P17637062483821179554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A066853 (n + 1)) (A287803 (n + 2)) + (n + 1 : ℤ)

end

end A118965.P17637062483821179554

/-! ## A118965.P15810592293163128431

`A025581(A066853(n+1)+∑[n+1])`
-/

namespace A118965.P15810592293163128431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A066853 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A118965.P15810592293163128431

/-! ## A118965.P9097544137253459137

`n+1-Δ[eq[0, A189768(n+1)]]`
-/

namespace A118965.P9097544137253459137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189768 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A118965.P9097544137253459137

/-!
# A118966: a(n) = (n+1)/2 if n occurs among the first n-1 terms of the sequence, otherwise a(n) = 2*n - 1.

The programs for A118966, there is no canonical definition to state claims against.
-/

/-! ## A118966.P13689918316310993819

`A073675(n)+a(floor(sin(n)²))` with `a(0)=1`
-/

namespace A118966.P13689918316310993819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073675 n + a ⌊Real.sin (n : ℝ) ^ 2⌋.toNat

end

end A118966.P13689918316310993819

/-! ## A118966.P4885224766962253093

`A073675(abs(1-n)+1)+ceil(sin(n)²)`
-/

namespace A118966.P4885224766962253093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (|1 - (n : ℤ)| + 1).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A118966.P4885224766962253093

/-! ## A118966.P9404723554645066889

`n/2*(A285383(n+1)+1)²+1`
-/

namespace A118966.P9404723554645066889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((A285383 (n + 1) + 1) ^ 2 : ℚ) + 1

end

end A118966.P9404723554645066889

/-! ## A118966.P16628889338786704088

`A059897(∑[char[1]+n]+1)-(C(2, n+2)-1)`
-/

namespace A118966.P16628889338786704088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - ((Nat.choose 2 (n + 2) : ℤ) - 1)

end

end A118966.P16628889338786704088

/-! ## A118966.P14612954958490550179

`A033431(n)%A026491(n)+1`
-/

namespace A118966.P14612954958490550179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033431 n) (A026491 n) + 1

end

end A118966.P14612954958490550179

/-! ## A118966.P7801578060574624481

`Δ[n²]%A073675(A008486(n))`
-/

namespace A118966.P7801578060574624481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A073675 (A008486 n).toNat)

end

end A118966.P7801578060574624481

/-! ## A118966.P13566893928038963716

`n*A010685(A093051(n))/2+1`
-/

namespace A118966.P13566893928038963716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A010685 (A093051 n).toNat : ℚ) / 2 + 1

end

end A118966.P13566893928038963716

/-! ## A118966.P6406034807207138255

`A073675(n)+a(A028310(n)-n)` with `a(0)=1`
-/

namespace A118966.P6406034807207138255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073675 n + a (A028310 n - (n : ℤ)).toNat

end

end A118966.P6406034807207138255

/-! ## A118966.P2600374746430151986

`A059897(∑[char[1]+n]+1)+A057427(n)`
-/

namespace A118966.P2600374746430151986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A057427 n

end

end A118966.P2600374746430151986

/-! ## A118966.P10988786249272381792

`2*n+1-A006368(n)*A328979(n+1)`
-/

namespace A118966.P10988786249272381792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A006368 n * A328979 (n + 1)

end

end A118966.P10988786249272381792

/-!
# A118967: If n doesn't occur among the first (n-1) terms of the sequence, then a(n) = 2n. If n occurs among the first (n-1) terms of the sequence, then a(n) = n/2.

The programs for A118967, there is no canonical definition to state claims against.
-/

/-! ## A118967.P14752400386015278418

`gcd(A214682(n+1)-A153152(n), 2*(n+1))`
-/

namespace A118967.P14752400386015278418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214682 (n + 1) - A153152 n) (2 * (n + 1) : ℤ)

end

end A118967.P14752400386015278418

/-! ## A118967.P5064552711381252668

`A103517(n)/A040005(A091090(n))`
-/

namespace A118967.P5064552711381252668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A040005 (A091090 n).toNat : ℚ)

end

end A118967.P5064552711381252668

/-! ## A118967.P14117544751332156678

`A103517(n)/A055491(A135517(n))`
-/

namespace A118967.P14117544751332156678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A055491 (A135517 n).toNat : ℚ)

end

end A118967.P14117544751332156678

/-! ## A118967.P14491998181844164999

`A103517(n)/A167430(A276390(n))`
-/

namespace A118967.P14491998181844164999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A167430 (A276390 n).toNat : ℚ)

end

end A118967.P14491998181844164999

/-! ## A118967.P5019857776314526091

`A103517(n)/A010228(A060013(n+1))`
-/

namespace A118967.P5019857776314526091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A010228 (A060013 (n + 1)).toNat : ℚ)

end

end A118967.P5019857776314526091

/-!
# A118968: a(4n+k) = (k+1)*binomial(5n+k,n)/(4n+k+1), k=0..3.

The programs for A118968, there is no canonical definition to state claims against.
-/

/-! ## A118968.P11656820439825977118

`∏{e}[Δ[floor(3^(n-1))], A121432(#)]`
-/

namespace A118968.P11656820439825977118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A121432 (Nat.factorization (f1 n).natAbs p)

end

end A118968.P11656820439825977118

/-! ## A118968.P14223369121497413497

`A106744(A121433(n+1))`
-/

namespace A118968.P14223369121497413497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A121433 (n + 1)).toNat

end

end A118968.P14223369121497413497

/-! ## A118968.P3766084945239817716

`A121432(A004874(n+1)-ceil(sin(n)²))`
-/

namespace A118968.P3766084945239817716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121432 (A004874 (n + 1) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A118968.P3766084945239817716

/-! ## A118968.P673229905962158120

`A121432(A004874(n+1)-char[A121412(n)])`
-/

namespace A118968.P673229905962158120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121412 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121432 (A004874 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A118968.P673229905962158120

/-! ## A118968.P10481218220932579545

`A121432(A034886(n+2)*A325825(3*n+2))`
-/

namespace A118968.P10481218220932579545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121432 (A034886 (n + 2) * A325825 (3 * n + 2)).toNat

end

end A118968.P10481218220932579545

/-!
# A118969: a(n) = 2*binomial(5*n+1,n)/(4*n+2).

The programs for A118969, there is no canonical definition to state claims against.
-/

/-! ## A118969.P13521305023024329940

`A118968(3*n+n+1)`
-/

namespace A118969.P13521305023024329940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118968 (3 * n + (n + 1))

end

end A118969.P13521305023024329940

/-! ## A118969.P18210389153930520652

`A016861(n)/3*A197272(n)`
-/

namespace A118969.P18210389153930520652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016861 n : ℚ) / 3 * (A197272 n : ℚ)

end

end A118969.P18210389153930520652

/-! ## A118969.P9956698290308623743

`(5*n+1)*A002294(n)/A005408(n)`
-/

namespace A118969.P9956698290308623743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℚ) * ((A002294 n : ℚ) / (A005408 n : ℚ))

end

end A118969.P9956698290308623743

/-! ## A118969.P3970208754936911014

`A002294(n)/A005408(n)*A016861(n)`
-/

namespace A118969.P3970208754936911014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002294 n : ℚ) / (A005408 n : ℚ) * (A016861 n : ℚ)

end

end A118969.P3970208754936911014

/-! ## A118969.P10725222441614469111

`A079589(n)/Δ[n²]`
-/

namespace A118969.P10725222441614469111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079589 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A118969.P10725222441614469111

/-! ## A118969.P7958257733916997902

`A102428(2*n)/(2*n+1)`
-/

namespace A118969.P7958257733916997902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102428 (2 * n) : ℚ) / (2 * n + 1 : ℚ)

end

end A118969.P7958257733916997902

/-! ## A118969.P12775140392727128525

`floor(A079589(n)/A005408(n))`
-/

namespace A118969.P12775140392727128525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079589 n : ℚ) / (A005408 n : ℚ)⌋

end

end A118969.P12775140392727128525

/-! ## A118969.P7007149978918384349

`C(5*n+1, n)/(2*n+1)`
-/

namespace A118969.P7007149978918384349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n + 1) n : ℚ) / (2 * n + 1 : ℚ)

end

end A118969.P7007149978918384349

/-!
# A118970: a(n) = 3*binomial(5n+2,n)/(4n+3).

The programs for A118970, there is no canonical definition to state claims against.
-/

/-! ## A118970.P666462680905673164

`A143546(Δ[n²])`
-/

namespace A118970.P666462680905673164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143546 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A118970.P666462680905673164

/-! ## A118970.P225889967793379430

`record[A143546(xor(1, n))]`
-/

namespace A118970.P225889967793379430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143546 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118970.P225889967793379430

/-! ## A118970.P15500716513392862657

`A118968(4*n+2)`
-/

namespace A118970.P15500716513392862657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118968 (4 * n + 2)

end

end A118970.P15500716513392862657

/-! ## A118970.P2849594888228406935

`record[A143546(gcd(n, ∑[n]))]`
-/

namespace A118970.P2849594888228406935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143546 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118970.P2849594888228406935

/-! ## A118970.P978289640347491870

`record[A143546(lcm(8, n)/8)]`
-/

namespace A118970.P978289640347491870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143546 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118970.P978289640347491870

/-!
# A118971: a(n) = binomial(5*n+3,n)/(n+1).

The programs for A118971, there is no canonical definition to state claims against.
-/

/-! ## A118971.P8624315877487233667

`A370061(Δ[n²])`
-/

namespace A118971.P8624315877487233667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370061 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A118971.P8624315877487233667

/-! ## A118971.P6590958305406122174

`A337292(n+1)/5`
-/

namespace A118971.P6590958305406122174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337292 (n + 1) : ℚ) / 5

end

end A118971.P6590958305406122174

/-! ## A118971.P9515055276259024059

`∑{d}[n+1, A380553(#)]`
-/

namespace A118971.P9515055276259024059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A380553 d

end

end A118971.P9515055276259024059

/-! ## A118971.P2765151142528570389

`A118968(3*(n+1)+n)`
-/

namespace A118971.P2765151142528570389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118968 (3 * (n + 1) + n)

end

end A118971.P2765151142528570389

/-! ## A118971.P4327522097673786777

`A394565(n)/(n+1)`
-/

namespace A118971.P4327522097673786777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394565 n : ℚ) / (n + 1 : ℚ)

end

end A118971.P4327522097673786777

/-! ## A118971.P391284186852629958

`C(5*n+3, n)/(n+1)`
-/

namespace A118971.P391284186852629958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n + 3) n : ℚ) / (n + 1 : ℚ)

end

end A118971.P391284186852629958

/-! ## A118971.P1861674795870912785

`round(C(A016873(n)+1, n)/(n+1))`
-/

namespace A118971.P1861674795870912785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (A016873 n + 1).toNat n : ℚ) / (n + 1 : ℚ))

end

end A118971.P1861674795870912785

/-! ## A118971.P14954249913862059959

`A329060(∑[n])`
-/

namespace A118971.P14954249913862059959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329060 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118971.P14954249913862059959

/-!
# A118972: Triangle read by rows: T(n,k) is the number of hill-free Dyck paths of semilength n and having length of first descent equal to k (1<=k<=n; n>=1). A hill in a Dyck path is a peak at level 1.

The programs for A118972, there is no canonical definition to state claims against.
-/

/-! ## A118972.P2091370621775941092

`A125186(A128722(n))%(n+1)`
-/

namespace A118972.P2091370621775941092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125186 (A128722 n).toNat) (n + 1 : ℤ)

end

end A118972.P2091370621775941092

/-! ## A118972.P11414813197200336531

`A125186(A128722(n)%(2^n))`
-/

namespace A118972.P11414813197200336531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125186 (Int.tmod (A128722 n) (2 ^ n : ℤ)).toNat

end

end A118972.P11414813197200336531

/-! ## A118972.P5972551605031597869

`A125186(A128722(A000007(n)+n))`
-/

namespace A118972.P5972551605031597869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125186 (A128722 (A000007 n + (n : ℤ)).toNat).toNat

end

end A118972.P5972551605031597869

/-! ## A118972.P4671227139020036872

`A125186(A128722(n)-A000007(n))`
-/

namespace A118972.P4671227139020036872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125186 (A128722 n - A000007 n).toNat

end

end A118972.P4671227139020036872

/-!
# A118973: Number of hill-free Dyck paths of semilength n+2 and having length of first descent equal to 2 (a hill in a Dyck path is a peak at level 1).

The programs for A118973, the canonical program `A118973.P16395577257869652124` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118973 has offset 0).

The definition of A118973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118973.P15237440707306952298

`Δ[Δ[A193215(n)]]`
-/

namespace A118973.P15237440707306952298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118973.P15237440707306952298

namespace A118973

/-- `Δ[Δ[A193215(n)]]` -/
def P15237440707306952298.Spec : Prop :=
  ∀ n, P15237440707306952298.a n = A118973 n

end A118973

/-! ## A118973.P15691633432888290598

`Δ[abs(Δ[A064310(n)])]`
-/

namespace A118973.P15691633432888290598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118973.P15691633432888290598

namespace A118973

/-- `Δ[abs(Δ[A064310(n)])]` -/
def P15691633432888290598.Spec : Prop :=
  ∀ n, P15691633432888290598.a n = A118973 n

end A118973

/-! ## A118973.P15388504713706202105

`A126983(n)+record[A000957(n)]`
-/

namespace A118973.P15388504713706202105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126983 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118973.P15388504713706202105

namespace A118973

/-- `A126983(n)+record[A000957(n)]` -/
def P15388504713706202105.Spec : Prop :=
  ∀ n, P15388504713706202105.a n = A118973 n

end A118973

/-! ## A118973.P16875436072089603223

`A126983(n)+A000957(n+2)`
-/

namespace A118973.P16875436072089603223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126983 n + A000957 (n + 2)

end

end A118973.P16875436072089603223

namespace A118973

/-- `A126983(n)+A000957(n+2)` -/
def P16875436072089603223.Spec : Prop :=
  ∀ n, P16875436072089603223.a n = A118973 n

end A118973

/-! ## A118973.P11981678203051960648

`A126983(n)-A126983(n+2)`
-/

namespace A118973.P11981678203051960648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126983 n - A126983 (n + 2)

end

end A118973.P11981678203051960648

namespace A118973

/-- `A126983(n)-A126983(n+2)` -/
def P11981678203051960648.Spec : Prop :=
  ∀ n, P11981678203051960648.a n = A118973 n

end A118973

/-! ## A118973.P15955571825597803174

`Δ[A126983(n+1)+A120304(n)]`
-/

namespace A118973.P15955571825597803174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126983 (n + 1) + A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118973.P15955571825597803174

namespace A118973

/-- `Δ[A126983(n+1)+A120304(n)]` -/
def P15955571825597803174.Spec : Prop :=
  ∀ n, P15955571825597803174.a n = A118973 n

end A118973

/-! ## A118973.P14722324769168114654

`Δ[(A120304(n)-A126983(n))/2]`
-/

namespace A118973.P14722324769168114654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120304 n - A126983 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118973.P14722324769168114654

namespace A118973

/-- `Δ[(A120304(n)-A126983(n))/2]` -/
def P14722324769168114654.Spec : Prop :=
  ∀ n, P14722324769168114654.a n = (A118973 n : ℚ)

end A118973

/-! ## A118973.P16985840989553733460

`Δ[A126983(n+1)+A120588(n+1)]`
-/

namespace A118973.P16985840989553733460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126983 (n + 1) + A120588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118973.P16985840989553733460

namespace A118973

/-- `Δ[A126983(n+1)+A120588(n+1)]` -/
def P16985840989553733460.Spec : Prop :=
  ∀ n, P16985840989553733460.a n = A118973 n

end A118973

/-! ## A118973.P16395577257869652124

`A000957(n+1)+A000958(n+1)-A000108(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A118973

/-- `A000957(n+1)+A000958(n+1)-A000108(n)` -/
def P16395577257869652124.Spec : Prop :=
  ∀ n, P16395577257869652124.a n = A118973 n

theorem P16395577257869652124.correct : P16395577257869652124.Spec := by
  intro n
  simp only [A118973]

end A118973

/-! ## A118973.P17236900109725166020

`A000958(n+1)+A193215(n)-A193215(n+1)`
-/

namespace A118973.P17236900109725166020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000958 (n + 1) + (A193215 n - A193215 (n + 1))

end

end A118973.P17236900109725166020

namespace A118973

/-- `A000958(n+1)+A193215(n)-A193215(n+1)` -/
def P17236900109725166020.Spec : Prop :=
  ∀ n, P17236900109725166020.a n = A118973 n

end A118973

/-! ## A118973.P5799851861341589873

`A000957(n+1)+A289589(n+1)-A289589(n)`
-/

namespace A118973.P5799851861341589873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 1) + (A289589 (n + 1) - A289589 n)

end

end A118973.P5799851861341589873

namespace A118973

/-- `A000957(n+1)+A289589(n+1)-A289589(n)` -/
def P5799851861341589873.Spec : Prop :=
  ∀ n, P5799851861341589873.a n = A118973 n

end A118973

/-! ## A118973.P5478903335115236697

`A000958(n+1)+A000958(n+1)-A135339(n+1)`
-/

namespace A118973.P5478903335115236697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000958 (n + 1) + (A000958 (n + 1) - A135339 (n + 1))

end

end A118973.P5478903335115236697

namespace A118973

/-- `A000958(n+1)+A000958(n+1)-A135339(n+1)` -/
def P5478903335115236697.Spec : Prop :=
  ∀ n, P5478903335115236697.a n = A118973 n

end A118973

/-! ## A118973.P3947823094998547508

`Δ[A167772(∑[n]+1)]`
-/

namespace A118973.P3947823094998547508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167772 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118973.P3947823094998547508

namespace A118973

/-- `Δ[A167772(∑[n]+1)]` -/
def P3947823094998547508.Spec : Prop :=
  ∀ n, P3947823094998547508.a n = A118973 n

end A118973

/-! ## A118973.P17496380330557538100

`A167772(A000124(n+1))-A167772(A000124(n))`
-/

namespace A118973.P17496380330557538100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167772 (A000124 (n + 1)).toNat - A167772 (A000124 n).toNat

end

end A118973.P17496380330557538100

namespace A118973

/-- `A167772(A000124(n+1))-A167772(A000124(n))` -/
def P17496380330557538100.Spec : Prop :=
  ∀ n, P17496380330557538100.a n = A118973 n

end A118973

/-!
# A118974: Sum of the lengths of the first descents in all hill-free Dyck paths of semilength n (a hill in a Dyck path is a peak at level 1).

The programs for A118974, the canonical program `A118974.P8447123743662257129` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118974 has offset 0).

The definition of A118974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118974.P17460947415089569953

`A193215(n+1)-(A000957(n)+1)`
-/

namespace A118974.P17460947415089569953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193215 (n + 1) - (A000957 n + 1)

end

end A118974.P17460947415089569953

namespace A118974

/-- `A193215(n+1)-(A000957(n)+1)` -/
def P17460947415089569953.Spec : Prop :=
  ∀ n, P17460947415089569953.a n = A118974 n

end A118974

/-! ## A118974.P8447123743662257129

`∑[A000108(n)-A000957(n+1)]-A000957(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A118974

/-- `∑[A000108(n)-A000957(n+1)]-A000957(n)` -/
def P8447123743662257129.Spec : Prop :=
  ∀ n, P8447123743662257129.a n = A118974 n

theorem P8447123743662257129.correct : P8447123743662257129.Spec := by
  intro n
  simp only [A118974]

end A118974

/-! ## A118974.P4342677775078545930

`A000108(n+1)-(A289448(n+1)+A000957(n))`
-/

namespace A118974.P4342677775078545930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - (A289448 (n + 1) + A000957 n)

end

end A118974.P4342677775078545930

namespace A118974

/-- `A000108(n+1)-(A289448(n+1)+A000957(n))` -/
def P4342677775078545930.Spec : Prop :=
  ∀ n, P4342677775078545930.a n = A118974 n

end A118974

/-! ## A118974.P7991137326235837358

`A135336(n+1)-(A289589(n+1)+A000957(n))`
-/

namespace A118974.P7991137326235837358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135336 (n + 1) - (A289589 (n + 1) + A000957 n)

end

end A118974.P7991137326235837358

namespace A118974

/-- `A135336(n+1)-(A289589(n+1)+A000957(n))` -/
def P7991137326235837358.Spec : Prop :=
  ∀ n, P7991137326235837358.a n = A118974 n

end A118974

/-! ## A118974.P12279886603922830921

`∑[A000958(n+1)]-(A000958(n+1)+A000957(n))`
-/

namespace A118974.P12279886603922830921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A000958 (n + 1) + A000957 n)

end

end A118974.P12279886603922830921

namespace A118974

/-- `∑[A000958(n+1)]-(A000958(n+1)+A000957(n))` -/
def P12279886603922830921.Spec : Prop :=
  ∀ n, P12279886603922830921.a n = A118974 n

end A118974

/-! ## A118974.P12463285432636736457

`∑[A000984(n)]-(A014300(n+1)+A000957(n))`
-/

namespace A118974.P12463285432636736457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A014300 (n + 1) + A000957 n)

end

end A118974.P12463285432636736457

namespace A118974

/-- `∑[A000984(n)]-(A014300(n+1)+A000957(n))` -/
def P12463285432636736457.Spec : Prop :=
  ∀ n, P12463285432636736457.a n = A118974 n

end A118974

/-! ## A118974.P12674129865802135782

`∑[A167772(∑[n]+1)]-A000957(n)`
-/

namespace A118974.P12674129865802135782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167772 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000957 n

end

end A118974.P12674129865802135782

namespace A118974

/-- `∑[A167772(∑[n]+1)]-A000957(n)` -/
def P12674129865802135782.Spec : Prop :=
  ∀ n, P12674129865802135782.a n = A118974 n

end A118974

/-!
# A118975: Triangular array: row n consists of M times n-th-order Farey fractions, where M is the LCM of their denominators.

The programs for A118975, there is no canonical definition to state claims against.
-/

/-! ## A118975.P888959269984795742

`A093594(A161953(n+1))/A263673(A000194(n))`
-/

namespace A118975.P888959269984795742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093594 (A161953 (n + 1)).toNat : ℚ) / (A263673 (A000194 n).toNat : ℚ)

end

end A118975.P888959269984795742

/-!
# A118976: Triangle read by rows: T(n,k) = binomial(n-1,k-1)*binomial(n,k-1)/k + binomial(n-1,k)*binomial(n,k)/(k+1) (1 <= k <= n). In other words, to each entry of the Narayana triangle (A001263) add the entry on its right.

The programs for A118976, the canonical program `A118976.P8420611041753619682` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118976 has offset 1).

The definition of A118976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118976.P8420611041753619682

`A001263(n+1)+A001263(n+2)-A010054(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A118976

/-- `A001263(n+1)+A001263(n+2)-A010054(n+1)` -/
def P8420611041753619682.Spec : Prop :=
  ∀ n, P8420611041753619682.a n = A118976 (n + 1)

theorem P8420611041753619682.correct : P8420611041753619682.Spec := by
  intro n
  simp only [A118976, Nat.add_sub_cancel]

end A118976

/-! ## A118976.P815183943257372699

`A001263(n+1)+A133200(n+2)-A001263(n+2)`
-/

namespace A118976.P815183943257372699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A133200 (n + 2) - A001263 (n + 2))

end

end A118976.P815183943257372699

namespace A118976

/-- `A001263(n+1)+A133200(n+2)-A001263(n+2)` -/
def P815183943257372699.Spec : Prop :=
  ∀ n, P815183943257372699.a n = A118976 (n + 1)

end A118976

/-! ## A118976.P2224577738297108947

`(A001263(n+1)+A001263(n+2))/A035214(n+1)`
-/

namespace A118976.P2224577738297108947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) + A001263 (n + 2) : ℚ) / (A035214 (n + 1) : ℚ)

end

end A118976.P2224577738297108947

namespace A118976

/-- `(A001263(n+1)+A001263(n+2))/A035214(n+1)` -/
def P2224577738297108947.Spec : Prop :=
  ∀ n, P2224577738297108947.a n = (A118976 (n + 1) : ℚ)

end A118976

/-! ## A118976.P14358239906552405137

`A131198(A014132(n+1))+A001263(n+1)`
-/

namespace A118976.P14358239906552405137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131198 (A014132 (n + 1)).toNat + A001263 (n + 1)

end

end A118976.P14358239906552405137

namespace A118976

/-- `A131198(A014132(n+1))+A001263(n+1)` -/
def P14358239906552405137.Spec : Prop :=
  ∀ n, P14358239906552405137.a n = A118976 (n + 1)

end A118976

/-! ## A118976.P14101266518825328743

`A131198(A007401(n+1))+A131198(A014132(n+1))`
-/

namespace A118976.P14101266518825328743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131198 (A007401 (n + 1)).toNat + A131198 (A014132 (n + 1)).toNat

end

end A118976.P14101266518825328743

namespace A118976

/-- `A131198(A007401(n+1))+A131198(A014132(n+1))` -/
def P14101266518825328743.Spec : Prop :=
  ∀ n, P14101266518825328743.a n = A118976 (n + 1)

end A118976

/-! ## A118976.P4840281460119535482

`A352687(A014132(A014132(n+2)))`
-/

namespace A118976.P4840281460119535482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352687 (A014132 (A014132 (n + 2)).toNat).toNat

end

end A118976.P4840281460119535482

namespace A118976

/-- `A352687(A014132(A014132(n+2)))` -/
def P4840281460119535482.Spec : Prop :=
  ∀ n, P4840281460119535482.a n = A118976 (n + 1)

end A118976

/-! ## A118976.P15179072504511444498

`A001263(n+1)+A001263(n+2)%A063007(n+1)`
-/

namespace A118976.P15179072504511444498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + Int.tmod (A001263 (n + 2)) (A063007 (n + 1))

end

end A118976.P15179072504511444498

namespace A118976

/-- `A001263(n+1)+A001263(n+2)%A063007(n+1)` -/
def P15179072504511444498.Spec : Prop :=
  ∀ n, P15179072504511444498.a n = A118976 (n + 1)

end A118976

/-! ## A118976.P1812593465942411660

`A104711(n+1)+A001263(n+2)-A162717(n+1)`
-/

namespace A118976.P1812593465942411660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104711 (n + 1) + (A001263 (n + 2) - A162717 (n + 1))

end

end A118976.P1812593465942411660

namespace A118976

/-- `A104711(n+1)+A001263(n+2)-A162717(n+1)` -/
def P1812593465942411660.Spec : Prop :=
  ∀ n, P1812593465942411660.a n = A118976 (n + 1)

end A118976

/-!
# A118977: a(0)=0, a(1)=1; a(2^i+j) = a(j) + a(j+1) for 0 <= j < 2^i.

The programs for A118977, there is no canonical definition to state claims against.
-/

/-! ## A118977.P1477051260225771125

`Δ[A163267(floor(n-n/(n+1)))]`
-/

namespace A118977.P1477051260225771125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163267 ⌊(n : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118977.P1477051260225771125

/-! ## A118977.P1143542332479916740

`A151571(n)-A151570(n)`
-/

namespace A118977.P1143542332479916740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 n - A151570 n

end

end A118977.P1143542332479916740

/-! ## A118977.P4446576768735001579

`A151570(n)-A151702(n)`
-/

namespace A118977.P4446576768735001579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 n - A151702 n

end

end A118977.P4446576768735001579

/-! ## A118977.P9341723061613976981

`A151845(n)-A151843(n)`
-/

namespace A118977.P9341723061613976981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151845 n - A151843 n

end

end A118977.P9341723061613976981

/-! ## A118977.P16399965704884251669

`A151849(n)-A151847(n)`
-/

namespace A118977.P16399965704884251669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151849 n - A151847 n

end

end A118977.P16399965704884251669

/-! ## A118977.P10915468527584953998

`(A151571(n)-A151702(n))/2`
-/

namespace A118977.P10915468527584953998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151571 n - A151702 n : ℚ) / 2

end

end A118977.P10915468527584953998

/-! ## A118977.P699930007043579097

`A151847(n+1)-Δ[A151843(n)]`
-/

namespace A118977.P699930007043579097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 (n + 1) - (f1 (n + 1) - f1 n)

end

end A118977.P699930007043579097

/-! ## A118977.P11722095525354374427

`A151843(n)+A151846(n)-A151848(n)`
-/

namespace A118977.P11722095525354374427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n + (A151846 n - A151848 n)

end

end A118977.P11722095525354374427

/-! ## A118977.P2789775687493499419

`A151847(n+1)+A151843(n)-A151843(n+1)`
-/

namespace A118977.P2789775687493499419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 (n + 1) + (A151843 n - A151843 (n + 1))

end

end A118977.P2789775687493499419

/-! ## A118977.P1366290349658474649

`A151847(n)+Δ[A151702(n)]`
-/

namespace A118977.P1366290349658474649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 n + (f1 (n + 1) - f1 n)

end

end A118977.P1366290349658474649

/-! ## A118977.P12065367393525551608

`A151843(n)+A151702(n+1)`
-/

namespace A118977.P12065367393525551608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n + A151702 (n + 1)

end

end A118977.P12065367393525551608

/-! ## A118977.P11308236641724710620

`Δ[∑[A151847(n)]-A151843(n)]`
-/

namespace A118977.P11308236641724710620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A151843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118977.P11308236641724710620

/-! ## A118977.P9120930071954814908

`A163267(n)-A163267(A289207(n+1))`
-/

namespace A118977.P9120930071954814908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163267 n - A163267 (A289207 (n + 1)).toNat

end

end A118977.P9120930071954814908

/-!
# A118978: Array read by antidiagonals: the n-th row contains the binomial transform of row n-1 of A014410.

The programs for A118978, there is no canonical definition to state claims against.
-/

/-! ## A118978.P2233406665398694043

`A135278(n)+A104730(n+1)`
-/

namespace A118978.P2233406665398694043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + A104730 (n + 1)

end

end A118978.P2233406665398694043

/-! ## A118978.P2294252643764920751

`A104730(n+1)+A074909(n+1)`
-/

namespace A118978.P2294252643764920751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104730 (n + 1) + A074909 (n + 1)

end

end A118978.P2294252643764920751

/-! ## A118978.P11179978193662052499

`A014430(n)+1-A026729(A007401(n+1))`
-/

namespace A118978.P11179978193662052499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n + (1 - A026729 (A007401 (n + 1)).toNat)

end

end A118978.P11179978193662052499

/-! ## A118978.P15947055059141302730

`A014410(n+2)-A026729(A007401(n+1))`
-/

namespace A118978.P15947055059141302730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) - A026729 (A007401 (n + 1)).toNat

end

end A118978.P15947055059141302730

/-! ## A118978.P12968868533274135599

`A028327(n)/2-A026729(A007401(n+1))`
-/

namespace A118978.P12968868533274135599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028327 n : ℚ) / 2 - (A026729 (A007401 (n + 1)).toNat : ℚ)

end

end A118978.P12968868533274135599

/-! ## A118978.P2165588853373218950

`sqrt(A014719(n+2))-A026729(A007401(n+1))`
-/

namespace A118978.P2165588853373218950
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014719 (n + 2) : ℝ) - (A026729 (A007401 (n + 1)).toNat : ℝ)

end

end A118978.P2165588853373218950

/-! ## A118978.P2645298513775807639

`A074909(A014132(n+1))-A026729(A007401(n+1))`
-/

namespace A118978.P2645298513775807639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A014132 (n + 1)).toNat - A026729 (A007401 (n + 1)).toNat

end

end A118978.P2645298513775807639

/-! ## A118978.P6418819569076478577

`A028263(n)-(A026729(A007401(n+1))+A007318(n))`
-/

namespace A118978.P6418819569076478577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n - (A026729 (A007401 (n + 1)).toNat + A007318 n)

end

end A118978.P6418819569076478577

/-! ## A118978.P5895777780046248623

`A028326(n)+A051601(n)-A026729(A007401(n+1))`
-/

namespace A118978.P5895777780046248623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + (A051601 n - A026729 (A007401 (n + 1)).toNat)

end

end A118978.P5895777780046248623

/-!
# A118979: O.g.f: -12*x^3/(-1+x)/(-1+2*x)/(-1+3*x) = -2-2/(-1+3*x)-6/(-1+x)+6/(-1+2*x) .

The programs for A118979, the canonical program `A118979.P13376887017728520375` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118979 has offset 3).

The definition of A118979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118979.P13376887017728520375

`6*(1-2^(n+3))+2*3^(n+3)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A118979

/-- `6*(1-2^(n+3))+2*3^(n+3)` -/
def P13376887017728520375.Spec : Prop :=
  ∀ n, P13376887017728520375.a n = A118979 (n + 3)

theorem P13376887017728520375.correct : P13376887017728520375.Spec := by
  intro n
  simp only [A118979, Nat.add_sub_cancel]

end A118979

/-! ## A118979.P3878715879865254233

`12*A000392(n+3)`
-/

namespace A118979.P3878715879865254233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000392 (n + 3)

end

end A118979.P3878715879865254233

namespace A118979

/-- `12*A000392(n+3)` -/
def P3878715879865254233.Spec : Prop :=
  ∀ n, P3878715879865254233.a n = A118979 (n + 3)

end A118979

/-! ## A118979.P107802527122669751

`2*A001117(n+3)`
-/

namespace A118979.P107802527122669751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001117 (n + 3)

end

end A118979.P107802527122669751

namespace A118979

/-- `2*A001117(n+3)` -/
def P107802527122669751.Spec : Prop :=
  ∀ n, P107802527122669751.a n = A118979 (n + 3)

end A118979

/-! ## A118979.P18339835484023426831

`2*A179483(n+3)`
-/

namespace A118979.P18339835484023426831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179483 (n + 3)

end

end A118979.P18339835484023426831

namespace A118979

/-- `2*A179483(n+3)` -/
def P18339835484023426831.Spec : Prop :=
  ∀ n, P18339835484023426831.a n = A118979 (n + 3)

end A118979

/-! ## A118979.P15920610646594627672

`3*A260217(n+3)`
-/

namespace A118979.P15920610646594627672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A260217 (n + 3)

end

end A118979.P15920610646594627672

namespace A118979

/-- `3*A260217(n+3)` -/
def P15920610646594627672.Spec : Prop :=
  ∀ n, P15920610646594627672.a n = A118979 (n + 3)

end A118979

/-! ## A118979.P14683028970747237845

`4*A094033(n+3)`
-/

namespace A118979.P14683028970747237845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A094033 (n + 3)

end

end A118979.P14683028970747237845

namespace A118979

/-- `4*A094033(n+3)` -/
def P14683028970747237845.Spec : Prop :=
  ∀ n, P14683028970747237845.a n = A118979 (n + 3)

end A118979

/-! ## A118979.P12411160523750381354

`6*A028243(n+3)`
-/

namespace A118979.P12411160523750381354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A028243 (n + 3)

end

end A118979.P12411160523750381354

namespace A118979

/-- `6*A028243(n+3)` -/
def P12411160523750381354.Spec : Prop :=
  ∀ n, P12411160523750381354.a n = A118979 (n + 3)

end A118979

/-! ## A118979.P3309770668079167370

`∑[∑[12*A027649(n)]]`
-/

namespace A118979.P3309770668079167370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A027649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118979.P3309770668079167370

namespace A118979

/-- `∑[∑[12*A027649(n)]]` -/
def P3309770668079167370.Spec : Prop :=
  ∀ n, P3309770668079167370.a n = A118979 (n + 3)

end A118979

/-! ## A118979.P15495499749653099904

`∑[3*A145563(n+1)]`
-/

namespace A118979.P15495499749653099904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A145563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118979.P15495499749653099904

namespace A118979

/-- `∑[3*A145563(n+1)]` -/
def P15495499749653099904.Spec : Prop :=
  ∀ n, P15495499749653099904.a n = A118979 (n + 3)

end A118979

/-! ## A118979.P1965695003326956481

`∑[2*A245804(n+2)]`
-/

namespace A118979.P1965695003326956481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245804 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118979.P1965695003326956481

namespace A118979

/-- `∑[2*A245804(n+2)]` -/
def P1965695003326956481.Spec : Prop :=
  ∀ n, P1965695003326956481.a n = A118979 (n + 3)

end A118979

/-! ## A118979.P11513241090955554315

`∑[4*A210448(n+1)]`
-/

namespace A118979.P11513241090955554315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A210448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118979.P11513241090955554315

namespace A118979

/-- `∑[4*A210448(n+1)]` -/
def P11513241090955554315.Spec : Prop :=
  ∀ n, P11513241090955554315.a n = A118979 (n + 3)

end A118979

/-! ## A118979.P8730823916592875669

`∑[12*A001047(n+1)]`
-/

namespace A118979.P8730823916592875669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118979.P8730823916592875669

namespace A118979

/-- `∑[12*A001047(n+1)]` -/
def P8730823916592875669.Spec : Prop :=
  ∀ n, P8730823916592875669.a n = A118979 (n + 3)

end A118979

/-! ## A118979.P10497121120305045072

`∑[abs(Δ[A006230(n+4)])]`
-/

namespace A118979.P10497121120305045072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006230 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118979.P10497121120305045072

namespace A118979

/-- `∑[abs(Δ[A006230(n+4)])]` -/
def P10497121120305045072.Spec : Prop :=
  ∀ n, P10497121120305045072.a n = A118979 (n + 3)

end A118979

/-! ## A118979.P10967822704137900505

`3*(A255459(n+1)-1)`
-/

namespace A118979.P10967822704137900505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A255459 (n + 1) - 1)

end

end A118979.P10967822704137900505

namespace A118979

/-- `3*(A255459(n+1)-1)` -/
def P10967822704137900505.Spec : Prop :=
  ∀ n, P10967822704137900505.a n = A118979 (n + 3)

end A118979

/-! ## A118979.P12565573090969154702

`2*(A094729(n+3)-1)`
-/

namespace A118979.P12565573090969154702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A094729 (n + 3) - 1)

end

end A118979.P12565573090969154702

namespace A118979

/-- `2*(A094729(n+3)-1)` -/
def P12565573090969154702.Spec : Prop :=
  ∀ n, P12565573090969154702.a n = A118979 (n + 3)

end A118979

/-! ## A118979.P719748039327413353

`2*A056454(2*(n+3))`
-/

namespace A118979.P719748039327413353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056454 (2 * (n + 3))

end

end A118979.P719748039327413353

namespace A118979

/-- `2*A056454(2*(n+3))` -/
def P719748039327413353.Spec : Prop :=
  ∀ n, P719748039327413353.a n = A118979 (n + 3)

end A118979

/-! ## A118979.P17290438123944344762

`2*(A245023(n+3)-3)`
-/

namespace A118979.P17290438123944344762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A245023 (n + 3) - 3)

end

end A118979.P17290438123944344762

namespace A118979

/-- `2*(A245023(n+3)-3)` -/
def P17290438123944344762.Spec : Prop :=
  ∀ n, P17290438123944344762.a n = A118979 (n + 3)

end A118979

/-!
# A118981: Triangle read by rows: T(n,k) = abs( A104509(n-1,n-k) ).

The programs for A118981, there is no canonical definition to state claims against.
-/

/-! ## A118981.P17189063831470647586

`abs(A104509(A061579(n)))`
-/

namespace A118981.P17189063831470647586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104509 (A061579 n).toNat|

end

end A118981.P17189063831470647586

/-! ## A118981.P11012680565034385541

`2*A038137(n)-A193736(n)`
-/

namespace A118981.P11012680565034385541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038137 n - A193736 n

end

end A118981.P11012680565034385541

/-! ## A118981.P13757138905573780552

`abs(A104509(A038722(n+1)-1))`
-/

namespace A118981.P13757138905573780552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104509 (A038722 (n + 1) - 1).toNat|

end

end A118981.P13757138905573780552

/-! ## A118981.P13601592172501619678

`A004277(A038137(n))-A193736(n)`
-/

namespace A118981.P13601592172501619678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A038137 n).toNat - A193736 n

end

end A118981.P13601592172501619678

/-! ## A118981.P12493740524194716665

`A097807(n)*A104509(A061579(n))`
-/

namespace A118981.P12493740524194716665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A104509 (A061579 n).toNat

end

end A118981.P12493740524194716665

/-! ## A118981.P14948199691964830400

`gcd(A000038(n), A104509(A061579(n)))`
-/

namespace A118981.P14948199691964830400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A104509 (A061579 n).toNat)

end

end A118981.P14948199691964830400

/-! ## A118981.P2297478401318945516

`lcm(A020985(n), A104509(A061579(n)))`
-/

namespace A118981.P2297478401318945516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A104509 (A061579 n).toNat)

end

end A118981.P2297478401318945516

/-! ## A118981.P17780128408885120268

`∑{d}[A104509(A061579(n)), A000010(#)]`
-/

namespace A118981.P17780128408885120268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104509 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A118981.P17780128408885120268

/-! ## A118981.P9751435396506283659

`∏{d}[A104509(A061579(n)), A014963(#)]`
-/

namespace A118981.P9751435396506283659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104509 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A118981.P9751435396506283659

/-! ## A118981.P536960661143416360

`2*A038137(n)-A193737(A061579(n))`
-/

namespace A118981.P536960661143416360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038137 n - A193737 (A061579 n).toNat

end

end A118981.P536960661143416360

/-!
# A118982: a(1)=1. For m>=0 and 1<=k<=2^m, a(2^m +k) = number of earlier terms of the sequence that are coprime to k.

The programs for A118982, there is no canonical definition to state claims against.
-/

/-! ## A118982.P6449322959184604236

`A332288(A127092(n+1))+A211000(n)`
-/

namespace A118982.P6449322959184604236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332288 (A127092 (n + 1)).toNat + A211000 n

end

end A118982.P6449322959184604236

/-! ## A118982.P18021237554250250085

`A000120(A285827(n+1)-A000120(3*n))`
-/

namespace A118982.P18021237554250250085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A285827 (n + 1) - A000120 (3 * n)).toNat

end

end A118982.P18021237554250250085

/-! ## A118982.P10710916473331552665

`A000120(xor(A034387(n+1), A277929(n+1)))`
-/

namespace A118982.P10710916473331552665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A034387 (n + 1)) (A277929 (n + 1))).toNat

end

end A118982.P10710916473331552665

/-! ## A118982.P6626393284765389858

`A334098(xor(A270699(n+1), A270708(2*(n+3))))`
-/

namespace A118982.P6626393284765389858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334098 (Int.xor (A270699 (n + 1)) (A270708 (2 * (n + 3)))).toNat

end

end A118982.P6626393284765389858

/-!
# A118985: Number of different values taken by the determinant of a symmetric real (0,1)-matrix of order n.

The programs for A118985, there is no canonical definition to state claims against.
-/

/-! ## A118985.P18154761581448389926

`record[A118987(∑{digits}[n, #])]`
-/

namespace A118985.P18154761581448389926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118987 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118985.P18154761581448389926

/-! ## A118985.P11466478153322819841

`record[A118987(lcm(11, n)/11)]`
-/

namespace A118985.P11466478153322819841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118987 (SequenceMachineLib.roundAway ((Nat.lcm 11 n : ℚ) / 11)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118985.P11466478153322819841

/-! ## A118985.P18312564712461311472

`record[A118987(n-floor(sqrt(n))²)]`
-/

namespace A118985.P18312564712461311472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118987 (n - Nat.sqrt n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118985.P18312564712461311472

/-! ## A118985.P276663091610492671

`A118987(comp[14^∑{e}[n+1, #]])`
-/

namespace A118985.P276663091610492671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118987 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A118985.P276663091610492671

/-! ## A118985.P6564077166009801698

`A118987(n+1-floor(1/(n+1)))`
-/

namespace A118985.P6564077166009801698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118987 ((n + 1 : ℤ) - ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A118985.P6564077166009801698

/-!
# A118986: Number of different values taken by the permanent of a symmetric real (0,1)-matrix of order n.

The programs for A118986, there is no canonical definition to state claims against.
-/

/-! ## A118986.P4507651666761405986

`A076225(A150816(n))`
-/

namespace A118986.P4507651666761405986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076225 (A150816 n).toNat

end

end A118986.P4507651666761405986

/-! ## A118986.P1464065936555739786

`∑[A038566(∑[A371229(n)])]`
-/

namespace A118986.P1464065936555739786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371229 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118986.P1464065936555739786

/-! ## A118986.P10742512690107961966

`∪[A109162(n+1), A030307(A158681(n+1))]`
-/

namespace A118986.P10742512690107961966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030307 (A158681 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118986.P10742512690107961966

/-!
# A118987: Number of different values taken by the determinant of a symmetric real (+1,-1)-matrix of order n.

The programs for A118987, there is no canonical definition to state claims against.
-/

/-! ## A118987.P12239427835781510801

`A118985(∑[char[A049687(2*(n+2))]])`
-/

namespace A118987.P12239427835781510801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (2 * (n + 2))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118985 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118987.P12239427835781510801

/-! ## A118987.P13298380711189535145

`A118985(A254667(n)-A071625(n+1))`
-/

namespace A118987.P13298380711189535145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118985 (A254667 n - A071625 (n + 1)).toNat

end

end A118987.P13298380711189535145

/-! ## A118987.P11699952618848679131

`A000194(A027559(n)+A000111(n))`
-/

namespace A118987.P11699952618848679131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A027559 n + A000111 n).toNat

end

end A118987.P11699952618848679131

/-! ## A118987.P14490609583990062543

`A079643(A066186(n)+A000111(n))`
-/

namespace A118987.P14490609583990062543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079643 (A066186 n + A000111 n).toNat

end

end A118987.P14490609583990062543

/-! ## A118987.P7179963098260626209

`A000196(A157015(n)+A000051(n))`
-/

namespace A118987.P7179963098260626209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A157015 n + A000051 n).toNat

end

end A118987.P7179963098260626209

/-!
# A118989: Number of symmetric n X n (0,1)-matrices over the reals with zero permanent.

The programs for A118989, there is no canonical definition to state claims against.
-/

/-! ## A118989.P11801103886034843989

`2^((n+1)*(n+2)/2)-A118991(n+1)`
-/

namespace A118989.P11801103886034843989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n + 1 : ℚ) * ((n + 2 : ℚ) / 2) : ℝ) - (A118991 (n + 1) : ℝ)

end

end A118989.P11801103886034843989

/-!
# A118990: Number of symmetric singular n X n (+1,-1) matrices over the reals.

The programs for A118990, there is no canonical definition to state claims against.
-/

/-! ## A118990.P4267188945448800493

`2^((n+1)*(n+2)/2)-A118992(n+1)`
-/

namespace A118990.P4267188945448800493
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n + 1 : ℚ) * ((n + 2 : ℚ) / 2) : ℝ) - (A118992 (n + 1) : ℝ)

end

end A118990.P4267188945448800493

/-! ## A118990.P16876669031334528828

`2^((n+1)*(n+2)/2)-A118994(n+1)-A118997(n+1)`
-/

namespace A118990.P16876669031334528828
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n + 1 : ℚ) * ((n + 2 : ℚ) / 2) : ℝ) - (A118994 (n + 1) : ℝ) - (A118997 (n + 1) : ℝ)

end

end A118990.P16876669031334528828

/-!
# A118991: Number of real n X n symmetric (0,1) matrices with nonzero permanent.

The programs for A118991, there is no canonical definition to state claims against.
-/

/-! ## A118991.P17982217933547973712

`2^((n+1)*(n+2)/2)-A118989(n+1)`
-/

namespace A118991.P17982217933547973712
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n + 1 : ℚ) * ((n + 2 : ℚ) / 2) : ℝ) - (A118989 (n + 1) : ℝ)

end

end A118991.P17982217933547973712

/-!
# A118992: Number of real n X n invertible symmetric (+1,-1) matrices.

The programs for A118992, there is no canonical definition to state claims against.
-/

/-! ## A118992.P9771350402440891379

`2^((n+1)*(n+2)/2)-A118990(n+1)`
-/

namespace A118992.P9771350402440891379
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n + 1 : ℚ) * ((n + 2 : ℚ) / 2) : ℝ) - (A118990 (n + 1) : ℝ)

end

end A118992.P9771350402440891379

/-! ## A118992.P10780747150801553596

`A118994(n+1)+A118997(n+1)`
-/

namespace A118992.P10780747150801553596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118994 (n + 1) + A118997 (n + 1)

end

end A118992.P10780747150801553596

/-!
# A118993: Number of real n X n symmetric (+1,-1) matrices with nonzero permanent.

The programs for A118993, there is no canonical definition to state claims against.
-/

/-! ## A118993.P15397846465112182804

`A118999(n+1)+A118995(n+1)`
-/

namespace A118993.P15397846465112182804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118999 (n + 1) + A118995 (n + 1)

end

end A118993.P15397846465112182804

/-! ## A118993.P12801618859734730005

`A118990(n+1)+A118992(n+1)-A119010(n+1)`
-/

namespace A118993.P12801618859734730005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118990 (n + 1) + (A118992 (n + 1) - A119010 (n + 1))

end

end A118993.P12801618859734730005

/-!
# A118994: Number of real n X n symmetric (+1,-1) matrices with positive determinant.

The programs for A118994, there is no canonical definition to state claims against.
-/

/-! ## A118994.P2690247531511178440

`A118992(n+1)-A118997(n+1)`
-/

namespace A118994.P2690247531511178440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118992 (n + 1) - A118997 (n + 1)

end

end A118994.P2690247531511178440

/-! ## A118994.P9391214333823469968

`A000079(∑[n+1])-A118990(n+1)-A118997(n+1)`
-/

namespace A118994.P9391214333823469968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j) - A118990 (n + 1) - A118997 (n + 1)

end

end A118994.P9391214333823469968

/-! ## A118994.P1417180604306414594

`∏[A000079(n+1)]-A118990(n+1)-A118997(n+1)`
-/

namespace A118994.P1417180604306414594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A118990 (n + 1) - A118997 (n + 1)

end

end A118994.P1417180604306414594

/-!
# A118995: Number of real n X n symmetric (+1,-1) matrices with positive permanent.

The programs for A118995, there is no canonical definition to state claims against.
-/

/-! ## A118995.P11393354875711688624

`A118993(n+1)-A118999(n+1)`
-/

namespace A118995.P11393354875711688624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118993 (n + 1) - A118999 (n + 1)

end

end A118995.P11393354875711688624

/-! ## A118995.P10952963322621319491

`A118990(n+1)+A118992(n+1)-A119010(n+1)-A118999(n+1)`
-/

namespace A118995.P10952963322621319491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118990 (n + 1) + (A118992 (n + 1) - A119010 (n + 1)) - A118999 (n + 1)

end

end A118995.P10952963322621319491

/-!
# A118996: Number of real n X n symmetric (0,1) matrices with negative determinant.

The programs for A118996, there is no canonical definition to state claims against.
-/

/-! ## A118996.P1270047036762873293

`A086899(n+1)-A086900(n+1)`
-/

namespace A118996.P1270047036762873293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086899 (n + 1) - A086900 (n + 1)

end

end A118996.P1270047036762873293

/-! ## A118996.P13349268861445301425

`2^((n+1)*(n+2)/2)-A086906(n+1)-A086900(n+1)`
-/

namespace A118996.P13349268861445301425
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n + 1 : ℚ) * ((n + 2 : ℚ) / 2) : ℝ) - (A086906 (n + 1) : ℝ) - (A086900 (n + 1) : ℝ)

end

end A118996.P13349268861445301425

/-!
# A118997: Number of real n X n symmetric (+1,-1) matrices with negative determinant.

The programs for A118997, there is no canonical definition to state claims against.
-/

/-! ## A118997.P2482696076851292427

`A118992(n+1)-A118994(n+1)`
-/

namespace A118997.P2482696076851292427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118992 (n + 1) - A118994 (n + 1)

end

end A118997.P2482696076851292427

/-! ## A118997.P2323746423538929714

`A000079(∑[n+1])-A118990(n+1)-A118994(n+1)`
-/

namespace A118997.P2323746423538929714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j) - A118990 (n + 1) - A118994 (n + 1)

end

end A118997.P2323746423538929714

/-! ## A118997.P14163778753029266500

`∏[A000079(n+1)]-A118990(n+1)-A118994(n+1)`
-/

namespace A118997.P14163778753029266500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A118990 (n + 1) - A118994 (n + 1)

end

end A118997.P14163778753029266500

/-!
# A118999: Number of real n X n symmetric (+1,-1) matrices with negative permanent.

The programs for A118999, there is no canonical definition to state claims against.
-/

/-! ## A118999.P1316368678758499014

`A118993(n+1)-A118995(n+1)`
-/

namespace A118999.P1316368678758499014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118993 (n + 1) - A118995 (n + 1)

end

end A118999.P1316368678758499014

/-! ## A118999.P3686059474932001345

`A118990(n+1)+A118992(n+1)-A119010(n+1)-A118995(n+1)`
-/

namespace A118999.P3686059474932001345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118990 (n + 1) + (A118992 (n + 1) - A119010 (n + 1)) - A118995 (n + 1)

end

end A118999.P3686059474932001345

