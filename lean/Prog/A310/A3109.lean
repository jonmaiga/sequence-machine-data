import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C001
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
# A310900: Coordination sequence Gal.6.422.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310900, there is no canonical definition to state claims against.
-/

/-! ## A310900.P12874926787013018337

`∑[A381926(∑[A347959(3^n)+1])]`
-/

namespace A310900.P12874926787013018337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347959 (3 ^ n) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381926 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310900.P12874926787013018337

/-! ## A310900.P15948022453505394407

`A250120(n)-A345345(A034730(n+1))`
-/

namespace A310900.P15948022453505394407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A345345 (A034730 (n + 1)).toNat

end

end A310900.P15948022453505394407

/-! ## A310900.P2077480649206336188

`∑[A136758(A000108(n+1))+A056924(n+1)]`
-/

namespace A310900.P2077480649206336188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136758 (A000108 (n + 1)).toNat + A056924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310900.P2077480649206336188

/-! ## A310900.P16404861337428775269

`A256882(n+1)+A060236(A341484(3*n+7))`
-/

namespace A310900.P16404861337428775269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256882 (n + 1) + A060236 (A341484 (3 * n + 7)).toNat

end

end A310900.P16404861337428775269

/-! ## A310900.P10134632444205060683

`A047309(2*n+1)+A004273(n)-A345345(A034730(n+1))`
-/

namespace A310900.P10134632444205060683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (2 * n + 1) + A004273 n - A345345 (A034730 (n + 1)).toNat

end

end A310900.P10134632444205060683

/-!
# A310901: Coordination sequence Gal.4.22.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310901, there is no canonical definition to state claims against.
-/

/-! ## A310901.P13200347022521295647

`eq[2, A296150(A162822(n+1))]`
-/

namespace A310901.P13200347022521295647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (A162822 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A310901.P13200347022521295647

/-! ## A310901.P11402958581690935769

`A029837(A118044(n))+A000059(n+1)`
-/

namespace A310901.P11402958581690935769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A118044 n).toNat + A000059 (n + 1)

end

end A310901.P11402958581690935769

/-! ## A310901.P2624441399052675745

`A373586(n+1)+A056239(A025192(n))`
-/

namespace A310901.P2624441399052675745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1) + A056239 (A025192 n).toNat

end

end A310901.P2624441399052675745

/-! ## A310901.P11107449555433103119

`A250120(n)-A241419(A032555(n+1))`
-/

namespace A310901.P11107449555433103119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A241419 (A032555 (n + 1)).toNat

end

end A310901.P11107449555433103119

/-! ## A310901.P11397747191116756994

`A250120(n)-A374706(A002182(n+1))`
-/

namespace A310901.P11397747191116756994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A374706 (A002182 (n + 1)).toNat

end

end A310901.P11397747191116756994

/-!
# A310902: Coordination sequence Gal.6.405.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310902, there is no canonical definition to state claims against.
-/

/-! ## A310902.P18172776764375639703

`A314532(n)-A189723(A350947(n+1))`
-/

namespace A310902.P18172776764375639703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314532 n - A189723 (A350947 (n + 1)).toNat

end

end A310902.P18172776764375639703

/-! ## A310902.P16297080808159513741

`A250120(n)-A001222(A296001(n))`
-/

namespace A310902.P16297080808159513741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001222 (A296001 n).toNat

end

end A310902.P16297080808159513741

/-! ## A310902.P40292533347023240

`A313045(n)-A191254(A001160(n+1))`
-/

namespace A310902.P40292533347023240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313045 n - A191254 (A001160 (n + 1)).toNat

end

end A310902.P40292533347023240

/-! ## A310902.P1804611315429937662

`A250120(n)-A334028(A358505(n+1))`
-/

namespace A310902.P1804611315429937662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A334028 (A358505 (n + 1)).toNat

end

end A310902.P1804611315429937662

/-!
# A310903: Coordination sequence Gal.6.420.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310903, there is no canonical definition to state claims against.
-/

/-! ## A310903.P14752993967024784490

`A312715(n)-A101688(A000244(n))`
-/

namespace A310903.P14752993967024784490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312715 n - A101688 (A000244 n).toNat

end

end A310903.P14752993967024784490

/-! ## A310903.P10153503693250391508

`or(A085144(A148746(n)), A310861(n))`
-/

namespace A310903.P10153503693250391508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085144 (A148746 n).toNat) (A310861 n)

end

end A310903.P10153503693250391508

/-! ## A310903.P15245666266910567672

`or(A001221(A006920(n+1)), A310861(n))`
-/

namespace A310903.P15245666266910567672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A006920 (n + 1)).toNat) (A310861 n)

end

end A310903.P15245666266910567672

/-! ## A310903.P16475597183285135515

`or(A001221(A266913(n+1)), A310861(n))`
-/

namespace A310903.P16475597183285135515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A266913 (n + 1)).toNat) (A310861 n)

end

end A310903.P16475597183285135515

/-!
# A310904: Coordination sequence Gal.6.534.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310904, there is no canonical definition to state claims against.
-/

/-! ## A310904.P18382870327563353692

`A310861(n)+A001221(A205800(n))`
-/

namespace A310904.P18382870327563353692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310861 n + A001221 (A205800 n).toNat

end

end A310904.P18382870327563353692

/-! ## A310904.P5135281834300808931

`or(A121373(A288770(n+4)), A310868(n))`
-/

namespace A310904.P5135281834300808931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A121373 (A288770 (n + 4)).toNat) (A310868 n)

end

end A310904.P5135281834300808931

/-! ## A310904.P9221460870145674695

`A310861(n*A287377(n))+A057354(A326846(n+1))`
-/

namespace A310904.P9221460870145674695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310861 ((n : ℤ) * A287377 n).toNat + A057354 (A326846 (n + 1)).toNat

end

end A310904.P9221460870145674695

/-!
# A310905: Coordination sequence Gal.4.114.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310905, there is no canonical definition to state claims against.
-/

/-! ## A310905.P1871104611081757676

`A310810(n)+A189084(A004110(n))`
-/

namespace A310905.P1871104611081757676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310810 n + A189084 (A004110 n).toNat

end

end A310905.P1871104611081757676

/-! ## A310905.P15296792363840836109

`A310916(n)-A014724(A014717(n))`
-/

namespace A310905.P15296792363840836109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310916 n - A014724 (A014717 n).toNat

end

end A310905.P15296792363840836109

/-! ## A310905.P341023517583427582

`A310916(n)-A101637(A000142(n))`
-/

namespace A310905.P341023517583427582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310916 n - A101637 (A000142 n).toNat

end

end A310905.P341023517583427582

/-! ## A310905.P13817837073558625167

`A310916(n)-A368413(A310903(2*(n+2)))`
-/

namespace A310905.P13817837073558625167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310916 n - A368413 (A310903 (2 * (n + 2))).toNat

end

end A310905.P13817837073558625167

/-!
# A310906: Coordination sequence Gal.6.403.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310906, there is no canonical definition to state claims against.
-/

/-! ## A310906.P5759597140674825366

`A314492(n)-A083890(A259033(n))`
-/

namespace A310906.P5759597140674825366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314492 n - A083890 (A259033 n).toNat

end

end A310906.P5759597140674825366

/-! ## A310906.P14723600082322634711

`A333224(A004394(n+1))+A333217(2*n+1)`
-/

namespace A310906.P14723600082322634711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (A004394 (n + 1)).toNat + A333217 (2 * n + 1)

end

end A310906.P14723600082322634711

/-! ## A310906.P1418702669210299977

`A066926(n+1)-A287455(A264614(3*n+1))`
-/

namespace A310906.P1418702669210299977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066926 (n + 1) - A287455 (A264614 (3 * n + 1)).toNat

end

end A310906.P1418702669210299977

/-!
# A310907: Coordination sequence Gal.5.239.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310907, there is no canonical definition to state claims against.
-/

/-! ## A310907.P11597231019345342048

`A310908(n)-A347519(A002992(n))`
-/

namespace A310907.P11597231019345342048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310908 n - A347519 (A002992 n).toNat

end

end A310907.P11597231019345342048

/-! ## A310907.P7156725890168471812

`A312727(n)-A267635(A290929(n))`
-/

namespace A310907.P7156725890168471812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312727 n - A267635 (A290929 n).toNat

end

end A310907.P7156725890168471812

/-! ## A310907.P3586924807568292122

`A310917(n)-A316869(A384071(n))`
-/

namespace A310907.P3586924807568292122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310917 n - A316869 (A384071 n).toNat

end

end A310907.P3586924807568292122

/-! ## A310907.P8698231826894939881

`or(A008683(A001353(n+1)), A310887(n))`
-/

namespace A310907.P8698231826894939881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A001353 (n + 1)).toNat) (A310887 n)

end

end A310907.P8698231826894939881

/-!
# A310908: Coordination sequence Gal.6.520.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310908, there is no canonical definition to state claims against.
-/

/-! ## A310908.P2268583693995319944

`A328979(A027800(n))+A310907(n)`
-/

namespace A310908.P2268583693995319944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (A027800 n).toNat + A310907 n

end

end A310908.P2268583693995319944

/-! ## A310908.P9949473336020733595

`A310907(n)+A025469(A351028(n))`
-/

namespace A310908.P9949473336020733595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310907 n + A025469 (A351028 n).toNat

end

end A310908.P9949473336020733595

