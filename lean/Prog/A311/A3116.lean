import SequenceMachineLib
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
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
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
import Seq.Opaque.C024

/-!
# A311600: Coordination sequence Gal.4.65.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311600, there is no canonical definition to state claims against.
-/

/-! ## A311600.P4542147233380921834

`A329143(A174411(n))+A311515(n)`
-/

namespace A311600.P4542147233380921834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329143 (A174411 n).toNat + A311515 n

end

end A311600.P4542147233380921834

/-! ## A311600.P4464913017496880137

`A311601(n)-A268643(A268599(n))`
-/

namespace A311600.P4464913017496880137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311601 n - A268643 (A268599 n).toNat

end

end A311600.P4464913017496880137

/-! ## A311600.P4100283531660814608

`A311347(n)+2*A008683(A204630(n+1))`
-/

namespace A311600.P4100283531660814608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311347 n + 2 * A008683 (A204630 (n + 1)).toNat

end

end A311600.P4100283531660814608

/-! ## A311600.P7805264903827915753

`A311588(A001222(3^n))+A218850(A167934(n))`
-/

namespace A311600.P7805264903827915753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311588 (A001222 (3 ^ n)).toNat + A218850 (A167934 n).toNat

end

end A311600.P7805264903827915753

/-! ## A311600.P670734516803654834

`A311515(n)+A010054(A206094(n+1))`
-/

namespace A311600.P670734516803654834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311515 n + A010054 (A206094 (n + 1)).toNat

end

end A311600.P670734516803654834

/-!
# A311601: Coordination sequence Gal.6.230.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311601, the canonical program `A311601.P4498607842150103935` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311601 has offset 0).

The definition of A311601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311601.P4498607842150103935

`2*A311440(n)-A008574(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A311601

/-- `2*A311440(n)-A008574(n)` -/
def P4498607842150103935.Spec : Prop :=
  ∀ n, P4498607842150103935.a n = A311601 n

theorem P4498607842150103935.correct : P4498607842150103935.Spec := by
  intro n
  simp only [A311601]

end A311601

/-! ## A311601.P17508537201051333022

`A103517(A311440(n)-(2*n+1))`
-/

namespace A311601.P17508537201051333022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A311440 n - (2 * n + 1 : ℤ)).toNat

end

end A311601.P17508537201051333022

namespace A311601

/-- `A103517(A311440(n)-(2*n+1))` -/
def P17508537201051333022.Spec : Prop :=
  ∀ n, P17508537201051333022.a n = A311601 n

end A311601

/-! ## A311601.P1747386226768194951

`A004275(A311440(n)-A004273(n))`
-/

namespace A311601.P1747386226768194951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311440 n - A004273 n).toNat

end

end A311601.P1747386226768194951

namespace A311601

/-- `A004275(A311440(n)-A004273(n))` -/
def P1747386226768194951.Spec : Prop :=
  ∀ n, P1747386226768194951.a n = A311601 n

end A311601

/-! ## A311601.P2628712814993066811

`A004273(A311440(n)-n)-A004273(n)`
-/

namespace A311601.P2628712814993066811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A311440 n - (n : ℤ)).toNat - A004273 n

end

end A311601.P2628712814993066811

namespace A311601

/-- `A004273(A311440(n)-n)-A004273(n)` -/
def P2628712814993066811.Spec : Prop :=
  ∀ n, P2628712814993066811.a n = A311601 n

end A311601

/-! ## A311601.P6334732241712348994

`A008574(n)+A005843(A311440(n)-A008574(n))`
-/

namespace A311601.P6334732241712348994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A311440 n - A008574 n).toNat

end

end A311601.P6334732241712348994

namespace A311601

/-- `A008574(n)+A005843(A311440(n)-A008574(n))` -/
def P6334732241712348994.Spec : Prop :=
  ∀ n, P6334732241712348994.a n = A311601 n

end A311601

/-! ## A311601.P471771865812170581

`A314708(n)-A330025(A330025(n)+n)`
-/

namespace A311601.P471771865812170581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314708 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A311601.P471771865812170581

namespace A311601

/-- `A314708(n)-A330025(A330025(n)+n)` -/
def P471771865812170581.Spec : Prop :=
  ∀ n, P471771865812170581.a n = A311601 n

end A311601

/-! ## A311601.P6961750332540194802

`A005843(A311440(n))-A008574(n)`
-/

namespace A311601.P6961750332540194802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311440 n).toNat - A008574 n

end

end A311601.P6961750332540194802

namespace A311601

/-- `A005843(A311440(n))-A008574(n)` -/
def P6961750332540194802.Spec : Prop :=
  ∀ n, P6961750332540194802.a n = A311601 n

end A311601

/-! ## A311601.P6695748828450947391

`A004275(A311440(n))-A004275(2*n)`
-/

namespace A311601.P6695748828450947391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311440 n).toNat - A004275 (2 * n)

end

end A311601.P6695748828450947391

namespace A311601

/-- `A004275(A311440(n))-A004275(2*n)` -/
def P6695748828450947391.Spec : Prop :=
  ∀ n, P6695748828450947391.a n = A311601 n

end A311601

/-! ## A311601.P1914739130344402028

`2*A313782(n)-A008458(n)`
-/

namespace A311601.P1914739130344402028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313782 n - A008458 n

end

end A311601.P1914739130344402028

namespace A311601

/-- `2*A313782(n)-A008458(n)` -/
def P1914739130344402028.Spec : Prop :=
  ∀ n, P1914739130344402028.a n = A311601 n

end A311601

/-! ## A311601.P8770855432521504745

`A004277(A313782(n)-(A004277(n)+n))`
-/

namespace A311601.P8770855432521504745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313782 n - (A004277 n + (n : ℤ))).toNat

end

end A311601.P8770855432521504745

namespace A311601

/-- `A004277(A313782(n)-(A004277(n)+n))` -/
def P8770855432521504745.Spec : Prop :=
  ∀ n, P8770855432521504745.a n = A311601 n

end A311601

/-! ## A311601.P15712887332345262553

`A004277(A313782(n)-n-A004277(n))`
-/

namespace A311601.P15712887332345262553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313782 n - (n : ℤ) - A004277 n).toNat

end

end A311601.P15712887332345262553

namespace A311601

/-- `A004277(A313782(n)-n-A004277(n))` -/
def P15712887332345262553.Spec : Prop :=
  ∀ n, P15712887332345262553.a n = A311601 n

end A311601

/-! ## A311601.P5602270500401415685

`A008458(n)-A005843(A008458(n)-A313782(n))`
-/

namespace A311601.P5602270500401415685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A313782 n).toNat

end

end A311601.P5602270500401415685

namespace A311601

/-- `A008458(n)-A005843(A008458(n)-A313782(n))` -/
def P5602270500401415685.Spec : Prop :=
  ∀ n, P5602270500401415685.a n = A311601 n

end A311601

/-! ## A311601.P6869732204966723643

`A313938(n)-A047263(n+1)`
-/

namespace A311601.P6869732204966723643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313938 n - A047263 (n + 1)

end

end A311601.P6869732204966723643

namespace A311601

/-- `A313938(n)-A047263(n+1)` -/
def P6869732204966723643.Spec : Prop :=
  ∀ n, P6869732204966723643.a n = A311601 n

end A311601

/-! ## A311601.P1194125604519954412

`abs(A008592(n)-A315732(n))`
-/

namespace A311601.P1194125604519954412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315732 n|

end

end A311601.P1194125604519954412

namespace A311601

/-- `abs(A008592(n)-A315732(n))` -/
def P1194125604519954412.Spec : Prop :=
  ∀ n, P1194125604519954412.a n = A311601 n

end A311601

/-! ## A311601.P1395926115872543022

`2*A008706(n)-A315732(n)`
-/

namespace A311601.P1395926115872543022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315732 n

end

end A311601.P1395926115872543022

namespace A311601

/-- `2*A008706(n)-A315732(n)` -/
def P1395926115872543022.Spec : Prop :=
  ∀ n, P1395926115872543022.a n = A311601 n

end A311601

/-! ## A311601.P13435875596541193908

`A008458(n)+A008574(n)-A315732(n)`
-/

namespace A311601.P13435875596541193908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315732 n)

end

end A311601.P13435875596541193908

namespace A311601

/-- `A008458(n)+A008574(n)-A315732(n)` -/
def P13435875596541193908.Spec : Prop :=
  ∀ n, P13435875596541193908.a n = A311601 n

end A311601

/-! ## A311601.P5351764689135657688

`A315732(n)-A005843(A315732(n)-A008706(n))`
-/

namespace A311601.P5351764689135657688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315732 n - A005843 (A315732 n - A008706 n).toNat

end

end A311601.P5351764689135657688

namespace A311601

/-- `A315732(n)-A005843(A315732(n)-A008706(n))` -/
def P5351764689135657688.Spec : Prop :=
  ∀ n, P5351764689135657688.a n = A311601 n

end A311601

/-! ## A311601.P13273689651736313222

`A005843(A008706(n))-A315732(n)`
-/

namespace A311601.P13273689651736313222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315732 n

end

end A311601.P13273689651736313222

namespace A311601

/-- `A005843(A008706(n))-A315732(n)` -/
def P13273689651736313222.Spec : Prop :=
  ∀ n, P13273689651736313222.a n = A311601 n

end A311601

/-! ## A311601.P17286131121752748087

`A005843(A313782(n))-A008458(n)`
-/

namespace A311601.P17286131121752748087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313782 n).toNat - A008458 n

end

end A311601.P17286131121752748087

namespace A311601

/-- `A005843(A313782(n))-A008458(n)` -/
def P17286131121752748087.Spec : Prop :=
  ∀ n, P17286131121752748087.a n = A311601 n

end A311601

/-!
# A311602: Coordination sequence Gal.5.122.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311602, there is no canonical definition to state claims against.
-/

/-! ## A311602.P7489367631425767138

`A311603(n)-A010894(A311581(n))`
-/

namespace A311602.P7489367631425767138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311603 n - A010894 ((A311581 n).toNat + 21)

end

end A311602.P7489367631425767138

/-! ## A311602.P14150586527667565364

`A311603(n)-A010894(A311587(n))`
-/

namespace A311602.P14150586527667565364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311603 n - A010894 ((A311587 n).toNat + 21)

end

end A311602.P14150586527667565364

/-! ## A311602.P11867556349697527932

`A311603(n)-A010894(A311588(n))`
-/

namespace A311602.P11867556349697527932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311603 n - A010894 ((A311588 n).toNat + 21)

end

end A311602.P11867556349697527932

/-! ## A311602.P9415822022768213193

`A311603(A087051(n))`
-/

namespace A311602.P9415822022768213193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311603 (A087051 n).toNat

end

end A311602.P9415822022768213193

/-! ## A311602.P12800267458888212709

`A352745(A315204(n))`
-/

namespace A311602.P12800267458888212709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352745 (A315204 n).toNat

end

end A311602.P12800267458888212709

/-!
# A311603: Coordination sequence Gal.5.119.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311603, there is no canonical definition to state claims against.
-/

/-! ## A311603.P18389861521906601002

`2*A312098(n)-A312499(n)`
-/

namespace A311603.P18389861521906601002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312098 n - A312499 n

end

end A311603.P18389861521906601002

/-! ## A311603.P10066353315363168915

`A004277(A312098(n))-A312499(n)`
-/

namespace A311603.P10066353315363168915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312098 n).toNat - A312499 n

end

end A311603.P10066353315363168915

/-! ## A311603.P11477129071187522176

`or(A010894(A311589(n)), A311602(n))`
-/

namespace A311603.P11477129071187522176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A311589 n).toNat + 21)) (A311602 n)

end

end A311603.P11477129071187522176

/-! ## A311603.P10473728204936200656

`A311602(n)+A010894(A311581(n))`
-/

namespace A311603.P10473728204936200656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311602 n + A010894 ((A311581 n).toNat + 21)

end

end A311603.P10473728204936200656

/-! ## A311603.P9779280898539339934

`A311602(n)+A010894(A311587(n))`
-/

namespace A311603.P9779280898539339934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311602 n + A010894 ((A311587 n).toNat + 21)

end

end A311603.P9779280898539339934

/-!
# A311604: Coordination sequence Gal.6.300.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311604, there is no canonical definition to state claims against.
-/

/-! ## A311604.P1706682738049401653

`A324761(2*n+1)-A168046(A268924(n))`
-/

namespace A311604.P1706682738049401653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324761 (2 * n + 1) - A168046 (A268924 n).toNat

end

end A311604.P1706682738049401653

/-! ## A311604.P17371352876481606637

`A311589(n)+A086080(A005001(n))`
-/

namespace A311604.P17371352876481606637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311589 n + A086080 (A005001 n).toNat

end

end A311604.P17371352876481606637

/-! ## A311604.P15488206907107487514

`xor(A312116(n), A324966(A016067(n+1)))`
-/

namespace A311604.P15488206907107487514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A312116 n) (A324966 (A016067 (n + 1)).toNat)

end

end A311604.P15488206907107487514

/-! ## A311604.P3415019321686762362

`A312089(n)-A285898(A312029(3*n+2))`
-/

namespace A311604.P3415019321686762362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312089 n - A285898 (A312029 (3 * n + 2)).toNat

end

end A311604.P3415019321686762362

/-! ## A311604.P7169646262293329779

`A106744(A310398(n))+A065120(A208882(n+1))`
-/

namespace A311604.P7169646262293329779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A310398 n).toNat + A065120 (A208882 (n + 1)).toNat

end

end A311604.P7169646262293329779

/-!
# A311605: Coordination sequence Gal.6.17.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311605, there is no canonical definition to state claims against.
-/

/-! ## A311605.P166104518371781668

`A324758(3*n+2)-A112539(A049178(n+1))`
-/

namespace A311605.P166104518371781668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324758 (3 * n + 2) - A112539 (A049178 (n + 1)).toNat

end

end A311605.P166104518371781668

/-! ## A311605.P15392101706428228619

`A312101(A351870(n))-A160380(A141436(n+1))`
-/

namespace A311605.P15392101706428228619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312101 (A351870 n).toNat - A160380 (A141436 (n + 1)).toNat

end

end A311605.P15392101706428228619

/-! ## A311605.P12149206292770185962

`A275964(A000110(n))+A008574(n)`
-/

namespace A311605.P12149206292770185962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275964 (A000110 n).toNat + A008574 n

end

end A311605.P12149206292770185962

/-! ## A311605.P4295761537452036587

`A311596(n)+A070176(A003462(n))`
-/

namespace A311605.P4295761537452036587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311596 n + A070176 (A003462 n).toNat

end

end A311605.P4295761537452036587

/-! ## A311605.P2345071019607640327

`A311604(n)+A025469(A080929(n))`
-/

namespace A311605.P2345071019607640327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311604 n + A025469 (A080929 n).toNat

end

end A311605.P2345071019607640327

/-!
# A311606: Coordination sequence Gal.6.290.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311606, there is no canonical definition to state claims against.
-/

/-! ## A311606.P1446303110352272596

`A311607(A163352(∑[n]))`
-/

namespace A311606.P1446303110352272596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311607 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311606.P1446303110352272596

/-! ## A311606.P16191333176774022898

`A311607(A000007(A099885(n))+n)`
-/

namespace A311606.P16191333176774022898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311607 (A000007 (A099885 n).toNat + (n : ℤ)).toNat

end

end A311606.P16191333176774022898

/-! ## A311606.P8639337062041142317

`A311607(n)+A066503(A034386(n))`
-/

namespace A311606.P8639337062041142317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311607 n + A066503 (A034386 n).toNat

end

end A311606.P8639337062041142317

/-! ## A311606.P6469463585416233722

`A311607(n)+A000007(A287021(n))`
-/

namespace A311606.P6469463585416233722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311607 n + A000007 (A287021 n).toNat

end

end A311606.P6469463585416233722

/-! ## A311606.P9543869430894679642

`A311607(n)+A000007(A328773(n))`
-/

namespace A311606.P9543869430894679642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311607 n + A000007 (A328773 n).toNat

end

end A311606.P9543869430894679642

/-!
# A311608: Coordination sequence Gal.6.291.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311608, there is no canonical definition to state claims against.
-/

/-! ## A311608.P8918716653181926868

`2*A312132(n)-A312547(n)`
-/

namespace A311608.P8918716653181926868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312132 n - A312547 n

end

end A311608.P8918716653181926868

/-! ## A311608.P8361563297245828359

`A005843(A312132(n))-A312547(n)`
-/

namespace A311608.P8361563297245828359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312132 n).toNat - A312547 n

end

end A311608.P8361563297245828359

/-! ## A311608.P7442526236617091590

`A311609(A163352(∑[n]))`
-/

namespace A311608.P7442526236617091590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311609 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311608.P7442526236617091590

/-! ## A311608.P4321107845773204877

`record[A311609(A000120(n))]`
-/

namespace A311608.P4321107845773204877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311609 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311608.P4321107845773204877

/-! ## A311608.P1468343527717108063

`∏{e}[A000244(n), A311609(#)]`
-/

namespace A311608.P1468343527717108063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A311609 (Nat.factorization (f1 n).natAbs p)

end

end A311608.P1468343527717108063

/-!
# A311609: Coordination sequence Gal.6.277.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311609, there is no canonical definition to state claims against.
-/

/-! ## A311609.P203880356052168701

`A363127(A172317(n)+1)+A311608(n)`
-/

namespace A311609.P203880356052168701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363127 (A172317 n + 1).toNat + A311608 n

end

end A311609.P203880356052168701

/-!
# A311610: Coordination sequence Gal.4.71.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311610, there is no canonical definition to state claims against.
-/

/-! ## A311610.P7475565212356715099

`A311377(n)+A191265(A145549(n+1))`
-/

namespace A311610.P7475565212356715099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311377 n + A191265 (A145549 (n + 1)).toNat

end

end A311610.P7475565212356715099

/-! ## A311610.P8083216108731582715

`A311377(n)+A241541(A270929(n+1)²)`
-/

namespace A311610.P8083216108731582715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311377 n + A241541 (A270929 (n + 1) ^ 2).toNat

end

end A311610.P8083216108731582715

/-! ## A311610.P7202329714535625229

`A311613(A062399(n)-A031346(n+2))`
-/

namespace A311610.P7202329714535625229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311613 (A062399 n - A031346 (n + 2)).toNat

end

end A311610.P7202329714535625229

/-! ## A311610.P10601147333476105628

`A311613(n)-A341980(A048736(n))`
-/

namespace A311610.P10601147333476105628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311613 n - A341980 ((A048736 n).toNat + 78)

end

end A311610.P10601147333476105628

/-! ## A311610.P15465598999847746202

`A311377(A087051(n))+A241541(n+1)`
-/

namespace A311610.P15465598999847746202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311377 (A087051 n).toNat + A241541 (n + 1)

end

end A311610.P15465598999847746202

/-!
# A311611: Coordination sequence Gal.4.67.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311611, there is no canonical definition to state claims against.
-/

/-! ## A311611.P16803681611096406897

`xor(A010673(n²²), A315892(n))`
-/

namespace A311611.P16803681611096406897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 ((n ^ 2) ^ 2)) (A315892 n)

end

end A311611.P16803681611096406897

/-! ## A311611.P2052110314076005016

`A311605(n)+A070176(A003462(n))`
-/

namespace A311611.P2052110314076005016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311605 n + A070176 (A003462 n).toNat

end

end A311611.P2052110314076005016

/-! ## A311611.P5703539826183355277

`A311612(n)-A281442(A229887(n))`
-/

namespace A311611.P5703539826183355277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311612 n - A281442 (A229887 n).toNat

end

end A311611.P5703539826183355277

/-! ## A311611.P16281756402424536702

`A352661(A061979(n+2))+A311595(n)`
-/

namespace A311611.P16281756402424536702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352661 (A061979 (n + 2)).toNat + A311595 n

end

end A311611.P16281756402424536702

/-! ## A311611.P2438427396997724898

`A381033(A335633(n))+A311605(n)`
-/

namespace A311611.P2438427396997724898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381033 (A335633 n).toNat + A311605 n

end

end A311611.P2438427396997724898

/-!
# A311612: Coordination sequence Gal.5.98.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311612, the canonical program `A311612.P8550117147487517708` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311612 has offset 0).

The definition of A311612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311612.P8550117147487517708

`2*A311458(n)-A008574(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A311612

/-- `2*A311458(n)-A008574(n)` -/
def P8550117147487517708.Spec : Prop :=
  ∀ n, P8550117147487517708.a n = A311612 n

theorem P8550117147487517708.correct : P8550117147487517708.Spec := by
  intro n
  simp only [A311612]

end A311612

/-! ## A311612.P11887859569780378666

`2*A312932(n)-A310369(n)`
-/

namespace A311612.P11887859569780378666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312932 n - A310369 n

end

end A311612.P11887859569780378666

namespace A311612

/-- `2*A312932(n)-A310369(n)` -/
def P11887859569780378666.Spec : Prop :=
  ∀ n, P11887859569780378666.a n = A311612 n

end A311612

/-! ## A311612.P16040349491880413130

`A004275(A311458(n)-A004273(n))`
-/

namespace A311612.P16040349491880413130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311458 n - A004273 n).toNat

end

end A311612.P16040349491880413130

namespace A311612

/-- `A004275(A311458(n)-A004273(n))` -/
def P16040349491880413130.Spec : Prop :=
  ∀ n, P16040349491880413130.a n = A311612 n

end A311612

/-! ## A311612.P6825963138830866296

`A004273(A311458(n)-n)-A004273(n)`
-/

namespace A311612.P6825963138830866296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A311458 n - (n : ℤ)).toNat - A004273 n

end

end A311612.P6825963138830866296

namespace A311612

/-- `A004273(A311458(n)-n)-A004273(n)` -/
def P6825963138830866296.Spec : Prop :=
  ∀ n, P6825963138830866296.a n = A311612 n

end A311612

/-! ## A311612.P1062894278684065331

`A008574(n)+A005843(A311458(n)-A008574(n))`
-/

namespace A311612.P1062894278684065331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A311458 n - A008574 n).toNat

end

end A311612.P1062894278684065331

namespace A311612

/-- `A008574(n)+A005843(A311458(n)-A008574(n))` -/
def P1062894278684065331.Spec : Prop :=
  ∀ n, P1062894278684065331.a n = A311612 n

end A311612

/-! ## A311612.P14558750456828323030

`A005843(A311458(n))-A008574(n)`
-/

namespace A311612.P14558750456828323030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311458 n).toNat - A008574 n

end

end A311612.P14558750456828323030

namespace A311612

/-- `A005843(A311458(n))-A008574(n)` -/
def P14558750456828323030.Spec : Prop :=
  ∀ n, P14558750456828323030.a n = A311612 n

end A311612

/-! ## A311612.P10083512575058556438

`A004275(A311458(n))-A004275(2*n)`
-/

namespace A311612.P10083512575058556438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311458 n).toNat - A004275 (2 * n)

end

end A311612.P10083512575058556438

namespace A311612

/-- `A004275(A311458(n))-A004275(2*n)` -/
def P10083512575058556438.Spec : Prop :=
  ∀ n, P10083512575058556438.a n = A311612 n

end A311612

/-! ## A311612.P4317703437353926264

`A310421(n)-A008612(A016813(n))`
-/

namespace A311612.P4317703437353926264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310421 n - A008612 (A016813 n).toNat

end

end A311612.P4317703437353926264

namespace A311612

/-- `A310421(n)-A008612(A016813(n))` -/
def P4317703437353926264.Spec : Prop :=
  ∀ n, P4317703437353926264.a n = A311612 n

end A311612

/-! ## A311612.P950696392079212367

`A313799(n)-A004396(record[A283971(n)])`
-/

namespace A311612.P950696392079212367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n - A004396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A311612.P950696392079212367

namespace A311612

/-- `A313799(n)-A004396(record[A283971(n)])` -/
def P950696392079212367.Spec : Prop :=
  ∀ n, P950696392079212367.a n = A311612 n

end A311612

/-! ## A311612.P9054376230311100145

`A313799(n)-A004396(A004396(2*n))`
-/

namespace A311612.P9054376230311100145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n - A004396 (A004396 (2 * n)).toNat

end

end A311612.P9054376230311100145

namespace A311612

/-- `A313799(n)-A004396(A004396(2*n))` -/
def P9054376230311100145.Spec : Prop :=
  ∀ n, P9054376230311100145.a n = A311612 n

end A311612

/-! ## A311612.P16610534785125225668

`abs(10*n-A315731(n))`
-/

namespace A311612.P16610534785125225668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315731 n|

end

end A311612.P16610534785125225668

namespace A311612

/-- `abs(10*n-A315731(n))` -/
def P16610534785125225668.Spec : Prop :=
  ∀ n, P16610534785125225668.a n = A311612 n

end A311612

/-! ## A311612.P7611578779538776035

`2*A008706(n)-A315731(n)`
-/

namespace A311612.P7611578779538776035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315731 n

end

end A311612.P7611578779538776035

namespace A311612

/-- `2*A008706(n)-A315731(n)` -/
def P7611578779538776035.Spec : Prop :=
  ∀ n, P7611578779538776035.a n = A311612 n

end A311612

/-! ## A311612.P17125709806637419734

`A008458(n)+A008574(n)-A315731(n)`
-/

namespace A311612.P17125709806637419734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315731 n)

end

end A311612.P17125709806637419734

namespace A311612

/-- `A008458(n)+A008574(n)-A315731(n)` -/
def P17125709806637419734.Spec : Prop :=
  ∀ n, P17125709806637419734.a n = A311612 n

end A311612

/-! ## A311612.P2368506583553777283

`A315731(n)-A005843(A315731(n)-A008706(n))`
-/

namespace A311612.P2368506583553777283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315731 n - A005843 (A315731 n - A008706 n).toNat

end

end A311612.P2368506583553777283

namespace A311612

/-- `A315731(n)-A005843(A315731(n)-A008706(n))` -/
def P2368506583553777283.Spec : Prop :=
  ∀ n, P2368506583553777283.a n = A311612 n

end A311612

/-! ## A311612.P14567124476478166725

`A005843(A008706(n))-A315731(n)`
-/

namespace A311612.P14567124476478166725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315731 n

end

end A311612.P14567124476478166725

namespace A311612

/-- `A005843(A008706(n))-A315731(n)` -/
def P14567124476478166725.Spec : Prop :=
  ∀ n, P14567124476478166725.a n = A311612 n

end A311612

/-! ## A311612.P994047164260041197

`A004396(n)+A004396(A311633(n)+n)`
-/

namespace A311612.P994047164260041197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A311633 n + (n : ℤ)).toNat

end

end A311612.P994047164260041197

namespace A311612

/-- `A004396(n)+A004396(A311633(n)+n)` -/
def P994047164260041197.Spec : Prop :=
  ∀ n, P994047164260041197.a n = A311612 n

end A311612

/-!
# A311613: Coordination sequence Gal.6.231.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311613, the canonical program `A311613.P7627697520887146138` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311613 has offset 0).

The definition of A311613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311613.P13093387095522571679

`A312151(n)-Δ[A011864(n)]`
-/

namespace A311613.P13093387095522571679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312151 n - (f1 (n + 1) - f1 n)

end

end A311613.P13093387095522571679

namespace A311613

/-- `A312151(n)-Δ[A011864(n)]` -/
def P13093387095522571679.Spec : Prop :=
  ∀ n, P13093387095522571679.a n = A311613 n

end A311613

/-! ## A311613.P4049755082293350465

`A004278(A017005(n)-A313689(n))`
-/

namespace A311613.P4049755082293350465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A017005 n - A313689 n).toNat

end

end A311613.P4049755082293350465

namespace A311613

/-- `A004278(A017005(n)-A313689(n))` -/
def P4049755082293350465.Spec : Prop :=
  ∀ n, P4049755082293350465.a n = A311613 n

end A311613

/-! ## A311613.P9281340392027061267

`A312562(n)-Δ[2*A011864(n)]`
-/

namespace A311613.P9281340392027061267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312562 n - (f1 (n + 1) - f1 n)

end

end A311613.P9281340392027061267

namespace A311613

/-- `A312562(n)-Δ[2*A011864(n)]` -/
def P9281340392027061267.Spec : Prop :=
  ∀ n, P9281340392027061267.a n = A311613 n

end A311613

/-! ## A311613.P7627697520887146138

`2*A313788(n)-A008458(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A311613

/-- `2*A313788(n)-A008458(n)` -/
def P7627697520887146138.Spec : Prop :=
  ∀ n, P7627697520887146138.a n = A311613 n

theorem P7627697520887146138.correct : P7627697520887146138.Spec := by
  intro n
  simp only [A311613]

end A311613

/-! ## A311613.P3447331901745873513

`A103517(A313788(n)-(3*n+1))`
-/

namespace A311613.P3447331901745873513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313788 n - (3 * n + 1 : ℤ)).toNat

end

end A311613.P3447331901745873513

namespace A311613

/-- `A103517(A313788(n)-(3*n+1))` -/
def P3447331901745873513.Spec : Prop :=
  ∀ n, P3447331901745873513.a n = A311613 n

end A311613

/-! ## A311613.P16339635010923724177

`A008458(n)-A005843(A008458(n)-A313788(n))`
-/

namespace A311613.P16339635010923724177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A313788 n).toNat

