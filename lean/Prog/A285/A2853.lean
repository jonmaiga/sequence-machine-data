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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A285300: Numbers k such that 3^(k-1) == 2^(k-1) !== 1 (mod k).

The programs for A285300, there is no canonical definition to state claims against.
-/

/-! ## A285300.P14593435085811296022

`A073631(A284038(n+1)+1)%A120104(3*(n+2))`
-/

namespace A285300.P14593435085811296022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073631 (A284038 (n + 1) + 1).toNat) (A120104 (3 * (n + 2)))

end

end A285300.P14593435085811296022

/-!
# A285301: Fixed point of the morphism 0 -> 10, 1 -> 1000.

The programs for A285301, the canonical program `A285301.P15481445537404747309` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285301 has offset 1).

The definition of A285301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285301.P5955568031687587313

`char[A086398(n+1)-1]`
-/

namespace A285301.P5955568031687587313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285301.P5955568031687587313

namespace A285301

/-- `char[A086398(n+1)-1]` -/
def P5955568031687587313.Spec : Prop :=
  ∀ n, (P5955568031687587313.a n : ℤ) = A285301 (n + 1)

end A285301

/-! ## A285301.P6019294411876045836

`char[A284753(n+1)-2]`
-/

namespace A285301.P6019294411876045836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284753 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285301.P6019294411876045836

namespace A285301

/-- `char[A284753(n+1)-2]` -/
def P6019294411876045836.Spec : Prop :=
  ∀ n, (P6019294411876045836.a n : ℤ) = A285301 (n + 1)

end A285301

/-! ## A285301.P15481445537404747309

`floor(Δ[A284371(n+1)/2])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285301

/-- `floor(Δ[A284371(n+1)/2])` -/
def P15481445537404747309.Spec : Prop :=
  ∀ n, P15481445537404747309.a n = A285301 (n + 1)

theorem P15481445537404747309.correct : P15481445537404747309.Spec := by
  intro n
  simp only [A285301, Nat.add_sub_cancel]

end A285301

/-! ## A285301.P18296696749814829529

`1-char[A284752(n+1)-2]`
-/

namespace A285301.P18296696749814829529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285301.P18296696749814829529

namespace A285301

/-- `1-char[A284752(n+1)-2]` -/
def P18296696749814829529.Spec : Prop :=
  ∀ n, P18296696749814829529.a n = A285301 (n + 1)

end A285301

/-! ## A285301.P16402163122989123288

`char[A026364(n+1)-(n+2)]`
-/

namespace A285301.P16402163122989123288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026364 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285301.P16402163122989123288

namespace A285301

/-- `char[A026364(n+1)-(n+2)]` -/
def P16402163122989123288.Spec : Prop :=
  ∀ n, (P16402163122989123288.a n : ℤ) = A285301 (n + 1)

end A285301

/-! ## A285301.P3423653619555252594

`A284751(A004442(n)+1)`
-/

namespace A285301.P3423653619555252594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (A004442 n + 1).toNat

end

end A285301.P3423653619555252594

namespace A285301

/-- `A284751(A004442(n)+1)` -/
def P3423653619555252594.Spec : Prop :=
  ∀ n, P3423653619555252594.a n = A285301 (n + 1)

end A285301

/-! ## A285301.P6827235967027324341

`A001065(Δ[A284371(n+1)])`
-/

namespace A285301.P6827235967027324341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (f1 (n + 1) - f1 n).toNat

end

end A285301.P6827235967027324341

namespace A285301

/-- `A001065(Δ[A284371(n+1)])` -/
def P6827235967027324341.Spec : Prop :=
  ∀ n, P6827235967027324341.a n = A285301 (n + 1)

end A285301

/-! ## A285301.P12082944156391788877

`A001221(Δ[A284371(n+1)])`
-/

namespace A285301.P12082944156391788877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A285301.P12082944156391788877

namespace A285301

/-- `A001221(Δ[A284371(n+1)])` -/
def P12082944156391788877.Spec : Prop :=
  ∀ n, P12082944156391788877.a n = A285301 (n + 1)

end A285301

/-! ## A285301.P1658053865441939380

`A001222(Δ[A284371(n+1)])`
-/

namespace A285301.P1658053865441939380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A285301.P1658053865441939380

namespace A285301

/-- `A001222(Δ[A284371(n+1)])` -/
def P1658053865441939380.Spec : Prop :=
  ∀ n, P1658053865441939380.a n = A285301 (n + 1)

end A285301

/-! ## A285301.P12058512231099979943

`A086401(Δ[A284371(n+1)])`
-/

namespace A285301.P12058512231099979943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086401 (f1 (n + 1) - f1 n).toNat

end

end A285301.P12058512231099979943

namespace A285301

/-- `A086401(Δ[A284371(n+1)])` -/
def P12058512231099979943.Spec : Prop :=
  ∀ n, P12058512231099979943.a n = A285301 (n + 1)

end A285301

/-! ## A285301.P8866477501906284487

`A284388(Δ[A284371(n+1)])`
-/

namespace A285301.P8866477501906284487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (f1 (n + 1) - f1 n).toNat

end

end A285301.P8866477501906284487

namespace A285301

/-- `A284388(Δ[A284371(n+1)])` -/
def P8866477501906284487.Spec : Prop :=
  ∀ n, P8866477501906284487.a n = A285301 (n + 1)

end A285301

/-! ## A285301.P15729809133148206569

`A284751(A057815(n+1)+1)`
-/

namespace A285301.P15729809133148206569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (A057815 (n + 1) + 1).toNat

end

end A285301.P15729809133148206569

namespace A285301

/-- `A284751(A057815(n+1)+1)` -/
def P15729809133148206569.Spec : Prop :=
  ∀ n, P15729809133148206569.a n = A285301 (n + 1)

end A285301

/-! ## A285301.P17439025111587900741

`1-A019590(Δ[A284371(n+1)])`
-/

namespace A285301.P17439025111587900741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A019590 (f1 (n + 1) - f1 n).toNat

end

end A285301.P17439025111587900741

namespace A285301

/-- `1-A019590(Δ[A284371(n+1)])` -/
def P17439025111587900741.Spec : Prop :=
  ∀ n, P17439025111587900741.a n = A285301 (n + 1)

end A285301

/-! ## A285301.P17011923278952918332

`A284751(n+2)`
-/

namespace A285301.P17011923278952918332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (n + 2)

end

end A285301.P17011923278952918332

namespace A285301

/-- `A284751(n+2)` -/
def P17011923278952918332.Spec : Prop :=
  ∀ n, P17011923278952918332.a n = A285301 (n + 1)

end A285301

/-! ## A285301.P2989943336255769145

`log2(Δ[A026363(n+1)])`
-/

namespace A285301.P2989943336255769145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A285301.P2989943336255769145

namespace A285301

/-- `log2(Δ[A026363(n+1)])` -/
def P2989943336255769145.Spec : Prop :=
  ∀ n, P2989943336255769145.a n = (A285301 (n + 1) : ℝ)

end A285301

/-! ## A285301.P6582210263082395780

`A001221(Δ[A026363(n+1)])`
-/

namespace A285301.P6582210263082395780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A285301.P6582210263082395780

namespace A285301

/-- `A001221(Δ[A026363(n+1)])` -/
def P6582210263082395780.Spec : Prop :=
  ∀ n, P6582210263082395780.a n = A285301 (n + 1)

end A285301

/-! ## A285301.P10726817994020975914

`A001222(Δ[A026363(n+1)])`
-/

namespace A285301.P10726817994020975914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A285301.P10726817994020975914

namespace A285301

/-- `A001222(Δ[A026363(n+1)])` -/
def P10726817994020975914.Spec : Prop :=
  ∀ n, P10726817994020975914.a n = A285301 (n + 1)

end A285301

/-! ## A285301.P1933979292076574165

`A026363(n+1)+A026363(n+2)-A080903(n+2)`
-/

namespace A285301.P1933979292076574165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 (n + 1) + (A026363 (n + 2) - A080903 (n + 2))

end

end A285301.P1933979292076574165

namespace A285301

/-- `A026363(n+1)+A026363(n+2)-A080903(n+2)` -/
def P1933979292076574165.Spec : Prop :=
  ∀ n, P1933979292076574165.a n = A285301 (n + 1)

end A285301

/-! ## A285301.P1256423447771159455

`A086398(n+2)-(A026363(n+1)+A026363(n+2))`
-/

namespace A285301.P1256423447771159455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 2) - (A026363 (n + 1) + A026363 (n + 2))

end

end A285301.P1256423447771159455

namespace A285301

/-- `A086398(n+2)-(A026363(n+1)+A026363(n+2))` -/
def P1256423447771159455.Spec : Prop :=
  ∀ n, P1256423447771159455.a n = A285301 (n + 1)

end A285301

/-!
# A285302: Positions of 0 in A285301, complement of A086398.

The programs for A285302, the canonical program `A285302.P16715383448792695938` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285302 has offset 1).

The definition of A285302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285302.P16715383448792695938

`∑[A284369(n+1)+1]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A285302

/-- `∑[A284369(n+1)+1]` -/
def P16715383448792695938.Spec : Prop :=
  ∀ n, P16715383448792695938.a n = A285302 (n + 1)

theorem P16715383448792695938.correct : P16715383448792695938.Spec := by
  intro n
  simp only [A285302, Nat.add_sub_cancel]

end A285302

/-! ## A285302.P7842837611900454903

`comp[A086398(n+1)-1]+1`
-/

namespace A285302.P7842837611900454903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086398 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285302.P7842837611900454903

namespace A285302

/-- `comp[A086398(n+1)-1]+1` -/
def P7842837611900454903.Spec : Prop :=
  ∀ n, (P7842837611900454903.a n : ℤ) = A285302 (n + 1)

end A285302

/-! ## A285302.P10693970234757672452

`comp[A284753(n+1)-2]+1`
-/

namespace A285302.P10693970234757672452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284753 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285302.P10693970234757672452

namespace A285302

/-- `comp[A284753(n+1)-2]+1` -/
def P10693970234757672452.Spec : Prop :=
  ∀ n, (P10693970234757672452.a n : ℤ) = A285302 (n + 1)

end A285302

/-! ## A285302.P1798948403267611413

`A284752(n+1)+A284369(n+1)`
-/

namespace A285302.P1798948403267611413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (n + 1) + A284369 (n + 1)

end

end A285302.P1798948403267611413

namespace A285302

/-- `A284752(n+1)+A284369(n+1)` -/
def P1798948403267611413.Spec : Prop :=
  ∀ n, P1798948403267611413.a n = A285302 (n + 1)

end A285302

/-! ## A285302.P4966101824299762926

`A284752(n+2)-1`
-/

namespace A285302.P4966101824299762926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (n + 2) - 1

end

end A285302.P4966101824299762926

namespace A285302

/-- `A284752(n+2)-1` -/
def P4966101824299762926.Spec : Prop :=
  ∀ n, P4966101824299762926.a n = A285302 (n + 1)

end A285302

/-! ## A285302.P14778979697960909718

`∑[abs(Δ[A284752(n+1)])]`
-/

namespace A285302.P14778979697960909718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285302.P14778979697960909718

namespace A285302

/-- `∑[abs(Δ[A284752(n+1)])]` -/
def P14778979697960909718.Spec : Prop :=
  ∀ n, P14778979697960909718.a n = A285302 (n + 1)

end A285302

/-! ## A285302.P14288696123091078272

`∑[A000005(Δ[A284752(n+1)])]`
-/

namespace A285302.P14288696123091078272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285302.P14288696123091078272

namespace A285302

/-- `∑[A000005(Δ[A284752(n+1)])]` -/
def P14288696123091078272.Spec : Prop :=
  ∀ n, P14288696123091078272.a n = A285302 (n + 1)

end A285302

/-! ## A285302.P13476318620352857001

`∑[A006530(Δ[A284752(n+1)])]`
-/

namespace A285302.P13476318620352857001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285302.P13476318620352857001

namespace A285302

/-- `∑[A006530(Δ[A284752(n+1)])]` -/
def P13476318620352857001.Spec : Prop :=
  ∀ n, P13476318620352857001.a n = A285302 (n + 1)

end A285302

/-! ## A285302.P7765721068278155978

`∑[A020639(Δ[A284752(n+1)])]`
-/

namespace A285302.P7765721068278155978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285302.P7765721068278155978

namespace A285302

/-- `∑[A020639(Δ[A284752(n+1)])]` -/
def P7765721068278155978.Spec : Prop :=
  ∀ n, P7765721068278155978.a n = A285302 (n + 1)

end A285302

/-! ## A285302.P6926489141081874588

`lt[A285301(n+1), 1]+1`
-/

namespace A285302.P6926489141081874588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285302.P6926489141081874588

namespace A285302

/-- `lt[A285301(n+1), 1]+1` -/
def P6926489141081874588.Spec : Prop :=
  ∀ n, (P6926489141081874588.a n : ℤ) = A285302 (n + 1)

end A285302

/-! ## A285302.P14210345586120370787

`eq[0, A284751(n+2)]+1`
-/

namespace A285302.P14210345586120370787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285302.P14210345586120370787

namespace A285302

/-- `eq[0, A284751(n+2)]+1` -/
def P14210345586120370787.Spec : Prop :=
  ∀ n, (P14210345586120370787.a n : ℤ) = A285302 (n + 1)

end A285302

/-! ## A285302.P2246013949685686085

`lt[n*A284751(n+1), n]`
-/

namespace A285302.P2246013949685686085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284751 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285302.P2246013949685686085

namespace A285302

/-- `lt[n*A284751(n+1), n]` -/
def P2246013949685686085.Spec : Prop :=
  ∀ n, (P2246013949685686085.a n : ℤ) = A285302 (n + 1)

end A285302

/-! ## A285302.P7944390883084820916

`A023443(A284752(n+2))`
-/

namespace A285302.P7944390883084820916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A284752 (n + 2)).toNat

end

end A285302.P7944390883084820916

namespace A285302

/-- `A023443(A284752(n+2))` -/
def P7944390883084820916.Spec : Prop :=
  ∀ n, P7944390883084820916.a n = A285302 (n + 1)

end A285302

/-! ## A285302.P797395406697338232

`eq[A000007(n), A284751(n+1)]`
-/

namespace A285302.P797395406697338232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285302.P797395406697338232

namespace A285302

/-- `eq[A000007(n), A284751(n+1)]` -/
def P797395406697338232.Spec : Prop :=
  ∀ n, (P797395406697338232.a n : ℤ) = A285302 (n + 1)

end A285302

/-! ## A285302.P14373639108219557212

`eq[A000038(n), A284751(n+1)]`
-/

namespace A285302.P14373639108219557212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285302.P14373639108219557212

namespace A285302

/-- `eq[A000038(n), A284751(n+1)]` -/
def P14373639108219557212.Spec : Prop :=
  ∀ n, (P14373639108219557212.a n : ℤ) = A285302 (n + 1)

end A285302

/-! ## A285302.P16102869002641684829

`eq[A130706(n), A284751(n+1)]`
-/

namespace A285302.P16102869002641684829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285302.P16102869002641684829

namespace A285302

/-- `eq[A130706(n), A284751(n+1)]` -/
def P16102869002641684829.Spec : Prop :=
  ∀ n, (P16102869002641684829.a n : ℤ) = A285302 (n + 1)

end A285302

/-! ## A285302.P18367844654134935688

`eq[A169585(n), A284751(n+1)]`
-/

namespace A285302.P18367844654134935688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285302.P18367844654134935688

namespace A285302

/-- `eq[A169585(n), A284751(n+1)]` -/
def P18367844654134935688.Spec : Prop :=
  ∀ n, (P18367844654134935688.a n : ℤ) = A285302 (n + 1)

end A285302

/-!
# A285303: Positions of 1 in A284932; complement of A285303.

The programs for A285303, there is no canonical definition to state claims against.
-/

/-! ## A285303.P12171597538124391278

`filter[n+1, A284932(#)]`
-/

namespace A285303.P12171597538124391278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284932 (f1 j) = 1) n)

end

end A285303.P12171597538124391278

/-! ## A285303.P10275264869775313290

`eq[1, A284932(n+1)]+1`
-/

namespace A285303.P10275264869775313290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285303.P10275264869775313290

/-! ## A285303.P2384582529246996203

`record[(n+3)*A284932(n+3)]`
-/

namespace A285303.P2384582529246996203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A284932 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285303.P2384582529246996203

/-! ## A285303.P1406398969699996098

`lt[n*char[A285352(n+1)], n]`
-/

namespace A285303.P1406398969699996098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285352 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A285303.P1406398969699996098

/-! ## A285303.P16158892498020862440

`lt[0, A284932(A028310(n))]`
-/

namespace A285303.P16158892498020862440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285303.P16158892498020862440

/-! ## A285303.P5349412953025141168

`eq[1, A284932(A000007(n)+n)]`
-/

namespace A285303.P5349412953025141168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285303.P5349412953025141168

/-! ## A285303.P12122286768929175027

`lt[char[A285352(n+1)], A057427(n)]`
-/

namespace A285303.P12122286768929175027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285352 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A285303.P12122286768929175027

/-! ## A285303.P9537343673212292321

`eq[1, A284932(A065033(2*n))]`
-/

namespace A285303.P9537343673212292321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285303.P9537343673212292321

/-! ## A285303.P16574923585909162117

`eq[1, A284932(A080513(A004275(n)))]`
-/

