import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A310601: Coordination sequence Gal.6.32.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310601, there is no canonical definition to state claims against.
-/

/-! ## A310601.P1766155848453490308

`A314333(n)-A325616(A020492(n+4))`
-/

namespace A310601.P1766155848453490308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314333 n - A325616 (A020492 (n + 4)).toNat

end

end A310601.P1766155848453490308

/-!
# A310603: Coordination sequence Gal.6.419.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310603, there is no canonical definition to state claims against.
-/

/-! ## A310603.P9523483728622303295

`A296910(n)+A213024(A283314(n))`
-/

namespace A310603.P9523483728622303295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + A213024 (A283314 n).toNat

end

end A310603.P9523483728622303295

/-! ## A310603.P16796545825819437148

`A310604(n)-A124762(A000598(n))`
-/

namespace A310603.P16796545825819437148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310604 n - A124762 (A000598 n).toNat

end

end A310603.P16796545825819437148

/-!
# A310604: Coordination sequence Gal.6.529.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310604, there is no canonical definition to state claims against.
-/

/-! ## A310604.P8518917342228506993

`A310605(n)-A061858(2^n)`
-/

namespace A310604.P8518917342228506993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310605 n - A061858 (2 ^ n)

end

end A310604.P8518917342228506993

/-! ## A310604.P5053472752161757003

`A312227(n)-A127648(A005470(n))`
-/

namespace A310604.P5053472752161757003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312227 n - A127648 (A005470 n).toNat

end

end A310604.P5053472752161757003

/-! ## A310604.P8908379460361201990

`A240834(A163779(n+1)+A000010(3*n+2))`
-/

namespace A310604.P8908379460361201990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240834 (A163779 (n + 1) + A000010 (3 * n + 2)).toNat

end

end A310604.P8908379460361201990

/-!
# A310605: Coordination sequence Gal.6.402.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310605, there is no canonical definition to state claims against.
-/

/-! ## A310605.P17242511374372333343

`A310603(n)+A005843(A185274(2*n+1))%(n+1)`
-/

namespace A310605.P17242511374372333343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310603 n + Int.tmod (A005843 (A185274 (2 * n + 1)).toNat) (n + 1 : ℤ)

end

end A310605.P17242511374372333343

/-!
# A310611: Coordination sequence Gal.6.402.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310611, there is no canonical definition to state claims against.
-/

/-! ## A310611.P2663528462371779509

`A310835(n)-A127251(A278972(n+1))`
-/

namespace A310611.P2663528462371779509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310835 n - A127251 (A278972 (n + 1)).toNat

end

end A310611.P2663528462371779509

/-! ## A310611.P10645660062836838437

`A310850(n)-A079260(A093129(n))`
-/

namespace A310611.P10645660062836838437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310850 n - A079260 (A093129 n).toNat

end

end A310611.P10645660062836838437

/-! ## A310611.P658912533198909150

`A310835(n)+A236109(A001595(n))-char[2]`
-/

namespace A310611.P658912533198909150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310835 n + A236109 (A001595 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A310611.P658912533198909150

/-! ## A310611.P17701207741306381380

`A310849(n)+A055641(A218956(n))-char[2]`
-/

namespace A310611.P17701207741306381380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310849 n + A055641 (A218956 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A310611.P17701207741306381380

/-! ## A310611.P12832458810461792942

`A310871(n)-A193238(A149173(n))-char[2]`
-/

namespace A310611.P12832458810461792942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310871 n - A193238 (A149173 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A310611.P12832458810461792942

/-!
# A310612: Coordination sequence Gal.6.288.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310612, there is no canonical definition to state claims against.
-/

/-! ## A310612.P13726254961028797514

`A360676(A293606(n))+A296910(n)`
-/

namespace A310612.P13726254961028797514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A293606 n).toNat + A296910 n

end

end A310612.P13726254961028797514

/-! ## A310612.P7756055030349733190

`A296910(n)+A124766(A000332(n))`
-/

namespace A310612.P7756055030349733190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + A124766 (A000332 n).toNat

end

end A310612.P7756055030349733190

/-! ## A310612.P6815016967108416811

`A310878(n)-A071981(A071969(n))`
-/

namespace A310612.P6815016967108416811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310878 n - A071981 (A071969 n).toNat

end

end A310612.P6815016967108416811

/-! ## A310612.P629201247547616668

`A310615(n)-A286939(A000110(n))`
-/

namespace A310612.P629201247547616668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310615 n - A286939 (A000110 n).toNat

end

end A310612.P629201247547616668

/-!
# A310615: Coordination sequence Gal.6.183.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310615, there is no canonical definition to state claims against.
-/

/-! ## A310615.P15044701651441276052

`A310616(n)-A079365((1-n)²)`
-/

namespace A310615.P15044701651441276052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310616 n - A079365 ((1 - (n : ℤ)) ^ 2).toNat

end

end A310615.P15044701651441276052

/-! ## A310615.P8118286782534435345

`A310616(n)-A185284(A312661(n))`
-/

namespace A310615.P8118286782534435345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310616 n - A185284 (A312661 n).toNat

end

end A310615.P8118286782534435345

/-! ## A310615.P13171761428060500855

`A310617(n)-A276520(A276534(n))`
-/

namespace A310615.P13171761428060500855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310617 n - A276520 (A276534 n).toNat

end

end A310615.P13171761428060500855

/-! ## A310615.P14440257767732214513

`xor(A249422(A295334(n)), A310616(n))`
-/

namespace A310615.P14440257767732214513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A249422 (A295334 n).toNat) (A310616 n)

end

end A310615.P14440257767732214513

/-!
# A310616: Coordination sequence Gal.6.274.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310616, there is no canonical definition to state claims against.
-/

/-! ## A310616.P4177695542607340826

`A310635(n)-A063725(A001787(n))`
-/

namespace A310616.P4177695542607340826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310635 n - A063725 (A001787 n).toNat

end

end A310616.P4177695542607340826

/-! ## A310616.P7140681379034973994

`A310615(n)+A185284(A310866(n))`
-/

namespace A310616.P7140681379034973994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310615 n + A185284 (A310866 n).toNat

end

end A310616.P7140681379034973994

/-! ## A310616.P3095846672485230309

`A310615(n)+A185284(A314502(n))`
-/

namespace A310616.P3095846672485230309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310615 n + A185284 (A314502 n).toNat

end

end A310616.P3095846672485230309

/-! ## A310616.P13979218963337614860

`A310887(n)-A010051(A117158(n))`
-/

namespace A310616.P13979218963337614860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310887 n - A010051 (A117158 n).toNat

end

end A310616.P13979218963337614860

/-! ## A310616.P14554542083169285879

`A310615(n)+A286939(A000938(n+3))`
-/

namespace A310616.P14554542083169285879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310615 n + A286939 (A000938 (n + 3)).toNat

end

end A310616.P14554542083169285879

/-!
# A310617: Coordination sequence Gal.6.167.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310617, there is no canonical definition to state claims against.
-/

/-! ## A310617.P14049643327418608266

`A310888(n)-A010051(A013309(n))`
-/

namespace A310617.P14049643327418608266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310888 n - A010051 (A013309 n).toNat

end

end A310617.P14049643327418608266

/-! ## A310617.P9837217415634667531

`or(A193511(A033193(n)), A310616(n))`
-/

namespace A310617.P9837217415634667531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A193511 (A033193 n).toNat) (A310616 n)

