import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A291401: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - S - S^4.

The programs for A291401, there is no canonical definition to state claims against.
-/

/-! ## A291401.P9644867545492088659

`Δ[A001462(A345477(3^n))]`
-/

namespace A291401.P9644867545492088659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A345477 (3 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291401.P9644867545492088659

/-! ## A291401.P9387249931898998702

`A226390(A030267(n+1))-n`
-/

namespace A291401.P9387249931898998702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226390 (A030267 (n + 1)).toNat - (n : ℤ)

end

end A291401.P9387249931898998702

/-! ## A291401.P4084040098390866011

`A226390(A099235(n+1))-n`
-/

namespace A291401.P4084040098390866011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226390 (A099235 (n + 1)).toNat - (n : ℤ)

end

end A291401.P4084040098390866011

/-! ## A291401.P16489670830574744299

`∑[A003056(A229729(n+1)+1)]`
-/

namespace A291401.P16489670830574744299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A229729 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291401.P16489670830574744299

/-!
# A291405: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - 2 S^2 - 2 S^4.

The programs for A291405, there is no canonical definition to state claims against.
-/

/-! ## A291405.P6102398244794884423

`2*A291406(n)`
-/

namespace A291405.P6102398244794884423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291406 n

end

end A291405.P6102398244794884423

/-! ## A291405.P658728084205006874

`A291406((n+n)/2)+A291406(n)`
-/

namespace A291405.P658728084205006874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291406 (SequenceMachineLib.roundAway ((n + n : ℚ) / 2)).toNat + A291406 n

end

end A291405.P658728084205006874

/-! ## A291405.P12621864945556301870

`A000038(n+1)+A291406(n)+A291406(n)`
-/

namespace A291405.P12621864945556301870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A291406 n + A291406 n)

end

end A291405.P12621864945556301870

/-! ## A291405.P3633454846574468339

`A291406(n)+A291406(n)%A291412(n)`
-/

namespace A291405.P3633454846574468339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291406 n + Int.tmod (A291406 n) (A291412 n)

end

end A291405.P3633454846574468339

/-! ## A291405.P2297734059794330724

`(A291406(n)+A291406(n))%A291399(n)`
-/

namespace A291405.P2297734059794330724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291406 n + A291406 n) (A291399 n)

end

end A291405.P2297734059794330724

/-!
# A291406: a(n) = (1/2)A291405(n).

The programs for A291406, there is no canonical definition to state claims against.
-/

/-! ## A291406.P14145651394131289917

`1/2*A291405(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291406.P14145651394131289917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A291405 n : ℚ)

end

end A291406.P14145651394131289917

/-! ## A291406.P13928538997145522483

`A291405(n)/2`
-/

namespace A291406.P13928538997145522483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291405 n : ℚ) / 2

end

end A291406.P13928538997145522483

/-! ## A291406.P355341523459576156

`A014682(A291405(n))`
-/

namespace A291406.P355341523459576156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A291405 n).toNat

end

end A291406.P355341523459576156

/-! ## A291406.P11169179367567679536

`A004526(A291405(n)+1)`
-/

namespace A291406.P11169179367567679536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A291405 n + 1).toNat

end

end A291406.P11169179367567679536

/-! ## A291406.P10204950764263982804

`A004526(lcm(2, A291405(n)))`
-/

namespace A291406.P10204950764263982804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A291405 n))

end

end A291406.P10204950764263982804

/-!
# A291408: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - S)(1 - S^2).

The programs for A291408, the canonical program `A291408.P17875102635465885685` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291408 has offset 0).

The definition of A291408 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A275439, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A291408.P17875102635465885685

`1/2*A275439(n+4)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A291408

/-- `1/2*A275439(n+4)` -/
def P17875102635465885685.Spec : Prop :=
  ∀ n, P17875102635465885685.a n = (A291408 n : ℚ)

end A291408

/-! ## A291408.P13640614074943102405

`A275439(n+4)/2`
-/

namespace A291408.P13640614074943102405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275439 (n + 4) : ℚ) / 2

end

end A291408.P13640614074943102405

namespace A291408

/-- `A275439(n+4)/2` -/
def P13640614074943102405.Spec : Prop :=
  ∀ n, P13640614074943102405.a n = (A291408 n : ℚ)

end A291408

/-! ## A291408.P1776252115360951104

`A215109(n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A291408.P1776252115360951104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215109 (n + 1) - 2 * a (n - 1)

end

end A291408.P1776252115360951104

namespace A291408

/-- `A215109(n+1)-2*a(n-1)` -/
def P1776252115360951104.Spec : Prop :=
  ∀ n, P1776252115360951104.a n = A291408 n

end A291408

/-! ## A291408.P9112682262250322088

`A038572(A275439(n+4))`
-/

namespace A291408.P9112682262250322088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A275439 (n + 4)).toNat

end

end A291408.P9112682262250322088

namespace A291408

/-- `A038572(A275439(n+4))` -/
def P9112682262250322088.Spec : Prop :=
  ∀ n, P9112682262250322088.a n = A291408 n

end A291408

/-! ## A291408.P6162030394816127666

`A008619(A275439(n+4)-1)`
-/

namespace A291408.P6162030394816127666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A275439 (n + 4) - 1).toNat

end

end A291408.P6162030394816127666

namespace A291408

/-- `A008619(A275439(n+4)-1)` -/
def P6162030394816127666.Spec : Prop :=
  ∀ n, P6162030394816127666.a n = A291408 n

end A291408

/-!
# A291409: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - S^2)(1 - S)^2.

The programs for A291409, there is no canonical definition to state claims against.
-/

/-! ## A291409.P17202433306667278178

`A166127(2*A081038(n))`
-/

namespace A291409.P17202433306667278178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166127 (2 * A081038 n).toNat

end

end A291409.P17202433306667278178

/-! ## A291409.P1320512021337641166

`A166127(lcm(2, A081038(n)))`
-/

namespace A291409.P1320512021337641166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166127 (Int.lcm 2 (A081038 n))

end

end A291409.P1320512021337641166

/-! ## A291409.P8220548683136656752

`A080680(A081038(n))`
-/

namespace A291409.P8220548683136656752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080680 (A081038 n).toNat

end

end A291409.P8220548683136656752

/-!
# A291410: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - S - S^2 - 2 S^3.

The programs for A291410, there is no canonical definition to state claims against.
-/

/-! ## A291410.P10634647358348729589

`∑[A111439(A190586(n)+A081675(n))]`
-/

namespace A291410.P10634647358348729589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A190586 n + A081675 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291410.P10634647358348729589

/-! ## A291410.P6239300528548987766

`A038567(A120917(n))-A002260(n+1)`
-/

namespace A291410.P6239300528548987766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A120917 n).toNat - A002260 (n + 1)

end

end A291410.P6239300528548987766

/-!
# A291411: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - 2 S - S^2 + S^3.

The programs for A291411, there is no canonical definition to state claims against.
-/

/-! ## A291411.P8106609150460226942

`A072633(A037528(n+1))`
-/

namespace A291411.P8106609150460226942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072633 (A037528 (n + 1)).toNat

end

end A291411.P8106609150460226942

/-! ## A291411.P4701668674950798235

`A027107(n)+A014386(A014377(n))`
-/

namespace A291411.P4701668674950798235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027107 n + A014386 (A014377 n).toNat

end

end A291411.P4701668674950798235

/-!
# A291412: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - S - 2 S^2 + S^3.

The programs for A291412, there is no canonical definition to state claims against.
-/

/-! ## A291412.P15430475474231054146

`A221945(n)+A100196(A082134(n))`
-/

namespace A291412.P15430475474231054146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221945 n + A100196 (A082134 n).toNat

end

end A291412.P15430475474231054146

/-! ## A291412.P429183411721666504

`A370583(n)+∑[A108141(A382574(n+1))]`
-/

namespace A291412.P429183411721666504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A382574 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370583 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291412.P429183411721666504

/-! ## A291412.P7205344289245089666

`A370583(n)+∑[A032539(A050476(n)-n)]`
-/

namespace A291412.P7205344289245089666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032539 (A050476 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370583 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291412.P7205344289245089666

/-!
# A291413: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - 3 S + S^2 + S^3.

The programs for A291413, there is no canonical definition to state claims against.
-/

/-! ## A291413.P14206810018229616040

`A217129(A305653(n+1))`
-/

namespace A291413.P14206810018229616040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217129 (A305653 (n + 1)).toNat

end

end A291413.P14206810018229616040

/-!
# A291414: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - 2 S + S^3.

The programs for A291414, the canonical program `A291414.P1598030693681552258` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291414 has offset 0).

The definition of A291414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291414.P1598030693681552258

`A272642(n+2)-record[A212804(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A291414

/-- `A272642(n+2)-record[A212804(n)]` -/
def P1598030693681552258.Spec : Prop :=
  ∀ n, P1598030693681552258.a n = A291414 n

theorem P1598030693681552258.correct : P1598030693681552258.Spec := by
  intro n
  simp only [A291414]

end A291414

/-! ## A291414.P4283341455160708773

`A272642(n+2)-A000045(n+2)`
-/

namespace A291414.P4283341455160708773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272642 (n + 2) - A000045 (n + 2)

end

end A291414.P4283341455160708773

namespace A291414

/-- `A272642(n+2)-A000045(n+2)` -/
def P4283341455160708773.Spec : Prop :=
  ∀ n, P4283341455160708773.a n = A291414 n

end A291414

/-! ## A291414.P9085626677730506595

`A272642(n+2)-Δ[A000071(n+3)]`
-/

namespace A291414.P9085626677730506595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272642 (n + 2) - (f1 (n + 1) - f1 n)

end

end A291414.P9085626677730506595

namespace A291414

/-- `A272642(n+2)-Δ[A000071(n+3)]` -/
def P9085626677730506595.Spec : Prop :=
  ∀ n, P9085626677730506595.a n = A291414 n

end A291414

/-! ## A291414.P10594454256681317891

`A272642(n+2)-(A000071(n+2)+1)`
-/

namespace A291414.P10594454256681317891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272642 (n + 2) - (A000071 (n + 2) + 1)

end

end A291414.P10594454256681317891

namespace A291414

/-- `A272642(n+2)-(A000071(n+2)+1)` -/
def P10594454256681317891.Spec : Prop :=
  ∀ n, P10594454256681317891.a n = A291414 n

end A291414

/-! ## A291414.P4634487702837343919

`Δ[A272362(n+1)-A000071(n+3)]`
-/

namespace A291414.P4634487702837343919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272362 (n + 1) - A000071 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291414.P4634487702837343919

namespace A291414

/-- `Δ[A272362(n+1)-A000071(n+3)]` -/
def P4634487702837343919.Spec : Prop :=
  ∀ n, P4634487702837343919.a n = A291414 n

end A291414

/-!
# A291415: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - 3 S + S^2.

The programs for A291415, the canonical program `A291415.P13907053411933568264` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291415 has offset 0).

The definition of A291415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291415.P13907053411933568264

`3*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=3, a(1)=11, a(2)=37, a(3)=126`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291415

/-- `3*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` -/
def P13907053411933568264.Spec : Prop :=
  ∀ n, P13907053411933568264.a n = A291415 n

theorem P13907053411933568264.correct : P13907053411933568264.Spec := by
  intro n
  simp only [A291415]

end A291415

/-! ## A291415.P8367682625284780

`floor(ϕ*A091702(n+1))`
-/

namespace A291415.P8367682625284780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A091702 (n + 1) : ℝ)⌋