/-! ## A310908.P3629612969589845806

`A131319(2*n+1)+A061479(A061479(n))`
-/

namespace A310908.P3629612969589845806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131319 (2 * n + 1) + A061479 (A061479 n).toNat

end

end A310908.P3629612969589845806

/-! ## A310908.P4162893316789991075

`A310886(n)+A046080(A289780(n))`
-/

namespace A310908.P4162893316789991075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310886 n + A046080 (A289780 n).toNat

end

end A310908.P4162893316789991075

/-! ## A310908.P5686674326879745177

`A310917(n)-A368413(A310903(2*(n+2)))`
-/

namespace A310908.P5686674326879745177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310917 n - A368413 (A310903 (2 * (n + 2))).toNat

end

end A310908.P5686674326879745177

/-!
# A310909: Coordination sequence Gal.6.404.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310909, there is no canonical definition to state claims against.
-/

/-! ## A310909.P17188722039635051417

`xor(A060234(A046979(n)), A310924(n))`
-/

namespace A310909.P17188722039635051417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060234 (A046979 n).toNat) (A310924 n)

end

end A310909.P17188722039635051417

/-!
# A310910: Coordination sequence Gal.6.535.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310910, there is no canonical definition to state claims against.
-/

/-! ## A310910.P9024044843908081738

`A310890(n)+A310920(n)-A310916(n)`
-/

namespace A310910.P9024044843908081738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310890 n + (A310920 n - A310916 n)

end

end A310910.P9024044843908081738

/-! ## A310910.P3027473301886239520

`A310911(n)-A321936(A000040(2*n+5))`
-/

namespace A310910.P3027473301886239520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310911 n - A321936 (A000040 (2 * n + 5)).toNat

end

end A310910.P3027473301886239520

/-! ## A310910.P1584822217163982503

`A310911(n)-A025469(A110318(n))`
-/

namespace A310910.P1584822217163982503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310911 n - A025469 (A110318 n).toNat

end

end A310910.P1584822217163982503

/-! ## A310910.P4982641802301738437

`A310911(n)-A185284(A000124(n))`
-/

namespace A310910.P4982641802301738437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310911 n - A185284 (A000124 n).toNat

end

end A310910.P4982641802301738437

/-! ## A310910.P8266000027156077441

`A310911(n)-A070201(A148458(n))`
-/

namespace A310910.P8266000027156077441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310911 n - A070201 (A148458 n).toNat

end

end A310910.P8266000027156077441

/-!
# A310911: Coordination sequence Gal.6.311.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310911, there is no canonical definition to state claims against.
-/

/-! ## A310911.P16658932415984984199

`A310910(n)+C(A076020(n+1), 2)%3`
-/

namespace A310911.P16658932415984984199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310910 n + ((Nat.choose (A076020 (n + 1)).toNat 2 % 3 : ℕ) : ℤ)

end

end A310911.P16658932415984984199

/-! ## A310911.P191330491050847877

`A310910(n)+A064911(A003319(n))`
-/

namespace A310911.P191330491050847877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310910 n + A064911 (A003319 n).toNat

end

end A310911.P191330491050847877

/-! ## A310911.P8441771732787491220

`A310910(n)+A025469(A110318(n))`
-/

namespace A310911.P8441771732787491220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310910 n + A025469 (A110318 n).toNat

end

end A310911.P8441771732787491220

/-! ## A310911.P193117572432196139

`A310910(n)+A185284(A000124(n))`
-/

namespace A310911.P193117572432196139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310910 n + A185284 (A000124 n).toNat

end

end A310911.P193117572432196139

/-! ## A310911.P14809587080112809125

`A310910(n)+A070201(A148458(n))`
-/

namespace A310911.P14809587080112809125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310910 n + A070201 (A148458 n).toNat

end

end A310911.P14809587080112809125

/-!
# A310913: Coordination sequence Gal.6.549.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310913, there is no canonical definition to state claims against.
-/

/-! ## A310913.P7264024724468573031

`A250120(n)-A001221(A001678(2*(n+2)))`
-/

namespace A310913.P7264024724468573031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A001678 (2 * (n + 2))).toNat

end

end A310913.P7264024724468573031

/-! ## A310913.P9712495407360126381

`∑[A136695(A044814(3*n+1)²)]`
-/

namespace A310913.P9712495407360126381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136695 (A044814 (3 * n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310913.P9712495407360126381

/-! ## A310913.P6756539681961844710

`A312618(n)-A049321(A000110(n))`
-/

namespace A310913.P6756539681961844710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312618 n - A049321 (A000110 n).toNat

end

end A310913.P6756539681961844710

/-! ## A310913.P16846810413306382519

`A312481(n)-A116178(A149548(n))`
-/

namespace A310913.P16846810413306382519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312481 n - A116178 (A149548 n).toNat

end

end A310913.P16846810413306382519

/-! ## A310913.P2278716504735407858

`A250120(n)-A341596(A075786(n+1))`
-/

namespace A310913.P2278716504735407858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A341596 (A075786 (n + 1)).toNat

end

end A310913.P2278716504735407858

/-!
# A310914: Coordination sequence Gal.5.174.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310914, there is no canonical definition to state claims against.
-/

/-! ## A310914.P5278717895543075408

`A312638(n)-A187752(A070016(n+1))`
-/

namespace A310914.P5278717895543075408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312638 n - A187752 (A070016 (n + 1)).toNat

end

end A310914.P5278717895543075408

/-! ## A310914.P12169178716319971334

`A311912(n)+A011734(n²²)-A188973(A338898(2*n+1))`
-/

namespace A310914.P12169178716319971334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311912 n + A011734 ((n ^ 2) ^ 2) - A188973 (A338898 (2 * n + 1)).toNat

end

end A310914.P12169178716319971334

/-! ## A310914.P12549764517803449173

`A319451(n)+A001227(A252790(n+1))`
-/

namespace A310914.P12549764517803449173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319451 n + A001227 (A252790 (n + 1)).toNat

end

end A310914.P12549764517803449173

/-! ## A310914.P12463906316021698639

`A301676(n)+A008683(A283117(n+3))`
-/

namespace A310914.P12463906316021698639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A008683 (A283117 (n + 3)).toNat

end

end A310914.P12463906316021698639

/-!
# A310915: Coordination sequence Gal.5.165.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310915, there is no canonical definition to state claims against.
-/

/-! ## A310915.P6856149048632612050

`A310919(n)-A217096(A005453(n))`
-/

namespace A310915.P6856149048632612050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310919 n - A217096 (A005453 n).toNat

end

end A310915.P6856149048632612050

/-! ## A310915.P9347111652629446294

`A310919(n)-A178798(A310919(2*n))`
-/

namespace A310915.P9347111652629446294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310919 n - A178798 (A310919 (2 * n)).toNat

end

end A310915.P9347111652629446294

/-! ## A310915.P11717932336626232989

`A310919(n)-A212619(A153775(3*n+2))`
-/

namespace A310915.P11717932336626232989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310919 n - A212619 (A153775 (3 * n + 2)).toNat

end

end A310915.P11717932336626232989

/-! ## A310915.P8682722588034857477

`A312654(n)-(A319058(n+1)+A319058(A059100(n)))`
-/

namespace A310915.P8682722588034857477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312654 n - (A319058 (n + 1) + A319058 (A059100 n).toNat)

end

end A310915.P8682722588034857477

/-! ## A310915.P5502105469641849693

`A314553(n)-A001221(A055545(n))`
-/

namespace A310915.P5502105469641849693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314553 n - A001221 (A055545 n).toNat

end

end A310915.P5502105469641849693

/-!
# A310916: Coordination sequence Gal.6.292.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310916, there is no canonical definition to state claims against.
-/

/-! ## A310916.P1058828093541656814

`A310890(n)+A310920(n)-A310910(n)`
-/

namespace A310916.P1058828093541656814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310890 n + (A310920 n - A310910 n)

end

end A310916.P1058828093541656814

/-! ## A310916.P5208165198604031782

`A310890(n)-(A310920(n)-A310910(n))*A260196(n)`
-/

namespace A310916.P5208165198604031782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310890 n - (A310920 n - A310910 n) * A260196 n

end

end A310916.P5208165198604031782

/-! ## A310916.P8507995317734213087

`xor(A000038(A286080(n)), A310894(n))`
-/

namespace A310916.P8507995317734213087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (A286080 n).toNat) (A310894 n)

end

end A310916.P8507995317734213087

/-! ## A310916.P12389422782153821597

`A310905(n)+A014724(A014717(n))`
-/

namespace A310916.P12389422782153821597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310905 n + A014724 (A014717 n).toNat

end

end A310916.P12389422782153821597

/-! ## A310916.P3295054084212834721

`A310905(n)+A101637(A000142(n))`
-/

namespace A310916.P3295054084212834721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310905 n + A101637 (A000142 n).toNat

end

end A310916.P3295054084212834721

/-!
# A310917: Coordination sequence Gal.6.278.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310917, there is no canonical definition to state claims against.
-/

/-! ## A310917.P11130851847185787787

`A310919(n)-A178798(A022144(n))`
-/

namespace A310917.P11130851847185787787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310919 n - A178798 (A022144 n).toNat

end

end A310917.P11130851847185787787

/-! ## A310917.P5632558587846119187

`A312512(n)+A016375(A020695(n))`
-/

namespace A310917.P5632558587846119187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312512 n + A016375 (A020695 n).toNat

end

end A310917.P5632558587846119187

/-! ## A310917.P8247698996246688996

`A310908(n)+A101637(A000142(n))`
-/

namespace A310917.P8247698996246688996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310908 n + A101637 (A000142 n).toNat

end

end A310917.P8247698996246688996

/-! ## A310917.P12248168031348014570

`or(A173920(A000142(n)), A310881(n))`
-/

namespace A310917.P12248168031348014570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A173920 (A000142 n).toNat) (A310881 n)