end

end A311613.P16339635010923724177

namespace A311613

/-- `A008458(n)-A005843(A008458(n)-A313788(n))` -/
def P16339635010923724177.Spec : Prop :=
  ∀ n, P16339635010923724177.a n = A311613 n

end A311613

/-! ## A311613.P8270622465572827779

`abs(A008592(n)-A315730(n))`
-/

namespace A311613.P8270622465572827779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315730 n|

end

end A311613.P8270622465572827779

namespace A311613

/-- `abs(A008592(n)-A315730(n))` -/
def P8270622465572827779.Spec : Prop :=
  ∀ n, P8270622465572827779.a n = A311613 n

end A311613

/-! ## A311613.P1228886693176740212

`2*A008706(n)-A315730(n)`
-/

namespace A311613.P1228886693176740212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315730 n

end

end A311613.P1228886693176740212

namespace A311613

/-- `2*A008706(n)-A315730(n)` -/
def P1228886693176740212.Spec : Prop :=
  ∀ n, P1228886693176740212.a n = A311613 n

end A311613

/-! ## A311613.P7061816979237779982

`A008458(n)+A008574(n)-A315730(n)`
-/

namespace A311613.P7061816979237779982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315730 n)

end

end A311613.P7061816979237779982

namespace A311613

/-- `A008458(n)+A008574(n)-A315730(n)` -/
def P7061816979237779982.Spec : Prop :=
  ∀ n, P7061816979237779982.a n = A311613 n

end A311613

/-! ## A311613.P3407350694949745217

`A315730(n)-A005843(A315730(n)-A008706(n))`
-/

namespace A311613.P3407350694949745217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315730 n - A005843 (A315730 n - A008706 n).toNat

end

end A311613.P3407350694949745217

namespace A311613

/-- `A315730(n)-A005843(A315730(n)-A008706(n))` -/
def P3407350694949745217.Spec : Prop :=
  ∀ n, P3407350694949745217.a n = A311613 n

end A311613

/-! ## A311613.P7968366879344367756

`2*A313772(n)-A315756(n)`
-/

namespace A311613.P7968366879344367756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313772 n - A315756 n

end

end A311613.P7968366879344367756

namespace A311613

/-- `2*A313772(n)-A315756(n)` -/
def P7968366879344367756.Spec : Prop :=
  ∀ n, P7968366879344367756.a n = A311613 n

end A311613

/-! ## A311613.P8946638294213538216

`A004442(A017281(n)-A315730(n))`
-/

namespace A311613.P8946638294213538216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315730 n).toNat

end

end A311613.P8946638294213538216

namespace A311613

/-- `A004442(A017281(n)-A315730(n))` -/
def P8946638294213538216.Spec : Prop :=
  ∀ n, P8946638294213538216.a n = A311613 n

end A311613

/-! ## A311613.P8823164339706132045

`A005843(A008706(n))-A315730(n)`
-/

namespace A311613.P8823164339706132045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315730 n

end

end A311613.P8823164339706132045

namespace A311613

/-- `A005843(A008706(n))-A315730(n)` -/
def P8823164339706132045.Spec : Prop :=
  ∀ n, P8823164339706132045.a n = A311613 n

end A311613

/-! ## A311613.P3749672216632226545

`A005843(A313788(n))-A008458(n)`
-/

namespace A311613.P3749672216632226545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313788 n).toNat - A008458 n

end

end A311613.P3749672216632226545

namespace A311613

/-- `A005843(A313788(n))-A008458(n)` -/
def P3749672216632226545.Spec : Prop :=
  ∀ n, P3749672216632226545.a n = A311613 n

end A311613

/-! ## A311613.P2125737686806272773

`A312209(n)-A004525(A312209(n)-A008574(n))`
-/

namespace A311613.P2125737686806272773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312209 n - A004525 (A312209 n - A008574 n).toNat

end

end A311613.P2125737686806272773

namespace A311613

/-- `A312209(n)-A004525(A312209(n)-A008574(n))` -/
def P2125737686806272773.Spec : Prop :=
  ∀ n, P2125737686806272773.a n = A311613 n

end A311613

/-!
# A311614: Coordination sequence Gal.6.148.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311614, there is no canonical definition to state claims against.
-/

/-! ## A311614.P15424762281231234259

`record[A311615(A163351(n))]`
-/

namespace A311614.P15424762281231234259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311615 (A163351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311614.P15424762281231234259

/-! ## A311614.P11384295937190077664

`record[A311615(A332104(n))]`
-/

namespace A311614.P11384295937190077664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311615 (A332104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311614.P11384295937190077664

/-! ## A311614.P455945494897493551

`A311615(lcm(n, A213000(n)))`
-/

namespace A311614.P455945494897493551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311615 (Int.lcm (n : ℤ) (A213000 n))

end

end A311614.P455945494897493551

/-! ## A311614.P13881419058997674488

`∏{e}[A000244(n), A311615(#)]`
-/

namespace A311614.P13881419058997674488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A311615 (Nat.factorization (f1 n).natAbs p)

end

end A311614.P13881419058997674488

/-! ## A311614.P4239148994269431036

`A311615(n*Δ[A077168(n)])`
-/

namespace A311614.P4239148994269431036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311615 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A311614.P4239148994269431036

/-!
# A311616: Coordination sequence Gal.6.461.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311616, there is no canonical definition to state claims against.
-/

/-! ## A311616.P529141666430369463

`and(A259630(A311253(n)), A312150(n))`
-/

namespace A311616.P529141666430369463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A259630 (A311253 n).toNat) (A312150 n)

end

end A311616.P529141666430369463

/-!
# A311617: Coordination sequence Gal.6.528.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311617, there is no canonical definition to state claims against.
-/

/-! ## A311617.P12544887471386635804

`A313817(A120126(n))-n`
-/

namespace A311617.P12544887471386635804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313817 (A120126 n).toNat - (n : ℤ)

end

end A311617.P12544887471386635804

/-! ## A311617.P5146788047077610493

`A313817(A351870(n))-n`
-/

namespace A311617.P5146788047077610493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313817 (A351870 n).toNat - (n : ℤ)

end

end A311617.P5146788047077610493

/-! ## A311617.P6901806726209551342

`A313817(n)%A152667(3*n+5)-n`
-/

namespace A311617.P6901806726209551342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A313817 n) (A152667 (3 * n + 5)) - (n : ℤ)

end

end A311617.P6901806726209551342

/-! ## A311617.P6560339036650217858

`A311501(n)+A267679(A321228(n))`
-/

namespace A311617.P6560339036650217858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311501 n + A267679 (A321228 n).toNat

end

end A311617.P6560339036650217858

/-! ## A311617.P10052820012778952691

`or(A000035(A014372(n)), A311585(n))`
-/

namespace A311617.P10052820012778952691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A014372 n).toNat) (A311585 n)

end

end A311617.P10052820012778952691

/-!
# A311618: Coordination sequence Gal.6.214.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311618, there is no canonical definition to state claims against.
-/

/-! ## A311618.P16833196812907874533

`A311545(n)+A186741(A149818(n))`
-/

namespace A311618.P16833196812907874533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311545 n + A186741 (A149818 n).toNat

end

end A311618.P16833196812907874533

/-! ## A311618.P12499889752343067037

`A313794(n)-A001222(A006012(n))`
-/

namespace A311618.P12499889752343067037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313794 n - A001222 (A006012 n).toNat

end

end A311618.P12499889752343067037

