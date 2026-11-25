import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023

/-!
# A044600: Numbers n such that string 4,0 occurs in the base 8 representation of n but not of n+1.

The programs for A044600, there is no canonical definition to state claims against.
-/

/-! ## A044600.P5087894477557854306

`A044220(n+1)-1`
-/

namespace A044600.P5087894477557854306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044220 (n + 1) - 1

end

end A044600.P5087894477557854306

/-! ## A044600.P4987939167342570443

`A233583(A044220(n+1))`
-/

namespace A044600.P4987939167342570443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044220 (n + 1)).toNat

end

end A044600.P4987939167342570443

/-!
# A044601: Numbers n such that string 4,1 occurs in the base 8 representation of n but not of n+1.

The programs for A044601, there is no canonical definition to state claims against.
-/

/-! ## A044601.P10129665237581630043

`or(A044220(n+1)-1, A044220(n+1))`
-/

namespace A044601.P10129665237581630043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044220 (n + 1) - 1) (A044220 (n + 1))

end

end A044601.P10129665237581630043

/-! ## A044601.P18080636300103106295

`A086799(A044220(1+n))`
-/

namespace A044601.P18080636300103106295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044220 (1 + n)).toNat

end

end A044601.P18080636300103106295

/-! ## A044601.P13797971485870502441

`A044221(n+1)-1`
-/

namespace A044601.P13797971485870502441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044221 (n + 1) - 1

end

end A044601.P13797971485870502441

/-! ## A044601.P16130534186663375185

`A124741(A044221(n+1))`
-/

namespace A044601.P16130534186663375185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044221 (n + 1)).toNat

end

end A044601.P16130534186663375185

/-!
# A044602: Numbers n such that string 4,2 occurs in the base 8 representation of n but not of n+1.

The programs for A044602, there is no canonical definition to state claims against.
-/

/-! ## A044602.P2447808654320097513

`A057168(A044221(n+1)-1)`
-/

namespace A044602.P2447808654320097513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044221 (n + 1) - 1).toNat

end

end A044602.P2447808654320097513

/-! ## A044602.P6595731092457549581

`A044222(n+1)-1`
-/

namespace A044602.P6595731092457549581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044222 (n + 1) - 1

end

end A044602.P6595731092457549581

/-! ## A044602.P8614698981036248962

`A113520(A044222(n+1))`
-/

namespace A044602.P8614698981036248962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044222 (n + 1)).toNat

end

end A044602.P8614698981036248962

/-! ## A044602.P4888583759672601582

`A140977(A044601(n+1))`
-/

namespace A044602.P4888583759672601582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044601 (n + 1)).toNat

end

end A044602.P4888583759672601582

/-!
# A044603: Numbers n such that string 4,3 occurs in the base 8 representation of n but not of n+1.

The programs for A044603, there is no canonical definition to state claims against.
-/

/-! ## A044603.P2000246149536153102

`or(A044222(n+1)-1, A044222(n+1))`
-/

namespace A044603.P2000246149536153102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044222 (n + 1) - 1) (A044222 (n + 1))

end

end A044603.P2000246149536153102

/-! ## A044603.P9405299078977502169

`or(A044222(n+1), A140670(A044222(n+1)))`
-/

namespace A044603.P9405299078977502169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044222 (n + 1)) (A140670 (A044222 (n + 1)).toNat)

end

end A044603.P9405299078977502169

/-! ## A044603.P3385263245943078033

`A086799(and(A044222(n+1), A044602(n+1)))`
-/

namespace A044603.P3385263245943078033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (Int.land (A044222 (n + 1)) (A044602 (n + 1))).toNat

end

end A044603.P3385263245943078033

/-! ## A044603.P17811419344587023299

`A086799(A044222(n+1))`
-/

namespace A044603.P17811419344587023299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044222 (n + 1)).toNat

end

end A044603.P17811419344587023299

/-! ## A044603.P5759377659358279033

`or(A044222(n+1), A044602(n+1))`
-/

namespace A044603.P5759377659358279033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044222 (n + 1)) (A044602 (n + 1))

end

end A044603.P5759377659358279033

/-!
# A044604: Numbers n such that string 4,4 occurs in the base 8 representation of n but not of n+1.

The programs for A044604, there is no canonical definition to state claims against.
-/

/-! ## A044604.P6625976868168003174

`A057168(A044223(1+n)-2)`
-/

namespace A044604.P6625976868168003174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044223 (1 + n) - 2).toNat

end

end A044604.P6625976868168003174

/-! ## A044604.P2467280341649940480

`xor(runs[A238507(n+1)], A238477(2*(n+1)))`
-/

namespace A044604.P2467280341649940480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) (A238477 (2 * (n + 1)))

end

end A044604.P2467280341649940480

/-! ## A044604.P13490428564993887577

`A044223(n+1)+A022897(A208453(n))`
-/

namespace A044604.P13490428564993887577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044223 (n + 1) + A022897 (A208453 n).toNat

end

end A044604.P13490428564993887577

/-!
# A044605: Numbers n such that string 4,5 occurs in the base 8 representation of n but not of n+1.

The programs for A044605, there is no canonical definition to state claims against.
-/

/-! ## A044605.P3578221894657546827

`or(A044224(n+1)-1, A044224(n+1))`
-/

namespace A044605.P3578221894657546827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044224 (n + 1) - 1) (A044224 (n + 1))

end

end A044605.P3578221894657546827

/-! ## A044605.P7182959895494450716

`A086799(A044224(1+n))`
-/

namespace A044605.P7182959895494450716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044224 (1 + n)).toNat

end

end A044605.P7182959895494450716

/-! ## A044605.P9070767448559048186

`A057168(A044224(n+1))-1`
-/

namespace A044605.P9070767448559048186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044224 (n + 1)).toNat - 1

end

end A044605.P9070767448559048186

/-! ## A044605.P2193397017873999821

`A044225(n+1)-1`
-/

namespace A044605.P2193397017873999821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044225 (n + 1) - 1

end

end A044605.P2193397017873999821

/-! ## A044605.P12217012748841835818

`A124741(A044225(n+1))`
-/

namespace A044605.P12217012748841835818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044225 (n + 1)).toNat

end

end A044605.P12217012748841835818

/-!
# A044606: Numbers k such that string 4,6 occurs in the base 8 representation of k but not of k+1.

The programs for A044606, there is no canonical definition to state claims against.
-/

/-! ## A044606.P11812899785815041447

`A057168(A044225(n+1)-1)`
-/

namespace A044606.P11812899785815041447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044225 (n + 1) - 1).toNat

end

end A044606.P11812899785815041447

/-! ## A044606.P5542502404639171463

`A044226(n+1)-1`
-/

namespace A044606.P5542502404639171463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044226 (n + 1) - 1

end

end A044606.P5542502404639171463

/-! ## A044606.P10803546010662159820

`A140977(A044605(n+1))`
-/

namespace A044606.P10803546010662159820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044605 (n + 1)).toNat

end

end A044606.P10803546010662159820

/-! ## A044606.P16451278785793068153

`A233583(A044226(n+1))`
-/

namespace A044606.P16451278785793068153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044226 (n + 1)).toNat

end

end A044606.P16451278785793068153

/-!
# A044607: Numbers n such that string 4,7 occurs in the base 8 representation of n but not of n+1.

The programs for A044607, there is no canonical definition to state claims against.
-/

/-! ## A044607.P15954603211495061664

`or(A044226(n+1)-1, A044226(n+1))`
-/

namespace A044607.P15954603211495061664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044226 (n + 1) - 1) (A044226 (n + 1))

end

end A044607.P15954603211495061664

/-! ## A044607.P3900995325372949200

`A135534(A044226(n+1))+A044226(n+1)`
-/

namespace A044607.P3900995325372949200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (A044226 (n + 1)).toNat + A044226 (n + 1)

end

end A044607.P3900995325372949200

/-! ## A044607.P17617809192086112175

`A086799(A044226(n+1))`
-/

namespace A044607.P17617809192086112175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044226 (n + 1)).toNat

end

end A044607.P17617809192086112175

/-! ## A044607.P14877915260423759289

`∩[A043956(n+1), A124134(n+1)]`
-/

namespace A044607.P14877915260423759289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044607.P14877915260423759289

/-! ## A044607.P6173343505961805185

`∩[A043956(n+1), A337705(n+1)]`
-/

namespace A044607.P6173343505961805185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044607.P6173343505961805185

/-!
# A044608: Numbers n such that string 5,0 occurs in the base 8 representation of n but not of n+1.

The programs for A044608, there is no canonical definition to state claims against.
-/

/-! ## A044608.P8880810904040240340

`A057168(A044227(1+n)-4)`
-/

namespace A044608.P8880810904040240340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044227 (1 + n) - 4).toNat

end

end A044608.P8880810904040240340

/-! ## A044608.P4881868408374346644

`A044228(n+1)-1`
-/

namespace A044608.P4881868408374346644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044228 (n + 1) - 1

end

end A044608.P4881868408374346644

/-! ## A044608.P6930720328318108225

`A233583(A044228(n+1))`
-/

namespace A044608.P6930720328318108225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044228 (n + 1)).toNat

end

end A044608.P6930720328318108225

/-!
# A044609: Numbers n such that string 5,1 occurs in the base 8 representation of n but not of n+1.

The programs for A044609, there is no canonical definition to state claims against.
-/

/-! ## A044609.P4336180944429504936

`or(A044228(n+1)-1, A044228(n+1))`
-/

namespace A044609.P4336180944429504936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044228 (n + 1) - 1) (A044228 (n + 1))

end

end A044609.P4336180944429504936

/-! ## A044609.P13131391932774226054

`or(1, A322018(A044228(1+n)))`
-/

namespace A044609.P13131391932774226054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A322018 (A044228 (1 + n)).toNat)

end

end A044609.P13131391932774226054

/-! ## A044609.P10005331034152970936

`A086799(A044228(n+1))`
-/

namespace A044609.P10005331034152970936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044228 (n + 1)).toNat

end

end A044609.P10005331034152970936

/-! ## A044609.P13437039829245065447

`A124741(A044229(n+1))`
-/

namespace A044609.P13437039829245065447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044229 (n + 1)).toNat

end

end A044609.P13437039829245065447

/-!
# A044610: Numbers n such that string 5,2 occurs in the base 8 representation of n but not of n+1.

The programs for A044610, there is no canonical definition to state claims against.
-/

/-! ## A044610.P1783816647017423707

`A057168(A044229(n+1)-1)`
-/

namespace A044610.P1783816647017423707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044229 (n + 1) - 1).toNat

end

end A044610.P1783816647017423707

/-! ## A044610.P2450442478118305066

`-1+A044230(n+1)`
-/

namespace A044610.P2450442478118305066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044230 (n + 1)

end

end A044610.P2450442478118305066

/-! ## A044610.P9237963191076776882

`A113520(A044230(n+1))`
-/

namespace A044610.P9237963191076776882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044230 (n + 1)).toNat

end

end A044610.P9237963191076776882

/-! ## A044610.P3066225003102033645

`A140977(A044609(n+1))`
-/

namespace A044610.P3066225003102033645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044609 (n + 1)).toNat

end

end A044610.P3066225003102033645

/-!
# A044611: Numbers n such that string 5,3 occurs in the base 8 representation of n but not of n+1.

The programs for A044611, there is no canonical definition to state claims against.
-/

/-! ## A044611.P6648082873035961070

`or(A044230(n+1)-1, A044230(n+1))`
-/

namespace A044611.P6648082873035961070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044230 (n + 1) - 1) (A044230 (n + 1))

end

end A044611.P6648082873035961070

/-! ## A044611.P1754699301872859062

`A086799(A044230(1+n))`
-/

namespace A044611.P1754699301872859062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044230 (1 + n)).toNat

end

end A044611.P1754699301872859062

/-! ## A044611.P8186344921955322942

`A044231(n+1)-1`
-/

namespace A044611.P8186344921955322942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044231 (n + 1) - 1

end

end A044611.P8186344921955322942

/-! ## A044611.P16482167600267816440

`A140977(A044607(n+1))`
-/

namespace A044611.P16482167600267816440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044607 (n + 1)).toNat

end

end A044611.P16482167600267816440

/-! ## A044611.P5325193070148188066

`A124741(A044231(n+1))`
-/