end

end A310917.P12248168031348014570

/-! ## A310917.P2562186942988864538

`A368413(A310903(2*(n+2)))+A310908(n)`
-/

namespace A310917.P2562186942988864538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368413 (A310903 (2 * (n + 2))).toNat + A310908 n

end

end A310917.P2562186942988864538

/-!
# A310918: Coordination sequence Gal.6.187.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310918, there is no canonical definition to state claims against.
-/

/-! ## A310918.P13450352205160840995

`A310919(n)-A037803(A285645(n))`
-/

namespace A310918.P13450352205160840995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310919 n - A037803 (A285645 n).toNat

end

end A310918.P13450352205160840995

/-! ## A310918.P4993810982677458145

`A310878(n)+(2*n)%A006530(n!)`
-/

namespace A310918.P4993810982677458145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310878 n + Int.tmod (2 * n : ℤ) (A006530 (Nat.factorial n))

end

end A310918.P4993810982677458145

/-! ## A310918.P3340615577758172180

`A312538(n)-A010054(abs((-3)^n+1))`
-/

namespace A310918.P3340615577758172180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312538 n - A010054 |(-3) ^ n + 1|.toNat

end

end A310918.P3340615577758172180

/-! ## A310918.P16342617233672847659

`A310919(n)+A178798(A002522(n))`
-/

namespace A310918.P16342617233672847659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310919 n + A178798 (A002522 n).toNat

end

end A310918.P16342617233672847659

/-! ## A310918.P10835941876077567805

`A312538(n)-A185012(A074416(n+1))`
-/

namespace A310918.P10835941876077567805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312538 n - A185012 (A074416 (n + 1)).toNat

end

end A310918.P10835941876077567805

/-!
# A310919: Coordination sequence Gal.6.171.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310919, there is no canonical definition to state claims against.
-/

/-! ## A310919.P3755436844073089446

`A310918(n)+A037803(A285645(n))`
-/

namespace A310919.P3755436844073089446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310918 n + A037803 (A285645 n).toNat

end

end A310919.P3755436844073089446

/-! ## A310919.P2079704307673265563

`A310915(n)+A217096(A005453(n))`
-/

namespace A310919.P2079704307673265563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310915 n + A217096 (A005453 n).toNat

end

end A310919.P2079704307673265563

/-! ## A310919.P8510521997133280786

`A312654(n)-A319058(A059100(n))`
-/

namespace A310919.P8510521997133280786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312654 n - A319058 (A059100 n).toNat

end

end A310919.P8510521997133280786

/-! ## A310919.P803320620437566500

`A340205(A334163(n+1)+n)`
-/

namespace A310919.P803320620437566500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340205 (A334163 (n + 1) + (n : ℤ)).toNat

end

end A310919.P803320620437566500

/-! ## A310919.P8919788167238295071

`char[7]+A310878(n)+(2*n)%A006530(n!)`
-/

namespace A310919.P8919788167238295071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A310878 n + Int.tmod (2 * n : ℤ) (A006530 (Nat.factorial n)))

end

end A310919.P8919788167238295071

/-!
# A310920: Coordination sequence Gal.6.521.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310920, there is no canonical definition to state claims against.
-/

/-! ## A310920.P16738290062069641026

`A310910(n)+A310916(n)-A310890(n)`
-/

namespace A310920.P16738290062069641026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310910 n + (A310916 n - A310890 n)

end

end A310920.P16738290062069641026

/-!
# A310921: Coordination sequence Gal.6.518.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310921, there is no canonical definition to state claims against.
-/

/-! ## A310921.P13432294995118243000

`A037952(A057354(n))+A310878(n)-n%A006530(n!)`
-/

namespace A310921.P13432294995118243000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A057354 n).toNat + (A310878 n - Int.tmod (n : ℤ) (A006530 (Nat.factorial n)))

end

end A310921.P13432294995118243000

/-! ## A310921.P16245159326243770685

`A330925(A003991(n+1))+A310874(n)+A133010(n²+4)`
-/

namespace A310921.P16245159326243770685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330925 (A003991 (n + 1)).toNat + (A310874 n + A133010 (n ^ 2 + 4))

end

end A310921.P16245159326243770685

/-!
# A310922: Coordination sequence Gal.6.445.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310922, there is no canonical definition to state claims against.
-/

/-! ## A310922.P3382697044317296585

`A312716(n)-A000007(A088994(n))`
-/

namespace A310922.P3382697044317296585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312716 n - A000007 (A088994 n).toNat

end

end A310922.P3382697044317296585

/-! ## A310922.P2224203844835024569

`A312716(n)-A010051(A297655(n+1))`
-/

namespace A310922.P2224203844835024569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312716 n - A010051 (A297655 (n + 1)).toNat

end

end A310922.P2224203844835024569

/-! ## A310922.P10030301408294004673

`A312716(n)-A268389(A139695(n+1))`
-/

namespace A310922.P10030301408294004673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312716 n - A268389 (A139695 (n + 1)).toNat

end

end A310922.P10030301408294004673

/-!
# A310923: Coordination sequence Gal.6.457.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310923, there is no canonical definition to state claims against.
-/

/-! ## A310923.P11103312820031909421

`A310084(n)+A001222(A047850(n))`
-/

namespace A310923.P11103312820031909421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310084 n + A001222 (A047850 n).toNat

end

end A310923.P11103312820031909421

/-! ## A310923.P3831670920749652019

`or(A278522(A149238(n)), A310892(n))`
-/

namespace A310923.P3831670920749652019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A278522 (A149238 n).toNat) (A310892 n)

end

end A310923.P3831670920749652019

/-! ## A310923.P9206866735793968308

`lt[A093645(A191771(n+4)), A173239(2*n+1)]`
-/

namespace A310923.P9206866735793968308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093645 (A191771 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173239 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310923.P9206866735793968308

/-!
# A310924: Coordination sequence Gal.6.444.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310924, there is no canonical definition to state claims against.
-/

/-! ## A310924.P13106250952040091736

`A310925(n)+A178798(A262735(n))`
-/

namespace A310924.P13106250952040091736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310925 n + A178798 (A262735 n).toNat

end

end A310924.P13106250952040091736

/-! ## A310924.P11188889897747915126

`A310925(n)-A288707(A106228(n))`
-/

namespace A310924.P11188889897747915126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310925 n - A288707 (A106228 n).toNat

end

end A310924.P11188889897747915126

/-! ## A310924.P3571583854848107144

`A310925(n)-A288707(A165542(n))`
-/

namespace A310924.P3571583854848107144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310925 n - A288707 (A165542 n).toNat

end

end A310924.P3571583854848107144

/-! ## A310924.P4156807854210017372

`xor(A060234(A046979(n)), A310909(n))`
-/

namespace A310924.P4156807854210017372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060234 (A046979 n).toNat) (A310909 n)

end

end A310924.P4156807854210017372

/-! ## A310924.P15212992652448404479

`A310925(n)-A186717(A310912(3*n+4))`
-/

namespace A310924.P15212992652448404479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310925 n - A186717 (A310912 (3 * n + 4)).toNat

end

end A310924.P15212992652448404479

/-!
# A310925: Coordination sequence Gal.6.443.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310925, there is no canonical definition to state claims against.
-/

/-! ## A310925.P1089878788510256339

`A310924(n)+A288707(A106228(n))`
-/

namespace A310925.P1089878788510256339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310924 n + A288707 (A106228 n).toNat

end

end A310925.P1089878788510256339

/-! ## A310925.P575088945853293573

`A310924(n)+A288707(A165542(n))`
-/

namespace A310925.P575088945853293573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310924 n + A288707 (A165542 n).toNat

end

end A310925.P575088945853293573

/-! ## A310925.P4980289602354205640

`A310924(n)-A178798(A262735(n))`
-/

namespace A310925.P4980289602354205640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310924 n - A178798 (A262735 n).toNat

end

end A310925.P4980289602354205640

/-! ## A310925.P10574808484111188803

`or(A005614(A000110(n)), A310924(n))`
-/

namespace A310925.P10574808484111188803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005614 (A000110 n).toNat) (A310924 n)

end

end A310925.P10574808484111188803

/-! ## A310925.P17734786509388006113

`or(A003849(A007689(n)), A310924(n))`
-/

namespace A310925.P17734786509388006113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 (A007689 n).toNat) (A310924 n)

end

end A310925.P17734786509388006113

/-!
# A310926: Coordination sequence Gal.5.187.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310926, there is no canonical definition to state claims against.
-/

/-! ## A310926.P10814293379924404047

`A312730(n)+A056594(A029579(n))`
-/

namespace A310926.P10814293379924404047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312730 n + A056594 (A029579 n).toNat

end

end A310926.P10814293379924404047

/-! ## A310926.P5473680104771963956

`A312730(n)+A056594(A004525(n+2))`
-/