namespace A285303.P16574923585909162117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 (A080513 (A004275 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285303.P16574923585909162117

/-! ## A285303.P11292216270479998817

`eq[1, A284932(A233583(n+1))]`
-/

namespace A285303.P11292216270479998817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285303.P11292216270479998817

/-!
# A285304: P-positions in the sum-from-product game.

The programs for A285304, there is no canonical definition to state claims against.
-/

/-! ## A285304.P16809054880367212134

`eq[char[A285847(n+1)], A151933(n)]`
-/

namespace A285304.P16809054880367212134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285847 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285304.P16809054880367212134

/-! ## A285304.P12741597735150270723

`eq[char[A285847(n+1)], A151622(n)]`
-/

namespace A285304.P12741597735150270723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285847 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285304.P12741597735150270723

/-! ## A285304.P17248139661927134264

`lt[A341909(∏{e}[n, n*#+1]), A262390(n+1)]`
-/

namespace A285304.P17248139661927134264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341909 (∏ p ∈ Nat.primeFactors (f2 n), (n * Nat.factorization (f2 n) p + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262390 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A285304.P17248139661927134264

/-! ## A285304.P11766890957453014456

`lt[A124047(A167865(n)), A124076(n+1)]`
-/

namespace A285304.P11766890957453014456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124047 (A167865 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285304.P11766890957453014456

/-! ## A285304.P3637037675755331503

`lt[A002445(n), A357706(A246082(n+1))]`
-/

namespace A285304.P3637037675755331503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357706 (A246082 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285304.P3637037675755331503

/-!
# A285305: Fixed point of the morphism 0 -> 10, 1 -> 1001.

The programs for A285305, the canonical program `A285305.P17795015097415860108` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285305 has offset 1).

The definition of A285305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285305.P6065345029363336328

`∑[A284793(n+1)]`
-/

namespace A285305.P6065345029363336328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285305.P6065345029363336328

namespace A285305

/-- `∑[A284793(n+1)]` -/
def P6065345029363336328.Spec : Prop :=
  ∀ n, P6065345029363336328.a n = A285305 (n + 1)

end A285305

/-! ## A285305.P17795015097415860108

`char[A285307(n+1)-1]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A285305

/-- `char[A285307(n+1)-1]` -/
def P17795015097415860108.Spec : Prop :=
  ∀ n, (P17795015097415860108.a n : ℤ) = A285305 (n + 1)

theorem P17795015097415860108.correct : P17795015097415860108.Spec := by
  intro n
  simp only [A285305, Nat.add_sub_cancel]

end A285305

/-! ## A285305.P6218885080378361267

`char[A284777(n+1)-2]`
-/

namespace A285305.P6218885080378361267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285305.P6218885080378361267

namespace A285305

/-- `char[A284777(n+1)-2]` -/
def P6218885080378361267.Spec : Prop :=
  ∀ n, (P6218885080378361267.a n : ℤ) = A285305 (n + 1)

end A285305

/-! ## A285305.P1701230610298049936

`(A284795(n+1)+1)²%3`
-/

namespace A285305.P1701230610298049936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A284795 (n + 1) + 1) ^ 2) 3

end

end A285305.P1701230610298049936

namespace A285305

/-- `(A284795(n+1)+1)²%3` -/
def P1701230610298049936.Spec : Prop :=
  ∀ n, P1701230610298049936.a n = A285305 (n + 1)

end A285305

/-! ## A285305.P2994107206270376273

`1-char[A285306(n+1)-1]`
-/

namespace A285305.P2994107206270376273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285306 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285305.P2994107206270376273

namespace A285305

/-- `1-char[A285306(n+1)-1]` -/
def P2994107206270376273.Spec : Prop :=
  ∀ n, P2994107206270376273.a n = A285305 (n + 1)

end A285305

/-! ## A285305.P17335170910426445886

`char[A189666(n+1)-(n+2)]`
-/

namespace A285305.P17335170910426445886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285305.P17335170910426445886

namespace A285305

/-- `char[A189666(n+1)-(n+2)]` -/
def P17335170910426445886.Spec : Prop :=
  ∀ n, (P17335170910426445886.a n : ℤ) = A285305 (n + 1)

end A285305

/-! ## A285305.P17587444709043735769

`A284793(n+1)+A284775(n+1)`
-/

namespace A285305.P17587444709043735769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (n + 1) + A284775 (n + 1)

end

end A285305.P17587444709043735769

namespace A285305

/-- `A284793(n+1)+A284775(n+1)` -/
def P17587444709043735769.Spec : Prop :=
  ∀ n, P17587444709043735769.a n = A285305 (n + 1)

theorem P17587444709043735769.correct : P17587444709043735769.Spec := by
  intro n
  simp only [A285305, Nat.add_sub_cancel, A285305.P17587444709043735769.a, A285305.P17795015097415860108.f1, A285305.P17795015097415860108.a, A284775, A284775.P8645433344841049155.a, A284793, A284793.P3906525423452783720.a, A285307, A285307.P1018427192164928864.a, A189665, A189665.P13427667427402099611.a, A284777, A284777.P2957116488474719438.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, A189667, A189667.P3450249148691323656.f1, A189667.P3450249148691323656.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A320928, A320928.P14647254000613725565.a, A284914, A284914.P18201955164397708571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285305

/-! ## A285305.P1705499542106773591

`A284775(n+2)`
-/

namespace A285305.P1705499542106773591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (n + 2)

end

end A285305.P1705499542106773591

namespace A285305

/-- `A284775(n+2)` -/
def P1705499542106773591.Spec : Prop :=
  ∀ n, P1705499542106773591.a n = A285305 (n + 1)

end A285305

/-! ## A285305.P10946249201054483859

`log2(Δ[A189665(n+1)])`
-/

namespace A285305.P10946249201054483859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A285305.P10946249201054483859

namespace A285305

/-- `log2(Δ[A189665(n+1)])` -/
def P10946249201054483859.Spec : Prop :=
  ∀ n, P10946249201054483859.a n = (A285305 (n + 1) : ℝ)

end A285305

/-! ## A285305.P5289904732903295316

`log2(gcd(2, A284796(n+2)))`
-/

namespace A285305.P5289904732903295316
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A284796 (n + 2)) : ℝ)

end

end A285305.P5289904732903295316

namespace A285305

/-- `log2(gcd(2, A284796(n+2)))` -/
def P5289904732903295316.Spec : Prop :=
  ∀ n, P5289904732903295316.a n = (A285305 (n + 1) : ℝ)

end A285305

/-! ## A285305.P14661879161418044179

`A001221(Δ[A189665(n+1)])`
-/

namespace A285305.P14661879161418044179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A285305.P14661879161418044179

namespace A285305

/-- `A001221(Δ[A189665(n+1)])` -/
def P14661879161418044179.Spec : Prop :=
  ∀ n, P14661879161418044179.a n = A285305 (n + 1)

end A285305

/-! ## A285305.P11433229024752371272

`A001222(Δ[A189665(n+1)])`
-/

namespace A285305.P11433229024752371272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A285305.P11433229024752371272

namespace A285305

/-- `A001222(Δ[A189665(n+1)])` -/
def P11433229024752371272.Spec : Prop :=
  ∀ n, P11433229024752371272.a n = A285305 (n + 1)

end A285305

/-! ## A285305.P16287475542556631227

`A189665(n+2)-A284818(n+2)`
-/

namespace A285305.P16287475542556631227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (n + 2) - A284818 (n + 2)

end

end A285305.P16287475542556631227

namespace A285305

/-- `A189665(n+2)-A284818(n+2)` -/
def P16287475542556631227.Spec : Prop :=
  ∀ n, P16287475542556631227.a n = A285305 (n + 1)

end A285305

/-! ## A285305.P8071968562869869680

`A189664(A284794(n+2)-A284796(n+2))`
-/

namespace A285305.P8071968562869869680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (A284794 (n + 2) - A284796 (n + 2)).toNat

end

end A285305.P8071968562869869680

namespace A285305

/-- `A189664(A284794(n+2)-A284796(n+2))` -/
def P8071968562869869680.Spec : Prop :=
  ∀ n, P8071968562869869680.a n = A285305 (n + 1)

end A285305

/-! ## A285305.P17337604630669290953

`A189628(A284796(n+2)-A284794(n+1)+1)`
-/

namespace A285305.P17337604630669290953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (A284796 (n + 2) - A284794 (n + 1) + 1).toNat

end

end A285305.P17337604630669290953

namespace A285305

/-- `A189628(A284796(n+2)-A284794(n+1)+1)` -/
def P17337604630669290953.Spec : Prop :=
  ∀ n, P17337604630669290953.a n = A285305 (n + 1)

end A285305

/-! ## A285305.P16655816816913277897

`log2(Δ[A284818(n+2)])`
-/

namespace A285305.P16655816816913277897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A285305.P16655816816913277897

namespace A285305

/-- `log2(Δ[A284818(n+2)])` -/
def P16655816816913277897.Spec : Prop :=
  ∀ n, P16655816816913277897.a n = (A285305 (n + 1) : ℝ)

end A285305

/-! ## A285305.P18355940270318051868

`A001221(Δ[A284818(n+2)])`
-/

namespace A285305.P18355940270318051868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A285305.P18355940270318051868

namespace A285305

/-- `A001221(Δ[A284818(n+2)])` -/
def P18355940270318051868.Spec : Prop :=
  ∀ n, P18355940270318051868.a n = A285305 (n + 1)

end A285305

/-! ## A285305.P12563552861387698044

`A001222(Δ[A284818(n+2)])`
-/

namespace A285305.P12563552861387698044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A285305.P12563552861387698044

namespace A285305

/-- `A001222(Δ[A284818(n+2)])` -/
def P12563552861387698044.Spec : Prop :=
  ∀ n, P12563552861387698044.a n = A285305 (n + 1)

end A285305

/-! ## A285305.P15713887961458923401

`A285345(A274601(n+1))`
-/

namespace A285305.P15713887961458923401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285345 (A274601 (n + 1)).toNat

end

end A285305.P15713887961458923401

namespace A285305

/-- `A285345(A274601(n+1))` -/
def P15713887961458923401.Spec : Prop :=
  ∀ n, P15713887961458923401.a n = A285305 (n + 1)

end A285305

/-!
# A285306: Positions of 0 in A285305; complement of A285307.

The programs for A285306, the canonical program `A285306.P713584507056425595` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285306 has offset 1).

The definition of A285306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285306.P713584507056425595

`2*(n+1)-A189664(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A285306

/-- `2*(n+1)-A189664(n+1)` -/
def P713584507056425595.Spec : Prop :=
  ∀ n, P713584507056425595.a n = A285306 (n + 1)

theorem P713584507056425595.correct : P713584507056425595.Spec := by
  intro n
  simp only [A285306, Nat.add_sub_cancel]

end A285306

/-! ## A285306.P1004306593143035739

`4*(n+1)-A284777(n+1)`
-/

namespace A285306.P1004306593143035739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A284777 (n + 1)

end

end A285306.P1004306593143035739

namespace A285306

/-- `4*(n+1)-A284777(n+1)` -/
def P1004306593143035739.Spec : Prop :=
  ∀ n, P1004306593143035739.a n = A285306 (n + 1)

theorem P1004306593143035739.correct : P1004306593143035739.Spec := by
  intro n
  simp only [A285306, Nat.add_sub_cancel, A285306.P1004306593143035739.a, A285306.P713584507056425595.a, A189664, A189664.P1404059983888781989.a, A284777, A284777.P2957116488474719438.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, A189665, A189665.P13427667427402099611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285306

/-! ## A285306.P2035044255505486940

`5*(n+1)-A284819(n+1)`
-/

namespace A285306.P2035044255505486940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A284819 (n + 1)

end

end A285306.P2035044255505486940

namespace A285306

/-- `5*(n+1)-A284819(n+1)` -/
def P2035044255505486940.Spec : Prop :=
  ∀ n, P2035044255505486940.a n = A285306 (n + 1)

theorem P2035044255505486940.correct : P2035044255505486940.Spec := by
  intro n
  simp only [A285306, Nat.add_sub_cancel, A285306.P2035044255505486940.a, A285306.P713584507056425595.a, A189664, A189664.P1404059983888781989.a, A284819, A284819.P13627960389545771610.a, A284777, A284777.P2957116488474719438.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285306

/-! ## A285306.P2315372985050132925

`2*n+3-C(2, A287455(n+1))`
-/

namespace A285306.P2315372985050132925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - (Nat.choose 2 (A287455 (n + 1)).toNat : ℤ)

end

end A285306.P2315372985050132925

namespace A285306

/-- `2*n+3-C(2, A287455(n+1))` -/
def P2315372985050132925.Spec : Prop :=
  ∀ n, P2315372985050132925.a n = A285306 (n + 1)

end A285306

/-! ## A285306.P1591360199056443608

`A016897(n)-A189666(n+1)`
-/

namespace A285306.P1591360199056443608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - A189666 (n + 1)

end

end A285306.P1591360199056443608

namespace A285306

/-- `A016897(n)-A189666(n+1)` -/
def P1591360199056443608.Spec : Prop :=
  ∀ n, P1591360199056443608.a n = A285306 (n + 1)

theorem P1591360199056443608.correct : P1591360199056443608.Spec := by
  intro n
  simp only [A285306, Nat.add_sub_cancel, A285306.P1591360199056443608.a, A285306.P713584507056425595.a, A016897, A016897.P9287350145607759688.a, A189664, A189664.P1404059983888781989.a, A189666, A189666.P13703486958930581488.a, A284777, A284777.P2957116488474719438.a, A284819, A284819.P13627960389545771610.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285306

/-! ## A285306.P12366113684564377584

`A004767(n)-A285307(n+1)`
-/

namespace A285306.P12366113684564377584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A285307 (n + 1)

end

end A285306.P12366113684564377584

namespace A285306

/-- `A004767(n)-A285307(n+1)` -/
def P12366113684564377584.Spec : Prop :=
  ∀ n, P12366113684564377584.a n = A285306 (n + 1)

theorem P12366113684564377584.correct : P12366113684564377584.Spec := by
  intro n
  simp only [A285306, Nat.add_sub_cancel, A285306.P12366113684564377584.a, A285306.P713584507056425595.a, A004767, A004767.P13352534504447192883.a, A189664, A189664.P1404059983888781989.a, A285307, A285307.P1018427192164928864.a, A284777, A284777.P2957116488474719438.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285306

/-! ## A285306.P14370804836735535815

`xor(A088837(n+1), A285307(n+1))`
-/

namespace A285306.P14370804836735535815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A285307 (n + 1))

end

end A285306.P14370804836735535815

namespace A285306

/-- `xor(A088837(n+1), A285307(n+1))` -/
def P14370804836735535815.Spec : Prop :=
  ∀ n, P14370804836735535815.a n = A285306 (n + 1)

end A285306

/-! ## A285306.P8911914823274113062

`A016789(n)-(A189664(n+1)+n)`
-/

namespace A285306.P8911914823274113062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (A189664 (n + 1) + (n : ℤ))

end

end A285306.P8911914823274113062

namespace A285306

/-- `A016789(n)-(A189664(n+1)+n)` -/
def P8911914823274113062.Spec : Prop :=
  ∀ n, P8911914823274113062.a n = A285306 (n + 1)

theorem P8911914823274113062.correct : P8911914823274113062.Spec := by
  intro n
  simp only [A285306, Nat.add_sub_cancel, A285306.P8911914823274113062.a, A285306.P713584507056425595.a, A016789, A016789.P8277564872725303677.a, A189664, A189664.P1404059983888781989.a, A284777, A284777.P2957116488474719438.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285306

/-! ## A285306.P17440898057206170793

`A005843(n+1)+A005843(n+1)-A284777(n+1)`
-/

namespace A285306.P17440898057206170793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + (A005843 (n + 1) - A284777 (n + 1))

end

end A285306.P17440898057206170793

namespace A285306

/-- `A005843(n+1)+A005843(n+1)-A284777(n+1)` -/
def P17440898057206170793.Spec : Prop :=
  ∀ n, P17440898057206170793.a n = A285306 (n + 1)

theorem P17440898057206170793.correct : P17440898057206170793.Spec := by
  intro n
  simp only [A285306, Nat.add_sub_cancel, A285306.P17440898057206170793.a, A285306.P713584507056425595.a, A005843, A005843.P3167286115683555970.a, A189664, A189664.P1404059983888781989.a, A284777, A284777.P2957116488474719438.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, A189665, A189665.P13427667427402099611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285306

/-! ## A285306.P4436205088800141226

`A284777(n+1)-(A189664(n+1)+A189664(n+1))`
-/

namespace A285306.P4436205088800141226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (n + 1) - (A189664 (n + 1) + A189664 (n + 1))

end

end A285306.P4436205088800141226

namespace A285306

/-- `A284777(n+1)-(A189664(n+1)+A189664(n+1))` -/
def P4436205088800141226.Spec : Prop :=
  ∀ n, P4436205088800141226.a n = A285306 (n + 1)

theorem P4436205088800141226.correct : P4436205088800141226.Spec := by
  intro n
  simp only [A285306, Nat.add_sub_cancel, A285306.P4436205088800141226.a, A285306.P713584507056425595.a, A189664, A189664.P1404059983888781989.a, A284777, A284777.P2957116488474719438.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, A189665, A189665.P13427667427402099611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285306

/-! ## A285306.P4222283019878151529

`A284776(n+2)-1`
-/

namespace A285306.P4222283019878151529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284776 (n + 2) - 1

end

end A285306.P4222283019878151529

namespace A285306

/-- `A284776(n+2)-1` -/
def P4222283019878151529.Spec : Prop :=
  ∀ n, P4222283019878151529.a n = A285306 (n + 1)

end A285306

/-! ## A285306.P17471503778931778167

`∑[2-Δ[A284817(n+1)]]`
-/

namespace A285306.P17471503778931778167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285306.P17471503778931778167

namespace A285306

/-- `∑[2-Δ[A284817(n+1)]]` -/
def P17471503778931778167.Spec : Prop :=
  ∀ n, P17471503778931778167.a n = A285306 (n + 1)

end A285306

/-! ## A285306.P9820015549433085006

`comp[A284777(n+1)-2]+1`
-/

namespace A285306.P9820015549433085006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285306.P9820015549433085006

namespace A285306

/-- `comp[A284777(n+1)-2]+1` -/
def P9820015549433085006.Spec : Prop :=
  ∀ n, (P9820015549433085006.a n : ℤ) = A285306 (n + 1)

end A285306

/-! ## A285306.P18391748844490731479

`2*(n+1)-A284817(n+2)`
-/

namespace A285306.P18391748844490731479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A284817 (n + 2)

end

end A285306.P18391748844490731479

namespace A285306

/-- `2*(n+1)-A284817(n+2)` -/
def P18391748844490731479.Spec : Prop :=
  ∀ n, P18391748844490731479.a n = A285306 (n + 1)

end A285306

/-! ## A285306.P5281285575324022878

`A284777(n+1)-(A284817(n+2)+A284817(n+2))`
-/

namespace A285306.P5281285575324022878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (n + 1) - (A284817 (n + 2) + A284817 (n + 2))

end

end A285306.P5281285575324022878

namespace A285306

/-- `A284777(n+1)-(A284817(n+2)+A284817(n+2))` -/
def P5281285575324022878.Spec : Prop :=
  ∀ n, P5281285575324022878.a n = A285306 (n + 1)

end A285306

/-! ## A285306.P15991919556868081867

`A189665(2*(n+1))-(n+1)`
-/

namespace A285306.P15991919556868081867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A285306.P15991919556868081867

namespace A285306

/-- `A189665(2*(n+1))-(n+1)` -/
def P15991919556868081867.Spec : Prop :=
  ∀ n, P15991919556868081867.a n = A285306 (n + 1)

end A285306

/-!
# A285307: Positions of 1 in A285305; complement of A285306.

The programs for A285307, the canonical program `A285307.P1018427192164928864` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285307 has offset 1).

The definition of A285307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285307.P1018427192164928864

`A284777(n+1)-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A285307

/-- `A284777(n+1)-1` -/
def P1018427192164928864.Spec : Prop :=
  ∀ n, P1018427192164928864.a n = A285307 (n + 1)

theorem P1018427192164928864.correct : P1018427192164928864.Spec := by
  intro n
  simp only [A285307, Nat.add_sub_cancel]

end A285307

/-! ## A285307.P14433766164539435633

`A189666(n+1)-(n+1)`
-/

namespace A285307.P14433766164539435633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1) - (n + 1 : ℤ)

end

end A285307.P14433766164539435633

namespace A285307

/-- `A189666(n+1)-(n+1)` -/
def P14433766164539435633.Spec : Prop :=
  ∀ n, P14433766164539435633.a n = A285307 (n + 1)

theorem P14433766164539435633.correct : P14433766164539435633.Spec := by
  intro n
  simp only [A285307, Nat.add_sub_cancel, A285307.P14433766164539435633.a, A285307.P1018427192164928864.a, A189666, A189666.P13703486958930581488.a, A284777, A284777.P2957116488474719438.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284819, A284819.P13627960389545771610.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, A189665, A189665.P13427667427402099611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285307

/-! ## A285307.P2025624372051831846

`A284819(n+1)-(n+2)`
-/

namespace A285307.P2025624372051831846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284819 (n + 1) - (n + 2 : ℤ)

end

end A285307.P2025624372051831846

namespace A285307

/-- `A284819(n+1)-(n+2)` -/
def P2025624372051831846.Spec : Prop :=
  ∀ n, P2025624372051831846.a n = A285307 (n + 1)

theorem P2025624372051831846.correct : P2025624372051831846.Spec := by
  intro n
  simp only [A285307, Nat.add_sub_cancel, A285307.P2025624372051831846.a, A285307.P1018427192164928864.a, A284777, A284777.P2957116488474719438.a, A284819, A284819.P13627960389545771610.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, A189665, A189665.P13427667427402099611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285307

/-! ## A285307.P15188289970263408393

`A189664(n+1)+Δ[n²]`
-/

namespace A285307.P15188289970263408393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285307.P15188289970263408393

namespace A285307

/-- `A189664(n+1)+Δ[n²]` -/
def P15188289970263408393.Spec : Prop :=
  ∀ n, P15188289970263408393.a n = A285307 (n + 1)

theorem P15188289970263408393.correct : P15188289970263408393.Spec := by
  intro n
  simp only [A285307, Nat.add_sub_cancel, A285307.P15188289970263408393.f1, A285307.P15188289970263408393.a, A285307.P1018427192164928864.a, A189664, A189664.P1404059983888781989.a, A284777, A284777.P2957116488474719438.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, A189665, A189665.P13427667427402099611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285307

/-! ## A285307.P2677806692602936699

`C(2, A287455(n+1))+2*n`
-/

namespace A285307.P2677806692602936699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A287455 (n + 1)).toNat + 2 * n

end

end A285307.P2677806692602936699

namespace A285307

/-- `C(2, A287455(n+1))+2*n` -/
def P2677806692602936699.Spec : Prop :=
  ∀ n, (P2677806692602936699.a n : ℤ) = A285307 (n + 1)

end A285307

/-! ## A285307.P9061294285588154247

`A004767(n)-A285306(n+1)`
-/

namespace A285307.P9061294285588154247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A285306 (n + 1)

end

end A285307.P9061294285588154247

namespace A285307

/-- `A004767(n)-A285306(n+1)` -/
def P9061294285588154247.Spec : Prop :=
  ∀ n, P9061294285588154247.a n = A285307 (n + 1)

theorem P9061294285588154247.correct : P9061294285588154247.Spec := by
  intro n
  simp only [A285307, Nat.add_sub_cancel, A285307.P9061294285588154247.a, A285307.P1018427192164928864.a, A004767, A004767.P13352534504447192883.a, A284777, A284777.P2957116488474719438.a, A285306, A285306.P713584507056425595.a, A189664, A189664.P1404059983888781989.a, A284776, A284776.P12625188356120516945.f1, A284776.P12625188356120516945.a, A284818, A284818.P2162458952130043232.f1, A284818.P2162458952130043232.f2, A284818.P2162458952130043232.a, A189665, A189665.P13427667427402099611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285307

/-! ## A285307.P10297942247783974561

`xor(A088837(n+1), A285306(n+1))`
-/

namespace A285307.P10297942247783974561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A285306 (n + 1))

end

end A285307.P10297942247783974561

namespace A285307

/-- `xor(A088837(n+1), A285306(n+1))` -/
def P10297942247783974561.Spec : Prop :=
  ∀ n, P10297942247783974561.a n = A285307 (n + 1)

end A285307

/-! ## A285307.P17215065432016827625

`∪[A284794(n+1)-1, A284796(n+1)]`
-/

namespace A285307.P17215065432016827625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284794 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A285307.P17215065432016827625

namespace A285307

/-- `∪[A284794(n+1)-1, A284796(n+1)]` -/
def P17215065432016827625.Spec : Prop :=
  ∀ n, (P17215065432016827625.a n : ℤ) = A285307 (n + 1)

end A285307

/-! ## A285307.P690997561281656039

`A000027(C(2, A287455(n+1))+n)+n`
-/

namespace A285307.P690997561281656039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose 2 (A287455 (n + 1)).toNat + n) + (n : ℤ)

end

end A285307.P690997561281656039

namespace A285307

/-- `A000027(C(2, A287455(n+1))+n)+n` -/
def P690997561281656039.Spec : Prop :=
  ∀ n, P690997561281656039.a n = A285307 (n + 1)

end A285307

/-! ## A285307.P2227809232949294203

`comp[A284776(n+1)-1]`
-/

namespace A285307.P2227809232949294203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284776 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A285307.P2227809232949294203

namespace A285307

/-- `comp[A284776(n+1)-1]` -/
def P2227809232949294203.Spec : Prop :=
  ∀ n, (P2227809232949294203.a n : ℤ) = A285307 (n + 1)

end A285307

/-! ## A285307.P10922729115982482906

`xor(1, A284776(n+2))-1`
-/

namespace A285307.P10922729115982482906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A284776 (n + 2)) - 1

end

end A285307.P10922729115982482906

namespace A285307

/-- `xor(1, A284776(n+2))-1` -/
def P10922729115982482906.Spec : Prop :=
  ∀ n, P10922729115982482906.a n = A285307 (n + 1)

end A285307

/-! ## A285307.P14411100208904589966

`A284817(n+2)+Δ[n²]`
-/

namespace A285307.P14411100208904589966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (n + 2) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285307.P14411100208904589966

namespace A285307

/-- `A284817(n+2)+Δ[n²]` -/
def P14411100208904589966.Spec : Prop :=
  ∀ n, P14411100208904589966.a n = A285307 (n + 1)

end A285307

/-! ## A285307.P8387780781399901525

`A005843(n+1)+A284817(n+2)-1`
-/

namespace A285307.P8387780781399901525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + (A284817 (n + 2) - 1)

end

end A285307.P8387780781399901525

namespace A285307

/-- `A005843(n+1)+A284817(n+2)-1` -/
def P8387780781399901525.Spec : Prop :=
  ∀ n, P8387780781399901525.a n = A285307 (n + 1)

end A285307

/-! ## A285307.P14159197472256180795

`2*A005843(n+1)-A284776(n+2)`
-/

namespace A285307.P14159197472256180795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005843 (n + 1) - A284776 (n + 2)

end

end A285307.P14159197472256180795

namespace A285307

/-- `2*A005843(n+1)-A284776(n+2)` -/
def P14159197472256180795.Spec : Prop :=
  ∀ n, P14159197472256180795.a n = A285307 (n + 1)

end A285307

/-! ## A285307.P5250173180676594590

`A284776(n+1)+A284817(n+1)+A284817(n+2)`
-/

namespace A285307.P5250173180676594590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284776 (n + 1) + (A284817 (n + 1) + A284817 (n + 2))

end

end A285307.P5250173180676594590

namespace A285307

/-- `A284776(n+1)+A284817(n+1)+A284817(n+2)` -/
def P5250173180676594590.Spec : Prop :=
  ∀ n, P5250173180676594590.a n = A285307 (n + 1)

end A285307

/-! ## A285307.P8798400989990282101

`eq[1, A284775(n+1)]`
-/

namespace A285307.P8798400989990282101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285307.P8798400989990282101

namespace A285307

/-- `eq[1, A284775(n+1)]` -/
def P8798400989990282101.Spec : Prop :=
  ∀ n, (P8798400989990282101.a n : ℤ) = A285307 (n + 1)

end A285307

/-! ## A285307.P4182236162964011215

`filter[n+1, A285305(#)]`
-/

namespace A285307.P4182236162964011215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285305 (f1 j) = 1) n)

end

end A285307.P4182236162964011215

namespace A285307

/-- `filter[n+1, A285305(#)]` -/
def P4182236162964011215.Spec : Prop :=
  ∀ n, (P4182236162964011215.a n : ℤ) = A285307 (n + 1)

end A285307

/-!
# A285309: Sum of nonsquare divisors of n.

The programs for A285309, the canonical program `A285309.P12080858862407877190` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285309 has offset 1).

The definition of A285309 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285309.P12080858862407877190

`A000203(n+1)-A035316(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285309

/-- `A000203(n+1)-A035316(n+1)` -/
def P12080858862407877190.Spec : Prop :=
  ∀ n, P12080858862407877190.a n = A285309 (n + 1)

theorem P12080858862407877190.correct : P12080858862407877190.Spec := by
  intro n
  simp only [A285309, Nat.add_sub_cancel]

end A285309

/-! ## A285309.P6785343632157245707

`n+1+A326059(n+1)`
-/

namespace A285309.P6785343632157245707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A326059 (n + 1)

end

end A285309.P6785343632157245707

namespace A285309

/-- `n+1+A326059(n+1)` -/
def P6785343632157245707.Spec : Prop :=
  ∀ n, P6785343632157245707.a n = A285309 (n + 1)

theorem P6785343632157245707.correct : P6785343632157245707.Spec := by
  intro n
  simp only [A285309, Nat.add_sub_cancel, A285309.P6785343632157245707.a, A285309.P12080858862407877190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A326059, A326059.P8887039783102292576.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285309

/-! ## A285309.P381935054466319407

`∑{d}[n+1, #*A049240(#)]`
-/

namespace A285309.P381935054466319407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A049240 d

end

end A285309.P381935054466319407

namespace A285309

/-- `∑{d}[n+1, #*A049240(#)]` -/
def P381935054466319407.Spec : Prop :=
  ∀ n, P381935054466319407.a n = A285309 (n + 1)

end A285309

/-! ## A285309.P15389962666460329904

`∑{d}[n+1, #*A267635(#)]`
-/

namespace A285309.P15389962666460329904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A267635 d

end

end A285309.P15389962666460329904

namespace A285309

/-- `∑{d}[n+1, #*A267635(#)]` -/
def P15389962666460329904.Spec : Prop :=
  ∀ n, P15389962666460329904.a n = A285309 (n + 1)

end A285309

/-! ## A285309.P12338615390826494966

`A326058(n+1)+A001065(n+1)`
-/

namespace A285309.P12338615390826494966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326058 (n + 1) + A001065 (n + 1)

end

end A285309.P12338615390826494966

namespace A285309

/-- `A326058(n+1)+A001065(n+1)` -/
def P12338615390826494966.Spec : Prop :=
  ∀ n, P12338615390826494966.a n = A285309 (n + 1)

theorem P12338615390826494966.correct : P12338615390826494966.Spec := by
  intro n
  simp only [A285309, Nat.add_sub_cancel, A285309.P12338615390826494966.a, A285309.P12080858862407877190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A326058, A326058.P945554037685919267.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285309

/-! ## A285309.P4925272775975567217

`abs(A035316(n+1)-(A039653(n+1)+1))`
-/

namespace A285309.P4925272775975567217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A035316 (n + 1) - (A039653 (n + 1) + 1)|

end

end A285309.P4925272775975567217

namespace A285309

/-- `abs(A035316(n+1)-(A039653(n+1)+1))` -/
def P4925272775975567217.Spec : Prop :=
  ∀ n, P4925272775975567217.a n = A285309 (n + 1)

end A285309

/-! ## A285309.P11136853727388380046

`A000203(n+1)-∑{d}[A000188(n+1), #²]`
-/

namespace A285309.P11136853727388380046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2 : ℕ) : ℤ)

end

end A285309.P11136853727388380046

namespace A285309

/-- `A000203(n+1)-∑{d}[A000188(n+1), #²]` -/
def P11136853727388380046.Spec : Prop :=
  ∀ n, P11136853727388380046.a n = A285309 (n + 1)

end A285309

/-! ## A285309.P4510609610757534165

`A001065(n+1)+1+n-A035316(n+1)`
-/

namespace A285309.P4510609610757534165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A035316 (n + 1)

end

end A285309.P4510609610757534165

namespace A285309

/-- `A001065(n+1)+1+n-A035316(n+1)` -/
def P4510609610757534165.Spec : Prop :=
  ∀ n, P4510609610757534165.a n = A285309 (n + 1)

theorem P4510609610757534165.correct : P4510609610757534165.Spec := by
  intro n
  simp only [A285309, Nat.add_sub_cancel, A285309.P4510609610757534165.a, A285309.P12080858862407877190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285309

/-! ## A285309.P10582446010140718008

`A000203(n+1)+A326058(n+1)-(n+1)`
-/

namespace A285309.P10582446010140718008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A326058 (n + 1) - (n + 1 : ℤ))

end

end A285309.P10582446010140718008

namespace A285309

/-- `A000203(n+1)+A326058(n+1)-(n+1)` -/
def P10582446010140718008.Spec : Prop :=
  ∀ n, P10582446010140718008.a n = A285309 (n + 1)

theorem P10582446010140718008.correct : P10582446010140718008.Spec := by
  intro n
  simp only [A285309, Nat.add_sub_cancel, A285309.P10582446010140718008.a, A285309.P12080858862407877190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A326058, A326058.P945554037685919267.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285309

/-! ## A285309.P13700130476952751849

`2*(n+1)-A033879(n+1)-A035316(n+1)`
-/

namespace A285309.P13700130476952751849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A035316 (n + 1)

end

end A285309.P13700130476952751849

namespace A285309

/-- `2*(n+1)-A033879(n+1)-A035316(n+1)` -/
def P13700130476952751849.Spec : Prop :=
  ∀ n, P13700130476952751849.a n = A285309 (n + 1)

theorem P13700130476952751849.correct : P13700130476952751849.Spec := by
  intro n
  simp only [A285309, Nat.add_sub_cancel, A285309.P13700130476952751849.a, A285309.P12080858862407877190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P11735613842914743111.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A033880, A033880.P6005875780263802708.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A001065, A001065.P4097147489331274860.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285309

/-! ## A285309.P12602386318382931544

`A000203(n+1)-A001157(A000188(n+1))`
-/

namespace A285309.P12602386318382931544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A001157 (A000188 (n + 1)).toNat

end

end A285309.P12602386318382931544

namespace A285309

/-- `A000203(n+1)-A001157(A000188(n+1))` -/
def P12602386318382931544.Spec : Prop :=
  ∀ n, P12602386318382931544.a n = A285309 (n + 1)

end A285309

/-! ## A285309.P2535015082540138754

`A034448(n+1)+A048146(n+1)-A035316(n+1)`
-/

namespace A285309.P2535015082540138754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A035316 (n + 1))

end

end A285309.P2535015082540138754

namespace A285309

/-- `A034448(n+1)+A048146(n+1)-A035316(n+1)` -/
def P2535015082540138754.Spec : Prop :=
  ∀ n, P2535015082540138754.a n = A285309 (n + 1)

theorem P2535015082540138754.correct : P2535015082540138754.Spec := by
  intro n
  simp only [A285309, Nat.add_sub_cancel, A285309.P2535015082540138754.a, A285309.P12080858862407877190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A048146, A048146.P9985884013456677192.a, A037213, A037213.P7544062464691828526.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285309

/-! ## A285309.P11345995054764030981

`A000593(n+1)+A146076(n+1)-A035316(n+1)`
-/

namespace A285309.P11345995054764030981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A035316 (n + 1))

end

end A285309.P11345995054764030981

namespace A285309

/-- `A000593(n+1)+A146076(n+1)-A035316(n+1)` -/
def P11345995054764030981.Spec : Prop :=
  ∀ n, P11345995054764030981.a n = A285309 (n + 1)

theorem P11345995054764030981.correct : P11345995054764030981.Spec := by
  intro n
  simp only [A285309, Nat.add_sub_cancel, A285309.P11345995054764030981.a, A285309.P12080858862407877190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P13640346029616979906.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A146076, A146076.P5513778411624192836.a, A037213, A037213.P7544062464691828526.a, A038712, A038712.P3404197303190209645.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285309

/-! ## A285309.P5497969293981660457

`A082895(n+1)-(A082901(n+1)+A035316(n+1))`
-/

namespace A285309.P5497969293981660457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082895 (n + 1) - (A082901 (n + 1) + A035316 (n + 1))

end

end A285309.P5497969293981660457

namespace A285309

/-- `A082895(n+1)-(A082901(n+1)+A035316(n+1))` -/
def P5497969293981660457.Spec : Prop :=
  ∀ n, P5497969293981660457.a n = A285309 (n + 1)

theorem P5497969293981660457.correct : P5497969293981660457.Spec := by
  intro n
  simp only [A285309, Nat.add_sub_cancel, A285309.P5497969293981660457.a, A285309.P12080858862407877190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A082895, A082895.P6993738446012556406.f1, A082895.P6993738446012556406.a, A082901, A082901.P13729791713076633821.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285309

/-! ## A285309.P4276559955296311399

`A079667(n+1)+A117004(n+1)-A035316(n+1)`
-/

namespace A285309.P4276559955296311399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + (A117004 (n + 1) - A035316 (n + 1))

end

end A285309.P4276559955296311399

namespace A285309

/-- `A079667(n+1)+A117004(n+1)-A035316(n+1)` -/
def P4276559955296311399.Spec : Prop :=
  ∀ n, P4276559955296311399.a n = A285309 (n + 1)

end A285309

/-! ## A285309.P16958066451918230539

`A023889(n+1)+A178637(n+1)-A035316(n+1)`
-/

namespace A285309.P16958066451918230539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1) + (A178637 (n + 1) - A035316 (n + 1))

end

end A285309.P16958066451918230539

namespace A285309

/-- `A023889(n+1)+A178637(n+1)-A035316(n+1)` -/
def P16958066451918230539.Spec : Prop :=
  ∀ n, P16958066451918230539.a n = A285309 (n + 1)

theorem P16958066451918230539.correct : P16958066451918230539.Spec := by
  intro n
  simp only [A285309, Nat.add_sub_cancel, A285309.P16958066451918230539.a, A285309.P12080858862407877190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023889, A023889.P17073280978498141665.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A178637, A178637.P1570303736559003244.a, A023888, A023888.P17873500436284849145.a, A035321, A035321.P11913534039744093094.f1, A035321.P11913534039744093094.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A074591, A074591.P7866340962004254295.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285309

/-! ## A285309.P1156584838628736349

`A326058(n+1)+A326126(n+1)-A326128(n+1)`
-/

namespace A285309.P1156584838628736349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326058 (n + 1) + (A326126 (n + 1) - A326128 (n + 1))

end

end A285309.P1156584838628736349

namespace A285309

/-- `A326058(n+1)+A326126(n+1)-A326128(n+1)` -/
def P1156584838628736349.Spec : Prop :=
  ∀ n, P1156584838628736349.a n = A285309 (n + 1)

theorem P1156584838628736349.correct : P1156584838628736349.Spec := by
  intro n
  simp only [A285309, Nat.add_sub_cancel, A285309.P1156584838628736349.a, A285309.P12080858862407877190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A326058, A326058.P945554037685919267.a, A326126, A326126.P126110095243043684.a, A326128, A326128.P4962900157914824511.a, A007913, A007913.P11359412940648999332.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285309

/-!
# A285311: Expansion of Product_{k>=0} 1/(1 + x^(4*k+3))^(4*k+3).

The programs for A285311, there is no canonical definition to state claims against.
-/

/-! ## A285311.P5102206817555847267

`(-1)^n*A285131(n)`
-/

namespace A285311.P5102206817555847267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A285131 n

end

end A285311.P5102206817555847267

/-! ## A285311.P11835240198061610282

`A285131(n)/A165326(n+1)`
-/

namespace A285311.P11835240198061610282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285131 n : ℚ) / (A165326 (n + 1) : ℚ)

end

end A285311.P11835240198061610282

/-! ## A285311.P12835170752496273981

`-(A130815(3*(n+1))*A285131(n))`
-/

namespace A285311.P12835170752496273981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A130815 (3 * (n + 1)) * A285131 n)

end

end A285311.P12835170752496273981

/-! ## A285311.P18204738671793918329

`-(A165326(3*n+2)*A285131(n))`
-/

namespace A285311.P18204738671793918329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A165326 (3 * n + 2) * A285131 n)

end

end A285311.P18204738671793918329

/-! ## A285311.P6663870801223426851

`A285131(n)/A009001(A005843(n))`
-/

namespace A285311.P6663870801223426851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285131 n : ℚ) / (A009001 (A005843 n).toNat : ℚ)

end

end A285311.P6663870801223426851

/-!
# A285312: Records in A240751.

The programs for A285312, there is no canonical definition to state claims against.
-/

/-! ## A285312.P13765877972240271851

`record[A240751(n+1)]`
-/

namespace A285312.P13765877972240271851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285312.P13765877972240271851

/-! ## A285312.P1680382133229664863

`record[A284051(n+1)+(n+1)*A284050(n+1)]`
-/

namespace A285312.P1680382133229664863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284051 (n + 1) + (n + 1 : ℤ) * A284050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285312.P1680382133229664863

/-!
# A285313: Number of pairs (a,b) such that a*b = n and d(a) = d(b) with d = A000005 and a <= b.

The programs for A285313, there is no canonical definition to state claims against.
-/

/-! ## A285313.P14495617280408274932

`and(A293207(A046523(n+1)), A318809(n+1))`
-/

namespace A285313.P14495617280408274932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A293207 (A046523 (n + 1)).toNat) (A318809 (n + 1))

end

end A285313.P14495617280408274932

/-! ## A285313.P6418477212394579014

`A349295(A016007(n+1))%3`
-/

namespace A285313.P6418477212394579014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349295 (A016007 (n + 1)).toNat) 3

end

end A285313.P6418477212394579014

/-! ## A285313.P2501708487465899965

`A345416(A182139(n+1))`
-/

namespace A285313.P2501708487465899965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345416 (A182139 (n + 1)).toNat

end

end A285313.P2501708487465899965

/-! ## A285313.P10794771824392471326

`A287341(A008619(A111221(n+1)))`
-/

namespace A285313.P10794771824392471326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287341 (A008619 (A111221 (n + 1)).toNat).toNat

end

end A285313.P10794771824392471326

/-! ## A285313.P7976020357002530865

`and(A240698(A300830(n+1)), A320655(n+1))`
-/

namespace A285313.P7976020357002530865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A240698 (A300830 (n + 1)).toNat) (A320655 (n + 1))

end

end A285313.P7976020357002530865

/-!
# A285315: Numbers n for which A019565(n) < n.

The programs for A285315, there is no canonical definition to state claims against.
-/

/-! ## A285315.P17531188669619322487

`lt[A303760(A303768(n)), n]`
-/

namespace A285315.P17531188669619322487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 (A303768 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285315.P17531188669619322487

/-! ## A285315.P11940815493650080226

`lt[A019565(n), n]`
-/

namespace A285315.P11940815493650080226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285315.P11940815493650080226

/-! ## A285315.P3593178857018832774

`lt[A339809(n), n]`
-/

namespace A285315.P3593178857018832774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285315.P3593178857018832774

/-! ## A285315.P4884824102409288692

`comp[A285316(n+1)]`
-/

namespace A285315.P4884824102409288692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A285315.P4884824102409288692

/-! ## A285315.P11081830252473047017

`lt[A334110(n), n²]`
-/

namespace A285315.P11081830252473047017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334110 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285315.P11081830252473047017

/-! ## A285315.P15503925131351365206

`eq[A019565(n)%A028310(n), A019565(n)]`
-/

namespace A285315.P15503925131351365206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019565 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285315.P15503925131351365206

/-! ## A285315.P16502312097890825510

`lt[A304087(A304084(n)), n]`
-/

namespace A285315.P16502312097890825510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 (A304084 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285315.P16502312097890825510

/-! ## A285315.P16554576963020787797

`lt[A303770(A303774(n)), n]`
-/

namespace A285315.P16554576963020787797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 (A303774 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285315.P16554576963020787797

/-!
# A285316: Numbers k for which A019565(k) > k.

The programs for A285316, there is no canonical definition to state claims against.
-/

/-! ## A285316.P17095006639103550908

`comp[A285315(n+1)]`
-/

namespace A285316.P17095006639103550908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A285316.P17095006639103550908

/-! ## A285316.P4472115702526964688

`lt[n, A019565(n)]`
-/

namespace A285316.P4472115702526964688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285316.P4472115702526964688

/-! ## A285316.P4305429771015273088

`lt[n², A334110(n)]`
-/

namespace A285316.P4305429771015273088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285316.P4305429771015273088

/-! ## A285316.P10351957753232797111

`lt[n, A339809(n)+1]`
-/

namespace A285316.P10351957753232797111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285316.P10351957753232797111

/-! ## A285316.P11461884369491546499

`lt[n, A304087(A304084(n))]`
-/

namespace A285316.P11461884369491546499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 (A304084 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285316.P11461884369491546499

/-! ## A285316.P10130412825000668063

`lt[n, A303770(A303774(n))]`
-/

namespace A285316.P10130412825000668063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 (A303774 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285316.P10130412825000668063

/-! ## A285316.P3138213792596757931

`lt[n, A344085(n+1)]`
-/

namespace A285316.P3138213792596757931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285316.P3138213792596757931

/-! ## A285316.P7964469680828981688

`lt[n, A000040(A194445(n+1))]`
-/

namespace A285316.P7964469680828981688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A194445 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285316.P7964469680828981688

/-! ## A285316.P4063467978034979501

`lt[A066336(n), A170838(n)]`
-/

namespace A285316.P4063467978034979501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066336 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170838 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285316.P4063467978034979501

/-! ## A285316.P16975173784448611321

`lt[n, A000040(A241717(n))]`
-/

namespace A285316.P16975173784448611321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A241717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285316.P16975173784448611321

/-!
# A285317: Squarefree numbers n for which A019565(n) < n.

The programs for A285317, there is no canonical definition to state claims against.
-/

/-! ## A285317.P10068410666815275440

`A019565(A285318(n+1))`
-/

namespace A285317.P10068410666815275440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A285318 (n + 1)).toNat

end

end A285317.P10068410666815275440

/-! ## A285317.P4851299065122138952

`record[A007947(A285315(n+4))]`
-/

namespace A285317.P4851299065122138952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A285315 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285317.P4851299065122138952

/-! ## A285317.P15640691262315845331

`filter[A285315(n+1), A008966(#)]`
-/

namespace A285317.P15640691262315845331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A285317.P15640691262315845331

/-! ## A285317.P7991277746869607774

`∩[A005117(n+1), A285315(n+1)]`
-/

namespace A285317.P7991277746869607774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285317.P7991277746869607774

/-! ## A285317.P17634653624295698221

`filter[A285315(n+1), A323154(#)]`
-/

namespace A285317.P17634653624295698221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A285317.P17634653624295698221

/-! ## A285317.P18206950821885946918

`∩[A285315(n+1), A366882(n+1)]`
-/

namespace A285317.P18206950821885946918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285317.P18206950821885946918

/-! ## A285317.P11723783949373661289

`∩[A064594(n+1), A285315(n+1)]`
-/

namespace A285317.P11723783949373661289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285317.P11723783949373661289

/-! ## A285317.P5833151863243960598

`∩[A144338(n+1), A285315(n+1)]`
-/

namespace A285317.P5833151863243960598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285317.P5833151863243960598

/-! ## A285317.P5905335004392350148

`∩[A167207(n+1), A285315(n+1)]`
-/

namespace A285317.P5905335004392350148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285317.P5905335004392350148

/-! ## A285317.P11230782514320672567

`∩[A285315(n+1), A348961(n+1)]`
-/

namespace A285317.P11230782514320672567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A285317.P11230782514320672567

/-!
# A285318: a(n) = A048675(A285317(n)).

The programs for A285318, there is no canonical definition to state claims against.
-/

/-! ## A285318.P3150048592048574905

`A048675(A285317(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285318.P3150048592048574905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A285317 (n + 1)).toNat

end

end A285318.P3150048592048574905

/-! ## A285318.P9928646770764552556

`∑{p}[A285317(n+1), A285330(#)]`
-/

namespace A285318.P9928646770764552556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A285330 p

end

end A285318.P9928646770764552556

/-! ## A285318.P12218920284174448412

`∑{p}[A285317(n+1), A297108(#)]`
-/

namespace A285318.P12218920284174448412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297108 p

end

end A285318.P12218920284174448412

/-!
# A285319: Squarefree numbers n for which A019565(n) < n and A048675(n) is also squarefree.

The programs for A285319, there is no canonical definition to state claims against.
-/

/-! ## A285319.P11165187211852782041

`A132720(n+8)+A000034(A206481(3*n+14))`
-/

namespace A285319.P11165187211852782041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132720 (n + 8) + A000034 (A206481 (3 * n + 14)).toNat

end

end A285319.P11165187211852782041

/-!
# A285320: If n == 0 or A008683(n) == 0, then a(n) = 0, otherwise a(n) = 1+a(A048675(n)); number of iterations of A048675 needed before the result is either zero or nonsquarefree number (A013929).

The programs for A285320, there is no canonical definition to state claims against.
-/

/-! ## A285320.P6859154921671019249

`and(n, A273102(A277330(n)))`
-/

namespace A285320.P6859154921671019249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A273102 (A277330 n).toNat)

end

end A285320.P6859154921671019249

/-! ## A285320.P17383572140640563584

`and(n, A040949(A023652(n+1)))`
-/

namespace A285320.P17383572140640563584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A040949 (A023652 (n + 1)).toNat)

end

end A285320.P17383572140640563584

/-! ## A285320.P7344117486731714902

`and(n, A087308(A354206(n+2)))`
-/

namespace A285320.P7344117486731714902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A087308 (A354206 (n + 2)).toNat)

end

end A285320.P7344117486731714902

/-! ## A285320.P15266528367144729687

`and(n, A237593(A237642(n+2)))`
-/

namespace A285320.P15266528367144729687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A237593 (A237642 (n + 2)).toNat)

end

end A285320.P15266528367144729687

/-! ## A285320.P6322818418078996705

`and(n, A124734(A052087(n+3)))`
-/

namespace A285320.P6322818418078996705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A124734 (A052087 (n + 3)).toNat)

end

end A285320.P6322818418078996705

/-!
# A285321: Square array A(1,k) = A019565(k), A(n,k) = A065642(A(n-1,k)), read by descending antidiagonals.

The programs for A285321, there is no canonical definition to state claims against.
-/

/-! ## A285321.P4085054005152947895

`A285322(∑[char[∑[n]]]²-n)`
-/

namespace A285321.P4085054005152947895
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285322 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A285321.P4085054005152947895

/-! ## A285321.P14703205079892117739

`or(char[1], A285322(A038722(n+1)))`
-/

namespace A285321.P14703205079892117739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A285322 (A038722 (n + 1)).toNat)

end

end A285321.P14703205079892117739

/-! ## A285321.P4601581167965357902

`A285322(A038722(n+1))%A016791(n)`
-/

namespace A285321.P4601581167965357902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285322 (A038722 (n + 1)).toNat) (A016791 n)

end

end A285321.P4601581167965357902

/-! ## A285321.P11660832325729717463

`gcd(A000038(n), A285322(A038722(n+1)))`
-/

namespace A285321.P11660832325729717463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A285322 (A038722 (n + 1)).toNat)

end

end A285321.P11660832325729717463

/-! ## A285321.P13726392202730661323

`lcm(A020985(n), A285322(A038722(n+1)))`
-/

namespace A285321.P13726392202730661323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A285322 (A038722 (n + 1)).toNat)

end

end A285321.P13726392202730661323

/-! ## A285321.P3848030583524559254

`∑{d}[A285322(A038722(n+1)), A000010(#)]`
-/

namespace A285321.P3848030583524559254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285322 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A285321.P3848030583524559254

/-! ## A285321.P10660275857302238810

`A007318(∑[n])*A285322(A038722(n+1))`
-/

namespace A285321.P10660275857302238810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A285322 (A038722 (n + 1)).toNat

end

end A285321.P10660275857302238810

/-! ## A285321.P12058534428851097847

`A285322(A038722(n+1))/A007318(C(2, n))`
-/

namespace A285321.P12058534428851097847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285322 (A038722 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A285321.P12058534428851097847

/-! ## A285321.P13281424641499374634

`∏{p}[n, A001221(#)]*A285322(A038722(n+1))`
-/

namespace A285321.P13281424641499374634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A285322 (A038722 (n + 1)).toNat

end

end A285321.P13281424641499374634

/-! ## A285321.P4823419420992138886

`A285322(A038722(n+1))+(2*A006530(n+2))%2`
-/

namespace A285321.P4823419420992138886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285322 (A038722 (n + 1)).toNat + Int.tmod (2 * A006530 (n + 2)) 2

end

end A285321.P4823419420992138886

/-!
# A285322: Transpose of square array A285321.

The programs for A285322, there is no canonical definition to state claims against.
-/

/-! ## A285322.P4025746869603453546

`A285321(∑[char[∑[n]]]²-n)`
-/

namespace A285322.P4025746869603453546
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285321 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A285322.P4025746869603453546

/-! ## A285322.P17290686116799581644

`and(-1, A285321(A038722(n+1)))`
-/

namespace A285322.P17290686116799581644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A285321 (A038722 (n + 1)).toNat)

end

end A285322.P17290686116799581644

/-! ## A285322.P7072801145961996134

`A285321(A038722(n+1))%A016901(n)`
-/

namespace A285322.P7072801145961996134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285321 (A038722 (n + 1)).toNat) (A016901 n)

end

end A285322.P7072801145961996134

/-! ## A285322.P16515309040117283459

`gcd(A000038(n), A285321(A038722(n+1)))`
-/

namespace A285322.P16515309040117283459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A285321 (A038722 (n + 1)).toNat)

end

end A285322.P16515309040117283459

/-! ## A285322.P194732578646264346

`lcm(A057077(n), A285321(A038722(n+1)))`
-/

namespace A285322.P194732578646264346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A285321 (A038722 (n + 1)).toNat)

end

end A285322.P194732578646264346

/-! ## A285322.P8616870614328711623

`A033999(n)²*A285321(A038722(n+1))`
-/

namespace A285322.P8616870614328711623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A285321 (A038722 (n + 1)).toNat

end

end A285322.P8616870614328711623

/-! ## A285322.P1046518512241027231

`A007318(C(2, n))*A285321(A038722(n+1))`
-/

namespace A285322.P1046518512241027231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A285321 (A038722 (n + 1)).toNat

end

end A285322.P1046518512241027231

/-! ## A285322.P667052651923956285

`A285321(A038722(n+1))^A014963(8*n+12)`
-/

namespace A285322.P667052651923956285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285321 (A038722 (n + 1)).toNat : ℚ) ^ (A014963 (8 * n + 12) : ℤ)

