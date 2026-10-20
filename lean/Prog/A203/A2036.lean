import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
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

/-!
# A203601: a(0)=1, a(n+1) = (a(n)*7) XOR a(n).

The programs for A203601, the canonical program `A203601.P1906781244716425411` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203601 has offset 0).

The definition of A203601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203601.P1906781244716425411

`xor(7*a(n-1), a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203601

/-- `xor(7*a(n-1), a(n-1))` -/
def P1906781244716425411.Spec : Prop :=
  ∀ n, (P1906781244716425411.a n : ℤ) = A203601 n

theorem P1906781244716425411.correct : P1906781244716425411.Spec := by
  intro n
  simp only [A203601]

end A203601

/-! ## A203601.P933508277272802050

`A178733(a(n-1))` with `a(0)=1`
-/

namespace A203601.P933508277272802050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A178733 (a (n - 1)).toNat

end

end A203601.P933508277272802050

namespace A203601

/-- `A178733(a(n-1))` -/
def P933508277272802050.Spec : Prop :=
  ∀ n, P933508277272802050.a n = A203601 n

end A203601

/-!
# A203603: Numbers n=a+b+c+d such that 0

The programs for A203603, there is no canonical definition to state claims against.
-/

/-! ## A203603.P1800104094852300942

`A070797(eq[A139600(n), A302242(2*n+3)])`
-/

namespace A203603.P1800104094852300942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070797 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A203603.P1800104094852300942

/-!
# A203604: Number of n X 2 0,1 arrays with adjacent row and column sums unequal.

The programs for A203604, there is no canonical definition to state claims against.
-/

/-! ## A203604.P14309134285470330593

`A203610(∑[n+1]+2)`
-/

namespace A203604.P14309134285470330593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203604.P14309134285470330593

/-! ## A203604.P1567659920208730253

`record[A203610(n+1)/A179455(n)]`
-/

namespace A203604.P1567659920208730253
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203610 (n + 1) : ℚ) / (A179455 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203604.P1567659920208730253

/-! ## A203604.P12922770747505240161

`record[A203610(n+2)/A022166(n)]`
-/

namespace A203604.P12922770747505240161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203610 (n + 2) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203604.P12922770747505240161

/-! ## A203604.P2836973254295278262

`record[A203610(n+2)/A099759(n)]`
-/

namespace A203604.P2836973254295278262
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203610 (n + 2) : ℚ) / (A099759 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203604.P2836973254295278262

/-! ## A203604.P8939230735733951106

`record[A203610(n+2)/A154980(n)]`
-/

namespace A203604.P8939230735733951106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203610 (n + 2) : ℚ) / (A154980 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203604.P8939230735733951106

/-!
# A203605: Number of nX3 0,1 arrays with adjacent row and column sums unequal.

The programs for A203605, there is no canonical definition to state claims against.
-/

/-! ## A203605.P3256559905307960636

`A203610(∑[n+2]+4)`
-/

namespace A203605.P3256559905307960636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203605.P3256559905307960636

/-! ## A203605.P1246021387960025059

`lcm(2, A203610(A167614(n+1)))`
-/

namespace A203605.P1246021387960025059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203610 (A167614 (n + 1)).toNat)

end

end A203605.P1246021387960025059

/-! ## A203605.P12753920681063854123

`A203610(A167614(n+1))+A011730(n)`
-/

namespace A203605.P12753920681063854123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A167614 (n + 1)).toNat + A011730 n

end

end A203605.P12753920681063854123

/-! ## A203605.P5544767342741796175

`A203610(A167614(n+1))+A025444(n)`
-/

namespace A203605.P5544767342741796175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A167614 (n + 1)).toNat + A025444 n

end

end A203605.P5544767342741796175

/-! ## A203605.P18008596807733392961

`A203610(A167614(n+1))+A025466(n)`
-/

namespace A203605.P18008596807733392961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A167614 (n + 1)).toNat + A025466 n

end

end A203605.P18008596807733392961

/-!
# A203606: Number of nX4 0,1 arrays with adjacent row and column sums unequal.

The programs for A203606, there is no canonical definition to state claims against.
-/

/-! ## A203606.P17794478955190422174

`A203610(∑[a(n-1)+1])` with `a(0)=10, a(1)=4`
-/

namespace A203606.P17794478955190422174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A203606.P17794478955190422174

/-! ## A203606.P9733421883388212731

`A203610(A374004(n+1))`
-/

namespace A203606.P9733421883388212731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A374004 (n + 1)).toNat

end

end A203606.P9733421883388212731

/-! ## A203606.P1394396919080065348

`A203610(A141214(n)+7)`
-/

namespace A203606.P1394396919080065348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A141214 n + 7).toNat

end

end A203606.P1394396919080065348

/-! ## A203606.P15287992212445267475

`A203610(A052905(n)+9)`
-/

namespace A203606.P15287992212445267475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A052905 n + 9).toNat

end

end A203606.P15287992212445267475

/-! ## A203606.P16574031152822571137

`A203610(A055999(n)+10)`
-/

namespace A203606.P16574031152822571137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A055999 n + 10).toNat

end

end A203606.P16574031152822571137

/-!
# A203607: Number of nX5 0,1 arrays with adjacent row and column sums unequal.

The programs for A203607, there is no canonical definition to state claims against.
-/

/-! ## A203607.P4466173147598082378

`A203610(A374005(n+1))`
-/

namespace A203607.P4466173147598082378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A374005 (n + 1)).toNat

end

end A203607.P4466173147598082378

/-! ## A203607.P1152449913416653559

`A203610(A167499(n+3))`
-/

namespace A203607.P1152449913416653559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A167499 (n + 3)).toNat

end

end A203607.P1152449913416653559

/-! ## A203607.P14739627424445674439

`A203610(A155212(n)+13)`
-/

namespace A203607.P14739627424445674439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A155212 n + 13).toNat

end

end A203607.P14739627424445674439

/-! ## A203607.P8369036249180901152

`A203610(A056000(n)+15)`
-/

namespace A203607.P8369036249180901152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A056000 n + 15).toNat

end

end A203607.P8369036249180901152

/-! ## A203607.P10616032387430176942

`A203610(eq[7, A066657(n)])`
-/

namespace A203607.P10616032387430176942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203607.P10616032387430176942

/-!
# A203608: Number of nX6 0,1 arrays with adjacent row and column sums unequal.

The programs for A203608, there is no canonical definition to state claims against.
-/

/-! ## A203608.P9208713408422295272

`A203610(A374007(n+1))`
-/

namespace A203608.P9208713408422295272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A374007 (n + 1)).toNat

end

end A203608.P9208713408422295272

/-! ## A203608.P13770235555494976552

`A203610(A166136(n+4))`
-/

namespace A203608.P13770235555494976552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A166136 (n + 4)).toNat

end

end A203608.P13770235555494976552

/-! ## A203608.P5249475187398327468

`A203610(A056115(n)+21)`
-/

namespace A203608.P5249475187398327468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A056115 n + 21).toNat

end

end A203608.P5249475187398327468

/-! ## A203608.P2171561314003282132

`A203610(eq[6, A130270(n+1)])`
-/

namespace A203608.P2171561314003282132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203608.P2171561314003282132

/-! ## A203608.P12210431629870871710

`A203610(eq[7, A131818(n+1)])`
-/

namespace A203608.P12210431629870871710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203608.P12210431629870871710

/-!
# A203609: Number of nX7 0,1 arrays with adjacent row and column sums unequal.

The programs for A203609, there is no canonical definition to state claims against.
-/

/-! ## A203609.P6708056547127888473

`A203610(A374008(n+1))`
-/

namespace A203609.P6708056547127888473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A374008 (n + 1)).toNat

end

end A203609.P6708056547127888473

/-! ## A203609.P6394938704096993038

`A203610(A055999(n+4))`
-/

namespace A203609.P6394938704096993038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A055999 (n + 4)).toNat

end

end A203609.P6394938704096993038

/-! ## A203609.P10191442094290053648

`A203610(A167487(n+5))`
-/

namespace A203609.P10191442094290053648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A167487 (n + 5)).toNat

end

end A203609.P10191442094290053648

/-! ## A203609.P10371956631989685691

`A203610(A168106(n)-6)`
-/

namespace A203609.P10371956631989685691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203610 (A168106 n - 6).toNat

end

end A203609.P10371956631989685691

/-!
# A203610: T(n,k)=Number of nXk 0,1 arrays with adjacent row and column sums unequal.

The programs for A203610, there is no canonical definition to state claims against.
-/

/-! ## A203610.P7834940034624282329

`A006638(A157243(n))`
-/

namespace A203610.P7834940034624282329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006638 (A157243 n).toNat

end

end A203610.P7834940034624282329

/-! ## A203610.P2791482102341841173

`A028785(A152602(n))`
-/

namespace A203610.P2791482102341841173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028785 (A152602 n).toNat

end

end A203610.P2791482102341841173

/-! ## A203610.P16774547105849051413

`A034020(A157221(n))`
-/

namespace A203610.P16774547105849051413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034020 (A157221 n).toNat

end

end A203610.P16774547105849051413

/-! ## A203610.P2675035873903852387

`A135727(A059328(n))`
-/

namespace A203610.P2675035873903852387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135727 (A059328 n).toNat

end

end A203610.P2675035873903852387

/-! ## A203610.P15441008069802142026

`A045506(A157177(n))`
-/

namespace A203610.P15441008069802142026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045506 (A157177 n).toNat

end

end A203610.P15441008069802142026

/-!
# A203611: a(n) = Sum_{k=0..n} binomial(k-1,2*k-1-n)*binomial(k,2*k-n), with a(0) = 1.

The programs for A203611, there is no canonical definition to state claims against.
-/

/-! ## A203611.P12459485806874806044

`A088518(2*n)-Δ[A166287(n)]`
-/

namespace A203611.P12459485806874806044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n) - (f1 (n + 1) - f1 n)

end

end A203611.P12459485806874806044

/-! ## A203611.P10877465438013145852

`A051291(n)+∑[A051286(n)-A051291(n)]`
-/

namespace A203611.P10877465438013145852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n - A051291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051291 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203611.P10877465438013145852

/-! ## A203611.P14380390440478399723

`A051286(n)+A187258(n)-A187258(n+1)`
-/

namespace A203611.P14380390440478399723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n + (A187258 n - A187258 (n + 1))

end

end A203611.P14380390440478399723

/-! ## A203611.P710645740736913007

`A077419(2*n+1)+A077419(2*n)-A088518(2*n+1)`
-/

namespace A203611.P710645740736913007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077419 (2 * n + 1) + (A077419 (2 * n) - A088518 (2 * n + 1))

end

end A203611.P710645740736913007

/-! ## A203611.P10880435098010692435

`A110198(A028310(n))-A201631(A028310(n))`
-/

namespace A203611.P10880435098010692435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110198 (A028310 n).toNat - A201631 (A028310 n).toNat

end

end A203611.P10880435098010692435

/-! ## A203611.P349094289649908847

`A051291(n)+A110198(n)-A201631(n+1)`
-/

namespace A203611.P349094289649908847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051291 n + (A110198 n - A201631 (n + 1))

end

end A203611.P349094289649908847

/-! ## A203611.P5882322879494989399

`A088518(2*n+1)+A088518(2*n)-A051286(n+1)`
-/

namespace A203611.P5882322879494989399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n + 1) + (A088518 (2 * n) - A051286 (n + 1))

end

end A203611.P5882322879494989399

/-! ## A203611.P13856656161797670011

`A079487(2*n²)`
-/

namespace A203611.P13856656161797670011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (2 * n ^ 2)

end

end A203611.P13856656161797670011

/-! ## A203611.P9650490627624648237

`A078807((n+1)²+n²)`
-/

namespace A203611.P9650490627624648237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078807 ((n + 1) ^ 2 + n ^ 2)

end

end A203611.P9650490627624648237

/-! ## A203611.P11301258633262266141

`or(char[1], A079487(A001105(n)))`
-/

namespace A203611.P11301258633262266141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A079487 (A001105 n).toNat)

end

end A203611.P11301258633262266141

/-!
# A203612: For any number n take the polynomial formed by the product of the terms (x-pi), where pi's are the prime factors of n. Then calculate the area between the minimum and the maximum value of the prime factors. This sequence lists the numbers for which the area is a positive integer.

The programs for A203612, there is no canonical definition to state claims against.
-/

/-! ## A203612.P823144690261214614

`A245284(lt[0, A245435(n+1)]+1)`
-/

namespace A203612.P823144690261214614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A203612.P823144690261214614

/-!
# A203613: For any number n take the polynomial formed by the product of the terms (x-pi), where pi's are the prime factors of n. Then calculate the area between the minimum and the maximum value of the prime factors. This sequence lists the numbers for which the area is a negative integer.

The programs for A203613, there is no canonical definition to state claims against.
-/

/-! ## A203613.P15917777446771116653

`A245284(lt[A245435(n+1), 0]+1)`
-/

namespace A203613.P15917777446771116653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245435 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245284 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A203613.P15917777446771116653

/-! ## A203613.P15761981884680632196

`A245284(record[n+1-A005044(n)])`
-/

namespace A203613.P15761981884680632196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A203613.P15761981884680632196

/-! ## A203613.P12143598356947743534

`∩[A255429(n+1), A016921(n)]`
-/

namespace A203613.P12143598356947743534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A203613.P12143598356947743534

/-!
# A203614: For any number n take the polynomial formed by the product of the terms (x-pi), where pi's are the prime factors of n. Then calculate the area between the minimum and the maximum value of the prime factors. This sequence lists the numbers for which the area is equal to zero.

The programs for A203614, there is no canonical definition to state claims against.
-/

/-! ## A203614.P17270905292281669978

`A245284(eq[0, A245435(n+1)]+1)`
-/

namespace A203614.P17270905292281669978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A203614.P17270905292281669978

/-! ## A203614.P2943271763246466057

`A245284(lt[A245435(n+1)², n+2]+1)`
-/

namespace A203614.P2943271763246466057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245435 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245284 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A203614.P2943271763246466057

/-!
# A203615: Reversal of sigma(n) equals the sum of the reversals of the divisors of n.

The programs for A203615, there is no canonical definition to state claims against.
-/

/-! ## A203615.P15319438498906291109

`∑[A330952(A335548(n))]`
-/

namespace A203615.P15319438498906291109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330952 (A335548 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203615.P15319438498906291109

/-! ## A203615.P2166712606536439852

`∑[A287091(A001644(floor((n/2)²)))]`
-/

namespace A203615.P2166712606536439852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287091 (A001644 ⌊((n : ℚ) / 2) ^ 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203615.P2166712606536439852

/-! ## A203615.P4773506895483857453

`A056239(A088789(n)+A000005(2*(n+1)))`
-/

namespace A203615.P4773506895483857453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A088789 n + A000005 (2 * (n + 1))).toNat

end

end A203615.P4773506895483857453

/-!
# A203616: Numbers k such that the reversal of sigma*(k) equals the sum of the reversals of the anti-divisors of k, where sigma*(k) is the sum of the anti-divisors of k.

The programs for A203616, there is no canonical definition to state claims against.
-/

/-! ## A203616.P11047108766351626771

`A332073(∑[A333883(n)])`
-/

namespace A203616.P11047108766351626771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332073 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A203616.P11047108766351626771

/-! ## A203616.P8799477575483080259

`A273859(A369406(n+1))`
-/

namespace A203616.P8799477575483080259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273859 (A369406 (n + 1)).toNat

end

end A203616.P8799477575483080259

/-! ## A203616.P2938922446569128984

`∑[A053000(A061886(n)²)]`
-/

namespace A203616.P2938922446569128984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A061886 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203616.P2938922446569128984

/-! ## A203616.P12408624860406229339

`∑[A140191(Δ[A350580(n+1)])]`
-/

namespace A203616.P12408624860406229339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350580 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140191 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203616.P12408624860406229339

/-! ## A203616.P18301345644933592583

`∩[A164119(n+1), A190219(n+1)]`
-/

namespace A203616.P18301345644933592583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A203616.P18301345644933592583

/-!
# A203618: Numbers m such that (m'+1)' = m-1, where m' is the arithmetic derivative of m.

The programs for A203618, there is no canonical definition to state claims against.
-/

/-! ## A203618.P848212026153400565

`eq[n, A003415(A003415(n)+1)+1]`
-/

namespace A203618.P848212026153400565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003415 n + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A203618.P848212026153400565

/-! ## A203618.P2005900956201062915

`eq[A129283(A003415(n)+1), A129283(n)]`
-/

namespace A203618.P2005900956201062915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (A003415 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203618.P2005900956201062915

/-! ## A203618.P13452210787232982898

`eq[A129283(A319703(n-(1-n)%(n+1)+1)+1), A129283(n)]`
-/

namespace A203618.P13452210787232982898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (A319703 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203618.P13452210787232982898

/-!
# A203621: Highly anti-imperfect numbers: numbers k that sets a record for the value of |sigma*(k)-k|, where sigma*(k) is the sum of the anti-divisors of k.

The programs for A203621, there is no canonical definition to state claims against.
-/

/-! ## A203621.P15921182398547250237

`eq[n^(char[n²]/2), A121373(A122204(2*n))]`
-/

namespace A203621.P15921182398547250237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ) / 2 : ℝ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A122204 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℝ)) n

end

end A203621.P15921182398547250237

/-! ## A203621.P10658010307829316392

`eq[A000089((n+1)²), A051612(A069322(2*n+1))]`
-/

namespace A203621.P10658010307829316392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 ((n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (A069322 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203621.P10658010307829316392

/-! ## A203621.P9638565198880463688

`eq[A002894(A047751(n+1)), A140995(2*n+1)]`
-/

namespace A203621.P9638565198880463688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002894 (A047751 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140995 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A203621.P9638565198880463688

/-! ## A203621.P3705671626259179100

`lt[A109647(2*n+1), A109630(A002326(n+1))]`
-/

namespace A203621.P3705671626259179100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109647 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109630 (A002326 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A203621.P3705671626259179100

/-! ## A203621.P2746212607400670547

`lt[A332970(A332963(2*n+1)), A332965(n+1)]`
-/

namespace A203621.P2746212607400670547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332970 (A332963 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A203621.P2746212607400670547

/-!
# A203622: a(n) = (a(n-1) OR a(n-2)) XOR n.

The programs for A203622, the canonical program `A203622.P17445274533802586991` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203622 has offset 0).

The definition of A203622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203622.P17445274533802586991

`xor(n, or(a(n-1), a(n-2)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203622

/-- `xor(n, or(a(n-1), a(n-2)))` -/
def P17445274533802586991.Spec : Prop :=
  ∀ n, (P17445274533802586991.a n : ℤ) = A203622 n

theorem P17445274533802586991.correct : P17445274533802586991.Spec := by
  intro n
  simp only [A203622]

end A203622

/-! ## A203622.P7207993626300328667

`xor(n, a(n-1)+and(n-1, a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A203622.P7207993626300328667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor (n : ℤ) (a (n - 1) + Int.land ((n : ℤ) - 1) (a (n - 2)))

end

end A203622.P7207993626300328667

namespace A203622

/-- `xor(n, a(n-1)+and(n-1, a(n-2)))` -/
def P7207993626300328667.Spec : Prop :=
  ∀ n, P7207993626300328667.a n = A203622 n

end A203622

/-! ## A203622.P4272734662698559679

`xor(and(n-1, a(n-2)), xor(n, a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A203622.P4272734662698559679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor (Int.land ((n : ℤ) - 1) (a (n - 2))) (Int.xor (n : ℤ) (a (n - 1)))

end

end A203622.P4272734662698559679

namespace A203622

/-- `xor(and(n-1, a(n-2)), xor(n, a(n-1)))` -/
def P4272734662698559679.Spec : Prop :=
  ∀ n, P4272734662698559679.a n = A203622 n

end A203622

/-!
# A203623: Partial sums of A061395.

The programs for A203623, the canonical program `A203623.P1383915864646164806` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203623 has offset 1).

The definition of A203623 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061395, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A203623.P1383915864646164806

`a(n-1)+A061395(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A203623

/-- `a(n-1)+A061395(n+1)` -/
def P1383915864646164806.Spec : Prop :=
  ∀ n, P1383915864646164806.a n = A203623 (n + 1)

theorem P1383915864646164806.correct : P1383915864646164806.Spec := by
  intro n
  simp only [A203623, Nat.add_sub_cancel]

end A203623

/-! ## A203623.P13943682090085640619

`∑[A061395(n+1)]`
-/

namespace A203623.P13943682090085640619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203623.P13943682090085640619

namespace A203623

/-- `∑[A061395(n+1)]` -/
def P13943682090085640619.Spec : Prop :=
  ∀ n, P13943682090085640619.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P12548009588926727495

`∑[A159081(n+1)-1]`
-/

namespace A203623.P12548009588926727495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159081 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203623.P12548009588926727495

namespace A203623

/-- `∑[A159081(n+1)-1]` -/
def P12548009588926727495.Spec : Prop :=
  ∀ n, P12548009588926727495.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P3759906712513268890

`∑[A252735(n+1)]+n`
-/

namespace A203623.P3759906712513268890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A203623.P3759906712513268890

namespace A203623

/-- `∑[A252735(n+1)]+n` -/
def P3759906712513268890.Spec : Prop :=
  ∀ n, P3759906712513268890.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P3393043939587054489

`∑[1-A243291(n+1)+n]`
-/

namespace A203623.P3393043939587054489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A243291 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203623.P3393043939587054489

namespace A203623

/-- `∑[1-A243291(n+1)+n]` -/
def P3393043939587054489.Spec : Prop :=
  ∀ n, P3393043939587054489.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P13481529438474674103

`∑[A000720(A006530(n+1))]`
-/

namespace A203623.P13481529438474674103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203623.P13481529438474674103

namespace A203623

/-- `∑[A000720(A006530(n+1))]` -/
def P13481529438474674103.Spec : Prop :=
  ∀ n, P13481529438474674103.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P17819378254225130323

`∑[A065770(A007947(n+1))]`
-/

namespace A203623.P17819378254225130323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203623.P17819378254225130323

namespace A203623

/-- `∑[A065770(A007947(n+1))]` -/
def P17819378254225130323.Spec : Prop :=
  ∀ n, P17819378254225130323.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P15227233942095915775

`∑[A055396(A053585(n+1))]`
-/

namespace A203623.P15227233942095915775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A053585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203623.P15227233942095915775

namespace A203623

/-- `∑[A055396(A053585(n+1))]` -/
def P15227233942095915775.Spec : Prop :=
  ∀ n, P15227233942095915775.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P5280909588819490284

`∑[A079067(A117366(n+1))]`
-/

namespace A203623.P5280909588819490284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A117366 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203623.P5280909588819490284

namespace A203623

/-- `∑[A079067(A117366(n+1))]` -/
def P5280909588819490284.Spec : Prop :=
  ∀ n, P5280909588819490284.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P2631053053026178972

`∑[∑{d}[A006530(n+1), A049084(#)]]`
-/

namespace A203623.P2631053053026178972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A049084 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203623.P2631053053026178972

namespace A203623

/-- `∑[∑{d}[A006530(n+1), A049084(#)]]` -/
def P2631053053026178972.Spec : Prop :=
  ∀ n, P2631053053026178972.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P5233895084999829791

`∑[∑{p}[A053585(n+1), A003963(#)]]`
-/

namespace A203623.P5233895084999829791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A003963 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203623.P5233895084999829791

namespace A203623

/-- `∑[∑{p}[A053585(n+1), A003963(#)]]` -/
def P5233895084999829791.Spec : Prop :=
  ∀ n, P5233895084999829791.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P13320294627361997783

`∑[A000720(A053585(∏{p}[n+1, #]))]`
-/

namespace A203623.P13320294627361997783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A053585 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203623.P13320294627361997783

namespace A203623

/-- `∑[A000720(A053585(∏{p}[n+1, #]))]` -/
def P13320294627361997783.Spec : Prop :=
  ∀ n, P13320294627361997783.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P2126421534000278703

`∑[A055396(A006530(∏{p}[n+1, #]))]`
-/

namespace A203623.P2126421534000278703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A006530 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203623.P2126421534000278703

namespace A203623

/-- `∑[A055396(A006530(∏{p}[n+1, #]))]` -/
def P2126421534000278703.Spec : Prop :=
  ∀ n, P2126421534000278703.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P11971885665023514382

`∑[A056172(2*A006530(n+1))]`
-/

namespace A203623.P11971885665023514382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203623.P11971885665023514382

namespace A203623

/-- `∑[A056172(2*A006530(n+1))]` -/
def P11971885665023514382.Spec : Prop :=
  ∀ n, P11971885665023514382.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P1078429186496344457

`∑[A333352(2*(n+1))]-1`
-/

namespace A203623.P1078429186496344457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333352 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A203623.P1078429186496344457

namespace A203623

/-- `∑[A333352(2*(n+1))]-1` -/
def P1078429186496344457.Spec : Prop :=
  ∀ n, P1078429186496344457.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P17719969122356414239

`∑[A243055(2*(n+1))]+n`
-/

namespace A203623.P17719969122356414239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A203623.P17719969122356414239

namespace A203623

/-- `∑[A243055(2*(n+1))]+n` -/
def P17719969122356414239.Spec : Prop :=
  ∀ n, P17719969122356414239.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P7333249193150046995

`∑[val(A181821(n+1), 2)]`
-/

namespace A203623.P7333249193150046995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181821 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203623.P7333249193150046995

namespace A203623

/-- `∑[val(A181821(n+1), 2)]` -/
def P7333249193150046995.Spec : Prop :=
  ∀ n, (P7333249193150046995.a n : ℤ) = A203623 (n + 1)

end A203623

/-! ## A203623.P10217125274664258752

`∑[A253556(A250245(n+1))]+n`
-/

namespace A203623.P10217125274664258752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253556 (A250245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A203623.P10217125274664258752

namespace A203623

/-- `∑[A253556(A250245(n+1))]+n` -/
def P10217125274664258752.Spec : Prop :=
  ∀ n, P10217125274664258752.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P5682700152360105743

`∑[A253556(A250469(A250245(n+1)))]`
-/

namespace A203623.P5682700152360105743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253556 (A250469 (A250245 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203623.P5682700152360105743

namespace A203623

/-- `∑[A253556(A250469(A250245(n+1)))]` -/
def P5682700152360105743.Spec : Prop :=
  ∀ n, P5682700152360105743.a n = A203623 (n + 1)

end A203623

/-! ## A203623.P2571575518058506296

`∑[A285715(A048673(n+1))]`
-/

namespace A203623.P2571575518058506296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285715 (A048673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203623.P2571575518058506296

namespace A203623

/-- `∑[A285715(A048673(n+1))]` -/
def P2571575518058506296.Spec : Prop :=
  ∀ n, P2571575518058506296.a n = A203623 (n + 1)

end A203623

/-!
# A203625: Indices of octagonal numbers which are also decagonal.

The programs for A203625, the canonical program `A203625.P7154821844824831581` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203625 has offset 1).

The definition of A203625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203625.P7154821844824831581

`194*a(n-1)-a(n-2)-64` with `a(0)=1, a(1)=135`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203625

/-- `194*a(n-1)-a(n-2)-64` -/
def P7154821844824831581.Spec : Prop :=
  ∀ n, P7154821844824831581.a n = A203625 (n + 1)

theorem P7154821844824831581.correct : P7154821844824831581.Spec := by
  intro n
  simp only [A203625, Nat.add_sub_cancel]

end A203625

/-! ## A203625.P4766540016541348033

`ceil(1/24*(1+2*sqrt(3))*(2+sqrt(3))^(4*(n+1)-3))`
-/

namespace A203625.P4766540016541348033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 24 : ℝ) * (1 + 2 * Real.sqrt (3 : ℝ)) * (2 + Real.sqrt (3 : ℝ)) ^ ((4 * (n + 1) : ℤ) - 3 : ℤ)⌉

end

end A203625.P4766540016541348033

namespace A203625

/-- `ceil(1/24*(1+2*sqrt(3))*(2+sqrt(3))^(4*(n+1)-3))` -/
def P4766540016541348033.Spec : Prop :=
  ∀ n, P4766540016541348033.a n = A203625 (n + 1)

end A203625

/-! ## A203625.P10362982973169681462

`A046184(2*n+1)+A007655(2*n+1)`
-/

namespace A203625.P10362982973169681462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046184 (2 * n + 1) + A007655 (2 * n + 1)

end

end A203625.P10362982973169681462

namespace A203625

/-- `A046184(2*n+1)+A007655(2*n+1)` -/
def P10362982973169681462.Spec : Prop :=
  ∀ n, P10362982973169681462.a n = A203625 (n + 1)

end A203625

/-! ## A203625.P13043426417928380659

`A001353(2*n+1)*A144721(2*n)/2`
-/

namespace A203625.P13043426417928380659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001353 (2 * n + 1) * A144721 (2 * n) : ℚ) / 2

end

end A203625.P13043426417928380659

namespace A203625

/-- `A001353(2*n+1)*A144721(2*n)/2` -/
def P13043426417928380659.Spec : Prop :=
  ∀ n, P13043426417928380659.a n = (A203625 (n + 1) : ℚ)

end A203625

/-! ## A203625.P9063201800300161537

`(A011944(n)+A011943(n+1))*Δ[A098301(n)]`
-/

namespace A203625.P9063201800300161537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011944 n + A011943 (n + 1)) * (f1 (n + 1) - f1 n)

end

end A203625.P9063201800300161537

namespace A203625

/-- `(A011944(n)+A011943(n+1))*Δ[A098301(n)]` -/
def P9063201800300161537.Spec : Prop :=
  ∀ n, P9063201800300161537.a n = A203625 (n + 1)

end A203625

/-!
# A203626: Indices of decagonal numbers which are also octagonal.

The programs for A203626, the canonical program `A203626.P17259729102954740849` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203626 has offset 1).

The definition of A203626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203626.P17259729102954740849

`194*a(n-1)-a(n-2)-72` with `a(0)=1, a(1)=117`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203626

/-- `194*a(n-1)-a(n-2)-72` -/
def P17259729102954740849.Spec : Prop :=
  ∀ n, P17259729102954740849.a n = A203626 (n + 1)

theorem P17259729102954740849.correct : P17259729102954740849.Spec := by
  intro n
  simp only [A203626, Nat.add_sub_cancel]

end A203626

/-! ## A203626.P14706162240697630786

`ceil(1/48*(sqrt(3)+6)*(2+sqrt(3))^(4*(n+1)-3))`
-/

namespace A203626.P14706162240697630786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 48 : ℝ) * (Real.sqrt (3 : ℝ) + 6) * (2 + Real.sqrt (3 : ℝ)) ^ ((4 * (n + 1) : ℤ) - 3 : ℤ)⌉

end

end A203626.P14706162240697630786

namespace A203626

/-- `ceil(1/48*(sqrt(3)+6)*(2+sqrt(3))^(4*(n+1)-3))` -/
def P14706162240697630786.Spec : Prop :=
  ∀ n, P14706162240697630786.a n = A203626 (n + 1)

end A203626

/-! ## A203626.P12704870553182695918

`(A046175(n)+A001922(n))*A001570(n+1)`
-/

namespace A203626.P12704870553182695918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046175 n + A001922 n) * A001570 (n + 1)

end

end A203626.P12704870553182695918

namespace A203626

/-- `(A046175(n)+A001922(n))*A001570(n+1)` -/
def P12704870553182695918.Spec : Prop :=
  ∀ n, P12704870553182695918.a n = A203626 (n + 1)

end A203626

/-! ## A203626.P15421670452878317370

`(A011944(n)+A011943(n+1))*A001570(n+1)`
-/

namespace A203626.P15421670452878317370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011944 n + A011943 (n + 1)) * A001570 (n + 1)

end

end A203626.P15421670452878317370

namespace A203626

/-- `(A011944(n)+A011943(n+1))*A001570(n+1)` -/
def P15421670452878317370.Spec : Prop :=
  ∀ n, P15421670452878317370.a n = A203626 (n + 1)

end A203626

/-! ## A203626.P13154285827535794541

`(A122571(n+1)+A067900(n))*A001570(n+1)`
-/

namespace A203626.P13154285827535794541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122571 (n + 1) + A067900 n) * A001570 (n + 1)

end

end A203626.P13154285827535794541

namespace A203626

/-- `(A122571(n+1)+A067900(n))*A001570(n+1)` -/
def P13154285827535794541.Spec : Prop :=
  ∀ n, P13154285827535794541.a n = A203626 (n + 1)

end A203626

/-!
# A203628: Indices of 9-gonal (nonagonal) numbers which are also 10-gonal (decagonal).

The programs for A203628, the canonical program `A203628.P8324850700871513301` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203628 has offset 1).