end

end A291415.P8367682625284780

namespace A291415

/-- `floor(ϕ*A091702(n+1))` -/
def P8367682625284780.Spec : Prop :=
  ∀ n, P8367682625284780.a n = A291415 n

end A291415

/-! ## A291415.P16562687835446163850

`lcm(round(ϕ*A091702(n+1)), A020985(n))`
-/

namespace A291415.P16562687835446163850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.goldenRatio * (A091702 (n + 1) : ℝ))) (A020985 n)

end

end A291415.P16562687835446163850

namespace A291415

/-- `lcm(round(ϕ*A091702(n+1)), A020985(n))` -/
def P16562687835446163850.Spec : Prop :=
  ∀ n, (P16562687835446163850.a n : ℤ) = A291415 n

end A291415

/-! ## A291415.P9867096474134125835

`or(round(ϕ*A091702(n+1)), A000007(n))`
-/

namespace A291415.P9867096474134125835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (Real.goldenRatio * (A091702 (n + 1) : ℝ))) (A000007 n)

end

end A291415.P9867096474134125835

namespace A291415

/-- `or(round(ϕ*A091702(n+1)), A000007(n))` -/
def P9867096474134125835.Spec : Prop :=
  ∀ n, P9867096474134125835.a n = A291415 n

end A291415

/-! ## A291415.P14384954815409165913

`A000007(n+1)+round(ϕ*A091702(n+1))`
-/

namespace A291415.P14384954815409165913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway (Real.goldenRatio * (A091702 (n + 1) : ℝ))

end

end A291415.P14384954815409165913

namespace A291415

/-- `A000007(n+1)+round(ϕ*A091702(n+1))` -/
def P14384954815409165913.Spec : Prop :=
  ∀ n, P14384954815409165913.a n = A291415 n

end A291415

/-! ## A291415.P16438062911587173752

`round(ϕ*A091702(n+1))*A000034(2*n)`
-/

namespace A291415.P16438062911587173752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A091702 (n + 1) : ℝ)) * A000034 (2 * n)

end

end A291415.P16438062911587173752

namespace A291415

/-- `round(ϕ*A091702(n+1))*A000034(2*n)` -/
def P16438062911587173752.Spec : Prop :=
  ∀ n, P16438062911587173752.a n = A291415 n

end A291415

/-! ## A291415.P13016161594552629470

`round(ϕ*A091702(n+1))*A001222(A000928(n+1))`
-/

namespace A291415.P13016161594552629470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A091702 (n + 1) : ℝ)) * A001222 (A000928 (n + 1)).toNat

end

end A291415.P13016161594552629470

namespace A291415

/-- `round(ϕ*A091702(n+1))*A001222(A000928(n+1))` -/
def P13016161594552629470.Spec : Prop :=
  ∀ n, P13016161594552629470.a n = A291415 n

end A291415

/-! ## A291415.P584446639848088831

`round(ϕ*A091702(n+1))*A001222(A002145(n+1))`
-/

namespace A291415.P584446639848088831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A091702 (n + 1) : ℝ)) * A001222 (A002145 (n + 1)).toNat

end

end A291415.P584446639848088831

namespace A291415

/-- `round(ϕ*A091702(n+1))*A001222(A002145(n+1))` -/
def P584446639848088831.Spec : Prop :=
  ∀ n, P584446639848088831.a n = A291415 n

end A291415

/-! ## A291415.P11462675389166367277

`round(ϕ*A091702(n+1))%A000051(2*(n+1))`
-/

namespace A291415.P11462675389166367277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.goldenRatio * (A091702 (n + 1) : ℝ))) (A000051 (2 * (n + 1)))

end

end A291415.P11462675389166367277

namespace A291415

/-- `round(ϕ*A091702(n+1))%A000051(2*(n+1))` -/
def P11462675389166367277.Spec : Prop :=
  ∀ n, P11462675389166367277.a n = A291415 n

end A291415

/-! ## A291415.P12035054940358669796

`A007318(∑[n])*round(ϕ*A091702(n+1))`
-/

namespace A291415.P12035054940358669796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway (Real.goldenRatio * (A091702 (n + 1) : ℝ))

end

end A291415.P12035054940358669796

namespace A291415

/-- `A007318(∑[n])*round(ϕ*A091702(n+1))` -/
def P12035054940358669796.Spec : Prop :=
  ∀ n, P12035054940358669796.a n = A291415 n

end A291415

/-!
# A291416: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - 4 S + S^2.

The programs for A291416, the canonical program `A291416.P8555953279805679067` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291416 has offset 0).

The definition of A291416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291416.P8555953279805679067

`4*a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=4, a(1)=19, a(2)=86, a(3)=392`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291416

/-- `4*a(n-1)+3*a(n-2)-2*a(n-3)-a(n-4)` -/
def P8555953279805679067.Spec : Prop :=
  ∀ n, P8555953279805679067.a n = A291416 n

theorem P8555953279805679067.correct : P8555953279805679067.Spec := by
  intro n
  simp only [A291416]

end A291416

/-!
# A291417: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - 4 S + 2 S^2.

The programs for A291417, the canonical program `A291417.P13671963682114199419` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291417 has offset 0).