end

end A285322.P667052651923956285

/-! ## A285322.P11935489735037660029

`A007318(C(n, 64))+A285321(A038722(n+1))-1`
-/

namespace A285322.P11935489735037660029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 64) + (A285321 (A038722 (n + 1)).toNat - 1)

end

end A285322.P11935489735037660029

/-! ## A285322.P667733679119999775

`A000045(ceil((n+1)/98))*A285321(A038722(n+1))`
-/

namespace A285322.P667733679119999775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(n + 1 : ℚ) / 98⌉.toNat * A285321 (A038722 (n + 1)).toNat

end

end A285322.P667733679119999775

/-!
# A285323: a(n) = A065642(A065642(A019565(n))) / A019565(n).

The programs for A285323, there is no canonical definition to state claims against.
-/

/-! ## A285323.P1053555697328953287

`A065642(A065642(A019565(n)))/A019565(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285323.P1053555697328953287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065642 (A065642 (A019565 n).toNat).toNat : ℚ) / (A019565 n : ℚ)

end

end A285323.P1053555697328953287

/-! ## A285323.P9513245407593947906

`A034684(A019565(n)*A034684(A019565(n)))`
-/

namespace A285323.P9513245407593947906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A019565 n * A034684 (A019565 n).toNat).toNat

end

end A285323.P9513245407593947906

/-! ## A285323.P17088071648418971729

`A223490(A019565(n)*A020639(A019565(n)))`
-/

namespace A285323.P17088071648418971729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (A019565 n * A020639 (A019565 n).toNat).toNat

end

end A285323.P17088071648418971729

/-! ## A285323.P714986968782162866

`A223490(A019565(n)*A223490(A019565(n)))`
-/

namespace A285323.P714986968782162866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (A019565 n * A223490 (A019565 n).toNat).toNat

end

end A285323.P714986968782162866

/-! ## A285323.P14551521930782011937

`A292269(A019565(n)^A285110(n))`
-/

namespace A285323.P14551521930782011937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (SequenceMachineLib.roundAway ((A019565 n : ℚ) ^ (A285110 n : ℤ))).toNat

end

end A285323.P14551521930782011937

/-!
# A285324: a(n) = A000523(A285327(n)-n).

The programs for A285324, there is no canonical definition to state claims against.
-/

/-! ## A285324.P17077005399531451428

`A000523(A285327(n+1)-(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285324.P17077005399531451428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A285327 (n + 1) - (n + 1 : ℤ)).toNat

end

end A285324.P17077005399531451428

/-! ## A285324.P2421167060313933212

`A277892(A285323(n+1))`
-/

namespace A285324.P2421167060313933212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (A285323 (n + 1)).toNat

end

end A285324.P2421167060313933212

/-! ## A285324.P1166135886939157460

`A285099(A285327(n+1)-n)`
-/

namespace A285324.P1166135886939157460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A285327 (n + 1) - (n : ℤ)).toNat

end

end A285324.P1166135886939157460

/-! ## A285324.P17473119869775549669

`A001222(A285327(n+1)-(n+1))`
-/

namespace A285324.P17473119869775549669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A285327 (n + 1) - (n + 1 : ℤ)).toNat

end

end A285324.P17473119869775549669

/-! ## A285324.P10425629651234421121

`A007814(A285327(n+1)-(n+1))`
-/

namespace A285324.P10425629651234421121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A285327 (n + 1) - (n + 1 : ℤ)).toNat

end

end A285324.P10425629651234421121

/-! ## A285324.P3565582848196963494

`A000120(A285327(n+1)-(n+2))`
-/

namespace A285324.P3565582848196963494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A285327 (n + 1) - (n + 2 : ℤ)).toNat

end

end A285324.P3565582848196963494

/-! ## A285324.P8402955152080500127

`A280274(A285327(n+1)-(n-1))`
-/

namespace A285324.P8402955152080500127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280274 (A285327 (n + 1) - ((n : ℤ) - 1)).toNat

end

end A285324.P8402955152080500127

/-! ## A285324.P14978333714233882997

`A285097(A285327(n+1)-n)`
-/

namespace A285324.P14978333714233882997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A285327 (n + 1) - (n : ℤ)).toNat

end

end A285324.P14978333714233882997

/-! ## A285324.P1676365648059472138

`A048675(A285327(n+1)-(n+1))`
-/

namespace A285324.P1676365648059472138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A285327 (n + 1) - (n + 1 : ℤ)).toNat

end

end A285324.P1676365648059472138

/-! ## A285324.P851500922846353634

`A285333(A285327(n+1)-(n+2))`
-/

namespace A285324.P851500922846353634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 (A285327 (n + 1) - (n + 2 : ℤ)).toNat

end

end A285324.P851500922846353634

/-! ## A285324.P3464316886382059732

`A276075(A285327(n+1)-(n+1))`
-/

namespace A285324.P3464316886382059732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276075 (A285327 (n + 1) - (n + 1 : ℤ)).toNat

end

end A285324.P3464316886382059732

/-!
# A285325: Square array A(n,k) = A048675(A285321(n,k)), read by descending antidiagonals: A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A285325, there is no canonical definition to state claims against.
-/

/-! ## A285325.P3268793641717357085

`A048675(A285321(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285325.P3268793641717357085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A285321 (n + 1)).toNat

end

end A285325.P3268793641717357085

/-! ## A285325.P1842368843903440381

`∑{d}[A285321(n+1), A297108(#)]`
-/

namespace A285325.P1842368843903440381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d

end

end A285325.P1842368843903440381

/-! ## A285325.P18432668492611378280

`∑{d}[A297374(n+1), A213731(#)]`
-/

namespace A285325.P18432668492611378280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A213731 d

end

end A285325.P18432668492611378280

/-! ## A285325.P15743521951753919187

`A179751(or(A062860(n), A246260(n+1)))`
-/

namespace A285325.P15743521951753919187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179751 (Int.lor (A062860 n) (A246260 (n + 1))).toNat

end

end A285325.P15743521951753919187

/-! ## A285325.P13708882342594265222

`A361197(A301841(n+1))`
-/

namespace A285325.P13708882342594265222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361197 (A301841 (n + 1)).toNat

end

end A285325.P13708882342594265222

/-!
# A285326: a(0) = 0, for n > 0, a(n) = n + A006519(n).

The programs for A285326, the canonical program `A285326.P1726867562295019053` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285326 has offset 0).

The definition of A285326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285326.P1726867562295019053

`2*A140472(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285326

/-- `2*A140472(n)` -/
def P1726867562295019053.Spec : Prop :=
  ∀ n, P1726867562295019053.a n = A285326 n

theorem P1726867562295019053.correct : P1726867562295019053.Spec := by
  intro n
  simp only [A285326]

end A285326

/-! ## A285326.P9209576632606037431

`A048675(A065642(A019565(n)))`
-/

namespace A285326.P9209576632606037431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A065642 (A019565 n).toNat).toNat

end

end A285326.P9209576632606037431

namespace A285326

/-- `A048675(A065642(A019565(n)))` -/
def P9209576632606037431.Spec : Prop :=
  ∀ n, P9209576632606037431.a n = A285326 n

end A285326

/-! ## A285326.P15458121821220839217

`and(n, -n)+n`
-/

namespace A285326.P15458121821220839217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) + (n : ℤ)

end

end A285326.P15458121821220839217

namespace A285326

/-- `and(n, -n)+n` -/
def P15458121821220839217.Spec : Prop :=
  ∀ n, P15458121821220839217.a n = A285326 n

end A285326

/-! ## A285326.P9735080997749845730

`n-or(n, -n)`
-/

namespace A285326.P9735080997749845730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor (n : ℤ) (-(n : ℤ))

end

end A285326.P9735080997749845730

namespace A285326

/-- `n-or(n, -n)` -/
def P9735080997749845730.Spec : Prop :=
  ∀ n, P9735080997749845730.a n = A285326 n

end A285326

/-! ## A285326.P17500217030466351456

`or(n, n-1)+1`
-/

namespace A285326.P17500217030466351456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + 1

end

end A285326.P17500217030466351456

namespace A285326

/-- `or(n, n-1)+1` -/
def P17500217030466351456.Spec : Prop :=
  ∀ n, P17500217030466351456.a n = A285326 n

end A285326

/-! ## A285326.P11568021321035498706

`abs(or(n, -n))+n`
-/

namespace A285326.P11568021321035498706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (-(n : ℤ))| + (n : ℤ)

end

end A285326.P11568021321035498706

namespace A285326

/-- `abs(or(n, -n))+n` -/
def P11568021321035498706.Spec : Prop :=
  ∀ n, P11568021321035498706.a n = A285326 n

end A285326

/-! ## A285326.P3796004572626343252

`-xor(n, or(n, -n))`
-/

namespace A285326.P3796004572626343252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (Int.lor (n : ℤ) (-(n : ℤ)))

end

end A285326.P3796004572626343252

namespace A285326

/-- `-xor(n, or(n, -n))` -/
def P3796004572626343252.Spec : Prop :=
  ∀ n, P3796004572626343252.a n = A285326 n

end A285326

/-! ## A285326.P13179133210677296983

`n-xor(n, -n)/2`
-/

namespace A285326.P13179133210677296983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Int.xor (n : ℤ) (-(n : ℤ)) : ℚ) / 2

end

end A285326.P13179133210677296983

namespace A285326

/-- `n-xor(n, -n)/2` -/
def P13179133210677296983.Spec : Prop :=
  ∀ n, P13179133210677296983.a n = (A285326 n : ℚ)

end A285326

/-! ## A285326.P17263200555410502360

`-and(-n, xor(n, -1))`
-/

namespace A285326.P17263200555410502360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.land (-(n : ℤ)) (Int.xor (n : ℤ) (-1))

end

end A285326.P17263200555410502360

namespace A285326

/-- `-and(-n, xor(n, -1))` -/
def P17263200555410502360.Spec : Prop :=
  ∀ n, P17263200555410502360.a n = A285326 n

end A285326

/-! ## A285326.P7897366598046328906

`gcd(n, or(n, -n))+n`
-/

namespace A285326.P7897366598046328906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (Int.lor (n : ℤ) (-(n : ℤ))) + n

end

end A285326.P7897366598046328906

namespace A285326

/-- `gcd(n, or(n, -n))+n` -/
def P7897366598046328906.Spec : Prop :=
  ∀ n, (P7897366598046328906.a n : ℤ) = A285326 n

end A285326

/-! ## A285326.P11946232810398671003

`2*n-and(n, n-1)`
-/

namespace A285326.P11946232810398671003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.land (n : ℤ) ((n : ℤ) - 1)

end

end A285326.P11946232810398671003

namespace A285326

/-- `2*n-and(n, n-1)` -/
def P11946232810398671003.Spec : Prop :=
  ∀ n, P11946232810398671003.a n = A285326 n

end A285326

/-! ## A285326.P5055699581577289097

`n-and(n, n-1)+n`
-/

namespace A285326.P5055699581577289097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

end

end A285326.P5055699581577289097

namespace A285326

/-- `n-and(n, n-1)+n` -/
def P5055699581577289097.Spec : Prop :=
  ∀ n, P5055699581577289097.a n = A285326 n

end A285326

/-! ## A285326.P9149456623284238029

`n-(and(n, n-1)-n)`
-/

namespace A285326.P9149456623284238029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.land (n : ℤ) ((n : ℤ) - 1) - (n : ℤ))

end

end A285326.P9149456623284238029

namespace A285326

/-- `n-(and(n, n-1)-n)` -/
def P9149456623284238029.Spec : Prop :=
  ∀ n, P9149456623284238029.a n = A285326 n

end A285326

/-! ## A285326.P13506937692550599438

`2*ceil(or(n, n-1)/2)`
-/

namespace A285326.P13506937692550599438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(Int.lor (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2⌉

end

end A285326.P13506937692550599438

namespace A285326

/-- `2*ceil(or(n, n-1)/2)` -/
def P13506937692550599438.Spec : Prop :=
  ∀ n, P13506937692550599438.a n = A285326 n

end A285326

/-! ## A285326.P11648006667806613294

`ceil(xor(n, n-1)/2+n)`
-/

namespace A285326.P11648006667806613294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2 + (n : ℚ)⌉

end

end A285326.P11648006667806613294

namespace A285326

/-- `ceil(xor(n, n-1)/2+n)` -/
def P11648006667806613294.Spec : Prop :=
  ∀ n, P11648006667806613294.a n = A285326 n

end A285326

/-! ## A285326.P5867504638751568145

`ϕ²-(ϕ-or(n, n-1))`
-/

namespace A285326.P5867504638751568145
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 - (Real.goldenRatio - (Int.lor (n : ℤ) ((n : ℤ) - 1) : ℝ))

end

end A285326.P5867504638751568145

namespace A285326

/-- `ϕ²-(ϕ-or(n, n-1))` -/
def P5867504638751568145.Spec : Prop :=
  ∀ n, P5867504638751568145.a n = (A285326 n : ℝ)

end A285326

/-! ## A285326.P17161496045937705431

`abs(or(n, n-2*n)-n)`
-/

namespace A285326.P17161496045937705431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) ((n : ℤ) - (2 * n : ℤ)) - (n : ℤ)|

end

end A285326.P17161496045937705431

namespace A285326

/-- `abs(or(n, n-2*n)-n)` -/
def P17161496045937705431.Spec : Prop :=
  ∀ n, P17161496045937705431.a n = A285326 n

end A285326

/-! ## A285326.P337461200417694184

`floor(xor(n, n-1)/2+n+1)`
-/

namespace A285326.P337461200417694184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2 + (n + 1 : ℚ)⌋

end

end A285326.P337461200417694184

namespace A285326

/-- `floor(xor(n, n-1)/2+n+1)` -/
def P337461200417694184.Spec : Prop :=
  ∀ n, P337461200417694184.a n = A285326 n

end A285326

/-! ## A285326.P13095978162150762872

`-and(-n, or(2*n, -(2*n)))`
-/

namespace A285326.P13095978162150762872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.land (-(n : ℤ)) (Int.lor (2 * n : ℤ) (-(2 * n : ℤ)))

end

end A285326.P13095978162150762872

namespace A285326

/-- `-and(-n, or(2*n, -(2*n)))` -/
def P13095978162150762872.Spec : Prop :=
  ∀ n, P13095978162150762872.a n = A285326 n

end A285326

/-! ## A285326.P7684086729666230216

`(xor(n, n-1)+2*n+1)/2`
-/

namespace A285326.P7684086729666230216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) ((n : ℤ) - 1) + (2 * n + 1 : ℤ) : ℚ) / 2

end

end A285326.P7684086729666230216

namespace A285326

/-- `(xor(n, n-1)+2*n+1)/2` -/
def P7684086729666230216.Spec : Prop :=
  ∀ n, P7684086729666230216.a n = (A285326 n : ℚ)

end A285326

/-!
# A285327: Row 3 of A285325: a(n) = A048675(A065642(A065642(A019565(n)))).

The programs for A285327, there is no canonical definition to state claims against.
-/

/-! ## A285327.P5521803871535908873

`A048675(A285323(n))+n`
-/

namespace A285327.P5521803871535908873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A285323 n).toNat + (n : ℤ)

end

end A285327.P5521803871535908873

/-!
# A285328: a(n) = 1 if n is squarefree (A005117), otherwise a(n) = Max {m < n | same prime factors as n, ignoring multiplicity}.

The programs for A285328, there is no canonical definition to state claims against.
-/

/-! ## A285328.P10183552304638718976

`gcd(A008683(n+1), A285330(n+1))`
-/

namespace A285328.P10183552304638718976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (n + 1)) (A285330 (n + 1))

end

end A285328.P10183552304638718976

/-! ## A285328.P13658505212276381908

`A285330(n+1)^A001221(A162510(n+1))`
-/

namespace A285328.P13658505212276381908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285330 (n + 1) : ℚ) ^ (A001221 (A162510 (n + 1)).toNat : ℤ)

end

end A285328.P13658505212276381908

/-! ## A285328.P495618086918808316

`A285330(n+1)^A178334(A057918(n+1))`
-/

namespace A285328.P495618086918808316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285330 (n + 1) : ℚ) ^ (A178334 (A057918 (n + 1)).toNat : ℤ)

end

end A285328.P495618086918808316

/-! ## A285328.P14183350444916040209

`A285330(n+1)^A001221(A317934(n+1))`
-/

namespace A285328.P14183350444916040209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285330 (n + 1) : ℚ) ^ (A001221 (A317934 (n + 1)).toNat : ℤ)

end

end A285328.P14183350444916040209

/-! ## A285328.P13138288544019183630

`A003557((n+1)*A339004(2*n+1))`
-/

namespace A285328.P13138288544019183630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 ((n + 1 : ℤ) * A339004 (2 * n + 1)).toNat

end

end A285328.P13138288544019183630

/-!
# A285329: a(n) = A013928(A007947(n)).

The programs for A285329, the canonical program `A285329.P11356628492723450614` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285329 has offset 1).

The definition of A285329 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285329.P11356628492723450614

`A013928(A007947(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A285329

/-- `A013928(A007947(n+1))` -/
def P11356628492723450614.Spec : Prop :=
  ∀ n, P11356628492723450614.a n = A285329 (n + 1)

theorem P11356628492723450614.correct : P11356628492723450614.Spec := by
  intro n
  simp only [A285329, Nat.add_sub_cancel]

end A285329

/-! ## A285329.P5621636402770548942

`A322590(n+1)-1`
-/

namespace A285329.P5621636402770548942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322590 (n + 1) - 1

end

end A285329.P5621636402770548942

namespace A285329

/-- `A322590(n+1)-1` -/
def P5621636402770548942.Spec : Prop :=
  ∀ n, P5621636402770548942.a n = A285329 (n + 1)

theorem P5621636402770548942.correct : P5621636402770548942.Spec := by
  intro n
  simp only [A285329, Nat.add_sub_cancel, A285329.P5621636402770548942.a, A285329.P11356628492723450614.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A322590, A322590.P17001618561382303928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285329

/-! ## A285329.P6445800971562277313

`A013928(∏{p}[n+1, #])`
-/

namespace A285329.P6445800971562277313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A285329.P6445800971562277313

namespace A285329

/-- `A013928(∏{p}[n+1, #])` -/
def P6445800971562277313.Spec : Prop :=
  ∀ n, P6445800971562277313.a n = A285329 (n + 1)

end A285329

/-! ## A285329.P4900039162075775076

`A284584(∏{p}[n+1, #])`
-/

namespace A285329.P4900039162075775076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284584 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A285329.P4900039162075775076

namespace A285329

/-- `A284584(∏{p}[n+1, #])` -/
def P4900039162075775076.Spec : Prop :=
  ∀ n, P4900039162075775076.a n = A285329 (n + 1)

end A285329

/-! ## A285329.P16258802145345734557

`A338572(∏{p}[n+1, #])`
-/

namespace A285329.P16258802145345734557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338572 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A285329.P16258802145345734557

namespace A285329

/-- `A338572(∏{p}[n+1, #])` -/
def P16258802145345734557.Spec : Prop :=
  ∀ n, P16258802145345734557.a n = A285329 (n + 1)

end A285329

/-! ## A285329.P11233932516284025849

`A100112(∏{p}[n+1, #])-1`
-/

namespace A285329.P11233932516284025849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (∏ p ∈ Nat.primeFactors (f1 n), p) - 1

end

end A285329.P11233932516284025849

namespace A285329

/-- `A100112(∏{p}[n+1, #])-1` -/
def P11233932516284025849.Spec : Prop :=
  ∀ n, P11233932516284025849.a n = A285329 (n + 1)

end A285329

/-! ## A285329.P11361866590045284530

`A072490(A076618(n+1))`
-/

namespace A285329.P11361866590045284530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072490 (A076618 (n + 1)).toNat

end

end A285329.P11361866590045284530

namespace A285329

/-- `A072490(A076618(n+1))` -/
def P11361866590045284530.Spec : Prop :=
  ∀ n, P11361866590045284530.a n = A285329 (n + 1)

end A285329

/-! ## A285329.P18148066035079934820

`A013928(A076618(n+1)-1)`
-/

namespace A285329.P18148066035079934820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A076618 (n + 1) - 1).toNat

end

end A285329.P18148066035079934820

namespace A285329

/-- `A013928(A076618(n+1)-1)` -/
def P18148066035079934820.Spec : Prop :=
  ∀ n, P18148066035079934820.a n = A285329 (n + 1)

theorem P18148066035079934820.correct : P18148066035079934820.Spec := by
  intro n
  simp only [A285329, Nat.add_sub_cancel, A285329.P18148066035079934820.a, A285329.P11356628492723450614.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A076618, A076618.P8099091245670450071.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A285329

/-! ## A285329.P18113729658269692644

`A013928((n+1)/A003557(n+1))`
-/

namespace A285329.P18113729658269692644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A285329.P18113729658269692644

namespace A285329

/-- `A013928((n+1)/A003557(n+1))` -/
def P18113729658269692644.Spec : Prop :=
  ∀ n, P18113729658269692644.a n = A285329 (n + 1)

end A285329

/-! ## A285329.P16542159560010255369

`A284584(A007947(2*n+1-n))`
-/

namespace A285329.P16542159560010255369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284584 (A007947 (2 * n + 1 - n)).toNat

end

end A285329.P16542159560010255369

namespace A285329

/-- `A284584(A007947(2*n+1-n))` -/
def P16542159560010255369.Spec : Prop :=
  ∀ n, P16542159560010255369.a n = A285329 (n + 1)

end A285329

/-! ## A285329.P11614413584967393917

`A284584(A053166(A053166(n+1)))`
-/

namespace A285329.P11614413584967393917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284584 (A053166 (A053166 (n + 1)).toNat).toNat

end

end A285329.P11614413584967393917

namespace A285329

/-- `A284584(A053166(A053166(n+1)))` -/
def P11614413584967393917.Spec : Prop :=
  ∀ n, P11614413584967393917.a n = A285329 (n + 1)

end A285329

/-! ## A285329.P10388690502427507549

`A013928(∑{d}[A062953(n+1), A000010(#)])`
-/

namespace A285329.P10388690502427507549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A285329.P10388690502427507549

namespace A285329

/-- `A013928(∑{d}[A062953(n+1), A000010(#)])` -/
def P10388690502427507549.Spec : Prop :=
  ∀ n, P10388690502427507549.a n = A285329 (n + 1)

end A285329

/-! ## A285329.P15641039676271883254

`A013928(∏{d}[A062953(n+1), A014963(#)])`
-/

namespace A285329.P15641039676271883254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d).toNat

end

end A285329.P15641039676271883254

namespace A285329

/-- `A013928(∏{d}[A062953(n+1), A014963(#)])` -/
def P15641039676271883254.Spec : Prop :=
  ∀ n, P15641039676271883254.a n = A285329 (n + 1)

end A285329

/-! ## A285329.P8719311488703148014

`A262869(2*A007947(n+1)-1)`
-/

namespace A285329.P8719311488703148014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (2 * A007947 (n + 1) - 1).toNat

end

end A285329.P8719311488703148014

namespace A285329

/-- `A262869(2*A007947(n+1)-1)` -/
def P8719311488703148014.Spec : Prop :=
  ∀ n, P8719311488703148014.a n = A285329 (n + 1)

end A285329

/-! ## A285329.P12948061564248339151

`A262869(A007947(n+1)+A007947(n+1)-1)`
-/

namespace A285329.P12948061564248339151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A007947 (n + 1) + (A007947 (n + 1) - 1)).toNat

end

end A285329.P12948061564248339151

namespace A285329

/-- `A262869(A007947(n+1)+A007947(n+1)-1)` -/
def P12948061564248339151.Spec : Prop :=
  ∀ n, P12948061564248339151.a n = A285329 (n + 1)

end A285329

/-! ## A285329.P13639200453088060318

`A070198(n)%A322590(n+1)`
-/

namespace A285329.P13639200453088060318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A322590 (n + 1))

end

end A285329.P13639200453088060318

namespace A285329

/-- `A070198(n)%A322590(n+1)` -/
def P13639200453088060318.Spec : Prop :=
  ∀ n, P13639200453088060318.a n = A285329 (n + 1)

end A285329

/-! ## A285329.P1393441745447429941

`A079782(n+1)%A322590(n+1)`
-/

namespace A285329.P1393441745447429941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A322590 (n + 1))

end

end A285329.P1393441745447429941

namespace A285329

/-- `A079782(n+1)%A322590(n+1)` -/
def P1393441745447429941.Spec : Prop :=
  ∀ n, P1393441745447429941.a n = A285329 (n + 1)

end A285329

/-! ## A285329.P11705747413819216289

`A083685(n+1)%A322590(n+1)`
-/

namespace A285329.P11705747413819216289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A322590 (n + 1))

end

end A285329.P11705747413819216289

namespace A285329

/-- `A083685(n+1)%A322590(n+1)` -/
def P11705747413819216289.Spec : Prop :=
  ∀ n, P11705747413819216289.a n = A285329 (n + 1)

end A285329

/-! ## A285329.P7594490917191010091

`A121934(n+1)%A322590(n+1)`
-/

namespace A285329.P7594490917191010091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A322590 (n + 1))

end

end A285329.P7594490917191010091

namespace A285329

/-- `A121934(n+1)%A322590(n+1)` -/
def P7594490917191010091.Spec : Prop :=
  ∀ n, P7594490917191010091.a n = A285329 (n + 1)

end A285329

/-! ## A285329.P6756013947061378306

`A013928(A089384((n+1)²))`
-/

namespace A285329.P6756013947061378306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A089384 ((n + 1) ^ 2)).toNat

end

end A285329.P6756013947061378306

namespace A285329

/-- `A013928(A089384((n+1)²))` -/
def P6756013947061378306.Spec : Prop :=
  ∀ n, P6756013947061378306.a n = A285329 (n + 1)

end A285329

/-!
# A285330: If n is squarefree, then a(n) = A048675(n), otherwise a(n) = A285328(n).

The programs for A285330, there is no canonical definition to state claims against.
-/

/-! ## A285330.P4902096356918534826

`A285333(A285331(n+1)-A056170(n+1))`
-/

namespace A285330.P4902096356918534826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 (A285331 (n + 1) - A056170 (n + 1)).toNat

end

end A285330.P4902096356918534826

/-! ## A285330.P2516488568798135211

`A285333(A285331(n+1)-A107078(n+1))`
-/

namespace A285330.P2516488568798135211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 (A285331 (n + 1) - A107078 (n + 1)).toNat

end

end A285330.P2516488568798135211

/-! ## A285330.P10422253704211208905

`A331740(A187829(n+1))+A063658(n+1)`
-/

namespace A285330.P10422253704211208905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (A187829 (n + 1)).toNat + A063658 (n + 1)

end

end A285330.P10422253704211208905

/-! ## A285330.P14751763466993903496

`A331309(n+1)-A123679(A256690(n+1))`
-/

namespace A285330.P14751763466993903496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331309 (n + 1) - A123679 (A256690 (n + 1)).toNat

end

end A285330.P14751763466993903496

/-! ## A285330.P2227959611086055761

`A162474(A298882(n+1))`
-/

namespace A285330.P2227959611086055761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162474 (A298882 (n + 1)).toNat

end

end A285330.P2227959611086055761

/-!
# A285332: a(0) = 1, a(1) = 2, a(2n) = A019565(a(n)), a(2n+1) = A065642(a(n)).

The programs for A285332, there is no canonical definition to state claims against.
-/

/-! ## A285332.P816477983890025717

`A285333(n+1-(1-n)%(n+1))`
-/

namespace A285332.P816477983890025717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 ((n + 1 : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A285332.P816477983890025717

/-! ## A285332.P13249492407471112817

`A285333(A004277(n))`
-/

namespace A285332.P13249492407471112817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 (A004277 n).toNat

end

end A285332.P13249492407471112817

/-! ## A285332.P1493175763552137652

`A285333(A004275(n+1))`
-/

namespace A285332.P1493175763552137652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 (A004275 (n + 1)).toNat

end

end A285332.P1493175763552137652

/-! ## A285332.P11188666040019088002

`A285333(A092535(n+1))`
-/

namespace A285332.P11188666040019088002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 (A092535 (n + 1)).toNat

end

end A285332.P11188666040019088002

/-! ## A285332.P7667415481708021992

`A285333(A058992(n+2))`
-/

namespace A285332.P7667415481708021992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 (A058992 (n + 2)).toNat

end

end A285332.P7667415481708021992

/-! ## A285332.P7374585800583994573

`A285333(A028310(2*n))`
-/

namespace A285332.P7374585800583994573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 (A028310 (2 * n)).toNat

end

end A285332.P7374585800583994573

/-! ## A285332.P781596645616839239

`A285333(A028310(n)+n)`
-/

namespace A285332.P781596645616839239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 (A028310 n + (n : ℤ)).toNat

end

end A285332.P781596645616839239

/-! ## A285332.P5221324580990007659

`A285333(2*n)+A010051(2*(n+1))`
-/

namespace A285332.P5221324580990007659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 (2 * n) + A010051 (2 * (n + 1))

end

end A285332.P5221324580990007659

/-! ## A285332.P3266659538279764446

`A285333(lt[A166587(n), A187038(n)])`
-/

namespace A285332.P3266659538279764446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285332.P3266659538279764446

/-! ## A285332.P12368979986755530710

`A285333(lt[A166587(n), A122497(n+1)])`
-/

namespace A285332.P12368979986755530710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285333 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A285332.P12368979986755530710

/-!
# A285333: a(n) = A048675(A285332(n)).

The programs for A285333, there is no canonical definition to state claims against.
-/

/-! ## A285333.P12282613426559978668

`A048675(A285332(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285333.P12282613426559978668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A285332 n).toNat

end

end A285333.P12282613426559978668

/-! ## A285333.P7049570071247028053

`∑{d}[A285332(n), A297108(#)]`
-/

namespace A285333.P7049570071247028053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d

end

end A285333.P7049570071247028053

/-! ## A285333.P10240157462438705692

`∑{p}[A097248(A285332(n)), A156552(#)]`
-/

namespace A285333.P10240157462438705692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (A285332 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A285333.P10240157462438705692

/-! ## A285333.P6184086419920111397

`∑{p}[A097248(A285332(n)), A248663(#)]`
-/

namespace A285333.P6184086419920111397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (A285332 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A285333.P6184086419920111397

/-!
# A285334: a(n) = A046523(A243505(n)).

The programs for A285334, the canonical program `A285334.P1438289663066169180` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285334 has offset 1).

The definition of A285334 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A243505, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285334.P8173572685109248986

`A278221(A064216(n+1))`
-/

namespace A285334.P8173572685109248986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278221 (A064216 (n + 1)).toNat

end

end A285334.P8173572685109248986

namespace A285334

/-- `A278221(A064216(n+1))` -/
def P8173572685109248986.Spec : Prop :=
  ∀ n, P8173572685109248986.a n = A285334 (n + 1)

end A285334

/-! ## A285334.P1438289663066169180

`A046523(A243505(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A285334

/-- `A046523(A243505(n+1))` -/
def P1438289663066169180.Spec : Prop :=
  ∀ n, P1438289663066169180.a n = A285334 (n + 1)

theorem P1438289663066169180.correct : P1438289663066169180.Spec := by
  intro n
  simp only [A285334, Nat.add_sub_cancel]

end A285334

/-! ## A285334.P12362103070037924244

`A278221(A064989(2*n+1))`
-/

namespace A285334.P12362103070037924244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278221 (A064989 (2 * n + 1)).toNat

end

end A285334.P12362103070037924244

namespace A285334

/-- `A278221(A064989(2*n+1))` -/
def P12362103070037924244.Spec : Prop :=
  ∀ n, P12362103070037924244.a n = A285334 (n + 1)

end A285334

/-! ## A285334.P4781605678975374276

`A278221(A252463(2*n+1))`
-/

namespace A285334.P4781605678975374276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278221 (A252463 (2 * n + 1)).toNat

end

end A285334.P4781605678975374276

namespace A285334

/-- `A278221(A252463(2*n+1))` -/
def P4781605678975374276.Spec : Prop :=
  ∀ n, P4781605678975374276.a n = A285334 (n + 1)

end A285334

/-! ## A285334.P12638100847964829099

`A278221(A341515(2*n+1))`
-/

namespace A285334.P12638100847964829099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278221 (A341515 (2 * n + 1)).toNat

end

end A285334.P12638100847964829099

namespace A285334

/-- `A278221(A341515(2*n+1))` -/
def P12638100847964829099.Spec : Prop :=
  ∀ n, P12638100847964829099.a n = A285334 (n + 1)

end A285334

/-! ## A285334.P220086405159305667

`A278221(A349122(2*n+1))`
-/

namespace A285334.P220086405159305667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278221 (A349122 (2 * n + 1)).toNat

end

end A285334.P220086405159305667

namespace A285334

/-- `A278221(A349122(2*n+1))` -/
def P220086405159305667.Spec : Prop :=
  ∀ n, P220086405159305667.a n = A285334 (n + 1)

end A285334

/-! ## A285334.P4702531480841331501

`A279350(A250470(2*(2*n+1)))`
-/

namespace A285334.P4702531480841331501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279350 (A250470 (2 * (2 * n + 1))).toNat

end

end A285334.P4702531480841331501

namespace A285334

/-- `A279350(A250470(2*(2*n+1)))` -/
def P4702531480841331501.Spec : Prop :=
  ∀ n, P4702531480841331501.a n = A285334 (n + 1)

end A285334

/-! ## A285334.P11209771864686646225

`A279350(A249817(A064989(n+1+n)))`
-/

namespace A285334.P11209771864686646225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279350 (A249817 (A064989 (n + 1 + n)).toNat).toNat

end

end A285334.P11209771864686646225

namespace A285334

/-- `A279350(A249817(A064989(n+1+n)))` -/
def P11209771864686646225.Spec : Prop :=
  ∀ n, P11209771864686646225.a n = A285334 (n + 1)

end A285334

/-!
# A285335: Odd bisection of A048675 divided by two: a(n) = A048675((2*n)-1)/2.

The programs for A285335, the canonical program `A285335.P14240308816044716378` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285335 has offset 1).

The definition of A285335 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285335.P16471000385405666425

`A048675(A064216(n+1))`
-/

namespace A285335.P16471000385405666425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A064216 (n + 1)).toNat

end

end A285335.P16471000385405666425

namespace A285335

/-- `A048675(A064216(n+1))` -/
def P16471000385405666425.Spec : Prop :=
  ∀ n, P16471000385405666425.a n = A285335 (n + 1)

end A285335

/-! ## A285335.P14240308816044716378

`A048675(2*(n+1)-1)/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A285335

/-- `A048675(2*(n+1)-1)/2` -/
def P14240308816044716378.Spec : Prop :=
  ∀ n, P14240308816044716378.a n = (A285335 (n + 1) : ℚ)

end A285335

/-! ## A285335.P4922374055480088783

`A048675(A064989(2*n+1))`
-/

namespace A285335.P4922374055480088783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A064989 (2 * n + 1)).toNat

end

end A285335.P4922374055480088783

namespace A285335

/-- `A048675(A064989(2*n+1))` -/
def P4922374055480088783.Spec : Prop :=
  ∀ n, P4922374055480088783.a n = A285335 (n + 1)

end A285335

/-! ## A285335.P9230218505347151928

`A048675(A252463(2*n+1))`
-/

namespace A285335.P9230218505347151928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A252463 (2 * n + 1)).toNat

end

end A285335.P9230218505347151928

namespace A285335

/-- `A048675(A252463(2*n+1))` -/
def P9230218505347151928.Spec : Prop :=
  ∀ n, P9230218505347151928.a n = A285335 (n + 1)

end A285335

/-! ## A285335.P17237869416955278954

`A048675(A285728(2*(2*n+1)))`
-/

namespace A285335.P17237869416955278954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A285728 (2 * (2 * n + 1))).toNat

end

end A285335.P17237869416955278954

namespace A285335

/-- `A048675(A285728(2*(2*n+1)))` -/
def P17237869416955278954.Spec : Prop :=
  ∀ n, P17237869416955278954.a n = A285335 (n + 1)

end A285335

/-! ## A285335.P12080430077794233806

`1/2*A048675(A005408(n))`
-/

namespace A285335.P12080430077794233806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A048675 (A005408 n).toNat : ℚ)

end

end A285335.P12080430077794233806

namespace A285335

/-- `1/2*A048675(A005408(n))` -/
def P12080430077794233806.Spec : Prop :=
  ∀ n, P12080430077794233806.a n = (A285335 (n + 1) : ℚ)

end A285335

/-! ## A285335.P4913178667035455600

`A048676(A097248(2*n+1))/2`
-/

namespace A285335.P4913178667035455600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048676 (A097248 (2 * n + 1)).toNat : ℚ) / 2