namespace A044611.P5325193070148188066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044231 (n + 1)).toNat

end

end A044611.P5325193070148188066

/-!
# A044612: Numbers n such that string 5,4 occurs in the base 8 representation of n but not of n+1.

The programs for A044612, there is no canonical definition to state claims against.
-/

/-! ## A044612.P16118721018814882585

`A057168(A044231(n+1)-2)`
-/

namespace A044612.P16118721018814882585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044231 (n + 1) - 2).toNat

end

end A044612.P16118721018814882585

/-! ## A044612.P7840401428422975376

`A059169(4*A044227(n+1))+A044231(n+1)-A044226(n+1)`
-/

namespace A044612.P7840401428422975376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A044227 (n + 1)).toNat + (A044231 (n + 1) - A044226 (n + 1))

end

end A044612.P7840401428422975376

/-! ## A044612.P69313935140045134

`or(A044227(n+1), A233583(A044224(n+1)))`
-/

namespace A044612.P69313935140045134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044227 (n + 1)) (A233583 (A044224 (n + 1)).toNat)

end

end A044612.P69313935140045134

/-! ## A044612.P1297777030151867759

`or(A044231(n+1), A233583(A044224(n+1)))`
-/

namespace A044612.P1297777030151867759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044231 (n + 1)) (A233583 (A044224 (n + 1)).toNat)

end

end A044612.P1297777030151867759

/-! ## A044612.P1565045263598590092

`A233583(A044227(n+1))+A044231(n+1)-A044226(n+1)`
-/

namespace A044612.P1565045263598590092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044227 (n + 1)).toNat + (A044231 (n + 1) - A044226 (n + 1))

end

end A044612.P1565045263598590092

/-!
# A044613: Numbers n such that string 5,5 occurs in the base 8 representation of n but not of n+1.

The programs for A044613, there is no canonical definition to state claims against.
-/

/-! ## A044613.P5772226721821638383

`or(A044232(n+1)-1, A044232(n+1))`
-/

namespace A044613.P5772226721821638383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044232 (n + 1) - 1) (A044232 (n + 1))

end

end A044613.P5772226721821638383

/-! ## A044613.P11380656071302461808

`A086799(A044232(1+n))`
-/

namespace A044613.P11380656071302461808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044232 (1 + n)).toNat

end

end A044613.P11380656071302461808

/-! ## A044613.P3662942976385123796

`-1+A057168(A044232(n+1))`
-/

namespace A044613.P3662942976385123796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A057168 (A044232 (n + 1)).toNat

end

end A044613.P3662942976385123796

/-! ## A044613.P3281435318457663659

`A057168(A044232(Δ[n²]-n))-1`
-/

namespace A044613.P3281435318457663659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044232 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 1

end

end A044613.P3281435318457663659

/-!
# A044614: Numbers n such that string 5,6 occurs in the base 8 representation of n but not of n+1.

The programs for A044614, there is no canonical definition to state claims against.
-/

/-! ## A044614.P17572163644378010363

`A044234(1+n)-1`
-/

namespace A044614.P17572163644378010363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044234 (1 + n) - 1

end

end A044614.P17572163644378010363

/-! ## A044614.P14674092737960742574

`A233583(A044234(n+1))`
-/

namespace A044614.P14674092737960742574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044234 (n + 1)).toNat

end

end A044614.P14674092737960742574

/-!
# A044615: Numbers n such that string 5,7 occurs in the base 8 representation of n but not of n+1.

The programs for A044615, there is no canonical definition to state claims against.
-/

/-! ## A044615.P7702398237216491962

`or(A044234(n+1)-1, A044234(n+1))`
-/

namespace A044615.P7702398237216491962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044234 (n + 1) - 1) (A044234 (n + 1))

end

end A044615.P7702398237216491962

/-! ## A044615.P7027964090243959860

`A086799(A044234(1+n))`
-/

namespace A044615.P7027964090243959860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044234 (1 + n)).toNat

end

end A044615.P7027964090243959860

/-! ## A044615.P11167076080572487722

`A044235(1+n)-1`
-/

namespace A044615.P11167076080572487722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044235 (1 + n) - 1

end

end A044615.P11167076080572487722

/-! ## A044615.P2769328334386721531

`∩[A043958(n+1), A376955(n)]`
-/

namespace A044615.P2769328334386721531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376955 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044615.P2769328334386721531

/-! ## A044615.P17687856845785041369

`∩[A043958(n+1), A317253(n+1)]`
-/

namespace A044615.P17687856845785041369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044615.P17687856845785041369

/-!
# A044616: Numbers n such that string 6,0 occurs in the base 8 representation of n but not of n+1.

The programs for A044616, there is no canonical definition to state claims against.
-/

/-! ## A044616.P15274376101770959067

`A044236(1+n)-1`
-/

namespace A044616.P15274376101770959067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044236 (1 + n) - 1

end

end A044616.P15274376101770959067

/-! ## A044616.P15097369449366618123

`A113520(A044236(n+1))`
-/

namespace A044616.P15097369449366618123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044236 (n + 1)).toNat

end

end A044616.P15097369449366618123

/-!
# A044617: Numbers n such that string 6,1 occurs in the base 8 representation of n but not of n+1.

The programs for A044617, there is no canonical definition to state claims against.
-/

/-! ## A044617.P3123243236354129768

`or(A044236(n+1)-1, A044236(n+1))`
-/

namespace A044617.P3123243236354129768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044236 (n + 1) - 1) (A044236 (n + 1))

end

end A044617.P3123243236354129768

/-! ## A044617.P17964769930105849539

`A086799(A044236(1+n))`
-/

namespace A044617.P17964769930105849539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044236 (1 + n)).toNat

end

end A044617.P17964769930105849539

/-! ## A044617.P8482333143996380459

`A044237(n+1)-1`
-/

namespace A044617.P8482333143996380459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044237 (n + 1) - 1

end

end A044617.P8482333143996380459

/-! ## A044617.P1341538827417988675

`A124741(A044237(n+1))`
-/

namespace A044617.P1341538827417988675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044237 (n + 1)).toNat

end

end A044617.P1341538827417988675

/-!
# A044618: Numbers n such that string 6,2 occurs in the base 8 representation of n but not of n+1.

The programs for A044618, there is no canonical definition to state claims against.
-/

/-! ## A044618.P15659090248677892125

`A057168(A044237(1+n)-1)`
-/

namespace A044618.P15659090248677892125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044237 (1 + n) - 1).toNat

end

end A044618.P15659090248677892125

/-! ## A044618.P2744452254005733248

`A044238(n+1)-1`
-/

namespace A044618.P2744452254005733248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044238 (n + 1) - 1

end

end A044618.P2744452254005733248

/-! ## A044618.P4793461894375689965

`A140977(A044617(n+1))`
-/

namespace A044618.P4793461894375689965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044617 (n + 1)).toNat

end

end A044618.P4793461894375689965

/-! ## A044618.P14061307899486273304

`A233583(A044238(n+1))`
-/

namespace A044618.P14061307899486273304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044238 (n + 1)).toNat

end

end A044618.P14061307899486273304

/-!
# A044619: Numbers n such that string 6,3 occurs in the base 8 representation of n but not of n+1.

The programs for A044619, there is no canonical definition to state claims against.
-/

/-! ## A044619.P5527031302369483262

`or(A044238(n+1)-1, A044238(n+1))`
-/

namespace A044619.P5527031302369483262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044238 (n + 1) - 1) (A044238 (n + 1))

end

end A044619.P5527031302369483262

/-! ## A044619.P3331472812930743671

`or(A044238(n+1), A088837(A044238(n+1)))`
-/

namespace A044619.P3331472812930743671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044238 (n + 1)) (A088837 (A044238 (n + 1)).toNat)

end

end A044619.P3331472812930743671

/-! ## A044619.P5513759088817707820

`A086799(A044238(1+n))`
-/

namespace A044619.P5513759088817707820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044238 (1 + n)).toNat

end

end A044619.P5513759088817707820

/-! ## A044619.P14418574071322587785

`A044239(n+1)-1`
-/

namespace A044619.P14418574071322587785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044239 (n + 1) - 1

end

end A044619.P14418574071322587785

/-! ## A044619.P143800693187156676

`A124741(A044239(n+1))`
-/

namespace A044619.P143800693187156676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044239 (n + 1)).toNat

end

end A044619.P143800693187156676

/-!
# A044620: Numbers n such that string 6,4 occurs in the base 8 representation of n but not of n+1.

The programs for A044620, there is no canonical definition to state claims against.
-/

/-! ## A044620.P4620195953258908400

`A057168(A044239(1+n)-2)`
-/

namespace A044620.P4620195953258908400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044239 (1 + n) - 2).toNat

end

end A044620.P4620195953258908400

/-! ## A044620.P6483997139102521318

`A044240(n+1)-1`
-/

namespace A044620.P6483997139102521318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044240 (n + 1) - 1

end

end A044620.P6483997139102521318

/-! ## A044620.P17591239937801026913

`A267183(3*A044240(n+1))`
-/

namespace A044620.P17591239937801026913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267183 (3 * A044240 (n + 1)).toNat

end

end A044620.P17591239937801026913

/-! ## A044620.P13344661884792617015

`A113520(A044240(n+1))`
-/

namespace A044620.P13344661884792617015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044240 (n + 1)).toNat

end

end A044620.P13344661884792617015

/-!
# A044621: Numbers n such that string 6,5 occurs in the base 8 representation of n but not of n+1.

The programs for A044621, there is no canonical definition to state claims against.
-/

/-! ## A044621.P11387558041299452738

`or(A044240(n+1)-1, A044240(n+1))`
-/

namespace A044621.P11387558041299452738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044240 (n + 1) - 1) (A044240 (n + 1))

end

end A044621.P11387558041299452738

/-! ## A044621.P16491798706733903264

`or(A044240(n+1), A322017(A044240(n+1)))`
-/

namespace A044621.P16491798706733903264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044240 (n + 1)) (A322017 (A044240 (n + 1)).toNat)

end

end A044621.P16491798706733903264

/-! ## A044621.P8018544171742444069

`A086799(A044240(1+n))`
-/

namespace A044621.P8018544171742444069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044240 (1 + n)).toNat

end

end A044621.P8018544171742444069

/-! ## A044621.P18239267713816723543

`or(A008611(3*A044620(n+1)), A044620(n+1))`
-/

namespace A044621.P18239267713816723543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008611 (3 * A044620 (n + 1)).toNat) (A044620 (n + 1))

end

end A044621.P18239267713816723543

/-! ## A044621.P4209380822448263281

`or(A008620(3*A044620(n+1)), A044620(n+1))`
-/

namespace A044621.P4209380822448263281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008620 (3 * A044620 (n + 1)).toNat) (A044620 (n + 1))

end

end A044621.P4209380822448263281

/-! ## A044621.P1949728881564575768

`or(A044240(n+1), A267183(3*A044240(n+1)))`
-/

namespace A044621.P1949728881564575768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044240 (n + 1)) (A267183 (3 * A044240 (n + 1)).toNat)

end

end A044621.P1949728881564575768

/-!
# A044622: Numbers n such that string 6,6 occurs in the base 8 representation of n but not of n+1.

The programs for A044622, there is no canonical definition to state claims against.
-/

/-! ## A044622.P6630678462724309109

`A057168(A044241(n+1)-1)`
-/

namespace A044622.P6630678462724309109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044241 (n + 1) - 1).toNat

end

end A044622.P6630678462724309109

/-! ## A044622.P2866542231443921261

`A233583(A043948(2*n+1))+33`
-/

namespace A044622.P2866542231443921261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A043948 (2 * n + 1)).toNat + 33

end

end A044622.P2866542231443921261

/-! ## A044622.P12562556274498937042

`A182187(A043957(Δ[n²]))`
-/

namespace A044622.P12562556274498937042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182187 (A043957 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A044622.P12562556274498937042

/-! ## A044622.P14781772406987778469

`record[A140977(A044621(n+1))]`
-/

namespace A044622.P14781772406987778469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044621 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044622.P14781772406987778469

/-! ## A044622.P14912595630822249225

`A140977(A044241(n+1)-1)`
-/

namespace A044622.P14912595630822249225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044241 (n + 1) - 1).toNat

end