The definition of A203628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203628.P8324850700871513301

`898*a(n-1)-a(n-2)-320` with `a(0)=1, a(1)=589`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203628

/-- `898*a(n-1)-a(n-2)-320` -/
def P8324850700871513301.Spec : Prop :=
  ∀ n, P8324850700871513301.a n = A203628 (n + 1)

theorem P8324850700871513301.correct : P8324850700871513301.Spec := by
  intro n
  simp only [A203628, Nat.add_sub_cancel]

end A203628

/-! ## A203628.P10135514751776094059

`ceil(1/56*(sqrt(2)+2*sqrt(7))*(2*sqrt(2)+sqrt(7))^(4*(n+1)-3))`
-/

namespace A203628.P10135514751776094059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 56 : ℝ) * ((Real.sqrt (2 : ℝ) + 2 * Real.sqrt (7 : ℝ)) * (2 * Real.sqrt (2 : ℝ) + Real.sqrt (7 : ℝ)) ^ ((4 * (n + 1) : ℤ) - 3 : ℤ))⌉

end

end A203628.P10135514751776094059

namespace A203628

/-- `ceil(1/56*(sqrt(2)+2*sqrt(7))*(2*sqrt(2)+sqrt(7))^(4*(n+1)-3))` -/
def P10135514751776094059.Spec : Prop :=
  ∀ n, P10135514751776094059.a n = A203628 (n + 1)

