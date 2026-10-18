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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A379400: Numbers that can be written in exactly five different ways as a sum of at most nine positive third powers.

The programs for A379400, there is no canonical definition to state claims against.
-/

/-! ## A379400.P1356918811279817932

`eq[5, A025453(n)]`
-/

namespace A379400.P1356918811279817932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379400.P1356918811279817932

/-! ## A379400.P11439714654725454886

`eq[9, A025462(n)+A025452(n)+4]`
-/

namespace A379400.P11439714654725454886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n + A025452 n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379400.P11439714654725454886

/-! ## A379400.P16346655403393246643

`eq[2, A121755(A025462(n)+A025452(n))]`
-/

namespace A379400.P16346655403393246643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121755 (A025462 n + A025452 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379400.P16346655403393246643

/-! ## A379400.P16446801211261343143

`eq[2, A244139(A025462(n)+A025452(n))]`
-/

namespace A379400.P16446801211261343143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244139 (A025462 n + A025452 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379400.P16446801211261343143

/-! ## A379400.P15587981748034407187

`eq[6, A254438(A025462(n)+A025452(n))]`
-/

namespace A379400.P15587981748034407187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254438 (A025462 n + A025452 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379400.P15587981748034407187

/-! ## A379400.P17537974949682502764

`eq[9, A224486(A025462(n)+A025452(n))]`
-/

namespace A379400.P17537974949682502764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224486 (A025462 n + A025452 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379400.P17537974949682502764

/-!
# A379405: a(n) = p((n+1)*p(n)), where p(x) = least prime > x; i.e., p = A151800.

The programs for A379405, the canonical program `A379405.P17696526180092176553` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379405 has offset 0).

The definition of A379405 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053024, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379405.P17696526180092176553

`A151800(A053024(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A379405

/-- `A151800(A053024(n+1))` -/
def P17696526180092176553.Spec : Prop :=
  ∀ n, P17696526180092176553.a n = A379405 n

theorem P17696526180092176553.correct : P17696526180092176553.Spec := by
  intro n
  simp only [A379405]

end A379405

/-! ## A379405.P5010546502643207740

`A151800((n+1)*A151800(n))`
-/

namespace A379405.P5010546502643207740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1 : ℤ) * A151800 n).toNat

end

end A379405.P5010546502643207740

namespace A379405

/-- `A151800((n+1)*A151800(n))` -/
def P5010546502643207740.Spec : Prop :=
  ∀ n, P5010546502643207740.a n = A379405 n

end A379405

/-! ## A379405.P14393069135332830031

`A151800(A151800(n)+A013636(n))`
-/

namespace A379405.P14393069135332830031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 n + A013636 n).toNat

end

end A379405.P14393069135332830031

namespace A379405

/-- `A151800(A151800(n)+A013636(n))` -/
def P14393069135332830031.Spec : Prop :=
  ∀ n, P14393069135332830031.a n = A379405 n

end A379405

/-! ## A379405.P1531373075030963258

`A007918(A053024(n+1)+1)`
-/

namespace A379405.P1531373075030963258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A053024 (n + 1) + 1).toNat

end

end A379405.P1531373075030963258

namespace A379405

/-- `A007918(A053024(n+1)+1)` -/
def P1531373075030963258.Spec : Prop :=
  ∀ n, P1531373075030963258.a n = A379405 n

end A379405

/-! ## A379405.P11392073274118478665

`A066169((n+1)*A007918(n+1))`
-/

namespace A379405.P11392073274118478665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 ((n + 1 : ℤ) * A007918 (n + 1)).toNat

end

end A379405.P11392073274118478665

namespace A379405

/-- `A066169((n+1)*A007918(n+1))` -/
def P11392073274118478665.Spec : Prop :=
  ∀ n, P11392073274118478665.a n = A379405 n

end A379405

/-! ## A379405.P2523783916982368865

`A266620((n+1)*A007918(n+1))`
-/

namespace A379405.P2523783916982368865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266620 ((n + 1 : ℤ) * A007918 (n + 1)).toNat

end

end A379405.P2523783916982368865

namespace A379405

/-- `A266620((n+1)*A007918(n+1))` -/
def P2523783916982368865.Spec : Prop :=
  ∀ n, P2523783916982368865.a n = A379405 n

end A379405

/-! ## A379405.P12301733310255205673

`A266620((n+1)*A308052(2*n+1))`
-/

namespace A379405.P12301733310255205673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266620 ((n + 1 : ℤ) * A308052 (2 * n + 1)).toNat

end

end A379405.P12301733310255205673

namespace A379405

/-- `A266620((n+1)*A308052(2*n+1))` -/
def P12301733310255205673.Spec : Prop :=
  ∀ n, P12301733310255205673.a n = A379405 n

end A379405

/-! ## A379405.P15886504762135881709

`A070801(A007918((n+1)*A007918(n+1)))`
-/

namespace A379405.P15886504762135881709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (A007918 ((n + 1 : ℤ) * A007918 (n + 1)).toNat).toNat

end

end A379405.P15886504762135881709

namespace A379405

/-- `A070801(A007918((n+1)*A007918(n+1)))` -/
def P15886504762135881709.Spec : Prop :=
  ∀ n, P15886504762135881709.a n = A379405 n

end A379405

/-! ## A379405.P17379324702162485770

`A270753(A007918((n+1)*A159477(n+1)))`
-/

namespace A379405.P17379324702162485770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270753 (A007918 ((n + 1 : ℤ) * A159477 (n + 1)).toNat).toNat

end

end A379405.P17379324702162485770

namespace A379405

/-- `A270753(A007918((n+1)*A159477(n+1)))` -/
def P17379324702162485770.Spec : Prop :=
  ∀ n, P17379324702162485770.a n = A379405 n

end A379405

/-! ## A379405.P4569477515841739361

`A270753(A266620((n+1)*A159477(n+1)))`
-/

namespace A379405.P4569477515841739361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270753 (A266620 ((n + 1 : ℤ) * A159477 (n + 1)).toNat).toNat

end

end A379405.P4569477515841739361

namespace A379405

/-- `A270753(A266620((n+1)*A159477(n+1)))` -/
def P4569477515841739361.Spec : Prop :=
  ∀ n, P4569477515841739361.a n = A379405 n

end A379405

/-!
# A379406: a(n) = A379511(n) - A378142(n).

The programs for A379406, there is no canonical definition to state claims against.
-/

/-! ## A379406.P13705573482974457440

`A010872(A378185(n+1)²)`
-/

namespace A379406.P13705573482974457440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A378185 (n + 1) ^ 2).toNat

end

end A379406.P13705573482974457440

/-! ## A379406.P11680396734262753305

`A156595(A378185(n+1)²)`
-/

namespace A379406.P11680396734262753305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 (A378185 (n + 1) ^ 2).toNat

end

end A379406.P11680396734262753305

/-! ## A379406.P4817742998230877262

`A010872(A378185(n+1)*A378185(n+1))`
-/

namespace A379406.P4817742998230877262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A378185 (n + 1) * A378185 (n + 1)).toNat

end

end A379406.P4817742998230877262

/-! ## A379406.P1447109452620487438

`A011655(A378185(n+1)*A378185(n+1))`
-/

namespace A379406.P1447109452620487438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A378185 (n + 1) * A378185 (n + 1)).toNat

end

end A379406.P1447109452620487438

/-! ## A379406.P3236337657406074394

`A011655(A378185(n+1)%A385852(n+1))`
-/

namespace A379406.P3236337657406074394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (Int.tmod (A378185 (n + 1)) (A385852 (n + 1))).toNat

end

end A379406.P3236337657406074394

/-!
# A379407: a(n) is the smallest semiprime > primorial(n).

The programs for A379407, there is no canonical definition to state claims against.
-/

/-! ## A379407.P3967607396290126636

`A131961((n+1)*∏{p}[A069045(n+1), #])+A006862(n+1)`
-/

namespace A379407.P3967607396290126636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131961 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)) + A006862 (n + 1)

end

end A379407.P3967607396290126636

/-!
# A379408: a(n) = n + floor(n*s/r) + floor(n*t/r), where r = u^(1/4); s = u^(1/2); t = u^(3/4), u = golden ratio (A001622).

The programs for A379408, there is no canonical definition to state claims against.
-/

/-! ## A379408.P3741071708350320143

`∑[A090739(∑[A051869(n+2)])]`
-/

namespace A379408.P3741071708350320143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051869 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090739 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379408.P3741071708350320143

/-! ## A379408.P16318340905124510373

`∑[A046951(A082630(n+1))+2]`
-/

namespace A379408.P16318340905124510373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A082630 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379408.P16318340905124510373

/-! ## A379408.P3380072850244807918

`∑[A060838(A038303(n+1))+3]`
-/

namespace A379408.P3380072850244807918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A038303 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379408.P3380072850244807918

/-! ## A379408.P10926592937808657666

`∑[A090740(∑[A002378(3*n+1)])]`
-/

namespace A379408.P10926592937808657666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379408.P10926592937808657666

/-! ## A379408.P11398884877952018804

`∑[A007814(∑[A098850(2*(n+2))])]`
-/

namespace A379408.P11398884877952018804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098850 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379408.P11398884877952018804

/-!
# A379409: a(n) = n + floor(n*r/s) + floor(n*t/s), where r = u^(1/4); s = u^(1/2); t = u^(3/4), u = golden ratio (A001622).

The programs for A379409, there is no canonical definition to state claims against.
-/

/-! ## A379409.P10424796635624155193

`A369054(A130109(3*n+5))+A016789(n)`
-/

namespace A379409.P10424796635624155193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A130109 (3 * n + 5)).toNat + A016789 n

end

end A379409.P10424796635624155193

/-! ## A379409.P11873411609297279704

`A204257(A299266(3*(n+1)))+A016777(n)`
-/

namespace A379409.P11873411609297279704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204257 (A299266 (3 * (n + 1))).toNat + A016777 n

end

end A379409.P11873411609297279704

/-! ## A379409.P14187102717176668644

`A000027(3*(n+1))-A168184(A350512(3*(n+1)))`
-/

namespace A379409.P14187102717176668644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (3 * (n + 1)) - A168184 (A350512 (3 * (n + 1))).toNat

end

end A379409.P14187102717176668644

/-! ## A379409.P13397549927503208744

`A286336(A000032(n))+A001651(2*(n+1))`
-/

namespace A379409.P13397549927503208744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286336 (A000032 n).toNat + A001651 (2 * (n + 1))

end

end A379409.P13397549927503208744

/-! ## A379409.P3005279339795805504

`A292251(A030720(2*n+1))+A000027(3*n+2)`
-/

namespace A379409.P3005279339795805504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (A030720 (2 * n + 1)).toNat + A000027 (3 * n + 2)

end

end A379409.P3005279339795805504

/-!
# A379410: a(n) = n + floor(n*r/t) + floor(n*s/t), where r = u^(1/4), s = u^(1/2), t = u^(3/4), u = golden ratio (A001622).

The programs for A379410, there is no canonical definition to state claims against.
-/

/-! ## A379410.P14655233713943683002

`A329961(n+1)-A055642(A256403(n+1))`
-/

namespace A379410.P14655233713943683002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329961 (n + 1) - A055642 (A256403 (n + 1)).toNat

end

end A379410.P14655233713943683002

/-! ## A379410.P15291586591906649135

`A357409(A314025(n))`
-/

namespace A379410.P15291586591906649135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357409 (A314025 n).toNat

end

end A379410.P15291586591906649135

/-! ## A379410.P3894489846347751514

`A357409(A314092(n))`
-/

namespace A379410.P3894489846347751514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357409 (A314092 n).toNat

end

end A379410.P3894489846347751514

/-! ## A379410.P9961491496925422971

`∑[or(2, A328457(A276024(2*(n+1))+1))]-2`
-/

namespace A379410.P9961491496925422971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A328457 (A276024 (2 * (n + 1)) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A379410.P9961491496925422971

/-! ## A379410.P8168786602543731014

`∑[A120992(A005277(3*n+1)*A046899(n))]`
-/

namespace A379410.P8168786602543731014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120992 (A005277 (3 * n + 1) * A046899 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379410.P8168786602543731014

/-!
# A379411: a(n) = n + floor(n*s/r) + floor(n*t/r), where r = e^(1/4), s = e^(1/2), t = e^(3/4).

The programs for A379411, there is no canonical definition to state claims against.
-/

/-! ## A379411.P17257363880985168943

`A115572(A070846(n+4))+A016813(n)`
-/

namespace A379411.P17257363880985168943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115572 (A070846 (n + 4)).toNat + A016813 n

end

end A379411.P17257363880985168943

/-! ## A379411.P1516429848061768736

`A188967(A270890(2*n+3))+A016825(n)`
-/

namespace A379411.P1516429848061768736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (A270890 (2 * n + 3)).toNat + A016825 n

end

end A379411.P1516429848061768736

/-! ## A379411.P3110466936635210051

`eq[A156401(n), A214332(n)]`
-/

namespace A379411.P3110466936635210051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214332 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A379411.P3110466936635210051

/-! ## A379411.P16277477698870111143

`A057211(A304961(n))+A005843(2*n+1)`
-/

namespace A379411.P16277477698870111143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (A304961 n).toNat + A005843 (2 * n + 1)

end

end A379411.P16277477698870111143

/-! ## A379411.P8808456930304001071

`A266112(A000108(n))+A109043(2*n+1)`
-/

namespace A379411.P8808456930304001071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266112 (A000108 n).toNat + A109043 (2 * n + 1)

end

end A379411.P8808456930304001071

/-!
# A379412: a(n) = n + floor(n*r/s) + floor(n*t/s), where r = e^(1/4); s = e^(1/2); t = e^(3/4).

The programs for A379412, there is no canonical definition to state claims against.
-/

/-! ## A379412.P7582765267405833876

`A236677(A000716(n))+A189531(n+1)`
-/

namespace A379412.P7582765267405833876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236677 (A000716 n).toNat + A189531 (n + 1)

end

end A379412.P7582765267405833876

/-! ## A379412.P5641546023840185037

`A262855(A337411(n+1))+A016789(n)`
-/

namespace A379412.P5641546023840185037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262855 (A337411 (n + 1)).toNat + A016789 n

end

end A379412.P5641546023840185037

/-! ## A379412.P15763982583894921710

`A000027(3*n+4)-A306366(A145046(n))`
-/

namespace A379412.P15763982583894921710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (3 * n + 4) - A306366 (A145046 n).toNat

end

end A379412.P15763982583894921710

/-! ## A379412.P13663947027558679334

`A028310(3*n+2)+A010060(A056411(n+1))`
-/

namespace A379412.P13663947027558679334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (3 * n + 2) + A010060 (A056411 (n + 1)).toNat

end

end A379412.P13663947027558679334

/-! ## A379412.P18062232987075651569

`A213728(A377625(3*(n+1)))+A097448(3*n+2)`
-/

namespace A379412.P18062232987075651569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 (A377625 (3 * (n + 1))).toNat + A097448 (3 * n + 2)

end

end A379412.P18062232987075651569

/-!
# A379413: a(n) = n + floor(n*r/t) + floor(n*s/t), where r = e^(1/4), s = e^(1/2), t = e^(3/4).

The programs for A379413, there is no canonical definition to state claims against.
-/

/-! ## A379413.P13554603808280718627

`A108173(n+1)-n%A269311(n+2)`
-/

namespace A379413.P13554603808280718627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108173 (n + 1) - Int.tmod (n : ℤ) (A269311 (n + 2))

end

end A379413.P13554603808280718627

/-! ## A379413.P1139490121137115392

`A363942(A000040(n+1))+ceil(n*(3-ϕ))`
-/

namespace A379413.P1139490121137115392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363942 (A000040 (n + 1)).toNat + ⌈(n : ℝ) * (3 - Real.goldenRatio)⌉

end

end A379413.P1139490121137115392

/-! ## A379413.P12545742674602377318

`A260390(A284295(2*n+5))+ceil(n*(4-ϕ))`
-/

namespace A379413.P12545742674602377318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260390 (A284295 (2 * n + 5)).toNat + ⌈(n : ℝ) * (4 - Real.goldenRatio)⌉

end

end A379413.P12545742674602377318

/-! ## A379413.P13779711451789423759

`A195170(n)+A186726(A186726(n))`
-/

namespace A379413.P13779711451789423759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 n + A186726 (A186726 n).toNat

end

end A379413.P13779711451789423759

/-! ## A379413.P7474778268622804660

`A195170(n)+A008835(A001567(n+1))`
-/

namespace A379413.P7474778268622804660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 n + A008835 (A001567 (n + 1)).toNat

end

end A379413.P7474778268622804660

/-!
# A379414: a(n) = n + floor(n*s/r) + floor(n*t/r), where r = 3^(1/4), s = 3^(1/2), t = 3^(3/4).

The programs for A379414, there is no canonical definition to state claims against.
-/

/-! ## A379414.P7142368676571740458

`A080679(A260876(2*n))+record[xor(3, n)]`
-/

namespace A379414.P7142368676571740458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080679 (A260876 (2 * n)).toNat + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A379414.P7142368676571740458

/-! ## A379414.P12361895921141915416

`A172338(n+1)+A008966(A079606(n+4))`
-/

namespace A379414.P12361895921141915416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172338 (n + 1) + A008966 (A079606 (n + 4)).toNat

end

end A379414.P12361895921141915416

/-! ## A379414.P9652585507026473471

`A004277(2*(n+1))-A030190(A089849(n))`
-/

namespace A379414.P9652585507026473471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * (n + 1)) - A030190 (A089849 n).toNat

end

end A379414.P9652585507026473471

/-! ## A379414.P16242844631930200268

`A022998(2*(n+1))-A143104(A223012(2*n+1))`
-/

namespace A379414.P16242844631930200268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (2 * (n + 1)) - A143104 (A223012 (2 * n + 1)).toNat

end

end A379414.P16242844631930200268

/-! ## A379414.P4432189453483045648

`A133653(n+1)+A000002(A065377(n+1))`
-/

namespace A379414.P4432189453483045648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133653 (n + 1) + A000002 (A065377 (n + 1)).toNat

end

end A379414.P4432189453483045648

/-!
# A379415: a(n) = n + floor(n*r/s) + floor(n*t/s), where r = 3^(1/4), s = 3^(1/2), t = 3^(3/4).

The programs for A379415, there is no canonical definition to state claims against.
-/

/-! ## A379415.P15527706765593836719

`A052382(3*(n+1))-A046951(A108411(n))`
-/

namespace A379415.P15527706765593836719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (3 * (n + 1)) - A046951 (A108411 n).toNat

end

end A379415.P15527706765593836719

/-! ## A379415.P17590146308306740165

`A190280(n+1)+A000005(2^n)`
-/

namespace A379415.P17590146308306740165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190280 (n + 1) + A000005 (2 ^ n)

end

end A379415.P17590146308306740165

/-! ## A379415.P6952531961092626992

`A193767(n+1)+A010815(A059306(2*(n+1)))`
-/

namespace A379415.P6952531961092626992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193767 (n + 1) + A010815 (A059306 (2 * (n + 1))).toNat

end

end A379415.P6952531961092626992

/-! ## A379415.P14920416632895260367

`A047201(3*n+4)-A070939(A290689(n+5))`
-/

namespace A379415.P14920416632895260367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (3 * n + 4) - A070939 (A290689 (n + 5)).toNat

end

end A379415.P14920416632895260367

/-! ## A379415.P9090506126838783025

`A110117(n+1)-A089053(A059590(n))`
-/

namespace A379415.P9090506126838783025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110117 (n + 1) - A089053 (A059590 n).toNat

end

end A379415.P9090506126838783025

/-!
# A379416: a(n) = n + [n*r/t] + [n*s/t], where r = 3^(1/4); s = 3^(1/2); t = 3^(3/4) and [ ] = floor.

The programs for A379416, there is no canonical definition to state claims against.
-/

/-! ## A379416.P8817461559502362106

`A109260(n+1)-A055642(A017992(n))`
-/

namespace A379416.P8817461559502362106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109260 (n + 1) - A055642 (A017992 n).toNat

end

end A379416.P8817461559502362106

/-! ## A379416.P8989637492577794513

`A292664(n+1)-A055642(A017992(n))`
-/

namespace A379416.P8989637492577794513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292664 (n + 1) - A055642 (A017992 n).toNat

end

end A379416.P8989637492577794513

/-! ## A379416.P18022869691134865048

`A330182(n+1)+A330166(A091894(n))`
-/

namespace A379416.P18022869691134865048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330182 (n + 1) + A330166 (A091894 n).toNat

end

end A379416.P18022869691134865048

/-! ## A379416.P2291683445446737014

`A330186(n+1)+A330166(A091894(n))`
-/

namespace A379416.P2291683445446737014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330186 (n + 1) + A330166 (A091894 n).toNat

end

end A379416.P2291683445446737014

/-! ## A379416.P17398073976107140359

`A047368(2*(n+1))+A011655(A224957(n+4))`
-/

namespace A379416.P17398073976107140359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047368 (2 * (n + 1)) + A011655 (A224957 (n + 4)).toNat

end

end A379416.P17398073976107140359

/-!
# A379417: a(n) = n + [n*s/r] + [n*t/r], where r = (3/2)^(1/4); s = (3/2)^(1/2); t = (3/2)^(3/4) and [ ] = floor.

The programs for A379417, there is no canonical definition to state claims against.
-/

/-! ## A379417.P16630248372260038726

`∑[A038189(A066186(xor(1, n)))+3]`
-/

namespace A379417.P16630248372260038726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A066186 (Nat.xor 1 n)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379417.P16630248372260038726

/-! ## A379417.P13765999569621772303

`∑[A001221(A083209(∑[n+1]+n))+1]`
-/

namespace A379417.P13765999569621772303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A083209 (∑ j ∈ Finset.range (n + 1), f2 j + n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379417.P13765999569621772303

/-! ## A379417.P17705259805737455993

`A374093(A116445(3*(n+1)))+A189513(n+1)`
-/

namespace A379417.P17705259805737455993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374093 (A116445 (3 * (n + 1))).toNat + A189513 (n + 1)

end

end A379417.P17705259805737455993

/-! ## A379417.P8490804277647402369

`A286490(A031938(n+1))+A190059(n+1)`
-/

namespace A379417.P8490804277647402369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286490 (A031938 (n + 1)).toNat + A190059 (n + 1)

end

end A379417.P8490804277647402369

/-!
# A379418: a(n) = n + [n*r/s] + [n*t/s], where r = (3/2)^(1/4); s = (3/2)^(1/2); t = (3/2)^(3/4) and [ ] = floor.

The programs for A379418, there is no canonical definition to state claims against.
-/

/-! ## A379418.P1420238547289545345

`A002264(A366847(3*n+2)+A002264(n))`
-/

namespace A379418.P1420238547289545345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A366847 (3 * n + 2) + A002264 n).toNat

end

end A379418.P1420238547289545345

/-! ## A379418.P13275608613103832243

`A000027(3*(n+1))-A226464(A205823(n+4))`
-/

namespace A379418.P13275608613103832243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (3 * (n + 1)) - A226464 (A205823 (n + 4)).toNat

end

end A379418.P13275608613103832243

/-!
# A379419: a(n) = n + [n*r/t] + [n*s/t], where r = (3/2)^(1/4); s = (3/2)^(1/2); t = (3/2)^(3/4) and [ ] = floor.

The programs for A379419, there is no canonical definition to state claims against.
-/

/-! ## A379419.P3644516112971403509

`A190362(n+1)+A187946(A017994(n))`
-/

namespace A379419.P3644516112971403509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190362 (n + 1) + A187946 (A017994 n).toNat

end

end A379419.P3644516112971403509

/-! ## A379419.P6407313567932653148

`record[A094765(n+1)%A001132(A362191(2*n)+1)]`
-/

namespace A379419.P6407313567932653148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094765 (n + 1)) (A001132 (A362191 (2 * n) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379419.P6407313567932653148

/-! ## A379419.P7662099268034234286

`A026371(2*(n+1))-A035263(A102941(n+5))`
-/

namespace A379419.P7662099268034234286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026371 (2 * (n + 1)) - A035263 (A102941 (n + 5)).toNat

end

end A379419.P7662099268034234286

/-! ## A379419.P13293382291188891312

`A010059(A328387(3*n+2))+A001953(2*n)`
-/

namespace A379419.P13293382291188891312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A328387 (3 * n + 2)).toNat + A001953 (2 * n)

end

end A379419.P13293382291188891312

/-! ## A379419.P5836775482103972814

`A016789(n)-A010874(A275423(n))`
-/

namespace A379419.P5836775482103972814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A010874 (A275423 n).toNat

end

end A379419.P5836775482103972814

/-!
# A379420: a(n) = n + [n*s/r] + [n*t/r], where r = 5^(1/4); s = 5^(1/2); t = 5^(3/4) and [ ] = floor.

The programs for A379420, there is no canonical definition to state claims against.
-/

/-! ## A379420.P12713534926437557682

`A140106(A276871(n+2))`
-/

namespace A379420.P12713534926437557682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A276871 (n + 2)).toNat

end

end A379420.P12713534926437557682

/-! ## A379420.P7872203915406926322

`A083916(A000079(n))+A001651(3*(n+1))`
-/

namespace A379420.P7872203915406926322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (A000079 n).toNat + A001651 (3 * (n + 1))

end

end A379420.P7872203915406926322

/-! ## A379420.P12659036765813231432

`A247063(3*n+3)+A061775(A000079(n))`
-/

namespace A379420.P12659036765813231432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247063 (3 * n + 3) + A061775 (A000079 n).toNat

end

end A379420.P12659036765813231432

/-! ## A379420.P507848375254621282

`A318995(A283477(n))+A026491(2*n+1)`
-/

namespace A379420.P507848375254621282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A283477 n).toNat + A026491 (2 * n + 1)

end

end A379420.P507848375254621282

/-! ## A379420.P184450728805412579

`A001950(2*(n+1))-A038548(A063759(2*n))`
-/

namespace A379420.P184450728805412579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * (n + 1)) - A038548 (A063759 (2 * n)).toNat

