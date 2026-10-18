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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A245000: Number of standard Young tableaux with 2n cells and n as last value in the first row.

The programs for A245000, there is no canonical definition to state claims against.
-/

/-! ## A245000.P10547820758186096160

`A238794(∑[4*n])`
-/

namespace A245000.P10547820758186096160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245000.P10547820758186096160

/-! ## A245000.P14829676310257079675

`and(A153881(n+1), A238794(2*(n²+n)))`
-/

namespace A245000.P14829676310257079675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 1)) (A238794 (2 * (n ^ 2 + n)))

end

end A245000.P14829676310257079675

/-! ## A245000.P925967048618830191

`A007318(A000217(n))*A238794(2*(n²+n))`
-/

namespace A245000.P925967048618830191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A238794 (2 * (n ^ 2 + n))

end

end A245000.P925967048618830191

/-! ## A245000.P8814008778758112235

`A014963(A051989(n+1))*A238794(2*(n²+n))`
-/

namespace A245000.P8814008778758112235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A051989 (n + 1)).toNat * A238794 (2 * (n ^ 2 + n))

end

end A245000.P8814008778758112235

/-! ## A245000.P3616498687153259401

`A007318(A130519(2*n))*A238794(2*(n²+n))`
-/

namespace A245000.P3616498687153259401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A130519 (2 * n)).toNat * A238794 (2 * (n ^ 2 + n))

end

end A245000.P3616498687153259401

/-!
# A245001: Number of standard Young tableaux with n cells and 3 as last value in the first row.

The programs for A245001, the canonical program `A245001.P3349015915289072323` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245001 has offset 3).

The definition of A245001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245001.P11977225142201657996

`record[A210736(n)+A168049(n)]`
-/

namespace A245001.P11977225142201657996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n + A168049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245001.P11977225142201657996

namespace A245001

/-- `record[A210736(n)+A168049(n)]` -/
def P11977225142201657996.Spec : Prop :=
  ∀ n, P11977225142201657996.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P3349015915289072323