end A203628

/-! ## A203628.P11161292102178903426

`(A068204(n+1)+A068203(n))*A157878(n+1)`
-/

namespace A203628.P11161292102178903426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A068204 (n + 1) + A068203 n) * A157878 (n + 1)

end

end A203628.P11161292102178903426

namespace A203628

/-- `(A068204(n+1)+A068203(n))*A157878(n+1)` -/
def P11161292102178903426.Spec : Prop :=
  ∀ n, P11161292102178903426.a n = A203628 (n + 1)

end A203628

/-!
# A203629: Indices of 10-gonal (decagonal) numbers which are also 9-gonal (nonagonal).

The programs for A203629, the canonical program `A203629.P13037695881945280641` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203629 has offset 1).

The definition of A203629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203629.P13037695881945280641

`898*a(n-1)-a(n-2)-336` with `a(0)=1, a(1)=551`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203629

/-- `898*a(n-1)-a(n-2)-336` -/
def P13037695881945280641.Spec : Prop :=
  ∀ n, P13037695881945280641.a n = A203629 (n + 1)

theorem P13037695881945280641.correct : P13037695881945280641.Spec := by
  intro n
  simp only [A203629, Nat.add_sub_cancel]

end A203629

/-! ## A203629.P15049334662709922509

`(A068204(n+1)+A068203(n))*A157877(n+1)`
-/

namespace A203629.P15049334662709922509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A068204 (n + 1) + A068203 n) * A157877 (n + 1)

end

end A203629.P15049334662709922509

namespace A203629

/-- `(A068204(n+1)+A068203(n))*A157877(n+1)` -/
def P15049334662709922509.Spec : Prop :=
  ∀ n, P15049334662709922509.a n = A203629 (n + 1)

end A203629

/-!
# A203630: Number of n X n 0..1 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203630, there is no canonical definition to state claims against.
-/

/-! ## A203630.P11921358001711321457

`A203638(∑[4*n]+1)`
-/

namespace A203630.P11921358001711321457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203630.P11921358001711321457

/-! ## A203630.P11972607860118828983

`lcm(2, A203638(A001844(n)))`
-/

namespace A203630.P11972607860118828983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203638 (A001844 n).toNat)

end

end A203630.P11972607860118828983

/-! ## A203630.P4374057371718648937

`record[gcd(A114327(n), A203638(n+1))]`
-/

namespace A203630.P4374057371718648937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A203638 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203630.P4374057371718648937

/-! ## A203630.P14340153673178774182

`A015012(n)*A203638(A001844(n))`
-/

namespace A203630.P14340153673178774182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015012 n * A203638 (A001844 n).toNat

end

end A203630.P14340153673178774182

/-! ## A203630.P14995641022032059749

`A203638(A001844(n))*A278657(n)`
-/

namespace A203630.P14995641022032059749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (A001844 n).toNat * A278657 n

end

end A203630.P14995641022032059749

/-!
# A203631: Number of nX1 0..1 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203631, there is no canonical definition to state claims against.
-/

/-! ## A203631.P464324691226305557

`A203638(∑[n]+1)`
-/

namespace A203631.P464324691226305557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203631.P464324691226305557

/-! ## A203631.P3379461945236517883

`lcm(2, A203638(A000124(n)))`
-/

namespace A203631.P3379461945236517883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203638 (A000124 n).toNat)

end

end A203631.P3379461945236517883

/-! ## A203631.P16004459948550875866

`A203638(A000124(n))+A178798(n)`
-/

namespace A203631.P16004459948550875866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (A000124 n).toNat + A178798 n

end

end A203631.P16004459948550875866

/-! ## A203631.P16452173761915398765

`A203638(A000124(n))%A017334(n)`
-/

namespace A203631.P16452173761915398765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203638 (A000124 n).toNat) (A017334 n)

end

end A203631.P16452173761915398765

/-! ## A203631.P11583267159538337855

`A007318(C(2, n))*A203638(A000124(n))`
-/

namespace A203631.P11583267159538337855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A203638 (A000124 n).toNat

end

end A203631.P11583267159538337855

/-!
# A203632: Number of nX2 0..1 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203632, there is no canonical definition to state claims against.
-/

/-! ## A203632.P8794383227777086111

`A203638(∑[n+1]+2)`
-/

namespace A203632.P8794383227777086111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203632.P8794383227777086111

/-! ## A203632.P16187959048116861177

`lcm(2, A203638(A000096(n)+3))`
-/

namespace A203632.P16187959048116861177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203638 (A000096 n + 3).toNat)

end

end A203632.P16187959048116861177

/-! ## A203632.P11109934922664611787

`A203638(A252460(2*(n+2)))%(9*(sqrt(10)^n)²)`
-/

namespace A203632.P11109934922664611787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203638 (A252460 (2 * (n + 2))).toNat) (SequenceMachineLib.roundAway (9 * (Real.sqrt (10 : ℝ) ^ n) ^ 2))

end

end A203632.P11109934922664611787

/-! ## A203632.P1479105094989551517

`A203638(A000096(n)+3)%A200676(n+4)`
-/

namespace A203632.P1479105094989551517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203638 (A000096 n + 3).toNat) (A200676 (n + 4))

end

end A203632.P1479105094989551517

/-! ## A203632.P4111530831118485406

`A007318(A000217(n))*A203638(A000096(n)+3)`
-/