end A044622.P14912595630822249225

/-!
# A044623: Numbers n such that string 6,7 occurs in the base 8 representation of n but not of n+1.

The programs for A044623, there is no canonical definition to state claims against.
-/

/-! ## A044623.P8132103672850306343

`∩[A043959(n+1), A214214(n)]`
-/

namespace A044623.P8132103672850306343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214214 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P8132103672850306343

/-! ## A044623.P3103459311626033311

`∩[A043959(n+1), A055052(n+1)]`
-/

namespace A044623.P3103459311626033311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P3103459311626033311

/-! ## A044623.P5232669123776010183

`∩[A043959(n+1), A400894(n+1)]`
-/

namespace A044623.P5232669123776010183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P5232669123776010183

/-! ## A044623.P16019220851953175516

`∩[A043959(n+1), A276283(n)]`
-/

namespace A044623.P16019220851953175516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P16019220851953175516

/-! ## A044623.P2650066665467769068

`∩[A043959(n+1), A055050(n+1)]`
-/

namespace A044623.P2650066665467769068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P2650066665467769068

/-! ## A044623.P6448398782271883385

`∩[A043959(n+1), A072939(n+1)]`
-/

namespace A044623.P6448398782271883385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P6448398782271883385

/-! ## A044623.P1864885490491686218

`∩[A043959(n+1), A171947(n+1)]`
-/

namespace A044623.P1864885490491686218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P1864885490491686218

/-! ## A044623.P16978450885787667780

`∩[A014659(n+1), A043959(n+1)]`
-/

namespace A044623.P16978450885787667780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P16978450885787667780

/-! ## A044623.P5474994386217951050

`∩[A043959(n+1), A047477(n+1)]`
-/

namespace A044623.P5474994386217951050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P5474994386217951050

/-! ## A044623.P11159034611478282502

`∩[A043959(n+1), A047478(n+1)]`
-/

namespace A044623.P11159034611478282502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P11159034611478282502

/-! ## A044623.P15883085049922819060

`∩[A043959(n+1), A047480(n+1)]`
-/

namespace A044623.P15883085049922819060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P15883085049922819060

/-! ## A044623.P3766158563445546716

`∩[A043959(n+1), A047484(n+1)]`
-/

namespace A044623.P3766158563445546716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P3766158563445546716

/-! ## A044623.P44039520064299065

`∩[A043959(n+1), A047491(n+1)]`
-/

namespace A044623.P44039520064299065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P44039520064299065

/-! ## A044623.P3570815776227001992

`∩[A043959(n+1), A047523(n+1)]`
-/

namespace A044623.P3570815776227001992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P3570815776227001992

/-! ## A044623.P7526519173806994528

`∩[A043959(n+1), A047525(n+1)]`
-/

namespace A044623.P7526519173806994528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P7526519173806994528

/-! ## A044623.P14925542848444565838

`∩[A043959(n+1), A047526(n+1)]`
-/

namespace A044623.P14925542848444565838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P14925542848444565838

/-! ## A044623.P6310631353609461542

`∩[A043959(n+1), A047528(n+1)]`
-/

namespace A044623.P6310631353609461542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P6310631353609461542

/-! ## A044623.P12803490362102394321

`∩[A043959(n+1), A047529(n+1)]`
-/

namespace A044623.P12803490362102394321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P12803490362102394321

/-! ## A044623.P12732989710614392844

`∩[A043959(n+1), A047531(n+1)]`
-/

namespace A044623.P12732989710614392844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P12732989710614392844

/-! ## A044623.P12231149069648766440

`∩[A043959(n+1), A047536(n+1)]`
-/

namespace A044623.P12231149069648766440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044623.P12231149069648766440

/-!
# A044624: Numbers n such that string 7,0 occurs in the base 8 representation of n but not of n+1.

The programs for A044624, there is no canonical definition to state claims against.
-/

/-! ## A044624.P3080514568256493562

`A044244(1+n)-1`
-/

namespace A044624.P3080514568256493562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044244 (1 + n) - 1

end

end A044624.P3080514568256493562

/-! ## A044624.P2287350822950749564

`-1+A044244(n+1)`
-/

namespace A044624.P2287350822950749564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044244 (n + 1)

end

end A044624.P2287350822950749564

/-! ## A044624.P2420311033466846932

`A233583(A044244(n+1))`
-/

namespace A044624.P2420311033466846932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044244 (n + 1)).toNat

end

end A044624.P2420311033466846932

/-!
# A044625: Numbers n such that string 7,1 occurs in the base 8 representation of n but not of n+1.

The programs for A044625, there is no canonical definition to state claims against.
-/

/-! ## A044625.P17717069145187501653

`or(A044244(n+1)-1, A044244(n+1))`
-/

namespace A044625.P17717069145187501653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044244 (n + 1) - 1) (A044244 (n + 1))

end

end A044625.P17717069145187501653

/-! ## A044625.P6990833693408136392

`or(A057428(n)+A044244(n+1), A044244(n+1))`
-/

namespace A044625.P6990833693408136392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A044244 (n + 1)) (A044244 (n + 1))

end

end A044625.P6990833693408136392

/-! ## A044625.P9273084734430695260

`A086799(A044244(1+n))`
-/

namespace A044625.P9273084734430695260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044244 (1 + n)).toNat

end

end A044625.P9273084734430695260

/-! ## A044625.P5423281678443183052

`A044245(n+1)-1`
-/

namespace A044625.P5423281678443183052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044245 (n + 1) - 1

end

end A044625.P5423281678443183052

/-! ## A044625.P16492822704959586432

`A124741(A044245(n+1))`
-/

namespace A044625.P16492822704959586432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044245 (n + 1)).toNat

end

end A044625.P16492822704959586432

/-!
# A044626: Numbers n such that string 7,2 occurs in the base 8 representation of n but not of n+1.

The programs for A044626, there is no canonical definition to state claims against.
-/

/-! ## A044626.P168736007407770920

`A057168(A044245(n+1)-1)`
-/

namespace A044626.P168736007407770920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044245 (n + 1) - 1).toNat

end

end A044626.P168736007407770920

/-! ## A044626.P15475624874116291935

`A044246(n+1)-1`
-/

namespace A044626.P15475624874116291935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044246 (n + 1) - 1

end

end A044626.P15475624874116291935

/-! ## A044626.P12566260127099318024

`A140977(A044625(n+1))`
-/

namespace A044626.P12566260127099318024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044625 (n + 1)).toNat

end

end A044626.P12566260127099318024

/-! ## A044626.P17324676634596747229

`A233583(A044246(n+1))`
-/

namespace A044626.P17324676634596747229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044246 (n + 1)).toNat

end

end A044626.P17324676634596747229

/-!
# A044627: Numbers n such that string 7,3 occurs in the base 8 representation of n but not of n+1.

The programs for A044627, there is no canonical definition to state claims against.
-/

/-! ## A044627.P5372511345895997009

`or(A044246(n+1)-1, A044246(n+1))`
-/

namespace A044627.P5372511345895997009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044246 (n + 1) - 1) (A044246 (n + 1))

end

end A044627.P5372511345895997009

/-! ## A044627.P8036707194168729809

`A086799(A044246(1+n))`
-/

namespace A044627.P8036707194168729809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044246 (1 + n)).toNat

end

end A044627.P8036707194168729809

/-! ## A044627.P6781451323651066727

`A044247(n+1)-1`
-/

namespace A044627.P6781451323651066727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044247 (n + 1) - 1

end

end A044627.P6781451323651066727

/-! ## A044627.P8485677532834784200

`A124741(A044247(n+1))`
-/

namespace A044627.P8485677532834784200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044247 (n + 1)).toNat

end

end A044627.P8485677532834784200

/-! ## A044627.P11932725180290573965

`A126762(A044626(n+1))`
-/

namespace A044627.P11932725180290573965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126762 (A044626 (n + 1)).toNat

end

end A044627.P11932725180290573965

/-!
# A044628: Numbers n such that string 7,4 occurs in the base 8 representation of n but not of n+1.

The programs for A044628, there is no canonical definition to state claims against.
-/

/-! ## A044628.P12849565497409371938

`A044248(1+n)-1`
-/

namespace A044628.P12849565497409371938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044248 (1 + n) - 1

end

end A044628.P12849565497409371938

/-! ## A044628.P17593271712140022643

`-1+A044248(n+1)`
-/

namespace A044628.P17593271712140022643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044248 (n + 1)

end

end A044628.P17593271712140022643

/-! ## A044628.P10509033898471681176

`A233583(A044248(n+1))`
-/

namespace A044628.P10509033898471681176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044248 (n + 1)).toNat

end

end A044628.P10509033898471681176

/-!
# A044629: Numbers n such that string 7,5 occurs in the base 8 representation of n but not of n+1.

The programs for A044629, there is no canonical definition to state claims against.
-/

/-! ## A044629.P2784810268783436004

`or(A044248(n+1)-1, A044248(n+1))`
-/

namespace A044629.P2784810268783436004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044248 (n + 1) - 1) (A044248 (n + 1))

end

end A044629.P2784810268783436004

/-! ## A044629.P14633140545157655310

`or(A057428(n)+A044248(n+1), A044248(n+1))`
-/

namespace A044629.P14633140545157655310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057428 n + A044248 (n + 1)) (A044248 (n + 1))

end

end A044629.P14633140545157655310

/-! ## A044629.P3563721164845870990

`A086799(A044248(1+n))`
-/

namespace A044629.P3563721164845870990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A044248 (1 + n)).toNat

end

end A044629.P3563721164845870990

/-! ## A044629.P4905935890905244302

`A057168(A044248(n+1))-1`
-/

namespace A044629.P4905935890905244302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044248 (n + 1)).toNat - 1

end

end A044629.P4905935890905244302

/-! ## A044629.P12742653359193395718

`A044249(n+1)-1`
-/

namespace A044629.P12742653359193395718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044249 (n + 1) - 1

end

end A044629.P12742653359193395718

/-!
# A044630: Numbers n such that string 7,6 occurs in the base 8 representation of n but not of n+1.

The programs for A044630, there is no canonical definition to state claims against.
-/

/-! ## A044630.P5659917991776247081

`A057168(A044249(1+n)-1)`
-/

namespace A044630.P5659917991776247081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044249 (1 + n) - 1).toNat

end

end A044630.P5659917991776247081

/-! ## A044630.P9041220746270736678

`A057168(A044629(n+1))`
-/

namespace A044630.P9041220746270736678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044629 (n + 1)).toNat

end

end A044630.P9041220746270736678

/-! ## A044630.P16827112637033844328

`2*A044629(n+1)-(-1+A044248(n+1))`
-/

namespace A044630.P16827112637033844328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044629 (n + 1) - (-1 + A044248 (n + 1))

end

end A044630.P16827112637033844328

/-! ## A044630.P14620411830593619217

`A092535(A044249(n+1))-(A044248(n+1)-1)`
-/

namespace A044630.P14620411830593619217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (A044249 (n + 1)).toNat - (A044248 (n + 1) - 1)

end

end A044630.P14620411830593619217

/-! ## A044630.P5200661477430184652

`or(52, A044626(n+1))`
-/

namespace A044630.P5200661477430184652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 52 (A044626 (n + 1))

end

end A044630.P5200661477430184652

/-!
# A044631: Numbers k such that string 7,7 occurs in the base 8 representation of k but not of k+1.

The programs for A044631, there is no canonical definition to state claims against.
-/

/-! ## A044631.P11858368466773316469

`∩[A044630(n+1), A005843(n)]+1`
-/

namespace A044631.P11858368466773316469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A044631.P11858368466773316469

/-! ## A044631.P583109565993324429

`record[A141310(A044630(1+n))]`
-/

namespace A044631.P583109565993324429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A044630 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044631.P583109565993324429

/-! ## A044631.P14316878330673911826

`record[-A038608(A044630(n+1)+1)]`
-/

namespace A044631.P14316878330673911826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A038608 (A044630 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044631.P14316878330673911826

/-! ## A044631.P16328590201107515553

`or(a(n-1)+64, A261906(A261891(n+1)))` with `a(0)=63`
-/

namespace A044631.P16328590201107515553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [63] fun n a =>
  Int.lor (a (n - 1) + 64) (A261906 (A261891 (n + 1)).toNat)

end

end A044631.P16328590201107515553

/-! ## A044631.P2241673304995108370

`A004767(A004767(A004767(n)))`
-/

namespace A044631.P2241673304995108370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A004767 (A004767 n).toNat).toNat