/-! ## A311618.P11120673915401811385

`A250120(n)-A030386(A052709(n))`
-/

namespace A311618.P11120673915401811385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A030386 (A052709 n).toNat

end

end A311618.P11120673915401811385

/-! ## A311618.P1579928726770040220

`A106744(or(A008706(n), A057354(n)))`
-/

namespace A311618.P1579928726770040220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (Int.lor (A008706 n) (A057354 n)).toNat

end

end A311618.P1579928726770040220

/-! ## A311618.P17752473609265259808

`A250120(n)-A007814(A356603(3*n))`
-/

namespace A311618.P17752473609265259808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A007814 (A356603 (3 * n)).toNat

end

end A311618.P17752473609265259808

/-!
# A311619: Coordination sequence Gal.6.244.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311619, there is no canonical definition to state claims against.
-/

/-! ## A311619.P10932976547225150311

`A311620(n)-A240178(A179959(n))`
-/

namespace A311619.P10932976547225150311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311620 n - A240178 (A179959 n).toNat

end

end A311619.P10932976547225150311

/-! ## A311619.P14281248075833761814

`A311620(log2(A233569(2^n)))`
-/

namespace A311619.P14281248075833761814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311620 (SequenceMachineLib.roundAway (Real.logb 2 (A233569 (2 ^ n) : ℝ))).toNat

end

end A311619.P14281248075833761814

/-! ## A311619.P12733407455316462776

`A311620(n)^A289481(n)!`
-/

namespace A311619.P12733407455316462776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311620 n ^ Nat.factorial (A289481 n).toNat

end

end A311619.P12733407455316462776

/-! ## A311619.P2531398936006377471

`A311620(A062399(n))`
-/

namespace A311619.P2531398936006377471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311620 (A062399 n).toNat

end

end A311619.P2531398936006377471

/-! ## A311619.P841914537003799594

`A311620(A120126(n))`
-/

namespace A311619.P841914537003799594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311620 (A120126 n).toNat

end

end A311619.P841914537003799594

/-!
# A311622: Coordination sequence Gal.5.190.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311622, there is no canonical definition to state claims against.
-/

/-! ## A311622.P1470319171342020255

`xor(A072707(n), A072715(A087051(n)+1))`
-/

namespace A311622.P1470319171342020255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A072707 n) (A072715 (A087051 n + 1).toNat)

end

end A311622.P1470319171342020255

/-! ## A311622.P13887398222006542242

`and(A040830(10*C(n+4, 5)), A311628(n))`
-/

namespace A311622.P13887398222006542242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040830 (10 * Nat.choose (n + 4) 5)) (A311628 n)

end

end A311622.P13887398222006542242

/-! ## A311622.P7607225929146551691

`A234638(n+1)+A001221(A045868(n))`
-/

namespace A311622.P7607225929146551691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234638 (n + 1) + A001221 (A045868 n).toNat

end

end A311622.P7607225929146551691

/-!
# A311623: Coordination sequence Gal.6.387.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311623, there is no canonical definition to state claims against.
-/

/-! ## A311623.P8029539833912477941

`A314922(n)-A001221(A095934(n))`
-/

namespace A311623.P8029539833912477941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314922 n - A001221 (A095934 n).toNat

end

end A311623.P8029539833912477941

/-! ## A311623.P6247733437573587933

`A072473(n+1)-A055029(A053557(n))`
-/

namespace A311623.P6247733437573587933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) - A055029 (A053557 n).toNat

end

end A311623.P6247733437573587933

/-! ## A311623.P8215769487161391260

`A072473(A032555(n+1)-A316867(n))`
-/

namespace A311623.P8215769487161391260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (A032555 (n + 1) - A316867 n).toNat

end

end A311623.P8215769487161391260

/-! ## A311623.P14445303862555898536

`A072715(A032555(n+1)-A316867(n))`
-/

namespace A311623.P14445303862555898536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072715 (A032555 (n + 1) - A316867 n).toNat

end

end A311623.P14445303862555898536

/-! ## A311623.P11482036966013958047

`A072473(n+1)-A307409(A084869(n))`
-/

namespace A311623.P11482036966013958047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) - A307409 (A084869 n).toNat

end

end A311623.P11482036966013958047

/-!
# A311624: Coordination sequence Gal.5.285.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311624, there is no canonical definition to state claims against.
-/

/-! ## A311624.P16791381071528951455

`A311495(n)+A001222(A218962(n))`
-/

namespace A311624.P16791381071528951455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311495 n + A001222 (A218962 n).toNat

end

end A311624.P16791381071528951455

/-! ## A311624.P6877512486222078059

`eq[A010056(A039663(n)), A039655(n+2)]`
-/

namespace A311624.P6877512486222078059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A039663 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039655 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A311624.P6877512486222078059

/-! ## A311624.P8036554241756882202

`A314731(n)-A188294(A312322(3*n+2))`
-/

namespace A311624.P8036554241756882202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314731 n - A188294 (A312322 (3 * n + 2)).toNat

end

end A311624.P8036554241756882202

/-!
# A311625: Coordination sequence Gal.5.99.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311625, the canonical program `A311625.P7066219322900741713` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311625 has offset 0).

The definition of A311625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311625.P275952488227252828

`A301291(n)-A046978(n)`
-/

namespace A311625.P275952488227252828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - A046978 n

end

end A311625.P275952488227252828

namespace A311625

/-- `A301291(n)-A046978(n)` -/
def P275952488227252828.Spec : Prop :=
  ∀ n, P275952488227252828.a n = A311625 n

end A311625

/-! ## A311625.P4322445996098503320

`A310530(n)-A201629(n)`
-/

namespace A311625.P4322445996098503320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310530 n - A201629 n

end

end A311625.P4322445996098503320

namespace A311625

/-- `A310530(n)-A201629(n)` -/
def P4322445996098503320.Spec : Prop :=
  ∀ n, P4322445996098503320.a n = A311625 n

end A311625

/-! ## A311625.P7066219322900741713

`2*A311501(n)-A008574(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A311625

/-- `2*A311501(n)-A008574(n)` -/
def P7066219322900741713.Spec : Prop :=
  ∀ n, P7066219322900741713.a n = A311625 n

theorem P7066219322900741713.correct : P7066219322900741713.Spec := by
  intro n
  simp only [A311625]

end A311625

/-! ## A311625.P7719570829688734482

`A310530(n)-Δ[2*A011848(n)]`
-/

namespace A311625.P7719570829688734482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310530 n - (f1 (n + 1) - f1 n)

end

end A311625.P7719570829688734482

namespace A311625

/-- `A310530(n)-Δ[2*A011848(n)]` -/
def P7719570829688734482.Spec : Prop :=
  ∀ n, P7719570829688734482.a n = A311625 n

end A311625

/-! ## A311625.P3740246584718622290

`A312943(n)-A046978(n-A046978(n))`
-/

namespace A311625.P3740246584718622290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n - A046978 ((n : ℤ) - A046978 n).toNat

end

end A311625.P3740246584718622290

namespace A311625

/-- `A312943(n)-A046978(n-A046978(n))` -/
def P3740246584718622290.Spec : Prop :=
  ∀ n, P3740246584718622290.a n = A311625 n

end A311625

/-! ## A311625.P4349168049014116921

`A004525(n)+A311501(n)-A004525(A004525(n))`
-/

namespace A311625.P4349168049014116921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A311501 n - A004525 (A004525 n).toNat)

end

end A311625.P4349168049014116921

namespace A311625

/-- `A004525(n)+A311501(n)-A004525(A004525(n))` -/
def P4349168049014116921.Spec : Prop :=
  ∀ n, P4349168049014116921.a n = A311625 n

end A311625

/-! ## A311625.P10964272588491467585

`A315173(n)-2*A046978(n)`
-/

namespace A311625.P10964272588491467585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315173 n - 2 * A046978 n

end

end A311625.P10964272588491467585

namespace A311625

/-- `A315173(n)-2*A046978(n)` -/
def P10964272588491467585.Spec : Prop :=
  ∀ n, P10964272588491467585.a n = A311625 n

end A311625

/-! ## A311625.P7145860439346250643

`A312205(n)-Δ[A011861(n)]`
-/

namespace A311625.P7145860439346250643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312205 n - (f1 (n + 1) - f1 n)

end

end A311625.P7145860439346250643

namespace A311625

/-- `A312205(n)-Δ[A011861(n)]` -/
def P7145860439346250643.Spec : Prop :=
  ∀ n, P7145860439346250643.a n = A311625 n

end A311625

/-! ## A311625.P18367485102991305956

`A312682(n)-Δ[2*A011861(n)]`
-/

namespace A311625.P18367485102991305956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312682 n - (f1 (n + 1) - f1 n)

end

end A311625.P18367485102991305956

namespace A311625

/-- `A312682(n)-Δ[2*A011861(n)]` -/
def P18367485102991305956.Spec : Prop :=
  ∀ n, P18367485102991305956.a n = A311625 n

end A311625

/-! ## A311625.P10075118329601350142

`A315211(n)-2*A004525(A004525(n))`
-/

namespace A311625.P10075118329601350142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315211 n - 2 * A004525 (A004525 n).toNat

end

end A311625.P10075118329601350142

namespace A311625

/-- `A315211(n)-2*A004525(A004525(n))` -/
def P10075118329601350142.Spec : Prop :=
  ∀ n, P10075118329601350142.a n = A311625 n

end A311625

/-! ## A311625.P11146248315406108089

`A313152(n)-∑[A021913(n)]`
-/

namespace A311625.P11146248315406108089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313152 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311625.P11146248315406108089

namespace A311625

/-- `A313152(n)-∑[A021913(n)]` -/
def P11146248315406108089.Spec : Prop :=
  ∀ n, P11146248315406108089.a n = A311625 n

end A311625

/-! ## A311625.P6107276046519282985

`A313152(n)-Δ[A011848(n)]`
-/

namespace A311625.P6107276046519282985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313152 n - (f1 (n + 1) - f1 n)

end

end A311625.P6107276046519282985

namespace A311625

/-- `A313152(n)-Δ[A011848(n)]` -/
def P6107276046519282985.Spec : Prop :=
  ∀ n, P6107276046519282985.a n = A311625 n

end A311625

/-! ## A311625.P235214511120276540

`A004525(n)+A313152(n)-n`
-/

namespace A311625.P235214511120276540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313152 n - (n : ℤ))

end

end A311625.P235214511120276540

namespace A311625

/-- `A004525(n)+A313152(n)-n` -/
def P235214511120276540.Spec : Prop :=
  ∀ n, P235214511120276540.a n = A311625 n

end A311625

/-! ## A311625.P9939724236238137316

`2*A313793(n)-A008458(n)`
-/

namespace A311625.P9939724236238137316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313793 n - A008458 n

end

end A311625.P9939724236238137316

namespace A311625

/-- `2*A313793(n)-A008458(n)` -/
def P9939724236238137316.Spec : Prop :=
  ∀ n, P9939724236238137316.a n = A311625 n

end A311625

/-! ## A311625.P6644458667856590473

`A315173(2*n)-A201629(A315173(n))`
-/

namespace A311625.P6644458667856590473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315173 (2 * n) - A201629 (A315173 n).toNat

end

end A311625.P6644458667856590473

namespace A311625

/-- `A315173(2*n)-A201629(A315173(n))` -/
def P6644458667856590473.Spec : Prop :=
  ∀ n, P6644458667856590473.a n = A311625 n

end A311625

/-!
# A311626: Coordination sequence Gal.6.232.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311626, the canonical program `A311626.P4232212837314164961` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311626 has offset 0).

The definition of A311626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311626.P4232212837314164961

`2*A311523(n)-A008574(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A311626

/-- `2*A311523(n)-A008574(n)` -/
def P4232212837314164961.Spec : Prop :=
  ∀ n, P4232212837314164961.a n = A311626 n

theorem P4232212837314164961.correct : P4232212837314164961.Spec := by
  intro n
  simp only [A311626]

end A311626

/-! ## A311626.P5765565403069063960

`2*A311523(n)-(A008486(n)+n)`
-/

namespace A311626.P5765565403069063960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311523 n - (A008486 n + (n : ℤ))

end

end A311626.P5765565403069063960

namespace A311626

/-- `2*A311523(n)-(A008486(n)+n)` -/
def P5765565403069063960.Spec : Prop :=
  ∀ n, P5765565403069063960.a n = A311626 n

end A311626

/-! ## A311626.P6009210048018741871

`A004275(A311523(n)-A004273(n))`
-/

namespace A311626.P6009210048018741871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311523 n - A004273 n).toNat

end

end A311626.P6009210048018741871

namespace A311626

/-- `A004275(A311523(n)-A004273(n))` -/
def P6009210048018741871.Spec : Prop :=
  ∀ n, P6009210048018741871.a n = A311626 n

end A311626

/-! ## A311626.P1490034870949456386

`A103517(A311523(n)-A005408(n))`
-/

namespace A311626.P1490034870949456386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A311523 n - A005408 n).toNat

end

end A311626.P1490034870949456386

namespace A311626

/-- `A103517(A311523(n)-A005408(n))` -/
def P1490034870949456386.Spec : Prop :=
  ∀ n, P1490034870949456386.a n = A311626 n

end A311626

/-! ## A311626.P6859369671975249936

`A004273(A311523(n)-n)-A004273(n)`
-/

namespace A311626.P6859369671975249936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A311523 n - (n : ℤ)).toNat - A004273 n

end

end A311626.P6859369671975249936

namespace A311626

/-- `A004273(A311523(n)-n)-A004273(n)` -/
def P6859369671975249936.Spec : Prop :=
  ∀ n, P6859369671975249936.a n = A311626 n

end A311626

/-! ## A311626.P5787284851415117939

`A008574(n)+A005843(A311523(n)-A008574(n))`
-/

namespace A311626.P5787284851415117939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A311523 n - A008574 n).toNat

end

end A311626.P5787284851415117939

namespace A311626

/-- `A008574(n)+A005843(A311523(n)-A008574(n))` -/
def P5787284851415117939.Spec : Prop :=
  ∀ n, P5787284851415117939.a n = A311626 n

end A311626

/-! ## A311626.P9989166286283292441

`A005843(A311523(n))-A008574(n)`
-/

namespace A311626.P9989166286283292441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311523 n).toNat - A008574 n

end

end A311626.P9989166286283292441

namespace A311626

/-- `A005843(A311523(n))-A008574(n)` -/
def P9989166286283292441.Spec : Prop :=
  ∀ n, P9989166286283292441.a n = A311626 n

end A311626

/-! ## A311626.P7389294304275284264

`A004275(A311523(n))-A004275(2*n)`
-/

namespace A311626.P7389294304275284264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311523 n).toNat - A004275 (2 * n)

end

end A311626.P7389294304275284264

namespace A311626

/-- `A004275(A311523(n))-A004275(2*n)` -/
def P7389294304275284264.Spec : Prop :=
  ∀ n, P7389294304275284264.a n = A311626 n

end A311626

/-! ## A311626.P13745834839373586720

`A005843(A311523(n))+n-A008706(n)`
-/

namespace A311626.P13745834839373586720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311523 n).toNat + ((n : ℤ) - A008706 n)

end

end A311626.P13745834839373586720

namespace A311626

/-- `A005843(A311523(n))+n-A008706(n)` -/
def P13745834839373586720.Spec : Prop :=
  ∀ n, P13745834839373586720.a n = A311626 n

end A311626

/-! ## A311626.P3738217630688723091

`abs(A008592(n)-A315728(n))`
-/

namespace A311626.P3738217630688723091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315728 n|

end

end A311626.P3738217630688723091

namespace A311626

/-- `abs(A008592(n)-A315728(n))` -/
def P3738217630688723091.Spec : Prop :=
  ∀ n, P3738217630688723091.a n = A311626 n

end A311626

/-! ## A311626.P13811715508919055341

`2*A008706(n)-A315728(n)`
-/

namespace A311626.P13811715508919055341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315728 n

end

end A311626.P13811715508919055341

namespace A311626

/-- `2*A008706(n)-A315728(n)` -/
def P13811715508919055341.Spec : Prop :=
  ∀ n, P13811715508919055341.a n = A311626 n

end A311626

/-! ## A311626.P7813822078160999268

`A008458(n)+A008574(n)-A315728(n)`
-/

namespace A311626.P7813822078160999268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315728 n)

end

end A311626.P7813822078160999268

namespace A311626

/-- `A008458(n)+A008574(n)-A315728(n)` -/
def P7813822078160999268.Spec : Prop :=
  ∀ n, P7813822078160999268.a n = A311626 n

end A311626

/-! ## A311626.P9752631748888474070

`A315728(n)-A005843(A315728(n)-A008706(n))`
-/

namespace A311626.P9752631748888474070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315728 n - A005843 (A315728 n - A008706 n).toNat

end

end A311626.P9752631748888474070

namespace A311626

/-- `A315728(n)-A005843(A315728(n)-A008706(n))` -/
def P9752631748888474070.Spec : Prop :=
  ∀ n, P9752631748888474070.a n = A311626 n

end A311626

/-! ## A311626.P7900382782052203184

`A004442(A017281(n)-A315728(n))`
-/

namespace A311626.P7900382782052203184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315728 n).toNat

end

end A311626.P7900382782052203184

namespace A311626

/-- `A004442(A017281(n)-A315728(n))` -/
def P7900382782052203184.Spec : Prop :=
  ∀ n, P7900382782052203184.a n = A311626 n

end A311626

/-! ## A311626.P6294046369207442795

`A005843(A008706(n))-A315728(n)`
-/

namespace A311626.P6294046369207442795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315728 n

end

end A311626.P6294046369207442795

namespace A311626

/-- `A005843(A008706(n))-A315728(n)` -/
def P6294046369207442795.Spec : Prop :=
  ∀ n, P6294046369207442795.a n = A311626 n

end A311626

/-!
# A311627: Coordination sequence Gal.6.190.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311627, there is no canonical definition to state claims against.
-/

/-! ## A311627.P9150004257469483541

`A311628(n)-A102683(A029985(n+1))`
-/

namespace A311627.P9150004257469483541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311628 n - A102683 (A029985 (n + 1)).toNat

end

end A311627.P9150004257469483541

/-! ## A311627.P15035761678023841431

`A311628(A115009(∑[n]))`
-/

