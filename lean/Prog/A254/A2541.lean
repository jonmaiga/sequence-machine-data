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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A254100: Postludic numbers: Second column of Ludic array A255127.

The programs for A254100, there is no canonical definition to state claims against.
-/

/-! ## A254100.P11608613934265140114

`A255407(A001248(n+1))`
-/

namespace A254100.P11608613934265140114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A001248 (n + 1)).toNat

end

end A254100.P11608613934265140114

/-! ## A254100.P2972488081641747364

`A276606(n)+a(n-1)` with `a(0)=4`
-/

namespace A254100.P2972488081641747364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A276606 n + a (n - 1)

end

end A254100.P2972488081641747364

/-! ## A254100.P6608636873572609904

`A256482(n+1)+A003309(n+2)`
-/

namespace A254100.P6608636873572609904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256482 (n + 1) + A003309 (n + 2)

end

end A254100.P6608636873572609904

/-! ## A254100.P5911331228648972597

`A003309(n+2)+2*A256483(n+1)`
-/

namespace A254100.P5911331228648972597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 2) + 2 * A256483 (n + 1)

end

end A254100.P5911331228648972597

/-! ## A254100.P7220321182725654681

`A256482(n+1)+A255324(n+2)+A008578(n+2)`
-/

namespace A254100.P7220321182725654681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256482 (n + 1) + (A255324 (n + 2) + A008578 (n + 2))

end

end A254100.P7220321182725654681

/-! ## A254100.P9096343356250583651

`A256482(n+1)+A256486(n+2)+A000959(n+2)`
-/

namespace A254100.P9096343356250583651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256482 (n + 1) + (A256486 (n + 2) + A000959 (n + 2))

end

end A254100.P9096343356250583651

/-! ## A254100.P11560722007149421592

`A256487(n+1)+A219178(n+1)`
-/

namespace A254100.P11560722007149421592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256487 (n + 1) + A219178 (n + 1)

end

end A254100.P11560722007149421592

/-! ## A254100.P11321631867570577868

`A219178(n+1)+2*A256488(n+1)`
-/

namespace A254100.P11321631867570577868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219178 (n + 1) + 2 * A256488 (n + 1)

end

end A254100.P11321631867570577868

/-! ## A254100.P17164815780274680898

`A269379(a(n-1))` with `a(0)=4`
-/

namespace A254100.P17164815780274680898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A269379 (a (n - 1)).toNat

end

end A254100.P17164815780274680898

/-! ## A254100.P2235240487781569578

`∩[A302036(n+1), A302038(n+1)]`
-/

namespace A254100.P2235240487781569578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254100.P2235240487781569578

/-! ## A254100.P6487607702952154264

`A260741(A269370(A219178(n+2)))`
-/

namespace A254100.P6487607702952154264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260741 (A269370 (A219178 (n + 2)).toNat).toNat

end

end A254100.P6487607702952154264

/-! ## A254100.P825285040994885459

`A255127(C(n+3, 2))`
-/

namespace A254100.P825285040994885459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (Nat.choose (n + 3) 2)

end

end A254100.P825285040994885459

/-! ## A254100.P2381294940440897592

`A255127(∑[n+2]+1)`
-/

namespace A254100.P2381294940440897592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255127 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254100.P2381294940440897592

/-! ## A254100.P6818689367110799121

`A255129(∑[n+1]+3)`
-/

namespace A254100.P6818689367110799121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A254100.P6818689367110799121

/-! ## A254100.P10729294879048668149

`eq[2, A260739(n+1)]+1`
-/

namespace A254100.P10729294879048668149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A254100.P10729294879048668149

/-! ## A254100.P8463765637743950245

`eq[2, A260739(A028310(n))]`
-/

namespace A254100.P8463765637743950245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254100.P8463765637743950245

/-!
# A254101: Square array A(row,col) = A000265(A254051(row,col)).

The programs for A254101, the canonical program `A254101.P16318865568851900675` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254101 has offset 1).

The definition of A254101 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A254101.P17190035339198489685

`2*A254055(n+1)-1`
-/

namespace A254101.P17190035339198489685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254055 (n + 1) - 1

end

end A254101.P17190035339198489685

namespace A254101

/-- `2*A254055(n+1)-1` -/
def P17190035339198489685.Spec : Prop :=
  ∀ n, P17190035339198489685.a n = A254101 (n + 1)

end A254101

/-! ## A254101.P16318865568851900675

`A000265(A254051(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A254101

/-- `A000265(A254051(n+1))` -/
def P16318865568851900675.Spec : Prop :=
  ∀ n, P16318865568851900675.a n = A254101 (n + 1)

theorem P16318865568851900675.correct : P16318865568851900675.Spec := by
  intro n
  simp only [A254101, Nat.add_sub_cancel]

end A254101

/-! ## A254101.P2316197055150699063

`A008683(A101300(n))+2*A254055(n+1)`
-/

namespace A254101.P2316197055150699063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A101300 n).toNat + 2 * A254055 (n + 1)

end

end A254101.P2316197055150699063

namespace A254101

/-- `A008683(A101300(n))+2*A254055(n+1)` -/
def P2316197055150699063.Spec : Prop :=
  ∀ n, P2316197055150699063.a n = A254101 (n + 1)

end A254101

/-! ## A254101.P14682773688441875743

`A254055(A000027(n+1))+A254055(n+1)-1`
-/

namespace A254101.P14682773688441875743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254055 (A000027 (n + 1)).toNat + (A254055 (n + 1) - 1)

end

end A254101.P14682773688441875743

namespace A254101

/-- `A254055(A000027(n+1))+A254055(n+1)-1` -/
def P14682773688441875743.Spec : Prop :=
  ∀ n, P14682773688441875743.a n = A254101 (n + 1)

end A254101

/-! ## A254101.P1245659405100843427

`A057428(A007947(n+1))+2*A254055(n+1)`
-/

namespace A254101.P1245659405100843427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A007947 (n + 1)).toNat + 2 * A254055 (n + 1)

end

end A254101.P1245659405100843427

namespace A254101

/-- `A057428(A007947(n+1))+2*A254055(n+1)` -/
def P1245659405100843427.Spec : Prop :=
  ∀ n, P1245659405100843427.a n = A254101 (n + 1)

end A254101

/-! ## A254101.P11564361329377043387

`A254055(n+1)+A254055(n+1)-A014963(A115036(n+1))`
-/

namespace A254101.P11564361329377043387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254055 (n + 1) + (A254055 (n + 1) - A014963 (A115036 (n + 1)).toNat)

end

end A254101.P11564361329377043387

namespace A254101

/-- `A254055(n+1)+A254055(n+1)-A014963(A115036(n+1))` -/
def P11564361329377043387.Spec : Prop :=
  ∀ n, P11564361329377043387.a n = A254101 (n + 1)

end A254101

/-! ## A254101.P16002388746265490730

`A008683(A002476(n+1))+2*A254055(n+1)`
-/

namespace A254101.P16002388746265490730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002476 (n + 1)).toNat + 2 * A254055 (n + 1)

end

end A254101.P16002388746265490730

namespace A254101

/-- `A008683(A002476(n+1))+2*A254055(n+1)` -/
def P16002388746265490730.Spec : Prop :=
  ∀ n, P16002388746265490730.a n = A254101 (n + 1)

end A254101

/-! ## A254101.P18069322478761325640

`A008683(A107008(n+1))+2*A254055(n+1)`
-/

namespace A254101.P18069322478761325640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A107008 (n + 1)).toNat + 2 * A254055 (n + 1)

end

end A254101.P18069322478761325640

namespace A254101

/-- `A008683(A107008(n+1))+2*A254055(n+1)` -/
def P18069322478761325640.Spec : Prop :=
  ∀ n, P18069322478761325640.a n = A254101 (n + 1)

end A254101

/-! ## A254101.P3371448982619458216

`A000265((A135765(n+1)+1)/2)`
-/

namespace A254101.P3371448982619458216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A135765 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A254101.P3371448982619458216

namespace A254101

/-- `A000265((A135765(n+1)+1)/2)` -/
def P3371448982619458216.Spec : Prop :=
  ∀ n, P3371448982619458216.a n = A254101 (n + 1)

end A254101

/-! ## A254101.P14847969325528112987

`A000265(A048673(A254053(n+1)))`
-/

namespace A254101.P14847969325528112987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A048673 (A254053 (n + 1)).toNat).toNat

end

end A254101.P14847969325528112987

namespace A254101

/-- `A000265(A048673(A254053(n+1)))` -/
def P14847969325528112987.Spec : Prop :=
  ∀ n, P14847969325528112987.a n = A254101 (n + 1)

end A254101

/-!
# A254102: Square array A(row,col) = A253887(A254055(row,col)) = A126760(A254101(row,col)).

The programs for A254102, there is no canonical definition to state claims against.
-/

/-! ## A254102.P2205316012666860566

`A126760(A254101(n+1))`
-/

namespace A254102.P2205316012666860566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A254101 (n + 1)).toNat

end

end A254102.P2205316012666860566

/-! ## A254102.P15624129484291615571

`A253887(A254055(n+1))`
-/

namespace A254102.P15624129484291615571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253887 (A254055 (n + 1)).toNat

end

end A254102.P15624129484291615571

/-! ## A254102.P12524933629162980239

`A253887(ceil(A254101(n+1)/2))`
-/

namespace A254102.P12524933629162980239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253887 ⌈(A254101 (n + 1) : ℚ) / 2⌉.toNat

end

end A254102.P12524933629162980239

/-! ## A254102.P14559043069482764635

`A253887(round(A254101(n+1)/2))`
-/

namespace A254102.P14559043069482764635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253887 (SequenceMachineLib.roundAway ((A254101 (n + 1) : ℚ) / 2)).toNat

end

end A254102.P14559043069482764635

/-! ## A254102.P9510125636350074289

`A126760(2*A254055(n+1)-1)`
-/

namespace A254102.P9510125636350074289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (2 * A254055 (n + 1) - 1).toNat

end

end A254102.P9510125636350074289

/-! ## A254102.P10669545759139278172

`A253887((A254101(n+1)+1)/2)`
-/

namespace A254102.P10669545759139278172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253887 (SequenceMachineLib.roundAway ((A254101 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A254102.P10669545759139278172

/-! ## A254102.P17971966602811995415

`A126760(A000265(A254051(n+1)))`
-/

namespace A254102.P17971966602811995415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A000265 (A254051 (n + 1)).toNat).toNat

end

end A254102.P17971966602811995415

/-! ## A254102.P13865776566468345683

`A126760(A000265(A135765(n+1)+1))`
-/

namespace A254102.P13865776566468345683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A000265 (A135765 (n + 1) + 1).toNat).toNat

end

end A254102.P13865776566468345683

/-! ## A254102.P16451002964674674098

`A126760(A254055(n+1)+A254055(n+1)-1)`
-/

namespace A254102.P16451002964674674098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A254055 (n + 1) + (A254055 (n + 1) - 1)).toNat

end

end A254102.P16451002964674674098

/-! ## A254102.P9568080346215381871

`A126760(A254051(n+1))`
-/

namespace A254102.P9568080346215381871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A254051 (n + 1)).toNat

end

end A254102.P9568080346215381871

/-!
# A254105: Dispersion of A055938; starting from its complementary sequence A005187 as the first column of square array A(row,col), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A254105, the canonical program `A254105.P16731552791873516864` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254105 has offset 1).

The definition of A254105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254105.P17679957524053403368

`A254107(∑[char[∑[n]]]²-n)`
-/

namespace A254105.P17679957524053403368
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254107 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A254105.P17679957524053403368

namespace A254105

/-- `A254107(∑[char[∑[n]]]²-n)` -/
def P17679957524053403368.Spec : Prop :=
  ∀ n, P17679957524053403368.a n = A254105 (n + 1)

end A254105

/-! ## A254105.P15825777970870313082

`or(char[2], A254107(A038722(n+1)))`
-/

namespace A254105.P15825777970870313082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254107 (A038722 (n + 1)).toNat)

end

end A254105.P15825777970870313082

namespace A254105

/-- `or(char[2], A254107(A038722(n+1)))` -/
def P15825777970870313082.Spec : Prop :=
  ∀ n, P15825777970870313082.a n = A254105 (n + 1)

end A254105

/-! ## A254105.P16731552791873516864

`A254107(A038722(n+1))%A017186(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A254105

/-- `A254107(A038722(n+1))%A017186(n)` -/
def P16731552791873516864.Spec : Prop :=
  ∀ n, P16731552791873516864.a n = A254105 (n + 1)

theorem P16731552791873516864.correct : P16731552791873516864.Spec := by
  intro n
  simp only [A254105, Nat.add_sub_cancel]

end A254105

/-! ## A254105.P10928282345462152458

`lcm(A033999(n), A254107(A038722(n+1)))`
-/

namespace A254105.P10928282345462152458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A254107 (A038722 (n + 1)).toNat)

end

end A254105.P10928282345462152458

namespace A254105

/-- `lcm(A033999(n), A254107(A038722(n+1)))` -/
def P10928282345462152458.Spec : Prop :=
  ∀ n, (P10928282345462152458.a n : ℤ) = A254105 (n + 1)

end A254105

/-! ## A254105.P11501089761477340053

`A254107(A038722(n+1))+A132440(3*n)`
-/

namespace A254105.P11501089761477340053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254107 (A038722 (n + 1)).toNat + A132440 (3 * n)

end

end A254105.P11501089761477340053

namespace A254105

/-- `A254107(A038722(n+1))+A132440(3*n)` -/
def P11501089761477340053.Spec : Prop :=
  ∀ n, P11501089761477340053.a n = A254105 (n + 1)

end A254105

/-! ## A254105.P3987133646951000670

`A007318(C(2, n))*A254107(A038722(n+1))`
-/

namespace A254105.P3987133646951000670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A254107 (A038722 (n + 1)).toNat

end

end A254105.P3987133646951000670

namespace A254105

/-- `A007318(C(2, n))*A254107(A038722(n+1))` -/
def P3987133646951000670.Spec : Prop :=
  ∀ n, P3987133646951000670.a n = A254105 (n + 1)

end A254105

/-! ## A254105.P198241638103635823

`A254107(A038722(n+1))^(A000040(n+1)%2)`
-/

namespace A254105.P198241638103635823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254107 (A038722 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A254105.P198241638103635823

namespace A254105

/-- `A254107(A038722(n+1))^(A000040(n+1)%2)` -/
def P198241638103635823.Spec : Prop :=
  ∀ n, P198241638103635823.a n = (A254105 (n + 1) : ℚ)

end A254105

/-! ## A254105.P9043810450767728128

`A000041(C(2, n+2))*A254107(A038722(n+1))`
-/

namespace A254105.P9043810450767728128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A254107 (A038722 (n + 1)).toNat

end

end A254105.P9043810450767728128

namespace A254105

/-- `A000041(C(2, n+2))*A254107(A038722(n+1))` -/
def P9043810450767728128.Spec : Prop :=
  ∀ n, P9043810450767728128.a n = A254105 (n + 1)

end A254105

/-! ## A254105.P15736200160048183055

`A000040(n+8)%2*A254107(A038722(n+1))`
-/

namespace A254105.P15736200160048183055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 8)) 2 * A254107 (A038722 (n + 1)).toNat

end

end A254105.P15736200160048183055

namespace A254105

/-- `A000040(n+8)%2*A254107(A038722(n+1))` -/
def P15736200160048183055.Spec : Prop :=
  ∀ n, P15736200160048183055.a n = A254105 (n + 1)

end A254105

/-! ## A254105.P11071419159009316053

`A001222(A007918(n))*A254107(A038722(n+1))`
-/

namespace A254105.P11071419159009316053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A254107 (A038722 (n + 1)).toNat

end

end A254105.P11071419159009316053

namespace A254105

/-- `A001222(A007918(n))*A254107(A038722(n+1))` -/
def P11071419159009316053.Spec : Prop :=
  ∀ n, P11071419159009316053.a n = A254105 (n + 1)

end A254105

/-! ## A254105.P9947452466968111367

`A000045(A020639(2*(n+1)))*A254107(A038722(n+1))`
-/

namespace A254105.P9947452466968111367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A254107 (A038722 (n + 1)).toNat

end

end A254105.P9947452466968111367

namespace A254105

/-- `A000045(A020639(2*(n+1)))*A254107(A038722(n+1))` -/
def P9947452466968111367.Spec : Prop :=
  ∀ n, P9947452466968111367.a n = A254105 (n + 1)

end A254105

/-!
# A254106: Inverse permutation to A254105.

The programs for A254106, there is no canonical definition to state claims against.
-/

/-! ## A254106.P4490259762438489348

`A254108(n+1)+A254112(n+1)-A254111(n+1)`
-/

namespace A254106.P4490259762438489348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254108 (n + 1) + (A254112 (n + 1) - A254111 (n + 1))

end

end A254106.P4490259762438489348

/-! ## A254106.P289147839180999160

`A038722(A254108(n+1))`
-/

namespace A254106.P289147839180999160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A254108 (n + 1)).toNat

end

end A254106.P289147839180999160

/-! ## A254106.P226225049560874341

`A061579(A254108(n+1)-1)+1`
-/

namespace A254106.P226225049560874341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A254108 (n + 1) - 1).toNat + 1

end

end A254106.P226225049560874341

/-! ## A254106.P977540510134545750

`A127739(A254108(n+1))-A254110(n+1)`
-/

namespace A254106.P977540510134545750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A254108 (n + 1)).toNat - A254110 (n + 1)

end

end A254106.P977540510134545750

/-!
# A254107: Transposed dispersion of A055938.

The programs for A254107, the canonical program `A254107.P2033463997681992724` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254107 has offset 1).

The definition of A254107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254107.P260762445757969596

`A254105(∑[char[∑[n]]]²-n)`
-/

namespace A254107.P260762445757969596
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254105 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A254107.P260762445757969596

namespace A254107

/-- `A254105(∑[char[∑[n]]]²-n)` -/
def P260762445757969596.Spec : Prop :=
  ∀ n, P260762445757969596.a n = A254107 (n + 1)

end A254107

/-! ## A254107.P15645333997681053204

`or(char[1], A254105(A061579(n)+1))`
-/

namespace A254107.P15645333997681053204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254105 (A061579 n + 1).toNat)

end

end A254107.P15645333997681053204

namespace A254107

/-- `or(char[1], A254105(A061579(n)+1))` -/
def P15645333997681053204.Spec : Prop :=
  ∀ n, P15645333997681053204.a n = A254107 (n + 1)

end A254107

/-! ## A254107.P13280023747059417628

`lcm(1-2*n%2, A254105(A038722(n+1)))`
-/

namespace A254107.P13280023747059417628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((2 * (n % 2) : ℕ) : ℤ)) (A254105 (A038722 (n + 1)).toNat)

end

end A254107.P13280023747059417628

namespace A254107