end

end A310617.P9837217415634667531

/-! ## A310617.P2952076487603839438

`A310638(n)-A082858(A117010(n+1))`
-/

namespace A310617.P2952076487603839438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310638 n - A082858 (A117010 (n + 1)).toNat

end

end A310617.P2952076487603839438

/-! ## A310617.P1759065824752688029

`A310614(n)+(A177819(3*(n+1))+1)%A166597(n)`
-/

namespace A310617.P1759065824752688029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310614 n + Int.tmod (A177819 (3 * (n + 1)) + 1) (A166597 n)

end

end A310617.P1759065824752688029

/-!
# A310619: Coordination sequence Gal.6.546.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310619, there is no canonical definition to state claims against.
-/

/-! ## A310619.P3262626490301990680

`A301686(n)-A010872(n²²)`
-/

namespace A310619.P3262626490301990680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301686 n - A010872 ((n ^ 2) ^ 2)

end

end A310619.P3262626490301990680

/-! ## A310619.P3227769755384919156

`A301686(n)-A011655(A000583(n))`
-/

namespace A310619.P3227769755384919156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301686 n - A011655 (A000583 n).toNat

end

end A310619.P3227769755384919156

/-! ## A310619.P595754847384499363

`A301686(n)-A000035(A122365(n))`
-/

namespace A310619.P595754847384499363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301686 n - A000035 (A122365 n).toNat

end

end A310619.P595754847384499363

/-! ## A310619.P8164644189074108763

`A301686(n)-A168182(A017378(n))`
-/

namespace A310619.P8164644189074108763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301686 n - A168182 (A017378 n).toNat

end

end A310619.P8164644189074108763

/-! ## A310619.P12625595464506378344

`A301686(n)-A189203(A336419(n))`
-/

namespace A310619.P12625595464506378344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301686 n - A189203 (A336419 n).toNat

end

end A310619.P12625595464506378344

/-!
# A310621: Coordination sequence Gal.6.435.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310621, there is no canonical definition to state claims against.
-/

/-! ## A310621.P16689205282837207319

`2*A310806(n)-A311140(n)`
-/

namespace A310621.P16689205282837207319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310806 n - A311140 n

end

end A310621.P16689205282837207319

/-! ## A310621.P17179613547451155369

`A004277(A310806(n))-A311140(n)`
-/

namespace A310621.P17179613547451155369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A310806 n).toNat - A311140 n

end

end A310621.P17179613547451155369

/-!
# A310623: Coordination sequence Gal.6.519.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310623, there is no canonical definition to state claims against.
-/

/-! ## A310623.P10160859641042425640

`or(A310621(n), A348326(A238218(3*n)))`
-/

namespace A310623.P10160859641042425640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A310621 n) (A348326 (A238218 (3 * n)).toNat)

end

end A310623.P10160859641042425640

/-! ## A310623.P11359026117516294004

`or(A310620(n), A348326(A155212(n)))`
-/

namespace A310623.P11359026117516294004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A310620 n) (A348326 (A155212 n).toNat)

end

end A310623.P11359026117516294004

/-! ## A310623.P13024426077885776843

`or(A310621(n), A348326(A155212(n)))`
-/

namespace A310623.P13024426077885776843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A310621 n) (A348326 (A155212 n).toNat)

end

end A310623.P13024426077885776843

/-!
# A310624: Coordination sequence Gal.5.121.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310624, there is no canonical definition to state claims against.
-/

/-! ## A310624.P6590215486087028609

`A310629(n)+A310646(n)-A310647(n)`
-/

namespace A310624.P6590215486087028609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310629 n + (A310646 n - A310647 n)

end

end A310624.P6590215486087028609

/-!
# A310627: Coordination sequence Gal.4.86.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310627, there is no canonical definition to state claims against.
-/

/-! ## A310627.P4908179959177205012

`A310635(n)-A184955(A303763(n))`
-/

namespace A310627.P4908179959177205012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310635 n - A184955 (A303763 n).toNat

end

end A310627.P4908179959177205012

/-! ## A310627.P17126052173656865436

`xor(A007814(A276725(n)), A310875(n))`
-/

namespace A310627.P17126052173656865436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007814 (A276725 n).toNat) (A310875 n)

end

end A310627.P17126052173656865436

/-!
# A310628: Coordination sequence Gal.5.78.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310628, there is no canonical definition to state claims against.
-/

/-! ## A310628.P15919805441949250339

`A310632(n)+A310644(n)-A310645(n)`
-/

namespace A310628.P15919805441949250339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310632 n + (A310644 n - A310645 n)

end

end A310628.P15919805441949250339

/-!
# A310629: Coordination sequence Gal.5.118.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310629, there is no canonical definition to state claims against.
-/

/-! ## A310629.P7562917880464390140

`A310624(n)+A310647(n)-A310646(n)`
-/

namespace A310629.P7562917880464390140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310624 n + (A310647 n - A310646 n)

end

end A310629.P7562917880464390140

/-! ## A310629.P12676007594786496286

`A310630(n)-A347706(A008930(n))`
-/

namespace A310629.P12676007594786496286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310630 n - A347706 (A008930 n).toNat

end

end A310629.P12676007594786496286

/-! ## A310629.P17146531684487781705

`A310634(n)-A101671(A083337(n))²`
-/

namespace A310629.P17146531684487781705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310634 n - A101671 (A083337 n).toNat ^ 2

end

end A310629.P17146531684487781705

/-!
# A310630: Coordination sequence Gal.6.422.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310630, there is no canonical definition to state claims against.
-/

/-! ## A310630.P16739073660410673448

`A347706(A008930(n))+A310629(n)`
-/

namespace A310630.P16739073660410673448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (A008930 n).toNat + A310629 n

end

end A310630.P16739073660410673448

/-!
# A310632: Coordination sequence Gal.5.73.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310632, there is no canonical definition to state claims against.
-/

/-! ## A310632.P6157876775905076015

`A310628(n)+A310645(n)-A310644(n)`
-/

namespace A310632.P6157876775905076015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310628 n + (A310645 n - A310644 n)

end

end A310632.P6157876775905076015

/-! ## A310632.P14452984896037996039

`A310635(n)-A001221(A287383(n))`
-/

namespace A310632.P14452984896037996039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310635 n - A001221 (A287383 n).toNat

end

end A310632.P14452984896037996039

/-! ## A310632.P3634456445018345158

`A310627(n)+A184955(A356851(n+1))`
-/

namespace A310632.P3634456445018345158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310627 n + A184955 (A356851 (n + 1)).toNat

end

end A310632.P3634456445018345158

/-! ## A310632.P7485106142912230382

`A310634(n)-A184955(A155763(n+2))`
-/

namespace A310632.P7485106142912230382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310634 n - A184955 (A155763 (n + 2)).toNat

end

end A310632.P7485106142912230382

/-! ## A310632.P11767212049159335006

`A310635(n)-A184955(A155763(n+2))`
-/

namespace A310632.P11767212049159335006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310635 n - A184955 (A155763 (n + 2)).toNat

end

end A310632.P11767212049159335006

/-!
# A310633: Coordination sequence Gal.6.146.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310633, there is no canonical definition to state claims against.
-/