`A001405(n+1)+A001006(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245001

/-- `A001405(n+1)+A001006(n)` -/
def P3349015915289072323.Spec : Prop :=
  ∀ n, P3349015915289072323.a n = A245001 (n + 3)

theorem P3349015915289072323.correct : P3349015915289072323.Spec := by
  intro n
  simp only [A245001, Nat.add_sub_cancel]

end A245001

/-! ## A245001.P11927295060333456327

`A210736(n+2)+A001006(n)`
-/

namespace A245001.P11927295060333456327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 2) + A001006 n

end

end A245001.P11927295060333456327

namespace A245001

/-- `A210736(n+2)+A001006(n)` -/
def P11927295060333456327.Spec : Prop :=
  ∀ n, P11927295060333456327.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P7148292866783755313

`A001006(n)+abs(A126930(n+1))`
-/

namespace A245001.P7148292866783755313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n + |A126930 (n + 1)|

end

end A245001.P7148292866783755313

namespace A245001

/-- `A001006(n)+abs(A126930(n+1))` -/
def P7148292866783755313.Spec : Prop :=
  ∀ n, P7148292866783755313.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P17108137885659341726

`A001405(n+1)+Δ[A097332(n)]`
-/

namespace A245001.P17108137885659341726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (f1 (n + 1) - f1 n)

end

end A245001.P17108137885659341726

namespace A245001

/-- `A001405(n+1)+Δ[A097332(n)]` -/
def P17108137885659341726.Spec : Prop :=
  ∀ n, P17108137885659341726.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P1060692689966097254

`A086246(n+2)+A001405(n+1)`
-/

namespace A245001.P1060692689966097254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2) + A001405 (n + 1)

end

end A245001.P1060692689966097254

namespace A245001

/-- `A086246(n+2)+A001405(n+1)` -/
def P1060692689966097254.Spec : Prop :=
  ∀ n, P1060692689966097254.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P16133098127591452758

`A168049(n+2)+A001405(n+1)`
-/

namespace A245001.P16133098127591452758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 2) + A001405 (n + 1)

end

end A245001.P16133098127591452758

namespace A245001

/-- `A168049(n+2)+A001405(n+1)` -/
def P16133098127591452758.Spec : Prop :=
  ∀ n, P16133098127591452758.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P10320596314752586986

`A001405(n+1)-A168051(n+2)`
-/

namespace A245001.P10320596314752586986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) - A168051 (n + 2)

end

end A245001.P10320596314752586986

namespace A245001

/-- `A001405(n+1)-A168051(n+2)` -/
def P10320596314752586986.Spec : Prop :=
  ∀ n, P10320596314752586986.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P12667185612798015221

`A001405(n+1)-A292440(n+2)`
-/

namespace A245001.P12667185612798015221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) - A292440 (n + 2)

end

end A245001.P12667185612798015221

namespace A245001

/-- `A001405(n+1)-A292440(n+2)` -/
def P12667185612798015221.Spec : Prop :=
  ∀ n, P12667185612798015221.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P14778970883531553380

`A001405(n+1)+abs(A166587(n+1))`
-/

namespace A245001.P14778970883531553380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + |A166587 (n + 1)|

end

end A245001.P14778970883531553380

namespace A245001

/-- `A001405(n+1)+abs(A166587(n+1))` -/
def P14778970883531553380.Spec : Prop :=
  ∀ n, P14778970883531553380.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P5918919771633740641

`A001405(n+1)+∑[A002026(abs(1-n))]`
-/

namespace A245001.P5918919771633740641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245001.P5918919771633740641

namespace A245001

/-- `A001405(n+1)+∑[A002026(abs(1-n))]` -/
def P5918919771633740641.Spec : Prop :=
  ∀ n, P5918919771633740641.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P360267037230837730

`A001405(n+1)+A343386(n)+A107587(n)`
-/

namespace A245001.P360267037230837730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A343386 n + A107587 n)

end

end A245001.P360267037230837730

namespace A245001

/-- `A001405(n+1)+A343386(n)+A107587(n)` -/
def P360267037230837730.Spec : Prop :=
  ∀ n, P360267037230837730.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P14080285152758595862

`A001405(n+1)+A005043(n+1)+A005043(n)`
-/

namespace A245001.P14080285152758595862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A005043 (n + 1) + A005043 n)

end

end A245001.P14080285152758595862

namespace A245001

/-- `A001405(n+1)+A005043(n+1)+A005043(n)` -/
def P14080285152758595862.Spec : Prop :=
  ∀ n, P14080285152758595862.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P13665306085952455952

`A001405(n+1)+A097332(n+1)-A097332(n)`
-/

namespace A245001.P13665306085952455952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A097332 (n + 1) - A097332 n)

end

end A245001.P13665306085952455952

namespace A245001

/-- `A001405(n+1)+A097332(n+1)-A097332(n)` -/
def P13665306085952455952.Spec : Prop :=
  ∀ n, P13665306085952455952.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P7341093347141781286

`A332754(n+1)+A332754(n+2)+A001006(n)`
-/

namespace A245001.P7341093347141781286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332754 (n + 1) + (A332754 (n + 2) + A001006 n)

end

end A245001.P7341093347141781286

namespace A245001

/-- `A332754(n+1)+A332754(n+2)+A001006(n)` -/
def P7341093347141781286.Spec : Prop :=
  ∀ n, P7341093347141781286.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P8413931265645347535

`A001405(n+1)+A005773(n+1)-A005774(n)`
-/

namespace A245001.P8413931265645347535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A005773 (n + 1) - A005774 n)

end

end A245001.P8413931265645347535

namespace A245001

/-- `A001405(n+1)+A005773(n+1)-A005774(n)` -/
def P8413931265645347535.Spec : Prop :=
  ∀ n, P8413931265645347535.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P8633376566965758634

`A001006(n)+sqrt(A018224(n+1))`
-/

namespace A245001.P8633376566965758634
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001006 n : ℝ) + Real.sqrt (A018224 (n + 1) : ℝ)

end

end A245001.P8633376566965758634

namespace A245001

/-- `A001006(n)+sqrt(A018224(n+1))` -/
def P8633376566965758634.Spec : Prop :=
  ∀ n, P8633376566965758634.a n = (A245001 (n + 3) : ℝ)

end A245001

/-! ## A245001.P4939912812321327118

`A064189(∑[n])+A001405(n+1)`
-/

namespace A245001.P4939912812321327118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j) + A001405 (n + 1)

end

end A245001.P4939912812321327118

namespace A245001

/-- `A064189(∑[n])+A001405(n+1)` -/
def P4939912812321327118.Spec : Prop :=
  ∀ n, P4939912812321327118.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P1186010560904003264

`A064645(∑[n])+A001405(n+1)`
-/

namespace A245001.P1186010560904003264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (∑ j ∈ Finset.range (n + 1), f1 j) + A001405 (n + 1)

end

end A245001.P1186010560904003264

namespace A245001

/-- `A064645(∑[n])+A001405(n+1)` -/
def P1186010560904003264.Spec : Prop :=
  ∀ n, P1186010560904003264.a n = A245001 (n + 3)

end A245001

/-! ## A245001.P5721046100078559863

`A007318(A194274(n+1))+A001006(n)`
-/

namespace A245001.P5721046100078559863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A194274 (n + 1)).toNat + A001006 n

end

end A245001.P5721046100078559863

namespace A245001

/-- `A007318(A194274(n+1))+A001006(n)` -/
def P5721046100078559863.Spec : Prop :=
  ∀ n, P5721046100078559863.a n = A245001 (n + 3)

end A245001

/-!
# A245002: Number of standard Young tableaux with n cells and 4 as last value in the first row.

The programs for A245002, there is no canonical definition to state claims against.
-/

/-! ## A245002.P8153067107761694340

`A238794(A155212(n)+12)`
-/

namespace A245002.P8153067107761694340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A155212 n + 12).toNat

end

end A245002.P8153067107761694340

/-! ## A245002.P8068220872396809368

`A238794(eq[4, A002262(n)])`
-/

namespace A245002.P8068220872396809368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245002.P8068220872396809368

/-! ## A245002.P1278156592989941525

`A238794(A167614(n+3)+1)`
-/

namespace A245002.P1278156592989941525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A167614 (n + 3) + 1).toNat

end

end A245002.P1278156592989941525

/-! ## A245002.P1441009293750901127

`A238794(A000217(n+4)+4)`
-/

namespace A245002.P1441009293750901127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A000217 (n + 4) + 4).toNat

end

end A245002.P1441009293750901127

/-! ## A245002.P6419106587124260832

`A238794(eq[2, A144328(n+1)-2])`
-/

namespace A245002.P6419106587124260832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245002.P6419106587124260832

/-!
# A245003: Number of standard Young tableaux with n cells and 5 as last value in the first row.

The programs for A245003, there is no canonical definition to state claims against.
-/

/-! ## A245003.P14352807111272778630

`A238794(eq[5, A002262(n)])`
-/

namespace A245003.P14352807111272778630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245003.P14352807111272778630

/-! ## A245003.P3340681599782092389

`A238794(A000096(n+4)+6)`
-/

namespace A245003.P3340681599782092389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A000096 (n + 4) + 6).toNat

end

end A245003.P3340681599782092389

/-! ## A245003.P14308164094180532095

`A238794(A000217(n+5)+5)`
-/

namespace A245003.P14308164094180532095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A000217 (n + 5) + 5).toNat

end

end A245003.P14308164094180532095

/-! ## A245003.P8982467540768912978

`A238794(eq[13, A037126(n+1)])`
-/

namespace A245003.P8982467540768912978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245003.P8982467540768912978

/-! ## A245003.P4453403680778064244

`A238794(A077169(n+5)+n+5)`
-/

namespace A245003.P4453403680778064244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A077169 (n + 5) + (n + 5 : ℤ)).toNat

end

end A245003.P4453403680778064244

/-!
# A245004: Number of standard Young tableaux with n cells and 6 as last value in the first row.

The programs for A245004, there is no canonical definition to state claims against.
-/

/-! ## A245004.P3857132238656507857

`A238794(eq[6, A002262(n)])`
-/

namespace A245004.P3857132238656507857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245004.P3857132238656507857

/-! ## A245004.P9347769524326379068

`A238794(eq[64, A059268(n)])`
-/

namespace A245004.P9347769524326379068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245004.P9347769524326379068

/-! ## A245004.P18024407211003750310

`A238794(eq[7, A002260(n+1)])`
-/

namespace A245004.P18024407211003750310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245004.P18024407211003750310

/-! ## A245004.P15620316870339482974

`A238794(eq[7, A134868(n+1)])`
-/

namespace A245004.P15620316870339482974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245004.P15620316870339482974

/-! ## A245004.P6933867807527320137

`A238794(eq[17, A037126(n+1)])`
-/

namespace A245004.P6933867807527320137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245004.P6933867807527320137

/-!
# A245005: Number of standard Young tableaux with n cells and 7 as last value in the first row.

The programs for A245005, there is no canonical definition to state claims against.
-/

/-! ## A245005.P7651170472847211491

`A238794(A167487(n+6))`
-/

namespace A245005.P7651170472847211491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A167487 (n + 6)).toNat

end

end A245005.P7651170472847211491

/-! ## A245005.P17030466236414121784

`A238794(eq[7, A002262(n)])`
-/

namespace A245005.P17030466236414121784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245005.P17030466236414121784

/-! ## A245005.P1071163091765513884

`A238794(eq[7, A144328(n+1)])`
-/

namespace A245005.P1071163091765513884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245005.P1071163091765513884

/-! ## A245005.P12453244199982062751

`A238794(eq[8, A002260(n+1)])`
-/

namespace A245005.P12453244199982062751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245005.P12453244199982062751

/-! ## A245005.P18440231906698965249

`A238794(eq[8, A134868(n+1)])`
-/

namespace A245005.P18440231906698965249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245005.P18440231906698965249

/-!
# A245006: Number of standard Young tableaux with n cells and 8 as last value in the first row.

The programs for A245006, there is no canonical definition to state claims against.
-/

/-! ## A245006.P14579413178971862951

`A238794(A000096(n+7)+9)`
-/

namespace A245006.P14579413178971862951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A000096 (n + 7) + 9).toNat

end

end A245006.P14579413178971862951

/-! ## A245006.P17064787699458811605

`A238794(A046691(n+6)+12)`
-/

namespace A245006.P17064787699458811605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A046691 (n + 6) + 12).toNat

end

end A245006.P17064787699458811605

/-! ## A245006.P14211443407227222158

`A238794(A000217(n+9)-(n+1))`
-/

namespace A245006.P14211443407227222158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A245006.P14211443407227222158

/-! ## A245006.P11383322239546724261

`A238794(A133263(n+9)-(n+3))`
-/

namespace A245006.P11383322239546724261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A133263 (n + 9) - (n + 3 : ℤ)).toNat

end

end A245006.P11383322239546724261

/-! ## A245006.P7575724986170555952

`A238794(A052905(n+7)-5-record[A028234(n+1)])`
-/

namespace A245006.P7575724986170555952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A052905 (n + 7) - 5 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A245006.P7575724986170555952

/-!
# A245007: Number of standard Young tableaux with n cells and 9 as last value in the first row.

The programs for A245007, there is no canonical definition to state claims against.
-/

/-! ## A245007.P8387793411716543949

`A238794(eq[9, A002262(n)])`
-/

namespace A245007.P8387793411716543949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245007.P8387793411716543949

/-! ## A245007.P15351887459952341337

`A238794(A000096(n+8)+10)`
-/

namespace A245007.P15351887459952341337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A000096 (n + 8) + 10).toNat

end

end A245007.P15351887459952341337

/-! ## A245007.P14001953188718489665

`A238794(A000217(n+9)+9)`
-/

namespace A245007.P14001953188718489665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A000217 (n + 9) + 9).toNat

end

end A245007.P14001953188718489665

/-! ## A245007.P12225128824751382516

`A238794(eq[10, A002260(n+1)])`
-/

namespace A245007.P12225128824751382516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245007.P12225128824751382516

/-! ## A245007.P3304428665820575014

`A238794(A000124(n+10)-(n+2))`
-/

namespace A245007.P3304428665820575014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A000124 (n + 10) - (n + 2 : ℤ)).toNat

end

end A245007.P3304428665820575014

/-!
# A245008: Number of standard Young tableaux with n cells and 10 as last value in the first row.

The programs for A245008, there is no canonical definition to state claims against.
-/

/-! ## A245008.P11418013417457278966

`A238794(eq[10, A002262(n)])`
-/

namespace A245008.P11418013417457278966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245008.P11418013417457278966

/-! ## A245008.P14032076146592105346

`A238794(eq[10, A144328(n+1)])`
-/

namespace A245008.P14032076146592105346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245008.P14032076146592105346

/-! ## A245008.P11788018121084766840

`A238794(eq[11, A002260(n+1)])`
-/

namespace A245008.P11788018121084766840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245008.P11788018121084766840

/-! ## A245008.P14585988837388543329

`A238794(A052905(n+8)-(n-4))`
-/

namespace A245008.P14585988837388543329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A052905 (n + 8) - ((n : ℤ) - 4)).toNat

end

end A245008.P14585988837388543329

/-!
# A245009: G.f. satisfies: A(x) = (7 + A(x)^4) / (8 - 8*x).

The programs for A245009, there is no canonical definition to state claims against.
-/

/-! ## A245009.P6700144510762457589

`A004001(A352638(n))`
-/

namespace A245009.P6700144510762457589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A352638 n).toNat

end

end A245009.P6700144510762457589

/-!
# A245010: Numbers k such that k*prime(k) + 43 is a square.

The programs for A245010, there is no canonical definition to state claims against.
-/

/-! ## A245010.P3310758828199731007

`∑[∑[A109349(A326293(n))]]`
-/

namespace A245010.P3310758828199731007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109349 (A326293 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245010.P3310758828199731007

/-!
# A245011: Number of ways to place n nonattacking princesses on an n X n board.

The programs for A245011, there is no canonical definition to state claims against.
-/

/-! ## A245011.P11726281992139456298

`A103977(A365558(n)+3)`
-/

namespace A245011.P11726281992139456298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (A365558 n + 3).toNat

end

end A245011.P11726281992139456298

/-!
# A245012: The number of labeled caterpillar graphs on n nodes.

The programs for A245012, there is no canonical definition to state claims against.
-/

/-! ## A245012.P8452774776138781663

`A000272(n)-A008615(A061122(n+1))`
-/

namespace A245012.P8452774776138781663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n - A008615 (A061122 (n + 1)).toNat

end

end A245012.P8452774776138781663

/-!
# A245013: Number A(n,k) of tilings of a k X n rectangle using 1 X 1 squares and 2 X 2 squares; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A245013, there is no canonical definition to state claims against.
-/

/-! ## A245013.P16780448436444472572

`or(A025456(A334950(2*n+3)), A189006(n))`
-/

namespace A245013.P16780448436444472572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025456 (A334950 (2 * n + 3)).toNat) (A189006 n)

end

end A245013.P16780448436444472572

/-! ## A245013.P16448986122457326991

`or(A121559(A181818(n+1)), A189006(n))`
-/

namespace A245013.P16448986122457326991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A121559 (A181818 (n + 1)).toNat) (A189006 n)

end

end A245013.P16448986122457326991

/-! ## A245013.P16350799897462267258

`A163382(A219924(n)%A058952(n+5))`
-/

namespace A245013.P16350799897462267258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163382 (Int.tmod (A219924 n) (A058952 (n + 5))).toNat

end

end A245013.P16350799897462267258

/-! ## A245013.P14709878147878613752

`or(A010060(A240203(n+3)), A189006(n))`
-/

namespace A245013.P14709878147878613752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A240203 (n + 3)).toNat) (A189006 n)

end

end A245013.P14709878147878613752

/-! ## A245013.P12938219878456244053

`or(A014045(A318256(n)), A189006(n))`
-/

namespace A245013.P12938219878456244053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014045 (A318256 n).toNat) (A189006 n)

end

end A245013.P12938219878456244053

/-!
# A245015: Numbers n such that sigma(n) is a factorial.

The programs for A245015, there is no canonical definition to state claims against.
-/

/-! ## A245015.P8166069839259975164

`eq[1, A316341(A000203(n+1))]+1`
-/

namespace A245015.P8166069839259975164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245015.P8166069839259975164

/-! ## A245015.P2761586787363616503

`eq[A065475(n+1)+A048050(n+1), A048765(n+1)]+1`
-/

namespace A245015.P2761586787363616503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) + A048050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048765 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A245015.P2761586787363616503

/-! ## A245015.P10433453988887548615

`eq[1, A276951(abs(A143348(n+1)))]+1`
-/

namespace A245015.P10433453988887548615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276951 |A143348 (n + 1)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245015.P10433453988887548615

/-!
# A245017: Numbers k such that (product of digits of k) + 1 and (product of digits of k)^2 + 1 are both prime.

The programs for A245017, the canonical program `A245017.P7747278623458680335` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245017 has offset 1).

The definition of A245017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245017.P7747278623458680335

`∩[A081988(n+1), A244748(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A245017

/-- `∩[A081988(n+1), A244748(n+1)]` -/
def P7747278623458680335.Spec : Prop :=
  ∀ n, (P7747278623458680335.a n : ℤ) = A245017 (n + 1)

theorem P7747278623458680335.correct : P7747278623458680335.Spec := by
  intro n
  simp only [A245017, Nat.add_sub_cancel]

end A245017

/-! ## A245017.P7149429815144275125

`A081988(lt[A255562(n+1), A033991(2*n)])`
-/

namespace A245017.P7149429815144275125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A245017.P7149429815144275125

namespace A245017

/-- `A081988(lt[A255562(n+1), A033991(2*n)])` -/
def P7149429815144275125.Spec : Prop :=
  ∀ n, P7149429815144275125.a n = A245017 (n + 1)

end A245017

/-! ## A245017.P9350134188663117779

`A081988(lt[A255562(n+1), A005449(3*n)])`
-/

namespace A245017.P9350134188663117779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A245017.P9350134188663117779

namespace A245017

/-- `A081988(lt[A255562(n+1), A005449(3*n)])` -/
def P9350134188663117779.Spec : Prop :=
  ∀ n, P9350134188663117779.a n = A245017 (n + 1)

end A245017

/-!
# A245019: Number of ordered n-tuples of positive integers, whose minimum is 0 and maximum is 4.

The programs for A245019, the canonical program `A245019.P16773901950714333175` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245019 has offset 1).

The definition of A245019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245019.P16773901950714333175

`5^(n+1)-2*4^(n+1)+3^(n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A245019

/-- `5^(n+1)-2*4^(n+1)+3^(n+1)` -/
def P16773901950714333175.Spec : Prop :=
  ∀ n, P16773901950714333175.a n = A245019 (n + 1)

theorem P16773901950714333175.correct : P16773901950714333175.Spec := by
  intro n
  simp only [A245019, Nat.add_sub_cancel]

end A245019

/-! ## A245019.P8651434016691454043

`∑[A257285(n)-A255463(n)]`
-/

namespace A245019.P8651434016691454043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257285 n - A255463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245019.P8651434016691454043

namespace A245019

/-- `∑[A257285(n)-A255463(n)]` -/
def P8651434016691454043.Spec : Prop :=
  ∀ n, P8651434016691454043.a n = A245019 (n + 1)

end A245019

/-! ## A245019.P2948077141239247182

`2*(A005059(n+1)-A005061(n+1))`
-/

namespace A245019.P2948077141239247182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005059 (n + 1) - A005061 (n + 1))

end

end A245019.P2948077141239247182

namespace A245019

/-- `2*(A005059(n+1)-A005061(n+1))` -/
def P2948077141239247182.Spec : Prop :=
  ∀ n, P2948077141239247182.a n = A245019 (n + 1)

end A245019

/-! ## A245019.P8576538905051095302

`2*(A005060(n+1)-A005059(n+1))`
-/

namespace A245019.P8576538905051095302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005060 (n + 1) - A005059 (n + 1))

end

end A245019.P8576538905051095302

namespace A245019

/-- `2*(A005060(n+1)-A005059(n+1))` -/
def P8576538905051095302.Spec : Prop :=
  ∀ n, P8576538905051095302.a n = A245019 (n + 1)

end A245019

/-! ## A245019.P3460993033315562559

`2*(A081186(n+1)-A000302(n+1))`
-/

namespace A245019.P3460993033315562559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081186 (n + 1) - A000302 (n + 1))

end

end A245019.P3460993033315562559

namespace A245019

/-- `2*(A081186(n+1)-A000302(n+1))` -/
def P3460993033315562559.Spec : Prop :=
  ∀ n, P3460993033315562559.a n = A245019 (n + 1)

end A245019

/-!
# A245020: Number of ordered n-tuples of positive integers, whose minimum is 0 and maximum is 5.

The programs for A245020, the canonical program `A245020.P14869026212502226553` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245020 has offset 1).

The definition of A245020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245020.P14869026212502226553

`6^(n+1)-2*5^(n+1)+4^(n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A245020

/-- `6^(n+1)-2*5^(n+1)+4^(n+1)` -/
def P14869026212502226553.Spec : Prop :=
  ∀ n, P14869026212502226553.a n = A245020 (n + 1)

theorem P14869026212502226553.correct : P14869026212502226553.Spec := by
  intro n
  simp only [A245020, Nat.add_sub_cancel]

end A245020

/-! ## A245020.P15446171190733383792

`∑[Δ[6^n-5^n]-A257285(n)]`
-/

namespace A245020.P15446171190733383792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) - (5 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A257285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245020.P15446171190733383792

namespace A245020

/-- `∑[Δ[6^n-5^n]-A257285(n)]` -/
def P15446171190733383792.Spec : Prop :=
  ∀ n, P15446171190733383792.a n = A245020 (n + 1)

end A245020

/-! ## A245020.P17471902128905770789

`2*(A081199(n+1)-A005060(n+1))`
-/

namespace A245020.P17471902128905770789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081199 (n + 1) - A005060 (n + 1))

end

end A245020.P17471902128905770789

namespace A245020

/-- `2*(A081199(n+1)-A005060(n+1))` -/
def P17471902128905770789.Spec : Prop :=
  ∀ n, P17471902128905770789.a n = A245020 (n + 1)

end A245020

/-!
# A245021: Semiprimes whose digit sum is a perfect cube.

The programs for A245021, there is no canonical definition to state claims against.
-/

/-! ## A245021.P2542737089384786858

`filter[A059094(n+1), A064911(#)]`
-/

namespace A245021.P2542737089384786858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A245021.P2542737089384786858

/-! ## A245021.P13218829371951654771

`filter[A059094(n+1), A280710(#)]`
-/

namespace A245021.P13218829371951654771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A245021.P13218829371951654771

/-! ## A245021.P8119511340833020502

`∩[A006881(n+1), A059094(n+1)]`
-/

namespace A245021.P8119511340833020502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245021.P8119511340833020502

/-! ## A245021.P1810784586569357877

`∩[A059094(n+1), A068993(n+1)]`
-/

namespace A245021.P1810784586569357877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245021.P1810784586569357877

/-! ## A245021.P10461319264514529078

`∩[A001358(n+1), A059094(n+1)]`
-/

namespace A245021.P10461319264514529078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245021.P10461319264514529078

/-! ## A245021.P8192449856019661042

`∩[A059094(n+1), A088707(n+1)-1]`
-/

namespace A245021.P8192449856019661042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245021.P8192449856019661042

/-! ## A245021.P7713191048660154774

`∩[A100493(n+1)-(n+1), A059094(n+1)]`
-/

namespace A245021.P7713191048660154774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245021.P7713191048660154774

/-! ## A245021.P6401936877878732535

`∩[A059094(n+1), A065516(n)+a(n-1)]` with `a(0)=4`
-/

namespace A245021.P6401936877878732535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245021.P6401936877878732535

/-! ## A245021.P8348610853868197317

`∩[A059094(n+1), A118717(n)-a(n-1)]` with `a(0)=4`
-/

namespace A245021.P8348610853868197317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A118717 n - f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245021.P8348610853868197317

/-!
# A245022: Integers with precisely three partitions into sums of four squares of nonnegative numbers.

The programs for A245022, there is no canonical definition to state claims against.
-/

/-! ## A245022.P3020546785020468807

`eq[3, A002635(n)]`
-/

namespace A245022.P3020546785020468807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245022.P3020546785020468807

/-! ## A245022.P11918519462034641513

`eq[3, A025428(n)+A000164(n)]`
-/

namespace A245022.P11918519462034641513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245022.P11918519462034641513

/-! ## A245022.P17824669330369557144

`eq[A025429(n)+3, A000174(n)]`
-/

namespace A245022.P17824669330369557144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245022.P17824669330369557144

/-! ## A245022.P14909573988300392545

`eq[3, A000161(n)+A025428(n)+A025427(n)]`
-/

namespace A245022.P14909573988300392545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n + (A025428 n + A025427 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245022.P14909573988300392545

/-! ## A245022.P12244029215172559069

`eq[3, A000177(n)-(A025430(n)+A025429(n))]`
-/

namespace A245022.P12244029215172559069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n - (A025430 n + A025429 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245022.P12244029215172559069

/-!
# A245023: Number of cases of tie (no winner) in the n-person rock-paper-scissors game.

The programs for A245023, the canonical program `A245023.P5269609917888441665` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245023 has offset 1).

The definition of A245023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245023.P5269609917888441665

`3^(n+1)-3*(2^(n+1)-2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A245023

/-- `3^(n+1)-3*(2^(n+1)-2)` -/
def P5269609917888441665.Spec : Prop :=
  ∀ n, P5269609917888441665.a n = A245023 (n + 1)

theorem P5269609917888441665.correct : P5269609917888441665.Spec := by
  intro n
  simp only [A245023, Nat.add_sub_cancel]

end A245023

/-! ## A245023.P8643962044129721714

`3*A101052(n)`
-/

namespace A245023.P8643962044129721714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A101052 n

end

end A245023.P8643962044129721714

namespace A245023

/-- `3*A101052(n)` -/
def P8643962044129721714.Spec : Prop :=
  ∀ n, P8643962044129721714.a n = A245023 (n + 1)

end A245023

/-! ## A245023.P10923603384463421856

`∑[lcm(3, Δ[3^n-3*2^n])]`
-/

namespace A245023.P10923603384463421856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (3 * 2 ^ n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245023.P10923603384463421856

namespace A245023

/-- `∑[lcm(3, Δ[3^n-3*2^n])]` -/
def P10923603384463421856.Spec : Prop :=
  ∀ n, (P10923603384463421856.a n : ℤ) = A245023 (n + 1)

end A245023

/-! ## A245023.P12410321555972190906

`or(1, A056454(2*(n+1))+2)`
-/

namespace A245023.P12410321555972190906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A056454 (2 * (n + 1)) + 2)

end

end A245023.P12410321555972190906

namespace A245023

/-- `or(1, A056454(2*(n+1))+2)` -/
def P12410321555972190906.Spec : Prop :=
  ∀ n, P12410321555972190906.a n = A245023 (n + 1)

end A245023

/-! ## A245023.P2575817215439957883

`or(1, A056489(2*n+1)+2)`
-/

namespace A245023.P2575817215439957883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A056489 (2 * n + 1) + 2)

end

end A245023.P2575817215439957883

namespace A245023

/-- `or(1, A056489(2*n+1)+2)` -/
def P2575817215439957883.Spec : Prop :=
  ∀ n, P2575817215439957883.a n = A245023 (n + 1)

end A245023

/-! ## A245023.P12502547186517056974

`xor(1, A056454(2*n+2)+2)`
-/

namespace A245023.P12502547186517056974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A056454 (2 * n + 2) + 2)

end

end A245023.P12502547186517056974

namespace A245023

/-- `xor(1, A056454(2*n+2)+2)` -/
def P12502547186517056974.Spec : Prop :=
  ∀ n, P12502547186517056974.a n = A245023 (n + 1)

end A245023

/-!
# A245024: Even numbers n for which lpf(n-1) < lpf(n-3), where lpf = least prime factor.

The programs for A245024, there is no canonical definition to state claims against.
-/

/-! ## A245024.P11409178095082646255

`lt[A020639(n+3), A020639(n+1)]+4`
-/

namespace A245024.P11409178095082646255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 4

end

end A245024.P11409178095082646255

/-! ## A245024.P10331717198373036224

`lt[A057237(n+3), A057237(n+1)]+4`
-/

namespace A245024.P10331717198373036224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 4

end

end A245024.P10331717198373036224

/-! ## A245024.P2032951737401093955

`lt[A175126(n), A046667(n+2)]+3`
-/

namespace A245024.P2032951737401093955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3

end

end A245024.P2032951737401093955

/-! ## A245024.P16646777742594574814

`lt[A126286(n+1), A126287(n+1)]+3`
-/

namespace A245024.P16646777742594574814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126287 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3

end

end A245024.P16646777742594574814

/-! ## A245024.P18204277664436297504

`lt[A055396(n+3), A055396(n+1)]+4`
-/

namespace A245024.P18204277664436297504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 4

end

end A245024.P18204277664436297504

/-! ## A245024.P7039474072694344198

`A020739(lt[A093803(2*n+3), A006022(2*n+5)])`
-/

namespace A245024.P7039474072694344198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A245024.P7039474072694344198

/-! ## A245024.P2545288231742215119

`2*A173977(n+1)`
-/

namespace A245024.P2545288231742215119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173977 (n + 1)

end

end A245024.P2545288231742215119

/-! ## A245024.P15511450086742659303

`A004277(A173977(n+1))`
-/

namespace A245024.P15511450086742659303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A173977 (n + 1)).toNat

end

end A245024.P15511450086742659303

/-! ## A245024.P9510092148949693636

`A004275(A173977(n+1)+1)`
-/

namespace A245024.P9510092148949693636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A173977 (n + 1) + 1).toNat

end

end A245024.P9510092148949693636

/-! ## A245024.P1568685385822322345

`A051755(A173977(n+1)+1)`
-/

namespace A245024.P1568685385822322345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A173977 (n + 1) + 1).toNat

end

end A245024.P1568685385822322345

/-!
# A245027: Divisors of 7^12 - 1.

The programs for A245027, there is no canonical definition to state claims against.
-/

/-! ## A245027.P14082851489468344011

`A351870(A245030(n+1))`
-/

namespace A245027.P14082851489468344011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A245030 (n + 1)).toNat

end

end A245027.P14082851489468344011

/-! ## A245027.P2377999373288635699

`A245030(n+1)%A003532(3*(n+1))`
-/

namespace A245027.P2377999373288635699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245030 (n + 1)) (A003532 (3 * (n + 1)))

end

end A245027.P2377999373288635699

/-! ## A245027.P13061447007915285194

`gcd(C(2, A171343(n+1)), A245030(n+1))`
-/

namespace A245027.P13061447007915285194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (A171343 (n + 1)).toNat : ℤ) (A245030 (n + 1))

end

end A245027.P13061447007915285194

/-! ## A245027.P378650906740310847

`A039982((8*n+1)²)*A245030(n+1)`
-/

namespace A245027.P378650906740310847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 ((8 * n + 1) ^ 2) * A245030 (n + 1)

end

end A245027.P378650906740310847

/-! ## A245027.P3649004589784026235

`A245030(n+1)+A000007(A242322(n+1))`
-/

namespace A245027.P3649004589784026235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245030 (n + 1) + A000007 (A242322 (n + 1)).toNat

end

end A245027.P3649004589784026235

/-!
# A245029: Divisors of 3^36 - 1.

The programs for A245029, there is no canonical definition to state claims against.
-/

/-! ## A245029.P9317201840527210364

`eq[A010125(n), A094136(A050447(n))]`
-/

namespace A245029.P9317201840527210364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094136 (A050447 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245029.P9317201840527210364

/-! ## A245029.P2240414414262671785

`eq[A010142(n), A094136(A050447(n))]`
-/

namespace A245029.P2240414414262671785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094136 (A050447 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245029.P2240414414262671785

/-! ## A245029.P12682321452264510301

`eq[A011655(n), A094136(A050447(n))]`
-/

namespace A245029.P12682321452264510301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094136 (A050447 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245029.P12682321452264510301

/-! ## A245029.P10108082259554766115

`eq[A088439(n), A094136(A050447(n))]`
-/

namespace A245029.P10108082259554766115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088439 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094136 (A050447 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245029.P10108082259554766115

/-! ## A245029.P918715488829792157

`eq[A010142(n), A107345(A060693(n))]`
-/

namespace A245029.P918715488829792157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107345 (A060693 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245029.P918715488829792157

/-!
# A245031: Numbers m such that 3*m+1 and 8*m+1 are both squares.

The programs for A245031, the canonical program `A245031.P8285924998747403516` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245031 has offset 1).

The definition of A245031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245031.P8285924998747403516

`∑[gcd(2, n)*A004189(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245031

/-- `∑[gcd(2, n)*A004189(n)]` -/
def P8285924998747403516.Spec : Prop :=
  ∀ n, P8285924998747403516.a n = A245031 (n + 1)

theorem P8285924998747403516.correct : P8285924998747403516.Spec := by
  intro n
  simp only [A245031, Nat.add_sub_cancel]

end A245031

/-! ## A245031.P14827179087176693715

`A247247(A001651(n+1))`
-/

namespace A245031.P14827179087176693715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247247 (A001651 (n + 1)).toNat

end

end A245031.P14827179087176693715

namespace A245031

/-- `A247247(A001651(n+1))` -/
def P14827179087176693715.Spec : Prop :=
  ∀ n, P14827179087176693715.a n = A245031 (n + 1)

end A245031

/-! ## A245031.P3255570614125104490

`A247247(A008619(3*n))`
-/

namespace A245031.P3255570614125104490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247247 (A008619 (3 * n)).toNat

end

end A245031.P3255570614125104490

namespace A245031

/-- `A247247(A008619(3*n))` -/
def P3255570614125104490.Spec : Prop :=
  ∀ n, P3255570614125104490.a n = A245031 (n + 1)

end A245031

/-! ## A245031.P13461435258055893210

`A247247(A008619(n)+n)`
-/

namespace A245031.P13461435258055893210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247247 (A008619 n + (n : ℤ)).toNat

end

end A245031.P13461435258055893210

namespace A245031

/-- `A247247(A008619(n)+n)` -/
def P13461435258055893210.Spec : Prop :=
  ∀ n, P13461435258055893210.a n = A245031 (n + 1)

end A245031

/-! ## A245031.P2305259862274857844

`∑[A004189(n)*A040001(n)]`
-/

namespace A245031.P2305259862274857844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n * A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245031.P2305259862274857844

namespace A245031

/-- `∑[A004189(n)*A040001(n)]` -/
def P2305259862274857844.Spec : Prop :=
  ∀ n, P2305259862274857844.a n = A245031 (n + 1)

end A245031

/-! ## A245031.P18280467076200693231

`∑[A001078(n)/A000034(n)]`
-/

namespace A245031.P18280467076200693231
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001078 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245031.P18280467076200693231

namespace A245031

/-- `∑[A001078(n)/A000034(n)]` -/
def P18280467076200693231.Spec : Prop :=
  ∀ n, P18280467076200693231.a n = (A245031 (n + 1) : ℚ)

end A245031

/-! ## A245031.P4864764011662173919

`A247247(A004526(3*n)+1)`
-/

namespace A245031.P4864764011662173919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247247 (A004526 (3 * n) + 1).toNat

end

end A245031.P4864764011662173919

namespace A245031

/-- `A247247(A004526(3*n)+1)` -/
def P4864764011662173919.Spec : Prop :=
  ∀ n, P4864764011662173919.a n = A245031 (n + 1)

end A245031

/-! ## A245031.P15925872320098148869

`A247247(A047235(n+1)/2)`
-/

namespace A245031.P15925872320098148869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247247 (SequenceMachineLib.roundAway ((A047235 (n + 1) : ℚ) / 2)).toNat

end

end A245031.P15925872320098148869

namespace A245031

/-- `A247247(A047235(n+1)/2)` -/
def P15925872320098148869.Spec : Prop :=
  ∀ n, P15925872320098148869.a n = A245031 (n + 1)

end A245031

/-! ## A245031.P3365001742081276297

`A247247(A004526(n)+1+n)`
-/

namespace A245031.P3365001742081276297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247247 (A004526 n + 1 + (n : ℤ)).toNat

end

end A245031.P3365001742081276297

namespace A245031

/-- `A247247(A004526(n)+1+n)` -/
def P3365001742081276297.Spec : Prop :=
  ∀ n, P3365001742081276297.a n = A245031 (n + 1)

end A245031

/-! ## A245031.P1321356600149245581

`A247247((A047241(n+1)+1)/2)`
-/

namespace A245031.P1321356600149245581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247247 (SequenceMachineLib.roundAway ((A047241 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A245031.P1321356600149245581

namespace A245031

/-- `A247247((A047241(n+1)+1)/2)` -/
def P1321356600149245581.Spec : Prop :=
  ∀ n, P1321356600149245581.a n = A245031 (n + 1)

end A245031

/-! ## A245031.P17476766081584162008

`A247247((A042964(n+1)+n)/2)`
-/

namespace A245031.P17476766081584162008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247247 (SequenceMachineLib.roundAway ((A042964 (n + 1) + (n : ℤ) : ℚ) / 2)).toNat

end

end A245031.P17476766081584162008

namespace A245031

/-- `A247247((A042964(n+1)+n)/2)` -/
def P17476766081584162008.Spec : Prop :=
  ∀ n, P17476766081584162008.a n = A245031 (n + 1)

end A245031

/-! ## A245031.P10529861321328736559

`∑[(A041007(n)-A080872(n))*A080872(n)]`
-/

namespace A245031.P10529861321328736559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A041007 n - A080872 n) * A080872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245031.P10529861321328736559

namespace A245031

/-- `∑[(A041007(n)-A080872(n))*A080872(n)]` -/
def P10529861321328736559.Spec : Prop :=
  ∀ n, P10529861321328736559.a n = A245031 (n + 1)

end A245031

/-! ## A245031.P17735878754047891489

`C(∑[A080872(n)], 2)`
-/

namespace A245031.P17735878754047891489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A245031.P17735878754047891489

namespace A245031

/-- `C(∑[A080872(n)], 2)` -/
def P17735878754047891489.Spec : Prop :=
  ∀ n, (P17735878754047891489.a n : ℤ) = A245031 (n + 1)

end A245031

/-! ## A245031.P3385017384518350575

`C(A129444(n+2), 2)`
-/

namespace A245031.P3385017384518350575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129444 (n + 2)).toNat 2

end

end A245031.P3385017384518350575

namespace A245031

/-- `C(A129444(n+2), 2)` -/
def P3385017384518350575.Spec : Prop :=
  ∀ n, (P3385017384518350575.a n : ℤ) = A245031 (n + 1)

end A245031

/-! ## A245031.P2139752471176721420

`floor(A249483(n+1)/3)`
-/

namespace A245031.P2139752471176721420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A249483 (n + 1) : ℚ) / 3⌋

end

end A245031.P2139752471176721420

namespace A245031

/-- `floor(A249483(n+1)/3)` -/
def P2139752471176721420.Spec : Prop :=
  ∀ n, P2139752471176721420.a n = A245031 (n + 1)

end A245031

/-! ## A245031.P8529019063366900039

`C(A233450(n+1)+1, 2)`
-/

namespace A245031.P8529019063366900039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A233450 (n + 1) + 1).toNat 2

end

end A245031.P8529019063366900039

namespace A245031

/-- `C(A233450(n+1)+1, 2)` -/
def P8529019063366900039.Spec : Prop :=
  ∀ n, (P8529019063366900039.a n : ℤ) = A245031 (n + 1)

end A245031

/-! ## A245031.P12786892600050579686

`floor(A129445(n+1)²/3)`
-/

namespace A245031.P12786892600050579686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A129445 (n + 1) ^ 2 : ℚ) / 3⌋

end

end A245031.P12786892600050579686

namespace A245031

/-- `floor(A129445(n+1)²/3)` -/
def P12786892600050579686.Spec : Prop :=
  ∀ n, P12786892600050579686.a n = A245031 (n + 1)

end A245031

/-!
# A245032: a(n) = 27*(n - 6)^2 + 4*(n - 6)^3 = ((n - 6)^2)*(4*n + 3).

The programs for A245032, the canonical program `A245032.P4262799090532297982` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245032 has offset 0).

The definition of A245032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-6)²*(4*n+3)` (program `A245032.P4262799090532297982`, by `A245032.P4262799090532297982.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245032.P17816856957708255962