end

end A379420.P184450728805412579

/-!
# A379421: a(n) = n + floor(n*r/s) + floor(n*t/s), where r = 5^(1/4), s = 5^(1/2), t = 5^(3/4).

The programs for A379421, the canonical program `A379421.P17566647080812889774` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379421 has offset 1).

The definition of A379421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379421.P17566647080812889774

`A133872(A005563(n))+A063247(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A379421

/-- `A133872(A005563(n))+A063247(n+1)` -/
def P17566647080812889774.Spec : Prop :=
  ∀ n, P17566647080812889774.a n = A379421 (n + 1)

theorem P17566647080812889774.correct : P17566647080812889774.Spec := by
  intro n
  simp only [A379421, Nat.add_sub_cancel]

end A379421

/-! ## A379421.P559317769710604560

`3*n+A261348(n+3)+1`
-/

namespace A379421.P559317769710604560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A261348 (n + 3) + 1)

end

end A379421.P559317769710604560

namespace A379421

/-- `3*n+A261348(n+3)+1` -/
def P559317769710604560.Spec : Prop :=
  ∀ n, P559317769710604560.a n = A379421 (n + 1)

end A379421

/-! ## A379421.P16953578264103031162

`A261348(n+3)+Δ[A000326(n)]`
-/

namespace A379421.P16953578264103031162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261348 (n + 3) + (f1 (n + 1) - f1 n)

end

end A379421.P16953578264103031162

namespace A379421

/-- `A261348(n+3)+Δ[A000326(n)]` -/
def P16953578264103031162.Spec : Prop :=
  ∀ n, P16953578264103031162.a n = A379421 (n + 1)

end A379421

/-! ## A379421.P16402153295811968442

`A225850(A167151(3*n+2))+floor(n/2)-floor(n/3)`
-/

namespace A379421.P16402153295811968442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225850 (A167151 (3 * n + 2)).toNat + (⌊(n : ℚ) / 2⌋ - ⌊(n : ℚ) / 3⌋)

end

end A379421.P16402153295811968442

namespace A379421

/-- `A225850(A167151(3*n+2))+floor(n/2)-floor(n/3)` -/
def P16402153295811968442.Spec : Prop :=
  ∀ n, P16402153295811968442.a n = A379421 (n + 1)

end A379421

/-! ## A379421.P4138660297974097495

`A063204(n+1)+2%A367909(n+1)`
-/

namespace A379421.P4138660297974097495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063204 (n + 1) + Int.tmod 2 (A367909 (n + 1))

end

end A379421.P4138660297974097495

namespace A379421

/-- `A063204(n+1)+2%A367909(n+1)` -/
def P4138660297974097495.Spec : Prop :=
  ∀ n, P4138660297974097495.a n = A379421 (n + 1)

end A379421

/-!
# A379422: a(n) = n + floor(n*r/t) + floor(n*s/t), where r = 5^(1/4), s = 5^(1/2), t = 5^(3/4).

The programs for A379422, there is no canonical definition to state claims against.
-/

/-! ## A379422.P17751950705552000238

`A209900(A022840(n+1))`
-/

namespace A379422.P17751950705552000238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209900 (A022840 (n + 1)).toNat

end

end A379422.P17751950705552000238

/-! ## A379422.P7544100648358316653

`A184873(n+1)+A064911(A006723(n+1))`
-/

namespace A379422.P7544100648358316653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184873 (n + 1) + A064911 (A006723 (n + 1)).toNat

end

end A379422.P7544100648358316653

/-! ## A379422.P3202798465957343255

`A378122(A086583(n))+A005843(n)`
-/

namespace A379422.P3202798465957343255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378122 (A086583 n).toNat + A005843 n

end

end A379422.P3202798465957343255

/-! ## A379422.P10172466559267878585

`A258068(2*n+1)+A212632(A187614(n+1))`
-/

namespace A379422.P10172466559267878585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258068 (2 * n + 1) + A212632 (A187614 (n + 1)).toNat

end

end A379422.P10172466559267878585

/-!
# A379423: Least modulus k such that the multiplicative group modulo k is the direct product of n nontrivial cyclic groups.

The programs for A379423, there is no canonical definition to state claims against.
-/

/-! ## A379423.P15633224886289836138

`A122227(a(n-1))-1` with `a(0)=1, a(1)=3`
-/

namespace A379423.P15633224886289836138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A122227 (a (n - 1)).toNat - 1

end

end A379423.P15633224886289836138

/-! ## A379423.P619721750929084087

`A323384(A084221(n))`
-/

namespace A379423.P619721750929084087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323384 (A084221 n).toNat

end

end A379423.P619721750929084087

/-!
# A379424: Least modulus k such that the multiplicative group modulo k has a difference of n nontrivial cycles between its minimal and maximal representation.

The programs for A379424, there is no canonical definition to state claims against.
-/

/-! ## A379424.P5051627279970095135

`A002061(A279374(n)%A003288(3*n+2))`
-/

namespace A379424.P5051627279970095135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (Int.tmod (A279374 n) (A003288 (3 * n + 2))).toNat

end

end A379424.P5051627279970095135

/-!
# A379426: Prime terms in A287353.

The programs for A379426, there is no canonical definition to state claims against.
-/

/-! ## A379426.P16981523219743253795

`A287353(lt[0, A309953(n)]^A283976(n))`
-/

namespace A379426.P16981523219743253795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287353 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) ^ (A283976 n : ℤ))).toNat

end

end A379426.P16981523219743253795

/-!
# A379430: Array read by antidiagonals: A(n,k) is the number of sensed planar maps with n vertices and k faces, n >= 1, k >= 1.

The programs for A379430, there is no canonical definition to state claims against.
-/

/-! ## A379430.P18389588679228751198

`2*A277741(n+1)-A379431(n+1)`
-/

namespace A379430.P18389588679228751198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277741 (n + 1) - A379431 (n + 1)

end

end A379430.P18389588679228751198

/-! ## A379430.P14259724078416891978

`A317710(A277741(n+1))`
-/

namespace A379430.P14259724078416891978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (A277741 (n + 1)).toNat

end

end A379430.P14259724078416891978

/-! ## A379430.P14990994377702025132

`A156251(A241078(n+1))`
-/

namespace A379430.P14990994377702025132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A241078 (n + 1)).toNat

end

end A379430.P14990994377702025132

/-!
# A379431: Array read by antidiagonals: A(n,k) is the number of achiral planar maps with n vertices and k faces, n >= 1, k >= 1.

The programs for A379431, there is no canonical definition to state claims against.
-/

/-! ## A379431.P8566858377040769189

`2*A277741(n+1)-A379430(n+1)`
-/

namespace A379431.P8566858377040769189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277741 (n + 1) - A379430 (n + 1)

end

end A379431.P8566858377040769189

/-! ## A379431.P7750565870938238006

`A055572(A241555(n))`
-/

namespace A379431.P7750565870938238006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A241555 n).toNat

end

end A379431.P7750565870938238006

/-! ## A379431.P12293879485192764781

`A052382(A241555(n))%A107605(3*n+4)`
-/

namespace A379431.P12293879485192764781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052382 (A241555 n).toNat) (A107605 (3 * n + 4))

end

end A379431.P12293879485192764781

/-! ## A379431.P2169796411998930563

`A318185(A003991(n+1)%A100467(3*n+2))`
-/

namespace A379431.P2169796411998930563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318185 (Int.tmod (A003991 (n + 1)) (A100467 (3 * n + 2))).toNat

end

end A379431.P2169796411998930563

/-! ## A379431.P1564593709646856215

`A000196(A116694(n+1)-A268479(n+1))`
-/

namespace A379431.P1564593709646856215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A116694 (n + 1) - A268479 (n + 1)).toNat

end

end A379431.P1564593709646856215

/-!
# A379432: Triangle read by rows: T(n,k) is the number of unsensed 2-connected (nonseparable) planar maps with n edges and k vertices, n >= 2, 2 <= k <= n.

The programs for A379432, there is no canonical definition to state claims against.
-/

/-! ## A379432.P12049715643539858573

`A390394(A342061(n+2))`
-/

namespace A379432.P12049715643539858573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390394 (A342061 (n + 2)).toNat

end

end A379432.P12049715643539858573

/-! ## A379432.P2991836928764173610

`A342461(A174410(n))`
-/

namespace A379432.P2991836928764173610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342461 (A174410 n).toNat

end

end A379432.P2991836928764173610

/-! ## A379432.P1783754867336785000

`A367329(A334552(n+1))`
-/

namespace A379432.P1783754867336785000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367329 (A334552 (n + 1)).toNat

end

end A379432.P1783754867336785000

/-! ## A379432.P14101781686113058283

`A072347(A157154(n)-1)`
-/

namespace A379432.P14101781686113058283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072347 (A157154 n - 1).toNat

end

end A379432.P14101781686113058283

/-! ## A379432.P3193556142405761451

`A072347(xor(3, A157154(n)))`
-/

namespace A379432.P3193556142405761451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072347 (Int.xor 3 (A157154 n)).toNat

end

end A379432.P3193556142405761451

/-!
# A379433: Number of rooted planar maps with n edges and without faces of degree 1.

The programs for A379433, there is no canonical definition to state claims against.
-/

/-! ## A379433.P6766437107516602556

`A057364(A100327(n)+2)`
-/

namespace A379433.P6766437107516602556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 (A100327 n + 2).toNat

end

end A379433.P6766437107516602556

/-! ## A379433.P128243126504067643

`A020995(A011782(n))+A000142(n)`
-/

namespace A379433.P128243126504067643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020995 (A011782 n).toNat + A000142 n

end

end A379433.P128243126504067643

/-!
# A379434: Number of rooted planar maps with n edges and without faces of degree 1 or 2.

The programs for A379434, there is no canonical definition to state claims against.
-/

/-! ## A379434.P7914313953469260430

`A143921(n)-A124768(A143904(n))`
-/

namespace A379434.P7914313953469260430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143921 n - A124768 (A143904 n).toNat

end

end A379434.P7914313953469260430

/-!
# A379435: Number of rooted planar maps with n edges and without faces or vertices of degree 1.

The programs for A379435, there is no canonical definition to state claims against.
-/

/-! ## A379435.P2464827740182595274

`A368581(A327711(n+1))+A000166(n)`
-/

namespace A379435.P2464827740182595274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368581 (A327711 (n + 1)).toNat + A000166 n

end

end A379435.P2464827740182595274

/-! ## A379435.P10960703004906942905

`A000676(2*n)-A376885(A000699(n))`
-/

namespace A379435.P10960703004906942905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000676 (2 * n) - A376885 (A000699 n).toNat

end

end A379435.P10960703004906942905

/-! ## A379435.P5598684573818037579

`A374080(2*n+1)+A107821(A350354(n))`
-/

namespace A379435.P5598684573818037579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374080 (2 * n + 1) + A107821 (A350354 n).toNat

end

end A379435.P5598684573818037579

/-!
# A379437: Number of rooted 2-connected simple planar maps with n edges.

The programs for A379437, there is no canonical definition to state claims against.
-/

/-! ## A379437.P10138902174300599214

`A371128(A036695(n+1))`
-/

namespace A379437.P10138902174300599214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371128 (A036695 (n + 1)).toNat

end

end A379437.P10138902174300599214

/-! ## A379437.P16978262378960618585

`A087011(∑[A030532(n+5)]+2)`
-/

namespace A379437.P16978262378960618585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030532 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A379437.P16978262378960618585

/-!
# A379438: Triangle read by rows: T(n,k) is the number of sensed combinatorial maps with n edges and genus k, 0 <= k <= floor(n/2).

The programs for A379438, there is no canonical definition to state claims against.
-/

/-! ## A379438.P7284642818510666143

`2*A379439(n)-A380234(n)`
-/

namespace A379438.P7284642818510666143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A379439 n - A380234 n

end

end A379438.P7284642818510666143

/-! ## A379438.P4986394984496468914

`A005843(A379439(n))-A380234(n)`
-/

namespace A379438.P4986394984496468914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A379439 n).toNat - A380234 n

end

end A379438.P4986394984496468914

/-!
# A379439: Triangle read by rows: T(n,k) is the number of unsensed combinatorial maps with n edges and genus k, 0 <= k <= floor(n/2).

The programs for A379439, there is no canonical definition to state claims against.
-/

/-! ## A379439.P8466774814250036535

`A004526(A380234(n)+A379438(n))`
-/

namespace A379439.P8466774814250036535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A380234 n + A379438 n).toNat

end

end A379439.P8466774814250036535

/-! ## A379439.P12909411104374769946

`A110654(A380234(n)+A379438(n))`
-/

namespace A379439.P12909411104374769946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A380234 n + A379438 n).toNat

end

end A379439.P12909411104374769946

/-!
# A379442: a(1) = 1, a(2) = 2, for a(n) > 2, a(n) is the smallest unused positive number that shares a factor with a(n-1) such that the exponents of each distinct prime factor of a(n-1) differ by one from those of the same prime factors of a(n), while the exponents of each distinct prime factor of a(n) differ by one from those of the same prime factors of a(n-1).

The programs for A379442, there is no canonical definition to state claims against.
-/

/-! ## A379442.P5794125142212708917

`A379440(n+1)%Δ[A343154(n+1)]`
-/

namespace A379442.P5794125142212708917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379440 (n + 1)) (f1 (n + 1) - f1 n)

end

end A379442.P5794125142212708917

/-! ## A379442.P7666175915250847586

`A379480(A164766(n))+A379440(n+1)`
-/

namespace A379442.P7666175915250847586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 (A164766 n).toNat + A379440 (n + 1)

end

end A379442.P7666175915250847586

/-! ## A379442.P11760440843628960954

`gcd(A101455(A007899(n)), A379440(n+1))`
-/

namespace A379442.P11760440843628960954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101455 (A007899 n).toNat) (A379440 (n + 1))

end

end A379442.P11760440843628960954

/-! ## A379442.P17932499584040761829

`A379461(A318474(n+1))+A379440(n+1)`
-/

namespace A379442.P17932499584040761829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379461 (A318474 (n + 1)).toNat + A379440 (n + 1)

end

end A379442.P17932499584040761829

/-! ## A379442.P11528378953228424909

`A379440(n+1)*A379483(A379481(n+1))`
-/

namespace A379442.P11528378953228424909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379440 (n + 1) * A379483 (A379481 (n + 1)).toNat

end

end A379442.P11528378953228424909

/-!
# A379444: a(n) is the difference between the least prime > (n+1)^2 and the largest prime < n^2, divided by 2.

The programs for A379444, the canonical program `A379444.P1698995234905750944` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379444 has offset 2).

The definition of A379444 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, A053001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379444.P1698995234905750944

`(A007491(n+3)-A053001(n+2))/2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A379444

