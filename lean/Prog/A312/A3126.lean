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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A312600: Coordination sequence Gal.5.197.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312600, there is no canonical definition to state claims against.
-/

/-! ## A312600.P2759214125131950271

`A084140(n+1)-gcd(2, A189994(n+1))`
-/

namespace A312600.P2759214125131950271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084140 (n + 1) - (Int.gcd 2 (A189994 (n + 1)) : ℤ)

end

end A312600.P2759214125131950271

/-! ## A312600.P12054254253311511233

`A084139(n)-A014707(A032555(n+1))`
-/

namespace A312600.P12054254253311511233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084139 n - A014707 (A032555 (n + 1)).toNat

end

end A312600.P12054254253311511233

/-! ## A312600.P17753475411364089788

`A314929(n)-A157658(A032555(n+1))`
-/

namespace A312600.P17753475411364089788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314929 n - A157658 (A032555 (n + 1)).toNat

end

end A312600.P17753475411364089788

/-! ## A312600.P1519333209046797154

`A313250(n)-A329144(A328142(n+1))`
-/

namespace A312600.P1519333209046797154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313250 n - A329144 (A328142 (n + 1)).toNat

end

end A312600.P1519333209046797154

/-! ## A312600.P15472263737990501152

`A313252(n)-A329144(A328142(n+1))`
-/

namespace A312600.P15472263737990501152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313252 n - A329144 (A328142 (n + 1)).toNat

end

end A312600.P15472263737990501152

/-!
# A312601: Coordination sequence Gal.6.191.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312601, there is no canonical definition to state claims against.
-/

/-! ## A312601.P13219652053784138349

`A312602(n)-A133010(A000124(n))`
-/

namespace A312601.P13219652053784138349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312602 n - A133010 (A000124 n).toNat

end

end A312601.P13219652053784138349

/-! ## A312601.P11169600794602218411

`A312602(n)-A185238(A016116(n))`
-/

namespace A312601.P11169600794602218411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312602 n - A185238 (A016116 n).toNat

end

end A312601.P11169600794602218411

/-! ## A312601.P10334356841707198890

`A312602(n)-A023531(A146205(n+4))`
-/

namespace A312601.P10334356841707198890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312602 n - A023531 (A146205 (n + 4)).toNat

end

end A312601.P10334356841707198890

/-! ## A312601.P5004801752444320659

`A312602(n)+A038608(A185284(3*n+4))`
-/

namespace A312601.P5004801752444320659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312602 n + A038608 (A185284 (3 * n + 4)).toNat

end

end A312601.P5004801752444320659

/-! ## A312601.P7162003982947501315

`A312602(n)-A185284(A090670(n+1))`
-/

namespace A312601.P7162003982947501315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312602 n - A185284 (A090670 (n + 1)).toNat

end

end A312601.P7162003982947501315

/-!
# A312602: Coordination sequence Gal.6.175.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312602, there is no canonical definition to state claims against.
-/

/-! ## A312602.P8244192485860029759

`A312601(n)+A185238(A016116(n))`
-/

namespace A312602.P8244192485860029759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312601 n + A185238 (A016116 n).toNat

end

end A312602.P8244192485860029759

/-! ## A312602.P121788741628932092

`A315034(n)-A283760(A067756(n+1))`
-/

namespace A312602.P121788741628932092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315034 n - A283760 (A067756 (n + 1)).toNat

end

end A312602.P121788741628932092

/-! ## A312602.P1410880650390570336

`A312601(n)+A023531(A146205(n+4))`
-/

namespace A312602.P1410880650390570336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312601 n + A023531 (A146205 (n + 4)).toNat

end

end A312602.P1410880650390570336

/-! ## A312602.P15695889634844120234

`A312586(n)+A284388(A005773(n))`
-/

namespace A312602.P15695889634844120234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312586 n + A284388 (A005773 n).toNat

end

end A312602.P15695889634844120234

/-! ## A312602.P16994285368482420312

`A312601(n)+A055641(A051177(n+2))`
-/

namespace A312602.P16994285368482420312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312601 n + A055641 (A051177 (n + 2)).toNat

end

end A312602.P16994285368482420312

/-!
# A312603: Coordination sequence Gal.6.188.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312603, there is no canonical definition to state claims against.
-/

/-! ## A312603.P2772270896304781454

`A312604(n)-A025469(A014585(n))`
-/

namespace A312603.P2772270896304781454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312604 n - A025469 (A014585 n).toNat

end

end A312603.P2772270896304781454

/-! ## A312603.P538764994890370425

`A312647(n)-A055029(A032011(n))`
-/

namespace A312603.P538764994890370425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312647 n - A055029 (A032011 n).toNat

end

end A312603.P538764994890370425

/-! ## A312603.P1277725693553148993

`A312604(n)-A102683(A101052(n))`
-/

namespace A312603.P1277725693553148993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312604 n - A102683 (A101052 n).toNat

end

end A312603.P1277725693553148993

/-! ## A312603.P15162269577425406530

`A312604(n)-A185284(A312139(n))`
-/

namespace A312603.P15162269577425406530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312604 n - A185284 (A312139 n).toNat

end

end A312603.P15162269577425406530

/-! ## A312603.P17861205349343204859

`xor(A001221(A208800(n+1)), A314628(n))`
-/

namespace A312603.P17861205349343204859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A208800 (n + 1)).toNat) (A314628 n)

end

end A312603.P17861205349343204859

/-!
# A312604: Coordination sequence Gal.6.172.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312604, there is no canonical definition to state claims against.
-/

/-! ## A312604.P5231368086460025802

`A312603(n)+A102683(A101052(n))`
-/

namespace A312604.P5231368086460025802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312603 n + A102683 (A101052 n).toNat

end

end A312604.P5231368086460025802

/-! ## A312604.P15854706351649760091

`A312603(n)+A185284(A312139(n))`
-/

namespace A312604.P15854706351649760091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312603 n + A185284 (A312139 n).toNat

end

end A312604.P15854706351649760091

/-! ## A312604.P2340954565918580415

`A312603(n)+A185284(A315154(n))`
-/

namespace A312604.P2340954565918580415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312603 n + A185284 (A315154 n).toNat

end

end A312604.P2340954565918580415

/-! ## A312604.P12396881014426611462

`or(A037892(A307413(n)), A312603(n))`
-/

namespace A312604.P12396881014426611462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037892 (A307413 n).toNat) (A312603 n)

end

end A312604.P12396881014426611462

/-!
# A312605: Coordination sequence Gal.4.105.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312605, there is no canonical definition to state claims against.
-/

/-! ## A312605.P4256212962576353185

`or(A078458(A178963(n)), A312418(n))`
-/

namespace A312605.P4256212962576353185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078458 (A178963 n).toNat) (A312418 n)

end

end A312605.P4256212962576353185

/-! ## A312605.P10576358072388708380

`A312440(n)+A229745(A229729(n))`
-/

namespace A312605.P10576358072388708380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312440 n + A229745 (A229729 n).toNat

end

end A312605.P10576358072388708380

/-! ## A312605.P16600752750729491725

`A315069(n)-A089840(A107848(n+1))`
-/

namespace A312605.P16600752750729491725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315069 n - A089840 (A107848 (n + 1)).toNat

end

end A312605.P16600752750729491725

/-! ## A312605.P3710970562866211892

`or(A025436(A053960(n+1)), A312365(n))`
-/

namespace A312605.P3710970562866211892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025436 (A053960 (n + 1)).toNat) (A312365 n)

end

end A312605.P3710970562866211892

/-! ## A312605.P17704111945645463457

`or(A014540(A276142(n+1)), A312418(n))`
-/

namespace A312605.P17704111945645463457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014540 (A276142 (n + 1)).toNat) (A312418 n)

end

end A312605.P17704111945645463457

/-!
# A312606: Coordination sequence Gal.6.255.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312606, the canonical program `A312606.P14333884055851029271` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312606 has offset 0).

The definition of A312606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312606.P14333884055851029271

`A311804(n)+A312068(n)-A008574(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A312606

/-- `A311804(n)+A312068(n)-A008574(n)` -/
def P14333884055851029271.Spec : Prop :=
  ∀ n, P14333884055851029271.a n = A312606 n

theorem P14333884055851029271.correct : P14333884055851029271.Spec := by
  intro n
  simp only [A312606]

end A312606

/-! ## A312606.P17593959603483355870

`A312068(n)+A004525(A312656(n)-A312068(n))`
-/

namespace A312606.P17593959603483355870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312068 n + A004525 (A312656 n - A312068 n).toNat

end

end A312606.P17593959603483355870

namespace A312606

/-- `A312068(n)+A004525(A312656(n)-A312068(n))` -/
def P17593959603483355870.Spec : Prop :=
  ∀ n, P17593959603483355870.a n = A312606 n

end A312606

/-! ## A312606.P16683162872410874556

`2*A313113(n)-A310404(n)`
-/

namespace A312606.P16683162872410874556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313113 n - A310404 n

end

end A312606.P16683162872410874556

namespace A312606

/-- `2*A313113(n)-A310404(n)` -/
def P16683162872410874556.Spec : Prop :=
  ∀ n, P16683162872410874556.a n = A312606 n

end A312606

/-! ## A312606.P4367755234771807589

`A310404(n)-A005843(A310404(n)-A313113(n))`
-/

namespace A312606.P4367755234771807589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310404 n - A005843 (A310404 n - A313113 n).toNat

end

end A312606.P4367755234771807589

namespace A312606

/-- `A310404(n)-A005843(A310404(n)-A313113(n))` -/
def P4367755234771807589.Spec : Prop :=
  ∀ n, P4367755234771807589.a n = A312606 n

end A312606

/-! ## A312606.P16300277711520575304

`abs(A008592(n)-A315642(n))`
-/

namespace A312606.P16300277711520575304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315642 n|

end

end A312606.P16300277711520575304

namespace A312606

/-- `abs(A008592(n)-A315642(n))` -/
def P16300277711520575304.Spec : Prop :=
  ∀ n, P16300277711520575304.a n = A312606 n

end A312606

/-! ## A312606.P2484136323084266044

`2*A008706(n)-A315642(n)`
-/

namespace A312606.P2484136323084266044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315642 n

end

end A312606.P2484136323084266044

namespace A312606

/-- `2*A008706(n)-A315642(n)` -/
def P2484136323084266044.Spec : Prop :=
  ∀ n, P2484136323084266044.a n = A312606 n

end A312606

/-! ## A312606.P6047116626625607472

`A135042(2*n+1)-A315642(n)`
-/

namespace A312606.P6047116626625607472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315642 n

end

end A312606.P6047116626625607472

namespace A312606

/-- `A135042(2*n+1)-A315642(n)` -/
def P6047116626625607472.Spec : Prop :=
  ∀ n, P6047116626625607472.a n = A312606 n

end A312606

/-! ## A312606.P4416006382719817895

`A184418(A008574(n))-A315642(n)`
-/

namespace A312606.P4416006382719817895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315642 n

end

end A312606.P4416006382719817895

namespace A312606

/-- `A184418(A008574(n))-A315642(n)` -/
def P4416006382719817895.Spec : Prop :=
  ∀ n, P4416006382719817895.a n = A312606 n

end A312606

/-! ## A312606.P9510940299607674523

`A008458(n)+A008574(n)-A315642(n)`
-/

namespace A312606.P9510940299607674523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315642 n)

end

end A312606.P9510940299607674523

namespace A312606

/-- `A008458(n)+A008574(n)-A315642(n)` -/
def P9510940299607674523.Spec : Prop :=
  ∀ n, P9510940299607674523.a n = A312606 n

end A312606

/-! ## A312606.P10550771104316737282

`A315642(n)-A005843(A315642(n)-A008706(n))`
-/

namespace A312606.P10550771104316737282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315642 n - A005843 (A315642 n - A008706 n).toNat

end

end A312606.P10550771104316737282

namespace A312606

/-- `A315642(n)-A005843(A315642(n)-A008706(n))` -/
def P10550771104316737282.Spec : Prop :=
  ∀ n, P10550771104316737282.a n = A312606 n

end A312606

/-! ## A312606.P4646251547245920447

`A005843(A313113(n))-A310404(n)`
-/

namespace A312606.P4646251547245920447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313113 n).toNat - A310404 n

end

end A312606.P4646251547245920447

namespace A312606

/-- `A005843(A313113(n))-A310404(n)` -/
def P4646251547245920447.Spec : Prop :=
  ∀ n, P4646251547245920447.a n = A312606 n

end A312606

/-! ## A312606.P7293602384852367831

`A004526(A312656(n))+A004525(A312068(n))`
-/

namespace A312606.P7293602384852367831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312656 n).toNat + A004525 (A312068 n).toNat

end

end A312606.P7293602384852367831

namespace A312606

/-- `A004526(A312656(n))+A004525(A312068(n))` -/
def P7293602384852367831.Spec : Prop :=
  ∀ n, P7293602384852367831.a n = A312606 n

end A312606

/-! ## A312606.P15169168572149726547

`A005843(A008706(n))-A315642(n)`
-/

namespace A312606.P15169168572149726547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315642 n

end

end A312606.P15169168572149726547

namespace A312606

/-- `A005843(A008706(n))-A315642(n)` -/
def P15169168572149726547.Spec : Prop :=
  ∀ n, P15169168572149726547.a n = A312606 n

end A312606

/-! ## A312606.P13709794340256128548

`A065502(A008458(n))-A315642(n)`
-/

namespace A312606.P13709794340256128548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315642 n

end

end A312606.P13709794340256128548

namespace A312606

/-- `A065502(A008458(n))-A315642(n)` -/
def P13709794340256128548.Spec : Prop :=
  ∀ n, P13709794340256128548.a n = A312606 n

end A312606

/-! ## A312606.P10608189001627156022

`A311385(2*n)/A020639(A311385(n))`
-/

namespace A312606.P10608189001627156022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311385 (2 * n) : ℚ) / (A020639 (A311385 n).toNat : ℚ)

end

end A312606.P10608189001627156022

namespace A312606

/-- `A311385(2*n)/A020639(A311385(n))` -/
def P10608189001627156022.Spec : Prop :=
  ∀ n, P10608189001627156022.a n = (A312606 n : ℚ)

end A312606

/-! ## A312606.P324722946723408919

`A313753(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A312606.P324722946723408919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313753 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A312606.P324722946723408919

namespace A312606

/-- `A313753(2*n)+A008458(n+1)-(12*n+6)` -/
def P324722946723408919.Spec : Prop :=
  ∀ n, P324722946723408919.a n = A312606 n

end A312606

/-! ## A312606.P7543883518037635440

`A004525(A311385(2*n))`
-/

namespace A312606.P7543883518037635440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311385 (2 * n)).toNat

end

end A312606.P7543883518037635440

namespace A312606

/-- `A004525(A311385(2*n))` -/
def P7543883518037635440.Spec : Prop :=
  ∀ n, P7543883518037635440.a n = A312606 n

end A312606

/-! ## A312606.P16301032149267439608

`A004526(A311385(2*n)+1)`
-/

namespace A312606.P16301032149267439608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311385 (2 * n) + 1).toNat

end

end A312606.P16301032149267439608

namespace A312606

/-- `A004526(A311385(2*n)+1)` -/
def P16301032149267439608.Spec : Prop :=
  ∀ n, P16301032149267439608.a n = A312606 n

end A312606

/-! ## A312606.P13444022121998177563

`A233583(A017281(n))-A315642(n)`
-/

namespace A312606.P13444022121998177563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315642 n

end

end A312606.P13444022121998177563

namespace A312606

/-- `A233583(A017281(n))-A315642(n)` -/
def P13444022121998177563.Spec : Prop :=
  ∀ n, P13444022121998177563.a n = A312606 n

end A312606

/-!
# A312607: Coordination sequence Gal.5.154.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312607, there is no canonical definition to state claims against.
-/

/-! ## A312607.P2198443841868540993

`∑[A258595(A158923(3*n+2)²)]`
-/

namespace A312607.P2198443841868540993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258595 (A158923 (3 * n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312607.P2198443841868540993

/-! ## A312607.P13929756405179067892

`A301676(n)+A124760(A108626(n))`
-/

namespace A312607.P13929756405179067892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A124760 (A108626 n).toNat

end

end A312607.P13929756405179067892

/-! ## A312607.P15192287841534257517

`A311812(n)+A001221(A293857(n))`
-/

namespace A312607.P15192287841534257517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311812 n + A001221 (A293857 n).toNat

end

end A312607.P15192287841534257517

/-! ## A312607.P1479897792369921105

`A315056(n)-A001222(A185387(n))`
-/

namespace A312607.P1479897792369921105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315056 n - A001222 (A185387 n).toNat

end

end A312607.P1479897792369921105

/-!
# A312609: Coordination sequence Gal.5.192.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312609, there is no canonical definition to state claims against.
-/

/-! ## A312609.P13086637307560306754

`A312530(n)+A159638(A249131(n))`
-/

namespace A312609.P13086637307560306754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312530 n + A159638 (A249131 n).toNat

end

end A312609.P13086637307560306754

/-! ## A312609.P12347023083935964357

`or(A004218(A168089(n)), A312517(n))`
-/

namespace A312609.P12347023083935964357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004218 (A168089 n).toNat) (A312517 n)

end

end A312609.P12347023083935964357

/-! ## A312609.P14724573450078033007

`A312052(n)+A037800(A234006(n+1))`
-/

namespace A312609.P14724573450078033007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312052 n + A037800 (A234006 (n + 1)).toNat

end

end A312609.P14724573450078033007

/-! ## A312609.P17242381946928810745

`or(A071960(A032555(n+1)), A312514(n))`
-/

namespace A312609.P17242381946928810745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071960 (A032555 (n + 1)).toNat) (A312514 n)

end

end A312609.P17242381946928810745

/-! ## A312609.P9191855278417164302

`or(A071960(A032555(n+1)), A312517(n))`
-/

namespace A312609.P9191855278417164302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071960 (A032555 (n + 1)).toNat) (A312517 n)

end

end A312609.P9191855278417164302

/-!
# A312610: Coordination sequence Gal.6.310.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312610, there is no canonical definition to state claims against.
-/

/-! ## A312610.P1693536593961870516

`A312606(n)+A037825(A100341(n+1))`
-/

namespace A312610.P1693536593961870516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312606 n + A037825 (A100341 (n + 1)).toNat

end

end A312610.P1693536593961870516

/-! ## A312610.P7506054713042744646

`A301299(n)+A297037(A000129(n+1))`
-/

namespace A312610.P7506054713042744646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A297037 (A000129 (n + 1)).toNat

end

end A312610.P7506054713042744646

/-! ## A312610.P423572428776571365

`A312097(A351870(n))+A037817(A312097(n))`
-/

namespace A312610.P423572428776571365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312097 (A351870 n).toNat + A037817 (A312097 n).toNat

end

end A312610.P423572428776571365

/-! ## A312610.P6057309102771133927

`A324966(A127154(n))+A301676(n)`
-/

namespace A312610.P6057309102771133927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (A127154 n).toNat + A301676 n

end

end A312610.P6057309102771133927

/-! ## A312610.P2451801952543318397

`A352825(A224958(n))+A311925(n)`
-/

namespace A312610.P2451801952543318397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352825 (A224958 n).toNat + A311925 n

end

end A312610.P2451801952543318397

/-!
# A312611: Coordination sequence Gal.5.191.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312611, there is no canonical definition to state claims against.
-/

/-! ## A312611.P3099558053682225830

`A312065(n)+A213725(A002878(n))`
-/

namespace A312611.P3099558053682225830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + A213725 (A002878 n).toNat

end

end A312611.P3099558053682225830

/-! ## A312611.P13035349717754519748

`A312065(n)+A213725(A060923(∑[n]))`
-/

namespace A312611.P13035349717754519748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + A213725 (A060923 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A312611.P13035349717754519748

/-! ## A312611.P343982691719280166

`A312612(n)-A025581(A185236(2*n))`
-/

namespace A312611.P343982691719280166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312612 n - A025581 (A185236 (2 * n)).toNat

end

end A312611.P343982691719280166

/-!
# A312612: Coordination sequence Gal.5.189.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312612, there is no canonical definition to state claims against.
-/

/-! ## A312612.P12523435214656776547

`A332029(A228644(n))+A002004(n+1)`
-/

namespace A312612.P12523435214656776547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332029 (A228644 n).toNat + A002004 (n + 1)

end

end A312612.P12523435214656776547

/-! ## A312612.P15762240112164854694

`A067251(3*n+1)+A029837(A109961(n))`
-/

namespace A312612.P15762240112164854694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (3 * n + 1) + A029837 (A109961 n).toNat

end

end A312612.P15762240112164854694

/-! ## A312612.P15432093860307679439

`A024375(A024386(n+1))+abs(1-4*n)`
-/

namespace A312612.P15432093860307679439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024375 (A024386 (n + 1)).toNat + |1 - (4 * n : ℤ)|

end

end A312612.P15432093860307679439

/-! ## A312612.P6863914993282939915

`A301298(n)+A008683(A115132(n))`
-/

namespace A312612.P6863914993282939915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A008683 (A115132 n).toNat

end

end A312612.P6863914993282939915

/-! ## A312612.P10156410275447250401

`A301676(n)+A001221(A351049(n))`
-/

namespace A312612.P10156410275447250401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A001221 (A351049 n).toNat

end

end A312612.P10156410275447250401

/-!
# A312613: Coordination sequence Gal.5.232.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312613, there is no canonical definition to state claims against.
-/

/-! ## A312613.P7196142487577602370

`A315050(n)-A014374(A014374(n))`
-/

namespace A312613.P7196142487577602370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315050 n - A014374 (A014374 n).toNat

end

end A312613.P7196142487577602370

/-! ## A312613.P17661676289790475103

`A055572(A250120(n)-A074659(n))`
-/

namespace A312613.P17661676289790475103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A250120 n - A074659 n).toNat

end

end A312613.P17661676289790475103

/-! ## A312613.P14459433834929876491

`A315050(n)-A090173(A084851(n))`
-/

namespace A312613.P14459433834929876491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315050 n - A090173 (A084851 n).toNat

end

end A312613.P14459433834929876491

/-! ## A312613.P7836873844240423038

`A055572(A047309(2*n+1)+A004273(n)-A074659(n))`
-/

namespace A312613.P7836873844240423038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A047309 (2 * n + 1) + A004273 n - A074659 n).toNat

end

end A312613.P7836873844240423038

/-! ## A312613.P2542247184182087642