`(4*n+3)*(n-6)²`
-/

namespace A245032.P17816856957708255962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) * ((n : ℤ) - 6) ^ 2

end

end A245032.P17816856957708255962

namespace A245032

/-- `(4*n+3)*(n-6)²` -/
def P17816856957708255962.Spec : Prop :=
  ∀ n, P17816856957708255962.a n = A245032 n

theorem P17816856957708255962.correct : P17816856957708255962.Spec := by
  intro n
  simp only [A245032, Nat.add_sub_cancel, A245032.P17816856957708255962.a, A245032.P4262799090532297982.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A245032

/-! ## A245032.P4262799090532297982

`(n-6)²*(4*n+3)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A245032

/-- `(n-6)²*(4*n+3)` -/
def P4262799090532297982.Spec : Prop :=
  ∀ n, P4262799090532297982.a n = A245032 n

theorem P4262799090532297982.correct : P4262799090532297982.Spec := by
  intro n
  simp only [A245032]

end A245032

/-! ## A245032.P5210009985116628870

`27*(n-6)²+4*(n-6)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245032.P5210009985116628870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * ((n : ℤ) - 6) ^ 2 + 4 * ((n : ℤ) - 6) ^ 3

end

end A245032.P5210009985116628870

namespace A245032

/-- `27*(n-6)²+4*(n-6)^3` -/
def P5210009985116628870.Spec : Prop :=
  ∀ n, P5210009985116628870.a n = A245032 n

theorem P5210009985116628870.correct : P5210009985116628870.Spec := by
  intro n
  simp only [A245032, Nat.add_sub_cancel, A245032.P5210009985116628870.a, A245032.P4262799090532297982.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A245032

/-!
# A245033: 4*(n + 7)^3 - 27*(n + 7)^2 = (4*n +1)*(n+7)^2.

The programs for A245033, the canonical program `A245033.P7972937884400896579` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245033 has offset 0).

The definition of A245033 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)*(n+7)²` (program `A245033.P7972937884400896579`, by `A245033.P7972937884400896579.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245033.P7972937884400896579

`(4*n+1)*(n+7)²`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A245033

/-- `(4*n+1)*(n+7)²` -/
def P7972937884400896579.Spec : Prop :=
  ∀ n, (P7972937884400896579.a n : ℤ) = A245033 n

theorem P7972937884400896579.correct : P7972937884400896579.Spec := by
  intro n
  simp only [A245033]

end A245033

/-! ## A245033.P10295746853213987859

`4*(n+7)^3-27*(n+7)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245033.P10295746853213987859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 7) ^ 3 : ℤ) - (27 * (n + 7) ^ 2 : ℤ)

end

end A245033.P10295746853213987859

namespace A245033

/-- `4*(n+7)^3-27*(n+7)²` -/
def P10295746853213987859.Spec : Prop :=
  ∀ n, P10295746853213987859.a n = A245033 n

theorem P10295746853213987859.correct : P10295746853213987859.Spec := by
  intro n
  simp only [A245033, Nat.add_sub_cancel, A245033.P10295746853213987859.a, A245033.P7972937884400896579.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A245033

/-! ## A245033.P13802926616190621806

`record[A000463(n+14)*(2*n+1)]`
-/

namespace A245033.P13802926616190621806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 14) * (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245033.P13802926616190621806

namespace A245033

/-- `record[A000463(n+14)*(2*n+1)]` -/
def P13802926616190621806.Spec : Prop :=
  ∀ n, P13802926616190621806.a n = A245033 n

end A245033

/-! ## A245033.P17581477028063405502

`A103218(A152773(n+2)-A140676(n))`
-/

namespace A245033.P17581477028063405502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103218 (A152773 (n + 2) - A140676 n).toNat

end

end A245033.P17581477028063405502

namespace A245033

/-- `A103218(A152773(n+2)-A140676(n))` -/
def P17581477028063405502.Spec : Prop :=
  ∀ n, P17581477028063405502.a n = A245033 n

end A245033

/-!
# A245034: a(n) = prime(n)^2 - 4*prime(n).

The programs for A245034, the canonical program `A245034.P13693774637477102255` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245034 has offset 3).

The definition of A245034 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001248, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245034.P13693774637477102255

`A001248(n+3)-4*A000040(n+3)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A245034

/-- `A001248(n+3)-4*A000040(n+3)` -/
def P13693774637477102255.Spec : Prop :=
  ∀ n, P13693774637477102255.a n = A245034 (n + 3)

theorem P13693774637477102255.correct : P13693774637477102255.Spec := by
  intro n
  simp only [A245034, Nat.add_sub_cancel]

end A245034

/-! ## A245034.P11557764881920854689

`A172367(n+1)*A215848(n+1)`
-/

namespace A245034.P11557764881920854689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1) * A215848 (n + 1)

end

end A245034.P11557764881920854689

namespace A245034

/-- `A172367(n+1)*A215848(n+1)` -/
def P11557764881920854689.Spec : Prop :=
  ∀ n, P11557764881920854689.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P14989723737621721613

`(Δ[A007504(n+2)]-4)*A215848(n+1)`
-/

namespace A245034.P14989723737621721613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 4) * A215848 (n + 1)

end

end A245034.P14989723737621721613

namespace A245034

/-- `(Δ[A007504(n+2)]-4)*A215848(n+1)` -/
def P14989723737621721613.Spec : Prop :=
  ∀ n, P14989723737621721613.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P14068404989208438154

`(A004139(n+1)-A040002(n))*A215848(n+1)`
-/

namespace A245034.P14068404989208438154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004139 (n + 1) - A040002 n) * A215848 (n + 1)

end

end A245034.P14068404989208438154

namespace A245034

/-- `(A004139(n+1)-A040002(n))*A215848(n+1)` -/
def P14068404989208438154.Spec : Prop :=
  ∀ n, P14068404989208438154.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P6544441635696421656

`(A176246(n+1)+A154115(n+1))*A215848(n+1)`
-/

namespace A245034.P6544441635696421656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176246 (n + 1) + A154115 (n + 1)) * A215848 (n + 1)

end

end A245034.P6544441635696421656

namespace A245034

/-- `(A176246(n+1)+A154115(n+1))*A215848(n+1)` -/
def P6544441635696421656.Spec : Prop :=
  ∀ n, P6544441635696421656.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P783488115535159328

`A045344(n+2)*A172367(n+1)`
-/

namespace A245034.P783488115535159328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2) * A172367 (n + 1)

end

end A245034.P783488115535159328

namespace A245034

/-- `A045344(n+2)*A172367(n+1)` -/
def P783488115535159328.Spec : Prop :=
  ∀ n, P783488115535159328.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P194791025432225511

`(Δ[A071148(n+1)]-4)*A215848(n+1)`
-/

namespace A245034.P194791025432225511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 4) * A215848 (n + 1)

end

end A245034.P194791025432225511

namespace A245034

/-- `(Δ[A071148(n+1)]-4)*A215848(n+1)` -/
def P194791025432225511.Spec : Prop :=
  ∀ n, P194791025432225511.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P16662902690543678345

`A172367(n+1)+A200050(n+3)+A200050(n+3)`
-/

namespace A245034.P16662902690543678345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1) + (A200050 (n + 3) + A200050 (n + 3))

end

end A245034.P16662902690543678345

namespace A245034

/-- `A172367(n+1)+A200050(n+3)+A200050(n+3)` -/
def P16662902690543678345.Spec : Prop :=
  ∀ n, P16662902690543678345.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P7569443590550515219

`A040976(n+3)²-4`
-/

namespace A245034.P7569443590550515219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 3) ^ 2 - 4

end

end A245034.P7569443590550515219

namespace A245034

/-- `A040976(n+3)²-4` -/
def P7569443590550515219.Spec : Prop :=
  ∀ n, P7569443590550515219.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P7671586202995019750

`(2-A000040(n+3))²-4`
-/

namespace A245034.P7671586202995019750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000040 (n + 3)) ^ 2 - 4

end

end A245034.P7671586202995019750

namespace A245034

/-- `(2-A000040(n+3))²-4` -/
def P7671586202995019750.Spec : Prop :=
  ∀ n, P7671586202995019750.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P6281358372021438325

`A000040(n+3)*A172367(n+1)`
-/

namespace A245034.P6281358372021438325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) * A172367 (n + 1)

end

end A245034.P6281358372021438325

namespace A245034

/-- `A000040(n+3)*A172367(n+1)` -/
def P6281358372021438325.Spec : Prop :=
  ∀ n, P6281358372021438325.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P974895264422515330

`A001248(n+3)-A001749(n+3)`
-/

namespace A245034.P974895264422515330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 3) - A001749 (n + 3)

end

end A245034.P974895264422515330

namespace A245034

/-- `A001248(n+3)-A001749(n+3)` -/
def P974895264422515330.Spec : Prop :=
  ∀ n, P974895264422515330.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P6891185529709855366

`record[(n+1)*A020639(n+5)]`
-/

namespace A245034.P6891185529709855366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A020639 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245034.P6891185529709855366

namespace A245034

/-- `record[(n+1)*A020639(n+5)]` -/
def P6891185529709855366.Spec : Prop :=
  ∀ n, P6891185529709855366.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P5062262690232137229

`record[(2*n+1)*A006530(2*n+5)]`
-/

namespace A245034.P5062262690232137229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A006530 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245034.P5062262690232137229

namespace A245034

/-- `record[(2*n+1)*A006530(2*n+5)]` -/
def P5062262690232137229.Spec : Prop :=
  ∀ n, P5062262690232137229.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P8025663719238863760

`record[(2*n+1)*∑{p}[2*n+5, #]]`
-/

namespace A245034.P8025663719238863760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245034.P8025663719238863760

namespace A245034

/-- `record[(2*n+1)*∑{p}[2*n+5, #]]` -/
def P8025663719238863760.Spec : Prop :=
  ∀ n, (P8025663719238863760.a n : ℤ) = A245034 (n + 3)

end A245034

/-! ## A245034.P6624456607566391230

`record[(2*n+1)*(A057063(n+3)+1)]`
-/

namespace A245034.P6624456607566391230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (A057063 (n + 3) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245034.P6624456607566391230

namespace A245034

/-- `record[(2*n+1)*(A057063(n+3)+1)]` -/
def P6624456607566391230.Spec : Prop :=
  ∀ n, P6624456607566391230.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P16247468888539728479

`A078371(A089038(n+1))`
-/

namespace A245034.P16247468888539728479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 (A089038 (n + 1)).toNat

end

end A245034.P16247468888539728479

namespace A245034

/-- `A078371(A089038(n+1))` -/
def P16247468888539728479.Spec : Prop :=
  ∀ n, P16247468888539728479.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P18300094561585968104

`A073577(A067076(n+2))-2`
-/

namespace A245034.P18300094561585968104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 (A067076 (n + 2)).toNat - 2

end

end A245034.P18300094561585968104

namespace A245034

/-- `A073577(A067076(n+2))-2` -/
def P18300094561585968104.Spec : Prop :=
  ∀ n, P18300094561585968104.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P3500055842046109203

`record[A005408(n)*A076567(n+1)]`
-/

namespace A245034.P3500055842046109203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A076567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245034.P3500055842046109203

namespace A245034

/-- `record[A005408(n)*A076567(n+1)]` -/
def P3500055842046109203.Spec : Prop :=
  ∀ n, P3500055842046109203.a n = A245034 (n + 3)

end A245034

/-! ## A245034.P110498672297472069

`record[(n+1)*A014963(n+5)]`
-/

namespace A245034.P110498672297472069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014963 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245034.P110498672297472069

namespace A245034

/-- `record[(n+1)*A014963(n+5)]` -/
def P110498672297472069.Spec : Prop :=
  ∀ n, P110498672297472069.a n = A245034 (n + 3)

end A245034

/-!
# A245035: a(n) = (prime(n) - 7)^2 * (4*prime(n) - 1).

The programs for A245035, the canonical program `A245035.P16215164544948974787` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245035 has offset 1).

The definition of A245035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245035.P16215164544948974787