/-! ## A310633.P5318067271605823845

`A310634(n)-A010894(A314325(n))`
-/

namespace A310633.P5318067271605823845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310634 n - A010894 ((A314325 n).toNat + 21)

end

end A310633.P5318067271605823845

/-! ## A310633.P9302965675313032389

`A310634(n)-A010894(A310634(n)+2)`
-/

namespace A310633.P9302965675313032389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310634 n - A010894 ((A310634 n + 2).toNat + 21)

end

end A310633.P9302965675313032389

/-!
# A310634: Coordination sequence Gal.6.237.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310634, there is no canonical definition to state claims against.
-/

/-! ## A310634.P15653173898417959114

`A310635(n)-A184955(A047309(n+1))`
-/

namespace A310634.P15653173898417959114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310635 n - A184955 (A047309 (n + 1)).toNat

end

end A310634.P15653173898417959114

/-! ## A310634.P2949842965786305512

`A310635(n)-A184955(A155763(n+1))`
-/

namespace A310634.P2949842965786305512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310635 n - A184955 (A155763 (n + 1)).toNat

end

end A310634.P2949842965786305512

/-! ## A310634.P15094330158992417969

`or(A226914(A330972(n+1)+1), A310633(n))`
-/

namespace A310634.P15094330158992417969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A226914 (A330972 (n + 1) + 1).toNat) (A310633 n)

end

end A310634.P15094330158992417969

/-! ## A310634.P12260036187751496446

`A310635(A087051(n))`
-/

namespace A310634.P12260036187751496446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310635 (A087051 n).toNat

end

end A310634.P12260036187751496446

/-! ## A310634.P118174794754571877

`A310635(A227549(n+1))`
-/

namespace A310634.P118174794754571877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310635 (A227549 (n + 1)).toNat

end

end A310634.P118174794754571877

/-!
# A310635: Coordination sequence Gal.6.139.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310635, there is no canonical definition to state claims against.
-/

/-! ## A310635.P9808994005918936776

`A310632(n)+A001221(A287383(n))`
-/

namespace A310635.P9808994005918936776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310632 n + A001221 (A287383 n).toNat

end

end A310635.P9808994005918936776

/-! ## A310635.P16628777990102104247

`A310634(n)+A184955(A155763(n+1))`
-/

namespace A310635.P16628777990102104247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310634 n + A184955 (A155763 (n + 1)).toNat

end

end A310635.P16628777990102104247

/-!
# A310636: Coordination sequence Gal.6.431.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310636, there is no canonical definition to state claims against.
-/

/-! ## A310636.P15585793031174402743

`or(A232243(A003418(n)), A310634(n))`
-/

namespace A310636.P15585793031174402743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A232243 (A003418 n).toNat) (A310634 n)

end

end A310636.P15585793031174402743

/-! ## A310636.P13552569744022567184

`A310634(n)+A101671(A083337(n))`
-/

namespace A310636.P13552569744022567184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310634 n + A101671 (A083337 n).toNat

end

end A310636.P13552569744022567184

/-! ## A310636.P333675092324782551

`A310634(n)+A010894(A314325(n+1))`
-/

namespace A310636.P333675092324782551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310634 n + A010894 ((A314325 (n + 1)).toNat + 21)

end

end A310636.P333675092324782551

/-!
# A310637: Coordination sequence Gal.6.405.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310637, there is no canonical definition to state claims against.
-/

/-! ## A310637.P7328283482847140404

`A310634(n)+A118917(A149585(n))`
-/

namespace A310637.P7328283482847140404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310634 n + A118917 (A149585 n).toNat

end

end A310637.P7328283482847140404

/-! ## A310637.P5290883500125178909

`A310635(n)+A118917(A149585(n))`
-/

namespace A310637.P5290883500125178909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310635 n + A118917 (A149585 n).toNat

end

end A310637.P5290883500125178909

/-! ## A310637.P2424339610653257872

`A310635(A087051(n))+2*A316868(n)`
-/

namespace A310637.P2424339610653257872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310635 (A087051 n).toNat + 2 * A316868 n

end

end A310637.P2424339610653257872

/-! ## A310637.P6371351781627624179

`A310634(n)+A236109(A242474(2*n+1))`
-/

namespace A310637.P6371351781627624179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310634 n + A236109 (A242474 (2 * n + 1)).toNat

end

end A310637.P6371351781627624179

/-! ## A310637.P6036335566485257630

`A310635(A227549(n+1))+A065710(A116684(n))`
-/

namespace A310637.P6036335566485257630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310635 (A227549 (n + 1)).toNat + A065710 (A116684 n).toNat

end

end A310637.P6036335566485257630

/-!
# A310638: Coordination sequence Gal.6.517.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310638, there is no canonical definition to state claims against.
-/

/-! ## A310638.P3128698307498082045

`A310617(n)+A082858(A117010(n+1))`
-/

namespace A310638.P3128698307498082045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310617 n + A082858 (A117010 (n + 1)).toNat

end

end A310638.P3128698307498082045

/-!
# A310640: Coordination sequence Gal.6.527.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310640, the canonical program `A310640.P10244443063180698314` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310640 has offset 0).