namespace A310926.P5473680104771963956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312730 n + A056594 (A004525 (n + 2)).toNat

end

end A310926.P5473680104771963956

/-! ## A310926.P12660420676532336640

`A312730(n)-A056594(A029579(n))*A056594(n)`
-/

namespace A310926.P12660420676532336640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312730 n - A056594 (A029579 n).toNat * A056594 n

end

end A310926.P12660420676532336640

/-! ## A310926.P13715236359211895048

`A310870(n)+A310927(n)-A310882(n)`
-/

namespace A310926.P13715236359211895048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310870 n + (A310927 n - A310882 n)

end

end A310926.P13715236359211895048

/-!
# A310927: Coordination sequence Gal.6.446.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310927, there is no canonical definition to state claims against.
-/

/-! ## A310927.P964942788404487699

`A310882(n)+A310926(n)-A310870(n)`
-/

namespace A310927.P964942788404487699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n + (A310926 n - A310870 n)

end

end A310927.P964942788404487699

/-! ## A310927.P2420143072462600614

`A127033(3*n+4)+A122289(A007504(n))`
-/

namespace A310927.P2420143072462600614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127033 (3 * n + 4) + A122289 (A007504 n).toNat

end

end A310927.P2420143072462600614

/-!
# A310928: Coordination sequence Gal.5.30.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310928, there is no canonical definition to state claims against.
-/

/-! ## A310928.P12764808071640517308

`A349157(n+1)+A320015(A014522(n))`
-/

namespace A310928.P12764808071640517308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349157 (n + 1) + A320015 (A014522 n).toNat

end

end A310928.P12764808071640517308

/-!
# A310937: Coordination sequence Gal.4.31.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310937, there is no canonical definition to state claims against.
-/

/-! ## A310937.P9443680633244102024

`2*A310970(n)-A312849(n)`
-/

namespace A310937.P9443680633244102024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310970 n - A312849 n

end

end A310937.P9443680633244102024

/-! ## A310937.P15252563242650968879

`A005843(A310970(n))-A312849(n)`
-/

namespace A310937.P15252563242650968879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A310970 n).toNat - A312849 n

end

end A310937.P15252563242650968879

/-! ## A310937.P7227740053108709195

`A005843(A310970(n))+A001478(A312849(n)+1)+1`
-/

namespace A310937.P7227740053108709195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A310970 n).toNat + A001478 (A312849 n + 1).toNat + 1

end

end A310937.P7227740053108709195

/-!
# A310943: Coordination sequence Gal.5.41.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310943, there is no canonical definition to state claims against.
-/

/-! ## A310943.P1576861582688485183

`A310944(n)-A185284(A310930(n))`
-/

namespace A310943.P1576861582688485183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310944 n - A185284 (A310930 n).toNat

end

end A310943.P1576861582688485183

/-! ## A310943.P1702995761490139038

`A310944(n)-A185284(A310936(n))`
-/

namespace A310943.P1702995761490139038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310944 n - A185284 (A310936 n).toNat

end

end A310943.P1702995761490139038

/-! ## A310943.P1608264771247994020

`A310944(n)-A185284(A004793(n+1))`
-/

namespace A310943.P1608264771247994020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310944 n - A185284 (A004793 (n + 1)).toNat

end

end A310943.P1608264771247994020

/-! ## A310943.P9910385591443214362

`A310944(n)-A185284(A008578(n+1))`
-/

namespace A310943.P9910385591443214362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310944 n - A185284 (A008578 (n + 1)).toNat

end

end A310943.P9910385591443214362

/-! ## A310943.P10074808340805531745

`A310944(n)-A185284(A101159(n+1))`
-/

namespace A310943.P10074808340805531745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310944 n - A185284 (A101159 (n + 1)).toNat

end

end A310943.P10074808340805531745

/-!
# A310944: Coordination sequence Gal.5.40.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310944, there is no canonical definition to state claims against.
-/

/-! ## A310944.P8139371640385080233

`A310943(n)+A185284(A310930(n))`
-/

namespace A310944.P8139371640385080233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310943 n + A185284 (A310930 n).toNat

end

end A310944.P8139371640385080233

/-! ## A310944.P12025258826365863736

`A310943(n)+A185284(A310936(n))`
-/

namespace A310944.P12025258826365863736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310943 n + A185284 (A310936 n).toNat

end

end A310944.P12025258826365863736

/-! ## A310944.P4337811518500882129

`A310943(n)+A185284(A004793(n+1))`
-/

namespace A310944.P4337811518500882129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310943 n + A185284 (A004793 (n + 1)).toNat

end

end A310944.P4337811518500882129

/-! ## A310944.P2184526181329028085

`A310943(n)+A185284(A008578(n+1))`
-/

namespace A310944.P2184526181329028085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310943 n + A185284 (A008578 (n + 1)).toNat

end

end A310944.P2184526181329028085

/-! ## A310944.P7554728475248962263

`A185284(A310936(n))-(A185284(n)-A310943(n))`
-/

namespace A310944.P7554728475248962263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A310936 n).toNat - (A185284 n - A310943 n)

end

end A310944.P7554728475248962263

/-!
# A310945: Coordination sequence Gal.4.28.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310945, there is no canonical definition to state claims against.
-/

/-! ## A310945.P9980660782408208931

`A310946(n)-A185284(A310933(n))`
-/

namespace A310945.P9980660782408208931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310946 n - A185284 (A310933 n).toNat

end

end A310945.P9980660782408208931

/-! ## A310945.P16623011014786849251

`A310946(n)-A185284(A310949(n))`
-/

namespace A310945.P16623011014786849251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310946 n - A185284 (A310949 n).toNat

end

end A310945.P16623011014786849251

/-! ## A310945.P9309383560007829926

`A310946(n)-A185284(A310951(n))`
-/

namespace A310945.P9309383560007829926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310946 n - A185284 (A310951 n).toNat

end

end A310945.P9309383560007829926

/-!
# A310946: Coordination sequence Gal.4.29.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310946, there is no canonical definition to state claims against.
-/

/-! ## A310946.P7541536317397516065

`A310945(n)-A163817(A033483(n+2))+1`
-/

namespace A310946.P7541536317397516065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310945 n - A163817 (A033483 (n + 2)).toNat + 1

end

end A310946.P7541536317397516065

/-! ## A310946.P1145550755513997907

`A310945(n)+A185284(A310933(n))`
-/

namespace A310946.P1145550755513997907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310945 n + A185284 (A310933 n).toNat

end

end A310946.P1145550755513997907

/-! ## A310946.P3560581649646802945

`A310945(n)+A185284(A310949(n))`
-/

namespace A310946.P3560581649646802945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310945 n + A185284 (A310949 n).toNat

end

end A310946.P3560581649646802945

/-! ## A310946.P14475854096825305214

`A310945(n)+A185284(A310951(n))`
-/

namespace A310946.P14475854096825305214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310945 n + A185284 (A310951 n).toNat

end

end A310946.P14475854096825305214

/-! ## A310946.P10322389632078313543

`A310945(n)+A185284(A325861(n))`
-/

namespace A310946.P10322389632078313543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310945 n + A185284 (A325861 n).toNat

end

end A310946.P10322389632078313543

/-!
# A310947: Coordination sequence Gal.6.90.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310947, there is no canonical definition to state claims against.
-/

/-! ## A310947.P12505361709078312038

`∑[A069010(∑[A062708(2*(n+2))])]`
-/

namespace A310947.P12505361709078312038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310947.P12505361709078312038

/-! ## A310947.P3901186821883616585

`∑[A102669(∑[A031174(n+1)])]`
-/

namespace A310947.P3901186821883616585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031174 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310947.P3901186821883616585

/-! ## A310947.P12355817432330371243

`∑[A073093(A351292(n+4))]-1`
-/

namespace A310947.P12355817432330371243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A351292 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A310947.P12355817432330371243

/-! ## A310947.P10152678343722534722

`A087990(A340548(n+1))+comp[or(1, 3*n)]`
-/