`A245032(A006093(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A245035

/-- `A245032(A006093(n+1))` -/
def P16215164544948974787.Spec : Prop :=
  ∀ n, P16215164544948974787.a n = A245035 (n + 1)

theorem P16215164544948974787.correct : P16215164544948974787.Spec := by
  intro n
  simp only [A245035, Nat.add_sub_cancel]

end A245035

/-! ## A245035.P4518999498513990221

`A245032(record[A000010(n+1)])`
-/

namespace A245035.P4518999498513990221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245032 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A245035.P4518999498513990221

namespace A245035

/-- `A245032(record[A000010(n+1)])` -/
def P4518999498513990221.Spec : Prop :=
  ∀ n, P4518999498513990221.a n = A245035 (n + 1)

end A245035

/-! ## A245035.P5887425626350490954

`A245032(A040976(n+1)+1)`
-/

namespace A245035.P5887425626350490954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245032 (A040976 (n + 1) + 1).toNat

end

end A245035.P5887425626350490954

namespace A245035

/-- `A245032(A040976(n+1)+1)` -/
def P5887425626350490954.Spec : Prop :=
  ∀ n, P5887425626350490954.a n = A245035 (n + 1)

end A245035

/-! ## A245035.P18239863254389649628

`A245032(A000040(n+1)-1)`
-/

namespace A245035.P18239863254389649628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245032 (A000040 (n + 1) - 1).toNat

end

end A245035.P18239863254389649628

namespace A245035

/-- `A245032(A000040(n+1)-1)` -/
def P18239863254389649628.Spec : Prop :=
  ∀ n, P18239863254389649628.a n = A245035 (n + 1)

end A245035

/-! ## A245035.P1034504557352463732

`A245032(eq[1, A001222(n+1)])`
-/

namespace A245035.P1034504557352463732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245035.P1034504557352463732

namespace A245035

/-- `A245032(eq[1, A001222(n+1)])` -/
def P1034504557352463732.Spec : Prop :=
  ∀ n, P1034504557352463732.a n = A245035 (n + 1)

end A245035

/-!
# A245036: a(n) = 4*prime(n)^3 - 27*prime(n)^2 = (prime(n)^2)*[4*prime(n) - 27], n >= 4.

The programs for A245036, there is no canonical definition to state claims against.
-/

/-! ## A245036.P1685218225689799737

`A245033(lt[∑{e}[A245033(n), #], 5])`
-/

namespace A245036.P1685218225689799737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245033 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245033 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A245036.P1685218225689799737

/-! ## A245036.P8024367939321494757

`filter[A245033(2*n), A212793(#)]`
-/

namespace A245036.P8024367939321494757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A245036.P8024367939321494757

/-! ## A245036.P7213376017205260738

`filter[A245033(2*n), A359429(#)]`
-/

namespace A245036.P7213376017205260738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A245036.P7213376017205260738

/-!
# A245037: Number of partitions of n where the minimal multiplicity of any part is 6.

The programs for A245037, there is no canonical definition to state claims against.
-/

/-! ## A245037.P10422614387110412053

`A243978(A166136(n+5))`
-/

namespace A245037.P10422614387110412053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A166136 (n + 5)).toNat

end

end A245037.P10422614387110412053

/-! ## A245037.P16140555492741766201

`A243978(A056119(n)+27)`
-/

namespace A245037.P16140555492741766201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A056119 n + 27).toNat

end

end A245037.P16140555492741766201

/-! ## A245037.P1775176019696406861

`A243978(A167487(n+5)-1)`
-/

namespace A245037.P1775176019696406861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A167487 (n + 5) - 1).toNat

end

end A245037.P1775176019696406861

/-! ## A245037.P7085184063847006572

`A243978(A167614(n+5)+3)`
-/

namespace A245037.P7085184063847006572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A167614 (n + 5) + 3).toNat

end

end A245037.P7085184063847006572

/-! ## A245037.P1121856562231871270

`A243978(A000124(n+6)+5)`
-/

namespace A245037.P1121856562231871270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A000124 (n + 6) + 5).toNat

end

end A245037.P1121856562231871270

/-! ## A245037.P9350822223619081561

`A243978(A134869(n+6)+5)`
-/

namespace A245037.P9350822223619081561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A134869 (n + 6) + 5).toNat

end

end A245037.P9350822223619081561

/-! ## A245037.P18174624917973059602

`A243978(A000096(n+5)+7)`
-/

namespace A245037.P18174624917973059602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A000096 (n + 5) + 7).toNat

end

end A245037.P18174624917973059602

/-! ## A245037.P5857154355359190184

`A243978(A000217(n+6)+6)`
-/

namespace A245037.P5857154355359190184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A000217 (n + 6) + 6).toNat

end

end A245037.P5857154355359190184

/-! ## A245037.P10702708191515501709

`A243978(A052905(n+3)+11)`
-/

namespace A245037.P10702708191515501709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A052905 (n + 3) + 11).toNat

end

end A245037.P10702708191515501709

/-!
# A245038: Number of partitions of n where the minimal multiplicity of any part is 7.

The programs for A245038, there is no canonical definition to state claims against.
-/

/-! ## A245038.P12908173274536921097

`A243978(A167487(n+6))`
-/

namespace A245038.P12908173274536921097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A167487 (n + 6)).toNat

end

end A245038.P12908173274536921097

/-! ## A245038.P9249998828981571154

`A243978(A056121(n)+35)`
-/

namespace A245038.P9249998828981571154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A056121 n + 35).toNat

end

end A245038.P9249998828981571154

/-! ## A245038.P10143515874875891935

`A243978(A000124(n+7)+6)`
-/

namespace A245038.P10143515874875891935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A000124 (n + 7) + 6).toNat

end

end A245038.P10143515874875891935

/-! ## A245038.P2490118290662614972

`A243978(A000096(n+6)+8)`
-/

namespace A245038.P2490118290662614972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A000096 (n + 6) + 8).toNat

end

end A245038.P2490118290662614972

/-! ## A245038.P8155112930307649041

`A243978(A000217(n+7)+7)`
-/

namespace A245038.P8155112930307649041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A000217 (n + 7) + 7).toNat

end

end A245038.P8155112930307649041

/-! ## A245038.P2460549502814669443

`A243978(A055998(n+5)+10)`
-/

namespace A245038.P2460549502814669443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A055998 (n + 5) + 10).toNat

end

end A245038.P2460549502814669443

/-! ## A245038.P15065460379361260848

`A243978(A055999(n+4)+13)`
-/

namespace A245038.P15065460379361260848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A055999 (n + 4) + 13).toNat

end

end A245038.P15065460379361260848

/-! ## A245038.P5638862985094968623

`A243978(A167499(n+7)-(n+6))`
-/

namespace A245038.P5638862985094968623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A167499 (n + 7) - (n + 6 : ℤ)).toNat

end

end A245038.P5638862985094968623

/-! ## A245038.P11971356891173672982

`A243978(A134869(n+8)+A001489(n+2))`
-/

namespace A245038.P11971356891173672982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A134869 (n + 8) + A001489 (n + 2)).toNat

end

end A245038.P11971356891173672982

/-!
# A245039: Number of partitions of n where the minimal multiplicity of any part is 8.

The programs for A245039, there is no canonical definition to state claims against.
-/

/-! ## A245039.P2545924261581221164

`A243978(A056126(n)+44)`
-/

namespace A245039.P2545924261581221164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A056126 n + 44).toNat

end

end A245039.P2545924261581221164

/-! ## A245039.P4450946754956681456

`A243978(A167487(n+7)+1)`
-/

namespace A245039.P4450946754956681456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A167487 (n + 7) + 1).toNat

end

end A245039.P4450946754956681456

/-! ## A245039.P13565404967508114254

`A243978(A167499(n+7)+3)`
-/

namespace A245039.P13565404967508114254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A167499 (n + 7) + 3).toNat

end

end A245039.P13565404967508114254

/-! ## A245039.P15951088547096306657

`A243978(A000124(n+8)+7)`
-/

namespace A245039.P15951088547096306657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A000124 (n + 8) + 7).toNat

end

end A245039.P15951088547096306657

/-! ## A245039.P1891914058804569287

`A243978(A000096(n+7)+9)`
-/

namespace A245039.P1891914058804569287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A000096 (n + 7) + 9).toNat

end

end A245039.P1891914058804569287

/-! ## A245039.P12885156496582029896

`A243978(A000217(n+8)+8)`
-/

namespace A245039.P12885156496582029896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A000217 (n + 8) + 8).toNat

end

end A245039.P12885156496582029896

/-! ## A245039.P17096252807624582649

`A243978(A133263(n+9)-(n+3))`
-/

namespace A245039.P17096252807624582649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A133263 (n + 9) - (n + 3 : ℤ)).toNat

end

end A245039.P17096252807624582649

/-! ## A245039.P6397691304559979969

`A243978(A052905(n+7)-A005843(n+3))`
-/

namespace A245039.P6397691304559979969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A052905 (n + 7) - A005843 (n + 3)).toNat

end

end A245039.P6397691304559979969

/-! ## A245039.P5634620901597616346

`A243978(A134869(n+9)+A001489(n+2))`
-/

namespace A245039.P5634620901597616346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A134869 (n + 9) + A001489 (n + 2)).toNat

end

end A245039.P5634620901597616346

/-!
# A245040: Number of partitions of n where the minimal multiplicity of any part is 9.

The programs for A245040, there is no canonical definition to state claims against.
-/

/-! ## A245040.P18200038302632046543

`A243978(A000124(n+9)+8)`
-/

namespace A245040.P18200038302632046543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A000124 (n + 9) + 8).toNat

end

end A245040.P18200038302632046543

/-! ## A245040.P18397882123985909586

`A243978(A000096(n+8)+10)`
-/

namespace A245040.P18397882123985909586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A000096 (n + 8) + 10).toNat

end

end A245040.P18397882123985909586

/-! ## A245040.P6378218187812950922

`A243978(A000217(n+9)+9)`
-/

namespace A245040.P6378218187812950922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A000217 (n + 9) + 9).toNat

end

end A245040.P6378218187812950922

/-! ## A245040.P10519328572598519258

`A243978(A055999(n+6)+15)`
-/

namespace A245040.P10519328572598519258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A055999 (n + 6) + 15).toNat

end

end A245040.P10519328572598519258

/-! ## A245040.P9824043963874542036

`A243978(A034856(n+9)-(n-1))`
-/

namespace A245040.P9824043963874542036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A034856 (n + 9) - ((n : ℤ) - 1)).toNat

end

end A245040.P9824043963874542036

/-! ## A245040.P6683637381932750740

`A243978(A134869(n+10)+A001489(n+2))`
-/

namespace A245040.P6683637381932750740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A134869 (n + 10) + A001489 (n + 2)).toNat

end

end A245040.P6683637381932750740

/-!
# A245041: Number of partitions of n where the minimal multiplicity of any part is 10.

The programs for A245041, there is no canonical definition to state claims against.
-/

/-! ## A245041.P4675281100808137662

`A243978(A167499(n+9)+5)`
-/

namespace A245041.P4675281100808137662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A167499 (n + 9) + 5).toNat

end

end A245041.P4675281100808137662

/-! ## A245041.P14675048230323976496

`A243978(A000217(n+11)-(n+1))`
-/

namespace A245041.P14675048230323976496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A000217 (n + 11) - (n + 1 : ℤ)).toNat

end

end A245041.P14675048230323976496

/-! ## A245041.P3384266195396788545

`A243978(A055998(n+9)-(n-2))`
-/

namespace A245041.P3384266195396788545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A055998 (n + 9) - ((n : ℤ) - 2)).toNat

end

end A245041.P3384266195396788545

/-! ## A245041.P12018883603701417161

`A243978(A000124(n+11)-(n+2))`
-/

namespace A245041.P12018883603701417161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A000124 (n + 11) - (n + 2 : ℤ)).toNat

end

end A245041.P12018883603701417161

/-! ## A245041.P6660160312152539647

`A243978(A161680(n+12)-(n+1))`
-/

namespace A245041.P6660160312152539647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A161680 (n + 12) - (n + 1 : ℤ)).toNat

end

end A245041.P6660160312152539647

/-!
# A245042: Primes of the form (k^2+4)/5.

The programs for A245042, the canonical program `A245042.P12322996137991706287` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245042 has offset 1).

The definition of A245042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245042.P12322996137991706287

`p?[xor(1, floor((2*n+1)²/5))]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A245042

/-- `p?[xor(1, floor((2*n+1)²/5))]` -/
def P12322996137991706287.Spec : Prop :=
  ∀ n, P12322996137991706287.a n = A245042 (n + 1)

theorem P12322996137991706287.correct : P12322996137991706287.Spec := by
  intro n
  simp only [A245042, Nat.add_sub_cancel]

end A245042

/-! ## A245042.P12599803503512081791

`p?[lcm(2, n)+a(n-1)+n]` with `a(0)=1`
-/

namespace A245042.P12599803503512081791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 2 n + (f1 (n - 1) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A245042.P12599803503512081791

namespace A245042

/-- `p?[lcm(2, n)+a(n-1)+n]` -/
def P12599803503512081791.Spec : Prop :=
  ∀ n, (P12599803503512081791.a n : ℤ) = A245042 (n + 1)

end A245042

/-! ## A245042.P15866019386757616094

`p?[∑[n*(3-char[2*n])]+1]`
-/

namespace A245042.P15866019386757616094
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245042.P15866019386757616094

namespace A245042

/-- `p?[∑[n*(3-char[2*n])]+1]` -/
def P15866019386757616094.Spec : Prop :=
  ∀ n, P15866019386757616094.a n = A245042 (n + 1)

end A245042

/-! ## A245042.P8623214468719368433

`or(1, p?[A298950(n+1)])`
-/

namespace A245042.P8623214468719368433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A245042.P8623214468719368433

namespace A245042

/-- `or(1, p?[A298950(n+1)])` -/
def P8623214468719368433.Spec : Prop :=
  ∀ n, P8623214468719368433.a n = A245042 (n + 1)

end A245042

/-! ## A245042.P12036743677734957852

`or(1, p?[A211434(n+3)])`
-/

namespace A245042.P12036743677734957852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211434 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A245042.P12036743677734957852

namespace A245042

/-- `or(1, p?[A211434(n+3)])` -/
def P12036743677734957852.Spec : Prop :=
  ∀ n, P12036743677734957852.a n = A245042 (n + 1)

end A245042

/-! ## A245042.P10300957925936357975

`∏{d}[p?[A298950(n+2)], #]`
-/

namespace A245042.P10300957925936357975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298950 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A245042.P10300957925936357975

namespace A245042

/-- `∏{d}[p?[A298950(n+2)], #]` -/
def P10300957925936357975.Spec : Prop :=
  ∀ n, (P10300957925936357975.a n : ℤ) = A245042 (n + 1)

end A245042

/-! ## A245042.P4340494815787086240

`or(1, p?[A036666(n+1)+1])`
-/

namespace A245042.P4340494815787086240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036666 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A245042.P4340494815787086240

namespace A245042

/-- `or(1, p?[A036666(n+1)+1])` -/
def P4340494815787086240.Spec : Prop :=
  ∀ n, P4340494815787086240.a n = A245042 (n + 1)

end A245042

/-! ## A245042.P7213353823530860714

`p?[A298950(n+1)]%A049081(n+1)`
-/

namespace A245042.P7213353823530860714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A049081 (n + 1))

end

end A245042.P7213353823530860714

namespace A245042

/-- `p?[A298950(n+1)]%A049081(n+1)` -/
def P7213353823530860714.Spec : Prop :=
  ∀ n, P7213353823530860714.a n = A245042 (n + 1)

end A245042

/-! ## A245042.P17248788185848867000

`A007318(C(2, n))*p?[A298950(n+1)]`
-/

namespace A245042.P17248788185848867000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245042.P17248788185848867000

namespace A245042

/-- `A007318(C(2, n))*p?[A298950(n+1)]` -/
def P17248788185848867000.Spec : Prop :=
  ∀ n, P17248788185848867000.a n = A245042 (n + 1)

end A245042

/-! ## A245042.P13011280646155533444

`A000007(n+1)+p?[A036666(n+1)+1]`
-/

namespace A245042.P13011280646155533444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036666 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245042.P13011280646155533444

namespace A245042

/-- `A000007(n+1)+p?[A036666(n+1)+1]` -/
def P13011280646155533444.Spec : Prop :=
  ∀ n, P13011280646155533444.a n = A245042 (n + 1)

end A245042

/-! ## A245042.P3131277396986055688

`A000041(C(2, n+2))*p?[A298950(n+1)]`
-/

namespace A245042.P3131277396986055688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245042.P3131277396986055688

namespace A245042

/-- `A000041(C(2, n+2))*p?[A298950(n+1)]` -/
def P3131277396986055688.Spec : Prop :=
  ∀ n, P3131277396986055688.a n = A245042 (n + 1)

end A245042

/-! ## A245042.P13835599785556995610

`p?[A298950(n+1)]+A008683(∑[4*(n+1)])`
-/

namespace A245042.P13835599785556995610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298950 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A245042.P13835599785556995610

namespace A245042

/-- `p?[A298950(n+1)]+A008683(∑[4*(n+1)])` -/
def P13835599785556995610.Spec : Prop :=
  ∀ n, P13835599785556995610.a n = A245042 (n + 1)

end A245042

/-! ## A245042.P6915515608459668425

`∩[A007519(n+1), A008812(n)]`
-/

namespace A245042.P6915515608459668425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008812 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245042.P6915515608459668425

namespace A245042

/-- `∩[A007519(n+1), A008812(n)]` -/
def P6915515608459668425.Spec : Prop :=
  ∀ n, (P6915515608459668425.a n : ℤ) = A245042 (n + 1)

end A245042

/-! ## A245042.P12931578985109456036

`∩[A007519(n+1), A211435(n)]`
-/

namespace A245042.P12931578985109456036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211435 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245042.P12931578985109456036

namespace A245042

/-- `∩[A007519(n+1), A211435(n)]` -/
def P12931578985109456036.Spec : Prop :=
  ∀ n, (P12931578985109456036.a n : ℤ) = A245042 (n + 1)

end A245042

/-! ## A245042.P1734796285090729484

`∩[A045390(n+1), A211435(n)]`
-/

namespace A245042.P1734796285090729484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211435 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245042.P1734796285090729484

namespace A245042

/-- `∩[A045390(n+1), A211435(n)]` -/
def P1734796285090729484.Spec : Prop :=
  ∀ n, (P1734796285090729484.a n : ℤ) = A245042 (n + 1)

end A245042

/-! ## A245042.P9762971243287346592

`∩[A007519(n+1), A298950(n+1)]`
-/

namespace A245042.P9762971243287346592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245042.P9762971243287346592

namespace A245042

/-- `∩[A007519(n+1), A298950(n+1)]` -/
def P9762971243287346592.Spec : Prop :=
  ∀ n, (P9762971243287346592.a n : ℤ) = A245042 (n + 1)

end A245042

/-! ## A245042.P17445332419544950881

`∩[A045390(n+1), A298950(n+1)]`
-/

namespace A245042.P17445332419544950881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245042.P17445332419544950881

namespace A245042