The definition of A310640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310640.P10244443063180698314

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=14, a(4)=17, a(5)=21, a(6)=28, a(7)=28, a(8)=36, a(9)=36`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A310640

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P10244443063180698314.Spec : Prop :=
  ∀ n, P10244443063180698314.a n = A310640 n

theorem P10244443063180698314.correct : P10244443063180698314.Spec := by
  intro n
  simp only [A310640]

end A310640

/-! ## A310640.P16254444854649593483

`A312587(n)-A192323(A003946(n))`
-/

namespace A310640.P16254444854649593483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312587 n - A192323 (A003946 n).toNat

end

end A310640.P16254444854649593483

namespace A310640

/-- `A312587(n)-A192323(A003946(n))` -/
def P16254444854649593483.Spec : Prop :=
  ∀ n, P16254444854649593483.a n = A310640 n

end A310640

/-! ## A310640.P1603272191714893940

`A314362(n)-A188014(A037927(n))`
-/

namespace A310640.P1603272191714893940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314362 n - A188014 (A037927 n).toNat

end

end A310640.P1603272191714893940

namespace A310640

/-- `A314362(n)-A188014(A037927(n))` -/
def P1603272191714893940.Spec : Prop :=
  ∀ n, P1603272191714893940.a n = A310640 n

end A310640

/-!
# A310642: Coordination sequence Gal.6.552.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310642, there is no canonical definition to state claims against.
-/

/-! ## A310642.P5539847780949911990

`A310643(n)-A229816(A000041(A230398(n+1)))`
-/

namespace A310642.P5539847780949911990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310643 n - A229816 (A000041 (A230398 (n + 1)).toNat).toNat

end

end A310642.P5539847780949911990

/-! ## A310642.P14718445245337392379

`A310643(n)%A053302(n+1)`
-/

namespace A310642.P14718445245337392379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310643 n) (A053302 (n + 1))

end

end A310642.P14718445245337392379

/-! ## A310642.P16126272052957855601

`A310643(n)%A057109(A000051(n))`
-/

namespace A310642.P16126272052957855601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310643 n) (A057109 (A000051 n).toNat)

end

end A310642.P16126272052957855601

/-! ## A310642.P9363128561787815011

`A322860(A006203(n+1))+A310643(n)`
-/

namespace A310642.P9363128561787815011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (A006203 (n + 1)).toNat + A310643 n

end

end A310642.P9363128561787815011

/-! ## A310642.P9359750255401555932

`A310643(n)+A229062(A277955(n+1))`
-/

namespace A310642.P9359750255401555932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310643 n + A229062 (A277955 (n + 1)).toNat

end

end A310642.P9359750255401555932

/-!
# A310644: Coordination sequence Gal.6.532.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310644, there is no canonical definition to state claims against.
-/

/-! ## A310644.P4427040705114521051

`A310628(n)+A310645(n)-A310632(n)`
-/

namespace A310644.P4427040705114521051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310628 n + (A310645 n - A310632 n)

end

end A310644.P4427040705114521051

/-!
# A310645: Coordination sequence Gal.6.531.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310645, there is no canonical definition to state claims against.
-/

/-! ## A310645.P11653787694695534512

`A310632(n)+A310644(n)-A310628(n)`
-/

namespace A310645.P11653787694695534512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310632 n + (A310644 n - A310628 n)

end

end A310645.P11653787694695534512

/-!
# A310646: Coordination sequence Gal.5.245.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310646, there is no canonical definition to state claims against.
-/

/-! ## A310646.P15128943570115026677

`A310624(n)+A310647(n)-A310629(n)`
-/

namespace A310646.P15128943570115026677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310624 n + (A310647 n - A310629 n)

end

end A310646.P15128943570115026677

/-!
# A310647: Coordination sequence Gal.6.533.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310647, there is no canonical definition to state claims against.
-/

/-! ## A310647.P11120950558934837473

`A310629(n)+A310646(n)-A310624(n)`
-/

namespace A310647.P11120950558934837473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310629 n + (A310646 n - A310624 n)

end

end A310647.P11120950558934837473

/-!
# A310648: Coordination sequence Gal.5.253.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310648, the canonical program `A310648.P3065120921307271589` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310648 has offset 0).

The definition of A310648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310648.P3065120921307271589

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=14, a(4)=20, a(5)=20, a(6)=28, a(7)=28`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A310648

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P3065120921307271589.Spec : Prop :=
  ∀ n, P3065120921307271589.a n = A310648 n

theorem P3065120921307271589.correct : P3065120921307271589.Spec := by
  intro n
  simp only [A310648]

end A310648

/-!
# A310649: Coordination sequence Gal.5.254.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310649, there is no canonical definition to state claims against.
-/

/-! ## A310649.P16510751140421457175

`A008962(A008965(2*n+1))%A008950(n+1)`
-/

namespace A310649.P16510751140421457175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008962 (A008965 (2 * n + 1)).toNat) (A008950 (n + 1))

end

end A310649.P16510751140421457175

/-!
# A310650: Coordination sequence Gal.6.547.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310650, the canonical program `A310650.P8858579892662642841` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310650 has offset 0).