/-- `lcm(1-2*n%2, A254105(A038722(n+1)))` -/
def P13280023747059417628.Spec : Prop :=
  ∀ n, (P13280023747059417628.a n : ℤ) = A254107 (n + 1)

end A254107

/-! ## A254107.P2033463997681992724

`A005187(A130128(n+1))-A002262(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A254107

/-- `A005187(A130128(n+1))-A002262(n)` -/
def P2033463997681992724.Spec : Prop :=
  ∀ n, P2033463997681992724.a n = A254107 (n + 1)

theorem P2033463997681992724.correct : P2033463997681992724.Spec := by
  intro n
  simp only [A254107, Nat.add_sub_cancel]

end A254107

/-! ## A254107.P11735422710110668238

`A254105(A038722(n+1))%A016946(n)`
-/

namespace A254107.P11735422710110668238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254105 (A038722 (n + 1)).toNat) (A016946 n)

end

end A254107.P11735422710110668238

namespace A254107

/-- `A254105(A038722(n+1))%A016946(n)` -/
def P11735422710110668238.Spec : Prop :=
  ∀ n, P11735422710110668238.a n = A254107 (n + 1)

end A254107

/-! ## A254107.P13332933973392767086

`A254105(A061579(n)+1)%A054815(n)`
-/

namespace A254107.P13332933973392767086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254105 (A061579 n + 1).toNat) (A054815 n)

end

end A254107.P13332933973392767086

namespace A254107

/-- `A254105(A061579(n)+1)%A054815(n)` -/
def P13332933973392767086.Spec : Prop :=
  ∀ n, P13332933973392767086.a n = A254107 (n + 1)

end A254107

/-! ## A254107.P14489259258262358120

`A254105(A061579(n)+1)+A000035(2*n)`
-/

namespace A254107.P14489259258262358120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254105 (A061579 n + 1).toNat + A000035 (2 * n)

end

end A254107.P14489259258262358120

namespace A254107

/-- `A254105(A061579(n)+1)+A000035(2*n)` -/
def P14489259258262358120.Spec : Prop :=
  ∀ n, P14489259258262358120.a n = A254107 (n + 1)

end A254107

/-! ## A254107.P13434519671567977930

`A007318(C(2, n))*A254105(A061579(n)+1)`
-/

namespace A254107.P13434519671567977930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A254105 (A061579 n + 1).toNat

end

end A254107.P13434519671567977930

namespace A254107

/-- `A007318(C(2, n))*A254105(A061579(n)+1)` -/
def P13434519671567977930.Spec : Prop :=
  ∀ n, P13434519671567977930.a n = A254107 (n + 1)

end A254107

/-! ## A254107.P11364873184260273751

`A254105(A061579(n)+1)+A008683(4*(n+1))`
-/

namespace A254107.P11364873184260273751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254105 (A061579 n + 1).toNat + A008683 (4 * (n + 1))

end

end A254107.P11364873184260273751

namespace A254107

/-- `A254105(A061579(n)+1)+A008683(4*(n+1))` -/
def P11364873184260273751.Spec : Prop :=
  ∀ n, P11364873184260273751.a n = A254107 (n + 1)

end A254107

/-! ## A254107.P2948926563373719148

`A254105(A061579(n)+1)^A000041(C(2, n+2))`
-/

namespace A254107.P2948926563373719148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254105 (A061579 n + 1).toNat : ℚ) ^ (A000041 (Nat.choose 2 (n + 2)) : ℤ)

end

end A254107.P2948926563373719148

namespace A254107

/-- `A254105(A061579(n)+1)^A000041(C(2, n+2))` -/
def P2948926563373719148.Spec : Prop :=
  ∀ n, P2948926563373719148.a n = (A254107 (n + 1) : ℚ)

end A254107

/-! ## A254107.P3221931388525057820

`A254105(A061579(n)+1)+A000045(C(n, n+1))`
-/

namespace A254107.P3221931388525057820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254105 (A061579 n + 1).toNat + A000045 (Nat.choose n (n + 1))

end

end A254107.P3221931388525057820

namespace A254107

/-- `A254105(A061579(n)+1)+A000045(C(n, n+1))` -/
def P3221931388525057820.Spec : Prop :=
  ∀ n, P3221931388525057820.a n = A254107 (n + 1)

end A254107

/-! ## A254107.P14104706422260601818

`A254105(A002024(n+1)²-n)+A079559(A055938(n+1))`
-/

namespace A254107.P14104706422260601818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254105 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat + A079559 (A055938 (n + 1)).toNat

end

end A254107.P14104706422260601818

namespace A254107

/-- `A254105(A002024(n+1)²-n)+A079559(A055938(n+1))` -/
def P14104706422260601818.Spec : Prop :=
  ∀ n, P14104706422260601818.a n = A254107 (n + 1)

end A254107

/-!
# A254108: Inverse permutation to A254107.

The programs for A254108, there is no canonical definition to state claims against.
-/

/-! ## A254108.P16716312544346636786

`A254106(n+1)+A254111(n+1)-A254112(n+1)`
-/

namespace A254108.P16716312544346636786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254106 (n + 1) + (A254111 (n + 1) - A254112 (n + 1))

end

end A254108.P16716312544346636786

/-! ## A254108.P8233053049509714813

`A038722(A254106(n+1))`
-/

namespace A254108.P8233053049509714813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A254106 (n + 1)).toNat

end

end A254108.P8233053049509714813

/-! ## A254108.P60371585347596769

`A061579(A254106(n+1)-1)+1`
-/

namespace A254108.P60371585347596769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A254106 (n + 1) - 1).toNat + 1

end

end A254108.P60371585347596769

/-!
# A254110: Zero-based column index of n in A254105: if A234017(n) = 0, then a(n) = 0, otherwise a(n) = 1 + a(A234017(n)).

The programs for A254110, the canonical program `A254110.P14785946217750073186` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254110 has offset 1).

The definition of A254110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254110.P1263826372465198839

`A254111(n+1)-1`
-/

namespace A254110.P1263826372465198839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254111 (n + 1) - 1

end

end A254110.P1263826372465198839

namespace A254110

/-- `A254111(n+1)-1` -/
def P1263826372465198839.Spec : Prop :=
  ∀ n, P1263826372465198839.a n = A254110 (n + 1)

end A254110

/-! ## A254110.P4162427128092647293

`val(A123390(n+1), 2)`
-/

namespace A254110.P4162427128092647293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A123390 (n + 1)).toNat 2

end

end A254110.P4162427128092647293

namespace A254110

/-- `val(A123390(n+1), 2)` -/
def P4162427128092647293.Spec : Prop :=
  ∀ n, (P4162427128092647293.a n : ℤ) = A254110 (n + 1)

end A254110

/-! ## A254110.P14867751400078306810

`val(A279338(1+n), 2)`
-/

namespace A254110.P14867751400078306810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A279338 (1 + n)).toNat 2

end

end A254110.P14867751400078306810

namespace A254110

/-- `val(A279338(1+n), 2)` -/
def P14867751400078306810.Spec : Prop :=
  ∀ n, (P14867751400078306810.a n : ℤ) = A254110 (n + 1)

end A254110

/-! ## A254110.P16313111005410197667

`val(A279348(n+1), 2)`
-/

namespace A254110.P16313111005410197667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A279348 (n + 1)).toNat 2

end

end A254110.P16313111005410197667

namespace A254110

/-- `val(A279348(n+1), 2)` -/
def P16313111005410197667.Spec : Prop :=
  ∀ n, (P16313111005410197667.a n : ℤ) = A254110 (n + 1)

end A254110

/-! ## A254110.P6783153189004241145

`A007814(A123390(n+1))`
-/

namespace A254110.P6783153189004241145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A123390 (n + 1)).toNat

end

end A254110.P6783153189004241145

namespace A254110

/-- `A007814(A123390(n+1))` -/
def P6783153189004241145.Spec : Prop :=
  ∀ n, P6783153189004241145.a n = A254110 (n + 1)

end A254110

/-! ## A254110.P7251215743601247119

`A337821(A108918(n+1))`
-/

namespace A254110.P7251215743601247119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337821 (A108918 (n + 1)).toNat

end

end A254110.P7251215743601247119

namespace A254110

/-- `A337821(A108918(n+1))` -/
def P7251215743601247119.Spec : Prop :=
  ∀ n, P7251215743601247119.a n = A254110 (n + 1)

end A254110

/-! ## A254110.P10229146024130917126

`A007814(A279343(n+1)+1)`
-/

namespace A254110.P10229146024130917126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A279343 (n + 1) + 1).toNat

end

end A254110.P10229146024130917126

namespace A254110

/-- `A007814(A279343(n+1)+1)` -/
def P10229146024130917126.Spec : Prop :=
  ∀ n, P10229146024130917126.a n = A254110 (n + 1)

end A254110

/-! ## A254110.P15063515219357624129

`A001511(A279343(n+1)+1)-1`
-/

namespace A254110.P15063515219357624129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A279343 (n + 1) + 1).toNat - 1

end

end A254110.P15063515219357624129

namespace A254110

/-- `A001511(A279343(n+1)+1)-1` -/
def P15063515219357624129.Spec : Prop :=
  ∀ n, P15063515219357624129.a n = A254110 (n + 1)

end A254110

/-! ## A254110.P3122476508632635601

`A011371(A007843(n+1))-(n+1)`
-/

namespace A254110.P3122476508632635601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A007843 (n + 1)).toNat - (n + 1 : ℤ)

end

end A254110.P3122476508632635601

namespace A254110

/-- `A011371(A007843(n+1))-(n+1)` -/
def P3122476508632635601.Spec : Prop :=
  ∀ n, P3122476508632635601.a n = A254110 (n + 1)

end A254110

/-! ## A254110.P14785946217750073186

`A005187(A046699(n+2))-(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A254110

/-- `A005187(A046699(n+2))-(n+1)` -/
def P14785946217750073186.Spec : Prop :=
  ∀ n, P14785946217750073186.a n = A254110 (n + 1)

theorem P14785946217750073186.correct : P14785946217750073186.Spec := by
  intro n
  simp only [A254110, Nat.add_sub_cancel]

end A254110

/-! ## A254110.P5981279090194877346

`A007814(A339451(n)/A182105(n+1)+1)`
-/

namespace A254110.P5981279090194877346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A339451 n : ℚ) / (A182105 (n + 1) : ℚ) + 1)).toNat

end

end A254110.P5981279090194877346

namespace A254110

/-- `A007814(A339451(n)/A182105(n+1)+1)` -/
def P5981279090194877346.Spec : Prop :=
  ∀ n, P5981279090194877346.a n = A254110 (n + 1)

end A254110

/-! ## A254110.P4006939230524729227

`A007814(A006519(A123390(A123390(A101925(n)))))`
-/

namespace A254110.P4006939230524729227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006519 (A123390 (A123390 (A101925 n).toNat).toNat).toNat).toNat

end

end A254110.P4006939230524729227

namespace A254110

/-- `A007814(A006519(A123390(A123390(A101925(n)))))` -/
def P4006939230524729227.Spec : Prop :=
  ∀ n, P4006939230524729227.a n = A254110 (n + 1)

end A254110

/-! ## A254110.P6823283159196961125

`val(A233277(n+1), 2)`
-/

namespace A254110.P6823283159196961125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A233277 (n + 1)).toNat 2

end

end A254110.P6823283159196961125

namespace A254110

/-- `val(A233277(n+1), 2)` -/
def P6823283159196961125.Spec : Prop :=
  ∀ n, (P6823283159196961125.a n : ℤ) = A254110 (n + 1)

end A254110

/-! ## A254110.P8154923193566054948

`A007814(A233277(n+1))`
-/

namespace A254110.P8154923193566054948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A233277 (n + 1)).toNat

end

end A254110.P8154923193566054948

namespace A254110

/-- `A007814(A233277(n+1))` -/
def P8154923193566054948.Spec : Prop :=
  ∀ n, P8154923193566054948.a n = A254110 (n + 1)

end A254110

/-! ## A254110.P6130662938414948261

`A091090(A233275(n+1))-1`
-/

namespace A254110.P6130662938414948261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A233275 (n + 1)).toNat - 1

end

end A254110.P6130662938414948261

namespace A254110

/-- `A091090(A233275(n+1))-1` -/
def P6130662938414948261.Spec : Prop :=
  ∀ n, P6130662938414948261.a n = A254110 (n + 1)

end A254110

/-! ## A254110.P14107023009868139739

`A265332(A276346(n+1))-1`
-/

namespace A254110.P14107023009868139739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (A276346 (n + 1)).toNat - 1

end

end A254110.P14107023009868139739

namespace A254110

/-- `A265332(A276346(n+1))-1` -/
def P14107023009868139739.Spec : Prop :=
  ∀ n, P14107023009868139739.a n = A254110 (n + 1)

end A254110

/-! ## A254110.P13329498039171935465

`A254111(n+2)%A254111(n+1)`
-/

namespace A254110.P13329498039171935465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254111 (n + 2)) (A254111 (n + 1))

end

end A254110.P13329498039171935465

namespace A254110

/-- `A254111(n+2)%A254111(n+1)` -/
def P13329498039171935465.Spec : Prop :=
  ∀ n, P13329498039171935465.a n = A254110 (n + 1)

end A254110

/-! ## A254110.P4033016285989842054

`A354223(A080578(n+2))-1`
-/

namespace A254110.P4033016285989842054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354223 (A080578 (n + 2)).toNat - 1

end

end A254110.P4033016285989842054

namespace A254110

/-- `A354223(A080578(n+2))-1` -/
def P4033016285989842054.Spec : Prop :=
  ∀ n, P4033016285989842054.a n = A254110 (n + 1)

end A254110

/-! ## A254110.P788425267066692087

`A007814(gcd(A279338(n+1), A279348(n+1)))`
-/

namespace A254110.P788425267066692087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.gcd (A279338 (n + 1)) (A279348 (n + 1)))

end

end A254110.P788425267066692087

namespace A254110

/-- `A007814(gcd(A279338(n+1), A279348(n+1)))` -/
def P788425267066692087.Spec : Prop :=
  ∀ n, P788425267066692087.a n = A254110 (n + 1)

end A254110

/-! ## A254110.P4871180682912670925

`A200748(n)%A254111(n+1)`
-/

namespace A254110.P4871180682912670925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A254111 (n + 1))

end

end A254110.P4871180682912670925

namespace A254110

/-- `A200748(n)%A254111(n+1)` -/
def P4871180682912670925.Spec : Prop :=
  ∀ n, P4871180682912670925.a n = A254110 (n + 1)

end A254110

/-!
# A254111: One-based column index of n in A254105: If A234017(n) = 0, then a(n) = 1, otherwise a(n) = 1 + a(A234017(n)).

The programs for A254111, the canonical program `A254111.P598288694993165657` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254111 has offset 1).

The definition of A254111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254111.P598288694993165657