namespace A311627.P15035761678023841431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311628 (A115009 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311627.P15035761678023841431

/-! ## A311627.P11493938157956977162

`A311628(n)%A046500(n)`
-/

namespace A311627.P11493938157956977162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311628 n) (A046500 n)

end

end A311627.P11493938157956977162

/-! ## A311627.P5854997717731211143

`A316524(A017474(n))+A311628(n)`
-/

namespace A311627.P5854997717731211143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A017474 n).toNat + A311628 n

end

end A311627.P5854997717731211143

/-! ## A311627.P13658761142156429433

`lcm(A311628(n), A343223(A033995(n)))`
-/

namespace A311627.P13658761142156429433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A311628 n) (A343223 (A033995 n).toNat)

end

end A311627.P13658761142156429433

/-!
# A311628: Coordination sequence Gal.6.174.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311628, there is no canonical definition to state claims against.
-/

/-! ## A311628.P8789068172165600162

`A311627(n)+A102683(A029985(n+1))`
-/

namespace A311628.P8789068172165600162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311627 n + A102683 (A029985 (n + 1)).toNat

end

end A311628.P8789068172165600162

/-!
# A311629: Coordination sequence Gal.6.189.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311629, there is no canonical definition to state claims against.
-/

/-! ## A311629.P7092243160282810451

`A311630(n)-A185284(A008578(n+1))`
-/

namespace A311629.P7092243160282810451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311630 n - A185284 (A008578 (n + 1)).toNat

end

end A311629.P7092243160282810451

/-! ## A311629.P7439390698958831112

`A311630(n)-A185284(A134930(n+1))`
-/

namespace A311629.P7439390698958831112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311630 n - A185284 (A134930 (n + 1)).toNat

end

end A311629.P7439390698958831112

/-! ## A311629.P12754663150854491336

`A311630(n)-A100910(A263673(2*n+3))`
-/

namespace A311629.P12754663150854491336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311630 n - A100910 (A263673 (2 * n + 3)).toNat

end

end A311629.P12754663150854491336

/-! ## A311629.P13100596111932100622

`A311630(log2(A233569(2^n)))`
-/

namespace A311629.P13100596111932100622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311630 (SequenceMachineLib.roundAway (Real.logb 2 (A233569 (2 ^ n) : ℝ))).toNat

end

end A311629.P13100596111932100622

/-! ## A311629.P10533403287105084216

`A311630(n)^A061467(n)!`
-/

namespace A311629.P10533403287105084216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311630 n ^ Nat.factorial (A061467 n).toNat

end

end A311629.P10533403287105084216

/-!
# A311631: Coordination sequence Gal.6.285.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311631, there is no canonical definition to state claims against.
-/

/-! ## A311631.P5311324171774357828

`A311632(n)-A125005(A000601(n))`
-/

namespace A311631.P5311324171774357828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311632 n - A125005 (A000601 n).toNat

end

end A311631.P5311324171774357828

/-! ## A311631.P10181095046002248413

`A311632(log2(A233569(2^n)))`
-/

namespace A311631.P10181095046002248413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311632 (SequenceMachineLib.roundAway (Real.logb 2 (A233569 (2 ^ n) : ℝ))).toNat

end

end A311631.P10181095046002248413

/-! ## A311631.P4530282801715261342

`A311632(n)^A289481(n)!`
-/

namespace A311631.P4530282801715261342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311632 n ^ Nat.factorial (A289481 n).toNat

end

end A311631.P4530282801715261342

/-! ## A311631.P1121389694091184032

`A311632(n)+A015161(A052905(n))`
-/

namespace A311631.P1121389694091184032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311632 n + A015161 (A052905 n).toNat

end

end A311631.P1121389694091184032

/-! ## A311631.P3712101513554007864

`A355454(A202058(n))+A311632(n)`
-/

namespace A311631.P3712101513554007864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355454 (A202058 n).toNat + A311632 n

end

end A311631.P3712101513554007864

/-!
# A311632: Coordination sequence Gal.6.271.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311632, there is no canonical definition to state claims against.
-/

/-! ## A311632.P4645704647831240814

`A311631(n)+A125005(A000601(n))`
-/

namespace A311632.P4645704647831240814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311631 n + A125005 (A000601 n).toNat

end

end A311632.P4645704647831240814

/-!
# A311633: Coordination sequence Gal.5.100.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311633, the canonical program `A311633.P17424544686150266232` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311633 has offset 0).

The definition of A311633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311633.P17424544686150266232

`A314736(n)-A128834(A004396(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A311633

/-- `A314736(n)-A128834(A004396(n))` -/
def P17424544686150266232.Spec : Prop :=
  ∀ n, P17424544686150266232.a n = A311633 n

theorem P17424544686150266232.correct : P17424544686150266232.Spec := by
  intro n
  simp only [A311633]

end A311633

/-! ## A311633.P9330179896177208579

`A312207(n)-Δ[A011862(n)]`
-/

namespace A311633.P9330179896177208579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312207 n - (f1 (n + 1) - f1 n)

end

end A311633.P9330179896177208579

namespace A311633

/-- `A312207(n)-Δ[A011862(n)]` -/
def P9330179896177208579.Spec : Prop :=
  ∀ n, P9330179896177208579.a n = A311633 n

end A311633

/-! ## A311633.P4005246647721001267

`A312683(n)-Δ[2*A011862(n)]`
-/

namespace A311633.P4005246647721001267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312683 n - (f1 (n + 1) - f1 n)

end

end A311633.P4005246647721001267

namespace A311633

/-- `A312683(n)-Δ[2*A011862(n)]` -/
def P4005246647721001267.Spec : Prop :=
  ∀ n, P4005246647721001267.a n = A311633 n

end A311633

/-! ## A311633.P1554188545524318458

`abs(A008592(n)-A315727(n))`
-/

namespace A311633.P1554188545524318458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315727 n|

end

end A311633.P1554188545524318458

namespace A311633

/-- `abs(A008592(n)-A315727(n))` -/
def P1554188545524318458.Spec : Prop :=
  ∀ n, P1554188545524318458.a n = A311633 n

end A311633

/-! ## A311633.P3358622648653342119

`2*A008706(n)-A315727(n)`
-/

namespace A311633.P3358622648653342119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315727 n

end

end A311633.P3358622648653342119

namespace A311633

/-- `2*A008706(n)-A315727(n)` -/
def P3358622648653342119.Spec : Prop :=
  ∀ n, P3358622648653342119.a n = A311633 n

end A311633

/-! ## A311633.P5354539821820125836

`A008458(n)+A008574(n)-A315727(n)`
-/

namespace A311633.P5354539821820125836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315727 n)

end

end A311633.P5354539821820125836

namespace A311633

/-- `A008458(n)+A008574(n)-A315727(n)` -/
def P5354539821820125836.Spec : Prop :=
  ∀ n, P5354539821820125836.a n = A311633 n

end A311633

/-! ## A311633.P2081658422234086719

`A315727(n)-A005843(A315727(n)-A008706(n))`
-/

namespace A311633.P2081658422234086719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315727 n - A005843 (A315727 n - A008706 n).toNat

end

end A311633.P2081658422234086719

namespace A311633

/-- `A315727(n)-A005843(A315727(n)-A008706(n))` -/
def P2081658422234086719.Spec : Prop :=
  ∀ n, P2081658422234086719.a n = A311633 n

end A311633

/-! ## A311633.P2171566430019107842

`2*A313799(n)-A008458(n)`
-/

namespace A311633.P2171566430019107842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313799 n - A008458 n

end

end A311633.P2171566430019107842

namespace A311633

/-- `2*A313799(n)-A008458(n)` -/
def P2171566430019107842.Spec : Prop :=
  ∀ n, P2171566430019107842.a n = A311633 n

end A311633

/-! ## A311633.P6994332135290331022

`A103517(A313799(n)-A016777(n))`
-/

namespace A311633.P6994332135290331022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313799 n - A016777 n).toNat

end

end A311633.P6994332135290331022

namespace A311633

/-- `A103517(A313799(n)-A016777(n))` -/
def P6994332135290331022.Spec : Prop :=
  ∀ n, P6994332135290331022.a n = A311633 n

end A311633

/-! ## A311633.P11432037895010197023

`A103517(A313799(n)%A016777(n))`
-/

namespace A311633.P11432037895010197023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A313799 n) (A016777 n)).toNat

end

end A311633.P11432037895010197023

namespace A311633

/-- `A103517(A313799(n)%A016777(n))` -/
def P11432037895010197023.Spec : Prop :=
  ∀ n, P11432037895010197023.a n = A311633 n

end A311633

/-! ## A311633.P10238549398083634455

`A004277(A313799(n)-(A004277(n)+n))`
-/

namespace A311633.P10238549398083634455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313799 n - (A004277 n + (n : ℤ))).toNat

end

end A311633.P10238549398083634455

namespace A311633

/-- `A004277(A313799(n)-(A004277(n)+n))` -/
def P10238549398083634455.Spec : Prop :=
  ∀ n, P10238549398083634455.a n = A311633 n

end A311633

/-! ## A311633.P11238152050438637675

`A004277(A313799(n)-n-A004277(n))`
-/

namespace A311633.P11238152050438637675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313799 n - (n : ℤ) - A004277 n).toNat

end

end A311633.P11238152050438637675

namespace A311633

/-- `A004277(A313799(n)-n-A004277(n))` -/
def P11238152050438637675.Spec : Prop :=
  ∀ n, P11238152050438637675.a n = A311633 n

end A311633

/-! ## A311633.P3658923761637369229

`A008458(n)-A005843(A008458(n)-A313799(n))`
-/

namespace A311633.P3658923761637369229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A313799 n).toNat

end

end A311633.P3658923761637369229

namespace A311633

/-- `A008458(n)-A005843(A008458(n)-A313799(n))` -/
def P3658923761637369229.Spec : Prop :=
  ∀ n, P3658923761637369229.a n = A311633 n

end A311633

/-! ## A311633.P15957452417786684676

`A004442(A017281(n)-A315727(n))`
-/

namespace A311633.P15957452417786684676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315727 n).toNat

end

end A311633.P15957452417786684676

namespace A311633

/-- `A004442(A017281(n)-A315727(n))` -/
def P15957452417786684676.Spec : Prop :=
  ∀ n, P15957452417786684676.a n = A311633 n

end A311633

/-! ## A311633.P7277796265744554726

`A005843(A008706(n))-A315727(n)`
-/

namespace A311633.P7277796265744554726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315727 n

end

end A311633.P7277796265744554726

namespace A311633

/-- `A005843(A008706(n))-A315727(n)` -/
def P7277796265744554726.Spec : Prop :=
  ∀ n, P7277796265744554726.a n = A311633 n

end A311633

/-! ## A311633.P8399313850754652872

`A005843(A313799(n))-A008458(n)`
-/

namespace A311633.P8399313850754652872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313799 n).toNat - A008458 n

end

end A311633.P8399313850754652872

namespace A311633

/-- `A005843(A313799(n))-A008458(n)` -/
def P8399313850754652872.Spec : Prop :=
  ∀ n, P8399313850754652872.a n = A311633 n

end A311633

/-! ## A311633.P7838173131223591685

`A312207(n)-A033183(A004771(n))`
-/

namespace A311633.P7838173131223591685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312207 n - A033183 (A004771 n).toNat

end

end A311633.P7838173131223591685

namespace A311633

/-- `A312207(n)-A033183(A004771(n))` -/
def P7838173131223591685.Spec : Prop :=
  ∀ n, P7838173131223591685.a n = A311633 n

end A311633

/-!
# A311634: Coordination sequence Gal.6.233.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311634, the canonical program `A311634.P232310208684928047` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311634 has offset 0).

The definition of A311634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311634.P232310208684928047

`A313568(n)-A253262(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A311634

/-- `A313568(n)-A253262(n)` -/
def P232310208684928047.Spec : Prop :=
  ∀ n, P232310208684928047.a n = A311634 n

theorem P232310208684928047.correct : P232310208684928047.Spec := by
  intro n
  simp only [A311634]

end A311634

/-! ## A311634.P5929137496741572429

`abs(A008592(n)-A315726(n))`
-/

namespace A311634.P5929137496741572429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315726 n|

end

end A311634.P5929137496741572429

namespace A311634

/-- `abs(A008592(n)-A315726(n))` -/
def P5929137496741572429.Spec : Prop :=
  ∀ n, P5929137496741572429.a n = A311634 n

end A311634

/-! ## A311634.P14589728813705880724

`2*A311535(n)-A008574(n)`
-/

namespace A311634.P14589728813705880724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311535 n - A008574 n

end

end A311634.P14589728813705880724

namespace A311634

/-- `2*A311535(n)-A008574(n)` -/
def P14589728813705880724.Spec : Prop :=
  ∀ n, P14589728813705880724.a n = A311634 n

end A311634

/-! ## A311634.P6641434933513978184

`A315630(n)-2*A253262(n)`
-/

namespace A311634.P6641434933513978184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315630 n - 2 * A253262 n

end

end A311634.P6641434933513978184

namespace A311634

/-- `A315630(n)-2*A253262(n)` -/
def P6641434933513978184.Spec : Prop :=
  ∀ n, P6641434933513978184.a n = A311634 n

end A311634

/-! ## A311634.P7170982289095735715

`A315203(n)-2*A330025(n)`
-/

namespace A311634.P7170982289095735715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315203 n - 2 * A330025 n

end

end A311634.P7170982289095735715

namespace A311634

/-- `A315203(n)-2*A330025(n)` -/
def P7170982289095735715.Spec : Prop :=
  ∀ n, P7170982289095735715.a n = A311634 n

end A311634

/-! ## A311634.P16052932748397869207

`A004275(A311535(n)-A004273(n))`
-/

namespace A311634.P16052932748397869207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311535 n - A004273 n).toNat

end

end A311634.P16052932748397869207

namespace A311634

/-- `A004275(A311535(n)-A004273(n))` -/
def P16052932748397869207.Spec : Prop :=
  ∀ n, P16052932748397869207.a n = A311634 n

end A311634

/-! ## A311634.P1300651509367455933

`A008458(n)+A008574(n)-A315726(n)`
-/

namespace A311634.P1300651509367455933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315726 n)

end

end A311634.P1300651509367455933

namespace A311634

/-- `A008458(n)+A008574(n)-A315726(n)` -/
def P1300651509367455933.Spec : Prop :=
  ∀ n, P1300651509367455933.a n = A311634 n

end A311634

/-! ## A311634.P4357135416512756189

`A314740(n)-A330025(A330025(n)+n)`
-/

namespace A311634.P4357135416512756189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314740 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A311634.P4357135416512756189

namespace A311634

/-- `A314740(n)-A330025(A330025(n)+n)` -/
def P4357135416512756189.Spec : Prop :=
  ∀ n, P4357135416512756189.a n = A311634 n

end A311634

/-! ## A311634.P6426126586910792764

`A004273(A311535(n)-n)-A004273(n)`
-/

namespace A311634.P6426126586910792764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A311535 n - (n : ℤ)).toNat - A004273 n

end

end A311634.P6426126586910792764

namespace A311634

/-- `A004273(A311535(n)-n)-A004273(n)` -/
def P6426126586910792764.Spec : Prop :=
  ∀ n, P6426126586910792764.a n = A311634 n

end A311634

/-! ## A311634.P4297431266828397900

`A312979(n)-A330025(n-A330025(n))`
-/

namespace A311634.P4297431266828397900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312979 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A311634.P4297431266828397900

namespace A311634

/-- `A312979(n)-A330025(n-A330025(n))` -/
def P4297431266828397900.Spec : Prop :=
  ∀ n, P4297431266828397900.a n = A311634 n

end A311634

/-! ## A311634.P3299764547278309380

`∑{d}[A008592(n)-A315726(n), A000010(#)]`
-/

namespace A311634.P3299764547278309380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A311634.P3299764547278309380

namespace A311634

/-- `∑{d}[A008592(n)-A315726(n), A000010(#)]` -/
def P3299764547278309380.Spec : Prop :=
  ∀ n, P3299764547278309380.a n = A311634 n

end A311634

/-! ## A311634.P10268790636494796389

`A008574(n)+A005843(A311535(n)-A008574(n))`
-/

namespace A311634.P10268790636494796389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A311535 n - A008574 n).toNat

end

end A311634.P10268790636494796389

namespace A311634

/-- `A008574(n)+A005843(A311535(n)-A008574(n))` -/
def P10268790636494796389.Spec : Prop :=
  ∀ n, P10268790636494796389.a n = A311634 n

end A311634

/-! ## A311634.P9458067840746252591

`A005843(A311535(n))-A008574(n)`
-/

namespace A311634.P9458067840746252591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311535 n).toNat - A008574 n

end

end A311634.P9458067840746252591

namespace A311634

/-- `A005843(A311535(n))-A008574(n)` -/
def P9458067840746252591.Spec : Prop :=
  ∀ n, P9458067840746252591.a n = A311634 n

end A311634

/-! ## A311634.P7363639083368467375

`A004275(A311535(n))-A004275(2*n)`
-/

namespace A311634.P7363639083368467375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311535 n).toNat - A004275 (2 * n)

end

end A311634.P7363639083368467375

namespace A311634

/-- `A004275(A311535(n))-A004275(2*n)` -/
def P7363639083368467375.Spec : Prop :=
  ∀ n, P7363639083368467375.a n = A311634 n

end A311634

/-! ## A311634.P2204083569975947784

`A005843(A311535(n))+n-A008706(n)`
-/

namespace A311634.P2204083569975947784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311535 n).toNat + ((n : ℤ) - A008706 n)

end

end A311634.P2204083569975947784

namespace A311634

/-- `A005843(A311535(n))+n-A008706(n)` -/
def P2204083569975947784.Spec : Prop :=
  ∀ n, P2204083569975947784.a n = A311634 n

end A311634

/-! ## A311634.P5483345232006036386

`2*A313801(n)-A008458(n)`
-/

namespace A311634.P5483345232006036386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313801 n - A008458 n

end

end A311634.P5483345232006036386

namespace A311634

/-- `2*A313801(n)-A008458(n)` -/
def P5483345232006036386.Spec : Prop :=
  ∀ n, P5483345232006036386.a n = A311634 n

end A311634

/-! ## A311634.P5543439778106520598

`A008458(n)-A005843(A008458(n)-A313801(n))`
-/

namespace A311634.P5543439778106520598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A313801 n).toNat

end

end A311634.P5543439778106520598