namespace A310947.P10152678343722534722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (A340548 (n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A310947.P10152678343722534722

/-! ## A310947.P1213269080368416839

`∑[A001221((∑[n]+1)²*A000040(n+1))]+n`
-/

namespace A310947.P1213269080368416839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((((∑ j ∈ Finset.range (n + 1), f2 j + 1) ^ 2 : ℕ) : ℤ) * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A310947.P1213269080368416839

/-!
# A310948: Coordination sequence Gal.6.91.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310948, there is no canonical definition to state claims against.
-/

/-! ## A310948.P13550300896536462712

`∑[∑{e}[A374631(2*(n+2))+A353403(n), #]]`
-/

namespace A310948.P13550300896536462712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374631 (2 * (n + 2)) + A353403 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310948.P13550300896536462712

/-!
# A310949: Coordination sequence Gal.5.42.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310949, there is no canonical definition to state claims against.
-/

/-! ## A310949.P1697506064201633718

`A301692(n)-A159689(A290265(n))`
-/

namespace A310949.P1697506064201633718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301692 n - A159689 (A290265 n).toNat

end

end A310949.P1697506064201633718

/-! ## A310949.P8113322838046858733

`A301692(n)-A111620(∑[n+1])+1`
-/

namespace A310949.P8113322838046858733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301692 n - A111620 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A310949.P8113322838046858733

/-! ## A310949.P12237432440274454689

`A301692(n)-A162781(A027379(n))`
-/

namespace A310949.P12237432440274454689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301692 n - A162781 (A027379 n).toNat

end

end A310949.P12237432440274454689

/-!
# A310951: Coordination sequence Gal.6.93.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310951, there is no canonical definition to state claims against.
-/

/-! ## A310951.P16886174292019294968

`∑[A325533(A251421(n+1)+n)]+n`
-/

namespace A310951.P16886174292019294968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325533 (A251421 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A310951.P16886174292019294968

/-! ## A310951.P14616284149474286769

`A220400(A189389(n))+A189367(n+1)`
-/

namespace A310951.P14616284149474286769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (A189389 n).toNat + A189367 (n + 1)

end

end A310951.P14616284149474286769

/-!
# A310952: Coordination sequence Gal.6.95.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310952, there is no canonical definition to state claims against.
-/

/-! ## A310952.P15888060060845072121

`A188967(A341483(3*(n+2)))+A024621(n+1)`
-/

namespace A310952.P15888060060845072121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (A341483 (3 * (n + 2))).toNat + A024621 (n + 1)

end

end A310952.P15888060060845072121

/-!
# A310953: Coordination sequence Gal.4.34.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310953, there is no canonical definition to state claims against.
-/

/-! ## A310953.P15105310524322367485

`∑[A100820(A104080(n+4))+1]`
-/

namespace A310953.P15105310524322367485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (A104080 (n + 4)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310953.P15105310524322367485

/-! ## A310953.P748032408450990547

`record[A351904(n+1)+A188257(3*n+5)]`
-/

namespace A310953.P748032408450990547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351904 (n + 1) + A188257 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310953.P748032408450990547

/-! ## A310953.P3500244598069465701

`A166352(A146270(n+1))+A080902(n+1)`
-/

namespace A310953.P3500244598069465701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166352 (A146270 (n + 1)).toNat + A080902 (n + 1)

end

end A310953.P3500244598069465701

/-! ## A310953.P16124399208316319313

`A317710(3*n+1)-A031346(A333106(n))`
-/

namespace A310953.P16124399208316319313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (3 * n + 1) - A031346 (A333106 n).toNat

end

end A310953.P16124399208316319313

/-! ## A310953.P3329605957346234875

`∑[A007978(A085288(n+6))]-A085290(n+7)`
-/

namespace A310953.P3329605957346234875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A085288 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A085290 (n + 7)

end

end A310953.P3329605957346234875

/-!
# A310954: Coordination sequence Gal.6.98.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310954, there is no canonical definition to state claims against.
-/

/-! ## A310954.P9511826983028909416

`(A311038(n)+A265036(n))/2`
-/

namespace A310954.P9511826983028909416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311038 n + A265036 n : ℚ) / 2

end

end A310954.P9511826983028909416

/-! ## A310954.P1784957672223263433

`A265036(n)+A004525(A311038(n)-A265036(n))`
-/

namespace A310954.P1784957672223263433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265036 n + A004525 (A311038 n - A265036 n).toNat

end

end A310954.P1784957672223263433

/-! ## A310954.P888600055136552618

`A311038(n)-A004526(A311038(n)-A265036(n))`
-/

namespace A310954.P888600055136552618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311038 n - A004526 (A311038 n - A265036 n).toNat

end

end A310954.P888600055136552618

/-! ## A310954.P7837460184423460492

`A004525(A311038(n)+A265036(n))`
-/

namespace A310954.P7837460184423460492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311038 n + A265036 n).toNat

end

end A310954.P7837460184423460492

/-! ## A310954.P1593227539382762461

`A004526(A311038(n)+A265036(n))`
-/

namespace A310954.P1593227539382762461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311038 n + A265036 n).toNat

end

end A310954.P1593227539382762461

/-! ## A310954.P7061519145610947922

`A003602(A265036(n)+A311038(n)-1)`
-/

namespace A310954.P7061519145610947922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A265036 n + (A311038 n - 1)).toNat

end

end A310954.P7061519145610947922

/-! ## A310954.P8772733090771227513

`A008619(A265036(n)+A311038(n)-1)`
-/

namespace A310954.P8772733090771227513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A265036 n + (A311038 n - 1)).toNat

end

end A310954.P8772733090771227513

/-! ## A310954.P2305315730817016370

`A003602(A265036(n)-(1-A311038(n)))`
-/

namespace A310954.P2305315730817016370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A265036 n - (1 - A311038 n)).toNat

end

end A310954.P2305315730817016370

/-! ## A310954.P1595136077941808934

`A008619(A265036(n)-(1-A311038(n)))`
-/

namespace A310954.P1595136077941808934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A265036 n - (1 - A311038 n)).toNat

end

end A310954.P1595136077941808934

/-! ## A310954.P14352459233307852792

`val(A131575(A311038(n)+A265036(n)+1), 2)`
-/

namespace A310954.P14352459233307852792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131575 (A311038 n + A265036 n + 1).toNat).toNat 2

end

end A310954.P14352459233307852792

/-!
# A310958: Coordination sequence Gal.6.48.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310958, there is no canonical definition to state claims against.
-/

/-! ## A310958.P2822472820304841838

`eq[A131851(A141214(n)), A142150(n)]`
-/

namespace A310958.P2822472820304841838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A141214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310958.P2822472820304841838

/-! ## A310958.P11056103861907141087

`A310959(n)-A325280(A261478(n))`
-/

namespace A310958.P11056103861907141087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310959 n - A325280 (A261478 n).toNat

end

end A310958.P11056103861907141087

/-! ## A310958.P4627723264853208494

`A227177(A342611(2*n)+A244869(n))`
-/

namespace A310958.P4627723264853208494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A342611 (2 * n) + A244869 n).toNat

end

end A310958.P4627723264853208494

/-! ## A310958.P5059698449786389729

`lt[A360676(3*n+2), A360676(A349462(2*(n+1)))]`
-/

namespace A310958.P5059698449786389729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A349462 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310958.P5059698449786389729

/-!
# A310959: Coordination sequence Gal.6.50.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310959, there is no canonical definition to state claims against.
-/

/-! ## A310959.P12190105567147984651

`A310960(A062399(n))`
-/

namespace A310959.P12190105567147984651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310960 (A062399 n).toNat

end

end A310959.P12190105567147984651

/-! ## A310959.P17021141244672112444

`A310960(A120126(n))`
-/

namespace A310959.P17021141244672112444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310960 (A120126 n).toNat

end

end A310959.P17021141244672112444

/-! ## A310959.P11000423259135412672

`A310960(A351870(n))`
-/

namespace A310959.P11000423259135412672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310960 (A351870 n).toNat

end

end A310959.P11000423259135412672

/-! ## A310959.P17315479014090589959

`A310960(A067693(n²))`
-/

namespace A310959.P17315479014090589959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310960 (A067693 (n ^ 2)).toNat

end

end A310959.P17315479014090589959

/-! ## A310959.P4665582434745067750

`A196416(∑[n])*A310960(n)`
-/

namespace A310959.P4665582434745067750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196416 (∑ j ∈ Finset.range (n + 1), f1 j) * A310960 n

end

end A310959.P4665582434745067750

/-!
# A310960: Coordination sequence Gal.4.1.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310960, there is no canonical definition to state claims against.
-/

/-! ## A310960.P17574467296489291576

`or(A001222(A309864(n)), A310959(n))`
-/

namespace A310960.P17574467296489291576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A309864 n).toNat) (A310959 n)

end

end A310960.P17574467296489291576

/-!
# A310961: Coordination sequence Gal.4.35.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310961, there is no canonical definition to state claims against.
-/

/-! ## A310961.P7873037059538193706

`∑[A317056(A134601(n+1))]+n`
-/

namespace A310961.P7873037059538193706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317056 (A134601 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A310961.P7873037059538193706

/-! ## A310961.P18385683478439906246

`A276573(n)+A039996(A000108(n))`
-/

namespace A310961.P18385683478439906246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 n + A039996 (A000108 n).toNat

end

end A310961.P18385683478439906246

/-! ## A310961.P17740584010666483966

`A070939(A203067(n))+A001969(n+1)`
-/

namespace A310961.P17740584010666483966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A203067 n).toNat + A001969 (n + 1)

end

end A310961.P17740584010666483966

/-! ## A310961.P12470847840631243797

`A352272(n+1)+A014072(A000108(n))`
-/

namespace A310961.P12470847840631243797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352272 (n + 1) + A014072 (A000108 n).toNat

end

end A310961.P12470847840631243797

/-! ## A310961.P6709257972540691702

`A342572(n+1)+A001222(A085282(n))`
-/

namespace A310961.P6709257972540691702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342572 (n + 1) + A001222 (A085282 n).toNat

end

end A310961.P6709257972540691702

/-!
# A310965: Coordination sequence Gal.6.49.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310965, there is no canonical definition to state claims against.
-/

/-! ## A310965.P10068937111981832732

`∑[A073093(A118337(n+1)+2)-1]+n`
-/

namespace A310965.P10068937111981832732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A118337 (n + 1) + 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A310965.P10068937111981832732

/-! ## A310965.P450339746119014206

`∑[A023524(A023541(3*n+1))]`
-/