namespace A203632.P4111530831118485406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A203638 (A000096 n + 3).toNat

end

end A203632.P4111530831118485406

/-!
# A203633: Number of nX3 0..1 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203633, there is no canonical definition to state claims against.
-/

/-! ## A203633.P5212643381289453235

`A203638(∑[n+2]+4)`
-/

namespace A203633.P5212643381289453235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203633.P5212643381289453235

/-! ## A203633.P10613884784693687775

`lcm(2, A203638(A167614(n+1)))`
-/

namespace A203633.P10613884784693687775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A203638 (A167614 (n + 1)).toNat)

end

end A203633.P10613884784693687775

/-! ## A203633.P15927853559854222912

`A203638(A167614(n+1))+A178798(n)`
-/

namespace A203633.P15927853559854222912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (A167614 (n + 1)).toNat + A178798 n

end

end A203633.P15927853559854222912

/-! ## A203633.P16769099056416938135

`A203638(A167614(n+1))%A016965(n)`
-/

namespace A203633.P16769099056416938135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203638 (A167614 (n + 1)).toNat) (A016965 n)

end

end A203633.P16769099056416938135

/-! ## A203633.P1206125054971409749

`A203638(A167614(n+1))+A034522(n+1)`
-/

namespace A203633.P1206125054971409749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (A167614 (n + 1)).toNat + A034522 (n + 1)

end

end A203633.P1206125054971409749

/-!
# A203634: Number of nX4 0..1 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203634, there is no canonical definition to state claims against.
-/

/-! ## A203634.P9836241392519144288

`A203638(∑[n+3]+7)`
-/

namespace A203634.P9836241392519144288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A203634.P9836241392519144288

/-! ## A203634.P9477674257567862212

`xor(1, A203638(A027379(n+2))+1)`
-/

namespace A203634.P9477674257567862212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A203638 (A027379 (n + 2)).toNat + 1)

end

end A203634.P9477674257567862212

/-!
# A203635: Number of nX5 0..1 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203635, there is no canonical definition to state claims against.
-/

/-! ## A203635.P16417479455368362002

`A203638(A374005(n+1))`
-/

namespace A203635.P16417479455368362002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (A374005 (n + 1)).toNat

end

end A203635.P16417479455368362002

/-! ## A203635.P8110685739766377477

`A203638(A167499(n+3))`
-/

namespace A203635.P8110685739766377477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (A167499 (n + 3)).toNat

end

end A203635.P8110685739766377477

/-! ## A203635.P7770705517541341599

`A203638(A056000(n)+15)`
-/

namespace A203635.P7770705517541341599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (A056000 n + 15).toNat

end

end A203635.P7770705517541341599

/-! ## A203635.P15683179510565593884

`A203638(A038722(Δ[A023545(n+1)]))`
-/

namespace A203635.P15683179510565593884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A203635.P15683179510565593884

/-! ## A203635.P15867511697340096162

`A203638(eq[4, A193592(n)])`
-/

namespace A203635.P15867511697340096162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203635.P15867511697340096162

/-!
# A203636: Number of nX6 0..1 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203636, there is no canonical definition to state claims against.
-/

/-! ## A203636.P2906168760299385807

`A203638(A374007(n+1))`
-/

namespace A203636.P2906168760299385807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (A374007 (n + 1)).toNat

end

end A203636.P2906168760299385807

/-! ## A203636.P8137508976454999994

`A203638(A167614(n+4)+3)`
-/

namespace A203636.P8137508976454999994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (A167614 (n + 4) + 3).toNat

end

end A203636.P8137508976454999994

/-! ## A203636.P1757222366302203903

`A203638(eq[7, A131818(n+1)])`
-/

namespace A203636.P1757222366302203903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203636.P1757222366302203903

/-! ## A203636.P6868556262176505582

`A203638(A052905(n+3))`
-/

namespace A203636.P6868556262176505582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (A052905 (n + 3)).toNat

end

end A203636.P6868556262176505582

/-! ## A203636.P9205828509361964161

`A203638(A302537(n)+15)`
-/

namespace A203636.P9205828509361964161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (A302537 n + 15).toNat

end

end A203636.P9205828509361964161

/-!
# A203637: Number of n X 7 0..1 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203637, there is no canonical definition to state claims against.
-/

/-! ## A203637.P16481637022179101534

`A203638(A374008(n+1))`
-/

namespace A203637.P16481637022179101534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (A374008 (n + 1)).toNat

end

end A203637.P16481637022179101534

/-! ## A203637.P3529259600450706160

`A203638(A052905(n+3)+12)`
-/

namespace A203637.P3529259600450706160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (A052905 (n + 3) + 12).toNat

end

end A203637.P3529259600450706160

/-! ## A203637.P2558935016062019480

`A203638(eq[8, A131818(n+1)])`
-/

namespace A203637.P2558935016062019480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203637.P2558935016062019480

/-! ## A203637.P16972008584275646583

`A203638(A055999(n+4))`
-/

namespace A203637.P16972008584275646583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (A055999 (n + 4)).toNat

end

end A203637.P16972008584275646583

/-! ## A203637.P15232510814529526482

`A203638(eq[4, A219347(n)])`
-/

namespace A203637.P15232510814529526482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203637.P15232510814529526482

/-!
# A203638: T(n,k)=Number of nXk 0..1 arrays with the counts of all possible adjacent horizontal and vertical pair sum values being within one of each other.

The programs for A203638, there is no canonical definition to state claims against.
-/

/-! ## A203638.P13750085565481817785

`A381532(A226852(n+1))`
-/

namespace A203638.P13750085565481817785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381532 (A226852 (n + 1)).toNat

end

end A203638.P13750085565481817785

/-! ## A203638.P11285756821027412680

`dr(A297889(A207169(A297889(n+1))))`
-/

namespace A203638.P11285756821027412680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A297889 (A207169 (A297889 (n + 1)).toNat).toNat)

end

end A203638.P11285756821027412680

/-!
# A203639: Multiplicative with a(p^e) = e*p^(e-1).

The programs for A203639, the canonical program `A203639.P16011470496757075944` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203639 has offset 1).

The definition of A203639 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A203639.P16011470496757075944

`A005361(n+1)*A003557(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A203639

/-- `A005361(n+1)*A003557(n+1)` -/
def P16011470496757075944.Spec : Prop :=
  ∀ n, P16011470496757075944.a n = A203639 (n + 1)

theorem P16011470496757075944.correct : P16011470496757075944.Spec := by
  intro n
  simp only [A203639, Nat.add_sub_cancel]

end A203639

/-! ## A203639.P9599190733325901826

`(n+1)*A005361(n+1)/A007947(n+1)`
-/

namespace A203639.P9599190733325901826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A005361 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A203639.P9599190733325901826

namespace A203639

/-- `(n+1)*A005361(n+1)/A007947(n+1)` -/
def P9599190733325901826.Spec : Prop :=
  ∀ n, P9599190733325901826.a n = (A203639 (n + 1) : ℚ)

end A203639

/-! ## A203639.P13591955772839466093

`(n+1)/∏{p}[n+1, #]*∏{e}[n+1, #]`
-/

namespace A203639.P13591955772839466093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)

end

end A203639.P13591955772839466093

namespace A203639

/-- `(n+1)/∏{p}[n+1, #]*∏{e}[n+1, #]` -/
def P13591955772839466093.Spec : Prop :=
  ∀ n, P13591955772839466093.a n = (A203639 (n + 1) : ℚ)

end A203639

/-! ## A203639.P10088322014302562864

`(n+1)/∏{p}[n+1, #]*A000005((n+1)/∏{p}[n+1, #])`
-/

namespace A203639.P10088322014302562864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A203639.P10088322014302562864

namespace A203639

/-- `(n+1)/∏{p}[n+1, #]*A000005((n+1)/∏{p}[n+1, #])` -/
def P10088322014302562864.Spec : Prop :=
  ∀ n, P10088322014302562864.a n = (A203639 (n + 1) : ℚ)

end A203639

/-! ## A203639.P5330295811171157715

`A038040(A003557(n+1))`
-/

namespace A203639.P5330295811171157715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A003557 (n + 1)).toNat

end

end A203639.P5330295811171157715

namespace A203639

/-- `A038040(A003557(n+1))` -/
def P5330295811171157715.Spec : Prop :=
  ∀ n, P5330295811171157715.a n = A203639 (n + 1)

end A203639

/-! ## A203639.P1399171253617638847

`∑{d}[A003557(n+1), A018804(#)]`
-/

namespace A203639.P1399171253617638847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A018804 d

end

end A203639.P1399171253617638847

namespace A203639

/-- `∑{d}[A003557(n+1), A018804(#)]` -/
def P1399171253617638847.Spec : Prop :=
  ∀ n, P1399171253617638847.a n = A203639 (n + 1)

end A203639

/-! ## A203639.P6687404425322481107

`A038040((n+1)/A007947(n+1))`
-/

namespace A203639.P6687404425322481107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A203639.P6687404425322481107

namespace A203639

/-- `A038040((n+1)/A007947(n+1))` -/
def P6687404425322481107.Spec : Prop :=
  ∀ n, P6687404425322481107.a n = A203639 (n + 1)

end A203639

/-! ## A203639.P15984238714232143958

`A363917(n+1)/A072195(n+1)`
-/

namespace A203639.P15984238714232143958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363917 (n + 1) : ℚ) / (A072195 (n + 1) : ℚ)

end

end A203639.P15984238714232143958

namespace A203639

/-- `A363917(n+1)/A072195(n+1)` -/
def P15984238714232143958.Spec : Prop :=
  ∀ n, P15984238714232143958.a n = (A203639 (n + 1) : ℚ)

end A203639

/-! ## A203639.P11803340777335414887

`A361265(n+1)/A078615(n+1)`
-/

namespace A203639.P11803340777335414887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361265 (n + 1) : ℚ) / (A078615 (n + 1) : ℚ)

end

end A203639.P11803340777335414887

namespace A203639

/-- `A361265(n+1)/A078615(n+1)` -/
def P11803340777335414887.Spec : Prop :=
  ∀ n, P11803340777335414887.a n = (A203639 (n + 1) : ℚ)

end A203639

/-! ## A203639.P11152570074076117036

`A361265(n+1)/A007947(n+1)²`
-/

namespace A203639.P11152570074076117036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361265 (n + 1) : ℚ) / (A007947 (n + 1) ^ 2 : ℚ)

end

end A203639.P11152570074076117036

namespace A203639

/-- `A361265(n+1)/A007947(n+1)²` -/
def P11152570074076117036.Spec : Prop :=
  ∀ n, P11152570074076117036.a n = (A203639 (n + 1) : ℚ)

end A203639

/-! ## A203639.P18081473719818073036

`(A183094(n+1)+1)*A003557(n+1)`
-/

namespace A203639.P18081473719818073036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A183094 (n + 1) + 1) * A003557 (n + 1)

end

end A203639.P18081473719818073036

namespace A203639

/-- `(A183094(n+1)+1)*A003557(n+1)` -/
def P18081473719818073036.Spec : Prop :=
  ∀ n, P18081473719818073036.a n = A203639 (n + 1)

end A203639

/-! ## A203639.P17583985154491196346

`(A336551(n+1)+1)*A005361(n+1)`
-/

namespace A203639.P17583985154491196346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336551 (n + 1) + 1) * A005361 (n + 1)

end

end A203639.P17583985154491196346

namespace A203639

/-- `(A336551(n+1)+1)*A005361(n+1)` -/
def P17583985154491196346.Spec : Prop :=
  ∀ n, P17583985154491196346.a n = A203639 (n + 1)

end A203639

/-! ## A203639.P9582144311028901917

`∑{d}[A003557(n+1), A003557(lcm(#, n+1))]`
-/

namespace A203639.P9582144311028901917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003557 (Nat.lcm d (n + 1))

end

end A203639.P9582144311028901917

namespace A203639

/-- `∑{d}[A003557(n+1), A003557(lcm(#, n+1))]` -/
def P9582144311028901917.Spec : Prop :=
  ∀ n, P9582144311028901917.a n = A203639 (n + 1)

end A203639

/-! ## A203639.P6207027535984065278

`(n+1)/A000026(n+1)*A005361(n+1)²`
-/

namespace A203639.P6207027535984065278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000026 (n + 1) : ℚ) * (A005361 (n + 1) ^ 2 : ℚ)

end

end A203639.P6207027535984065278

namespace A203639

/-- `(n+1)/A000026(n+1)*A005361(n+1)²` -/
def P6207027535984065278.Spec : Prop :=
  ∀ n, P6207027535984065278.a n = (A203639 (n + 1) : ℚ)

end A203639

/-! ## A203639.P16557552210248852270

`A038040(A000010(n+1)/A173557(n+1))`
-/

namespace A203639.P16557552210248852270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ))).toNat

end

end A203639.P16557552210248852270

namespace A203639

/-- `A038040(A000010(n+1)/A173557(n+1))` -/
def P16557552210248852270.Spec : Prop :=
  ∀ n, P16557552210248852270.a n = A203639 (n + 1)

end A203639

/-! ## A203639.P4977719712854083383

`A038040(A038040(n+1)/A304409(n+1))`
-/

namespace A203639.P4977719712854083383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (A304409 (n + 1) : ℚ))).toNat