`A254110(1+n)+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A254111

/-- `A254110(1+n)+1` -/
def P598288694993165657.Spec : Prop :=
  ∀ n, P598288694993165657.a n = A254111 (n + 1)

theorem P598288694993165657.correct : P598288694993165657.Spec := by
  intro n
  simp only [A254111, Nat.add_sub_cancel]

end A254111

/-! ## A254111.P13097939991936540806

`Δ[n+a(A234016(n))]` with `a(0)=3`
-/

namespace A254111.P13097939991936540806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  n + f1 (A234016 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A254111.P13097939991936540806

namespace A254111

/-- `Δ[n+a(A234016(n))]` -/
def P13097939991936540806.Spec : Prop :=
  ∀ n, P13097939991936540806.a n = A254111 (n + 1)

end A254111

/-! ## A254111.P10562374342448325001

`val(A123390(n+1), 2)+1`
-/

namespace A254111.P10562374342448325001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A123390 (n + 1)).toNat 2 + 1

end

end A254111.P10562374342448325001

namespace A254111

/-- `val(A123390(n+1), 2)+1` -/
def P10562374342448325001.Spec : Prop :=
  ∀ n, (P10562374342448325001.a n : ℤ) = A254111 (n + 1)

end A254111

/-! ## A254111.P6608391405514927505

`val(A279338(1+n), 2)+1`
-/

namespace A254111.P6608391405514927505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A279338 (1 + n)).toNat 2 + 1

end

end A254111.P6608391405514927505

namespace A254111

/-- `val(A279338(1+n), 2)+1` -/
def P6608391405514927505.Spec : Prop :=
  ∀ n, (P6608391405514927505.a n : ℤ) = A254111 (n + 1)

end A254111

/-! ## A254111.P11064399781709694109

`val(A279348(n+1), 2)+1`
-/

namespace A254111.P11064399781709694109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A279348 (n + 1)).toNat 2 + 1

end

end A254111.P11064399781709694109

namespace A254111

/-- `val(A279348(n+1), 2)+1` -/
def P11064399781709694109.Spec : Prop :=
  ∀ n, (P11064399781709694109.a n : ℤ) = A254111 (n + 1)

end A254111

/-! ## A254111.P4585122819623633997

`A001511(A123390(n+1))`
-/

namespace A254111.P4585122819623633997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A123390 (n + 1)).toNat

end

end A254111.P4585122819623633997

namespace A254111

/-- `A001511(A123390(n+1))` -/
def P4585122819623633997.Spec : Prop :=
  ∀ n, P4585122819623633997.a n = A254111 (n + 1)

end A254111

/-! ## A254111.P453508621700189977

`A089309(A108918(n+1))`
-/

namespace A254111.P453508621700189977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A108918 (n + 1)).toNat

end

end A254111.P453508621700189977

namespace A254111

/-- `A089309(A108918(n+1))` -/
def P453508621700189977.Spec : Prop :=
  ∀ n, P453508621700189977.a n = A254111 (n + 1)

end A254111

/-! ## A254111.P10365539568866747610

`A011371(Δ[A029715(n)])-n`
-/

namespace A254111.P10365539568866747610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (f1 (n + 1) - f1 n).toNat - (n : ℤ)

end

end A254111.P10365539568866747610

namespace A254111

/-- `A011371(Δ[A029715(n)])-n` -/
def P10365539568866747610.Spec : Prop :=
  ∀ n, P10365539568866747610.a n = A254111 (n + 1)

end A254111

/-! ## A254111.P14807721312456377545

`A001511(A279343(n+1)+1)`
-/

namespace A254111.P14807721312456377545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A279343 (n + 1) + 1).toNat

end

end A254111.P14807721312456377545

namespace A254111

/-- `A001511(A279343(n+1)+1)` -/
def P14807721312456377545.Spec : Prop :=
  ∀ n, P14807721312456377545.a n = A254111 (n + 1)

end A254111

/-! ## A254111.P7942553686145103784

`A007814(2*A123390(n+1))`
-/

namespace A254111.P7942553686145103784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A123390 (n + 1)).toNat

end

end A254111.P7942553686145103784

namespace A254111

/-- `A007814(2*A123390(n+1))` -/
def P7942553686145103784.Spec : Prop :=
  ∀ n, P7942553686145103784.a n = A254111 (n + 1)

end A254111

/-! ## A254111.P15269930920239108995

`A011371(A007843(n+1))-n`
-/

namespace A254111.P15269930920239108995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A007843 (n + 1)).toNat - (n : ℤ)

end

end A254111.P15269930920239108995

namespace A254111

/-- `A011371(A007843(n+1))-n` -/
def P15269930920239108995.Spec : Prop :=
  ∀ n, P15269930920239108995.a n = A254111 (n + 1)

end A254111

/-! ## A254111.P13331446486043432714

`A005187(A046699(n+2))-n`
-/

namespace A254111.P13331446486043432714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A046699 (n + 2)).toNat - (n : ℤ)

end

end A254111.P13331446486043432714

namespace A254111

/-- `A005187(A046699(n+2))-n` -/
def P13331446486043432714.Spec : Prop :=
  ∀ n, P13331446486043432714.a n = A254111 (n + 1)

end A254111

/-! ## A254111.P2718693640021858095

`A005187(∑[char[A005187(n)]])-n`
-/

namespace A254111.P2718693640021858095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A254111.P2718693640021858095

namespace A254111

/-- `A005187(∑[char[A005187(n)]])-n` -/
def P2718693640021858095.Spec : Prop :=
  ∀ n, P2718693640021858095.a n = A254111 (n + 1)

end A254111

/-! ## A254111.P13483236420023234059

`A007814(A279343(n+1)+1)+1`
-/

namespace A254111.P13483236420023234059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A279343 (n + 1) + 1).toNat + 1

end

end A254111.P13483236420023234059

namespace A254111

/-- `A007814(A279343(n+1)+1)+1` -/
def P13483236420023234059.Spec : Prop :=
  ∀ n, P13483236420023234059.a n = A254111 (n + 1)

end A254111

/-! ## A254111.P5612227117407840733

`A011371(A055938(n+1)-n)-n`
-/

namespace A254111.P5612227117407840733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A055938 (n + 1) - (n : ℤ)).toNat - (n : ℤ)

end

end A254111.P5612227117407840733

namespace A254111

/-- `A011371(A055938(n+1)-n)-n` -/
def P5612227117407840733.Spec : Prop :=
  ∀ n, P5612227117407840733.a n = A254111 (n + 1)

end A254111

/-! ## A254111.P9368956561805134500

`A007814(A123390(n+1)+A123390(n+1))`
-/

namespace A254111.P9368956561805134500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A123390 (n + 1) + A123390 (n + 1)).toNat

end

end A254111.P9368956561805134500

namespace A254111

/-- `A007814(A123390(n+1)+A123390(n+1))` -/
def P9368956561805134500.Spec : Prop :=
  ∀ n, P9368956561805134500.a n = A254111 (n + 1)

end A254111

/-! ## A254111.P9467645383559688046

`A005187(A007843(n+1))-A055938(n+1)`
-/

namespace A254111.P9467645383559688046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A007843 (n + 1)).toNat - A055938 (n + 1)

end

end A254111.P9467645383559688046

namespace A254111

/-- `A005187(A007843(n+1))-A055938(n+1)` -/
def P9467645383559688046.Spec : Prop :=
  ∀ n, P9467645383559688046.a n = A254111 (n + 1)

end A254111

/-! ## A254111.P3020523846870076957

`A100661(n+1)-A048881(A100661(n+1)+n)`
-/

namespace A254111.P3020523846870076957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (n + 1) - A048881 (A100661 (n + 1) + (n : ℤ)).toNat

end

end A254111.P3020523846870076957

namespace A254111

/-- `A100661(n+1)-A048881(A100661(n+1)+n)` -/
def P3020523846870076957.Spec : Prop :=
  ∀ n, P3020523846870076957.a n = A254111 (n + 1)

end A254111

/-! ## A254111.P9281421547849301026

`A005187(A045412(n+1)-n)-A045412(n+1)`
-/

namespace A254111.P9281421547849301026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A045412 (n + 1) - (n : ℤ)).toNat - A045412 (n + 1)

end

end A254111.P9281421547849301026

namespace A254111

/-- `A005187(A045412(n+1)-n)-A045412(n+1)` -/
def P9281421547849301026.Spec : Prop :=
  ∀ n, P9281421547849301026.a n = A254111 (n + 1)

end A254111

/-! ## A254111.P13579643430770773968

`A005187(A055938(n+1)-n)-A055938(n+1)`
-/

namespace A254111.P13579643430770773968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A055938 (n + 1) - (n : ℤ)).toNat - A055938 (n + 1)

end

end A254111.P13579643430770773968

namespace A254111

/-- `A005187(A055938(n+1)-n)-A055938(n+1)` -/
def P13579643430770773968.Spec : Prop :=
  ∀ n, P13579643430770773968.a n = A254111 (n + 1)

end A254111

/-!
# A254112: Row index of n in A254105: If A234017(n) = 0, then a(n) = A213714(n), otherwise a(n) = a(A234017(n)).

The programs for A254112, there is no canonical definition to state claims against.
-/

/-! ## A254112.P6232701452734502314

`A254106(n+1)+A254111(n+1)-A254108(n+1)`
-/

namespace A254112.P6232701452734502314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254106 (n + 1) + (A254111 (n + 1) - A254108 (n + 1))

end

end A254112.P6232701452734502314

/-! ## A254112.P3353518621323380278

`A002260(A254106(n+1))`
-/

namespace A254112.P3353518621323380278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A254106 (n + 1)).toNat

end

end A254112.P3353518621323380278

/-! ## A254112.P9387907231062586992

`A004736(A254108(n+1))`
-/

namespace A254112.P9387907231062586992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A254108 (n + 1)).toNat

end

end A254112.P9387907231062586992

/-! ## A254112.P2480156355986929171

`A002024(A254108(n+1))-A254110(n+1)`
-/

namespace A254112.P2480156355986929171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A254108 (n + 1)).toNat - A254110 (n + 1)

end

end A254112.P2480156355986929171

/-! ## A254112.P2696094601922217010

`A002024(A254106(n+1))-A254110(n+1)`
-/

namespace A254112.P2696094601922217010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A254106 (n + 1)).toNat - A254110 (n + 1)

end

end A254112.P2696094601922217010

/-! ## A254112.P5684180480823817066

`A279339(A064989(A279338(n+1)))`
-/

namespace A254112.P5684180480823817066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279339 (A064989 (A279338 (n + 1)).toNat).toNat

end

end A254112.P5684180480823817066

/-! ## A254112.P8402188811364496297

`A279339(A064989(A163511(A279341(n+1))))`
-/

namespace A254112.P8402188811364496297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279339 (A064989 (A163511 (A279341 (n + 1)).toNat).toNat).toNat

end

end A254112.P8402188811364496297

/-! ## A254112.P16075312993751226990

`A279349(A268674(A279348(n+1)))`
-/

namespace A254112.P16075312993751226990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279349 (A268674 (A279348 (n + 1)).toNat).toNat

end

end A254112.P16075312993751226990

/-!
# A254113: a(n) = A010059(A255056(n)).

The programs for A254113, there is no canonical definition to state claims against.
-/

/-! ## A254113.P824462977763425321

`A010059(A255056(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254113.P824462977763425321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A255056 n).toNat

end

end A254113.P824462977763425321

/-! ## A254113.P10949761898025911868

`1-A254114(n)`
-/

namespace A254113.P10949761898025911868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A254114 n

end

end A254113.P10949761898025911868

/-! ## A254113.P14571037618822664902

`A010051(A254114(n)+A151800(n+4))`
-/

namespace A254113.P14571037618822664902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A254114 n + A151800 (n + 4)).toNat

end

end A254113.P14571037618822664902

/-! ## A254113.P6135701869028355716

`A010059(A000069(n+1)*A254114(n))`
-/

namespace A254113.P6135701869028355716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A000069 (n + 1) * A254114 n).toNat

end

end A254113.P6135701869028355716

/-! ## A254113.P476323597611919495

`xor(A100882(A195470(2*(n+1))), A254114(n))`
-/

namespace A254113.P476323597611919495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A100882 (A195470 (2 * (n + 1))).toNat) (A254114 n)

end

end A254113.P476323597611919495

/-! ## A254113.P4899030514201928297

`A000035(A254114(n)+2*n+1)`
-/

namespace A254113.P4899030514201928297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A254114 n + (2 * n + 1 : ℤ)).toNat

end

end A254113.P4899030514201928297

/-! ## A254113.P2983055406901489331

`1-A010060(A255057(n))`
-/

namespace A254113.P2983055406901489331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 (A255057 n).toNat

end

end A254113.P2983055406901489331

/-! ## A254113.P15989313846811890619

`A010059(A255057(n))`
-/

namespace A254113.P15989313846811890619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A255057 n).toNat

end

end A254113.P15989313846811890619

/-! ## A254113.P12858220505057755287

`2-A001285(A255056(n)/2)`
-/

namespace A254113.P12858220505057755287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001285 (SequenceMachineLib.roundAway ((A255056 n : ℚ) / 2)).toNat

end

end A254113.P12858220505057755287

/-! ## A254113.P9836967454823314370

`A010060(A255056(n)+1)`
-/

namespace A254113.P9836967454823314370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A255056 n + 1).toNat

end

end A254113.P9836967454823314370

/-! ## A254113.P15838070030660434337

`A010060(or(1, A255056(n)))`
-/

namespace A254113.P15838070030660434337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.lor 1 (A255056 n)).toNat

end

end A254113.P15838070030660434337

/-! ## A254113.P7442638527805665597

`A010060(xor(1, A255056(n)))`
-/

namespace A254113.P7442638527805665597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.xor 1 (A255056 n)).toNat

end

end A254113.P7442638527805665597

/-! ## A254113.P2798858985422989390

`A010060(∑[A255336(n)]+1)`
-/

namespace A254113.P2798858985422989390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A254113.P2798858985422989390

/-! ## A254113.P6724011689284752219

`1-A010060(∑[A255336(n)])`
-/

namespace A254113.P6724011689284752219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A254113.P6724011689284752219

/-! ## A254113.P9468603629692686548

`A010060(2*A255057(n)+1)`
-/

namespace A254113.P9468603629692686548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (2 * A255057 n + 1).toNat

end

end A254113.P9468603629692686548

/-! ## A254113.P4134087372430446937

`A010060(A255057(n)+A255057(n)+1)`
-/

namespace A254113.P4134087372430446937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A255057 n + (A255057 n + 1)).toNat

end

end A254113.P4134087372430446937

/-! ## A254113.P12412699865696828474

`A001285(A255056(n)+1)-1`
-/

namespace A254113.P12412699865696828474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A255056 n + 1).toNat - 1

end

end A254113.P12412699865696828474

/-! ## A254113.P12379059075909531755

`1-A095190(A255056(n)+1)`
-/

namespace A254113.P12379059075909531755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A095190 (A255056 n + 1).toNat

end

end A254113.P12379059075909531755

/-!
# A254114: a(n) = A010060(A255056(n)).

The programs for A254114, there is no canonical definition to state claims against.
-/

/-! ## A254114.P599598226608324743

`A010060(A255056(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254114.P599598226608324743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A255056 n).toNat

end

end A254114.P599598226608324743

/-! ## A254114.P13264593653986496673

`1-A254113(n)`
-/

namespace A254114.P13264593653986496673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A254113 n

end

end A254114.P13264593653986496673

/-! ## A254114.P6329647897152424595

`A254377(A255056(n)+1)`
-/

namespace A254114.P6329647897152424595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A255056 n + 1).toNat

end

end A254114.P6329647897152424595

/-! ## A254114.P11337464762178756343

`A000035(A268354(n+1)+A254113(n))`
-/

namespace A254114.P11337464762178756343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A268354 (n + 1) + A254113 n).toNat

end

end A254114.P11337464762178756343

/-! ## A254114.P5413030914005717304

`xor(A254113(n), A305193(A006530(n+3)))`
-/

namespace A254114.P5413030914005717304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A254113 n) (A305193 (A006530 (n + 3)).toNat)

end

end A254114.P5413030914005717304

/-! ## A254114.P6085362707126955964

`A005187(A255057(n))%2`
-/

namespace A254114.P6085362707126955964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 (A255057 n).toNat) 2

end

end A254114.P6085362707126955964

/-! ## A254114.P14511757894309391793

`A010059(A000069(n+1)*A254113(n))`
-/

namespace A254114.P14511757894309391793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A000069 (n + 1) * A254113 n).toNat

end

end A254114.P14511757894309391793

/-! ## A254114.P6009413092765518345

`A010060(A255057(n))`
-/

namespace A254114.P6009413092765518345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A255057 n).toNat

end

end A254114.P6009413092765518345

/-! ## A254114.P15614695132364108594

`A010060(∑[A255336(n)/2])`
-/

namespace A254114.P15614695132364108594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255336 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A254114.P15614695132364108594

/-! ## A254114.P2649878748787812914

`A001285(A255056(n)/2)-1`
-/

namespace A254114.P2649878748787812914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (SequenceMachineLib.roundAway ((A255056 n : ℚ) / 2)).toNat - 1

end

end A254114.P2649878748787812914

/-! ## A254114.P8062202338923443079

`1-A010059(A255056(n)/2)`
-/

namespace A254114.P8062202338923443079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010059 (SequenceMachineLib.roundAway ((A255056 n : ℚ) / 2)).toNat

end

end A254114.P8062202338923443079

/-! ## A254114.P12028480852272691309

`A010060(∑[A255336(n)])`
-/

namespace A254114.P12028480852272691309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A254114.P12028480852272691309

/-! ## A254114.P10600504547223334267

`A010059(A255056(n)+1)`
-/

namespace A254114.P10600504547223334267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A255056 n + 1).toNat

end

end A254114.P10600504547223334267

/-! ## A254114.P13675603451464901621

`A095190(A255056(n)+1)`
-/

namespace A254114.P13675603451464901621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 (A255056 n + 1).toNat

end

end A254114.P13675603451464901621

/-! ## A254114.P1920988066146515375

`2-A001285(A255056(n)+1)`
-/

namespace A254114.P1920988066146515375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001285 (A255056 n + 1).toNat

end

end A254114.P1920988066146515375

/-! ## A254114.P573791361377673008

`A010059(2*A255057(n)+1)`
-/

namespace A254114.P573791361377673008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (2 * A255057 n + 1).toNat

end

end A254114.P573791361377673008

/-! ## A254114.P4866241311483413720

`A010059(A255057(n)+A255057(n)+1)`
-/

namespace A254114.P4866241311483413720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A255057 n + (A255057 n + 1)).toNat

end

end A254114.P4866241311483413720

/-! ## A254114.P14692364229665959817

`A095190(2*A255056(n))`
-/

namespace A254114.P14692364229665959817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 (2 * A255056 n).toNat

end

end A254114.P14692364229665959817

/-! ## A254114.P15719236503391407672

`A001285(2*A255056(n))-1`
-/

namespace A254114.P15719236503391407672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (2 * A255056 n).toNat - 1

end

end A254114.P15719236503391407672

/-!
# A254115: Permutation of natural numbers: a(n) = A254104(A048673(n)).

The programs for A254115, there is no canonical definition to state claims against.
-/

/-! ## A254115.P5071070700134415019

`A254104(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254115.P5071070700134415019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 (A048673 (n + 1)).toNat

end

end A254115.P5071070700134415019

/-! ## A254115.P5449144781045207159

`A254104(A243501(n+1)/2)`
-/

namespace A254115.P5449144781045207159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat

end

end A254115.P5449144781045207159

/-! ## A254115.P7246921592039202349

`A254104(A253885(n)/2+1)`
-/

namespace A254115.P7246921592039202349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 (SequenceMachineLib.roundAway ((A253885 n : ℚ) / 2 + 1)).toNat

end

end A254115.P7246921592039202349

/-! ## A254115.P17296114689469950434

`A254104(ceil(A003961(n+1)/2))`
-/

namespace A254115.P17296114689469950434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 ⌈(A003961 (n + 1) : ℚ) / 2⌉.toNat

end

end A254115.P17296114689469950434

/-! ## A254115.P14766565275363699218

`A254104(round(A003961(n+1)/2))`
-/

namespace A254115.P14766565275363699218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) / 2)).toNat

end

end A254115.P14766565275363699218

/-! ## A254115.P2632047952202318156

`A254104((A003961(n+1)+1)/2)`
-/

namespace A254115.P2632047952202318156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A254115.P2632047952202318156

/-! ## A254115.P12994413032973538916

`A254104(A008619(A253885(n)))`
-/

namespace A254115.P12994413032973538916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 (A008619 (A253885 n).toNat).toNat

end

end A254115.P12994413032973538916

/-! ## A254115.P12633445510891373736

`A254104(A008619(A003961(n+1)))`
-/

namespace A254115.P12633445510891373736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 (A008619 (A003961 (n + 1)).toNat).toNat

end

end A254115.P12633445510891373736

/-! ## A254115.P4283385739211480500

`A254104(A253889(A003602(A249735(n+2))))`
-/

namespace A254115.P4283385739211480500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 (A253889 (A003602 (A249735 (n + 2)).toNat).toNat).toNat

end

end A254115.P4283385739211480500

/-! ## A254115.P13325385296627232753

`A254104(A249745(A249824(n+1)))`
-/

namespace A254115.P13325385296627232753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 (A249745 (A249824 (n + 1)).toNat).toNat

end

end A254115.P13325385296627232753

/-!
# A254116: Permutation of natural numbers: a(n) = A064216(A254103(n)).

The programs for A254116, there is no canonical definition to state claims against.
-/

/-! ## A254116.P8614953892478759639