/-- `(A007491(n+3)-A053001(n+2))/2` -/
def P1698995234905750944.Spec : Prop :=
  ∀ n, P1698995234905750944.a n = (A379444 (n + 2) : ℚ)

end A379444

/-! ## A379444.P8325607610330145000

`Δ[A056928(n+2)]-A331698(n+2)`
-/

namespace A379444.P8325607610330145000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A331698 (n + 2)

end

end A379444.P8325607610330145000

namespace A379444

/-- `Δ[A056928(n+2)]-A331698(n+2)` -/
def P8325607610330145000.Spec : Prop :=
  ∀ n, P8325607610330145000.a n = A379444 (n + 2)

end A379444

/-! ## A379444.P12483107250452611204

`Δ[A056928(n+2)]-(A053001(n+3)-A056930(n+2))`
-/

namespace A379444.P12483107250452611204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A053001 (n + 3) - A056930 (n + 2))

end

end A379444.P12483107250452611204

namespace A379444

/-- `Δ[A056928(n+2)]-(A053001(n+3)-A056930(n+2))` -/
def P12483107250452611204.Spec : Prop :=
  ∀ n, P12483107250452611204.a n = A379444 (n + 2)

end A379444

/-!
# A379445: a(n) = gpf(prime(n)-1)*gpf(prime(n)+1), where gpf is A006530.

The programs for A379445, the canonical program `A379445.P2489030206191324611` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379445 has offset 2).

The definition of A379445 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023503, A023509, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379445.P2489030206191324611

`A023503(n+2)*A023509(n+2)`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A379445

/-- `A023503(n+2)*A023509(n+2)` -/
def P2489030206191324611.Spec : Prop :=
  ∀ n, P2489030206191324611.a n = A379445 (n + 2)

theorem P2489030206191324611.correct : P2489030206191324611.Spec := by
  intro n
  simp only [A379445, Nat.add_sub_cancel]

end A379445

/-!
# A379446: a(n) is the number of ones in the binary expansion of 10^(10^n).

The programs for A379446, there is no canonical definition to state claims against.
-/

/-! ## A379446.P528017231538024699

`A118738(10^n)`
-/

namespace A379446.P528017231538024699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118738 (10 ^ n)

end

end A379446.P528017231538024699

/-!
# A379448: a(n) is the number of ones in the binary expansion of n^(n^n).

The programs for A379448, there is no canonical definition to state claims against.
-/

/-! ## A379448.P15533112287211650047

`A078140(C(∑{d}[n+1, #], A178910(n+1)))`
-/

namespace A379448.P15533112287211650047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078140 (Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (A178910 (n + 1)).toNat)

end

end A379448.P15533112287211650047

/-!
# A379452: Number of compositions (ordered partitions) of 1 into n distinct reciprocals of positive integers.

The programs for A379452, there is no canonical definition to state claims against.
-/

/-! ## A379452.P8328630932390749718

`(n+1)!*A006585(n+1)`
-/

namespace A379452.P8328630932390749718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A006585 (n + 1)

end

end A379452.P8328630932390749718

/-! ## A379452.P17878767618509065479

`ratio[A000178(n)]*A006585(n+1)`
-/

namespace A379452.P17878767618509065479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A006585 (n + 1) : ℚ)

end

end A379452.P17878767618509065479

/-! ## A379452.P5061637235217567802

`record[A047920(n)]*A006585(n+1)`
-/

namespace A379452.P5061637235217567802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A006585 (n + 1)

end

end A379452.P5061637235217567802

/-! ## A379452.P8586524376258949551

`record[A246660(n)]*A006585(n+1)`
-/

namespace A379452.P8586524376258949551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A006585 (n + 1)

end

end A379452.P8586524376258949551

/-!
# A379453: Numbers that decrease when they are replaced by the "Look and Say" description (cf. A045918) of their prime factors, counted with multiplicity.

The programs for A379453, there is no canonical definition to state claims against.
-/

/-! ## A379453.P12221966557451422209

`lt[A123132(n+2), n+1]+2`
-/

namespace A379453.P12221966557451422209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A379453.P12221966557451422209

/-!
# A379456: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(-x) / (1 + x*exp(x)) ).

The programs for A379456, there is no canonical definition to state claims against.
-/

/-! ## A379456.P16669106045185559753

`A353402(A033312(n))+A235601(n)`
-/

namespace A379456.P16669106045185559753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353402 (A033312 n).toNat + A235601 n

end

end A379456.P16669106045185559753

/-!
# A379457: If n = Product (p_j^k_j) then a(n) = Product (floor(p_j^(1/k_j))).

The programs for A379457, there is no canonical definition to state claims against.
-/

/-! ## A379457.P17469441516182868152

`A010815(A000217(3*n+4))+∏{p}[n+1, lcm(n+1, #²)/(n+1)]`
-/

namespace A379457.P17469441516182868152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 (A000217 (3 * n + 4)).toNat : ℚ) + ∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A379457.P17469441516182868152

/-! ## A379457.P16479491992161876352

`∏{p}[n+1, lcm(n+1, #²)/(n+1)]-A121373(A178228(n+1))`
-/

namespace A379457.P16479491992161876352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ) - (A121373 (A178228 (n + 1)).toNat : ℚ)

end

end A379457.P16479491992161876352

/-! ## A379457.P11766429115225805223

`∏{p}[n+1, lcm(n+1, #²)/(n+1)]*A304327(A208879(n))`
-/

namespace A379457.P11766429115225805223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ)) * (A304327 (A208879 n).toNat : ℚ)

end

end A379457.P11766429115225805223

/-! ## A379457.P6284343655266502121

`A115361(A334939(2*n+5))+A055231(n+1)`
-/

namespace A379457.P6284343655266502121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 (A334939 (2 * n + 5)).toNat + A055231 (n + 1)

end

end A379457.P6284343655266502121

/-!
# A379460: Array read by downward antidiagonals: A(n,k) = A(n,k-1) + (k+1)*(A(n-1,k) + A(n-1,k+1)) with A(n,0) = A(n-1,0) + A(n-1,1), A(0,k) = 1, n >= 0, k >= 0.

The programs for A379460, there is no canonical definition to state claims against.
-/

/-! ## A379460.P8297493291855494466

`A114149(A193630(n))`
-/

namespace A379460.P8297493291855494466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114149 (A193630 n).toNat

end

end A379460.P8297493291855494466

/-! ## A379460.P13571305099156273329

`A318389(A038722(n+1))%A076670(3*n+5)`
-/

namespace A379460.P13571305099156273329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318389 (A038722 (n + 1)).toNat) (A076670 (3 * n + 5))

end

end A379460.P13571305099156273329

/-!
# A379463: a(n) is the total number of paths starting at (0, 0), ending at (n, 0), consisting of steps (1, 1), (1, 0), (1, -3), and staying on or above y = -1.

The programs for A379463, there is no canonical definition to state claims against.
-/

/-! ## A379463.P6284990548049694103

`A212011(A375284(n+1))`
-/

namespace A379463.P6284990548049694103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212011 (A375284 (n + 1)).toNat

end

end A379463.P6284990548049694103

/-! ## A379463.P3541228007295864342

`A061775(A287022(n))+2*C(n, 4)`
-/

namespace A379463.P3541228007295864342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A287022 n).toNat + (2 * Nat.choose n 4 : ℤ)

end

end A379463.P3541228007295864342

/-! ## A379463.P12845643472507055216

`A245931(n)-A266587(A245910(n))`
-/

namespace A379463.P12845643472507055216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245931 n - A266587 (A245910 n).toNat

end

end A379463.P12845643472507055216

/-! ## A379463.P9072796577378442111

`A376835(n)-A085979(A000032(2*n+3))`
-/

namespace A379463.P9072796577378442111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376835 n - A085979 (A000032 (2 * n + 3)).toNat

end

end A379463.P9072796577378442111

/-!
# A379464: a(n) is the total number of paths starting at (0, 0), ending at (n, 0), consisting of steps (1, 1), (1, 0), (1, -3), and staying on or above y = -2.

The programs for A379464, there is no canonical definition to state claims against.
-/

/-! ## A379464.P18410178989609627887

`A285970(A376835(n))`
-/

namespace A379464.P18410178989609627887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285970 (A376835 n).toNat

end

end A379464.P18410178989609627887

/-!
# A379466: Taxicab numbers that are abundant.

The programs for A379466, there is no canonical definition to state claims against.
-/

/-! ## A379466.P13831492735501158425

`A318662(A383925(n+1))*A322102(n+1)`
-/

namespace A379466.P13831492735501158425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318662 (A383925 (n + 1)).toNat * A322102 (n + 1)

end

end A379466.P13831492735501158425

/-! ## A379466.P5358383687537888706

`A322102(n+1)*A383098(A000040(n+1))`
-/

namespace A379466.P5358383687537888706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322102 (n + 1) * A383098 (A000040 (n + 1)).toNat

end

end A379466.P5358383687537888706

/-! ## A379466.P6976502080286445794

`A025455(A001235(n+1))*A322102(n+1)`
-/

namespace A379466.P6976502080286445794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A001235 (n + 1)).toNat * A322102 (n + 1)

end

end A379466.P6976502080286445794

/-!
# A379471: Composition of bijective bit-reverse and Blue code, in this order: a(n) = A193231(A057889(n)).

The programs for A379471, there is no canonical definition to state claims against.
-/

/-! ## A379471.P2278265495369087654