/-- `∩[A045390(n+1), A298950(n+1)]` -/
def P17445332419544950881.Spec : Prop :=
  ∀ n, (P17445332419544950881.a n : ℤ) = A245042 (n + 1)

end A245042

/-! ## A245042.P15706360751775617272

`∩[A209544(n+1), A298950(n+1)]`
-/

namespace A245042.P15706360751775617272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245042.P15706360751775617272

namespace A245042

/-- `∩[A209544(n+1), A298950(n+1)]` -/
def P15706360751775617272.Spec : Prop :=
  ∀ n, (P15706360751775617272.a n : ℤ) = A245042 (n + 1)

end A245042

/-! ## A245042.P11999370034730013343

`∩[A172280(n+1), A008812(n)]`
-/

namespace A245042.P11999370034730013343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008812 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245042.P11999370034730013343

namespace A245042

/-- `∩[A172280(n+1), A008812(n)]` -/
def P11999370034730013343.Spec : Prop :=
  ∀ n, (P11999370034730013343.a n : ℤ) = A245042 (n + 1)

end A245042

/-!
# A245043: G.f. satisfies: A(x) = (12 + A(x)^4) / (13 - 27*x).

The programs for A245043, there is no canonical definition to state claims against.
-/

/-! ## A245043.P4862930033766945310

`A004185(A225109(n))`
-/

namespace A245043.P4862930033766945310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A225109 n).toNat

end

end A245043.P4862930033766945310

/-!
# A245044: Semiprimes with digits in descending order that differ exactly by 2.

The programs for A245044, there is no canonical definition to state claims against.
-/

/-! ## A245044.P14055561490314879950

`A290951(A385664(n+1))`
-/

namespace A245044.P14055561490314879950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290951 (A385664 (n + 1)).toNat

end

end A245044.P14055561490314879950

/-! ## A245044.P8957086710911251338

`filter[A290951(n+1), A064911(#)]`
-/

namespace A245044.P8957086710911251338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A245044.P8957086710911251338

/-! ## A245044.P13871983364244147655

`∩[A033088(n+1), A235108(n+1)]`
-/

namespace A245044.P13871983364244147655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245044.P13871983364244147655

/-!
# A245045: Primes of the form (k^2+2)/6.

The programs for A245045, the canonical program `A245045.P8702906108587065426` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245045 has offset 1).

The definition of A245045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245045.P4417228194732196476

`p?[∑[comp[4*n]]]`
-/

namespace A245045.P4417228194732196476
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A245045.P4417228194732196476

namespace A245045

/-- `p?[∑[comp[4*n]]]` -/
def P4417228194732196476.Spec : Prop :=
  ∀ n, (P4417228194732196476.a n : ℤ) = A245045 (n + 1)

end A245045

/-! ## A245045.P8702906108587065426

`or(1, p?[ceil(2/3*n²)])`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A245045

/-- `or(1, p?[ceil(2/3*n²)])` -/
def P8702906108587065426.Spec : Prop :=
  ∀ n, P8702906108587065426.a n = A245045 (n + 1)

theorem P8702906108587065426.correct : P8702906108587065426.Spec := by
  intro n
  simp only [A245045, Nat.add_sub_cancel]

end A245045

/-! ## A245045.P1168339566992069433

`∏{d}[p?[ceil(2/3*n²)], #]`
-/

namespace A245045.P1168339566992069433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (n ^ 2 : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A245045.P1168339566992069433

namespace A245045

/-- `∏{d}[p?[ceil(2/3*n²)], #]` -/
def P1168339566992069433.Spec : Prop :=
  ∀ n, (P1168339566992069433.a n : ℤ) = A245045 (n + 1)

end A245045

/-! ## A245045.P14647673725353749981

`∑{p}[p?[ceil(2/3*n²)], #]`
-/

namespace A245045.P14647673725353749981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (n ^ 2 : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A245045.P14647673725353749981

namespace A245045

/-- `∑{p}[p?[ceil(2/3*n²)], #]` -/
def P14647673725353749981.Spec : Prop :=
  ∀ n, (P14647673725353749981.a n : ℤ) = A245045 (n + 1)

end A245045

/-! ## A245045.P16973384190807279322

`∏{p}[p?[ceil(2/3*n²)], #]`
-/

namespace A245045.P16973384190807279322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (n ^ 2 : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A245045.P16973384190807279322

namespace A245045

/-- `∏{p}[p?[ceil(2/3*n²)], #]` -/
def P16973384190807279322.Spec : Prop :=
  ∀ n, (P16973384190807279322.a n : ℤ) = A245045 (n + 1)

end A245045

/-! ## A245045.P10346635217029525639

`p?[A071619(n)]%A017138(n)`
-/

namespace A245045.P10346635217029525639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017138 n)

end

end A245045.P10346635217029525639

namespace A245045

/-- `p?[A071619(n)]%A017138(n)` -/
def P10346635217029525639.Spec : Prop :=
  ∀ n, P10346635217029525639.a n = A245045 (n + 1)

end A245045

/-! ## A245045.P7391698603621996895

`p?[A186424(n)]%A112415(n)`
-/

namespace A245045.P7391698603621996895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A112415 n)

end

end A245045.P7391698603621996895

namespace A245045

/-- `p?[A186424(n)]%A112415(n)` -/
def P7391698603621996895.Spec : Prop :=
  ∀ n, P7391698603621996895.a n = A245045 (n + 1)

end A245045

/-! ## A245045.P14443125130768461147

`lcm(p?[A071619(n)], A033999(n))`
-/

namespace A245045.P14443125130768461147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A033999 n)

end

end A245045.P14443125130768461147

namespace A245045

/-- `lcm(p?[A071619(n)], A033999(n))` -/
def P14443125130768461147.Spec : Prop :=
  ∀ n, (P14443125130768461147.a n : ℤ) = A245045 (n + 1)

end A245045

/-! ## A245045.P17318382961579978058

`p?[A186423(n)]%A113338(n+1)`
-/

namespace A245045.P17318382961579978058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A113338 (n + 1))

end

end A245045.P17318382961579978058

namespace A245045

/-- `p?[A186423(n)]%A113338(n+1)` -/
def P17318382961579978058.Spec : Prop :=
  ∀ n, P17318382961579978058.a n = A245045 (n + 1)

end A245045

/-! ## A245045.P17006121647758399265

`∩[A033200(n+1), A071619(n)]`
-/

namespace A245045.P17006121647758399265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245045.P17006121647758399265

namespace A245045

/-- `∩[A033200(n+1), A071619(n)]` -/
def P17006121647758399265.Spec : Prop :=
  ∀ n, (P17006121647758399265.a n : ℤ) = A245045 (n + 1)

end A245045

/-! ## A245045.P7555971092494536473

`∩[A033203(n+1), A071619(n)]`
-/

namespace A245045.P7555971092494536473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245045.P7555971092494536473

namespace A245045

/-- `∩[A033203(n+1), A071619(n)]` -/
def P7555971092494536473.Spec : Prop :=
  ∀ n, (P7555971092494536473.a n : ℤ) = A245045 (n + 1)

end A245045

/-! ## A245045.P6346146261600472176

`∩[A033200(n+1), A186423(n)]`
-/

namespace A245045.P6346146261600472176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245045.P6346146261600472176

namespace A245045

/-- `∩[A033200(n+1), A186423(n)]` -/
def P6346146261600472176.Spec : Prop :=
  ∀ n, (P6346146261600472176.a n : ℤ) = A245045 (n + 1)

end A245045

/-! ## A245045.P1813785600237598245

`∩[A033200(n+1), A186424(n)]`
-/

namespace A245045.P1813785600237598245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245045.P1813785600237598245

namespace A245045

/-- `∩[A033200(n+1), A186424(n)]` -/
def P1813785600237598245.Spec : Prop :=
  ∀ n, (P1813785600237598245.a n : ℤ) = A245045 (n + 1)

end A245045

/-! ## A245045.P10246611951767988022

`∩[A033203(n+1), A186423(n)]`
-/

namespace A245045.P10246611951767988022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245045.P10246611951767988022

namespace A245045

/-- `∩[A033203(n+1), A186423(n)]` -/
def P10246611951767988022.Spec : Prop :=
  ∀ n, (P10246611951767988022.a n : ℤ) = A245045 (n + 1)

end A245045

/-! ## A245045.P9164799694475099892

`∩[A033203(n+1), A186424(n)]`
-/

namespace A245045.P9164799694475099892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245045.P9164799694475099892

namespace A245045

/-- `∩[A033203(n+1), A186424(n)]` -/
def P9164799694475099892.Spec : Prop :=
  ∀ n, (P9164799694475099892.a n : ℤ) = A245045 (n + 1)

end A245045

/-! ## A245045.P10042442434670029722

`∩[A341784(n+1), A071619(n)]`
-/

namespace A245045.P10042442434670029722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245045.P10042442434670029722

namespace A245045

/-- `∩[A341784(n+1), A071619(n)]` -/
def P10042442434670029722.Spec : Prop :=
  ∀ n, (P10042442434670029722.a n : ℤ) = A245045 (n + 1)

end A245045

/-! ## A245045.P15570612010085787908

`∩[A341784(n+1), A186423(n)]`
-/

namespace A245045.P15570612010085787908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245045.P15570612010085787908

namespace A245045

/-- `∩[A341784(n+1), A186423(n)]` -/
def P15570612010085787908.Spec : Prop :=
  ∀ n, (P15570612010085787908.a n : ℤ) = A245045 (n + 1)

end A245045

/-! ## A245045.P13704496472267305795

`∩[A341784(n+1), A186424(n)]`
-/

namespace A245045.P13704496472267305795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245045.P13704496472267305795

namespace A245045

/-- `∩[A341784(n+1), A186424(n)]` -/
def P13704496472267305795.Spec : Prop :=
  ∀ n, (P13704496472267305795.a n : ℤ) = A245045 (n + 1)

end A245045

/-!
# A245047: Numbers n where phi(n)|n or tau(n)|n.

The programs for A245047, there is no canonical definition to state claims against.
-/

/-! ## A245047.P16412405035619454062

`∪[A007694(n+1), A033950(n+1)]`
-/

namespace A245047.P16412405035619454062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245047.P16412405035619454062

/-! ## A245047.P6943077463965369231

`∪[A033950(n+1), Δ[A291876(n+1)]]`
-/

namespace A245047.P6943077463965369231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245047.P6943077463965369231

/-! ## A245047.P2392794162802902538

`∪[A033950(n+1), ceil(A187778(n+1)/3)]`
-/

namespace A245047.P2392794162802902538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A187778 (n + 1) : ℚ) / 3⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245047.P2392794162802902538

/-!
# A245048: Primes p such that p^2 + 28 is prime.

The programs for A245048, there is no canonical definition to state claims against.
-/

/-! ## A245048.P6275574193437734348

`p?[eq[2, A000005(n²+28)]]`
-/

namespace A245048.P6275574193437734348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 28)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A245048.P6275574193437734348

/-! ## A245048.P12979530308917708052

`p?[n*A001222(n²+28)]`
-/

namespace A245048.P12979530308917708052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (n ^ 2 + 28)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245048.P12979530308917708052

/-! ## A245048.P8741385143432837343

`p?[lcm(n+1, A001222((n+1)²+28))]`
-/

namespace A245048.P8741385143432837343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001222 ((n + 1) ^ 2 + 28))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A245048.P8741385143432837343

/-! ## A245048.P2340148432836244305

`eq[A001222(n²+28)², A105700(n)]`
-/

namespace A245048.P2340148432836244305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 28) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245048.P2340148432836244305

/-! ## A245048.P16633371268688630474

`eq[log2(A000005(n²+28)), A003415(n)]`
-/

namespace A245048.P16633371268688630474
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000005 (n ^ 2 + 28) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A245048.P16633371268688630474

/-!
# A245049: Number A(n,k) of hybrid k-ary trees with n internal nodes; square array A(n,k), n>=0, k>=1, read by antidiagonals.

The programs for A245049, there is no canonical definition to state claims against.
-/

/-! ## A245049.P6557259782650361274

`A260443(A115346(n)^A115323(n))`
-/

namespace A245049.P6557259782650361274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (SequenceMachineLib.roundAway ((A115346 n : ℚ) ^ (A115323 n : ℤ))).toNat

end

end A245049.P6557259782650361274

/-! ## A245049.P15389754569796830010

`A317588(A336574(n))`
-/

namespace A245049.P15389754569796830010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317588 (A336574 n).toNat

end

end A245049.P15389754569796830010

/-! ## A245049.P11511694459288782029

`A000005(A095161(n)^A324362(n))`
-/

namespace A245049.P11511694459288782029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A095161 n : ℚ) ^ (A324362 n : ℤ))).toNat

end

end A245049.P11511694459288782029

/-! ## A245049.P13392646040341856456

`A000005(A245093(n+1)^A324362(n))`
-/

namespace A245049.P13392646040341856456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A245093 (n + 1) : ℚ) ^ (A324362 n : ℤ))).toNat

end

end A245049.P13392646040341856456

/-! ## A245049.P17356957113659404990

`A000005(A268956(n+1)^A326322(n))`
-/

namespace A245049.P17356957113659404990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A268956 (n + 1) : ℚ) ^ (A326322 n : ℤ))).toNat

end

end A245049.P17356957113659404990

/-!
# A245050: Number of hybrid 7-ary trees with n internal nodes.

The programs for A245050, there is no canonical definition to state claims against.
-/

/-! ## A245050.P13851746034879749088

`A245049(eq[6, A025581(n)])`
-/

namespace A245050.P13851746034879749088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245050.P13851746034879749088

/-! ## A245050.P14091156054657368375

`A245049(eq[7, A193739(n)])`
-/

namespace A245050.P14091156054657368375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245050.P14091156054657368375

/-! ## A245050.P13903507473496402006

`A245049(eq[7, A195663(n)])`
-/

namespace A245050.P13903507473496402006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245050.P13903507473496402006

/-! ## A245050.P2172817678217991041

`A245049(eq[7, A004736(n+1)])`
-/

namespace A245050.P2172817678217991041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245050.P2172817678217991041

/-! ## A245050.P3600907827171515891

`A245049(Δ[Δ[A055832(n+5)]])`
-/

namespace A245050.P3600907827171515891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (f1 (n + 1) - f1 n).toNat

end

end A245050.P3600907827171515891

/-!
# A245051: Number of hybrid 8-ary trees with n internal nodes.

The programs for A245051, there is no canonical definition to state claims against.
-/

/-! ## A245051.P5946524399632242796

`A245049(A155212(n+4))`
-/

namespace A245051.P5946524399632242796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (A155212 (n + 4)).toNat

end

end A245051.P5946524399632242796

/-! ## A245051.P10908436495293155038

`A245049(eq[7, A025581(n)])`
-/

namespace A245051.P10908436495293155038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245051.P10908436495293155038

/-! ## A245051.P4756615310378431851

`A245049(eq[8, A193739(n)])`
-/

namespace A245051.P4756615310378431851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245051.P4756615310378431851

/-! ## A245051.P6398311550843580857

`A245049(eq[8, A004736(n+1)])`
-/

namespace A245051.P6398311550843580857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245051.P6398311550843580857

/-! ## A245051.P13792006983889667590

`A245049(eq[64, A055461(n+1)])`
-/

namespace A245051.P13792006983889667590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245051.P13792006983889667590

/-!
# A245052: Number of hybrid 9-ary trees with n internal nodes.

The programs for A245052, there is no canonical definition to state claims against.
-/

/-! ## A245052.P13445441689356242656

`A245049(eq[8, A025581(n)])`
-/

namespace A245052.P13445441689356242656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245052.P13445441689356242656

/-! ## A245052.P3211434084449536249

`A245049(eq[9, A193739(n)])`
-/

namespace A245052.P3211434084449536249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245052.P3211434084449536249

/-! ## A245052.P15762346271997477629

`A245049(eq[9, A195663(n)])`
-/

namespace A245052.P15762346271997477629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245052.P15762346271997477629

/-! ## A245052.P18367738608943089884

`A245049(eq[17, A099375(n)])`
-/

namespace A245052.P18367738608943089884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245052.P18367738608943089884

/-! ## A245052.P14752299443470013777

`A245049(eq[8, A193592(n+1)])`
-/

namespace A245052.P14752299443470013777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245052.P14752299443470013777

/-! ## A245052.P5077713277616558110

`A245049(eq[9, A004736(n+1)])`
-/

namespace A245052.P5077713277616558110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245052.P5077713277616558110

/-! ## A245052.P15638529893452966105

`A245049(eq[81, A055461(n+1)])`
-/

namespace A245052.P15638529893452966105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  81

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245052.P15638529893452966105

/-!
# A245053: Number of hybrid 10-ary trees with n internal nodes.

The programs for A245053, there is no canonical definition to state claims against.
-/

/-! ## A245053.P11584661622009690958

`A245049(eq[9, A025581(n)])`
-/

namespace A245053.P11584661622009690958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245053.P11584661622009690958

/-! ## A245053.P2169530390772249087

`A245049(eq[10, A193739(n)])`
-/

namespace A245053.P2169530390772249087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245053.P2169530390772249087

/-! ## A245053.P5837086778384342601

`A245049(eq[10, A195663(n)])`
-/

namespace A245053.P5837086778384342601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245053.P5837086778384342601

/-! ## A245053.P10774761093163544345

`A245049(eq[19, A099375(n)])`
-/

namespace A245053.P10774761093163544345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245053.P10774761093163544345

/-! ## A245053.P4227597623721154106

`A245049(eq[10, A004736(n+1)])`
-/

namespace A245053.P4227597623721154106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245053.P4227597623721154106

/-!
# A245054: Number of hybrid (n+1)-ary trees with n internal nodes.

The programs for A245054, there is no canonical definition to state claims against.
-/

/-! ## A245054.P13174414997790378982

`A245049(∑[4*n])`
-/

namespace A245054.P13174414997790378982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245054.P13174414997790378982

/-! ## A245054.P8309161155198819424

`record[A245049(A286145(n))]`
-/

namespace A245054.P8309161155198819424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (A286145 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245054.P8309161155198819424

/-! ## A245054.P13754960562865833559

`record[A245049(n*A008619(n))]`
-/

namespace A245054.P13754960562865833559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245054.P13754960562865833559

/-! ## A245054.P16751776165847111563

`record[A245049(gcd(n, A114327(n)))]`
-/

namespace A245054.P16751776165847111563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245054.P16751776165847111563

/-! ## A245054.P8706275900633576324

`record[A245049(n*A003602(n+1))]`
-/

namespace A245054.P8706275900633576324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 ((n : ℤ) * A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245054.P8706275900633576324

/-!
# A245056: Primes in the sequence A249134/12.

The programs for A245056, there is no canonical definition to state claims against.
-/

/-! ## A245056.P9233356567086634369

`record[A006530(A249134(n+1)/3)]`
-/

namespace A245056.P9233356567086634369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A249134 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245056.P9233356567086634369

/-! ## A245056.P11023471236877224792

`record[A014963(A249134(n+2)/12)]`
-/

namespace A245056.P11023471236877224792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A249134 (n + 2) : ℚ) / 12)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245056.P11023471236877224792