`A055572(A047363(2*n+1)+A004277(n)-A074659(n))`
-/

namespace A312613.P2542247184182087642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A047363 (2 * n + 1) + A004277 n - A074659 n).toNat

end

end A312613.P2542247184182087642

/-!
# A312614: Coordination sequence Gal.5.123.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312614, there is no canonical definition to state claims against.
-/

/-! ## A312614.P5758941524286829972

`A312615(n)-A316776(A147021(n+1))`
-/

namespace A312614.P5758941524286829972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312615 n - A316776 (A147021 (n + 1)).toNat

end

end A312614.P5758941524286829972

/-! ## A312614.P9053831280433787812

`A312615(n)-A151795(A192670(n))`
-/

namespace A312614.P9053831280433787812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312615 n - A151795 (A192670 n).toNat

end

end A312614.P9053831280433787812

/-! ## A312614.P12886845053534358417

`A250120(n)-A327127(A241734(n))`
-/

namespace A312614.P12886845053534358417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A327127 (A241734 n).toNat

end

end A312614.P12886845053534358417

/-! ## A312614.P18144158842479496095

`A008706(n)-A001222(A163136(n+1))`
-/

namespace A312614.P18144158842479496095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A001222 (A163136 (n + 1)).toNat

end

end A312614.P18144158842479496095

/-! ## A312614.P7043130575000278669

`A312615(A087051(n))`
-/

namespace A312614.P7043130575000278669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312615 (A087051 n).toNat

end

end A312614.P7043130575000278669

/-!
# A312615: Coordination sequence Gal.6.372.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312615, there is no canonical definition to state claims against.
-/

/-! ## A312615.P7096807204530806500

`A316776(A147021(n+1))+A312614(n)`
-/

namespace A312615.P7096807204530806500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316776 (A147021 (n + 1)).toNat + A312614 n

end

end A312615.P7096807204530806500

/-! ## A312615.P5209353109446863301

`A312614(n)+A151795(A192670(n))`
-/

namespace A312615.P5209353109446863301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312614 n + A151795 (A192670 n).toNat

end

end A312615.P5209353109446863301

/-!
# A312616: Coordination sequence Gal.5.120.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312616, there is no canonical definition to state claims against.
-/

/-! ## A312616.P9114692231051250300

`A250120(n)-A000035(A033192(n))`
-/

namespace A312616.P9114692231051250300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A000035 (A033192 n).toNat

end

end A312616.P9114692231051250300

/-! ## A312616.P2106080157947147436

`A250120(n)-A000035(A041032(n))`
-/

namespace A312616.P2106080157947147436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A000035 (A041032 n).toNat

end

end A312616.P2106080157947147436

/-! ## A312616.P8823618804405603967

`A250120(n)-A005614(A117557(n))`
-/

namespace A312616.P8823618804405603967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A005614 (A117557 n).toNat

end

end A312616.P8823618804405603967

/-! ## A312616.P12014490611883107480

`A250120(n)-A174275(A164558(n))`
-/

namespace A312616.P12014490611883107480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A174275 (A164558 n).toNat

end

end A312616.P12014490611883107480

/-! ## A312616.P16058009650325460408

`A250120(n)-A127245(A296284(n))`
-/

namespace A312616.P16058009650325460408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A127245 (A296284 n).toNat

end

end A312616.P16058009650325460408

/-!
# A312617: Coordination sequence Gal.5.245.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312617, there is no canonical definition to state claims against.
-/

/-! ## A312617.P1002409655352734965

`A312456(n)+A004197(A088946(n))`
-/

namespace A312617.P1002409655352734965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312456 n + A004197 (A088946 n).toNat

end

end A312617.P1002409655352734965

/-! ## A312617.P8875972546946554571

`A312385(n)+A307597(A001700(n))`
-/

namespace A312617.P8875972546946554571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312385 n + A307597 (A001700 n).toNat

end

end A312617.P8875972546946554571

/-! ## A312617.P6099053744585174522

`A310775(n)+A001222(A324131(n))`
-/

namespace A312617.P6099053744585174522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310775 n + A001222 (A324131 n).toNat

end

end A312617.P6099053744585174522

/-! ## A312617.P13800439865139925038

`A314950(n)-A001878(A077248(n))`
-/

namespace A312617.P13800439865139925038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314950 n - A001878 (A077248 n).toNat

end

end A312617.P13800439865139925038

/-! ## A312617.P14076304064364059244

`xor(A008579(n), A284258(A001411(n)))`
-/

namespace A312617.P14076304064364059244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008579 n) (A284258 (A001411 n).toNat)

end

end A312617.P14076304064364059244

/-!
# A312618: Coordination sequence Gal.6.56.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312618, there is no canonical definition to state claims against.
-/

/-! ## A312618.P14904885110090147708

`A312440(n)+A031346(A300668(n))`
-/

namespace A312618.P14904885110090147708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312440 n + A031346 (A300668 n).toNat

end

end A312618.P14904885110090147708

/-! ## A312618.P12601783853625159355

`A313245(n)-∑[A288640(A124302(n))]`
-/

namespace A312618.P12601783853625159355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288640 (A124302 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313245 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312618.P12601783853625159355

/-! ## A312618.P663831074991822928

`A031346(A300668(n))-(A031346(n)-A312440(n))`
-/

namespace A312618.P663831074991822928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A300668 n).toNat - (A031346 n - A312440 n)

end

end A312618.P663831074991822928

/-! ## A312618.P1506106629820777947

`A310913(n)+A049321(A000110(n))`
-/

namespace A312618.P1506106629820777947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310913 n + A049321 (A000110 n).toNat

end

end A312618.P1506106629820777947

/-! ## A312618.P5848596465476448015

`A313246(n)-A124010(A124551(n))`
-/

namespace A312618.P5848596465476448015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n - A124010 (A124551 n).toNat

end

end A312618.P5848596465476448015

/-!
# A312619: Coordination sequence Gal.6.583.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312619, there is no canonical definition to state claims against.
-/

/-! ## A312619.P9958043482102277395

`A347440(A176561(n+3))+A312377(n)`
-/

namespace A312619.P9958043482102277395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347440 (A176561 (n + 3)).toNat + A312377 n

end

end A312619.P9958043482102277395

/-! ## A312619.P5512719552129467225

`A384323(A329604(n+1))+A018252(n+1)`
-/

namespace A312619.P5512719552129467225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384323 (A329604 (n + 1)).toNat + A018252 (n + 1)

end

end A312619.P5512719552129467225

/-!
# A312620: Coordination sequence Gal.6.256.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312620, the canonical program `A312620.P764241885793850481` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312620 has offset 0).

The definition of A312620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312620.P17362999978360846479

`A004396(n)+A311924(n)-A004525(A004396(n))`
-/

namespace A312620.P17362999978360846479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311924 n - A004525 (A004396 n).toNat)

end

end A312620.P17362999978360846479

namespace A312620

/-- `A004396(n)+A311924(n)-A004525(A004396(n))` -/
def P17362999978360846479.Spec : Prop :=
  ∀ n, P17362999978360846479.a n = A312620 n

end A312620

/-! ## A312620.P764241885793850481

`A004525(n)+A312526(n)-A004396(A004525(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A312620

/-- `A004525(n)+A312526(n)-A004396(A004525(n))` -/
def P764241885793850481.Spec : Prop :=
  ∀ n, P764241885793850481.a n = A312620 n

theorem P764241885793850481.correct : P764241885793850481.Spec := by
  intro n
  simp only [A312620]

end A312620

/-! ## A312620.P16259151248003526093

`A314841(n)-A128834(n)`
-/

namespace A312620.P16259151248003526093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n - A128834 n

end

end A312620.P16259151248003526093

namespace A312620

/-- `A314841(n)-A128834(n)` -/
def P16259151248003526093.Spec : Prop :=
  ∀ n, P16259151248003526093.a n = A312620 n

theorem P16259151248003526093.correct : P16259151248003526093.Spec := by
  intro n
  simp only [A312620, Nat.add_sub_cancel, A312620.P16259151248003526093.a, A312620.P764241885793850481.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A128834, A128834.P16779687439637953687.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A314841, A314841.P5099753023197914535.a, A010892, A010892.P14408744864468695543.a, A011865, A011865.P18048699183673763300.a, A312065, A312065.P12266081500591104946.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P16955071387491425171.f1, A047513.P16955071387491425171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312620

/-! ## A312620.P18186108040853451261

`A314841(n)+A010892(n+2)`
-/

namespace A312620.P18186108040853451261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + A010892 (n + 2)

end

end A312620.P18186108040853451261

namespace A312620

/-- `A314841(n)+A010892(n+2)` -/
def P18186108040853451261.Spec : Prop :=
  ∀ n, P18186108040853451261.a n = A312620 n

end A312620

/-! ## A312620.P14862523866320812944

`A314841(n)-A102283(A026741(n))`
-/

namespace A312620.P14862523866320812944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n - A102283 (A026741 n).toNat

end

end A312620.P14862523866320812944

namespace A312620

/-- `A314841(n)-A102283(A026741(n))` -/
def P14862523866320812944.Spec : Prop :=
  ∀ n, P14862523866320812944.a n = A312620 n

end A312620

/-! ## A312620.P14953640963153565773

`A314841(n)+A102283(2*A026741(n))`
-/

namespace A312620.P14953640963153565773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + A102283 (2 * A026741 n).toNat

end

end A312620.P14953640963153565773

namespace A312620

/-- `A314841(n)+A102283(2*A026741(n))` -/
def P14953640963153565773.Spec : Prop :=
  ∀ n, P14953640963153565773.a n = A312620 n

end A312620

/-! ## A312620.P9720852747611921223

`A313246(n)-A004525(n-A004396(n))`
-/

namespace A312620.P9720852747611921223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A312620.P9720852747611921223

namespace A312620

/-- `A313246(n)-A004525(n-A004396(n))` -/
def P9720852747611921223.Spec : Prop :=
  ∀ n, P9720852747611921223.a n = A312620 n

theorem P9720852747611921223.correct : P9720852747611921223.Spec := by
  intro n
  simp only [A312620, Nat.add_sub_cancel, A312620.P9720852747611921223.a, A312620.P764241885793850481.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A313246, A313246.P15329026928054582960.a, A011865, A011865.P18048699183673763300.a, A312065, A312065.P12266081500591104946.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P16955071387491425171.f1, A047513.P16955071387491425171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312620

/-! ## A312620.P12906772211105215834

`A315067(n)-A004396(A004525(n))`
-/

namespace A312620.P12906772211105215834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315067 n - A004396 (A004525 n).toNat

end

end A312620.P12906772211105215834

namespace A312620

/-- `A315067(n)-A004396(A004525(n))` -/
def P12906772211105215834.Spec : Prop :=
  ∀ n, P12906772211105215834.a n = A312620 n

theorem P12906772211105215834.correct : P12906772211105215834.Spec := by
  intro n
  simp only [A312620, Nat.add_sub_cancel, A312620.P12906772211105215834.a, A312620.P764241885793850481.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A315067, A315067.P1327162686597900604.a, A011865, A011865.P18048699183673763300.a, A312065, A312065.P12266081500591104946.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P16955071387491425171.f1, A047513.P16955071387491425171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312620

/-! ## A312620.P6917770119212374706

`A315058(n)-A004525(A004396(n))`
-/

namespace A312620.P6917770119212374706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315058 n - A004525 (A004396 n).toNat

end

end A312620.P6917770119212374706

namespace A312620

/-- `A315058(n)-A004525(A004396(n))` -/
def P6917770119212374706.Spec : Prop :=
  ∀ n, P6917770119212374706.a n = A312620 n

end A312620

/-! ## A312620.P12971810885886556338

`abs(A008592(n)-A315641(n))`
-/

namespace A312620.P12971810885886556338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315641 n|

end

end A312620.P12971810885886556338

namespace A312620

/-- `abs(A008592(n)-A315641(n))` -/
def P12971810885886556338.Spec : Prop :=
  ∀ n, P12971810885886556338.a n = A312620 n

end A312620

/-! ## A312620.P11234588517750104073

`2*A008706(n)-A315641(n)`
-/

namespace A312620.P11234588517750104073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315641 n

end

end A312620.P11234588517750104073

namespace A312620

/-- `2*A008706(n)-A315641(n)` -/
def P11234588517750104073.Spec : Prop :=
  ∀ n, P11234588517750104073.a n = A312620 n

end A312620

/-! ## A312620.P1168011265862140761

`A008458(n)+A008574(n)-A315641(n)`
-/

namespace A312620.P1168011265862140761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315641 n)

end

end A312620.P1168011265862140761

namespace A312620

/-- `A008458(n)+A008574(n)-A315641(n)` -/
def P1168011265862140761.Spec : Prop :=
  ∀ n, P1168011265862140761.a n = A312620 n

end A312620

/-! ## A312620.P14460965672047823508

`A315641(n)-A005843(A315641(n)-A008706(n))`
-/

namespace A312620.P14460965672047823508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315641 n - A005843 (A315641 n - A008706 n).toNat

end

end A312620.P14460965672047823508

namespace A312620

/-- `A315641(n)-A005843(A315641(n)-A008706(n))` -/
def P14460965672047823508.Spec : Prop :=
  ∀ n, P14460965672047823508.a n = A312620 n

end A312620

/-! ## A312620.P3112616646543535365

`A005843(A008706(n))-A315641(n)`
-/

namespace A312620.P3112616646543535365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315641 n

end

end A312620.P3112616646543535365

namespace A312620

/-- `A005843(A008706(n))-A315641(n)` -/
def P3112616646543535365.Spec : Prop :=
  ∀ n, P3112616646543535365.a n = A312620 n

end A312620

/-!
# A312621: Coordination sequence Gal.6.312.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312621, there is no canonical definition to state claims against.
-/

/-! ## A312621.P11519846875050029565

`A312528(n)+A193497(A167189(n+1))`
-/

namespace A312621.P11519846875050029565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312528 n + A193497 (A167189 (n + 1)).toNat

end

end A312621.P11519846875050029565

/-! ## A312621.P6629083501926231770

`A301676(n)+A061498(A001519(n))`
-/

namespace A312621.P6629083501926231770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A061498 (A001519 n).toNat

end

end A312621.P6629083501926231770

/-! ## A312621.P2613988937086253946

`A312067(A062399(n))+A057354(n)`
-/

namespace A312621.P2613988937086253946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312067 (A062399 n).toNat + A057354 n

end

end A312621.P2613988937086253946

/-! ## A312621.P17372425562841454441

`A250120(n)-A000035(A005699(n))`
-/

namespace A312621.P17372425562841454441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A000035 (A005699 n).toNat

end

end A312621.P17372425562841454441

/-! ## A312621.P95652860368177430

`A250120(n)-A010059(A050767(n))`
-/

namespace A312621.P95652860368177430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A010059 (A050767 n).toNat

end

end A312621.P95652860368177430

/-!
# A312622: Coordination sequence Gal.5.124.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312622, there is no canonical definition to state claims against.
-/

/-! ## A312622.P12353475090215800087

`A313109(n)+A014017(n+2)`
-/

namespace A312622.P12353475090215800087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313109 n + A014017 (n + 2)

end

end A312622.P12353475090215800087

/-! ## A312622.P11449164900344072699

`A312623(n)-A102683(A208900(n+1))`
-/

namespace A312622.P11449164900344072699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312623 n - A102683 (A208900 (n + 1)).toNat

end

end A312622.P11449164900344072699

/-! ## A312622.P14559468368660506076

`A312623(n)-A055641(A052551(2*n))`
-/

namespace A312622.P14559468368660506076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312623 n - A055641 (A052551 (2 * n)).toNat

end

end A312622.P14559468368660506076

/-! ## A312622.P6875554676674079275

`A312623(n)-A343639(A324098(n+1))`
-/

namespace A312622.P6875554676674079275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312623 n - A343639 (A324098 (n + 1)).toNat

end

end A312622.P6875554676674079275

/-! ## A312622.P6239816198908941319

`A312623(n)-A102683(A018922(n))`
-/

namespace A312622.P6239816198908941319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312623 n - A102683 (A018922 n).toNat

end

end A312622.P6239816198908941319

/-!
# A312623: Coordination sequence Gal.6.313.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312623, there is no canonical definition to state claims against.
-/

/-! ## A312623.P6481676495283200363

`A343639(A324098(n+1))+A312622(n)`
-/

namespace A312623.P6481676495283200363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 (A324098 (n + 1)).toNat + A312622 n

end

end A312623.P6481676495283200363

/-! ## A312623.P7259107013129426713

`A250120(n)-A065339(A183176(n+1))`
-/

namespace A312623.P7259107013129426713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A065339 (A183176 (n + 1)).toNat

end

end A312623.P7259107013129426713

/-! ## A312623.P14571796056040673195

`A312133(n)+A097795(A155212(n))`
-/

namespace A312623.P14571796056040673195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312133 n + A097795 (A155212 n).toNat

end

end A312623.P14571796056040673195

/-! ## A312623.P12872196237258840624

`A312549(n)+A213728(A120588(n))`
-/

namespace A312623.P12872196237258840624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312549 n + A213728 (A120588 n).toNat

end

end A312623.P12872196237258840624

/-! ## A312623.P13987068775720346220

`A312091(n)+A001221(A347590(n))`
-/

namespace A312623.P13987068775720346220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312091 n + A001221 (A347590 n).toNat

end

end A312623.P13987068775720346220

/-!
# A312624: Coordination sequence Gal.6.312.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312624, there is no canonical definition to state claims against.
-/

/-! ## A312624.P8685610001166733153

`A312666(n)-A277159(A038333(n))`
-/

namespace A312624.P8685610001166733153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312666 n - A277159 (A038333 n).toNat

end

end A312624.P8685610001166733153

/-! ## A312624.P6311567845728920737

`xor(A102683(A136628(n)), A312569(n))`
-/

namespace A312624.P6311567845728920737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102683 (A136628 n).toNat) (A312569 n)

end

end A312624.P6311567845728920737

/-! ## A312624.P65833878214955621

`A314725(n)-A010892(A010895(n+1))`
-/

namespace A312624.P65833878214955621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314725 n - A010892 (A010895 (n + 1)).toNat

end

end A312624.P65833878214955621

/-! ## A312624.P11843050598699153085

`A312666(n)-A137893(A053126(n+4))`
-/

namespace A312624.P11843050598699153085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312666 n - A137893 (A053126 (n + 4)).toNat

end

end A312624.P11843050598699153085

/-! ## A312624.P9725850141070644653

`A312551(n)+A226464(A011994(n+6))`
-/

namespace A312624.P9725850141070644653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312551 n + A226464 (A011994 (n + 6)).toNat

end

end A312624.P9725850141070644653

/-!
# A312625: Coordination sequence Gal.6.296.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312625, there is no canonical definition to state claims against.
-/

/-! ## A312625.P9310129544302215724

`A312626(n)-A185284(A311010(n))`
-/

namespace A312625.P9310129544302215724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312626 n - A185284 (A311010 n).toNat

end

end A312625.P9310129544302215724

/-! ## A312625.P17678133141083484862

`A312626(n)-A185284(A311457(n))`
-/

namespace A312625.P17678133141083484862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312626 n - A185284 (A311457 n).toNat

end

end A312625.P17678133141083484862

/-! ## A312625.P4350252413123767570

`A312140(n)+A001221(A032264(n))-char[9]`
-/

namespace A312625.P4350252413123767570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + A001221 (A032264 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312625.P4350252413123767570

/-! ## A312625.P7725774701039568787

`A315061(n)-A001221(A032439(n))-char[9]`
-/

namespace A312625.P7725774701039568787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n - A001221 (A032439 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312625.P7725774701039568787

/-! ## A312625.P11906152923505826868

`A239504(A116760(n+1))`
-/

namespace A312625.P11906152923505826868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239504 (A116760 (n + 1)).toNat

end

end A312625.P11906152923505826868

/-!
# A312626: Coordination sequence Gal.6.282.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312626, there is no canonical definition to state claims against.
-/

/-! ## A312626.P2650612994446094193

`record[A312664(n)-A251749(n)]`
-/

namespace A312626.P2650612994446094193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312664 n - A251749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312626.P2650612994446094193

/-! ## A312626.P10685145220801851638

`A312625(n)+A185284(A312625(n)-n)`
-/

namespace A312626.P10685145220801851638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312625 n + A185284 (A312625 n - (n : ℤ)).toNat

end

end A312626.P10685145220801851638

/-! ## A312626.P8056579722510856091

`A003002(A358245(n+1))`
-/

namespace A312626.P8056579722510856091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A358245 (n + 1)).toNat

end

end A312626.P8056579722510856091

/-! ## A312626.P11193928679113356257

`A312140(n)+A001221(A032264(n))`
-/

namespace A312626.P11193928679113356257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + A001221 (A032264 n).toNat

end

end A312626.P11193928679113356257

/-! ## A312626.P4847651081223090526

`A312141(n)+A031346(A276225(n))`
-/

namespace A312626.P4847651081223090526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312141 n + A031346 (A276225 n).toNat

end

end A312626.P4847651081223090526

/-!
# A312627: Coordination sequence Gal.6.533.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312627, there is no canonical definition to state claims against.
-/

/-! ## A312627.P10126503365450377183

`xor(A028832(A317130(n)), A312718(n))`
-/

namespace A312627.P10126503365450377183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028832 (A317130 n).toNat) (A312718 n)

end

end A312627.P10126503365450377183

/-! ## A312627.P169632680456598156

`A008579(n)+A001222(A147011(n+1))`
-/

namespace A312627.P169632680456598156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A001222 (A147011 (n + 1)).toNat

end

end A312627.P169632680456598156

/-! ## A312627.P2594321702226396804

`A311843(n)+A277700(A072844(n+1))`
-/

namespace A312627.P2594321702226396804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n + A277700 (A072844 (n + 1)).toNat

end

end A312627.P2594321702226396804

/-! ## A312627.P13606186691847318070

`xor(A000164(A307349(n)), A063093(n+1))`
-/

namespace A312627.P13606186691847318070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000164 (A307349 n).toNat) (A063093 (n + 1))

end

end A312627.P13606186691847318070

/-! ## A312627.P14037712978150460368

`A250120(n)+A117165(A112610(2*(n+1)))`
-/

namespace A312627.P14037712978150460368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A117165 (A112610 (2 * (n + 1))).toNat

end

end A312627.P14037712978150460368

/-!
# A312629: Coordination sequence Gal.6.449.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312629, there is no canonical definition to state claims against.
-/

/-! ## A312629.P15810172744143142377

`A312622(n)+A057078(A003382(n+1))`
-/

namespace A312629.P15810172744143142377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312622 n + A057078 (A003382 (n + 1)).toNat

end

end A312629.P15810172744143142377

/-! ## A312629.P598403984565732258

`A311147(n)+A179751(A048099(n+1))`
-/

namespace A312629.P598403984565732258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 n + A179751 (A048099 (n + 1)).toNat

end

end A312629.P598403984565732258

/-! ## A312629.P16156893537453281347

`A311149(n)+A179751(A048099(n+1))`
-/

namespace A312629.P16156893537453281347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311149 n + A179751 (A048099 (n + 1)).toNat

end

end A312629.P16156893537453281347

/-! ## A312629.P2989792666355075866

`A311152(n)+A179751(A048099(n+1))`
-/

namespace A312629.P2989792666355075866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311152 n + A179751 (A048099 (n + 1)).toNat

end

end A312629.P2989792666355075866

/-!
# A312630: Coordination sequence Gal.4.90.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312630, there is no canonical definition to state claims against.
-/

/-! ## A312630.P2800227219837700271

`xor(A268584(A036630(n)), A312631(n))`
-/

namespace A312630.P2800227219837700271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A268584 (A036630 n).toNat) (A312631 n)

end

end A312630.P2800227219837700271

/-!
# A312631: Coordination sequence Gal.6.436.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312631, there is no canonical definition to state claims against.
-/

/-! ## A312631.P17209156558681604012

`A312632(n)-A359241(A061493(2*n+5))`
-/

namespace A312631.P17209156558681604012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312632 n - A359241 (A061493 (2 * n + 5)).toNat

end

end A312631.P17209156558681604012

/-!
# A312632: Coordination sequence Gal.4.87.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312632, there is no canonical definition to state claims against.
-/

/-! ## A312632.P13393669410086335268

`∑[A031347(A246626(n+1))]`
-/

namespace A312632.P13393669410086335268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A246626 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312632.P13393669410086335268

/-! ## A312632.P13465628359443765169

`and(A033091(A310318(n)), A312644(n))`
-/

namespace A312632.P13465628359443765169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033091 (A310318 n).toNat) (A312644 n)

end

end A312632.P13465628359443765169

/-! ## A312632.P14974503070580081793

`or(A008574(n), A062756(A052481(n)))`
-/

namespace A312632.P14974503070580081793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A062756 (A052481 n).toNat)

end

end A312632.P14974503070580081793

/-!
# A312634: Coordination sequence Gal.6.437.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312634, there is no canonical definition to state claims against.
-/

/-! ## A312634.P787371760272490013

`A312639(n)-A057427(A052787(n)/2)`
-/

namespace A312634.P787371760272490013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312639 n - A057427 (SequenceMachineLib.roundAway ((A052787 n : ℚ) / 2)).toNat

end

end A312634.P787371760272490013

/-! ## A312634.P1084870832444035984

`A312578(n)+A124760(A302010(2*n+5))`
-/

namespace A312634.P1084870832444035984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312578 n + A124760 (A302010 (2 * n + 5)).toNat

end

end A312634.P1084870832444035984

/-! ## A312634.P6004570895515670552

`A312639(n)-A057427(A052787(n))`
-/

namespace A312634.P6004570895515670552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312639 n - A057427 (A052787 n).toNat

end

end A312634.P6004570895515670552

/-! ## A312634.P12139152089195894107

`A313222(n)-A090239(A149217(n))`
-/

namespace A312634.P12139152089195894107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313222 n - A090239 (A149217 n).toNat

end

end A312634.P12139152089195894107

/-! ## A312634.P14260253332965242775

`A312639(n)-A323162(A049027(n))`
-/

namespace A312634.P14260253332965242775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312639 n - A323162 (A049027 n).toNat

end

end A312634.P14260253332965242775

/-!
# A312635: Coordination sequence Gal.5.122.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312635, there is no canonical definition to state claims against.
-/

/-! ## A312635.P4859570713230604876

`A312004(n)+A238532(A303160(n))`
-/

namespace A312635.P4859570713230604876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312004 n + A238532 (A303160 n).toNat

end

end A312635.P4859570713230604876

/-! ## A312635.P2736147580460423690

`∑[A101296(A071741(n)+A032741(n))]`
-/

namespace A312635.P2736147580460423690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A071741 n + A032741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312635.P2736147580460423690

/-! ## A312635.P10911490773107773009

`A070824(A108066(n+1))+A008574(n)`
-/

namespace A312635.P10911490773107773009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A108066 (n + 1)).toNat + A008574 n

end

end A312635.P10911490773107773009

/-! ## A312635.P11577392131431670620

`or(A070824(A108066(n+1)), A311335(n))`
-/

namespace A312635.P11577392131431670620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070824 (A108066 (n + 1)).toNat) (A311335 n)

end

end A312635.P11577392131431670620

/-!
# A312636: Coordination sequence Gal.5.119.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312636, there is no canonical definition to state claims against.
-/

/-! ## A312636.P16159403742945470616

`A312471(n)+A249856(A312464(2*n))`
-/

namespace A312636.P16159403742945470616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312471 n + A249856 (A312464 (2 * n)).toNat

end

end A312636.P16159403742945470616

/-! ## A312636.P15566171438952460909

`A312459(n)+A000095(A057469(n+1))`
-/

namespace A312636.P15566171438952460909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312459 n + A000095 (A057469 (n + 1)).toNat

end

end A312636.P15566171438952460909

/-! ## A312636.P12972386014488497871

`A312464(n)+A000095(A057469(n+1))`
-/

namespace A312636.P12972386014488497871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 n + A000095 (A057469 (n + 1)).toNat

end

end A312636.P12972386014488497871

/-! ## A312636.P4093329576540098906

`A312499(n)-2*A014064(A014005(n))`
-/

namespace A312636.P4093329576540098906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312499 n - 2 * A014064 (A014005 n).toNat

end

end A312636.P4093329576540098906

/-! ## A312636.P5994026009302101737

`A312459(n)+A000122(A165829(3*n+2))`
-/

namespace A312636.P5994026009302101737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312459 n + A000122 (A165829 (3 * n + 2)).toNat

end

end A312636.P5994026009302101737

/-!
# A312637: Coordination sequence Gal.5.149.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312637, there is no canonical definition to state claims against.
-/

/-! ## A312637.P5178953383231852088

`A277700(A001047(n))+abs(1-4*n)-char[8]`
-/

namespace A312637.P5178953383231852088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277700 (A001047 n).toNat + |1 - (4 * n : ℤ)| - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312637.P5178953383231852088

/-! ## A312637.P18168635541401412881

`A312638(n)-A102683(A149040(n))`
-/

namespace A312637.P18168635541401412881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312638 n - A102683 (A149040 n).toNat

end

end A312637.P18168635541401412881

/-! ## A312637.P13522571848488266591

`A312638(n)-A185284(A127968(n))`
-/

namespace A312637.P13522571848488266591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312638 n - A185284 (A127968 n).toNat

end

end A312637.P13522571848488266591

/-!
# A312638: Coordination sequence Gal.6.318.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312638, there is no canonical definition to state claims against.
-/

/-! ## A312638.P15289775289935232299

`A312639(n)-A025466(A101652(n))`
-/

namespace A312638.P15289775289935232299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312639 n - A025466 (A101652 n).toNat

end

end A312638.P15289775289935232299

/-! ## A312638.P16895976931123516348

`A315203(A120126(n))-A143432(n+3)`
-/

namespace A312638.P16895976931123516348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315203 (A120126 n).toNat - A143432 (n + 3)

end

end A312638.P16895976931123516348

/-! ## A312638.P10633945334238660924

`A277700(A001047(n))+abs(1-4*n)`
-/

namespace A312638.P10633945334238660924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277700 (A001047 n).toNat + |1 - (4 * n : ℤ)|

end

end A312638.P10633945334238660924

/-! ## A312638.P7326672209721574260

`A070824(A176754(n))+A008574(n)`
-/

namespace A312638.P7326672209721574260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A176754 n).toNat + A008574 n

end

end A312638.P7326672209721574260

/-! ## A312638.P16361611897335145085

`A313241(n)-A035232(A385024(n+1))`
-/

namespace A312638.P16361611897335145085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n - A035232 (A385024 (n + 1)).toNat

end

end A312638.P16361611897335145085

/-!
# A312639: Coordination sequence Gal.6.433.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312639, there is no canonical definition to state claims against.
-/

/-! ## A312639.P2666324484916175439

`A312638(n)+A025466(A101652(n))`
-/

namespace A312639.P2666324484916175439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312638 n + A025466 (A101652 n).toNat

end

end A312639.P2666324484916175439

/-! ## A312639.P4114236747150563953

`A313191(n)-A244895(A001815(n))`
-/

namespace A312639.P4114236747150563953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313191 n - A244895 (A001815 n).toNat

end

end A312639.P4114236747150563953

/-! ## A312639.P17239998023879345564

`A312634(n)+A057427(A052787(n)/2)`
-/

namespace A312639.P17239998023879345564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312634 n + A057427 (SequenceMachineLib.roundAway ((A052787 n : ℚ) / 2)).toNat

end

end A312639.P17239998023879345564

/-! ## A312639.P4029319006000105238

`A312634(n)+A057427(A052787(n))`
-/

namespace A312639.P4029319006000105238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312634 n + A057427 (A052787 n).toNat

end

end A312639.P4029319006000105238

/-!
# A312640: Coordination sequence Gal.5.79.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312640, there is no canonical definition to state claims against.
-/

/-! ## A312640.P8840357737198559211

`A312641(n)-A096158(A049907(n+1))`
-/

namespace A312640.P8840357737198559211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312641 n - A096158 (A049907 (n + 1)).toNat

end

end A312640.P8840357737198559211

/-! ## A312640.P17268381583429158352

`A312644(n)-A096158(A049907(n+1))²`
-/

namespace A312640.P17268381583429158352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312644 n - A096158 (A049907 (n + 1)).toNat ^ 2

end

end A312640.P17268381583429158352

/-! ## A312640.P8609379815695915475

`A001043(n+1)-A006519(A002182(2*n+3))`
-/

namespace A312640.P8609379815695915475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A006519 (A002182 (2 * n + 3)).toNat

end

end A312640.P8609379815695915475

/-! ## A312640.P1099072852386640232

`A312644(n)-A096158(A049907(n+1))*A096158(n+1)`
-/

namespace A312640.P1099072852386640232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312644 n - A096158 (A049907 (n + 1)).toNat * A096158 (n + 1)

end

end A312640.P1099072852386640232

/-!
# A312641: Coordination sequence Gal.5.74.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312641, there is no canonical definition to state claims against.
-/

/-! ## A312641.P14737574480419016946

`A312640(n)+A096158(A049907(n+1))`
-/

namespace A312641.P14737574480419016946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312640 n + A096158 (A049907 (n + 1)).toNat

end

end A312641.P14737574480419016946

/-! ## A312641.P12986557861030297316

`A312644(n)-A096158(A049907(n+1))`
-/

namespace A312641.P12986557861030297316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312644 n - A096158 (A049907 (n + 1)).toNat

end

end A312641.P12986557861030297316

/-! ## A312641.P11736216751635552209

`or(A008481(A358454(n+1)²), A008574(n))`
-/

namespace A312641.P11736216751635552209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008481 (A358454 (n + 1) ^ 2).toNat) (A008574 n)

end

end A312641.P11736216751635552209

/-! ## A312641.P16003897305005951334

`A312792(n^A287383(n))-A284010(A004277(2*n))`
-/

namespace A312641.P16003897305005951334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312792 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A287383 n : ℤ))).toNat - A284010 (A004277 (2 * n)).toNat

end

end A312641.P16003897305005951334

/-!
# A312642: Coordination sequence Gal.6.243.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312642, there is no canonical definition to state claims against.
-/

/-! ## A312642.P13740736461864732006

`A366531(A181811(n+1))+A312452(n)`
-/

namespace A312642.P13740736461864732006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366531 (A181811 (n + 1)).toNat + A312452 n

end

end A312642.P13740736461864732006

/-! ## A312642.P15139088750561480346

`A340619(A079425(n+1)+1)+n+n`
-/

namespace A312642.P15139088750561480346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340619 (A079425 (n + 1) + 1).toNat + (n : ℤ) + (n : ℤ)

end

end A312642.P15139088750561480346

/-! ## A312642.P1859228351371431372

`∑[A179941(A011782(∑{d}[∏{p}[n+1, #], (n+1)/#]))]`
-/

namespace A312642.P1859228351371431372
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179941 (A011782 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℚ) / (d : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312642.P1859228351371431372

/-! ## A312642.P11050265246117365615

`eq[A185284(n), A373330(A194832(n+4))]`
-/

namespace A312642.P11050265246117365615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373330 (A194832 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312642.P11050265246117365615

/-!
# A312643: Coordination sequence Gal.6.238.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312643, there is no canonical definition to state claims against.
-/

/-! ## A312643.P587683343368833908

`or(A070824(A088578(n)), A311368(n))`
-/

namespace A312643.P587683343368833908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070824 (A088578 n).toNat) (A311368 n)

end

end A312643.P587683343368833908

/-! ## A312643.P11873822372213509732

`or(A070824(A088578(n)), A312303(n))`
-/

namespace A312643.P11873822372213509732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070824 (A088578 n).toNat) (A312303 n)

end

end A312643.P11873822372213509732

/-! ## A312643.P7263556452944365519

`or(A070824(A088578(n)), A312642(n))`
-/

namespace A312643.P7263556452944365519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070824 (A088578 n).toNat) (A312642 n)

end

end A312643.P7263556452944365519

/-! ## A312643.P9855411794883679459

`A144078(A112524(n+1))+A008574(n)`
-/

namespace A312643.P9855411794883679459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144078 (A112524 (n + 1)).toNat + A008574 n

end

end A312643.P9855411794883679459

/-! ## A312643.P17404267241280740896

`A366531(A181811(n+1))+A312455(n)`
-/

namespace A312643.P17404267241280740896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366531 (A181811 (n + 1)).toNat + A312455 n

end

end A312643.P17404267241280740896

/-!
# A312644: Coordination sequence Gal.6.147.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312644, there is no canonical definition to state claims against.
-/

/-! ## A312644.P8268690885757086021

`A312498(n)+A096158(A073776(n))-Δ[A001613(2*n+1)]`
-/

namespace A312644.P8268690885757086021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312498 n + A096158 (A073776 n).toNat - (f1 (n + 1) - f1 n)

end

end A312644.P8268690885757086021

/-! ## A312644.P7905587142495991593

`or(A001613(A038020(n)), A312640(n))-Δ[A001613(2*n+1)]`
-/

namespace A312644.P7905587142495991593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001613 (A038020 n).toNat) (A312640 n) - (f1 (n + 1) - f1 n)

end

end A312644.P7905587142495991593

/-! ## A312644.P15751324784380833926

`A312645(n)%Δ[A029471(n+1)]`
-/

namespace A312644.P15751324784380833926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312645 n) (f1 (n + 1) - f1 n)

end

end A312644.P15751324784380833926

/-! ## A312644.P2480493522864745714

`A312645(n^A295924(3*n+5))`
-/

namespace A312644.P2480493522864745714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312645 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A295924 (3 * n + 5) : ℤ))).toNat