end

end A203639.P4977719712854083383

namespace A203639

/-- `A038040(A038040(n+1)/A304409(n+1))` -/
def P4977719712854083383.Spec : Prop :=
  ∀ n, P4977719712854083383.a n = A203639 (n + 1)

end A203639

/-! ## A203639.P3570692279817878482

`A361268(n+1)/A361264(A007947(n+1))`
-/

namespace A203639.P3570692279817878482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361268 (n + 1) : ℚ) / (A361264 (A007947 (n + 1)).toNat : ℚ)

end

end A203639.P3570692279817878482

namespace A203639

/-- `A361268(n+1)/A361264(A007947(n+1))` -/
def P3570692279817878482.Spec : Prop :=
  ∀ n, P3570692279817878482.a n = (A203639 (n + 1) : ℚ)

end A203639

/-! ## A203639.P9440307718189209157

`(A335341(n+1)-A336567(n+1))*A005361(n+1)`
-/

namespace A203639.P9440307718189209157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A335341 (n + 1) - A336567 (n + 1)) * A005361 (n + 1)

end

end A203639.P9440307718189209157

namespace A203639

/-- `(A335341(n+1)-A336567(n+1))*A005361(n+1)` -/
def P9440307718189209157.Spec : Prop :=
  ∀ n, P9440307718189209157.a n = A203639 (n + 1)

end A203639

/-! ## A203639.P4890267404701430683

`A003557(n+1)/A048250(n+1)*A304411(n+1)`
-/

namespace A203639.P4890267404701430683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ) * (A304411 (n + 1) : ℚ)

end

end A203639.P4890267404701430683

namespace A203639

/-- `A003557(n+1)/A048250(n+1)*A304411(n+1)` -/
def P4890267404701430683.Spec : Prop :=
  ∀ n, P4890267404701430683.a n = (A203639 (n + 1) : ℚ)

end A203639

/-! ## A203639.P12646318754976589271

`A003557(n+1)/A064549(n+1)*A361265(n+1)`
-/

namespace A203639.P12646318754976589271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / (A064549 (n + 1) : ℚ) * (A361265 (n + 1) : ℚ)

end

end A203639.P12646318754976589271

namespace A203639

/-- `A003557(n+1)/A064549(n+1)*A361265(n+1)` -/
def P12646318754976589271.Spec : Prop :=
  ∀ n, P12646318754976589271.a n = (A203639 (n + 1) : ℚ)

end A203639

/-!
# A203640: Length of the cycle reached for the map x->A203639(x), starting at n.

The programs for A203640, the canonical program `A203640.P11471034263871899350` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203640 has offset 1).

The definition of A203640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A203640.P15531557776543914447

`A353573(A353574((n+1)/∏{p}[n+1, #])²)`
-/

namespace A203640.P15531557776543914447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353573 (A353574 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat ^ 2).toNat

end

end A203640.P15531557776543914447

namespace A203640

/-- `A353573(A353574((n+1)/∏{p}[n+1, #])²)` -/
def P15531557776543914447.Spec : Prop :=
  ∀ n, P15531557776543914447.a n = A203640 (n + 1)

end A203640

/-! ## A203640.P2931540694840127187

`A060680((A004524(n)+2)*A007425(n+1))`
-/

namespace A203640.P2931540694840127187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060680 ((A004524 n + 2) * A007425 (n + 1)).toNat

end

end A203640.P2931540694840127187

namespace A203640

/-- `A060680((A004524(n)+2)*A007425(n+1))` -/
def P2931540694840127187.Spec : Prop :=
  ∀ n, P2931540694840127187.a n = A203640 (n + 1)

end A203640

/-! ## A203640.P4858068720021042385

`A055396(A007425(n+1)*A140472(n+2))`
-/

namespace A203640.P4858068720021042385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A007425 (n + 1) * A140472 (n + 2)).toNat

end

end A203640.P4858068720021042385

namespace A203640

/-- `A055396(A007425(n+1)*A140472(n+2))` -/
def P4858068720021042385.Spec : Prop :=
  ∀ n, P4858068720021042385.a n = A203640 (n + 1)

end A203640

/-! ## A203640.P1541557226473859050

`gcd(A043277(A043256(n+1)), A043289(n+1))`
-/

namespace A203640.P1541557226473859050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A043277 (A043256 (n + 1)).toNat) (A043289 (n + 1))

end

end A203640.P1541557226473859050

namespace A203640

/-- `gcd(A043277(A043256(n+1)), A043289(n+1))` -/
def P1541557226473859050.Spec : Prop :=
  ∀ n, (P1541557226473859050.a n : ℤ) = A203640 (n + 1)

end A203640

/-! ## A203640.P11424726850912133827

`∏{e}[A264439(∏{p}[n+1, #^val(n+1, #²)]), #]`
-/

namespace A203640.P11424726850912133827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264439 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A203640.P11424726850912133827

namespace A203640

/-- `∏{e}[A264439(∏{p}[n+1, #^val(n+1, #²)]), #]` -/
def P11424726850912133827.Spec : Prop :=
  ∀ n, (P11424726850912133827.a n : ℤ) = A203640 (n + 1)

end A203640

/-! ## A203640.P9106479059740924709

`∏{e}[A008302(∏{p}[n+1, #^val(n+1, #²)]²), #]`
-/

namespace A203640.P9106479059740924709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008302 ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A203640.P9106479059740924709

namespace A203640

/-- `∏{e}[A008302(∏{p}[n+1, #^val(n+1, #²)]²), #]` -/
def P9106479059740924709.Spec : Prop :=
  ∀ n, (P9106479059740924709.a n : ℤ) = A203640 (n + 1)

end A203640

/-! ## A203640.P2995606161885091257

`∏{e}[A327516(∏{p}[n+1, #^val(n+1, #²)]²), #]`
-/

namespace A203640.P2995606161885091257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327516 ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A203640.P2995606161885091257

namespace A203640

/-- `∏{e}[A327516(∏{p}[n+1, #^val(n+1, #²)]²), #]` -/
def P2995606161885091257.Spec : Prop :=
  ∀ n, (P2995606161885091257.a n : ℤ) = A203640 (n + 1)

end A203640

/-! ## A203640.P10625843958626082064

`∏{e}[A201237(∏{p}[n+1, #^val(n+1, #²)])-1, #]`
-/

namespace A203640.P10625843958626082064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201237 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A203640.P10625843958626082064

namespace A203640

/-- `∏{e}[A201237(∏{p}[n+1, #^val(n+1, #²)])-1, #]` -/
def P10625843958626082064.Spec : Prop :=
  ∀ n, (P10625843958626082064.a n : ℤ) = A203640 (n + 1)

end A203640

/-! ## A203640.P3354685268488400474

`∏{e}[A232601(A000188(n+1)), #]`
-/

namespace A203640.P3354685268488400474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232601 (A000188 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A203640.P3354685268488400474

namespace A203640

/-- `∏{e}[A232601(A000188(n+1)), #]` -/
def P3354685268488400474.Spec : Prop :=
  ∀ n, (P3354685268488400474.a n : ℤ) = A203640 (n + 1)

end A203640

/-! ## A203640.P17650675068669073992

`A359411(A359391(∏{p}[n+1, #^val(n+1, #²)]))`
-/

namespace A203640.P17650675068669073992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359411 (A359391 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))).toNat

end

end A203640.P17650675068669073992

namespace A203640

/-- `A359411(A359391(∏{p}[n+1, #^val(n+1, #²)]))` -/
def P17650675068669073992.Spec : Prop :=
  ∀ n, P17650675068669073992.a n = A203640 (n + 1)

end A203640

/-! ## A203640.P1972681549572084886

`A360721(A286815(∏{p}[n+1, #^val(n+1, #²)]²)+1)`
-/

namespace A203640.P1972681549572084886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360721 (A286815 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2) + 1).toNat

end

end A203640.P1972681549572084886

namespace A203640

/-- `A360721(A286815(∏{p}[n+1, #^val(n+1, #²)]²)+1)` -/
def P1972681549572084886.Spec : Prop :=
  ∀ n, P1972681549572084886.a n = A203640 (n + 1)

end A203640

/-! ## A203640.P11155862732737995645

`A185016(A220777(∏{p}[n+1, #^val(n+1, #²)]²+1))+1`
-/

namespace A203640.P11155862732737995645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A220777 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 + 1)).toNat + 1

end

end A203640.P11155862732737995645

namespace A203640

/-- `A185016(A220777(∏{p}[n+1, #^val(n+1, #²)]²+1))+1` -/
def P11155862732737995645.Spec : Prop :=
  ∀ n, P11155862732737995645.a n = A203640 (n + 1)

end A203640

/-! ## A203640.P10478851262680582929

`A115362(A115362(n)^A178334(n))`
-/