`A064216(A254103(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254116.P8614953892478759639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A254103 (n + 1)).toNat

end

end A254116.P8614953892478759639

/-!
# A254117: Permutation of natural numbers: a(n) = A254104(A249746(1+n)-1).

The programs for A254117, there is no canonical definition to state claims against.
-/

/-! ## A254117.P4057387373847654537

`(A254115(2*(n+1)+1)-1)/2`
-/

namespace A254117.P4057387373847654537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254115 (2 * (n + 1) + 1) - 1 : ℚ) / 2

end

end A254117.P4057387373847654537

/-! ## A254117.P6824217180591053557

`A254104(A249746(n+2)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254117.P6824217180591053557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 (A249746 (n + 2) - 1).toNat

end

end A254117.P6824217180591053557

/-! ## A254117.P4451757907857202335

`A254104(A249746(1+n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254117.P4451757907857202335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254104 (A249746 (1 + (n + 1)) - 1).toNat

end

end A254117.P4451757907857202335

/-! ## A254117.P16223311383395191835

`floor(A254115(2*n+3)/2)`
-/

namespace A254117.P16223311383395191835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A254115 (2 * n + 3) : ℚ) / 2⌋

end

end A254117.P16223311383395191835

/-! ## A254117.P2774966690201817574

`∑[Δ[A254115(2*n+1)]/2]`
-/

namespace A254117.P2774966690201817574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254115 (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254117.P2774966690201817574

/-! ## A254117.P15039747392887190726

`floor(∑[Δ[A254115(n+1+n)]/2])`
-/

namespace A254117.P15039747392887190726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254115 (n + 1 + n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A254117.P15039747392887190726

/-! ## A254117.P12106175064187240312

`A014682(A254115(2*n+3)-1)`
-/

namespace A254117.P12106175064187240312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A254115 (2 * n + 3) - 1).toNat

end

end A254117.P12106175064187240312

/-! ## A254117.P7371014161871586025

`A123108(A254115(2*n+3))`
-/

namespace A254117.P7371014161871586025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A254115 (2 * n + 3)).toNat

end

end A254117.P7371014161871586025

/-! ## A254117.P6533864287758367863

`A004525(A254115(2*n+3)-1)`
-/

namespace A254117.P6533864287758367863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A254115 (2 * n + 3) - 1).toNat

end

end A254117.P6533864287758367863

/-! ## A254117.P10349435627175358555

`A110654(A254115(2*n+3)-1)`
-/

namespace A254117.P10349435627175358555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A254115 (2 * n + 3) - 1).toNat

end

end A254117.P10349435627175358555

/-! ## A254117.P4331226093742114769

`A003602(A254115(2*n+3)-2)`
-/

namespace A254117.P4331226093742114769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A254115 (2 * n + 3) - 2).toNat

end

end A254117.P4331226093742114769

/-! ## A254117.P7904325355841208191

`A008619(A254115(2*n+3)-2)`
-/

namespace A254117.P7904325355841208191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A254115 (2 * n + 3) - 2).toNat

end

end A254117.P7904325355841208191

/-! ## A254117.P5654035682210569491

`A004525(xor(1, A254115(2*n+3)))`
-/

namespace A254117.P5654035682210569491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.xor 1 (A254115 (2 * n + 3))).toNat

end

end A254117.P5654035682210569491

/-! ## A254117.P7944483653647696842

`A110654(xor(1, A254115(2*n+3)))`
-/

namespace A254117.P7944483653647696842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.xor 1 (A254115 (2 * n + 3))).toNat

end

end A254117.P7944483653647696842

/-! ## A254117.P11130217820962153248

`A004526(A254104(A254049(n+2)))`
-/

namespace A254117.P11130217820962153248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A254104 (A254049 (n + 2)).toNat).toNat

end

end A254117.P11130217820962153248

/-!
# A254118: Permutation of natural numbers: a(n) = A249745(1+A254103(n)) - 1.

The programs for A254118, there is no canonical definition to state claims against.
-/

/-! ## A254118.P1609305824550518867

`(A254116(2*(n+1)+1)-1)/2`
-/

namespace A254118.P1609305824550518867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254116 (2 * (n + 1) + 1) - 1 : ℚ) / 2

end

end A254118.P1609305824550518867

/-! ## A254118.P11574442523403921274

`A249745(1+A254103(n+1))-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254118.P11574442523403921274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249745 (1 + A254103 (n + 1)).toNat - 1

end

end A254118.P11574442523403921274

/-! ## A254118.P9039076101769245652

`floor(A254116(2*n+3)/2)`
-/

namespace A254118.P9039076101769245652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A254116 (2 * n + 3) : ℚ) / 2⌋

end

end A254118.P9039076101769245652

/-! ## A254118.P17687259089201503263

`A004526(A254116(2*n+3))`
-/

namespace A254118.P17687259089201503263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A254116 (2 * n + 3)).toNat

end

end A254118.P17687259089201503263

/-! ## A254118.P3266037706279364292

`A029579(A254116(2*n+3)-3)`
-/

namespace A254118.P3266037706279364292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A254116 (2 * n + 3) - 3).toNat

end

end A254118.P3266037706279364292

/-! ## A254118.P11684424857097740189

`A106466(A254116(2*n+3)-3)`
-/

namespace A254118.P11684424857097740189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (A254116 (2 * n + 3) - 3).toNat

end

end A254118.P11684424857097740189

/-! ## A254118.P4642138548462737112

`A285712(A254103(2*n+3))-1`
-/

namespace A254118.P4642138548462737112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285712 (A254103 (2 * n + 3)).toNat - 1

end

end A254118.P4642138548462737112

/-!
# A254119: a(n) = A213709(n) - A255071(n).

The programs for A254119, the canonical program `A254119.P11166563169654256296` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254119 has offset 1).

The definition of A254119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254119.P11166563169654256296

`A213709(n+1)-A255071(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A254119

/-- `A213709(n+1)-A255071(n+1)` -/
def P11166563169654256296.Spec : Prop :=
  ∀ n, P11166563169654256296.a n = A254119 (n + 1)

theorem P11166563169654256296.correct : P11166563169654256296.Spec := by
  intro n
  simp only [A254119, Nat.add_sub_cancel]

end A254119

/-! ## A254119.P1565285467442552347

`A213709(n+1)+A255061(n+1)-A255061(n+2)`
-/

namespace A254119.P1565285467442552347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213709 (n + 1) + (A255061 (n + 1) - A255061 (n + 2))

end

end A254119.P1565285467442552347

namespace A254119

/-- `A213709(n+1)+A255061(n+1)-A255061(n+2)` -/
def P1565285467442552347.Spec : Prop :=
  ∀ n, P1565285467442552347.a n = A254119 (n + 1)

theorem P1565285467442552347.correct : P1565285467442552347.Spec := by
  intro n
  simp only [A254119, Nat.add_sub_cancel, A254119.P1565285467442552347.a, A254119.P11166563169654256296.a, A213709, A213709.P17085692847900461859.a, A255061, A255061.P11875405185225927149.a, A255071, A255071.P3876478389989175484.a, A000918, A000918.P14329454465793069288.a, A071542, A071542.P16885098736669888413.a, A255072, A255072.P11066675909169792664.a, A000120, A000120.P2816527436160941581.a, A236840, A236840.P5330150570220508668.a, A005187, A005187.P3874015513960485494.a, A005811, A005811.P8696411420205566785.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254119

/-!
# A254120: a(n) = A254118(2^n).

The programs for A254120, there is no canonical definition to state claims against.
-/

/-! ## A254120.P3422495488960450042

`A254118(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254120.P3422495488960450042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254118 (2 ^ n)

end

end A254120.P3422495488960450042

/-! ## A254120.P14151068451323338110

`A254118(A000079(n))+char[16]`
-/

namespace A254120.P14151068451323338110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254118 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A254120.P14151068451323338110

/-! ## A254120.P9592288654589122071

`A326546(n)+A254118(A000079(n))`
-/

namespace A254120.P9592288654589122071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326546 n + A254118 (A000079 n).toNat

end

end A254120.P9592288654589122071

/-! ## A254120.P6461391823281146483

`A254118(A000079(n))*A303694(n)`
-/

namespace A254120.P6461391823281146483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254118 (A000079 n).toNat * A303694 n

end

end A254120.P6461391823281146483

/-! ## A254120.P12475235129613500249

`A254118(A000079(n))%A001576(n)`
-/

namespace A254120.P12475235129613500249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254118 (A000079 n).toNat) (A001576 n)

end

end A254120.P12475235129613500249

/-!
# A254122: Numbers requiring two Fibonacci numbers to build using + or *.

The programs for A254122, there is no canonical definition to state claims against.
-/

/-! ## A254122.P16016272293160171560

`eq[2, A254123(n+1)]+1`
-/

namespace A254122.P16016272293160171560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A254122.P16016272293160171560

/-! ## A254122.P3913674930249751900

`eq[2, A254123(n^floor(atan(n)))]`
-/

namespace A254122.P3913674930249751900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254123 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254122.P3913674930249751900

/-! ## A254122.P5436041392730633339

`lt[1, 2*a(A254123(n)-1)]` with `a(0)=0, a(1)=1`
-/

namespace A254122.P5436041392730633339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 * f2 (A254123 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A254122.P5436041392730633339

/-! ## A254122.P6863029300746098114

`eq[2, A254123(A028310(n))]`
-/

namespace A254122.P6863029300746098114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254123 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254122.P6863029300746098114

/-! ## A254122.P11969189424980453720

`A020725(eq[2, A254123(n+1)])`
-/

namespace A254122.P11969189424980453720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254122.P11969189424980453720

/-! ## A254122.P2316181628021154636

`A065475(eq[2, A254123(n+1)])`
-/

namespace A254122.P2316181628021154636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254122.P2316181628021154636

/-! ## A254122.P11977885867747736340

`eq[2, A254123(A233583(n+1))]`
-/

namespace A254122.P11977885867747736340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254123 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254122.P11977885867747736340

/-! ## A254122.P16292428435811640389

`eq[2, A254123(A065033(2*n))]`
-/

namespace A254122.P16292428435811640389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254123 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254122.P16292428435811640389

/-! ## A254122.P6724230027218821019

`eq[2, A254123(A123108(2*n))]`
-/

namespace A254122.P6724230027218821019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254123 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254122.P6724230027218821019

/-! ## A254122.P13411964128247273056

`eq[2, A254123(1-(n-A004273(n)))]`
-/

namespace A254122.P13411964128247273056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254123 (1 - ((n : ℤ) - A004273 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254122.P13411964128247273056

/-!
# A254123: Least number of terms needed to build n from Fibonacci numbers using + and *.

The programs for A254123, there is no canonical definition to state claims against.
-/

/-! ## A254123.P10195398818493270650

`A060502(A055881(n+8)*A060112(n+2))`
-/

namespace A254123.P10195398818493270650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A055881 (n + 8) * A060112 (n + 2)).toNat

end

end A254123.P10195398818493270650

/-! ## A254123.P16038260274006040966

`A060502(lcm(A055881(n+2), A060112(n+2)))`
-/

namespace A254123.P16038260274006040966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (Int.lcm (A055881 (n + 2)) (A060112 (n + 2)))

end

end A254123.P16038260274006040966

/-! ## A254123.P10300391381242073109

`A007895(n+1-A105424(n²)%2)`
-/

namespace A254123.P10300391381242073109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 ((n + 1 : ℤ) - Int.tmod (A105424 (n ^ 2)) 2).toNat

end

end A254123.P10300391381242073109

/-! ## A254123.P16923160025886570875

`A007895(n+1)-A025437(A136868(n))`
-/

namespace A254123.P16923160025886570875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (n + 1) - A025437 (A136868 n).toNat

end

end A254123.P16923160025886570875

/-! ## A254123.P6796657493689885186

`A007895(n+1)-A276077(A208879(n))`
-/

namespace A254123.P6796657493689885186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (n + 1) - A276077 (A208879 n).toNat

end

end A254123.P6796657493689885186

/-!
# A254124: The number of tilings of a 3 X n rectangle using integer length rectangles with at least one side of length 1, i.e., tiles are 1 X 1, 1 X 2, ..., 1 X n, 2 X 1, 3 X 1.

The programs for A254124, the canonical program `A254124.P3181535143212909741` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254124 has offset 0).

The definition of A254124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254124.P3319295696793795038

`ogf((1-8x+5x^2)/(1-12x+24x^2-5x^3))`
-/

namespace A254124.P3319295696793795038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8, 5] [1, -12, 24, -5] n

end

end A254124.P3319295696793795038

namespace A254124

/-- `ogf((1-8x+5x^2)/(1-12x+24x^2-5x^3))` -/
def P3319295696793795038.Spec : Prop :=
  ∀ n, P3319295696793795038.a n = A254124 n

end A254124

/-! ## A254124.P3181535143212909741

`12*a(n-1)-24*a(n-2)+5*a(n-3)` with `a(0)=1, a(1)=4, a(2)=29`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A254124

/-- `12*a(n-1)-24*a(n-2)+5*a(n-3)` -/
def P3181535143212909741.Spec : Prop :=
  ∀ n, P3181535143212909741.a n = A254124 n

theorem P3181535143212909741.correct : P3181535143212909741.Spec := by
  intro n
  simp only [A254124]

end A254124

/-! ## A254124.P8359564689242856521

`A254414(A167614(n+2))`
-/

namespace A254124.P8359564689242856521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (A167614 (n + 2)).toNat

end

end A254124.P8359564689242856521

namespace A254124

/-- `A254414(A167614(n+2))` -/
def P8359564689242856521.Spec : Prop :=
  ∀ n, P8359564689242856521.a n = A254124 n

end A254124

/-! ## A254124.P14316723647513932209

`A254414(∑[n+3]+n+3)`
-/

namespace A254124.P14316723647513932209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A254124.P14316723647513932209

namespace A254124

/-- `A254414(∑[n+3]+n+3)` -/
def P14316723647513932209.Spec : Prop :=
  ∀ n, P14316723647513932209.a n = A254124 n

end A254124

/-!
# A254125: The number of tilings of a 4 X n rectangle using integer length rectangles with at least one side of length 1, i.e., tiles are 1 X 1, 1 X 2, ..., 1 X n, 2 X 1, 3 X 1, 4 X 1.

The programs for A254125, there is no canonical definition to state claims against.
-/

/-! ## A254125.P3902572057351658864

`A254414(A056000(n)+14)`
-/

namespace A254125.P3902572057351658864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (A056000 n + 14).toNat

end

end A254125.P3902572057351658864

/-! ## A254125.P15439019974171882999

`A254414(eq[4, A002262(n)])`
-/

namespace A254125.P15439019974171882999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254125.P15439019974171882999

/-! ## A254125.P7601803463360425309

`A254414(eq[16, A059268(n)])`
-/

namespace A254125.P7601803463360425309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254125.P7601803463360425309

/-! ## A254125.P15137254878335414058

`A254414(A052905(n+2))`
-/

namespace A254125.P15137254878335414058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (A052905 (n + 2)).toNat

end

end A254125.P15137254878335414058

/-! ## A254125.P13194859978624357373

`A254414(eq[4, A025581(n)])`
-/

namespace A254125.P13194859978624357373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254125.P13194859978624357373

/-!
# A254126: The number of tilings of a 5 X n rectangle using integer length rectangles with at least one length of size 1, i.e., tiles are 1 X 1, 1 X 2, ..., 1 X n, 2 X 1, 3 X 1, 4 X 1, 5 X 1.

The programs for A254126, there is no canonical definition to state claims against.
-/

/-! ## A254126.P18143052328589229134

`A254414(eq[5, A002262(n)])`
-/

namespace A254126.P18143052328589229134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254126.P18143052328589229134

/-! ## A254126.P5003331896304700424

`A254414(eq[5, A025581(n)])`
-/

namespace A254126.P5003331896304700424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254126.P5003331896304700424

/-! ## A254126.P3219917454928265959

`A254414(eq[6, A193739(n)])`
-/

namespace A254126.P3219917454928265959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254126.P3219917454928265959

/-! ## A254126.P1216109112179488347

`A254414(eq[7, A140207(n)])`
-/

namespace A254126.P1216109112179488347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254126.P1216109112179488347

/-! ## A254126.P11651787968860798766

`A254414(eq[11, A099375(n)])`
-/

namespace A254126.P11651787968860798766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254126.P11651787968860798766

/-!
# A254127: The number of tilings of an n X n rectangle using integer length rectangles with at least one side of length 1, i.e., tiles are of size (1 X i) or (i X 1) with 1<=i<=n.

The programs for A254127, there is no canonical definition to state claims against.
-/

/-! ## A254127.P17437488322486084448

`A254414(∑[4*n])`
-/

namespace A254127.P17437488322486084448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254127.P17437488322486084448

/-! ## A254127.P7930089743945221466

`A254414(A046092(n))^ceil(sin(n)²)`
-/

namespace A254127.P7930089743945221466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254414 (A046092 n).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A254127.P7930089743945221466

/-! ## A254127.P696212538072650172

`A254414(A046092(n))+A025439(n)`
-/

namespace A254127.P696212538072650172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (A046092 n).toNat + A025439 n

end

end A254127.P696212538072650172

/-! ## A254127.P13279571469941037459

`A254414(A046092(n))+A185246(n)`
-/

namespace A254127.P13279571469941037459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (A046092 n).toNat + A185246 n

end

end A254127.P13279571469941037459

/-! ## A254127.P14578735542734105098

`A254414(A046092(n))+A185284(n)`
-/

namespace A254127.P14578735542734105098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (A046092 n).toNat + A185284 n

end

end A254127.P14578735542734105098

/-!
# A254128: Number of binary strings of length n that begin with an odd-length palindrome.

The programs for A254128, the canonical program `A254128.P15982088991823615533` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254128 has offset 0).

The definition of A254128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254128.P15982088991823615533

`2*A094536(abs(1-n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A254128

/-- `2*A094536(abs(1-n))` -/
def P15982088991823615533.Spec : Prop :=
  ∀ n, P15982088991823615533.a n = A254128 n

theorem P15982088991823615533.correct : P15982088991823615533.Spec := by
  intro n
  simp only [A254128]

end A254128

/-! ## A254128.P17796295861704077875

`4*A094537(abs(1-n))`
-/

namespace A254128.P17796295861704077875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A094537 |1 - (n : ℤ)|.toNat

end

end A254128.P17796295861704077875

namespace A254128

/-- `4*A094537(abs(1-n))` -/
def P17796295861704077875.Spec : Prop :=
  ∀ n, P17796295861704077875.a n = A254128 n

end A254128

/-! ## A254128.P14923330401412841118

`2*A342240(A212342(n))`
-/

namespace A254128.P14923330401412841118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342240 (A212342 n).toNat

end

end A254128.P14923330401412841118

namespace A254128

/-- `2*A342240(A212342(n))` -/
def P14923330401412841118.Spec : Prop :=
  ∀ n, P14923330401412841118.a n = A254128 n

end A254128

/-! ## A254128.P14689337117697650359

`A008586(A094537(abs(1-n)))`
-/

namespace A254128.P14689337117697650359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A094537 |1 - (n : ℤ)|.toNat).toNat

end

end A254128.P14689337117697650359

namespace A254128

/-- `A008586(A094537(abs(1-n)))` -/
def P14689337117697650359.Spec : Prop :=
  ∀ n, P14689337117697650359.a n = A254128 n

end A254128

/-!
# A254131: Rectangular array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = A254067(n,k) - A257499(n,k), n,k >= 1.

The programs for A254131, there is no canonical definition to state claims against.
-/

/-! ## A254131.P11810447524202575269

`A254067(n+1)-A257499(n+1)`
-/

namespace A254131.P11810447524202575269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254067 (n + 1) - A257499 (n + 1)

end

end A254131.P11810447524202575269

/-! ## A254131.P40061678003161473

`A254067(n+1)-(2*A258415(n+1)-1)`
-/

namespace A254131.P40061678003161473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254067 (n + 1) - (2 * A258415 (n + 1) - 1)

end

end A254131.P40061678003161473

/-! ## A254131.P3922361661254446514

`A254067(n+1)-A004273(A258415(n+1))`
-/

namespace A254131.P3922361661254446514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254067 (n + 1) - A004273 (A258415 (n + 1)).toNat

end

end A254131.P3922361661254446514

/-! ## A254131.P1866575195002944072

`A254067(n+1)-A005408(A258415(n+1)-1)`
-/

namespace A254131.P1866575195002944072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254067 (n + 1) - A005408 (A258415 (n + 1) - 1).toNat

end

end A254131.P1866575195002944072

/-! ## A254131.P14389457406164551145

`A254067(n+1)-A014681(2*A258415(n+1))`
-/

namespace A254131.P14389457406164551145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254067 (n + 1) - A014681 (2 * A258415 (n + 1)).toNat

end

end A254131.P14389457406164551145

/-!
# A254132: a(0)=1 and a(1)=2, then each term is x + y + x*y where x and y are the 2 last terms.

The programs for A254132, the canonical program `A254132.P10806994663292580795` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254132 has offset 0).

The definition of A254132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254132.P10806994663292580795

`a(n-1)+a(n-2)+a(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A254132

/-- `a(n-1)+a(n-2)+a(n-1)*a(n-2)` -/
def P10806994663292580795.Spec : Prop :=
  ∀ n, (P10806994663292580795.a n : ℤ) = A254132 n

theorem P10806994663292580795.correct : P10806994663292580795.Spec := by
  intro n
  simp only [A254132]

end A254132

/-! ## A254132.P10013959343286418290

`(a(n-1)+1)*(a(n-2)+1)-1` with `a(0)=1, a(1)=2`
-/

namespace A254132.P10013959343286418290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + 1) * (a (n - 2) + 1) - 1