The definition of A291417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291417.P13671963682114199419

`4*a(n-1)+2*a(n-2)-4*a(n-3)-2*a(n-4)` with `a(0)=4, a(1)=18, a(2)=76, a(3)=322`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291417

/-- `4*a(n-1)+2*a(n-2)-4*a(n-3)-2*a(n-4)` -/
def P13671963682114199419.Spec : Prop :=
  ∀ n, P13671963682114199419.a n = A291417 n

theorem P13671963682114199419.correct : P13671963682114199419.Spec := by
  intro n
  simp only [A291417]

end A291417

/-! ## A291417.P2867726061250887395

`2*A291462(n)`
-/

namespace A291417.P2867726061250887395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291462 n

end

end A291417.P2867726061250887395

namespace A291417

/-- `2*A291462(n)` -/
def P2867726061250887395.Spec : Prop :=
  ∀ n, P2867726061250887395.a n = A291417 n

end A291417

/-! ## A291417.P12662747351298625359

`A291462(n)+A291462(n%(n+1))`
-/

namespace A291417.P12662747351298625359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291462 n + A291462 (n % (n + 1))

end

end A291417.P12662747351298625359

namespace A291417

/-- `A291462(n)+A291462(n%(n+1))` -/
def P12662747351298625359.Spec : Prop :=
  ∀ n, P12662747351298625359.a n = A291417 n

end A291417

/-! ## A291417.P15413962473859466063

`A291462(sqrt(A000290(n)))+A291462(n)`
-/

namespace A291417.P15413962473859466063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291462 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat + A291462 n

end

end A291417.P15413962473859466063

namespace A291417

/-- `A291462(sqrt(A000290(n)))+A291462(n)` -/
def P15413962473859466063.Spec : Prop :=
  ∀ n, P15413962473859466063.a n = A291417 n

end A291417

/-! ## A291417.P6142726573421734366

`A291462(n)+A291462(n)%A291416(n)`
-/

namespace A291417.P6142726573421734366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291462 n + Int.tmod (A291462 n) (A291416 n)

end

end A291417.P6142726573421734366

namespace A291417

/-- `A291462(n)+A291462(n)%A291416(n)` -/
def P6142726573421734366.Spec : Prop :=
  ∀ n, P6142726573421734366.a n = A291417 n

end A291417

/-! ## A291417.P2991531084107940100

`A291462(A118759(n))+A291462(n)`
-/

namespace A291417.P2991531084107940100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291462 (A118759 n).toNat + A291462 n

end

end A291417.P2991531084107940100

namespace A291417

/-- `A291462(A118759(n))+A291462(n)` -/
def P2991531084107940100.Spec : Prop :=
  ∀ n, P2991531084107940100.a n = A291417 n

end A291417

/-! ## A291417.P12020244209601298308

`A291462(n)+record[A291462(A165252(n+1))]`
-/

namespace A291417.P12020244209601298308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291462 (A165252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291462 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291417.P12020244209601298308

namespace A291417

/-- `A291462(n)+record[A291462(A165252(n+1))]` -/
def P12020244209601298308.Spec : Prop :=
  ∀ n, P12020244209601298308.a n = A291417 n

end A291417

/-!
# A291419: G.f. A(x) = Sum_{n>=0} a(n)*x^n satisfies A(x) = 1/(1 - a(0)*x^a(0)/(1 - a(1)*x^a(1)/(1 - a(2)*x^a(2)/(1 - ...)))), a continued fraction.

The programs for A291419, there is no canonical definition to state claims against.
-/

/-! ## A291419.P18354787402231965450

`A008679(A054185(n+1))`
-/

namespace A291419.P18354787402231965450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A054185 (n + 1)).toNat

end

end A291419.P18354787402231965450

/-! ## A291419.P17566876372054619132

`A100196(A299789(n)+A122452(n))`
-/

namespace A291419.P17566876372054619132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A299789 n + A122452 n).toNat

end

end A291419.P17566876372054619132

/-! ## A291419.P17510385378006687321