end

end A044631.P2241673304995108370

/-!
# A044632: Numbers n such that string 0,0 occurs in the base 9 representation of n but not of n+1.

The programs for A044632, there is no canonical definition to state claims against.
-/

/-! ## A044632.P13605539213225472669

`A264981(A044712(n+1)*A264981(n+1))+A044712(n+1)`
-/

namespace A044632.P13605539213225472669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264981 (A044712 (n + 1) * A264981 (n + 1)).toNat + A044712 (n + 1)

end

end A044632.P13605539213225472669

/-! ## A044632.P4558234426942654413

`A348037(A002426(n))+A044712(n+1)`
-/

namespace A044632.P4558234426942654413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348037 (A002426 n).toNat + A044712 (n + 1)

end

end A044632.P4558234426942654413

/-! ## A044632.P2936219695600737347

`A044251(n+1)+A348037(A002426(n))-1`
-/

namespace A044632.P2936219695600737347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044251 (n + 1) + (A348037 (A002426 n).toNat - 1)

end

end A044632.P2936219695600737347

/-! ## A044632.P10658533501829907938

`A343103(A295181(3*n+1))+A305548(3*(n+1))`
-/

namespace A044632.P10658533501829907938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343103 (A295181 (3 * n + 1)).toNat + A305548 (3 * (n + 1))

end

end A044632.P10658533501829907938

/-! ## A044632.P8480994479669353688

`A322020(A148432(n))+A044712(n+1)`
-/

namespace A044632.P8480994479669353688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322020 (A148432 n).toNat + A044712 (n + 1)

end

end A044632.P8480994479669353688

/-!
# A044633: Numbers n such that string 0,1 occurs in the base 9 representation of n but not of n+1.

The programs for A044633, there is no canonical definition to state claims against.
-/

/-! ## A044633.P4645148142542458761

`A002517(A044252(1+n))-1`
-/

namespace A044633.P4645148142542458761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044252 (1 + n)).toNat - 1

end

end A044633.P4645148142542458761

/-! ## A044633.P19792254123210515

`-1+A002517(A044252(n+1))`
-/

namespace A044633.P19792254123210515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A002517 (A044252 (n + 1)).toNat

end

end A044633.P19792254123210515

/-! ## A044633.P7460623288753675586

`A233583(A044253(n+1))`
-/

namespace A044633.P7460623288753675586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044253 (n + 1)).toNat

end

end A044633.P7460623288753675586

/-!
# A044634: Numbers n such that string 0,2 occurs in the base 9 representation of n but not of n+1.

The programs for A044634, there is no canonical definition to state claims against.
-/

/-! ## A044634.P6454292477805481749

`A319021(A044253(1+n))-2`
-/

namespace A044634.P6454292477805481749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044253 (1 + n)).toNat - 2

end

end A044634.P6454292477805481749

/-! ## A044634.P4654143703746351210

`A044254(1+n)-1`
-/

namespace A044634.P4654143703746351210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044254 (1 + n) - 1

end

end A044634.P4654143703746351210

/-! ## A044634.P10982283544526318307

`A233583(A044254(n+1))`
-/

namespace A044634.P10982283544526318307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044254 (n + 1)).toNat

end

end A044634.P10982283544526318307

/-!
# A044635: Numbers n such that string 0,3 occurs in the base 9 representation of n but not of n+1.

The programs for A044635, there is no canonical definition to state claims against.
-/

/-! ## A044635.P14960641101028940996

`A319021(A044254(1+n)-2)`
-/

namespace A044635.P14960641101028940996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044254 (1 + n) - 2).toNat

end

end A044635.P14960641101028940996

/-! ## A044635.P9579778813648583565

`A044255(n+1)-1`
-/

namespace A044635.P9579778813648583565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044255 (n + 1) - 1

end

end A044635.P9579778813648583565

/-! ## A044635.P10220136127921189365

`A113520(A044255(n+1))`
-/

namespace A044635.P10220136127921189365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044255 (n + 1)).toNat

end

end A044635.P10220136127921189365

/-!
# A044636: Numbers n such that string 0,4 occurs in the base 9 representation of n but not of n+1.

The programs for A044636, there is no canonical definition to state claims against.
-/

/-! ## A044636.P13449551696035821896

`A002517(A044255(1+n))-1`
-/

namespace A044636.P13449551696035821896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044255 (1 + n)).toNat - 1

end

end A044636.P13449551696035821896

/-! ## A044636.P11549875556229186273

`-1+A002517(A044255(n+1))`
-/

namespace A044636.P11549875556229186273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A002517 (A044255 (n + 1)).toNat

end

end A044636.P11549875556229186273

/-! ## A044636.P11162034201821510027

`A044256(n+1)-1`
-/

namespace A044636.P11162034201821510027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044256 (n + 1) - 1

end

end A044636.P11162034201821510027

/-! ## A044636.P1749133713131752643

`A233583(A044256(n+1))`
-/

namespace A044636.P1749133713131752643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044256 (n + 1)).toNat

end

end A044636.P1749133713131752643

/-!
# A044637: Numbers n such that string 0,5 occurs in the base 9 representation of n but not of n+1.

The programs for A044637, there is no canonical definition to state claims against.
-/

/-! ## A044637.P10890154685813937916

`A044257(1+n)-1`
-/

namespace A044637.P10890154685813937916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044257 (1 + n) - 1

end

end A044637.P10890154685813937916

/-! ## A044637.P3833424063176173160

`A233583(A044257(n+1))`
-/

namespace A044637.P3833424063176173160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044257 (n + 1)).toNat

end

end A044637.P3833424063176173160

/-!
# A044638: Numbers n such that string 0,6 occurs in the base 9 representation of n but not of n+1.

The programs for A044638, there is no canonical definition to state claims against.
-/

/-! ## A044638.P15745360697023880766

`A044258(1+n)-1`
-/

namespace A044638.P15745360697023880766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044258 (1 + n) - 1

end

end A044638.P15745360697023880766

/-! ## A044638.P5453756469492153880

`-1+A044258(n+1)`
-/

namespace A044638.P5453756469492153880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044258 (n + 1)

end

end A044638.P5453756469492153880

/-! ## A044638.P1717690118512978482

`2*A044636(n+1)-(A044254(1+n)-1)`
-/

namespace A044638.P1717690118512978482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044636 (n + 1) - (A044254 (1 + n) - 1)

end

end A044638.P1717690118512978482

/-! ## A044638.P4695571578265092244

`A044636(n+1)+A044636(n+1)-(A044254(n+1)-1)`
-/

namespace A044638.P4695571578265092244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044636 (n + 1) + A044636 (n + 1) - (A044254 (n + 1) - 1)

end

end A044638.P4695571578265092244

/-! ## A044638.P14419775232373976514

`A113520(A044258(n+1))`
-/

namespace A044638.P14419775232373976514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044258 (n + 1)).toNat

end

end A044638.P14419775232373976514

/-!
# A044639: Numbers n such that string 0,7 occurs in the base 9 representation of n but not of n+1.

The programs for A044639, there is no canonical definition to state claims against.
-/

/-! ## A044639.P1808960523065928188

`A002517(A044258(1+n))-1`
-/

namespace A044639.P1808960523065928188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044258 (1 + n)).toNat - 1

end

end A044639.P1808960523065928188

/-! ## A044639.P7611385005500818426

`-1+A002517(A044258(n+1))`
-/

namespace A044639.P7611385005500818426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A002517 (A044258 (n + 1)).toNat

end

end A044639.P7611385005500818426

/-! ## A044639.P5424368183523812935

`A044259(n+1)-1`
-/

namespace A044639.P5424368183523812935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044259 (n + 1) - 1

end

end A044639.P5424368183523812935

/-! ## A044639.P11222293314791675110

`A233583(A044259(n+1))`
-/

namespace A044639.P11222293314791675110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044259 (n + 1)).toNat

end

end A044639.P11222293314791675110

/-!
# A044640: Numbers k such that string 0,8 occurs in the base 9 representation of k but not of k+1.

The programs for A044640, there is no canonical definition to state claims against.
-/

/-! ## A044640.P16970556456030707742

`A319021(A044259(1+n))-6`
-/

namespace A044640.P16970556456030707742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044259 (1 + n)).toNat - 6

end

end A044640.P16970556456030707742

/-! ## A044640.P4833943780798706625

`A073531(A078214(n+1))+A044712(n+1)`
-/

namespace A044640.P4833943780798706625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073531 (A078214 (n + 1)).toNat + A044712 (n + 1)

end

end A044640.P4833943780798706625

/-! ## A044640.P13384629019029072666

`A317142(A324093(n+1))+A044639(n+1)`
-/

namespace A044640.P13384629019029072666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317142 (A324093 (n + 1)).toNat + A044639 (n + 1)

end

end A044640.P13384629019029072666

/-!
# A044643: Numbers k such that string 1,2 occurs in the base 9 representation of k but not of k+1.

The programs for A044643, there is no canonical definition to state claims against.
-/

/-! ## A044643.P4954060640785425472

`A319021(A044262(1+n))-2`
-/

namespace A044643.P4954060640785425472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044262 (1 + n)).toNat - 2

end

end A044643.P4954060640785425472

/-! ## A044643.P10969539871032598387

`A044263(A287384(n)+n)-1`
-/

namespace A044643.P10969539871032598387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044263 (A287384 n + (n : ℤ)).toNat - 1

end

end A044643.P10969539871032598387

/-! ## A044643.P14289234323614398000

`A044263(n+1)+A038608(A287384(n))`
-/

namespace A044643.P14289234323614398000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044263 (n + 1) + A038608 (A287384 n).toNat

end

end A044643.P14289234323614398000

/-! ## A044643.P13120977471021037060

`A044263(n+1)-A008683(Δ[A077168(n)])`
-/

namespace A044643.P13120977471021037060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044263 (n + 1) - A008683 (f1 (n + 1) - f1 n).toNat

end

end A044643.P13120977471021037060

/-! ## A044643.P2789228283923530540

`A044263(A077168(n))-A006530(A287384(n))`
-/

namespace A044643.P2789228283923530540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044263 (A077168 n).toNat - A006530 (A287384 n).toNat

end

end A044643.P2789228283923530540

/-!
# A044644: Numbers k such that string 1,3 occurs in the base 9 representation of k but not of k+1.

The programs for A044644, there is no canonical definition to state claims against.
-/

/-! ## A044644.P17291530521789709775

`A319021(A044263(1+n)-2)`
-/

namespace A044644.P17291530521789709775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044263 (1 + n) - 2).toNat

end

end A044644.P17291530521789709775

/-! ## A044644.P16091749333213021622

`A044264(A077168(n))-1`
-/

namespace A044644.P16091749333213021622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044264 (A077168 n).toNat - 1

end

end A044644.P16091749333213021622

/-! ## A044644.P5509133196080557551

`A044264(n+1)-A218955(n)%5`
-/

namespace A044644.P5509133196080557551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044264 (n + 1) - Int.tmod (A218955 n) 5

end

end A044644.P5509133196080557551

/-! ## A044644.P4465326117927070855

`A044264(n+1)-A267869(∑[n]²)`
-/

namespace A044644.P4465326117927070855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044264 (n + 1) - A267869 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A044644.P4465326117927070855

/-! ## A044644.P13974466720731991182

`A044264(n+1)-A030101(A000079(n))`
-/

namespace A044644.P13974466720731991182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044264 (n + 1) - A030101 (A000079 n).toNat

end

end A044644.P13974466720731991182

/-!
# A044645: Numbers k such that string 1,4 occurs in the base 9 representation of k but not of k+1.

The programs for A044645, there is no canonical definition to state claims against.
-/

/-! ## A044645.P775744702867114408

`A233583(A044265(n+1))`
-/

namespace A044645.P775744702867114408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044265 (n + 1)).toNat

end

end A044645.P775744702867114408

/-! ## A044645.P15870105518524565654

`A044265(A187829(n+1))-1`
-/

namespace A044645.P15870105518524565654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044265 (A187829 (n + 1)).toNat - 1

end

end A044645.P15870105518524565654