end

end A312644.P2480493522864745714

/-!
# A312645: Coordination sequence Gal.6.140.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312645, there is no canonical definition to state claims against.
-/

/-! ## A312645.P3422127512550909555

`A312498(n)+A086937(A022173(n))`
-/

namespace A312645.P3422127512550909555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312498 n + A086937 (A022173 n).toNat

end

end A312645.P3422127512550909555

/-! ## A312645.P4793195911371360832

`A312498(n)+A096158(A073776(n))`
-/

namespace A312645.P4793195911371360832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312498 n + A096158 (A073776 n).toNat

end

end A312645.P4793195911371360832

/-! ## A312645.P12368625004193776767

`or(A001613(A038020(n)), A312640(n))`
-/

namespace A312645.P12368625004193776767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001613 (A038020 n).toNat) (A312640 n)

end

end A312645.P12368625004193776767

/-! ## A312645.P17718178491258887786

`or(A037282(A029643(n)), A312640(n))`
-/

namespace A312645.P17718178491258887786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037282 (A029643 n).toNat) (A312640 n)

end

end A312645.P17718178491258887786

/-!
# A312646: Coordination sequence Gal.6.583.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312646, there is no canonical definition to state claims against.
-/

/-! ## A312646.P13912778458937742710

`A312475(n)+A001222(A113370(3*n))`
-/

namespace A312646.P13912778458937742710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + A001222 (A113370 (3 * n)).toNat

end

end A312646.P13912778458937742710

/-! ## A312646.P3050825813420537826

`A194081(lt[A194072(2*n+1), A194034(n+1)])`
-/

namespace A312646.P3050825813420537826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194072 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194081 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A312646.P3050825813420537826

/-! ## A312646.P151177815891478226

`A194081(lt[A194072(2*n+1), A194036(n+1)])`
-/

namespace A312646.P151177815891478226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194072 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194081 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A312646.P151177815891478226

/-! ## A312646.P10478110017976219300

`A194081(lt[A194072(2*(n+1)), A194100(n+1)])`
-/

namespace A312646.P10478110017976219300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194072 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194081 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A312646.P10478110017976219300

/-! ## A312646.P12352287137120954667

`A194081(lt[A194109(2*n+3), A194100(n+1)])`
-/

namespace A312646.P12352287137120954667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194109 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194081 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A312646.P12352287137120954667

/-!
# A312647: Coordination sequence Gal.5.268.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312647, there is no canonical definition to state claims against.
-/

/-! ## A312647.P17719950166205742233

`A312501(n)+A302110(A087206(n)+n)`
-/

namespace A312647.P17719950166205742233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312501 n + A302110 (A087206 n + (n : ℤ)).toNat

end

end A312647.P17719950166205742233

/-! ## A312647.P1833277959586874173

`A055029(A143566(n))+A008579(n)`
-/

namespace A312647.P1833277959586874173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (A143566 n).toNat + A008579 n

end

end A312647.P1833277959586874173

/-! ## A312647.P5705234190358814649

`A312508(n)+A123391(A032011(n))`
-/

namespace A312647.P5705234190358814649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312508 n + A123391 (A032011 n).toNat

end

end A312647.P5705234190358814649

/-! ## A312647.P14570255680161460186

`A312704(n)-A086134(A000110(n))`
-/

namespace A312647.P14570255680161460186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312704 n - A086134 (A000110 n).toNat

end

end A312647.P14570255680161460186

/-!
# A312648: Coordination sequence Gal.5.196.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312648, there is no canonical definition to state claims against.
-/

/-! ## A312648.P9880224780053954434

`A312661(n)-A117814(n²)-A330025(C(n, 6))`
-/

namespace A312648.P9880224780053954434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312661 n - A117814 (n ^ 2) - A330025 (Nat.choose n 6)

end

end A312648.P9880224780053954434

/-! ## A312648.P12660789806071174146

`A312526(n)+A099475(A350490(n))`
-/

namespace A312648.P12660789806071174146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312526 n + A099475 (A350490 n).toNat

end

end A312648.P12660789806071174146

/-! ## A312648.P18113286240007413522

`A312668(n)-A000520(A160110(n))`
-/

namespace A312648.P18113286240007413522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312668 n - A000520 (A160110 n).toNat

end

end A312648.P18113286240007413522

/-!
# A312649: Coordination sequence Gal.6.460.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312649, there is no canonical definition to state claims against.
-/

/-! ## A312649.P7695380195960866380

`A312592(n)+A021913(A000512(n+1))`
-/

namespace A312649.P7695380195960866380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312592 n + A021913 (A000512 (n + 1)).toNat

end

end A312649.P7695380195960866380

/-! ## A312649.P9002138615803363527

`A312661(n)-A117814(n²)`
-/

namespace A312649.P9002138615803363527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312661 n - A117814 (n ^ 2)

end

end A312649.P9002138615803363527

/-! ## A312649.P15861950004861237775

`A312660(n)-A101436(A020114(n))`
-/

namespace A312649.P15861950004861237775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312660 n - A101436 (A020114 n).toNat

end

end A312649.P15861950004861237775

/-! ## A312649.P1008768254224648716

`A312655(n)-A324917(A141214(n))`
-/

namespace A312649.P1008768254224648716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312655 n - A324917 (A141214 n).toNat

end

end A312649.P1008768254224648716

/-! ## A312649.P8339221860857302611

`A318880(A232482(2*(n+1))+1)+A312611(n)`
-/

namespace A312649.P8339221860857302611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (A232482 (2 * (n + 1)) + 1).toNat + A312611 n

end

end A312649.P8339221860857302611

/-!
# A312650: Coordination sequence Gal.6.214.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312650, there is no canonical definition to state claims against.
-/

/-! ## A312650.P5184870124087051251

`A250120(n)+A070750(A117189(n))`
-/

namespace A312650.P5184870124087051251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A070750 (A117189 n).toNat

end

end A312650.P5184870124087051251

/-! ## A312650.P513980109458356295

`A250120(n)+A244895(A268963(n))`
-/

namespace A312650.P513980109458356295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A244895 (A268963 n).toNat

end

end A312650.P513980109458356295

/-! ## A312650.P8342427353913526928

`A250120(n)-A117568(A007051(n))`
-/

namespace A312650.P8342427353913526928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A117568 (A007051 n).toNat

end

end A312650.P8342427353913526928

/-! ## A312650.P7986693896710307648

`A250120(n)-A330025(A052709(n))`
-/

namespace A312650.P7986693896710307648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A330025 (A052709 n).toNat

end

end A312650.P7986693896710307648

/-! ## A312650.P13399917201566705385

`A250120(n)+A046980(A062572(n+1))`
-/

namespace A312650.P13399917201566705385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A046980 (A062572 (n + 1)).toNat

end

end A312650.P13399917201566705385

/-!
# A312651: Coordination sequence Gal.6.457.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312651, there is no canonical definition to state claims against.
-/

/-! ## A312651.P10875538010975179434

`∑[A063726(n)+A001222(A150848(n))]`
-/