end

end A254132.P10013959343286418290

namespace A254132

/-- `(a(n-1)+1)*(a(n-2)+1)-1` -/
def P10013959343286418290.Spec : Prop :=
  ∀ n, P10013959343286418290.a n = A254132 n

end A254132

/-! ## A254132.P10210407857475733840

`lcm(a(n-1), a(n-2))+a(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A254132.P10210407857475733840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lcm (a (n - 1)) (a (n - 2)) + (a (n - 2) + a (n - 1))

end

end A254132.P10210407857475733840

namespace A254132

/-- `lcm(a(n-1), a(n-2))+a(n-2)+a(n-1)` -/
def P10210407857475733840.Spec : Prop :=
  ∀ n, (P10210407857475733840.a n : ℤ) = A254132 n

end A254132

/-! ## A254132.P17235140374140133613

`A000304(n+2)-1`
-/

namespace A254132.P17235140374140133613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000304 (n + 2) - 1

end

end A254132.P17235140374140133613

namespace A254132

/-- `A000304(n+2)-1` -/
def P17235140374140133613.Spec : Prop :=
  ∀ n, P17235140374140133613.a n = A254132 n

end A254132

/-! ## A254132.P17263836083726309287

`A258948(n+2)/2`
-/

namespace A254132.P17263836083726309287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258948 (n + 2) : ℚ) / 2

end

end A254132.P17263836083726309287

namespace A254132

/-- `A258948(n+2)/2` -/
def P17263836083726309287.Spec : Prop :=
  ∀ n, P17263836083726309287.a n = (A254132 n : ℚ)

end A254132

/-!
# A254136: Indices of pentagonal numbers (A000326) which are also centered hexagonal numbers (A003215).

The programs for A254136, there is no canonical definition to state claims against.
-/

/-! ## A254136.P1776881786899666679

`floor(sqrt(2)*A254137(n+1))`
-/

namespace A254136.P1776881786899666679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A254137 (n + 1) : ℝ)⌋

end

end A254136.P1776881786899666679

/-! ## A254136.P4023200203172571647

`A251896(n+1)+A251895(n+1)`
-/

namespace A254136.P4023200203172571647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251896 (n + 1) + A251895 (n + 1)

end

end A254136.P4023200203172571647

/-! ## A254136.P9280131117854833965

`floor(A254137(n+1)+A251896(n+1)/2)`
-/

namespace A254136.P9280131117854833965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A254137 (n + 1) : ℚ) + (A251896 (n + 1) : ℚ) / 2⌋

end

end A254136.P9280131117854833965

/-! ## A254136.P35734217464666709

`A251896(n+1)+A006451(n%2+4*n)/3`
-/

namespace A254136.P35734217464666709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251896 (n + 1) : ℚ) + (A006451 (n % 2 + 4 * n) : ℚ) / 3

end

end A254136.P35734217464666709

/-! ## A254136.P15684701975831600436

`A251896(n+1)+A006451(A047615(n+1))/3`
-/

namespace A254136.P15684701975831600436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251896 (n + 1) : ℚ) + (A006451 (A047615 (n + 1)).toNat : ℚ) / 3

end

end A254136.P15684701975831600436

/-!
# A254137: Indices of centered hexagonal numbers (A003215) which are also pentagonal numbers (A000326).

The programs for A254137, there is no canonical definition to state claims against.
-/

/-! ## A254137.P3900082459397795238

`∑[3^(n%2)*A001541(2*n)]`
-/

namespace A254137.P3900082459397795238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℤ) * A001541 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254137.P3900082459397795238

/-! ## A254137.P11516201397435849606

`∑[A010684(n)*A056771(n)]`
-/

namespace A254137.P11516201397435849606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A056771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254137.P11516201397435849606

/-! ## A254137.P7783254234543220348

`record[∑[A123335(A047444(n+1))]]`
-/

namespace A254137.P7783254234543220348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 (A047444 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254137.P7783254234543220348

/-! ## A254137.P12816980052139963065

`∑[A001541(2*n)*A010684(n)]`
-/

namespace A254137.P12816980052139963065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (2 * n) * A010684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254137.P12816980052139963065

/-! ## A254137.P5338596264234099066

`∑[A001541(2*n)*A176040(n+1)]`
-/

namespace A254137.P5338596264234099066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (2 * n) * A176040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254137.P5338596264234099066

/-!
# A254142: a(n) = (9*n+10)*binomial(n+9,9)/10.

The programs for A254142, the canonical program `A254142.P2828002348033351208` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254142 has offset 0).

The definition of A254142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254142.P2828002348033351208

`(9*n+10)*C(n+9, 9)/10`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A254142

/-- `(9*n+10)*C(n+9, 9)/10` -/
def P2828002348033351208.Spec : Prop :=
  ∀ n, P2828002348033351208.a n = (A254142 n : ℚ)

end A254142

/-! ## A254142.P708098107092791712

`∑[(n+1)*C(n+8, 8)]`
-/

namespace A254142.P708098107092791712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 8) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254142.P708098107092791712

namespace A254142

/-- `∑[(n+1)*C(n+8, 8)]` -/
def P708098107092791712.Spec : Prop :=
  ∀ n, (P708098107092791712.a n : ℤ) = A254142 n

end A254142

/-! ## A254142.P13332813875924776201

`(n+1)*C(n+8, 8)+a(n-1)` with `a(0)=1`
-/

namespace A254142.P13332813875924776201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * Nat.choose (n + 8) 8 + a (n - 1)

end

end A254142.P13332813875924776201

namespace A254142

/-- `(n+1)*C(n+8, 8)+a(n-1)` -/
def P13332813875924776201.Spec : Prop :=
  ∀ n, (P13332813875924776201.a n : ℤ) = A254142 n

end A254142

/-! ## A254142.P799721948423731825

`∑[(n+1)*∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]]`
-/

namespace A254142.P799721948423731825
noncomputable section

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254142.P799721948423731825

namespace A254142

/-- `∑[(n+1)*∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]]` -/
def P799721948423731825.Spec : Prop :=
  ∀ n, (P799721948423731825.a n : ℤ) = A254142 n

end A254142

/-! ## A254142.P11082914270868963426

`and(∑[A056003(n)], -1)`
-/

namespace A254142.P11082914270868963426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A254142.P11082914270868963426

namespace A254142

/-- `and(∑[A056003(n)], -1)` -/
def P11082914270868963426.Spec : Prop :=
  ∀ n, P11082914270868963426.a n = A254142 n

end A254142

/-! ## A254142.P86346931417539781

`a(n-1)+(n+1)*A000581(n+8)` with `a(0)=1`
-/

namespace A254142.P86346931417539781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A000581 (n + 8)

end

end A254142.P86346931417539781

namespace A254142

/-- `a(n-1)+(n+1)*A000581(n+8)` -/
def P86346931417539781.Spec : Prop :=
  ∀ n, P86346931417539781.a n = A254142 n

end A254142

/-! ## A254142.P9324871003503993695

`or(∑[A056003(n)], A000007(n))`
-/

namespace A254142.P9324871003503993695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A254142.P9324871003503993695

namespace A254142

/-- `or(∑[A056003(n)], A000007(n))` -/
def P9324871003503993695.Spec : Prop :=
  ∀ n, P9324871003503993695.a n = A254142 n

end A254142

/-! ## A254142.P15582746583701099860

`∑[A056003(n)]^log2(A040000(n))`
-/

namespace A254142.P15582746583701099860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056003 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (Real.logb 2 (A040000 n : ℝ))

end

end A254142.P15582746583701099860

namespace A254142

/-- `∑[A056003(n)]^log2(A040000(n))` -/
def P15582746583701099860.Spec : Prop :=
  ∀ n, P15582746583701099860.a n = (A254142 n : ℝ)

end A254142

/-! ## A254142.P7281216067159839581

`A056128(n+1)-(A056128(n)+A056003(n+1))`
-/

namespace A254142.P7281216067159839581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056128 (n + 1) - (A056128 n + A056003 (n + 1))

end

end A254142.P7281216067159839581

namespace A254142

/-- `A056128(n+1)-(A056128(n)+A056003(n+1))` -/
def P7281216067159839581.Spec : Prop :=
  ∀ n, P7281216067159839581.a n = A254142 n

end A254142

/-! ## A254142.P352157895156928618

`∑[A056003(n)]%A208036(n+1)`
-/

namespace A254142.P352157895156928618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A208036 (n + 1))

end

end A254142.P352157895156928618

namespace A254142

/-- `∑[A056003(n)]%A208036(n+1)` -/
def P352157895156928618.Spec : Prop :=
  ∀ n, P352157895156928618.a n = A254142 n

end A254142

/-!
# A254143: Products of any two not necessarily distinct terms of A237424.

The programs for A254143, there is no canonical definition to state claims against.
-/

/-! ## A254143.P700502621295693021

`A254323(A077168(n))`
-/

namespace A254143.P700502621295693021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254323 (A077168 n).toNat

end

end A254143.P700502621295693021

/-! ## A254143.P7814062201717346318

`A254323(log2(A005843(2^n)))`
-/

namespace A254143.P7814062201717346318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254323 (SequenceMachineLib.roundAway (Real.logb 2 (A005843 (2 ^ n) : ℝ))).toNat

end

end A254143.P7814062201717346318

/-! ## A254143.P730881282920676284

`record[A254323(A194053(n+1))]`
-/

namespace A254143.P730881282920676284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254323 (A194053 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254143.P730881282920676284

/-! ## A254143.P987388597086480033

`A254323(A187829(n+2)-1)`
-/

namespace A254143.P987388597086480033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254323 (A187829 (n + 2) - 1).toNat

end

end A254143.P987388597086480033

/-! ## A254143.P3008363763966405919

`A008884(A001034(n+3))*A254323(n+1)`
-/

namespace A254143.P3008363763966405919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008884 (A001034 (n + 3)).toNat * A254323 (n + 1)

end

end A254143.P3008363763966405919

/-!
# A254144: a(n) = 1*6^n + 2*5^n + 3*4^n + 4*3^n + 5*2^n + 6*1^n.

The programs for A254144, the canonical program `A254144.P2458627174334544638` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254144 has offset 0).

The definition of A254144 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+2*5^n+3*4^n+4*3^n+5*2^n+6` (program `A254144.P2458627174334544638`, by `A254144.P2458627174334544638.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254144.P2458627174334544638

`6^n+2*5^n+3*4^n+4*3^n+5*2^n+6`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A254144

/-- `6^n+2*5^n+3*4^n+4*3^n+5*2^n+6` -/
def P2458627174334544638.Spec : Prop :=
  ∀ n, (P2458627174334544638.a n : ℤ) = A254144 n

theorem P2458627174334544638.correct : P2458627174334544638.Spec := by
  intro n
  simp only [A254144]

end A254144

/-! ## A254144.P17613229873798649428

`1*6^n+2*5^n+3*4^n+4*3^n+5*2^n+6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254144.P17613229873798649428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 * 6 ^ n + 2 * 5 ^ n + 3 * 4 ^ n + 4 * 3 ^ n + 5 * 2 ^ n + 6

end

end A254144.P17613229873798649428

namespace A254144

/-- `1*6^n+2*5^n+3*4^n+4*3^n+5*2^n+6` -/
def P17613229873798649428.Spec : Prop :=
  ∀ n, (P17613229873798649428.a n : ℤ) = A254144 n

theorem P17613229873798649428.correct : P17613229873798649428.Spec := by
  intro n
  simp only [A254144, Nat.add_sub_cancel, A254144.P17613229873798649428.a, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A254144

/-! ## A254144.P14842253356629583137

`6^n+2*5^n+3*4^n+4*3^n+5*2^n+6*1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254144.P14842253356629583137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n + 2 * 5 ^ n + 3 * 4 ^ n + 4 * 3 ^ n + 5 * 2 ^ n + 6 * 1

end

end A254144.P14842253356629583137

namespace A254144

/-- `6^n+2*5^n+3*4^n+4*3^n+5*2^n+6*1` -/
def P14842253356629583137.Spec : Prop :=
  ∀ n, (P14842253356629583137.a n : ℤ) = A254144 n

theorem P14842253356629583137.correct : P14842253356629583137.Spec := by
  intro n
  simp only [A254144, Nat.add_sub_cancel, A254144.P14842253356629583137.a, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]

end A254144

/-! ## A254144.P475783021895220101

`abs(A254364(n)-A254463(n))`
-/

namespace A254144.P475783021895220101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254364 n - A254463 n|

end

end A254144.P475783021895220101

namespace A254144

/-- `abs(A254364(n)-A254463(n))` -/
def P475783021895220101.Spec : Prop :=
  ∀ n, P475783021895220101.a n = A254144 n

end A254144

/-! ## A254144.P11989274318343391941

`(A254463(n)-A254364(n))%A254465(n)`
-/

namespace A254144.P11989274318343391941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254463 n - A254364 n) (A254465 n)

end

end A254144.P11989274318343391941

namespace A254144

/-- `(A254463(n)-A254364(n))%A254465(n)` -/
def P11989274318343391941.Spec : Prop :=
  ∀ n, P11989274318343391941.a n = A254144 n

end A254144

/-! ## A254144.P6534099825680317246

`(A254463(n)-A254364(n))*A145111(∑[n])`
-/

namespace A254144.P6534099825680317246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254463 n - A254364 n) * A145111 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254144.P6534099825680317246

namespace A254144

/-- `(A254463(n)-A254364(n))*A145111(∑[n])` -/
def P6534099825680317246.Spec : Prop :=
  ∀ n, P6534099825680317246.a n = A254144 n

end A254144

/-! ## A254144.P2719944604373399973

`(A254463(n)-A254364(n))*A010873(A001844(n))`
-/

namespace A254144.P2719944604373399973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254463 n - A254364 n) * A010873 (A001844 n).toNat

end

end A254144.P2719944604373399973

namespace A254144

/-- `(A254463(n)-A254364(n))*A010873(A001844(n))` -/
def P2719944604373399973.Spec : Prop :=
  ∀ n, P2719944604373399973.a n = A254144 n

end A254144

/-! ## A254144.P15102181596791997390

`abs(A001554(n)-A254145(n))`
-/

namespace A254144.P15102181596791997390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001554 n - A254145 n|

end

end A254144.P15102181596791997390

namespace A254144

/-- `abs(A001554(n)-A254145(n))` -/
def P15102181596791997390.Spec : Prop :=
  ∀ n, P15102181596791997390.a n = A254144 n

end A254144

/-! ## A254144.P5556332748671332995

`(A254364(n)-A254463(n))*A008683(A038562(n+2))`
-/

namespace A254144.P5556332748671332995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254364 n - A254463 n) * A008683 (A038562 (n + 2)).toNat

end

end A254144.P5556332748671332995

namespace A254144

/-- `(A254364(n)-A254463(n))*A008683(A038562(n+2))` -/
def P5556332748671332995.Spec : Prop :=
  ∀ n, P5556332748671332995.a n = A254144 n

end A254144

/-! ## A254144.P15477488083154497451

`(A254145(n)-A001554(n))%A254147(n)`
-/

namespace A254144.P15477488083154497451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254145 n - A001554 n) (A254147 n)

end

end A254144.P15477488083154497451

namespace A254144

/-- `(A254145(n)-A001554(n))%A254147(n)` -/
def P15477488083154497451.Spec : Prop :=
  ∀ n, P15477488083154497451.a n = A254144 n

end A254144

/-!
# A254145: a(n) = 1*7^n + 2*6^n + 3*5^n + 4*4^n + 5*3^n + 6*2^n + 7*1^n.

The programs for A254145, the canonical program `A254145.P1687355752389577353` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254145 has offset 0).

The definition of A254145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254145.P1687355752389577353

`A254144(n)+A001554(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A254145

/-- `A254144(n)+A001554(n)` -/
def P1687355752389577353.Spec : Prop :=
  ∀ n, P1687355752389577353.a n = A254145 n

theorem P1687355752389577353.correct : P1687355752389577353.Spec := by
  intro n
  simp only [A254145]

end A254145

/-! ## A254145.P873799450383960043

`A254464(n)-A254463(n)`
-/

namespace A254145.P873799450383960043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254464 n - A254463 n

end

end A254145.P873799450383960043

namespace A254145

/-- `A254464(n)-A254463(n)` -/
def P873799450383960043.Spec : Prop :=
  ∀ n, P873799450383960043.a n = A254145 n

theorem P873799450383960043.correct : P873799450383960043.Spec := by
  intro n
  simp only [A254145, Nat.add_sub_cancel, A254145.P873799450383960043.a, A254145.P1687355752389577353.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, A254463, A254463.P7377881334045121171.a, A254464, A254464.P2241084014738837999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254145

/-! ## A254145.P10865685474118188681

`A000420(n)+A254144(n)+A001553(n)`
-/

namespace A254145.P10865685474118188681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n + (A254144 n + A001553 n)

end

end A254145.P10865685474118188681

namespace A254145

/-- `A000420(n)+A254144(n)+A001553(n)` -/
def P10865685474118188681.Spec : Prop :=
  ∀ n, P10865685474118188681.a n = A254145 n

theorem P10865685474118188681.correct : P10865685474118188681.Spec := by
  intro n
  simp only [A254145, Nat.add_sub_cancel, A254145.P10865685474118188681.a, A254145.P1687355752389577353.a, A000420, A000420.P3695589171832359676.a, A001553, A001553.P11361571009777096566.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254145

/-! ## A254145.P12490121811590739013

`A001553(n)+A254031(n)+A001554(n)`
-/

namespace A254145.P12490121811590739013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001553 n + (A254031 n + A001554 n)

end

end A254145.P12490121811590739013

namespace A254145

/-- `A001553(n)+A254031(n)+A001554(n)` -/
def P12490121811590739013.Spec : Prop :=
  ∀ n, P12490121811590739013.a n = A254145 n

theorem P12490121811590739013.correct : P12490121811590739013.Spec := by
  intro n
  simp only [A254145, Nat.add_sub_cancel, A254145.P12490121811590739013.a, A254145.P1687355752389577353.a, A001553, A001553.P11361571009777096566.a, A001554, A001554.P2025650633643354615.a, A254031, A254031.P9701992009848056109.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254145

/-! ## A254145.P12780459838029658953

`A254146(n)-A001555(n)`
-/

namespace A254145.P12780459838029658953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254146 n - A001555 n

end

end A254145.P12780459838029658953

namespace A254145

/-- `A254146(n)-A001555(n)` -/
def P12780459838029658953.Spec : Prop :=
  ∀ n, P12780459838029658953.a n = A254145 n

theorem P12780459838029658953.correct : P12780459838029658953.Spec := by
  intro n
  simp only [A254145, Nat.add_sub_cancel, A254145.P12780459838029658953.a, A254145.P1687355752389577353.a, A001554, A001554.P2025650633643354615.a, A001555, A001555.P13748076003785863365.a, A254144, A254144.P2458627174334544638.a, A254146, A254146.P6523098754647194470.a, A001018, A001018.P5588564631493008987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254145

/-! ## A254145.P159973462944381608

`A001555(n)+A254144(n)-A001018(n)`
-/

namespace A254145.P159973462944381608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001555 n + (A254144 n - A001018 n)

end

end A254145.P159973462944381608

namespace A254145

/-- `A001555(n)+A254144(n)-A001018(n)` -/
def P159973462944381608.Spec : Prop :=
  ∀ n, P159973462944381608.a n = A254145 n

theorem P159973462944381608.correct : P159973462944381608.Spec := by
  intro n
  simp only [A254145, Nat.add_sub_cancel, A254145.P159973462944381608.a, A254145.P1687355752389577353.a, A001018, A001018.P5588564631493008987.a, A001554, A001554.P2025650633643354615.a, A001555, A001555.P13748076003785863365.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254145

/-! ## A254145.P1617464070489511605

`A254146(n)-(A001554(n)+A001018(n))`
-/

namespace A254145.P1617464070489511605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254146 n - (A001554 n + A001018 n)

end

end A254145.P1617464070489511605

namespace A254145

/-- `A254146(n)-(A001554(n)+A001018(n))` -/
def P1617464070489511605.Spec : Prop :=
  ∀ n, P1617464070489511605.a n = A254145 n

theorem P1617464070489511605.correct : P1617464070489511605.Spec := by
  intro n
  simp only [A254145, Nat.add_sub_cancel, A254145.P1617464070489511605.a, A254145.P1687355752389577353.a, A001018, A001018.P5588564631493008987.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, A254146, A254146.P6523098754647194470.a, A001555, A001555.P13748076003785863365.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254145

/-! ## A254145.P15660647863618316438

`A001019(n)+A254146(n)-A001556(n)`
-/

namespace A254145.P15660647863618316438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n + (A254146 n - A001556 n)

end

end A254145.P15660647863618316438

namespace A254145

/-- `A001019(n)+A254146(n)-A001556(n)` -/
def P15660647863618316438.Spec : Prop :=
  ∀ n, P15660647863618316438.a n = A254145 n

theorem P15660647863618316438.correct : P15660647863618316438.Spec := by
  intro n
  simp only [A254145, Nat.add_sub_cancel, A254145.P15660647863618316438.a, A254145.P1687355752389577353.a, A001019, A001019.P4632907595368420400.a, A001554, A001554.P2025650633643354615.a, A001556, A001556.P2048726826330034795.a, A254144, A254144.P2458627174334544638.a, A254146, A254146.P6523098754647194470.a, A001555, A001555.P13748076003785863365.a, A001018, A001018.P5588564631493008987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254145

/-!
# A254146: a(n) = 1*8^n + 2*7^n + 3*6^n + 4*5^n + 5*4^n + 6*3^n + 7*2^n + 8*1^n.

The programs for A254146, the canonical program `A254146.P6523098754647194470` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254146 has offset 0).

The definition of A254146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254146.P6523098754647194470

`A254145(n)+A001555(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A254146

/-- `A254145(n)+A001555(n)` -/
def P6523098754647194470.Spec : Prop :=
  ∀ n, P6523098754647194470.a n = A254146 n

theorem P6523098754647194470.correct : P6523098754647194470.Spec := by
  intro n
  simp only [A254146]

end A254146

/-! ## A254146.P17004734506714026110

`A001018(n)+A254145(n)+A001554(n)`
-/

namespace A254146.P17004734506714026110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n + (A254145 n + A001554 n)

end

end A254146.P17004734506714026110

namespace A254146

/-- `A001018(n)+A254145(n)+A001554(n)` -/
def P17004734506714026110.Spec : Prop :=
  ∀ n, P17004734506714026110.a n = A254146 n

theorem P17004734506714026110.correct : P17004734506714026110.Spec := by
  intro n
  simp only [A254146, Nat.add_sub_cancel, A254146.P17004734506714026110.a, A254146.P6523098754647194470.a, A001018, A001018.P5588564631493008987.a, A001554, A001554.P2025650633643354615.a, A001555, A001555.P13748076003785863365.a, A254145, A254145.P1687355752389577353.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254146

/-! ## A254146.P2138422537327857068

`A001554(n)+A254144(n)+A001555(n)`
-/

namespace A254146.P2138422537327857068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001554 n + (A254144 n + A001555 n)

end

end A254146.P2138422537327857068

namespace A254146

/-- `A001554(n)+A254144(n)+A001555(n)` -/
def P2138422537327857068.Spec : Prop :=
  ∀ n, P2138422537327857068.a n = A254146 n

theorem P2138422537327857068.correct : P2138422537327857068.Spec := by
  intro n
  simp only [A254146, Nat.add_sub_cancel, A254146.P2138422537327857068.a, A254146.P6523098754647194470.a, A001554, A001554.P2025650633643354615.a, A001555, A001555.P13748076003785863365.a, A254144, A254144.P2458627174334544638.a, A254145, A254145.P1687355752389577353.a, A001018, A001018.P5588564631493008987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254146

/-! ## A254146.P7991723383022058938

`A254147(n)-A001556(n)`
-/

namespace A254146.P7991723383022058938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254147 n - A001556 n

end

end A254146.P7991723383022058938

namespace A254146

/-- `A254147(n)-A001556(n)` -/
def P7991723383022058938.Spec : Prop :=
  ∀ n, P7991723383022058938.a n = A254146 n

theorem P7991723383022058938.correct : P7991723383022058938.Spec := by
  intro n
  simp only [A254146, Nat.add_sub_cancel, A254146.P7991723383022058938.a, A254146.P6523098754647194470.a, A001555, A001555.P13748076003785863365.a, A001556, A001556.P2048726826330034795.a, A254145, A254145.P1687355752389577353.a, A254147, A254147.P9685819170958152587.a, A001018, A001018.P5588564631493008987.a, A001019, A001019.P4632907595368420400.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254146

/-! ## A254146.P16010635341234743791

`A001556(n)+A254145(n)-A001019(n)`
-/

namespace A254146.P16010635341234743791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001556 n + (A254145 n - A001019 n)

end

end A254146.P16010635341234743791

namespace A254146

/-- `A001556(n)+A254145(n)-A001019(n)` -/
def P16010635341234743791.Spec : Prop :=
  ∀ n, P16010635341234743791.a n = A254146 n

theorem P16010635341234743791.correct : P16010635341234743791.Spec := by
  intro n
  simp only [A254146, Nat.add_sub_cancel, A254146.P16010635341234743791.a, A254146.P6523098754647194470.a, A001019, A001019.P4632907595368420400.a, A001555, A001555.P13748076003785863365.a, A001556, A001556.P2048726826330034795.a, A254145, A254145.P1687355752389577353.a, A001018, A001018.P5588564631493008987.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254146

/-! ## A254146.P1068733835857793166

`A254147(n)-(A001555(n)+A000244(n)²)`
-/

namespace A254146.P1068733835857793166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254147 n - (A001555 n + A000244 n ^ 2)

end

end A254146.P1068733835857793166

namespace A254146

/-- `A254147(n)-(A001555(n)+A000244(n)²)` -/
def P1068733835857793166.Spec : Prop :=
  ∀ n, P1068733835857793166.a n = A254146 n

end A254146

/-! ## A254146.P14045260347607741257

`A254147(n)-(A001555(n)+Δ[A002452(n)])`
-/

namespace A254146.P14045260347607741257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254147 n - (A001555 n + (f1 (n + 1) - f1 n))

end

end A254146.P14045260347607741257

namespace A254146

/-- `A254147(n)-(A001555(n)+Δ[A002452(n)])` -/
def P14045260347607741257.Spec : Prop :=
  ∀ n, P14045260347607741257.a n = A254146 n

end A254146

/-!
# A254147: a(n) = 1*9^n + 2*8^n + 3*7^n + 4*6^n + 5*5^n + 6*4^n + 7*3^n + 8*2^n + 9*1^n.

The programs for A254147, the canonical program `A254147.P9685819170958152587` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254147 has offset 0).

The definition of A254147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254147.P9685819170958152587

`A254146(n)+A001556(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A254147

/-- `A254146(n)+A001556(n)` -/
def P9685819170958152587.Spec : Prop :=
  ∀ n, P9685819170958152587.a n = A254147 n

theorem P9685819170958152587.correct : P9685819170958152587.Spec := by
  intro n
  simp only [A254147]

end A254147

/-! ## A254147.P9571194021873847477

`A001019(n)+A254146(n)+A001555(n)`
-/

namespace A254147.P9571194021873847477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n + (A254146 n + A001555 n)

end

end A254147.P9571194021873847477

namespace A254147

/-- `A001019(n)+A254146(n)+A001555(n)` -/
def P9571194021873847477.Spec : Prop :=
  ∀ n, P9571194021873847477.a n = A254147 n

theorem P9571194021873847477.correct : P9571194021873847477.Spec := by
  intro n
  simp only [A254147, Nat.add_sub_cancel, A254147.P9571194021873847477.a, A254147.P9685819170958152587.a, A001019, A001019.P4632907595368420400.a, A001555, A001555.P13748076003785863365.a, A001556, A001556.P2048726826330034795.a, A254146, A254146.P6523098754647194470.a, A001018, A001018.P5588564631493008987.a, A001554, A001554.P2025650633643354615.a, A254145, A254145.P1687355752389577353.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254147

/-! ## A254147.P6980954604505089295

`A001555(n)+A254145(n)+A001556(n)`
-/

namespace A254147.P6980954604505089295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001555 n + (A254145 n + A001556 n)

end

end A254147.P6980954604505089295

namespace A254147

/-- `A001555(n)+A254145(n)+A001556(n)` -/
def P6980954604505089295.Spec : Prop :=
  ∀ n, P6980954604505089295.a n = A254147 n

theorem P6980954604505089295.correct : P6980954604505089295.Spec := by
  intro n
  simp only [A254147, Nat.add_sub_cancel, A254147.P6980954604505089295.a, A254147.P9685819170958152587.a, A001555, A001555.P13748076003785863365.a, A001556, A001556.P2048726826330034795.a, A254145, A254145.P1687355752389577353.a, A254146, A254146.P6523098754647194470.a, A001018, A001018.P5588564631493008987.a, A001019, A001019.P4632907595368420400.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254147

/-! ## A254147.P1893512532966680166

`A254148(n)-A001557(n)`
-/

namespace A254147.P1893512532966680166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254148 n - A001557 n

end

end A254147.P1893512532966680166

namespace A254147

/-- `A254148(n)-A001557(n)` -/
def P1893512532966680166.Spec : Prop :=
  ∀ n, P1893512532966680166.a n = A254147 n

theorem P1893512532966680166.correct : P1893512532966680166.Spec := by
  intro n
  simp only [A254147, Nat.add_sub_cancel, A254147.P1893512532966680166.a, A254147.P9685819170958152587.a, A001556, A001556.P2048726826330034795.a, A001557, A001557.P6866617434651115240.a, A254146, A254146.P6523098754647194470.a, A254148, A254148.P9928434026570908053.a, A001019, A001019.P4632907595368420400.a, A001555, A001555.P13748076003785863365.a, A011557, A011557.P11220211478167790856.a, A254145, A254145.P1687355752389577353.a, A001018, A001018.P5588564631493008987.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254147

/-! ## A254147.P13311165802517750346

`A254148(n)-(A011557(n)+A001556(n))`
-/

namespace A254147.P13311165802517750346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254148 n - (A011557 n + A001556 n)

end

end A254147.P13311165802517750346

namespace A254147

/-- `A254148(n)-(A011557(n)+A001556(n))` -/
def P13311165802517750346.Spec : Prop :=
  ∀ n, P13311165802517750346.a n = A254147 n

theorem P13311165802517750346.correct : P13311165802517750346.Spec := by
  intro n
  simp only [A254147, Nat.add_sub_cancel, A254147.P13311165802517750346.a, A254147.P9685819170958152587.a, A001556, A001556.P2048726826330034795.a, A011557, A011557.P11220211478167790856.a, A254146, A254146.P6523098754647194470.a, A254148, A254148.P9928434026570908053.a, A001019, A001019.P4632907595368420400.a, A001555, A001555.P13748076003785863365.a, A001557, A001557.P6866617434651115240.a, A254145, A254145.P1687355752389577353.a, A001018, A001018.P5588564631493008987.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254147

/-!
# A254148: a(n) = 9*2^n + 7*4^n + 3*8^n + 8*3^n + 2*9^n + 6*5^n + 5*6^n + 4*7^n + 10^n + 10.

The programs for A254148, the canonical program `A254148.P9928434026570908053` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254148 has offset 0).

The definition of A254148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254148.P9928434026570908053

`A254147(n)+A001557(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A254148

/-- `A254147(n)+A001557(n)` -/
def P9928434026570908053.Spec : Prop :=
  ∀ n, P9928434026570908053.a n = A254148 n

theorem P9928434026570908053.correct : P9928434026570908053.Spec := by
  intro n
  simp only [A254148]

end A254148

/-! ## A254148.P16059375299270992560

`A001556(n)+A254147(n)+A011557(n)`
-/

namespace A254148.P16059375299270992560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001556 n + (A254147 n + A011557 n)

end

end A254148.P16059375299270992560

namespace A254148

/-- `A001556(n)+A254147(n)+A011557(n)` -/
def P16059375299270992560.Spec : Prop :=
  ∀ n, P16059375299270992560.a n = A254148 n

theorem P16059375299270992560.correct : P16059375299270992560.Spec := by
  intro n
  simp only [A254148, Nat.add_sub_cancel, A254148.P16059375299270992560.a, A254148.P9928434026570908053.a, A001556, A001556.P2048726826330034795.a, A001557, A001557.P6866617434651115240.a, A011557, A011557.P11220211478167790856.a, A254147, A254147.P9685819170958152587.a, A001019, A001019.P4632907595368420400.a, A001555, A001555.P13748076003785863365.a, A254146, A254146.P6523098754647194470.a, A001018, A001018.P5588564631493008987.a, A001554, A001554.P2025650633643354615.a, A254145, A254145.P1687355752389577353.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254148

/-! ## A254148.P2220476704229463553

`A001555(n)+A254147(n)+A221904(n)`
-/

namespace A254148.P2220476704229463553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001555 n + (A254147 n + A221904 n)

end

end A254148.P2220476704229463553

namespace A254148

/-- `A001555(n)+A254147(n)+A221904(n)` -/
def P2220476704229463553.Spec : Prop :=
  ∀ n, P2220476704229463553.a n = A254148 n

theorem P2220476704229463553.correct : P2220476704229463553.Spec := by
  intro n
  simp only [A254148, Nat.add_sub_cancel, A254148.P2220476704229463553.a, A254148.P9928434026570908053.a, A001555, A001555.P13748076003785863365.a, A001557, A001557.P6866617434651115240.a, A221904, A221904.P15507213717070487276.a, A254147, A254147.P9685819170958152587.a, A001018, A001018.P5588564631493008987.a, A001554, A001554.P2025650633643354615.a, A001556, A001556.P2048726826330034795.a, A011557, A011557.P11220211478167790856.a, A254146, A254146.P6523098754647194470.a, A001019, A001019.P4632907595368420400.a, A254145, A254145.P1687355752389577353.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254148

/-! ## A254148.P4309147272260421965

`A001556(n)+A254147(n)+Δ[A098406(n)]`
-/

namespace A254148.P4309147272260421965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001556 n + (A254147 n + (f1 (n + 1) - f1 n))

end

end A254148.P4309147272260421965

namespace A254148

/-- `A001556(n)+A254147(n)+Δ[A098406(n)]` -/
def P4309147272260421965.Spec : Prop :=
  ∀ n, P4309147272260421965.a n = A254148 n

end A254148

/-! ## A254148.P2267512185337058432

`A001556(n)+A254147(n)+Δ[A173735(n)]`
-/

namespace A254148.P2267512185337058432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001556 n + (A254147 n + (f1 (n + 1) - f1 n))

end

end A254148.P2267512185337058432

namespace A254148

/-- `A001556(n)+A254147(n)+Δ[A173735(n)]` -/
def P2267512185337058432.Spec : Prop :=
  ∀ n, P2267512185337058432.a n = A254148 n

end A254148

/-! ## A254148.P10391491225055562912

`10^n+A254147(n)+A254147(n)-A254146(n)`
-/

namespace A254148.P10391491225055562912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) + (A254147 n + (A254147 n - A254146 n))

end

end A254148.P10391491225055562912

namespace A254148

/-- `10^n+A254147(n)+A254147(n)-A254146(n)` -/
def P10391491225055562912.Spec : Prop :=
  ∀ n, P10391491225055562912.a n = A254148 n

theorem P10391491225055562912.correct : P10391491225055562912.Spec := by
  intro n
  simp only [A254148, Nat.add_sub_cancel, A254148.P10391491225055562912.a, A254148.P9928434026570908053.a, A001557, A001557.P6866617434651115240.a, A254146, A254146.P6523098754647194470.a, A254147, A254147.P9685819170958152587.a, A001555, A001555.P13748076003785863365.a, A001556, A001556.P2048726826330034795.a, A011557, A011557.P11220211478167790856.a, A254145, A254145.P1687355752389577353.a, A001018, A001018.P5588564631493008987.a, A001019, A001019.P4632907595368420400.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254148

/-! ## A254148.P15085275997284693000

`10^n+A254147(n)+A001555(n)+A000244(n)²`
-/

namespace A254148.P15085275997284693000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) + (A254147 n + (A001555 n + A000244 n ^ 2))

end

end A254148.P15085275997284693000

namespace A254148

/-- `10^n+A254147(n)+A001555(n)+A000244(n)²` -/
def P15085275997284693000.Spec : Prop :=
  ∀ n, P15085275997284693000.a n = A254148 n

end A254148

/-! ## A254148.P8735909027208170697

`10^n+A254147(n)+A001555(n)+Δ[A002452(n)]`
-/

namespace A254148.P8735909027208170697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) + (A254147 n + (A001555 n + (f1 (n + 1) - f1 n)))

end

end A254148.P8735909027208170697

namespace A254148

/-- `10^n+A254147(n)+A001555(n)+Δ[A002452(n)]` -/
def P8735909027208170697.Spec : Prop :=
  ∀ n, P8735909027208170697.a n = A254148 n

end A254148

/-! ## A254148.P14741107270088242580

`10^n+A254147(n)+A001550(n)+A074580(n)+A074561(n)`
-/

namespace A254148.P14741107270088242580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) + (A254147 n + (A001550 n + (A074580 n + A074561 n)))

end

end A254148.P14741107270088242580

namespace A254148

/-- `10^n+A254147(n)+A001550(n)+A074580(n)+A074561(n)` -/
def P14741107270088242580.Spec : Prop :=
  ∀ n, P14741107270088242580.a n = A254148 n

theorem P14741107270088242580.correct : P14741107270088242580.Spec := by
  intro n
  simp only [A254148, Nat.add_sub_cancel, A254148.P14741107270088242580.a, A254148.P9928434026570908053.a, A001550, A001550.P5500954164040164324.a, A001557, A001557.P6866617434651115240.a, A074561, A074561.P7977343402559612284.a, A074580, A074580.P17802850478880268909.a, A254147, A254147.P9685819170958152587.a, A001556, A001556.P2048726826330034795.a, A011557, A011557.P11220211478167790856.a, A254146, A254146.P6523098754647194470.a, A001019, A001019.P4632907595368420400.a, A001555, A001555.P13748076003785863365.a, A254145, A254145.P1687355752389577353.a, A001018, A001018.P5588564631493008987.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254148

/-! ## A254148.P7171920897006971634

`A308477(A000217(n+10)+11)+A254147(n)`
-/

namespace A254148.P7171920897006971634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308477 (A000217 (n + 10) + 11).toNat + A254147 n

end

end A254148.P7171920897006971634

namespace A254148

/-- `A308477(A000217(n+10)+11)+A254147(n)` -/
def P7171920897006971634.Spec : Prop :=
  ∀ n, P7171920897006971634.a n = A254148 n

end A254148

/-!
# A254150: Number of independent sets in the generalized Aztec diamond E(L_5,L_{2n-1}).

The programs for A254150, the canonical program `A254150.P16947848985667611477` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254150 has offset 0).

The definition of A254150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254150.P16947848985667611477

`ogf((1-4x+x^2)/(1-12x+24x^2-5x^3))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A254150

/-- `ogf((1-4x+x^2)/(1-12x+24x^2-5x^3))` -/
def P16947848985667611477.Spec : Prop :=
  ∀ n, P16947848985667611477.a n = A254150 n

theorem P16947848985667611477.correct : P16947848985667611477.Spec := by
  intro n
  simp only [A254150]

end A254150

/-! ## A254150.P9577032327706945656

`A331406(∑[n+3]+6)`
-/

namespace A254150.P9577032327706945656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331406 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A254150.P9577032327706945656

namespace A254150

/-- `A331406(∑[n+3]+6)` -/
def P9577032327706945656.Spec : Prop :=
  ∀ n, P9577032327706945656.a n = A254150 n

end A254150

/-! ## A254150.P11587471204878154938

`lcm(A033999(n), A331406(A167614(n+2)))`
-/

namespace A254150.P11587471204878154938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A331406 (A167614 (n + 2)).toNat)

end

end A254150.P11587471204878154938

namespace A254150

/-- `lcm(A033999(n), A331406(A167614(n+2)))` -/
def P11587471204878154938.Spec : Prop :=
  ∀ n, (P11587471204878154938.a n : ℤ) = A254150 n

end A254150

/-! ## A254150.P5236191030310667991

`or(A000007(n), A331406(A167614(n+2)))`
-/

namespace A254150.P5236191030310667991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A331406 (A167614 (n + 2)).toNat)

end

end A254150.P5236191030310667991

namespace A254150

/-- `or(A000007(n), A331406(A167614(n+2)))` -/
def P5236191030310667991.Spec : Prop :=
  ∀ n, P5236191030310667991.a n = A254150 n

end A254150

/-! ## A254150.P3520050320159690338

`A331406(A167614(n+2))+A000007(n+1)`
-/

namespace A254150.P3520050320159690338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331406 (A167614 (n + 2)).toNat + A000007 (n + 1)

end

end A254150.P3520050320159690338

namespace A254150

/-- `A331406(A167614(n+2))+A000007(n+1)` -/
def P3520050320159690338.Spec : Prop :=
  ∀ n, P3520050320159690338.a n = A254150 n

end A254150

/-!
# A254151: Number of independent sets in the generalized Aztec diamond E(L_7,L_{2n-1}).

The programs for A254151, there is no canonical definition to state claims against.
-/

/-! ## A254151.P2582545519555538599

`A331406(A155212(n)+12)`
-/

namespace A254151.P2582545519555538599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331406 (A155212 n + 12).toNat

end

end A254151.P2582545519555538599

/-! ## A254151.P10296177259464036479

`A331406(eq[4, A002262(n)])`
-/

namespace A254151.P10296177259464036479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331406 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254151.P10296177259464036479

/-! ## A254151.P16439853846289452653

`A331406(eq[16, A059268(n)])`
-/

namespace A254151.P16439853846289452653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331406 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254151.P16439853846289452653

/-! ## A254151.P11734950429068097702

`A331406(eq[5, A002260(n+1)])`
-/

namespace A254151.P11734950429068097702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331406 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254151.P11734950429068097702

/-! ## A254151.P5950042999190904158

`A331406(Δ[A026054(n+3)-n²])`
-/

namespace A254151.P5950042999190904158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331406 (f1 (n + 1) - f1 n).toNat

end

end A254151.P5950042999190904158

/-!
# A254152: Number of independent sets in the generalized Aztec diamond E(L_9,L_{2n-1}).

The programs for A254152, there is no canonical definition to state claims against.
-/

/-! ## A254152.P10451232099287658135

`A331406(A167499(n+4))`
-/

namespace A254152.P10451232099287658135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331406 (A167499 (n + 4)).toNat

end

end A254152.P10451232099287658135

/-! ## A254152.P1030363811754927228

`A331406(eq[5, A002262(n)])`
-/

namespace A254152.P1030363811754927228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331406 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254152.P1030363811754927228

/-! ## A254152.P403627290269509883

`A331406(eq[6, A002260(n+1)])`
-/

namespace A254152.P403627290269509883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331406 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254152.P403627290269509883

/-! ## A254152.P1783315724064626512

`A331406(A161680(n+7)-(n+1))`
-/

namespace A254152.P1783315724064626512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331406 (A161680 (n + 7) - (n + 1 : ℤ)).toNat

end

end A254152.P1783315724064626512

/-! ## A254152.P10123009124384647970

`A331406(Δ[A026054(n+3)])`
-/

namespace A254152.P10123009124384647970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331406 (f1 (n + 1) - f1 n).toNat

end

end A254152.P10123009124384647970

/-!
# A254157: a(n) = binomial(3*n,n)^n.

The programs for A254157, the canonical program `A254157.P17019422232450659401` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254157 has offset 0).

The definition of A254157 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*n, n)^n` (program `A254157.P17019422232450659401`, by `A254157.P17019422232450659401.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254157.P17019422232450659401

`C(3*n, n)^n`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A254157

/-- `C(3*n, n)^n` -/
def P17019422232450659401.Spec : Prop :=
  ∀ n, (P17019422232450659401.a n : ℤ) = A254157 n

theorem P17019422232450659401.correct : P17019422232450659401.Spec := by
  intro n
  simp only [A254157]

end A254157

/-! ## A254157.P11587067935412575169

`A005809(n)^n`
-/

namespace A254157.P11587067935412575169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n ^ n

end

end A254157.P11587067935412575169

namespace A254157

/-- `A005809(n)^n` -/
def P11587067935412575169.Spec : Prop :=
  ∀ n, P11587067935412575169.a n = A254157 n

theorem P11587067935412575169.correct : P11587067935412575169.Spec := by
  intro n
  simp only [A254157, Nat.add_sub_cancel, A254157.P11587067935412575169.a, A254157.P17019422232450659401.a, A005809, A005809.P15087077436016713419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A254157

/-! ## A254157.P13644393309491244045

`sqrt(A188662(n))^n`
-/

namespace A254157.P13644393309491244045
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A188662 n : ℝ) ^ n

end

end A254157.P13644393309491244045

namespace A254157

/-- `sqrt(A188662(n))^n` -/
def P13644393309491244045.Spec : Prop :=
  ∀ n, P13644393309491244045.a n = (A254157 n : ℝ)

end A254157

/-! ## A254157.P3177850276294358166

`A119301(∑[n])^n`
-/

namespace A254157.P3177850276294358166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119301 (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A254157.P3177850276294358166

namespace A254157

/-- `A119301(∑[n])^n` -/
def P3177850276294358166.Spec : Prop :=
  ∀ n, P3177850276294358166.a n = A254157 n

end A254157

/-! ## A254157.P7020273066853376405

`A264772(∑[n])^n`
-/

namespace A254157.P7020273066853376405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A254157.P7020273066853376405

namespace A254157

/-- `A264772(∑[n])^n` -/
def P7020273066853376405.Spec : Prop :=
  ∀ n, P7020273066853376405.a n = A254157 n

end A254157

/-!
# A254160: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254160, there is no canonical definition to state claims against.
-/

/-! ## A254160.P11206231750961553629

`A254168((n+1)²+n²)`
-/

namespace A254160.P11206231750961553629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 ((n + 1) ^ 2 + n ^ 2)

end

end A254160.P11206231750961553629

/-!
# A254161: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254161, there is no canonical definition to state claims against.
-/

/-! ## A254161.P4017086886073483589

`A254168(∑[n]+1)`
-/

namespace A254161.P4017086886073483589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254161.P4017086886073483589

/-! ## A254161.P5229548306022726849

`lcm(2, A254168(A000124(n)))`
-/

namespace A254161.P5229548306022726849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254168 (A000124 n).toNat)

end

end A254161.P5229548306022726849

/-! ## A254161.P1297993126099967904

`record[A254168(n+1)/A022166(n)]`
-/

namespace A254161.P1297993126099967904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254168 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254161.P1297993126099967904

/-! ## A254161.P1829682289571807655

`record[root(A254168(n+1), A143453(n))]`
-/

namespace A254161.P1829682289571807655
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254168 (n + 1) : ℝ) ^ (1 / (A143453 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254161.P1829682289571807655

/-! ## A254161.P5450232024912314070

`record[gcd(A002262(n), A254168(n+1))]`
-/

namespace A254161.P5450232024912314070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254168 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254161.P5450232024912314070

/-!
# A254162: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254162, there is no canonical definition to state claims against.
-/

/-! ## A254162.P16220810259975887061

`A254168(∑[n+2])`
-/

namespace A254162.P16220810259975887061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254162.P16220810259975887061

/-! ## A254162.P16901612376610102898

`record[A254168(abs(A201163(n)))]`
-/

namespace A254162.P16901612376610102898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254162.P16901612376610102898

/-! ## A254162.P7420644558885203747

`record[A254168(Δ[A003453(n+5)])]`
-/

namespace A254162.P7420644558885203747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254162.P7420644558885203747

/-! ## A254162.P3999261095167366003

`record[gcd(A002262(n+3), A254168(n+2))]`
-/

namespace A254162.P3999261095167366003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 3)) (A254168 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254162.P3999261095167366003

/-! ## A254162.P9460419965427575413

`record[A254168(A198453(n+1))]`
-/

namespace A254162.P9460419965427575413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254162.P9460419965427575413

/-!
# A254163: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254163, there is no canonical definition to state claims against.
-/

/-! ## A254163.P5378580949465227841

`A254168(∑[n+3]+1)`
-/

namespace A254163.P5378580949465227841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254163.P5378580949465227841

/-! ## A254163.P2329938362293159185

`record[A254168(A198464(n+1))]`
-/

namespace A254163.P2329938362293159185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254163.P2329938362293159185

/-! ## A254163.P2236028973035516462

`lcm(2, A254168(A034856(n+2)))`
-/

namespace A254163.P2236028973035516462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254168 (A034856 (n + 2)).toNat)

end

end A254163.P2236028973035516462

/-! ## A254163.P6039796206922390455

`A000034(2*n)*A254168(A034856(n+2))`
-/

namespace A254163.P6039796206922390455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A254168 (A034856 (n + 2)).toNat

end

end A254163.P6039796206922390455

/-!
# A254164: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254164, there is no canonical definition to state claims against.
-/

/-! ## A254164.P13734018260255856447

`A254168(A141214(n+1))`
-/

namespace A254164.P13734018260255856447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A141214 (n + 1)).toNat

end

end A254164.P13734018260255856447

/-! ## A254164.P3537675127756998113

`A254168(A055998(n+2))`
-/

namespace A254164.P3537675127756998113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A055998 (n + 2)).toNat

end

end A254164.P3537675127756998113

/-! ## A254164.P2306112174539704801

`A254168(A155212(n)+5)`
-/

namespace A254164.P2306112174539704801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A155212 n + 5).toNat

end

end A254164.P2306112174539704801

/-! ## A254164.P3836247878667504078

`A254168(A056000(n)+7)`
-/

namespace A254164.P3836247878667504078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A056000 n + 7).toNat

end

end A254164.P3836247878667504078

/-! ## A254164.P5894044899221805312

`A254168(eq[3, A193592(n)])`
-/

namespace A254164.P5894044899221805312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254164.P5894044899221805312

/-!
# A254165: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254165, there is no canonical definition to state claims against.
-/

/-! ## A254165.P2719688449825467446

`A254168(Δ[A264443(n)])`
-/

namespace A254165.P2719688449825467446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (f1 (n + 1) - f1 n).toNat

end

end A254165.P2719688449825467446

/-! ## A254165.P5823391891060454399

`A254168(A046691(n+3))`
-/

namespace A254165.P5823391891060454399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A046691 (n + 3)).toNat

end

end A254165.P5823391891060454399

/-! ## A254165.P17409296273170870749

`A254168(eq[4, A193592(n)])`
-/

namespace A254165.P17409296273170870749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254165.P17409296273170870749

/-! ## A254165.P13406649275109052430

`A254168(Δ[A023545(n+1)])`
-/

namespace A254165.P13406649275109052430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (f1 (n + 1) - f1 n).toNat

end

end A254165.P13406649275109052430

/-! ## A254165.P14671613768783751980

`A254168(A166136(n+1)+A016789(n))`
-/

namespace A254165.P14671613768783751980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A166136 (n + 1) + A016789 n).toNat

end

end A254165.P14671613768783751980

/-!
# A254166: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254166, there is no canonical definition to state claims against.
-/

/-! ## A254166.P13146270953855034089

`A254168(A052905(n+3))`
-/

namespace A254166.P13146270953855034089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A052905 (n + 3)).toNat

end

end A254166.P13146270953855034089

/-! ## A254166.P16317125678364249410

`A254168(eq[3, A219347(n)])`
-/

namespace A254166.P16317125678364249410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254166.P16317125678364249410

/-! ## A254166.P5257080486847641177

`A254168(eq[5, A193592(n)])`
-/

namespace A254166.P5257080486847641177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254166.P5257080486847641177

/-! ## A254166.P11439128726968821864

`A254168(eq[8, A185782(n+1)])`
-/

namespace A254166.P11439128726968821864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254166.P11439128726968821864

/-! ## A254166.P1330467548180536271

`A254168(Δ[A264443(n+1)]-1)`
-/

namespace A254166.P1330467548180536271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (f1 (n + 1) - f1 n - 1).toNat

end

end A254166.P1330467548180536271

/-!
# A254167: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254167, there is no canonical definition to state claims against.
-/

/-! ## A254167.P7741015536715341793

`A254168(A055999(n+4))`
-/

namespace A254167.P7741015536715341793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A055999 (n + 4)).toNat