`2*A127428(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A291419.P17510385378006687321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A127428 (a (n - 1)).toNat

end

end A291419.P17510385378006687321

/-! ## A291419.P8578689375276316022

`A051742(A149620(n))`
-/

namespace A291419.P8578689375276316022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (A149620 n).toNat

end

end A291419.P8578689375276316022

/-!
# A291421: G.f. A(x) satisfies: A( x - A(x)^2*(1 + A(x))^2 ) = x.

The programs for A291421, there is no canonical definition to state claims against.
-/

/-! ## A291421.P1079923582965480794

`A270428(A000165(n))-A014138(n)`
-/

namespace A291421.P1079923582965480794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (A000165 n).toNat - A014138 n

end

end A291421.P1079923582965480794

/-!
# A291422: List of pairs of amicable numbers (m,n) where the sum of the pair is divisible by 10.

The programs for A291422, there is no canonical definition to state claims against.
-/

/-! ## A291422.P16664873844907252425

`A259180(A281196(n+1)^A064094(n))`
-/

namespace A291422.P16664873844907252425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (SequenceMachineLib.roundAway ((A281196 (n + 1) : ℚ) ^ (A064094 n : ℤ))).toNat

end

end A291422.P16664873844907252425

/-! ## A291422.P1283921642945281477

`A259933(A077168(n+8))`
-/

namespace A291422.P1283921642945281477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259933 (A077168 (n + 8)).toNat

end

end A291422.P1283921642945281477

/-!
# A291423: The arithmetic function u(n,4,2).

The programs for A291423, there is no canonical definition to state claims against.
-/

/-! ## A291423.P15767740218263145477

`A291424(A008603(n+1))`
-/

namespace A291423.P15767740218263145477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291424 (A008603 (n + 1)).toNat

end

end A291423.P15767740218263145477

/-!
# A291430: The arithmetic function u(n,5,2).

The programs for A291430, there is no canonical definition to state claims against.
-/

/-! ## A291430.P13788483339671835073

`A257779(A291432(n+1))`
-/

namespace A291430.P13788483339671835073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257779 (A291432 (n + 1)).toNat

end

end A291430.P13788483339671835073

/-!
# A291431: The arithmetic function u(n,5,3).

The programs for A291431, there is no canonical definition to state claims against.
-/

/-! ## A291431.P7580108835239945444

`A056239(A085629(A291433(n+1)))`
-/

namespace A291431.P7580108835239945444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A085629 (A291433 (n + 1)).toNat).toNat

end

end A291431.P7580108835239945444

/-!
# A291436: The arithmetic function u(n,5,8).

The programs for A291436, there is no canonical definition to state claims against.
-/

/-! ## A291436.P2611116420053901618

`A291442(A291435(n+1))-A185284(A007606(n+1))`
-/

namespace A291436.P2611116420053901618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (A291435 (n + 1)).toNat - A185284 (A007606 (n + 1)).toNat

end

end A291436.P2611116420053901618

/-! ## A291436.P14008203804521577954

`A291442(A291435(n+1)^A172363(n))`
-/

namespace A291436.P14008203804521577954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (SequenceMachineLib.roundAway ((A291435 (n + 1) : ℚ) ^ (A172363 n : ℤ))).toNat

end

end A291436.P14008203804521577954

/-! ## A291436.P13973135110205129629

`A291442(A291435(n+1)^A262438(n))`
-/

namespace A291436.P13973135110205129629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (SequenceMachineLib.roundAway ((A291435 (n + 1) : ℚ) ^ (A262438 n : ℤ))).toNat

end

end A291436.P13973135110205129629

/-! ## A291436.P687321733246357012

`A291442(A172363(n)²*A291435(n+1))`
-/

namespace A291436.P687321733246357012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (A172363 n ^ 2 * A291435 (n + 1)).toNat

end

end A291436.P687321733246357012

/-! ## A291436.P1142022964633748905

`A291442(A262438(n)²*A291435(n+1))`
-/

namespace A291436.P1142022964633748905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291442 (A262438 n ^ 2 * A291435 (n + 1)).toNat

end

end A291436.P1142022964633748905

/-!
# A291437: Smallest m >= 0 such that (2*n)*3^m + 1 is prime, or -1 if no such value exists.

The programs for A291437, there is no canonical definition to state claims against.
-/

/-! ## A291437.P4511188800234795343

`A377364(n+1)%A094088(A050412(n+1))`
-/

namespace A291437.P4511188800234795343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377364 (n + 1)) (A094088 (A050412 (n + 1)).toNat)

end

end A291437.P4511188800234795343

/-! ## A291437.P15506948083475395854

`and(A001221(A144880(n+1)), A010450(2*(n+1)))`
-/

namespace A291437.P15506948083475395854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A144880 (n + 1)).toNat) (A010450 (2 * (n + 1)))

end

end A291437.P15506948083475395854

/-! ## A291437.P4732193985226764253

`A001057(A170924(A001651(n+1))%A119591(n+2))`
-/

namespace A291437.P4732193985226764253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.tmod (A170924 (A001651 (n + 1)).toNat) (A119591 (n + 2))).toNat

end

end A291437.P4732193985226764253

/-! ## A291437.P9119245557518273331

`A239660((n+1)*Δ[n^3])%A294646(n+1)`
-/

namespace A291437.P9119245557518273331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239660 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat) (A294646 (n + 1))

end

end A291437.P9119245557518273331

/-!
# A291438: Smallest prime of the form (2*n)*3^m + 1 for some m >= 0, or -1 if no such prime exists.

The programs for A291438, there is no canonical definition to state claims against.
-/

/-! ## A291438.P3617620937598787681

`A020639(A164569(n+1)*A292848(n+1))`
-/

namespace A291438.P3617620937598787681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A164569 (n + 1) * A292848 (n + 1)).toNat

end

end A291438.P3617620937598787681

/-! ## A291438.P18027065603822437322

`A020639(A054723(3*(n+1))*A292848(n+1))`
-/

namespace A291438.P18027065603822437322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A054723 (3 * (n + 1)) * A292848 (n + 1)).toNat

end

end A291438.P18027065603822437322

/-! ## A291438.P11781730554811410253

`A020639(A007821(3*n+4)*A292848(n+1))`
-/

namespace A291438.P11781730554811410253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007821 (3 * n + 4) * A292848 (n + 1)).toNat

end

end A291438.P11781730554811410253

/-! ## A291438.P5959679268733830487

`A020639(A292848(3*(n+1))*A292848(n+1))`
-/

namespace A291438.P5959679268733830487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A292848 (3 * (n + 1)) * A292848 (n + 1)).toNat

end

end A291438.P5959679268733830487

/-! ## A291438.P1064998100809897895

`A288212(A071274(n+1))%78`
-/

namespace A291438.P1064998100809897895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288212 (A071274 (n + 1)).toNat) 78

end

end A291438.P1064998100809897895

/-!
# A291440: a(n) = pi(n^2) - pi(n)^2, where pi(n) = A000720(n).

The programs for A291440, there is no canonical definition to state claims against.
-/

/-! ## A291440.P13757712528506392883

`A168048(n+1)-A060303(n+1)`
-/

namespace A291440.P13757712528506392883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168048 (n + 1) - A060303 (n + 1)

end

end A291440.P13757712528506392883

/-! ## A291440.P15393727668008275232

`∑[A014085(n)]-A000720(n+1)²`
-/

namespace A291440.P15393727668008275232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000720 (n + 1) ^ 2

end

end A291440.P15393727668008275232

/-! ## A291440.P17491537593885975577

`∑[A014085(n)]-∑[A010051(n+1)]²`
-/

namespace A291440.P17491537593885975577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A291440.P17491537593885975577

/-! ## A291440.P4847052362982066110

`A000720(n+1)+A117490(n+1)-A000720(n+1)²`
-/

namespace A291440.P4847052362982066110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A117490 (n + 1) - A000720 (n + 1) ^ 2)

end

end A291440.P4847052362982066110

/-! ## A291440.P17357899639667542268

`A263325(n+1)/A000203(n+1)-A000720(n+1)²`
-/

namespace A291440.P17357899639667542268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263325 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) - (A000720 (n + 1) ^ 2 : ℚ)

end

end A291440.P17357899639667542268

/-! ## A291440.P1159315518233071268

`A038107(n+1)-A000720(n+1)²`
-/

namespace A291440.P1159315518233071268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - A000720 (n + 1) ^ 2

end

end A291440.P1159315518233071268

/-! ## A291440.P15307876180756604220

`A038107(n+1)-A230980(n+1)²`
-/

namespace A291440.P15307876180756604220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - A230980 (n + 1) ^ 2

end

end A291440.P15307876180756604220

/-! ## A291440.P2984841310754482404

`A038107(n+1)-∑[A010051(n+1)]²`
-/

namespace A291440.P2984841310754482404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A291440.P2984841310754482404

/-! ## A291440.P15736251360471794378

`A038107(n+1)-A000290(∑[A010051(n+1)])`
-/

namespace A291440.P15736251360471794378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - A000290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291440.P15736251360471794378

/-! ## A291440.P5300707734010347566

`A000720((n+1)²)-A000720(n+1)²`
-/

namespace A291440.P5300707734010347566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) ^ 2) - A000720 (n + 1) ^ 2

end

end A291440.P5300707734010347566

/-! ## A291440.P10602921837272148589

`A230980(A198442(2*(n+1)))-A230980(n+1)²`
-/

namespace A291440.P10602921837272148589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A198442 (2 * (n + 1))).toNat - A230980 (n + 1) ^ 2

end

end A291440.P10602921837272148589

/-!
# A291441: Matula-Goebel numbers of orderless same-trees with all leaves equal to 1.

The programs for A291441, there is no canonical definition to state claims against.
-/

/-! ## A291441.P2980727722915287538

`∑{e}[2^n+2^n, A331967(#)]`
-/

namespace A291441.P2980727722915287538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A331967 (Nat.factorization (f1 n) p)

end

end A291441.P2980727722915287538

/-! ## A291441.P1701542097137780018

`A000015(A331967(n+1))`
-/

namespace A291441.P1701542097137780018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A331967 (n + 1)).toNat

end

end A291441.P1701542097137780018

/-! ## A291441.P18064706818337114675

`A331967(A077342(n+1))`
-/

namespace A291441.P18064706818337114675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331967 (A077342 (n + 1)).toNat

end

end A291441.P18064706818337114675

/-! ## A291441.P11683585574466783518

`A331967(A242474(n+1))`
-/

namespace A291441.P11683585574466783518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331967 (A242474 (n + 1)).toNat

end

end A291441.P11683585574466783518

/-!
# A291442: Matula-Goebel numbers of leaf-balanced trees.

The programs for A291442, there is no canonical definition to state claims against.
-/

/-! ## A291442.P2092825062843960038

`record[A298534(n+1)%A304364(n+1)]`
-/

namespace A291442.P2092825062843960038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298534 (n + 1)) (A304364 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291442.P2092825062843960038

/-! ## A291442.P16746486058987483409

`A298534(n+1)+A185284(A108918(n+1))`
-/

namespace A291442.P16746486058987483409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298534 (n + 1) + A185284 (A108918 (n + 1)).toNat

end

end A291442.P16746486058987483409

/-! ## A291442.P3578602598709044725

`record[A298534(n+1)%(n+10)]`
-/

namespace A291442.P3578602598709044725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298534 (n + 1)) (n + 10 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291442.P3578602598709044725

/-! ## A291442.P12626049585614808186

`record[A298534(A133299(n+1))]`
-/

namespace A291442.P12626049585614808186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298534 (A133299 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291442.P12626049585614808186

/-! ## A291442.P3375848633610737316

`A298534(n+1)+A015161(3*n+4)`
-/

namespace A291442.P3375848633610737316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298534 (n + 1) + A015161 (3 * n + 4)

end

end A291442.P3375848633610737316

/-!
# A291443: Number of leaf-balanced trees with n nodes.

The programs for A291443, there is no canonical definition to state claims against.
-/

/-! ## A291443.P14165221801347219502

`A292043(n)+A276571(round(exp(n-γ)))`
-/

namespace A291443.P14165221801347219502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292043 n + A276571 (SequenceMachineLib.roundAway (Real.exp ((n : ℝ) - Real.eulerMascheroniConstant))).toNat

end

end A291443.P14165221801347219502

/-! ## A291443.P8185602363539367088

`A002024(A026134(n+1)-2%(n+1)+1)-1`
-/

namespace A291443.P8185602363539367088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A026134 (n + 1) - ((2 % (n + 1) : ℕ) : ℤ) + 1).toNat - 1

end

end A291443.P8185602363539367088

/-! ## A291443.P360695775785515798

`A319856(A000055(n))+A089259(n)`
-/

namespace A291443.P360695775785515798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319856 (A000055 n).toNat + A089259 n

end

end A291443.P360695775785515798

/-! ## A291443.P14592584853357296698

`A003056(A126285(n)-A014258(n))`
-/

namespace A291443.P14592584853357296698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A126285 n - A014258 n).toNat