end

end A285335.P4913178667035455600

namespace A285335

/-- `A048676(A097248(2*n+1))/2` -/
def P4913178667035455600.Spec : Prop :=
  ∀ n, P4913178667035455600.a n = (A285335 (n + 1) : ℚ)

end A285335

/-! ## A285335.P6090659273306115524

`A304735(A064664(2*n+1))/2`
-/

namespace A285335.P6090659273306115524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304735 (A064664 (2 * n + 1)).toNat : ℚ) / 2

end

end A285335.P6090659273306115524

namespace A285335

/-- `A304735(A064664(2*n+1))/2` -/
def P6090659273306115524.Spec : Prop :=
  ∀ n, P6090659273306115524.a n = (A285335 (n + 1) : ℚ)

end A285335

/-! ## A285335.P4658457127812072216

`A048672(A322815(2*n+1))/2`
-/

namespace A285335.P4658457127812072216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048672 (A322815 (2 * n + 1)).toNat : ℚ) / 2

end

end A285335.P4658457127812072216

namespace A285335

/-- `A048672(A322815(2*n+1))/2` -/
def P4658457127812072216.Spec : Prop :=
  ∀ n, P4658457127812072216.a n = (A285335 (n + 1) : ℚ)

end A285335

/-! ## A285335.P16316085665920415020

`(A156552(2*n+1)-A323905(2*n+1))/2`
-/

namespace A285335.P16316085665920415020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156552 (2 * n + 1) - A323905 (2 * n + 1) : ℚ) / 2

end

end A285335.P16316085665920415020

namespace A285335

/-- `(A156552(2*n+1)-A323905(2*n+1))/2` -/
def P16316085665920415020.Spec : Prop :=
  ∀ n, P16316085665920415020.a n = (A285335 (n + 1) : ℚ)

end A285335

/-! ## A285335.P1678183849778324190

`(A336415(2*n+1)-A336415(2*n))/2`
-/

namespace A285335.P1678183849778324190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336415 (2 * n + 1) - A336415 (2 * n) : ℚ) / 2

end

end A285335.P1678183849778324190

namespace A285335

/-- `(A336415(2*n+1)-A336415(2*n))/2` -/
def P1678183849778324190.Spec : Prop :=
  ∀ n, P1678183849778324190.a n = (A285335 (n + 1) : ℚ)

end A285335

/-! ## A285335.P7376928814416151165

`A048675(2*n+1)/A011782(n+1)²*A011782(2*n)`
-/

namespace A285335.P7376928814416151165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048675 (2 * n + 1) : ℚ) / (A011782 (n + 1) ^ 2 : ℚ) * (A011782 (2 * n) : ℚ)

end

end A285335.P7376928814416151165

namespace A285335

/-- `A048675(2*n+1)/A011782(n+1)²*A011782(2*n)` -/
def P7376928814416151165.Spec : Prop :=
  ∀ n, P7376928814416151165.a n = (A285335 (n + 1) : ℚ)

end A285335

/-! ## A285335.P11613516033255276016

`A048675(2*n+1)/A011782(2*n+1)*A011782(2*n)`
-/

namespace A285335.P11613516033255276016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048675 (2 * n + 1) : ℚ) / (A011782 (2 * n + 1) : ℚ) * (A011782 (2 * n) : ℚ)

end

end A285335.P11613516033255276016

namespace A285335

/-- `A048675(2*n+1)/A011782(2*n+1)*A011782(2*n)` -/
def P11613516033255276016.Spec : Prop :=
  ∀ n, P11613516033255276016.a n = (A285335 (n + 1) : ℚ)

end A285335

/-! ## A285335.P466530269665212238

`A048675(2*n+1)/A000079(2*n+1)*A000079(n)²`
-/

namespace A285335.P466530269665212238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048675 (2 * n + 1) : ℚ) / (A000079 (2 * n + 1) : ℚ) * (A000079 n ^ 2 : ℚ)

end

end A285335.P466530269665212238

namespace A285335

/-- `A048675(2*n+1)/A000079(2*n+1)*A000079(n)²` -/
def P466530269665212238.Spec : Prop :=
  ∀ n, P466530269665212238.a n = (A285335 (n + 1) : ℚ)

end A285335

/-! ## A285335.P16510226316122772634

`A048675(2*n+1)/A000079(2*n+1)*A000079(2*n)`
-/

namespace A285335.P16510226316122772634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048675 (2 * n + 1) : ℚ) / (A000079 (2 * n + 1) : ℚ) * (A000079 (2 * n) : ℚ)

end

end A285335.P16510226316122772634

namespace A285335

/-- `A048675(2*n+1)/A000079(2*n+1)*A000079(2*n)` -/
def P16510226316122772634.Spec : Prop :=
  ∀ n, P16510226316122772634.a n = (A285335 (n + 1) : ℚ)

end A285335

/-!
# A285336: a(n) = numerator of A065642(n)/n.

The programs for A285336, there is no canonical definition to state claims against.
-/

/-! ## A285336.P13906885602705407662

`lcm(n+1, A065642(n+1))/(n+1)`
-/

namespace A285336.P13906885602705407662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A065642 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A285336.P13906885602705407662

/-! ## A285336.P3523813403215997252

`A065642(n+1)/(n+1)*A285337(n+1)`
-/

namespace A285336.P3523813403215997252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065642 (n + 1) : ℚ) / (n + 1 : ℚ) * (A285337 (n + 1) : ℚ)

end

end A285336.P3523813403215997252

/-! ## A285336.P9249453575829971936

`A065642(n+1)/gcd(A002378(n), A065642(n+1))`
-/

namespace A285336.P9249453575829971936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065642 (n + 1) : ℚ) / (Int.gcd (A002378 n) (A065642 (n + 1)) : ℚ)

end

end A285336.P9249453575829971936

/-! ## A285336.P2150657819483290318

`A003557(A065642(A007947(n+1)*A285337(n+1)))`
-/

namespace A285336.P2150657819483290318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A065642 (A007947 (n + 1) * A285337 (n + 1)).toNat).toNat

end

end A285336.P2150657819483290318

/-! ## A285336.P279471751486537201

`A065642(n+1)/A032742(A285109(n+1)/A285337(n+1))`
-/

namespace A285336.P279471751486537201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065642 (n + 1) : ℚ) / (A032742 (SequenceMachineLib.roundAway ((A285109 (n + 1) : ℚ) / (A285337 (n + 1) : ℚ))).toNat : ℚ)

end

end A285336.P279471751486537201

/-!
# A285337: a(n) = denominator of A065642(n)/n.

The programs for A285337, there is no canonical definition to state claims against.
-/

/-! ## A285337.P2740686368034160649

`(n+1)/gcd(n+1, A065642(n+1))`
-/

namespace A285337.P2740686368034160649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A065642 (n + 1)) : ℚ)

end

end A285337.P2740686368034160649

/-! ## A285337.P10167951272906937774

`lcm(A000027(n+1), A065642(n+1))/A065642(n+1)`
-/

namespace A285337.P10167951272906937774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A065642 (n + 1)) : ℚ) / (A065642 (n + 1) : ℚ)

end

end A285337.P10167951272906937774

/-! ## A285337.P5702910507887637438

`gcd(A052125(n+1), A279848(n+3))`
-/

namespace A285337.P5702910507887637438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052125 (n + 1)) (A279848 (n + 3))

end

end A285337.P5702910507887637438

/-! ## A285337.P16154674303779660358

`gcd(A034699(n+1), A051119(A122111(n+1)))`
-/

namespace A285337.P16154674303779660358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034699 (n + 1)) (A051119 (A122111 (n + 1)).toNat)

end

end A285337.P16154674303779660358

/-! ## A285337.P17194136348887786280

`gcd(A052128(A122111(n+1)), A354933(n+1))`
-/

namespace A285337.P17194136348887786280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052128 (A122111 (n + 1)).toNat) (A354933 (n + 1))

end

end A285337.P17194136348887786280

/-!
# A285338: Expansion of Product_{k>=1} (1 + x^(5*k-4))^(5*k-4).

The programs for A285338, there is no canonical definition to state claims against.
-/

/-! ## A285338.P7843090672802937067

`gcd(A000038(A000330(n)), A285071(n))`
-/

namespace A285338.P7843090672802937067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A000330 n).toNat) (A285071 n)

end

end A285338.P7843090672802937067

/-! ## A285338.P8569159770898186373

`lcm(A008836(A154233(n)), A285071(n))`
-/

namespace A285338.P8569159770898186373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (A154233 n).toNat) (A285071 n)

end

end A285338.P8569159770898186373

/-! ## A285338.P17350463847667818997

`A000196(A285071(n)²)`
-/

namespace A285338.P17350463847667818997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A285071 n ^ 2).toNat

end

end A285338.P17350463847667818997

/-!
# A285339: Expansion of Product_{k>=0} (1 + x^(4*k+3))^(4*k+3).

The programs for A285339, there is no canonical definition to state claims against.
-/

/-! ## A285339.P2927152229801804707

`(-1)^n*A285213(n)`
-/

namespace A285339.P2927152229801804707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A285213 n

end

end A285339.P2927152229801804707

/-! ## A285339.P875804255941010708

`abs(A285213(n))`
-/

namespace A285339.P875804255941010708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285213 n|

end

end A285339.P875804255941010708

/-! ## A285339.P348110509651956624

`gcd(A000038(n), A285213(n))`
-/

namespace A285339.P348110509651956624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A285213 n)

end

end A285339.P348110509651956624

/-! ## A285339.P1543121863564482662

`lcm(A020985(n), A285213(n))`
-/

namespace A285339.P1543121863564482662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A285213 n)

end

end A285339.P1543121863564482662

/-! ## A285339.P10811889269339498505

`A285213(n)/A080891(A000204(n+1))`
-/

namespace A285339.P10811889269339498505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285213 n : ℚ) / (A080891 (A000204 (n + 1)).toNat : ℚ)

end

end A285339.P10811889269339498505

/-!
# A285340: Expansion of Product_{k>=0} (1 + x^(5*k+4))^(5*k+4).

The programs for A285340, there is no canonical definition to state claims against.
-/

/-! ## A285340.P2220915045634081037

`gcd(A000038(A007307(n)), A285214(n))`
-/

namespace A285340.P2220915045634081037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A007307 n).toNat) (A285214 n)

end

end A285340.P2220915045634081037

/-! ## A285340.P12859391953613313929

`lcm(A020985(A262948(n)), A285214(n))`
-/

namespace A285340.P12859391953613313929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 (A262948 n).toNat) (A285214 n)

end

end A285340.P12859391953613313929

/-! ## A285340.P1981864520979117430

`lcm(A124778(n), A285214(n))`
-/

namespace A285340.P1981864520979117430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124778 n) (A285214 n)

end

end A285340.P1981864520979117430

/-! ## A285340.P7914815133324821201

`abs(A285214(n)%A120487(n+3))`
-/

namespace A285340.P7914815133324821201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A285214 n) (A120487 (n + 3))|

end

end A285340.P7914815133324821201

/-! ## A285340.P5671679634558766536

`A000194(A285214(n)²)`
-/

namespace A285340.P5671679634558766536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A285214 n ^ 2).toNat

end

end A285340.P5671679634558766536

/-!
# A285341: Fixed point of the morphism 0 -> 10, 1 -> 1011.

The programs for A285341, there is no canonical definition to state claims against.
-/

/-! ## A285341.P1420634179845915811

`char[A285343(n+1)-1]`
-/

namespace A285341.P1420634179845915811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285343 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285341.P1420634179845915811

/-! ## A285341.P199378434356007598

`char[A284895(n+1)-2]`
-/

namespace A285341.P199378434356007598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285341.P199378434356007598

/-! ## A285341.P7806612281364248794

`1-char[A284894(n+1)-2]`
-/

namespace A285341.P7806612281364248794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285341.P7806612281364248794

/-! ## A285341.P4307019778548923702

`char[A284930(n+1)-A103517(n)]`
-/

namespace A285341.P4307019778548923702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284930 (n + 1) - A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285341.P4307019778548923702

/-! ## A285341.P14162394486424256056

`A284893(n+2)`
-/

namespace A285341.P14162394486424256056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (n + 2)

end

end A285341.P14162394486424256056

/-! ## A285341.P10423457965826514780

`log2(Δ[A285344(n+1)])`
-/

namespace A285341.P10423457965826514780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A285341.P10423457965826514780

/-! ## A285341.P781582452987769973

`A001221(Δ[A285344(n+1)])`
-/

namespace A285341.P781582452987769973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A285341.P781582452987769973

/-! ## A285341.P3267056928890775163

`A001222(Δ[A285344(n+1)])`
-/

namespace A285341.P3267056928890775163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A285341.P3267056928890775163

/-! ## A285341.P1227110654476323529

`A054686(Δ[A285342(n+1)])`
-/

namespace A285341.P1227110654476323529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (f1 (n + 1) - f1 n).toNat

end

end A285341.P1227110654476323529

/-! ## A285341.P16459036505859874876

`A054685(Δ[A285344(n+1)])`
-/

namespace A285341.P16459036505859874876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054685 (f1 (n + 1) - f1 n).toNat

end

end A285341.P16459036505859874876

/-! ## A285341.P1877622579442345278

`A188294(Δ[A285344(n+1)])`
-/

namespace A285341.P1877622579442345278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188294 (f1 (n + 1) - f1 n).toNat

end

end A285341.P1877622579442345278

/-! ## A285341.P11539467443834893977

`A189576(Δ[A285344(n+1)])`
-/

namespace A285341.P11539467443834893977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189576 (f1 (n + 1) - f1 n).toNat

end

end A285341.P11539467443834893977

/-! ## A285341.P16239540375851139960

`A284939(Δ[A285344(n+1)])`
-/

namespace A285341.P16239540375851139960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (f1 (n + 1) - f1 n).toNat

end

end A285341.P16239540375851139960

/-! ## A285341.P9545949160718847578

`A054686(Δ[A285344(n+1)]²)`
-/

namespace A285341.P9545949160718847578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A285341.P9545949160718847578

/-! ## A285341.P8765136464674113877

`A054686(Δ[A285344(n+1)]+1)`
-/

namespace A285341.P8765136464674113877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (f1 (n + 1) - f1 n + 1).toNat

end

end A285341.P8765136464674113877

/-! ## A285341.P439560694466399540

`A001221(Δ[A285342(n+1)]-1)`
-/

namespace A285341.P439560694466399540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n - 1).toNat

end

end A285341.P439560694466399540

/-! ## A285341.P1016017364818880540

`A001222(Δ[A285342(n+1)]-1)`
-/

namespace A285341.P1016017364818880540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n - 1).toNat

end

end A285341.P1016017364818880540

/-! ## A285341.P2692016585278088214

`A001221(Δ[A285342(n+1)/2])`
-/

namespace A285341.P2692016585278088214
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285342 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A285341.P2692016585278088214

/-! ## A285341.P16938751459382244971

`A001222(A001222(Δ[A285342(n+1)]))`
-/

namespace A285341.P16938751459382244971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (f1 (n + 1) - f1 n).toNat).toNat

end

end A285341.P16938751459382244971

/-!
# A285342: Positions of 0 in A285341; complement of A285343.

The programs for A285342, there is no canonical definition to state claims against.
-/

/-! ## A285342.P5254866913356340383

`2*A285344(n+1)`
-/

namespace A285342.P5254866913356340383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285344 (n + 1)

end

end A285342.P5254866913356340383

/-! ## A285342.P8378160220868130088

`∑[2*(A284893(n+1)+1)]`
-/

namespace A285342.P8378160220868130088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284893 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285342.P8378160220868130088

/-! ## A285342.P2739356833232185783

`A285344(A000027(n+1))+A285344(n+1)`
-/

namespace A285342.P2739356833232185783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (A000027 (n + 1)).toNat + A285344 (n + 1)

end

end A285342.P2739356833232185783

/-! ## A285342.P14397814128533129851

`A284894(n+2)-1`
-/

namespace A285342.P14397814128533129851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 2) - 1

end

end A285342.P14397814128533129851

/-! ## A285342.P8723030715557307695

`∑[abs(Δ[A284894(n+1)])]`
-/

namespace A285342.P8723030715557307695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285342.P8723030715557307695

/-! ## A285342.P14326556014637844847

`∑[A028310(Δ[A284894(n+1)])]`
-/

namespace A285342.P14326556014637844847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285342.P14326556014637844847

/-! ## A285342.P15316732276021389789

`∑[A001222(Δ[A284894(n+1)]²)]`
-/

namespace A285342.P15316732276021389789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285342.P15316732276021389789

/-! ## A285342.P2225475518770760564

`∑[A284918(Δ[A284894(n+1)]+2)]`
-/

namespace A285342.P2225475518770760564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284918 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285342.P2225475518770760564

/-! ## A285342.P4590132492004032970

`∑[2*A001222(Δ[A284894(n+1)])]`
-/

namespace A285342.P4590132492004032970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285342.P4590132492004032970

/-! ## A285342.P16219040392617349753

`∑[2*A007318(Δ[A284894(n+1)])]`
-/

namespace A285342.P16219040392617349753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285342.P16219040392617349753

/-! ## A285342.P618530597406781214

`∑[2*A284909(Δ[A284894(n+1)])]`
-/

namespace A285342.P618530597406781214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284909 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285342.P618530597406781214

/-! ## A285342.P4957039091039498665

`∑[2*A293435(Δ[A284894(n+1)])]`
-/

namespace A285342.P4957039091039498665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293435 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285342.P4957039091039498665

/-! ## A285342.P3180655432176362805

`A004277(A285344(n+1))`
-/

namespace A285342.P3180655432176362805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A285344 (n + 1)).toNat

end

end A285342.P3180655432176362805

/-! ## A285342.P10501115485561337994

`xor(A284893(2*(n+1)), A284894(n+2))`
-/

namespace A285342.P10501115485561337994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A284893 (2 * (n + 1))) (A284894 (n + 2))

end

end A285342.P10501115485561337994

/-! ## A285342.P11623608338672113152

`xor(A284894(n+2), A284939(2*(n+1)))`
-/

namespace A285342.P11623608338672113152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A284894 (n + 2)) (A284939 (2 * (n + 1)))

end

end A285342.P11623608338672113152

/-! ## A285342.P18128934907485991237

`xor(A284894(n+2), A285341(2*n+1))`
-/

namespace A285342.P18128934907485991237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A284894 (n + 2)) (A285341 (2 * n + 1))

end

end A285342.P18128934907485991237

/-! ## A285342.P227549385936403413

`xor(A284894(n+2), A285373(2*n+1))`
-/

namespace A285342.P227549385936403413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A284894 (n + 2)) (A285373 (2 * n + 1))

end

end A285342.P227549385936403413

/-! ## A285342.P18326800214972472371

`A285360(∩[A285360(n+1)+1, A285360(n+1)])`
-/

namespace A285342.P18326800214972472371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285360 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285360 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285360 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A285342.P18326800214972472371

/-! ## A285342.P2551478521067940644

`A004442(A284894(n+2))`
-/

namespace A285342.P2551478521067940644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A284894 (n + 2)).toNat

end

end A285342.P2551478521067940644

/-!
# A285343: Positions of 1 in A285341; complement of A285342.

The programs for A285343, there is no canonical definition to state claims against.
-/

/-! ## A285343.P17821026594306825028

`A284895(n+1)-1`
-/

namespace A285343.P17821026594306825028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1) - 1

end

end A285343.P17821026594306825028

/-! ## A285343.P4549272216724845376

`comp[A284894(n+1)-1]`
-/

namespace A285343.P4549272216724845376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A285343.P4549272216724845376

/-! ## A285343.P5415213514318047979

`A285359(n+1)-2*(n+1)`
-/

namespace A285343.P5415213514318047979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285359 (n + 1) - (2 * (n + 1) : ℤ)

end

end A285343.P5415213514318047979

/-! ## A285343.P802770860400086764

`∑[2*A285358(n+1)]-A285358(n+1)`
-/

namespace A285343.P802770860400086764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A285358 (n + 1)

end

end A285343.P802770860400086764

/-! ## A285343.P1940915834288917975

`∑[Δ[A284930(n+1)]-2]`
-/

namespace A285343.P1940915834288917975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284930 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285343.P1940915834288917975

/-! ## A285343.P10664793440656767614

`A284930(n+2)-(2*n+3)`
-/

namespace A285343.P10664793440656767614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284930 (n + 2) - (2 * n + 3 : ℤ)

end

end A285343.P10664793440656767614

/-! ## A285343.P5716238643043778542

`∑[A001222(Δ[A284930(n+1)])]`
-/

namespace A285343.P5716238643043778542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284930 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285343.P5716238643043778542

/-! ## A285343.P18299855837798964368

`filter[n+1, A285341(#)]`
-/

namespace A285343.P18299855837798964368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285341 (f1 j) = 1) n)

end

end A285343.P18299855837798964368

/-! ## A285343.P11570866562714200713

`eq[1, A285341(n+1)]+1`
-/

namespace A285343.P11570866562714200713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285341 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285343.P11570866562714200713

/-! ## A285343.P9749857307359911437

`lt[0, A284893(n+1)]`
-/

namespace A285343.P9749857307359911437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285343.P9749857307359911437

/-! ## A285343.P715836558399729916

`eq[1, A284893(n+2)]+1`
-/

namespace A285343.P715836558399729916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285343.P715836558399729916

/-! ## A285343.P7383805980270926636

`eq[A054977(n), A284893(n+1)]`
-/

namespace A285343.P7383805980270926636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285343.P7383805980270926636

/-! ## A285343.P16370828945976988962

`eq[A158388(n), A284893(n+1)]`
-/

namespace A285343.P16370828945976988962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285343.P16370828945976988962

/-! ## A285343.P5861620903383804987

`eq[A284893(n+1), A329684(n)]`
-/

namespace A285343.P5861620903383804987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285343.P5861620903383804987

/-! ## A285343.P11148745205650230685

`A023443(A284895(n+1))`
-/

namespace A285343.P11148745205650230685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A284895 (n + 1)).toNat

end

end A285343.P11148745205650230685

/-! ## A285343.P9733102060932554837

`eq[1, A284932(Δ[A284894(n+1)])]`
-/

namespace A285343.P9733102060932554837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285343.P9733102060932554837

/-! ## A285343.P12291118964922283378

`lt[char[A284894(n+1)], A241664(n+1)]-1`
-/

namespace A285343.P12291118964922283378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n : ℤ) - 1

end

end A285343.P12291118964922283378

/-! ## A285343.P11888475352413368245

`lt[A284929(n+2), 1]-(2*n+1)`
-/

namespace A285343.P11888475352413368245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (2 * n + 1 : ℤ)

end

end A285343.P11888475352413368245

/-!
# A285344: (A285342)/2.

The programs for A285344, there is no canonical definition to state claims against.
-/

/-! ## A285344.P11091287058814370662

`A285342(n+1)/2`
-/

namespace A285344.P11091287058814370662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285342 (n + 1) : ℚ) / 2

end

end A285344.P11091287058814370662

/-! ## A285344.P10486906049606337212

`∑[A284893(n+1)+1]`
-/

namespace A285344.P10486906049606337212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285344.P10486906049606337212

/-! ## A285344.P1550224799217307930

`∑[char[A285343(n+1)]+1]`
-/

namespace A285344.P1550224799217307930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285343 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285344.P1550224799217307930

/-! ## A285344.P36932885641119871

`comp[A284930(n+1)-(n+1)]`
-/

namespace A285344.P36932885641119871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284930 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A285344.P36932885641119871

/-! ## A285344.P2017801615823783066

`a(n-1)+A285341(n)+1` with `a(0)=1`
-/

namespace A285344.P2017801615823783066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A285341 n + 1)

end

end A285344.P2017801615823783066

/-! ## A285344.P4515167321350424611

`∑[A285341(n+1)+1]-A285341(n+1)`
-/

namespace A285344.P4515167321350424611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285341 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A285341 (n + 1)

end

end A285344.P4515167321350424611

/-! ## A285344.P17386565955580791253

`(A284894(n+2)-1)/2`
-/

namespace A285344.P17386565955580791253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284894 (n + 2) - 1 : ℚ) / 2

end

end A285344.P17386565955580791253

/-! ## A285344.P16145830251699215544

`∑[Δ[A284894(n+1)]/2]`
-/

namespace A285344.P16145830251699215544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285344.P16145830251699215544

/-! ## A285344.P4565820148976423994

`∑[A001222(Δ[A284894(n+1)])]`
-/

namespace A285344.P4565820148976423994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285344.P4565820148976423994

/-! ## A285344.P4426631644585142503

`∑[A007318(Δ[A284894(n+1)])]`
-/

namespace A285344.P4426631644585142503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285344.P4426631644585142503

/-! ## A285344.P18440052120819959306

`∑[A284909(Δ[A284894(n+1)])]`
-/

namespace A285344.P18440052120819959306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284909 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285344.P18440052120819959306

/-! ## A285344.P1901935329349767750

`∑[A284918(Δ[A284894(n+1)])]`
-/

namespace A285344.P1901935329349767750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284918 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285344.P1901935329349767750

/-! ## A285344.P11212994549643013065

`∑[A293435(Δ[A284894(n+1)])]`
-/

namespace A285344.P11212994549643013065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285344.P11212994549643013065

/-! ## A285344.P10230895542591699471

`∑[A284932(Δ[A284894(n+1)])+1]`
-/

namespace A285344.P10230895542591699471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285344.P10230895542591699471

/-! ## A285344.P7295533638894675589

`∑[A028310(Δ[A284894(n+1)]-2)]`
-/

namespace A285344.P7295533638894675589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285344.P7295533638894675589

/-! ## A285344.P8429687191498264350

`lt[1, A284929(A285360(n+1))+1]`
-/

namespace A285344.P8429687191498264350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (A285360 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285344.P8429687191498264350

/-! ## A285344.P5907784220257807200

`eq[1, A284929(eq[1, A284929(n+1)])]`
-/

namespace A285344.P5907784220257807200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285344.P5907784220257807200

/-! ## A285344.P11469593077181337480

`lt[n*A284893(2*n+1), n]`
-/

namespace A285344.P11469593077181337480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284893 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285344.P11469593077181337480

/-!
# A285345: Fixed point of the morphism 0 -> 10, 1 -> 1100.

The programs for A285345, the canonical program `A285345.P567793792438865630` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285345 has offset 1).

The definition of A285345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285345.P11881657794951703887

`char[A285347(n+1)-1]`
-/

namespace A285345.P11881657794951703887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285347 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285345.P11881657794951703887

namespace A285345

/-- `char[A285347(n+1)-1]` -/
def P11881657794951703887.Spec : Prop :=
  ∀ n, (P11881657794951703887.a n : ℤ) = A285345 (n + 1)

end A285345

/-! ## A285345.P7366109307057349955

`char[A284907(n+1)-2]`
-/

namespace A285345.P7366109307057349955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285345.P7366109307057349955

namespace A285345

/-- `char[A284907(n+1)-2]` -/
def P7366109307057349955.Spec : Prop :=
  ∀ n, (P7366109307057349955.a n : ℤ) = A285345 (n + 1)

end A285345

/-! ## A285345.P9540493496234623244

`char[A285353(n+1)-(n+1)]`
-/

namespace A285345.P9540493496234623244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285353 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285345.P9540493496234623244

namespace A285345

/-- `char[A285353(n+1)-(n+1)]` -/
def P9540493496234623244.Spec : Prop :=
  ∀ n, (P9540493496234623244.a n : ℤ) = A285345 (n + 1)

end A285345

/-! ## A285345.P10993257266620196205

`char[A189670(n+1)-(n+2)]`
-/

namespace A285345.P10993257266620196205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285345.P10993257266620196205

namespace A285345

/-- `char[A189670(n+1)-(n+2)]` -/
def P10993257266620196205.Spec : Prop :=
  ∀ n, (P10993257266620196205.a n : ℤ) = A285345 (n + 1)

end A285345

/-! ## A285345.P5108299928724652313

`char[2*n-A189668(n+1)]`
-/

namespace A285345.P5108299928724652313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A189668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285345.P5108299928724652313

namespace A285345

/-- `char[2*n-A189668(n+1)]` -/
def P5108299928724652313.Spec : Prop :=
  ∀ n, (P5108299928724652313.a n : ℤ) = A285345 (n + 1)

end A285345

/-! ## A285345.P567793792438865630