/-! ## A245056.P374609145416297158

`record[A088387(A249134(n+1))]`
-/

namespace A245056.P374609145416297158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A249134 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245056.P374609145416297158

/-! ## A245056.P16226756829106215127

`p?[A346468(A017533(A008578(n+1)))]`
-/

namespace A245056.P16226756829106215127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (A017533 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245056.P16226756829106215127

/-!
# A245059: a(n) = Sum_{k=1..n} C(n-1,k-1) * S2(n,k) * 2^(n-k) for n>0, a(0)=1, where S2(n,k) = A048993(n,k) are Stirling numbers of the 2nd kind.

The programs for A245059, there is no canonical definition to state claims against.
-/

/-! ## A245059.P4489830589238126067

`or(1, A054896(A111546(n)))`
-/

namespace A245059.P4489830589238126067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A054896 (A111546 n).toNat)

end

end A245059.P4489830589238126067

/-! ## A245059.P17099688939747992931

`or(1, A191610(A001147(n)))`
-/

namespace A245059.P17099688939747992931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A191610 (A001147 n).toNat)

end

end A245059.P17099688939747992931

/-!
# A245060: a(n) = Sum_{k=1..n} C(n-1,k-1) * S2(n,k) * 3^(n-k) for n>0, a(0)=1, where S2(n,k) = A048993(n,k) are Stirling numbers of the 2nd kind.

The programs for A245060, there is no canonical definition to state claims against.
-/

/-! ## A245060.P13634124108063646120

`A016777(A088358(n)-A135920(n))`
-/

namespace A245060.P13634124108063646120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A088358 n - A135920 n).toNat

end

end A245060.P13634124108063646120

/-! ## A245060.P9452416547091924986

`A001651(A303064(n)-A173451(n+3))`
-/

namespace A245060.P9452416547091924986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A303064 n - A173451 (n + 3)).toNat

end

end A245060.P9452416547091924986

/-!
# A245061: Prime numbers p such that p - primepi(p) is a square, where primepi is the prime counting function.

The programs for A245061, there is no canonical definition to state claims against.
-/

/-! ## A245061.P13512800812208634456

`A000040(A064370(n+2))`
-/

namespace A245061.P13512800812208634456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064370 (n + 2)).toNat

end

end A245061.P13512800812208634456

/-! ## A245061.P17090645343680190170

`A008578(A064370(n+2)+1)`
-/

namespace A245061.P17090645343680190170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A064370 (n + 2) + 1).toNat

end

end A245061.P17090645343680190170

/-! ## A245061.P333278936889543254

`p?[A018252(n*(n-2)+2)-1-floor(acot(n))]`
-/

namespace A245061.P333278936889543254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ((n : ℤ) * ((n : ℤ) - 2) + 2).toNat - 1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245061.P333278936889543254

/-! ## A245061.P23987559004274065

`record[A020639(A018252((n+1)²)+1)]`
-/

namespace A245061.P23987559004274065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A018252 ((n + 1) ^ 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245061.P23987559004274065

/-!
# A245063: Primes p such that (p reversed)-1 is not a prime.

The programs for A245063, there is no canonical definition to state claims against.
-/

/-! ## A245063.P1435088000585020782

`A118003(A179740(n+1))`
-/

namespace A245063.P1435088000585020782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118003 (A179740 (n + 1)).toNat

end

end A245063.P1435088000585020782

/-! ## A245063.P3766061022284924779

`A179740(n+1)-A000007(A105636(n))`
-/

namespace A245063.P3766061022284924779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179740 (n + 1) - A000007 (A105636 n).toNat

end

end A245063.P3766061022284924779

/-! ## A245063.P9634730019574333651

`A179740(n+1)-A010054(A112838(n))`
-/

namespace A245063.P9634730019574333651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179740 (n + 1) - A010054 (A112838 n).toNat

end

end A245063.P9634730019574333651

/-! ## A245063.P14823823822130087584

`A179740(n+1)-A010054(A112841(n))`
-/

namespace A245063.P14823823822130087584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179740 (n + 1) - A010054 (A112841 n).toNat

end

end A245063.P14823823822130087584

/-! ## A245063.P9079468747456894964

`A179740(n+1)+A010815(A179688(n+1))`
-/

namespace A245063.P9079468747456894964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179740 (n + 1) + A010815 (A179688 (n + 1)).toNat

end

end A245063.P9079468747456894964

/-!
# A245064: Primes p such that p minus its digit sum is a perfect cube.

The programs for A245064, there is no canonical definition to state claims against.
-/

/-! ## A245064.P11319686565883520293

`p?[n*A010057(A066568(n))]`
-/

namespace A245064.P11319686565883520293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010057 (A066568 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245064.P11319686565883520293

/-! ## A245064.P16887741711453199352

`eq[A003415(n), A010057(A066568(n))]`
-/

namespace A245064.P16887741711453199352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A066568 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245064.P16887741711453199352

/-! ## A245064.P10967521038174932057

`eq[A010057(A066568(n)), A032741(n)]`
-/

namespace A245064.P10967521038174932057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A066568 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245064.P10967521038174932057

/-! ## A245064.P7663505295804329515

`p?[Δ[A137507(n)]+n]`
-/

namespace A245064.P7663505295804329515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137507 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245064.P7663505295804329515

/-!
# A245065: Second smallest multiple of n whose digits sum to n.

The programs for A245065, there is no canonical definition to state claims against.
-/

/-! ## A245065.P16368999764364480855

`A245062(∑[n+1]+2)`
-/

namespace A245065.P16368999764364480855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245062 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A245065.P16368999764364480855

/-! ## A245065.P3043429299276478879

`A020985(n)²*A245062(A133263(n+1))`
-/

namespace A245065.P3043429299276478879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A245062 (A133263 (n + 1)).toNat

end

end A245065.P3043429299276478879

/-! ## A245065.P8816387436314978481

`char[A131141(n)]*A245062(A133263(n+1))`
-/

namespace A245065.P8816387436314978481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131141 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A245062 (A133263 (n + 1)).toNat

end

end A245065.P8816387436314978481

/-! ## A245065.P14477365565850908992

`lcm(A020639(n+1), A245062(A133263(n+1)))`
-/

namespace A245065.P14477365565850908992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (n + 1)) (A245062 (A133263 (n + 1)).toNat)

end

end A245065.P14477365565850908992

/-! ## A245065.P3734749695635389401

`A245062(A133263(n+1))%A000045(n+7)`
-/

namespace A245065.P3734749695635389401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245062 (A133263 (n + 1)).toNat) (A000045 (n + 7))

end

end A245065.P3734749695635389401

/-! ## A245065.P5238588344024597052

`A014963(A008458(n))*A245062(A133263(n+1))`
-/

namespace A245065.P5238588344024597052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A245062 (A133263 (n + 1)).toNat

end

end A245065.P5238588344024597052

/-!
# A245066: Central terms of triangles A001497 and A001498.

The programs for A245066, there is no canonical definition to state claims against.
-/

/-! ## A245066.P1215010001055813336

`∏[Δ[n²]]*A001764(n)`
-/

namespace A245066.P1215010001055813336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001764 n

end

end A245066.P1215010001055813336

/-! ## A245066.P13344895429039515131

`abs(∏[a(n-1)-2])*A005809(n)` with `a(0)=1`
-/

namespace A245066.P13344895429039515131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j| * A005809 n

end

end A245066.P13344895429039515131

/-! ## A245066.P12380604655947538721

`A001147(n)*A005809(n)`
-/

namespace A245066.P12380604655947538721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n * A005809 n

end

end A245066.P12380604655947538721

/-! ## A245066.P6596272411728271908

`sqrt(A188662(n))*A055634(2*n)`
-/

namespace A245066.P6596272411728271908
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A188662 n : ℝ) * (A055634 (2 * n) : ℝ)

end

end A245066.P6596272411728271908

/-! ## A245066.P17020334119215546283

`A047749(2*n)*A130757(∑[n])`
-/

namespace A245066.P17020334119215546283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * n) * A130757 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245066.P17020334119215546283

/-!
# A245067: Number of three-dimensional random walks with 2n steps in the wedge region x >= y >= z, beginning and ending at the origin without crossing the wedge boundary.

The programs for A245067, there is no canonical definition to state claims against.
-/

/-! ## A245067.P15740543072685139808

`A000984(n)*A005802(n)`
-/

namespace A245067.P15740543072685139808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A005802 n

end

end A245067.P15740543072685139808

/-! ## A245067.P14398087475571757619

`A000108(n)*A128088(n)`
-/

namespace A245067.P14398087475571757619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A128088 n

end

end A245067.P14398087475571757619

/-! ## A245067.P15317130240748811214

`A125177(∑[n])*A128088(n)`
-/

namespace A245067.P15317130240748811214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125177 (∑ j ∈ Finset.range (n + 1), f1 j) * A128088 n

end

end A245067.P15317130240748811214

/-! ## A245067.P1015158348893879475

`A001405(2*n)*A005802(n)`
-/

namespace A245067.P1015158348893879475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A005802 n

end

end A245067.P1015158348893879475

/-! ## A245067.P6512535670078978046

`A005802(n)*A126869(2*n)`
-/

namespace A245067.P6512535670078978046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005802 n * A126869 (2 * n)

end

end A245067.P6512535670078978046

/-! ## A245067.P4269987985670515868

`A126324(2*n)*A128088(n)`
-/

namespace A245067.P4269987985670515868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n) * A128088 n

end

end A245067.P4269987985670515868

/-! ## A245067.P5453887416517366447

`A007318(∑[4*n])*A005802(n)`
-/

namespace A245067.P5453887416517366447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A005802 n

end

end A245067.P5453887416517366447

/-! ## A245067.P16049581342179009433

`(n+1)*A005802(n)*A000108(n)`
-/

namespace A245067.P16049581342179009433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005802 n * A000108 n

end

end A245067.P16049581342179009433

/-! ## A245067.P10090943407418027545

`A005802(n)*A337419(A000096(n))`
-/

namespace A245067.P10090943407418027545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005802 n * A337419 (A000096 n).toNat

end

end A245067.P10090943407418027545

/-!
# A245068: Number of n-node rooted trees of height 10.

The programs for A245068, there is no canonical definition to state claims against.
-/

/-! ## A245068.P12764946095281568853

`A034781(A000124(n+9)+10)`
-/

namespace A245068.P12764946095281568853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034781 (A000124 (n + 9) + 10).toNat

end

end A245068.P12764946095281568853

/-! ## A245068.P13065883134662972440

`A034781(A000096(n+8)+12)`
-/

namespace A245068.P13065883134662972440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034781 (A000096 (n + 8) + 12).toNat

end

end A245068.P13065883134662972440

/-! ## A245068.P1448451261540061319

`A034781(A056000(n+7)-n-n)`
-/

namespace A245068.P1448451261540061319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034781 (A056000 (n + 7) - (n : ℤ) - (n : ℤ)).toNat

end

end A245068.P1448451261540061319

/-!
# A245069: Number of Markov blanket structures with n labeled nodes.

The programs for A245069, there is no canonical definition to state claims against.
-/

/-! ## A245069.P16986798491082678003

`A160121(A085770(n)+A041651(n))`
-/

namespace A245069.P16986798491082678003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160121 (A085770 n + A041651 n).toNat

end

end A245069.P16986798491082678003

/-!
# A245070: Smallest positive non-divisor of the n-th Lucas number (A000032).

The programs for A245070, the canonical program `A245070.P8019701263729234251` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245070 has offset 0).

The definition of A245070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245070.P8019701263729234251

`gcd(4, n)%gcd(3, n)+2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A245070

/-- `gcd(4, n)%gcd(3, n)+2` -/
def P8019701263729234251.Spec : Prop :=
  ∀ n, (P8019701263729234251.a n : ℤ) = A245070 n

theorem P8019701263729234251.correct : P8019701263729234251.Spec := by
  intro n
  simp only [A245070]

end A245070

/-!
# A245071: a(n) = 12n - prime(n).

The programs for A245071, the canonical program `A245071.P969471397612048913` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245071 has offset 1).

The definition of A245071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245071.P969471397612048913

`∑[12-A054541(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A245071

/-- `∑[12-A054541(n+1)]` -/
def P969471397612048913.Spec : Prop :=
  ∀ n, P969471397612048913.a n = A245071 (n + 1)

theorem P969471397612048913.correct : P969471397612048913.Spec := by
  intro n
  simp only [A245071, Nat.add_sub_cancel]

end A245071

/-! ## A245071.P6469281855637710714

`12*(n+1)-A000040(n+1)`
-/

namespace A245071.P6469281855637710714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * (n + 1) : ℤ) - A000040 (n + 1)

end

end A245071.P6469281855637710714

namespace A245071

/-- `12*(n+1)-A000040(n+1)` -/
def P6469281855637710714.Spec : Prop :=
  ∀ n, P6469281855637710714.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P12666659205891298603

`Δ[(3*n+1)*(2*n+1)]-A006093(n+1)`
-/

namespace A245071.P12666659205891298603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) * (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A006093 (n + 1)

end

end A245071.P12666659205891298603

namespace A245071

/-- `Δ[(3*n+1)*(2*n+1)]-A006093(n+1)` -/
def P12666659205891298603.Spec : Prop :=
  ∀ n, P12666659205891298603.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P11098418082205604737

`A017641(n)-A040976(n+1)`
-/

namespace A245071.P11098418082205604737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n - A040976 (n + 1)

end

end A245071.P11098418082205604737

namespace A245071

/-- `A017641(n)-A040976(n+1)` -/
def P11098418082205604737.Spec : Prop :=
  ∀ n, P11098418082205604737.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P4235620884530435399

`A017509(n)-A065890(n+1)`
-/

namespace A245071.P4235620884530435399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n - A065890 (n + 1)

end

end A245071.P4235620884530435399

namespace A245071

/-- `A017509(n)-A065890(n+1)` -/
def P4235620884530435399.Spec : Prop :=
  ∀ n, P4235620884530435399.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P6295729961653245466

`A017629(n)-A086801(n+1)`
-/

namespace A245071.P6295729961653245466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017629 n - A086801 (n + 1)

end

end A245071.P6295729961653245466

namespace A245071

/-- `A017629(n)-A086801(n+1)` -/
def P6295729961653245466.Spec : Prop :=
  ∀ n, P6295729961653245466.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P362457264751445980

`A017653(n)+1-A000040(n+1)`
-/

namespace A245071.P362457264751445980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n + (1 - A000040 (n + 1))

end

end A245071.P362457264751445980

namespace A245071

/-- `A017653(n)+1-A000040(n+1)` -/
def P362457264751445980.Spec : Prop :=
  ∀ n, P362457264751445980.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P2877312567522246398

`A017509(n)-A040976(n+1)+n`
-/

namespace A245071.P2877312567522246398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n - A040976 (n + 1) + (n : ℤ)

end

end A245071.P2877312567522246398

namespace A245071

/-- `A017509(n)-A040976(n+1)+n` -/
def P2877312567522246398.Spec : Prop :=
  ∀ n, P2877312567522246398.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P6385343506357939088

`12*(n+1)-A008578(n+2)`
-/

namespace A245071.P6385343506357939088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * (n + 1) : ℤ) - A008578 (n + 2)

end

end A245071.P6385343506357939088

namespace A245071

/-- `12*(n+1)-A008578(n+2)` -/
def P6385343506357939088.Spec : Prop :=
  ∀ n, P6385343506357939088.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P7998660448480353229

`12*(n+1)-A182986(n+2)`
-/

namespace A245071.P7998660448480353229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * (n + 1) : ℤ) - A182986 (n + 2)

end

end A245071.P7998660448480353229

namespace A245071

/-- `12*(n+1)-A182986(n+2)` -/
def P7998660448480353229.Spec : Prop :=
  ∀ n, P7998660448480353229.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P96745732246738687

`Δ[2*A028896(n)-A007504(n)]`
-/

namespace A245071.P96745732246738687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028896 n - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245071.P96745732246738687

namespace A245071

/-- `Δ[2*A028896(n)-A007504(n)]` -/
def P96745732246738687.Spec : Prop :=
  ∀ n, P96745732246738687.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P2815899266016147503

`A017533(n+1)-A008864(n+1)`
-/

namespace A245071.P2815899266016147503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (n + 1) - A008864 (n + 1)

end

end A245071.P2815899266016147503

namespace A245071

/-- `A017533(n+1)-A008864(n+1)` -/
def P2815899266016147503.Spec : Prop :=
  ∀ n, P2815899266016147503.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P2487942431679096761

`A017533(n+1)-A028815(n+1)`
-/

namespace A245071.P2487942431679096761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (n + 1) - A028815 (n + 1)

end

end A245071.P2487942431679096761

namespace A245071

/-- `A017533(n+1)-A028815(n+1)` -/
def P2487942431679096761.Spec : Prop :=
  ∀ n, P2487942431679096761.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P7779920933897565232

`A017533(n+1)-A299763(n+2)`
-/

namespace A245071.P7779920933897565232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (n + 1) - A299763 (n + 2)

end

end A245071.P7779920933897565232

namespace A245071

/-- `A017533(n+1)-A299763(n+2)` -/
def P7779920933897565232.Spec : Prop :=
  ∀ n, P7779920933897565232.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P2051172646844248422

`A017533(n+1)-(A008578(n+2)+1)`
-/

namespace A245071.P2051172646844248422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (n + 1) - (A008578 (n + 2) + 1)

end

end A245071.P2051172646844248422

namespace A245071

/-- `A017533(n+1)-(A008578(n+2)+1)` -/
def P2051172646844248422.Spec : Prop :=
  ∀ n, P2051172646844248422.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P6851910855621448696

`A017545(n+1)-(A008578(n+2)+2)`
-/

namespace A245071.P6851910855621448696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 (n + 1) - (A008578 (n + 2) + 2)

end

end A245071.P6851910855621448696

namespace A245071

/-- `A017545(n+1)-(A008578(n+2)+2)` -/
def P6851910855621448696.Spec : Prop :=
  ∀ n, P6851910855621448696.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P966131309646714616

`A017401(n+1)-A008578(n+2)+n`
-/

namespace A245071.P966131309646714616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 (n + 1) - A008578 (n + 2) + (n : ℤ)

end

end A245071.P966131309646714616

namespace A245071

/-- `A017401(n+1)-A008578(n+2)+n` -/
def P966131309646714616.Spec : Prop :=
  ∀ n, P966131309646714616.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P4557289768018662793

`A016945(n+1)+A016945(n)-A000040(n+1)`
-/

namespace A245071.P4557289768018662793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (n + 1) + (A016945 n - A000040 (n + 1))

end

end A245071.P4557289768018662793

namespace A245071

/-- `A016945(n+1)+A016945(n)-A000040(n+1)` -/
def P4557289768018662793.Spec : Prop :=
  ∀ n, P4557289768018662793.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P10895273840333538686

`A049598(n+1)-(A049598(n)+A000040(n+1))`
-/