end

end A291443.P14592584853357296698

/-! ## A291443.P9559671341100500555

`A082447(A209399(n+1)+A007463(n))`
-/

namespace A291443.P9559671341100500555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A209399 (n + 1) + A007463 n).toNat

end

end A291443.P9559671341100500555

/-!
# A291445: Number of permutations s_1,s_2,...,s_n of 1,2,...,n such that for all j=1,2,...,n, Sum_{i=1..j} s_i divides Sum_{i=1..j} s_i^3.

The programs for A291445, there is no canonical definition to state claims against.
-/

/-! ## A291445.P10770061885686499936

`A291518(n+2)`
-/

namespace A291445.P10770061885686499936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291518 (n + 2)

end

end A291445.P10770061885686499936

/-! ## A291445.P2985046786674484021

`record[A291518(n)-char[1]]`
-/

namespace A291445.P2985046786674484021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291518 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291445.P2985046786674484021

/-! ## A291445.P17341418633381379567

`record[A291518(ceil(xor(1, n)/2))]`
-/

namespace A291445.P17341418633381379567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291518 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291445.P17341418633381379567

/-! ## A291445.P3213435355641597578

`record[A291518(n-floor(sqrt(n))²)]`
-/

namespace A291445.P3213435355641597578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291518 (n - Nat.sqrt n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291445.P3213435355641597578

/-!
# A291446: Squarefree triprimes of the form p*q*r such that p + q + r + 1 is prime.

The programs for A291446, there is no canonical definition to state claims against.
-/

/-! ## A291446.P10956871971610467354

`A160352(lt[A015723(2*n+3), A248983(3*(n+1))])`
-/

namespace A291446.P10956871971610467354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015723 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248983 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160352 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291446.P10956871971610467354

/-! ## A291446.P3531916849672309089

`∩[A007304(A107947(n+1)), A194393(n+1)]`
-/

namespace A291446.P3531916849672309089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (A107947 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291446.P3531916849672309089

/-! ## A291446.P16760189283534351275

`A007304(A107947(n+1)%A006075(2*n+5))`
-/

namespace A291446.P16760189283534351275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (Int.tmod (A107947 (n + 1)) (A006075 (2 * n + 5))).toNat

end

end A291446.P16760189283534351275

/-! ## A291446.P1643595294155748574

`A007304(lt[A091193(n+2), A333675(2*n+3)])`
-/

namespace A291446.P1643595294155748574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091193 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333675 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291446.P1643595294155748574

/-!
# A291448: Triangle read by rows, denominators of coefficients (in rising powers) of rational polynomials P(n,x) such that Integral_{x=0..1} P'(n,x) = BernoulliMedian(n).

The programs for A291448, there is no canonical definition to state claims against.
-/

/-! ## A291448.P620872751611897599

`A158405(A152271(n))%A325809(A324184(2*n))`
-/

namespace A291448.P620872751611897599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158405 (A152271 n).toNat) (A325809 (A324184 (2 * n)).toNat)

end

end A291448.P620872751611897599

/-! ## A291448.P14526853832935263628

`and(A171172(A133265(n)), A256265(2*(n+1)))`
-/

namespace A291448.P14526853832935263628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171172 (A133265 n).toNat) (A256265 (2 * (n + 1)))

end

end A291448.P14526853832935263628

/-! ## A291448.P13367220295235975174

`A089026(or(A176289(n), A293497(n)))`
-/

namespace A291448.P13367220295235975174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (Int.lor (A176289 n) (A293497 n)).toNat

end

end A291448.P13367220295235975174

/-! ## A291448.P1054311916282956245

`A171172(n+1)^A007814(A276086(n))`
-/

namespace A291448.P1054311916282956245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171172 (n + 1) : ℚ) ^ (A007814 (A276086 n).toNat : ℤ)

end

end A291448.P1054311916282956245

/-! ## A291448.P15251054444077631019

`A074294(A093178(n)%A357864(2*n+5))`
-/

namespace A291448.P15251054444077631019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (Int.tmod (A093178 n) (A357864 (2 * n + 5))).toNat

end

end A291448.P15251054444077631019

/-!
# A291450: Denominators of Integral_{x=0..1} P(n, x)^3 with P(n, x) = Sum_{k=0..n}(-1)^(n-k)* Stirling2(n, k)*k!*x^k.

The programs for A291450, there is no canonical definition to state claims against.
-/

/-! ## A291450.P8600995551288466793

`A051719(A007953(a(n-1)))` with `a(0)=1`
-/

namespace A291450.P8600995551288466793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051719 (A007953 (a (n - 1)).toNat).toNat

end

end A291450.P8600995551288466793

/-!
# A291451: Triangle read by rows, expansion of e.g.f. exp(x*(exp(z)/3 + 2*exp(-z/2)* cos(z*sqrt(3)/2)/3 - 1)), nonzero coefficients of z.

The programs for A291451, there is no canonical definition to state claims against.
-/

/-! ## A291451.P7391413307303916906

`A278073(n)/A233543(n)`
-/

namespace A291451.P7391413307303916906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278073 n : ℚ) / (A233543 n : ℚ)

end

end A291451.P7391413307303916906

/-! ## A291451.P17858978969086591786

`A278073(n)/A002262(n)!`
-/

namespace A291451.P17858978969086591786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278073 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A291451.P17858978969086591786

/-! ## A291451.P10906868573261410987

`A278073(n)/A163351(n)!`
-/

namespace A291451.P10906868573261410987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278073 n : ℚ) / (Nat.factorial (A163351 n).toNat : ℚ)

end

end A291451.P10906868573261410987

/-! ## A291451.P2663732413322390715

`A278073(n)/A166352(n)!`
-/

namespace A291451.P2663732413322390715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278073 n : ℚ) / (Nat.factorial (A166352 n).toNat : ℚ)

end

end A291451.P2663732413322390715

/-! ## A291451.P225818902330893388

`A278073(n)/A329221(n)!`
-/

namespace A291451.P225818902330893388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278073 n : ℚ) / (Nat.factorial (A329221 n).toNat : ℚ)

end

end A291451.P225818902330893388

/-!
# A291452: Triangle read by rows, expansion of e.g.f. exp(x*(cos(z) + cosh(z) - 2)/2), nonzero coefficients of z.

The programs for A291452, there is no canonical definition to state claims against.
-/

/-! ## A291452.P3134557302530026305

`A278074(n)/A233543(n)`
-/

namespace A291452.P3134557302530026305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278074 n : ℚ) / (A233543 n : ℚ)

end

end A291452.P3134557302530026305

/-! ## A291452.P717009603795491253

`A278074(n)/A002262(n)!`
-/

namespace A291452.P717009603795491253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278074 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A291452.P717009603795491253

/-! ## A291452.P11907844559290262502

`A278074(n)/A163351(n)!`
-/

namespace A291452.P11907844559290262502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278074 n : ℚ) / (Nat.factorial (A163351 n).toNat : ℚ)

end

end A291452.P11907844559290262502

/-! ## A291452.P4380597098091387381

`A278074(n)/A329221(n)!`
-/

namespace A291452.P4380597098091387381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278074 n : ℚ) / (Nat.factorial (A329221 n).toNat : ℚ)

end

end A291452.P4380597098091387381

/-! ## A291452.P13733239376378839085

`A278074(n)/A144328(n+1)!`
-/

namespace A291452.P13733239376378839085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278074 n : ℚ) / (Nat.factorial (A144328 (n + 1)).toNat : ℚ)

end

end A291452.P13733239376378839085

/-!
# A291454: Number of half tones between successive pitches in a major scale.

The programs for A291454, the canonical program `A291454.P7279179862769259323` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291454 has offset 1).

The definition of A291454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291454.P7279179862769259323