`A285305(A028352(n+1)/2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A285345

/-- `A285305(A028352(n+1)/2)` -/
def P567793792438865630.Spec : Prop :=
  ∀ n, P567793792438865630.a n = A285345 (n + 1)

theorem P567793792438865630.correct : P567793792438865630.Spec := by
  intro n
  simp only [A285345, Nat.add_sub_cancel]

end A285345

/-! ## A285345.P4890101077009610813

`A285354(n+1)-A189669(n+1)`
-/

namespace A285345.P4890101077009610813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285354 (n + 1) - A189669 (n + 1)

end

end A285345.P4890101077009610813

namespace A285345

/-- `A285354(n+1)-A189669(n+1)` -/
def P4890101077009610813.Spec : Prop :=
  ∀ n, P4890101077009610813.a n = A285345 (n + 1)

end A285345

/-! ## A285345.P10704455605302024686

`A284905(n+2)`
-/

namespace A285345.P10704455605302024686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (n + 2)

end

end A285345.P10704455605302024686

namespace A285345

/-- `A284905(n+2)` -/
def P10704455605302024686.Spec : Prop :=
  ∀ n, P10704455605302024686.a n = A285345 (n + 1)

end A285345

/-! ## A285345.P15854701564256707850

`log2(Δ[A189669(n+1)])`
-/

namespace A285345.P15854701564256707850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A285345.P15854701564256707850

namespace A285345

/-- `log2(Δ[A189669(n+1)])` -/
def P15854701564256707850.Spec : Prop :=
  ∀ n, P15854701564256707850.a n = (A285345 (n + 1) : ℝ)

end A285345

/-! ## A285345.P15207226860749334125

`A001221(Δ[A189669(n+1)])`
-/

namespace A285345.P15207226860749334125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A285345.P15207226860749334125

namespace A285345

/-- `A001221(Δ[A189669(n+1)])` -/
def P15207226860749334125.Spec : Prop :=
  ∀ n, P15207226860749334125.a n = A285345 (n + 1)

end A285345

/-! ## A285345.P9135655358020691223

`A001222(Δ[A189669(n+1)])`
-/

namespace A285345.P9135655358020691223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A285345.P9135655358020691223

namespace A285345

/-- `A001222(Δ[A189669(n+1)])` -/
def P9135655358020691223.Spec : Prop :=
  ∀ n, P9135655358020691223.a n = A285345 (n + 1)

end A285345

/-! ## A285345.P2753056910160725269

`A284817(Δ[A189669(n+1)]+1)`
-/

namespace A285345.P2753056910160725269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (f1 (n + 1) - f1 n + 1).toNat

end

end A285345.P2753056910160725269

namespace A285345

/-- `A284817(Δ[A189669(n+1)]+1)` -/
def P2753056910160725269.Spec : Prop :=
  ∀ n, P2753056910160725269.a n = A285345 (n + 1)

end A285345

/-! ## A285345.P17638395688744946501

`A189671(A189669(n+2)-A189669(n+1))`
-/

namespace A285345.P17638395688744946501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (A189669 (n + 2) - A189669 (n + 1)).toNat

end

end A285345.P17638395688744946501

namespace A285345

/-- `A189671(A189669(n+2)-A189669(n+1))` -/
def P17638395688744946501.Spec : Prop :=
  ∀ n, P17638395688744946501.a n = A285345 (n + 1)

end A285345

/-! ## A285345.P11702126398422338493

`A189673(A189669(n+2)-A189669(n+1))`
-/

namespace A285345.P11702126398422338493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (A189669 (n + 2) - A189669 (n + 1)).toNat

end

end A285345.P11702126398422338493

namespace A285345

/-- `A189673(A189669(n+2)-A189669(n+1))` -/
def P11702126398422338493.Spec : Prop :=
  ∀ n, P11702126398422338493.a n = A285345 (n + 1)

end A285345

/-! ## A285345.P13990196704015903921

`A189727(A189669(n+2)-A189669(n+1))`
-/

namespace A285345.P13990196704015903921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (A189669 (n + 2) - A189669 (n + 1)).toNat

end

end A285345.P13990196704015903921

namespace A285345

/-- `A189727(A189669(n+2)-A189669(n+1))` -/
def P13990196704015903921.Spec : Prop :=
  ∀ n, P13990196704015903921.a n = A285345 (n + 1)

end A285345

/-! ## A285345.P6817107504941963813

`A287385(A189669(n+2)-A189669(n+1))`
-/

namespace A285345.P6817107504941963813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287385 (A189669 (n + 2) - A189669 (n + 1)).toNat

end

end A285345.P6817107504941963813

namespace A285345

/-- `A287385(A189669(n+2)-A189669(n+1))` -/
def P6817107504941963813.Spec : Prop :=
  ∀ n, P6817107504941963813.a n = A285345 (n + 1)

end A285345

/-! ## A285345.P9216721183109374661

`A287438(A189669(n+2)-A189669(n+1))`
-/

namespace A285345.P9216721183109374661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287438 (A189669 (n + 2) - A189669 (n + 1)).toNat

end

end A285345.P9216721183109374661

namespace A285345

/-- `A287438(A189669(n+2)-A189669(n+1))` -/
def P9216721183109374661.Spec : Prop :=
  ∀ n, P9216721183109374661.a n = A285345 (n + 1)

end A285345

/-! ## A285345.P3708102417488609054

`A287528(A189669(n+2)-A189669(n+1))`
-/

namespace A285345.P3708102417488609054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287528 (A189669 (n + 2) - A189669 (n + 1)).toNat

end

end A285345.P3708102417488609054

namespace A285345

/-- `A287528(A189669(n+2)-A189669(n+1))` -/
def P3708102417488609054.Spec : Prop :=
  ∀ n, P3708102417488609054.a n = A285345 (n + 1)

end A285345

/-! ## A285345.P10781360420759351646

`A285305(A274601(n+1))`
-/

namespace A285345.P10781360420759351646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (A274601 (n + 1)).toNat

end

end A285345.P10781360420759351646

namespace A285345

/-- `A285305(A274601(n+1))` -/
def P10781360420759351646.Spec : Prop :=
  ∀ n, P10781360420759351646.a n = A285345 (n + 1)

end A285345

/-!
# A285346: Positions of 0 in A285345; complement of A285347.

The programs for A285346, the canonical program `A285346.P16359284748052672519` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285346 has offset 1).

The definition of A285346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285346.P16359284748052672519

`∑[4-A326420(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A285346

/-- `∑[4-A326420(n+1)]` -/
def P16359284748052672519.Spec : Prop :=
  ∀ n, P16359284748052672519.a n = A285346 (n + 1)

theorem P16359284748052672519.correct : P16359284748052672519.Spec := by
  intro n
  simp only [A285346, Nat.add_sub_cancel]

end A285346

/-! ## A285346.P4902618725332495682

`2*n+3-A285351(n+1)`
-/

namespace A285346.P4902618725332495682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A285351 (n + 1)

end

end A285346.P4902618725332495682

namespace A285346

/-- `2*n+3-A285351(n+1)` -/
def P4902618725332495682.Spec : Prop :=
  ∀ n, P4902618725332495682.a n = A285346 (n + 1)

theorem P4902618725332495682.correct : P4902618725332495682.Spec := by
  intro n
  simp only [A285346, Nat.add_sub_cancel, A285346.P4902618725332495682.a, A285346.P16359284748052672519.f1, A285346.P16359284748052672519.a, A285351, A285351.P8573257068003813108.a, A326420, A326420.P15749464054433305275.f1, A326420.P15749464054433305275.a, A284907, A284907.P2959481405445577709.a, A189670, A189670.P13812974504116450926.a, A189668, A189668.P16396119617420465884.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285346

/-! ## A285346.P9416997688705582191

`xor(A144396(n+1), A285351(n+1))`
-/

namespace A285346.P9416997688705582191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A144396 (n + 1)) (A285351 (n + 1))

end

end A285346.P9416997688705582191

namespace A285346

/-- `xor(A144396(n+1), A285351(n+1))` -/
def P9416997688705582191.Spec : Prop :=
  ∀ n, P9416997688705582191.a n = A285346 (n + 1)

end A285346

/-! ## A285346.P9040249796281346407

`A284906(n+2)-1`
-/

namespace A285346.P9040249796281346407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284906 (n + 2) - 1

end

end A285346.P9040249796281346407

namespace A285346

/-- `A284906(n+2)-1` -/
def P9040249796281346407.Spec : Prop :=
  ∀ n, P9040249796281346407.a n = A285346 (n + 1)

end A285346

/-! ## A285346.P962507266516629091

`xor(1, A285347(n+2))`
-/

namespace A285346.P962507266516629091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A285347 (n + 2))

end

end A285346.P962507266516629091

namespace A285346

/-- `xor(1, A285347(n+2))` -/
def P962507266516629091.Spec : Prop :=
  ∀ n, P962507266516629091.a n = A285346 (n + 1)

end A285346

/-! ## A285346.P2314806115526564391

`xor(1, A284907(n+2)-1)`
-/

namespace A285346.P2314806115526564391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A284907 (n + 2) - 1)

end

end A285346.P2314806115526564391

namespace A285346

/-- `xor(1, A284907(n+2)-1)` -/
def P2314806115526564391.Spec : Prop :=
  ∀ n, P2314806115526564391.a n = A285346 (n + 1)

end A285346

/-! ## A285346.P10816841221258220763

`A189668(n+2)+2*(n+1)`
-/

namespace A285346.P10816841221258220763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (n + 2) + (2 * (n + 1) : ℤ)

end

end A285346.P10816841221258220763

namespace A285346

/-- `A189668(n+2)+2*(n+1)` -/
def P10816841221258220763.Spec : Prop :=
  ∀ n, P10816841221258220763.a n = A285346 (n + 1)

end A285346

/-! ## A285346.P1365541804432070864

`∑[A006530(Δ[A284906(n+1)])]`
-/

namespace A285346.P1365541804432070864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284906 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285346.P1365541804432070864

namespace A285346

/-- `∑[A006530(Δ[A284906(n+1)])]` -/
def P1365541804432070864.Spec : Prop :=
  ∀ n, P1365541804432070864.a n = A285346 (n + 1)

end A285346

/-! ## A285346.P4179068005430476518

`∑[A014963(Δ[A284906(n+1)])]`
-/

namespace A285346.P4179068005430476518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284906 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285346.P4179068005430476518

namespace A285346

/-- `∑[A014963(Δ[A284906(n+1)])]` -/
def P4179068005430476518.Spec : Prop :=
  ∀ n, P4179068005430476518.a n = A285346 (n + 1)

end A285346

/-! ## A285346.P2713048632860895720

`A016885(n+1)-(A189670(n+2)+1)`
-/

namespace A285346.P2713048632860895720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (n + 1) - (A189670 (n + 2) + 1)

end

end A285346.P2713048632860895720

namespace A285346

/-- `A016885(n+1)-(A189670(n+2)+1)` -/
def P2713048632860895720.Spec : Prop :=
  ∀ n, P2713048632860895720.a n = A285346 (n + 1)

end A285346

/-! ## A285346.P8469826091318799740

`A004767(n+1)-(A284907(n+2)+1)`
-/

namespace A285346.P8469826091318799740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (n + 1) - (A284907 (n + 2) + 1)

end

end A285346.P8469826091318799740

namespace A285346

/-- `A004767(n+1)-(A284907(n+2)+1)` -/
def P8469826091318799740.Spec : Prop :=
  ∀ n, P8469826091318799740.a n = A285346 (n + 1)

end A285346

/-! ## A285346.P10036783587808508042

`A016825(n+1)-(A285347(n+2)+1)`
-/

namespace A285346.P10036783587808508042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (n + 1) - (A285347 (n + 2) + 1)

end

end A285346.P10036783587808508042

namespace A285346

/-- `A016825(n+1)-(A285347(n+2)+1)` -/
def P10036783587808508042.Spec : Prop :=
  ∀ n, P10036783587808508042.a n = A285346 (n + 1)

end A285346

/-! ## A285346.P14518916177948402411

`A016873(n+1)-(A285353(n+2)+1)`
-/

namespace A285346.P14518916177948402411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (n + 1) - (A285353 (n + 2) + 1)

end

end A285346.P14518916177948402411

namespace A285346

/-- `A016873(n+1)-(A285353(n+2)+1)` -/
def P14518916177948402411.Spec : Prop :=
  ∀ n, P14518916177948402411.a n = A285346 (n + 1)

end A285346

/-! ## A285346.P12822047472787236278

`xor(A284907(n+2)+1, A088837(n+2))`
-/

namespace A285346.P12822047472787236278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A284907 (n + 2) + 1) (A088837 (n + 2))

end

end A285346.P12822047472787236278

namespace A285346

/-- `xor(A284907(n+2)+1, A088837(n+2))` -/
def P12822047472787236278.Spec : Prop :=
  ∀ n, P12822047472787236278.a n = A285346 (n + 1)

end A285346

/-! ## A285346.P16802302908174566481

`A285354(2*(n+1))-(n+1)`
-/

namespace A285346.P16802302908174566481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285354 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A285346.P16802302908174566481

namespace A285346

/-- `A285354(2*(n+1))-(n+1)` -/
def P16802302908174566481.Spec : Prop :=
  ∀ n, P16802302908174566481.a n = A285346 (n + 1)

end A285346

/-! ## A285346.P11597485155639028548

`A285345(2*(n+1))+2*(n+1)`
-/

namespace A285346.P11597485155639028548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285345 (2 * (n + 1)) + (2 * (n + 1) : ℤ)

end

end A285346.P11597485155639028548

namespace A285346

/-- `A285345(2*(n+1))+2*(n+1)` -/
def P11597485155639028548.Spec : Prop :=
  ∀ n, P11597485155639028548.a n = A285346 (n + 1)

end A285346

/-! ## A285346.P5631839699958461375

`lt[n*A284905(n+1), n]`
-/

namespace A285346.P5631839699958461375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284905 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285346.P5631839699958461375

namespace A285346

/-- `lt[n*A284905(n+1), n]` -/
def P5631839699958461375.Spec : Prop :=
  ∀ n, (P5631839699958461375.a n : ℤ) = A285346 (n + 1)

end A285346

/-! ## A285346.P16562241413076560877

`A189669(2*n+3)-(n+2)`
-/

namespace A285346.P16562241413076560877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (2 * n + 3) - (n + 2 : ℤ)

end

end A285346.P16562241413076560877

namespace A285346

/-- `A189669(2*n+3)-(n+2)` -/
def P16562241413076560877.Spec : Prop :=
  ∀ n, P16562241413076560877.a n = A285346 (n + 1)

end A285346

/-! ## A285346.P6958960005442415621

`A004442(A285347(n+2))`
-/

namespace A285346.P6958960005442415621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A285347 (n + 2)).toNat

end

end A285346.P6958960005442415621

namespace A285346

/-- `A004442(A285347(n+2))` -/
def P6958960005442415621.Spec : Prop :=
  ∀ n, P6958960005442415621.a n = A285346 (n + 1)

end A285346

/-!
# A285347: Positions of 1 in A285345; complement of A285346.

The programs for A285347, the canonical program `A285347.P10878793886673022585` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285347 has offset 1).

The definition of A285347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285347.P10878793886673022585

`A284907(n+1)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A285347

/-- `A284907(n+1)-1` -/
def P10878793886673022585.Spec : Prop :=
  ∀ n, P10878793886673022585.a n = A285347 (n + 1)

theorem P10878793886673022585.correct : P10878793886673022585.Spec := by
  intro n
  simp only [A285347, Nat.add_sub_cancel]

end A285347

/-! ## A285347.P1896590510456673579

`A285353(n+1)-n`
-/

namespace A285347.P1896590510456673579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285353 (n + 1) - (n : ℤ)

end

end A285347.P1896590510456673579

namespace A285347

/-- `A285353(n+1)-n` -/
def P1896590510456673579.Spec : Prop :=
  ∀ n, P1896590510456673579.a n = A285347 (n + 1)

end A285347

/-! ## A285347.P5212606868966218376

`A189670(n+1)-(n+1)`
-/

namespace A285347.P5212606868966218376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (n + 1) - (n + 1 : ℤ)

end

end A285347.P5212606868966218376

namespace A285347

/-- `A189670(n+1)-(n+1)` -/
def P5212606868966218376.Spec : Prop :=
  ∀ n, P5212606868966218376.a n = A285347 (n + 1)

theorem P5212606868966218376.correct : P5212606868966218376.Spec := by
  intro n
  simp only [A285347, Nat.add_sub_cancel, A285347.P5212606868966218376.a, A285347.P10878793886673022585.a, A189670, A189670.P13812974504116450926.a, A284907, A284907.P2959481405445577709.a, A189668, A189668.P16396119617420465884.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285347

/-! ## A285347.P3381458817584888324

`A326420(n)+a(n-1)` with `a(0)=1`
-/

namespace A285347.P3381458817584888324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A326420 n + a (n - 1)

end

end A285347.P3381458817584888324

namespace A285347

/-- `A326420(n)+a(n-1)` -/
def P3381458817584888324.Spec : Prop :=
  ∀ n, P3381458817584888324.a n = A285347 (n + 1)

end A285347

/-! ## A285347.P15597892682068585317

`Δ[n²]-A189668(n+1)`
-/

namespace A285347.P15597892682068585317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A189668 (n + 1)

end

end A285347.P15597892682068585317

namespace A285347

/-- `Δ[n²]-A189668(n+1)` -/
def P15597892682068585317.Spec : Prop :=
  ∀ n, P15597892682068585317.a n = A285347 (n + 1)

theorem P15597892682068585317.correct : P15597892682068585317.Spec := by
  intro n
  simp only [A285347, Nat.add_sub_cancel, A285347.P15597892682068585317.f1, A285347.P15597892682068585317.a, A285347.P10878793886673022585.a, A189668, A189668.P16396119617420465884.a, A284907, A284907.P2959481405445577709.a, A189670, A189670.P13812974504116450926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285347

/-! ## A285347.P7749839147732477072

`A016825(n)-A284906(n+1)`
-/

namespace A285347.P7749839147732477072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A284906 (n + 1)

end

end A285347.P7749839147732477072

namespace A285347

/-- `A016825(n)-A284906(n+1)` -/
def P7749839147732477072.Spec : Prop :=
  ∀ n, P7749839147732477072.a n = A285347 (n + 1)

theorem P7749839147732477072.correct : P7749839147732477072.Spec := by
  intro n
  simp only [A285347, Nat.add_sub_cancel, A285347.P7749839147732477072.a, A285347.P10878793886673022585.a, A016825, A016825.P4712696052905976233.a, A284906, A284906.P962888511464918355.f1, A284906.P962888511464918355.a, A284907, A284907.P2959481405445577709.a, A189668, A189668.P16396119617420465884.a, A189670, A189670.P13812974504116450926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285347

/-! ## A285347.P12865202747928970629

`A082108(n)%A284907(n+1)`
-/

namespace A285347.P12865202747928970629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082108 n) (A284907 (n + 1))

end

end A285347.P12865202747928970629

namespace A285347

/-- `A082108(n)%A284907(n+1)` -/
def P12865202747928970629.Spec : Prop :=
  ∀ n, P12865202747928970629.a n = A285347 (n + 1)

end A285347

/-! ## A285347.P9542573418748707415

`A004767(n)-(A284906(n+1)+1)`
-/

namespace A285347.P9542573418748707415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - (A284906 (n + 1) + 1)

end

end A285347.P9542573418748707415

namespace A285347

/-- `A004767(n)-(A284906(n+1)+1)` -/
def P9542573418748707415.Spec : Prop :=
  ∀ n, P9542573418748707415.a n = A285347 (n + 1)

theorem P9542573418748707415.correct : P9542573418748707415.Spec := by
  intro n
  simp only [A285347, Nat.add_sub_cancel, A285347.P9542573418748707415.a, A285347.P10878793886673022585.a, A004767, A004767.P13352534504447192883.a, A284906, A284906.P962888511464918355.f1, A284906.P962888511464918355.a, A284907, A284907.P2959481405445577709.a, A189668, A189668.P16396119617420465884.a, A189670, A189670.P13812974504116450926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285347

/-! ## A285347.P10186367222282202117

`A016777(n)-(A189668(n+1)+n)`
-/

namespace A285347.P10186367222282202117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (A189668 (n + 1) + (n : ℤ))

end

end A285347.P10186367222282202117

namespace A285347

/-- `A016777(n)-(A189668(n+1)+n)` -/
def P10186367222282202117.Spec : Prop :=
  ∀ n, P10186367222282202117.a n = A285347 (n + 1)

theorem P10186367222282202117.correct : P10186367222282202117.Spec := by
  intro n
  simp only [A285347, Nat.add_sub_cancel, A285347.P10186367222282202117.a, A285347.P10878793886673022585.a, A016777, A016777.P9931792138852554157.a, A189668, A189668.P16396119617420465884.a, A284907, A284907.P2959481405445577709.a, A189670, A189670.P13812974504116450926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285347

/-! ## A285347.P12332421298214574566

`A016873(n)-(A284906(n+1)+n)`
-/

namespace A285347.P12332421298214574566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n - (A284906 (n + 1) + (n : ℤ))

end

end A285347.P12332421298214574566

namespace A285347

/-- `A016873(n)-(A284906(n+1)+n)` -/
def P12332421298214574566.Spec : Prop :=
  ∀ n, P12332421298214574566.a n = A285347 (n + 1)

theorem P12332421298214574566.correct : P12332421298214574566.Spec := by
  intro n
  simp only [A285347, Nat.add_sub_cancel, A285347.P12332421298214574566.a, A285347.P10878793886673022585.a, A016873, A016873.P366335242068170250.a, A284906, A284906.P962888511464918355.f1, A284906.P962888511464918355.a, A284907, A284907.P2959481405445577709.a, A189668, A189668.P16396119617420465884.a, A189670, A189670.P13812974504116450926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285347

/-! ## A285347.P4690971385767331116

`A284906(n+1)-2*A189668(n+1)`
-/

namespace A285347.P4690971385767331116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284906 (n + 1) - 2 * A189668 (n + 1)

end

end A285347.P4690971385767331116

namespace A285347

/-- `A284906(n+1)-2*A189668(n+1)` -/
def P4690971385767331116.Spec : Prop :=
  ∀ n, P4690971385767331116.a n = A285347 (n + 1)

theorem P4690971385767331116.correct : P4690971385767331116.Spec := by
  intro n
  simp only [A285347, Nat.add_sub_cancel, A285347.P4690971385767331116.a, A285347.P10878793886673022585.a, A189668, A189668.P16396119617420465884.a, A284906, A284906.P962888511464918355.f1, A284906.P962888511464918355.a, A284907, A284907.P2959481405445577709.a, A189670, A189670.P13812974504116450926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A285347

/-! ## A285347.P3269623083191707584

`xor(A284906(n+1)+1, A088837(n+1))`
-/

namespace A285347.P3269623083191707584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A284906 (n + 1) + 1) (A088837 (n + 1))

end

end A285347.P3269623083191707584

namespace A285347

/-- `xor(A284906(n+1)+1, A088837(n+1))` -/
def P3269623083191707584.Spec : Prop :=
  ∀ n, P3269623083191707584.a n = A285347 (n + 1)

end A285347

/-! ## A285347.P16731845531455636989

`lt[0, A284905(n+1)]`
-/

namespace A285347.P16731845531455636989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285347.P16731845531455636989

namespace A285347

/-- `lt[0, A284905(n+1)]` -/
def P16731845531455636989.Spec : Prop :=
  ∀ n, (P16731845531455636989.a n : ℤ) = A285347 (n + 1)

end A285347

/-! ## A285347.P15148276357282428094

`filter[n+1, A285345(#)]`
-/

namespace A285347.P15148276357282428094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285345 (f1 j) = 1) n)

end

end A285347.P15148276357282428094

namespace A285347

/-- `filter[n+1, A285345(#)]` -/
def P15148276357282428094.Spec : Prop :=
  ∀ n, (P15148276357282428094.a n : ℤ) = A285347 (n + 1)

end A285347

/-! ## A285347.P14155919188617011778

`A284905(2*(n+1))+2*n`
-/

namespace A285347.P14155919188617011778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (2 * (n + 1)) + (2 * n : ℤ)

end

end A285347.P14155919188617011778

namespace A285347

/-- `A284905(2*(n+1))+2*n` -/
def P14155919188617011778.Spec : Prop :=
  ∀ n, P14155919188617011778.a n = A285347 (n + 1)

end A285347

/-! ## A285347.P653443875022363362

`A285345(2*n+1)+2*n`
-/

namespace A285347.P653443875022363362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285345 (2 * n + 1) + (2 * n : ℤ)

end

end A285347.P653443875022363362

namespace A285347

/-- `A285345(2*n+1)+2*n` -/
def P653443875022363362.Spec : Prop :=
  ∀ n, P653443875022363362.a n = A285347 (n + 1)

end A285347

/-! ## A285347.P17994004944521340266

`2*n+1-A189632(2*n+1)`
-/

namespace A285347.P17994004944521340266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A189632 (2 * n + 1)

end

end A285347.P17994004944521340266

namespace A285347

/-- `2*n+1-A189632(2*n+1)` -/
def P17994004944521340266.Spec : Prop :=
  ∀ n, P17994004944521340266.a n = A285347 (n + 1)

end A285347

/-!
# A285348: Expansion of r(q^2) / r(q)^2 in powers of q where r() is the Rogers-Ramanujan continued fraction.

The programs for A285348, there is no canonical definition to state claims against.
-/

/-! ## A285348.P7158124271700407411

`A285349(n)-A138518(n)%A285630(n)`
-/

namespace A285348.P7158124271700407411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285349 n - Int.tmod (A138518 n) (A285630 n)

end

end A285348.P7158124271700407411

/-!
# A285349: Expansion of r(q)^2 / r(q^2) in powers of q where r() is the Rogers-Ramanujan continued fraction.

The programs for A285349, there is no canonical definition to state claims against.
-/

/-! ## A285349.P12265293532272828150

`A285348(n)+A138518(n)%A078905(n+1)`
-/

namespace A285349.P12265293532272828150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285348 n + Int.tmod (A138518 n) (A078905 (n + 1))

end

end A285349.P12265293532272828150

/-! ## A285349.P14299912934947580541

`A138518(n)+A285348(n)%A285630(n)`
-/

namespace A285349.P14299912934947580541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138518 n + Int.tmod (A285348 n) (A285630 n)

end

end A285349.P14299912934947580541

/-! ## A285349.P3558301313404372440

`2*A112803(2*n)-A000007(n)`
-/

namespace A285349.P3558301313404372440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112803 (2 * n) - A000007 n

end

end A285349.P3558301313404372440

/-! ## A285349.P15435797882171558805

`gcd(2, A000010(n+2))*A112803(2*n)`
-/

namespace A285349.P15435797882171558805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000010 (n + 2)) : ℤ) * A112803 (2 * n)

end

end A285349.P15435797882171558805

/-! ## A285349.P8704842922874728633

`A061142(A020639(n+1))*A112803(2*n)`
-/

namespace A285349.P8704842922874728633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A020639 (n + 1)).toNat * A112803 (2 * n)

end

end A285349.P8704842922874728633

/-!
# A285351: a(n) = 2n + 1 - A285346(n).

The programs for A285351, the canonical program `A285351.P8573257068003813108` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285351 has offset 1).

The definition of A285351 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285346, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A285351.P8573257068003813108

`2*(n+1)+1-A285346(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A285351

/-- `2*(n+1)+1-A285346(n+1)` -/
def P8573257068003813108.Spec : Prop :=
  ∀ n, P8573257068003813108.a n = A285351 (n + 1)

theorem P8573257068003813108.correct : P8573257068003813108.Spec := by
  intro n
  simp only [A285351, Nat.add_sub_cancel]

end A285351

/-! ## A285351.P1220081497491024285

`7%A326420(n+1)`
-/

namespace A285351.P1220081497491024285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A326420 (n + 1))

end

end A285351.P1220081497491024285

namespace A285351

/-- `7%A326420(n+1)` -/
def P1220081497491024285.Spec : Prop :=
  ∀ n, P1220081497491024285.a n = A285351 (n + 1)

end A285351

/-! ## A285351.P968105108850350384

`char[A189669(n+1)-2]`
-/

namespace A285351.P968105108850350384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285351.P968105108850350384

namespace A285351

/-- `char[A189669(n+1)-2]` -/
def P968105108850350384.Spec : Prop :=
  ∀ n, (P968105108850350384.a n : ℤ) = A285351 (n + 1)

end A285351

/-! ## A285351.P17544347760096097087

`A189668(A285346(n+1)-2*n)`
-/

namespace A285351.P17544347760096097087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (A285346 (n + 1) - (2 * n : ℤ)).toNat

end

end A285351.P17544347760096097087

namespace A285351

/-- `A189668(A285346(n+1)-2*n)` -/
def P17544347760096097087.Spec : Prop :=
  ∀ n, P17544347760096097087.a n = A285351 (n + 1)

end A285351

/-! ## A285351.P11889437680283285214

`xor(A144396(n+1), A285346(n+1))`
-/

namespace A285351.P11889437680283285214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A144396 (n + 1)) (A285346 (n + 1))

end

end A285351.P11889437680283285214

namespace A285351

/-- `xor(A144396(n+1), A285346(n+1))` -/
def P11889437680283285214.Spec : Prop :=
  ∀ n, P11889437680283285214.a n = A285351 (n + 1)

end A285351

/-! ## A285351.P5981865441845823447

`1-A189668(n+2)`
-/

namespace A285351.P5981865441845823447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189668 (n + 2)

end

end A285351.P5981865441845823447

namespace A285351

/-- `1-A189668(n+2)` -/
def P5981865441845823447.Spec : Prop :=
  ∀ n, P5981865441845823447.a n = A285351 (n + 1)

end A285351

/-! ## A285351.P7438037357934601998

`A284906(n+2)%2`
-/

namespace A285351.P7438037357934601998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284906 (n + 2)) 2

end

end A285351.P7438037357934601998

namespace A285351

/-- `A284906(n+2)%2` -/
def P7438037357934601998.Spec : Prop :=
  ∀ n, P7438037357934601998.a n = A285351 (n + 1)

end A285351

/-! ## A285351.P12273732018923789572

`A285347(n+2)%2`
-/

namespace A285351.P12273732018923789572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285347 (n + 2)) 2

end

end A285351.P12273732018923789572

namespace A285351

/-- `A285347(n+2)%2` -/
def P12273732018923789572.Spec : Prop :=
  ∀ n, P12273732018923789572.a n = A285351 (n + 1)

end A285351

/-! ## A285351.P12070765768861827470

`A285353(n+2)%3`
-/

namespace A285351.P12070765768861827470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285353 (n + 2)) 3

end

end A285351.P12070765768861827470

namespace A285351

/-- `A285353(n+2)%3` -/
def P12070765768861827470.Spec : Prop :=
  ∀ n, P12070765768861827470.a n = A285351 (n + 1)

end A285351

/-! ## A285351.P15758840709844445848

`(1-A287438(n+2))²`
-/

namespace A285351.P15758840709844445848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A287438 (n + 2)) ^ 2

end

end A285351.P15758840709844445848

namespace A285351

/-- `(1-A287438(n+2))²` -/
def P15758840709844445848.Spec : Prop :=
  ∀ n, P15758840709844445848.a n = A285351 (n + 1)

end A285351

/-! ## A285351.P703329239872274678

`(1-A287528(n+2))²`
-/

namespace A285351.P703329239872274678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A287528 (n + 2)) ^ 2

end

end A285351.P703329239872274678

namespace A285351

/-- `(1-A287528(n+2))²` -/
def P703329239872274678.Spec : Prop :=
  ∀ n, P703329239872274678.a n = A285351 (n + 1)

end A285351

/-! ## A285351.P18366854570866286697

`1-Δ[A189671(n+1)]`
-/

namespace A285351.P18366854570866286697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A285351.P18366854570866286697

namespace A285351

/-- `1-Δ[A189671(n+1)]` -/
def P18366854570866286697.Spec : Prop :=
  ∀ n, P18366854570866286697.a n = A285351 (n + 1)

end A285351

/-! ## A285351.P1210206724666598092

`val(A284907(n+2), n+2)`
-/

namespace A285351.P1210206724666598092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A284907 (n + 2)).toNat (n + 2)

end

end A285351.P1210206724666598092

namespace A285351

/-- `val(A284907(n+2), n+2)` -/
def P1210206724666598092.Spec : Prop :=
  ∀ n, (P1210206724666598092.a n : ℤ) = A285351 (n + 1)

end A285351

/-! ## A285351.P13056196248838925839

`A284932(Δ[A284907(n+1)]²)`
-/

namespace A285351.P13056196248838925839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A285351.P13056196248838925839

namespace A285351

/-- `A284932(Δ[A284907(n+1)]²)` -/
def P13056196248838925839.Spec : Prop :=
  ∀ n, P13056196248838925839.a n = A285351 (n + 1)

end A285351

/-! ## A285351.P5430882429408013320

`A284932(Δ[A284907(n+1)]+1)`
-/

namespace A285351.P5430882429408013320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 (f1 (n + 1) - f1 n + 1).toNat

end

end A285351.P5430882429408013320

namespace A285351

/-- `A284932(Δ[A284907(n+1)]+1)` -/
def P5430882429408013320.Spec : Prop :=
  ∀ n, P5430882429408013320.a n = A285351 (n + 1)

end A285351

/-! ## A285351.P2799820788552860797

`A189628(A285347(n+2)-2*n)`
-/

namespace A285351.P2799820788552860797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (A285347 (n + 2) - (2 * n : ℤ)).toNat

end

end A285351.P2799820788552860797

namespace A285351

/-- `A189628(A285347(n+2)-2*n)` -/
def P2799820788552860797.Spec : Prop :=
  ∀ n, P2799820788552860797.a n = A285351 (n + 1)

end A285351

/-! ## A285351.P17143740351016603568

`A285249(A284907(n+2)-2*n)`
-/

namespace A285351.P17143740351016603568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (A284907 (n + 2) - (2 * n : ℤ)).toNat

end

end A285351.P17143740351016603568

namespace A285351

/-- `A285249(A284907(n+2)-2*n)` -/
def P17143740351016603568.Spec : Prop :=
  ∀ n, P17143740351016603568.a n = A285351 (n + 1)

end A285351

/-! ## A285351.P6698830735562289762

`A285252(A284907(n+2)-2*n)`
-/

namespace A285351.P6698830735562289762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285252 (A284907 (n + 2) - (2 * n : ℤ)).toNat

end

end A285351.P6698830735562289762

namespace A285351

/-- `A285252(A284907(n+2)-2*n)` -/
def P6698830735562289762.Spec : Prop :=
  ∀ n, P6698830735562289762.a n = A285351 (n + 1)

end A285351

/-! ## A285351.P8793292581757781417

`A189671(A285347(n+2)-(2*n+1))`
-/

namespace A285351.P8793292581757781417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (A285347 (n + 2) - (2 * n + 1 : ℤ)).toNat

end

end A285351.P8793292581757781417

namespace A285351

/-- `A189671(A285347(n+2)-(2*n+1))` -/
def P8793292581757781417.Spec : Prop :=
  ∀ n, P8793292581757781417.a n = A285351 (n + 1)

end A285351

/-! ## A285351.P13906096752772903521

`A285249(A284906(n+2)-(2*n+1))`
-/

namespace A285351.P13906096752772903521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285249 (A284906 (n + 2) - (2 * n + 1 : ℤ)).toNat

end

end A285351.P13906096752772903521

namespace A285351

/-- `A285249(A284906(n+2)-(2*n+1))` -/
def P13906096752772903521.Spec : Prop :=
  ∀ n, P13906096752772903521.a n = A285351 (n + 1)

end A285351

/-!
# A285352: Positions of 0 in A284932; complement of A285303.

The programs for A285352, there is no canonical definition to state claims against.
-/

/-! ## A285352.P11925006721316226998

`comp[A285303(n+1)-1]+1`
-/

namespace A285352.P11925006721316226998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285303 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285352.P11925006721316226998

/-! ## A285352.P15825741148852999604

`eq[0, A284932(n+1)]+1`
-/

namespace A285352.P15825741148852999604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285352.P15825741148852999604

/-! ## A285352.P14722564471191847944

`lt[n*A284932(A028310(n)), n]`
-/

namespace A285352.P14722564471191847944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284932 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285352.P14722564471191847944

/-! ## A285352.P12553339846024994230

`lt[A284932(n+1), A141044(n)]+1`
-/

namespace A285352.P12553339846024994230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A285352.P12553339846024994230

/-! ## A285352.P10171589073893514654

`record[n+1-A008586(n*A284932(n+1))]`
-/

namespace A285352.P10171589073893514654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008586 ((n : ℤ) * A284932 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285352.P10171589073893514654

/-! ## A285352.P677503506235225064

`record[n+1-A110927(n+1)*A284932(n+1)]`
-/

namespace A285352.P677503506235225064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A110927 (n + 1) * A284932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285352.P677503506235225064

/-! ## A285352.P13818905208409261135

`lt[char[A285303(n+1)], A057427(n)]`
-/

namespace A285352.P13818905208409261135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285303 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A285352.P13818905208409261135

/-! ## A285352.P5316482141850370489

`lt[A284932(A028310(n)), A057427(n)]`
-/

namespace A285352.P5316482141850370489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285352.P5316482141850370489

/-! ## A285352.P14703651472049945468

`record[n+1-A067538(n+1)*A284932(n+1)]`
-/

namespace A285352.P14703651472049945468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A067538 (n + 1) * A284932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285352.P14703651472049945468

/-! ## A285352.P302848037743135740

`record[n+1-A156552(n*A284932(n+1)+1)]`
-/

namespace A285352.P302848037743135740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A156552 ((n : ℤ) * A284932 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285352.P302848037743135740

/-!
# A285353: Positions of 0 in A285351; complement of A285354.

The programs for A285353, the canonical program `A285353.P7367311202531863345` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285353 has offset 1).

The definition of A285353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285353.P7367311202531863345

`lt[1, (((n+1)*a(floor(n/3)))%3)!]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285353

/-- `lt[1, (((n+1)*a(floor(n/3)))%3)!]` -/
def P7367311202531863345.Spec : Prop :=
  ∀ n, (P7367311202531863345.a n : ℤ) = A285353 (n + 1)

theorem P7367311202531863345.correct : P7367311202531863345.Spec := by
  intro n
  simp only [A285353, Nat.add_sub_cancel]

end A285353

/-! ## A285353.P9837622468447418486