end

end A254167.P7741015536715341793

/-! ## A254167.P9674912126037042143

`A254168(eq[2, A219347(n)-2])`
-/

namespace A254167.P9674912126037042143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254167.P9674912126037042143

/-!
# A254169: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254169, there is no canonical definition to state claims against.
-/

/-! ## A254169.P13383582119297595153

`A254168(∑[n+1]+2)`
-/

namespace A254169.P13383582119297595153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254169.P13383582119297595153

/-! ## A254169.P12058015436043614053

`record[A254168(A257506(n+1)+2)]`
-/

namespace A254169.P12058015436043614053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A257506 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254169.P12058015436043614053

/-! ## A254169.P4503706579528190536

`record[root(A254168(n+2), A143453(n))]`
-/

namespace A254169.P4503706579528190536
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254168 (n + 2) : ℝ) ^ (1 / (A143453 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254169.P4503706579528190536

/-! ## A254169.P16993990310259424798

`record[gcd(A002262(n), A254168(n+2))]`
-/

namespace A254169.P16993990310259424798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254168 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254169.P16993990310259424798

/-! ## A254169.P8488757310297461078

`A254168(A133263(n+1))%A254163(n+1)`
-/

namespace A254169.P8488757310297461078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254168 (A133263 (n + 1)).toNat) (A254163 (n + 1))

end

end A254169.P8488757310297461078

/-!
# A254170: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254170, there is no canonical definition to state claims against.
-/

/-! ## A254170.P6519087370420853103

`A254168(∑[n+2]+4)`
-/

namespace A254170.P6519087370420853103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254170.P6519087370420853103

/-! ## A254170.P4504458862996209408

`lcm(2, A254168(A167614(n+1)))`
-/

namespace A254170.P4504458862996209408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254168 (A167614 (n + 1)).toNat)