`A193231(A057889(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379471.P2278265495369087654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A057889 n).toNat

end

end A379471.P2278265495369087654

/-! ## A379471.P6737270071143450280

`A057889(A379472(A122155(A057889(A122155(n)))))`
-/

namespace A379471.P6737270071143450280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A379472 (A122155 (A057889 (A122155 n).toNat).toNat).toNat).toNat

end

end A379471.P6737270071143450280

/-! ## A379471.P4376707067855619439

`A057889(A379472(A379472(A057889(A379472(n)))))`
-/

namespace A379471.P4376707067855619439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A379472 (A379472 (A057889 (A379472 n).toNat).toNat).toNat).toNat

end

end A379471.P4376707067855619439

/-! ## A379471.P9451470767191450560

`A193231(xor(n, A280508(n)))`
-/

namespace A379471.P9451470767191450560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (Int.xor (n : ℤ) (A280508 n)).toNat

end

end A379471.P9451470767191450560

/-! ## A379471.P9382598939667617671

`A193231(A379472(A193231(n)))`
-/

namespace A379471.P9382598939667617671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A379472 (A193231 n).toNat).toNat

end

end A379471.P9382598939667617671

/-! ## A379471.P6751426201744117059

`A193231(A235041(A245453(A235042(n))))`
-/

namespace A379471.P6751426201744117059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A235041 (A245453 (A235042 n).toNat).toNat).toNat

end

end A379471.P6751426201744117059

/-!
# A379472: Composition of Blue code and bijective bit-reverse, in this order: a(n) = A057889(A193231(n)).

The programs for A379472, there is no canonical definition to state claims against.
-/

/-! ## A379472.P10239705604870062825

`A057889(A193231(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379472.P10239705604870062825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A193231 n).toNat

end

end A379472.P10239705604870062825

/-! ## A379472.P16032771040472701034

`A057889(xor(n, A280507(n)))`
-/

namespace A379472.P16032771040472701034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.xor (n : ℤ) (A280507 n)).toNat

end

end A379472.P16032771040472701034

/-! ## A379472.P16722262513406999570

`A057889(A379471(A057889(n)))`
-/

namespace A379472.P16722262513406999570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A379471 (A057889 n).toNat).toNat

end

end A379472.P16722262513406999570

/-! ## A379472.P10553012434637483458

`A057889(A234612(ceil(xor(n-1, 2*n)/2)))`
-/

namespace A379472.P10553012434637483458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A234612 ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉.toNat).toNat

end

end A379472.P10553012434637483458

/-! ## A379472.P12304737151645174637

`A193231(A379471(A379471(A193231(A379471(n)))))`
-/

namespace A379472.P12304737151645174637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A379471 (A379471 (A193231 (A379471 n).toNat).toNat).toNat).toNat

end

end A379472.P12304737151645174637

/-! ## A379472.P16159139529659408350

`A057889(A235041(A234748(A235042(n))))`
-/

namespace A379472.P16159139529659408350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A235041 (A234748 (A235042 n).toNat).toNat).toNat

end

end A379472.P16159139529659408350

/-!
# A379473: a(n) is the highest power of 3 dividing the sum of divisors of n.

The programs for A379473, the canonical program `A379473.P11357118703739175544` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379473 has offset 1).

The definition of A379473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379473.P11357118703739175544

`A038500(A000203(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A379473

/-- `A038500(A000203(n+1))` -/
def P11357118703739175544.Spec : Prop :=
  ∀ n, P11357118703739175544.a n = A379473 (n + 1)

theorem P11357118703739175544.correct : P11357118703739175544.Spec := by
  intro n
  simp only [A379473, Nat.add_sub_cancel]

end A379473

/-! ## A379473.P463301227046393843

`3^val(∑{d}[n+1, #], 3)`
-/

namespace A379473.P463301227046393843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f1 n), d) 3

end

end A379473.P463301227046393843

namespace A379473

/-- `3^val(∑{d}[n+1, #], 3)` -/
def P463301227046393843.Spec : Prop :=
  ∀ n, (P463301227046393843.a n : ℤ) = A379473 (n + 1)

end A379473

/-! ## A379473.P6919196054877749424

`3^A354100(n+1)`
-/

namespace A379473.P6919196054877749424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A354100 (n + 1) : ℤ)

end

end A379473.P6919196054877749424

namespace A379473

/-- `3^A354100(n+1)` -/
def P6919196054877749424.Spec : Prop :=
  ∀ n, P6919196054877749424.a n = (A379473 (n + 1) : ℚ)

end A379473

/-! ## A379473.P3493494606135795682

`gcd(A001160(n+1), A098355(n))`
-/

namespace A379473.P3493494606135795682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001160 (n + 1)) (A098355 n)

end

end A379473.P3493494606135795682

namespace A379473

/-- `gcd(A001160(n+1), A098355(n))` -/
def P3493494606135795682.Spec : Prop :=
  ∀ n, (P3493494606135795682.a n : ℤ) = A379473 (n + 1)

end A379473

/-! ## A379473.P15969957425249025083

`gcd(A000203(n+1), A132171(n))`
-/

namespace A379473.P15969957425249025083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A132171 n)

end

end A379473.P15969957425249025083

namespace A379473

/-- `gcd(A000203(n+1), A132171(n))` -/
def P15969957425249025083.Spec : Prop :=
  ∀ n, (P15969957425249025083.a n : ℤ) = A379473 (n + 1)

end A379473

/-! ## A379473.P7120536903666968001

`A000203(n+1)/A348930(n+1)`
-/

namespace A379473.P7120536903666968001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348930 (n + 1) : ℚ)

end

end A379473.P7120536903666968001

namespace A379473

/-- `A000203(n+1)/A348930(n+1)` -/
def P7120536903666968001.Spec : Prop :=
  ∀ n, P7120536903666968001.a n = (A379473 (n + 1) : ℚ)

end A379473

/-! ## A379473.P1517038136388609082

`A161942(n+1)/A336457(n+1)`
-/

namespace A379473.P1517038136388609082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161942 (n + 1) : ℚ) / (A336457 (n + 1) : ℚ)

end

end A379473.P1517038136388609082

namespace A379473

/-- `A161942(n+1)/A336457(n+1)` -/
def P1517038136388609082.Spec : Prop :=
  ∀ n, P1517038136388609082.a n = (A379473 (n + 1) : ℚ)

end A379473

/-! ## A379473.P10076345645898035232

`gcd(A064235(n+1), A074400(n+1))`
-/

namespace A379473.P10076345645898035232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064235 (n + 1)) (A074400 (n + 1))

end

end A379473.P10076345645898035232

namespace A379473

/-- `gcd(A064235(n+1), A074400(n+1))` -/
def P10076345645898035232.Spec : Prop :=
  ∀ n, (P10076345645898035232.a n : ℤ) = A379473 (n + 1)

end A379473

/-! ## A379473.P17900709248937199148

`gcd(A072404(n+1), A116607(n+1))`
-/

namespace A379473.P17900709248937199148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072404 (n + 1)) (A116607 (n + 1))

end

end A379473.P17900709248937199148

namespace A379473

/-- `gcd(A072404(n+1), A116607(n+1))` -/
def P17900709248937199148.Spec : Prop :=
  ∀ n, (P17900709248937199148.a n : ℤ) = A379473 (n + 1)

end A379473

/-! ## A379473.P8983771607064358241

`A038500(A046913(n+1))`
-/

namespace A379473.P8983771607064358241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A046913 (n + 1)).toNat

end

end A379473.P8983771607064358241

namespace A379473

/-- `A038500(A046913(n+1))` -/
def P8983771607064358241.Spec : Prop :=
  ∀ n, P8983771607064358241.a n = A379473 (n + 1)

end A379473

/-! ## A379473.P13363674133192149262

`A038500(∑{d}[A038502(n+1), #])`
-/

namespace A379473.P13363674133192149262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A379473.P13363674133192149262

namespace A379473

/-- `A038500(∑{d}[A038502(n+1), #])` -/
def P13363674133192149262.Spec : Prop :=
  ∀ n, P13363674133192149262.a n = A379473 (n + 1)

end A379473

/-! ## A379473.P1398286312413742981

`A038500(A354095(n+1))`
-/

namespace A379473.P1398286312413742981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A354095 (n + 1)).toNat

end

end A379473.P1398286312413742981

namespace A379473

/-- `A038500(A354095(n+1))` -/
def P1398286312413742981.Spec : Prop :=
  ∀ n, P1398286312413742981.a n = A379473 (n + 1)

end A379473

/-! ## A379473.P15306759575402159984

`A038500(A161942(n+1))`
-/

namespace A379473.P15306759575402159984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A161942 (n + 1)).toNat

end

end A379473.P15306759575402159984

namespace A379473

/-- `A038500(A161942(n+1))` -/
def P15306759575402159984.Spec : Prop :=
  ∀ n, P15306759575402159984.a n = A379473 (n + 1)

end A379473

/-! ## A379473.P6038781123502883787

`A038500(∑{d}[n+1, #])`
-/

namespace A379473.P6038781123502883787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A379473.P6038781123502883787

namespace A379473

/-- `A038500(∑{d}[n+1, #])` -/
def P6038781123502883787.Spec : Prop :=
  ∀ n, P6038781123502883787.a n = A379473 (n + 1)

end A379473

/-! ## A379473.P17342028092029027935

`A038500(A116607(n+1))`
-/

namespace A379473.P17342028092029027935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A116607 (n + 1)).toNat

end

end A379473.P17342028092029027935

namespace A379473

/-- `A038500(A116607(n+1))` -/
def P17342028092029027935.Spec : Prop :=
  ∀ n, P17342028092029027935.a n = A379473 (n + 1)

end A379473

/-! ## A379473.P80010932642064931

`A038500(A074400(n+1)/2)`
-/

namespace A379473.P80010932642064931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A379473.P80010932642064931

namespace A379473

/-- `A038500(A074400(n+1)/2)` -/
def P80010932642064931.Spec : Prop :=
  ∀ n, P80010932642064931.a n = A379473 (n + 1)

end A379473

/-! ## A379473.P7553733999805946174

`A038500(A074400(n+1))`
-/

namespace A379473.P7553733999805946174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A074400 (n + 1)).toNat

end

end A379473.P7553733999805946174

namespace A379473

/-- `A038500(A074400(n+1))` -/
def P7553733999805946174.Spec : Prop :=
  ∀ n, P7553733999805946174.a n = A379473 (n + 1)

end A379473

/-! ## A379473.P6491609524129634107

`A038500(A239050(n+1)/2)`
-/

namespace A379473.P6491609524129634107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2)).toNat

end

end A379473.P6491609524129634107

namespace A379473

/-- `A038500(A239050(n+1)/2)` -/
def P6491609524129634107.Spec : Prop :=
  ∀ n, P6491609524129634107.a n = A379473 (n + 1)

end A379473

/-! ## A379473.P3295152952545913552

`A038500(A144613(n+1))`
-/

namespace A379473.P3295152952545913552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A144613 (n + 1)).toNat

end

end A379473.P3295152952545913552

namespace A379473

/-- `A038500(A144613(n+1))` -/
def P3295152952545913552.Spec : Prop :=
  ∀ n, P3295152952545913552.a n = A379473 (n + 1)

end A379473

/-! ## A379473.P11720389487168013650

`A038500(A239050(n+1))`
-/

namespace A379473.P11720389487168013650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A239050 (n + 1)).toNat

end

end A379473.P11720389487168013650

namespace A379473

/-- `A038500(A239050(n+1))` -/
def P11720389487168013650.Spec : Prop :=
  ∀ n, P11720389487168013650.a n = A379473 (n + 1)

end A379473

/-!
# A379474: Number of prime factors of the form p^e || n : [p == 1 (mod 8), e == 1 (mod 4)] or [p == 5 (mod 8), e == -1 (mod 4)].

The programs for A379474, the canonical program `A379474.P1393438401902086563` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379474 has offset 1).

The definition of A379474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379474.P18290063237660370476

`and(A250231(A250207(n+1)), A341642(n+1))`
-/

namespace A379474.P18290063237660370476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A250231 (A250207 (n + 1)).toNat) (A341642 (n + 1))

end

end A379474.P18290063237660370476

namespace A379474

/-- `and(A250231(A250207(n+1)), A341642(n+1))` -/
def P18290063237660370476.Spec : Prop :=
  ∀ n, P18290063237660370476.a n = A379474 (n + 1)

end A379474

/-! ## A379474.P137827136688321381

`A007814(7*A319987(n+1))`
-/

namespace A379474.P137827136688321381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (7 * A319987 (n + 1)).toNat

end

end A379474.P137827136688321381

namespace A379474

/-- `A007814(7*A319987(n+1))` -/
def P137827136688321381.Spec : Prop :=
  ∀ n, P137827136688321381.a n = A379474 (n + 1)

end A379474

/-! ## A379474.P2238236317050355178

`A000035(A319987(n+1)+A085413(n+1))`
-/

namespace A379474.P2238236317050355178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A319987 (n + 1) + A085413 (n + 1)).toNat

end

end A379474.P2238236317050355178

namespace A379474

/-- `A000035(A319987(n+1)+A085413(n+1))` -/
def P2238236317050355178.Spec : Prop :=
  ∀ n, P2238236317050355178.a n = A379474 (n + 1)

end A379474

/-! ## A379474.P17278610896000415558

`A000035(A319987(n+1)+A103810(n+1))`
-/

namespace A379474.P17278610896000415558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A319987 (n + 1) + A103810 (n + 1)).toNat

end

end A379474.P17278610896000415558

namespace A379474

/-- `A000035(A319987(n+1)+A103810(n+1))` -/
def P17278610896000415558.Spec : Prop :=
  ∀ n, P17278610896000415558.a n = A379474 (n + 1)

end A379474

/-! ## A379474.P10253084580666663786

`val(A000010(n+1), A001316(A273013(2*(n+1))))`
-/

namespace A379474.P10253084580666663786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (n + 1)).toNat (A001316 (A273013 (2 * (n + 1))).toNat).toNat

end

end A379474.P10253084580666663786

namespace A379474

/-- `val(A000010(n+1), A001316(A273013(2*(n+1))))` -/
def P10253084580666663786.Spec : Prop :=
  ∀ n, (P10253084580666663786.a n : ℤ) = A379474 (n + 1)

end A379474

/-! ## A379474.P1393438401902086563

`A331671(A170818(n+1)^A331671(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A379474

/-- `A331671(A170818(n+1)^A331671(n+1))` -/
def P1393438401902086563.Spec : Prop :=
  ∀ n, P1393438401902086563.a n = A379474 (n + 1)

theorem P1393438401902086563.correct : P1393438401902086563.Spec := by
  intro n
  simp only [A379474, Nat.add_sub_cancel]

end A379474

/-! ## A379474.P487194516662421910

`A000035(A319987(3*(n+1))+A175914(n+1))`
-/

namespace A379474.P487194516662421910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A319987 (3 * (n + 1)) + A175914 (n + 1)).toNat

end

end A379474.P487194516662421910

namespace A379474

/-- `A000035(A319987(3*(n+1))+A175914(n+1))` -/
def P487194516662421910.Spec : Prop :=
  ∀ n, P487194516662421910.a n = A379474 (n + 1)

end A379474

/-! ## A379474.P11449040258014469138

`A370813(gcd(A045836(n+1), A099311(n+1)))`
-/

namespace A379474.P11449040258014469138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370813 (Int.gcd (A045836 (n + 1)) (A099311 (n + 1)))

end

end A379474.P11449040258014469138

namespace A379474

/-- `A370813(gcd(A045836(n+1), A099311(n+1)))` -/
def P11449040258014469138.Spec : Prop :=
  ∀ n, P11449040258014469138.a n = A379474 (n + 1)

end A379474

/-! ## A379474.P2732323573762199190

`A000035(A034938(n+1)-A319987(n+1))`
-/

namespace A379474.P2732323573762199190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A034938 (n + 1) - A319987 (n + 1)).toNat

end

end A379474.P2732323573762199190

namespace A379474

/-- `A000035(A034938(n+1)-A319987(n+1))` -/
def P2732323573762199190.Spec : Prop :=
  ∀ n, P2732323573762199190.a n = A379474 (n + 1)

end A379474

/-! ## A379474.P8309691325761108476

`A000035(A235266(2*(n+1))-A319987(n+1))`
-/

namespace A379474.P8309691325761108476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A235266 (2 * (n + 1)) - A319987 (n + 1)).toNat

end

end A379474.P8309691325761108476

namespace A379474

/-- `A000035(A235266(2*(n+1))-A319987(n+1))` -/
def P8309691325761108476.Spec : Prop :=
  ∀ n, P8309691325761108476.a n = A379474 (n + 1)

end A379474

/-!
# A379475: a(n) = 1 if A372565(n) > 1, otherwise 0, where A372565(n) is the greatest common divisor of n, sigma(n) and A003961(n).

The programs for A379475, the canonical program `A379475.P17972878585057408840` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379475 has offset 1).

The definition of A379475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379475.P17972878585057408840

`A008454(n)%A372565(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A379475

/-- `A008454(n)%A372565(n+1)` -/
def P17972878585057408840.Spec : Prop :=
  ∀ n, P17972878585057408840.a n = A379475 (n + 1)

theorem P17972878585057408840.correct : P17972878585057408840.Spec := by
  intro n
  simp only [A379475, Nat.add_sub_cancel]

end A379475

/-! ## A379475.P3226451218789071793

`A016760(n)%A372565(n+1)`
-/

namespace A379475.P3226451218789071793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A372565 (n + 1))