`A189670(n+1)-1`
-/

namespace A285353.P9837622468447418486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (n + 1) - 1

end

end A285353.P9837622468447418486

namespace A285353

/-- `A189670(n+1)-1` -/
def P9837622468447418486.Spec : Prop :=
  ∀ n, P9837622468447418486.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P13079892917359858592

`A285347(n+1)+n`
-/

namespace A285353.P13079892917359858592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285347 (n + 1) + (n : ℤ)

end

end A285353.P13079892917359858592

namespace A285353

/-- `A285347(n+1)+n` -/
def P13079892917359858592.Spec : Prop :=
  ∀ n, P13079892917359858592.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P10481009922763684319

`A284907(n+1)-1+n`
-/

namespace A285353.P10481009922763684319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1) - 1 + (n : ℤ)

end

end A285353.P10481009922763684319

namespace A285353

/-- `A284907(n+1)-1+n` -/
def P10481009922763684319.Spec : Prop :=
  ∀ n, P10481009922763684319.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P7989192877127383423

`a(n-1)+A326420(n)+1` with `a(0)=1`
-/

namespace A285353.P7989192877127383423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A326420 n + 1)

end

end A285353.P7989192877127383423

namespace A285353

/-- `a(n-1)+A326420(n)+1` -/
def P7989192877127383423.Spec : Prop :=
  ∀ n, P7989192877127383423.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P6890089049528577204

`A284907(n+1)+A023443(n)`
-/

namespace A285353.P6890089049528577204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1) + A023443 n

end

end A285353.P6890089049528577204

namespace A285353

/-- `A284907(n+1)+A023443(n)` -/
def P6890089049528577204.Spec : Prop :=
  ∀ n, P6890089049528577204.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P2787608520613215309

`A016777(n)-A189668(n+1)`
-/

namespace A285353.P2787608520613215309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A189668 (n + 1)

end

end A285353.P2787608520613215309

namespace A285353

/-- `A016777(n)-A189668(n+1)` -/
def P2787608520613215309.Spec : Prop :=
  ∀ n, P2787608520613215309.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P17619179120532064899

`A016873(n)-A284906(n+1)`
-/

namespace A285353.P17619179120532064899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n - A284906 (n + 1)

end

end A285353.P17619179120532064899

namespace A285353

/-- `A016873(n)-A284906(n+1)` -/
def P17619179120532064899.Spec : Prop :=
  ∀ n, P17619179120532064899.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P5713092222077856861

`A284907(n+1)-A024000(n)`
-/

namespace A285353.P5713092222077856861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284907 (n + 1) - A024000 n

end

end A285353.P5713092222077856861

namespace A285353

/-- `A284907(n+1)-A024000(n)` -/
def P5713092222077856861.Spec : Prop :=
  ∀ n, P5713092222077856861.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P12077989971517695397

`A016789(n)-(A189668(n+1)+1)`
-/

namespace A285353.P12077989971517695397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - (A189668 (n + 1) + 1)

end

end A285353.P12077989971517695397

namespace A285353

/-- `A016789(n)-(A189668(n+1)+1)` -/
def P12077989971517695397.Spec : Prop :=
  ∀ n, P12077989971517695397.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P10356169840321194495

`A016885(n)-(A284906(n+1)+1)`
-/

namespace A285353.P10356169840321194495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - (A284906 (n + 1) + 1)

end

end A285353.P10356169840321194495

namespace A285353

/-- `A016885(n)-(A284906(n+1)+1)` -/
def P10356169840321194495.Spec : Prop :=
  ∀ n, P10356169840321194495.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P11922535466936854544

`A069131(n+1)%A189670(n+1)`
-/

namespace A285353.P11922535466936854544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069131 (n + 1)) (A189670 (n + 1))

end

end A285353.P11922535466936854544

namespace A285353

/-- `A069131(n+1)%A189670(n+1)` -/
def P11922535466936854544.Spec : Prop :=
  ∀ n, P11922535466936854544.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P1706485841315527505

`A016825(n)-A284906(n+1)+n`
-/

namespace A285353.P1706485841315527505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A284906 (n + 1) + (n : ℤ)

end

end A285353.P1706485841315527505

namespace A285353

/-- `A016825(n)-A284906(n+1)+n` -/
def P1706485841315527505.Spec : Prop :=
  ∀ n, P1706485841315527505.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P11673334547734637663

`A001478(n+1)+A189670(n+1)+n`
-/

namespace A285353.P11673334547734637663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A189670 (n + 1) + (n : ℤ))

end

end A285353.P11673334547734637663

namespace A285353

/-- `A001478(n+1)+A189670(n+1)+n` -/
def P11673334547734637663.Spec : Prop :=
  ∀ n, P11673334547734637663.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P13422732570081174311

`A287529(n+1)-(A287528(n+1)+A189668(n+1))`
-/

namespace A285353.P13422732570081174311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287529 (n + 1) - (A287528 (n + 1) + A189668 (n + 1))

end

end A285353.P13422732570081174311

namespace A285353

/-- `A287529(n+1)-(A287528(n+1)+A189668(n+1))` -/
def P13422732570081174311.Spec : Prop :=
  ∀ n, P13422732570081174311.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P6709389095040537653

`floor(A189634(2*n+1)/2)`
-/

namespace A285353.P6709389095040537653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A189634 (2 * n + 1) : ℚ) / 2⌋

end

end A285353.P6709389095040537653

namespace A285353

/-- `floor(A189634(2*n+1)/2)` -/
def P6709389095040537653.Spec : Prop :=
  ∀ n, P6709389095040537653.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P10115018727675938370

`3*n+1-A189632(2*n+1)`
-/

namespace A285353.P10115018727675938370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A189632 (2 * n + 1)

end

end A285353.P10115018727675938370

namespace A285353

/-- `3*n+1-A189632(2*n+1)` -/
def P10115018727675938370.Spec : Prop :=
  ∀ n, P10115018727675938370.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P13467590782996735406

`A026178(A285347(n+1))`
-/

namespace A285353.P13467590782996735406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026178 (A285347 (n + 1)).toNat

end

end A285353.P13467590782996735406

namespace A285353

/-- `A026178(A285347(n+1))` -/
def P13467590782996735406.Spec : Prop :=
  ∀ n, P13467590782996735406.a n = A285353 (n + 1)

end A285353

/-! ## A285353.P13473592377888284806

`A189669(2*n+1-A189668(n+1))`
-/

namespace A285353.P13473592377888284806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 ((2 * n + 1 : ℤ) - A189668 (n + 1)).toNat

end

end A285353.P13473592377888284806

namespace A285353

/-- `A189669(2*n+1-A189668(n+1))` -/
def P13473592377888284806.Spec : Prop :=
  ∀ n, P13473592377888284806.a n = A285353 (n + 1)

end A285353

/-!
# A285354: Positions of 1 in A285351; complement of A285353.

The programs for A285354, the canonical program `A285354.P3586546555973853371` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285354 has offset 1).

The definition of A285354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285354.P3586546555973853371

`eq[1, (((n+1)*a(floor(n/3)))%3)!]` with `a(0)=4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285354

/-- `eq[1, (((n+1)*a(floor(n/3)))%3)!]` -/
def P3586546555973853371.Spec : Prop :=
  ∀ n, (P3586546555973853371.a n : ℤ) = A285354 (n + 1)

theorem P3586546555973853371.correct : P3586546555973853371.Spec := by
  intro n
  simp only [A285354, Nat.add_sub_cancel]

end A285354

/-! ## A285354.P5755754196913978446

`∑[A285345(n+1)+1]`
-/

namespace A285354.P5755754196913978446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285345 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285354.P5755754196913978446

namespace A285354

/-- `∑[A285345(n+1)+1]` -/
def P5755754196913978446.Spec : Prop :=
  ∀ n, P5755754196913978446.a n = A285354 (n + 1)

end A285354

/-! ## A285354.P6446351075214756114

`comp[A285353(n+1)-1]+1`
-/

namespace A285354.P6446351075214756114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285353 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285354.P6446351075214756114

namespace A285354

/-- `comp[A285353(n+1)-1]+1` -/
def P6446351075214756114.Spec : Prop :=
  ∀ n, (P6446351075214756114.a n : ℤ) = A285354 (n + 1)

end A285354

/-! ## A285354.P14189372074711041535

`comp[A189670(n+1)-2]+1`
-/

namespace A285354.P14189372074711041535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189670 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285354.P14189372074711041535

namespace A285354

/-- `comp[A189670(n+1)-2]+1` -/
def P14189372074711041535.Spec : Prop :=
  ∀ n, (P14189372074711041535.a n : ℤ) = A285354 (n + 1)

end A285354

/-! ## A285354.P16457241016063274751

`A285345(n+1)+A189669(n+1)`
-/

namespace A285354.P16457241016063274751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285345 (n + 1) + A189669 (n + 1)

end

end A285354.P16457241016063274751

namespace A285354

/-- `A285345(n+1)+A189669(n+1)` -/
def P16457241016063274751.Spec : Prop :=
  ∀ n, P16457241016063274751.a n = A285354 (n + 1)

end A285354

/-! ## A285354.P11662841722013021341

`∪[A026227(n+2), A287441(n+2)]-1`
-/

namespace A285354.P11662841722013021341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287441 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A285354.P11662841722013021341

namespace A285354

/-- `∪[A026227(n+2), A287441(n+2)]-1` -/
def P11662841722013021341.Spec : Prop :=
  ∀ n, P11662841722013021341.a n = A285354 (n + 1)

end A285354

/-! ## A285354.P14618390330527202815

`∪[A026227(n+2), A287529(n+2)]-1`
-/

namespace A285354.P14618390330527202815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287529 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A285354.P14618390330527202815

namespace A285354

/-- `∪[A026227(n+2), A287529(n+2)]-1` -/
def P14618390330527202815.Spec : Prop :=
  ∀ n, P14618390330527202815.a n = A285354 (n + 1)

end A285354

/-! ## A285354.P17668023429993797150

`A189669(n+2)-1`
-/

namespace A285354.P17668023429993797150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (n + 2) - 1

end

end A285354.P17668023429993797150

namespace A285354

/-- `A189669(n+2)-1` -/
def P17668023429993797150.Spec : Prop :=
  ∀ n, P17668023429993797150.a n = A285354 (n + 1)

end A285354

/-! ## A285354.P9173916108614443032

`∑[A284905(n+2)+1]`
-/

namespace A285354.P9173916108614443032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284905 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285354.P9173916108614443032

namespace A285354

/-- `∑[A284905(n+2)+1]` -/
def P9173916108614443032.Spec : Prop :=
  ∀ n, P9173916108614443032.a n = A285354 (n + 1)

end A285354

/-! ## A285354.P16501039243952809

`∑[abs(Δ[A189669(n+1)])]`
-/

namespace A285354.P16501039243952809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285354.P16501039243952809

namespace A285354

/-- `∑[abs(Δ[A189669(n+1)])]` -/
def P16501039243952809.Spec : Prop :=
  ∀ n, P16501039243952809.a n = A285354 (n + 1)

end A285354

/-! ## A285354.P11134384106893881894

`∑[A000005(Δ[A189669(n+1)])]`
-/

namespace A285354.P11134384106893881894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285354.P11134384106893881894

namespace A285354

/-- `∑[A000005(Δ[A189669(n+1)])]` -/
def P11134384106893881894.Spec : Prop :=
  ∀ n, P11134384106893881894.a n = A285354 (n + 1)

end A285354

/-! ## A285354.P909193108142854798

`∑[A000041(Δ[A189669(n+1)])]`
-/

namespace A285354.P909193108142854798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285354.P909193108142854798

namespace A285354

/-- `∑[A000041(Δ[A189669(n+1)])]` -/
def P909193108142854798.Spec : Prop :=
  ∀ n, P909193108142854798.a n = A285354 (n + 1)

end A285354

/-! ## A285354.P66977026447697020

`∑[A000108(Δ[A189669(n+1)])]`
-/

namespace A285354.P66977026447697020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285354.P66977026447697020

namespace A285354

/-- `∑[A000108(Δ[A189669(n+1)])]` -/
def P66977026447697020.Spec : Prop :=
  ∀ n, P66977026447697020.a n = A285354 (n + 1)

end A285354

/-! ## A285354.P6744110547308124492

`filter[n+1, A285351(#)]`
-/

namespace A285354.P6744110547308124492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285351 (f1 j) = 1) n)

end

end A285354.P6744110547308124492

namespace A285354

/-- `filter[n+1, A285351(#)]` -/
def P6744110547308124492.Spec : Prop :=
  ∀ n, (P6744110547308124492.a n : ℤ) = A285354 (n + 1)

end A285354

/-! ## A285354.P181101274176994866

`lt[n*A189668(n+1), n]`
-/

namespace A285354.P181101274176994866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A189668 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285354.P181101274176994866

namespace A285354

/-- `lt[n*A189668(n+1), n]` -/
def P181101274176994866.Spec : Prop :=
  ∀ n, (P181101274176994866.a n : ℤ) = A285354 (n + 1)

end A285354

/-! ## A285354.P11629596316279778182

`eq[A130706(n), A189668(n+1)]`
-/

namespace A285354.P11629596316279778182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285354.P11629596316279778182

namespace A285354

/-- `eq[A130706(n), A189668(n+1)]` -/
def P11629596316279778182.Spec : Prop :=
  ∀ n, (P11629596316279778182.a n : ℤ) = A285354 (n + 1)

end A285354

/-! ## A285354.P17485479377136770680

`eq[A169585(n), A189668(n+1)]`
-/

namespace A285354.P17485479377136770680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285354.P17485479377136770680

namespace A285354

/-- `eq[A169585(n), A189668(n+1)]` -/
def P17485479377136770680.Spec : Prop :=
  ∀ n, (P17485479377136770680.a n : ℤ) = A285354 (n + 1)

end A285354

/-! ## A285354.P4768877688861158549

`eq[A154955(n+1), A189668(n+1)]`
-/

namespace A285354.P4768877688861158549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285354.P4768877688861158549

namespace A285354

/-- `eq[A154955(n+1), A189668(n+1)]` -/
def P4768877688861158549.Spec : Prop :=
  ∀ n, (P4768877688861158549.a n : ℤ) = A285354 (n + 1)

end A285354

/-!
# A285356: Numbers n such that the entries in the n-th row of the irregular triangle A237591 are in nonincreasing order.

The programs for A285356, there is no canonical definition to state claims against.
-/

/-! ## A285356.P9349804062387261695

`eq[char[A285426(n+1)], A151933(n)]`
-/

namespace A285356.P9349804062387261695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285426 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A285356.P9349804062387261695

/-! ## A285356.P2174882680051467376

`lt[A121424(n), A121460(3*n+2)]`
-/

namespace A285356.P2174882680051467376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121460 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285356.P2174882680051467376

/-! ## A285356.P3006882068271913132

`lt[A121426(n), A121460(3*n+2)]`
-/

namespace A285356.P3006882068271913132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121460 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285356.P3006882068271913132

/-! ## A285356.P10749453204129757017

`lt[A112557(A165680(n+1)), A131817(3*n)]`
-/

namespace A285356.P10749453204129757017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112557 (A165680 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131817 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285356.P10749453204129757017

/-! ## A285356.P9020117309961119839

`∑[A124778(A124794(n+2))]`
-/

namespace A285356.P9020117309961119839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A124794 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285356.P9020117309961119839

/-!
# A285357: Square array read by antidiagonals: T(m,n) = the number of tight m X n pavings (defined below).

The programs for A285357, there is no canonical definition to state claims against.
-/

/-! ## A285357.P3830021050551096667

`A072088(A174526(n))`
-/

namespace A285357.P3830021050551096667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A174526 n).toNat

end

end A285357.P3830021050551096667

/-! ## A285357.P14529316210961226807

`A116939(A157641(n))`
-/

namespace A285357.P14529316210961226807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A157641 n).toNat

end

end A285357.P14529316210961226807

/-! ## A285357.P8025663352185482329

`A176075(A359313(n))`
-/

namespace A285357.P8025663352185482329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176075 (A359313 n).toNat

end

end A285357.P8025663352185482329

/-! ## A285357.P4728225757236910985

`A158366(A008292(n+1))`
-/

namespace A285357.P4728225757236910985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158366 (A008292 (n + 1)).toNat

end

end A285357.P4728225757236910985

/-! ## A285357.P5025275280875800135

`A073750(3*A046802(n))`
-/

namespace A285357.P5025275280875800135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073750 (3 * A046802 n).toNat

end

end A285357.P5025275280875800135

/-!
# A285358: Fixed point of the morphism 0 -> 10, 1 -> 1101.

The programs for A285358, there is no canonical definition to state claims against.
-/

/-! ## A285358.P4093069804045380033

`A285343(n+1)%2`
-/

namespace A285358.P4093069804045380033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285343 (n + 1)) 2

end

end A285358.P4093069804045380033

/-! ## A285358.P18094208566508950435

`A285359(n+1)%2`
-/

namespace A285358.P18094208566508950435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285359 (n + 1)) 2

end

end A285358.P18094208566508950435

/-! ## A285358.P1206645267939370958

`log2(gcd(2, A284895(n+1)))`
-/

namespace A285358.P1206645267939370958
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A284895 (n + 1)) : ℝ)

end

end A285358.P1206645267939370958

/-! ## A285358.P775733875533836314

`char[A285360(n+1)-1]`
-/

namespace A285358.P775733875533836314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285360 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285358.P775733875533836314

/-! ## A285358.P13968483438133795599

`char[A284931(n+1)-2]`
-/

namespace A285358.P13968483438133795599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284931 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285358.P13968483438133795599

/-! ## A285358.P15019181901252167869

`char[comp[A284930(n+1)-2]]`
-/

namespace A285358.P15019181901252167869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284930 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285358.P15019181901252167869

/-! ## A285358.P6539320426309978459

`and(A158388(n), A285343(n+1))`
-/

namespace A285358.P6539320426309978459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A285343 (n + 1))

end

end A285358.P6539320426309978459

/-! ## A285358.P1577744914758529706

`and(1, A285343(n+1)²*A305722(n))`
-/

namespace A285358.P1577744914758529706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A285343 (n + 1) ^ 2 * A305722 n)

end

end A285358.P1577744914758529706

/-! ## A285358.P6299795886046500076

`A071992(A285359(n+1)-A285342(n+1))`
-/

namespace A285358.P6299795886046500076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071992 (A285359 (n + 1) - A285342 (n + 1)).toNat

end

end A285358.P6299795886046500076

/-! ## A285358.P17835166811905520730

`A071992(A285374(n+1)-A285359(n+1))`
-/

namespace A285358.P17835166811905520730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071992 (A285374 (n + 1) - A285359 (n + 1)).toNat

end

end A285358.P17835166811905520730

/-! ## A285358.P6376591790754484085

`C(A000265(A284895(n+1)+1)-1, A284895(n+1))`
-/

namespace A285358.P6376591790754484085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000265 (A284895 (n + 1) + 1).toNat - 1).toNat (A284895 (n + 1)).toNat

end

end A285358.P6376591790754484085

/-! ## A285358.P1579704152291228801

`A284929(n+2)`
-/

namespace A285358.P1579704152291228801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (n + 2)

end

end A285358.P1579704152291228801

/-! ## A285358.P823194427429164080

`and(1, A284930(n+2)+1)`
-/

namespace A285358.P823194427429164080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A284930 (n + 2) + 1)

end

end A285358.P823194427429164080

/-! ## A285358.P6650994850674893686

`A054686(Δ[A298231(n+1)]+3)`
-/

namespace A285358.P6650994850674893686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (f1 (n + 1) - f1 n + 3).toNat

end

end A285358.P6650994850674893686

/-! ## A285358.P5486729008824061567

`A285341(Δ[A298231(n+1)]+3)`
-/

namespace A285358.P5486729008824061567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285341 (f1 (n + 1) - f1 n + 3).toNat

end

end A285358.P5486729008824061567

/-! ## A285358.P536429340131762

`Δ[A086525(n+2)]`
-/

namespace A285358.P536429340131762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086525 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285358.P536429340131762

/-! ## A285358.P5169609599113805587

`A086525(n+3)-A086525(n+2)`
-/

namespace A285358.P5169609599113805587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086525 (n + 3) - A086525 (n + 2)

end

end A285358.P5169609599113805587

/-!
# A285359: Positions of 0 in A285358; complement of A285360.

The programs for A285359, there is no canonical definition to state claims against.
-/

/-! ## A285359.P16228508373734820180

`A284895(n+1)+Δ[n²]`
-/

namespace A285359.P16228508373734820180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285359.P16228508373734820180

/-! ## A285359.P116356949586054444

`A285343(n+1)+2*(n+1)`
-/

namespace A285359.P116356949586054444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285343 (n + 1) + (2 * (n + 1) : ℤ)

end

end A285359.P116356949586054444

/-! ## A285359.P16742606703289104776

`A020725(n+1)+A285343(n+1)+n`
-/

namespace A285359.P16742606703289104776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) + (A285343 (n + 1) + (n : ℤ))

end

end A285359.P16742606703289104776

/-! ## A285359.P1973009101279707364

`A284930(n+2)-1`
-/

namespace A285359.P1973009101279707364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284930 (n + 2) - 1

end

end A285359.P1973009101279707364

/-! ## A285359.P11630248787743689158

`∑[A001222(Δ[A284930(n+1)])+2]`
-/

namespace A285359.P11630248787743689158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284930 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285359.P11630248787743689158

/-! ## A285359.P15469547485992816228

`∑[A284929(n+2)+A284929(n+1)+2]`
-/

namespace A285359.P15469547485992816228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (n + 2) + (A284929 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285359.P15469547485992816228

/-! ## A285359.P17484293527793374715

`A284931(A284895(n+1)+n)`
-/

namespace A285359.P17484293527793374715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284931 (A284895 (n + 1) + (n : ℤ)).toNat

end

end A285359.P17484293527793374715

/-! ## A285359.P1097839255757135970

`A285343(A284895(n+1)+n)`
-/

namespace A285359.P1097839255757135970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285343 (A284895 (n + 1) + (n : ℤ)).toNat

end

end A285359.P1097839255757135970

/-! ## A285359.P3440855144141116144

`A285375(A284895(n+1)+1+n)`
-/

namespace A285359.P3440855144141116144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285375 (A284895 (n + 1) + 1 + (n : ℤ)).toNat

end

end A285359.P3440855144141116144

/-! ## A285359.P16108804501208689571

`A285343(A285343(n+1)+1+n)`
-/

namespace A285359.P16108804501208689571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285343 (A285343 (n + 1) + 1 + (n : ℤ)).toNat

end

end A285359.P16108804501208689571

/-! ## A285359.P3765125074386795732

`lt[A285358(n+1), 1]+1`
-/

namespace A285359.P3765125074386795732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285358 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285359.P3765125074386795732

/-! ## A285359.P12934656097326013103

`lt[A284929(n+2), 1]+1`
-/

namespace A285359.P12934656097326013103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285359.P12934656097326013103

/-! ## A285359.P4062192209674870496

`lt[n*char[A285360(n+1)], n]`
-/

namespace A285359.P4062192209674870496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285360 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A285359.P4062192209674870496

/-! ## A285359.P14779872185522457438

`A023443(A284930(n+2))`
-/

namespace A285359.P14779872185522457438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A284930 (n + 2)).toNat

end

end A285359.P14779872185522457438

/-! ## A285359.P6616905903528691977

`lt[A284929(A028310(n)+1), 1]`
-/

namespace A285359.P6616905903528691977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (A028310 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285359.P6616905903528691977

/-! ## A285359.P14036380507004872253

`lt[2, A020639(A284930(n+1))]`
-/

namespace A285359.P14036380507004872253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A284930 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285359.P14036380507004872253

/-!
# A285360: Positions of 1 in A285358; complement of A285359.

The programs for A285360, there is no canonical definition to state claims against.
-/

/-! ## A285360.P15463557648710159173

`A284931(n+1)-1`
-/

namespace A285360.P15463557648710159173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284931 (n + 1) - 1

end

end A285360.P15463557648710159173

/-! ## A285360.P2221652210468544176

`comp[A284930(n+1)-1]`
-/

namespace A285360.P2221652210468544176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284930 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A285360.P2221652210468544176

/-! ## A285360.P2222418977633287178

`comp[comp[A285344(n+1)]+n]`
-/

namespace A285360.P2222418977633287178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A285360.P2222418977633287178

/-! ## A285360.P17799457317976442673

`A298231(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A285360.P17799457317976442673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298231 (a (n - 1)).toNat + a (n - 1)

end

end A285360.P17799457317976442673

/-! ## A285360.P444929665597831087

`lt[0, A284929(n+1)]`
-/

namespace A285360.P444929665597831087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285360.P444929665597831087

/-! ## A285360.P17775556637396796542

`filter[n+1, A285358(#)]`
-/

namespace A285360.P17775556637396796542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285358 (f1 j) = 1) n)

end

end A285360.P17775556637396796542

/-! ## A285360.P2061724120441505045

`eq[1, A285358(n+1)]+1`
-/

namespace A285360.P2061724120441505045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285360.P2061724120441505045

/-! ## A285360.P8789992663250148157

`eq[1, A284929(n+2)]+1`
-/

namespace A285360.P8789992663250148157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285360.P8789992663250148157

/-! ## A285360.P13907250026375213395

`eq[A054977(n), A284929(n+1)]`
-/

namespace A285360.P13907250026375213395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285360.P13907250026375213395

/-! ## A285360.P4883109204751660147

`eq[A158388(n), A284929(n+1)]`
-/

namespace A285360.P4883109204751660147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285360.P4883109204751660147

/-! ## A285360.P5143599556212676195

`eq[2, A020639(A284895(n+1))]+1`
-/

namespace A285360.P5143599556212676195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A284895 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285360.P5143599556212676195

/-! ## A285360.P2915026932186726120

`lt[2, A020639(A284930(n+1)+1)]`
-/

namespace A285360.P2915026932186726120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A284930 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A285360.P2915026932186726120

/-! ## A285360.P8996675633055140795

`A023443(A284931(n+1))`
-/

namespace A285360.P8996675633055140795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A284931 (n + 1)).toNat

end

end A285360.P8996675633055140795

/-! ## A285360.P11209212181612485487

`∑[A285341(A004277(n))]+n`
-/

namespace A285360.P11209212181612485487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285341 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A285360.P11209212181612485487

/-! ## A285360.P17702182307540066481

`∑[A284893(2*n+1)+1]`
-/

namespace A285360.P17702182307540066481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285360.P17702182307540066481

/-! ## A285360.P6771329199711640156

`A285344(2*n+1)-2*n`
-/

namespace A285360.P6771329199711640156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285344 (2 * n + 1) - (2 * n : ℤ)

end

end A285360.P6771329199711640156

/-! ## A285360.P18374455558137616196

`∑[A001222(A284894(2*(n+1))-A284894(2*n+1))]`
-/

namespace A285360.P18374455558137616196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284894 (2 * (n + 1)) - A284894 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285360.P18374455558137616196

/-!
# A285361: The number of tight 3 X n pavings.

The programs for A285361, the canonical program `A285361.P4629678575267158130` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285361 has offset 0).

The definition of A285361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285361.P4629678575267158130