namespace A312651.P10875538010975179434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063726 n + A001222 (A150848 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312651.P10875538010975179434

/-! ## A312651.P9863331180508047916

`A312326(n)+A205295(A128755(n+1))`
-/

namespace A312651.P9863331180508047916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312326 n + A205295 (A128755 (n + 1)).toNat

end

end A312651.P9863331180508047916

/-! ## A312651.P14728999292021693891

`A312652(n)-A340998(A055772(n+1))`
-/

namespace A312651.P14728999292021693891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312652 n - A340998 ((A055772 (n + 1)).toNat + 140)

end

end A312651.P14728999292021693891

/-! ## A312651.P14337427025774814058

`A312652(n)-A235145(A219681(n+1))`
-/

namespace A312651.P14337427025774814058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312652 n - A235145 (A219681 (n + 1)).toNat

end

end A312651.P14337427025774814058

/-!
# A312652: Coordination sequence Gal.6.458.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312652, there is no canonical definition to state claims against.
-/

/-! ## A312652.P18260608344413256878

`A312655(n)-A086076(A159835(2*n+1))`
-/

namespace A312652.P18260608344413256878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312655 n - A086076 (A159835 (2 * n + 1)).toNat

end

end A312652.P18260608344413256878

/-! ## A312652.P4940004806986422674

`or(A114510(A114499(n)), A312651(n))`
-/

namespace A312652.P4940004806986422674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A114510 (A114499 n).toNat) (A312651 n)

end

end A312652.P4940004806986422674

/-! ## A312652.P6536823708837339115

`A340998(A055772(n+1))+A312651(n)`
-/

namespace A312652.P6536823708837339115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A055772 (n + 1)).toNat + 140) + A312651 n

end

end A312652.P6536823708837339115

/-! ## A312652.P4454675060661275565

`A312651(n)+A235145(A219681(n+1))`
-/

namespace A312652.P4454675060661275565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312651 n + A235145 (A219681 (n + 1)).toNat

end

end A312652.P4454675060661275565

/-! ## A312652.P13078169096428457085

`A312029(n)+A174793(A319966(n+1))`
-/

namespace A312652.P13078169096428457085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312029 n + A174793 (A319966 (n + 1)).toNat

end

end A312652.P13078169096428457085

/-!
# A312653: Coordination sequence Gal.6.372.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312653, there is no canonical definition to state claims against.
-/

/-! ## A312653.P11060804257849677126

`A315303(n)-A002126(A002064(n))`
-/

namespace A312653.P11060804257849677126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315303 n - A002126 (A002064 n).toNat

end

end A312653.P11060804257849677126

/-! ## A312653.P5230692506824661583

`A312658(n)-A107393(A053625(n))`
-/

namespace A312653.P5230692506824661583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312658 n - A107393 (A053625 n).toNat

end

end A312653.P5230692506824661583

/-! ## A312653.P15891754538318574471

`A315303(n)-A230595(A321947(n+2))`
-/

namespace A312653.P15891754538318574471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315303 n - A230595 (A321947 (n + 2)).toNat

end

end A312653.P15891754538318574471

/-! ## A312653.P14185611406876907446

`A315203(n)-A143432(A138791(3*n+4))`
-/

namespace A312653.P14185611406876907446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315203 n - A143432 (A138791 (3 * n + 4)).toNat

end

end A312653.P14185611406876907446

/-! ## A312653.P13400805910873854401

`A312475(A087051(n))+2%A076112(n+1)`
-/

namespace A312653.P13400805910873854401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 (A087051 n).toNat + Int.tmod 2 (A076112 (n + 1))

end

end A312653.P13400805910873854401

/-!
# A312654: Coordination sequence Gal.6.316.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312654, there is no canonical definition to state claims against.
-/

/-! ## A312654.P15450519233816034595

`A319058(A059100(n))+A310919(n)`
-/

namespace A312654.P15450519233816034595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319058 (A059100 n).toNat + A310919 n

end

end A312654.P15450519233816034595

/-! ## A312654.P4024641982369882044

`A314060(n)-A179759(p?[round(8*n/7)]²)`
-/

namespace A312654.P4024641982369882044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314060 n - A179759 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A312654.P4024641982369882044

/-! ## A312654.P12871156848910501657

`A310792(n)+A001221(A000142(n))`
-/

namespace A312654.P12871156848910501657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310792 n + A001221 (A000142 n).toNat

end

end A312654.P12871156848910501657

/-! ## A312654.P893704717221457441

`A312173(n)+A001221(A102276(2*n+1))`
-/

namespace A312654.P893704717221457441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312173 n + A001221 (A102276 (2 * n + 1)).toNat

end

end A312654.P893704717221457441

/-!
# A312655: Coordination sequence Gal.4.62.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312655, the canonical program `A312655.P15954006372491132960` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312655 has offset 0).

The definition of A312655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312655.P7494778495825217556

`A004275(comp[or(5, n)-2]+n+1)`
-/

namespace A312655.P7494778495825217556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 1))

end

end A312655.P7494778495825217556

namespace A312655

/-- `A004275(comp[or(5, n)-2]+n+1)` -/
def P7494778495825217556.Spec : Prop :=
  ∀ n, P7494778495825217556.a n = A312655 n

end A312655

/-! ## A312655.P15954006372491132960

`A301298(n)-A128834(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A312655

/-- `A301298(n)-A128834(n)` -/
def P15954006372491132960.Spec : Prop :=
  ∀ n, P15954006372491132960.a n = A312655 n

theorem P15954006372491132960.correct : P15954006372491132960.Spec := by
  intro n
  simp only [A312655]

end A312655

/-! ## A312655.P4364276294740032841

`A313110(n)-∑[A131736(n)]`
-/

namespace A312655.P4364276294740032841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312655.P4364276294740032841

namespace A312655

/-- `A313110(n)-∑[A131736(n)]` -/
def P4364276294740032841.Spec : Prop :=
  ∀ n, P4364276294740032841.a n = A312655 n

end A312655

/-! ## A312655.P14193292238191124440

`A004277(A047513(n+1)+n)`
-/

namespace A312655.P14193292238191124440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047513 (n + 1) + (n : ℤ)).toNat

end

end A312655.P14193292238191124440

namespace A312655

/-- `A004277(A047513(n+1)+n)` -/
def P14193292238191124440.Spec : Prop :=
  ∀ n, P14193292238191124440.a n = A312655 n

end A312655

/-! ## A312655.P16412267823777692264

`A301298(n)+A010892(n+2)`
-/

namespace A312655.P16412267823777692264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A010892 (n + 2)

end

end A312655.P16412267823777692264

namespace A312655

/-- `A301298(n)+A010892(n+2)` -/
def P16412267823777692264.Spec : Prop :=
  ∀ n, P16412267823777692264.a n = A312655 n

end A312655

/-! ## A312655.P855208033221546357

`2*A312065(n)-A008574(n)`
-/

namespace A312655.P855208033221546357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312065 n - A008574 n

end

end A312655.P855208033221546357

namespace A312655

/-- `2*A312065(n)-A008574(n)` -/
def P855208033221546357.Spec : Prop :=
  ∀ n, P855208033221546357.a n = A312655 n

end A312655

/-! ## A312655.P11778277472079293338

`A315178(n)-2*A128834(n)`
-/

namespace A312655.P11778277472079293338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315178 n - 2 * A128834 n

end

end A312655.P11778277472079293338

namespace A312655

/-- `A315178(n)-2*A128834(n)` -/
def P11778277472079293338.Spec : Prop :=
  ∀ n, P11778277472079293338.a n = A312655 n

theorem P11778277472079293338.correct : P11778277472079293338.Spec := by
  intro n
  simp only [A312655, Nat.add_sub_cancel, A312655.P11778277472079293338.a, A312655.P15954006372491132960.a, A128834, A128834.P16779687439637953687.a, A301298, A301298.P17841740048100400826.a, A315178, A315178.P17735622215823449936.a, A010892, A010892.P14408744864468695543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312655

/-! ## A312655.P7314155199283957047

`A004275(A047513(n+1)+1+n)`
-/

namespace A312655.P7314155199283957047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047513 (n + 1) + 1 + (n : ℤ)).toNat

end

end A312655.P7314155199283957047

namespace A312655

/-- `A004275(A047513(n+1)+1+n)` -/
def P7314155199283957047.Spec : Prop :=
  ∀ n, P7314155199283957047.a n = A312655 n

end A312655

/-! ## A312655.P16495913230620943032

`A004277(A312065(n)-A004277(n))`
-/

namespace A312655.P16495913230620943032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312065 n - A004277 n).toNat

end

end A312655.P16495913230620943032

namespace A312655

/-- `A004277(A312065(n)-A004277(n))` -/
def P16495913230620943032.Spec : Prop :=
  ∀ n, P16495913230620943032.a n = A312655 n

end A312655

/-! ## A312655.P7054199603375749948

`A301298(n)-A046978(A004396(2*n))`
-/

namespace A312655.P7054199603375749948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A046978 (A004396 (2 * n)).toNat

end

end A312655.P7054199603375749948

namespace A312655

/-- `A301298(n)-A046978(A004396(2*n))` -/
def P7054199603375749948.Spec : Prop :=
  ∀ n, P7054199603375749948.a n = A312655 n

end A312655

/-! ## A312655.P12850771346276423997

`A313110(n)-A128834(n-A128834(n))`
-/

namespace A312655.P12850771346276423997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n - A128834 ((n : ℤ) - A128834 n).toNat

end

end A312655.P12850771346276423997

namespace A312655

/-- `A313110(n)-A128834(n-A128834(n))` -/
def P12850771346276423997.Spec : Prop :=
  ∀ n, P12850771346276423997.a n = A312655 n

end A312655

/-! ## A312655.P5143971645318000981

`(A008574(A047513(n+1))+A008574(n))/2`
-/

namespace A312655.P5143971645318000981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A047513 (n + 1)).toNat + A008574 n : ℚ) / 2

end

end A312655.P5143971645318000981

namespace A312655

/-- `(A008574(A047513(n+1))+A008574(n))/2` -/
def P5143971645318000981.Spec : Prop :=
  ∀ n, P5143971645318000981.a n = (A312655 n : ℚ)

end A312655

/-! ## A312655.P9764418940178583832

`A313510(n)-A186809(n)`
-/

namespace A312655.P9764418940178583832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n - A186809 n

end

end A312655.P9764418940178583832

namespace A312655

/-- `A313510(n)-A186809(n)` -/
def P9764418940178583832.Spec : Prop :=
  ∀ n, P9764418940178583832.a n = A312655 n

end A312655

/-! ## A312655.P4532981865951306959

`A313280(n)-∑[A022003(n)]`
-/

namespace A312655.P4532981865951306959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313280 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312655.P4532981865951306959

namespace A312655

/-- `A313280(n)-∑[A022003(n)]` -/
def P4532981865951306959.Spec : Prop :=
  ∀ n, P4532981865951306959.a n = A312655 n

end A312655

/-! ## A312655.P15699500024730517099

`A004396(n)+A313280(n)-n`
-/

namespace A312655.P15699500024730517099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313280 n - (n : ℤ))

end

end A312655.P15699500024730517099

namespace A312655

/-- `A004396(n)+A313280(n)-n` -/
def P15699500024730517099.Spec : Prop :=
  ∀ n, P15699500024730517099.a n = A312655 n

end A312655

/-! ## A312655.P9022245282222116625

`A008576(n)+A313280(n)-A008486(n)`
-/

namespace A312655.P9022245282222116625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313280 n - A008486 n)

end

end A312655.P9022245282222116625

namespace A312655

/-- `A008576(n)+A313280(n)-A008486(n)` -/
def P9022245282222116625.Spec : Prop :=
  ∀ n, P9022245282222116625.a n = A312655 n

end A312655

/-! ## A312655.P12122259936313363959

`abs(A008592(n)-A315639(n))`
-/

namespace A312655.P12122259936313363959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315639 n|

end

end A312655.P12122259936313363959

namespace A312655

/-- `abs(A008592(n)-A315639(n))` -/
def P12122259936313363959.Spec : Prop :=
  ∀ n, P12122259936313363959.a n = A312655 n

end A312655

/-! ## A312655.P14986756436341254129

`A008458(n)+A008574(n)-A315639(n)`
-/

namespace A312655.P14986756436341254129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315639 n)

end

end A312655.P14986756436341254129

namespace A312655

/-- `A008458(n)+A008574(n)-A315639(n)` -/
def P14986756436341254129.Spec : Prop :=
  ∀ n, P14986756436341254129.a n = A312655 n

end A312655

/-! ## A312655.P2892357118315740447

`A311312(2*n)-4*n`
-/

namespace A312655.P2892357118315740447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 (2 * n) - (4 * n : ℤ)

end

end A312655.P2892357118315740447

namespace A312655

/-- `A311312(2*n)-4*n` -/
def P2892357118315740447.Spec : Prop :=
  ∀ n, P2892357118315740447.a n = A312655 n

end A312655

/-!
# A312656: Coordination sequence Gal.6.201.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312656, the canonical program `A312656.P6952802278947369671` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312656 has offset 0).

The definition of A312656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2460 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312656.P6952802278947369671

`2*A312068(n)-A008574(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A312656

/-- `2*A312068(n)-A008574(n)` -/
def P6952802278947369671.Spec : Prop :=
  ∀ n, P6952802278947369671.a n = A312656 n

theorem P6952802278947369671.correct : P6952802278947369671.Spec := by
  intro n
  simp only [A312656]

end A312656

/-! ## A312656.P7140995550789513547

`A004275(A312068(n)-A004273(n))`
-/

namespace A312656.P7140995550789513547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312068 n - A004273 n).toNat

end

end A312656.P7140995550789513547

namespace A312656

/-- `A004275(A312068(n)-A004273(n))` -/
def P7140995550789513547.Spec : Prop :=
  ∀ n, P7140995550789513547.a n = A312656 n

end A312656

/-! ## A312656.P14781421765235209387

`A103517(A312068(n)-A005408(n))`
-/

namespace A312656.P14781421765235209387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A312068 n - A005408 n).toNat

end

end A312656.P14781421765235209387

namespace A312656

/-- `A103517(A312068(n)-A005408(n))` -/
def P14781421765235209387.Spec : Prop :=
  ∀ n, P14781421765235209387.a n = A312656 n

end A312656

/-! ## A312656.P11540015930839856833

`A004273(A312068(n)-n)-A004273(n)`
-/

namespace A312656.P11540015930839856833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312068 n - (n : ℤ)).toNat - A004273 n

end

end A312656.P11540015930839856833

namespace A312656

/-- `A004273(A312068(n)-n)-A004273(n)` -/
def P11540015930839856833.Spec : Prop :=
  ∀ n, P11540015930839856833.a n = A312656 n

end A312656

/-! ## A312656.P9667320707765674016

`A008574(n)+A005843(A312068(n)-A008574(n))`
-/

namespace A312656.P9667320707765674016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A312068 n - A008574 n).toNat

end

end A312656.P9667320707765674016

namespace A312656

/-- `A008574(n)+A005843(A312068(n)-A008574(n))` -/
def P9667320707765674016.Spec : Prop :=
  ∀ n, P9667320707765674016.a n = A312656 n

end A312656

/-! ## A312656.P8471024650376892622

`abs(A008592(n)-A315638(n))`
-/

namespace A312656.P8471024650376892622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315638 n|

end

end A312656.P8471024650376892622

namespace A312656

/-- `abs(A008592(n)-A315638(n))` -/
def P8471024650376892622.Spec : Prop :=
  ∀ n, P8471024650376892622.a n = A312656 n

end A312656

/-! ## A312656.P4430251161179714550

`2*A008706(n)-A315638(n)`
-/

namespace A312656.P4430251161179714550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315638 n

end

end A312656.P4430251161179714550

namespace A312656

/-- `2*A008706(n)-A315638(n)` -/
def P4430251161179714550.Spec : Prop :=
  ∀ n, P4430251161179714550.a n = A312656 n

end A312656

/-! ## A312656.P12102370308892955200

`A008458(n)+A008574(n)-A315638(n)`
-/

namespace A312656.P12102370308892955200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315638 n)

end

end A312656.P12102370308892955200

namespace A312656

/-- `A008458(n)+A008574(n)-A315638(n)` -/
def P12102370308892955200.Spec : Prop :=
  ∀ n, P12102370308892955200.a n = A312656 n

end A312656

/-! ## A312656.P8957336988609083196

`A315638(n)-A005843(A315638(n)-A008706(n))`
-/

namespace A312656.P8957336988609083196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315638 n - A005843 (A315638 n - A008706 n).toNat

end

end A312656.P8957336988609083196

namespace A312656

/-- `A315638(n)-A005843(A315638(n)-A008706(n))` -/
def P8957336988609083196.Spec : Prop :=
  ∀ n, P8957336988609083196.a n = A312656 n

end A312656

/-! ## A312656.P15543859940083643274

`A005843(A312068(n))-A008574(n)`
-/

namespace A312656.P15543859940083643274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312068 n).toNat - A008574 n

end

end A312656.P15543859940083643274

namespace A312656

/-- `A005843(A312068(n))-A008574(n)` -/
def P15543859940083643274.Spec : Prop :=
  ∀ n, P15543859940083643274.a n = A312656 n

end A312656

/-! ## A312656.P2291405825536005327

`A004275(A312068(n))-A004275(2*n)`
-/

namespace A312656.P2291405825536005327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312068 n).toNat - A004275 (2 * n)

end

end A312656.P2291405825536005327

namespace A312656

/-- `A004275(A312068(n))-A004275(2*n)` -/
def P2291405825536005327.Spec : Prop :=
  ∀ n, P2291405825536005327.a n = A312656 n

end A312656

/-! ## A312656.P9344047768528193835

`A005843(A312068(n))+n-A008706(n)`
-/

namespace A312656.P9344047768528193835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312068 n).toNat + ((n : ℤ) - A008706 n)

end

end A312656.P9344047768528193835

namespace A312656

/-- `A005843(A312068(n))+n-A008706(n)` -/
def P9344047768528193835.Spec : Prop :=
  ∀ n, P9344047768528193835.a n = A312656 n

end A312656

/-! ## A312656.P6753609971462243798

`A004442(A017281(n)-A315638(n))`
-/

namespace A312656.P6753609971462243798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315638 n).toNat

end

end A312656.P6753609971462243798

namespace A312656

/-- `A004442(A017281(n)-A315638(n))` -/
def P6753609971462243798.Spec : Prop :=
  ∀ n, P6753609971462243798.a n = A312656 n

end A312656

/-! ## A312656.P15240154344725777876

`A005843(A008706(n))-A315638(n)`
-/

namespace A312656.P15240154344725777876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315638 n

end

end A312656.P15240154344725777876

namespace A312656

/-- `A005843(A008706(n))-A315638(n)` -/
def P15240154344725777876.Spec : Prop :=
  ∀ n, P15240154344725777876.a n = A312656 n

end A312656

/-! ## A312656.P15757539724197490475

`A093545(A008458(n))-A315638(n)`
-/

namespace A312656.P15757539724197490475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093545 (A008458 n).toNat - A315638 n

end

end A312656.P15757539724197490475

namespace A312656

/-- `A093545(A008458(n))-A315638(n)` -/
def P15757539724197490475.Spec : Prop :=
  ∀ n, P15757539724197490475.a n = A312656 n

end A312656

/-! ## A312656.P10832713779461950279

`2*A311262(2*n)-A008458(2*n)`
-/

namespace A312656.P10832713779461950279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311262 (2 * n) - A008458 (2 * n)

end

end A312656.P10832713779461950279

namespace A312656

/-- `2*A311262(2*n)-A008458(2*n)` -/
def P10832713779461950279.Spec : Prop :=
  ∀ n, P10832713779461950279.a n = A312656 n

end A312656

/-! ## A312656.P17552593532846047062

`A311356(2*n)-4*n`
-/

namespace A312656.P17552593532846047062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311356 (2 * n) - (4 * n : ℤ)

end

end A312656.P17552593532846047062

namespace A312656

/-- `A311356(2*n)-4*n` -/
def P17552593532846047062.Spec : Prop :=
  ∀ n, P17552593532846047062.a n = A312656 n

end A312656

/-! ## A312656.P6674781987545641005

`2*A008574(2*n)-A315756(2*n)`
-/

namespace A312656.P6674781987545641005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315756 (2 * n)

end

end A312656.P6674781987545641005

namespace A312656

/-- `2*A008574(2*n)-A315756(2*n)` -/
def P6674781987545641005.Spec : Prop :=
  ∀ n, P6674781987545641005.a n = A312656 n

end A312656

/-!
# A312657: Coordination sequence Gal.6.455.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312657, there is no canonical definition to state claims against.
-/

/-! ## A312657.P3318593182320626645

`A312673(n)-A003849(A064780(n))`
-/

namespace A312657.P3318593182320626645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312673 n - A003849 (A064780 n).toNat

end

end A312657.P3318593182320626645

/-! ## A312657.P16074749014476592633

`A301697(n)-A001221(A000139(n+1))`
-/

namespace A312657.P16074749014476592633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A001221 (A000139 (n + 1)).toNat

end

end A312657.P16074749014476592633

/-!
# A312658: Coordination sequence Gal.6.249.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312658, the canonical program `A312658.P11537774687744647677` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312658 has offset 0).

The definition of A312658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312658.P11537774687744647677