end

end A379475.P3226451218789071793

namespace A379475

/-- `A016760(n)%A372565(n+1)` -/
def P3226451218789071793.Spec : Prop :=
  ∀ n, P3226451218789071793.a n = A379475 (n + 1)

end A379475

/-! ## A379475.P9308137119738883088

`A017382(n)%A372565(n+1)`
-/

namespace A379475.P9308137119738883088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017382 n) (A372565 (n + 1))

end

end A379475.P9308137119738883088

namespace A379475

/-- `A017382(n)%A372565(n+1)` -/
def P9308137119738883088.Spec : Prop :=
  ∀ n, P9308137119738883088.a n = A379475 (n + 1)

end A379475

/-! ## A379475.P361129963052739391

`A036088(n)%A372565(n+1)`
-/

namespace A379475.P361129963052739391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036088 n) (A372565 (n + 1))

end

end A379475.P361129963052739391

namespace A379475

/-- `A036088(n)%A372565(n+1)` -/
def P361129963052739391.Spec : Prop :=
  ∀ n, P361129963052739391.a n = A379475 (n + 1)

end A379475

/-! ## A379475.P11016914791626274750

`A168126(n)%A372565(n+1)`
-/

namespace A379475.P11016914791626274750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168126 n) (A372565 (n + 1))

end

end A379475.P11016914791626274750

namespace A379475

/-- `A168126(n)%A372565(n+1)` -/
def P11016914791626274750.Spec : Prop :=
  ∀ n, P11016914791626274750.a n = A379475 (n + 1)

end A379475

/-! ## A379475.P17650380529790689863

`A168220(n)%A372565(n+1)`
-/

namespace A379475.P17650380529790689863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168220 n) (A372565 (n + 1))

end

end A379475.P17650380529790689863

namespace A379475

/-- `A168220(n)%A372565(n+1)` -/
def P17650380529790689863.Spec : Prop :=
  ∀ n, P17650380529790689863.a n = A379475 (n + 1)

end A379475

/-! ## A379475.P1824319939619137914

`A168564(n)%A372565(n+1)`
-/

namespace A379475.P1824319939619137914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168564 n) (A372565 (n + 1))

end

end A379475.P1824319939619137914

namespace A379475

/-- `A168564(n)%A372565(n+1)` -/
def P1824319939619137914.Spec : Prop :=
  ∀ n, P1824319939619137914.a n = A379475 (n + 1)

end A379475

/-! ## A379475.P2397785784198911952

`A170774(n)%A372565(n+1)`
-/

namespace A379475.P2397785784198911952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170774 n) (A372565 (n + 1))

end

end A379475.P2397785784198911952

namespace A379475

/-- `A170774(n)%A372565(n+1)` -/
def P2397785784198911952.Spec : Prop :=
  ∀ n, P2397785784198911952.a n = A379475 (n + 1)

end A379475

/-! ## A379475.P9671240295230253596

`A048493(n)%A372565(n+1)`
-/

namespace A379475.P9671240295230253596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048493 n) (A372565 (n + 1))

end

end A379475.P9671240295230253596

namespace A379475

/-- `A048493(n)%A372565(n+1)` -/
def P9671240295230253596.Spec : Prop :=
  ∀ n, P9671240295230253596.a n = A379475 (n + 1)

end A379475

/-! ## A379475.P11270635831396106227

`A048506(n)%A372565(n+1)`
-/

namespace A379475.P11270635831396106227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048506 n) (A372565 (n + 1))

end

end A379475.P11270635831396106227

namespace A379475

/-- `A048506(n)%A372565(n+1)` -/
def P11270635831396106227.Spec : Prop :=
  ∀ n, P11270635831396106227.a n = A379475 (n + 1)

end A379475

/-! ## A379475.P9710742676204628814

`A048482(n)%A372565(n+1)`
-/

namespace A379475.P9710742676204628814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048482 n) (A372565 (n + 1))

end

end A379475.P9710742676204628814

namespace A379475

/-- `A048482(n)%A372565(n+1)` -/
def P9710742676204628814.Spec : Prop :=
  ∀ n, P9710742676204628814.a n = A379475 (n + 1)

end A379475

/-! ## A379475.P5148905144326787764

`A074477(n+1)%A372565(n+1)`
-/

namespace A379475.P5148905144326787764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074477 (n + 1)) (A372565 (n + 1))

end

end A379475.P5148905144326787764

namespace A379475

/-- `A074477(n+1)%A372565(n+1)` -/
def P5148905144326787764.Spec : Prop :=
  ∀ n, P5148905144326787764.a n = A379475 (n + 1)

end A379475

/-! ## A379475.P5925949655588738378

`A075059(n)%A372565(n+1)`
-/

namespace A379475.P5925949655588738378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075059 n) (A372565 (n + 1))

end

end A379475.P5925949655588738378

namespace A379475

/-- `A075059(n)%A372565(n+1)` -/
def P5925949655588738378.Spec : Prop :=
  ∀ n, P5925949655588738378.a n = A379475 (n + 1)

end A379475

/-!
# A379476: a(n) = 1 if A326057(n) > 1, otherwise 0, where A326057(n) = gcd(A003961(n)-2n, A003961(n)-sigma(n)).

The programs for A379476, the canonical program `A379476.P18000588626381920064` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379476 has offset 1).

The definition of A379476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379476.P6820556724455181296

`char[A379477(n+1)-1]`
-/

namespace A379476.P6820556724455181296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379477 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379476.P6820556724455181296

namespace A379476

/-- `char[A379477(n+1)-1]` -/
def P6820556724455181296.Spec : Prop :=
  ∀ n, (P6820556724455181296.a n : ℤ) = A379476 (n + 1)

end A379476

/-! ## A379476.P6450664594005193026

`char[lt[1, A326057(n+1)]]`
-/

namespace A379476.P6450664594005193026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326057 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A379476.P6450664594005193026

namespace A379476

/-- `char[lt[1, A326057(n+1)]]` -/
def P6450664594005193026.Spec : Prop :=
  ∀ n, (P6450664594005193026.a n : ℤ) = A379476 (n + 1)

end A379476

/-! ## A379476.P9166987053099188106

`A379478(n+1)+A379475(n+1)`
-/

namespace A379476.P9166987053099188106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379478 (n + 1) + A379475 (n + 1)

end

end A379476.P9166987053099188106

namespace A379476

/-- `A379478(n+1)+A379475(n+1)` -/
def P9166987053099188106.Spec : Prop :=
  ∀ n, P9166987053099188106.a n = A379476 (n + 1)

end A379476

/-! ## A379476.P18000588626381920064

`A008949(A048298(n))%A326057(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A379476

/-- `A008949(A048298(n))%A326057(n+1)` -/
def P18000588626381920064.Spec : Prop :=
  ∀ n, P18000588626381920064.a n = A379476 (n + 1)

theorem P18000588626381920064.correct : P18000588626381920064.Spec := by
  intro n
  simp only [A379476, Nat.add_sub_cancel]

end A379476

/-! ## A379476.P5619921146094887283

`A326057(A006519(n+1))%A326057(n+1)`
-/

namespace A379476.P5619921146094887283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326057 (A006519 (n + 1)).toNat) (A326057 (n + 1))

end

end A379476.P5619921146094887283

namespace A379476

/-- `A326057(A006519(n+1))%A326057(n+1)` -/
def P5619921146094887283.Spec : Prop :=
  ∀ n, P5619921146094887283.a n = A379476 (n + 1)

end A379476

/-! ## A379476.P2335007159713079405

`A066247(A326057(n+1)+1)`
-/

namespace A379476.P2335007159713079405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A326057 (n + 1) + 1).toNat

end

end A379476.P2335007159713079405

namespace A379476

/-- `A066247(A326057(n+1)+1)` -/
def P2335007159713079405.Spec : Prop :=
  ∀ n, P2335007159713079405.a n = A379476 (n + 1)

end A379476

/-! ## A379476.P15338200926486841785

`A124779(n)%A326057(n+1)`
-/

namespace A379476.P15338200926486841785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124779 n) (A326057 (n + 1))

end

end A379476.P15338200926486841785

namespace A379476

/-- `A124779(n)%A326057(n+1)` -/
def P15338200926486841785.Spec : Prop :=
  ∀ n, P15338200926486841785.a n = A379476 (n + 1)

end A379476

/-! ## A379476.P15523005510041804499

`A006519(A126980(n))%A326057(n+1)`
-/

namespace A379476.P15523005510041804499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006519 (A126980 n).toNat) (A326057 (n + 1))

end

end A379476.P15523005510041804499

namespace A379476

/-- `A006519(A126980(n))%A326057(n+1)` -/
def P15523005510041804499.Spec : Prop :=
  ∀ n, P15523005510041804499.a n = A379476 (n + 1)

end A379476

/-! ## A379476.P17691398244508748952

`A340853(A326057(n+1))`
-/

namespace A379476.P17691398244508748952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340853 (A326057 (n + 1)).toNat

end

end A379476.P17691398244508748952

namespace A379476

/-- `A340853(A326057(n+1))` -/
def P17691398244508748952.Spec : Prop :=
  ∀ n, P17691398244508748952.a n = A379476 (n + 1)

end A379476

/-! ## A379476.P6041203583870812464

`A252742(A326057(n+1)+A326057(n+1)²)`
-/

namespace A379476.P6041203583870812464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A326057 (n + 1) + A326057 (n + 1) ^ 2).toNat

end

end A379476.P6041203583870812464

namespace A379476

/-- `A252742(A326057(n+1)+A326057(n+1)²)` -/
def P6041203583870812464.Spec : Prop :=
  ∀ n, P6041203583870812464.a n = A379476 (n + 1)

end A379476

/-! ## A379476.P16016503382621066589

`A172196(n)%A326057(n+1)`
-/

namespace A379476.P16016503382621066589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172196 n) (A326057 (n + 1))

end

end A379476.P16016503382621066589

namespace A379476

/-- `A172196(n)%A326057(n+1)` -/
def P16016503382621066589.Spec : Prop :=
  ∀ n, P16016503382621066589.a n = A379476 (n + 1)

end A379476

/-! ## A379476.P15407511447677329360

`A177848(n+1)%A326057(n+1)`
-/

namespace A379476.P15407511447677329360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177848 (n + 1)) (A326057 (n + 1))

end

end A379476.P15407511447677329360

namespace A379476

/-- `A177848(n+1)%A326057(n+1)` -/
def P15407511447677329360.Spec : Prop :=
  ∀ n, P15407511447677329360.a n = A379476 (n + 1)

end A379476

/-!
# A379477: Numbers k such that A003961(k)-2k and A003961(k)-sigma(k) have a common divisor > 1, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

The programs for A379477, the canonical program `A379477.P18262352817358248504` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379477 has offset 1).

The definition of A379477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379477.P18262352817358248504

`eq[1, A379476(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A379477

/-- `eq[1, A379476(n+1)]+1` -/
def P18262352817358248504.Spec : Prop :=
  ∀ n, (P18262352817358248504.a n : ℤ) = A379477 (n + 1)

theorem P18262352817358248504.correct : P18262352817358248504.Spec := by
  intro n
  simp only [A379477, Nat.add_sub_cancel]

end A379477

/-! ## A379477.P11556379534430671852

`lt[1, A326057(n+1)]+1`
-/

namespace A379477.P11556379534430671852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A379477.P11556379534430671852

namespace A379477

/-- `lt[1, A326057(n+1)]+1` -/
def P11556379534430671852.Spec : Prop :=
  ∀ n, (P11556379534430671852.a n : ℤ) = A379477 (n + 1)

end A379477

/-! ## A379477.P2140372713293732072

`∪[A372566(n+1), A379479(n+1)]`
-/

namespace A379477.P2140372713293732072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379477.P2140372713293732072

namespace A379477

/-- `∪[A372566(n+1), A379479(n+1)]` -/
def P2140372713293732072.Spec : Prop :=
  ∀ n, (P2140372713293732072.a n : ℤ) = A379477 (n + 1)

end A379477

/-! ## A379477.P8162081554647172229

`filter[A085971(n+1), A379476(#)]`
-/

namespace A379477.P8162081554647172229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379476 (f1 j).toNat = 1) n)

end

end A379477.P8162081554647172229

namespace A379477

/-- `filter[A085971(n+1), A379476(#)]` -/
def P8162081554647172229.Spec : Prop :=
  ∀ n, P8162081554647172229.a n = A379477 (n + 1)

end A379477

/-! ## A379477.P3581259705164134640

`filter[A005767(n+1), A379476(#)]`
-/

namespace A379477.P3581259705164134640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379476 (f1 j).toNat = 1) n)

end

end A379477.P3581259705164134640

namespace A379477

/-- `filter[A005767(n+1), A379476(#)]` -/
def P3581259705164134640.Spec : Prop :=
  ∀ n, P3581259705164134640.a n = A379477 (n + 1)

end A379477

/-! ## A379477.P11579830296861238069

`filter[A057716(n+1), A379476(#)]`
-/

namespace A379477.P11579830296861238069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379476 (f1 j).toNat = 1) n)

end

end A379477.P11579830296861238069

namespace A379477

/-- `filter[A057716(n+1), A379476(#)]` -/
def P11579830296861238069.Spec : Prop :=
  ∀ n, P11579830296861238069.a n = A379477 (n + 1)

end A379477

/-! ## A379477.P17015819985246292014

`filter[A138591(n+1), A379476(#)]`
-/

namespace A379477.P17015819985246292014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379476 (f1 j).toNat = 1) n)

end

end A379477.P17015819985246292014

namespace A379477

/-- `filter[A138591(n+1), A379476(#)]` -/
def P17015819985246292014.Spec : Prop :=
  ∀ n, P17015819985246292014.a n = A379477 (n + 1)

end A379477

/-! ## A379477.P15858012152039207801

`filter[A057717(n+1), A379476(#)]`
-/

namespace A379477.P15858012152039207801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379476 (f1 j).toNat = 1) n)

end

end A379477.P15858012152039207801

namespace A379477

/-- `filter[A057717(n+1), A379476(#)]` -/
def P15858012152039207801.Spec : Prop :=
  ∀ n, P15858012152039207801.a n = A379477 (n + 1)

end A379477

/-! ## A379477.P14177042834650022415

`filter[n+1, A379476(#)]`
-/

namespace A379477.P14177042834650022415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379476 (f1 j) = 1) n)

end

end A379477.P14177042834650022415

namespace A379477

/-- `filter[n+1, A379476(#)]` -/
def P14177042834650022415.Spec : Prop :=
  ∀ n, (P14177042834650022415.a n : ℤ) = A379477 (n + 1)

end A379477

/-! ## A379477.P189967345696550749

`eq[1, A379476(A028310(n))]`
-/

namespace A379477.P189967345696550749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379476 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A379477.P189967345696550749

namespace A379477

/-- `eq[1, A379476(A028310(n))]` -/
def P189967345696550749.Spec : Prop :=
  ∀ n, (P189967345696550749.a n : ℤ) = A379477 (n + 1)

end A379477

/-! ## A379477.P11439790980825090885

`A020725(eq[1, A379476(n+1)])`
-/

namespace A379477.P11439790980825090885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A379477.P11439790980825090885

namespace A379477

/-- `A020725(eq[1, A379476(n+1)])` -/
def P11439790980825090885.Spec : Prop :=
  ∀ n, P11439790980825090885.a n = A379477 (n + 1)

end A379477

/-!
# A379478: a(n) = 1 if the greatest common divisor of n, sigma(n) and A003961(n) is 1 and gcd(A003961(n)-2n, A003961(n)-sigma(n)) > 1, otherwise 0.

The programs for A379478, the canonical program `A379478.P7624876134946239236` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379478 has offset 1).

The definition of A379478 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379475, A379476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379478.P7624876134946239236