namespace A310965.P450339746119014206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023524 (A023541 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310965.P450339746119014206

/-! ## A310965.P15569218101272174819

`∑[A186440(∑[n+3]-2)]+n`
-/

namespace A310965.P15569218101272174819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186440 (∑ j ∈ Finset.range (n + 1), f2 j - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A310965.P15569218101272174819

/-! ## A310965.P12142973600731405830

`A190852(Δ[A120126(n)²])`
-/

namespace A310965.P12142973600731405830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120126 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190852 (f1 (n + 1) - f1 n).toNat

end

end A310965.P12142973600731405830

/-!
# A310966: Coordination sequence Gal.4.17.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310966, there is no canonical definition to state claims against.
-/

/-! ## A310966.P8506321275455238485

`A340792(A277573(∑[∏{p}[n+1, #]]))`
-/

namespace A310966.P8506321275455238485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340792 (A277573 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A310966.P8506321275455238485

/-!
# A310970: Coordination sequence Gal.6.109.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310970, there is no canonical definition to state claims against.
-/

/-! ## A310970.P17765826422955378084

`(A312849(n)+A310937(n))/2`
-/

namespace A310970.P17765826422955378084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312849 n + A310937 n : ℚ) / 2

end

end A310970.P17765826422955378084

/-! ## A310970.P12194272389261761454

`A014682(A312849(n)+A310937(n))`
-/

namespace A310970.P12194272389261761454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A312849 n + A310937 n).toNat

end

end A310970.P12194272389261761454

/-! ## A310970.P15127903795909687317

`A310937(n)+A001281(A312849(n)-A310937(n))`
-/

namespace A310970.P15127903795909687317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310937 n + A001281 (A312849 n - A310937 n).toNat

end

end A310970.P15127903795909687317

/-! ## A310970.P501281411372124077

`A310937(n)+A004525(A312849(n)-A310937(n))`
-/

namespace A310970.P501281411372124077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310937 n + A004525 (A312849 n - A310937 n).toNat

end

end A310970.P501281411372124077

/-! ## A310970.P17601482630403360161

`A310937(n)+A006370(A312849(n)-A310937(n))`
-/

namespace A310970.P17601482630403360161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310937 n + A006370 (A312849 n - A310937 n).toNat

end

end A310970.P17601482630403360161

/-! ## A310970.P5470058421874567187

`A310937(n)+A025480(A312849(n)-A310937(n))`
-/

namespace A310970.P5470058421874567187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310937 n + A025480 (A312849 n - A310937 n).toNat

end

end A310970.P5470058421874567187

/-! ## A310970.P10721701130370495284

`A310937(n)+A026741(A312849(n)-A310937(n))`
-/

namespace A310970.P10721701130370495284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310937 n + A026741 (A312849 n - A310937 n).toNat

end

end A310970.P10721701130370495284

/-! ## A310970.P3471631324735807995

`A312849(n)-A004526(A312849(n)-A310937(n))`
-/

namespace A310970.P3471631324735807995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312849 n - A004526 (A312849 n - A310937 n).toNat

end

end A310970.P3471631324735807995

/-! ## A310970.P840468898999326388

`A001281(A312849(n)+A310937(n))`
-/

namespace A310970.P840468898999326388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312849 n + A310937 n).toNat

end

end A310970.P840468898999326388

/-! ## A310970.P2601596433742256704

`A004525(A312849(n)+A310937(n))`
-/

namespace A310970.P2601596433742256704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312849 n + A310937 n).toNat

end

end A310970.P2601596433742256704

/-! ## A310970.P14687169165566430704

`A004526(A312849(n)+A310937(n))`
-/

namespace A310970.P14687169165566430704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312849 n + A310937 n).toNat

end

end A310970.P14687169165566430704

/-! ## A310970.P15252319343798905769

`A006370(A312849(n)+A310937(n))`
-/

namespace A310970.P15252319343798905769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A312849 n + A310937 n).toNat

end

end A310970.P15252319343798905769

/-! ## A310970.P16063469575180168355

`A025480(A312849(n)+A310937(n))`
-/

namespace A310970.P16063469575180168355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A312849 n + A310937 n).toNat

end

end A310970.P16063469575180168355

/-! ## A310970.P17974541913223012938

`A026741(A312849(n)+A310937(n))`
-/

namespace A310970.P17974541913223012938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A312849 n + A310937 n).toNat

end

end A310970.P17974541913223012938

/-! ## A310970.P11274937096333446139

`A032742(A312849(n)+A310937(n))`
-/

namespace A310970.P11274937096333446139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A312849 n + A310937 n).toNat

end

end A310970.P11274937096333446139

/-! ## A310970.P1909656843636784203

`A000463(A310937(n)+A312849(n)-1)`
-/

namespace A310970.P1909656843636784203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A310937 n + (A312849 n - 1)).toNat

end

end A310970.P1909656843636784203

/-! ## A310970.P11223620187016928006

`A001057(A310937(n)+A312849(n)-1)`
-/

namespace A310970.P11223620187016928006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A310937 n + (A312849 n - 1)).toNat

end

end A310970.P11223620187016928006

/-! ## A310970.P3558581396200052173

`A000463(A310937(n)-(1-A312849(n)))`
-/

namespace A310970.P3558581396200052173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A310937 n - (1 - A312849 n)).toNat

end

end A310970.P3558581396200052173

/-! ## A310970.P7936688936188585369

`A001057(A310937(n)-(1-A312849(n)))`
-/

namespace A310970.P7936688936188585369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A310937 n - (1 - A312849 n)).toNat

end

end A310970.P7936688936188585369

/-!
# A310972: Coordination sequence Gal.6.110.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310972, there is no canonical definition to state claims against.
-/

/-! ## A310972.P13112291664910727778

`or(A293435(A293507(n)), A310971(n))`
-/

namespace A310972.P13112291664910727778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A293435 (A293507 n).toNat) (A310971 n)

end

end A310972.P13112291664910727778

/-! ## A310972.P14645550939298628602

`lt[A133034(A289440(n+2)), A333189(n+3)]`
-/

namespace A310972.P14645550939298628602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (A289440 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333189 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310972.P14645550939298628602

/-!
# A310973: Coordination sequence Gal.6.94.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310973, there is no canonical definition to state claims against.
-/

/-! ## A310973.P8570550829272290768

`record[A310974(A267181(n))]`
-/

namespace A310973.P8570550829272290768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310974 (A267181 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310973.P8570550829272290768

/-! ## A310973.P3743590565424488612

`A310974(n^A061674(n))`
-/

namespace A310973.P3743590565424488612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310974 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A061674 n : ℤ))).toNat

end

end A310973.P3743590565424488612

/-! ## A310973.P1942924276696686796

`A310974(n^A323483(n))`
-/

namespace A310973.P1942924276696686796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310974 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A323483 n : ℤ))).toNat

end

end A310973.P1942924276696686796

/-! ## A310973.P5416883270820837787

`A310974(n)^A331570(n)!`
-/

namespace A310973.P5416883270820837787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310974 n ^ Nat.factorial (A331570 n).toNat

end

end A310973.P5416883270820837787

/-! ## A310973.P17094150383672951181

`A310974(n)%Δ[A103656(n+1)]`
-/

namespace A310973.P17094150383672951181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310974 n) (f1 (n + 1) - f1 n)

end

end A310973.P17094150383672951181

/-!
# A310975: Coordination sequence Gal.5.37.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310975, there is no canonical definition to state claims against.
-/

/-! ## A310975.P1906637487264449487

`A310976(n)-A083891(A358456(n+1))`
-/

namespace A310975.P1906637487264449487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310976 n - A083891 (A358456 (n + 1)).toNat

end

end A310975.P1906637487264449487

/-! ## A310975.P2289690035535767662

`A310976(lt[A310994(n), A310969(n+3)])`
-/

namespace A310975.P2289690035535767662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310994 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310969 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310976 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A310975.P2289690035535767662

/-! ## A310975.P11600472754708085960

`A310976(A087051(n))`
-/

namespace A310975.P11600472754708085960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310976 (A087051 n).toNat

end

end A310975.P11600472754708085960

/-! ## A310975.P14704660085691451364

`A310976(A227549(n+1))`
-/

namespace A310975.P14704660085691451364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310976 (A227549 (n + 1)).toNat

end

end A310975.P14704660085691451364

/-! ## A310975.P10003980182118188871

`A310976(A396204(n+1))`
-/

namespace A310975.P10003980182118188871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310976 (A396204 (n + 1)).toNat

end

end A310975.P10003980182118188871

/-!
# A310976: Coordination sequence Gal.5.38.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310976, there is no canonical definition to state claims against.
-/

/-! ## A310976.P5006646317246258605

`A310975(lt[A310994(n), A310969(n+3)])`
-/

namespace A310976.P5006646317246258605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310994 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310969 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310975 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A310976.P5006646317246258605

/-!
# A310977: Coordination sequence Gal.6.99.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310977, there is no canonical definition to state claims against.
-/

/-! ## A310977.P3575508856846636529

`A275015(A035033(3*n+1))+A058183(2*n+1)`
-/

namespace A310977.P3575508856846636529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275015 (A035033 (3 * n + 1)).toNat + A058183 (2 * n + 1)

end

end A310977.P3575508856846636529

/-!
# A310978: Coordination sequence Gal.6.104.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310978, there is no canonical definition to state claims against.
-/

/-! ## A310978.P8843780061554182237

`record[A161622(3*n+1)-A161642(2*n+3)]`
-/