`2*A312077(n)-A008574(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A312658

/-- `2*A312077(n)-A008574(n)` -/
def P11537774687744647677.Spec : Prop :=
  ∀ n, P11537774687744647677.a n = A312658 n

theorem P11537774687744647677.correct : P11537774687744647677.Spec := by
  intro n
  simp only [A312658]

end A312658

/-! ## A312658.P13655675622384181348

`A004275(A312077(n)-A004273(n))`
-/

namespace A312658.P13655675622384181348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312077 n - A004273 n).toNat

end

end A312658.P13655675622384181348

namespace A312658

/-- `A004275(A312077(n)-A004273(n))` -/
def P13655675622384181348.Spec : Prop :=
  ∀ n, P13655675622384181348.a n = A312658 n

end A312658

/-! ## A312658.P9314928441548159410

`A008574(n)+2*A004524(A081599(n))`
-/

namespace A312658.P9314928441548159410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 2 * A004524 (A081599 n).toNat

end

end A312658.P9314928441548159410

namespace A312658

/-- `A008574(n)+2*A004524(A081599(n))` -/
def P9314928441548159410.Spec : Prop :=
  ∀ n, P9314928441548159410.a n = A312658 n

theorem P9314928441548159410.correct : P9314928441548159410.Spec := by
  intro n
  simp only [A312658, Nat.add_sub_cancel, A312658.P9314928441548159410.a, A312658.P11537774687744647677.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, A081599, A081599.P12036139868710074620.a, A312077, A312077.P5583150468324327588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312658

/-! ## A312658.P15123843873995908022

`A004273(A312077(n)-n)-A004273(n)`
-/

namespace A312658.P15123843873995908022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312077 n - (n : ℤ)).toNat - A004273 n

end

end A312658.P15123843873995908022

namespace A312658

/-- `A004273(A312077(n)-n)-A004273(n)` -/
def P15123843873995908022.Spec : Prop :=
  ∀ n, P15123843873995908022.a n = A312658 n

end A312658

/-! ## A312658.P13354321529824303956

`A008574(n)+A005843(A312077(n)-A008574(n))`
-/

namespace A312658.P13354321529824303956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A312077 n - A008574 n).toNat

end

end A312658.P13354321529824303956

namespace A312658

/-- `A008574(n)+A005843(A312077(n)-A008574(n))` -/
def P13354321529824303956.Spec : Prop :=
  ∀ n, P13354321529824303956.a n = A312658 n

end A312658

/-! ## A312658.P11464645173566383359

`A244895(A026741(3*n))+A047363(2*n+1)+A004277(n)`
-/

namespace A312658.P11464645173566383359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A026741 (3 * n)).toNat + (A047363 (2 * n + 1) + A004277 n)

end

end A312658.P11464645173566383359

namespace A312658

/-- `A244895(A026741(3*n))+A047363(2*n+1)+A004277(n)` -/
def P11464645173566383359.Spec : Prop :=
  ∀ n, P11464645173566383359.a n = A312658 n

end A312658

/-! ## A312658.P4572563079884561985

`A244895(A026741(3*n))+A022144(n)-A047486(2*n+1)`
-/

namespace A312658.P4572563079884561985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A026741 (3 * n)).toNat + (A022144 n - A047486 (2 * n + 1))

end

end A312658.P4572563079884561985

namespace A312658

/-- `A244895(A026741(3*n))+A022144(n)-A047486(2*n+1)` -/
def P4572563079884561985.Spec : Prop :=
  ∀ n, P4572563079884561985.a n = A312658 n

end A312658

/-! ## A312658.P13360861724127289189

`A244895(A026741(3*n))+A022144(n)+1-A047412(2*(n+1))`
-/

namespace A312658.P13360861724127289189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A026741 (3 * n)).toNat + (A022144 n + 1 - A047412 (2 * (n + 1)))

end

end A312658.P13360861724127289189

namespace A312658

/-- `A244895(A026741(3*n))+A022144(n)+1-A047412(2*(n+1))` -/
def P13360861724127289189.Spec : Prop :=
  ∀ n, P13360861724127289189.a n = A312658 n

end A312658

/-! ## A312658.P8551752516567509797

`A244895(A026741(3*n))+A047363(2*n+1)+A028310(2*n)`
-/

namespace A312658.P8551752516567509797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A026741 (3 * n)).toNat + (A047363 (2 * n + 1) + A028310 (2 * n))

end

end A312658.P8551752516567509797

namespace A312658

/-- `A244895(A026741(3*n))+A047363(2*n+1)+A028310(2*n)` -/
def P8551752516567509797.Spec : Prop :=
  ∀ n, P8551752516567509797.a n = A312658 n

end A312658

/-! ## A312658.P16123323648058173326

`A244895(A026741(3*n))+A008574(2*n)-A047486(2*n+1)`
-/

namespace A312658.P16123323648058173326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A026741 (3 * n)).toNat + (A008574 (2 * n) - A047486 (2 * n + 1))

end

end A312658.P16123323648058173326

namespace A312658

/-- `A244895(A026741(3*n))+A008574(2*n)-A047486(2*n+1)` -/
def P16123323648058173326.Spec : Prop :=
  ∀ n, P16123323648058173326.a n = A312658 n

end A312658

/-! ## A312658.P9630897981977541384

`A244895(A026741(3*n))+A008574(2*n)+1-A047412(2*(n+1))`
-/

namespace A312658.P9630897981977541384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A026741 (3 * n)).toNat + (A008574 (2 * n) + (1 - A047412 (2 * (n + 1))))

end

end A312658.P9630897981977541384

namespace A312658

/-- `A244895(A026741(3*n))+A008574(2*n)+1-A047412(2*(n+1))` -/
def P9630897981977541384.Spec : Prop :=
  ∀ n, P9630897981977541384.a n = A312658 n

end A312658

/-! ## A312658.P15420283658443856902

`A312162(n)+A253262(n-A253262(n))`
-/

namespace A312658.P15420283658443856902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312162 n + A253262 ((n : ℤ) - A253262 n).toNat

end

end A312658.P15420283658443856902

namespace A312658

/-- `A312162(n)+A253262(n-A253262(n))` -/
def P15420283658443856902.Spec : Prop :=
  ∀ n, P15420283658443856902.a n = A312658 n

end A312658

/-! ## A312658.P9643738106464043397

`2*A313255(n)-A310504(n)`
-/

namespace A312658.P9643738106464043397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313255 n - A310504 n

end

end A312658.P9643738106464043397

namespace A312658

/-- `2*A313255(n)-A310504(n)` -/
def P9643738106464043397.Spec : Prop :=
  ∀ n, P9643738106464043397.a n = A312658 n

end A312658

/-! ## A312658.P11324387702512760462

`abs(A008592(n)-A315637(n))`
-/

namespace A312658.P11324387702512760462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315637 n|

end

end A312658.P11324387702512760462

namespace A312658

/-- `abs(A008592(n)-A315637(n))` -/
def P11324387702512760462.Spec : Prop :=
  ∀ n, P11324387702512760462.a n = A312658 n

end A312658

/-! ## A312658.P4650628146823312631

`2*A008706(n)-A315637(n)`
-/

namespace A312658.P4650628146823312631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315637 n

end

end A312658.P4650628146823312631

namespace A312658

/-- `2*A008706(n)-A315637(n)` -/
def P4650628146823312631.Spec : Prop :=
  ∀ n, P4650628146823312631.a n = A312658 n

end A312658

/-! ## A312658.P15934776565969424289

`A008458(n)+A008574(n)-A315637(n)`
-/

namespace A312658.P15934776565969424289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315637 n)

end

end A312658.P15934776565969424289

namespace A312658

/-- `A008458(n)+A008574(n)-A315637(n)` -/
def P15934776565969424289.Spec : Prop :=
  ∀ n, P15934776565969424289.a n = A312658 n

end A312658

/-! ## A312658.P17885055784206739469

`A315637(n)-A005843(A315637(n)-A008706(n))`
-/

namespace A312658.P17885055784206739469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315637 n - A005843 (A315637 n - A008706 n).toNat

end

end A312658.P17885055784206739469

namespace A312658

/-- `A315637(n)-A005843(A315637(n)-A008706(n))` -/
def P17885055784206739469.Spec : Prop :=
  ∀ n, P17885055784206739469.a n = A312658 n

end A312658

/-! ## A312658.P6147735509994545269

`2*A313284(n)-A310532(n)`
-/

namespace A312658.P6147735509994545269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313284 n - A310532 n

end

end A312658.P6147735509994545269

namespace A312658

/-- `2*A313284(n)-A310532(n)` -/
def P6147735509994545269.Spec : Prop :=
  ∀ n, P6147735509994545269.a n = A312658 n

end A312658

/-! ## A312658.P14611170269513628627

`2*A313916(n)-A008458(n)`
-/

namespace A312658.P14611170269513628627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313916 n - A008458 n

end

end A312658.P14611170269513628627

namespace A312658

/-- `2*A313916(n)-A008458(n)` -/
def P14611170269513628627.Spec : Prop :=
  ∀ n, P14611170269513628627.a n = A312658 n

end A312658

/-! ## A312658.P11078488974538873102

`A008458(n)-A005843(A008458(n)-A313916(n))`
-/

namespace A312658.P11078488974538873102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A313916 n).toNat

end

end A312658.P11078488974538873102

namespace A312658

/-- `A008458(n)-A005843(A008458(n)-A313916(n))` -/
def P11078488974538873102.Spec : Prop :=
  ∀ n, P11078488974538873102.a n = A312658 n

end A312658

/-!
# A312659: Coordination sequence Gal.6.373.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312659, there is no canonical definition to state claims against.
-/

/-! ## A312659.P3013154796197505345

`A008458(n)-A329697(A002779(n+3))`
-/

namespace A312659.P3013154796197505345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A329697 (A002779 (n + 3)).toNat

end

end A312659.P3013154796197505345

/-! ## A312659.P10526473777101523578

`∑[A145339(∑[A343736(n+1)])]`
-/

namespace A312659.P10526473777101523578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343736 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145339 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312659.P10526473777101523578

/-! ## A312659.P13047794446049155949

`A008574(n)+A001222(floor(sqrt(n!))²)`
-/

namespace A312659.P13047794446049155949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (Nat.sqrt (Nat.factorial n) ^ 2)

end

end A312659.P13047794446049155949

/-! ## A312659.P9934483646806191057

`A008574(n)+A001222(A065731(n))`
-/

namespace A312659.P9934483646806191057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (A065731 n).toNat

end

end A312659.P9934483646806191057

/-!
# A312660: Coordination sequence Gal.6.358.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312660, there is no canonical definition to state claims against.
-/

/-! ## A312660.P5460431195390173052

`record[A312661(n)-A308854(n)]`
-/

namespace A312660.P5460431195390173052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312661 n - A308854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312660.P5460431195390173052

/-! ## A312660.P10384498510113364176

`A312661(n)-A185284(A314376(n))`
-/

namespace A312660.P10384498510113364176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312661 n - A185284 (A314376 n).toNat

end

end A312660.P10384498510113364176

/-! ## A312660.P5022351897479619027

`A312661(n)-A185284(A017854(2*(n+2)))`
-/

namespace A312660.P5022351897479619027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312661 n - A185284 (A017854 (2 * (n + 2))).toNat

end

end A312660.P5022351897479619027

/-! ## A312660.P10090291599635596856

`A312661(A087051(n))`
-/

namespace A312660.P10090291599635596856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312661 (A087051 n).toNat

end

end A312660.P10090291599635596856

/-!
# A312661: Coordination sequence Gal.6.359.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312661, there is no canonical definition to state claims against.
-/

/-! ## A312661.P3405068590908741234

`A312660(n)+A185284(A017854(2*(n+2)))`
-/

namespace A312661.P3405068590908741234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312660 n + A185284 (A017854 (2 * (n + 2))).toNat

end

end A312661.P3405068590908741234

/-!
# A312662: Coordination sequence Gal.6.373.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312662, there is no canonical definition to state claims against.
-/

/-! ## A312662.P6075874970281674295

`A312658(n)+A037808(A123837(n+1))`
-/

namespace A312662.P6075874970281674295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312658 n + A037808 (A123837 (n + 1)).toNat

end

end A312662.P6075874970281674295

/-! ## A312662.P18178861397195761506

`xor(A048138(A235239(n+1)), A315260(n))`
-/

namespace A312662.P18178861397195761506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048138 (A235239 (n + 1)).toNat) (A315260 n)

end

end A312662.P18178861397195761506

/-! ## A312662.P16821011600167100917

`A353495(A213093(n))+A045880(3*n+1)`
-/

namespace A312662.P16821011600167100917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (A213093 n).toNat + A045880 (3 * n + 1)

end

end A312662.P16821011600167100917

/-! ## A312662.P16230909015484270067

`∑[A280700(A094196(2*n+1))]`
-/

namespace A312662.P16230909015484270067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280700 (A094196 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312662.P16230909015484270067

/-! ## A312662.P14619786411200854784

`∑[A054992(A140745(n+1))]+n`
-/

namespace A312662.P14619786411200854784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (A140745 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A312662.P14619786411200854784

/-!
# A312663: Coordination sequence Gal.6.444.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312663, there is no canonical definition to state claims against.
-/

/-! ## A312663.P9572107150630379105

`A028961(n)+A312664(n)-A028961(A087051(n))`
-/

namespace A312663.P9572107150630379105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028961 n + (A312664 n - A028961 (A087051 n).toNat)

end

end A312663.P9572107150630379105

/-! ## A312663.P10798667094176291815

`A312664(A087051(n))`
-/

namespace A312663.P10798667094176291815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312664 (A087051 n).toNat

end

end A312663.P10798667094176291815

/-! ## A312663.P14418384081943959511

`A312664(A135385(n+1))`
-/

namespace A312663.P14418384081943959511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312664 (A135385 (n + 1)).toNat

end

end A312663.P14418384081943959511

/-! ## A312663.P11093781569040898319

`A312664(A227549(n+1))`
-/

namespace A312663.P11093781569040898319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312664 (A227549 (n + 1)).toNat

end

end A312663.P11093781569040898319

/-!
# A312665: Coordination sequence Gal.6.443.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312665, there is no canonical definition to state claims against.
-/

/-! ## A312665.P7546697218968792570

`A312666(A087051(n))`
-/

namespace A312665.P7546697218968792570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312666 (A087051 n).toNat

end

end A312665.P7546697218968792570

/-! ## A312665.P16901753282601420994

`A312666(A227549(n+1))`
-/

namespace A312665.P16901753282601420994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312666 (A227549 (n + 1)).toNat

end

end A312665.P16901753282601420994

/-! ## A312665.P11049549349047123700

`A312666(A396204(n+1))`
-/

namespace A312665.P11049549349047123700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312666 (A396204 (n + 1)).toNat

end

end A312665.P11049549349047123700

/-!
# A312667: Coordination sequence Gal.6.574.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312667, there is no canonical definition to state claims against.
-/

/-! ## A312667.P18262765453999174044

`A312666(A102683(A087051(n))+n)`
-/

namespace A312667.P18262765453999174044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312666 (A102683 (A087051 n).toNat + (n : ℤ)).toNat

end

end A312667.P18262765453999174044

/-! ## A312667.P2377309417643472601

`A312666(A227549(n+1)+A102683(n))`
-/

namespace A312667.P2377309417643472601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312666 (A227549 (n + 1) + A102683 n).toNat

end

end A312667.P2377309417643472601

/-!
# A312668: Coordination sequence Gal.6.250.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312668, the canonical program `A312668.P1763801044699896301` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312668 has offset 0).

The definition of A312668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312668.P15382477956851863519

`abs(A008592(n)-A315636(n))`
-/

namespace A312668.P15382477956851863519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315636 n|

end

end A312668.P15382477956851863519

namespace A312668

/-- `abs(A008592(n)-A315636(n))` -/
def P15382477956851863519.Spec : Prop :=
  ∀ n, P15382477956851863519.a n = A312668 n

end A312668

/-! ## A312668.P12567489924350387350

`2*A008706(n)-A315636(n)`
-/

namespace A312668.P12567489924350387350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315636 n

end

end A312668.P12567489924350387350

namespace A312668

/-- `2*A008706(n)-A315636(n)` -/
def P12567489924350387350.Spec : Prop :=
  ∀ n, P12567489924350387350.a n = A312668 n

end A312668

/-! ## A312668.P8279952157759526335

`A000038(n)+A008592(n)-A315636(n)`
-/

namespace A312668.P8279952157759526335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A315636 n)

end

end A312668.P8279952157759526335

namespace A312668

/-- `A000038(n)+A008592(n)-A315636(n)` -/
def P8279952157759526335.Spec : Prop :=
  ∀ n, P8279952157759526335.a n = A312668 n

end A312668

/-! ## A312668.P10870920322173302081

`A008458(n)+A008574(n)-A315636(n)`
-/

namespace A312668.P10870920322173302081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315636 n)

end

end A312668.P10870920322173302081

namespace A312668

/-- `A008458(n)+A008574(n)-A315636(n)` -/
def P10870920322173302081.Spec : Prop :=
  ∀ n, P10870920322173302081.a n = A312668 n

end A312668

/-! ## A312668.P2808433683556032754

`lcm(A008592(n)-A315636(n), A163623(n+1)%4)`
-/

namespace A312668.P2808433683556032754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008592 n - A315636 n) (Int.tmod (A163623 (n + 1)) 4)

end

end A312668.P2808433683556032754

namespace A312668

/-- `lcm(A008592(n)-A315636(n), A163623(n+1)%4)` -/
def P2808433683556032754.Spec : Prop :=
  ∀ n, (P2808433683556032754.a n : ℤ) = A312668 n

end A312668

/-! ## A312668.P1763801044699896301

`2*A313918(n)-A008458(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A312668

/-- `2*A313918(n)-A008458(n)` -/
def P1763801044699896301.Spec : Prop :=
  ∀ n, P1763801044699896301.a n = A312668 n

theorem P1763801044699896301.correct : P1763801044699896301.Spec := by
  intro n
  simp only [A312668]

end A312668

/-! ## A312668.P12598292510838774298

`A103517(A313918(n)-A016777(n))`
-/

namespace A312668.P12598292510838774298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313918 n - A016777 n).toNat

end

end A312668.P12598292510838774298

namespace A312668

/-- `A103517(A313918(n)-A016777(n))` -/
def P12598292510838774298.Spec : Prop :=
  ∀ n, P12598292510838774298.a n = A312668 n

end A312668

/-! ## A312668.P18087251768904068375

`A103517(A313918(n)%A016777(n))`
-/

namespace A312668.P18087251768904068375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A313918 n) (A016777 n)).toNat

end

end A312668.P18087251768904068375

namespace A312668

/-- `A103517(A313918(n)%A016777(n))` -/
def P18087251768904068375.Spec : Prop :=
  ∀ n, P18087251768904068375.a n = A312668 n

end A312668

/-! ## A312668.P11639030505499967986

`A008458(n)-A005843(A008458(n)-A313918(n))`
-/

namespace A312668.P11639030505499967986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A313918 n).toNat

end

end A312668.P11639030505499967986

namespace A312668

/-- `A008458(n)-A005843(A008458(n)-A313918(n))` -/
def P11639030505499967986.Spec : Prop :=
  ∀ n, P11639030505499967986.a n = A312668 n

end A312668

/-! ## A312668.P6014137022020102588

`A004442(A017281(n)-A315636(n))`
-/

namespace A312668.P6014137022020102588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315636 n).toNat

end

end A312668.P6014137022020102588

namespace A312668

/-- `A004442(A017281(n)-A315636(n))` -/
def P6014137022020102588.Spec : Prop :=
  ∀ n, P6014137022020102588.a n = A312668 n

end A312668

/-! ## A312668.P9565409532960695345

`A005843(A008706(n))-A315636(n)`
-/

namespace A312668.P9565409532960695345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315636 n

end

end A312668.P9565409532960695345

namespace A312668

/-- `A005843(A008706(n))-A315636(n)` -/
def P9565409532960695345.Spec : Prop :=
  ∀ n, P9565409532960695345.a n = A312668 n

end A312668

/-! ## A312668.P18021875245522201507

`A005843(A313918(n))-A008458(n)`
-/

namespace A312668.P18021875245522201507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313918 n).toNat - A008458 n

end

end A312668.P18021875245522201507

namespace A312668

/-- `A005843(A313918(n))-A008458(n)` -/
def P18021875245522201507.Spec : Prop :=
  ∀ n, P18021875245522201507.a n = A312668 n

end A312668

/-! ## A312668.P17354740015614136821

`A005843(A313918(n))-(A008706(n)+n)`
-/

namespace A312668.P17354740015614136821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313918 n).toNat - (A008706 n + (n : ℤ))

end

end A312668.P17354740015614136821

namespace A312668

/-- `A005843(A313918(n))-(A008706(n)+n)` -/
def P17354740015614136821.Spec : Prop :=
  ∀ n, P17354740015614136821.a n = A312668 n

end A312668

/-! ## A312668.P7823321961571968483

`A065502(A008458(n))-A315636(n)`
-/

namespace A312668.P7823321961571968483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315636 n

end

end A312668.P7823321961571968483

namespace A312668

/-- `A065502(A008458(n))-A315636(n)` -/
def P7823321961571968483.Spec : Prop :=
  ∀ n, P7823321961571968483.a n = A312668 n

end A312668

/-! ## A312668.P8114674891167081776

`gcd(A008592(n)-A315636(n), A000038(n²))`
-/

namespace A312668.P8114674891167081776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008592 n - A315636 n) (A000038 (n ^ 2))

end

end A312668.P8114674891167081776

namespace A312668

/-- `gcd(A008592(n)-A315636(n), A000038(n²))` -/
def P8114674891167081776.Spec : Prop :=
  ∀ n, (P8114674891167081776.a n : ℤ) = A312668 n

end A312668

/-!
# A312669: Coordination sequence Gal.5.111.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312669, the canonical program `A312669.P16662175868118744166` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312669 has offset 0).

The definition of A312669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312669.P14432424099136105327

`abs(A008592(n)-A315635(n))`
-/

namespace A312669.P14432424099136105327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315635 n|

end

end A312669.P14432424099136105327

namespace A312669

/-- `abs(A008592(n)-A315635(n))` -/
def P14432424099136105327.Spec : Prop :=
  ∀ n, P14432424099136105327.a n = A312669 n

end A312669

/-! ## A312669.P16662175868118744166