`ceil(tan(gcd(7, ∑[1-n])))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291454

/-- `ceil(tan(gcd(7, ∑[1-n])))` -/
def P7279179862769259323.Spec : Prop :=
  ∀ n, P7279179862769259323.a n = A291454 (n + 1)

theorem P7279179862769259323.correct : P7279179862769259323.Spec := by
  intro n
  simp only [A291454, Nat.add_sub_cancel]

end A291454

/-!
# A291456: a(n) = (n!)^6 * Sum_{i=1..n} 1/i^6.

The programs for A291456, there is no canonical definition to state claims against.
-/

/-! ## A291456.P13824858993729512377

`A291556(eq[6, A025581(n)])`
-/

namespace A291456.P13824858993729512377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291456.P13824858993729512377

/-! ## A291456.P15365664715835311566

`A291556(eq[7, A195663(n)])`
-/

namespace A291456.P15365664715835311566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291456.P15365664715835311566

/-! ## A291456.P3784358822626169724

`A291556(eq[13, A099375(n)])`
-/

namespace A291456.P3784358822626169724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291456.P3784358822626169724

/-! ## A291456.P10187450701822035107

`A291556(A134227(n+5)-1)`
-/

namespace A291456.P10187450701822035107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (A134227 (n + 5) - 1).toNat

end

end A291456.P10187450701822035107

/-! ## A291456.P8256844198767018593

`A291556(Δ[A023551(n+2)]-1)`
-/

namespace A291456.P8256844198767018593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (f1 (n + 1) - f1 n - 1).toNat

end

end A291456.P8256844198767018593

/-!
# A291457: Numbers n having a proper divisor d such that sigma(n) - k*d = k*n. Case k = 3.

The programs for A291457, there is no canonical definition to state claims against.
-/

/-! ## A291457.P12875047283896122590

`A068403(record[A178696(n)])`
-/

namespace A291457.P12875047283896122590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A291457.P12875047283896122590

/-! ## A291457.P13658586820956921948

`A068403(lt[A249393(n), A046146(n+2)])`
-/

namespace A291457.P13658586820956921948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291457.P13658586820956921948

/-! ## A291457.P7697081416923275244

`A068403(A326841(n+1)%A320353(n+3))`
-/

namespace A291457.P7697081416923275244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (Int.tmod (A326841 (n + 1)) (A320353 (n + 3))).toNat

end

end A291457.P7697081416923275244

/-! ## A291457.P18171699749084767420

`A068403(record[A335458(n)])`
-/

namespace A291457.P18171699749084767420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A291457.P18171699749084767420

/-! ## A291457.P4483630269981164959

`A068403(A061128(n+1)+A000961(n+1))`
-/

namespace A291457.P4483630269981164959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (A061128 (n + 1) + A000961 (n + 1)).toNat

end

end A291457.P4483630269981164959

/-!
# A291458: Numbers n having a proper divisor d such that sigma(n) - k*d = k*n. Case k = 4.

The programs for A291458, there is no canonical definition to state claims against.
-/

/-! ## A291458.P2882591880931642663

`A068404(∑{e}[A335618(n+1), #])`
-/

namespace A291458.P2882591880931642663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068404 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A291458.P2882591880931642663

/-!
# A291460: Even numbers m whose decimal expansion contains the decimal expansion of the greatest odd divisor of m as a substring.

The programs for A291460, there is no canonical definition to state claims against.
-/

/-! ## A291460.P5461231253444848742

`A000079(n+4)*A110874(A161705(n))`
-/

namespace A291460.P5461231253444848742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 4) * A110874 (A161705 n).toNat

end

end A291460.P5461231253444848742

/-! ## A291460.P18356604512057282905

`record[A322328(A125006(n+1)*A250120(n))]`
-/

namespace A291460.P18356604512057282905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322328 (A125006 (n + 1) * A250120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291460.P18356604512057282905

/-!
# A291461: Kaprekar triples: q^3 = x*10^2n + y*10^n + z, with q = x + y + z and 10^n > q > 10^(n-1) (q = 1 allowed for n = 1).

The programs for A291461, there is no canonical definition to state claims against.
-/

/-! ## A291461.P16033911419452898095

`A006887(n+1)^3`
-/

namespace A291461.P16033911419452898095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006887 (n + 1) ^ 3

end

end A291461.P16033911419452898095

/-! ## A291461.P9577765693553399334

`A006887(Δ[n²]-n)²*A006887(n+1)`
-/

namespace A291461.P9577765693553399334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006887 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2 * A006887 (n + 1)

end

end A291461.P9577765693553399334

/-! ## A291461.P4913023237235020569

`root(A006887(n+1), A057427(3*n+1)/3)`
-/

namespace A291461.P4913023237235020569
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006887 (n + 1) : ℝ) ^ (1 / ((A057427 (3 * n + 1) : ℚ) / 3 : ℝ))

end

end A291461.P4913023237235020569

/-! ## A291461.P7176092099286319391

`A000578(A006887(n+1))`
-/

namespace A291461.P7176092099286319391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A006887 (n + 1)).toNat

end

end A291461.P7176092099286319391

/-!
# A291462: a(n) = (1/2)*A291417(n).

The programs for A291462, the canonical program `A291462.P3655046076240758472` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291462 has offset 0).

The definition of A291462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291462.P3655046076240758472

`4*a(n-1)+2*a(n-2)-4*a(n-3)-2*a(n-4)` with `a(0)=2, a(1)=9, a(2)=38, a(3)=161`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291462

/-- `4*a(n-1)+2*a(n-2)-4*a(n-3)-2*a(n-4)` -/
def P3655046076240758472.Spec : Prop :=
  ∀ n, P3655046076240758472.a n = A291462 n

theorem P3655046076240758472.correct : P3655046076240758472.Spec := by
  intro n
  simp only [A291462]

end A291462

/-! ## A291462.P18396464211160187709

`1/2*A291417(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291462.P18396464211160187709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A291417 n : ℚ)

end

end A291462.P18396464211160187709

namespace A291462

/-- `1/2*A291417(n)` -/
def P18396464211160187709.Spec : Prop :=
  ∀ n, P18396464211160187709.a n = (A291462 n : ℚ)

end A291462

/-! ## A291462.P3621312502998289807

`A291417(n)/2`
-/

namespace A291462.P3621312502998289807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291417 n : ℚ) / 2

end

end A291462.P3621312502998289807

namespace A291462

/-- `A291417(n)/2` -/
def P3621312502998289807.Spec : Prop :=
  ∀ n, P3621312502998289807.a n = (A291462 n : ℚ)

end A291462

/-!
# A291463: a(n) is the product of n-th prime number with the distance to the next prime.

The programs for A291463, the canonical program `A291463.P14308935140851577628` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291463 has offset 1).

The definition of A291463 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A291463.P14308935140851577628

`A000040(n+1)*A001223(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A291463

/-- `A000040(n+1)*A001223(n+1)` -/
def P14308935140851577628.Spec : Prop :=
  ∀ n, P14308935140851577628.a n = A291463 (n + 1)

theorem P14308935140851577628.correct : P14308935140851577628.Spec := by
  intro n
  simp only [A291463, Nat.add_sub_cancel]

end A291463

/-! ## A291463.P18148467971730988109

`2*A392034(n+1)`
-/

namespace A291463.P18148467971730988109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A392034 (n + 1)

end

end A291463.P18148467971730988109

namespace A291463

/-- `2*A392034(n+1)` -/
def P18148467971730988109.Spec : Prop :=
  ∀ n, P18148467971730988109.a n = A291463 (n + 1)

end A291463

/-! ## A291463.P3094032264357016059

`Δ[A007504(n)]*A001223(n+1)`
-/

namespace A291463.P3094032264357016059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001223 (n + 1)

end

end A291463.P3094032264357016059

namespace A291463

/-- `Δ[A007504(n)]*A001223(n+1)` -/
def P3094032264357016059.Spec : Prop :=
  ∀ n, P3094032264357016059.a n = A291463 (n + 1)

end A291463

/-! ## A291463.P14107452799370229763

`lcm(Δ[A022837(n)], A001223(n+1))`
-/

namespace A291463.P14107452799370229763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A001223 (n + 1))

end

end A291463.P14107452799370229763

namespace A291463

/-- `lcm(Δ[A022837(n)], A001223(n+1))` -/
def P14107452799370229763.Spec : Prop :=
  ∀ n, (P14107452799370229763.a n : ℤ) = A291463 (n + 1)

end A291463

/-! ## A291463.P11900559929383774770

`A006094(n+1)-A001248(n+1)`
-/

namespace A291463.P11900559929383774770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A001248 (n + 1)