/-! ## A044645.P16543339386705718458

`A044265(n+1)-A106433(n)!`
-/

namespace A044645.P16543339386705718458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044265 (n + 1) - (Nat.factorial (A106433 n).toNat : ℤ)

end

end A044645.P16543339386705718458

/-! ## A044645.P9463480386091204231

`A044265(n+1)-A000265(A020707(n))`
-/

namespace A044645.P9463480386091204231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044265 (n + 1) - A000265 (A020707 n).toNat

end

end A044645.P9463480386091204231

/-! ## A044645.P1051688414487195899

`A057428(A114538(n+1))+A044265(n+1)`
-/

namespace A044645.P1051688414487195899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A114538 (n + 1)).toNat + A044265 (n + 1)

end

end A044645.P1051688414487195899

/-!
# A044646: Numbers k such that string 1,5 occurs in the base 9 representation of k but not of k+1.

The programs for A044646, there is no canonical definition to state claims against.
-/

/-! ## A044646.P17394053587631424350

`A319021(A044265(1+n))-2`
-/

namespace A044646.P17394053587631424350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044265 (1 + n)).toNat - 2

end

end A044646.P17394053587631424350

/-! ## A044646.P3447473771315631116

`A044266(n+1)-A327450(n+1)!`
-/

namespace A044646.P3447473771315631116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044266 (n + 1) - (Nat.factorial (A327450 (n + 1)).toNat : ℤ)

end

end A044646.P3447473771315631116

/-! ## A044646.P5799344113618591153

`A044266(n+1)-A040649(A001644(n))`
-/

namespace A044646.P5799344113618591153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044266 (n + 1) - A040649 (A001644 n).toNat

end

end A044646.P5799344113618591153

/-! ## A044646.P8915964478391837606

`A044266(n+1)-A057427(A327000(n))`
-/

namespace A044646.P8915964478391837606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044266 (n + 1) - A057427 (A327000 n).toNat

end

end A044646.P8915964478391837606

/-! ## A044646.P9021894606423225212

`A044266(n+1)-A057427(A226717(n+1))`
-/

namespace A044646.P9021894606423225212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044266 (n + 1) - A057427 (A226717 (n + 1)).toNat

end

end A044646.P9021894606423225212

/-!
# A044647: Numbers k such that string 1,6 occurs in the base 9 representation of k but not of k+1.

The programs for A044647, there is no canonical definition to state claims against.
-/

/-! ## A044647.P13930309186652496302

`A319021(A044266(1+n)-2)`
-/

namespace A044647.P13930309186652496302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044266 (1 + n) - 2).toNat

end

end A044647.P13930309186652496302

/-! ## A044647.P2012011275519796934

`A113520(A044267(n+1))`
-/

namespace A044647.P2012011275519796934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044267 (n + 1)).toNat

end

end A044647.P2012011275519796934

/-! ## A044647.P1418114184586538396

`A057428(∑[A044265(n+1)])+A044267(n+1)`
-/

namespace A044647.P1418114184586538396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A044267 (n + 1)

end

end A044647.P1418114184586538396

/-! ## A044647.P18323651674000333204

`A057428(∑[A044267(n+1)])+A044267(n+1)`
-/

namespace A044647.P18323651674000333204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A044267 (n + 1)

end

end A044647.P18323651674000333204

/-! ## A044647.P14957740488012436542

`A044267(n+1)-A014963(∑[A044266(n+1)])`
-/

namespace A044647.P14957740488012436542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044267 (n + 1) - A014963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044647.P14957740488012436542

/-!
# A044648: Numbers k such that string 1,7 occurs in the base 9 representation of k but not of k+1.

The programs for A044648, there is no canonical definition to state claims against.
-/

/-! ## A044648.P2422159777660481961

`A044268(n+1)-A128404(n+1)%2`
-/

namespace A044648.P2422159777660481961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044268 (n + 1) - Int.tmod (A128404 (n + 1)) 2

end

end A044648.P2422159777660481961

/-! ## A044648.P17707170773440080362

`A044268(n+1)-A000034(A033431(n))`
-/

namespace A044648.P17707170773440080362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044268 (n + 1) - A000034 (A033431 n).toNat

end

end A044648.P17707170773440080362

/-! ## A044648.P12344068685581569820

`A114592(A078856(n+1))+A044268(n+1)`
-/

namespace A044648.P12344068685581569820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A078856 (n + 1)).toNat + A044268 (n + 1)

end

end A044648.P12344068685581569820

/-! ## A044648.P17311379106938876741

`A114592(A128312(n+1))+A044268(n+1)`
-/

namespace A044648.P17311379106938876741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A128312 (n + 1)).toNat + A044268 (n + 1)

end

end A044648.P17311379106938876741

/-! ## A044648.P18337252108347996355

`A044268(n+1)-A007318(A069695(n+1))`
-/

namespace A044648.P18337252108347996355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044268 (n + 1) - A007318 (A069695 (n + 1)).toNat

end

end A044648.P18337252108347996355

/-!
# A044649: Numbers k such that string 1,8 occurs in the base 9 representation of k but not of k+1.

The programs for A044649, there is no canonical definition to state claims against.
-/

/-! ## A044649.P12183241418500973545

`A044269(n+1)-A054977(A006171(n))`
-/

namespace A044649.P12183241418500973545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044269 (n + 1) - A054977 (A006171 n).toNat

end

end A044649.P12183241418500973545

/-! ## A044649.P4762592198127769504

`A044269(n+1)-A008683(A026742(n))²`
-/

namespace A044649.P4762592198127769504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044269 (n + 1) - A008683 (A026742 n).toNat ^ 2

end

end A044649.P4762592198127769504

/-! ## A044649.P4808143498026197681

`A044269(n+1)-A054977(A000569(n+1))`
-/

namespace A044649.P4808143498026197681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044269 (n + 1) - A054977 (A000569 (n + 1)).toNat

end

end A044649.P4808143498026197681

/-! ## A044649.P13157521540743521170

`A044269(n+1)-A074695(A057468(n+1))`
-/

namespace A044649.P13157521540743521170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044269 (n + 1) - A074695 (A057468 (n + 1)).toNat

end

end A044649.P13157521540743521170

/-! ## A044649.P4575587311712360328

`A044269(n+1)-A054977(A096235(n+2))`
-/

namespace A044649.P4575587311712360328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044269 (n + 1) - A054977 (A096235 (n + 2)).toNat

end

end A044649.P4575587311712360328

/-!
# A044650: Numbers n such that string 2,0 occurs in the base 9 representation of n but not of n+1.

The programs for A044650, there is no canonical definition to state claims against.
-/

/-! ## A044650.P11524870667727543875

`A319021(A044269(1+n)-6)`
-/

namespace A044650.P11524870667727543875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044269 (1 + n) - 6).toNat

end

end A044650.P11524870667727543875

/-! ## A044650.P14075324017297756681

`A044270(n+1)-1`
-/

namespace A044650.P14075324017297756681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044270 (n + 1) - 1

end

end A044650.P14075324017297756681

/-! ## A044650.P16672020336578492388

`A113520(A044270(n+1))`
-/

namespace A044650.P16672020336578492388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044270 (n + 1)).toNat

end

end A044650.P16672020336578492388

/-!
# A044651: Numbers n such that string 2,1 occurs in the base 9 representation of n but not of n+1.

The programs for A044651, there is no canonical definition to state claims against.
-/

/-! ## A044651.P3226559191373306905

`2*A044647(n+1)-(A044263(A287384(n)+n)-1)`
-/

namespace A044651.P3226559191373306905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044647 (n + 1) - (A044263 (A287384 n + (n : ℤ)).toNat - 1)

end

end A044651.P3226559191373306905

/-!
# A044652: Numbers n such that string 2,2 occurs in the base 9 representation of n but not of n+1.

The programs for A044652, there is no canonical definition to state claims against.
-/

/-! ## A044652.P18337283758979974764

`A319021(A044271(1+n))-2`
-/

namespace A044652.P18337283758979974764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044271 (1 + n)).toNat - 2

end

end A044652.P18337283758979974764

/-!
# A044653: Numbers n such that string 2,3 occurs in the base 9 representation of n but not of n+1.

The programs for A044653, there is no canonical definition to state claims against.
-/

/-! ## A044653.P11751214931055419688

`A319021(A044272(1+n)-2)`
-/

namespace A044653.P11751214931055419688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044272 (1 + n) - 2).toNat

end

end A044653.P11751214931055419688

/-! ## A044653.P11508424688601380267

`A044273(n+1)-1`
-/

namespace A044653.P11508424688601380267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044273 (n + 1) - 1

end

end A044653.P11508424688601380267

/-! ## A044653.P406703447464075426

`A233583(A044273(n+1))`
-/

namespace A044653.P406703447464075426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044273 (n + 1)).toNat

end

end A044653.P406703447464075426

/-!
# A044654: Numbers n such that string 2,4 occurs in the base 9 representation of n but not of n+1.

The programs for A044654, there is no canonical definition to state claims against.
-/

/-! ## A044654.P12096148099378007183

`A044274(n+1)-1`
-/

namespace A044654.P12096148099378007183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044274 (n + 1) - 1

end

end A044654.P12096148099378007183

/-! ## A044654.P9895835150344843485

`A233583(A044274(n+1))`
-/

namespace A044654.P9895835150344843485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044274 (n + 1)).toNat

end

end A044654.P9895835150344843485

/-!
# A044655: Numbers n such that string 2,5 occurs in the base 9 representation of n but not of n+1.

The programs for A044655, there is no canonical definition to state claims against.
-/

/-! ## A044655.P2500526661394484044

`A319021(A044274(1+n))-2`
-/

namespace A044655.P2500526661394484044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044274 (1 + n)).toNat - 2

end

end A044655.P2500526661394484044

/-! ## A044655.P8822547797306508412

`A044275(n+1)-1`
-/

namespace A044655.P8822547797306508412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044275 (n + 1) - 1

end

end A044655.P8822547797306508412

/-! ## A044655.P11761196827887637258

`A233583(A044275(n+1))`
-/

namespace A044655.P11761196827887637258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044275 (n + 1)).toNat

end

end A044655.P11761196827887637258

/-!
# A044656: Numbers n such that string 2,6 occurs in the base 9 representation of n but not of n+1.

The programs for A044656, there is no canonical definition to state claims against.
-/

/-! ## A044656.P13083345389138032142

`A319021(A044275(n+1)-2)`
-/

namespace A044656.P13083345389138032142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044275 (n + 1) - 2).toNat

end

end A044656.P13083345389138032142

/-! ## A044656.P16391201392856785306

`A044276(n+1)-1`
-/

namespace A044656.P16391201392856785306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044276 (n + 1) - 1

end

end A044656.P16391201392856785306

/-! ## A044656.P8146067363088875855

`(A044657(n+1)+A044275(n+1)-1)/2`
-/

namespace A044656.P8146067363088875855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044657 (n + 1) + (A044275 (n + 1) - 1) : ℚ) / 2

end

end A044656.P8146067363088875855

/-! ## A044656.P7103951489199902425

`A233583(A044276(n+1))`
-/

namespace A044656.P7103951489199902425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044276 (n + 1)).toNat

end

end A044656.P7103951489199902425

/-!
# A044657: Numbers n such that string 2,7 occurs in the base 9 representation of n but not of n+1.

The programs for A044657, there is no canonical definition to state claims against.
-/

/-! ## A044657.P3528067958691851445

`A044277(n+1)-1`
-/

namespace A044657.P3528067958691851445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044277 (n + 1) - 1

end

end A044657.P3528067958691851445

/-! ## A044657.P13102566013181168755

`A233583(A044277(n+1))`
-/

namespace A044657.P13102566013181168755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044277 (n + 1)).toNat

end

end A044657.P13102566013181168755

/-!
# A044658: Numbers n such that string 2,8 occurs in the base 9 representation of n but not of n+1.

The programs for A044658, there is no canonical definition to state claims against.
-/

/-! ## A044658.P15221713225682535418

`∩[A043980(n+1), A002265(A043980(n+1))]`
-/

namespace A044658.P15221713225682535418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A043980 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044658.P15221713225682535418

/-! ## A044658.P17955152658712657144

`A044278(n+1)-1`
-/

namespace A044658.P17955152658712657144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044278 (n + 1) - 1