`2*A312100(n)-A008574(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A312669

/-- `2*A312100(n)-A008574(n)` -/
def P16662175868118744166.Spec : Prop :=
  ∀ n, P16662175868118744166.a n = A312669 n

theorem P16662175868118744166.correct : P16662175868118744166.Spec := by
  intro n
  simp only [A312669]

end A312669

/-! ## A312669.P8852003692551993621

`2*A008706(n)-A315635(n)`
-/

namespace A312669.P8852003692551993621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315635 n

end

end A312669.P8852003692551993621

namespace A312669

/-- `2*A008706(n)-A315635(n)` -/
def P8852003692551993621.Spec : Prop :=
  ∀ n, P8852003692551993621.a n = A312669 n

end A312669

/-! ## A312669.P461279755515399444

`A004275(A312100(n)-A004273(n))`
-/

namespace A312669.P461279755515399444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312100 n - A004273 n).toNat

end

end A312669.P461279755515399444

namespace A312669

/-- `A004275(A312100(n)-A004273(n))` -/
def P461279755515399444.Spec : Prop :=
  ∀ n, P461279755515399444.a n = A312669 n

end A312669

/-! ## A312669.P13778959816108004792

`A008458(n)+A008574(n)-A315635(n)`
-/

namespace A312669.P13778959816108004792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315635 n)

end

end A312669.P13778959816108004792

namespace A312669

/-- `A008458(n)+A008574(n)-A315635(n)` -/
def P13778959816108004792.Spec : Prop :=
  ∀ n, P13778959816108004792.a n = A312669 n

end A312669

/-! ## A312669.P1010097922430079902

`A004273(A312100(n)-n)-A004273(n)`
-/

namespace A312669.P1010097922430079902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312100 n - (n : ℤ)).toNat - A004273 n

end

end A312669.P1010097922430079902

namespace A312669

/-- `A004273(A312100(n)-n)-A004273(n)` -/
def P1010097922430079902.Spec : Prop :=
  ∀ n, P1010097922430079902.a n = A312669 n

end A312669

/-! ## A312669.P5999745865899493979

`A008574(n)+A005843(A312100(n)-A008574(n))`
-/

namespace A312669.P5999745865899493979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A312100 n - A008574 n).toNat

end

end A312669.P5999745865899493979

namespace A312669

/-- `A008574(n)+A005843(A312100(n)-A008574(n))` -/
def P5999745865899493979.Spec : Prop :=
  ∀ n, P5999745865899493979.a n = A312669 n

end A312669

/-! ## A312669.P8363941832978148241

`A005843(A312100(n))-A008574(n)`
-/

namespace A312669.P8363941832978148241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312100 n).toNat - A008574 n

end

end A312669.P8363941832978148241

namespace A312669

/-- `A005843(A312100(n))-A008574(n)` -/
def P8363941832978148241.Spec : Prop :=
  ∀ n, P8363941832978148241.a n = A312669 n

end A312669

/-! ## A312669.P13991998549199337682

`A004275(A312100(n))-A004275(2*n)`
-/

namespace A312669.P13991998549199337682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312100 n).toNat - A004275 (2 * n)

end

end A312669.P13991998549199337682

namespace A312669

/-- `A004275(A312100(n))-A004275(2*n)` -/
def P13991998549199337682.Spec : Prop :=
  ∀ n, P13991998549199337682.a n = A312669 n

end A312669

/-! ## A312669.P10581695901790104657

`A005843(A312100(n))+n-A008706(n)`
-/

namespace A312669.P10581695901790104657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312100 n).toNat + ((n : ℤ) - A008706 n)

end

end A312669.P10581695901790104657

namespace A312669

/-- `A005843(A312100(n))+n-A008706(n)` -/
def P10581695901790104657.Spec : Prop :=
  ∀ n, P10581695901790104657.a n = A312669 n

end A312669

/-! ## A312669.P12491225582334061689

`A310531(n)-A008612(A016813(n))`
-/

namespace A312669.P12491225582334061689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310531 n - A008612 (A016813 n).toNat

end

end A312669.P12491225582334061689

namespace A312669

/-- `A310531(n)-A008612(A016813(n))` -/
def P12491225582334061689.Spec : Prop :=
  ∀ n, P12491225582334061689.a n = A312669 n

end A312669

/-! ## A312669.P17410630962051602133

`A310531(n)-A008458(n)%A008576(n)`
-/

namespace A312669.P17410630962051602133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310531 n - Int.tmod (A008458 n) (A008576 n)

end

end A312669.P17410630962051602133

namespace A312669

/-- `A310531(n)-A008458(n)%A008576(n)` -/
def P17410630962051602133.Spec : Prop :=
  ∀ n, P17410630962051602133.a n = A312669 n

end A312669

/-! ## A312669.P3038572571526881262

`A005843(A008706(n))-A315635(n)`
-/

namespace A312669.P3038572571526881262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315635 n

end

end A312669.P3038572571526881262

namespace A312669

/-- `A005843(A008706(n))-A315635(n)` -/
def P3038572571526881262.Spec : Prop :=
  ∀ n, P3038572571526881262.a n = A312669 n

end A312669

/-! ## A312669.P8065139424980744688

`A004396(n)+A004396(A313293(n)+n)`
-/

namespace A312669.P8065139424980744688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A313293 n + (n : ℤ)).toNat

end

end A312669.P8065139424980744688

namespace A312669

/-- `A004396(n)+A004396(A313293(n)+n)` -/
def P8065139424980744688.Spec : Prop :=
  ∀ n, P8065139424980744688.a n = A312669 n

end A312669

/-!
# A312670: Coordination sequence Gal.6.449.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312670, there is no canonical definition to state claims against.
-/

/-! ## A312670.P14625622184948150053

`A312664(A087051(n))+A028961(A313627(n))`
-/

namespace A312670.P14625622184948150053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312664 (A087051 n).toNat + A028961 (A313627 n).toNat

end

end A312670.P14625622184948150053

/-!
# A312671: Coordination sequence Gal.5.177.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312671, there is no canonical definition to state claims against.
-/

/-! ## A312671.P13966373321564187236

`A312672(n)-A005614(A275695(n))`
-/

namespace A312671.P13966373321564187236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312672 n - A005614 (A275695 n).toNat

end

end A312671.P13966373321564187236

/-! ## A312671.P8317841868754310331

`A312672(n)-A036633(9*A036633(n))`
-/

namespace A312671.P8317841868754310331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312672 n - A036633 (9 * A036633 n).toNat

end

end A312671.P8317841868754310331

/-! ## A312671.P13849993360687951749

`A312672(n)^gcd(71, A115110(n))`
-/

namespace A312671.P13849993360687951749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312672 n ^ Int.gcd 71 (A115110 n)

end

end A312671.P13849993360687951749

/-! ## A312671.P5196035986268842626

`A312672(n)%A046360(A008486(n))`
-/

namespace A312671.P5196035986268842626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312672 n) (A046360 (A008486 n).toNat)

end

end A312671.P5196035986268842626

/-!
# A312672: Coordination sequence Gal.5.168.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312672, there is no canonical definition to state claims against.
-/

/-! ## A312672.P15588886380936896920

`A312671(n)+A005614(A275695(n))`
-/

namespace A312672.P15588886380936896920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312671 n + A005614 (A275695 n).toNat

end

end A312672.P15588886380936896920

/-! ## A312672.P10273842340546802325

`A312671(n)+A307721(A124107(n+1))`
-/

namespace A312672.P10273842340546802325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312671 n + A307721 (A124107 (n + 1)).toNat

end

end A312672.P10273842340546802325

/-! ## A312672.P4021430054781996029

`A312671(n)+A023531(A081314(2*(n+4)))`
-/

namespace A312672.P4021430054781996029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312671 n + A023531 (A081314 (2 * (n + 4))).toNat

end

end A312672.P4021430054781996029

/-!
# A312673: Coordination sequence Gal.6.548.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312673, there is no canonical definition to state claims against.
-/

/-! ## A312673.P7409801485099130578

`A312657(n)+A114511(A102121(n))`
-/

namespace A312673.P7409801485099130578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312657 n + A114511 (A102121 n).toNat

end

end A312673.P7409801485099130578

/-! ## A312673.P1034507050389156793

`A330551(A211432(n))+A312183(n)`
-/

namespace A312673.P1034507050389156793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330551 (A211432 n).toNat + A312183 n

end

end A312673.P1034507050389156793

/-! ## A312673.P6197611218973921659

`xor(A001221(A152876(n)), A313280(n))`
-/

namespace A312673.P6197611218973921659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A152876 n).toNat) (A313280 n)

end

end A312673.P6197611218973921659

/-! ## A312673.P13848300568950067819

`A301299(n)+A001222(A346546(n))`
-/

namespace A312673.P13848300568950067819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A001222 (A346546 n).toNat

end

end A312673.P13848300568950067819

/-! ## A312673.P15500243327158233588

`A312671(n)+A288424(A275695(n))`
-/

namespace A312673.P15500243327158233588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312671 n + A288424 (A275695 n).toNat

end

end A312673.P15500243327158233588

/-!
# A312674: Coordination sequence Gal.5.176.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312674, there is no canonical definition to state claims against.
-/

/-! ## A312674.P16685255379827687602

`A312675(n)-A340998(A304790(n))`
-/

namespace A312674.P16685255379827687602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312675 n - A340998 ((A304790 n).toNat + 140)

end

end A312674.P16685255379827687602

/-! ## A312674.P163779067343377241

`A312183(n)+A194636(A159347(n))`
-/

namespace A312674.P163779067343377241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312183 n + A194636 (A159347 n).toNat

end

end A312674.P163779067343377241

/-! ## A312674.P5909141976452875789

`A312675(n)-A024155(A041655(n))`
-/

namespace A312674.P5909141976452875789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312675 n - A024155 (A041655 n).toNat

end

end A312674.P5909141976452875789

/-! ## A312674.P7830461696891016406

`A312675(n)-A044941(A041915(n))`
-/

namespace A312674.P7830461696891016406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312675 n - A044941 (A041915 n).toNat

end

end A312674.P7830461696891016406

/-! ## A312674.P6499074951407324907

`∑[∑[A169758(A002182(n+1))]]`
-/

namespace A312674.P6499074951407324907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169758 (A002182 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312674.P6499074951407324907

/-!
# A312675: Coordination sequence Gal.5.167.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312675, there is no canonical definition to state claims against.
-/

/-! ## A312675.P2419907638668598766

`A340998(A304790(n))+A312674(n)`
-/

namespace A312675.P2419907638668598766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A304790 n).toNat + 140) + A312674 n

end

end A312675.P2419907638668598766

/-! ## A312675.P1979979975551743238

`A232243(A007575(n))+A008574(n)`
-/

namespace A312675.P1979979975551743238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 (A007575 n).toNat + A008574 n

end

end A312675.P1979979975551743238

/-! ## A312675.P8069038204502697517

`A312674(n)+A024155(A041655(n))`
-/

namespace A312675.P8069038204502697517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312674 n + A024155 (A041655 n).toNat

end

end A312675.P8069038204502697517

/-! ## A312675.P14587360926700861275

`A312674(n)+A044941(A041915(n))`
-/

namespace A312675.P14587360926700861275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312674 n + A044941 (A041915 n).toNat

end

end A312675.P14587360926700861275

/-! ## A312675.P13667566158129733288

`A312674(n)+A023531(A081314(2*(n+4)))`
-/

namespace A312675.P13667566158129733288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312674 n + A023531 (A081314 (2 * (n + 4))).toNat

end

end A312675.P13667566158129733288

/-!
# A312676: Coordination sequence Gal.5.187.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312676, there is no canonical definition to state claims against.
-/

/-! ## A312676.P13866281847853133536

`A312677(n*Δ[A045918(n)])`
-/

namespace A312676.P13866281847853133536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312677 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A312676.P13866281847853133536

/-! ## A312676.P7716509252630743385

`A312677(n)^Δ[A023106(n)]`
-/

namespace A312676.P7716509252630743385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023106 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312677 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A312676.P7716509252630743385

/-! ## A312676.P6473926334812647799

`A312677(n)^Δ[A045918(n)]`
-/

namespace A312676.P6473926334812647799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312677 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A312676.P6473926334812647799

/-! ## A312676.P4382353167552926482

`A312677(n)%A267563(n+3)²`
-/

namespace A312676.P4382353167552926482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312677 n) (A267563 (n + 3) ^ 2)

end

end A312676.P4382353167552926482

/-! ## A312676.P5667626648229251540

`A312677(n^A295924(3*n+5))`
-/

namespace A312676.P5667626648229251540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312677 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A295924 (3 * n + 5) : ℤ))).toNat

end

end A312676.P5667626648229251540

/-!
# A312677: Coordination sequence Gal.5.188.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312677, there is no canonical definition to state claims against.
-/

/-! ## A312677.P11685958026655182610

`A312679(n)-A025666(A173779(n))`
-/

namespace A312677.P11685958026655182610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312679 n - A025666 (A173779 n).toNat

end

end A312677.P11685958026655182610

/-!
# A312678: Coordination sequence Gal.6.446.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312678, there is no canonical definition to state claims against.
-/

/-! ## A312678.P14822533786139541890

`A312679(n)-A025466(A000932(n))`
-/

namespace A312678.P14822533786139541890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312679 n - A025466 (A000932 n).toNat

end

end A312678.P14822533786139541890

/-! ## A312678.P7081077072829340194

`A312679(A097448(n²))`
-/

namespace A312678.P7081077072829340194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312679 (A097448 (n ^ 2)).toNat

end

end A312678.P7081077072829340194

/-! ## A312678.P2547284803643811396

`A312679(n^A295924(3*n+5))`
-/

namespace A312678.P2547284803643811396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312679 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A295924 (3 * n + 5) : ℤ))).toNat

end

end A312678.P2547284803643811396

/-! ## A312678.P5895003157221313371

`A312679(n)-and(2, char[1])*A000203(n!)`
-/

namespace A312678.P5895003157221313371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312679 n - (Nat.land 2 (if ∃ j, f1 j = n then 1 else 0) : ℤ) * A000203 (Nat.factorial n)

end

end A312678.P5895003157221313371

/-!
# A312679: Coordination sequence Gal.6.450.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312679, there is no canonical definition to state claims against.
-/

/-! ## A312679.P1963715492106100259

`A312677(n)+A025666(A173779(n))`
-/

namespace A312679.P1963715492106100259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312677 n + A025666 (A173779 n).toNat

end

end A312679.P1963715492106100259

/-! ## A312679.P17522112359008345691

`A312678(n)+A025466(A000932(n))`
-/

namespace A312679.P17522112359008345691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312678 n + A025466 (A000932 n).toNat

end

end A312679.P17522112359008345691

/-! ## A312679.P11944128934775328931

`eq[A051023(A243389(n+1)), A093178(n)]`
-/

namespace A312679.P11944128934775328931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 (A243389 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312679.P11944128934775328931

/-! ## A312679.P11996694907424001745

`xor(A010673(A138791(3*n+4)), A315203(n))`
-/

namespace A312679.P11996694907424001745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 (A138791 (3 * n + 4)).toNat) (A315203 n)

end

end A312679.P11996694907424001745

/-!
# A312680: Coordination sequence Gal.4.63.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312680, the canonical program `A312680.P9217351570199122673` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312680 has offset 0).

The definition of A312680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2394 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312680.P1093514771609303036

`A313147(n)-A238470(n)`
-/

namespace A312680.P1093514771609303036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313147 n - A238470 n

end

end A312680.P1093514771609303036

namespace A312680

/-- `A313147(n)-A238470(n)` -/
def P1093514771609303036.Spec : Prop :=
  ∀ n, P1093514771609303036.a n = A312680 n

theorem P1093514771609303036.correct : P1093514771609303036.Spec := by
  intro n
  simp only [A312680, Nat.add_sub_cancel, A312680.P1093514771609303036.a, A312680.P9217351570199122673.a, A238470, A238470.P1028853406756724010.a, A310411, A310411.P12923110571559906962.a, A313147, A313147.P2022922053315539050.a, A008486, A008486.P11623131867527198563.a, A060464, A060464.P1238324434526818081.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312680

/-! ## A312680.P9217351570199122673

`A310411(n)-2*A238470(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A312680

/-- `A310411(n)-2*A238470(n)` -/
def P9217351570199122673.Spec : Prop :=
  ∀ n, P9217351570199122673.a n = A312680 n

theorem P9217351570199122673.correct : P9217351570199122673.Spec := by
  intro n
  simp only [A312680]

end A312680

/-! ## A312680.P18283865058718323717

`A311586(n)+Δ[2*A011860(n)]`
-/

namespace A312680.P18283865058718323717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311586 n + (f1 (n + 1) - f1 n)

end

end A312680.P18283865058718323717

namespace A312680

/-- `A311586(n)+Δ[2*A011860(n)]` -/
def P18283865058718323717.Spec : Prop :=
  ∀ n, P18283865058718323717.a n = A312680 n

end A312680

/-! ## A312680.P16289389232916193360

`A312183(n)+Δ[A011860(n)]`
-/

namespace A312680.P16289389232916193360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312183 n + (f1 (n + 1) - f1 n)

end

end A312680.P16289389232916193360

namespace A312680

/-- `A312183(n)+Δ[A011860(n)]` -/
def P16289389232916193360.Spec : Prop :=
  ∀ n, P16289389232916193360.a n = A312680 n

end A312680

/-! ## A312680.P3508288381176900489

`abs(A008592(n)-A315634(n))`
-/

namespace A312680.P3508288381176900489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315634 n|

end

end A312680.P3508288381176900489

namespace A312680

/-- `abs(A008592(n)-A315634(n))` -/
def P3508288381176900489.Spec : Prop :=
  ∀ n, P3508288381176900489.a n = A312680 n

end A312680

/-! ## A312680.P8507959009174931516

`2*A008706(n)-A315634(n)`
-/

namespace A312680.P8507959009174931516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315634 n

end

end A312680.P8507959009174931516

namespace A312680

/-- `2*A008706(n)-A315634(n)` -/
def P8507959009174931516.Spec : Prop :=
  ∀ n, P8507959009174931516.a n = A312680 n

end A312680

/-! ## A312680.P14235483643217316577

`A008458(n)+A008574(n)-A315634(n)`
-/

namespace A312680.P14235483643217316577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315634 n)

end

end A312680.P14235483643217316577

namespace A312680

/-- `A008458(n)+A008574(n)-A315634(n)` -/
def P14235483643217316577.Spec : Prop :=
  ∀ n, P14235483643217316577.a n = A312680 n

end A312680

/-! ## A312680.P3506599184731558784

`2*A313923(n)-A008458(n)`
-/

namespace A312680.P3506599184731558784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313923 n - A008458 n

end

end A312680.P3506599184731558784

namespace A312680

/-- `2*A313923(n)-A008458(n)` -/
def P3506599184731558784.Spec : Prop :=
  ∀ n, P3506599184731558784.a n = A312680 n

end A312680

/-! ## A312680.P11810422716762983420

`A008458(n)-A005843(A008458(n)-A313923(n))`
-/

namespace A312680.P11810422716762983420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A313923 n).toNat

end

end A312680.P11810422716762983420

namespace A312680

/-- `A008458(n)-A005843(A008458(n)-A313923(n))` -/
def P11810422716762983420.Spec : Prop :=
  ∀ n, P11810422716762983420.a n = A312680 n

end A312680

/-! ## A312680.P5505931838946096524

`A004442(A017281(n)-A315634(n))`
-/

namespace A312680.P5505931838946096524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315634 n).toNat

end

end A312680.P5505931838946096524

namespace A312680

/-- `A004442(A017281(n)-A315634(n))` -/
def P5505931838946096524.Spec : Prop :=
  ∀ n, P5505931838946096524.a n = A312680 n

end A312680

/-! ## A312680.P14439886754159995886

`A005843(A008706(n))-A315634(n)`
-/

namespace A312680.P14439886754159995886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315634 n

end

end A312680.P14439886754159995886

namespace A312680

/-- `A005843(A008706(n))-A315634(n)` -/
def P14439886754159995886.Spec : Prop :=
  ∀ n, P14439886754159995886.a n = A312680 n

end A312680

/-! ## A312680.P16527741869077096498

`A005843(A313923(n))-A008458(n)`
-/

namespace A312680.P16527741869077096498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313923 n).toNat - A008458 n

end

end A312680.P16527741869077096498

namespace A312680

/-- `A005843(A313923(n))-A008458(n)` -/
def P16527741869077096498.Spec : Prop :=
  ∀ n, P16527741869077096498.a n = A312680 n

end A312680

/-!
# A312681: Coordination sequence Gal.6.251.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312681, the canonical program `A312681.P5384557815485035993` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312681 has offset 0).

The definition of A312681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312681.P1233975254974752088

`abs(10*n-A315633(n))`
-/

namespace A312681.P1233975254974752088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315633 n|

end

end A312681.P1233975254974752088

namespace A312681

/-- `abs(10*n-A315633(n))` -/
def P1233975254974752088.Spec : Prop :=
  ∀ n, P1233975254974752088.a n = A312681 n

end A312681

/-! ## A312681.P5384557815485035993