`1/4*(3^(n+3)-5*2^(n+4)+4*n²+26*n+53)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285361

/-- `1/4*(3^(n+3)-5*2^(n+4)+4*n²+26*n+53)` -/
def P4629678575267158130.Spec : Prop :=
  ∀ n, P4629678575267158130.a n = (A285361 n : ℚ)

end A285361

/-! ## A285361.P16927982885837043434

`∑[A298564(n)]`
-/

namespace A285361.P16927982885837043434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285361.P16927982885837043434

namespace A285361

/-- `∑[A298564(n)]` -/
def P16927982885837043434.Spec : Prop :=
  ∀ n, P16927982885837043434.a n = A285361 n

end A285361

/-! ## A285361.P3945533808803476875

`∑[∑[A281773(n+1)]]`
-/

namespace A285361.P3945533808803476875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281773 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285361.P3945533808803476875

namespace A285361

/-- `∑[∑[A281773(n+1)]]` -/
def P3945533808803476875.Spec : Prop :=
  ∀ n, P3945533808803476875.a n = A285361 n

end A285361

/-! ## A285361.P11780561635434079460

`∑[∑[A101052(n+1)-2^n]]`
-/

namespace A285361.P11780561635434079460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101052 (n + 1) - (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285361.P11780561635434079460

namespace A285361

/-- `∑[∑[A101052(n+1)-2^n]]` -/
def P11780561635434079460.Spec : Prop :=
  ∀ n, P11780561635434079460.a n = A285361 n

end A285361

/-! ## A285361.P11311843796803913636

`∑[∑[A001117(n+1)+A000225(n)]]`
-/

namespace A285361.P11311843796803913636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001117 (n + 1) + A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285361.P11311843796803913636

namespace A285361

/-- `∑[∑[A001117(n+1)+A000225(n)]]` -/
def P11311843796803913636.Spec : Prop :=
  ∀ n, P11311843796803913636.a n = A285361 n

end A285361

/-! ## A285361.P18158454955098559710

`∑[∑[A001047(n+1)-A033484(n)]]`
-/

namespace A285361.P18158454955098559710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1) - A033484 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285361.P18158454955098559710

namespace A285361

/-- `∑[∑[A001047(n+1)-A033484(n)]]` -/
def P18158454955098559710.Spec : Prop :=
  ∀ n, P18158454955098559710.a n = A285361 n

end A285361

/-! ## A285361.P4560378341541566549

`∑[A036550(n+1)-A079583(n+1)]`
-/

namespace A285361.P4560378341541566549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036550 (n + 1) - A079583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285361.P4560378341541566549

namespace A285361

/-- `∑[A036550(n+1)-A079583(n+1)]` -/
def P4560378341541566549.Spec : Prop :=
  ∀ n, P4560378341541566549.a n = A285361 n

end A285361

/-! ## A285361.P17056883550702446937

`∑[A000295(n+1)+∑[A001117(n+1)]]`
-/

namespace A285361.P17056883550702446937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285361.P17056883550702446937

namespace A285361

/-- `∑[A000295(n+1)+∑[A001117(n+1)]]` -/
def P17056883550702446937.Spec : Prop :=
  ∀ n, P17056883550702446937.a n = A285361 n

end A285361

/-! ## A285361.P9698429750220847695

`∑[∑[A028243(n+2)]-A000295(n+1)]`
-/

namespace A285361.P9698429750220847695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028243 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285361.P9698429750220847695

namespace A285361

/-- `∑[∑[A028243(n+2)]-A000295(n+1)]` -/
def P9698429750220847695.Spec : Prop :=
  ∀ n, P9698429750220847695.a n = A285361 n

end A285361

/-! ## A285361.P9172861739353844557

`∑[∑[A168607(n+1)]-A079360(2*n+1)]`
-/

namespace A285361.P9172861739353844557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A079360 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285361.P9172861739353844557

namespace A285361

/-- `∑[∑[A168607(n+1)]-A079360(2*n+1)]` -/
def P9172861739353844557.Spec : Prop :=
  ∀ n, P9172861739353844557.a n = A285361 n

end A285361

/-!
# A285363: Sum of the entries in the first blocks of all set partitions of [n].

The programs for A285363, there is no canonical definition to state claims against.
-/

/-! ## A285363.P12129789220867212637

`A285362(∑[n]+1)`
-/

namespace A285363.P12129789220867212637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A285363.P12129789220867212637

/-! ## A285363.P7763765377400141238

`record[A285362(n+1)/A007318(n)]`
-/

namespace A285363.P7763765377400141238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285362 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285363.P7763765377400141238

/-! ## A285363.P9529856696373434241

`record[gcd(A002262(n), A285362(n+1))]`
-/

namespace A285363.P9529856696373434241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A285362 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285363.P9529856696373434241

/-! ## A285363.P11484255719981635212

`record[A285362(n+1)/A001263(n+1)]`
-/

namespace A285363.P11484255719981635212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285362 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285363.P11484255719981635212

/-! ## A285363.P7639709632537003106

`record[A285362(A008619(A264754(n)))]`
-/

namespace A285363.P7639709632537003106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A008619 (A264754 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285363.P7639709632537003106

/-! ## A285363.P9003258333629107480

`A000110(n+1)+A000096(n)*A000110(n)`
-/

namespace A285363.P9003258333629107480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) + A000096 n * A000110 n

end

end A285363.P9003258333629107480

/-!
# A285364: Sum of the entries in the second blocks of all set partitions of [n].

The programs for A285364, there is no canonical definition to state claims against.
-/

/-! ## A285364.P12616277904144105992

`A285362(∑[n+1]+2)`
-/

namespace A285364.P12616277904144105992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A285364.P12616277904144105992

/-! ## A285364.P5270464600136643207

`record[root(A285362(n+3), A286232(n+1))]`
-/

namespace A285364.P5270464600136643207
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A285362 (n + 3) : ℝ) ^ (1 / (A286232 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285364.P5270464600136643207

/-! ## A285364.P13644194430539527885

`lcm(A186035(n), A285362(A133263(n+1)))`
-/

namespace A285364.P13644194430539527885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A186035 n) (A285362 (A133263 (n + 1)).toNat)

end

end A285364.P13644194430539527885

/-! ## A285364.P14705792020524450471

`or(A000038(n), A285362(A133263(n+1)))`
-/

namespace A285364.P14705792020524450471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A285362 (A133263 (n + 1)).toNat)

end

end A285364.P14705792020524450471

/-! ## A285364.P9689461994628357923

`char[A071045(n)]*A285362(A133263(n+1))`
-/

namespace A285364.P9689461994628357923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A285362 (A133263 (n + 1)).toNat

end

end A285364.P9689461994628357923

/-! ## A285364.P6909719725904494189

`char[A077462(n)]*A285362(A133263(n+1))`
-/

namespace A285364.P6909719725904494189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A285362 (A133263 (n + 1)).toNat

end

end A285364.P6909719725904494189

/-! ## A285364.P7322948662144002663

`A285362(A133263(n+1))+A000038(n+1)`
-/

namespace A285364.P7322948662144002663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A133263 (n + 1)).toNat + A000038 (n + 1)

end

end A285364.P7322948662144002663

/-! ## A285364.P251295424547380520

`A007318(C(2, n+1))*A285362(A133263(n+1))`
-/

namespace A285364.P251295424547380520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A285362 (A133263 (n + 1)).toNat

end

end A285364.P251295424547380520

/-! ## A285364.P14386306525037012852

`A007318(A000217(n))*A285362(A133263(n+1))`
-/

namespace A285364.P14386306525037012852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A285362 (A133263 (n + 1)).toNat

end

end A285364.P14386306525037012852

/-!
# A285365: Sum of the entries in the third blocks of all set partitions of [n].

The programs for A285365, there is no canonical definition to state claims against.
-/

/-! ## A285365.P905615032425249730

`A285362(∑[n+2]+4)`
-/

namespace A285365.P905615032425249730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A285365.P905615032425249730

/-! ## A285365.P6128177024454274207

`record[root(A285362(n+6), A286232(n+3))]`
-/

namespace A285365.P6128177024454274207
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A285362 (n + 6) : ℝ) ^ (1 / (A286232 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285365.P6128177024454274207

/-! ## A285365.P8423913727388367820

`record[root(A285362(n+6), A286416(n+3))]`
-/

namespace A285365.P8423913727388367820
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A285362 (n + 6) : ℝ) ^ (1 / (A286416 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285365.P8423913727388367820

/-! ## A285365.P18031223563673157024

`lcm(A033999(n), A285362(A167614(n+1)))`
-/

namespace A285365.P18031223563673157024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A285362 (A167614 (n + 1)).toNat)

end

end A285365.P18031223563673157024

/-! ## A285365.P11669001487800968190

`or(A003982(n), A285362(A167614(n+1)))`
-/

namespace A285365.P11669001487800968190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A285362 (A167614 (n + 1)).toNat)

end

end A285365.P11669001487800968190

/-! ## A285365.P12154736713037389038

`or(A151933(n), A285362(A167614(n+1)))`
-/

namespace A285365.P12154736713037389038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A285362 (A167614 (n + 1)).toNat)

end

end A285365.P12154736713037389038

/-!
# A285366: Sum of the entries in the fourth blocks of all set partitions of [n].

The programs for A285366, there is no canonical definition to state claims against.
-/

/-! ## A285366.P4038265709471692782

`A285362(A052905(n)+9)`
-/

namespace A285366.P4038265709471692782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A052905 n + 9).toNat

end

end A285366.P4038265709471692782

/-! ## A285366.P15623134824169102390

`A285362(A055999(n)+10)`
-/

namespace A285366.P15623134824169102390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A055999 n + 10).toNat

end

end A285366.P15623134824169102390

/-! ## A285366.P3553148708226781160

`A285362(A167614(n+2)+1)`
-/

namespace A285366.P3553148708226781160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A167614 (n + 2) + 1).toNat

end

end A285366.P3553148708226781160

/-! ## A285366.P13124205047708614704

`A285362(A167487(n+2)-3)`
-/

namespace A285366.P13124205047708614704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A167487 (n + 2) - 3).toNat

end

end A285366.P13124205047708614704

/-! ## A285366.P1077455185067699592

`A285362(A000217(n+3)+4)`
-/

namespace A285366.P1077455185067699592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A000217 (n + 3) + 4).toNat

end

end A285366.P1077455185067699592

/-! ## A285366.P5427392843677658514

`record[root(A285362(n+10), A286232(n+6))]`
-/

namespace A285366.P5427392843677658514
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A285362 (n + 10) : ℝ) ^ (1 / (A286232 (n + 6) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285366.P5427392843677658514

/-! ## A285366.P17275121332317972579

`record[root(A285362(n+10), A286416(n+6))]`
-/

namespace A285366.P17275121332317972579
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A285362 (n + 10) : ℝ) ^ (1 / (A286416 (n + 6) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285366.P17275121332317972579

/-!
# A285367: Sum of the entries in the fifth blocks of all set partitions of [n].

The programs for A285367, there is no canonical definition to state claims against.
-/

/-! ## A285367.P17290619697223612243

`A285362(A167499(n+3))`
-/

namespace A285367.P17290619697223612243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A167499 (n + 3)).toNat

end

end A285367.P17290619697223612243

/-! ## A285367.P17964862426138059491

`A285362(A000124(n+4)+4)`
-/

namespace A285367.P17964862426138059491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A000124 (n + 4) + 4).toNat

end

end A285367.P17964862426138059491

/-! ## A285367.P13015868778633438835

`A285362(A000217(n+4)+5)`
-/

namespace A285367.P13015868778633438835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A000217 (n + 4) + 5).toNat

end

end A285367.P13015868778633438835

/-! ## A285367.P6653024140198756638

`A285362(A034856(n+3)+7)`
-/

namespace A285367.P6653024140198756638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A034856 (n + 3) + 7).toNat

end

end A285367.P6653024140198756638

/-! ## A285367.P15628964838529383012

`A285362(A059841(2*n)+A000096(n+3)+5)`
-/

namespace A285367.P15628964838529383012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A059841 (2 * n) + (A000096 (n + 3) + 5)).toNat

end

end A285367.P15628964838529383012

/-!
# A285368: Sum of the entries in the sixth blocks of all set partitions of [n].

The programs for A285368, there is no canonical definition to state claims against.
-/

/-! ## A285368.P4600791004182642234

`A285362(A167499(n+4)+1)`
-/

namespace A285368.P4600791004182642234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A167499 (n + 4) + 1).toNat

end

end A285368.P4600791004182642234

/-! ## A285368.P3152916739082384816

`A285362(A000124(n+5)+5)`
-/

namespace A285368.P3152916739082384816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A000124 (n + 5) + 5).toNat

end

end A285368.P3152916739082384816

/-! ## A285368.P12582591968388928285

`A285362(A000217(n+5)+6)`
-/

namespace A285368.P12582591968388928285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A000217 (n + 5) + 6).toNat

end

end A285368.P12582591968388928285

/-! ## A285368.P2131289921326824982

`A285362(A000096(n+5)-(n-1))`
-/

namespace A285368.P2131289921326824982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A285368.P2131289921326824982

/-! ## A285368.P2207346456191332954

`A285362(A055999(n+4)-Δ[n²])`
-/

namespace A285368.P2207346456191332954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A055999 (n + 4) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A285368.P2207346456191332954

/-!
# A285369: Sum of the entries in the seventh blocks of all set partitions of [n].

The programs for A285369, there is no canonical definition to state claims against.
-/

/-! ## A285369.P379830001410503137

`A285362(A167487(n+5))`
-/

namespace A285369.P379830001410503137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A167487 (n + 5)).toNat

end

end A285369.P379830001410503137

/-! ## A285369.P13535017905063577766

`A285362(A167499(n+5)+2)`
-/

namespace A285369.P13535017905063577766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A167499 (n + 5) + 2).toNat

end

end A285369.P13535017905063577766

/-! ## A285369.P2814130348103891151

`A285362(A152947(n+8)+6)`
-/

namespace A285369.P2814130348103891151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A152947 (n + 8) + 6).toNat

end

end A285369.P2814130348103891151

/-! ## A285369.P17045547222429039978

`A285362(eq[8, A131818(n+1)])`
-/

namespace A285369.P17045547222429039978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285369.P17045547222429039978

/-! ## A285369.P8441754572287978857

`A285362(eq[7, A002260(n+1)]+1)`
-/

namespace A285369.P8441754572287978857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A285369.P8441754572287978857

/-!
# A285370: Sum of the entries in the eighth blocks of all set partitions of [n].

The programs for A285370, there is no canonical definition to state claims against.
-/

/-! ## A285370.P1565278087595093073

`A285362(A167499(n+6)+3)`
-/

namespace A285370.P1565278087595093073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A167499 (n + 6) + 3).toNat

end

end A285370.P1565278087595093073

/-! ## A285370.P17935659842666669477

`A285362(A167614(n+6)+5)`
-/

namespace A285370.P17935659842666669477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A167614 (n + 6) + 5).toNat

end

end A285370.P17935659842666669477

/-! ## A285370.P9062744843519051517

`A285362(A046691(n+5)+12)`
-/

namespace A285370.P9062744843519051517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A046691 (n + 5) + 12).toNat

end

end A285370.P9062744843519051517

/-! ## A285370.P14384324126135964946

`A285362(eq[9, A131818(n+1)])`
-/

namespace A285370.P14384324126135964946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285370.P14384324126135964946

/-! ## A285370.P144172207938969873

`A285362(A000096(n+7)-(n-1))`
-/

namespace A285370.P144172207938969873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A000096 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A285370.P144172207938969873

/-!
# A285371: Sum of the entries in the ninth blocks of all set partitions of [n].

The programs for A285371, there is no canonical definition to state claims against.
-/

/-! ## A285371.P13348862428830387128

`A285362(eq[17, A066657(n)])`
-/

namespace A285371.P13348862428830387128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285371.P13348862428830387128

/-! ## A285371.P4022403664140531848

`A285362(eq[8, A002262(n)]+1)`
-/

namespace A285371.P4022403664140531848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A285371.P4022403664140531848

/-! ## A285371.P13108874883700679005

`A285362(eq[10, A131818(n+1)])`
-/

namespace A285371.P13108874883700679005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285371.P13108874883700679005

/-! ## A285371.P4946427963336558986

`A285362(A000217(n+9)-n)`
-/

namespace A285371.P4946427963336558986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A000217 (n + 9) - (n : ℤ)).toNat

end

end A285371.P4946427963336558986

/-! ## A285371.P1674219656015494669

`A285362(eq[8, A144328(n+1)]+1)`
-/

namespace A285371.P1674219656015494669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A285371.P1674219656015494669

/-!
# A285372: Sum of the entries in the tenth blocks of all set partitions of [n].

The programs for A285372, there is no canonical definition to state claims against.
-/

/-! ## A285372.P4924359446154164001

`A285362(A000096(n+8)+11)`
-/

namespace A285372.P4924359446154164001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A000096 (n + 8) + 11).toNat

end

end A285372.P4924359446154164001

/-! ## A285372.P11867289986645045715

`A285362(A000217(n+9)+10)`
-/

namespace A285372.P11867289986645045715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (A000217 (n + 9) + 10).toNat

end

end A285372.P11867289986645045715

/-! ## A285372.P15677318396244862984

`A285362(eq[11, A131818(n+1)])`
-/

namespace A285372.P15677318396244862984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285362 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A285372.P15677318396244862984

/-!
# A285373: Fixed point of the morphism 0 -> 10, 1 -> 1110.

The programs for A285373, there is no canonical definition to state claims against.
-/

/-! ## A285373.P941709361803135984

`char[A285375(n+1)-1]`
-/

namespace A285373.P941709361803135984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285375 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285373.P941709361803135984

/-! ## A285373.P2248393371580416914

`char[A284941(n+1)-2]`
-/

namespace A285373.P2248393371580416914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284941 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285373.P2248393371580416914

/-! ## A285373.P10920544583707287209

`1-char[A285374(n+1)-1]`
-/

namespace A285373.P10920544583707287209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285374 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A285373.P10920544583707287209

/-! ## A285373.P16556023404446913026

`A285375(A285376(n+1)-(n+1))-n`
-/

namespace A285373.P16556023404446913026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285375 (A285376 (n + 1) - (n + 1 : ℤ)).toNat - (n : ℤ)

end

end A285373.P16556023404446913026

/-! ## A285373.P15048099085886707191

`2-(A285375(∑[A284939(n+1)]+1)-n)`
-/

namespace A285373.P15048099085886707191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A285375 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - (n : ℤ))

end

end A285373.P15048099085886707191

/-! ## A285373.P3998635021458918230

`A054656(A285374(n+1)-A080580(n+1))`
-/

namespace A285373.P3998635021458918230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054656 (A285374 (n + 1) - A080580 (n + 1)).toNat

end

end A285373.P3998635021458918230

/-! ## A285373.P8297291690726537577

`A054685(A285374(n+1)-A080580(n+1))`
-/

namespace A285373.P8297291690726537577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054685 (A285374 (n + 1) - A080580 (n + 1)).toNat

end

end A285373.P8297291690726537577

/-! ## A285373.P12268112552117927342

`A054686(A285374(n+1)-A080580(n+1))`
-/

namespace A285373.P12268112552117927342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (A285374 (n + 1) - A080580 (n + 1)).toNat

end

end A285373.P12268112552117927342

/-! ## A285373.P9927091617194233011

`A189576(A285374(n+1)-A080580(n+1))`
-/

namespace A285373.P9927091617194233011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189576 (A285374 (n + 1) - A080580 (n + 1)).toNat

end

end A285373.P9927091617194233011

/-! ## A285373.P17212414515479144848

`A284939(n+2)`
-/

namespace A285373.P17212414515479144848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 2)

end

end A285373.P17212414515479144848

/-! ## A285373.P11950282175746951022

`val(Δ[A080580(n+1)], 4)`
-/

namespace A285373.P11950282175746951022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 4

end

end A285373.P11950282175746951022

/-! ## A285373.P7446686948259125920

`A054686(Δ[A080580(n+1)])`
-/

namespace A285373.P7446686948259125920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (f1 (n + 1) - f1 n).toNat

end

end A285373.P7446686948259125920

/-! ## A285373.P13068824280182911172

`A080573(Δ[A080580(n+1)])`
-/

namespace A285373.P13068824280182911172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080573 (f1 (n + 1) - f1 n).toNat

end

end A285373.P13068824280182911172

/-! ## A285373.P5868253263251231222

`A080584(Δ[A080580(n+1)])`
-/

namespace A285373.P5868253263251231222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080584 (f1 (n + 1) - f1 n).toNat

end

end A285373.P5868253263251231222

/-! ## A285373.P10570872696636899851

`A285341(Δ[A080580(n+1)])`
-/

namespace A285373.P10570872696636899851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285341 (f1 (n + 1) - f1 n).toNat

end

end A285373.P10570872696636899851

/-! ## A285373.P14200695347598037664

`A001222(log2(Δ[A080580(n+1)]))`
-/

namespace A285373.P14200695347598037664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A285373.P14200695347598037664

/-! ## A285373.P11754333764061110907

`A054670(Δ[A080580(n+1)])+1`
-/

namespace A285373.P11754333764061110907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054670 (f1 (n + 1) - f1 n).toNat + 1

end

end A285373.P11754333764061110907

/-! ## A285373.P6807583026396924155

`A000010(Δ[A080580(n+1)])-1`
-/

namespace A285373.P6807583026396924155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat - 1

end

end A285373.P6807583026396924155

/-! ## A285373.P1547197136732594125

`A001222(Δ[A080580(n+1)]-1)`
-/

namespace A285373.P1547197136732594125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n - 1).toNat

end

end A285373.P1547197136732594125

/-!
# A285374: Positions of 0 in A285373; complement of A285375.

The programs for A285374, there is no canonical definition to state claims against.
-/

/-! ## A285374.P6971192694857269002

`2*A285376(n+1)`
-/

namespace A285374.P6971192694857269002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285376 (n + 1)

end

end A285374.P6971192694857269002

/-! ## A285374.P3354070433851057512

`∑[2*(A285373(n+1)+1)]`
-/

namespace A285374.P3354070433851057512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A285373 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285374.P3354070433851057512

/-! ## A285374.P8026240564840251933

`A080580(n+2)-1`
-/

namespace A285374.P8026240564840251933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 2) - 1

end

end A285374.P8026240564840251933

/-! ## A285374.P9864202823545530193

`∑[abs(Δ[A080580(n+1)])]`
-/

namespace A285374.P9864202823545530193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285374.P9864202823545530193

/-! ## A285374.P13586597006278019586

`∑[A080541(Δ[A080580(n+1)])]`
-/

namespace A285374.P13586597006278019586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285374.P13586597006278019586

/-! ## A285374.P2040228934914188174

`∑[A080606(Δ[A080580(n+1)])]`
-/

namespace A285374.P2040228934914188174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080606 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285374.P2040228934914188174

/-! ## A285374.P2528031721513469041

`∑[A080612(Δ[A080580(n+1)])]`
-/

namespace A285374.P2528031721513469041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080612 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285374.P2528031721513469041

/-! ## A285374.P12078699402361855043

`∑[A001222(Δ[A080580(n+1)]²)]`
-/

namespace A285374.P12078699402361855043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285374.P12078699402361855043

/-! ## A285374.P12119726190279859955

`∑[A000010(Δ[A080580(n+1)]+1)]`
-/

namespace A285374.P12119726190279859955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285374.P12119726190279859955

/-! ## A285374.P2590735951490759134

`∑[2*A001222(Δ[A080580(n+1)])]`
-/

namespace A285374.P2590735951490759134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285374.P2590735951490759134

/-! ## A285374.P989636026693771880

`A004277(A285376(n+1))`
-/

namespace A285374.P989636026693771880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A285376 (n + 1)).toNat

end

end A285374.P989636026693771880

/-! ## A285374.P14946799812924069340

`A005843(∑[A284939(n+2)+1])`
-/

namespace A285374.P14946799812924069340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A285374.P14946799812924069340

/-! ## A285374.P15128879987852914372

`xor(A080580(n+2), A284939(2*(n+1)))`
-/

namespace A285374.P15128879987852914372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080580 (n + 2)) (A284939 (2 * (n + 1)))

end

end A285374.P15128879987852914372

/-! ## A285374.P17045884428952972103

`xor(A080580(n+2), A285341(2*n+1))`
-/

namespace A285374.P17045884428952972103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080580 (n + 2)) (A285341 (2 * n + 1))

end

end A285374.P17045884428952972103

/-! ## A285374.P10759179299923314391

`xor(A080580(n+2), A285373(2*n+1))`
-/

namespace A285374.P10759179299923314391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080580 (n + 2)) (A285373 (2 * n + 1))

end

end A285374.P10759179299923314391

/-! ## A285374.P9760219811481586615

`lt[A285373(n+1), 1]+1`
-/

namespace A285374.P9760219811481586615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285373 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A285374.P9760219811481586615

/-! ## A285374.P15547649216494535713

`lt[n*A284939(n+1), n]`
-/

namespace A285374.P15547649216494535713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284939 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285374.P15547649216494535713

/-! ## A285374.P6882767887827029084

`A004442(A080580(n+2))`
-/

namespace A285374.P6882767887827029084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A080580 (n + 2)).toNat

end

end A285374.P6882767887827029084

/-! ## A285374.P15749528946069336665

`eq[A000007(n), A284939(n+1)]`
-/

namespace A285374.P15749528946069336665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A285374.P15749528946069336665

/-!
# A285375: Positions of 1 in A285373; complement of A285374.

The programs for A285375, there is no canonical definition to state claims against.
-/

/-! ## A285375.P5259158316063487209

`A284941(n+1)-1`
-/

namespace A285375.P5259158316063487209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284941 (n + 1) - 1

end

end A285375.P5259158316063487209

/-! ## A285375.P16068571156887013200

`comp[A080580(n+1)-1]`
-/

namespace A285375.P16068571156887013200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A285375.P16068571156887013200

/-! ## A285375.P3030500376878010502

`A080753(n+1)-Δ[n²]`
-/

namespace A285375.P3030500376878010502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080753 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A285375.P3030500376878010502

/-! ## A285375.P13673797232112423350

`comp[A285374(n+1)-1]+1`
-/

namespace A285375.P13673797232112423350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285374 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285375.P13673797232112423350

/-! ## A285375.P11640241069612059352

`filter[n+1, A285373(#)]`
-/

namespace A285375.P11640241069612059352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285373 (f1 j) = 1) n)

end

end A285375.P11640241069612059352

/-! ## A285375.P14521091446769065207

`eq[1, A285373(n+1)]+1`
-/

namespace A285375.P14521091446769065207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A285375.P14521091446769065207

/-! ## A285375.P16477658080565386692

`eq[n, A028310(n)*A285373(A028310(n))]`
-/

namespace A285375.P16477658080565386692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A285373 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285375.P16477658080565386692

/-! ## A285375.P3419659704849884895

`eq[1, A284939(n+1)]`
-/

namespace A285375.P3419659704849884895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A285375.P3419659704849884895

/-! ## A285375.P14627238842624476352

`record[(n+1)*A284939(n+2)]`
-/

namespace A285375.P14627238842624476352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284939 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285375.P14627238842624476352

/-! ## A285375.P10466289811624258738

`A028310(lt[1, A284939(n+1)+1])`
-/

namespace A285375.P10466289811624258738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A285375.P10466289811624258738

/-! ## A285375.P12764647044388084294

`lt[A284948(n+1), 2*A284939(n+1)]`
-/

namespace A285375.P12764647044388084294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285375.P12764647044388084294

/-! ## A285375.P9578121835351354767

`lt[A284954(n+1), 2*A284939(n+1)]`
-/

namespace A285375.P9578121835351354767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285375.P9578121835351354767

/-! ## A285375.P3473165884053369384

`lt[A285518(n+1), 2*A284939(n+1)]`
-/

namespace A285375.P3473165884053369384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A285375.P3473165884053369384

/-! ## A285375.P8261860881133011546

`lt[char[A284895(n+1)], 2*A284939(n+1)]`
-/

namespace A285375.P8261860881133011546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A285375.P8261860881133011546

/-! ## A285375.P881724719983604068

`lt[char[A284941(n+1)], 2*A284939(n+1)]`
-/

namespace A285375.P881724719983604068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284941 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A285375.P881724719983604068

/-! ## A285375.P13031169173667767489

`A023443(A284941(n+1))`
-/

namespace A285375.P13031169173667767489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A284941 (n + 1)).toNat

end

end A285375.P13031169173667767489

/-! ## A285375.P8367120739182320889

`A003056(C(A284941(n+1), 2))`
-/

namespace A285375.P8367120739182320889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A284941 (n + 1)).toNat 2)

end

end A285375.P8367120739182320889

/-!
# A285376: (A285374)/2.

The programs for A285376, there is no canonical definition to state claims against.
-/

/-! ## A285376.P6912068412282232674

`A285374(n+1)/2`
-/

namespace A285376.P6912068412282232674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285374 (n + 1) : ℚ) / 2

end

end A285376.P6912068412282232674

/-! ## A285376.P10762775539727956012

`∑[A285373(n+1)+1]`
-/

namespace A285376.P10762775539727956012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285373 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285376.P10762775539727956012

/-! ## A285376.P4446974060625063674

`floor(A080580(n+2)/2)`
-/

namespace A285376.P4446974060625063674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080580 (n + 2) : ℚ) / 2⌋

end

end A285376.P4446974060625063674

/-! ## A285376.P1480051176637241757

`∑[A284939(n+2)+1]`
-/

namespace A285376.P1480051176637241757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285376.P1480051176637241757

/-! ## A285376.P10304920962357925237

`∑[log2(Δ[A080580(n+1)])]`
-/

namespace A285376.P10304920962357925237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f2 (n + 1) - f2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285376.P10304920962357925237

/-! ## A285376.P11952369798789023315

`∑[A000010(Δ[A080580(n+1)])]`
-/

namespace A285376.P11952369798789023315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285376.P11952369798789023315

/-! ## A285376.P12589977595271181317

`∑[A001222(Δ[A080580(n+1)])]`
-/

namespace A285376.P12589977595271181317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285376.P12589977595271181317

/-! ## A285376.P4749059406511166861

`∑[A080576(Δ[A080580(n+1)])]`
-/

namespace A285376.P4749059406511166861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080576 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285376.P4749059406511166861

/-! ## A285376.P13030837366537835441

`∑[A080586(Δ[A080580(n+1)])]`
-/

namespace A285376.P13030837366537835441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080586 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285376.P13030837366537835441

/-! ## A285376.P5302048498821947193

`∑[A054670(Δ[A080580(n+1)])+2]`
-/

namespace A285376.P5302048498821947193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054670 (f2 (n + 1) - f2 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285376.P5302048498821947193

/-! ## A285376.P6930383276946569630

`xor(A080580(n+2), A284939(2*(n+1)))/2`
-/

namespace A285376.P6930383276946569630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A080580 (n + 2)) (A284939 (2 * (n + 1))) : ℚ) / 2

end

end A285376.P6930383276946569630

/-! ## A285376.P13439407117983430349

`xor(A080580(n+2), A285341(2*n+1))/2`
-/

namespace A285376.P13439407117983430349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A080580 (n + 2)) (A285341 (2 * n + 1)) : ℚ) / 2

end

end A285376.P13439407117983430349

/-! ## A285376.P1725217587076642825

`xor(A080580(n+2), A285373(2*n+1))/2`
-/

namespace A285376.P1725217587076642825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A080580 (n + 2)) (A285373 (2 * n + 1)) : ℚ) / 2

end

end A285376.P1725217587076642825

/-! ## A285376.P3977465288188287549

`lt[n*A284939(2*n+1), n]`
-/

namespace A285376.P3977465288188287549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284939 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A285376.P3977465288188287549

/-! ## A285376.P13103596215983017485

`A001281(A285374(n+1))`
-/

namespace A285376.P13103596215983017485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A285374 (n + 1)).toNat

end

end A285376.P13103596215983017485

/-! ## A285376.P15949884613403067469

`A004524(A080580(n+2))`
-/

namespace A285376.P15949884613403067469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A080580 (n + 2)).toNat

end

end A285376.P15949884613403067469

/-! ## A285376.P1929172266339978525

`eq[A000007(n), A284939(n+1)]/2`
-/

namespace A285376.P1929172266339978525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A285376.P1929172266339978525

/-! ## A285376.P9607809711282238178

`eq[A000038(n), A284939(n+1)]/2`
-/

namespace A285376.P9607809711282238178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A285376.P9607809711282238178

/-!
# A285377: Numbers k such that (41*10^k + 373)/9 is prime.

The programs for A285377, there is no canonical definition to state claims against.
-/

/-! ## A285377.P6813560164758447270

`A326623(A285909(n))+A108319(n+1)`
-/

namespace A285377.P6813560164758447270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326623 (A285909 n).toNat + A108319 (n + 1)

end

end A285377.P6813560164758447270

/-! ## A285377.P11026797274657312007

`A333223(A033865(2*(n+1)))+A048793(2*(n+1))`
-/

namespace A285377.P11026797274657312007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333223 (A033865 (2 * (n + 1))).toNat + A048793 (2 * (n + 1))

end

end A285377.P11026797274657312007

/-!
# A285380: G.f.: 1/(1 - 1!*x/(1 - 2!*x/(1 - 3!*x/(1 - 4!*x/(1 - 5!*x/(1 - 6!*x/(1 - ...))))))), a continued fraction.

The programs for A285380, there is no canonical definition to state claims against.
-/

/-! ## A285380.P1295399123914270028

`A209039((n+1)^(n-1))`
-/

namespace A285380.P1295399123914270028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209039 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A285380.P1295399123914270028

/-!
# A285382: Sum of entries in the last cycles of all permutations of [n].

The programs for A285382, there is no canonical definition to state claims against.
-/

/-! ## A285382.P8296730358636223935

`A286231(∑[n]+1)`
-/

namespace A285382.P8296730358636223935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286231 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A285382.P8296730358636223935

/-! ## A285382.P16454044637975347124

`record[A286231(n+1)/A007318(n)]`
-/

namespace A285382.P16454044637975347124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286231 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285382.P16454044637975347124

/-! ## A285382.P5605141946616048186

`record[A286231(n+1)/A008459(n)]`
-/

namespace A285382.P5605141946616048186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286231 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285382.P5605141946616048186

/-! ## A285382.P2564544093135217148

`record[A286231(n+1)/A013609(n)]`
-/

namespace A285382.P2564544093135217148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286231 (n + 1) : ℚ) / (A013609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285382.P2564544093135217148

/-! ## A285382.P12977536422562555785

`record[A286231(n+1)/A059268(n)]`
-/

namespace A285382.P12977536422562555785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286231 (n + 1) : ℚ) / (A059268 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285382.P12977536422562555785

/-!
# A285383: Limiting 0-word of the morphism 0 -> 11, 1 -> 01.

The programs for A285383, the canonical program `A285383.P1607369180779014615` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285383 has offset 1).

The definition of A285383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285383.P1607369180779014615

`(and(n, -n)%3)%2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285383

/-- `(and(n, -n)%3)%2` -/
def P1607369180779014615.Spec : Prop :=
  ∀ n, P1607369180779014615.a n = A285383 (n + 1)

theorem P1607369180779014615.correct : P1607369180779014615.Spec := by
  intro n
  simp only [A285383, Nat.add_sub_cancel]

end A285383

/-! ## A285383.P10437572580762971869

`1-a(∑[n]%n)` with `a(0)=0`
-/

namespace A285383.P10437572580762971869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a ((∑ j ∈ Finset.range (n + 1), f1 j) % n)

end

end A285383.P10437572580762971869

namespace A285383

/-- `1-a(∑[n]%n)` -/
def P10437572580762971869.Spec : Prop :=
  ∀ n, P10437572580762971869.a n = A285383 (n + 1)

end A285383

/-! ## A285383.P6461541091766037277

`xor(1, a(C(n, 2)%n))` with `a(0)=0`
-/

namespace A285383.P6461541091766037277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (a (Nat.choose n 2 % n))

end

end A285383.P6461541091766037277

namespace A285383

/-- `xor(1, a(C(n, 2)%n))` -/
def P6461541091766037277.Spec : Prop :=
  ∀ n, (P6461541091766037277.a n : ℤ) = A285383 (n + 1)

end A285383

/-! ## A285383.P10926786191988055450

`char[lt[0, xor(n, n-1)%3]]`
-/

namespace A285383.P10926786191988055450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285383.P10926786191988055450

namespace A285383

/-- `char[lt[0, xor(n, n-1)%3]]` -/
def P10926786191988055450.Spec : Prop :=
  ∀ n, (P10926786191988055450.a n : ℤ) = A285383 (n + 1)

end A285383

/-! ## A285383.P5974719594114363505

`1-a(n-gcd(n, ∑[n]))` with `a(0)=0`
-/

namespace A285383.P5974719594114363505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A285383.P5974719594114363505

namespace A285383

/-- `1-a(n-gcd(n, ∑[n]))` -/
def P5974719594114363505.Spec : Prop :=
  ∀ n, P5974719594114363505.a n = A285383 (n + 1)

end A285383

/-! ## A285383.P1965134795274196808

`char[xor(n, n+1)%3+n]`
-/

namespace A285383.P1965134795274196808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) % 3 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285383.P1965134795274196808

namespace A285383

/-- `char[xor(n, n+1)%3+n]` -/
def P1965134795274196808.Spec : Prop :=
  ∀ n, (P1965134795274196808.a n : ℤ) = A285383 (n + 1)

end A285383

/-! ## A285383.P16100206288167806244

`and(1, ∑{e}[xor(n, -n), 2-#])`
-/

namespace A285383.P16100206288167806244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (Nat.factorization (f1 n).natAbs p : ℤ)))

end

end A285383.P16100206288167806244

namespace A285383

/-- `and(1, ∑{e}[xor(n, -n), 2-#])` -/
def P16100206288167806244.Spec : Prop :=
  ∀ n, P16100206288167806244.a n = A285383 (n + 1)

end A285383

/-! ## A285383.P15882779163144516763

`xor(n, (n-1)%(n+1))%3`
-/

namespace A285383.P15882779163144516763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ))) 3

end

end A285383.P15882779163144516763

namespace A285383

/-- `xor(n, (n-1)%(n+1))%3` -/
def P15882779163144516763.Spec : Prop :=
  ∀ n, P15882779163144516763.a n = A285383 (n + 1)

end A285383

/-! ## A285383.P8952820435079288500

`char[(n+1)*2^val(n+1, 2)]`
-/

namespace A285383.P8952820435079288500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 2 ^ SequenceMachineLib.valuation (n + 1) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285383.P8952820435079288500

namespace A285383

/-- `char[(n+1)*2^val(n+1, 2)]` -/
def P8952820435079288500.Spec : Prop :=
  ∀ n, (P8952820435079288500.a n : ℤ) = A285383 (n + 1)

end A285383

/-! ## A285383.P16564251970725807857

`char[(n+1)*(or(n, n+1)-n)]`
-/

namespace A285383.P16564251970725807857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((Nat.lor n (n + 1) : ℤ) - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285383.P16564251970725807857

namespace A285383

/-- `char[(n+1)*(or(n, n+1)-n)]` -/
def P16564251970725807857.Spec : Prop :=
  ∀ n, (P16564251970725807857.a n : ℤ) = A285383 (n + 1)

end A285383

/-! ## A285383.P12057352219989333859

`1-a(n-1)*a(floor(n/2))` with `a(0)=0`
-/

namespace A285383.P12057352219989333859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (n - 1) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A285383.P12057352219989333859

namespace A285383

/-- `1-a(n-1)*a(floor(n/2))` -/
def P12057352219989333859.Spec : Prop :=
  ∀ n, P12057352219989333859.a n = A285383 (n + 1)

end A285383

/-! ## A285383.P11315073730007746475

`(a(n-1)-a(floor(n/2)))²` with `a(0)=0, a(1)=1`
-/

namespace A285383.P11315073730007746475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - a ⌊(n : ℚ) / 2⌋.toNat) ^ 2

end

end A285383.P11315073730007746475

namespace A285383

/-- `(a(n-1)-a(floor(n/2)))²` -/
def P11315073730007746475.Spec : Prop :=
  ∀ n, P11315073730007746475.a n = A285383 (n + 1)

end A285383

/-! ## A285383.P15527673009328906523

`(1-a(n-1))^a(floor(n/2))` with `a(0)=0`
-/

namespace A285383.P15527673009328906523
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (1 - a (n - 1)) ^ (a ⌊(n : ℚ) / 2⌋.toNat)

end

end A285383.P15527673009328906523

namespace A285383

/-- `(1-a(n-1))^a(floor(n/2))` -/
def P15527673009328906523.Spec : Prop :=
  ∀ n, P15527673009328906523.a n = (A285383 (n + 1) : ℝ)

end A285383

/-! ## A285383.P3528700808314525052

`2-(a(n-1)+a(floor(n/2)))` with `a(0)=0, a(1)=1`
-/

namespace A285383.P3528700808314525052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - (a (n - 1) + a ⌊(n : ℚ) / 2⌋.toNat)

end

end A285383.P3528700808314525052

namespace A285383

/-- `2-(a(n-1)+a(floor(n/2)))` -/
def P3528700808314525052.Spec : Prop :=
  ∀ n, P3528700808314525052.a n = A285383 (n + 1)

end A285383

/-! ## A285383.P3918742688949222168

`2-a(n-1)-a(floor(n/2))` with `a(0)=0, a(1)=1`
-/

namespace A285383.P3918742688949222168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - a (n - 1) - a ⌊(n : ℚ) / 2⌋.toNat

end

end A285383.P3918742688949222168

namespace A285383

/-- `2-a(n-1)-a(floor(n/2))` -/
def P3918742688949222168.Spec : Prop :=
  ∀ n, P3918742688949222168.a n = A285383 (n + 1)

end A285383

/-! ## A285383.P17357085013380465540

`char[(n+1)*(n+1-and(n, n+1))]`
-/

namespace A285383.P17357085013380465540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285383.P17357085013380465540

namespace A285383

/-- `char[(n+1)*(n+1-and(n, n+1))]` -/
def P17357085013380465540.Spec : Prop :=
  ∀ n, (P17357085013380465540.a n : ℤ) = A285383 (n + 1)

end A285383

/-! ## A285383.P4531324787985951570

`A093051(n)%2`
-/

namespace A285383.P4531324787985951570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093051 n) 2

end

end A285383.P4531324787985951570

namespace A285383

/-- `A093051(n)%2` -/
def P4531324787985951570.Spec : Prop :=
  ∀ n, P4531324787985951570.a n = A285383 (n + 1)

end A285383

/-! ## A285383.P15658185556352992846

`and(1, A088705(n))`
-/

namespace A285383.P15658185556352992846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A088705 n)

end

end A285383.P15658185556352992846

namespace A285383

/-- `and(1, A088705(n))` -/
def P15658185556352992846.Spec : Prop :=
  ∀ n, P15658185556352992846.a n = A285383 (n + 1)

end A285383

/-!
# A285384: Limiting 1-word of the morphism 0 -> 11, 1 -> 01.

The programs for A285384, the canonical program `A285384.P3630386022562053692` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285384 has offset 1).

The definition of A285384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285384.P10626914181991322930

`char[n*and(n, -n)]`
-/

namespace A285384.P10626914181991322930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285384.P10626914181991322930