namespace A245071.P10895273840333538686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 (n + 1) - (A049598 n + A000040 (n + 1))

end

end A245071.P10895273840333538686

namespace A245071

/-- `A049598(n+1)-(A049598(n)+A000040(n+1))` -/
def P10895273840333538686.Spec : Prop :=
  ∀ n, P10895273840333538686.a n = A245071 (n + 1)

end A245071

/-! ## A245071.P8719051542601849215

`A060834(n+1)-(A060834(n)+A000040(n+1))`
-/

namespace A245071.P8719051542601849215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060834 (n + 1) - (A060834 n + A000040 (n + 1))

end

end A245071.P8719051542601849215

namespace A245071

/-- `A060834(n+1)-(A060834(n)+A000040(n+1))` -/
def P8719051542601849215.Spec : Prop :=
  ∀ n, P8719051542601849215.a n = A245071 (n + 1)

end A245071

/-!
# A245072: Primes whose reversal + 1 is not a prime.

The programs for A245072, there is no canonical definition to state claims against.
-/

/-! ## A245072.P867050317007440127

`p?[gcd(n, A010051(A004086(n)+1)+n)]`
-/

namespace A245072.P867050317007440127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A010051 (A004086 n + 1).toNat + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A245072.P867050317007440127

/-! ## A245072.P13336091219398136369

`p?[(A010051(A004086(n)+1)+n)%A000027(n+1)]`
-/

namespace A245072.P13336091219398136369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010051 (A004086 n + 1).toNat + (n : ℤ)) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245072.P13336091219398136369

/-! ## A245072.P15445264299237502389

`p?[(n+1)%(A306927(A004086(n+1)+1)+n)]`
-/

namespace A245072.P15445264299237502389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A306927 (A004086 (n + 1) + 1).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245072.P15445264299237502389

/-! ## A245072.P1795247115648169073

`eq[A007920(n), A055671(A004086(n)+1)]`
-/

namespace A245072.P1795247115648169073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A004086 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245072.P1795247115648169073

/-! ## A245072.P12812714336713274882

`p?[gcd(n+1, A010051(A071786(n+1)+1)+n+1)]`
-/

namespace A245072.P12812714336713274882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A010051 (A071786 (n + 1) + 1).toNat + (n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A245072.P12812714336713274882

/-! ## A245072.P8722981833927227227

`p?[A061397(n+1)-A010051(A071786(n+1)+1)]`
-/

namespace A245072.P8722981833927227227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) - A010051 (A071786 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245072.P8722981833927227227

/-! ## A245072.P12892500112835362702

`p?[A319627(A001749(n+1)*A275120(n+1))]`
-/

namespace A245072.P12892500112835362702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (A001749 (n + 1) * A275120 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245072.P12892500112835362702

/-! ## A245072.P6095554787177556539

`A000040(lt[A166093(n), A166095(n)]+2)`
-/

namespace A245072.P6095554787177556539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A245072.P6095554787177556539

/-!
# A245075: Difference between least prime factor of n and the digital root of n.

The programs for A245075, there is no canonical definition to state claims against.
-/

/-! ## A245075.P6818109174465995883

`A020639(n+2)-dr(n+2)`
-/

namespace A245075.P6818109174465995883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - (SequenceMachineLib.digitalRoot (n + 2 : ℤ) : ℤ)

end

end A245075.P6818109174465995883

/-! ## A245075.P13834081913758633378

`A057237(n+2)-(n+1)%9`
-/

namespace A245075.P13834081913758633378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 2) - (((n + 1) % 9 : ℕ) : ℤ)

end

end A245075.P13834081913758633378

/-! ## A245075.P8197367042192087585

`A020639(n+2)-(A010878(n+1)+1)`
-/

namespace A245075.P8197367042192087585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - (A010878 (n + 1) + 1)

end

end A245075.P8197367042192087585

/-! ## A245075.P9650544762426037993

`A020639(n+2)-A342829(A342829(n+1)+1)`
-/

namespace A245075.P9650544762426037993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - A342829 (A342829 (n + 1) + 1).toNat

end

end A245075.P9650544762426037993

/-! ## A245075.P7255740247778620730

`A020639(n+2)-A010888(n+2)`
-/

namespace A245075.P7255740247778620730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - A010888 (n + 2)

end

end A245075.P7255740247778620730

/-! ## A245075.P4546549776035751812

`A014963(A028233(n+2))-A010888(n+2)`
-/

namespace A245075.P4546549776035751812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A028233 (n + 2)).toNat - A010888 (n + 2)

end

end A245075.P4546549776035751812

/-! ## A245075.P7031226434091120140

`p?[A008578(A055396(n+1)+1)]-A010888(n+2)`
-/

namespace A245075.P7031226434091120140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A055396 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A010888 (n + 2)

end

end A245075.P7031226434091120140

/-! ## A245075.P4978290482299723855

`A092028(n+3)-dr(n+2)`
-/

namespace A245075.P4978290482299723855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092028 (n + 3) - (SequenceMachineLib.digitalRoot (n + 2 : ℤ) : ℤ)

end

end A245075.P4978290482299723855

/-!
# A245077: Largest k such that the smallest prime satisfying Goldbach's conjecture is less than or equal to (2n)^(1/k).

The programs for A245077, there is no canonical definition to state claims against.
-/

/-! ## A245077.P6241523585951422008

`val(A067391(2*n+5), A020481(n+2))`
-/

namespace A245077.P6241523585951422008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A067391 (2 * n + 5)).toNat (A020481 (n + 2)).toNat

end

end A245077.P6241523585951422008

/-! ## A245077.P4147952563968742554

`val(A003418(A120327(2*n+3)), A020481(n+2))`
-/

namespace A245077.P4147952563968742554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003418 (A120327 (2 * n + 3)).toNat).toNat (A020481 (n + 2)).toNat

end

end A245077.P4147952563968742554

/-! ## A245077.P12648556510390649261

`A000120(A059389(A000120(A001690(A000045(n)+1))+1))`
-/

namespace A245077.P12648556510390649261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A059389 (A000120 (A001690 (A000045 n + 1).toNat).toNat + 1).toNat).toNat

end

end A245077.P12648556510390649261

/-! ## A245077.P10211559710368388917

`gcd(A001221(A028421(2*n+1)), A157006(n+1))`
-/

namespace A245077.P10211559710368388917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A028421 (2 * n + 1)).toNat) (A157006 (n + 1))

end

end A245077.P10211559710368388917

/-! ## A245077.P14227446440283991457

`A001221(or(A153877(n+1), A166977(n)))`
-/

namespace A245077.P14227446440283991457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A153877 (n + 1)) (A166977 n)).toNat

end

end A245077.P14227446440283991457

/-!
# A245079: Number of bipolar Boolean functions, that is, Boolean functions that are monotone or antimonotone in each argument.

The programs for A245079, there is no canonical definition to state claims against.
-/

/-! ## A245079.P7731846755309053043

`2*A101373(A024024(n))`
-/

namespace A245079.P7731846755309053043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101373 (A024024 n).toNat

end

end A245079.P7731846755309053043

/-!
# A245080: Numbers such that omega(a(n)) is a proper divisor of bigomega(a(n)).

The programs for A245080, there is no canonical definition to state claims against.
-/

/-! ## A245080.P9546242995166696295

`∪[A067341(n+1), A072777(n+1)]`
-/

namespace A245080.P9546242995166696295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245080.P9546242995166696295

/-! ## A245080.P16909173789936636645

`∪[A067341(n+1), A076292(n+2)]`
-/

namespace A245080.P16909173789936636645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245080.P16909173789936636645

/-! ## A245080.P16057581529411507378

`∩[A013929(n+1), A067340(n+1)]`
-/

namespace A245080.P16057581529411507378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245080.P16057581529411507378

/-! ## A245080.P17421471520000705245

`filter[A067340(n+1), A087049(#)]`
-/

namespace A245080.P17421471520000705245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A245080.P17421471520000705245

/-! ## A245080.P12639663533940098974

`∩[A067340(n+1), A162966(n+1)]`
-/

namespace A245080.P12639663533940098974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245080.P12639663533940098974

/-! ## A245080.P13423157921399162316

`∩[A067340(n+1), A361204(n+1)]`
-/

namespace A245080.P13423157921399162316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245080.P13423157921399162316

/-! ## A245080.P11390729662913070242

`filter[A067340(n+1), A107078(#)]`
-/

namespace A245080.P11390729662913070242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A245080.P11390729662913070242

/-! ## A245080.P7734293926467582270

`∩[A067340(n+1), A225353(n+1)]`
-/

namespace A245080.P7734293926467582270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245080.P7734293926467582270

/-! ## A245080.P11788435183095980177

`∩[A067340(n+1), A299117(n+1)]`
-/

namespace A245080.P11788435183095980177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245080.P11788435183095980177

/-!
# A245086: Central values of the n-th discrete Chebyshev polynomials of order 2n.

The programs for A245086, the canonical program `A245086.P7399087689482312485` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245086 has offset 0).

The definition of A245086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245086.P7399087689482312485

`A056594(n)*A063007(A080476(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A245086

/-- `A056594(n)*A063007(A080476(n+1))` -/
def P7399087689482312485.Spec : Prop :=
  ∀ n, P7399087689482312485.a n = A245086 n

theorem P7399087689482312485.correct : P7399087689482312485.Spec := by
  intro n
  simp only [A245086]

end A245086

/-! ## A245086.P3263123912175905330

`A336179(∑[n+2]-1)`
-/

namespace A245086.P3263123912175905330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336179 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A245086.P3263123912175905330

namespace A245086

/-- `A336179(∑[n+2]-1)` -/
def P3263123912175905330.Spec : Prop :=
  ∀ n, P3263123912175905330.a n = A245086 n

end A245086

/-! ## A245086.P3145881661569351482

`A336179(A034856(n+1))+(2*n)%2`
-/

namespace A245086.P3145881661569351482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336179 (A034856 (n + 1)).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A245086.P3145881661569351482

namespace A245086

/-- `A336179(A034856(n+1))+(2*n)%2` -/
def P3145881661569351482.Spec : Prop :=
  ∀ n, P3145881661569351482.a n = A245086 n

end A245086

/-! ## A245086.P13998827804823701708

`A001405(n)*A049310(A046092(n))`
-/

namespace A245086.P13998827804823701708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A049310 (A046092 n).toNat

end

end A245086.P13998827804823701708

namespace A245086

/-- `A001405(n)*A049310(A046092(n))` -/
def P13998827804823701708.Spec : Prop :=
  ∀ n, P13998827804823701708.a n = A245086 n

end A245086

/-! ## A245086.P2063792726998522106

`A049310(A046092(n))*A126930(n)`
-/

namespace A245086.P2063792726998522106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A046092 n).toNat * A126930 n

end

end A245086.P2063792726998522106

namespace A245086

/-- `A049310(A046092(n))*A126930(n)` -/
def P2063792726998522106.Spec : Prop :=
  ∀ n, P2063792726998522106.a n = A245086 n

end A245086

/-!
# A245087: Largest number such that 2^a(n) is a divisor of (n!)!.

The programs for A245087, the canonical program `A245087.P13752011406387249506` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245087 has offset 0).

The definition of A245087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245087.P13752011406387249506

`A011371(A000142(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245087

/-- `A011371(A000142(n))` -/
def P13752011406387249506.Spec : Prop :=
  ∀ n, P13752011406387249506.a n = A245087 n

theorem P13752011406387249506.correct : P13752011406387249506.Spec := by
  intro n
  simp only [A245087]

end A245087

/-! ## A245087.P4684856677677558829

`A000142(n)-A079584(n)`
-/

namespace A245087.P4684856677677558829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A079584 n

end

end A245087.P4684856677677558829

namespace A245087

/-- `A000142(n)-A079584(n)` -/
def P4684856677677558829.Spec : Prop :=
  ∀ n, P4684856677677558829.a n = A245087 n

end A245087

/-! ## A245087.P10784005682388084821

`A081123(2*n)-A079584(n)`
-/

namespace A245087.P10784005682388084821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (2 * n) - A079584 n

end

end A245087.P10784005682388084821

namespace A245087

/-- `A081123(2*n)-A079584(n)` -/
def P10784005682388084821.Spec : Prop :=
  ∀ n, P10784005682388084821.a n = A245087 n

end A245087

/-! ## A245087.P16803822387021532991

`n!+A078565(n)-A072831(n)`
-/

namespace A245087.P16803822387021532991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + (A078565 n - A072831 n)

end

end A245087.P16803822387021532991

namespace A245087

/-- `n!+A078565(n)-A072831(n)` -/
def P16803822387021532991.Spec : Prop :=
  ∀ n, P16803822387021532991.a n = A245087 n

end A245087

/-! ## A245087.P13583920833850663444

`A000142(n)+A078565(n)-A072831(n)`
-/

namespace A245087.P13583920833850663444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (A078565 n - A072831 n)

end

end A245087.P13583920833850663444

namespace A245087

/-- `A000142(n)+A078565(n)-A072831(n)` -/
def P13583920833850663444.Spec : Prop :=
  ∀ n, P13583920833850663444.a n = A245087 n

end A245087

/-! ## A245087.P780681842387537997

`A033312(n)+A078565(n)-A067850(n)`
-/

namespace A245087.P780681842387537997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n + (A078565 n - A067850 n)

end

end A245087.P780681842387537997

namespace A245087

/-- `A033312(n)+A078565(n)-A067850(n)` -/
def P780681842387537997.Spec : Prop :=
  ∀ n, P780681842387537997.a n = A245087 n

end A245087

/-!
# A245090: Number of 2n-node rooted identity trees of height n.

The programs for A245090, there is no canonical definition to state claims against.
-/

/-! ## A245090.P554996716357113046

`A227819(A000007(n)+2*n²+1)`
-/

namespace A245090.P554996716357113046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A000007 n + (2 * n ^ 2 : ℤ) + 1).toNat

end

end A245090.P554996716357113046

/-! ## A245090.P5760054035348649715

`A227819(A054977(n)+A001105(n))`
-/

namespace A245090.P5760054035348649715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A054977 n + A001105 n).toNat

end

end A245090.P5760054035348649715

/-! ## A245090.P18175507253336755123

`A227819(A058331(n)+A000007(n))`
-/

namespace A245090.P18175507253336755123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A058331 n + A000007 n).toNat

end

end A245090.P18175507253336755123

/-! ## A245090.P1631110291280802515

`A227819(A130883(A028310(n))+n)`
-/

namespace A245090.P1631110291280802515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A130883 (A028310 n).toNat + (n : ℤ)).toNat

end

end A245090.P1631110291280802515

/-! ## A245090.P12020156388851186492

`A227819(xor(A001105(n), A054977(n)))`
-/

namespace A245090.P12020156388851186492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (Int.xor (A001105 n) (A054977 n)).toNat

end

end A245090.P12020156388851186492

/-!
# A245091: Number of (2n+1)-node rooted identity trees of height n.

The programs for A245091, there is no canonical definition to state claims against.
-/

/-! ## A245091.P5541714856116611464

`A227819(∑[4*n]+1)`
-/

namespace A245091.P5541714856116611464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A245091.P5541714856116611464

/-! ## A245091.P267458503914457947

`gcd(A000038(n), A227819(A001844(n)))`
-/

namespace A245091.P267458503914457947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A227819 (A001844 n).toNat)

end

end A245091.P267458503914457947

/-! ## A245091.P10745209898532099044

`or(A000007(n), A227819(A001844(n)))`
-/

namespace A245091.P10745209898532099044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A227819 (A001844 n).toNat)

end

end A245091.P10745209898532099044

/-! ## A245091.P13020949168482423132

`A007318(∑[n])*A227819(A001844(n))`
-/

namespace A245091.P13020949168482423132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A227819 (A001844 n).toNat

end

end A245091.P13020949168482423132

/-! ## A245091.P6778290553247695697

`A227819(A001844(n))+A000007(n+1)`
-/

namespace A245091.P6778290553247695697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A001844 n).toNat + A000007 (n + 1)

end

end A245091.P6778290553247695697

/-! ## A245091.P16333385310746840499

`A227819(A001844(n))+A000038(n+1)`
-/

namespace A245091.P16333385310746840499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A001844 n).toNat + A000038 (n + 1)

end

end A245091.P16333385310746840499

/-! ## A245091.P13231594466370958720

`A227819(A001844(n))+A000035(2*n)`
-/

namespace A245091.P13231594466370958720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227819 (A001844 n).toNat + A000035 (2 * n)

end

end A245091.P13231594466370958720

/-! ## A245091.P7571030201216584281

`A227819(A001844(n))/A014963(∑[n+1])`
-/

namespace A245091.P7571030201216584281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227819 (A001844 n).toNat : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A245091.P7571030201216584281

/-! ## A245091.P9907181214146600373

`A007318(∑[n+1])+A227819(A001844(n))-1`
-/

namespace A245091.P9907181214146600373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) + (A227819 (A001844 n).toNat - 1)

end

end A245091.P9907181214146600373

/-! ## A245091.P17764953635816335082

`A014963(A074845(n+1))*A227819(A001844(n))`
-/

namespace A245091.P17764953635816335082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A074845 (n + 1)).toNat * A227819 (A001844 n).toNat

end

end A245091.P17764953635816335082

/-!
# A245092: The even numbers (A005843) and the values of sigma function (A000203) interleaved.

The programs for A245092, the canonical program `A245092.P5629512681857718136` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245092 has offset 0).

The definition of A245092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245092.P5629512681857718136