namespace A203640.P10478851262680582929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (SequenceMachineLib.roundAway ((A115362 n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A203640.P10478851262680582929

namespace A203640

/-- `A115362(A115362(n)^A178334(n))` -/
def P10478851262680582929.Spec : Prop :=
  ∀ n, P10478851262680582929.a n = A203640 (n + 1)

end A203640

/-! ## A203640.P10226081523129498403

`gcd(A295658(n+1), A324347(A046092(n)))`
-/

namespace A203640.P10226081523129498403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A295658 (n + 1)) (A324347 (A046092 n).toNat)

end

end A203640.P10226081523129498403

namespace A203640

/-- `gcd(A295658(n+1), A324347(A046092(n)))` -/
def P10226081523129498403.Spec : Prop :=
  ∀ n, (P10226081523129498403.a n : ℤ) = A203640 (n + 1)

end A203640

/-! ## A203640.P11471034263871899350

`A046951(A046951(57*n+1)^A046951(n+1)+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A203640

/-- `A046951(A046951(57*n+1)^A046951(n+1)+1)` -/
def P11471034263871899350.Spec : Prop :=
  ∀ n, P11471034263871899350.a n = A203640 (n + 1)

theorem P11471034263871899350.correct : P11471034263871899350.Spec := by
  intro n
  simp only [A203640, Nat.add_sub_cancel]

end A203640

/-! ## A203640.P210802753514052056

`A346741(and(A000188(n+1), A001834(n)))`
-/

namespace A203640.P210802753514052056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346741 (Int.land (A000188 (n + 1)) (A001834 n)).toNat

end

end A203640.P210802753514052056

namespace A203640

/-- `A346741(and(A000188(n+1), A001834(n)))` -/
def P210802753514052056.Spec : Prop :=
  ∀ n, P210802753514052056.a n = A203640 (n + 1)

end A203640

/-! ## A203640.P7317540564577430957

`A323308((8*A000188(n+1))²+1)`
-/

namespace A203640.P7317540564577430957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323308 ((8 * A000188 (n + 1)) ^ 2 + 1).toNat

end

end A203640.P7317540564577430957

namespace A203640

/-- `A323308((8*A000188(n+1))²+1)` -/
def P7317540564577430957.Spec : Prop :=
  ∀ n, P7317540564577430957.a n = A203640 (n + 1)

end A203640

/-! ## A203640.P14623349939938156886

`A006345(A059152(n))`
-/

namespace A203640.P14623349939938156886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006345 (A059152 n).toNat

end

end A203640.P14623349939938156886

namespace A203640

/-- `A006345(A059152(n))` -/
def P14623349939938156886.Spec : Prop :=
  ∀ n, P14623349939938156886.a n = A203640 (n + 1)

end A203640

/-!
# A203641: Number of arrays of n 0..10 integers with new values introduced in order 0..10 but otherwise unconstrained.

The programs for A203641, there is no canonical definition to state claims against.
-/

/-! ## A203641.P4641411487682022060

`A203647(A000124(n+10)-10)`
-/

namespace A203641.P4641411487682022060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A000124 (n + 10) - 10).toNat

end

end A203641.P4641411487682022060

/-! ## A203641.P16853663101402497573

`A137855(A253145(n+10)-10)`
-/

namespace A203641.P16853663101402497573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A253145 (n + 10) - 10).toNat

end

end A203641.P16853663101402497573

/-! ## A203641.P9657155621496995039

`A203647(A000217(n+9)+n+1)`
-/

namespace A203641.P9657155621496995039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A000217 (n + 9) + (n + 1 : ℤ)).toNat

end

end A203641.P9657155621496995039

/-! ## A203641.P4839476849472716971

`A137855(A000217(n+10)+n+1)`
-/

namespace A203641.P4839476849472716971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A000217 (n + 10) + (n + 1 : ℤ)).toNat

end

end A203641.P4839476849472716971

/-! ## A203641.P13277779325680179208

`A203647(A112355(n+8)-9)`
-/

namespace A203641.P13277779325680179208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A112355 (n + 8) - 9).toNat

end

end A203641.P13277779325680179208

/-!
# A203642: Number of arrays of n 0..11 integers with new values introduced in order 0..11 but otherwise unconstrained.

The programs for A203642, there is no canonical definition to state claims against.
-/

/-! ## A203642.P314820939345544859

`A203647(A056000(n+7))`
-/

namespace A203642.P314820939345544859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A056000 (n + 7)).toNat

end

end A203642.P314820939345544859

/-! ## A203642.P8808323241858511266

`A137855(A052905(n+9)-6)`
-/

namespace A203642.P8808323241858511266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A052905 (n + 9) - 6).toNat

end

end A203642.P8808323241858511266

/-! ## A203642.P13697435475804616730

`A203647(A000124(n+11)-11)`
-/

namespace A203642.P13697435475804616730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A000124 (n + 11) - 11).toNat

end

end A203642.P13697435475804616730

/-! ## A203642.P3616230361541910442

`A203647(A000217(n+10)+n+1)`
-/

namespace A203642.P3616230361541910442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A000217 (n + 10) + (n + 1 : ℤ)).toNat

end

end A203642.P3616230361541910442

/-! ## A203642.P2187200308632649751

`A278984(A000217(n+11)+12)`
-/

namespace A203642.P2187200308632649751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (A000217 (n + 11) + 12).toNat

end

end A203642.P2187200308632649751

/-!
# A203643: Number of arrays of n 0..12 integers with new values introduced in order 0..12 but otherwise unconstrained.

The programs for A203643, there is no canonical definition to state claims against.
-/

/-! ## A203643.P10789019664306191146

`A203647(A000124(n+12)-12)`
-/

namespace A203643.P10789019664306191146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A000124 (n + 12) - 12).toNat

end

end A203643.P10789019664306191146

/-! ## A203643.P1837400119207179430

`A203647(2*(n+1)+A167499(n+9)+5)`
-/

namespace A203643.P1837400119207179430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 ((2 * (n + 1) : ℤ) + (A167499 (n + 9) + 5)).toNat

end

end A203643.P1837400119207179430

/-! ## A203643.P17097754032444880172

`A203647(A002522(n+9)-A000217(n+5))`
-/

namespace A203643.P17097754032444880172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A002522 (n + 9) - A000217 (n + 5)).toNat

end

end A203643.P17097754032444880172

/-! ## A203643.P10313966285729795575

`A203647(A017113(n+6)+A000217(n+4)+5)`
-/

namespace A203643.P10313966285729795575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A017113 (n + 6) + (A000217 (n + 4) + 5)).toNat

end

end A203643.P10313966285729795575

/-! ## A203643.P16023045197871012660

`A278984(A000217(n+12)+13)`
-/

namespace A203643.P16023045197871012660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (A000217 (n + 12) + 13).toNat

end

end A203643.P16023045197871012660

/-!
# A203644: Number of arrays of n 0..13 integers with new values introduced in order 0..13 but otherwise unconstrained.

The programs for A203644, there is no canonical definition to state claims against.
-/

/-! ## A203644.P14326883889834455325

`A203647(eq[12, A193592(n)])`
-/

namespace A203644.P14326883889834455325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203644.P14326883889834455325

/-! ## A203644.P3038728857479257889

`A137855(eq[13, A193592(n)])`
-/

namespace A203644.P3038728857479257889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203644.P3038728857479257889

/-! ## A203644.P1075464020703627946

`A203647(eq[15, A219347(n)])`
-/

namespace A203644.P1075464020703627946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203644.P1075464020703627946

/-! ## A203644.P17238616959413905077

`A203647(A000124(n+12)+n)`
-/

namespace A203644.P17238616959413905077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A000124 (n + 12) + (n : ℤ)).toNat

end

end A203644.P17238616959413905077

/-! ## A203644.P11884115094853132694

`A203647(A000217(n+12)+n+1)`
-/

namespace A203644.P11884115094853132694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A000217 (n + 12) + (n + 1 : ℤ)).toNat

end

end A203644.P11884115094853132694

/-!
# A203645: Number of arrays of n 0..14 integers with new values introduced in order 0..14 but otherwise unconstrained.

The programs for A203645, there is no canonical definition to state claims against.
-/

/-! ## A203645.P11226750626883031619

`A203647(eq[13, A193592(n)])`
-/

namespace A203645.P11226750626883031619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203645.P11226750626883031619

/-! ## A203645.P1451949668217886125

`A137855(eq[14, A193592(n)])`
-/

namespace A203645.P1451949668217886125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203645.P1451949668217886125

/-! ## A203645.P7189548219229967243

`A137855(eq[22, A219347(n)])`
-/

namespace A203645.P7189548219229967243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203645.P7189548219229967243

/-! ## A203645.P2759469978615570289

`A203647(A000096(n+12)+n+2)`
-/

namespace A203645.P2759469978615570289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A000096 (n + 12) + (n + 2 : ℤ)).toNat

end

end A203645.P2759469978615570289

/-! ## A203645.P11561603056577798802

`A137855(A161680(n+15)+n+1)`
-/

namespace A203645.P11561603056577798802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A161680 (n + 15) + (n + 1 : ℤ)).toNat

end

end A203645.P11561603056577798802

/-!
# A203646: Number of arrays of n 0..15 integers with new values introduced in order 0..15 but otherwise unconstrained.

The programs for A203646, there is no canonical definition to state claims against.
-/

/-! ## A203646.P4452979388149194457

`A010815(A016946(n))+A000110(n+1)`
-/

namespace A203646.P4452979388149194457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A016946 n).toNat + A000110 (n + 1)

end

end A203646.P4452979388149194457

/-! ## A203646.P10554689700135820498

`A000110(n+1)-A044941(A000079(n))`
-/

namespace A203646.P10554689700135820498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - A044941 (A000079 n).toNat

end

end A203646.P10554689700135820498

/-! ## A203646.P826142350131457450

`A000110(n+1)-A152489(A046802(n))`
-/

namespace A203646.P826142350131457450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - A152489 (A046802 n).toNat

end

end A203646.P826142350131457450

/-! ## A203646.P4389074001537400355

`A000110(n+1)-A086008(A157151(n))`
-/

namespace A203646.P4389074001537400355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - A086008 (A157151 n).toNat

end

end A203646.P4389074001537400355

/-! ## A203646.P13131787273607908859

`A000110(n+1)-A082784(A214631(n))`
-/

namespace A203646.P13131787273607908859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - A082784 (A214631 n).toNat

end

end A203646.P13131787273607908859

/-!
# A203647: T(n,k) = number of arrays of n 0..k integers with new values introduced in order 0..k but otherwise unconstrained. Array read by antidiagonals.

The programs for A203647, there is no canonical definition to state claims against.
-/

/-! ## A203647.P5715105513044861818

`A137855(comp[∑[n]])`
-/

namespace A203647.P5715105513044861818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A203647.P5715105513044861818

/-! ## A203647.P12168875725563575366

`or(A000007(n), A137855(A014132(n+1)))`
-/

namespace A203647.P12168875725563575366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A137855 (A014132 (n + 1)).toNat)

end

end A203647.P12168875725563575366

/-! ## A203647.P14188429935002536572

`or(A063524(n), A137855(A014132(n+1)))`
-/

namespace A203647.P14188429935002536572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A137855 (A014132 (n + 1)).toNat)

end

end A203647.P14188429935002536572

/-! ## A203647.P10523017760706887331

`A137855(A063524(n)+A014132(n+1))-A063524(n)`
-/

namespace A203647.P10523017760706887331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A063524 n + A014132 (n + 1)).toNat - A063524 n

end

end A203647.P10523017760706887331

/-! ## A203647.P5514184283774871435

`and(A052551(n), A137855(A014132(n+1)))`
-/

namespace A203647.P5514184283774871435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052551 n) (A137855 (A014132 (n + 1)).toNat)

end

end A203647.P5514184283774871435

/-! ## A203647.P3679579608607992592

`A137855(A014132(n+1))+A063524(A014132(n+1)²)`
-/

namespace A203647.P3679579608607992592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A014132 (n + 1)).toNat + A063524 (A014132 (n + 1) ^ 2).toNat

end

end A203647.P3679579608607992592

/-! ## A203647.P13783595606105653778

`A137855(A014132(n+1))+A000007(A014132(n+1)²)`
-/

namespace A203647.P13783595606105653778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A014132 (n + 1)).toNat + A000007 (A014132 (n + 1) ^ 2).toNat

end

end A203647.P13783595606105653778

/-! ## A203647.P11660081834997883690

`A137855(A014132(n+1))+A000007(A137855(n+1))`
-/

namespace A203647.P11660081834997883690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A014132 (n + 1)).toNat + A000007 (A137855 (n + 1)).toNat

end

end A203647.P11660081834997883690

/-!
# A203648: a(n) = (1/4) * period of repeating sequence {S(j) mod 2n}, where S(j) is the sum of the first j squares.

The programs for A203648, the canonical program `A203648.P2516843753295587834` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A203648 has offset 1).

The definition of A203648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A203648.P10876278531901682003

`(n+1)*(1+2*floor((n+3)%3/2))`
-/

namespace A203648.P10876278531901682003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 + 2 * ⌊(((n + 3) % 3 : ℕ) : ℚ) / 2⌋)

end

end A203648.P10876278531901682003

namespace A203648

/-- `(n+1)*(1+2*floor((n+3)%3/2))` -/
def P10876278531901682003.Spec : Prop :=
  ∀ n, P10876278531901682003.a n = A203648 (n + 1)

end A203648

/-! ## A203648.P2516843753295587834

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=9, a(3)=4, a(4)=5, a(5)=18`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A203648

/-- `2*a(n-3)-a(n-6)` -/
def P2516843753295587834.Spec : Prop :=
  ∀ n, P2516843753295587834.a n = A203648 (n + 1)

theorem P2516843753295587834.correct : P2516843753295587834.Spec := by
  intro n
  simp only [A203648, Nat.add_sub_cancel]

end A203648

/-! ## A203648.P7188592225836910905

`(n+1)*A109007(n+1)`
-/

namespace A203648.P7188592225836910905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A109007 (n + 1)

end

end A203648.P7188592225836910905

namespace A203648

/-- `(n+1)*A109007(n+1)` -/
def P7188592225836910905.Spec : Prop :=
  ∀ n, P7188592225836910905.a n = A203648 (n + 1)

end A203648

/-! ## A203648.P2085102589830635870

`(n+1)*gcd(3, n+1)`
-/

namespace A203648.P2085102589830635870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 3 (n + 1)

end

end A203648.P2085102589830635870

namespace A203648

/-- `(n+1)*gcd(3, n+1)` -/
def P2085102589830635870.Spec : Prop :=
  ∀ n, (P2085102589830635870.a n : ℤ) = A203648 (n + 1)

end A203648

/-! ## A203648.P10947562600351109963

`(n+1)*or(1, n%3)`
-/

namespace A203648.P10947562600351109963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.lor 1 (n % 3)

end

end A203648.P10947562600351109963

namespace A203648

/-- `(n+1)*or(1, n%3)` -/
def P10947562600351109963.Spec : Prop :=
  ∀ n, (P10947562600351109963.a n : ℤ) = A203648 (n + 1)

end A203648

/-! ## A203648.P4065219214537233443

`gcd(n^3+1, (n+1)²)`
-/

namespace A203648.P4065219214537233443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 3 + 1) ((n + 1) ^ 2)

end

end A203648.P4065219214537233443

namespace A203648

/-- `gcd(n^3+1, (n+1)²)` -/
def P4065219214537233443.Spec : Prop :=
  ∀ n, (P4065219214537233443.a n : ℤ) = A203648 (n + 1)

end A203648

/-! ## A203648.P16286613669809893475

`4*(n+1)-lcm(3, n+1)`
-/

namespace A203648.P16286613669809893475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - (Nat.lcm 3 (n + 1) : ℤ)

end

end A203648.P16286613669809893475

namespace A203648

/-- `4*(n+1)-lcm(3, n+1)` -/
def P16286613669809893475.Spec : Prop :=
  ∀ n, P16286613669809893475.a n = A203648 (n + 1)

end A203648

/-! ## A203648.P7622668465538081670

`(n^3)%(3*(n+1))+1`
-/

namespace A203648.P7622668465538081670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % (3 * (n + 1)) + 1

end

end A203648.P7622668465538081670

namespace A203648

/-- `(n^3)%(3*(n+1))+1` -/
def P7622668465538081670.Spec : Prop :=
  ∀ n, (P7622668465538081670.a n : ℤ) = A203648 (n + 1)

end A203648

/-! ## A203648.P11768390177423517229

`(n+1)*sqrt(dr((n+1)^6))`
-/

namespace A203648.P11768390177423517229
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (SequenceMachineLib.digitalRoot ((n + 1) ^ 6 : ℤ) : ℝ)

end

end A203648.P11768390177423517229

namespace A203648

/-- `(n+1)*sqrt(dr((n+1)^6))` -/
def P11768390177423517229.Spec : Prop :=
  ∀ n, P11768390177423517229.a n = (A203648 (n + 1) : ℝ)

end A203648

/-! ## A203648.P13498555333582727335

`(n+1)*floor(cosh((n+3)%3))`
-/

namespace A203648.P13498555333582727335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊Real.cosh (((n + 3) % 3 : ℕ) : ℝ)⌋

end

end A203648.P13498555333582727335

namespace A203648

/-- `(n+1)*floor(cosh((n+3)%3))` -/
def P13498555333582727335.Spec : Prop :=
  ∀ n, P13498555333582727335.a n = A203648 (n + 1)

end A203648

/-! ## A203648.P10765511080949955377

`(n+1)*(3-∑[n+2]%3)`
-/

namespace A203648.P10765511080949955377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ))

end

end A203648.P10765511080949955377