end

end A291463.P11900559929383774770

namespace A291463

/-- `A006094(n+1)-A001248(n+1)` -/
def P11900559929383774770.Spec : Prop :=
  ∀ n, P11900559929383774770.a n = A291463 (n + 1)

end A291463

/-! ## A291463.P16852935327149894857

`A037166(n+1)-A036689(n+1)`
-/

namespace A291463.P16852935327149894857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) - A036689 (n + 1)

end

end A291463.P16852935327149894857

namespace A291463

/-- `A037166(n+1)-A036689(n+1)` -/
def P16852935327149894857.Spec : Prop :=
  ∀ n, P16852935327149894857.a n = A291463 (n + 1)

end A291463

/-! ## A291463.P17300794793585829437

`A037167(n+1)-A062235(n+1)`
-/

namespace A291463.P17300794793585829437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037167 (n + 1) - A062235 (n + 1)

end

end A291463.P17300794793585829437

namespace A291463

/-- `A037167(n+1)-A062235(n+1)` -/
def P17300794793585829437.Spec : Prop :=
  ∀ n, P17300794793585829437.a n = A291463 (n + 1)

end A291463

/-! ## A291463.P9026648723581426989

`A069482(n+1)-A048852(n+1)`
-/

namespace A291463.P9026648723581426989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (n + 1) - A048852 (n + 1)

end

end A291463.P9026648723581426989

namespace A291463

/-- `A069482(n+1)-A048852(n+1)` -/
def P9026648723581426989.Spec : Prop :=
  ∀ n, P9026648723581426989.a n = A291463 (n + 1)

end A291463

/-! ## A291463.P5748818838358749050

`A123134(n+1)-A036690(n+1)`
-/

namespace A291463.P5748818838358749050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) - A036690 (n + 1)

end

end A291463.P5748818838358749050

namespace A291463

/-- `A123134(n+1)-A036690(n+1)` -/
def P5748818838358749050.Spec : Prop :=
  ∀ n, P5748818838358749050.a n = A291463 (n + 1)

end A291463

/-! ## A291463.P2757497130157146520

`A286624(n+1)-A060800(n+1)`
-/

namespace A291463.P2757497130157146520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286624 (n + 1) - A060800 (n + 1)

end

end A291463.P2757497130157146520

namespace A291463

/-- `A286624(n+1)-A060800(n+1)` -/
def P2757497130157146520.Spec : Prop :=
  ∀ n, P2757497130157146520.a n = A291463 (n + 1)

end A291463

/-! ## A291463.P12997759341958031645

`A084856(n+1)-A393202(n+1)`
-/

namespace A291463.P12997759341958031645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084856 (n + 1) - A393202 (n + 1)

end

end A291463.P12997759341958031645

namespace A291463

/-- `A084856(n+1)-A393202(n+1)` -/
def P12997759341958031645.Spec : Prop :=
  ∀ n, P12997759341958031645.a n = A291463 (n + 1)

end A291463

/-! ## A291463.P1538343155953578395

`A345727(n+1)-A352851(n+1)`
-/

namespace A291463.P1538343155953578395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345727 (n + 1) - A352851 (n + 1)

end

end A291463.P1538343155953578395

namespace A291463

/-- `A345727(n+1)-A352851(n+1)` -/
def P1538343155953578395.Spec : Prop :=
  ∀ n, P1538343155953578395.a n = A291463 (n + 1)

end A291463

/-! ## A291463.P17589139026655638778

`A006094(n+1)-Δ[A007504(n)]²`
-/

namespace A291463.P17589139026655638778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - (f1 (n + 1) - f1 n) ^ 2

end

end A291463.P17589139026655638778

namespace A291463

/-- `A006094(n+1)-Δ[A007504(n)]²` -/
def P17589139026655638778.Spec : Prop :=
  ∀ n, P17589139026655638778.a n = A291463 (n + 1)

end A291463

/-! ## A291463.P5428666852414225786

`A006094(n+1)-A000040(n+1)²`
-/

namespace A291463.P5428666852414225786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A000040 (n + 1) ^ 2

end

end A291463.P5428666852414225786

namespace A291463

/-- `A006094(n+1)-A000040(n+1)²` -/
def P5428666852414225786.Spec : Prop :=
  ∀ n, P5428666852414225786.a n = A291463 (n + 1)

end A291463

/-! ## A291463.P15674432540457970163

`log2(A218075(n+1))*A000040(n+1)`
-/

namespace A291463.P15674432540457970163
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 (n + 1) : ℝ) * (A000040 (n + 1) : ℝ)

end

end A291463.P15674432540457970163

namespace A291463

/-- `log2(A218075(n+1))*A000040(n+1)` -/
def P15674432540457970163.Spec : Prop :=
  ∀ n, P15674432540457970163.a n = (A291463 (n + 1) : ℝ)

end A291463

/-! ## A291463.P26110209727373117

`(A006093(n+1)+1)*A001223(n+1)`
-/

namespace A291463.P26110209727373117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A001223 (n + 1)

end

end A291463.P26110209727373117

namespace A291463

/-- `(A006093(n+1)+1)*A001223(n+1)` -/
def P26110209727373117.Spec : Prop :=
  ∀ n, P26110209727373117.a n = A291463 (n + 1)

end A291463

/-! ## A291463.P3960494297193757359

`(A046933(n+1)+1)*A000040(n+1)`
-/

namespace A291463.P3960494297193757359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046933 (n + 1) + 1) * A000040 (n + 1)

end

end A291463.P3960494297193757359

namespace A291463

/-- `(A046933(n+1)+1)*A000040(n+1)` -/
def P3960494297193757359.Spec : Prop :=
  ∀ n, P3960494297193757359.a n = A291463 (n + 1)

end A291463

/-! ## A291463.P5665854333951510631

`(A008864(n+1)-1)*A001223(n+1)`
-/

namespace A291463.P5665854333951510631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A001223 (n + 1)

end

end A291463.P5665854333951510631

namespace A291463

/-- `(A008864(n+1)-1)*A001223(n+1)` -/
def P5665854333951510631.Spec : Prop :=
  ∀ n, P5665854333951510631.a n = A291463 (n + 1)

end A291463

/-! ## A291463.P14409125601472107434

`sqrt(A166329(n+1))-A000040(n+1)²`
-/

namespace A291463.P14409125601472107434
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166329 (n + 1) : ℝ) - (A000040 (n + 1) ^ 2 : ℝ)

end

end A291463.P14409125601472107434

namespace A291463

/-- `sqrt(A166329(n+1))-A000040(n+1)²` -/
def P14409125601472107434.Spec : Prop :=
  ∀ n, P14409125601472107434.a n = (A291463 (n + 1) : ℝ)

end A291463

/-! ## A291463.P15039671452395898011

`A000040(n+1)+A037166(n+1)-A000040(n+1)²`
-/

namespace A291463.P15039671452395898011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A037166 (n + 1) - A000040 (n + 1) ^ 2)

end

end A291463.P15039671452395898011

namespace A291463

/-- `A000040(n+1)+A037166(n+1)-A000040(n+1)²` -/
def P15039671452395898011.Spec : Prop :=
  ∀ n, P15039671452395898011.a n = A291463 (n + 1)

end A291463

/-!
# A291474: The arithmetic function u(n,7,2).

The programs for A291474, there is no canonical definition to state claims against.
-/

/-! ## A291474.P21914167447994782

`A291579(A291478(n+1)%A209432(n+1))`
-/

namespace A291474.P21914167447994782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291579 (Int.tmod (A291478 (n + 1)) (A209432 (n + 1))).toNat

end

end A291474.P21914167447994782

/-!
# A291481: Number of terms of A293630 at stage n.

The programs for A291481, there is no canonical definition to state claims against.
-/

/-! ## A291481.P13106226911126074476

`(1+A293630(a(n-1)))*a(n-1)-A293630(a(n-1))` with `a(0)=2`
-/

namespace A291481.P13106226911126074476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (1 + A293630 (a (n - 1)).toNat) * a (n - 1) - A293630 (a (n - 1)).toNat

end

end A291481.P13106226911126074476

/-! ## A291481.P1390830102612420595

`A103391(∏[p?[A078711(n+1)]])`
-/

namespace A291481.P1390830102612420595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078711 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291481.P1390830102612420595

/-! ## A291481.P10500033974188321383