namespace A311634

/-- `A008458(n)-A005843(A008458(n)-A313801(n))` -/
def P5543439778106520598.Spec : Prop :=
  ∀ n, P5543439778106520598.a n = A311634 n

end A311634

/-! ## A311634.P12182058628482315622

`A005843(A313801(n))-A008458(n)`
-/

namespace A311634.P12182058628482315622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313801 n).toNat - A008458 n

end

end A311634.P12182058628482315622

namespace A311634

/-- `A005843(A313801(n))-A008458(n)` -/
def P12182058628482315622.Spec : Prop :=
  ∀ n, P12182058628482315622.a n = A311634 n

end A311634

/-!
# A311635: Coordination sequence Gal.6.234.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311635, the canonical program `A311635.P9689999517876965795` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311635 has offset 0).

The definition of A311635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2389 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311635.P9689999517876965795

`A311553(n)+A004525(A311553(n)-A311331(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A311635

/-- `A311553(n)+A004525(A311553(n)-A311331(n))` -/
def P9689999517876965795.Spec : Prop :=
  ∀ n, P9689999517876965795.a n = A311635 n

theorem P9689999517876965795.correct : P9689999517876965795.Spec := by
  intro n
  simp only [A311635]

end A311635

/-! ## A311635.P6021196970196657212

`abs(A008592(n)-A315725(n))`
-/

namespace A311635.P6021196970196657212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315725 n|

end

end A311635.P6021196970196657212

namespace A311635

/-- `abs(A008592(n)-A315725(n))` -/
def P6021196970196657212.Spec : Prop :=
  ∀ n, P6021196970196657212.a n = A311635 n

end A311635

/-! ## A311635.P11718858477478961853

`2*A008706(n)-A315725(n)`
-/

namespace A311635.P11718858477478961853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315725 n

end

end A311635.P11718858477478961853

namespace A311635

/-- `2*A008706(n)-A315725(n)` -/
def P11718858477478961853.Spec : Prop :=
  ∀ n, P11718858477478961853.a n = A311635 n

end A311635

/-! ## A311635.P2527547411035847539

`xor(1, A017281(n)-A315725(n))`
-/

namespace A311635.P2527547411035847539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A315725 n)

end

end A311635.P2527547411035847539

namespace A311635

/-- `xor(1, A017281(n)-A315725(n))` -/
def P2527547411035847539.Spec : Prop :=
  ∀ n, P2527547411035847539.a n = A311635 n

end A311635

/-! ## A311635.P1217167179017860664

`A000038(n)+A008592(n)-A315725(n)`
-/

namespace A311635.P1217167179017860664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A315725 n)

end

end A311635.P1217167179017860664

namespace A311635

/-- `A000038(n)+A008592(n)-A315725(n)` -/
def P1217167179017860664.Spec : Prop :=
  ∀ n, P1217167179017860664.a n = A311635 n

end A311635

/-! ## A311635.P6295177715679401731

`A008458(n)+A008574(n)-A315725(n)`
-/

namespace A311635.P6295177715679401731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315725 n)

end

end A311635.P6295177715679401731

namespace A311635

/-- `A008458(n)+A008574(n)-A315725(n)` -/
def P6295177715679401731.Spec : Prop :=
  ∀ n, P6295177715679401731.a n = A311635 n

end A311635

/-! ## A311635.P15233493951255428214

`2*A313802(n)-A008458(n)`
-/

namespace A311635.P15233493951255428214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313802 n - A008458 n

end

end A311635.P15233493951255428214

namespace A311635

/-- `2*A313802(n)-A008458(n)` -/
def P15233493951255428214.Spec : Prop :=
  ∀ n, P15233493951255428214.a n = A311635 n

end A311635

/-! ## A311635.P11028207458098831757

`2*A313802(n)-A008486(A005843(n))`
-/

namespace A311635.P11028207458098831757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313802 n - A008486 (A005843 n).toNat

end

end A311635.P11028207458098831757

namespace A311635

/-- `2*A313802(n)-A008486(A005843(n))` -/
def P11028207458098831757.Spec : Prop :=
  ∀ n, P11028207458098831757.a n = A311635 n

end A311635

/-! ## A311635.P17353062166584322912

`A008458(n)-A005843(A008458(n)-A313802(n))`
-/

namespace A311635.P17353062166584322912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A313802 n).toNat

end

end A311635.P17353062166584322912

namespace A311635

/-- `A008458(n)-A005843(A008458(n)-A313802(n))` -/
def P17353062166584322912.Spec : Prop :=
  ∀ n, P17353062166584322912.a n = A311635 n

end A311635

/-! ## A311635.P10724978936421608584

`A180004(A311553(n))`
-/

namespace A311635.P10724978936421608584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A311553 n).toNat

end

end A311635.P10724978936421608584

namespace A311635

/-- `A180004(A311553(n))` -/
def P10724978936421608584.Spec : Prop :=
  ∀ n, P10724978936421608584.a n = A311635 n

end A311635

/-! ## A311635.P11400661420721777233

`A004442(A017281(n)-A315725(n))`
-/

namespace A311635.P11400661420721777233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315725 n).toNat

end

end A311635.P11400661420721777233

namespace A311635

/-- `A004442(A017281(n)-A315725(n))` -/
def P11400661420721777233.Spec : Prop :=
  ∀ n, P11400661420721777233.a n = A311635 n

end A311635

/-! ## A311635.P17512240708451275386

`A005843(A008706(n))-A315725(n)`
-/

namespace A311635.P17512240708451275386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315725 n

end

end A311635.P17512240708451275386

namespace A311635

/-- `A005843(A008706(n))-A315725(n)` -/
def P17512240708451275386.Spec : Prop :=
  ∀ n, P17512240708451275386.a n = A311635 n

end A311635

/-! ## A311635.P3867361390181016604

`A005843(A313802(n))-A008458(n)`
-/

namespace A311635.P3867361390181016604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313802 n).toNat - A008458 n

end

end A311635.P3867361390181016604

namespace A311635

/-- `A005843(A313802(n))-A008458(n)` -/
def P3867361390181016604.Spec : Prop :=
  ∀ n, P3867361390181016604.a n = A311635 n

end A311635

/-! ## A311635.P16901760592704497475

`A005408(A313802(n))-A271114(n)`
-/

namespace A311635.P16901760592704497475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A313802 n).toNat - A271114 n

end

end A311635.P16901760592704497475

namespace A311635

/-- `A005408(A313802(n))-A271114(n)` -/
def P16901760592704497475.Spec : Prop :=
  ∀ n, P16901760592704497475.a n = A311635 n

end A311635

/-! ## A311635.P15316748953335505021

`A005843(A313802(n))-(A008706(n)+n)`
-/

namespace A311635.P15316748953335505021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313802 n).toNat - (A008706 n + (n : ℤ))

end

end A311635.P15316748953335505021

namespace A311635

/-- `A005843(A313802(n))-(A008706(n)+n)` -/
def P15316748953335505021.Spec : Prop :=
  ∀ n, P15316748953335505021.a n = A311635 n

end A311635

/-! ## A311635.P4128600021239784041

`A005843(A313802(n))-A008486(A005843(n))`
-/

namespace A311635.P4128600021239784041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313802 n).toNat - A008486 (A005843 n).toNat

end

end A311635.P4128600021239784041

namespace A311635

/-- `A005843(A313802(n))-A008486(A005843(n))` -/
def P4128600021239784041.Spec : Prop :=
  ∀ n, P4128600021239784041.a n = A311635 n

end A311635

/-! ## A311635.P10539301172535767859

`A312209(n)-A004525(A312209(n)-A311553(n))`
-/

namespace A311635.P10539301172535767859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312209 n - A004525 (A312209 n - A311553 n).toNat

end

end A311635.P10539301172535767859

namespace A311635

/-- `A312209(n)-A004525(A312209(n)-A311553(n))` -/
def P10539301172535767859.Spec : Prop :=
  ∀ n, P10539301172535767859.a n = A311635 n

end A311635

/-!
# A311636: Coordination sequence Gal.5.223.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311636, there is no canonical definition to state claims against.
-/

/-! ## A311636.P730591302395380477

`A311641(n)-A338203(A212964(n))`
-/

namespace A311636.P730591302395380477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311641 n - A338203 (A212964 n).toNat

end

end A311636.P730591302395380477

/-! ## A311636.P15052986760105601498

`A240849(n+1)-A325699(A265067(n))`
-/

namespace A311636.P15052986760105601498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240849 (n + 1) - A325699 (A265067 n).toNat

end

end A311636.P15052986760105601498

/-!
# A311637: Coordination sequence Gal.5.80.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311637, there is no canonical definition to state claims against.
-/

/-! ## A311637.P5435129444556433518

`A311638(n)-A025456(A252514(n+1))`
-/

namespace A311637.P5435129444556433518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311638 n - A025456 (A252514 (n + 1)).toNat

end

end A311637.P5435129444556433518

/-! ## A311637.P17885081440886621829

`A311638(A062399(n))`
-/

namespace A311637.P17885081440886621829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311638 (A062399 n).toNat

end

end A311637.P17885081440886621829

/-! ## A311637.P4586162836881977961

`A311638(A120126(n))`
-/

namespace A311637.P4586162836881977961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311638 (A120126 n).toNat

end

end A311637.P4586162836881977961

/-! ## A311637.P16621523373868746084

`A311638(A351870(n))`
-/

namespace A311637.P16621523373868746084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311638 (A351870 n).toNat

end

end A311637.P16621523373868746084

/-! ## A311637.P10109820127090852860

`A311638(A087051(n))`
-/

namespace A311637.P10109820127090852860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311638 (A087051 n).toNat

end

end A311637.P10109820127090852860

/-!
# A311638: Coordination sequence Gal.5.75.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311638, there is no canonical definition to state claims against.
-/

/-! ## A311638.P12297813692831754057

`or(A178798(A133263(n)), A311637(n))`
-/

namespace A311638.P12297813692831754057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178798 (A133263 n).toNat) (A311637 n)

end

end A311638.P12297813692831754057

/-!
# A311639: Coordination sequence Gal.6.388.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311639, there is no canonical definition to state claims against.
-/

/-! ## A311639.P4477033930962579186

`xor(A250120(n), A326644(A000326(n)))`
-/

namespace A311639.P4477033930962579186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A250120 n) (A326644 (A000326 n).toNat)

end

end A311639.P4477033930962579186

/-! ## A311639.P4170136030486556154

`xor(A250120(n), A356227(A248578(2*(n+1))))`
-/

namespace A311639.P4170136030486556154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A250120 n) (A356227 (A248578 (2 * (n + 1))).toNat)

end

end A311639.P4170136030486556154

/-! ## A311639.P6539158244841061831

`A140491(n+1)-A064353(A032153(3*n+2))`
-/

namespace A311639.P6539158244841061831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140491 (n + 1) - A064353 (A032153 (3 * n + 2)).toNat

end

end A311639.P6539158244841061831

/-! ## A311639.P14100674749700908386

`A351393(A310686(n+1))`
-/

namespace A311639.P14100674749700908386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351393 (A310686 (n + 1)).toNat

end

end A311639.P14100674749700908386

/-! ## A311639.P6335328060005307098

`record[and(A188005(2*(n+1)), A188033(n+1))]`
-/

namespace A311639.P6335328060005307098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188005 (2 * (n + 1))) (A188033 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311639.P6335328060005307098

/-!
# A311640: Coordination sequence Gal.6.191.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311640, there is no canonical definition to state claims against.
-/

/-! ## A311640.P208405854886461351

`A311641(n)-A185284(A003309(n+1))`
-/

namespace A311640.P208405854886461351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311641 n - A185284 (A003309 (n + 1)).toNat

end

end A311640.P208405854886461351

/-! ## A311640.P17503864423394719806

`A311641(n)-A185284(A047486(2*(n+1)))`
-/

namespace A311640.P17503864423394719806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311641 n - A185284 (A047486 (2 * (n + 1))).toNat

end

end A311640.P17503864423394719806

/-! ## A311640.P12915295840019052817

`A311641(n^gcd(11, n))`
-/

namespace A311640.P12915295840019052817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311641 (n ^ Nat.gcd 11 n)

end

end A311640.P12915295840019052817

/-! ## A311640.P9562489857711365693

`A311641(A062399(n))`
-/

namespace A311640.P9562489857711365693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311641 (A062399 n).toNat

end

end A311640.P9562489857711365693

/-! ## A311640.P17418987027467784817

`A311641(A120126(n))`
-/

namespace A311640.P17418987027467784817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311641 (A120126 n).toNat

end

end A311640.P17418987027467784817

/-!
# A311641: Coordination sequence Gal.6.175.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311641, there is no canonical definition to state claims against.
-/

/-! ## A311641.P7487605869852350605

`A311640(n)+A185284(A003309(n+1))`
-/

namespace A311641.P7487605869852350605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311640 n + A185284 (A003309 (n + 1)).toNat

end

end A311641.P7487605869852350605

/-! ## A311641.P15554099988571527727

`A311640(n)+A185284(A047486(2*(n+1)))`
-/

namespace A311641.P15554099988571527727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311640 n + A185284 (A047486 (2 * (n + 1))).toNat

end

end A311641.P15554099988571527727

/-!
# A311642: Coordination sequence Gal.6.454.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311642, there is no canonical definition to state claims against.
-/

/-! ## A311642.P9877322177642400288

`A276340(n)+A133886(A087359(n+1))`
-/

namespace A311642.P9877322177642400288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276340 n + A133886 (A087359 (n + 1)).toNat

end

end A311642.P9877322177642400288

/-! ## A311642.P6740866011414396139

`A181062(A090106(3*(n+1))-A033306(n))`
-/

namespace A311642.P6740866011414396139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (A090106 (3 * (n + 1)) - A033306 n).toNat

end

end A311642.P6740866011414396139

/-! ## A311642.P8411253606072879861

`A284013(A008458(n)+1)/A056594(A002978(n+4))`
-/

namespace A311642.P8411253606072879861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284013 (A008458 n + 1).toNat : ℚ) / (A056594 (A002978 (n + 4)).toNat : ℚ)

end

end A311642.P8411253606072879861

/-!
# A311643: Coordination sequence Gal.6.455.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311643, there is no canonical definition to state claims against.
-/

/-! ## A311643.P14135850595051241471

`A311601(n)+A057918(A168607(n))`
-/

namespace A311643.P14135850595051241471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311601 n + A057918 (A168607 n).toNat

end

end A311643.P14135850595051241471

/-! ## A311643.P13252967807629824272

`A314927(n)-A046067(A032555(n+1))`
-/

namespace A311643.P13252967807629824272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314927 n - A046067 (A032555 (n + 1)).toNat

end

end A311643.P13252967807629824272

/-! ## A311643.P12694327485220188440

`A314927(n)-A046067(A032559(n+1))`
-/

namespace A311643.P12694327485220188440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314927 n - A046067 (A032559 (n + 1)).toNat

end

end A311643.P12694327485220188440

/-!
# A311644: Coordination sequence Gal.6.504.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311644, there is no canonical definition to state claims against.
-/

/-! ## A311644.P16180929457335442342

`xor(A122200(A001045(n)), A301298(n))`
-/

namespace A311644.P16180929457335442342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A122200 (A001045 n).toNat) (A301298 n)

end

end A311644.P16180929457335442342

/-! ## A311644.P6895990257956579928

`A330122(n+1)+A151843(A092201(n))`
-/

namespace A311644.P6895990257956579928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330122 (n + 1) + A151843 (A092201 n).toNat

end

end A311644.P6895990257956579928

/-! ## A311644.P6466186948122681326

`A325801(A094803(n+1))+A311185(n)`
-/

namespace A311644.P6466186948122681326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (A094803 (n + 1)).toNat + A311185 n

end

end A311644.P6466186948122681326

/-! ## A311644.P3526761562523540691

`A314786(n)-A007828(A143015(n+1))`
-/

namespace A311644.P3526761562523540691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314786 n - A007828 (A143015 (n + 1)).toNat

end

end A311644.P3526761562523540691

/-!
# A311645: Coordination sequence Gal.5.235.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311645, there is no canonical definition to state claims against.
-/

/-! ## A311645.P2924935858574701143

`and(A312591(n), A350312(A312608(n)))`
-/

namespace A311645.P2924935858574701143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A312591 n) (A350312 (A312608 n).toNat)

end

end A311645.P2924935858574701143

/-! ## A311645.P5163479028736960737

`A171888(A000040(n+1))-A110242(n)`
-/

namespace A311645.P5163479028736960737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171888 (A000040 (n + 1)).toNat - A110242 n

end

end A311645.P5163479028736960737

/-! ## A311645.P7455687923348293191

`A311649(n)-A016389(A032555(n+1))`
-/

namespace A311645.P7455687923348293191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311649 n - A016389 (A032555 (n + 1)).toNat

end

end A311645.P7455687923348293191

/-! ## A311645.P4768113449325904038

`A311649(n)+A016389(A032555(n+1)²)`
-/

namespace A311645.P4768113449325904038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311649 n + A016389 (A032555 (n + 1) ^ 2).toNat

end

end A311645.P4768113449325904038

/-!
# A311646: Coordination sequence Gal.6.387.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311646, there is no canonical definition to state claims against.
-/

/-! ## A311646.P14309414801450632283

`xor(A001222(A049774(n)), A312950(n))`
-/

namespace A311646.P14309414801450632283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A049774 n).toNat) (A312950 n)

end

end A311646.P14309414801450632283

/-! ## A311646.P8921677541242003491

`A173539(A063886(n))+A008574(n)`
-/

namespace A311646.P8921677541242003491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173539 (A063886 n).toNat + A008574 n

end

end A311646.P8921677541242003491

/-! ## A311646.P3088998099609038881

`xor(A100260(A003946(n)), A315178(n))`
-/

namespace A311646.P3088998099609038881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A100260 (A003946 n).toNat) (A315178 n)

end

end A311646.P3088998099609038881

/-! ## A311646.P8468217670464291666

`A311075(n)+A001221(A350020(n+1))`
-/

namespace A311646.P8468217670464291666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311075 n + A001221 (A350020 (n + 1)).toNat

end

end A311646.P8468217670464291666

/-!
# A311647: Coordination sequence Gal.4.85.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311647, the canonical program `A311647.P14916477301133084637` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311647 has offset 0).

The definition of A311647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2536 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311647.P14916477301133084637

`A265035(2*n)-A047448(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A311647

/-- `A265035(2*n)-A047448(n+1)` -/
def P14916477301133084637.Spec : Prop :=
  ∀ n, P14916477301133084637.a n = A311647 n

theorem P14916477301133084637.correct : P14916477301133084637.Spec := by
  intro n
  simp only [A311647]

end A311647

/-! ## A311647.P13397759265373823255

`A301722(n)+A312928(n)-A219529(n)`
-/

namespace A311647.P13397759265373823255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n + (A312928 n - A219529 n)

end

end A311647.P13397759265373823255

namespace A311647

/-- `A301722(n)+A312928(n)-A219529(n)` -/
def P13397759265373823255.Spec : Prop :=
  ∀ n, P13397759265373823255.a n = A311647 n

end A311647

/-! ## A311647.P2829515636076202237

`A301722(n)-A008615(A301716(n))`
-/

namespace A311647.P2829515636076202237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n - A008615 (A301716 n).toNat

end

end A311647.P2829515636076202237

namespace A311647

/-- `A301722(n)-A008615(A301716(n))` -/
def P2829515636076202237.Spec : Prop :=
  ∀ n, P2829515636076202237.a n = A311647 n

end A311647

/-! ## A311647.P12821165282164700619

`A057354(n+1)+A004396(A265035(2*n))`
-/

namespace A311647.P12821165282164700619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (n + 1) + A004396 (A265035 (2 * n)).toNat

end

end A311647.P12821165282164700619

namespace A311647

/-- `A057354(n+1)+A004396(A265035(2*n))` -/
def P12821165282164700619.Spec : Prop :=
  ∀ n, P12821165282164700619.a n = A311647 n

end A311647

/-!
# A311648: Coordination sequence Gal.6.497.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311648, there is no canonical definition to state claims against.
-/

/-! ## A311648.P12889224702273957219

`A265045(n)+A001222(A061255(3*n+1))`
-/

namespace A311648.P12889224702273957219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265045 n + A001222 (A061255 (3 * n + 1)).toNat

end

end A311648.P12889224702273957219

/-! ## A311648.P16377219813772296173

`A318875(C(n, 2)+2^A075362(n+1))+A311228(n)`
-/

namespace A311648.P16377219813772296173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318875 (SequenceMachineLib.roundAway ((Nat.choose n 2 : ℚ) + (2 : ℚ) ^ (A075362 (n + 1) : ℤ))).toNat + A311228 n

end

end A311648.P16377219813772296173

/-!
# A311649: Coordination sequence Gal.4.111.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311649, there is no canonical definition to state claims against.
-/

/-! ## A311649.P7936069203888221065

`A327391(A084593(n+1))+record[lcm(2, n)]`
-/

namespace A311649.P7936069203888221065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327391 (A084593 (n + 1)).toNat + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A311649.P7936069203888221065

/-! ## A311649.P16916527831230851404

`and(A312643(n), A350312(A312608(n)))`
-/

namespace A311649.P16916527831230851404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A312643 n) (A350312 (A312608 n).toNat)