namespace A203648

/-- `(n+1)*(3-∑[n+2]%3)` -/
def P10765511080949955377.Spec : Prop :=
  ∀ n, P10765511080949955377.a n = A203648 (n + 1)

end A203648

/-! ## A203648.P17505795460824384035

`((n*(n+2))%3+1)*(n+1)`
-/

namespace A203648.P17505795460824384035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) % 3 + 1) * (n + 1)

end

end A203648.P17505795460824384035

namespace A203648

/-- `((n*(n+2))%3+1)*(n+1)` -/
def P17505795460824384035.Spec : Prop :=
  ∀ n, (P17505795460824384035.a n : ℤ) = A203648 (n + 1)

end A203648

/-! ## A203648.P17786511400626960732

`∑[Δ[2*n*gcd(n, n-3)]/2]`
-/

namespace A203648.P17786511400626960732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Int.gcd (n : ℤ) ((n : ℤ) - 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A203648.P17786511400626960732

namespace A203648

/-- `∑[Δ[2*n*gcd(n, n-3)]/2]` -/
def P17786511400626960732.Spec : Prop :=
  ∀ n, P17786511400626960732.a n = (A203648 (n + 1) : ℚ)

end A203648

/-! ## A203648.P902924752880633672

`(n+1)/3^((n+1)²%3-1)`
-/

namespace A203648.P902924752880633672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 : ℚ) ^ ((((n + 1) ^ 2 % 3 : ℕ) : ℤ) - 1 : ℤ)

end

end A203648.P902924752880633672

namespace A203648

/-- `(n+1)/3^((n+1)²%3-1)` -/
def P902924752880633672.Spec : Prop :=
  ∀ n, P902924752880633672.a n = (A203648 (n + 1) : ℚ)

end A203648

/-! ## A203648.P2824997924037107222

`(2*char[3*n-1]+1)*(n+1)`
-/

namespace A203648.P2824997924037107222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) * (n + 1)

end

end A203648.P2824997924037107222

namespace A203648

/-- `(2*char[3*n-1]+1)*(n+1)` -/
def P2824997924037107222.Spec : Prop :=
  ∀ n, (P2824997924037107222.a n : ℤ) = A203648 (n + 1)

end A203648

/-! ## A203648.P9207263281341699004

`lcm(n+1, A374490(n+1))`
-/

namespace A203648.P9207263281341699004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A374490 (n + 1))

end

end A203648.P9207263281341699004

namespace A203648

/-- `lcm(n+1, A374490(n+1))` -/
def P9207263281341699004.Spec : Prop :=
  ∀ n, (P9207263281341699004.a n : ℤ) = A203648 (n + 1)

end A203648

/-! ## A203648.P15743906343578707144

`(A000578(n)+1)%(6*(n+1))`
-/

namespace A203648.P15743906343578707144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n + 1) (6 * (n + 1) : ℤ)

end

end A203648.P15743906343578707144

namespace A203648

/-- `(A000578(n)+1)%(6*(n+1))` -/
def P15743906343578707144.Spec : Prop :=
  ∀ n, P15743906343578707144.a n = A203648 (n + 1)

end A203648

/-! ## A203648.P9176769836251306491

`(n+1)²²/A387655(n+1)`
-/

namespace A203648.P9176769836251306491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℚ) / (A387655 (n + 1) : ℚ)

end

end A203648.P9176769836251306491

namespace A203648

/-- `(n+1)²²/A387655(n+1)` -/
def P9176769836251306491.Spec : Prop :=
  ∀ n, P9176769836251306491.a n = (A203648 (n + 1) : ℚ)

end A203648

/-! ## A203648.P4544462292116192672

`A027800(n)/A067047(n+1)`
-/

namespace A203648.P4544462292116192672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027800 n : ℚ) / (A067047 (n + 1) : ℚ)

end

end A203648.P4544462292116192672

namespace A203648

/-- `A027800(n)/A067047(n+1)` -/
def P4544462292116192672.Spec : Prop :=
  ∀ n, P4544462292116192672.a n = (A203648 (n + 1) : ℚ)

end A203648

/-! ## A203648.P805842124978892490

`A385555(n+1)/A000034(n)`
-/

namespace A203648.P805842124978892490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385555 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A203648.P805842124978892490

namespace A203648

/-- `A385555(n+1)/A000034(n)` -/
def P805842124978892490.Spec : Prop :=
  ∀ n, P805842124978892490.a n = (A203648 (n + 1) : ℚ)

end A203648

/-!
# A203649: 1/25 the number of (n+1) X (n+1) 0..4 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203649, there is no canonical definition to state claims against.
-/

/-! ## A203649.P15117172599674107846

`A203656((n+1)²+n²)`
-/

namespace A203649.P15117172599674107846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203656 ((n + 1) ^ 2 + n ^ 2)

end

end A203649.P15117172599674107846

/-!
# A203650: 1/25 the number of (n+1) X 3 0..4 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203650, there is no canonical definition to state claims against.
-/

/-! ## A203650.P11724540485156409680

`A203656(∑[n+1]+2)`
-/

namespace A203650.P11724540485156409680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203656 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203650.P11724540485156409680

/-! ## A203650.P13000886536289058304

`record[A203656(A112367(n)+2)]`
-/

namespace A203650.P13000886536289058304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203656 (A112367 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203650.P13000886536289058304

/-! ## A203650.P5933859000810761584

`record[A203656(n+3)/A039683(n+1)]`
-/

namespace A203650.P5933859000810761584
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203656 (n + 3) : ℚ) / (A039683 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203650.P5933859000810761584

/-! ## A203650.P16652324464775316168

`record[A203656(n+3)/A051141(n+1)]`
-/

namespace A203650.P16652324464775316168
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203656 (n + 3) : ℚ) / (A051141 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203650.P16652324464775316168

/-! ## A203650.P15955716938646796259

`record[A203656(n+3)/A051142(n+1)]`
-/

namespace A203650.P15955716938646796259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203656 (n + 3) : ℚ) / (A051142 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203650.P15955716938646796259

/-!
# A203651: 1/25 the number of (n+1) X 4 0..4 arrays with every 2 X 2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203651, there is no canonical definition to state claims against.
-/

/-! ## A203651.P15218367938222624317

`A203656(∑[n+2]+4)`
-/

namespace A203651.P15218367938222624317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203656 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203651.P15218367938222624317

/-! ## A203651.P15989262957430953996

`or(1, A203656(A167614(n+1)))`
-/

namespace A203651.P15989262957430953996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A203656 (A167614 (n + 1)).toNat)

end

end A203651.P15989262957430953996

/-! ## A203651.P18268723678529817051

`A203640(n+1)*A203656(A167614(n+1))`
-/

namespace A203651.P18268723678529817051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203640 (n + 1) * A203656 (A167614 (n + 1)).toNat

end

end A203651.P18268723678529817051

/-! ## A203651.P13951348425546970158

`A203656(A167614(n+1))%A203653(n+1)`
-/

namespace A203651.P13951348425546970158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203656 (A167614 (n + 1)).toNat) (A203653 (n + 1))

end

end A203651.P13951348425546970158

/-! ## A203651.P2629401234839800129

`C(A203656(A167614(n+1)), A203640(n+2))`
-/

namespace A203651.P2629401234839800129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A203656 (A167614 (n + 1)).toNat).toNat (A203640 (n + 2)).toNat

end

end A203651.P2629401234839800129

/-!
# A203652: 1/25 the number of (n+1)X5 0..4 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203652, there is no canonical definition to state claims against.
-/

/-! ## A203652.P15514771005570139455

`A203656(∑[n+3]+7)`
-/

namespace A203652.P15514771005570139455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203656 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A203652.P15514771005570139455

/-! ## A203652.P11593847125602330205

`or(1, A203656(A141214(n+1)))`
-/

namespace A203652.P11593847125602330205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A203656 (A141214 (n + 1)).toNat)

end

end A203652.P11593847125602330205

/-! ## A203652.P13201445251995878056

`A294930(n+1)+A203656(A141214(n+1))`
-/

namespace A203652.P13201445251995878056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (n + 1) + A203656 (A141214 (n + 1)).toNat

end

end A203652.P13201445251995878056

/-! ## A203652.P8019691090488079706

`A203640(n+1)*A203656(A141214(n+1))`
-/

namespace A203652.P8019691090488079706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203640 (n + 1) * A203656 (A141214 (n + 1)).toNat

end

end A203652.P8019691090488079706

/-! ## A203652.P6541106524818507091

`A203656(A141214(n+1))%A203653(n+1)`
-/

namespace A203652.P6541106524818507091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203656 (A141214 (n + 1)).toNat) (A203653 (n + 1))

end

end A203652.P6541106524818507091

/-!
# A203653: 1/25 the number of (n+1)X6 0..4 arrays with every 2X2 subblock having equal diagonal elements or equal antidiagonal elements.

The programs for A203653, there is no canonical definition to state claims against.
-/

/-! ## A203653.P12641699714794670564

`A203656(A374005(n+1))`
-/

namespace A203653.P12641699714794670564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203656 (A374005 (n + 1)).toNat

end

end A203653.P12641699714794670564

/-! ## A203653.P10608878327488229526

`A203656(A056000(n)+15)`
-/

namespace A203653.P10608878327488229526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203656 (A056000 n + 15).toNat

end

end A203653.P10608878327488229526

/-! ## A203653.P4727974587108212398

`A203656(A056115(n)+11)`
-/

namespace A203653.P4727974587108212398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203656 (A056115 n + 11).toNat

end

end A203653.P4727974587108212398

/-!
# A203654: 

The programs for A203654, there is no canonical definition to state claims against.
-/

/-! ## A203654.P10824258462936472651

`A203656(eq[3, A219347(n)])`
-/

namespace A203654.P10824258462936472651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203654.P10824258462936472651

/-! ## A203654.P3043693436559598645

`A203656(A046691(n+4)-1)`
-/

namespace A203654.P3043693436559598645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203656 (A046691 (n + 4) - 1).toNat

end

end A203654.P3043693436559598645

/-!
# A203655: 

The programs for A203655, there is no canonical definition to state claims against.
-/

/-! ## A203655.P12946802559351258084

`A203656(A055999(n+4))`
-/

namespace A203655.P12946802559351258084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203656 (A055999 (n + 4)).toNat

end

end A203655.P12946802559351258084

/-! ## A203655.P7166303258059874752

`A203656(eq[4, A219347(n)])`
-/

namespace A203655.P7166303258059874752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203655.P7166303258059874752

/-!
# A203657: Number of (n+1)X2 0..7 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203657, there is no canonical definition to state claims against.
-/

/-! ## A203657.P11385991203158667371

`A203661(∑[n]+1)`
-/

namespace A203657.P11385991203158667371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203661 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203657.P11385991203158667371

/-! ## A203657.P10117358523482798607

`record[A103451(n)*A203661(n+1)]`
-/

namespace A203657.P10117358523482798607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A203661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203657.P10117358523482798607

/-! ## A203657.P16957233577206641227

`record[root(A203661(n+1), A103406(n))]`
-/

namespace A203657.P16957233577206641227
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203661 (n + 1) : ℝ) ^ (1 / (A103406 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203657.P16957233577206641227

/-! ## A203657.P17565060032696681937

`record[gcd(A002262(n), A203661(n+1))]`
-/

namespace A203657.P17565060032696681937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203661 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203657.P17565060032696681937

/-! ## A203657.P12817052519385121290

`record[root(A203661(n+1), A203647(n+1))]`
-/

namespace A203657.P12817052519385121290
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203661 (n + 1) : ℝ) ^ (1 / (A203647 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203657.P12817052519385121290

/-!
# A203658: Number of (n+1)X3 0..7 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) such that rows of b(i,j) and columns of c(i,j) are lexicographically nondecreasing.

The programs for A203658, there is no canonical definition to state claims against.
-/

/-! ## A203658.P501170239146975710

`A203661(A000096(n)+3)`
-/

namespace A203658.P501170239146975710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203661 (A000096 n + 3).toNat

end

end A203658.P501170239146975710

/-! ## A203658.P365729528360088629

`A203661(∑[A000027(n+1)]+2)`
-/

namespace A203658.P365729528360088629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203661 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A203658.P365729528360088629

/-! ## A203658.P7550835571080039094

`record[root(A203661(n+2), A103406(n))]`
-/

namespace A203658.P7550835571080039094
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203661 (n + 2) : ℝ) ^ (1 / (A103406 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203658.P7550835571080039094

/-!
# A203662: Achilles number whose largest proper divisor is also an Achilles number.

The programs for A203662, there is no canonical definition to state claims against.
-/

/-! ## A203662.P7075419091980922195

`A020639(A305183(n))*A203663(n+1)`
-/

namespace A203662.P7075419091980922195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A305183 n).toNat * A203663 (n + 1)

end

end A203662.P7075419091980922195

/-! ## A203662.P1257729978098537398

`A020639((A007318(n)+1)!)*A203663(n+1)`
-/

namespace A203662.P1257729978098537398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A007318 n + 1).toNat) * A203663 (n + 1)

end

end A203662.P1257729978098537398

/-! ## A203662.P13634336444041677773

`A020639(A288206(n))*A203663(n+1)`
-/

namespace A203662.P13634336444041677773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A288206 n).toNat * A203663 (n + 1)