`A379476(n+1)-A379475(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A379478

/-- `A379476(n+1)-A379475(n+1)` -/
def P7624876134946239236.Spec : Prop :=
  ∀ n, P7624876134946239236.a n = A379478 (n + 1)

theorem P7624876134946239236.correct : P7624876134946239236.Spec := by
  intro n
  simp only [A379478, Nat.add_sub_cancel]

end A379478

/-! ## A379478.P1795351102088577079

`char[A379479(n+1)-1]`
-/

namespace A379478.P1795351102088577079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379479 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379478.P1795351102088577079

namespace A379478

/-- `char[A379479(n+1)-1]` -/
def P1795351102088577079.Spec : Prop :=
  ∀ n, (P1795351102088577079.a n : ℤ) = A379478 (n + 1)

end A379478

/-! ## A379478.P9009104568864546714

`round(A379476(n+1)/A372565(n+1))`
-/

namespace A379478.P9009104568864546714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A379476 (n + 1) : ℚ) / (A372565 (n + 1) : ℚ))

end

end A379478.P9009104568864546714

namespace A379478

/-- `round(A379476(n+1)/A372565(n+1))` -/
def P9009104568864546714.Spec : Prop :=
  ∀ n, P9009104568864546714.a n = A379478 (n + 1)

end A379478

/-! ## A379478.P1611386914714126775

`A000007(C(A053589(n+1), A326057(n+1)))`
-/

namespace A379478.P1611386914714126775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose (A053589 (n + 1)).toNat (A326057 (n + 1)).toNat)

end

end A379478.P1611386914714126775

namespace A379478

/-- `A000007(C(A053589(n+1), A326057(n+1)))` -/
def P1611386914714126775.Spec : Prop :=
  ∀ n, P1611386914714126775.a n = A379478 (n + 1)

end A379478

/-! ## A379478.P11926748417588549686

`A326057(A168650(n+4))%A326057(n+1)`
-/

namespace A379478.P11926748417588549686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326057 (A168650 (n + 4)).toNat) (A326057 (n + 1))

end

end A379478.P11926748417588549686

namespace A379478

/-- `A326057(A168650(n+4))%A326057(n+1)` -/
def P11926748417588549686.Spec : Prop :=
  ∀ n, P11926748417588549686.a n = A379478 (n + 1)

end A379478

/-! ## A379478.P246787562686955040

`C(A211110(A326057(n+1)), A027443(n+1))`
-/

namespace A379478.P246787562686955040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A211110 (A326057 (n + 1)).toNat).toNat (A027443 (n + 1)).toNat

end

end A379478.P246787562686955040

namespace A379478

/-- `C(A211110(A326057(n+1)), A027443(n+1))` -/
def P246787562686955040.Spec : Prop :=
  ∀ n, (P246787562686955040.a n : ℤ) = A379478 (n + 1)

end A379478

/-!
# A379479: Numbers k such that the greatest common divisor of k, sigma(k) and A003961(k) is 1 and gcd(A003961(k)-2k, A003961(k)-sigma(k)) > 1.

The programs for A379479, the canonical program `A379479.P310701363561203726` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379479 has offset 1).

The definition of A379479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4816 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379479.P310701363561203726

`eq[1, A379478(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A379479

/-- `eq[1, A379478(n+1)]+1` -/
def P310701363561203726.Spec : Prop :=
  ∀ n, (P310701363561203726.a n : ℤ) = A379479 (n + 1)

theorem P310701363561203726.correct : P310701363561203726.Spec := by
  intro n
  simp only [A379479, Nat.add_sub_cancel]

end A379479

/-! ## A379479.P10775889330694261386

`filter[A379477(n+1), A379478(#)]`
-/

namespace A379479.P10775889330694261386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379478 (f1 j).toNat = 1) n)

end

end A379479.P10775889330694261386

namespace A379479

/-- `filter[A379477(n+1), A379478(#)]` -/
def P10775889330694261386.Spec : Prop :=
  ∀ n, P10775889330694261386.a n = A379479 (n + 1)

end A379479

/-! ## A379479.P8203687614329173085

`filter[A116451(n), A379478(#)]`
-/

namespace A379479.P8203687614329173085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379478 (f1 j).toNat = 1) n)

end

end A379479.P8203687614329173085

namespace A379479

/-- `filter[A116451(n), A379478(#)]` -/
def P8203687614329173085.Spec : Prop :=
  ∀ n, P8203687614329173085.a n = A379479 (n + 1)

end A379479

/-! ## A379479.P736256402547681379

`filter[A000414(n+1), A379478(#)]`
-/

namespace A379479.P736256402547681379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379478 (f1 j).toNat = 1) n)

end

end A379479.P736256402547681379

namespace A379479

/-- `filter[A000414(n+1), A379478(#)]` -/
def P736256402547681379.Spec : Prop :=
  ∀ n, P736256402547681379.a n = A379479 (n + 1)

end A379479

/-! ## A379479.P5559015221062743741

`filter[A005767(n+1), A379478(#)]`
-/

namespace A379479.P5559015221062743741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379478 (f1 j).toNat = 1) n)

end

end A379479.P5559015221062743741

namespace A379479

/-- `filter[A005767(n+1), A379478(#)]` -/
def P5559015221062743741.Spec : Prop :=
  ∀ n, P5559015221062743741.a n = A379479 (n + 1)

end A379479

/-!
# A379480: a(n) = 1 if n is twice a square, otherwise 0.

The programs for A379480, the canonical program `A379480.P16859997012465332885` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379480 has offset 0).

The definition of A379480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379480.P3614033190564219576

`char[2*n²]`
-/

namespace A379480.P3614033190564219576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A379480.P3614033190564219576

namespace A379480

/-- `char[2*n²]` -/
def P3614033190564219576.Spec : Prop :=
  ∀ n, (P3614033190564219576.a n : ℤ) = A379480 n

end A379480

/-! ## A379480.P9783695288908537405

`and(1, char[n*2*n])`
-/

namespace A379480.P9783695288908537405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A379480.P9783695288908537405

namespace A379480

/-- `and(1, char[n*2*n])` -/
def P9783695288908537405.Spec : Prop :=
  ∀ n, (P9783695288908537405.a n : ℤ) = A379480 n

end A379480

/-! ## A379480.P4513202011899542990

`∏{e}[2*n, log2(gcd(2, #))]`
-/

namespace A379480.P4513202011899542990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.gcd 2 (Nat.factorization (f1 n) p) : ℝ)

end

end A379480.P4513202011899542990

namespace A379480

/-- `∏{e}[2*n, log2(gcd(2, #))]` -/
def P4513202011899542990.Spec : Prop :=
  ∀ n, P4513202011899542990.a n = (A379480 n : ℝ)

end A379480

/-! ## A379480.P1590337893378067123

`ceil(sin(char[n*2*n]))`
-/

namespace A379480.P1590337893378067123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A379480.P1590337893378067123

namespace A379480

/-- `ceil(sin(char[n*2*n]))` -/
def P1590337893378067123.Spec : Prop :=
  ∀ n, P1590337893378067123.a n = A379480 n

end A379480

/-! ## A379480.P6368768817633285673

`floor(tan(char[n*2*n]))`
-/

namespace A379480.P6368768817633285673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A379480.P6368768817633285673

namespace A379480

/-- `floor(tan(char[n*2*n]))` -/
def P6368768817633285673.Spec : Prop :=
  ∀ n, P6368768817633285673.a n = A379480 n

end A379480

/-! ## A379480.P14426911530840063346

`round(sin(char[n*2*n]))`
-/

namespace A379480.P14426911530840063346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A379480.P14426911530840063346

namespace A379480

/-- `round(sin(char[n*2*n]))` -/
def P14426911530840063346.Spec : Prop :=
  ∀ n, P14426911530840063346.a n = A379480 n

end A379480

/-! ## A379480.P1628218018548843868

`floor(asin(char[n*2*n]))`
-/

namespace A379480.P1628218018548843868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A379480.P1628218018548843868

namespace A379480

/-- `floor(asin(char[n*2*n]))` -/
def P1628218018548843868.Spec : Prop :=
  ∀ n, P1628218018548843868.a n = A379480 n

end A379480

/-! ## A379480.P12929571337370559247

`ceil(atan(char[n*2*n]))`
-/

namespace A379480.P12929571337370559247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A379480.P12929571337370559247

namespace A379480

/-- `ceil(atan(char[n*2*n]))` -/
def P12929571337370559247.Spec : Prop :=
  ∀ n, P12929571337370559247.a n = A379480 n

end A379480

/-! ## A379480.P6067565568748534608

`round(atan(char[n*2*n]))`
-/

namespace A379480.P6067565568748534608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A379480.P6067565568748534608

namespace A379480

/-- `round(atan(char[n*2*n]))` -/
def P6067565568748534608.Spec : Prop :=
  ∀ n, P6067565568748534608.a n = A379480 n

end A379480

/-! ## A379480.P16748119254814012277

`floor(sinh(char[n*2*n]))`
-/

namespace A379480.P16748119254814012277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A379480.P16748119254814012277

namespace A379480

/-- `floor(sinh(char[n*2*n]))` -/
def P16748119254814012277.Spec : Prop :=
  ∀ n, P16748119254814012277.a n = A379480 n

end A379480

/-! ## A379480.P3154623453279831512

`round(sinh(char[n*2*n]))`
-/

namespace A379480.P3154623453279831512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A379480.P3154623453279831512

namespace A379480

/-- `round(sinh(char[n*2*n]))` -/
def P3154623453279831512.Spec : Prop :=
  ∀ n, P3154623453279831512.a n = A379480 n

end A379480

/-! ## A379480.P8790835834596272915

`ceil(tanh(char[n*2*n]))`
-/

namespace A379480.P8790835834596272915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A379480.P8790835834596272915

namespace A379480

/-- `ceil(tanh(char[n*2*n]))` -/
def P8790835834596272915.Spec : Prop :=
  ∀ n, P8790835834596272915.a n = A379480 n

end A379480

/-! ## A379480.P1645935230968303202

`round(tanh(char[n*2*n]))`
-/

namespace A379480.P1645935230968303202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A379480.P1645935230968303202

namespace A379480

/-- `round(tanh(char[n*2*n]))` -/
def P1645935230968303202.Spec : Prop :=
  ∀ n, P1645935230968303202.a n = A379480 n

end A379480

/-! ## A379480.P16859997012465332885

`∏{e}[2*n, (#+1)%2]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A379480

/-- `∏{e}[2*n, (#+1)%2]` -/
def P16859997012465332885.Spec : Prop :=
  ∀ n, (P16859997012465332885.a n : ℤ) = A379480 n

theorem P16859997012465332885.correct : P16859997012465332885.Spec := by
  intro n
  simp only [A379480]

end A379480

/-! ## A379480.P16086512246837917204

`∏{e}[2*n, 1-#%2]`
-/

namespace A379480.P16086512246837917204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - ((Nat.factorization (f1 n) p % 2 : ℕ) : ℤ))

end

end A379480.P16086512246837917204

namespace A379480

/-- `∏{e}[2*n, 1-#%2]` -/
def P16086512246837917204.Spec : Prop :=
  ∀ n, P16086512246837917204.a n = A379480 n

end A379480

/-! ## A379480.P3864608661697865463

`∏{e}[2*n, and(1, #+1)]`
-/

namespace A379480.P3864608661697865463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.land 1 (Nat.factorization (f1 n) p + 1)

end

end A379480.P3864608661697865463

namespace A379480

/-- `∏{e}[2*n, and(1, #+1)]` -/
def P3864608661697865463.Spec : Prop :=
  ∀ n, (P3864608661697865463.a n : ℤ) = A379480 n

theorem P3864608661697865463.correct : P3864608661697865463.Spec := by
  intro n
  simp only [A379480, Nat.add_sub_cancel, A379480.P3864608661697865463.f1, A379480.P3864608661697865463.a, A379480.P16859997012465332885.f1, A379480.P16859997012465332885.a, SequenceMachineLib.memo_apply]
  try simp

end A379480

/-! ## A379480.P10407678820424738384

`∏{e}[2*n, 1-and(1, #)]`
-/

namespace A379480.P10407678820424738384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - (Nat.land 1 (Nat.factorization (f1 n) p) : ℤ))

end

end A379480.P10407678820424738384

namespace A379480

/-- `∏{e}[2*n, 1-and(1, #)]` -/
def P10407678820424738384.Spec : Prop :=
  ∀ n, P10407678820424738384.a n = A379480 n

end A379480

/-! ## A379480.P2428811685882758578

`floor(cos(π*sqrt(n/2))²)`
-/

namespace A379480.P2428811685882758578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (Real.pi * Real.sqrt ((n : ℚ) / 2 : ℝ)) ^ 2⌋

end

end A379480.P2428811685882758578

namespace A379480

/-- `floor(cos(π*sqrt(n/2))²)` -/
def P2428811685882758578.Spec : Prop :=
  ∀ n, P2428811685882758578.a n = A379480 n

end A379480

/-! ## A379480.P6683843823350554120

`A379952(2*n)`
-/

namespace A379480.P6683843823350554120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379952 (2 * n)

end

end A379480.P6683843823350554120

namespace A379480

/-- `A379952(2*n)` -/
def P6683843823350554120.Spec : Prop :=
  ∀ n, P6683843823350554120.a n = A379480 n

end A379480

/-! ## A379480.P9850855279011479305

`A000925(n)%2`
-/

namespace A379480.P9850855279011479305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000925 n) 2

end

end A379480.P9850855279011479305

namespace A379480

/-- `A000925(n)%2` -/
def P9850855279011479305.Spec : Prop :=
  ∀ n, P9850855279011479305.a n = A379480 n

end A379480

/-!
# A379481: Square of prime-shifted n, or equally, n squared, then prime-shifted one step towards larger primes.

The programs for A379481, the canonical program `A379481.P14926497159072948803` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379481 has offset 1).

The definition of A379481 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379481.P14926497159072948803

`A003961(n+1)²`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A379481

/-- `A003961(n+1)²` -/
def P14926497159072948803.Spec : Prop :=
  ∀ n, P14926497159072948803.a n = A379481 (n + 1)

theorem P14926497159072948803.correct : P14926497159072948803.Spec := by
  intro n
  simp only [A379481, Nat.add_sub_cancel]

end A379481

/-! ## A379481.P8477541258625040191

`1/2*(A378231(n+1)+A379482(n+1))`
-/

namespace A379481.P8477541258625040191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A378231 (n + 1) + A379482 (n + 1) : ℚ)

end

end A379481.P8477541258625040191

namespace A379481

/-- `1/2*(A378231(n+1)+A379482(n+1))` -/
def P8477541258625040191.Spec : Prop :=
  ∀ n, P8477541258625040191.a n = (A379481 (n + 1) : ℚ)

end A379481

/-! ## A379481.P9717699503514180419

`A016754(A048673(n+1)-1)`
-/

namespace A379481.P9717699503514180419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A048673 (n + 1) - 1).toNat

end

end A379481.P9717699503514180419

namespace A379481

/-- `A016754(A048673(n+1)-1)` -/
def P9717699503514180419.Spec : Prop :=
  ∀ n, P9717699503514180419.a n = A379481 (n + 1)

end A379481

/-! ## A379481.P14263261466047342897

`(A253885(n)+1)²`
-/

namespace A379481.P14263261466047342897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A253885 n + 1) ^ 2

end

end A379481.P14263261466047342897

namespace A379481

/-- `(A253885(n)+1)²` -/
def P14263261466047342897.Spec : Prop :=
  ∀ n, P14263261466047342897.a n = A379481 (n + 1)

end A379481

/-! ## A379481.P17278244362139963274

`(1-A243501(n+1))²`
-/

namespace A379481.P17278244362139963274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A243501 (n + 1)) ^ 2

end

end A379481.P17278244362139963274

namespace A379481

/-- `(1-A243501(n+1))²` -/
def P17278244362139963274.Spec : Prop :=
  ∀ n, P17278244362139963274.a n = A379481 (n + 1)

end A379481

/-! ## A379481.P3770984107135677071

`2*A337336(n+1)-1`
-/

namespace A379481.P3770984107135677071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337336 (n + 1) - 1

end

end A379481.P3770984107135677071

namespace A379481

/-- `2*A337336(n+1)-1` -/
def P3770984107135677071.Spec : Prop :=
  ∀ n, P3770984107135677071.a n = A379481 (n + 1)

end A379481

/-! ## A379481.P14057187000932027827

`(A336853(n+1)+n+1)²`
-/

namespace A379481.P14057187000932027827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336853 (n + 1) + (n + 1 : ℤ)) ^ 2

end

end A379481.P14057187000932027827

namespace A379481

/-- `(A336853(n+1)+n+1)²` -/
def P14057187000932027827.Spec : Prop :=
  ∀ n, P14057187000932027827.a n = A379481 (n + 1)

end A379481

/-! ## A379481.P7410281325311197413