The definition of A310650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310650.P8858579892662642841

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=14, a(4)=20, a(5)=26, a(6)=26, a(7)=34, a(8)=34`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A310650

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P8858579892662642841.Spec : Prop :=
  ∀ n, P8858579892662642841.a n = A310650 n

theorem P8858579892662642841.correct : P8858579892662642841.Spec := by
  intro n
  simp only [A310650]

end A310650

/-!
# A310660: Coordination sequence Gal.4.32.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310660, there is no canonical definition to state claims against.
-/

/-! ## A310660.P2524940179825778752

`A316843(A004279(n)^3)`
-/

namespace A310660.P2524940179825778752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A004279 n ^ 3).toNat

end

end A310660.P2524940179825778752

/-! ## A310660.P3554275345211953793

`A107062((n+1)*A257773(n))`
-/

namespace A310660.P3554275345211953793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107062 ((n + 1 : ℤ) * A257773 n).toNat

end

end A310660.P3554275345211953793

/-! ## A310660.P16521584297530481650

`∑[A269624(∑[A039810(n+1)])]`
-/

namespace A310660.P16521584297530481650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039810 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269624 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310660.P16521584297530481650

/-! ## A310660.P12136671621164754445

`A144201(∑[char[1]+1+n])+A084808(n+1)`
-/

namespace A310660.P12136671621164754445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144201 (∑ j ∈ Finset.range (n + 1), f1 j) + A084808 (n + 1)

end

end A310660.P12136671621164754445

/-! ## A310660.P8207891459882520355

`A084808(n+1)+A055641(A036675(n))`
-/

namespace A310660.P8207891459882520355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084808 (n + 1) + A055641 (A036675 n).toNat

end

end A310660.P8207891459882520355

/-!
# A310661: Coordination sequence Gal.3.7.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310661, there is no canonical definition to state claims against.
-/

/-! ## A310661.P6517150996899446409

`(A314382(n)+A250122(n))/2`
-/

namespace A310661.P6517150996899446409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314382 n + A250122 n : ℚ) / 2

end

end A310661.P6517150996899446409

/-! ## A310661.P15073017896380520349

`A014682(A314382(n)+A250122(n))`
-/

namespace A310661.P15073017896380520349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A314382 n + A250122 n).toNat

end

end A310661.P15073017896380520349

/-! ## A310661.P4220380225896478197

`A250122(n)+A001281(A314382(n)-A250122(n))`
-/

namespace A310661.P4220380225896478197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 n + A001281 (A314382 n - A250122 n).toNat

end

end A310661.P4220380225896478197

/-! ## A310661.P14032787292996938483

`A250122(n)+A004525(A314382(n)-A250122(n))`
-/

namespace A310661.P14032787292996938483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 n + A004525 (A314382 n - A250122 n).toNat

end

end A310661.P14032787292996938483

/-! ## A310661.P11922233052537299181

`A250122(n)+A006370(A314382(n)-A250122(n))`
-/

namespace A310661.P11922233052537299181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 n + A006370 (A314382 n - A250122 n).toNat

end

end A310661.P11922233052537299181

/-! ## A310661.P6469589725852961931

`A250122(n)+A026741(A314382(n)-A250122(n))`
-/

namespace A310661.P6469589725852961931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 n + A026741 (A314382 n - A250122 n).toNat

end

end A310661.P6469589725852961931

/-! ## A310661.P213997012591153502

`A250122(n)+A029578(A314382(n)-A250122(n))`
-/

namespace A310661.P213997012591153502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 n + A029578 (A314382 n - A250122 n).toNat

end

end A310661.P213997012591153502

/-! ## A310661.P9792236418379490390

`A314382(n)-A004526(A314382(n)-A250122(n))`
-/

namespace A310661.P9792236418379490390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314382 n - A004526 (A314382 n - A250122 n).toNat

end

end A310661.P9792236418379490390

/-! ## A310661.P15136736053142047318

`A001281(A314382(n)+A250122(n))`
-/

namespace A310661.P15136736053142047318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A314382 n + A250122 n).toNat

end

end A310661.P15136736053142047318

/-! ## A310661.P881396790988619419

`A004525(A314382(n)+A250122(n))`
-/

namespace A310661.P881396790988619419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314382 n + A250122 n).toNat

end

end A310661.P881396790988619419

/-! ## A310661.P15648190539794497649

`A004526(A314382(n)+A250122(n))`
-/

namespace A310661.P15648190539794497649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A314382 n + A250122 n).toNat

end

end A310661.P15648190539794497649

/-! ## A310661.P4048470438741139860

`A006370(A314382(n)+A250122(n))`
-/

namespace A310661.P4048470438741139860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A314382 n + A250122 n).toNat

end

end A310661.P4048470438741139860

/-! ## A310661.P506565129495163711

`A026741(A314382(n)+A250122(n))`
-/

namespace A310661.P506565129495163711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A314382 n + A250122 n).toNat

end

end A310661.P506565129495163711

/-! ## A310661.P12335940113813493115

`A029578(A314382(n)+A250122(n))`
-/

namespace A310661.P12335940113813493115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A314382 n + A250122 n).toNat

end

end A310661.P12335940113813493115

/-! ## A310661.P7005298489542724191

`A032742(A314382(n)+A250122(n))`
-/

namespace A310661.P7005298489542724191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A314382 n + A250122 n).toNat

end

end A310661.P7005298489542724191

/-! ## A310661.P12489263899392120077

`A065033(A314382(n)+A250122(n))`
-/

namespace A310661.P12489263899392120077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A314382 n + A250122 n).toNat

end

end A310661.P12489263899392120077

/-! ## A310661.P725120212720323131

`A065033(A250122(n)-(1-A314382(n)))`
-/

namespace A310661.P725120212720323131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A250122 n - (1 - A314382 n)).toNat

end

end A310661.P725120212720323131

/-!
# A310662: Coordination sequence Gal.5.42.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310662, there is no canonical definition to state claims against.
-/

/-! ## A310662.P16412022005268554621

`∑[A001222(A232215(n)+A155212(n))]`
-/

namespace A310662.P16412022005268554621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A232215 n + A155212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310662.P16412022005268554621

/-!
# A310664: Coordination sequence Gal.3.8.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310664, there is no canonical definition to state claims against.
-/

/-! ## A310664.P11281683331386165466

`∑[A329359(A080670(n+1))]+n`
-/

namespace A310664.P11281683331386165466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329359 (A080670 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A310664.P11281683331386165466

/-! ## A310664.P13629382110728064088

`A161785(n+1)-A327051(A161787(n+1))`
-/

namespace A310664.P13629382110728064088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161785 (n + 1) - A327051 (A161787 (n + 1)).toNat

end

end A310664.P13629382110728064088

/-!
# A310668: Coordination sequence Gal.4.30.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310668, there is no canonical definition to state claims against.
-/

/-! ## A310668.P3348286309278920513

`record[A094263(A004757(n+1))]`
-/

namespace A310668.P3348286309278920513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094263 (A004757 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310668.P3348286309278920513

/-! ## A310668.P9164397465219594068

`A064097(A337717(n+3))+ceil(3*n/2)`
-/

namespace A310668.P9164397465219594068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A337717 (n + 3)).toNat + ⌈3 * ((n : ℚ) / 2)⌉

end

end A310668.P9164397465219594068

/-! ## A310668.P11131120304302515686

`A101881(n)+A001222(A006234(n+3))`
-/

namespace A310668.P11131120304302515686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n + A001222 (A006234 (n + 3)).toNat

end

end A310668.P11131120304302515686

/-! ## A310668.P4635394032127312607

`A000720(A299770(n+1)+A083434(n+1))`
-/

namespace A310668.P4635394032127312607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A299770 (n + 1) + A083434 (n + 1)).toNat

end

end A310668.P4635394032127312607

/-! ## A310668.P8411996423659509030

`A338722(n+1)+A266672(A001008(n+1))`
-/

namespace A310668.P8411996423659509030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338722 (n + 1) + A266672 (A001008 (n + 1)).toNat

end

end A310668.P8411996423659509030

/-!
# A310670: Coordination sequence Gal.4.36.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310670, there is no canonical definition to state claims against.
-/

/-! ## A310670.P10428700105057315015

`A315219(A062399(n))-A057354(A315219(n))`
-/

namespace A310670.P10428700105057315015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315219 (A062399 n).toNat - A057354 (A315219 n).toNat

end

end A310670.P10428700105057315015

/-! ## A310670.P18050860577432447214

`A315220(A062399(n))-A057354(A315220(n))`
-/

namespace A310670.P18050860577432447214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315220 (A062399 n).toNat - A057354 (A315220 n).toNat

end

end A310670.P18050860577432447214

/-! ## A310670.P5919851397575401934

`A315219(A120126(n))-A057354(A315219(n))`
-/

namespace A310670.P5919851397575401934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315219 (A120126 n).toNat - A057354 (A315219 n).toNat

end

end A310670.P5919851397575401934

/-! ## A310670.P12272233320831400030

`A315220(A120126(n))-A057354(A315220(n))`
-/

namespace A310670.P12272233320831400030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315220 (A120126 n).toNat - A057354 (A315220 n).toNat

end

end A310670.P12272233320831400030

/-! ## A310670.P2414075282748275562

`A315219(A351870(n))-A057354(A315219(n))`
-/

namespace A310670.P2414075282748275562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315219 (A351870 n).toNat - A057354 (A315219 n).toNat

end

end A310670.P2414075282748275562

/-!
# A310671: Coordination sequence Gal.4.37.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310671, there is no canonical definition to state claims against.
-/

/-! ## A310671.P8742439633237253199

`A310664(n)+A063725(A080874(n))`
-/

namespace A310671.P8742439633237253199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310664 n + A063725 (A080874 n).toNat

end

end A310671.P8742439633237253199

/-! ## A310671.P4921477482199306650

`∑[A001222(A215007(n)+A002313(n+1))]`
-/

namespace A310671.P4921477482199306650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A215007 n + A002313 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310671.P4921477482199306650

/-! ## A310671.P13943410073991351604

`A276213(n+1)-A228710(A072827(n+1))`
-/

namespace A310671.P13943410073991351604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276213 (n + 1) - A228710 (A072827 (n + 1)).toNat

end

end A310671.P13943410073991351604

/-! ## A310671.P15249764690175529297

`A061775(A193215(n+1)+1)+2*n-A341629(A121352(n))`
-/

namespace A310671.P15249764690175529297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A193215 (n + 1) + 1).toNat + (2 * n : ℤ) - A341629 (A121352 n).toNat

end

end A310671.P15249764690175529297

/-!
# A310675: Coordination sequence Gal.6.109.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310675, there is no canonical definition to state claims against.
-/

/-! ## A310675.P16111730224256913095

`A301293(n)+A310937(n)-A312849(n)`
-/

namespace A310675.P16111730224256913095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + (A310937 n - A312849 n)

end

end A310675.P16111730224256913095

/-! ## A310675.P10409306764686786139

`A004277(A311095(n))-A301293(n)`
-/

namespace A310675.P10409306764686786139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311095 n).toNat - A301293 n

end

end A310675.P10409306764686786139

/-!
# A310676: Coordination sequence Gal.6.109.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310676, there is no canonical definition to state claims against.
-/

/-! ## A310676.P6511062159481504648

`∑[A190311(∑[A190356(n+1)])]`
-/

namespace A310676.P6511062159481504648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190356 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190311 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310676.P6511062159481504648

/-! ## A310676.P12460807038725859702

`A079365(A079346(n+1))+A079358(2*n+1)`
-/

namespace A310676.P12460807038725859702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079365 (A079346 (n + 1)).toNat + A079358 (2 * n + 1)

end

end A310676.P12460807038725859702

/-! ## A310676.P5400492992745200049

`A079365(A079326(n+2))+A079358(2*n+1)`
-/

namespace A310676.P5400492992745200049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079365 (A079326 (n + 2)).toNat + A079358 (2 * n + 1)

end

end A310676.P5400492992745200049

/-!
# A310677: Coordination sequence Gal.6.99.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310677, there is no canonical definition to state claims against.
-/

/-! ## A310677.P1499762577482097033

`A008619(A111499(2*(n+1)))-A002321(A307308(n+1))`
-/

namespace A310677.P1499762577482097033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A111499 (2 * (n + 1))).toNat - A002321 (A307308 (n + 1)).toNat

end

end A310677.P1499762577482097033

/-! ## A310677.P9349366180836334294

`A023443(A059550(n+1)-n)-A002321(A307308(n+1))`
-/

namespace A310677.P9349366180836334294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A059550 (n + 1) - (n : ℤ)).toNat - A002321 (A307308 (n + 1)).toNat

end

end A310677.P9349366180836334294

/-!
# A310678: Coordination sequence Gal.6.84.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310678, there is no canonical definition to state claims against.
-/

/-! ## A310678.P4044323339996058254

`A103762(n+1)+A079066(A000108(n))`
-/

namespace A310678.P4044323339996058254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103762 (n + 1) + A079066 (A000108 n).toNat

end

end A310678.P4044323339996058254

/-! ## A310678.P8934623151613519789

`A263837(3*n+2)-A351202(A250120(2*n))`
-/

namespace A310678.P8934623151613519789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (3 * n + 2) - A351202 (A250120 (2 * n)).toNat

end

end A310678.P8934623151613519789

/-! ## A310678.P17721213736576045727

`A186327(A088232(n+1))%A004220(A293797(n+3))`
-/

namespace A310678.P17721213736576045727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186327 (A088232 (n + 1)).toNat) (A004220 (A293797 (n + 3)).toNat)

end

end A310678.P17721213736576045727

/-!
# A310679: Coordination sequence Gal.6.42.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310679, there is no canonical definition to state claims against.
-/

/-! ## A310679.P8642145779746563662

`eq[ceil(n/9), A088530(n+2)]+2*n`
-/

namespace A310679.P8642145779746563662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 9⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2 * n

end

end A310679.P8642145779746563662

/-! ## A310679.P4397888095902928355

`A117136(A036647(n))+A008585(n)`
-/

namespace A310679.P4397888095902928355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117136 (A036647 n).toNat + A008585 n

end

end A310679.P4397888095902928355

/-! ## A310679.P1729272355202177168

`A177151(A161350(n+1)+A008574(n))`
-/

namespace A310679.P1729272355202177168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A161350 (n + 1) + A008574 n).toNat

end

end A310679.P1729272355202177168

/-! ## A310679.P8215228586708031673

`A056239(A000040(3*n+1)*A111696(n))`
-/

namespace A310679.P8215228586708031673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A000040 (3 * n + 1) * A111696 n).toNat

end

end A310679.P8215228586708031673

/-! ## A310679.P1019882758763856141

`A330780(A100164(n+1))`
-/

namespace A310679.P1019882758763856141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330780 (A100164 (n + 1)).toNat

end

end A310679.P1019882758763856141

/-!
# A310680: Coordination sequence Gal.5.4.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310680, there is no canonical definition to state claims against.
-/

/-! ## A310680.P12077473152619513450

`∑[A346388(Δ[A048815(n)])]`
-/

namespace A310680.P12077473152619513450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048815 (n + 11)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346388 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310680.P12077473152619513450

/-! ## A310680.P11716464541016848562

`∑[A134852(A003479(n))+1]`
-/

namespace A310680.P11716464541016848562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134852 (A003479 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310680.P11716464541016848562

/-! ## A310680.P12305379932389073318

`∑[A125768(A127633(n+1))]`
-/

namespace A310680.P12305379932389073318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125768 (A127633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310680.P12305379932389073318

/-! ## A310680.P10794812590505223881

`A333321(n)+record[A171172(n+1)]`
-/

namespace A310680.P10794812590505223881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333321 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310680.P10794812590505223881

/-! ## A310680.P3367575575766308254

`A243903(A033060(n+1)+2*n)`
-/

namespace A310680.P3367575575766308254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (A033060 (n + 1) + (2 * n : ℤ)).toNat

end

end A310680.P3367575575766308254

/-!
# A310681: Coordination sequence Gal.6.99.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310681, there is no canonical definition to state claims against.
-/

/-! ## A310681.P9668732093339260466

`∑[A194003(∑[A066375(n+1)])]`
-/

namespace A310681.P9668732093339260466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066375 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194003 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310681.P9668732093339260466

/-! ## A310681.P12769523666862316236

`∑[A132399(A038041(n+1)+1)]`
-/

namespace A310681.P12769523666862316236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132399 (A038041 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310681.P12769523666862316236

/-! ## A310681.P7190480516485889959

`A123580(floor(A265429(n)+sqrt(n))+n)`
-/

namespace A310681.P7190480516485889959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (⌊(A265429 n : ℝ) + Real.sqrt (n : ℝ)⌋ + (n : ℤ)).toNat

end

end A310681.P7190480516485889959

/-! ## A310681.P5503915829072460896

`A346132(3*n+2)-Δ[A255805(n+1)]`
-/

namespace A310681.P5503915829072460896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (3 * n + 2) - (f1 (n + 1) - f1 n)

end

end A310681.P5503915829072460896

/-! ## A310681.P4168255867577577849

`A346132(3*n+2)-Δ[A325368(n+1)]`
-/

namespace A310681.P4168255867577577849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (3 * n + 2) - (f1 (n + 1) - f1 n)

end

end A310681.P4168255867577577849

/-!
# A310684: Coordination sequence Gal.6.84.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310684, there is no canonical definition to state claims against.
-/

/-! ## A310684.P5189379092717609912

`∑[A237053(A322440(n+2)²)]`
-/

namespace A310684.P5189379092717609912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A322440 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310684.P5189379092717609912

/-! ## A310684.P5793401782934553649

`A185603(n+1)+record[A133911(n+1)]`
-/

namespace A310684.P5793401782934553649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185603 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310684.P5793401782934553649

/-! ## A310684.P16456665988316866922

`A121900(A339156(n+1)+A158666(n))`
-/

namespace A310684.P16456665988316866922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A339156 (n + 1) + A158666 n).toNat

end

end A310684.P16456665988316866922

/-! ## A310684.P5393950311873627457

`A209211(3*n+2)/A016789(A348798(n))`
-/

namespace A310684.P5393950311873627457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209211 (3 * n + 2) : ℚ) / (A016789 (A348798 n).toNat : ℚ)

end

end A310684.P5393950311873627457

/-! ## A310684.P6375753805407865731

`A209211(3*n+2)/A040224(A198437(n+1))`
-/

namespace A310684.P6375753805407865731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209211 (3 * n + 2) : ℚ) / (A040224 (A198437 (n + 1)).toNat : ℚ)

end

end A310684.P6375753805407865731

/-!
# A310685: Coordination sequence Gal.6.31.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310685, there is no canonical definition to state claims against.
-/

/-! ## A310685.P3465999976673675217

`A285134(2*n+1)+A245171(A245173(n))`
-/

namespace A310685.P3465999976673675217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285134 (2 * n + 1) + A245171 (A245173 n).toNat

end

end A310685.P3465999976673675217

/-!
# A310686: Coordination sequence Gal.4.81.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310686, there is no canonical definition to state claims against.
-/

/-! ## A310686.P17908445188412761833

`A188069(n+1)-A125070(A294696(n))`
-/

namespace A310686.P17908445188412761833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1) - A125070 (A294696 n).toNat

end

end A310686.P17908445188412761833

/-! ## A310686.P7559257707170708986

`A363858(A000108(n))+A250251(3*n+1)`
-/

namespace A310686.P7559257707170708986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363858 (A000108 n).toNat + A250251 (3 * n + 1)

end

end A310686.P7559257707170708986

/-! ## A310686.P2293554274239189636

`∑[A132468(A317553(n+1)+A304246(n+4))]`
-/

namespace A310686.P2293554274239189636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132468 (A317553 (n + 1) + A304246 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310686.P2293554274239189636

/-! ## A310686.P2834149448286376505

`A004829(3*n+1)+A001055(A176500(n+1))`
-/

namespace A310686.P2834149448286376505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004829 (3 * n + 1) + A001055 (A176500 (n + 1)).toNat

end

end A310686.P2834149448286376505

/-! ## A310686.P1427654403777793490

`A276084(A152474(3*n+1))+A004829(3*n+2)`
-/

namespace A310686.P1427654403777793490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A152474 (3 * n + 1)).toNat + A004829 (3 * n + 2)

end

end A310686.P1427654403777793490

/-!
# A310687: Coordination sequence Gal.3.5.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310687, there is no canonical definition to state claims against.
-/

/-! ## A310687.P11275411466421425604

`A285899(n+2)-A008836(A293736(n))`
-/

namespace A310687.P11275411466421425604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285899 (n + 2) - A008836 (A293736 n).toNat

end

end A310687.P11275411466421425604

/-! ## A310687.P13212257259463181368

`∑[A030496(A235147(n+4)+A229226(n))]`
-/

namespace A310687.P13212257259463181368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A235147 (n + 4) + A229226 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310687.P13212257259463181368

/-! ## A310687.P2549320474526665055

`A048265(3*n+1)-A093555(A192476(n+1))`
-/

namespace A310687.P2549320474526665055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048265 (3 * n + 1) - A093555 (A192476 (n + 1)).toNat

end

end A310687.P2549320474526665055

/-!
# A310688: Coordination sequence Gal.6.102.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310688, there is no canonical definition to state claims against.
-/

/-! ## A310688.P6031489238219528427

`A316495(3*n+2)-A334028(A000041(n+1))`
-/

namespace A310688.P6031489238219528427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (3 * n + 2) - A334028 (A000041 (n + 1)).toNat

end

end A310688.P6031489238219528427

/-! ## A310688.P8684792724424989059

`∑[A086288(A086252(n+1))]+n`
-/

namespace A310688.P8684792724424989059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086288 (A086252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A310688.P8684792724424989059

/-! ## A310688.P15127364189960088584

`A339927(A067720(n+1))+3*n+1`
-/

namespace A310688.P15127364189960088584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339927 (A067720 (n + 1)).toNat + (3 * n + 1 : ℤ)

end

end A310688.P15127364189960088584

/-! ## A310688.P10940694760356740385

`A345197(A111544(n))+A080197(3*n+1)`
-/

namespace A310688.P10940694760356740385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345197 (A111544 n).toNat + A080197 (3 * n + 1)

end

end A310688.P10940694760356740385

/-!
# A310689: Coordination sequence Gal.5.36.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310689, there is no canonical definition to state claims against.
-/

/-! ## A310689.P2317529510384575573

`A311150(n)-A008616(A227133(n+1))`
-/

namespace A310689.P2317529510384575573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311150 n - A008616 (A227133 (n + 1)).toNat

end

end A310689.P2317529510384575573

/-! ## A310689.P16938674468718080954

`floor(A056556(A341405(n))+sqrt(n))`
-/

namespace A310689.P16938674468718080954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056556 (A341405 n).toNat : ℝ) + Real.sqrt (n : ℝ)⌋

end

end A310689.P16938674468718080954

/-! ## A310689.P14812363360381214556

`∑[A002828(A192146(n+1))+1]`
-/

namespace A310689.P14812363360381214556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A192146 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310689.P14812363360381214556

/-! ## A310689.P2484616738744832497

`∑[A001221(A260086(n+3))]-2`
-/

namespace A310689.P2484616738744832497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A260086 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A310689.P2484616738744832497

/-! ## A310689.P6359385068485728542

`∑[A001221(A259933(2*n+5))]-2`
-/

namespace A310689.P6359385068485728542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A259933 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A310689.P6359385068485728542

/-!
# A310690: Coordination sequence Gal.4.25.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310690, there is no canonical definition to state claims against.
-/

/-! ## A310690.P17039440409816747348

`∑[A000120(A227133(n+1)+A160020(n))]`
-/

namespace A310690.P17039440409816747348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A227133 (n + 1) + A160020 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310690.P17039440409816747348

/-! ## A310690.P10114054709215004738

`A079978(A241638(3*n+4))+A001614(2*n+1)`
-/

namespace A310690.P10114054709215004738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A241638 (3 * n + 4)).toNat + A001614 (2 * n + 1)

end

end A310690.P10114054709215004738

/-! ## A310690.P3404344468488435352

`A213707(n+1)-A213718(A213678(n))`
-/

namespace A310690.P3404344468488435352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213707 (n + 1) - A213718 (A213678 n).toNat

end

end A310690.P3404344468488435352

/-! ## A310690.P1829613335700976331

`A247157(n+1)-A001222(A097306(n+1))`
-/

namespace A310690.P1829613335700976331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247157 (n + 1) - A001222 (A097306 (n + 1)).toNat

end

end A310690.P1829613335700976331

/-! ## A310690.P18445945357913077709

`A329138(3*n+1)-A000122(A255378(n))`
-/

namespace A310690.P18445945357913077709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329138 (3 * n + 1) - A000122 (A255378 n).toNat

end

end A310690.P18445945357913077709

/-!
# A310691: Coordination sequence Gal.4.81.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310691, there is no canonical definition to state claims against.
-/

/-! ## A310691.P14935649849626628851

`A091243(A121420(n))+A008407(n+1)`
-/

namespace A310691.P14935649849626628851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091243 (A121420 n).toNat + A008407 (n + 1)

end

end A310691.P14935649849626628851

/-! ## A310691.P2487444049977712407

`A001481(2*n+3)-A109337(A000032(n))`
-/

namespace A310691.P2487444049977712407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (2 * n + 3) - A109337 (A000032 n).toNat

end

end A310691.P2487444049977712407

/-! ## A310691.P8587655157235047274

`∑[A060117(A287400(n+1)+9*A139756(n))]`
-/

namespace A310691.P8587655157235047274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060117 (A287400 (n + 1) + 9 * A139756 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310691.P8587655157235047274

/-! ## A310691.P1695063162222679449

`∑[A300959(A000110(n))]-2`
-/

namespace A310691.P1695063162222679449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300959 (A000110 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A310691.P1695063162222679449

/-! ## A310691.P18390816771426146239

`∑[A329362(∑[A084092(n+1)])]`
-/

namespace A310691.P18390816771426146239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084092 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310691.P18390816771426146239

/-!
# A310692: Coordination sequence Gal.4.26.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310692, there is no canonical definition to state claims against.
-/

/-! ## A310692.P101678123403090179

`A354581(3*n)+A293606(A094544(n))`
-/

namespace A310692.P101678123403090179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354581 (3 * n) + A293606 (A094544 n).toNat

end

end A310692.P101678123403090179

/-! ## A310692.P12313404205893325364

`A354581(3*n+1)-A079979(A019307(n+2))`
-/

namespace A310692.P12313404205893325364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354581 (3 * n + 1) - A079979 (A019307 (n + 2)).toNat

end

end A310692.P12313404205893325364

/-! ## A310692.P17521397973182895608

`A353852(3*n)+A014086(A000129(n))`
-/

namespace A310692.P17521397973182895608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353852 (3 * n) + A014086 (A000129 n).toNat

end

end A310692.P17521397973182895608

/-! ## A310692.P9099504112613999330

`∑[A126071(∑[A032561(n+2)])]`
-/

namespace A310692.P9099504112613999330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032561 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126071 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310692.P9099504112613999330

/-! ## A310692.P10362579240688994828

`∑[A001221(A026585(n+4))]+n`
-/

namespace A310692.P10362579240688994828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A026585 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A310692.P10362579240688994828

/-!
# A310695: Coordination sequence Gal.6.87.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310695, there is no canonical definition to state claims against.
-/

/-! ## A310695.P6785203547311720701

`∑[A257079(A022629(2*n)+3)]`
-/

namespace A310695.P6785203547311720701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 (A022629 (2 * n) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310695.P6785203547311720701

/-! ## A310695.P16145746207470691534

`round(A007051(3*n)/A136753(3*n+1))`
-/

namespace A310695.P16145746207470691534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007051 (3 * n) : ℚ) / (A136753 (3 * n + 1) : ℚ))

end

end A310695.P16145746207470691534

/-! ## A310695.P16507333821888397634

`lt[A104616(3*(n+1)), Δ[A002384(n+2)]]`
-/

namespace A310695.P16507333821888397634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104616 (3 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310695.P16507333821888397634

/-! ## A310695.P12096525872176746601

`A311289(n)-A001222(A279570(n))`
-/

namespace A310695.P12096525872176746601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n - A001222 (A279570 n).toNat

end

end A310695.P12096525872176746601

/-!
# A310696: Coordination sequence Gal.6.81.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310696, there is no canonical definition to state claims against.
-/

/-! ## A310696.P17209558992707980536

`A336469(A026523(n+3))+A247160(3*n+1)`
-/

namespace A310696.P17209558992707980536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336469 (A026523 (n + 3)).toNat + A247160 (3 * n + 1)

end

end A310696.P17209558992707980536

/-! ## A310696.P10404683033011319707

`∑[A098037(∑[A367111(n)])]`
-/

namespace A310696.P10404683033011319707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367111 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098037 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310696.P10404683033011319707

/-! ## A310696.P4063970669073510890

`A057428(n)+A314689(n)-A028391(A351870(n))`
-/

namespace A310696.P4063970669073510890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A314689 n - A028391 (A351870 n).toNat)

end

end A310696.P4063970669073510890

/-! ## A310696.P9460533594422585716

`A057428(n)-(A028391(n)-A314689(A351870(n)))`
-/

namespace A310696.P9460533594422585716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n - (A028391 n - A314689 (A351870 n).toNat)

end

end A310696.P9460533594422585716

/-! ## A310696.P11218455078918067679

`A314689(A351870(n))-A028391(n)-(1-A000122(n))²`
-/

namespace A310696.P11218455078918067679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314689 (A351870 n).toNat - A028391 n - (1 - A000122 n) ^ 2

end

end A310696.P11218455078918067679

/-!
# A310697: Coordination sequence Gal.6.103.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310697, there is no canonical definition to state claims against.
-/

/-! ## A310697.P2178155601344363810

`A008574(n)-A107393(A104113(n+1))`
-/

namespace A310697.P2178155601344363810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A107393 (A104113 (n + 1)).toNat

end

end A310697.P2178155601344363810

/-! ## A310697.P11333023075358701240

`∑[A109082(∑[A235660(n+1)])]`
-/

namespace A310697.P11333023075358701240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235660 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310697.P11333023075358701240

/-! ## A310697.P3554502998112555561

`A008574(n)-A053838(A107239(n))`
-/

namespace A310697.P3554502998112555561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A053838 (A107239 n).toNat

end

end A310697.P3554502998112555561

/-! ## A310697.P3000604458269589414

`A008574(n)-A051903(A331621(n))`
-/

namespace A310697.P3000604458269589414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A051903 (A331621 n).toNat

end

end A310697.P3000604458269589414

/-! ## A310697.P11307668997765465469

`∑[A007862(A192990(n)+6)]`
-/

namespace A310697.P11307668997765465469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A192990 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310697.P11307668997765465469

/-!
# A310698: Coordination sequence Gal.6.2.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310698, there is no canonical definition to state claims against.
-/

/-! ## A310698.P10260645994703531258

`A182049(3*n+1)+A048883(A347419(n+1))`
-/

namespace A310698.P10260645994703531258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182049 (3 * n + 1) + A048883 (A347419 (n + 1)).toNat

end

end A310698.P10260645994703531258

/-! ## A310698.P12742774586061110196

`A373953(A003242(n))+A008585(n)`
-/

namespace A310698.P12742774586061110196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A003242 n).toNat + A008585 n

end

end A310698.P12742774586061110196

/-! ## A310698.P13995455899231039885

`A220128(A249460(n))+A022844(n)`
-/

namespace A310698.P13995455899231039885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220128 (A249460 n).toNat + A022844 n

end

end A310698.P13995455899231039885

/-! ## A310698.P1684205018666602117

`A024675(n+1)-A112603(A007051(n))`
-/

namespace A310698.P1684205018666602117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A112603 (A007051 n).toNat

end

end A310698.P1684205018666602117

/-! ## A310698.P13471706752783941617

`A373953(A003242(n))+A271143(3*n+1)`
-/

namespace A310698.P13471706752783941617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A003242 n).toNat + A271143 (3 * n + 1)

end

end A310698.P13471706752783941617

/-!
# A310699: Coordination sequence Gal.6.38.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310699, there is no canonical definition to state claims against.
-/

/-! ## A310699.P665269235741238736

`A037872(A329008(n+1))+A016777(n)`
-/

namespace A310699.P665269235741238736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037872 (A329008 (n + 1)).toNat + A016777 n

end

end A310699.P665269235741238736

/-! ## A310699.P41772398791495437

`A182049(3*(n+1))-A182038(A182063(2*n+1))`
-/

namespace A310699.P41772398791495437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182049 (3 * (n + 1)) - A182038 (A182063 (2 * n + 1)).toNat

end

end A310699.P41772398791495437