end

end A311649.P16916527831230851404

/-! ## A311649.P8428241615481542638

`A311645(n)+A016389(A032555(n+1))`
-/

namespace A311649.P8428241615481542638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311645 n + A016389 (A032555 (n + 1)).toNat

end

end A311649.P8428241615481542638

/-! ## A311649.P16166554091169539189

`A311645(n)+A086010(A032559(n+1))`
-/

namespace A311649.P16166554091169539189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311645 n + A086010 (A032559 (n + 1)).toNat

end

end A311649.P16166554091169539189

/-!
# A311651: Coordination sequence Gal.3.22.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311651, there is no canonical definition to state claims against.
-/

/-! ## A311651.P904112844340144076

`A187213(2^ceil(log2(n+1))*A070082(n+1))`
-/

namespace A311651.P904112844340144076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187213 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) * (A070082 (n + 1) : ℚ))).toNat

end

end A311651.P904112844340144076

/-! ## A311651.P6142537943516493611

`and(A000203(A002001(n)), A314981(n))`
-/

namespace A311651.P6142537943516493611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (A002001 n).toNat) (A314981 n)

end

end A311651.P6142537943516493611

/-!
# A311652: Coordination sequence Gal.6.306.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311652, there is no canonical definition to state claims against.
-/

/-! ## A311652.P4115350634829997543

`xor(A185284(A311250(n)), A311653(n))`
-/

namespace A311652.P4115350634829997543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A311250 n).toNat) (A311653 n)

end

end A311652.P4115350634829997543

/-! ## A311652.P408211160061391037

`A311653(A029576(n)+n)`
-/

namespace A311652.P408211160061391037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311653 (A029576 n + (n : ℤ)).toNat

end

end A311652.P408211160061391037

/-! ## A311652.P86910271759231209

`A311653(or(n, A029576(n)))`
-/

namespace A311652.P86910271759231209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311653 (Int.lor (n : ℤ) (A029576 n)).toNat

end

end A311652.P86910271759231209

/-! ## A311652.P11622691259758970793

`A311653(xor(n, A029576(n)))`
-/

namespace A311652.P11622691259758970793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311653 (Int.xor (n : ℤ) (A029576 n)).toNat

end

end A311652.P11622691259758970793

/-!
# A311653: Coordination sequence Gal.6.301.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311653, there is no canonical definition to state claims against.
-/

/-! ## A311653.P7134961942773122152

`xor(A185284(A311250(n)), A311652(n))`
-/

namespace A311653.P7134961942773122152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A311250 n).toNat) (A311652 n)

end

end A311653.P7134961942773122152

/-!
# A311654: Coordination sequence Gal.6.295.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311654, there is no canonical definition to state claims against.
-/

/-! ## A311654.P12862872791626716994

`A311655(A062399(n))`
-/

namespace A311654.P12862872791626716994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311655 (A062399 n).toNat

end

end A311654.P12862872791626716994

/-! ## A311654.P9547982747719076347

`A092524(A311655(n))`
-/

namespace A311654.P9547982747719076347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A311655 n).toNat

end

end A311654.P9547982747719076347

/-! ## A311654.P8154900153976773714

`A311655(A120126(n))`
-/

namespace A311654.P8154900153976773714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311655 (A120126 n).toNat

end

end A311654.P8154900153976773714

/-! ## A311654.P5372424108487744145

`A311655(A351870(n))`
-/

namespace A311654.P5372424108487744145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311655 (A351870 n).toNat

end

end A311654.P5372424108487744145

/-! ## A311654.P7539104195832360392

`A311655(n)%A004023(n+1)`
-/

namespace A311654.P7539104195832360392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311655 n) (A004023 (n + 1))

end

end A311654.P7539104195832360392

/-!
# A311656: Coordination sequence Gal.6.294.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311656, there is no canonical definition to state claims against.
-/

/-! ## A311656.P14262866849315655051

`A311657(n)-A281154(A147077(n+1))`
-/

namespace A311656.P14262866849315655051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311657 n - A281154 (A147077 (n + 1)).toNat

end

end A311656.P14262866849315655051

/-! ## A311656.P8384963580155219029

`A311657(A062399(n))`
-/

namespace A311656.P8384963580155219029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311657 (A062399 n).toNat

end

end A311656.P8384963580155219029

/-! ## A311656.P396694539008913930

`A311657(A120126(n))`
-/

namespace A311656.P396694539008913930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311657 (A120126 n).toNat

end

end A311656.P396694539008913930

/-! ## A311656.P9848520744345324824

`A311657(A351870(n))`
-/

namespace A311656.P9848520744345324824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311657 (A351870 n).toNat

end

end A311656.P9848520744345324824

/-! ## A311656.P10126607527054110509

`A311657(n)^exp(A015068(n))`
-/

namespace A311656.P10126607527054110509
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A311657 n : ℝ) ^ (Real.exp (A015068 n : ℝ))

end

end A311656.P10126607527054110509

/-!
# A311657: Coordination sequence Gal.6.280.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311657, there is no canonical definition to state claims against.
-/

/-! ## A311657.P6700542425158403897

`A311656(n)+A281154(A147077(n+1))`
-/

namespace A311657.P6700542425158403897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311656 n + A281154 (A147077 (n + 1)).toNat

end

end A311657.P6700542425158403897

/-! ## A311657.P10450376421161981885

`A335460(A056941(n))+A311656(n)`
-/

namespace A311657.P10450376421161981885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (A056941 n).toNat + A311656 n

end

end A311657.P10450376421161981885

/-!
# A311658: Coordination sequence Gal.5.123.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311658, there is no canonical definition to state claims against.
-/

/-! ## A311658.P13134555255602679506

`A311659(n)-A010894(A311674(n))`
-/

namespace A311658.P13134555255602679506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311659 n - A010894 ((A311674 n).toNat + 21)

end

end A311658.P13134555255602679506

/-! ## A311658.P7131879682933637214

`A311659(n)-A010894(A311675(n))`
-/

namespace A311658.P7131879682933637214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311659 n - A010894 ((A311675 n).toNat + 21)

end

end A311658.P7131879682933637214

/-! ## A311658.P774473090701943707

`A311659(n)-A219766(A178688(2*(n+1)))`
-/

namespace A311658.P774473090701943707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311659 n - A219766 (A178688 (2 * (n + 1))).toNat

end

end A311658.P774473090701943707

/-! ## A311658.P3149118339259803118

`A311659(A087051(n))`
-/

namespace A311658.P3149118339259803118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311659 (A087051 n).toNat

end

end A311658.P3149118339259803118

/-! ## A311658.P4323795255541466968

`A311659(A227549(n+1))`
-/

namespace A311658.P4323795255541466968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311659 (A227549 (n + 1)).toNat

end

end A311658.P4323795255541466968

/-!
# A311659: Coordination sequence Gal.5.120.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311659, there is no canonical definition to state claims against.
-/

/-! ## A311659.P6440830750167758072

`or(A185255(3*n), A311658(n))`
-/

namespace A311659.P6440830750167758072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185255 (3 * n)) (A311658 n)

end

end A311659.P6440830750167758072

/-! ## A311659.P10007027797880932747

`A311658(n)+A010894(A311674(n))`
-/

namespace A311659.P10007027797880932747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311658 n + A010894 ((A311674 n).toNat + 21)

end

end A311659.P10007027797880932747

/-! ## A311659.P1558123762662572743

`A311658(n)+A010894(A311675(n))`
-/

namespace A311659.P1558123762662572743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311658 n + A010894 ((A311675 n).toNat + 21)

end

end A311659.P1558123762662572743

/-! ## A311659.P6263826115195085987

`or(A010894(A311666(n)), A311658(n))`
-/

namespace A311659.P6263826115195085987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A311666 n).toNat + 21)) (A311658 n)

end

end A311659.P6263826115195085987

/-!
# A311661: Coordination sequence Gal.6.509.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311661, there is no canonical definition to state claims against.
-/

/-! ## A311661.P4098618503882923704

`∑[A000005(A155287(n+3))%9]`
-/

namespace A311661.P4098618503882923704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A155287 (n + 3)).toNat) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311661.P4098618503882923704

/-!
# A311662: Coordination sequence Gal.6.296.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311662, there is no canonical definition to state claims against.
-/

/-! ## A311662.P10141410313078846975

`xor(A311663(n), A318679(A077374(n+1)))`
-/

namespace A311662.P10141410313078846975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A311663 n) (A318679 (A077374 (n + 1)).toNat)

end

end A311662.P10141410313078846975

/-! ## A311662.P13068041986455399517

`A311663(n)-A010894(A311674(n))`
-/

namespace A311662.P13068041986455399517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311663 n - A010894 ((A311674 n).toNat + 21)

end

end A311662.P13068041986455399517

/-! ## A311662.P10964353105138317028

`A311663(n)-A010894(A311675(n))`
-/

namespace A311662.P10964353105138317028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311663 n - A010894 ((A311675 n).toNat + 21)

end

end A311662.P10964353105138317028

/-! ## A311662.P2096390302334777259

`A311663(n)-A219766(A178688(2*(n+1)))`
-/

namespace A311662.P2096390302334777259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311663 n - A219766 (A178688 (2 * (n + 1))).toNat

end

end A311662.P2096390302334777259

/-! ## A311662.P9809768384352420016

`A311663(A087051(n))`
-/

namespace A311662.P9809768384352420016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311663 (A087051 n).toNat

end

end A311662.P9809768384352420016

/-!
# A311663: Coordination sequence Gal.6.282.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311663, there is no canonical definition to state claims against.
-/

/-! ## A311663.P16460060942076075289

`xor(A311662(n), A318679(A077374(n+1)))`
-/

namespace A311663.P16460060942076075289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A311662 n) (A318679 (A077374 (n + 1)).toNat)

end

end A311663.P16460060942076075289

/-! ## A311663.P17074544830833513939

`A311662(n)+A010894(A311674(n))`
-/

namespace A311663.P17074544830833513939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311662 n + A010894 ((A311674 n).toNat + 21)

end

end A311663.P17074544830833513939

/-! ## A311663.P12498906057141710983

`A311662(n)+A010894(A311675(n))`
-/

namespace A311663.P12498906057141710983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311662 n + A010894 ((A311675 n).toNat + 21)

end

end A311663.P12498906057141710983

/-!
# A311664: Coordination sequence Gal.6.514.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311664, there is no canonical definition to state claims against.
-/

/-! ## A311664.P14991884779207397754

`A311649(n)+A241069(A052426(n+1))`
-/

namespace A311664.P14991884779207397754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311649 n + A241069 (A052426 (n + 1)).toNat

end

end A311664.P14991884779207397754

/-! ## A311664.P4445014948492677315

`A311649(n)+A241069(A071275(n+1))`
-/

namespace A311664.P4445014948492677315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311649 n + A241069 (A071275 (n + 1)).toNat

end

end A311664.P4445014948492677315

/-! ## A311664.P17112954395593579145

`A311649(n)+A241069(A207954(n+1))`
-/

namespace A311664.P17112954395593579145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311649 n + A241069 (A207954 (n + 1)).toNat

end

end A311664.P17112954395593579145

/-! ## A311664.P9948598204848683854

`A311649(n)+A241069(A347400(n+1))`
-/

namespace A311664.P9948598204848683854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311649 n + A241069 (A347400 (n + 1)).toNat

end

end A311664.P9948598204848683854

/-!
# A311665: Coordination sequence Gal.6.481.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311665, there is no canonical definition to state claims against.
-/

/-! ## A311665.P12833223571010999711

`A311084(n)-A348761(A101109(n))`
-/

namespace A311665.P12833223571010999711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311084 n - A348761 (A101109 n).toNat

end

end A311665.P12833223571010999711

/-! ## A311665.P12097876584061264800

`A231428(n+2)+A071673(A024023(n))`
-/

namespace A311665.P12097876584061264800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231428 (n + 2) + A071673 (A024023 n).toNat

end

end A311665.P12097876584061264800

/-! ## A311665.P24468500748106554

`A311666(n)-A025458(A002780(n+1))`
-/

namespace A311665.P24468500748106554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311666 n - A025458 (A002780 (n + 1)).toNat

end

end A311665.P24468500748106554

/-! ## A311665.P15897076659990122292

`A250120(n)-A001222(A358827(3*n))`
-/

namespace A311665.P15897076659990122292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001222 (A358827 (3 * n)).toNat

end

end A311665.P15897076659990122292

/-! ## A311665.P12808532998142556052

`A311084(n)+A348761(A101109(n))*A348761(n)`
-/

namespace A311665.P12808532998142556052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311084 n + A348761 (A101109 n).toNat * A348761 n

end

end A311665.P12808532998142556052

/-!
# A311666: Coordination sequence Gal.4.108.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311666, there is no canonical definition to state claims against.
-/

/-! ## A311666.P17204997124522258349

`A311665(n)+A025458(A002780(n+1))`
-/

namespace A311666.P17204997124522258349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311665 n + A025458 (A002780 (n + 1)).toNat

end

end A311666.P17204997124522258349

/-!
# A311667: Coordination sequence Gal.6.7.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311667, there is no canonical definition to state claims against.
-/

/-! ## A311667.P18170448325721354213

`A080580(n+1)-A214090(A103480(n))`
-/

namespace A311667.P18170448325721354213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080580 (n + 1) - A214090 (A103480 n).toNat

end

end A311667.P18170448325721354213

/-! ## A311667.P1392714516782472397

`A352131(A043065(n+1))+A328781(3*n+2)`
-/

namespace A311667.P1392714516782472397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 (A043065 (n + 1)).toNat + A328781 (3 * n + 2)

end

end A311667.P1392714516782472397

/-! ## A311667.P5053273465350622248

`A187224(2*(n+1))-A001221(A129638(n+4))`
-/

namespace A311667.P5053273465350622248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187224 (2 * (n + 1)) - A001221 (A129638 (n + 4 + 11)).toNat

end

end A311667.P5053273465350622248

/-!
# A311668: Coordination sequence Gal.4.83.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311668, there is no canonical definition to state claims against.
-/

/-! ## A311668.P10312762539110897969

`A311697(n)-A118174(A076285(n+1))`
-/

namespace A311668.P10312762539110897969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311697 n - A118174 (A076285 (n + 1)).toNat

end

end A311668.P10312762539110897969

/-! ## A311668.P17751850993740315417

`A311696(n)-A010051(A149321(n))`
-/

namespace A311668.P17751850993740315417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311696 n - A010051 (A149321 n).toNat

end

end A311668.P17751850993740315417

/-! ## A311668.P18156708141614664502

`A311697(n)-A010051(A149321(n))`
-/

namespace A311668.P18156708141614664502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311697 n - A010051 (A149321 n).toNat

end

end A311668.P18156708141614664502

/-! ## A311668.P13884594643520092967

`A311696(n)-A298622(A126445(n))`
-/

namespace A311668.P13884594643520092967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311696 n - A298622 (A126445 n).toNat

end

end A311668.P13884594643520092967

/-! ## A311668.P3467509963819899862

`A311699(A227549(n+1))-A298133(n+1)`
-/

namespace A311668.P3467509963819899862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311699 (A227549 (n + 1)).toNat - A298133 (n + 1)

end

end A311668.P3467509963819899862

/-!
# A311669: Coordination sequence Gal.5.243.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311669, there is no canonical definition to state claims against.
-/

/-! ## A311669.P18042005918173663278