namespace A310978.P8843780061554182237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161622 (3 * n + 1) - A161642 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310978.P8843780061554182237

/-!
# A310979: Coordination sequence Gal.5.48.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310979, there is no canonical definition to state claims against.
-/

/-! ## A310979.P7749159754986967018

`A034856(n+1)-A059906((∑[3^n+1-2^n]-1)/2)`
-/

namespace A310979.P7749159754986967018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + (1 - (2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - A059906 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2)).toNat

end

end A310979.P7749159754986967018

/-! ## A310979.P11764035072693681498

`eq[A177903(A182270(n)), A259361(n)]`
-/

namespace A310979.P11764035072693681498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A182270 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310979.P11764035072693681498

/-! ## A310979.P3436179852658191872

`eq[A130162(n+1), A239116(A351061(n+1))]`
-/

namespace A310979.P3436179852658191872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239116 (A351061 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310979.P3436179852658191872

/-!
# A310980: Coordination sequence Gal.6.100.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310980, there is no canonical definition to state claims against.
-/

/-! ## A310980.P4659384174856685517

`A188434(n+1)-A051802(A249974(n+1))`
-/

namespace A310980.P4659384174856685517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (n + 1) - A051802 (A249974 (n + 1)).toNat

end

end A310980.P4659384174856685517

/-! ## A310980.P5844918549509307071

`A000378(3*n+2)-A218786(A147010(n+3))`
-/

namespace A310980.P5844918549509307071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (3 * n + 2) - A218786 (A147010 (n + 3)).toNat

end

end A310980.P5844918549509307071

/-! ## A310980.P11589525040830747988

`xor(A350600(A033316(2*n+3)), A376560(2*n+1))`
-/

namespace A310980.P11589525040830747988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A350600 (A033316 (2 * n + 3)).toNat) (A376560 (2 * n + 1))

end

end A310980.P11589525040830747988

/-!
# A310981: Coordination sequence Gal.6.101.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310981, there is no canonical definition to state claims against.
-/

/-! ## A310981.P11041528458811664086

`∑[A205593(A069097(3*n+2))]`
-/

namespace A310981.P11041528458811664086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205593 (A069097 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310981.P11041528458811664086

/-! ## A310981.P11460668933064799787

`A070939(A074408(n+1))+or(2*n, n%4)`
-/

namespace A310981.P11460668933064799787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A074408 (n + 1)).toNat + (Nat.lor (2 * n) (n % 4) : ℤ)

end

end A310981.P11460668933064799787

/-! ## A310981.P14146697133256286097

`A320656(A177012(n+2))+A301692(n)`
-/

namespace A310981.P14146697133256286097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (A177012 (n + 2)).toNat + A301692 n

end

end A310981.P14146697133256286097

/-! ## A310981.P15637118456386182142

`A168496(or(A146391(n+1), A174973(n+1)))`
-/

namespace A310981.P15637118456386182142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168496 (Int.lor (A146391 (n + 1)) (A174973 (n + 1))).toNat

end

end A310981.P15637118456386182142

/-! ## A310981.P1963711647357752221

`A070776(3*n+1)-A284441(A347475(n+1))`
-/

namespace A310981.P1963711647357752221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (3 * n + 1) - A284441 (A347475 (n + 1)).toNat

end

end A310981.P1963711647357752221

/-!
# A310984: Coordination sequence Gal.6.114.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310984, there is no canonical definition to state claims against.
-/

/-! ## A310984.P8482529510513416041

`eq[A000120(n), A001877(A023545(n+1))]`
-/

namespace A310984.P8482529510513416041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (A023545 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310984.P8482529510513416041

/-! ## A310984.P1933576345911298174

`eq[A011586(A321768(n+5)), A124790(n+1)]`
-/

namespace A310984.P1933576345911298174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 (A321768 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310984.P1933576345911298174

/-!
# A310986: Coordination sequence Gal.6.43.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310986, there is no canonical definition to state claims against.
-/

/-! ## A310986.P15161585372419376067

`eq[A010892(A250480(n+1)), A185284(n)]`
-/

namespace A310986.P15161585372419376067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A250480 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310986.P15161585372419376067

/-! ## A310986.P17782004890668213002

`A178976(A217155(2*n+5))+A085914(3*n+2)`
-/

namespace A310986.P17782004890668213002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178976 (A217155 (2 * n + 5)).toNat + A085914 (3 * n + 2)

end

end A310986.P17782004890668213002

/-!
# A310987: Coordination sequence Gal.5.5.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310987, there is no canonical definition to state claims against.
-/

/-! ## A310987.P710318732279284733

`A014687(n+1)%A265778(n+1)`
-/

namespace A310987.P710318732279284733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014687 (n + 1)) (A265778 (n + 1))

end

end A310987.P710318732279284733

/-! ## A310987.P10469914548343426222

`A038616(n+2)%A331940(n+1)+(-1)^n`
-/

namespace A310987.P10469914548343426222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038616 (n + 2)) (A331940 (n + 1)) + (-1) ^ n

end

end A310987.P10469914548343426222

/-! ## A310987.P2432178757681476546

`gcd(p?[2*n+1]+(-1)^n, A010815(A018017(n)))`
-/

namespace A310987.P2432178757681476546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + (-1) ^ n) (A010815 (A018017 n).toNat)

end

end A310987.P2432178757681476546

/-! ## A310987.P6122106943283214324

`(p?[2*n+1]+(-1)^n)%A014125(A153686(n+1))`
-/

namespace A310987.P6122106943283214324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + (-1) ^ n) (A014125 (A153686 (n + 1)).toNat)

end

end A310987.P6122106943283214324

/-! ## A310987.P16285565517095658347

`A014687(n+1)^A333768(A161206(n))`
-/

namespace A310987.P16285565517095658347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014687 (n + 1) : ℚ) ^ (A333768 (A161206 n).toNat : ℤ)

end

end A310987.P16285565517095658347

/-!
# A310988: Coordination sequence Gal.4.16.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310988, there is no canonical definition to state claims against.
-/

/-! ## A310988.P29869425836387156

`∑[A002186(∑[A098600(2*n)])]`
-/

namespace A310988.P29869425836387156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002186 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310988.P29869425836387156

/-! ## A310988.P5980978205358832090

`∑[∑{e}[A302287(n+4), #]]`
-/

namespace A310988.P5980978205358832090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302287 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310988.P5980978205358832090

/-! ## A310988.P16210954009217380585

`A321321(n+1)+A319856(A002522(n))`
-/

namespace A310988.P16210954009217380585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321321 (n + 1) + A319856 (A002522 n).toNat

end

end A310988.P16210954009217380585

/-! ## A310988.P803706247137647354

`A047461(n+1)-A001221(A125274(n))`
-/

namespace A310988.P803706247137647354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (n + 1) - A001221 (A125274 n).toNat

end

end A310988.P803706247137647354

/-! ## A310988.P3000193284594824338

`A227177(A000056(n+1)*A064802(n+1))`
-/

namespace A310988.P3000193284594824338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A000056 (n + 1) * A064802 (n + 1)).toNat

end

end A310988.P3000193284594824338

/-!
# A310989: Coordination sequence Gal.6.2.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310989, there is no canonical definition to state claims against.
-/

/-! ## A310989.P17422806721581206800

`A064745(A338316(n+1)%A096761(n+1))`
-/

namespace A310989.P17422806721581206800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (Int.tmod (A338316 (n + 1)) (A096761 (n + 1))).toNat

end

end A310989.P17422806721581206800

/-! ## A310989.P6015313119160637467

`eq[A009001(n), A033999(A290725(n+1))]`
-/

namespace A310989.P6015313119160637467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A290725 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310989.P6015313119160637467

/-! ## A310989.P15151834240283477776

`∑[A005811(A328629(n)+A328627(n+1))]`
-/

namespace A310989.P15151834240283477776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A328629 n + A328627 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310989.P15151834240283477776

/-! ## A310989.P8886518374919780181

`record[A000122(n)*A309407(n)]`
-/

namespace A310989.P8886518374919780181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n * A309407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310989.P8886518374919780181

/-! ## A310989.P12779077389132023184

`A100795(C(A005897(n), A055642(n)))`
-/

namespace A310989.P12779077389132023184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (Nat.choose (A005897 n).toNat (A055642 n).toNat)

end

end A310989.P12779077389132023184

/-!
# A310990: Coordination sequence Gal.6.38.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310990, there is no canonical definition to state claims against.
-/

/-! ## A310990.P12242597009213197199

`A360457(A081515(n+1))`
-/

namespace A310990.P12242597009213197199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360457 (A081515 (n + 1)).toNat

end

end A310990.P12242597009213197199

/-! ## A310990.P2077349798199187302

`∏{p}[A081515(n+1), A360005(#)]`
-/

namespace A310990.P2077349798199187302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A360005 p

end

end A310990.P2077349798199187302

/-! ## A310990.P5580234365262443823

`A008574(n)-2*A007877(A108863(n))`
-/

namespace A310990.P5580234365262443823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - 2 * A007877 (A108863 n).toNat

end

end A310990.P5580234365262443823

/-! ## A310990.P18191367034594746564

`A330977(3*n+2)-A046951(A114647(n))`
-/

namespace A310990.P18191367034594746564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330977 (3 * n + 2) - A046951 (A114647 n).toNat

end

end A310990.P18191367034594746564

/-! ## A310990.P17427656587371331789