`A103391(∏[p?[A078734(n+1)]])`
-/

namespace A291481.P10500033974188321383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291481.P10500033974188321383

/-! ## A291481.P16429151447314957073

`A103391(∏[p?[A191258(n+1)]])`
-/

namespace A291481.P16429151447314957073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191258 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291481.P16429151447314957073

/-! ## A291481.P2744935082152027564

`A103391(∏[p?[A228098(n+1)]])`
-/

namespace A291481.P2744935082152027564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228098 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291481.P2744935082152027564

/-!
# A291482: Expansion of e.g.f. arcsin(x)*exp(x).

The programs for A291482, there is no canonical definition to state claims against.
-/

/-! ## A291482.P17332318160769113883

`A081919(n-1)+a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A291482.P17332318160769113883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A081919 (n - 1) + a (n - 1)

end

end A291482.P17332318160769113883

/-! ## A291482.P3635040539538628417

`∑[A081919(n)]-A081919(n)`
-/

namespace A291482.P3635040539538628417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A081919 n

end

end A291482.P3635040539538628417

/-!
# A291484: Expansion of e.g.f. arctanh(x)*exp(x).

The programs for A291484, there is no canonical definition to state claims against.
-/

/-! ## A291484.P4922534020423899121

`∑[(n-1)*(n-2)*a(n-2)+1]` with `a(0)=0, a(1)=1`
-/

namespace A291484.P4922534020423899121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((n : ℤ) - 1) * (((n : ℤ) - 2) * f1 (n - 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291484.P4922534020423899121

/-! ## A291484.P11410714917539878620

`A087208(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A291484.P11410714917539878620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A087208 (n - 1) + a (n - 1)

end

end A291484.P11410714917539878620

/-! ## A291484.P5793766549372466671

`∑[(n-1)*a(n-1)+1]-A263102(n)` with `a(0)=0`
-/

namespace A291484.P5793766549372466671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A263102 n

end

end A291484.P5793766549372466671

/-! ## A291484.P7990547393019464954

`A002104(n)-A263102(n)`
-/

namespace A291484.P7990547393019464954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n - A263102 n

end

end A291484.P7990547393019464954

/-! ## A291484.P13081175607624307781

`(∑[A054091(n)]-1)/2-A263102(n)`
-/

namespace A291484.P13081175607624307781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054091 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2 - (A263102 n : ℚ)

end

end A291484.P13081175607624307781

/-! ## A291484.P8632328287529813607

`∑[n]+2*A002807(n)-A263102(n)`
-/

namespace A291484.P8632328287529813607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A002807 n - A263102 n

end

end A291484.P8632328287529813607

/-! ## A291484.P16048529919048673801

`A009416(n)+A263102(n)+A177699(n)`
-/

namespace A291484.P16048529919048673801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009416 n + (A263102 n + A177699 n)

end

end A291484.P16048529919048673801

/-! ## A291484.P3812650970967668202

`A177699(n)+A002104(n-A237420(n))`
-/

namespace A291484.P3812650970967668202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177699 n + A002104 ((n : ℤ) - A237420 n).toNat

end

end A291484.P3812650970967668202

/-! ## A291484.P10519376759070703598

`A177699(n)-(A002104(A237420(n))-A002104(n))`
-/

namespace A291484.P10519376759070703598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177699 n - (A002104 (A237420 n).toNat - A002104 n)

end

end A291484.P10519376759070703598

/-! ## A291484.P11802823702757671717

`(A166358(n+1)-1)/(n+1)`
-/

namespace A291484.P11802823702757671717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166358 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A291484.P11802823702757671717

/-!
# A291485: Numbers m such that sigma(x) = m*(m+1)/2 has at least one solution.

The programs for A291485, the canonical program `A291485.P3190505718156892050` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291485 has offset 1).

The definition of A291485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291485.P3190505718156892050

`lt[0, A175192(C(n+2, 2))]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A291485

/-- `lt[0, A175192(C(n+2, 2))]+1` -/
def P3190505718156892050.Spec : Prop :=
  ∀ n, (P3190505718156892050.a n : ℤ) = A291485 (n + 1)

theorem P3190505718156892050.correct : P3190505718156892050.Spec := by
  intro n
  simp only [A291485, Nat.add_sub_cancel]

end A291485

/-! ## A291485.P9517292235059235248

`lt[0, A175192(A000096(n)+1)]+1`
-/

namespace A291485.P9517292235059235248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (A000096 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A291485.P9517292235059235248

namespace A291485

/-- `lt[0, A175192(A000096(n)+1)]+1` -/
def P9517292235059235248.Spec : Prop :=
  ∀ n, (P9517292235059235248.a n : ℤ) = A291485 (n + 1)

end A291485

/-! ## A291485.P7169542682520362602

`eq[1, A175192(A000217(n+1))]+1`
-/

namespace A291485.P7169542682520362602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (A000217 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A291485.P7169542682520362602

namespace A291485

/-- `eq[1, A175192(A000217(n+1))]+1` -/
def P7169542682520362602.Spec : Prop :=
  ∀ n, (P7169542682520362602.a n : ℤ) = A291485 (n + 1)

end A291485

/-! ## A291485.P5447239866966816574

`eq[1, A175192(A000124(n)+n)]+1`
-/

namespace A291485.P5447239866966816574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (A000124 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A291485.P5447239866966816574

namespace A291485

/-- `eq[1, A175192(A000124(n)+n)]+1` -/
def P5447239866966816574.Spec : Prop :=
  ∀ n, (P5447239866966816574.a n : ℤ) = A291485 (n + 1)

end A291485

/-! ## A291485.P7533694396174745016

`record[A127093(A002191(n+1))]`
-/

namespace A291485.P7533694396174745016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A002191 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291485.P7533694396174745016

namespace A291485

/-- `record[A127093(A002191(n+1))]` -/
def P7533694396174745016.Spec : Prop :=
  ∀ n, P7533694396174745016.a n = A291485 (n + 1)

end A291485

/-!
# A291488: Expansion of the series reversion of -1 + Product_{k>=1} 1/(1 - x^k)^k.

The programs for A291488, there is no canonical definition to state claims against.
-/

/-! ## A291488.P6739809959309573488

`A008836(3*n+4)*A105512(A192729(n+2))`
-/

namespace A291488.P6739809959309573488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (3 * n + 4) * A105512 (A192729 (n + 2)).toNat

end

end A291488.P6739809959309573488

/-!
# A291497: The arithmetic function uhat(n,1,3).

The programs for A291497, the canonical program `A291497.P9635009427192002381` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291497 has offset 1).

The definition of A291497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291497.P9635009427192002381

`-(gcd(n-3, C(3, n))+4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291497

/-- `-(gcd(n-3, C(3, n))+4)` -/
def P9635009427192002381.Spec : Prop :=
  ∀ n, P9635009427192002381.a n = A291497 (n + 1)

theorem P9635009427192002381.correct : P9635009427192002381.Spec := by
  intro n
  simp only [A291497, Nat.add_sub_cancel]

end A291497

/-!
# A291498: The arithmetic function uhat(n,1,4).

The programs for A291498, the canonical program `A291498.P10614475688955058972` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291498 has offset 1).

The definition of A291498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291498.P10614475688955058972

`A023453(n)-A204502(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A291498

/-- `A023453(n)-A204502(n+1)` -/
def P10614475688955058972.Spec : Prop :=
  ∀ n, P10614475688955058972.a n = A291498 (n + 1)

theorem P10614475688955058972.correct : P10614475688955058972.Spec := by
  intro n
  simp only [A291498, Nat.add_sub_cancel]

end A291498

/-!
# A291499: The arithmetic function uhat(n,1,5).

The programs for A291499, the canonical program `A291499.P1928875746680629063` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291499 has offset 1).

The definition of A291499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291499.P1928875746680629063

`2*a(n-1)-a(n-2)` with `a(0)=-19, a(1)=-19, a(2)=-19, a(3)=-19, a(4)=-19, a(5)=-19, a(6)=-21, a(7)=-24`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A291499

/-- `2*a(n-1)-a(n-2)` -/
def P1928875746680629063.Spec : Prop :=
  ∀ n, P1928875746680629063.a n = A291499 (n + 1)

theorem P1928875746680629063.correct : P1928875746680629063.Spec := by
  intro n
  simp only [A291499, Nat.add_sub_cancel]

end A291499