`A250120(n)+A102669(A036249(n))-A060119(n)`
-/

namespace A311669.P18042005918173663278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A102669 (A036249 n).toNat - A060119 n

end

end A311669.P18042005918173663278

/-! ## A311669.P3285989342044923420

`A348536(n+1)+A313681(n)-A001222(A104934(n))`
-/

namespace A311669.P3285989342044923420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348536 (n + 1) + (A313681 n - A001222 (A104934 n).toNat)

end

end A311669.P3285989342044923420

/-! ## A311669.P1739735835295578662

`A016861(n)-A064911(A242352(3*n+4))-A060119(n)`
-/

namespace A311669.P1739735835295578662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n - A064911 (A242352 (3 * n + 4)).toNat - A060119 n

end

end A311669.P1739735835295578662

/-! ## A311669.P298912442939470828

`A000120(A053556(n))+floor(n*(e+1))`
-/

namespace A311669.P298912442939470828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A053556 n).toNat + ⌊(n : ℝ) * (Real.exp 1 + 1)⌋

end

end A311669.P298912442939470828

/-! ## A311669.P13551126639967061370

`A313688(n)-A001222(A006318(n))`
-/

namespace A311669.P13551126639967061370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n - A001222 (A006318 n).toNat

end

end A311669.P13551126639967061370

/-!
# A311670: Coordination sequence Gal.6.283.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311670, there is no canonical definition to state claims against.
-/

/-! ## A311670.P5434874255678435250

`A311722(n)-A058342(A014137(n))`
-/

namespace A311670.P5434874255678435250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311722 n - A058342 (A014137 n).toNat

end

end A311670.P5434874255678435250

/-! ## A311670.P3303798517061775260

`A311722(n)-A049320(A122367(n))`
-/

namespace A311670.P3303798517061775260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311722 n - A049320 (A122367 n).toNat

end

end A311670.P3303798517061775260

/-! ## A311670.P9142375831013900371

`A250120(n)-A268833(A127303(n+1))`
-/

namespace A311670.P9142375831013900371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A268833 (A127303 (n + 1)).toNat

end

end A311670.P9142375831013900371

/-! ## A311670.P10984256426966177220

`A312289(n)-A060953(A036765(n))`
-/

namespace A311670.P10984256426966177220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n - A060953 (A036765 n).toNat

end

end A311670.P10984256426966177220

/-! ## A311670.P9130120271830522504

`A312066(n)-A334739(A148064(n))`
-/

namespace A311670.P9130120271830522504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312066 n - A334739 (A148064 n).toNat

end

end A311670.P9130120271830522504

/-!
# A311672: Coordination sequence Gal.6.302.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311672, there is no canonical definition to state claims against.
-/

/-! ## A311672.P5172697888300237019

`A311929(n)-A341624(A069727(n))`
-/

namespace A311672.P5172697888300237019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311929 n - A341624 (A069727 n).toNat

end

end A311672.P5172697888300237019

/-! ## A311672.P13855006454515898985

`A311671(n)+A023969(A053497(n))`
-/

namespace A311672.P13855006454515898985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311671 n + A023969 (A053497 n).toNat

end

end A311672.P13855006454515898985

/-! ## A311672.P12016560534260067358

`A311671(n)+A102683(A072856(n))`
-/

namespace A311672.P12016560534260067358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311671 n + A102683 (A072856 n).toNat

end

end A311672.P12016560534260067358

/-! ## A311672.P5431381851296763129

`A311671(n)+A185284(A312233(n))`
-/

namespace A311672.P5431381851296763129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311671 n + A185284 (A312233 n).toNat

end

end A311672.P5431381851296763129

/-! ## A311672.P10466603766279432955

`A311671(n)+A185284(A312235(n))`
-/

namespace A311672.P10466603766279432955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311671 n + A185284 (A312235 n).toNat

end

end A311672.P10466603766279432955

/-!
# A311673: Coordination sequence Gal.5.10.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311673, there is no canonical definition to state claims against.
-/

/-! ## A311673.P6002367453672569872

`A311674(n)-A230819(A034710(n+1))`
-/

namespace A311673.P6002367453672569872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311674 n - A230819 (A034710 (n + 1)).toNat

end

end A311673.P6002367453672569872

/-! ## A311673.P2559219861730603192

`A310799(n)+A124762(A279065(n))`
-/

namespace A311673.P2559219861730603192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310799 n + A124762 (A279065 n).toNat

end

end A311673.P2559219861730603192

/-! ## A311673.P11002799736587550730

`A313014(n)-A001222(A005191(n))`
-/

namespace A311673.P11002799736587550730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313014 n - A001222 (A005191 n).toNat

end

end A311673.P11002799736587550730

/-! ## A311673.P5706219775521568524

`or(A257992(A112842(n)), A311116(n))`
-/

namespace A311673.P5706219775521568524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A257992 (A112842 n).toNat) (A311116 n)

end

end A311673.P5706219775521568524

/-! ## A311673.P16252278876032755348

`A311354(n)-A165586(A243243(n+1))`
-/

namespace A311673.P16252278876032755348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311354 n - A165586 (A243243 (n + 1)).toNat

end

end A311673.P16252278876032755348

/-!
# A311674: Coordination sequence Gal.6.58.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311674, there is no canonical definition to state claims against.
-/

/-! ## A311674.P8417321177190390311

`A346132(A311669(n))`
-/

namespace A311674.P8417321177190390311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A311669 n).toNat

end

end A311674.P8417321177190390311

/-! ## A311674.P12203425071144376034

`A311994(n)-A260686(A126190(n))`
-/

namespace A311674.P12203425071144376034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311994 n - A260686 (A126190 n).toNat

end

end A311674.P12203425071144376034

/-! ## A311674.P16784430696843602248

`A048448(n+1)-A163466(A004870(n+1))`
-/

namespace A311674.P16784430696843602248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 1) - A163466 (A004870 (n + 1)).toNat

end

end A311674.P16784430696843602248

/-! ## A311674.P2294949359114838166

`A314801(n)-A342788(A100100(2*(n+2)))`
-/

namespace A311674.P2294949359114838166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314801 n - A342788 (A100100 (2 * (n + 2))).toNat

end

end A311674.P2294949359114838166

/-!
# A311675: Coordination sequence Gal.4.112.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311675, there is no canonical definition to state claims against.
-/

/-! ## A311675.P764016632491182076

`A312555(n)-A046929(A001256(n+1))`
-/

namespace A311675.P764016632491182076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312555 n - A046929 (A001256 (n + 1)).toNat

end

end A311675.P764016632491182076

/-! ## A311675.P15068880481606615617

`A304449(A344327(3^n))+A063420(n)-A132073(n)`
-/

namespace A311675.P15068880481606615617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304449 (A344327 (3 ^ n)).toNat + (A063420 n - A132073 n)

end

end A311675.P15068880481606615617

/-!
# A311676: Coordination sequence Gal.6.387.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311676, there is no canonical definition to state claims against.
-/

/-! ## A311676.P6442615903218685270

`A250120(n)-A089311(A053311(n))`
-/

namespace A311676.P6442615903218685270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A089311 (A053311 n).toNat

end

end A311676.P6442615903218685270

/-! ## A311676.P9153169149446851100

`A312885(n)-A079978(A336382(n))`
-/

namespace A311676.P9153169149446851100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312885 n - A079978 (A336382 n).toNat

end

end A311676.P9153169149446851100

/-! ## A311676.P332569203798608374

`A250120(n)-A124764(A171603(n+1))`
-/

namespace A311676.P332569203798608374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A124764 (A171603 (n + 1)).toNat

end

end A311676.P332569203798608374

/-! ## A311676.P17943441062305879249

`A374685(3*n+2)-A124737(A320921(n))`
-/

namespace A311676.P17943441062305879249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374685 (3 * n + 2) - A124737 (A320921 n).toNat

end

end A311676.P17943441062305879249

/-!
# A311677: Coordination sequence Gal.4.113.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311677, there is no canonical definition to state claims against.
-/

/-! ## A311677.P3656633790536070283

`A313164(n)-A001221(A326562(n))`
-/

namespace A311677.P3656633790536070283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313164 n - A001221 (A326562 n).toNat

end

end A311677.P3656633790536070283

/-!
# A311680: Coordination sequence Gal.6.83.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311680, there is no canonical definition to state claims against.
-/

/-! ## A311680.P12161009005087419835

`eq[A048142(n+1)!, A002186(n)]`
-/

namespace A311680.P12161009005087419835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A048142 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002186 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A311680.P12161009005087419835

/-!
# A311681: Coordination sequence Gal.5.9.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311681, there is no canonical definition to state claims against.
-/

/-! ## A311681.P4929082384129400386

`∑[A196059(A279456(n+2))]`
-/

namespace A311681.P4929082384129400386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196059 (A279456 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311681.P4929082384129400386

/-! ## A311681.P15388735457072352342

`A313045(n)-A085144(A014334(n))`
-/

namespace A311681.P15388735457072352342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313045 n - A085144 (A014334 n).toNat

end

end A311681.P15388735457072352342

/-! ## A311681.P1838665727769921164

`A311862(n)-A165073(A262600(n))`
-/

namespace A311681.P1838665727769921164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311862 n - A165073 (A262600 n).toNat

end

end A311681.P1838665727769921164

/-! ## A311681.P13593078530269855313

`A301672(n)-A016338(A352198(n+1))`
-/

namespace A311681.P13593078530269855313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n - A016338 (A352198 (n + 1)).toNat

end

end A311681.P13593078530269855313

/-! ## A311681.P16838173918770403247

`A029903(3*n)-A011371(A073184(n+1))`
-/

namespace A311681.P16838173918770403247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029903 (3 * n) - A011371 (A073184 (n + 1)).toNat

end

end A311681.P16838173918770403247

/-!
# A311683: Coordination sequence Gal.6.419.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311683, there is no canonical definition to state claims against.
-/

/-! ## A311683.P16070253378083777206

`A219463(A000031(n))+A008574(n)`
-/

namespace A311683.P16070253378083777206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 (A000031 n).toNat + A008574 n

end

end A311683.P16070253378083777206

/-! ## A311683.P6861430099980194002

`A219463(A000031(n))+record[A257088(n)]`
-/

namespace A311683.P6861430099980194002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 (A000031 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311683.P6861430099980194002

/-! ## A311683.P10281193586332919273

`A219463(A000031(n))+A004277(2*n)`
-/

namespace A311683.P10281193586332919273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 (A000031 n).toNat + A004277 (2 * n)

end

end A311683.P10281193586332919273

/-! ## A311683.P17428717478849803339

`A257088(2*n)+A219463(A000031(n))`
-/

namespace A311683.P17428717478849803339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (2 * n) + A219463 (A000031 n).toNat

end

end A311683.P17428717478849803339

/-! ## A311683.P5014274266413620556

`A243840(A003068(n+1))+A131098(n+1)`
-/

namespace A311683.P5014274266413620556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243840 (A003068 (n + 1)).toNat + A131098 (n + 1)

end

end A311683.P5014274266413620556

/-!
# A311684: Coordination sequence Gal.6.435.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311684, there is no canonical definition to state claims against.
-/

/-! ## A311684.P9735923450302041155

`A186227(2*n+1)+∑[A268479(n+1)]`
-/

namespace A311684.P9735923450302041155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186227 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311684.P9735923450302041155

/-! ## A311684.P4098679108933163957

`A028310(A105566(A314827(n)+n))`
-/

namespace A311684.P4098679108933163957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A105566 (A314827 n + (n : ℤ)).toNat).toNat

end

end A311684.P4098679108933163957

/-! ## A311684.P9986811091888522517

`A105566(A314827(n)+A274933(n+1))`
-/

namespace A311684.P9986811091888522517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105566 (A314827 n + A274933 (n + 1)).toNat

end

end A311684.P9986811091888522517

/-! ## A311684.P14462690975925599282

`A268374(A283258(n))+A008574(n)`
-/

namespace A311684.P14462690975925599282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268374 (A283258 n).toNat + A008574 n

end

end A311684.P14462690975925599282

/-! ## A311684.P15164723429114571510

`A250120(n)-A325282(A183558(n))`
-/

namespace A311684.P15164723429114571510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A325282 (A183558 n).toNat

end

end A311684.P15164723429114571510

/-!
# A311685: Coordination sequence Gal.5.172.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311685, there is no canonical definition to state claims against.
-/

/-! ## A311685.P11629417226115525951

`round(A311337(2*n)/2)`
-/

namespace A311685.P11629417226115525951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A311337 (2 * n) : ℚ) / 2)

end

end A311685.P11629417226115525951

/-! ## A311685.P6882650468818012277

`A004525(A311337(2*n))`
-/

namespace A311685.P6882650468818012277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311337 (2 * n)).toNat

end

end A311685.P6882650468818012277

/-! ## A311685.P17665201340094068644

`record[A311337(n)/A280193(n)]`
-/

namespace A311685.P17665201340094068644
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311337 n : ℚ) / (A280193 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311685.P17665201340094068644

/-! ## A311685.P11427105282055701434

`A174571(2*A311337(2*n))`
-/

namespace A311685.P11427105282055701434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A311337 (2 * n)).toNat

end

end A311685.P11427105282055701434

/-! ## A311685.P4523688369028521513

`A311337(2*n)/A280193(2*n)`
-/

namespace A311685.P4523688369028521513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311337 (2 * n) : ℚ) / (A280193 (2 * n) : ℚ)

end

end A311685.P4523688369028521513

/-! ## A311685.P10513416984752760265

`A311337(2*n)/A006530(A224516(n+1))`
-/

namespace A311685.P10513416984752760265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311337 (2 * n) : ℚ) / (A006530 (A224516 (n + 1)).toNat : ℚ)

end

end A311685.P10513416984752760265

/-! ## A311685.P290687701098165617

`A311337(2*n)/A224516(A224516(2*n+1)²)`
-/

namespace A311685.P290687701098165617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311337 (2 * n) : ℚ) / (A224516 (A224516 (2 * n + 1) ^ 2).toNat : ℚ)

end

end A311685.P290687701098165617

/-! ## A311685.P6734653811277183726

`A110654(record[A311337(A294317(n))])`
-/

namespace A311685.P6734653811277183726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311337 (A294317 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A311685.P6734653811277183726

/-!
# A311686: Coordination sequence Gal.5.182.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311686, there is no canonical definition to state claims against.
-/

/-! ## A311686.P17654182381722676308

`(A312248(n)+A311153(n))/2`
-/

namespace A311686.P17654182381722676308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312248 n + A311153 n : ℚ) / 2

end

end A311686.P17654182381722676308

/-! ## A311686.P6757754722129771704

`A014682(A312248(n)+A311153(n))`
-/

namespace A311686.P6757754722129771704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A312248 n + A311153 n).toNat

end

end A311686.P6757754722129771704

/-! ## A311686.P17872415965507542953

`A001281(A312248(n)+A311153(n))`
-/

namespace A311686.P17872415965507542953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312248 n + A311153 n).toNat

end

end A311686.P17872415965507542953

/-! ## A311686.P15497295394030851364

`A004525(A312248(n)+A311153(n))`
-/

namespace A311686.P15497295394030851364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312248 n + A311153 n).toNat

end

end A311686.P15497295394030851364

/-! ## A311686.P15546912882446013371

`A004526(A312248(n)+A311153(n))`
-/

namespace A311686.P15546912882446013371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312248 n + A311153 n).toNat

end

end A311686.P15546912882446013371

/-! ## A311686.P3951157754561770445

`A025480(A312248(n)+A311153(n))`
-/

namespace A311686.P3951157754561770445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A312248 n + A311153 n).toNat

end

end A311686.P3951157754561770445

/-! ## A311686.P8932934110836718292

`A065033(A312248(n)+A311153(n))`
-/

namespace A311686.P8932934110836718292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312248 n + A311153 n).toNat

end

end A311686.P8932934110836718292

/-! ## A311686.P6259489979783115744

`A078898(A312248(n)+A311153(n))`
-/

namespace A311686.P6259489979783115744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A312248 n + A311153 n).toNat

end

end A311686.P6259489979783115744

/-! ## A311686.P15375764759056276017

`abs(A001057(A312248(n)+A311153(n)))`
-/

namespace A311686.P15375764759056276017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A312248 n + A311153 n).toNat|

end

end A311686.P15375764759056276017

/-! ## A311686.P3485103048837989354

`A001057(A311153(n)+A312248(n)-1)`
-/

namespace A311686.P3485103048837989354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311153 n + (A312248 n - 1)).toNat

end

end A311686.P3485103048837989354

/-! ## A311686.P16496629632549230342

`A001057(A311153(n)-(1-A312248(n)))`
-/

namespace A311686.P16496629632549230342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311153 n - (1 - A312248 n)).toNat

end

end A311686.P16496629632549230342

/-! ## A311686.P984419835789558793

`A065033(A311153(n)-(1-A312248(n)))`
-/

namespace A311686.P984419835789558793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311153 n - (1 - A312248 n)).toNat

end

end A311686.P984419835789558793

/-!
# A311687: Coordination sequence Gal.6.125.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311687, the canonical program `A311687.P12525606551040496369` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311687 has offset 0).

The definition of A311687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2463 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311687.P7330816395317390334

`A311861(n)-A047588(n+1)+n`
-/

namespace A311687.P7330816395317390334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n - A047588 (n + 1) + (n : ℤ)

end

end A311687.P7330816395317390334

namespace A311687

/-- `A311861(n)-A047588(n+1)+n` -/
def P7330816395317390334.Spec : Prop :=
  ∀ n, P7330816395317390334.a n = A311687 n

end A311687

/-! ## A311687.P12525606551040496369