end

end A254170.P4504458862996209408

/-! ## A254170.P10807785124945185690

`A254168(A167614(n+1))+A185284(n)`
-/

namespace A254170.P10807785124945185690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A167614 (n + 1)).toNat + A185284 n

end

end A254170.P10807785124945185690

/-! ## A254170.P6380170255820142886

`A036225(n)*A254168(A167614(n+1))`
-/

namespace A254170.P6380170255820142886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A254168 (A167614 (n + 1)).toNat

end

end A254170.P6380170255820142886

/-! ## A254170.P12681041224531970700

`A254168(A167614(n+1))%A252138(2*(n+1))`
-/

namespace A254170.P12681041224531970700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254168 (A167614 (n + 1)).toNat) (A252138 (2 * (n + 1)))

end

end A254170.P12681041224531970700

/-!
# A254171: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254171, there is no canonical definition to state claims against.
-/

/-! ## A254171.P1503642233573046549

`A254168(A141214(n)+7)`
-/

namespace A254171.P1503642233573046549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A141214 n + 7).toNat

end

end A254171.P1503642233573046549

/-! ## A254171.P10659920685381553758

`A254168(A052905(n)+9)`
-/

namespace A254171.P10659920685381553758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A052905 n + 9).toNat

end

end A254171.P10659920685381553758