end

end A044658.P17955152658712657144

/-! ## A044658.P14146133368838966163

`A233583(A044278(n+1))`
-/

namespace A044658.P14146133368838966163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044278 (n + 1)).toNat

end

end A044658.P14146133368838966163

/-!
# A044659: Numbers n such that string 3,0 occurs in the base 9 representation of n but not of n+1.

The programs for A044659, there is no canonical definition to state claims against.
-/

/-! ## A044659.P17767723855246120265

`A044279(n+1)-1`
-/

namespace A044659.P17767723855246120265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044279 (n + 1) - 1

end

end A044659.P17767723855246120265

/-! ## A044659.P741676842703723231

`A233583(A044279(n+1))`
-/

namespace A044659.P741676842703723231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044279 (n + 1)).toNat

end

end A044659.P741676842703723231

/-!
# A044660: Numbers n such that string 3,1 occurs in the base 9 representation of n but not of n+1.

The programs for A044660, there is no canonical definition to state claims against.
-/

/-! ## A044660.P4270877650956202794

`A044279(n+1)+A038500(A044279(n+1))-1`
-/

namespace A044660.P4270877650956202794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044279 (n + 1) + (A038500 (A044279 (n + 1)).toNat - 1)

end

end A044660.P4270877650956202794

/-! ## A044660.P7811393608114764112

`A044280(n+1)-1`
-/

namespace A044660.P7811393608114764112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044280 (n + 1) - 1

end

end A044660.P7811393608114764112

/-! ## A044660.P3246253078524670264

`A233583(A044280(n+1))`
-/

namespace A044660.P3246253078524670264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044280 (n + 1)).toNat

end

end A044660.P3246253078524670264

/-!
# A044661: Numbers n such that string 3,2 occurs in the base 9 representation of n but not of n+1.

The programs for A044661, there is no canonical definition to state claims against.
-/

/-! ## A044661.P4920859676284698977

`A319021(A044280(n+1))-2`
-/

namespace A044661.P4920859676284698977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044280 (n + 1)).toNat - 2

end

end A044661.P4920859676284698977

/-! ## A044661.P2873429350669381519

`A044660(n+1)+A044660(n+1)-(A044279(n+1)-1)`
-/

namespace A044661.P2873429350669381519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044660 (n + 1) + A044660 (n + 1) - (A044279 (n + 1) - 1)

end

end A044661.P2873429350669381519

/-!
# A044662: Numbers n such that string 3,3 occurs in the base 9 representation of n but not of n+1.

The programs for A044662, there is no canonical definition to state claims against.
-/

/-! ## A044662.P13025441225777006018

`A240235(A240234(2*(n+1)))+A043962(2*n+1)`
-/

namespace A044662.P13025441225777006018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240235 (A240234 (2 * (n + 1))).toNat + A043962 (2 * n + 1)

end

end A044662.P13025441225777006018

/-!
# A044663: Numbers n such that string 3,4 occurs in the base 9 representation of n but not of n+1.

The programs for A044663, there is no canonical definition to state claims against.
-/

/-! ## A044663.P10240297366524038086

`A044283(n+1)-1`
-/

namespace A044663.P10240297366524038086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044283 (n + 1) - 1

end

end A044663.P10240297366524038086

/-! ## A044663.P6728008853514412153

`A233583(A044283(n+1))`
-/

namespace A044663.P6728008853514412153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044283 (n + 1)).toNat

end

end A044663.P6728008853514412153

/-!
# A044664: Numbers n such that string 3,5 occurs in the base 9 representation of n but not of n+1.

The programs for A044664, there is no canonical definition to state claims against.
-/

/-! ## A044664.P3520358224117808757

`A319021(A044283(n+1))-2`
-/

namespace A044664.P3520358224117808757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044283 (n + 1)).toNat - 2

end

end A044664.P3520358224117808757

/-! ## A044664.P8644484371849436088

`A044284(n+1)-1`
-/

namespace A044664.P8644484371849436088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044284 (n + 1) - 1

end

end A044664.P8644484371849436088

/-! ## A044664.P16358112814557539031

`A233583(A044284(n+1))`
-/

namespace A044664.P16358112814557539031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044284 (n + 1)).toNat

end

end A044664.P16358112814557539031

/-!
# A044665: Numbers n such that string 3,6 occurs in the base 9 representation of n but not of n+1.

The programs for A044665, there is no canonical definition to state claims against.
-/

/-! ## A044665.P15893207347061067397

`A319021(A044284(1+n)-2)`
-/

namespace A044665.P15893207347061067397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044284 (1 + n) - 2).toNat

end

end A044665.P15893207347061067397

/-! ## A044665.P6246759991258857996

`A044285(n+1)-1`
-/

namespace A044665.P6246759991258857996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044285 (n + 1) - 1

end

end A044665.P6246759991258857996

/-! ## A044665.P17416186029419827103

`A113520(A044285(n+1))`
-/

namespace A044665.P17416186029419827103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044285 (n + 1)).toNat

end

end A044665.P17416186029419827103

/-!
# A044666: Numbers n such that string 3,7 occurs in the base 9 representation of n but not of n+1.

The programs for A044666, there is no canonical definition to state claims against.
-/

/-! ## A044666.P9848916603624569137

`A044286(n+1)-1`
-/

namespace A044666.P9848916603624569137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044286 (n + 1) - 1

end

end A044666.P9848916603624569137

/-! ## A044666.P2002646297478113730

`A044665(n+1)+A044665(n+1)-(1+A044284(n+1)-2)`
-/

namespace A044666.P2002646297478113730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044665 (n + 1) + A044665 (n + 1) - (1 + (A044284 (n + 1) - 2))

end

end A044666.P2002646297478113730

/-! ## A044666.P13340495733481175476

`A233583(A044286(n+1))`
-/

namespace A044666.P13340495733481175476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044286 (n + 1)).toNat

end

end A044666.P13340495733481175476

/-!
# A044667: Numbers n such that string 3,8 occurs in the base 9 representation of n but not of n+1.

The programs for A044667, there is no canonical definition to state claims against.
-/

/-! ## A044667.P8439948403691401602

`A044287(n+1)-1`
-/

namespace A044667.P8439948403691401602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044287 (n + 1) - 1

end

end A044667.P8439948403691401602

/-! ## A044667.P6347488992901780776

`∩[A043985(n+1), A243750(n+1)]`
-/

namespace A044667.P6347488992901780776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044667.P6347488992901780776

/-! ## A044667.P15055853058084627345

`A233583(A044287(n+1))`
-/

namespace A044667.P15055853058084627345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044287 (n + 1)).toNat

end

end A044667.P15055853058084627345

/-! ## A044667.P4950879842893364878

`A063677(A044287(n+1))`
-/

namespace A044667.P4950879842893364878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063677 (A044287 (n + 1)).toNat

end

end A044667.P4950879842893364878

/-!
# A044668: Numbers n such that string 4,0 occurs in the base 9 representation of n but not of n+1.

The programs for A044668, there is no canonical definition to state claims against.
-/

/-! ## A044668.P13602792982375261491

`A044288(n+1)-1`
-/

namespace A044668.P13602792982375261491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044288 (n + 1) - 1

end

end A044668.P13602792982375261491

/-! ## A044668.P18392515488542989308

`A233583(A044288(n+1))`
-/

namespace A044668.P18392515488542989308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044288 (n + 1)).toNat

end

end A044668.P18392515488542989308

/-!
# A044669: Numbers n such that string 4,1 occurs in the base 9 representation of n but not of n+1.

The programs for A044669, there is no canonical definition to state claims against.
-/

/-! ## A044669.P14556161289049659126

`A044289(n+1)-1`
-/

namespace A044669.P14556161289049659126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044289 (n + 1) - 1

end

end A044669.P14556161289049659126

/-! ## A044669.P17345991864829178239

`A233583(A044289(n+1))`
-/

namespace A044669.P17345991864829178239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044289 (n + 1)).toNat

end

end A044669.P17345991864829178239

/-!
# A044670: Numbers n such that string 4,2 occurs in the base 9 representation of n but not of n+1.

The programs for A044670, there is no canonical definition to state claims against.
-/

/-! ## A044670.P14305446665463426589

`A319021(A044289(1+n))-2`
-/

namespace A044670.P14305446665463426589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044289 (1 + n)).toNat - 2

end

end A044670.P14305446665463426589

/-! ## A044670.P16298657536676240548

`A044290(n+1)-1`
-/

namespace A044670.P16298657536676240548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044290 (n + 1) - 1

end

end A044670.P16298657536676240548

/-! ## A044670.P13278624130477573550

`A233583(A044290(n+1))`
-/

namespace A044670.P13278624130477573550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044290 (n + 1)).toNat

end

end A044670.P13278624130477573550

/-!
# A044671: Numbers n such that string 4,3 occurs in the base 9 representation of n but not of n+1.

The programs for A044671, there is no canonical definition to state claims against.
-/

/-! ## A044671.P9489117995998774769

`A319021(A044290(1+n)-2)`
-/

namespace A044671.P9489117995998774769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044290 (1 + n) - 2).toNat

end

end A044671.P9489117995998774769

/-! ## A044671.P7009248582294416617

`A258579(A038255(n))+A044289(n+1)`
-/

namespace A044671.P7009248582294416617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258579 (A038255 n).toNat + A044289 (n + 1)

end

end A044671.P7009248582294416617

/-!
# A044672: Numbers n such that string 4,4 occurs in the base 9 representation of n but not of n+1.

The programs for A044672, there is no canonical definition to state claims against.
-/

/-! ## A044672.P4843515863826199878

`A002517(A044291(1+n))-1`
-/

namespace A044672.P4843515863826199878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044291 (1 + n)).toNat - 1

end

end A044672.P4843515863826199878

/-! ## A044672.P12089490024038972199

`-1+A002517(A044291(n+1))`
-/

namespace A044672.P12089490024038972199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A002517 (A044291 (n + 1)).toNat

end

end A044672.P12089490024038972199

/-! ## A044672.P15549831753676771934

`A004526(C(A044632(2*n+1), 1))`
-/

namespace A044672.P15549831753676771934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.choose (A044632 (2 * n + 1)).toNat 1)

end

end A044672.P15549831753676771934

/-!
# A044673: Numbers n such that string 4,5 occurs in the base 9 representation of n but not of n+1.

The programs for A044673, there is no canonical definition to state claims against.
-/

/-! ## A044673.P16452005460761278876

`record[A057979(A044634(1+n))]`
-/

namespace A044673.P16452005460761278876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044634 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044673.P16452005460761278876

/-! ## A044673.P18124848418393636342

`record[A166514(A044634(1+n)-1)]`
-/

namespace A044673.P18124848418393636342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A044634 (1 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044673.P18124848418393636342

/-! ## A044673.P7593752052383504194

`A044293(n+1)-1`
-/

namespace A044673.P7593752052383504194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044293 (n + 1) - 1

end

end A044673.P7593752052383504194

/-! ## A044673.P1133743152020406136

`A233583(A044293(n+1))`
-/

namespace A044673.P1133743152020406136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044293 (n + 1)).toNat

end

end A044673.P1133743152020406136

/-!
# A044674: Numbers n such that string 4,6 occurs in the base 9 representation of n but not of n+1.

The programs for A044674, there is no canonical definition to state claims against.
-/

/-! ## A044674.P18148073927074739786

`record[A057979(A044636(1+n))]`
-/

namespace A044674.P18148073927074739786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044636 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044674.P18148073927074739786

/-! ## A044674.P7369605983459675671

`record[A166514(A044636(1+n)-1)]`
-/

namespace A044674.P7369605983459675671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A044636 (1 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044674.P7369605983459675671

/-! ## A044674.P9663201015906176738

`filter[A057979(A044636(n+1)), A343219(#)]`
-/

namespace A044674.P9663201015906176738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044636 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A044674.P9663201015906176738

/-! ## A044674.P7129132837350926281

`A044294(n+1)-1`
-/

namespace A044674.P7129132837350926281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044294 (n + 1) - 1

end

end A044674.P7129132837350926281

/-! ## A044674.P8179176871415569461

`A113520(A044294(n+1))`
-/

namespace A044674.P8179176871415569461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044294 (n + 1)).toNat

end

end A044674.P8179176871415569461