`2*A312125(n)-A008574(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A312681

/-- `2*A312125(n)-A008574(n)` -/
def P5384557815485035993.Spec : Prop :=
  ∀ n, P5384557815485035993.a n = A312681 n

theorem P5384557815485035993.correct : P5384557815485035993.Spec := by
  intro n
  simp only [A312681]

end A312681

/-! ## A312681.P17012153798065402224

`2*A008706(n)-A315633(n)`
-/

namespace A312681.P17012153798065402224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315633 n

end

end A312681.P17012153798065402224

namespace A312681

/-- `2*A008706(n)-A315633(n)` -/
def P17012153798065402224.Spec : Prop :=
  ∀ n, P17012153798065402224.a n = A312681 n

end A312681

/-! ## A312681.P3224911252730499318

`A135042(Δ[n²])-A315633(n)`
-/

namespace A312681.P3224911252730499318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A315633 n

end

end A312681.P3224911252730499318

namespace A312681

/-- `A135042(Δ[n²])-A315633(n)` -/
def P3224911252730499318.Spec : Prop :=
  ∀ n, P3224911252730499318.a n = A312681 n

end A312681

/-! ## A312681.P7129170897586896768

`A103517(A312125(n)-(2*n+1))`
-/

namespace A312681.P7129170897586896768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A312125 n - (2 * n + 1 : ℤ)).toNat

end

end A312681.P7129170897586896768

namespace A312681

/-- `A103517(A312125(n)-(2*n+1))` -/
def P7129170897586896768.Spec : Prop :=
  ∀ n, P7129170897586896768.a n = A312681 n

end A312681

/-! ## A312681.P17319527442885354065

`2*(A312125(n)-n)-A004275(n+1)`
-/

namespace A312681.P17319527442885354065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A312125 n - (n : ℤ)) - A004275 (n + 1)

end

end A312681.P17319527442885354065

namespace A312681

/-- `2*(A312125(n)-n)-A004275(n+1)` -/
def P17319527442885354065.Spec : Prop :=
  ∀ n, P17319527442885354065.a n = A312681 n

end A312681

/-! ## A312681.P9942331119150047534

`A004275(A312125(n)-A004273(n))`
-/

namespace A312681.P9942331119150047534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312125 n - A004273 n).toNat

end

end A312681.P9942331119150047534

namespace A312681

/-- `A004275(A312125(n)-A004273(n))` -/
def P9942331119150047534.Spec : Prop :=
  ∀ n, P9942331119150047534.a n = A312681 n

end A312681

/-! ## A312681.P8743017513163365991

`A004277(A312125(n)-A004277(n))`
-/

namespace A312681.P8743017513163365991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312125 n - A004277 n).toNat

end

end A312681.P8743017513163365991

namespace A312681

/-- `A004277(A312125(n)-A004277(n))` -/
def P8743017513163365991.Spec : Prop :=
  ∀ n, P8743017513163365991.a n = A312681 n

end A312681

/-! ## A312681.P16782319583662013498

`A008458(n)+A008574(n)-A315633(n)`
-/

namespace A312681.P16782319583662013498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315633 n)

end

end A312681.P16782319583662013498

namespace A312681

/-- `A008458(n)+A008574(n)-A315633(n)` -/
def P16782319583662013498.Spec : Prop :=
  ∀ n, P16782319583662013498.a n = A312681 n

end A312681

/-! ## A312681.P657833317811264487

`A004273(A312125(n)-n)-A004273(n)`
-/

namespace A312681.P657833317811264487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312125 n - (n : ℤ)).toNat - A004273 n

end

end A312681.P657833317811264487

namespace A312681

/-- `A004273(A312125(n)-n)-A004273(n)` -/
def P657833317811264487.Spec : Prop :=
  ∀ n, P657833317811264487.a n = A312681 n

end A312681

/-! ## A312681.P16911474391307725047

`A008574(n)+A005843(A312125(n)-A008574(n))`
-/

namespace A312681.P16911474391307725047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A312125 n - A008574 n).toNat

end

end A312681.P16911474391307725047

namespace A312681

/-- `A008574(n)+A005843(A312125(n)-A008574(n))` -/
def P16911474391307725047.Spec : Prop :=
  ∀ n, P16911474391307725047.a n = A312681 n

end A312681

/-! ## A312681.P8735688919239621056

`A005843(A312125(n))-A008574(n)`
-/

namespace A312681.P8735688919239621056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312125 n).toNat - A008574 n

end

end A312681.P8735688919239621056

namespace A312681

/-- `A005843(A312125(n))-A008574(n)` -/
def P8735688919239621056.Spec : Prop :=
  ∀ n, P8735688919239621056.a n = A312681 n

end A312681

/-! ## A312681.P1296834079556517775

`A004275(A312125(n))-A004275(2*n)`
-/

namespace A312681.P1296834079556517775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312125 n).toNat - A004275 (2 * n)

end

end A312681.P1296834079556517775

namespace A312681

/-- `A004275(A312125(n))-A004275(2*n)` -/
def P1296834079556517775.Spec : Prop :=
  ∀ n, P1296834079556517775.a n = A312681 n

end A312681

/-! ## A312681.P9753067599894753522

`A005843(A312125(n))+n-A008706(n)`
-/

namespace A312681.P9753067599894753522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312125 n).toNat + ((n : ℤ) - A008706 n)

end

end A312681.P9753067599894753522

namespace A312681

/-- `A005843(A312125(n))+n-A008706(n)` -/
def P9753067599894753522.Spec : Prop :=
  ∀ n, P9753067599894753522.a n = A312681 n

end A312681

/-! ## A312681.P13515194152674902774

`A005843(A008706(n))-A315633(n)`
-/

namespace A312681.P13515194152674902774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315633 n

end

end A312681.P13515194152674902774

namespace A312681

/-- `A005843(A008706(n))-A315633(n)` -/
def P13515194152674902774.Spec : Prop :=
  ∀ n, P13515194152674902774.a n = A312681 n

end A312681

/-!
# A312682: Coordination sequence Gal.5.112.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312682, the canonical program `A312682.P2011729354850800503` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312682 has offset 0).

The definition of A312682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312682.P13063837317233241647

`∑[and(4, n+1)/2]+floor(3/acot(n)+n)`
-/

namespace A312682.P13063837317233241647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 4 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (⌊3 / SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ : ℚ)

end

end A312682.P13063837317233241647

namespace A312682

/-- `∑[and(4, n+1)/2]+floor(3/acot(n)+n)` -/
def P13063837317233241647.Spec : Prop :=
  ∀ n, P13063837317233241647.a n = (A312682 n : ℚ)

end A312682

/-! ## A312682.P3463198761589003242

`A008574(n)+∑[and(4, n+1)/2]`
-/

namespace A312682.P3463198761589003242
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 4 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312682.P3463198761589003242

namespace A312682

/-- `A008574(n)+∑[and(4, n+1)/2]` -/
def P3463198761589003242.Spec : Prop :=
  ∀ n, P3463198761589003242.a n = (A312682 n : ℚ)

end A312682

/-! ## A312682.P8102697577046418611

`A004275(2*n+1)+∑[and(4, n+1)/2]`
-/

namespace A312682.P8102697577046418611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 4 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (2 * n + 1) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312682.P8102697577046418611

namespace A312682

/-- `A004275(2*n+1)+∑[and(4, n+1)/2]` -/
def P8102697577046418611.Spec : Prop :=
  ∀ n, P8102697577046418611.a n = (A312682 n : ℚ)

end A312682

/-! ## A312682.P2843933914761762853

`abs(A008592(n)-A315632(n))`
-/

namespace A312682.P2843933914761762853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315632 n|

end

end A312682.P2843933914761762853

namespace A312682

/-- `abs(A008592(n)-A315632(n))` -/
def P2843933914761762853.Spec : Prop :=
  ∀ n, P2843933914761762853.a n = A312682 n

end A312682

/-! ## A312682.P15948084266529897757

`floor(A010015(n)/A315632(n))`
-/

namespace A312682.P15948084266529897757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315632 n : ℚ)⌋

end

end A312682.P15948084266529897757

namespace A312682

/-- `floor(A010015(n)/A315632(n))` -/
def P15948084266529897757.Spec : Prop :=
  ∀ n, P15948084266529897757.a n = A312682 n

end A312682

/-! ## A312682.P2011729354850800503

`A312205(n)+Δ[A011861(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A312682

/-- `A312205(n)+Δ[A011861(n)]` -/
def P2011729354850800503.Spec : Prop :=
  ∀ n, P2011729354850800503.a n = A312682 n

theorem P2011729354850800503.correct : P2011729354850800503.Spec := by
  intro n
  simp only [A312682]

end A312682

/-! ## A312682.P10744629944499904123

`2*A312140(n)-A008574(n)`
-/

namespace A312682.P10744629944499904123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312140 n - A008574 n

end

end A312682.P10744629944499904123

namespace A312682

/-- `2*A312140(n)-A008574(n)` -/
def P10744629944499904123.Spec : Prop :=
  ∀ n, P10744629944499904123.a n = A312682 n

end A312682

/-! ## A312682.P17849872536293482949

`A315306(n)-2*A046978(n)`
-/

namespace A312682.P17849872536293482949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315306 n - 2 * A046978 n

end

end A312682.P17849872536293482949

namespace A312682

/-- `A315306(n)-2*A046978(n)` -/
def P17849872536293482949.Spec : Prop :=
  ∀ n, P17849872536293482949.a n = A312682 n

end A312682

/-! ## A312682.P13441375294241651465

`A311625(n)+Δ[2*A011861(n)]`
-/

namespace A312682.P13441375294241651465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311625 n + (f1 (n + 1) - f1 n)

end

end A312682.P13441375294241651465

namespace A312682

/-- `A311625(n)+Δ[2*A011861(n)]` -/
def P13441375294241651465.Spec : Prop :=
  ∀ n, P13441375294241651465.a n = A312682 n

theorem P13441375294241651465.correct : P13441375294241651465.Spec := by
  intro n
  simp only [A312682, Nat.add_sub_cancel, A312682.P13441375294241651465.f1, A312682.P13441375294241651465.a, A312682.P2011729354850800503.f1, A312682.P2011729354850800503.a, A011861, A011861.P4500963193198654930.a, A311625, A311625.P7066219322900741713.a, A312205, A312205.P3565082773998277828.f1, A312205.P3565082773998277828.a, A008574, A008574.P1300280032690682112.a, A311501, A311501.P3617403906977629789.a, A004525, A004525.P4158271949796742323.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312682

/-! ## A312682.P1618982616722026888

`A008574(n)+∑[and(2, A006325(n))]`
-/

namespace A312682.P1618982616722026888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A006325 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312682.P1618982616722026888

namespace A312682

/-- `A008574(n)+∑[and(2, A006325(n))]` -/
def P1618982616722026888.Spec : Prop :=
  ∀ n, P1618982616722026888.a n = A312682 n

end A312682

/-! ## A312682.P16994389184294031196

`A008574(n)+∑[and(2, A022266(n))]`
-/

namespace A312682.P16994389184294031196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A022266 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312682.P16994389184294031196

namespace A312682

/-- `A008574(n)+∑[and(2, A022266(n))]` -/
def P16994389184294031196.Spec : Prop :=
  ∀ n, P16994389184294031196.a n = A312682 n

end A312682

/-! ## A312682.P6344117575089626690

`A312506(n)+A201629(A004525(n))`
-/

namespace A312682.P6344117575089626690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312506 n + A201629 (A004525 n).toNat

end

end A312682.P6344117575089626690

namespace A312682

/-- `A312506(n)+A201629(A004525(n))` -/
def P6344117575089626690.Spec : Prop :=
  ∀ n, P6344117575089626690.a n = A312682 n

end A312682

/-! ## A312682.P2934838880035767383

`A004275(A312140(n)-A004273(n))`
-/

namespace A312682.P2934838880035767383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312140 n - A004273 n).toNat

end

end A312682.P2934838880035767383

namespace A312682

/-- `A004275(A312140(n)-A004273(n))` -/
def P2934838880035767383.Spec : Prop :=
  ∀ n, P2934838880035767383.a n = A312682 n

end A312682

/-! ## A312682.P6005143528896547650

`A311625(n)+A201629(A201629(n)/2)`
-/

namespace A312682.P6005143528896547650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311625 n + A201629 (SequenceMachineLib.roundAway ((A201629 n : ℚ) / 2)).toNat

end

end A312682.P6005143528896547650

namespace A312682

/-- `A311625(n)+A201629(A201629(n)/2)` -/
def P6005143528896547650.Spec : Prop :=
  ∀ n, P6005143528896547650.a n = A312682 n

end A312682

/-! ## A312682.P3254652538790574668

`A008458(n)+A008574(n)-A315632(n)`
-/

namespace A312682.P3254652538790574668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315632 n)

end

end A312682.P3254652538790574668

namespace A312682

/-- `A008458(n)+A008574(n)-A315632(n)` -/
def P3254652538790574668.Spec : Prop :=
  ∀ n, P3254652538790574668.a n = A312682 n

end A312682

/-! ## A312682.P2608941677212938618

`A314969(n)-A046978(A046978(n)+n)`
-/

namespace A312682.P2608941677212938618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314969 n - A046978 (A046978 n + (n : ℤ)).toNat

end

end A312682.P2608941677212938618

namespace A312682

/-- `A314969(n)-A046978(A046978(n)+n)` -/
def P2608941677212938618.Spec : Prop :=
  ∀ n, P2608941677212938618.a n = A312682 n

end A312682

/-! ## A312682.P13093331788759166049

`A004273(A312140(n)-n)-A004273(n)`
-/

namespace A312682.P13093331788759166049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312140 n - (n : ℤ)).toNat - A004273 n

end

end A312682.P13093331788759166049

namespace A312682

/-- `A004273(A312140(n)-n)-A004273(n)` -/
def P13093331788759166049.Spec : Prop :=
  ∀ n, P13093331788759166049.a n = A312682 n

end A312682

/-! ## A312682.P8162689140582999883

`A315061(n)-A046978(n)`
-/

namespace A312682.P8162689140582999883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n - A046978 n

end

end A312682.P8162689140582999883

namespace A312682

/-- `A315061(n)-A046978(n)` -/
def P8162689140582999883.Spec : Prop :=
  ∀ n, P8162689140582999883.a n = A312682 n

end A312682

/-! ## A312682.P3040629321952264074

`2*A313926(n)-A008458(n)`
-/

namespace A312682.P3040629321952264074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313926 n - A008458 n

end

end A312682.P3040629321952264074

namespace A312682

/-- `2*A313926(n)-A008458(n)` -/
def P3040629321952264074.Spec : Prop :=
  ∀ n, P3040629321952264074.a n = A312682 n

end A312682

/-! ## A312682.P14280942193398362795

`A074067(A315632(n))`
-/

namespace A312682.P14280942193398362795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315632 n).toNat

end

end A312682.P14280942193398362795

namespace A312682

/-- `A074067(A315632(n))` -/
def P14280942193398362795.Spec : Prop :=
  ∀ n, P14280942193398362795.a n = A312682 n

end A312682

/-!
# A312683: Coordination sequence Gal.5.113.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312683, the canonical program `A312683.P3196979988989396886` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312683 has offset 0).

The definition of A312683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312683.P17183801840061192269

`abs(A008592(n)-A315631(n))`
-/

namespace A312683.P17183801840061192269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315631 n|

end

end A312683.P17183801840061192269

namespace A312683

/-- `abs(A008592(n)-A315631(n))` -/
def P17183801840061192269.Spec : Prop :=
  ∀ n, P17183801840061192269.a n = A312683 n

end A312683

/-! ## A312683.P3196979988989396886

`A312207(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A312683

/-- `A312207(n)+Δ[A011862(n)]` -/
def P3196979988989396886.Spec : Prop :=
  ∀ n, P3196979988989396886.a n = A312683 n

theorem P3196979988989396886.correct : P3196979988989396886.Spec := by
  intro n
  simp only [A312683]

end A312683

/-! ## A312683.P15096667841557584636

`2*A008706(n)-A315631(n)`
-/

namespace A312683.P15096667841557584636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315631 n

end

end A312683.P15096667841557584636

namespace A312683

/-- `2*A008706(n)-A315631(n)` -/
def P15096667841557584636.Spec : Prop :=
  ∀ n, P15096667841557584636.a n = A312683 n

end A312683

/-! ## A312683.P13605507840865420471

`A311633(n)+Δ[2*A011862(n)]`
-/

namespace A312683.P13605507840865420471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311633 n + (f1 (n + 1) - f1 n)

end

end A312683.P13605507840865420471

namespace A312683

/-- `A311633(n)+Δ[2*A011862(n)]` -/
def P13605507840865420471.Spec : Prop :=
  ∀ n, P13605507840865420471.a n = A312683 n

theorem P13605507840865420471.correct : P13605507840865420471.Spec := by
  intro n
  simp only [A312683, Nat.add_sub_cancel, A312683.P13605507840865420471.f1, A312683.P13605507840865420471.a, A312683.P3196979988989396886.f1, A312683.P3196979988989396886.a, A011862, A011862.P9485299441699197278.a, A311633, A311633.P17424544686150266232.a, A312207, A312207.P3228347032379674604.f1, A312207.P3228347032379674604.a, A004396, A004396.P17032557045289780609.a, A128834, A128834.P16779687439637953687.a, A314736, A314736.P3794098761063289759.a, A006369, A006369.P842576174392056214.a, A010892, A010892.P14408744864468695543.a, A314428, A314428.P9611413599869563837.a, A315214, A315214.P13359799671460808905.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312683

/-! ## A312683.P17141331964834960596

`A008458(n)+A008574(n)-A315631(n)`
-/

namespace A312683.P17141331964834960596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315631 n)

end

end A312683.P17141331964834960596

namespace A312683

/-- `A008458(n)+A008574(n)-A315631(n)` -/
def P17141331964834960596.Spec : Prop :=
  ∀ n, P17141331964834960596.a n = A312683 n

end A312683

/-! ## A312683.P13450145620361542706

`∑{d}[A008592(n)-A315631(n), A000010(#)]`
-/

namespace A312683.P13450145620361542706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A312683.P13450145620361542706

namespace A312683

/-- `∑{d}[A008592(n)-A315631(n), A000010(#)]` -/
def P13450145620361542706.Spec : Prop :=
  ∀ n, P13450145620361542706.a n = A312683 n

end A312683

/-! ## A312683.P5428296247874429895

`A313293(n)-A004396(A002264(n+1))`
-/

namespace A312683.P5428296247874429895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313293 n - A004396 (A002264 (n + 1)).toNat

end

end A312683.P5428296247874429895

namespace A312683

/-- `A313293(n)-A004396(A002264(n+1))` -/
def P5428296247874429895.Spec : Prop :=
  ∀ n, P5428296247874429895.a n = A312683 n

end A312683

/-! ## A312683.P8249336397901449619

`A313293(n)-A004396(n-A004396(n))`
-/

namespace A312683.P8249336397901449619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313293 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A312683.P8249336397901449619

namespace A312683

/-- `A313293(n)-A004396(n-A004396(n))` -/
def P8249336397901449619.Spec : Prop :=
  ∀ n, P8249336397901449619.a n = A312683 n

end A312683

/-! ## A312683.P17920737564874111636

`2*A313927(n)-A008458(n)`
-/

namespace A312683.P17920737564874111636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313927 n - A008458 n

end

end A312683.P17920737564874111636

namespace A312683

/-- `2*A313927(n)-A008458(n)` -/
def P17920737564874111636.Spec : Prop :=
  ∀ n, P17920737564874111636.a n = A312683 n

end A312683

/-! ## A312683.P16341654244581753229

`A103517(A313927(n)-A016777(n))`
-/

namespace A312683.P16341654244581753229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313927 n - A016777 n).toNat

end

end A312683.P16341654244581753229

namespace A312683

/-- `A103517(A313927(n)-A016777(n))` -/
def P16341654244581753229.Spec : Prop :=
  ∀ n, P16341654244581753229.a n = A312683 n

end A312683

/-! ## A312683.P8599321864243625078

`A103517(A313927(n)%A016777(n))`
-/

namespace A312683.P8599321864243625078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A313927 n) (A016777 n)).toNat

end

end A312683.P8599321864243625078

namespace A312683

/-- `A103517(A313927(n)%A016777(n))` -/
def P8599321864243625078.Spec : Prop :=
  ∀ n, P8599321864243625078.a n = A312683 n

end A312683

/-! ## A312683.P8561646890269488368

`A008458(n)-A005843(A008458(n)-A313927(n))`
-/

namespace A312683.P8561646890269488368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A313927 n).toNat

end

end A312683.P8561646890269488368

namespace A312683

/-- `A008458(n)-A005843(A008458(n)-A313927(n))` -/
def P8561646890269488368.Spec : Prop :=
  ∀ n, P8561646890269488368.a n = A312683 n

end A312683

/-! ## A312683.P10696070952197257084

`A005843(A008706(n))-A315631(n)`
-/

namespace A312683.P10696070952197257084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315631 n

end

end A312683.P10696070952197257084

namespace A312683

/-- `A005843(A008706(n))-A315631(n)` -/
def P10696070952197257084.Spec : Prop :=
  ∀ n, P10696070952197257084.a n = A312683 n

end A312683

/-! ## A312683.P11758262922368468429

`A005843(A313927(n))-A008458(n)`
-/

namespace A312683.P11758262922368468429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313927 n).toNat - A008458 n

end

end A312683.P11758262922368468429

namespace A312683

/-- `A005843(A313927(n))-A008458(n)` -/
def P11758262922368468429.Spec : Prop :=
  ∀ n, P11758262922368468429.a n = A312683 n

end A312683

/-! ## A312683.P3903606136399296430

`A312207(n)+A033183(A004771(n))`
-/

namespace A312683.P3903606136399296430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312207 n + A033183 (A004771 n).toNat

end

end A312683.P3903606136399296430

namespace A312683

/-- `A312207(n)+A033183(A004771(n))` -/
def P3903606136399296430.Spec : Prop :=
  ∀ n, P3903606136399296430.a n = A312683 n

end A312683

/-!
# A312684: Coordination sequence Gal.6.252.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312684, the canonical program `A312684.P12134066676930196282` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312684 has offset 0).

The definition of A312684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312684.P12134066676930196282