/-! ## A254171.P11825353114360566862

`A254168(A055999(n)+10)`
-/

namespace A254171.P11825353114360566862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A055999 n + 10).toNat

end

end A254171.P11825353114360566862

/-! ## A254171.P18236891004505115225

`A254168(A167614(n+2)+1)`
-/

namespace A254171.P18236891004505115225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A167614 (n + 2) + 1).toNat

end

end A254171.P18236891004505115225

/-! ## A254171.P5814200176010116686

`A254168(A166136(n+2)-2)`
-/

namespace A254171.P5814200176010116686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A166136 (n + 2) - 2).toNat

end

end A254171.P5814200176010116686

/-!
# A254172: Number of (5+2) X (n+2) 0..1 arrays with every 3 X 3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254172, there is no canonical definition to state claims against.
-/

/-! ## A254172.P6728834967115554330

`A254168(A167499(n+3))`
-/

namespace A254172.P6728834967115554330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A167499 (n + 3)).toNat

end

end A254172.P6728834967115554330

/-! ## A254172.P12805895147454328386

`A254168(A155212(n)+13)`
-/

namespace A254172.P12805895147454328386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A155212 n + 13).toNat

end

end A254172.P12805895147454328386

/-! ## A254172.P13660147432874119618

`A254168(A056000(n)+15)`
-/

namespace A254172.P13660147432874119618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A056000 n + 15).toNat

end

end A254172.P13660147432874119618

/-! ## A254172.P16079501938651831555

`A254168(eq[7, A066657(n)])`
-/

namespace A254172.P16079501938651831555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254172.P16079501938651831555

/-! ## A254172.P14956018417685473544

`A254168(A167487(n+3)-2)`
-/

namespace A254172.P14956018417685473544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A167487 (n + 3) - 2).toNat

end

end A254172.P14956018417685473544

/-!
# A254173: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254173, there is no canonical definition to state claims against.
-/

/-! ## A254173.P4614026620552172042

`A254168(A166136(n+4))`
-/

namespace A254173.P4614026620552172042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A166136 (n + 4)).toNat

end

end A254173.P4614026620552172042

/-! ## A254173.P3457647610936032386

`A254168(A056115(n)+21)`
-/

namespace A254173.P3457647610936032386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (A056115 n + 21).toNat

end

end A254173.P3457647610936032386

/-! ## A254173.P14209080083895159245

`A254168(Δ[A264443(n)]+10)`
-/

namespace A254173.P14209080083895159245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (f1 (n + 1) - f1 n + 10).toNat

end

end A254173.P14209080083895159245

/-! ## A254173.P9117426538372778574

`A254168(eq[7, A131818(n+1)])`
-/

namespace A254173.P9117426538372778574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254173.P9117426538372778574

/-! ## A254173.P6517884030047474524

`A254168(Δ[A023545(n+1)]+10)`
-/

namespace A254173.P6517884030047474524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (f1 (n + 1) - f1 n + 10).toNat

end

end A254173.P6517884030047474524

/-!
# A254174: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254174, there is no canonical definition to state claims against.
-/

/-! ## A254174.P17582494148594293949

`A254168(eq[8, A131818(n+1)])`
-/

namespace A254174.P17582494148594293949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254168 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254174.P17582494148594293949

/-!
# A254182: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254182, there is no canonical definition to state claims against.
-/

/-! ## A254182.P413985542031858408

`A254189((n+1)²+n²)`
-/

namespace A254182.P413985542031858408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 ((n + 1) ^ 2 + n ^ 2)

end

end A254182.P413985542031858408

/-!
# A254183: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254183, there is no canonical definition to state claims against.
-/

/-! ## A254183.P15996853674688985788

`A254189(∑[n+2])`
-/

namespace A254183.P15996853674688985788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254183.P15996853674688985788

/-! ## A254183.P2794645817508790295

`record[A254189(Δ[A003453(n+5)])]`
-/

namespace A254183.P2794645817508790295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254183.P2794645817508790295

/-! ## A254183.P17275492756756148413

`record[A254189(A000096(A109785(n)))]`
-/

namespace A254183.P17275492756756148413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A000096 (A109785 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254183.P17275492756756148413

/-! ## A254183.P1614497594621460562

`record[A254189(A000096(A008479(n+1)))]`
-/

namespace A254183.P1614497594621460562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A000096 (A008479 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254183.P1614497594621460562

/-! ## A254183.P10067016416136327516

`record[A254189(A000096(A209279(n+1)))]`
-/

namespace A254183.P10067016416136327516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A000096 (A209279 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254183.P10067016416136327516

/-!
# A254184: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254184, there is no canonical definition to state claims against.
-/

/-! ## A254184.P9286513734576553432

`A254189(∑[n+3]+1)`
-/

namespace A254184.P9286513734576553432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254184.P9286513734576553432

/-!
# A254185: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254185, there is no canonical definition to state claims against.
-/

/-! ## A254185.P7842063800762695860

`A254189(A141214(n+1))`
-/

namespace A254185.P7842063800762695860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A141214 (n + 1)).toNat

end

end A254185.P7842063800762695860

/-! ## A254185.P13978974756811372846

`A254189(A027379(n+2))`
-/

namespace A254185.P13978974756811372846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A027379 (n + 2)).toNat

end

end A254185.P13978974756811372846

/-! ## A254185.P1468952770123672073

`A254189(A055998(n+2))`
-/

namespace A254185.P1468952770123672073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A055998 (n + 2)).toNat

end

end A254185.P1468952770123672073

/-! ## A254185.P7936768064507100620

`A254189(A155212(n)+5)`
-/

namespace A254185.P7936768064507100620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A155212 n + 5).toNat

end

end A254185.P7936768064507100620

/-! ## A254185.P14971807813323836322

`A254189(A052905(n+1)+2)`
-/

namespace A254185.P14971807813323836322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A052905 (n + 1) + 2).toNat

end

end A254185.P14971807813323836322

/-!
# A254186: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254186, there is no canonical definition to state claims against.
-/

/-! ## A254186.P8955741007616779846

`A254189(Δ[A264443(n)])`
-/

namespace A254186.P8955741007616779846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (f1 (n + 1) - f1 n).toNat

end

end A254186.P8955741007616779846

/-! ## A254186.P6330621323766057253

`A254189(A046691(n+3))`
-/

namespace A254186.P6330621323766057253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A046691 (n + 3)).toNat

end

end A254186.P6330621323766057253

/-! ## A254186.P2066121337076713752

`A254189(eq[4, A193592(n)])`
-/

namespace A254186.P2066121337076713752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254186.P2066121337076713752

/-! ## A254186.P14417283320330897517

`A254189(eq[8, A209439(n)])`
-/

namespace A254186.P14417283320330897517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254186.P14417283320330897517

/-! ## A254186.P9579604804183808645

`A254189(Δ[A023545(n+1)])`
-/

namespace A254186.P9579604804183808645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (f1 (n + 1) - f1 n).toNat

end

end A254186.P9579604804183808645

/-!
# A254187: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254187, there is no canonical definition to state claims against.
-/

/-! ## A254187.P14353653788225606060

`A254189(A052905(n+3))`
-/

namespace A254187.P14353653788225606060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A052905 (n + 3)).toNat

end

end A254187.P14353653788225606060

/-! ## A254187.P15347689751110400319

`A254189(eq[5, A193592(n)])`
-/

namespace A254187.P15347689751110400319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254187.P15347689751110400319

/-! ## A254187.P10612630695971442217

`A254189(eq[8, A258709(n)])`
-/

namespace A254187.P10612630695971442217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254187.P10612630695971442217

/-! ## A254187.P9427243103849512558

`A254189(eq[4, sqrt(A209439(n))])`
-/

namespace A254187.P9427243103849512558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A209439 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A254187.P9427243103849512558

/-! ## A254187.P4000338885483267362

`A254189(eq[6, A200370(n+1)])`
-/

namespace A254187.P4000338885483267362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254187.P4000338885483267362

/-!
# A254188: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254188, there is no canonical definition to state claims against.
-/

/-! ## A254188.P17250083912411195700

`A254189(A055999(n+4))`
-/

namespace A254188.P17250083912411195700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A055999 (n + 4)).toNat

end

end A254188.P17250083912411195700

/-! ## A254188.P11064713641871951359

`A254189(A000096(n+6)-5)`
-/

namespace A254188.P11064713641871951359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A000096 (n + 6) - 5).toNat

end

end A254188.P11064713641871951359

/-!
# A254190: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254190, there is no canonical definition to state claims against.
-/

/-! ## A254190.P5515029627452063984

`A254189(∑[n+1]+2)`
-/

namespace A254190.P5515029627452063984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254190.P5515029627452063984

/-! ## A254190.P1962656599963367099

`record[A010054(n)*A254189(n+2)]`
-/

namespace A254190.P1962656599963367099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A254189 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254190.P1962656599963367099

/-! ## A254190.P14131842094378212358

`record[root(A254189(n+2), A059268(n))]`
-/

namespace A254190.P14131842094378212358
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254189 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254190.P14131842094378212358

/-! ## A254190.P3595473652361295866

`record[gcd(A002262(n), A254189(n+2))]`
-/

namespace A254190.P3595473652361295866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254189 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254190.P3595473652361295866

/-! ## A254190.P16921284379911555085

`A254189(A133263(n+1))%A254163(n+1)`
-/

namespace A254190.P16921284379911555085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254189 (A133263 (n + 1)).toNat) (A254163 (n + 1))

end

end A254190.P16921284379911555085

/-!
# A254191: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254191, there is no canonical definition to state claims against.
-/

/-! ## A254191.P4715444030435949957

`A254189(∑[n+2]+4)`
-/

namespace A254191.P4715444030435949957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254191.P4715444030435949957

/-! ## A254191.P704125267914352781

`lcm(2, A254189(A167614(n+1)))`
-/

namespace A254191.P704125267914352781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254189 (A167614 (n + 1)).toNat)

end

end A254191.P704125267914352781

/-! ## A254191.P11552880294596816223

`A254189(A167614(n+1))+A185264(n)`
-/

namespace A254191.P11552880294596816223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A167614 (n + 1)).toNat + A185264 n

end

end A254191.P11552880294596816223

/-! ## A254191.P6781274325552099280

`A254189(A167614(n+1))+A034521(n+1)`
-/

namespace A254191.P6781274325552099280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A167614 (n + 1)).toNat + A034521 (n + 1)

end

end A254191.P6781274325552099280

/-! ## A254191.P14699578870896238523

`A335520(n+1)+A254189(A167614(n+1))`
-/

namespace A254191.P14699578870896238523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (n + 1) + A254189 (A167614 (n + 1)).toNat

end

end A254191.P14699578870896238523

/-!
# A254192: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254192, there is no canonical definition to state claims against.
-/

/-! ## A254192.P17108523886147781439

`A254189(A141214(n)+7)`
-/

namespace A254192.P17108523886147781439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A141214 n + 7).toNat

end

end A254192.P17108523886147781439

/-! ## A254192.P15022934065661999845

`A254189(A052905(n)+9)`
-/

namespace A254192.P15022934065661999845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A052905 n + 9).toNat

end

end A254192.P15022934065661999845

/-! ## A254192.P4748163596922452485

`A254189(A055999(n)+10)`
-/

namespace A254192.P4748163596922452485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A055999 n + 10).toNat

end

end A254192.P4748163596922452485

/-! ## A254192.P7413374315181230379

`A254189(A167614(n+2)+1)`
-/

namespace A254192.P7413374315181230379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A167614 (n + 2) + 1).toNat

end

end A254192.P7413374315181230379

/-! ## A254192.P14467910066053744071

`A254189(A166136(n+2)-2)`
-/

namespace A254192.P14467910066053744071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A166136 (n + 2) - 2).toNat

end

end A254192.P14467910066053744071

/-!
# A254193: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254193, there is no canonical definition to state claims against.
-/

/-! ## A254193.P5432407459536907503

`A254189(A167499(n+3))`
-/

namespace A254193.P5432407459536907503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A167499 (n + 3)).toNat

end

end A254193.P5432407459536907503

/-! ## A254193.P11512683158033062273

`A254189(A155212(n)+13)`
-/

namespace A254193.P11512683158033062273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A155212 n + 13).toNat

end

end A254193.P11512683158033062273

/-! ## A254193.P11820132706905511345

`A254189(A056000(n)+15)`
-/

namespace A254193.P11820132706905511345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A056000 n + 15).toNat

end

end A254193.P11820132706905511345

/-! ## A254193.P10616708713129313754

`A254189(A051936(n+4)+14)`
-/

namespace A254193.P10616708713129313754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A051936 (n + 4) + 14).toNat

end

end A254193.P10616708713129313754

/-! ## A254193.P17131728162967385634

`A254189(eq[6, A131818(n+1)])`
-/

namespace A254193.P17131728162967385634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254193.P17131728162967385634

/-!
# A254194: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254194, there is no canonical definition to state claims against.
-/

/-! ## A254194.P8363000953415025771

`A254189(A167614(n+4)+3)`
-/

namespace A254194.P8363000953415025771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A167614 (n + 4) + 3).toNat

end

end A254194.P8363000953415025771

/-! ## A254194.P4754473863684275580

`A254189(A055998(n+3)+9)`
-/

namespace A254194.P4754473863684275580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A055998 (n + 3) + 9).toNat

end

end A254194.P4754473863684275580

/-! ## A254194.P12176024159417788972

`A254189(A046691(n+3)+10)`
-/

namespace A254194.P12176024159417788972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A046691 (n + 3) + 10).toNat

end

end A254194.P12176024159417788972

/-! ## A254194.P3921575510416614247

`A254189(eq[7, A131818(n+1)])`
-/

namespace A254194.P3921575510416614247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254194.P3921575510416614247

/-! ## A254194.P17540742204383947450

`A254189(Δ[A023545(n+1)]+10)`
-/

namespace A254194.P17540742204383947450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (f1 (n + 1) - f1 n + 10).toNat

end

end A254194.P17540742204383947450

/-!
# A254195: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254195, there is no canonical definition to state claims against.
-/

/-! ## A254195.P1514725057901675003

`A254189(A056119(n)+28)`
-/

namespace A254195.P1514725057901675003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (A056119 n + 28).toNat

end

end A254195.P1514725057901675003

/-! ## A254195.P3399309960916434553

`A254189(eq[11, A066657(n)])`
-/

namespace A254195.P3399309960916434553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254195.P3399309960916434553

/-! ## A254195.P16055000388477792673

`A254189(eq[8, A131818(n+1)])`
-/

namespace A254195.P16055000388477792673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254195.P16055000388477792673

/-!
# A254197: Number of length n 1..(1+2) arrays with no leading or trailing partial sum equal to a prime.

The programs for A254197, there is no canonical definition to state claims against.
-/

/-! ## A254197.P5177949860082608374

`A254204(∑[n+1])`
-/

namespace A254197.P5177949860082608374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254197.P5177949860082608374

/-! ## A254197.P14203240474017214726

`A254204(A000217(n+1))%A000032(n)`
-/

namespace A254197.P14203240474017214726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254204 (A000217 (n + 1)).toNat) (A000032 n)

end

end A254197.P14203240474017214726

/-! ## A254197.P15521399435298710141

`A254204(A000217(n+1))/A038500(A011782(n))`
-/

namespace A254197.P15521399435298710141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254204 (A000217 (n + 1)).toNat : ℚ) / (A038500 (A011782 n).toNat : ℚ)

end

end A254197.P15521399435298710141

/-! ## A254197.P12063003738088108040

`A268643(A346737(n))`
-/

namespace A254197.P12063003738088108040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A346737 n).toNat

end

end A254197.P12063003738088108040

/-! ## A254197.P13476698372526103554

`A172303(A039566(n+1))`
-/

namespace A254197.P13476698372526103554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172303 (A039566 (n + 1)).toNat

end

end A254197.P13476698372526103554

/-!
# A254198: Number of length n 1..(2+2) arrays with no leading or trailing partial sum equal to a prime.

The programs for A254198, there is no canonical definition to state claims against.
-/

/-! ## A254198.P7123752204938244878

`A254204(∑[n+2])`
-/

namespace A254198.P7123752204938244878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254198.P7123752204938244878

/-! ## A254198.P10409389842989221036

`A254204(A000096(n+1))/gcd(5, A000032(n))`
-/

namespace A254198.P10409389842989221036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254204 (A000096 (n + 1)).toNat : ℚ) / (Int.gcd 5 (A000032 n) : ℚ)

end

end A254198.P10409389842989221036

/-! ## A254198.P13912130323638962335

`A007318(C(2, n))*A254204(A000096(n+1))`
-/

namespace A254198.P13912130323638962335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A254204 (A000096 (n + 1)).toNat

end

end A254198.P13912130323638962335

/-! ## A254198.P11800498355646230998

`A254204(A000096(n+1))%A254200(n+1)`
-/

namespace A254198.P11800498355646230998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254204 (A000096 (n + 1)).toNat) (A254200 (n + 1))

end

end A254198.P11800498355646230998

/-!
# A254199: Number of length n 1..(3+2) arrays with no leading or trailing partial sum equal to a prime.

The programs for A254199, there is no canonical definition to state claims against.
-/

/-! ## A254199.P9898450959046499207

`A254204(∑[n+3]+1)`
-/

namespace A254199.P9898450959046499207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254199.P9898450959046499207

/-! ## A254199.P675629439645899129

`A254204(A034856(n+2))+A000007(n+1)`
-/

namespace A254199.P675629439645899129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A254199.P675629439645899129

/-! ## A254199.P13830662875746843483

`A254204(A034856(n+2))+A000035(2*n)`
-/

namespace A254199.P13830662875746843483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254204 (A034856 (n + 2)).toNat + A000035 (2 * n)

end

end A254199.P13830662875746843483