`(A191002(n+1)/(n+1))²`
-/

namespace A379481.P7410281325311197413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A191002 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A379481.P7410281325311197413

namespace A379481

/-- `(A191002(n+1)/(n+1))²` -/
def P7410281325311197413.Spec : Prop :=
  ∀ n, P7410281325311197413.a n = (A379481 (n + 1) : ℚ)

end A379481

/-! ## A379481.P265442625772457405

`∑{d}[n+1, A346234(#)*A361467((n+1)/#)]`
-/

namespace A379481.P265442625772457405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346234 d * A361467 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379481.P265442625772457405

namespace A379481

/-- `∑{d}[n+1, A346234(#)*A361467((n+1)/#)]` -/
def P265442625772457405.Spec : Prop :=
  ∀ n, P265442625772457405.a n = A379481 (n + 1)

end A379481

/-! ## A379481.P9984765073095484237

`A389909(2*(n+1))²`
-/

namespace A379481.P9984765073095484237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389909 (2 * (n + 1)) ^ 2

end

end A379481.P9984765073095484237

namespace A379481

/-- `A389909(2*(n+1))²` -/
def P9984765073095484237.Spec : Prop :=
  ∀ n, P9984765073095484237.a n = A379481 (n + 1)

end A379481

/-! ## A379481.P6037344430192904136

`A243500(A243502(n+1))²`
-/

namespace A379481.P6037344430192904136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243500 (A243502 (n + 1)).toNat ^ 2

end

end A379481.P6037344430192904136

namespace A379481

/-- `A243500(A243502(n+1))²` -/
def P6037344430192904136.Spec : Prop :=
  ∀ n, P6037344430192904136.a n = A379481 (n + 1)

end A379481

/-! ## A379481.P8230722588628590802

`A000265(A045965(n+1))²`
-/

namespace A379481.P8230722588628590802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A045965 (n + 1)).toNat ^ 2

end

end A379481.P8230722588628590802

namespace A379481

/-- `A000265(A045965(n+1))²` -/
def P8230722588628590802.Spec : Prop :=
  ∀ n, P8230722588628590802.a n = A379481 (n + 1)

end A379481

/-! ## A379481.P11985509239652612026

`A280498(A008585(2*n+1))²`
-/

namespace A379481.P11985509239652612026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (A008585 (2 * n + 1)).toNat ^ 2

end

end A379481.P11985509239652612026

namespace A379481

/-- `A280498(A008585(2*n+1))²` -/
def P11985509239652612026.Spec : Prop :=
  ∀ n, P11985509239652612026.a n = A379481 (n + 1)

end A379481

/-! ## A379481.P159408986017187150

`A297166(2*(n+1))²`
-/

namespace A379481.P159408986017187150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297166 (2 * (n + 1)) ^ 2

end

end A379481.P159408986017187150

namespace A379481

/-- `A297166(2*(n+1))²` -/
def P159408986017187150.Spec : Prop :=
  ∀ n, P159408986017187150.a n = A379481 (n + 1)

end A379481

/-! ## A379481.P2070029310717879658

`A297166(2*n+2)*A297166(2*n+2)`
-/

namespace A379481.P2070029310717879658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297166 (2 * n + 2) * A297166 (2 * n + 2)

end

end A379481.P2070029310717879658

namespace A379481

/-- `A297166(2*n+2)*A297166(2*n+2)` -/
def P2070029310717879658.Spec : Prop :=
  ∀ n, P2070029310717879658.a n = A379481 (n + 1)

end A379481

/-! ## A379481.P16127852536482359453

`A016754(A108228(n+1))`
-/

namespace A379481.P16127852536482359453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A108228 (n + 1)).toNat

end

end A379481.P16127852536482359453

namespace A379481

/-- `A016754(A108228(n+1))` -/
def P16127852536482359453.Spec : Prop :=
  ∀ n, P16127852536482359453.a n = A379481 (n + 1)

end A379481

/-! ## A379481.P14423220040254402781

`A250469(A266646(n+1))²`
-/

namespace A379481.P14423220040254402781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (A266646 (n + 1)).toNat ^ 2

end

end A379481.P14423220040254402781

namespace A379481

/-- `A250469(A266646(n+1))²` -/
def P14423220040254402781.Spec : Prop :=
  ∀ n, P14423220040254402781.a n = A379481 (n + 1)

end A379481

/-! ## A379481.P8298611968884487396

`(1-A266646(2*(n+1)))²`
-/

namespace A379481.P8298611968884487396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A266646 (2 * (n + 1))) ^ 2

end

end A379481.P8298611968884487396

namespace A379481

/-- `(1-A266646(2*(n+1)))²` -/
def P8298611968884487396.Spec : Prop :=
  ∀ n, P8298611968884487396.a n = A379481 (n + 1)

end A379481

/-! ## A379481.P6531313360006714959

`A080335(A253885(n))`
-/

namespace A379481.P6531313360006714959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 (A253885 n).toNat

end

end A379481.P6531313360006714959

namespace A379481

/-- `A080335(A253885(n))` -/
def P6531313360006714959.Spec : Prop :=
  ∀ n, P6531313360006714959.a n = A379481 (n + 1)

end A379481

/-! ## A379481.P8690264291805783862

`A152020(A045965(n+1))`
-/

namespace A379481.P8690264291805783862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152020 (A045965 (n + 1)).toNat

end

end A379481.P8690264291805783862

namespace A379481

/-- `A152020(A045965(n+1))` -/
def P8690264291805783862.Spec : Prop :=
  ∀ n, P8690264291805783862.a n = A379481 (n + 1)

end A379481

/-!
# A379482: a(n) = sigma(A003961(n^2)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

The programs for A379482, the canonical program `A379482.P4959075219289162153` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379482 has offset 1).

The definition of A379482 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379481, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379482.P18085503299487772929

`2*A379481(n+1)-A378231(n+1)`
-/

namespace A379482.P18085503299487772929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A379481 (n + 1) - A378231 (n + 1)

end

end A379482.P18085503299487772929

namespace A379482

/-- `2*A379481(n+1)-A378231(n+1)` -/
def P18085503299487772929.Spec : Prop :=
  ∀ n, P18085503299487772929.a n = A379482 (n + 1)

end A379482

/-! ## A379482.P13957531491932359090

`A379223(A048673(n+1))`
-/

namespace A379482.P13957531491932359090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379223 (A048673 (n + 1)).toNat

end

end A379482.P13957531491932359090

namespace A379482

/-- `A379223(A048673(n+1))` -/
def P13957531491932359090.Spec : Prop :=
  ∀ n, P13957531491932359090.a n = A379482 (n + 1)

end A379482

/-! ## A379482.P15808529635371321051

`A003973(A000290(n+1))`
-/

namespace A379482.P15808529635371321051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (A000290 (n + 1)).toNat

end

end A379482.P15808529635371321051

namespace A379482

/-- `A003973(A000290(n+1))` -/
def P15808529635371321051.Spec : Prop :=
  ∀ n, P15808529635371321051.a n = A379482 (n + 1)

end A379482

/-! ## A379482.P4959075219289162153

`A000203(A379481(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A379482

/-- `A000203(A379481(n+1))` -/
def P4959075219289162153.Spec : Prop :=
  ∀ n, P4959075219289162153.a n = A379482 (n + 1)

theorem P4959075219289162153.correct : P4959075219289162153.Spec := by
  intro n
  simp only [A379482, Nat.add_sub_cancel]

end A379482

/-! ## A379482.P16565472628730003586

`A065764(A003961(n+1))`
-/

namespace A379482.P16565472628730003586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (A003961 (n + 1)).toNat

end

end A379482.P16565472628730003586

namespace A379482

/-- `A065764(A003961(n+1))` -/
def P16565472628730003586.Spec : Prop :=
  ∀ n, P16565472628730003586.a n = A379482 (n + 1)

end A379482

/-! ## A379482.P10516087712861934049

`A065764(A286385(n+1)+A000203(n+1))`
-/

namespace A379482.P10516087712861934049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (A286385 (n + 1) + A000203 (n + 1)).toNat

end

end A379482.P10516087712861934049

namespace A379482

/-- `A065764(A286385(n+1)+A000203(n+1))` -/
def P10516087712861934049.Spec : Prop :=
  ∀ n, P10516087712861934049.a n = A379482 (n + 1)

end A379482

/-! ## A379482.P10428317579002501140

`A003973((n+1)²)`
-/

namespace A379482.P10428317579002501140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 ((n + 1) ^ 2)

end

end A379482.P10428317579002501140

namespace A379482

/-- `A003973((n+1)²)` -/
def P10428317579002501140.Spec : Prop :=
  ∀ n, P10428317579002501140.a n = A379482 (n + 1)

end A379482

/-! ## A379482.P2682332955358688388

`A389076((n+1)²)+1`
-/

namespace A379482.P2682332955358688388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389076 ((n + 1) ^ 2) + 1

end

end A379482.P2682332955358688388

namespace A379482

/-- `A389076((n+1)²)+1` -/
def P2682332955358688388.Spec : Prop :=
  ∀ n, P2682332955358688388.a n = A379482 (n + 1)

end A379482

/-! ## A379482.P933832396684090059

`A341528((n+1)²)/(n+1)²`
-/

namespace A379482.P933832396684090059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341528 ((n + 1) ^ 2) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A379482.P933832396684090059

namespace A379482

/-- `A341528((n+1)²)/(n+1)²` -/
def P933832396684090059.Spec : Prop :=
  ∀ n, P933832396684090059.a n = (A379482 (n + 1) : ℚ)

end A379482

/-!
# A379483: a(n) is the number of trailing 1-bits in the binary representation of sigma(A003961(n^2)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

The programs for A379483, the canonical program `A379483.P10370958527501415734` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379483 has offset 1).

The definition of A379483 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379482, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379483.P5143400977206172899

`A379222(A048673(n+1))`
-/

namespace A379483.P5143400977206172899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379222 (A048673 (n + 1)).toNat

end

end A379483.P5143400977206172899

namespace A379483

/-- `A379222(A048673(n+1))` -/
def P5143400977206172899.Spec : Prop :=
  ∀ n, P5143400977206172899.a n = A379483 (n + 1)

end A379483

/-! ## A379483.P10370958527501415734

`A007814(1+A379482(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A379483

/-- `A007814(1+A379482(n+1))` -/
def P10370958527501415734.Spec : Prop :=
  ∀ n, P10370958527501415734.a n = A379483 (n + 1)

theorem P10370958527501415734.correct : P10370958527501415734.Spec := by
  intro n
  simp only [A379483, Nat.add_sub_cancel]

end A379483

/-! ## A379483.P12980096649234142121

`val(A337338(n+1), 2)`
-/

namespace A379483.P12980096649234142121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A337338 (n + 1)).toNat 2

end

end A379483.P12980096649234142121

namespace A379483

/-- `val(A337338(n+1), 2)` -/
def P12980096649234142121.Spec : Prop :=
  ∀ n, (P12980096649234142121.a n : ℤ) = A379483 (n + 1)

end A379483

/-! ## A379483.P12049890627987512534

`A378999(A003961(n+1))`
-/

namespace A379483.P12049890627987512534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378999 (A003961 (n + 1)).toNat

end

end A379483.P12049890627987512534

namespace A379483

/-- `A378999(A003961(n+1))` -/
def P12049890627987512534.Spec : Prop :=
  ∀ n, P12049890627987512534.a n = A379483 (n + 1)

end A379483

/-! ## A379483.P10910504776233903740

`A033273(gcd(A164587(n+4), A337338(n+1)))`
-/

namespace A379483.P10910504776233903740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (Int.gcd (A164587 (n + 4)) (A337338 (n + 1)))

end

end A379483.P10910504776233903740

namespace A379483

/-- `A033273(gcd(A164587(n+4), A337338(n+1)))` -/
def P10910504776233903740.Spec : Prop :=
  ∀ n, P10910504776233903740.a n = A379483 (n + 1)

end A379483

/-!
# A379484: a(n) is the highest power of 3 dividing sigma(A003961(n^2)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

The programs for A379484, the canonical program `A379484.P7184658253164234511` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379484 has offset 1).

The definition of A379484 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379481, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379484.P7184658253164234511

`A379473(A379481(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A379484

/-- `A379473(A379481(n+1))` -/
def P7184658253164234511.Spec : Prop :=
  ∀ n, P7184658253164234511.a n = A379484 (n + 1)

theorem P7184658253164234511.correct : P7184658253164234511.Spec := by
  intro n
  simp only [A379484, Nat.add_sub_cancel]

end A379484

/-! ## A379484.P8471779064435167738

`gcd(9, A065764(A003961(n+1)))`
-/

namespace A379484.P8471779064435167738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 9 (A065764 (A003961 (n + 1)).toNat)

end

end A379484.P8471779064435167738

namespace A379484

/-- `gcd(9, A065764(A003961(n+1)))` -/
def P8471779064435167738.Spec : Prop :=
  ∀ n, (P8471779064435167738.a n : ℤ) = A379484 (n + 1)

end A379484

/-! ## A379484.P914629455114472562

`gcd(A080338(n+1), A379482(n+1))`
-/

namespace A379484.P914629455114472562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080338 (n + 1)) (A379482 (n + 1))

end

end A379484.P914629455114472562

namespace A379484

/-- `gcd(A080338(n+1), A379482(n+1))` -/
def P914629455114472562.Spec : Prop :=
  ∀ n, (P914629455114472562.a n : ℤ) = A379484 (n + 1)

end A379484

/-! ## A379484.P18154487753163336460

`gcd(A175806(n), A379482(n+1))`
-/

namespace A379484.P18154487753163336460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175806 n) (A379482 (n + 1))

end

end A379484.P18154487753163336460

namespace A379484

/-- `gcd(A175806(n), A379482(n+1))` -/
def P18154487753163336460.Spec : Prop :=
  ∀ n, (P18154487753163336460.a n : ℤ) = A379484 (n + 1)

end A379484

/-! ## A379484.P5711867970933422594

`gcd(A003973((n+1)²), A165830(n+1))`
-/

namespace A379484.P5711867970933422594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003973 ((n + 1) ^ 2)) (A165830 (n + 1))

end

end A379484.P5711867970933422594

namespace A379484

/-- `gcd(A003973((n+1)²), A165830(n+1))` -/
def P5711867970933422594.Spec : Prop :=
  ∀ n, (P5711867970933422594.a n : ℤ) = A379484 (n + 1)

end A379484

/-! ## A379484.P1346361986508301231

`A336856(A055491(n+1))/A055491(A055491(n+1))`
-/

namespace A379484.P1346361986508301231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336856 (A055491 (n + 1)).toNat : ℚ) / (A055491 (A055491 (n + 1)).toNat : ℚ)

end

end A379484.P1346361986508301231

namespace A379484

/-- `A336856(A055491(n+1))/A055491(A055491(n+1))` -/
def P1346361986508301231.Spec : Prop :=
  ∀ n, P1346361986508301231.a n = (A379484 (n + 1) : ℚ)

end A379484

/-! ## A379484.P329544346424276953

`A336856(A055491(3*(n+1)))`
-/

namespace A379484.P329544346424276953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336856 (A055491 (3 * (n + 1))).toNat

end

end A379484.P329544346424276953

namespace A379484

/-- `A336856(A055491(3*(n+1)))` -/
def P329544346424276953.Spec : Prop :=
  ∀ n, P329544346424276953.a n = A379484 (n + 1)

end A379484

/-!
# A379485: a(n) = 1 if gcd(n,A003961(n))*gcd(sigma(n),A276086(n)) is equal to gcd(n,A276086(n))*gcd(sigma(n),A003961(n)), otherwise 0, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and A276086 is the primorial base exp-function.

The programs for A379485, there is no canonical definition to state claims against.
-/

/-! ## A379485.P18099535809880894671

`char[A379486(n+1)-1]`
-/

namespace A379485.P18099535809880894671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379486 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379485.P18099535809880894671

/-! ## A379485.P16550100479469228587

`C(2, n²)^A379489(n+1)²`
-/

namespace A379485.P16550100479469228587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n ^ 2) : ℚ) ^ (A379489 (n + 1) ^ 2 : ℤ)

end

end A379485.P16550100479469228587

/-! ## A379485.P18128773526858046018

`A001222(gcd(A005384(n+1), A379489(n+1)))`
-/

namespace A379485.P18128773526858046018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A005384 (n + 1)) (A379489 (n + 1)))

end

end A379485.P18128773526858046018

/-! ## A379485.P11787864390733350714

`∏{d}[A379489(n+1), A106002(#)]`
-/

namespace A379485.P11787864390733350714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A106002 d

end

end A379485.P11787864390733350714

/-! ## A379485.P10033336451478734465

`∏{d}[A379489(n+1), A185114(#)]`
-/

namespace A379485.P10033336451478734465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A185114 d

end

end A379485.P10033336451478734465

/-! ## A379485.P16644475268127351288

`A000122(lcm(40, A379489(n+1)))`
-/

namespace A379485.P16644475268127351288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Int.lcm 40 (A379489 (n + 1)))

end

end A379485.P16644475268127351288

/-! ## A379485.P5559743083038059073

`A379480(A379489(n+1)²)`
-/

namespace A379485.P5559743083038059073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 (A379489 (n + 1) ^ 2).toNat

end

end A379485.P5559743083038059073

/-! ## A379485.P4215999561468024105

`A379502(A379503(n+1)+A379489(n+1))`
-/

namespace A379485.P4215999561468024105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379502 (A379503 (n + 1) + A379489 (n + 1)).toNat

end

end A379485.P4215999561468024105

/-!
# A379486: Numbers k for which gcd(k,A003961(k))*gcd(sigma(k),A276086(k)) is equal to gcd(k,A276086(k))*gcd(sigma(k),A003961(k)), where A003961(n) is fully multiplicative with a(prime(i)) = prime(i+1), and A276086 is the primorial base exp-function.

The programs for A379486, there is no canonical definition to state claims against.
-/

/-! ## A379486.P15785401160869906491

`record[(n+1)*A379485(n+1)]`
-/

namespace A379486.P15785401160869906491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A379485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379486.P15785401160869906491

/-! ## A379486.P17048995529797492971

`eq[1, A379485(n+1)]+1`
-/

namespace A379486.P17048995529797492971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379485 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379486.P17048995529797492971

/-! ## A379486.P13750403304260756415

`eq[0, A379489(n+1)]+1`
-/

namespace A379486.P13750403304260756415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379489 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379486.P13750403304260756415

/-! ## A379486.P10209045035085931699

`eq[A379487(n+1), A379488(n+1)]+1`
-/

namespace A379486.P10209045035085931699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379488 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A379486.P10209045035085931699

/-! ## A379486.P894600186226085041

`filter[A004773(n+1), A379485(#)]`
-/

namespace A379486.P894600186226085041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379485 (f1 j).toNat = 1) n)