/-!
# A044675: Numbers n such that string 4,7 occurs in the base 9 representation of n but not of n+1.

The programs for A044675, there is no canonical definition to state claims against.
-/

/-! ## A044675.P2117572553470313975

`record[A249122(A044638(1+n))]`
-/

namespace A044675.P2117572553470313975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A044638 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044675.P2117572553470313975

/-! ## A044675.P9411941571527564587

`record[A166514(A044638(n+1)-1)]`
-/

namespace A044675.P9411941571527564587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A044638 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044675.P9411941571527564587

/-! ## A044675.P15214414677958672375

`A044295(n+1)-1`
-/

namespace A044675.P15214414677958672375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044295 (n + 1) - 1

end

end A044675.P15214414677958672375

/-! ## A044675.P14842089116494140231

`A233583(A044295(n+1))`
-/

namespace A044675.P14842089116494140231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044295 (n + 1)).toNat

end

end A044675.P14842089116494140231

/-!
# A044676: Numbers n such that string 4,8 occurs in the base 9 representation of n but not of n+1.

The programs for A044676, there is no canonical definition to state claims against.
-/

/-! ## A044676.P5738549542082779794

`record[A057979(A044640(1+n))]`
-/

namespace A044676.P5738549542082779794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044640 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044676.P5738549542082779794

/-! ## A044676.P13302925510199316771

`record[A166514(A044640(1+n)-1)]`
-/

namespace A044676.P13302925510199316771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A044640 (1 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044676.P13302925510199316771

/-! ## A044676.P6578940386383371946

`A044296(n+1)-1`
-/

namespace A044676.P6578940386383371946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044296 (n + 1) - 1

end

end A044676.P6578940386383371946

/-! ## A044676.P18357708658223543326

`A233583(A044296(n+1))`
-/

namespace A044676.P18357708658223543326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044296 (n + 1)).toNat

end

end A044676.P18357708658223543326

/-!
# A044677: Numbers n such that string 5,0 occurs in the base 9 representation of n but not of n+1.

The programs for A044677, there is no canonical definition to state claims against.
-/

/-! ## A044677.P11454929858469160994

`-1+A044297(n+1)`
-/

namespace A044677.P11454929858469160994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044297 (n + 1)

end

end A044677.P11454929858469160994

/-! ## A044677.P1810924431297422226

`A113520(A044297(n+1))`
-/

namespace A044677.P1810924431297422226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044297 (n + 1)).toNat

end

end A044677.P1810924431297422226

/-!
# A044678: Numbers n such that string 5,1 occurs in the base 9 representation of n but not of n+1.

The programs for A044678, there is no canonical definition to state claims against.
-/

/-! ## A044678.P8316919675355331730

`A002517(A044297(1+n))-1`
-/

namespace A044678.P8316919675355331730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044297 (1 + n)).toNat - 1

end

end A044678.P8316919675355331730

/-! ## A044678.P10671928857167655952

`-1+A002517(A044297(n+1))`
-/

namespace A044678.P10671928857167655952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A002517 (A044297 (n + 1)).toNat

end

end A044678.P10671928857167655952

/-! ## A044678.P8155000215804862403

`A233583(A044298(n+1))`
-/

namespace A044678.P8155000215804862403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044298 (n + 1)).toNat

end

end A044678.P8155000215804862403

/-!
# A044679: Numbers n such that string 5,2 occurs in the base 9 representation of n but not of n+1.

The programs for A044679, there is no canonical definition to state claims against.
-/

/-! ## A044679.P13200563676114856766

`A044299(n+1)-1`
-/

namespace A044679.P13200563676114856766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044299 (n + 1) - 1

end

end A044679.P13200563676114856766

/-! ## A044679.P1823552320916009549

`A233583(A044299(n+1))`
-/

namespace A044679.P1823552320916009549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044299 (n + 1)).toNat

end

end A044679.P1823552320916009549

/-!
# A044680: Numbers n such that string 5,3 occurs in the base 9 representation of n but not of n+1.

The programs for A044680, there is no canonical definition to state claims against.
-/

/-! ## A044680.P1479947420803306893

`A319021(A044299(n+1)-2)`
-/

namespace A044680.P1479947420803306893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044299 (n + 1) - 2).toNat

end

end A044680.P1479947420803306893

/-! ## A044680.P7569735724451625147

`record[A057979(A044648(n+2))]`
-/

namespace A044680.P7569735724451625147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044648 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044680.P7569735724451625147

/-! ## A044680.P9846040688966128546

`record[A025480(A044648(2+n)-1)]`
-/

namespace A044680.P9846040688966128546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044648 (2 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044680.P9846040688966128546

/-! ## A044680.P11805037937288022246

`A044300(n+1)-1`
-/

namespace A044680.P11805037937288022246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044300 (n + 1) - 1

end

end A044680.P11805037937288022246

/-! ## A044680.P5650232876414456901

`A113520(A044300(n+1))`
-/

namespace A044680.P5650232876414456901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044300 (n + 1)).toNat

end

end A044680.P5650232876414456901

/-!
# A044681: Numbers n such that string 5,4 occurs in the base 9 representation of n but not of n+1.

The programs for A044681, there is no canonical definition to state claims against.
-/

/-! ## A044681.P16026331342116660022

`A002517(A044300(1+n))-1`
-/

namespace A044681.P16026331342116660022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044300 (1 + n)).toNat - 1

end

end A044681.P16026331342116660022

/-! ## A044681.P18049231845952199028

`-1+A002517(A044300(n+1))`
-/

namespace A044681.P18049231845952199028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A002517 (A044300 (n + 1)).toNat

end

end A044681.P18049231845952199028

/-! ## A044681.P13105312917883484064

`record[A057979(A044650(n+2))]`
-/

namespace A044681.P13105312917883484064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044650 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044681.P13105312917883484064

/-!
# A044682: Numbers n such that string 5,5 occurs in the base 9 representation of n but not of n+1.

The programs for A044682, there is no canonical definition to state claims against.
-/

/-! ## A044682.P18358215434921806253

`record[A057979(A044652(2+n))]`
-/

namespace A044682.P18358215434921806253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044652 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044682.P18358215434921806253

/-! ## A044682.P17421647198305414794

`A057979(A044652(2*(n+1)))`
-/

namespace A044682.P17421647198305414794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044652 (2 * (n + 1))).toNat

end

end A044682.P17421647198305414794

/-! ## A044682.P11841334452403909325

`record[Δ[A152271(A044652(n+1))]]`
-/

namespace A044682.P11841334452403909325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A044652 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044682.P11841334452403909325

/-! ## A044682.P15462844230814799578

`A140106(A044652(2*(n+1))+1)`
-/

namespace A044682.P15462844230814799578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A044652 (2 * (n + 1)) + 1).toNat

end

end A044682.P15462844230814799578

/-! ## A044682.P1975105508750954523

`A004525(A044652(2*(n+1))-1)`
-/

namespace A044682.P1975105508750954523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A044652 (2 * (n + 1)) - 1).toNat

end

end A044682.P1975105508750954523

/-! ## A044682.P12881870366669451873

`A060681(A044652(2*(n+1))-1)`
-/

namespace A044682.P12881870366669451873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A044652 (2 * (n + 1)) - 1).toNat

end

end A044682.P12881870366669451873

/-! ## A044682.P24988819939274098

`A152271(A044652(2*n+2))-1`
-/

namespace A044682.P24988819939274098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A044652 (2 * n + 2)).toNat - 1

end

end A044682.P24988819939274098

/-!
# A044683: Numbers n such that string 5,6 occurs in the base 9 representation of n but not of n+1.

The programs for A044683, there is no canonical definition to state claims against.
-/

/-! ## A044683.P6914860070924033808

`record[A057979(A044654(n+2))]`
-/

namespace A044683.P6914860070924033808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044654 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044683.P6914860070924033808

/-! ## A044683.P9895902145751067062

`A044303(1+n)-1`
-/

namespace A044683.P9895902145751067062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044303 (1 + n) - 1

end

end A044683.P9895902145751067062

/-! ## A044683.P15663783898170986992

`-1+A044303(n+1)`
-/

namespace A044683.P15663783898170986992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044303 (n + 1)

end

end A044683.P15663783898170986992

/-! ## A044683.P6004650424609377258

`A233583(A044303(n+1))`
-/

namespace A044683.P6004650424609377258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044303 (n + 1)).toNat

end

end A044683.P6004650424609377258

/-!
# A044684: Numbers n such that string 5,7 occurs in the base 9 representation of n but not of n+1.

The programs for A044684, there is no canonical definition to state claims against.
-/

/-! ## A044684.P750490647300028525

`A002517(A044303(1+n))-1`
-/

namespace A044684.P750490647300028525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044303 (1 + n)).toNat - 1

end

end A044684.P750490647300028525

/-! ## A044684.P3494254796355163925

`-1+A002517(A044303(n+1))`
-/

namespace A044684.P3494254796355163925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A002517 (A044303 (n + 1)).toNat

end

end A044684.P3494254796355163925

/-! ## A044684.P1607508862426791559

`record[A057979(A044656(n+2))]`
-/

namespace A044684.P1607508862426791559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044656 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044684.P1607508862426791559

/-! ## A044684.P1780137716453318960

`A044304(n+1)-1`
-/

namespace A044684.P1780137716453318960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044304 (n + 1) - 1

end

end A044684.P1780137716453318960

/-! ## A044684.P10098176546866243234

`A233583(A044304(n+1))`
-/

namespace A044684.P10098176546866243234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044304 (n + 1)).toNat

end

end A044684.P10098176546866243234

/-!
# A044685: Numbers n such that string 5,8 occurs in the base 9 representation of n but not of n+1.

The programs for A044685, there is no canonical definition to state claims against.
-/

/-! ## A044685.P17878945044692896824

`record[A057979(A044658(2+n))]`
-/

namespace A044685.P17878945044692896824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044658 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044685.P17878945044692896824

/-! ## A044685.P13442058342382669501

`A044305(1+n)-1`
-/

namespace A044685.P13442058342382669501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044305 (1 + n) - 1

end

end A044685.P13442058342382669501

/-! ## A044685.P17386587564976960087

`-1+A044305(n+1)`
-/

namespace A044685.P17386587564976960087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044305 (n + 1)

end

end A044685.P17386587564976960087

/-! ## A044685.P3572096983425668241

`A233583(A044305(n+1))`
-/

namespace A044685.P3572096983425668241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044305 (n + 1)).toNat

end

end A044685.P3572096983425668241

/-!
# A044686: Numbers n such that string 6,0 occurs in the base 9 representation of n but not of n+1.

The programs for A044686, there is no canonical definition to state claims against.
-/

/-! ## A044686.P12293699178401949822

`record[A057979(A044660(n+2))]`
-/

namespace A044686.P12293699178401949822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044660 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044686.P12293699178401949822

/-! ## A044686.P10642198448936416248

`A044306(1+n)-1`
-/

namespace A044686.P10642198448936416248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044306 (1 + n) - 1

end

end A044686.P10642198448936416248

/-! ## A044686.P8686986931028814999

`-1+A044306(n+1)`
-/

namespace A044686.P8686986931028814999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044306 (n + 1)

end

end A044686.P8686986931028814999

/-! ## A044686.P7564429349327964624

`A113520(A044306(n+1))`
-/

namespace A044686.P7564429349327964624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044306 (n + 1)).toNat

end

end A044686.P7564429349327964624

/-!
# A044687: Numbers n such that string 6,1 occurs in the base 9 representation of n but not of n+1.

The programs for A044687, there is no canonical definition to state claims against.
-/

/-! ## A044687.P3790829258778692971

`A002517(A044306(1+n))-1`
-/

namespace A044687.P3790829258778692971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044306 (1 + n)).toNat - 1

end

end A044687.P3790829258778692971

/-! ## A044687.P13806204917101345087

`-1+A002517(A044306(n+1))`
-/

namespace A044687.P13806204917101345087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A002517 (A044306 (n + 1)).toNat

end

end A044687.P13806204917101345087

/-! ## A044687.P11396148800861936972

`A233583(A044307(n+1))`
-/

namespace A044687.P11396148800861936972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044307 (n + 1)).toNat

end

end A044687.P11396148800861936972