end

end A203662.P13634336444041677773

/-! ## A203662.P2000344045232232501

`A000005(A014234(n+1))*A203663(n+1)`
-/

namespace A203662.P2000344045232232501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A014234 (n + 1)).toNat * A203663 (n + 1)

end

end A203662.P2000344045232232501

/-! ## A203662.P15218039613058527153

`A000005(A084105(n+1))*A203663(n+1)`
-/

namespace A203662.P15218039613058527153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A084105 (n + 1)).toNat * A203663 (n + 1)

end

end A203662.P15218039613058527153

/-!
# A203663: Achilles number whose double is also an Achilles number.

The programs for A203663, there is no canonical definition to state claims against.
-/

/-! ## A203663.P14328922507955395411

`∩[floor(A052486(n+1)/2), A052486(n+1)]`
-/

namespace A203663.P14328922507955395411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052486 (n + 1) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A203663.P14328922507955395411

/-! ## A203663.P8445252157337004377

`record[A273943(A203662(n+1))]`
-/

namespace A203663.P8445252157337004377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A203662 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203663.P8445252157337004377

/-! ## A203663.P14366646724521409801

`A014682(lcm(4, A203662(n+1)))`
-/

namespace A203663.P14366646724521409801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 4 (A203662 (n + 1)))

end

end A203663.P14366646724521409801

/-! ## A203663.P7913048974909414878

`A203662(n+1)/A020639(A288206(n))`
-/

namespace A203663.P7913048974909414878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203662 (n + 1) : ℚ) / (A020639 (A288206 n).toNat : ℚ)

end

end A203663.P7913048974909414878

/-! ## A203663.P13390933408783980714

`A203662(n+1)/A000005(A020457(n+1))`
-/

namespace A203663.P13390933408783980714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203662 (n + 1) : ℚ) / (A000005 (A020457 (n + 1)).toNat : ℚ)

end

end A203663.P13390933408783980714

/-!
# A203664: Number of (n+1)X(n+1) 0..6 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203664, there is no canonical definition to state claims against.
-/

/-! ## A203664.P6136890772465749796

`A203672((n+1)²+n²)`
-/

namespace A203664.P6136890772465749796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 ((n + 1) ^ 2 + n ^ 2)

end

end A203664.P6136890772465749796

/-!
# A203665: Number of (n+1)X2 0..6 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203665, there is no canonical definition to state claims against.
-/

/-! ## A203665.P11201713759062544872

`A203672(∑[n]+1)`
-/

namespace A203665.P11201713759062544872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A203665.P11201713759062544872

/-! ## A203665.P17890329875769866052

`record[gcd(A002262(n), A203672(n+1))]`
-/

namespace A203665.P17890329875769866052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203672 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203665.P17890329875769866052

/-! ## A203665.P15953396633928814313

`record[A103452(n)²*A203672(n+1)]`
-/

namespace A203665.P15953396633928814313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n ^ 2 * A203672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203665.P15953396633928814313

/-! ## A203665.P11888179534834200042

`record[root(A203672(n+1), A057728(n+1))]`
-/

namespace A203665.P11888179534834200042
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203672 (n + 1) : ℝ) ^ (1 / (A057728 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203665.P11888179534834200042

/-! ## A203665.P3024978944649196005

`record[root(A203672(n+1), A203647(n+1))]`
-/

namespace A203665.P3024978944649196005
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A203672 (n + 1) : ℝ) ^ (1 / (A203647 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203665.P3024978944649196005

/-!
# A203666: Number of (n+1)X3 0..6 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203666, there is no canonical definition to state claims against.
-/

/-! ## A203666.P17395253123733627705

`A203672(∑[n+1]+2)`
-/

namespace A203666.P17395253123733627705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A203666.P17395253123733627705

/-! ## A203666.P16492890878042119788

`record[gcd(A002262(n), A203672(n+2))]`
-/

namespace A203666.P16492890878042119788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A203672 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203666.P16492890878042119788

/-! ## A203666.P15575659644784771109

`record[A203672(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A203666.P15575659644784771109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203666.P15575659644784771109

/-! ## A203666.P8608752509045187275

`record[A203672(Δ[A003453(n+5)])]`
-/

namespace A203666.P8608752509045187275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203666.P8608752509045187275

/-! ## A203666.P15931746063674178045

`record[A203672(n+2)/A271969(n+4)]`
-/

namespace A203666.P15931746063674178045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203672 (n + 2) : ℚ) / (A271969 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A203666.P15931746063674178045

/-!
# A203667: Number of (n+1)X4 0..6 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203667, there is no canonical definition to state claims against.
-/

/-! ## A203667.P14566576037888893098

`A203672(∑[n+2]+4)`
-/

namespace A203667.P14566576037888893098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A203667.P14566576037888893098

/-! ## A203667.P9126855619534851165

`A203672(A167614(n+1))+A107846(n)`
-/

namespace A203667.P9126855619534851165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (A167614 (n + 1)).toNat + A107846 n

end

end A203667.P9126855619534851165

/-! ## A203667.P4707246502826599398

`lcm(A203672(A167614(n+1)), A219347(n))`
-/

namespace A203667.P4707246502826599398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A203672 (A167614 (n + 1)).toNat) (A219347 n)

end

end A203667.P4707246502826599398

/-! ## A203667.P13082004343554276630

`A203672(A167614(n+1))%A203668(n+1)`
-/

namespace A203667.P13082004343554276630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203672 (A167614 (n + 1)).toNat) (A203668 (n + 1))

end

end A203667.P13082004343554276630

/-! ## A203667.P17412376964138986978

`A007318(A031362(n+1)+1)*A203672(A167614(n+1))`
-/

namespace A203667.P17412376964138986978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A031362 (n + 1) + 1).toNat * A203672 (A167614 (n + 1)).toNat

end

end A203667.P17412376964138986978

/-!
# A203668: Number of (n+1) X 5 0..6 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203668, there is no canonical definition to state claims against.
-/

/-! ## A203668.P7846297500570671924

`A203672(A141214(n)+7)`
-/

namespace A203668.P7846297500570671924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (A141214 n + 7).toNat

end

end A203668.P7846297500570671924

/-! ## A203668.P3644714596963805369

`A203672(A052905(n)+9)`
-/

namespace A203668.P3644714596963805369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (A052905 n + 9).toNat

end

end A203668.P3644714596963805369

/-! ## A203668.P14413386198953384909

`A203672(A055999(n)+10)`
-/

namespace A203668.P14413386198953384909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (A055999 n + 10).toNat

end

end A203668.P14413386198953384909

/-! ## A203668.P18348755255904900824

`A203672(A167614(n+2)+1)`
-/

namespace A203668.P18348755255904900824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (A167614 (n + 2) + 1).toNat

end

end A203668.P18348755255904900824

/-! ## A203668.P1114099298682795602

`A203672(eq[4, A057728(n+1)])`
-/

namespace A203668.P1114099298682795602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203668.P1114099298682795602

/-!
# A203669: Number of (n+1)X6 0..6 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A203669, there is no canonical definition to state claims against.
-/

/-! ## A203669.P2736609228282315801

`A203672(A374005(n+1))`
-/

namespace A203669.P2736609228282315801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (A374005 (n + 1)).toNat

end

end A203669.P2736609228282315801

/-! ## A203669.P2439574190470580046

`A203672(A141214(n+2)-1)`
-/

namespace A203669.P2439574190470580046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (A141214 (n + 2) - 1).toNat

end

end A203669.P2439574190470580046

/-! ## A203669.P1434777234470372384

`A203672(eq[8, A057728(n+1)])`
-/

namespace A203669.P1434777234470372384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A203669.P1434777234470372384

/-!
# A203670: 

The programs for A203670, there is no canonical definition to state claims against.
-/

/-! ## A203670.P181504514995375953

`A203672(A141214(n+2)+9)`
-/

namespace A203670.P181504514995375953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (A141214 (n + 2) + 9).toNat

end

end A203670.P181504514995375953

/-! ## A203670.P15552177139599007143

`A203672(A052905(n+3))`
-/

namespace A203670.P15552177139599007143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (A052905 (n + 3)).toNat

end

end A203670.P15552177139599007143

/-!
# A203671: 

The programs for A203671, there is no canonical definition to state claims against.
-/

/-! ## A203671.P12003426798446391504

`A203672(A000124(n+6)+6)`
-/

namespace A203671.P12003426798446391504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203672 (A000124 (n + 6) + 6).toNat

end

end A203671.P12003426798446391504

/-!
# A203673: 

The programs for A203673, there is no canonical definition to state claims against.
-/

/-! ## A203673.P5492909285377058279

`A203012(n+1)*A203312(n+1)`
-/

namespace A203673.P5492909285377058279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203012 (n + 1) * A203312 (n + 1)

end

end A203673.P5492909285377058279

/-!
# A203677: 

The programs for A203677, there is no canonical definition to state claims against.
-/

/-! ## A203677.P6627494354368354336

`a(n-1)*A203678(n)` with `a(0)=1`
-/

namespace A203677.P6627494354368354336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203678 n

end

end A203677.P6627494354368354336

/-! ## A203677.P14268671586844200617

`∏[A203678(n+1)]/A203678(n+1)`
-/

namespace A203677.P14268671586844200617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203678 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203678 (n + 1) : ℚ)

end

end A203677.P14268671586844200617

/-!
# A203678: v(n+1)/v(n), where v=A203677.

The programs for A203678, there is no canonical definition to state claims against.
-/

/-! ## A203678.P4684750214431734843

`sqrt(A203771(2*(n+1)))`
-/

namespace A203678.P4684750214431734843
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A203771 (2 * (n + 1)) : ℝ)

end

end A203678.P4684750214431734843

/-!
# A203680: v(n+1)/v(n), where v=A203679.

The programs for A203680, there is no canonical definition to state claims against.
-/

/-! ## A203680.P8727127190577960824

`A052496(n+1)/A002884(n+1)`
-/

namespace A203680.P8727127190577960824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052496 (n + 1) : ℚ) / (A002884 (n + 1) : ℚ)

end

end A203680.P8727127190577960824

/-!
# A203682: v(n+1)/v(n), where v=A203681.

The programs for A203682, there is no canonical definition to state claims against.
-/

/-! ## A203682.P1350067449487831480

`∏[A020515(n+1)*A056450(2*n)]`
-/

namespace A203682.P1350067449487831480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020515 (n + 1) * A056450 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203682.P1350067449487831480

/-!
# A203684: v(n+1)/v(n), where v=A203683.

The programs for A203684, there is no canonical definition to state claims against.
-/

/-! ## A203684.P6583370189341376069

`∏[4^(2*n+1)+4^n]`
-/

namespace A203684.P6583370189341376069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (2 * n + 1) + 4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A203684.P6583370189341376069

/-! ## A203684.P1242716144178595597

`a(n-1)*A240525(n+n)` with `a(0)=5`
-/

namespace A203684.P1242716144178595597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) * A240525 (n + n)

end

end A203684.P1242716144178595597

/-! ## A203684.P4832228933917371282

`A053763(n+1)*A309327(n+2)`
-/

namespace A203684.P4832228933917371282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053763 (n + 1) * A309327 (n + 2)

end

end A203684.P4832228933917371282

/-!
# A203695: 

The programs for A203695, there is no canonical definition to state claims against.
-/

/-! ## A203695.P464826204067824663

`∏[A203696(n+1)]/A203696(n+1)`
-/

namespace A203695.P464826204067824663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203696 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203696 (n + 1) : ℚ)

end

end A203695.P464826204067824663

/-!
# A203697: Vandermonde sequence using x^2 + xy + y^2 applied to the Fibonacci numbers (1,2,3,5,...F(n+1)).

The programs for A203697, there is no canonical definition to state claims against.
-/

/-! ## A203697.P8956654276171558918

`a(n-1)*A203698(n)` with `a(0)=1`
-/

namespace A203697.P8956654276171558918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A203698 n

end

end A203697.P8956654276171558918

/-!
# A203698: v(n+1)/v(n), where v=A203697.

The programs for A203698, there is no canonical definition to state claims against.
-/

/-! ## A203698.P14052416015972067109

`ratio[A203697(n+1)]`
-/

namespace A203698.P14052416015972067109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203697 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A203698.P14052416015972067109

/-! ## A203698.P7187086388916078102

`A203697(A072088(n+2))/A203697(n+1)`
-/

namespace A203698.P7187086388916078102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203697 (A072088 (n + 2)).toNat : ℚ) / (A203697 (n + 1) : ℚ)

end

end A203698.P7187086388916078102

/-!
# A203699: Vandermonde sequence using x^2 - xy + y^2 applied to the Fibonacci numbers (1,2,3,5,...F(n+1)).

The programs for A203699, there is no canonical definition to state claims against.
-/

/-! ## A203699.P2004946818945286302

`∏[A203700(A028310(n))]/3`
-/

namespace A203699.P2004946818945286302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203700 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A203699.P2004946818945286302

/-! ## A203699.P1597269123546915156

`∏[A203700(n+1)]/A203700(n+1)`
-/

namespace A203699.P1597269123546915156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203700 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A203700 (n + 1) : ℚ)

end

end A203699.P1597269123546915156