end

end A379486.P894600186226085041

/-! ## A379486.P16389192163351923864

`filter[A071959(n+1), A379485(#)]`
-/

namespace A379486.P16389192163351923864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379485 (f1 j).toNat = 1) n)

end

end A379486.P16389192163351923864

/-! ## A379486.P13122395231993698018

`filter[A153343(n+2), A379485(#)]`
-/

namespace A379486.P13122395231993698018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153343 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379485 (f1 j).toNat = 1) n)

end

end A379486.P13122395231993698018

/-! ## A379486.P12778996468722701959

`filter[A065090(n+1), A379485(#)]`
-/

namespace A379486.P12778996468722701959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379485 (f1 j).toNat = 1) n)

end

end A379486.P12778996468722701959

/-! ## A379486.P3411652171476449127

`filter[A171581(n+1), A379485(#)]`
-/

namespace A379486.P3411652171476449127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379485 (f1 j).toNat = 1) n)

end

end A379486.P3411652171476449127

/-! ## A379486.P7642015820810837489

`filter[A338924(n+1), A379485(#)]`
-/

namespace A379486.P7642015820810837489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379485 (f1 j).toNat = 1) n)

end

end A379486.P7642015820810837489

/-! ## A379486.P8514009017794183168

`filter[A073900(n+1), A379485(#)]`
-/

namespace A379486.P8514009017794183168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379485 (f1 j).toNat = 1) n)

end

end A379486.P8514009017794183168

/-! ## A379486.P3316526875705605487

`filter[A089088(n), A379485(#)]`
-/

namespace A379486.P3316526875705605487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379485 (f1 j).toNat = 1) n)

end

end A379486.P3316526875705605487

/-! ## A379486.P2847504049166040101

`filter[A053663(n+1), A379485(#)]`
-/

namespace A379486.P2847504049166040101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379485 (f1 j).toNat = 1) n)

end

end A379486.P2847504049166040101

/-! ## A379486.P17140514062714549552

`filter[A116966(n), A379485(#)]`
-/

namespace A379486.P17140514062714549552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379485 (f1 j).toNat = 1) n)

end

end A379486.P17140514062714549552

/-! ## A379486.P10755357990929650988

`filter[A271833(n), A379485(#)]`
-/

namespace A379486.P10755357990929650988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379485 (f1 j).toNat = 1) n)

end

end A379486.P10755357990929650988

/-! ## A379486.P2691335370648793511

`lt[A000038(2*(n+2)), A379485(n+1)]+1`
-/

namespace A379486.P2691335370648793511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379485 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A379486.P2691335370648793511

/-! ## A379486.P16903000417711526551

`filter[A228359(n+1), A379485(#)]`
-/

namespace A379486.P16903000417711526551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379485 (f1 j).toNat = 1) n)

end

end A379486.P16903000417711526551

/-!
# A379487: a(n) = gcd(n,A003961(n)) * gcd(sigma(n),A276086(n)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and A276086 is the primorial base exp-function.

The programs for A379487, there is no canonical definition to state claims against.
-/

/-! ## A379487.P12657790085953164597

`A322361(n+1)*A324644(n+1)`
-/

namespace A379487.P12657790085953164597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322361 (n + 1) * A324644 (n + 1)

end

end A379487.P12657790085953164597

/-! ## A379487.P9996956064294549166

`A379489(n+1)+A379488(n+1)`
-/

namespace A379487.P9996956064294549166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379489 (n + 1) + A379488 (n + 1)

end

end A379487.P9996956064294549166

/-! ## A379487.P15241660377649931431

`A003557(A364909(n+2))*A324644(n+1)`
-/

namespace A379487.P15241660377649931431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A364909 (n + 2)).toNat * A324644 (n + 1)

end

end A379487.P15241660377649931431

/-! ## A379487.P14167136716631360903

`lcm(A322361(A335874(n+3)-n), A324644(n+1))`
-/

namespace A379487.P14167136716631360903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A322361 (A335874 (n + 3) - (n : ℤ)).toNat) (A324644 (n + 1))

end

end A379487.P14167136716631360903

/-!
# A379488: a(n) = gcd(n,A276086(n)) * gcd(sigma(n),A003961(n)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and A276086 is the primorial base exp-function.

The programs for A379488, there is no canonical definition to state claims against.
-/

/-! ## A379488.P1102038422756023436

`A324198(n+1)*A342671(n+1)`
-/

namespace A379488.P1102038422756023436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (n + 1) * A342671 (n + 1)

end

end A379488.P1102038422756023436

/-! ## A379488.P11919264956806714361

`A379487(n+1)-A379489(n+1)`
-/

namespace A379488.P11919264956806714361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379487 (n + 1) - A379489 (n + 1)

end

end A379488.P11919264956806714361

/-!
# A379489: a(n) = gcd(n,A003961(n))*gcd(sigma(n),A276086(n)) - gcd(n,A276086(n))*gcd(sigma(n),A003961(n)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and A276086 is the primorial base exp-function.

The programs for A379489, there is no canonical definition to state claims against.
-/

/-! ## A379489.P5216588665912335294

`A379487(n+1)-A379488(n+1)`
-/

namespace A379489.P5216588665912335294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379487 (n + 1) - A379488 (n + 1)

end

end A379489.P5216588665912335294

/-!
# A379491: Multiperfect numbers k for which gcd(k,A003961(k))*gcd(sigma(k),A276086(k)) is equal to gcd(k,A276086(k))*gcd(sigma(k),A003961(k)), where A003961(n) is fully multiplicative with a(prime(i)) = prime(i+1), and A276086 is the primorial base exp-function.

The programs for A379491, there is no canonical definition to state claims against.
-/

/-! ## A379491.P12854509363060848331

`A336702(n+1)/A109152(A185254(n))`
-/

namespace A379491.P12854509363060848331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336702 (n + 1) : ℚ) / (A109152 (A185254 n).toNat : ℚ)

end

end A379491.P12854509363060848331

/-!
# A379493: a(n) = A276086(A001065(n)), where A276086 is the primorial base exp-function, and A001065 is the sum of proper divisors of n.

The programs for A379493, there is no canonical definition to state claims against.
-/

/-! ## A379493.P1723010228938902965

`A276086(A001065(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379493.P1723010228938902965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A001065 (n + 1)).toNat

end

end A379493.P1723010228938902965

/-! ## A379493.P11570182925318815059

`A388282(n+1)/A276086(n+1)`
-/

namespace A379493.P11570182925318815059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388282 (n + 1) : ℚ) / (A276086 (n + 1) : ℚ)

end

end A379493.P11570182925318815059

/-! ## A379493.P1146564244446995064

`A276086(n+1)+A276086(n+1)-A379494(n+1)`
-/

namespace A379493.P1146564244446995064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 1) + (A276086 (n + 1) - A379494 (n + 1))

end

end A379493.P1146564244446995064

/-! ## A379493.P4238882822344578574

`(A388281(n+1)+A388031(n+1))/A276086(n+1)`
-/

namespace A379493.P4238882822344578574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388281 (n + 1) + A388031 (n + 1) : ℚ) / (A276086 (n + 1) : ℚ)

end

end A379493.P4238882822344578574

/-! ## A379493.P5695681966928642046

`A276086(n+2)-A379498(n+1)`
-/

namespace A379493.P5695681966928642046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 2) - A379498 (n + 1)

end

end A379493.P5695681966928642046

/-! ## A379493.P12603316514038591293

`A276086(A000203(n+1)-(n+1))`
-/

namespace A379493.P12603316514038591293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A000203 (n + 1) - (n + 1 : ℤ)).toNat

end

end A379493.P12603316514038591293

/-! ## A379493.P14076600273944630229

`A276086(n+1-A033879(n+1))`
-/

namespace A379493.P14076600273944630229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 ((n + 1 : ℤ) - A033879 (n + 1)).toNat

end

end A379493.P14076600273944630229

/-!
# A379494: a(n) = 2*A276086(n) - A276086(A001065(n)), where A276086 is the primorial base exp-function, and A001065 is the sum of proper divisors of n.

The programs for A379494, there is no canonical definition to state claims against.
-/

/-! ## A379494.P15004926702664272723

`2*A276086(n+1)-A379493(n+1)`
-/

namespace A379494.P15004926702664272723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276086 (n + 1) - A379493 (n + 1)

end

end A379494.P15004926702664272723

/-! ## A379494.P5155282194616770280

`2*A276086(n+1)-A276086(A001065(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379494.P5155282194616770280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276086 (n + 1) - A276086 (A001065 (n + 1)).toNat

end

end A379494.P5155282194616770280

/-!
# A379495: a(n) = A019565(A001065(n)), where A019565 is the base-2 exp-function, and A001065 is the sum of proper divisors of n.

The programs for A379495, there is no canonical definition to state claims against.
-/

/-! ## A379495.P801572349445086045

`A019565(A001065(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379495.P801572349445086045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A001065 (n + 1)).toNat

end

end A379495.P801572349445086045

/-! ## A379495.P18128249738559499832

`A019565(n+2)-A379496(n+1)`
-/

namespace A379495.P18128249738559499832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (n + 2) - A379496 (n + 1)

end

end A379495.P18128249738559499832

/-! ## A379495.P6171713619625681495

`A019565(∑{d}[n+1, #]-(n+1))`
-/

namespace A379495.P6171713619625681495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (∑ d ∈ Nat.divisors (f1 n), d - (n + 1))

end

end A379495.P6171713619625681495

/-! ## A379495.P6428857119137467618

`A019565(A000203(n+1)-(n+1))`
-/

namespace A379495.P6428857119137467618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A000203 (n + 1) - (n + 1 : ℤ)).toNat

end

end A379495.P6428857119137467618

/-! ## A379495.P1798889078500504812

`A019565(n+1-A033879(n+1))`
-/

namespace A379495.P1798889078500504812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 ((n + 1 : ℤ) - A033879 (n + 1)).toNat

end

end A379495.P1798889078500504812

/-!
# A379496: a(n) = A019565(1+n) - A019565(A001065(n)), where A019565 is the base-2 exp-function, and A001065 is the sum of proper divisors of n.

The programs for A379496, there is no canonical definition to state claims against.
-/

/-! ## A379496.P18152339080155139600

`A019565(1+n+1)-A019565(A001065(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379496.P18152339080155139600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (1 + (n + 1)) - A019565 (A001065 (n + 1)).toNat

end

end A379496.P18152339080155139600

/-! ## A379496.P9187613552765029893

`A019565(n+2)-A379495(n+1)`
-/

namespace A379496.P9187613552765029893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (n + 2) - A379495 (n + 1)

end

end A379496.P9187613552765029893

/-! ## A379496.P5330902921928542998

`A019565(n+2)-A019565(∑{d}[n+1, #]-(n+1))`
-/

namespace A379496.P5330902921928542998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (n + 2) - A019565 (∑ d ∈ Nat.divisors (f1 n), d - (n + 1))

end

end A379496.P5330902921928542998

/-!
# A379498: a(n) = A276086(1+n) - A276086(A001065(n)), where A276086 is the primorial base exp-function, and A001065 is the sum of proper divisors of n.

The programs for A379498, there is no canonical definition to state claims against.
-/

/-! ## A379498.P14632226456217932407

`A276086(1+n+1)-A276086(A001065(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379498.P14632226456217932407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (1 + (n + 1)) - A276086 (A001065 (n + 1)).toNat

end

end A379498.P14632226456217932407

/-! ## A379498.P18213595932971046292

`A388282(n+2)/A379493(n+2)-A379493(n+1)`
-/

namespace A379498.P18213595932971046292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388282 (n + 2) : ℚ) / (A379493 (n + 2) : ℚ) - (A379493 (n + 1) : ℚ)

end

end A379498.P18213595932971046292

/-! ## A379498.P717676751190728208

`A276086(n+2)-A379493(n+1)`
-/

namespace A379498.P717676751190728208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 2) - A379493 (n + 1)

end

end A379498.P717676751190728208

/-! ## A379498.P7746800123894626118

`A276086(n+2)-A276086(∑{d}[n+1, #]-(n+1))`
-/

namespace A379498.P7746800123894626118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 2) - A276086 (∑ d ∈ Nat.divisors (f1 n), d - (n + 1))

end

end A379498.P7746800123894626118

/-!
# A379499: Square array A(n, k) = A064987(A246278(n, k)), read by falling antidiagonals; A064987(n) = n*sigma(n), applied to the prime shift array.

The programs for A379499, there is no canonical definition to state claims against.
-/

/-! ## A379499.P16843538750948510981

`A355925(n+1)²*A379500(n+1)`
-/

namespace A379499.P16843538750948510981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355925 (n + 1) ^ 2 * A379500 (n + 1)

end

end A379499.P16843538750948510981

/-! ## A379499.P9141784481901386911

`(A388285(n+1)-A378979(n+1))*A355927(n+1)`
-/

namespace A379499.P9141784481901386911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A388285 (n + 1) - A378979 (n + 1)) * A355927 (n + 1)

end

end A379499.P9141784481901386911

/-! ## A379499.P27201845911249856

`A341606(n+1)*A355925(n+1)*A355927(n+1)`
-/

namespace A379499.P27201845911249856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341606 (n + 1) * A355925 (n + 1) * A355927 (n + 1)

end

end A379499.P27201845911249856

/-! ## A379499.P184359128089374432

`A341606(n+1)/A341605(n+1)*A355927(n+1)*A355927(n+1)`
-/

namespace A379499.P184359128089374432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341606 (n + 1) : ℚ) / (A341605 (n + 1) : ℚ) * (A355927 (n + 1) : ℚ) * (A355927 (n + 1) : ℚ)

end

end A379499.P184359128089374432

/-! ## A379499.P18092361357865917506

`A246278(n+2)*A355927(n+1)`
-/

namespace A379499.P18092361357865917506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246278 (n + 2) * A355927 (n + 1)

end

end A379499.P18092361357865917506

/-! ## A379499.P12633196624625630385

`A341605(n+1)*A355925(n+1)*A246278(n+2)`
-/

namespace A379499.P12633196624625630385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341605 (n + 1) * A355925 (n + 1) * A246278 (n + 2)

end

end A379499.P12633196624625630385

/-! ## A379499.P821580776183452850

`(A249816(A083221(n+2)-1)+1)*A355927(n+1)`
-/

namespace A379499.P821580776183452850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A249816 (A083221 (n + 2) - 1).toNat + 1) * A355927 (n + 1)

end

end A379499.P821580776183452850

/-! ## A379499.P15657737350369463268

`A064987(A246278(n+2))`
-/

namespace A379499.P15657737350369463268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (A246278 (n + 2)).toNat

end

end A379499.P15657737350369463268