/-!
# A044688: Numbers n such that string 6,2 occurs in the base 9 representation of n but not of n+1.

The programs for A044688, there is no canonical definition to state claims against.
-/

/-! ## A044688.P16617421965846587805

`record[A057979(A044664(2+n))]`
-/

namespace A044688.P16617421965846587805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044664 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044688.P16617421965846587805

/-! ## A044688.P6668532373238885126

`A044308(n+1)-1`
-/

namespace A044688.P6668532373238885126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044308 (n + 1) - 1

end

end A044688.P6668532373238885126

/-! ## A044688.P1750786659792501330

`A233583(A044308(n+1))`
-/

namespace A044688.P1750786659792501330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044308 (n + 1)).toNat

end

end A044688.P1750786659792501330

/-!
# A044689: Numbers n such that string 6,3 occurs in the base 9 representation of n but not of n+1.

The programs for A044689, there is no canonical definition to state claims against.
-/

/-! ## A044689.P1252172212966041317

`record[A057979(A044666(2+n))]`
-/

namespace A044689.P1252172212966041317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044666 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044689.P1252172212966041317

/-! ## A044689.P6215402256619766429

`A044309(1+n)-1`
-/

namespace A044689.P6215402256619766429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044309 (1 + n) - 1

end

end A044689.P6215402256619766429

/-! ## A044689.P11792118069720835479

`-1+A044309(n+1)`
-/

namespace A044689.P11792118069720835479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044309 (n + 1)

end

end A044689.P11792118069720835479

/-! ## A044689.P2382085419351150989

`A233583(A044309(n+1))`
-/

namespace A044689.P2382085419351150989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044309 (n + 1)).toNat

end

end A044689.P2382085419351150989

/-!
# A044690: Numbers n such that string 6,4 occurs in the base 9 representation of n but not of n+1.

The programs for A044690, there is no canonical definition to state claims against.
-/

/-! ## A044690.P3689730664038814990

`A002517(A044309(n+1))-1`
-/

namespace A044690.P3689730664038814990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044309 (n + 1)).toNat - 1

end

end A044690.P3689730664038814990

/-! ## A044690.P10018955218668222364

`A001057(2*n)+A023443(n)+A002517(A044309(n+1))`
-/

namespace A044690.P10018955218668222364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n) + (A023443 n + A002517 (A044309 (n + 1)).toNat)

end

end A044690.P10018955218668222364

/-! ## A044690.P6720317473504956298

`A233583(A044310(n+1))`
-/

namespace A044690.P6720317473504956298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044310 (n + 1)).toNat

end

end A044690.P6720317473504956298

/-!
# A044691: Numbers n such that string 6,5 occurs in the base 9 representation of n but not of n+1.

The programs for A044691, there is no canonical definition to state claims against.
-/

/-! ## A044691.P15074895959955977890

`A319021(A044310(1+n))-2`
-/

namespace A044691.P15074895959955977890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044310 (1 + n)).toNat - 2

end

end A044691.P15074895959955977890

/-! ## A044691.P14046026196516117576

`record[A057979(A044670(n+2))]`
-/

namespace A044691.P14046026196516117576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044670 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044691.P14046026196516117576

/-! ## A044691.P17700270495491719032

`A184974(A182700(n))+A044310(n+1)`
-/

namespace A044691.P17700270495491719032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184974 (A182700 n).toNat + A044310 (n + 1)

end

end A044691.P17700270495491719032

/-!
# A044692: Numbers n such that string 6,6 occurs in the base 9 representation of n but not of n+1.

The programs for A044692, there is no canonical definition to state claims against.
-/

/-! ## A044692.P1239012386634102021

`A319021(A044311(1+n)-2)`
-/

namespace A044692.P1239012386634102021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044311 (1 + n) - 2).toNat

end

end A044692.P1239012386634102021

/-! ## A044692.P554232337424001597

`A278539(A044672(2*(n+1))-3)`
-/

namespace A044692.P554232337424001597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278539 (A044672 (2 * (n + 1)) - 3).toNat

end

end A044692.P554232337424001597

/-! ## A044692.P13964727489056493153

`A008619(A044672(2*(1+n))-3)`
-/

namespace A044692.P13964727489056493153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A044672 (2 * (1 + n)) - 3).toNat

end

end A044692.P13964727489056493153

/-! ## A044692.P14280078059921061180

`A052938(A044672(2*(n+1))-3)`
-/

namespace A044692.P14280078059921061180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A044672 (2 * (n + 1)) - 3).toNat

end

end A044692.P14280078059921061180

/-! ## A044692.P808420041087560022

`A004524(A044672(2*(n+1))-2*n)+n`
-/

namespace A044692.P808420041087560022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A044672 (2 * (n + 1)) - (2 * n : ℤ)).toNat + (n : ℤ)

end

end A044692.P808420041087560022

/-! ## A044692.P687312481290490978

`record[A057979(A044672(n+2))]`
-/

namespace A044692.P687312481290490978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044672 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044692.P687312481290490978

/-! ## A044692.P15256112390061864830

`A004524(A044672(2*(n+1)))`
-/

namespace A044692.P15256112390061864830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A044672 (2 * (n + 1))).toNat

end

end A044692.P15256112390061864830

/-! ## A044692.P10980920352124555733

`A123108(A044672(n+2+n))`
-/

namespace A044692.P10980920352124555733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A044672 (n + 2 + n)).toNat

end

end A044692.P10980920352124555733

/-! ## A044692.P9570393043402418376

`A026741(A044672(2*(n+1))-1)`
-/

namespace A044692.P9570393043402418376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A044672 (2 * (n + 1)) - 1).toNat

end

end A044692.P9570393043402418376

/-! ## A044692.P16391334869540176408

`A057979(A044672(2*n+2)*1)`
-/

namespace A044692.P16391334869540176408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044672 (2 * n + 2) * 1).toNat

end

end A044692.P16391334869540176408

/-!
# A044693: Numbers n such that string 6,7 occurs in the base 9 representation of n but not of n+1.

The programs for A044693, there is no canonical definition to state claims against.
-/

/-! ## A044693.P4732282417709023384

`A002517(A044312(1+n))-1`
-/

namespace A044693.P4732282417709023384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044312 (1 + n)).toNat - 1

end

end A044693.P4732282417709023384

/-! ## A044693.P13297869992877329639

`-1+A002517(A044312(n+1))`
-/

namespace A044693.P13297869992877329639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A002517 (A044312 (n + 1)).toNat

end

end A044693.P13297869992877329639

/-! ## A044693.P10612275793847571956

`record[A057979(A044674(n+2))]`
-/

namespace A044693.P10612275793847571956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044674 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044693.P10612275793847571956

/-! ## A044693.P8701192583830989491

`A065423(2*A044313(n+1))`
-/

namespace A044693.P8701192583830989491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A044313 (n + 1)).toNat

end

end A044693.P8701192583830989491

/-! ## A044693.P16817796629605312504

`A140106(2*A044313(n+1))`
-/

namespace A044693.P16817796629605312504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A044313 (n + 1)).toNat

end

end A044693.P16817796629605312504

/-! ## A044693.P2826551486133058695

`A044313(n+1)-1`
-/

namespace A044693.P2826551486133058695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044313 (n + 1) - 1

end

end A044693.P2826551486133058695

/-!
# A044694: Numbers n such that string 6,8 occurs in the base 9 representation of n but not of n+1.

The programs for A044694, there is no canonical definition to state claims against.
-/

/-! ## A044694.P13797537059970724861

`A044314(1+n)-1`
-/

namespace A044694.P13797537059970724861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044314 (1 + n) - 1

end

end A044694.P13797537059970724861

/-! ## A044694.P3233550145889358077

`A233583(A044314(n+1))`
-/

namespace A044694.P3233550145889358077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044314 (n + 1)).toNat

end

end A044694.P3233550145889358077

/-!
# A044695: Numbers n such that string 7,0 occurs in the base 9 representation of n but not of n+1.

The programs for A044695, there is no canonical definition to state claims against.
-/

/-! ## A044695.P4919187037639305694

`A044315(n+1)-1`
-/

namespace A044695.P4919187037639305694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044315 (n + 1) - 1

end

end A044695.P4919187037639305694

/-! ## A044695.P8985409767579554124

`A057428((2*n+1)*(n+1))+A044315(n+1)`
-/

namespace A044695.P8985409767579554124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 ((2 * n + 1) * (n + 1)) + A044315 (n + 1)

end

end A044695.P8985409767579554124

/-! ## A044695.P7526312163203747639

`A113520(A044315(n+1))`
-/

namespace A044695.P7526312163203747639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044315 (n + 1)).toNat

end

end A044695.P7526312163203747639

/-!
# A044696: Numbers n such that string 7,1 occurs in the base 9 representation of n but not of n+1.

The programs for A044696, there is no canonical definition to state claims against.
-/

/-! ## A044696.P8629285489949560141

`A002517(A044315(1+n))-1`
-/

namespace A044696.P8629285489949560141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044315 (1 + n)).toNat - 1

end

end A044696.P8629285489949560141

/-! ## A044696.P8421682530445905761

`-1+A002517(A044315(n+1))`
-/

namespace A044696.P8421682530445905761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A002517 (A044315 (n + 1)).toNat

end

end A044696.P8421682530445905761

/-! ## A044696.P7471989785503008739

`A044316(n+1)-1`
-/

namespace A044696.P7471989785503008739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044316 (n + 1) - 1

end

end A044696.P7471989785503008739

/-! ## A044696.P1283091041257340631

`A233583(A044316(n+1))`
-/

namespace A044696.P1283091041257340631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044316 (n + 1)).toNat

end

end A044696.P1283091041257340631

/-!
# A044697: Numbers n such that string 7,2 occurs in the base 9 representation of n but not of n+1.

The programs for A044697, there is no canonical definition to state claims against.
-/

/-! ## A044697.P803096113337717352

`A044317(1+n)-1`
-/

namespace A044697.P803096113337717352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044317 (1 + n) - 1

end

end A044697.P803096113337717352

/-! ## A044697.P11658128047889505168

`-1+A044317(n+1)`
-/

namespace A044697.P11658128047889505168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044317 (n + 1)

end

end A044697.P11658128047889505168

/-! ## A044697.P7638618500568228203

`A233583(A044317(n+1))`
-/

namespace A044697.P7638618500568228203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044317 (n + 1)).toNat

end

end A044697.P7638618500568228203

/-!
# A044698: Numbers n such that string 7,3 occurs in the base 9 representation of n but not of n+1.

The programs for A044698, there is no canonical definition to state claims against.
-/

/-! ## A044698.P2561605214733000784

`A044318(1+n)-1`
-/

namespace A044698.P2561605214733000784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044318 (1 + n) - 1

end

end A044698.P2561605214733000784

/-! ## A044698.P3793334594937495846

`-1+A044318(n+1)`
-/

namespace A044698.P3793334594937495846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A044318 (n + 1)

end

end A044698.P3793334594937495846

/-! ## A044698.P874772533366260025

`A113520(A044318(n+1))`
-/

namespace A044698.P874772533366260025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044318 (n + 1)).toNat

end

end A044698.P874772533366260025

/-!
# A044699: Numbers n such that string 7,4 occurs in the base 9 representation of n but not of n+1.

The programs for A044699, there is no canonical definition to state claims against.
-/

/-! ## A044699.P775636528227058913

`record[A249122(A044686(2+n))]`
-/

namespace A044699.P775636528227058913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A044686 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044699.P775636528227058913

/-! ## A044699.P7229248275768316037

`A002517(A044318(1+n))-1`
-/

namespace A044699.P7229248275768316037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044318 (1 + n)).toNat - 1

end

end A044699.P7229248275768316037

/-! ## A044699.P13980850117294121970

`-1+A002517(A044318(n+1))`
-/

namespace A044699.P13980850117294121970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A002517 (A044318 (n + 1)).toNat

end

end A044699.P13980850117294121970

/-! ## A044699.P11835222031772546046

`A044319(n+1)-1`
-/

namespace A044699.P11835222031772546046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044319 (n + 1) - 1

end

end A044699.P11835222031772546046

/-! ## A044699.P7546174546025675438

`A233583(A044319(n+1))`
-/

namespace A044699.P7546174546025675438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044319 (n + 1)).toNat

end

end A044699.P7546174546025675438