namespace A285384

/-- `char[n*and(n, -n)]` -/
def P10626914181991322930.Spec : Prop :=
  ∀ n, (P10626914181991322930.a n : ℤ) = A285384 (n + 1)

end A285384

/-! ## A285384.P3630386022562053692

`xor(n, abs(1-n))%3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285384

/-- `xor(n, abs(1-n))%3` -/
def P3630386022562053692.Spec : Prop :=
  ∀ n, P3630386022562053692.a n = A285384 (n + 1)

theorem P3630386022562053692.correct : P3630386022562053692.Spec := by
  intro n
  simp only [A285384, Nat.add_sub_cancel]

end A285384

/-! ## A285384.P13245767257681244107

`(xor(n, n-1)%3)²`
-/

namespace A285384.P13245767257681244107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3 ^ 2

end

end A285384.P13245767257681244107

namespace A285384

/-- `(xor(n, n-1)%3)²` -/
def P13245767257681244107.Spec : Prop :=
  ∀ n, P13245767257681244107.a n = A285384 (n + 1)

end A285384

/-! ## A285384.P5586937614709469120

`dr(xor(n, n-1))%3`
-/

namespace A285384.P5586937614709469120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.xor (n : ℤ) ((n : ℤ) - 1)) % 3

end

end A285384.P5586937614709469120

namespace A285384

/-- `dr(xor(n, n-1))%3` -/
def P5586937614709469120.Spec : Prop :=
  ∀ n, (P5586937614709469120.a n : ℤ) = A285384 (n + 1)

end A285384

/-! ## A285384.P6099049776052330371

`(xor(n, n-1)^4)%3`
-/

namespace A285384.P6099049776052330371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1) ^ 4) 3

end

end A285384.P6099049776052330371

namespace A285384

/-- `(xor(n, n-1)^4)%3` -/
def P6099049776052330371.Spec : Prop :=
  ∀ n, P6099049776052330371.a n = A285384 (n + 1)

end A285384

/-! ## A285384.P14406473252846901320

`gcd(3, xor(n, n-1))%3`
-/

namespace A285384.P14406473252846901320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (Int.xor (n : ℤ) ((n : ℤ) - 1)) % 3

end

end A285384.P14406473252846901320

namespace A285384

/-- `gcd(3, xor(n, n-1))%3` -/
def P14406473252846901320.Spec : Prop :=
  ∀ n, (P14406473252846901320.a n : ℤ) = A285384 (n + 1)

end A285384

/-! ## A285384.P6129678575407448829

`lcm(4, xor(n, n-1))%3`
-/

namespace A285384.P6129678575407448829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (Int.xor (n : ℤ) ((n : ℤ) - 1)) % 3

end

end A285384.P6129678575407448829

namespace A285384

/-- `lcm(4, xor(n, n-1))%3` -/
def P6129678575407448829.Spec : Prop :=
  ∀ n, (P6129678575407448829.a n : ℤ) = A285384 (n + 1)

end A285384

/-! ## A285384.P4631974814709442442

`Δ[or(n, n-1)]²%3`
-/

namespace A285384.P4631974814709442442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) 3

end

end A285384.P4631974814709442442

namespace A285384

/-- `Δ[or(n, n-1)]²%3` -/
def P4631974814709442442.Spec : Prop :=
  ∀ n, P4631974814709442442.a n = A285384 (n + 1)

end A285384

/-! ## A285384.P6213584614721623752

`∏{p}[xor(n, n-1), #]%3`
-/

namespace A285384.P6213584614721623752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) % 3

end

end A285384.P6213584614721623752

namespace A285384

/-- `∏{p}[xor(n, n-1), #]%3` -/
def P6213584614721623752.Spec : Prop :=
  ∀ n, (P6213584614721623752.a n : ℤ) = A285384 (n + 1)

end A285384

/-! ## A285384.P10657289099083166943

`∑{digits}[xor(n, n-1), #]%3`
-/

namespace A285384.P10657289099083166943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum % 3

end

end A285384.P10657289099083166943

namespace A285384

/-- `∑{digits}[xor(n, n-1), #]%3` -/
def P10657289099083166943.Spec : Prop :=
  ∀ n, (P10657289099083166943.a n : ℤ) = A285384 (n + 1)

end A285384

/-! ## A285384.P16264961041518954400

`(n%2)^a(∑[n]%n)` with `a(0)=1`
-/

namespace A285384.P16264961041518954400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n % 2) ^ a ((∑ j ∈ Finset.range (n + 1), f1 j) % n)

end

end A285384.P16264961041518954400

namespace A285384

/-- `(n%2)^a(∑[n]%n)` -/
def P16264961041518954400.Spec : Prop :=
  ∀ n, (P16264961041518954400.a n : ℤ) = A285384 (n + 1)

end A285384

/-! ## A285384.P2252893967936262774

`1-and(val(n, 2), a(n-1))` with `a(0)=1`
-/

namespace A285384.P2252893967936262774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.land (SequenceMachineLib.valuation n 2 : ℤ) (a (n - 1))

end

end A285384.P2252893967936262774

namespace A285384

/-- `1-and(val(n, 2), a(n-1))` -/
def P2252893967936262774.Spec : Prop :=
  ∀ n, P2252893967936262774.a n = A285384 (n + 1)

end A285384

/-! ## A285384.P670325124297153449

`or(n-1, -(n+1))²%3`
-/

namespace A285384.P670325124297153449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor ((n : ℤ) - 1) (-(n + 1 : ℤ)) ^ 2) 3

end

end A285384.P670325124297153449

namespace A285384

/-- `or(n-1, -(n+1))²%3` -/
def P670325124297153449.Spec : Prop :=
  ∀ n, P670325124297153449.a n = A285384 (n + 1)

end A285384

/-! ## A285384.P9843026425359586964

`2-gcd(n, a(floor(n/2))+1)` with `a(0)=1`
-/

namespace A285384.P9843026425359586964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (Int.gcd (n : ℤ) (a ⌊(n : ℚ) / 2⌋.toNat + 1) : ℤ)

end

end A285384.P9843026425359586964

namespace A285384

/-- `2-gcd(n, a(floor(n/2))+1)` -/
def P9843026425359586964.Spec : Prop :=
  ∀ n, P9843026425359586964.a n = A285384 (n + 1)

end A285384

/-! ## A285384.P1852590873666287867

`char[(n+1)*xor(n, n+1)%3]`
-/

namespace A285384.P1852590873666287867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.xor n (n + 1) % 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A285384.P1852590873666287867

namespace A285384

/-- `char[(n+1)*xor(n, n+1)%3]` -/
def P1852590873666287867.Spec : Prop :=
  ∀ n, (P1852590873666287867.a n : ℤ) = A285384 (n + 1)

end A285384

/-! ## A285384.P16817097603747985813

`abs(or(2*n+1, -(2*n))%3)`
-/

namespace A285384.P16817097603747985813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (Int.lor (2 * n + 1 : ℤ) (-(2 * n : ℤ))) 3|

end

end A285384.P16817097603747985813

namespace A285384

/-- `abs(or(2*n+1, -(2*n))%3)` -/
def P16817097603747985813.Spec : Prop :=
  ∀ n, P16817097603747985813.a n = A285384 (n + 1)

end A285384

/-! ## A285384.P5636591427571277618

`dr(or(2*n+1, -(2*n)))%3`
-/

namespace A285384.P5636591427571277618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.lor (2 * n + 1 : ℤ) (-(2 * n : ℤ))) % 3

end

end A285384.P5636591427571277618

namespace A285384

/-- `dr(or(2*n+1, -(2*n)))%3` -/
def P5636591427571277618.Spec : Prop :=
  ∀ n, (P5636591427571277618.a n : ℤ) = A285384 (n + 1)

end A285384

/-! ## A285384.P9943592973195023334

`(a(n-1)-a(floor(n/2)))²` with `a(0)=1, a(1)=1`
-/

namespace A285384.P9943592973195023334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) - a ⌊(n : ℚ) / 2⌋.toNat) ^ 2

end

end A285384.P9943592973195023334

namespace A285384

/-- `(a(n-1)-a(floor(n/2)))²` -/
def P9943592973195023334.Spec : Prop :=
  ∀ n, P9943592973195023334.a n = A285384 (n + 1)

end A285384

/-! ## A285384.P5808043153626903359

`2-(a(n-1)+a(floor(n/2)))` with `a(0)=1, a(1)=1`
-/

namespace A285384.P5808043153626903359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - (a (n - 1) + a ⌊(n : ℚ) / 2⌋.toNat)

end

end A285384.P5808043153626903359

namespace A285384

/-- `2-(a(n-1)+a(floor(n/2)))` -/
def P5808043153626903359.Spec : Prop :=
  ∀ n, P5808043153626903359.a n = A285384 (n + 1)

end A285384

/-!
# A285385: Positions of 1 in A285384; complement of A072939.

The programs for A285385, the canonical program `A285385.P1698075282067715173` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285385 has offset 1).

The definition of A285385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A285385.P12665251630017542040

`comp[eq[0, xor(n, n-1)%3]]+1`
-/

namespace A285385.P12665251630017542040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A285385.P12665251630017542040

namespace A285385

/-- `comp[eq[0, xor(n, n-1)%3]]+1` -/
def P12665251630017542040.Spec : Prop :=
  ∀ n, (P12665251630017542040.a n : ℤ) = A285385 (n + 1)

end A285385

/-! ## A285385.P14695726507532386113

`comp[comp[or(n, val(n+2, 2))]+2]+1`
-/

namespace A285385.P14695726507532386113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A285385.P14695726507532386113

namespace A285385

/-- `comp[comp[or(n, val(n+2, 2))]+2]+1` -/
def P14695726507532386113.Spec : Prop :=
  ∀ n, (P14695726507532386113.a n : ℤ) = A285385 (n + 1)

end A285385

/-! ## A285385.P1698075282067715173

`lt[and(n-1, -(n+1))%3, 1]+1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285385

/-- `lt[and(n-1, -(n+1))%3, 1]+1` -/
def P1698075282067715173.Spec : Prop :=
  ∀ n, (P1698075282067715173.a n : ℤ) = A285385 (n + 1)

theorem P1698075282067715173.correct : P1698075282067715173.Spec := by
  intro n
  simp only [A285385, Nat.add_sub_cancel]

end A285385

/-! ## A285385.P14068806598103566201

`comp[(n+1)*(xor(n, n+1)+1)]+1`
-/

namespace A285385.P14068806598103566201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.xor n (n + 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A285385.P14068806598103566201

namespace A285385

/-- `comp[(n+1)*(xor(n, n+1)+1)]+1` -/
def P14068806598103566201.Spec : Prop :=
  ∀ n, (P14068806598103566201.a n : ℤ) = A285385 (n + 1)

end A285385

/-! ## A285385.P13361783545826041422

`(lt[xor(n-1, n-2)%3, 1]+1)/2`
-/

namespace A285385.P13361783545826041422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor ((n : ℤ) - 1) ((n : ℤ) - 2)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℚ) / 2

end

end A285385.P13361783545826041422

namespace A285385

/-- `(lt[xor(n-1, n-2)%3, 1]+1)/2` -/
def P13361783545826041422.Spec : Prop :=
  ∀ n, P13361783545826041422.a n = (A285385 (n + 1) : ℚ)

end A285385

/-! ## A285385.P15758880224634564744

`ceil(A171947(n+1)/2)`
-/

namespace A285385.P15758880224634564744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A171947 (n + 1) : ℚ) / 2⌉

end

end A285385.P15758880224634564744

namespace A285385

/-- `ceil(A171947(n+1)/2)` -/
def P15758880224634564744.Spec : Prop :=
  ∀ n, P15758880224634564744.a n = A285385 (n + 1)

end A285385

/-! ## A285385.P1372490173214059604

`∑[A284388(n+1)+1]`
-/

namespace A285385.P1372490173214059604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285385.P1372490173214059604

namespace A285385

/-- `∑[A284388(n+1)+1]` -/
def P1372490173214059604.Spec : Prop :=
  ∀ n, P1372490173214059604.a n = A285385 (n + 1)

end A285385

/-! ## A285385.P15460029198494724546

`comp[A036554(n+1)]+1`
-/

namespace A285385.P15460029198494724546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285385.P15460029198494724546

namespace A285385

/-- `comp[A036554(n+1)]+1` -/
def P15460029198494724546.Spec : Prop :=
  ∀ n, (P15460029198494724546.a n : ℤ) = A285385 (n + 1)

end A285385

/-! ## A285385.P3867246717261936738

`A026465(n)+a(n-1)` with `a(0)=1`
-/

namespace A285385.P3867246717261936738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026465 n + a (n - 1)

end

end A285385.P3867246717261936738

namespace A285385

/-- `A026465(n)+a(n-1)` -/
def P3867246717261936738.Spec : Prop :=
  ∀ n, P3867246717261936738.a n = A285385 (n + 1)

end A285385

/-! ## A285385.P15611542983353438941

`∑[char[A284393(n+2)]+1]`
-/

namespace A285385.P15611542983353438941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285385.P15611542983353438941

namespace A285385

/-- `∑[char[A284393(n+2)]+1]` -/
def P15611542983353438941.Spec : Prop :=
  ∀ n, (P15611542983353438941.a n : ℤ) = A285385 (n + 1)

end A285385

/-! ## A285385.P1509750144806496008

`comp[A079523(n+1)+1]+1`
-/

namespace A285385.P1509750144806496008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285385.P1509750144806496008

namespace A285385

/-- `comp[A079523(n+1)+1]+1` -/
def P1509750144806496008.Spec : Prop :=
  ∀ n, (P1509750144806496008.a n : ℤ) = A285385 (n + 1)

end A285385

/-! ## A285385.P9425041887330144882

`comp[A162648(n+1)+2]+1`
-/

namespace A285385.P9425041887330144882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285385.P9425041887330144882

namespace A285385

/-- `comp[A162648(n+1)+2]+1` -/
def P9425041887330144882.Spec : Prop :=
  ∀ n, (P9425041887330144882.a n : ℤ) = A285385 (n + 1)

end A285385

/-! ## A285385.P5680666455036384046

`comp[2*A003159(n+1)]+1`
-/

namespace A285385.P5680666455036384046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285385.P5680666455036384046

namespace A285385

/-- `comp[2*A003159(n+1)]+1` -/
def P5680666455036384046.Spec : Prop :=
  ∀ n, (P5680666455036384046.a n : ℤ) = A285385 (n + 1)

end A285385

/-! ## A285385.P14610497542804726402

`ceil((A284393(n+1)+n)/2)`
-/

namespace A285385.P14610497542804726402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284393 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A285385.P14610497542804726402

namespace A285385

/-- `ceil((A284393(n+1)+n)/2)` -/
def P14610497542804726402.Spec : Prop :=
  ∀ n, P14610497542804726402.a n = A285385 (n + 1)

end A285385

/-! ## A285385.P8145598516022872973

`comp[A003158(n+1)-n]+1`
-/

namespace A285385.P8145598516022872973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285385.P8145598516022872973

namespace A285385

/-- `comp[A003158(n+1)-n]+1` -/
def P8145598516022872973.Spec : Prop :=
  ∀ n, (P8145598516022872973.a n : ℤ) = A285385 (n + 1)

end A285385

/-! ## A285385.P10867914896007262578

`record[A302792(n+1)+and(1, n)]`
-/

namespace A285385.P10867914896007262578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (n + 1) + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285385.P10867914896007262578

namespace A285385

/-- `record[A302792(n+1)+and(1, n)]` -/
def P10867914896007262578.Spec : Prop :=
  ∀ n, P10867914896007262578.a n = A285385 (n + 1)

end A285385

/-! ## A285385.P4657027378857117124

`comp[∑[A080426(n+1)+1]]+1`
-/

namespace A285385.P4657027378857117124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A285385.P4657027378857117124

namespace A285385

/-- `comp[∑[A080426(n+1)+1]]+1` -/
def P4657027378857117124.Spec : Prop :=
  ∀ n, (P4657027378857117124.a n : ℤ) = A285385 (n + 1)

end A285385

/-!
# A285388: a(n) = numerator of ((1/n) * Sum_{k=0..n^2-1} binomial(2k,k)/4^k).

The programs for A285388, the canonical program `A285388.P13702077894044627960` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285388 has offset 1).

The definition of A285388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285388.P13702077894044627960

`(n+1)*A201555(n+1)/2^A285717(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A285388

/-- `(n+1)*A201555(n+1)/2^A285717(n+1)` -/
def P13702077894044627960.Spec : Prop :=
  ∀ n, P13702077894044627960.a n = (A285388 (n + 1) : ℚ)

end A285388

/-! ## A285388.P6961133035513582672

`A000265(n+1)*A001790((n+1)²)`
-/

namespace A285388.P6961133035513582672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A001790 ((n + 1) ^ 2)

end

end A285388.P6961133035513582672

namespace A285388

/-- `A000265(n+1)*A001790((n+1)²)` -/
def P6961133035513582672.Spec : Prop :=
  ∀ n, P6961133035513582672.a n = A285388 (n + 1)

end A285388

/-! ## A285388.P12108283910621766641

`A290583(n+1)*A290584(n+1)`
-/

namespace A285388.P12108283910621766641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290583 (n + 1) * A290584 (n + 1)

end

end A285388.P12108283910621766641

namespace A285388

/-- `A290583(n+1)*A290584(n+1)` -/
def P12108283910621766641.Spec : Prop :=
  ∀ n, P12108283910621766641.a n = A285388 (n + 1)

end A285388

/-!
# A285389: Denominator of Sum_{k=0..n^2-1} (-1)^k*sqrt(Pi)/(Gamma(1/2-k)*Gamma(1+k))/n.

The programs for A285389, the canonical program `A285389.P15180177278250206425` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285389 has offset 1).

The definition of A285389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285389.P15180177278250206425

`A000079(A285406(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A285389

/-- `A000079(A285406(n+1))` -/
def P15180177278250206425.Spec : Prop :=
  ∀ n, P15180177278250206425.a n = A285389 (n + 1)

theorem P15180177278250206425.correct : P15180177278250206425.Spec := by
  intro n
  simp only [A285389, Nat.add_sub_cancel]

end A285389

/-! ## A285389.P8977155000786996800

`A000079(A281264(n+1)+val(n+1, 2))`
-/

namespace A285389.P8977155000786996800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A281264 (n + 1) + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)).toNat

end

end A285389.P8977155000786996800

namespace A285389

/-- `A000079(A281264(n+1)+val(n+1, 2))` -/
def P8977155000786996800.Spec : Prop :=
  ∀ n, P8977155000786996800.a n = A285389 (n + 1)

end A285389

/-! ## A285389.P3699724408689751669

`A000079(A281264(n+1)+A007814(n+1))`
-/

namespace A285389.P3699724408689751669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A281264 (n + 1) + A007814 (n + 1)).toNat

end

end A285389.P3699724408689751669

namespace A285389

/-- `A000079(A281264(n+1)+A007814(n+1))` -/
def P3699724408689751669.Spec : Prop :=
  ∀ n, P3699724408689751669.a n = A285389 (n + 1)

end A285389

/-! ## A285389.P15007002513310409695

`A000079(A007814(n+1))*A280656(n+1)`
-/

namespace A285389.P15007002513310409695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 1)).toNat * A280656 (n + 1)

end

end A285389.P15007002513310409695

namespace A285389

/-- `A000079(A007814(n+1))*A280656(n+1)` -/
def P15007002513310409695.Spec : Prop :=
  ∀ n, P15007002513310409695.a n = A285389 (n + 1)

end A285389

/-!
# A285391: Start with a single cell at coordinates (0, 0), then iteratively subdivide the grid into 3 X 3 cells and remove the cells whose sum of modulo 2 coordinates is 2; a(n) is the number of cells after n iterations.

The programs for A285391, the canonical program `A285391.P6005058407723445986` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285391 has offset 0).

The definition of A285391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285391.P6005058407723445986

`9*a(n-1)-12*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285391

/-- `9*a(n-1)-12*a(n-2)` -/
def P6005058407723445986.Spec : Prop :=
  ∀ n, P6005058407723445986.a n = A285391 n

theorem P6005058407723445986.correct : P6005058407723445986.Spec := by
  intro n
  simp only [A285391]

end A285391

/-! ## A285391.P643092045069272339

`ogf((1-x)/(1-9x+12x^2))`
-/

namespace A285391.P643092045069272339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -9, 12] n

end

end A285391.P643092045069272339

namespace A285391

/-- `ogf((1-x)/(1-9x+12x^2))` -/
def P643092045069272339.Spec : Prop :=
  ∀ n, P643092045069272339.a n = A285391 n

end A285391

/-! ## A285391.P15874617705318071446

`Δ[A299915(n)]`
-/

namespace A285391.P15874617705318071446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285391.P15874617705318071446

namespace A285391

/-- `Δ[A299915(n)]` -/
def P15874617705318071446.Spec : Prop :=
  ∀ n, P15874617705318071446.a n = A285391 n

end A285391

/-! ## A285391.P3827521045799279847

`A176968(Δ[n²])`
-/

namespace A285391.P3827521045799279847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176968 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A285391.P3827521045799279847

namespace A285391

/-- `A176968(Δ[n²])` -/
def P3827521045799279847.Spec : Prop :=
  ∀ n, P3827521045799279847.a n = A285391 n

end A285391

/-! ## A285391.P6843562229859723418

`Δ[A299914(2*n)]`
-/

namespace A285391.P6843562229859723418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285391.P6843562229859723418

namespace A285391

/-- `Δ[A299914(2*n)]` -/
def P6843562229859723418.Spec : Prop :=
  ∀ n, P6843562229859723418.a n = A285391 n

end A285391

/-! ## A285391.P15959453895363764231

`A299915(n+1)-A299915(n)`
-/

namespace A285391.P15959453895363764231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299915 (n + 1) - A299915 n

end

end A285391.P15959453895363764231

namespace A285391

/-- `A299915(n+1)-A299915(n)` -/
def P15959453895363764231.Spec : Prop :=
  ∀ n, P15959453895363764231.a n = A285391 n

end A285391

/-! ## A285391.P3694611101003846929

`A299916(n)+2*A299915(n)`
-/

namespace A285391.P3694611101003846929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299916 n + 2 * A299915 n

end

end A285391.P3694611101003846929

namespace A285391

/-- `A299916(n)+2*A299915(n)` -/
def P3694611101003846929.Spec : Prop :=
  ∀ n, P3694611101003846929.a n = A285391 n

end A285391

/-! ## A285391.P3049587178852567487

`A299914(2*(n+1))-A299914(2*n)`
-/

namespace A285391.P3049587178852567487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (2 * (n + 1)) - A299914 (2 * n)

end

end A285391.P3049587178852567487

namespace A285391

/-- `A299914(2*(n+1))-A299914(2*n)` -/
def P3049587178852567487.Spec : Prop :=
  ∀ n, P3049587178852567487.a n = A285391 n

end A285391

/-! ## A285391.P1128039482328332376

`A299914(2*n+1)+2*A299914(2*n)`
-/

namespace A285391.P1128039482328332376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (2 * n + 1) + 2 * A299914 (2 * n)

end

end A285391.P1128039482328332376

namespace A285391

/-- `A299914(2*n+1)+2*A299914(2*n)` -/
def P1128039482328332376.Spec : Prop :=
  ∀ n, P1128039482328332376.a n = A285391 n

end A285391

/-! ## A285391.P5280263129418630678

`2*A176968(2*n+1)-A176968(2*n+1)`
-/

namespace A285391.P5280263129418630678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176968 (2 * n + 1) - A176968 (2 * n + 1)

end

end A285391.P5280263129418630678

namespace A285391

/-- `2*A176968(2*n+1)-A176968(2*n+1)` -/
def P5280263129418630678.Spec : Prop :=
  ∀ n, P5280263129418630678.a n = A285391 n

end A285391

/-!
# A285392: Start with a single cell at coordinates (0, 0), then iteratively subdivide the grid into 3 X 3 cells and remove the cells whose sum of modulo 2 coordinates is 0; a(n) is the number of cells after n iterations.

The programs for A285392, the canonical program `A285392.P14017093552765345320` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285392 has offset 0).

The definition of A285392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285392.P14017093552765345320

`9*a(n-1)-12*a(n-2)` with `a(0)=1, a(1)=5, a(2)=36`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285392

/-- `9*a(n-1)-12*a(n-2)` -/
def P14017093552765345320.Spec : Prop :=
  ∀ n, P14017093552765345320.a n = A285392 n

theorem P14017093552765345320.correct : P14017093552765345320.Spec := by
  intro n
  simp only [A285392]

end A285392

/-! ## A285392.P10782348359341736200

`ogf((1-4x+3x^2)/(1-9x+12x^2))`
-/

namespace A285392.P10782348359341736200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 3] [1, -9, 12] n

end

end A285392.P10782348359341736200

namespace A285392

/-- `ogf((1-4x+3x^2)/(1-9x+12x^2))` -/
def P10782348359341736200.Spec : Prop :=
  ∀ n, P10782348359341736200.a n = A285392 n

end A285392

/-! ## A285392.P8781243652745053283

`Δ[A299914(A004273(n))]`
-/

namespace A285392.P8781243652745053283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285392.P8781243652745053283

namespace A285392

/-- `Δ[A299914(A004273(n))]` -/
def P8781243652745053283.Spec : Prop :=
  ∀ n, P8781243652745053283.a n = A285392 n

end A285392

/-! ## A285392.P12300435230405631355

`Δ[A299914(record[A026741(n)])]`
-/

namespace A285392.P12300435230405631355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285392.P12300435230405631355

namespace A285392

/-- `Δ[A299914(record[A026741(n)])]` -/
def P12300435230405631355.Spec : Prop :=
  ∀ n, P12300435230405631355.a n = A285392 n

end A285392

/-! ## A285392.P17319263502393619683

`record[Δ[A299914(A063196(n+1))]]`
-/

namespace A285392.P17319263502393619683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (A063196 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A285392.P17319263502393619683

namespace A285392

/-- `record[Δ[A299914(A063196(n+1))]]` -/
def P17319263502393619683.Spec : Prop :=
  ∀ n, P17319263502393619683.a n = A285392 n

end A285392

/-! ## A285392.P7425686974942052372

`A299916(n)-A299914(A004273(n))`
-/

namespace A285392.P7425686974942052372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299916 n - A299914 (A004273 n).toNat

end

end A285392.P7425686974942052372

namespace A285392

/-- `A299916(n)-A299914(A004273(n))` -/
def P7425686974942052372.Spec : Prop :=
  ∀ n, P7425686974942052372.a n = A285392 n

end A285392

/-! ## A285392.P11783985942359691968

`A299914(2*n+1)-A299914(A004273(n))`
-/

namespace A285392.P11783985942359691968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (2 * n + 1) - A299914 (A004273 n).toNat

end

end A285392.P11783985942359691968

namespace A285392

/-- `A299914(2*n+1)-A299914(A004273(n))` -/
def P11783985942359691968.Spec : Prop :=
  ∀ n, P11783985942359691968.a n = A285392 n

end A285392

/-!
# A285393: Start with a single cell at coordinates (0, 0, 0), then iteratively subdivide the grid into 3 X 3 X 3 cells and remove the cells whose sum of modulo 2 coordinates is 2 or 3; a(n) is the number of cells after n iterations.

The programs for A285393, the canonical program `A285393.P10847545527564620933` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285393 has offset 0).

The definition of A285393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285393.P10847545527564620933

`20*a(n-1)-48*a(n-2)` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285393

/-- `20*a(n-1)-48*a(n-2)` -/
def P10847545527564620933.Spec : Prop :=
  ∀ n, P10847545527564620933.a n = A285393 n

theorem P10847545527564620933.correct : P10847545527564620933.Spec := by
  intro n
  simp only [A285393]

end A285393

/-! ## A285393.P5381490854264360841

`4^n*A116415(n)`
-/

namespace A285393.P5381490854264360841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A116415 n

end

end A285393.P5381490854264360841

namespace A285393

/-- `4^n*A116415(n)` -/
def P5381490854264360841.Spec : Prop :=
  ∀ n, P5381490854264360841.a n = A285393 n

end A285393

/-! ## A285393.P1653739280707633285

`Δ[A052961(n)]*4^n`
-/

namespace A285393.P1653739280707633285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (4 ^ n : ℤ)

end

end A285393.P1653739280707633285

namespace A285393

/-- `Δ[A052961(n)]*4^n` -/
def P1653739280707633285.Spec : Prop :=
  ∀ n, P1653739280707633285.a n = A285393 n

end A285393

/-! ## A285393.P1145102773088960454

`A000079(n)²*Δ[A052961(n)]`
-/

namespace A285393.P1145102773088960454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A285393.P1145102773088960454

namespace A285393

/-- `A000079(n)²*Δ[A052961(n)]` -/
def P1145102773088960454.Spec : Prop :=
  ∀ n, P1145102773088960454.a n = A285393 n

end A285393

/-! ## A285393.P2952650117307761417

`A000079(n)²*∑[A081704(n+1)/3]`
-/

namespace A285393.P2952650117307761417
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081704 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A285393.P2952650117307761417

namespace A285393

/-- `A000079(n)²*∑[A081704(n+1)/3]` -/
def P2952650117307761417.Spec : Prop :=
  ∀ n, P2952650117307761417.a n = (A285393 n : ℚ)

end A285393

/-!
# A285394: Start with a single cell at coordinates (0, 0, 0), then iteratively subdivide the grid into 3 X 3 X 3 cells and remove the cells whose sum of modulo 2 coordinates is 0 or 1; a(n) is the number of cells after n iterations.

The programs for A285394, the canonical program `A285394.P3475061583379394163` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285394 has offset 0).

The definition of A285394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285394.P3475061583379394163

`20*a(n-1)-48*a(n-2)` with `a(0)=1, a(1)=7, a(2)=116`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285394

/-- `20*a(n-1)-48*a(n-2)` -/
def P3475061583379394163.Spec : Prop :=
  ∀ n, P3475061583379394163.a n = A285394 n

theorem P3475061583379394163.correct : P3475061583379394163.Spec := by
  intro n
  simp only [A285394]

end A285394

/-! ## A285394.P6597022475883712125

`A011782(2*n)/2*A052961(n+1)`
-/

namespace A285394.P6597022475883712125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n) : ℚ) / 2 * (A052961 (n + 1) : ℚ)

end

end A285394.P6597022475883712125

namespace A285394

/-- `A011782(2*n)/2*A052961(n+1)` -/
def P6597022475883712125.Spec : Prop :=
  ∀ n, P6597022475883712125.a n = (A285394 n : ℚ)

end A285394

/-!
# A285395: Start with a single cell at coordinates (0, 0, 0), then iteratively subdivide the grid into 3 X 3 X 3 cells and remove the cells whose sum of modulo 2 coordinates is 1; a(n) is the number of cells after n iterations.

The programs for A285395, the canonical program `A285395.P16267938732875569006` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285395 has offset 0).

The definition of A285395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285395.P16267938732875569006

`28*a(n-1)-195*a(n-2)+324*a(n-3)` with `a(0)=1, a(1)=15, a(2)=249`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285395

/-- `28*a(n-1)-195*a(n-2)+324*a(n-3)` -/
def P16267938732875569006.Spec : Prop :=
  ∀ n, P16267938732875569006.a n = A285395 n

theorem P16267938732875569006.correct : P16267938732875569006.Spec := by
  intro n
  simp only [A285395]

end A285395

/-!
# A285396: Start with a single cell at coordinates (0, 0, 0), then iteratively subdivide the grid into 3 X 3 X 3 cells and remove the cells whose sum of modulo 2 coordinates is 2; a(n) is the number of cells after n iterations.

The programs for A285396, the canonical program `A285396.P2022613606165518233` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285396 has offset 0).

The definition of A285396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285396.P2022613606165518233

`28*a(n-1)-195*a(n-2)+324*a(n-3)` with `a(0)=1, a(1)=21, a(2)=399`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285396

/-- `28*a(n-1)-195*a(n-2)+324*a(n-3)` -/
def P2022613606165518233.Spec : Prop :=
  ∀ n, P2022613606165518233.a n = A285396 n

theorem P2022613606165518233.correct : P2022613606165518233.Spec := by
  intro n
  simp only [A285396]

end A285396

/-!
# A285399: Start with a single cell at coordinates (0, 0, 0), then iteratively subdivide the grid into 3 X 3 X 3 cells and remove the cells whose sum of modulo 2 coordinates is 0 or 2; a(n) is the number of cells after n iterations.

The programs for A285399, the canonical program `A285399.P4443449476006908146` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A285399 has offset 0).

The definition of A285399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A285399.P4443449476006908146

`14*a(n-1)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A285399

/-- `14*a(n-1)` -/
def P4443449476006908146.Spec : Prop :=
  ∀ n, (P4443449476006908146.a n : ℤ) = A285399 n

theorem P4443449476006908146.correct : P4443449476006908146.Spec := by
  intro n
  simp only [A285399]

end A285399

/-! ## A285399.P7585875109851450038

`ogf((1-x)/(1-14x))`
-/

namespace A285399.P7585875109851450038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -14] n

end

end A285399.P7585875109851450038

namespace A285399

/-- `ogf((1-x)/(1-14x))` -/
def P7585875109851450038.Spec : Prop :=
  ∀ n, P7585875109851450038.a n = A285399 n

end A285399

/-! ## A285399.P9392480763461603468

`Δ[floor(14^(n-1))]`
-/

namespace A285399.P9392480763461603468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(14 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A285399.P9392480763461603468

namespace A285399

/-- `Δ[floor(14^(n-1))]` -/
def P9392480763461603468.Spec : Prop :=
  ∀ n, P9392480763461603468.a n = A285399 n

end A285399

/-! ## A285399.P5982199629797851335

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=13, a(2)=14`
-/

namespace A285399.P5982199629797851335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 13, 14] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A285399.P5982199629797851335

namespace A285399

/-- `abs(∏[-a(n-1)])` -/
def P5982199629797851335.Spec : Prop :=
  ∀ n, P5982199629797851335.a n = A285399 n

end A285399

/-! ## A285399.P3373636950205416865

`ceil(Δ[14^A023443(n)])`
-/

namespace A285399.P3373636950205416865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 : ℚ) ^ (A023443 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A285399.P3373636950205416865

namespace A285399

/-- `ceil(Δ[14^A023443(n)])` -/
def P3373636950205416865.Spec : Prop :=
  ∀ n, P3373636950205416865.a n = A285399 n

end A285399

/-! ## A285399.P17888601059241848085

`∏{digits}[A059482(n), A166517(#)]`
-/

namespace A285399.P17888601059241848085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A166517 x).prod

end

end A285399.P17888601059241848085

namespace A285399

/-- `∏{digits}[A059482(n), A166517(#)]` -/
def P17888601059241848085.Spec : Prop :=
  ∀ n, P17888601059241848085.a n = A285399 n

end A285399

/-! ## A285399.P18096943898798122736

`ceil(Δ[A001023(n)/14])`
-/

namespace A285399.P18096943898798122736
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001023 n : ℚ) / 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A285399.P18096943898798122736

namespace A285399

/-- `ceil(Δ[A001023(n)/14])` -/
def P18096943898798122736.Spec : Prop :=
  ∀ n, P18096943898798122736.a n = A285399 n

end A285399