`A033880(A152271(n))+n+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A245092

/-- `A033880(A152271(n))+n+1` -/
def P5629512681857718136.Spec : Prop :=
  ∀ n, P5629512681857718136.a n = A245092 n

theorem P5629512681857718136.correct : P5629512681857718136.Spec := by
  intro n
  simp only [A245092]

end A245092

/-! ## A245092.P17540196766136157983

`A352047(n+1)-A091570(n+1)`
-/

namespace A245092.P17540196766136157983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352047 (n + 1) - A091570 (n + 1)

end

end A245092.P17540196766136157983

namespace A245092

/-- `A352047(n+1)-A091570(n+1)` -/
def P17540196766136157983.Spec : Prop :=
  ∀ n, P17540196766136157983.a n = A245092 n

end A245092

/-! ## A245092.P12775015689133391844

`n+1-A033879(A004526(n)+1-A142150(n))`
-/

namespace A245092.P12775015689133391844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A033879 (A004526 n + (1 - A142150 n)).toNat

end

end A245092.P12775015689133391844

namespace A245092

/-- `n+1-A033879(A004526(n)+1-A142150(n))` -/
def P12775015689133391844.Spec : Prop :=
  ∀ n, P12775015689133391844.a n = A245092 n

end A245092

/-! ## A245092.P107397565014383950

`A029578(n+1)+A001065(n-A029578(n+1)+1)`
-/

namespace A245092.P107397565014383950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (n + 1) + A001065 ((n : ℤ) - A029578 (n + 1) + 1).toNat

end

end A245092.P107397565014383950

namespace A245092

/-- `A029578(n+1)+A001065(n-A029578(n+1)+1)` -/
def P107397565014383950.Spec : Prop :=
  ∀ n, P107397565014383950.a n = A245092 n

end A245092

/-! ## A245092.P5955841304182224870

`A029578(∑{d}[n+1, #]-A091570(n+1))`
-/

namespace A245092.P5955841304182224870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A091570 (n + 1)).toNat

end

end A245092.P5955841304182224870

namespace A245092

/-- `A029578(∑{d}[n+1, #]-A091570(n+1))` -/
def P5955841304182224870.Spec : Prop :=
  ∀ n, P5955841304182224870.a n = A245092 n

end A245092

/-! ## A245092.P12173607808990829468

`A237420(n)+A026741(∑{d}[n+1, A237420(#)])`
-/

namespace A245092.P12173607808990829468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n + A026741 (∑ d ∈ Nat.divisors (f1 n), A237420 d).toNat

end

end A245092.P12173607808990829468

namespace A245092

/-- `A237420(n)+A026741(∑{d}[n+1, A237420(#)])` -/
def P12173607808990829468.Spec : Prop :=
  ∀ n, P12173607808990829468.a n = A245092 n

end A245092

/-! ## A245092.P7766284483139779888

`A237420(n)+A110654(∑{d}[n+1, A237420(#)])`
-/

namespace A245092.P7766284483139779888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n + A110654 (∑ d ∈ Nat.divisors (f1 n), A237420 d).toNat

end

end A245092.P7766284483139779888

namespace A245092

/-- `A237420(n)+A110654(∑{d}[n+1, A237420(#)])` -/
def P7766284483139779888.Spec : Prop :=
  ∀ n, P7766284483139779888.a n = A245092 n

end A245092

/-!
# A245093: Triangle read by rows in which row n lists the first n terms of A000203.

The programs for A245093, the canonical program `A245093.P1980232344723571166` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245093 has offset 1).

The definition of A245093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245093.P9788776661157881913

`∑{d}[n+1-C(∑[char[∑[n]]], 2), #]`
-/

namespace A245093.P9788776661157881913
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A245093.P9788776661157881913

namespace A245093

/-- `∑{d}[n+1-C(∑[char[∑[n]]], 2), #]` -/
def P9788776661157881913.Spec : Prop :=
  ∀ n, (P9788776661157881913.a n : ℤ) = A245093 (n + 1)

end A245093

/-! ## A245093.P1980232344723571166

`∑{d}[A002260(n+1), #]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A245093

/-- `∑{d}[A002260(n+1), #]` -/
def P1980232344723571166.Spec : Prop :=
  ∀ n, (P1980232344723571166.a n : ℤ) = A245093 (n + 1)

theorem P1980232344723571166.correct : P1980232344723571166.Spec := by
  intro n
  simp only [A245093, Nat.add_sub_cancel]

end A245093

/-! ## A245093.P15663985798574533480

`∑{d}[A002262(n)+1, #]`
-/

namespace A245093.P15663985798574533480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A245093.P15663985798574533480

namespace A245093

/-- `∑{d}[A002262(n)+1, #]` -/
def P15663985798574533480.Spec : Prop :=
  ∀ n, (P15663985798574533480.a n : ℤ) = A245093 (n + 1)

end A245093

/-! ## A245093.P5276510559628599807

`∑{d}[A140756(n+1), #]`
-/

namespace A245093.P5276510559628599807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A245093.P5276510559628599807

namespace A245093

/-- `∑{d}[A140756(n+1), #]` -/
def P5276510559628599807.Spec : Prop :=
  ∀ n, (P5276510559628599807.a n : ℤ) = A245093 (n + 1)

end A245093

/-! ## A245093.P5923684792905977197

`A000203(n+1-C(∑[char[∑[n]]], 2))`
-/

namespace A245093.P5923684792905977197
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1 - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A245093.P5923684792905977197

namespace A245093

/-- `A000203(n+1-C(∑[char[∑[n]]], 2))` -/
def P5923684792905977197.Spec : Prop :=
  ∀ n, P5923684792905977197.a n = A245093 (n + 1)

end A245093

/-! ## A245093.P17546814865414849392

`A130307(A112367(n))`
-/

namespace A245093.P17546814865414849392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130307 (A112367 n).toNat

end

end A245093.P17546814865414849392

namespace A245093

/-- `A130307(A112367(n))` -/
def P17546814865414849392.Spec : Prop :=
  ∀ n, P17546814865414849392.a n = A245093 (n + 1)

end A245093

/-! ## A245093.P9155460846227315610

`A000203(A002260(n+1))`
-/

namespace A245093.P9155460846227315610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (n + 1)).toNat

end

end A245093.P9155460846227315610

namespace A245093

/-- `A000203(A002260(n+1))` -/
def P9155460846227315610.Spec : Prop :=
  ∀ n, P9155460846227315610.a n = A245093 (n + 1)

end A245093

/-! ## A245093.P13752595744749525646

`A000203(A002262(n)+1)`
-/

namespace A245093.P13752595744749525646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002262 n + 1).toNat

end

end A245093.P13752595744749525646

namespace A245093

/-- `A000203(A002262(n)+1)` -/
def P13752595744749525646.Spec : Prop :=
  ∀ n, P13752595744749525646.a n = A245093 (n + 1)

end A245093

/-! ## A245093.P12595130550045224870

`A127099(A112367(n)+1)`
-/

namespace A245093.P12595130550045224870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127099 (A112367 n + 1).toNat

end

end A245093.P12595130550045224870

namespace A245093

/-- `A127099(A112367(n)+1)` -/
def P12595130550045224870.Spec : Prop :=
  ∀ n, P12595130550045224870.a n = A245093 (n + 1)

end A245093

/-! ## A245093.P5439497765842138503

`A245092(A158405(n+1))`
-/

namespace A245093.P5439497765842138503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A158405 (n + 1)).toNat

end

end A245093.P5439497765842138503

namespace A245093

/-- `A245092(A158405(n+1))` -/
def P5439497765842138503.Spec : Prop :=
  ∀ n, P5439497765842138503.a n = A245093 (n + 1)

end A245093

/-! ## A245093.P12457383402995224545

`A000203(abs(A140756(n+1)))`
-/

namespace A245093.P12457383402995224545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 |A140756 (n + 1)|.toNat

end

end A245093.P12457383402995224545

namespace A245093

/-- `A000203(abs(A140756(n+1)))` -/
def P12457383402995224545.Spec : Prop :=
  ∀ n, P12457383402995224545.a n = A245093 (n + 1)

end A245093

/-! ## A245093.P16475396931898046234

`A000203(sqrt(A133819(n+1)))`
-/

namespace A245093.P16475396931898046234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat

end

end A245093.P16475396931898046234

namespace A245093

/-- `A000203(sqrt(A133819(n+1)))` -/
def P16475396931898046234.Spec : Prop :=
  ∀ n, P16475396931898046234.a n = A245093 (n + 1)

end A245093

/-! ## A245093.P3897919307936307450

`A000203(log2(A059268(n))+1)`
-/

namespace A245093.P3897919307936307450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 1)).toNat

end

end A245093.P3897919307936307450

namespace A245093

/-- `A000203(log2(A059268(n))+1)` -/
def P3897919307936307450.Spec : Prop :=
  ∀ n, P3897919307936307450.a n = A245093 (n + 1)

end A245093

/-! ## A245093.P17444448421248933843

`A000203(log2(2*A059268(n)))`
-/

namespace A245093.P17444448421248933843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A059268 n : ℝ))).toNat

end

end A245093.P17444448421248933843

namespace A245093

/-- `A000203(log2(2*A059268(n)))` -/
def P17444448421248933843.Spec : Prop :=
  ∀ n, P17444448421248933843.a n = A245093 (n + 1)

end A245093

/-! ## A245093.P3886208627772368988

`A000203(1-A057944(n)+n)`
-/

namespace A245093.P3886208627772368988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (1 - A057944 n + (n : ℤ)).toNat

end

end A245093.P3886208627772368988

namespace A245093

/-- `A000203(1-A057944(n)+n)` -/
def P3886208627772368988.Spec : Prop :=
  ∀ n, P3886208627772368988.a n = A245093 (n + 1)

end A245093

/-! ## A245093.P2240258162743059114

`A000203(A132118(n+1)-n)`
-/

namespace A245093.P2240258162743059114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A132118 (n + 1) - (n : ℤ)).toNat

end

end A245093.P2240258162743059114

namespace A245093

/-- `A000203(A132118(n+1)-n)` -/
def P2240258162743059114.Spec : Prop :=
  ∀ n, P2240258162743059114.a n = A245093 (n + 1)

end A245093

/-! ## A245093.P6298019935936750693

`A000203(1-(A057944(n)-n))`
-/

namespace A245093.P6298019935936750693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (1 - (A057944 n - (n : ℤ))).toNat

end

end A245093.P6298019935936750693

namespace A245093

/-- `A000203(1-(A057944(n)-n))` -/
def P6298019935936750693.Spec : Prop :=
  ∀ n, P6298019935936750693.a n = A245093 (n + 1)

end A245093

/-! ## A245093.P10894553373508675758

`∑{d}[A000720(A037126(n+1)), #]`
-/

namespace A245093.P10894553373508675758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037126 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A245093.P10894553373508675758

namespace A245093

/-- `∑{d}[A000720(A037126(n+1)), #]` -/
def P10894553373508675758.Spec : Prop :=
  ∀ n, (P10894553373508675758.a n : ℤ) = A245093 (n + 1)

end A245093

/-! ## A245093.P6077897450072132672

`A221529(n+1)/A027293(n+1)`
-/

namespace A245093.P6077897450072132672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221529 (n + 1) : ℚ) / (A027293 (n + 1) : ℚ)

end

end A245093.P6077897450072132672

namespace A245093

/-- `A221529(n+1)/A027293(n+1)` -/
def P6077897450072132672.Spec : Prop :=
  ∀ n, P6077897450072132672.a n = (A245093 (n + 1) : ℚ)

end A245093

/-! ## A245093.P13982375118767331118

`A274824(n+1)/A004736(n+1)`
-/

namespace A245093.P13982375118767331118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274824 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A245093.P13982375118767331118

namespace A245093

/-- `A274824(n+1)/A004736(n+1)` -/
def P13982375118767331118.Spec : Prop :=
  ∀ n, P13982375118767331118.a n = (A245093 (n + 1) : ℚ)

end A245093

/-!
# A245094: Total squares count in n-th generation of Pythagoras tree variation which is rhombitrihexagonal tiling.

The programs for A245094, the canonical program `A245094.P7320943940895150883` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245094 has offset 0).

The definition of A245094 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245094.P7320943940895150883

`a(n-1)+6-3*n%2` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=13, a(5)=20, a(6)=24`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A245094

/-- `a(n-1)+6-3*n%2` -/
def P7320943940895150883.Spec : Prop :=
  ∀ n, P7320943940895150883.a n = A245094 n

theorem P7320943940895150883.correct : P7320943940895150883.Spec := by
  intro n
  simp only [A245094]

end A245094

/-! ## A245094.P5173611250607989129

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=13, a(5)=20, a(6)=24, a(7)=27, a(8)=33`
-/

namespace A245094.P5173611250607989129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 13, 20, 24, 27, 33] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A245094.P5173611250607989129

namespace A245094

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P5173611250607989129.Spec : Prop :=
  ∀ n, P5173611250607989129.a n = A245094 n

end A245094

/-! ## A245094.P14845345019690372809

`∑[dr(A003963(A018190(n+1)))]`
-/

namespace A245094.P14845345019690372809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A003963 (A018190 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245094.P14845345019690372809

namespace A245094

/-- `∑[dr(A003963(A018190(n+1)))]` -/
def P14845345019690372809.Spec : Prop :=
  ∀ n, (P14845345019690372809.a n : ℤ) = A245094 n

end A245094

/-! ## A245094.P5990909025965220203

`record[gcd(A094727(n+1), A327516(2*(n+2)))]`
-/

namespace A245094.P5990909025965220203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094727 (n + 1)) (A327516 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245094.P5990909025965220203

namespace A245094

/-- `record[gcd(A094727(n+1), A327516(2*(n+2)))]` -/
def P5990909025965220203.Spec : Prop :=
  ∀ n, (P5990909025965220203.a n : ℤ) = A245094 n

end A245094

/-! ## A245094.P7086876572661743917

`A353329(A001003(n))+A153439(n+1)`
-/

namespace A245094.P7086876572661743917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353329 (A001003 n).toNat + A153439 (n + 1)

end

end A245094.P7086876572661743917

namespace A245094

/-- `A353329(A001003(n))+A153439(n+1)` -/
def P7086876572661743917.Spec : Prop :=
  ∀ n, P7086876572661743917.a n = A245094 n

end A245094

/-!
# A245095: Triangle read by rows: T(n,k) = A006218(k)*A002865(n-k).

The programs for A245095, there is no canonical definition to state claims against.
-/

/-! ## A245095.P6911830150809423643

`A006218(A002260(n+1))*A116598(n)`
-/

namespace A245095.P6911830150809423643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A002260 (n + 1)).toNat * A116598 n

end

end A245095.P6911830150809423643

/-! ## A245095.P17250082201074314828

`A340525(∑[char[∑[n]]]²-n)`
-/

namespace A245095.P17250082201074314828
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340525 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A245095.P17250082201074314828

/-! ## A245095.P4440193084434143888

`or(char[2], A340525(A038722(n+1)))`
-/

namespace A245095.P4440193084434143888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A340525 (A038722 (n + 1)).toNat)

end

end A245095.P4440193084434143888

/-! ## A245095.P11161824302484525034

`A340525(A038722(n+1))+A264668(n)`
-/

namespace A245095.P11161824302484525034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340525 (A038722 (n + 1)).toNat + A264668 n

end

end A245095.P11161824302484525034

/-! ## A245095.P14604505900963878896

`A340525(A038722(n+1))%A016789(n)`
-/

namespace A245095.P14604505900963878896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340525 (A038722 (n + 1)).toNat) (A016789 n)

end

end A245095.P14604505900963878896

/-! ## A245095.P18292244330318552236

`∑{d}[A340525(A038722(n+1)), A000010(#)]`
-/

namespace A245095.P18292244330318552236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340525 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A245095.P18292244330318552236

/-! ## A245095.P15188981546704196039

`A340525(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A245095.P15188981546704196039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340525 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A245095.P15188981546704196039

/-! ## A245095.P10212877211355952359

`A340525(A038722(n+1))^A014963(4*n+2)`
-/

namespace A245095.P10212877211355952359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340525 (A038722 (n + 1)).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A245095.P10212877211355952359

/-! ## A245095.P3262950321484239318

`A000005(((-1)^n)²)*A340525(A038722(n+1))`
-/

namespace A245095.P3262950321484239318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((-1) ^ n) ^ 2).toNat * A340525 (A038722 (n + 1)).toNat

end

end A245095.P3262950321484239318

/-!
# A245097: Number of primes greater than n and not greater than the smallest pseudoprime to base n.

The programs for A245097, there is no canonical definition to state claims against.
-/

/-! ## A245097.P7304134880950674652

`A000720(A007535(n+1))-A000720(n+1)`
-/

namespace A245097.P7304134880950674652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007535 (n + 1)).toNat - A000720 (n + 1)

end

end A245097.P7304134880950674652

/-! ## A245097.P4430417919234999571

`A036234(A007535(n+1))-A036234(n+1)`
-/

namespace A245097.P4430417919234999571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A007535 (n + 1)).toNat - A036234 (n + 1)

end

end A245097.P4430417919234999571

/-! ## A245097.P13608435923050299748

`A230980(A007535(n+1))-A230980(n+1)`
-/

namespace A245097.P13608435923050299748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A007535 (n + 1)).toNat - A230980 (n + 1)

end

end A245097.P13608435923050299748

/-! ## A245097.P10809827053235966883

`A000720(A007535(n+1))-A056811(A028387(n))`
-/

namespace A245097.P10809827053235966883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007535 (n + 1)).toNat - A056811 (A028387 n).toNat

end

end A245097.P10809827053235966883

/-!
# A245098: The np values for distinct terms of A246783.

The programs for A245098, there is no canonical definition to state claims against.
-/

/-! ## A245098.P2855100605693656380

`A245101(A000414(n+1))`
-/

namespace A245098.P2855100605693656380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245101 (A000414 (n + 1)).toNat

end

end A245098.P2855100605693656380

/-! ## A245098.P1379506671821133034

`A245101(A025357(n+1))`
-/

namespace A245098.P1379506671821133034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245101 (A025357 (n + 1)).toNat

end

end A245098.P1379506671821133034

/-!
# A245099: Triangle read by rows: T(n,k) = A024916(k)*A002865(n-k).

The programs for A245099, there is no canonical definition to state claims against.
-/

/-! ## A245099.P4168159815024309354

`A340424(∑[char[∑[n]]]²-n)`
-/

namespace A245099.P4168159815024309354
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340424 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A245099.P4168159815024309354

/-! ## A245099.P16148517600576879439

`or(char[3], A340424(A038722(n+1)))`
-/

namespace A245099.P16148517600576879439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A340424 (A038722 (n + 1)).toNat)

end

end A245099.P16148517600576879439

/-! ## A245099.P12087282404526662275

`A340424(A038722(1-char[1]+n))-char[1]`
-/

namespace A245099.P12087282404526662275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340424 (A038722 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A245099.P12087282404526662275

/-! ## A245099.P17724967715620482433

`A024916(A002260(n+1))*A116598(n)`
-/

namespace A245099.P17724967715620482433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A002260 (n + 1)).toNat * A116598 n

end

end A245099.P17724967715620482433

/-! ## A245099.P2949344551600552758

`A060576(n)*A340424(A038722(n+1))`
-/

namespace A245099.P2949344551600552758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A340424 (A038722 (n + 1)).toNat

end

end A245099.P2949344551600552758

/-! ## A245099.P7460663443287138636

`A116598(n)*A350637(A061579(n)+1)`
-/

namespace A245099.P7460663443287138636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n * A350637 (A061579 n + 1).toNat

end

end A245099.P7460663443287138636

/-! ## A245099.P12984085911302652361

`A340424(A038722(n+1))%A004771(n)`
-/

namespace A245099.P12984085911302652361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340424 (A038722 (n + 1)).toNat) (A004771 n)

end

end A245099.P12984085911302652361

/-! ## A245099.P7072901460082737255

`gcd(A000038(n), A340424(A038722(n+1)))`
-/

namespace A245099.P7072901460082737255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A340424 (A038722 (n + 1)).toNat)

end

end A245099.P7072901460082737255

/-! ## A245099.P7952648063921561622

`(A001222(n+1)%2)!*A340424(A038722(n+1))`
-/

namespace A245099.P7952648063921561622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A001222 (n + 1)) 2).toNat : ℤ) * A340424 (A038722 (n + 1)).toNat

end

end A245099.P7952648063921561622