`abs(A008592(n)-A315630(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A312684

/-- `abs(A008592(n)-A315630(n))` -/
def P12134066676930196282.Spec : Prop :=
  ∀ n, P12134066676930196282.a n = A312684 n

theorem P12134066676930196282.correct : P12134066676930196282.Spec := by
  intro n
  simp only [A312684]

end A312684

/-! ## A312684.P7068513089955386277

`2*A312143(n)-A008574(n)`
-/

namespace A312684.P7068513089955386277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312143 n - A008574 n

end

end A312684.P7068513089955386277

namespace A312684

/-- `2*A312143(n)-A008574(n)` -/
def P7068513089955386277.Spec : Prop :=
  ∀ n, P7068513089955386277.a n = A312684 n

end A312684

/-! ## A312684.P8600781165689550169

`2*A008706(n)-A315630(n)`
-/

namespace A312684.P8600781165689550169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315630 n

end

end A312684.P8600781165689550169

namespace A312684

/-- `2*A008706(n)-A315630(n)` -/
def P8600781165689550169.Spec : Prop :=
  ∀ n, P8600781165689550169.a n = A312684 n

end A312684

/-! ## A312684.P4156717384343768199

`A004275(A312143(n)-A004273(n))`
-/

namespace A312684.P4156717384343768199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312143 n - A004273 n).toNat

end

end A312684.P4156717384343768199

namespace A312684

/-- `A004275(A312143(n)-A004273(n))` -/
def P4156717384343768199.Spec : Prop :=
  ∀ n, P4156717384343768199.a n = A312684 n

end A312684

/-! ## A312684.P1065359768910850017

`A008458(n)+A008574(n)-A315630(n)`
-/

namespace A312684.P1065359768910850017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315630 n)

end

end A312684.P1065359768910850017

namespace A312684

/-- `A008458(n)+A008574(n)-A315630(n)` -/
def P1065359768910850017.Spec : Prop :=
  ∀ n, P1065359768910850017.a n = A312684 n

end A312684

/-! ## A312684.P2926755555915928590

`A004273(A312143(n)-n)-A004273(n)`
-/

namespace A312684.P2926755555915928590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312143 n - (n : ℤ)).toNat - A004273 n

end

end A312684.P2926755555915928590

namespace A312684

/-- `A004273(A312143(n)-n)-A004273(n)` -/
def P2926755555915928590.Spec : Prop :=
  ∀ n, P2926755555915928590.a n = A312684 n

end A312684

/-! ## A312684.P17493956894888806976

`A008574(n)+A005843(A312143(n)-A008574(n))`
-/

namespace A312684.P17493956894888806976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A312143 n - A008574 n).toNat

end

end A312684.P17493956894888806976

namespace A312684

/-- `A008574(n)+A005843(A312143(n)-A008574(n))` -/
def P17493956894888806976.Spec : Prop :=
  ∀ n, P17493956894888806976.a n = A312684 n

end A312684

/-! ## A312684.P8245001686197490485

`A315726(n)-2*A253262(n)`
-/

namespace A312684.P8245001686197490485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315726 n - 2 * A253262 n

end

end A312684.P8245001686197490485

namespace A312684

/-- `A315726(n)-2*A253262(n)` -/
def P8245001686197490485.Spec : Prop :=
  ∀ n, P8245001686197490485.a n = A312684 n

end A312684

/-! ## A312684.P6946285590327595844

`A313284(n)-A330025(n-A330025(n))`
-/

namespace A312684.P6946285590327595844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313284 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A312684.P6946285590327595844

namespace A312684

/-- `A313284(n)-A330025(n-A330025(n))` -/
def P6946285590327595844.Spec : Prop :=
  ∀ n, P6946285590327595844.a n = A312684 n

end A312684

/-! ## A312684.P15466993204114239079

`A315069(n)-A330025(A330025(n)+n)`
-/

namespace A312684.P15466993204114239079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315069 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A312684.P15466993204114239079

namespace A312684

/-- `A315069(n)-A330025(A330025(n)+n)` -/
def P15466993204114239079.Spec : Prop :=
  ∀ n, P15466993204114239079.a n = A312684 n

end A312684

/-! ## A312684.P12980137199894104247

`A313873(n)-A253262(n)`
-/

namespace A312684.P12980137199894104247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313873 n - A253262 n

end

end A312684.P12980137199894104247

namespace A312684

/-- `A313873(n)-A253262(n)` -/
def P12980137199894104247.Spec : Prop :=
  ∀ n, P12980137199894104247.a n = A312684 n

end A312684

/-! ## A312684.P16837415478099798716

`2*A313928(n)-A008458(n)`
-/

namespace A312684.P16837415478099798716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313928 n - A008458 n

end

end A312684.P16837415478099798716

namespace A312684

/-- `2*A313928(n)-A008458(n)` -/
def P16837415478099798716.Spec : Prop :=
  ∀ n, P16837415478099798716.a n = A312684 n

end A312684

/-! ## A312684.P7886749759322959701

`A008458(n)-A005843(A008458(n)-A313928(n))`
-/

namespace A312684.P7886749759322959701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A313928 n).toNat

end

end A312684.P7886749759322959701

namespace A312684

/-- `A008458(n)-A005843(A008458(n)-A313928(n))` -/
def P7886749759322959701.Spec : Prop :=
  ∀ n, P7886749759322959701.a n = A312684 n

end A312684

/-! ## A312684.P16417666929025416148

`A005843(A312143(n))-A008574(n)`
-/

namespace A312684.P16417666929025416148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312143 n).toNat - A008574 n

end

end A312684.P16417666929025416148

namespace A312684

/-- `A005843(A312143(n))-A008574(n)` -/
def P16417666929025416148.Spec : Prop :=
  ∀ n, P16417666929025416148.a n = A312684 n

end A312684

/-! ## A312684.P4752739775196045

`A004275(A312143(n))-A004275(2*n)`
-/

namespace A312684.P4752739775196045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312143 n).toNat - A004275 (2 * n)

end

end A312684.P4752739775196045

namespace A312684

/-- `A004275(A312143(n))-A004275(2*n)` -/
def P4752739775196045.Spec : Prop :=
  ∀ n, P4752739775196045.a n = A312684 n

end A312684

/-! ## A312684.P6648146294662462847

`A005843(A313928(n))-A008458(n)`
-/

namespace A312684.P6648146294662462847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313928 n).toNat - A008458 n

end

end A312684.P6648146294662462847

namespace A312684

/-- `A005843(A313928(n))-A008458(n)` -/
def P6648146294662462847.Spec : Prop :=
  ∀ n, P6648146294662462847.a n = A312684 n

end A312684

/-!
# A312685: Coordination sequence Gal.6.253.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312685, the canonical program `A312685.P14371545505777199944` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312685 has offset 0).

The definition of A312685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312685.P8980033725751975758

`abs(A008592(n)-A315629(n))`
-/

namespace A312685.P8980033725751975758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315629 n|

end

end A312685.P8980033725751975758

namespace A312685

/-- `abs(A008592(n)-A315629(n))` -/
def P8980033725751975758.Spec : Prop :=
  ∀ n, P8980033725751975758.a n = A312685 n

end A312685

/-! ## A312685.P7283279494996392417

`2*A008706(n)-A315629(n)`
-/

namespace A312685.P7283279494996392417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315629 n

end

end A312685.P7283279494996392417

namespace A312685

/-- `2*A008706(n)-A315629(n)` -/
def P7283279494996392417.Spec : Prop :=
  ∀ n, P7283279494996392417.a n = A312685 n

end A312685

/-! ## A312685.P342973099274889849

`xor(1, A017281(n)-A315629(n))`
-/

namespace A312685.P342973099274889849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017281 n - A315629 n)

end

end A312685.P342973099274889849

namespace A312685

/-- `xor(1, A017281(n)-A315629(n))` -/
def P342973099274889849.Spec : Prop :=
  ∀ n, P342973099274889849.a n = A312685 n

end A312685

/-! ## A312685.P5919049331659358661

`A008458(n)+A008574(n)-A315629(n)`
-/

namespace A312685.P5919049331659358661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315629 n)

end

end A312685.P5919049331659358661

namespace A312685

/-- `A008458(n)+A008574(n)-A315629(n)` -/
def P5919049331659358661.Spec : Prop :=
  ∀ n, P5919049331659358661.a n = A312685 n

end A312685

/-! ## A312685.P4651472406885326817

`A017281(n)-A004442(A315629(n))`
-/

namespace A312685.P4651472406885326817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A315629 n).toNat

end

end A312685.P4651472406885326817

namespace A312685

/-- `A017281(n)-A004442(A315629(n))` -/
def P4651472406885326817.Spec : Prop :=
  ∀ n, P4651472406885326817.a n = A312685 n

end A312685

/-! ## A312685.P14371545505777199944

`2*A313929(n)-A008458(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A312685

/-- `2*A313929(n)-A008458(n)` -/
def P14371545505777199944.Spec : Prop :=
  ∀ n, P14371545505777199944.a n = A312685 n

theorem P14371545505777199944.correct : P14371545505777199944.Spec := by
  intro n
  simp only [A312685]

end A312685

/-! ## A312685.P2767576324457245880

`A103517(A313929(n)-A016777(n))`
-/

namespace A312685.P2767576324457245880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313929 n - A016777 n).toNat

end

end A312685.P2767576324457245880

namespace A312685

/-- `A103517(A313929(n)-A016777(n))` -/
def P2767576324457245880.Spec : Prop :=
  ∀ n, P2767576324457245880.a n = A312685 n

end A312685

/-! ## A312685.P9911025362723940674

`A008458(n)-A005843(A008458(n)-A313929(n))`
-/

namespace A312685.P9911025362723940674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A313929 n).toNat

end

end A312685.P9911025362723940674

namespace A312685

/-- `A008458(n)-A005843(A008458(n)-A313929(n))` -/
def P9911025362723940674.Spec : Prop :=
  ∀ n, P9911025362723940674.a n = A312685 n

end A312685

/-! ## A312685.P12955548259534375322

`A005843(A008706(n))-A315629(n)`
-/

namespace A312685.P12955548259534375322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315629 n

end

end A312685.P12955548259534375322

namespace A312685

/-- `A005843(A008706(n))-A315629(n)` -/
def P12955548259534375322.Spec : Prop :=
  ∀ n, P12955548259534375322.a n = A312685 n

end A312685

/-! ## A312685.P15457433083328844730

`A005843(A313929(n))-A008458(n)`
-/

namespace A312685.P15457433083328844730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313929 n).toNat - A008458 n

end

end A312685.P15457433083328844730

namespace A312685

/-- `A005843(A313929(n))-A008458(n)` -/
def P15457433083328844730.Spec : Prop :=
  ∀ n, P15457433083328844730.a n = A312685 n

end A312685

/-! ## A312685.P9498759947609691693

`A004273(A313929(n))-A004273(3*n)`
-/

namespace A312685.P9498759947609691693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313929 n).toNat - A004273 (3 * n)

end

end A312685.P9498759947609691693

namespace A312685

/-- `A004273(A313929(n))-A004273(3*n)` -/
def P9498759947609691693.Spec : Prop :=
  ∀ n, P9498759947609691693.a n = A312685 n

end A312685

/-! ## A312685.P13790576899189871692

`A065502(A008458(n))-A315629(n)`
-/

namespace A312685.P13790576899189871692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315629 n

end

end A312685.P13790576899189871692

namespace A312685

/-- `A065502(A008458(n))-A315629(n)` -/
def P13790576899189871692.Spec : Prop :=
  ∀ n, P13790576899189871692.a n = A312685 n

end A312685

/-! ## A312685.P10051856898098965301

`A312209(n)+A004525(A312209(n)-A311553(n))`
-/

namespace A312685.P10051856898098965301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312209 n + A004525 (A312209 n - A311553 n).toNat

end

end A312685.P10051856898098965301

namespace A312685

/-- `A312209(n)+A004525(A312209(n)-A311553(n))` -/
def P10051856898098965301.Spec : Prop :=
  ∀ n, P10051856898098965301.a n = A312685 n

end A312685

/-! ## A312685.P6942959092617778300

`A313296(n)-A004525(A313296(n)-A312209(n))`
-/

namespace A312685.P6942959092617778300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313296 n - A004525 (A313296 n - A312209 n).toNat

end

end A312685.P6942959092617778300

namespace A312685

/-- `A313296(n)-A004525(A313296(n)-A312209(n))` -/
def P6942959092617778300.Spec : Prop :=
  ∀ n, P6942959092617778300.a n = A312685 n

end A312685

/-!
# A312686: Coordination sequence Gal.4.91.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312686, there is no canonical definition to state claims against.
-/

/-! ## A312686.P11959897358696578242

`A312687(n)-A083895(A000108(n))`
-/

namespace A312686.P11959897358696578242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312687 n - A083895 (A000108 n).toNat

end

end A312686.P11959897358696578242

/-! ## A312686.P18234425548416869891

`A000201(eq[val(n+1, 2), A138967(2*(n+2))])`
-/

namespace A312686.P18234425548416869891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138967 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A312686.P18234425548416869891

/-! ## A312686.P2775629700656039459

`A312687(n)-A185284(A000982(n))`
-/

namespace A312686.P2775629700656039459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312687 n - A185284 (A000982 n).toNat

end

end A312686.P2775629700656039459

/-! ## A312686.P15883505995452882780

`A312807(n)-A253786(A001665(n))`
-/

namespace A312686.P15883505995452882780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312807 n - A253786 (A001665 n).toNat

end

end A312686.P15883505995452882780

/-! ## A312686.P8405592177213872060

`A312687(n)-A185284(A311153(n))`
-/

namespace A312686.P8405592177213872060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312687 n - A185284 (A311153 n).toNat

end

end A312686.P8405592177213872060

/-!
# A312687: Coordination sequence Gal.4.88.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312687, there is no canonical definition to state claims against.
-/

/-! ## A312687.P3966343609168198640

`A312686(n)+A185284(A000982(n))`
-/

namespace A312687.P3966343609168198640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312686 n + A185284 (A000982 n).toNat

end

end A312687.P3966343609168198640

/-! ## A312687.P2220119667486593910

`A312686(n)+A086078(A328429(n))`
-/

namespace A312687.P2220119667486593910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312686 n + A086078 (A328429 n).toNat

end

end A312687.P2220119667486593910

/-! ## A312687.P11862452350079072114

`A312686(n)+A185284(A311153(n))`
-/

namespace A312687.P11862452350079072114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312686 n + A185284 (A311153 n).toNat

end

end A312687.P11862452350079072114

/-! ## A312687.P399194922518069550

`A312686(n)+A185284(A311700(n))`
-/

namespace A312687.P399194922518069550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312686 n + A185284 (A311700 n).toNat

end

end A312687.P399194922518069550

/-! ## A312687.P1429316210751170781

`A312686(n)+A185284(A312690(n))`
-/

namespace A312687.P1429316210751170781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312686 n + A185284 (A312690 n).toNat

end

end A312687.P1429316210751170781

/-!
# A312689: Coordination sequence Gal.6.57.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312689, there is no canonical definition to state claims against.
-/

/-! ## A312689.P16387233366289204332

`A160755(or(A312707(n), A312723(n)))`
-/

namespace A312689.P16387233366289204332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (Int.lor (A312707 n) (A312723 n)).toNat

end

end A312689.P16387233366289204332

/-! ## A312689.P11022001277147059770

`A346132(A312651(n)-char[7])`
-/

namespace A312689.P11022001277147059770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A312651 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A312689.P11022001277147059770

/-! ## A312689.P16499774472699477081

`A312690(n)-A285073(A182876(n+4))`
-/

namespace A312689.P16499774472699477081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312690 n - A285073 (A182876 (n + 4)).toNat

end

end A312689.P16499774472699477081

/-!
# A312690: Coordination sequence Gal.5.178.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312690, there is no canonical definition to state claims against.
-/

/-! ## A312690.P1161025015266276888

`A346132(A312651(n))`
-/

namespace A312690.P1161025015266276888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A312651 n).toNat

end

end A312690.P1161025015266276888

/-! ## A312690.P11762664299699544337

`A312689(n)+A235145(A185544(n))`
-/

namespace A312690.P11762664299699544337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312689 n + A235145 (A185544 n).toNat

end

end A312690.P11762664299699544337

/-! ## A312690.P111757838053404648

`A312689(n)-A178798(A000070(n))`
-/

namespace A312690.P111757838053404648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312689 n - A178798 (A000070 n).toNat

end

end A312690.P111757838053404648

/-! ## A312690.P8187033274506071475

`A312691(n)-A185284(A000982(n))`
-/

namespace A312690.P8187033274506071475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312691 n - A185284 (A000982 n).toNat

end

end A312690.P8187033274506071475

/-! ## A312690.P3355001634402663879

`A312691(n)-A185284(A312686(n))`
-/

namespace A312690.P3355001634402663879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312691 n - A185284 (A312686 n).toNat

end

end A312690.P3355001634402663879

/-!
# A312691: Coordination sequence Gal.5.169.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312691, there is no canonical definition to state claims against.
-/

/-! ## A312691.P2862904355439850632

`A312606(n)+2*A083025(A148452(n))`
-/

namespace A312691.P2862904355439850632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312606 n + 2 * A083025 (A148452 n).toNat

end

end A312691.P2862904355439850632

/-! ## A312691.P6678675796418040604

`A312606(n)+2*A083025(A148453(n))`
-/

namespace A312691.P6678675796418040604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312606 n + 2 * A083025 (A148453 n).toNat

end

end A312691.P6678675796418040604

/-! ## A312691.P1385042905629493278

`A346132(A312651(n))+char[8]`
-/

namespace A312691.P1385042905629493278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A312651 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312691.P1385042905629493278

/-! ## A312691.P10093672259848951499

`A267593(n)+A114955(A114957(n))`
-/

namespace A312691.P10093672259848951499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267593 n + A114955 (A114957 n).toNat

end

end A312691.P10093672259848951499

/-! ## A312691.P11006785905226214660

`A312690(n)+A185284(A000982(n))`
-/

namespace A312691.P11006785905226214660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312690 n + A185284 (A000982 n).toNat

end

end A312691.P11006785905226214660

/-!
# A312692: Coordination sequence Gal.6.426.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312692, there is no canonical definition to state claims against.
-/

/-! ## A312692.P15970117153386544656

`A312693(n)-A185284(A310007(n))`
-/

namespace A312692.P15970117153386544656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312693 n - A185284 (A310007 n).toNat

end

end A312692.P15970117153386544656

/-! ## A312692.P13870175426385106984

`A312693(n)-A185284(A347973(n))`
-/

namespace A312692.P13870175426385106984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312693 n - A185284 (A347973 n).toNat

end

end A312692.P13870175426385106984

/-! ## A312692.P13198089906365869264

`A312693(n)-A185284(A030291(n+1))`
-/

namespace A312692.P13198089906365869264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312693 n - A185284 (A030291 (n + 1)).toNat

end

end A312692.P13198089906365869264

/-! ## A312692.P7989215107389052045

`xor(A185284(A344654(n+2)), A312693(n))`
-/

namespace A312692.P7989215107389052045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A344654 (n + 2)).toNat) (A312693 n)

end

end A312692.P7989215107389052045

/-! ## A312692.P8406851993330584782

`xor(A185284(A356105(n+2)), A312693(n))`
-/

namespace A312692.P8406851993330584782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A356105 (n + 2)).toNat) (A312693 n)

end

end A312692.P8406851993330584782

/-!
# A312693: Coordination sequence Gal.6.409.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312693, there is no canonical definition to state claims against.
-/

/-! ## A312693.P11301162542984540385

`or(A171737(A171727(n+1)), A312692(n))`
-/

namespace A312693.P11301162542984540385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A171737 (A171727 (n + 1)).toNat) (A312692 n)

end

end A312693.P11301162542984540385

/-! ## A312693.P12729664588744144126

`or(A286493(A255494(2*n)), A312692(n))`
-/

namespace A312693.P12729664588744144126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286493 (A255494 (2 * n)).toNat) (A312692 n)

end

end A312693.P12729664588744144126

/-!
# A312694: Coordination sequence Gal.6.425.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312694, there is no canonical definition to state claims against.
-/

/-! ## A312694.P3987936509936560796

`A312695(A062399(n))`
-/

namespace A312694.P3987936509936560796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312695 (A062399 n).toNat

end

end A312694.P3987936509936560796

/-! ## A312694.P5763666110720347378

`A312695(A120126(n))`
-/

namespace A312694.P5763666110720347378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312695 (A120126 n).toNat

end

end A312694.P5763666110720347378

/-! ## A312694.P9905970349380750474

`A312695(A351870(n))`
-/

namespace A312694.P9905970349380750474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312695 (A351870 n).toNat

end

end A312694.P9905970349380750474

/-! ## A312694.P7966349604862351519

`A312695(n)%A117612(n)`
-/

namespace A312694.P7966349604862351519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312695 n) (A117612 n)

end

end A312694.P7966349604862351519

/-! ## A312694.P13151360693796059499

`A312695(A087051(n))`
-/

namespace A312694.P13151360693796059499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312695 (A087051 n).toNat

end

end A312694.P13151360693796059499

/-!
# A312696: Coordination sequence Gal.6.428.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312696, there is no canonical definition to state claims against.
-/

/-! ## A312696.P389305855903076982

`A312697(n)-A181838(A001190(n))`
-/

namespace A312696.P389305855903076982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312697 n - A181838 (A001190 n).toNat

end

end A312696.P389305855903076982

/-! ## A312696.P11822973934508154807

`A312697(n)-A107846(A266578(n+1))`
-/

namespace A312696.P11822973934508154807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312697 n - A107846 (A266578 (n + 1)).toNat

end

end A312696.P11822973934508154807

/-! ## A312696.P1384945297164096779

`A312697(n)-A353419(A251192(n+1))`
-/

namespace A312696.P1384945297164096779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312697 n - A353419 (A251192 (n + 1)).toNat

end

end A312696.P1384945297164096779

/-! ## A312696.P2876843043732415691

`A312697(A087051(n))`
-/

namespace A312696.P2876843043732415691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312697 (A087051 n).toNat

end

end A312696.P2876843043732415691

/-!
# A312697: Coordination sequence Gal.6.411.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312697, there is no canonical definition to state claims against.
-/

/-! ## A312697.P16536181981374329304

`A312696(n)+A181838(A001190(n))`
-/

namespace A312697.P16536181981374329304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312696 n + A181838 (A001190 n).toNat

end

end A312697.P16536181981374329304

/-! ## A312697.P12777101251726072597

`or(A029389(n), A312696(A062399(n)))`
-/

namespace A312697.P12777101251726072597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029389 n) (A312696 (A062399 n).toNat)

end

end A312697.P12777101251726072597

/-! ## A312697.P14385684465401752093

`or(A046770(n), A312696(A062399(n)))`
-/

namespace A312697.P14385684465401752093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046770 n) (A312696 (A062399 n).toNat)

end

end A312697.P14385684465401752093

/-!
# A312698: Coordination sequence Gal.6.427.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312698, there is no canonical definition to state claims against.
-/

/-! ## A312698.P16778094417734062199

`A312699(n)-A024362(A202882(n+1))`
-/

namespace A312698.P16778094417734062199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312699 n - A024362 (A202882 (n + 1)).toNat

end

end A312698.P16778094417734062199

/-! ## A312698.P1850316613723049439

`A312699(n)-A185246(A325326(n+1))`
-/

namespace A312698.P1850316613723049439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312699 n - A185246 (A325326 (n + 1)).toNat

end

end A312698.P1850316613723049439

/-! ## A312698.P13951221654063922629

`A312699(A087051(n))`
-/

namespace A312698.P13951221654063922629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312699 (A087051 n).toNat

end

end A312698.P13951221654063922629

/-! ## A312698.P18380184699776928192

`A312699(A227549(n+1))`
-/

namespace A312698.P18380184699776928192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312699 (A227549 (n + 1)).toNat

end

end A312698.P18380184699776928192

/-! ## A312698.P16966507003056423101

`A312699(A396204(n+1))`
-/

namespace A312698.P16966507003056423101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312699 (A396204 (n + 1)).toNat

end

end A312698.P16966507003056423101

/-!
# A312699: Coordination sequence Gal.6.410.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312699, there is no canonical definition to state claims against.
-/

/-! ## A312699.P12991369465038528215

`or(A029389(n), A312698(A062399(n)))`
-/

namespace A312699.P12991369465038528215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029389 n) (A312698 (A062399 n).toNat)

end

end A312699.P12991369465038528215

/-! ## A312699.P14518038188991561035

`or(A288166(A062399(n)), A312698(n))`
-/

namespace A312699.P14518038188991561035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A288166 (A062399 n).toNat) (A312698 n)

end

end A312699.P14518038188991561035

/-! ## A312699.P8302688548503865366

`A312698(n)+A185246(A325326(n+1))`
-/

namespace A312699.P8302688548503865366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312698 n + A185246 (A325326 (n + 1)).toNat

end

end A312699.P8302688548503865366

/-! ## A312699.P8407053631937377763

`A316867(A047486(n+1))+A312698(A062399(n))`
-/

namespace A312699.P8407053631937377763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A047486 (n + 1)).toNat + A312698 (A062399 n).toNat

end

end A312699.P8407053631937377763