`A004396(n)+A313057(n)-A047588(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A311687

/-- `A004396(n)+A313057(n)-A047588(n+1)` -/
def P12525606551040496369.Spec : Prop :=
  ∀ n, P12525606551040496369.a n = A311687 n

theorem P12525606551040496369.correct : P12525606551040496369.Spec := by
  intro n
  simp only [A311687]

end A311687

/-! ## A311687.P7050632188441331343

`A315053(n)+A002264(n+1)-A047588(n+1)`
-/

namespace A311687.P7050632188441331343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315053 n + A002264 (n + 1) - A047588 (n + 1)

end

end A311687.P7050632188441331343

namespace A311687

/-- `A315053(n)+A002264(n+1)-A047588(n+1)` -/
def P7050632188441331343.Spec : Prop :=
  ∀ n, P7050632188441331343.a n = A311687 n

end A311687

/-! ## A311687.P13514769840073066334

`A313879(n)-A047588(n+1)`
-/

namespace A311687.P13514769840073066334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n - A047588 (n + 1)

end

end A311687.P13514769840073066334

namespace A311687

/-- `A313879(n)-A047588(n+1)` -/
def P13514769840073066334.Spec : Prop :=
  ∀ n, P13514769840073066334.a n = A311687 n

end A311687

/-! ## A311687.P17808021529113921377

`A313879(n)-record[A004396(A283971(n))]`
-/

namespace A311687.P17808021529113921377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A283971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311687.P17808021529113921377

namespace A311687

/-- `A313879(n)-record[A004396(A283971(n))]` -/
def P17808021529113921377.Spec : Prop :=
  ∀ n, P17808021529113921377.a n = A311687 n

end A311687

/-! ## A311687.P9902199476603732440

`A314222(n)-A002264(n+1)-A047588(n+1)`
-/

namespace A311687.P9902199476603732440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314222 n - A002264 (n + 1) - A047588 (n + 1)

end

end A311687.P9902199476603732440

namespace A311687

/-- `A314222(n)-A002264(n+1)-A047588(n+1)` -/
def P9902199476603732440.Spec : Prop :=
  ∀ n, P9902199476603732440.a n = A311687 n

end A311687

/-! ## A311687.P8727596565300713432

`A004396(n)+A314222(n)-n-A047588(n+1)`
-/

namespace A311687.P8727596565300713432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314222 n - (n : ℤ)) - A047588 (n + 1)

end

end A311687.P8727596565300713432

namespace A311687

/-- `A004396(n)+A314222(n)-n-A047588(n+1)` -/
def P8727596565300713432.Spec : Prop :=
  ∀ n, P8727596565300713432.a n = A311687 n

end A311687

/-! ## A311687.P9879599475885592380

`A315549(n)-(A047588(n+1)+A004525(n))`
-/

namespace A311687.P9879599475885592380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315549 n - (A047588 (n + 1) + A004525 n)

end

end A311687.P9879599475885592380

namespace A311687

/-- `A315549(n)-(A047588(n+1)+A004525(n))` -/
def P9879599475885592380.Spec : Prop :=
  ∀ n, P9879599475885592380.a n = A311687 n

end A311687

/-! ## A311687.P10992833194033244376

`A315549(n)-A047229(n+1)+n-A047588(n+1)`
-/

namespace A311687.P10992833194033244376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315549 n - A047229 (n + 1) + (n : ℤ) - A047588 (n + 1)

end

end A311687.P10992833194033244376

namespace A311687

/-- `A315549(n)-A047229(n+1)+n-A047588(n+1)` -/
def P10992833194033244376.Spec : Prop :=
  ∀ n, P10992833194033244376.a n = A311687 n

end A311687

/-! ## A311687.P197746024441371289

`A047588(A313057(n)+1)-A047588(n+1)`
-/

namespace A311687.P197746024441371289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (A313057 n + 1).toNat - A047588 (n + 1)

end

end A311687.P197746024441371289

namespace A311687

/-- `A047588(A313057(n)+1)-A047588(n+1)` -/
def P197746024441371289.Spec : Prop :=
  ∀ n, P197746024441371289.a n = A311687 n

end A311687

/-!
# A311689: Coordination sequence Gal.6.226.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311689, there is no canonical definition to state claims against.
-/

/-! ## A311689.P8957416422523665498

`or(A052344(A000051(n)), A311196(n))`
-/

namespace A311689.P8957416422523665498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052344 (A000051 n).toNat) (A311196 n)

end

end A311689.P8957416422523665498

/-! ## A311689.P13241101702561934376

`A311690(n)-A000007(A073304(n))`
-/

namespace A311689.P13241101702561934376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311690 n - A000007 (A073304 n).toNat

end

end A311689.P13241101702561934376

/-! ## A311689.P5974736771789242626

`A311690(n)-A000007(A073305(n))`
-/

namespace A311689.P5974736771789242626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311690 n - A000007 (A073305 n).toNat

end

end A311689.P5974736771789242626

/-! ## A311689.P3614933352925617267

`A311690(n)-A185284(A008578(n+1))`
-/

namespace A311689.P3614933352925617267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311690 n - A185284 (A008578 (n + 1)).toNat

end

end A311689.P3614933352925617267

/-! ## A311689.P16394659436900909714

`A311690(n)-A102683(A274707(n+1))`
-/

namespace A311689.P16394659436900909714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311690 n - A102683 (A274707 (n + 1)).toNat

end

end A311689.P16394659436900909714

/-!
# A311690: Coordination sequence Gal.6.222.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311690, there is no canonical definition to state claims against.
-/

/-! ## A311690.P2396434189846673016

`A311689(n)+A000007(A073304(n))`
-/

namespace A311690.P2396434189846673016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311689 n + A000007 (A073304 n).toNat

end

end A311690.P2396434189846673016

/-! ## A311690.P2037001987502309467

`A311689(n)+A000007(A073305(n))`
-/

namespace A311690.P2037001987502309467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311689 n + A000007 (A073305 n).toNat

end

end A311690.P2037001987502309467

/-! ## A311690.P6001104014915562727

`A311196(n)+A144599(A202192(n))`
-/

namespace A311690.P6001104014915562727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + A144599 (A202192 n).toNat

end

end A311690.P6001104014915562727

/-! ## A311690.P14597561399760399807

`or(A046926(A026644(n)), A311689(n))`
-/

namespace A311690.P14597561399760399807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046926 (A026644 n).toNat) (A311689 n)

end

end A311690.P14597561399760399807

/-! ## A311690.P13525645408651337486

`or(A238469(A290836(n)), A311197(n))`
-/

namespace A311690.P13525645408651337486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A238469 (A290836 n).toNat) (A311197 n)

end

end A311690.P13525645408651337486

/-!
# A311691: Coordination sequence Gal.5.60.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311691, the canonical program `A311691.P15690846151857527722` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311691 has offset 0).

The definition of A311691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311691.P2694667895594960536

`A047263(n+1)+A311861(n)-A047513(n+1)`
-/

namespace A311691.P2694667895594960536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A311861 n - A047513 (n + 1))

end

end A311691.P2694667895594960536

namespace A311691

/-- `A047263(n+1)+A311861(n)-A047513(n+1)` -/
def P2694667895594960536.Spec : Prop :=
  ∀ n, P2694667895594960536.a n = A311691 n

end A311691

/-! ## A311691.P15690846151857527722

`A313698(n)-A057354(2*n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A311691

/-- `A313698(n)-A057354(2*n+1)` -/
def P15690846151857527722.Spec : Prop :=
  ∀ n, P15690846151857527722.a n = A311691 n

theorem P15690846151857527722.correct : P15690846151857527722.Spec := by
  intro n
  simp only [A311691]

end A311691

/-! ## A311691.P12994075902721054073

`A313698(n)-A004526(A047434(n+1))`
-/

namespace A311691.P12994075902721054073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n - A004526 (A047434 (n + 1)).toNat

end

end A311691.P12994075902721054073

namespace A311691

/-- `A313698(n)-A004526(A047434(n+1))` -/
def P12994075902721054073.Spec : Prop :=
  ∀ n, P12994075902721054073.a n = A311691 n

end A311691

/-! ## A311691.P9342792789972234063

`A047263(n+1)+A313698(n)-A005843(n)`
-/

namespace A311691.P9342792789972234063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A313698 n - A005843 n)

end

end A311691.P9342792789972234063

namespace A311691

/-- `A047263(n+1)+A313698(n)-A005843(n)` -/
def P9342792789972234063.Spec : Prop :=
  ∀ n, P9342792789972234063.a n = A311691 n

end A311691

/-! ## A311691.P5284149376977891490

`A313698(n)-A059995(A017113(n))`
-/

namespace A311691.P5284149376977891490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n - A059995 (A017113 n).toNat

end

end A311691.P5284149376977891490

namespace A311691

/-- `A313698(n)-A059995(A017113(n))` -/
def P5284149376977891490.Spec : Prop :=
  ∀ n, P5284149376977891490.a n = A311691 n

end A311691

/-!
# A311692: Coordination sequence Gal.5.56.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311692, there is no canonical definition to state claims against.
-/

/-! ## A311692.P4726448344257336448

`A061641(n+1)+record[A136081(n+1)]`
-/

namespace A311692.P4726448344257336448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311692.P4726448344257336448

/-! ## A311692.P14160980326398757087

`or(A024360(A235599(n)), A311198(n))`
-/

namespace A311692.P14160980326398757087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024360 (A235599 n).toNat) (A311198 n)

end

end A311692.P14160980326398757087

/-! ## A311692.P16694530039418301239

`or(A024360(A235599(n)), A311691(n))`
-/

namespace A311692.P16694530039418301239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024360 (A235599 n).toNat) (A311691 n)

end

end A311692.P16694530039418301239

/-! ## A311692.P7066379775096173968

`or(A054908(A056242(n+1)), A311691(n))`
-/

namespace A311692.P7066379775096173968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054908 (A056242 (n + 1)).toNat) (A311691 n)

end

end A311692.P7066379775096173968

/-!
# A311693: Coordination sequence Gal.5.105.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311693, there is no canonical definition to state claims against.
-/

/-! ## A311693.P11309993994706291939

`xor(A131531(A041243(n)), A311198(n))`
-/

namespace A311693.P11309993994706291939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131531 (A041243 n).toNat) (A311198 n)

end

end A311693.P11309993994706291939

/-! ## A311693.P571442321728711745

`record[A311694(n)-A323358(n+1)]`
-/

namespace A311693.P571442321728711745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311694 n - A323358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311693.P571442321728711745

/-! ## A311693.P18408222547817936840

`A301293(n)-A001221(A124527(n))`
-/

namespace A311693.P18408222547817936840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A001221 (A124527 n).toNat

end

end A311693.P18408222547817936840

/-! ## A311693.P3657031764172091105

`A311195(n)+A162642(A174501(n+1))`
-/

namespace A311693.P3657031764172091105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311195 n + A162642 (A174501 (n + 1)).toNat

end

end A311693.P3657031764172091105

/-! ## A311693.P15247046218081701017

`A311694(n)-A185284(A065091(n+1))`
-/

namespace A311693.P15247046218081701017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311694 n - A185284 (A065091 (n + 1)).toNat

end

end A311693.P15247046218081701017

/-!
# A311694: Coordination sequence Gal.5.101.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311694, there is no canonical definition to state claims against.
-/

/-! ## A311694.P13539697728331056609

`A311201(n)+A102448(A102446(n))`
-/

namespace A311694.P13539697728331056609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311201 n + A102448 (A102446 n).toNat

end

end A311694.P13539697728331056609

/-! ## A311694.P5866839694865424111

`A311861(n)-A189640(A189594(n+3))`
-/

namespace A311694.P5866839694865424111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n - A189640 (A189594 (n + 3)).toNat

end

end A311694.P5866839694865424111

/-! ## A311694.P13989147971807370748

`or(A285684(A066425(n+1)), A311201(n))`
-/

namespace A311694.P13989147971807370748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285684 (A066425 (n + 1)).toNat) (A311201 n)

end

end A311694.P13989147971807370748

/-!
# A311695: Coordination sequence Gal.6.422.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311695, there is no canonical definition to state claims against.
-/

/-! ## A311695.P17916317830956952275

`A008574(n)+A001842(A296619(n))`
-/

namespace A311695.P17916317830956952275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001842 (A296619 n).toNat

end

end A311695.P17916317830956952275

/-! ## A311695.P7428915813955353957

`A311207(n)+A172303(A002378(n))`
-/

namespace A311695.P7428915813955353957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311207 n + A172303 (A002378 n).toNat

end

end A311695.P7428915813955353957

/-! ## A311695.P10365799084258664710

`A301301(n)+A085977(A377117(n))`
-/

namespace A311695.P10365799084258664710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A085977 (A377117 n).toNat

end

end A311695.P10365799084258664710

/-!
# A311696: Coordination sequence Gal.6.178.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311696, there is no canonical definition to state claims against.
-/

/-! ## A311696.P17920572733959443819

`A311697(n)-A102683(A005316(n))`
-/

namespace A311696.P17920572733959443819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311697 n - A102683 (A005316 n).toNat

end

end A311696.P17920572733959443819

/-! ## A311696.P13054569066722935656

`A311697(n)-A025469(A236572(n))`
-/

namespace A311696.P13054569066722935656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311697 n - A025469 (A236572 n).toNat

end

end A311696.P13054569066722935656

/-! ## A311696.P6974074728707905041

`A311697(n)-A185284(A008578(n+1))`
-/

namespace A311696.P6974074728707905041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311697 n - A185284 (A008578 (n + 1)).toNat

end

end A311696.P6974074728707905041

/-! ## A311696.P13127336582889410324

`A358842(A097893(n))+A311697(n)`
-/

namespace A311696.P13127336582889410324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358842 (A097893 n).toNat + A311697 n

end

end A311696.P13127336582889410324

/-! ## A311696.P7762582074221457265

`A311697(A062399(n))`
-/

namespace A311696.P7762582074221457265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311697 (A062399 n).toNat

end

end A311696.P7762582074221457265

/-!
# A311697: Coordination sequence Gal.6.162.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311697, there is no canonical definition to state claims against.
-/

/-! ## A311697.P4553741640315179248

`A311696(n)+A185284(A008578(n+1))`
-/

namespace A311697.P4553741640315179248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311696 n + A185284 (A008578 (n + 1)).toNat

end

end A311697.P4553741640315179248

/-!
# A311698: Coordination sequence Gal.6.412.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311698, there is no canonical definition to state claims against.
-/

/-! ## A311698.P6591833450441363898

`ceil(A311222(2*n)/2)`
-/

namespace A311698.P6591833450441363898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A311222 (2 * n) : ℚ) / 2⌉

end

end A311698.P6591833450441363898

/-! ## A311698.P10450780881981958119

`(A311222(2*n)+A000007(n))/2`
-/

namespace A311698.P10450780881981958119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311222 (2 * n) + A000007 n : ℚ) / 2

end

end A311698.P10450780881981958119

/-! ## A311698.P13561836619785846023

`A311222(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A311698.P13561836619785846023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311222 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A311698.P13561836619785846023

/-! ## A311698.P10158529711184106100

`A311222(2*n)/A020639(A007843(n))`
-/

namespace A311698.P10158529711184106100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311222 (2 * n) : ℚ) / (A020639 (A007843 n).toNat : ℚ)

end

end A311698.P10158529711184106100

/-! ## A311698.P3346473352998788513

`A311222(2*n)/A020639(A008458(n))`
-/

namespace A311698.P3346473352998788513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311222 (2 * n) : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A311698.P3346473352998788513

/-! ## A311698.P2253044541492313467

`A311222(2*n)/A020639(A311222(n))`
-/

namespace A311698.P2253044541492313467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311222 (2 * n) : ℚ) / (A020639 (A311222 n).toNat : ℚ)

end

end A311698.P2253044541492313467

/-! ## A311698.P1699572457792797934

`A004525(A311222(2*n))`
-/

namespace A311698.P1699572457792797934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311222 (2 * n)).toNat

end

end A311698.P1699572457792797934

/-! ## A311698.P16653289250115529568

`A029578(A311222(2*n)+A000007(n))`
-/

namespace A311698.P16653289250115529568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A311222 (2 * n) + A000007 n).toNat

end

end A311698.P16653289250115529568

/-! ## A311698.P17522229152718269327

`A311222(A029578(2*n+1))-A029578(A311222(2*n))`
-/

namespace A311698.P17522229152718269327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311222 (A029578 (2 * n + 1)).toNat - A029578 (A311222 (2 * n)).toNat

end

end A311698.P17522229152718269327

/-! ## A311698.P5370148312002956779

`A004526(A311222(2*n)+1)`
-/

namespace A311698.P5370148312002956779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311222 (2 * n) + 1).toNat

end

end A311698.P5370148312002956779

/-!
# A311699: Coordination sequence Gal.4.48.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311699, the canonical program `A311699.P1694921435431458` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311699 has offset 0).

The definition of A311699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2374 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311699.P1694921435431458

`A151988(n)+A313826(n)-A005843(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A311699

/-- `A151988(n)+A313826(n)-A005843(n)` -/
def P1694921435431458.Spec : Prop :=
  ∀ n, P1694921435431458.a n = A311699 n

theorem P1694921435431458.correct : P1694921435431458.Spec := by
  intro n
  simp only [A311699]

end A311699

/-! ## A311699.P16296012060314800588

`A312895(n)-A266243(A267581(n))`
-/

namespace A311699.P16296012060314800588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n - A266243 (A267581 n).toNat

end

end A311699.P16296012060314800588

namespace A311699

/-- `A312895(n)-A266243(A267581(n))` -/
def P16296012060314800588.Spec : Prop :=
  ∀ n, P16296012060314800588.a n = A311699 n

end A311699

/-! ## A311699.P13640676113399394087

`4*n-A095408((floor(n/2)+1)*2^n)`
-/

namespace A311699.P13640676113399394087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A095408 ((⌊(n : ℚ) / 2⌋ + 1) * (2 ^ n : ℤ)).toNat

end

end A311699.P13640676113399394087

namespace A311699

/-- `4*n-A095408((floor(n/2)+1)*2^n)` -/
def P13640676113399394087.Spec : Prop :=
  ∀ n, P13640676113399394087.a n = A311699 n

end A311699

/-! ## A311699.P15168288024963398324

`A311226(n)+A178602(A314548(n))`
-/

namespace A311699.P15168288024963398324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311226 n + A178602 (A314548 n).toNat

end

end A311699.P15168288024963398324

namespace A311699

/-- `A311226(n)+A178602(A314548(n))` -/
def P15168288024963398324.Spec : Prop :=
  ∀ n, P15168288024963398324.a n = A311699 n

end A311699

/-! ## A311699.P12493904294815838374

`A312895(n)-A010051(A080874(n))`
-/

namespace A311699.P12493904294815838374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n - A010051 (A080874 n).toNat

end

end A311699.P12493904294815838374

namespace A311699

/-- `A312895(n)-A010051(A080874(n))` -/
def P12493904294815838374.Spec : Prop :=
  ∀ n, P12493904294815838374.a n = A311699 n

end A311699