`∑[∏{e}[A118108(n)+A058261(n), #+1]]`
-/

namespace A310990.P17427656587371331789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118108 n + A058261 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310990.P17427656587371331789

/-!
# A310991: Coordination sequence Gal.5.2.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310991, there is no canonical definition to state claims against.
-/

/-! ## A310991.P4976913480515967410

`A004277(eq[A102572(n+1), A242062(n)])`
-/

namespace A310991.P4976913480515967410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A310991.P4976913480515967410

/-! ## A310991.P15815639125588607398

`record[and(A109647(n), A109680(n+1))]`
-/

namespace A310991.P15815639125588607398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109647 n) (A109680 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310991.P15815639125588607398

/-! ## A310991.P6658842168156727036

`A310568(n)-(2*n)%A006558(n+1)`
-/

namespace A310991.P6658842168156727036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310568 n - Int.tmod (2 * n : ℤ) (A006558 (n + 1))

end

end A310991.P6658842168156727036

/-! ## A310991.P7075916922414224365

`A346699(A351255(n+1))+A277817(2*n+1)`
-/

namespace A310991.P7075916922414224365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346699 (A351255 (n + 1)).toNat + A277817 (2 * n + 1)

end

end A310991.P7075916922414224365

/-! ## A310991.P17330263296208422619

`A296344(2*n+1)-A296338(A071938(n+2))`
-/

namespace A310991.P17330263296208422619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296344 (2 * n + 1) - A296338 (A071938 (n + 2)).toNat

end

end A310991.P17330263296208422619

/-!
# A310992: Coordination sequence Gal.5.17.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310992, there is no canonical definition to state claims against.
-/

/-! ## A310992.P138082676673891854

`A008574(n)-A070824(A246955(A210198(n+1)))`
-/

namespace A310992.P138082676673891854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A070824 (A246955 (A210198 (n + 1)).toNat).toNat

end

end A310992.P138082676673891854

/-! ## A310992.P2191039982873196028

`A004273(2*n)-A033999(A347257(n+1))`
-/

namespace A310992.P2191039982873196028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * n) - A033999 (A347257 (n + 1)).toNat

end

end A310992.P2191039982873196028

/-! ## A310992.P16934993113204019945

`A100417(A279455(n+1)+A049872(n))`
-/

namespace A310992.P16934993113204019945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100417 (A279455 (n + 1) + A049872 n).toNat

end

end A310992.P16934993113204019945

/-! ## A310992.P16473770675823371555

`A003002(A166709(Δ[n²]))`
-/

namespace A310992.P16473770675823371555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A166709 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A310992.P16473770675823371555

/-!
# A310994: Coordination sequence Gal.6.51.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310994, there is no canonical definition to state claims against.
-/

/-! ## A310994.P11098751665526345412

`A191329(A083323(n))+record[lcm(2, n)]`
-/

namespace A310994.P11098751665526345412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (A083323 n).toNat + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A310994.P11098751665526345412

/-! ## A310994.P17394687474859363076

`A191329(A083323(n))+A130824(n)`
-/

namespace A310994.P17394687474859363076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (A083323 n).toNat + A130824 n

end

end A310994.P17394687474859363076

/-! ## A310994.P15519054879749416102

`A008574(n)-A318982(A051439(n))`
-/

namespace A310994.P15519054879749416102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A318982 (A051439 n).toNat

end

end A310994.P15519054879749416102

/-! ## A310994.P11210095761300614009

`xor(A185284(A310174(n)), A310995(n))`
-/

namespace A310994.P11210095761300614009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A310174 n).toNat) (A310995 n)

end

end A310994.P11210095761300614009

/-! ## A310994.P8228577662615391549

`A124010(A000227(n))+A020497(n+1)`
-/

namespace A310994.P8228577662615391549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A000227 n).toNat + A020497 (n + 1)

end

end A310994.P8228577662615391549

/-!
# A310995: Coordination sequence Gal.6.69.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310995, there is no canonical definition to state claims against.
-/

/-! ## A310995.P8814185671032056999

`A310994(n)+A010894(A311465(n))`
-/

namespace A310995.P8814185671032056999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310994 n + A010894 ((A311465 n).toNat + 21)

end

end A310995.P8814185671032056999

/-! ## A310995.P843042728555153996

`A008574(n)-A063958(A148188(n))`
-/

namespace A310995.P843042728555153996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A063958 (A148188 n).toNat

end

end A310995.P843042728555153996

/-! ## A310995.P860077311424031489

`xor(A185284(A310174(n)), A310994(n))`
-/

namespace A310995.P860077311424031489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A310174 n).toNat) (A310994 n)

end

end A310995.P860077311424031489

/-! ## A310995.P6048769613389235343

`A321936(A152427(n+1))+A310994(n)`
-/

namespace A310995.P6048769613389235343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A152427 (n + 1)).toNat + A310994 n

end

end A310995.P6048769613389235343

/-!
# A310996: Coordination sequence Gal.4.4.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310996, there is no canonical definition to state claims against.
-/

/-! ## A310996.P17335181232914435239

`∑[A294901(A122332(n)+3^n)+1]`
-/

namespace A310996.P17335181232914435239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (A122332 n + (3 ^ n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310996.P17335181232914435239

/-! ## A310996.P7356346679576617919

`A310994(n)+2*A185284(A310994(n))`
-/

namespace A310996.P7356346679576617919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310994 n + 2 * A185284 (A310994 n).toNat

end

end A310996.P7356346679576617919

/-! ## A310996.P18445261721805702591

`A310995(n)+2*A185284(A310995(n))`
-/

namespace A310996.P18445261721805702591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310995 n + 2 * A185284 (A310995 n).toNat

end

end A310996.P18445261721805702591

/-! ## A310996.P15330418145964676518

`record[A006093(A238365(n+1))-A329562(n)]`
-/

namespace A310996.P15330418145964676518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A238365 (n + 1)).toNat - A329562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310996.P15330418145964676518

/-! ## A310996.P12905355369089646888

`A211658(n+1)+A001222(A138292(n))`
-/

namespace A310996.P12905355369089646888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211658 (n + 1) + A001222 (A138292 n).toNat

end

end A310996.P12905355369089646888

/-!
# A310997: Coordination sequence Gal.6.26.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310997, there is no canonical definition to state claims against.
-/

/-! ## A310997.P10806022280950266091

`A240114(2*(n+1)-A240127(n+1))`
-/

namespace A310997.P10806022280950266091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240114 ((2 * (n + 1) : ℤ) - A240127 (n + 1)).toNat

end

end A310997.P10806022280950266091

/-! ## A310997.P11488353323078078278

`A240114(A051162(n)+A005838(n+1))`
-/

namespace A310997.P11488353323078078278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240114 (A051162 n + A005838 (n + 1)).toNat

end

end A310997.P11488353323078078278

/-! ## A310997.P7876927871677875879

`A317990(3*n+4)+A135311(A248794(n+1))`
-/

namespace A310997.P7876927871677875879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317990 (3 * n + 4) + A135311 (A248794 (n + 1)).toNat

end

end A310997.P7876927871677875879

/-! ## A310997.P12618633213845025362

`A337679(or(A000040(2*n+3), A208338(n+4)))`
-/

namespace A310997.P12618633213845025362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337679 (Int.lor (A000040 (2 * n + 3)) (A208338 (n + 4))).toNat

end

end A310997.P12618633213845025362

/-!
# A310998: Coordination sequence Gal.4.21.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310998, there is no canonical definition to state claims against.
-/

/-! ## A310998.P15685052677914299450

`A352891(A352921(2*n+1))+A000959(n+1)`
-/

namespace A310998.P15685052677914299450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352891 (A352921 (2 * n + 1)).toNat + A000959 (n + 1)

end

end A310998.P15685052677914299450

/-! ## A310998.P7792135060823698032

`A351393(A233583(3*(n+1))+A210545(n+1))`
-/

namespace A310998.P7792135060823698032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351393 (A233583 (3 * (n + 1)) + A210545 (n + 1)).toNat

end

end A310998.P7792135060823698032

/-!
# A310999: Coordination sequence Gal.4.7.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310999, there is no canonical definition to state claims against.
-/

/-! ## A310999.P7588073635792189361

`A048098(n+1)+A001222(A003483(n))`
-/

namespace A310999.P7588073635792189361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1) + A001222 (A003483 n).toNat

end

end A310999.P7588073635792189361

/-! ## A310999.P15283597915192849181

`A143145(n+1)+A053828(A126941(n))`
-/

namespace A310999.P15283597915192849181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143145 (n + 1) + A053828 (A126941 n).toNat

end

end A310999.P15283597915192849181

/-! ## A310999.P3153959570486142926

`A066207(n+1)+A003023(A261130(n))`
-/

namespace A310999.P3153959570486142926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1) + A003023 (A261130 n).toNat

end

end A310999.P3153959570486142926

/-! ## A310999.P2718560841049083214

`A302242(A035344(n))+A076610(n+1)`
-/

namespace A310999.P2718560841049083214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A035344 n).toNat + A076610 (n + 1)

end

end A310999.P2718560841049083214

/-! ## A310999.P12565568013832240548

`A300272(A302656(n+1))-A119395(n)`
-/

namespace A310999.P12565568013832240548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300272 (A302656 (n + 1)).toNat - A119395 n

end

end A310999.P12565568013832240548

