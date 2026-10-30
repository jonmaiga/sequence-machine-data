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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A316002: Coordination sequence Gal.5.123.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316002, there is no canonical definition to state claims against.
-/

/-! ## A316002.P17840161382878822630

`A316003(n)+A316049(n)-A316019(n)`
-/

namespace A316002.P17840161382878822630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316003 n + (A316049 n - A316019 n)

end

end A316002.P17840161382878822630

/-! ## A316002.P16338222841231854796

`A316049(n)+A316003(n)-A316020(n^(1-(∑{digits}[n, #]-n)))`
-/

namespace A316002.P16338222841231854796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316049 n + A316003 n - A316020 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A316002.P16338222841231854796

/-! ## A316002.P15932301714882321855

`A341693(n+1)-A102683(A000244(n))`
-/

namespace A316002.P15932301714882321855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341693 (n + 1) - A102683 (A000244 n).toNat

end

end A316002.P15932301714882321855

/-! ## A316002.P8825144643076973705

`A341693(A276142(n+1))-A102683(A316019(n))`
-/

namespace A316002.P8825144643076973705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341693 (A276142 (n + 1)).toNat - A102683 (A316019 n).toNat

end

end A316002.P8825144643076973705

/-! ## A316002.P6926352530088476556

`A341693(A276142(n+1))-A102683(A316020(n))`
-/

namespace A316002.P6926352530088476556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341693 (A276142 (n + 1)).toNat - A102683 (A316020 n).toNat

end

end A316002.P6926352530088476556

/-!
# A316003: Coordination sequence Gal.5.120.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316003, there is no canonical definition to state claims against.
-/

/-! ## A316003.P7036325912854518704

`A316002(n)+A316019(n)-A316049(n)`
-/

namespace A316003.P7036325912854518704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316002 n + (A316019 n - A316049 n)

end

end A316003.P7036325912854518704

/-! ## A316003.P93197213742167318

`A316020(n^(1-(∑{digits}[n, #]-n)))+A316002(n)-A316049(n)`
-/

namespace A316003.P93197213742167318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316020 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat + A316002 n - A316049 n

end

end A316003.P93197213742167318

/-! ## A316003.P8694799543105554939

`A314776(n)+A059841(A276142(n+1))`
-/

namespace A316003.P8694799543105554939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314776 n + A059841 (A276142 (n + 1)).toNat

end

end A316003.P8694799543105554939

/-! ## A316003.P11132413898463746202

`A314776(n)+A056594(A276142(n+1)²)`
-/

namespace A316003.P11132413898463746202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314776 n + A056594 (A276142 (n + 1) ^ 2).toNat

end

end A316003.P11132413898463746202

/-!
# A316004: Coordination sequence Gal.5.80.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316004, there is no canonical definition to state claims against.
-/

/-! ## A316004.P16452663645409595694

`A316005(n)+A316017(n)-A316018(n)`
-/

namespace A316004.P16452663645409595694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316005 n + (A316017 n - A316018 n)

end

end A316004.P16452663645409595694

/-! ## A316004.P14673818282272948118

`A316005(n)-A281034(A276142(n+1))`
-/

namespace A316004.P14673818282272948118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316005 n - A281034 (A276142 (n + 1)).toNat

end

end A316004.P14673818282272948118

/-! ## A316004.P5684306144285093964

`record[A315242(n)-A004125(n+1)]-A281034(n+1)`
-/

namespace A316004.P5684306144285093964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315242 n - A004125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A281034 (n + 1)

end

end A316004.P5684306144285093964

/-! ## A316004.P11920897959722809098

`A316008(n)-A025469(A316109(n))-A281034(n+1)`
-/

namespace A316004.P11920897959722809098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316008 n - A025469 (A316109 n).toNat - A281034 (n + 1)

end

end A316004.P11920897959722809098

/-!
# A316005: Coordination sequence Gal.5.75.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316005, there is no canonical definition to state claims against.
-/

/-! ## A316005.P3289292205919687647

`A316004(n)+A316018(n)-A316017(n)`
-/

namespace A316005.P3289292205919687647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316004 n + (A316018 n - A316017 n)

end

end A316005.P3289292205919687647

/-! ## A316005.P2461895794774365672

`record[A315242(n)-A004125(n+1)]`
-/

namespace A316005.P2461895794774365672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315242 n - A004125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316005.P2461895794774365672

/-! ## A316005.P11366597500277454362

`A316008(n)-A025469(A316109(n))`
-/

namespace A316005.P11366597500277454362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316008 n - A025469 (A316109 n).toNat

end

end A316005.P11366597500277454362

/-! ## A316005.P3325652668531849275

`A316009(n)-A025469(A316109(n))`
-/

namespace A316005.P3325652668531849275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316009 n - A025469 (A316109 n).toNat

end

end A316005.P3325652668531849275

/-! ## A316005.P10793144650512896553

`A316004(n)+A281034(A276142(n+1))`
-/

namespace A316005.P10793144650512896553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316004 n + A281034 (A276142 (n + 1)).toNat

end

end A316005.P10793144650512896553

/-!
# A316007: Coordination sequence Gal.6.239.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316007, there is no canonical definition to state claims against.
-/

/-! ## A316007.P8326209812254955282

`A313682(n)+A062157(A109262(n))`
-/

namespace A316007.P8326209812254955282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313682 n + A062157 (A109262 n).toNat

end

end A316007.P8326209812254955282

/-! ## A316007.P3845704314101147566

`A204458(2*n+1)+A090171(A090150(n+1))`
-/

namespace A316007.P3845704314101147566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204458 (2 * n + 1) + A090171 (A090150 (n + 1)).toNat

end

end A316007.P3845704314101147566

/-! ## A316007.P13456024077471462623

`A380534(A337702(3*(n+1)))+A324846(2*n+1)`
-/

namespace A316007.P13456024077471462623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380534 (A337702 (3 * (n + 1))).toNat + A324846 (2 * n + 1)

end

end A316007.P13456024077471462623

/-! ## A316007.P7809569140724530669

`A316009(n*A287378(n))-char[8]`
-/

namespace A316007.P7809569140724530669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316009 ((n : ℤ) * A287378 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316007.P7809569140724530669

/-! ## A316007.P3320593693204202399

`A316008(n)-A102683(A276142(n+1))`
-/

namespace A316007.P3320593693204202399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316008 n - A102683 (A276142 (n + 1)).toNat

end

end A316007.P3320593693204202399

/-!
# A316008: Coordination sequence Gal.6.148.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316008, there is no canonical definition to state claims against.
-/

/-! ## A316008.P15406844106625169981

`A316009(n)-A340998(A000031(n))`
-/

namespace A316008.P15406844106625169981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316009 n - A340998 ((A000031 n).toNat + 140)

end

end A316008.P15406844106625169981

/-! ## A316008.P2109034387271150988

`A316009(n*A287378(n))`
-/

namespace A316008.P2109034387271150988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316009 ((n : ℤ) * A287378 n).toNat

end

end A316008.P2109034387271150988

/-! ## A316008.P11802796638789088480

`A316009(n)%A095627(n)`
-/

namespace A316008.P11802796638789088480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316009 n) (A095627 n)

end

end A316008.P11802796638789088480

/-! ## A316008.P17263457567957212742

`A316009(n)+A056594(A245116(n))`
-/

namespace A316008.P17263457567957212742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316009 n + A056594 (A245116 n).toNat

end

end A316008.P17263457567957212742

/-! ## A316008.P13059313055817429995

`A316005(n)+A025469(A316109(n))`
-/

namespace A316008.P13059313055817429995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316005 n + A025469 (A316109 n).toNat

end

end A316008.P13059313055817429995

/-!
# A316009: Coordination sequence Gal.6.141.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316009, there is no canonical definition to state claims against.
-/

/-! ## A316009.P17190725575517416285

`A340998(A000031(n))+A316008(n)`
-/

namespace A316009.P17190725575517416285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A000031 n).toNat + 140) + A316008 n

end

end A316009.P17190725575517416285

/-!
# A316012: Coordination sequence Gal.6.336.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316012, there is no canonical definition to state claims against.
-/

/-! ## A316012.P5160057624266473535

`A315347(n)-A001221(A071725(n))`
-/

namespace A316012.P5160057624266473535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315347 n - A001221 (A071725 n).toNat

end

end A316012.P5160057624266473535

/-! ## A316012.P9962607947927009910

`A316020(A087051(n))-A071055(A004525(n))`
-/

namespace A316012.P9962607947927009910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316020 (A087051 n).toNat - A071055 (A004525 n).toNat

end

end A316012.P9962607947927009910

/-! ## A316012.P7338249972526541488

`A316020(A087051(n))-A071055(A000265(n+1))`
-/

namespace A316012.P7338249972526541488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316020 (A087051 n).toNat - A071055 (A000265 (n + 1)).toNat

end

end A316012.P7338249972526541488

/-!
# A316014: Coordination sequence Gal.6.557.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316014, there is no canonical definition to state claims against.
-/

/-! ## A316014.P5192256269924457635

`A160755(A329790(n+1)+A008706(n))`
-/

namespace A316014.P5192256269924457635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A329790 (n + 1) + A008706 n).toNat

end

end A316014.P5192256269924457635

/-! ## A316014.P17424879766656725853

`∑[A086287(A092584(n+1))]`
-/

namespace A316014.P17424879766656725853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086287 (A092584 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316014.P17424879766656725853

/-! ## A316014.P12140410949289322697

`∑[A086374(8*n+1)%A262488(10*n+2)]`
-/

namespace A316014.P12140410949289322697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086374 (8 * n + 1)) (A262488 (10 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316014.P12140410949289322697

/-!
# A316015: Coordination sequence Gal.6.608.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316015, there is no canonical definition to state claims against.
-/

/-! ## A316015.P164896084261766628

`A316016(n)-A235145(A243083(n))`
-/

namespace A316015.P164896084261766628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316016 n - A235145 (A243083 n).toNat

end

end A316015.P164896084261766628

/-! ## A316015.P11043792640793139581

`A167904(A316016(n))`
-/

namespace A316015.P11043792640793139581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167904 (A316016 n).toNat

end

end A316015.P11043792640793139581

/-! ## A316015.P11058313876192288884

`A316016(A089840(∑[n]))`
-/

namespace A316015.P11058313876192288884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316016 (A089840 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A316015.P11058313876192288884

/-! ## A316015.P17382690887662769489

`A316016(A187829(n+2)-2)`
-/

namespace A316015.P17382690887662769489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316016 (A187829 (n + 2) - 2).toNat

end

end A316015.P17382690887662769489

/-! ## A316015.P14811957304925662428

`A316016(n)%A067598(n+1)`
-/

namespace A316015.P14811957304925662428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316016 n) (A067598 (n + 1))

end

end A316015.P14811957304925662428

/-!
# A316016: Coordination sequence Gal.6.607.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316016, there is no canonical definition to state claims against.
-/

/-! ## A316016.P9560142131324645287

`A316015(n)+A235145(A243083(n))`
-/

namespace A316016.P9560142131324645287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316015 n + A235145 (A243083 n).toNat

end

end A316016.P9560142131324645287

/-! ## A316016.P18414955526158840636

`or(A185294(A062028(n)), A316015(n))`
-/

namespace A316016.P18414955526158840636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185294 (A062028 n).toNat) (A316015 n)

end

end A316016.P18414955526158840636

/-! ## A316016.P14701875417583414548

`or(A036987(A187829(n+1)), A316015(n))`
-/

namespace A316016.P14701875417583414548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 (A187829 (n + 1)).toNat) (A316015 n)

end

end A316016.P14701875417583414548

/-! ## A316016.P8101059741592390322

`or(A151667(A075502(n+1)), A316015(n))`
-/

namespace A316016.P8101059741592390322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151667 (A075502 (n + 1)).toNat) (A316015 n)

end

end A316016.P8101059741592390322

/-!
# A316017: Coordination sequence Gal.6.603.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316017, there is no canonical definition to state claims against.
-/

/-! ## A316017.P9797613573571253886

`A316004(n)+A316018(n)-A316005(n)`
-/

namespace A316017.P9797613573571253886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316004 n + (A316018 n - A316005 n)

end

end A316017.P9797613573571253886

/-! ## A316017.P725426499776510266

`A316018(n)-A281034(A087036(n+1))`
-/

namespace A316017.P725426499776510266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316018 n - A281034 (A087036 (n + 1)).toNat

end

end A316017.P725426499776510266

/-! ## A316017.P15517188880486040292

`A316018(n)-A281034(A276142(n+1))`
-/

namespace A316017.P15517188880486040292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316018 n - A281034 (A276142 (n + 1)).toNat

end

end A316017.P15517188880486040292

/-!
# A316018: Coordination sequence Gal.6.602.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316018, there is no canonical definition to state claims against.
-/

/-! ## A316018.P16026293165141158998

`A316005(n)+A316017(n)-A316004(n)`
-/

namespace A316018.P16026293165141158998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316005 n + (A316017 n - A316004 n)

end

end A316018.P16026293165141158998

/-! ## A316018.P1598618984374251499

`A316017(n)+A281034(A276142(n+1))`
-/

namespace A316018.P1598618984374251499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316017 n + A281034 (A276142 (n + 1)).toNat

end

end A316018.P1598618984374251499

/-!
# A316019: Coordination sequence Gal.6.604.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316019, there is no canonical definition to state claims against.
-/

/-! ## A316019.P12140145247706838254

`A316003(n)+A316049(n)-A316002(n)`
-/

namespace A316019.P12140145247706838254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316003 n + (A316049 n - A316002 n)

end

end A316019.P12140145247706838254

/-! ## A316019.P9454673837528264714

`A316020(n)%p?[2^n+3]`
-/

namespace A316019.P9454673837528264714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316020 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A316019.P9454673837528264714

/-! ## A316019.P15499643470436768403

`A316020(n^(1-(∑{digits}[n, #]-n)))`
-/

namespace A316019.P15499643470436768403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316020 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A316019.P15499643470436768403

/-! ## A316019.P16974289981840403502

`A316020(A087051(n))`
-/

namespace A316019.P16974289981840403502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316020 (A087051 n).toNat

end

end A316019.P16974289981840403502

/-! ## A316019.P10898641526335673449

`A316020(A227549(n+1))`
-/

namespace A316019.P10898641526335673449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316020 (A227549 (n + 1)).toNat

end

end A316019.P10898641526335673449

/-!
# A316020: Coordination sequence Gal.5.260.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316020, there is no canonical definition to state claims against.
-/

/-! ## A316020.P14698048286552631054

`or(A185255(3*n), A316019(n))`
-/

namespace A316020.P14698048286552631054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185255 (3 * n)) (A316019 n)

end

end A316020.P14698048286552631054

/-! ## A316020.P15064102644698812050

`A335446(A270831(n+1))+A316019(n)`
-/

namespace A316020.P15064102644698812050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A270831 (n + 1)).toNat + A316019 n

end

end A316020.P15064102644698812050

/-!
# A316023: Coordination sequence Gal.6.85.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316023, there is no canonical definition to state claims against.
-/

/-! ## A316023.P5727137023843696912

`eq[Δ[A024326(n+1)], A058710(n)]`
-/

namespace A316023.P5727137023843696912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024326 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A316023.P5727137023843696912

/-! ## A316023.P9375275671565591658

`eq[A097805(n), A298247(A166274(n+2))]`
-/

namespace A316023.P9375275671565591658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298247 (A166274 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316023.P9375275671565591658

/-! ## A316023.P9649041996996452604

`eq[A001222(A055129(2*n+1)), A391726(n+1)]`
-/

namespace A316023.P9649041996996452604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055129 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391726 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316023.P9649041996996452604

/-!
# A316024: Coordination sequence Gal.6.477.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316024, there is no canonical definition to state claims against.
-/

/-! ## A316024.P1928089571529382725

`A315578(2*n)/A324645(A243279(n+1))`
-/

namespace A316024.P1928089571529382725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315578 (2 * n) : ℚ) / (A324645 (A243279 (n + 1)).toNat : ℚ)

end

end A316024.P1928089571529382725

/-!
# A316026: Coordination sequence Gal.3.36.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316026, the canonical program `A316026.P4023097474816276442` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316026 has offset 0).

The definition of A316026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316026.P4023097474816276442

`3*floor(a(n-1)/8+n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A316026

/-- `3*floor(a(n-1)/8+n+1)` -/
def P4023097474816276442.Spec : Prop :=
  ∀ n, P4023097474816276442.a n = A316026 n

theorem P4023097474816276442.correct : P4023097474816276442.Spec := by
  intro n
  simp only [A316026]

end A316026

/-! ## A316026.P7769944095307149955

`A008486(round(8*n/5))`
-/

namespace A316026.P7769944095307149955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway (8 * ((n : ℚ) / 5))).toNat

end

end A316026.P7769944095307149955

namespace A316026

/-- `A008486(round(8*n/5))` -/
def P7769944095307149955.Spec : Prop :=
  ∀ n, P7769944095307149955.a n = A316026 n

end A316026

/-! ## A316026.P4984848031490515973

`A047555(floor(2/acot(n))+n+1)`
-/

namespace A316026.P4984848031490515973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A316026.P4984848031490515973

namespace A316026

/-- `A047555(floor(2/acot(n))+n+1)` -/
def P4984848031490515973.Spec : Prop :=
  ∀ n, P4984848031490515973.a n = A316026 n

end A316026

/-! ## A316026.P3459570341333959050

`A008574(round(8*n/5))-round(8*n/5)`
-/

namespace A316026.P3459570341333959050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway (8 * ((n : ℚ) / 5))).toNat - SequenceMachineLib.roundAway (8 * ((n : ℚ) / 5))

end

end A316026.P3459570341333959050

namespace A316026

/-- `A008574(round(8*n/5))-round(8*n/5)` -/
def P3459570341333959050.Spec : Prop :=
  ∀ n, P3459570341333959050.a n = A316026 n

end A316026

/-! ## A316026.P4391248869784925818

`A047555(A008486(n)+1)`
-/

namespace A316026.P4391248869784925818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (A008486 n + 1).toNat

end

end A316026.P4391248869784925818

namespace A316026

/-- `A047555(A008486(n)+1)` -/
def P4391248869784925818.Spec : Prop :=
  ∀ n, P4391248869784925818.a n = A316026 n

end A316026

/-! ## A316026.P13030214994088550223

`A047555(A033627(n+2))`
-/

namespace A316026.P13030214994088550223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (A033627 (n + 2)).toNat

end

end A316026.P13030214994088550223

namespace A316026

/-- `A047555(A033627(n+2))` -/
def P13030214994088550223.Spec : Prop :=
  ∀ n, P13030214994088550223.a n = A316026 n

end A316026

/-! ## A316026.P14622995057199037367

`A296515(A047496(n+2))`
-/

namespace A316026.P14622995057199037367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296515 (A047496 (n + 2)).toNat

end

end A316026.P14622995057199037367

namespace A316026

/-- `A296515(A047496(n+2))` -/
def P14622995057199037367.Spec : Prop :=
  ∀ n, P14622995057199037367.a n = A316026 n

end A316026

/-! ## A316026.P11662165623621394228

`A301729(2*A047448(n+1))`
-/

namespace A316026.P11662165623621394228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 (2 * A047448 (n + 1)).toNat

end

end A316026.P11662165623621394228

namespace A316026

/-- `A301729(2*A047448(n+1))` -/
def P11662165623621394228.Spec : Prop :=
  ∀ n, P11662165623621394228.a n = A316026 n

end A316026

/-! ## A316026.P15627113309197202311

`A047555(A004277(n)+1+n)`
-/

namespace A316026.P15627113309197202311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (A004277 n + 1 + (n : ℤ)).toNat

end

end A316026.P15627113309197202311

namespace A316026

/-- `A047555(A004277(n)+1+n)` -/
def P15627113309197202311.Spec : Prop :=
  ∀ n, P15627113309197202311.a n = A316026 n

end A316026

/-! ## A316026.P11289286684573389134

`A359376(n+1)+A072154(n)`
-/

namespace A316026.P11289286684573389134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359376 (n + 1) + A072154 n

end

end A316026.P11289286684573389134

namespace A316026

/-- `A359376(n+1)+A072154(n)` -/
def P11289286684573389134.Spec : Prop :=
  ∀ n, P11289286684573389134.a n = A316026 n

end A316026

/-! ## A316026.P9115711791057497186

`A047555(A004273(n)+2+n)`
-/

namespace A316026.P9115711791057497186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (A004273 n + 2 + (n : ℤ)).toNat

end

end A316026.P9115711791057497186

namespace A316026

/-- `A047555(A004273(n)+2+n)` -/
def P9115711791057497186.Spec : Prop :=
  ∀ n, P9115711791057497186.a n = A316026 n

end A316026

/-! ## A316026.P6099767074279885289

`A313568(n)+A244895(2*n)`
-/

namespace A316026.P6099767074279885289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n + A244895 (2 * n)

end

end A316026.P6099767074279885289

namespace A316026

/-- `A313568(n)+A244895(2*n)` -/
def P6099767074279885289.Spec : Prop :=
  ∀ n, P6099767074279885289.a n = A316026 n

end A316026

/-! ## A316026.P7168930850513836692

`2*A250120(n)-A313232(n)`
-/

namespace A316026.P7168930850513836692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250120 n - A313232 n

end

end A316026.P7168930850513836692

namespace A316026

/-- `2*A250120(n)-A313232(n)` -/
def P7168930850513836692.Spec : Prop :=
  ∀ n, P7168930850513836692.a n = A316026 n

end A316026

/-! ## A316026.P17713635540236087003

`2*A315874(n)-A315832(n)`
-/

namespace A316026.P17713635540236087003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315874 n - A315832 n

end

end A316026.P17713635540236087003

namespace A316026

/-- `2*A315874(n)-A315832(n)` -/
def P17713635540236087003.Spec : Prop :=
  ∀ n, P17713635540236087003.a n = A316026 n

end A316026

/-! ## A316026.P3000939768682301593

`A000007(n)+3*A047448(n+1)`
-/

namespace A316026.P3000939768682301593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 3 * A047448 (n + 1)

end

end A316026.P3000939768682301593

namespace A316026

/-- `A000007(n)+3*A047448(n+1)` -/
def P3000939768682301593.Spec : Prop :=
  ∀ n, P3000939768682301593.a n = A316026 n

end A316026

/-! ## A316026.P15563569863454633799

`A008458(n)-A265188(n+1)+n`
-/

namespace A316026.P15563569863454633799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A265188 (n + 1) + (n : ℤ)

end

end A316026.P15563569863454633799

namespace A316026

/-- `A008458(n)-A265188(n+1)+n` -/
def P15563569863454633799.Spec : Prop :=
  ∀ n, P15563569863454633799.a n = A316026 n

end A316026

/-! ## A316026.P14340799104464452951

`∪[2*A136290(n+1), A136290(2*n)]`
-/

namespace A316026.P14340799104464452951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136290 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316026.P14340799104464452951

namespace A316026

/-- `∪[2*A136290(n+1), A136290(2*n)]` -/
def P14340799104464452951.Spec : Prop :=
  ∀ n, (P14340799104464452951.a n : ℤ) = A316026 n

end A316026

/-! ## A316026.P8347183300769708866

`A047513(A047516(n+1)+A004277(n))`
-/

namespace A316026.P8347183300769708866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (A047516 (n + 1) + A004277 n).toNat

end

end A316026.P8347183300769708866

namespace A316026

/-- `A047513(A047516(n+1)+A004277(n))` -/
def P8347183300769708866.Spec : Prop :=
  ∀ n, P8347183300769708866.a n = A316026 n

end A316026

/-! ## A316026.P10891722595055784250

`A315187(n)-A244895(n-A244895(n))`
-/

namespace A316026.P10891722595055784250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n - A244895 ((n : ℤ) - A244895 n).toNat

end

end A316026.P10891722595055784250

namespace A316026

/-- `A315187(n)-A244895(n-A244895(n))` -/
def P10891722595055784250.Spec : Prop :=
  ∀ n, P10891722595055784250.a n = A316026 n

end A316026

/-! ## A316026.P17915540008967685805

`A047448(n+1)+A004275(A047448(n+1)+1)`
-/

namespace A316026.P17915540008967685805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047448 (n + 1) + A004275 (A047448 (n + 1) + 1).toNat

end

end A316026.P17915540008967685805

namespace A316026

/-- `A047448(n+1)+A004275(A047448(n+1)+1)` -/
def P17915540008967685805.Spec : Prop :=
  ∀ n, P17915540008967685805.a n = A316026 n

end A316026

/-!
# A316027: Coordination sequence Gal.5.229.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316027, there is no canonical definition to state claims against.
-/

/-! ## A316027.P17765295905075885645

`record[gcd(A033886(n), A316026(n))]`
-/

namespace A316027.P17765295905075885645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033886 n) (A316026 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316027.P17765295905075885645

/-! ## A316027.P10492023342404598656

`A316026(A172534(n+4)+n)`
-/

namespace A316027.P10492023342404598656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316026 (A172534 (n + 4) + (n : ℤ)).toNat

end

end A316027.P10492023342404598656

/-! ## A316027.P18006338586071842007

`eq[char[A316026(n)], A354601(2*n+3)]`
-/

namespace A316027.P18006338586071842007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316026 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354601 (2 * n + 3 + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A316027.P18006338586071842007

/-! ## A316027.P13238185573711595501

`A008486(lt[comp[2*n+3], A108599(n+1)])`
-/

namespace A316027.P13238185573711595501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A316027.P13238185573711595501

/-! ## A316027.P16068821681698614873

`A315296(n)+A057428(A000719(n))`
-/

namespace A316027.P16068821681698614873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315296 n + A057428 (A000719 n).toNat

end

end A316027.P16068821681698614873

/-!
# A316030: Coordination sequence Gal.6.586.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316030, there is no canonical definition to state claims against.
-/

/-! ## A316030.P17237206503255378141

`A008486(lt[A098804(n+2), A084938(n+2)])`
-/

namespace A316030.P17237206503255378141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098804 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316030.P17237206503255378141

/-! ## A316030.P14867542717048548082

`∑[dr(A340997(A007088(n)))]`
-/

namespace A316030.P14867542717048548082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A340997 (A007088 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316030.P14867542717048548082

/-! ## A316030.P7207619934567325545

`A304412(2^A001481(n+1))`
-/

namespace A316030.P7207619934567325545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304412 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001481 (n + 1) : ℤ))).toNat

end

end A316030.P7207619934567325545

/-! ## A316030.P11449155324173367686

`(3*A166687(n+1))%p?[A192969(n)]`
-/

namespace A316030.P11449155324173367686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A166687 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A316030.P11449155324173367686

/-!
# A316031: Coordination sequence Gal.6.522.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316031, there is no canonical definition to state claims against.
-/

/-! ## A316031.P612944436201654928

`A097087(7*n+5)+n-1-char[A047363(n+5)]`
-/

namespace A316031.P612944436201654928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097087 (7 * n + 5) + ((n : ℤ) - 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A316031.P612944436201654928

/-! ## A316031.P10572140668441711297

`or(A010873(A352184(n)), A311976(n))`
-/

namespace A316031.P10572140668441711297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010873 (A352184 n).toNat) (A311976 n)

end

end A316031.P10572140668441711297

/-! ## A316031.P13141144934719097195

`A097087(7*n+5)+n-1-A033909(A311846(n))`
-/

namespace A316031.P13141144934719097195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097087 (7 * n + 5) + ((n : ℤ) - 1) - A033909 (A311846 n).toNat

end

end A316031.P13141144934719097195

/-! ## A316031.P207184298081059061

`A097087(7*n+5)+n-1-A003415(A045778(n+1))`
-/

namespace A316031.P207184298081059061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097087 (7 * n + 5) + ((n : ℤ) - 1) - A003415 (A045778 (n + 1)).toNat

end

end A316031.P207184298081059061

/-!
# A316032: Coordination sequence Gal.6.523.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316032, there is no canonical definition to state claims against.
-/

/-! ## A316032.P14912661798407285833

`A097087(7*n+5)+n-1`
-/

namespace A316032.P14912661798407285833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097087 (7 * n + 5) + ((n : ℤ) - 1)

end

end A316032.P14912661798407285833

/-! ## A316032.P6524970925388090905

`or(A123110(A134357(n)), A316031(n))`
-/

namespace A316032.P6524970925388090905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123110 (A134357 n).toNat) (A316031 n)

end

end A316032.P6524970925388090905

/-! ## A316032.P10767436599434136344

`or(A010673(n), A346130(A311846(n)))`
-/

namespace A316032.P10767436599434136344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010673 n) (A346130 (A311846 n).toNat)

end

end A316032.P10767436599434136344

/-! ## A316032.P13725970411193209477

`A090858(A082217(n+1))+A016813(n)`
-/

namespace A316032.P13725970411193209477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090858 (A082217 (n + 1)).toNat + A016813 n

end

end A316032.P13725970411193209477

/-! ## A316032.P9419607250092507690

`A297469(n)-A303975(A234346(2*n+3))`
-/

namespace A316032.P9419607250092507690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297469 n - A303975 (A234346 (2 * n + 3)).toNat

end

end A316032.P9419607250092507690

/-!
# A316033: Coordination sequence Gal.6.462.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316033, there is no canonical definition to state claims against.
-/

/-! ## A316033.P12697105672478046410

`A185816(3^n)+∑[A057958(n+1)]`
-/

namespace A316033.P12697105672478046410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185816 (3 ^ n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316033.P12697105672478046410

/-! ## A316033.P13257576190424800367

`A311235(n)+A001222(A033114(n+1))`
-/

namespace A316033.P13257576190424800367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311235 n + A001222 (A033114 (n + 1)).toNat

end

end A316033.P13257576190424800367

/-! ## A316033.P14954724488378213288

`A359768(A093793(n+1))+A314498(n)`
-/

namespace A316033.P14954724488378213288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359768 (A093793 (n + 1)).toNat + A314498 n

end

end A316033.P14954724488378213288

/-! ## A316033.P14211280096576754736

`A336922(A184189(n+1))+A311465(n)`
-/

namespace A316033.P14211280096576754736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336922 (A184189 (n + 1)).toNat + A311465 n

end

end A316033.P14211280096576754736

/-! ## A316033.P8176169636342031307

`A063097(n+1)-A063059(A063098(n+1))`
-/

namespace A316033.P8176169636342031307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063097 (n + 1) - A063059 (A063098 (n + 1)).toNat

end

end A316033.P8176169636342031307

/-!
# A316034: Coordination sequence Gal.6.425.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316034, there is no canonical definition to state claims against.
-/

/-! ## A316034.P7975322162618284088

`A131396(A131396(3*n+5))-A325424(3*n+5)`
-/

namespace A316034.P7975322162618284088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131396 (A131396 (3 * n + 5)).toNat - A325424 (3 * n + 5)

end

end A316034.P7975322162618284088

/-! ## A316034.P14600585508417971512

`A302696(3*(n+1))-A061775(∑[3^n]+2)`
-/

namespace A316034.P14600585508417971512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (3 * (n + 1)) - A061775 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A316034.P14600585508417971512

/-! ## A316034.P12165893982581343497

`A334441(A058269(2*n+3))+A155764(n+1)`
-/

namespace A316034.P12165893982581343497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334441 (A058269 (2 * n + 3)).toNat + A155764 (n + 1)

end

end A316034.P12165893982581343497

/-!
# A316037: Coordination sequence Gal.6.575.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316037, there is no canonical definition to state claims against.
-/

/-! ## A316037.P9237017319932762304

`A250120(n)+A010874(A075929(n))`
-/

namespace A316037.P9237017319932762304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A010874 (A075929 n).toNat

end

end A316037.P9237017319932762304

/-! ## A316037.P7563753467503209265

`A281116(A126369(n))+A250120(n)`
-/

namespace A316037.P7563753467503209265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A126369 n).toNat + A250120 n

end

end A316037.P7563753467503209265

/-! ## A316037.P10894981522320859331

`A315911(n)+A284388(A083313(n))`
-/

namespace A316037.P10894981522320859331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315911 n + A284388 (A083313 n).toNat

end

end A316037.P10894981522320859331

/-! ## A316037.P1731437235900380016

`A301694(n)-A001221(A258830(n))`
-/

namespace A316037.P1731437235900380016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A001221 (A258830 n).toNat

end

end A316037.P1731437235900380016

/-! ## A316037.P17973769210671077927

`A250120(n)+A249856(A139250(n+4))`
-/

namespace A316037.P17973769210671077927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A249856 (A139250 (n + 4)).toNat

end

end A316037.P17973769210671077927

/-!
# A316038: Coordination sequence Gal.6.409.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316038, there is no canonical definition to state claims against.
-/

/-! ## A316038.P15845998171775639330

`A310836(n)+A023416(A324943(n+1))`
-/

namespace A316038.P15845998171775639330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310836 n + A023416 (A324943 (n + 1)).toNat

end

end A316038.P15845998171775639330

/-! ## A316038.P12136927676574314662

`A359768(A093793(n+1))+A314511(n)`
-/

namespace A316038.P12136927676574314662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359768 (A093793 (n + 1)).toNat + A314511 n

end

end A316038.P12136927676574314662

/-!
# A316039: Coordination sequence Gal.6.576.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316039, there is no canonical definition to state claims against.
-/

/-! ## A316039.P8552627340981626482

`A316038(n)+A275926(A029892(n+1))`
-/

namespace A316039.P8552627340981626482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316038 n + A275926 (A029892 (n + 1)).toNat

end

end A316039.P8552627340981626482

/-!
# A316041: Coordination sequence Gal.6.362.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316041, there is no canonical definition to state claims against.
-/

/-! ## A316041.P12937172119749139647

`eq[Δ[A089840(2*n+3)], A167373(n)]`
-/

namespace A316041.P12937172119749139647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167373 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A316041.P12937172119749139647

/-! ## A316041.P14613311348045286085

`A008486(A087051(n)+A074753(n+1))`
-/

namespace A316041.P14613311348045286085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A087051 n + A074753 (n + 1)).toNat

end

end A316041.P14613311348045286085

/-! ## A316041.P10879191790589634654

`A008486(A060107(n+1)%A121950(n+1))`
-/

namespace A316041.P10879191790589634654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A060107 (n + 1)) (A121950 (n + 1))).toNat

end

end A316041.P10879191790589634654

/-! ## A316041.P6044291597683884039

`lt[A238658(n+3), A238648(A238643(2*n+3))]`
-/

namespace A316041.P6044291597683884039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238658 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238648 (A238643 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316041.P6044291597683884039

/-! ## A316041.P1737842895978950452

`∑[gcd(A101101(n+1), A244360(3*n+4))]`
-/

namespace A316041.P1737842895978950452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101101 (n + 1)) (A244360 (3 * n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316041.P1737842895978950452

/-!
# A316042: Coordination sequence Gal.6.594.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316042, there is no canonical definition to state claims against.
-/

/-! ## A316042.P13335305107971993444

`or(A311662(n), A333224(A222730(2*n+1)))`
-/

namespace A316042.P13335305107971993444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311662 n) (A333224 (A222730 (2 * n + 1)).toNat)

end

end A316042.P13335305107971993444

/-! ## A316042.P12951431750649765338

`A315349(n)-A001222(A004211(n))`
-/

namespace A316042.P12951431750649765338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315349 n - A001222 (A004211 n).toNat

end

end A316042.P12951431750649765338

/-! ## A316042.P292986082682161144

`xor(A030567(A253945(n+4)), A314034(n))`
-/

namespace A316042.P292986082682161144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A030567 (A253945 (n + 4)).toNat) (A314034 n)

end

end A316042.P292986082682161144

/-! ## A316042.P11299924804075050686

`A018252(A138008(n+1)^A343132(n+1))`
-/

namespace A316042.P11299924804075050686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.roundAway ((A138008 (n + 1) : ℚ) ^ (A343132 (n + 1) : ℤ))).toNat

end

end A316042.P11299924804075050686

/-! ## A316042.P566393429750926635

`A018252(A343132(n+1)²²*A138008(n+1))`
-/

namespace A316042.P566393429750926635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ((A343132 (n + 1) ^ 2) ^ 2 * A138008 (n + 1)).toNat

end

end A316042.P566393429750926635

/-!
# A316043: Coordination sequence Gal.5.277.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316043, there is no canonical definition to state claims against.
-/

/-! ## A316043.P14732235831291432117

`A314887(n)+A025075(A001793(n+1))`
-/

namespace A316043.P14732235831291432117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314887 n + A025075 (A001793 (n + 1)).toNat

end

end A316043.P14732235831291432117

/-! ## A316043.P8041824275280862968

`A315345(n)-A001222(A079574(n+1))`
-/

namespace A316043.P8041824275280862968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315345 n - A001222 (A079574 (n + 1)).toNat

end

end A316043.P8041824275280862968

/-!
# A316044: Coordination sequence Gal.5.330.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316044, there is no canonical definition to state claims against.
-/

/-! ## A316044.P10427685935365974080

`or(A086251(A056441(n+1)), A316041(n))`
-/

namespace A316044.P10427685935365974080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086251 (A056441 (n + 1)).toNat) (A316041 n)

end

end A316044.P10427685935365974080

/-! ## A316044.P11716753372779407872

`or(A193330(A174937(n+1)), A313278(n))`
-/

namespace A316044.P11716753372779407872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A193330 (A174937 (n + 1)).toNat) (A313278 n)

end

end A316044.P11716753372779407872

/-! ## A316044.P3559496867579662841

`∑[A069288(A313182(2*n+1)*A313216(2*(n+2)))]`
-/

namespace A316044.P3559496867579662841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (A313182 (2 * n + 1) * A313216 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316044.P3559496867579662841

/-! ## A316044.P755307564894376515

`A004396(n)+A312120(n)+A010051(A331715(n+1))`
-/

namespace A316044.P755307564894376515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A312120 n + A010051 (A331715 (n + 1)).toNat)

end

end A316044.P755307564894376515

/-! ## A316044.P392721877372436030

`A004396(n)+A250120(n)-A341618(A066186(3*n+2))`
-/

namespace A316044.P392721877372436030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A250120 n - A341618 (A066186 (3 * n + 2)).toNat)

end

end A316044.P392721877372436030

/-!
# A316046: Coordination sequence Gal.3.58.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316046, there is no canonical definition to state claims against.
-/

/-! ## A316046.P6230176888726651408

`A006368(A315341(n)-2*n)`
-/

namespace A316046.P6230176888726651408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315341 n - (2 * n : ℤ)).toNat

end

end A316046.P6230176888726651408

/-! ## A316046.P15200827739491542444

`A032766(A315341(n)-2*n)`
-/

namespace A316046.P15200827739491542444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A315341 n - (2 * n : ℤ)).toNat

end

end A316046.P15200827739491542444

/-! ## A316046.P4233935594056006482

`A080512(A315341(n)-2*n)`
-/

namespace A316046.P4233935594056006482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A315341 n - (2 * n : ℤ)).toNat

end

end A316046.P4233935594056006482

/-! ## A316046.P10260236786519703532

`A257143(A315341(n)-2*n)`
-/

namespace A316046.P10260236786519703532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 (A315341 n - (2 * n : ℤ)).toNat

end

end A316046.P10260236786519703532

/-! ## A316046.P17072201607217717290

`A006368(A315341(n)-n-n)`
-/

namespace A316046.P17072201607217717290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315341 n - (n : ℤ) - (n : ℤ)).toNat

end

end A316046.P17072201607217717290

/-! ## A316046.P5104470199577376685

`A032766(A315341(n)-n-n)`
-/

namespace A316046.P5104470199577376685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A315341 n - (n : ℤ) - (n : ℤ)).toNat

end

end A316046.P5104470199577376685

/-! ## A316046.P14396738168699013580

`A080512(A315341(n)-n-n)`
-/

namespace A316046.P14396738168699013580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A315341 n - (n : ℤ) - (n : ℤ)).toNat

end

end A316046.P14396738168699013580

/-! ## A316046.P10136372133983097071

`A257143(A315341(n)-n-n)`
-/

namespace A316046.P10136372133983097071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 (A315341 n - (n : ℤ) - (n : ℤ)).toNat

end

end A316046.P10136372133983097071

/-! ## A316046.P7754294429948738775

`A315341(n)-A001281(A008458(n)-A315341(n))`
-/

namespace A316046.P7754294429948738775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315341 n - A001281 (A008458 n - A315341 n).toNat

end

end A316046.P7754294429948738775

/-! ## A316046.P17678857671688930564

`A315341(n)-A004525(A008458(n)-A315341(n))`
-/

namespace A316046.P17678857671688930564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315341 n - A004525 (A008458 n - A315341 n).toNat

end

end A316046.P17678857671688930564

/-! ## A316046.P5398008836128120808

`A315341(n)-A004526(A008458(n)-A315341(n))`
-/

namespace A316046.P5398008836128120808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315341 n - A004526 (A008458 n - A315341 n).toNat

end

end A316046.P5398008836128120808

/-! ## A316046.P18334170623349320872

`A315341(n)-A006370(A008458(n)-A315341(n))`
-/

namespace A316046.P18334170623349320872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315341 n - A006370 (A008458 n - A315341 n).toNat

end

end A316046.P18334170623349320872

/-! ## A316046.P9502702611031372843

`A315341(n)-A110654(A008458(n)-A315341(n))`
-/

namespace A316046.P9502702611031372843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315341 n - A110654 (A008458 n - A315341 n).toNat

end

end A316046.P9502702611031372843

/-! ## A316046.P3150248958497783370

`A008486(A315542(n)-A008574(n))`
-/

namespace A316046.P3150248958497783370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315542 n - A008574 n).toNat

end

end A316046.P3150248958497783370

/-! ## A316046.P11977710474260451377

`A008486(A315542(n)%A008574(n))`
-/

namespace A316046.P11977710474260451377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A315542 n) (A008574 n)).toNat

end

end A316046.P11977710474260451377

/-! ## A316046.P7551409882730065977

`A008486(A315542(n)-(A008486(n)+n))`
-/

namespace A316046.P7551409882730065977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315542 n - (A008486 n + (n : ℤ))).toNat

end

end A316046.P7551409882730065977

/-! ## A316046.P18213626959935587522

`A008486(A315542(n)-n-A008486(n))`
-/

namespace A316046.P18213626959935587522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315542 n - (n : ℤ) - A008486 n).toNat

end

end A316046.P18213626959935587522

/-! ## A316046.P45105657723036205

`A315542(n)-A005843(A008458(n)-A315542(n))`
-/

namespace A316046.P45105657723036205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315542 n - A005843 (A008458 n - A315542 n).toNat

end

end A316046.P45105657723036205

/-! ## A316046.P13563834850297667563

`A007494(A315341(n))-A008486(n)`
-/

namespace A316046.P13563834850297667563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A315341 n).toNat - A008486 n

end

end A316046.P13563834850297667563

/-!
# A316047: Coordination sequence Gal.6.374.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316047, the canonical program `A316047.P5627716830039855321` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316047 has offset 0).

The definition of A316047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316047.P5627716830039855321

`A008486(round(A301694(n)/3))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A316047

/-- `A008486(round(A301694(n)/3))` -/
def P5627716830039855321.Spec : Prop :=
  ∀ n, P5627716830039855321.a n = A316047 n

theorem P5627716830039855321.correct : P5627716830039855321.Spec := by
  intro n
  simp only [A316047]

end A316047

/-! ## A316047.P15396942068256227393

`A008486(A004396(A004396(4*n)))`
-/

namespace A316047.P15396942068256227393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004396 (A004396 (4 * n)).toNat).toNat

end

end A316047.P15396942068256227393

namespace A316047

/-- `A008486(A004396(A004396(4*n)))` -/
def P15396942068256227393.Spec : Prop :=
  ∀ n, P15396942068256227393.a n = A316047 n

end A316047

/-! ## A316047.P7942749063901617091

`A008486(A008458(n)-A312893(n))`
-/

namespace A316047.P7942749063901617091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A008458 n - A312893 n).toNat

end

end A316047.P7942749063901617091

namespace A316047

/-- `A008486(A008458(n)-A312893(n))` -/
def P7942749063901617091.Spec : Prop :=
  ∀ n, P7942749063901617091.a n = A316047 n

end A316047

/-! ## A316047.P9896154188417943261

`A004396(A008576(n))*A122553(n)`
-/

namespace A316047.P9896154188417943261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008576 n).toNat * A122553 n

end

end A316047.P9896154188417943261

namespace A316047

/-- `A004396(A008576(n))*A122553(n)` -/
def P9896154188417943261.Spec : Prop :=
  ∀ n, P9896154188417943261.a n = A316047 n

end A316047

/-! ## A316047.P17125286808628084358

`A008486(A008458(n)%A312893(n))`
-/

namespace A316047.P17125286808628084358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A008458 n) (A312893 n)).toNat

end

end A316047.P17125286808628084358

namespace A316047

/-- `A008486(A008458(n)%A312893(n))` -/
def P17125286808628084358.Spec : Prop :=
  ∀ n, P17125286808628084358.a n = A316047 n

end A316047

/-! ## A316047.P10973553550697762641

`A008486(A008486(2*n)-A312893(n))`
-/

namespace A316047.P10973553550697762641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A008486 (2 * n) - A312893 n).toNat

end

end A316047.P10973553550697762641

namespace A316047

/-- `A008486(A008486(2*n)-A312893(n))` -/
def P10973553550697762641.Spec : Prop :=
  ∀ n, P10973553550697762641.a n = A316047 n

end A316047

/-! ## A316047.P5778952558850548667

`A008486(round(A313796(n)/3))`
-/

namespace A316047.P5778952558850548667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((A313796 n : ℚ) / 3)).toNat

end

end A316047.P5778952558850548667

namespace A316047

/-- `A008486(round(A313796(n)/3))` -/
def P5778952558850548667.Spec : Prop :=
  ∀ n, P5778952558850548667.a n = A316047 n

end A316047

/-! ## A316047.P5946984445526321558

`A008486(round(A313799(n)/3))`
-/

namespace A316047.P5946984445526321558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((A313799 n : ℚ) / 3)).toNat

end

end A316047.P5946984445526321558

namespace A316047

/-- `A008486(round(A313799(n)/3))` -/
def P5946984445526321558.Spec : Prop :=
  ∀ n, P5946984445526321558.a n = A316047 n

end A316047

/-! ## A316047.P13545369380463329427

`A008486(round(A313894(n)/3))`
-/

namespace A316047.P13545369380463329427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((A313894 n : ℚ) / 3)).toNat

end

end A316047.P13545369380463329427

namespace A316047

/-- `A008486(round(A313894(n)/3))` -/
def P13545369380463329427.Spec : Prop :=
  ∀ n, P13545369380463329427.a n = A316047 n

end A316047

/-! ## A316047.P9983993070169884166

`A008486(round(A313909(n)/3))`
-/

namespace A316047.P9983993070169884166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((A313909 n : ℚ) / 3)).toNat

end

end A316047.P9983993070169884166

namespace A316047

/-- `A008486(round(A313909(n)/3))` -/
def P9983993070169884166.Spec : Prop :=
  ∀ n, P9983993070169884166.a n = A316047 n

end A316047

/-! ## A316047.P1094710848887278545

`A006368(A315343(n)-2*n)`
-/

namespace A316047.P1094710848887278545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315343 n - (2 * n : ℤ)).toNat

end

end A316047.P1094710848887278545

namespace A316047

/-- `A006368(A315343(n)-2*n)` -/
def P1094710848887278545.Spec : Prop :=
  ∀ n, P1094710848887278545.a n = A316047 n

end A316047

/-! ## A316047.P17207528748589226526

`A006368(A315343(n)-n-n)`
-/

namespace A316047.P17207528748589226526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315343 n - (n : ℤ) - (n : ℤ)).toNat

end

end A316047.P17207528748589226526

namespace A316047

/-- `A006368(A315343(n)-n-n)` -/
def P17207528748589226526.Spec : Prop :=
  ∀ n, P17207528748589226526.a n = A316047 n

end A316047

/-! ## A316047.P10771366884602151569

`A315343(n)-A004396(n-A004396(n))`
-/

namespace A316047.P10771366884602151569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315343 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A316047.P10771366884602151569

namespace A316047

/-- `A315343(n)-A004396(n-A004396(n))` -/
def P10771366884602151569.Spec : Prop :=
  ∀ n, P10771366884602151569.a n = A316047 n

end A316047

/-! ## A316047.P5598650723759203416

`A008486(A315546(n)-A008574(n))`
-/

namespace A316047.P5598650723759203416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315546 n - A008574 n).toNat

end

end A316047.P5598650723759203416

namespace A316047

/-- `A008486(A315546(n)-A008574(n))` -/
def P5598650723759203416.Spec : Prop :=
  ∀ n, P5598650723759203416.a n = A316047 n

end A316047

/-! ## A316047.P2625535425985796930

`A008486(A315546(n)-(A008486(n)+n))`
-/

namespace A316047.P2625535425985796930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315546 n - (A008486 n + (n : ℤ))).toNat

end

end A316047.P2625535425985796930

namespace A316047

/-- `A008486(A315546(n)-(A008486(n)+n))` -/
def P2625535425985796930.Spec : Prop :=
  ∀ n, P2625535425985796930.a n = A316047 n

end A316047

/-! ## A316047.P6326186346222647395

`A008486(A315546(n)-n-A008486(n))`
-/

namespace A316047.P6326186346222647395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315546 n - (n : ℤ) - A008486 n).toNat

end

end A316047.P6326186346222647395

namespace A316047

/-- `A008486(A315546(n)-n-A008486(n))` -/
def P6326186346222647395.Spec : Prop :=
  ∀ n, P6326186346222647395.a n = A316047 n

end A316047

/-!
# A316048: Coordination sequence Gal.5.324.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316048, there is no canonical definition to state claims against.
-/

/-! ## A316048.P5478743671338667891

`A180101(A211422(n))+A000720(n+1)`
-/

namespace A316048.P5478743671338667891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A211422 n).toNat + A000720 (n + 1)

end

end A316048.P5478743671338667891

/-!
# A316049: Coordination sequence Gal.3.44.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316049, there is no canonical definition to state claims against.
-/

/-! ## A316049.P6054189131363432309

`A316002(n)+A316019(n)-A316003(n)`
-/

namespace A316049.P6054189131363432309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316002 n + (A316019 n - A316003 n)

end

end A316049.P6054189131363432309

/-! ## A316049.P17242264398688664965

`A316002(n)+A316019(n)%(A033999(n)*A316003(n))`
-/

namespace A316049.P17242264398688664965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316002 n + Int.tmod (A316019 n) (A033999 n * A316003 n)

end

end A316049.P17242264398688664965

/-! ## A316049.P842146963563823733

`A316020(n^(1-(∑{digits}[n, #]-n)))+A316002(n)-A316003(n)`
-/

namespace A316049.P842146963563823733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316020 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat + A316002 n - A316003 n

end

end A316049.P842146963563823733

/-!
# A316051: Coordination sequence Gal.6.19.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316051, there is no canonical definition to state claims against.
-/

/-! ## A316051.P4121367421116629725

`A316052(n)-A257013(A256978(2*n+1))`
-/

namespace A316051.P4121367421116629725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316052 n - A257013 (A256978 (2 * n + 1)).toNat

end

end A316051.P4121367421116629725

/-! ## A316051.P7143326707867463196

`A315447(n)+A216188(3^n)-A047363(A308694(n+1))`
-/

namespace A316051.P7143326707867463196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315447 n + A216188 (3 ^ n) - A047363 (A308694 (n + 1)).toNat

end

end A316051.P7143326707867463196

/-!
# A316052: Coordination sequence Gal.6.502.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316052, there is no canonical definition to state claims against.
-/

/-! ## A316052.P5947326342639258609

`A316051(n)+A257013(A256978(2*n+1))`
-/

namespace A316052.P5947326342639258609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316051 n + A257013 (A256978 (2 * n + 1)).toNat

end

end A316052.P5947326342639258609

/-!
# A316053: Coordination sequence Gal.6.561.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316053, there is no canonical definition to state claims against.
-/

/-! ## A316053.P15538283178425888142

`∑[or(4^(n%2), A006530(n!))]`
-/

namespace A316053.P15538283178425888142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ (n % 2) : ℤ) (A006530 (Nat.factorial n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316053.P15538283178425888142

/-! ## A316053.P11921892707044794339

`∑[A032741(∑[A099228(3*n+2)])]`
-/

namespace A316053.P11921892707044794339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099228 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316053.P11921892707044794339

/-! ## A316053.P16332256952891790547

`∑[A381032(∑[A326083(3*n+2)])]`
-/

namespace A316053.P16332256952891790547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326083 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381032 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316053.P16332256952891790547

/-! ## A316053.P16973035521952145290

`A122599(n+2)-A005385(A287377(n))`
-/

namespace A316053.P16973035521952145290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122599 (n + 2) - A005385 (A287377 n).toNat

end

end A316053.P16973035521952145290

/-!
# A316054: Coordination sequence Gal.6.57.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316054, there is no canonical definition to state claims against.
-/

/-! ## A316054.P7847317809670471227

`A008836(A220124(n))+A008587(n)`
-/

namespace A316054.P7847317809670471227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A220124 n).toNat + A008587 n

end

end A316054.P7847317809670471227

/-! ## A316054.P14575108661734632687

`A165574(A104326(n))+A008706(n)`
-/

namespace A316054.P14575108661734632687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165574 (A104326 n).toNat + A008706 n

end

end A316054.P14575108661734632687

/-! ## A316054.P15409999014131326357

`A008587(n)-A087960(A317792(n))`
-/

namespace A316054.P15409999014131326357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n - A087960 (A317792 n).toNat

end

end A316054.P15409999014131326357

/-! ## A316054.P15232007116971929144

`A087960(A317792(n)+2)+A008587(n)`
-/

namespace A316054.P15232007116971929144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A317792 n + 2).toNat + A008587 n

end

end A316054.P15232007116971929144

/-! ## A316054.P13081905622656394408

`A008587(n)-A008836(2*A220124(n))`
-/

namespace A316054.P13081905622656394408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n - A008836 (2 * A220124 n).toNat

end

end A316054.P13081905622656394408

/-!
# A316056: Coordination sequence Gal.5.227.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316056, there is no canonical definition to state claims against.
-/

/-! ## A316056.P3127957210675271949

`A343029(A233454(n+1))+A250120(n)`
-/

namespace A316056.P3127957210675271949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (A233454 (n + 1)).toNat + A250120 n

end

end A316056.P3127957210675271949

/-! ## A316056.P6198476143267577951

`A343029(A233454(n+1))+A047309(2*n+1)+A004273(n)`
-/

namespace A316056.P6198476143267577951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (A233454 (n + 1)).toNat + (A047309 (2 * n + 1) + A004273 n)

end

end A316056.P6198476143267577951

/-! ## A316056.P10020677042563899462

`A343029(A233454(n+1))+A022144(n)-A047486(2*n+1)`
-/

namespace A316056.P10020677042563899462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (A233454 (n + 1)).toNat + (A022144 n - A047486 (2 * n + 1))

end

end A316056.P10020677042563899462

/-! ## A316056.P1474151034582321354

`A343029(A233454(n+1))+A022144(n)+1-A047412(2*(n+1))`
-/

namespace A316056.P1474151034582321354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (A233454 (n + 1)).toNat + (A022144 n + 1 - A047412 (2 * (n + 1)))

end

end A316056.P1474151034582321354

/-! ## A316056.P4095667524853605846

`A343029(A233454(n+1))+A047363(2*n+1)+A028310(2*n)`
-/

namespace A316056.P4095667524853605846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (A233454 (n + 1)).toNat + (A047363 (2 * n + 1) + A028310 (2 * n))

end

end A316056.P4095667524853605846

/-!
# A316057: Coordination sequence Gal.6.503.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316057, there is no canonical definition to state claims against.
-/

/-! ## A316057.P16353286506620238640

`A303708(A326173(n+2))+A250120(n)`
-/

namespace A316057.P16353286506620238640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303708 (A326173 (n + 2)).toNat + A250120 n

end

end A316057.P16353286506620238640

/-! ## A316057.P8386691989960516746

`eq[A161685(A161665(n+1)), A161687(2*(n+2))]`
-/

namespace A316057.P8386691989960516746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161685 (A161665 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161687 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316057.P8386691989960516746

/-!
# A316058: Coordination sequence Gal.5.225.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316058, there is no canonical definition to state claims against.
-/

/-! ## A316058.P10666236366411104957

`A008683(A199206(n))+5*n`
-/

namespace A316058.P10666236366411104957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A199206 n).toNat + (5 * n : ℤ)

end

end A316058.P10666236366411104957

/-! ## A316058.P13510724956293279476

`A276438(A261547(n))+5*n`
-/

namespace A316058.P13510724956293279476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276438 (A261547 n).toNat + (5 * n : ℤ)

end

end A316058.P13510724956293279476

/-! ## A316058.P7293423462728514853

`A221170(n²)+A000277(2*n)`
-/

namespace A316058.P7293423462728514853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221170 (n ^ 2) + A000277 (2 * n)

end

end A316058.P7293423462728514853

/-! ## A316058.P703547741009100299

`A165326(A000041(3*(n+1)))+floor(n/10)+5*n%10`
-/

namespace A316058.P703547741009100299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A000041 (3 * (n + 1))).toNat + (⌊(n : ℚ) / 10⌋ + ((5 * (n % 10) : ℕ) : ℤ))

end

end A316058.P703547741009100299

/-! ## A316058.P859667095597350861

`A061821(n+1)+A008683(A199206(n))`
-/

namespace A316058.P859667095597350861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061821 (n + 1) + A008683 (A199206 n).toNat

end

end A316058.P859667095597350861

/-!
# A316059: Coordination sequence Gal.6.596.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316059, there is no canonical definition to state claims against.
-/

/-! ## A316059.P2443861411180991676

`A314486(n)+A087117(A217918(2*n+1))`
-/

namespace A316059.P2443861411180991676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314486 n + A087117 (A217918 (2 * n + 1)).toNat

end

end A316059.P2443861411180991676

/-!
# A316060: Coordination sequence Gal.6.75.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316060, there is no canonical definition to state claims against.
-/

/-! ## A316060.P3336149221718177627

`A315440(n)-A000122(A141769(n+2))`
-/

namespace A316060.P3336149221718177627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315440 n - A000122 (A141769 (n + 2)).toNat

end

end A316060.P3336149221718177627

/-! ## A316060.P9900867184153344205

`A316063(n)-A028961(A000110(n))`
-/

namespace A316060.P9900867184153344205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316063 n - A028961 (A000110 n).toNat

end

end A316060.P9900867184153344205

/-! ## A316060.P16436341475151355158

`A315440(n)-A000038(A291504(n))`
-/

namespace A316060.P16436341475151355158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315440 n - A000038 (A291504 n).toNat

end

end A316060.P16436341475151355158

/-! ## A316060.P1065737376970430805

`xor(A007949(A096611(n+4)), A315440(n))`
-/

namespace A316060.P1065737376970430805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007949 (A096611 (n + 4)).toNat) (A315440 n)

end

end A316060.P1065737376970430805

/-!
# A316061: Coordination sequence Gal.5.258.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316061, there is no canonical definition to state claims against.
-/

/-! ## A316061.P12488260718560620471

`A348341(A000108(n))+A316058(n)`
-/

namespace A316061.P12488260718560620471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348341 (A000108 n).toNat + A316058 n

end

end A316061.P12488260718560620471

/-! ## A316061.P298739474900556339

`A213923(A298413(n)²)-n`
-/

namespace A316061.P298739474900556339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213923 (A298413 n ^ 2).toNat - (n : ℤ)

end

end A316061.P298739474900556339

/-! ## A316061.P14212230779831655442

`∑[A056753(p?[A155850(n+1)])]`
-/

namespace A316061.P14212230779831655442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155850 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316061.P14212230779831655442

/-! ## A316061.P8872026438552852134

`∑[A327921(A327916(n+1)+1)]`
-/

namespace A316061.P8872026438552852134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327921 (A327916 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316061.P8872026438552852134

/-!
# A316062: Coordination sequence Gal.5.323.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316062, there is no canonical definition to state claims against.
-/

/-! ## A316062.P4505185522488822950

`∑[A338718(9*(n+1))]-2^floor(n/2)`
-/

namespace A316062.P4505185522488822950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338718 (9 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A316062.P4505185522488822950

/-!
# A316063: Coordination sequence Gal.5.274.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316063, there is no canonical definition to state claims against.
-/

/-! ## A316063.P2395800337872449346

`A316060(n)+A028961(A000110(n))`
-/

namespace A316063.P2395800337872449346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316060 n + A028961 (A000110 n).toNat

end

end A316063.P2395800337872449346

/-! ## A316063.P7810981535285382586

`A067774(n+1)-A000120(A085829(n+1))`
-/

namespace A316063.P7810981535285382586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1) - A000120 (A085829 (n + 1)).toNat

end

end A316063.P7810981535285382586

/-! ## A316063.P3257347244147840194

`A194967(A062504(n)*A062537(3*n+2))`
-/

namespace A316063.P3257347244147840194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194967 (A062504 n * A062537 (3 * n + 2)).toNat

end

end A316063.P3257347244147840194

/-! ## A316063.P16840167674303124674

`A194967(A062537(3*n+2)*A199343(n))`
-/

namespace A316063.P16840167674303124674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194967 (A062537 (3 * n + 2) * A199343 n).toNat

end

end A316063.P16840167674303124674

/-!
# A316065: Coordination sequence Gal.4.151.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316065, there is no canonical definition to state claims against.
-/

/-! ## A316065.P6372188762841463556

`A301697(n)-A126647(3*n+1)%(n+2)+1`
-/

namespace A316065.P6372188762841463556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - Int.tmod (A126647 (3 * n + 1)) (n + 2 : ℤ) + 1

end

end A316065.P6372188762841463556

/-! ## A316065.P7263055313627622111

`A316066(n)-A056170(A056218(n))`
-/

namespace A316065.P7263055313627622111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316066 n - A056170 (A056218 n).toNat

end

end A316065.P7263055313627622111

/-! ## A316065.P3814451834814657509

`eq[A019428(A065094(n+1)), A182481(n+1)]`
-/

namespace A316065.P3814451834814657509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A065094 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316065.P3814451834814657509

/-! ## A316065.P2600333473009402934

`eq[A019428(A102697(n+1)), A182481(n+1)]`
-/

namespace A316065.P2600333473009402934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A102697 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316065.P2600333473009402934

/-!
# A316066: Coordination sequence Gal.5.329.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316066, there is no canonical definition to state claims against.
-/

/-! ## A316066.P17184361774127371516

`A316065(n)+A056170(A056218(n))`
-/

namespace A316066.P17184361774127371516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316065 n + A056170 (A056218 n).toNat

end

end A316066.P17184361774127371516

/-!
# A316069: Coordination sequence Gal.6.584.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316069, the canonical program `A316069.P231267025210607898` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316069 has offset 0).

The definition of A316069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316069.P4914613272841364192

`(A315817(n)+A008458(n))/2`
-/

namespace A316069.P4914613272841364192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315817 n + A008458 n : ℚ) / 2

end

end A316069.P4914613272841364192

namespace A316069

/-- `(A315817(n)+A008458(n))/2` -/
def P4914613272841364192.Spec : Prop :=
  ∀ n, P4914613272841364192.a n = (A316069 n : ℚ)

end A316069

/-! ## A316069.P17750831670783760988

`(A315817(n)+A008486(2*n))/2`
-/

namespace A316069.P17750831670783760988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315817 n + A008486 (2 * n) : ℚ) / 2

end

end A316069.P17750831670783760988

namespace A316069

/-- `(A315817(n)+A008486(2*n))/2` -/
def P17750831670783760988.Spec : Prop :=
  ∀ n, P17750831670783760988.a n = (A316069 n : ℚ)

end A316069

/-! ## A316069.P231267025210607898

`A315817(n)+A001281(A008458(n)-A315817(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A316069

/-- `A315817(n)+A001281(A008458(n)-A315817(n))` -/
def P231267025210607898.Spec : Prop :=
  ∀ n, P231267025210607898.a n = A316069 n

theorem P231267025210607898.correct : P231267025210607898.Spec := by
  intro n
  simp only [A316069]

end A316069

/-! ## A316069.P6225219607663898664

`A315817(n)+A004525(A008458(n)-A315817(n))`
-/

namespace A316069.P6225219607663898664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315817 n + A004525 (A008458 n - A315817 n).toNat

end

end A316069.P6225219607663898664

namespace A316069

/-- `A315817(n)+A004525(A008458(n)-A315817(n))` -/
def P6225219607663898664.Spec : Prop :=
  ∀ n, P6225219607663898664.a n = A316069 n

end A316069

/-! ## A316069.P6084165118460761116

`A008458(n)-A004526(A008458(n)-A315817(n))`
-/

namespace A316069.P6084165118460761116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315817 n).toNat

end

end A316069.P6084165118460761116

namespace A316069

/-- `A008458(n)-A004526(A008458(n)-A315817(n))` -/
def P6084165118460761116.Spec : Prop :=
  ∀ n, P6084165118460761116.a n = A316069 n

end A316069

/-! ## A316069.P780556479036587026

`A008486(A315559(n)-A008574(n))`
-/

namespace A316069.P780556479036587026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315559 n - A008574 n).toNat

end

end A316069.P780556479036587026

namespace A316069

/-- `A008486(A315559(n)-A008574(n))` -/
def P780556479036587026.Spec : Prop :=
  ∀ n, P780556479036587026.a n = A316069 n

end A316069

/-! ## A316069.P4861852838732155150

`A008486(A315559(n)%A008574(n))`
-/

namespace A316069.P4861852838732155150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A315559 n) (A008574 n)).toNat

end

end A316069.P4861852838732155150

namespace A316069

/-- `A008486(A315559(n)%A008574(n))` -/
def P4861852838732155150.Spec : Prop :=
  ∀ n, P4861852838732155150.a n = A316069 n

end A316069

/-! ## A316069.P16969223522177659330

`A008486(A315559(n)-(A008486(n)+n))`
-/

namespace A316069.P16969223522177659330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315559 n - (A008486 n + (n : ℤ))).toNat

end

end A316069.P16969223522177659330

namespace A316069

/-- `A008486(A315559(n)-(A008486(n)+n))` -/
def P16969223522177659330.Spec : Prop :=
  ∀ n, P16969223522177659330.a n = A316069 n

end A316069

/-! ## A316069.P18434061945306589946

`A008486(A315559(n)-n-A008486(n))`
-/

namespace A316069.P18434061945306589946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315559 n - (n : ℤ) - A008486 n).toNat

end

end A316069.P18434061945306589946

namespace A316069

/-- `A008486(A315559(n)-n-A008486(n))` -/
def P18434061945306589946.Spec : Prop :=
  ∀ n, P18434061945306589946.a n = A316069 n

end A316069

/-! ## A316069.P8677228670223339039

`3*n+A004525(A315817(n))`
-/

namespace A316069.P8677228670223339039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A004525 (A315817 n).toNat

end

end A316069.P8677228670223339039

namespace A316069

/-- `3*n+A004525(A315817(n))` -/
def P8677228670223339039.Spec : Prop :=
  ∀ n, P8677228670223339039.a n = A316069 n

end A316069

/-! ## A316069.P3787025268249320007

`A008486(n)+A004526(A315817(n))`
-/

namespace A316069.P3787025268249320007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315817 n).toNat

end

end A316069.P3787025268249320007

namespace A316069

/-- `A008486(n)+A004526(A315817(n))` -/
def P3787025268249320007.Spec : Prop :=
  ∀ n, P3787025268249320007.a n = A316069 n

end A316069

/-! ## A316069.P7380771985186534992

`A004525(A315817(n))+A008588(n)/2`
-/

namespace A316069.P7380771985186534992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (A315817 n).toNat : ℚ) + (A008588 n : ℚ) / 2

end

end A316069.P7380771985186534992

namespace A316069

/-- `A004525(A315817(n))+A008588(n)/2` -/
def P7380771985186534992.Spec : Prop :=
  ∀ n, P7380771985186534992.a n = (A316069 n : ℚ)

end A316069

/-! ## A316069.P10423203259853181795

`A001281(A315817(n)+A008458(n))`
-/

namespace A316069.P10423203259853181795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315817 n + A008458 n).toNat

end

end A316069.P10423203259853181795

namespace A316069

/-- `A001281(A315817(n)+A008458(n))` -/
def P10423203259853181795.Spec : Prop :=
  ∀ n, P10423203259853181795.a n = A316069 n

end A316069

/-! ## A316069.P11771800926183174192

`A004525(A315817(n)+A008458(n))`
-/

namespace A316069.P11771800926183174192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315817 n + A008458 n).toNat

end

end A316069.P11771800926183174192

namespace A316069

/-- `A004525(A315817(n)+A008458(n))` -/
def P11771800926183174192.Spec : Prop :=
  ∀ n, P11771800926183174192.a n = A316069 n

end A316069

/-! ## A316069.P1709324991952810052

`A004526(A315817(n)+A008458(n))`
-/

namespace A316069.P1709324991952810052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315817 n + A008458 n).toNat

end

end A316069.P1709324991952810052

namespace A316069

/-- `A004526(A315817(n)+A008458(n))` -/
def P1709324991952810052.Spec : Prop :=
  ∀ n, P1709324991952810052.a n = A316069 n

end A316069

/-! ## A316069.P13322445265933368293

`A004525(A315817(n)+A008588(n))`
-/

namespace A316069.P13322445265933368293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315817 n + A008588 n).toNat

end

end A316069.P13322445265933368293

namespace A316069

/-- `A004525(A315817(n)+A008588(n))` -/
def P13322445265933368293.Spec : Prop :=
  ∀ n, P13322445265933368293.a n = A316069 n

end A316069

/-!
# A316070: Coordination sequence Gal.4.138.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316070, there is no canonical definition to state claims against.
-/

/-! ## A316070.P14902922209972430075

`A115634(A132838(n))+floor(2/acot(3*n))`
-/

namespace A316070.P14902922209972430075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115634 (A132838 n).toNat + ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋

end

end A316070.P14902922209972430075

/-! ## A316070.P8979844938406141728

`A008486(eq[A017883(n), A133872(n)])`
-/

namespace A316070.P8979844938406141728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017883 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A316070.P8979844938406141728

/-!
# A316071: Coordination sequence Gal.6.668.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A316071, the canonical program `A316071.P6549777269613727759` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316071 has offset 0).

The definition of A316071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316071.P12656590148711432147

`(A315823(n)+A008458(n))/2`
-/

namespace A316071.P12656590148711432147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315823 n + A008458 n : ℚ) / 2

end

end A316071.P12656590148711432147

namespace A316071

/-- `(A315823(n)+A008458(n))/2` -/
def P12656590148711432147.Spec : Prop :=
  ∀ n, P12656590148711432147.a n = (A316071 n : ℚ)

end A316071

/-! ## A316071.P6549777269613727759

`A315823(n)+A004525(A008458(n)-A315823(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A316071

/-- `A315823(n)+A004525(A008458(n)-A315823(n))` -/
def P6549777269613727759.Spec : Prop :=
  ∀ n, P6549777269613727759.a n = A316071 n

theorem P6549777269613727759.correct : P6549777269613727759.Spec := by
  intro n
  simp only [A316071]

end A316071

/-! ## A316071.P14302596293954819138

`A315823(n)+A006370(A008458(n)-A315823(n))`
-/

namespace A316071.P14302596293954819138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315823 n + A006370 (A008458 n - A315823 n).toNat

end

end A316071.P14302596293954819138

namespace A316071

/-- `A315823(n)+A006370(A008458(n)-A315823(n))` -/
def P14302596293954819138.Spec : Prop :=
  ∀ n, P14302596293954819138.a n = A316071 n

end A316071

/-! ## A316071.P11157910316504228029

`A008458(n)-A004526(A008458(n)-A315823(n))`
-/

namespace A316071.P11157910316504228029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315823 n).toNat

end

end A316071.P11157910316504228029

namespace A316071

/-- `A008458(n)-A004526(A008458(n)-A315823(n))` -/
def P11157910316504228029.Spec : Prop :=
  ∀ n, P11157910316504228029.a n = A316071 n

end A316071

/-! ## A316071.P10126529725174390997

`A006368(A315365(n)-2*n)`
-/

namespace A316071.P10126529725174390997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315365 n - (2 * n : ℤ)).toNat

end

end A316071.P10126529725174390997

namespace A316071

/-- `A006368(A315365(n)-2*n)` -/
def P10126529725174390997.Spec : Prop :=
  ∀ n, P10126529725174390997.a n = A316071 n

end A316071

/-! ## A316071.P17799535592303856820

`A032766(A315365(n)-2*n)`
-/

namespace A316071.P17799535592303856820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A315365 n - (2 * n : ℤ)).toNat

end

end A316071.P17799535592303856820

namespace A316071

/-- `A032766(A315365(n)-2*n)` -/
def P17799535592303856820.Spec : Prop :=
  ∀ n, P17799535592303856820.a n = A316071 n

end A316071

/-! ## A316071.P8269625263457918083

`A006368(A315365(n)-n-n)`
-/

namespace A316071.P8269625263457918083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315365 n - (n : ℤ) - (n : ℤ)).toNat

end

end A316071.P8269625263457918083

namespace A316071

/-- `A006368(A315365(n)-n-n)` -/
def P8269625263457918083.Spec : Prop :=
  ∀ n, P8269625263457918083.a n = A316071 n

end A316071

/-! ## A316071.P3134339204929511320

`A032766(A315365(n)-n-n)`
-/

namespace A316071.P3134339204929511320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A315365 n - (n : ℤ) - (n : ℤ)).toNat

end

end A316071.P3134339204929511320

namespace A316071

/-- `A032766(A315365(n)-n-n)` -/
def P3134339204929511320.Spec : Prop :=
  ∀ n, P3134339204929511320.a n = A316071 n

end A316071

/-! ## A316071.P3260294760699244807

`A315365(n)-A001281(A008458(n)-A315365(n))`
-/

namespace A316071.P3260294760699244807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315365 n - A001281 (A008458 n - A315365 n).toNat

end

end A316071.P3260294760699244807

namespace A316071

/-- `A315365(n)-A001281(A008458(n)-A315365(n))` -/
def P3260294760699244807.Spec : Prop :=
  ∀ n, P3260294760699244807.a n = A316071 n

end A316071

/-! ## A316071.P14914294836529596581

`A315365(n)-A004525(A008458(n)-A315365(n))`
-/

namespace A316071.P14914294836529596581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315365 n - A004525 (A008458 n - A315365 n).toNat

end

end A316071.P14914294836529596581

namespace A316071

/-- `A315365(n)-A004525(A008458(n)-A315365(n))` -/
def P14914294836529596581.Spec : Prop :=
  ∀ n, P14914294836529596581.a n = A316071 n

end A316071

/-! ## A316071.P6832791892602823452

`A315365(n)-A004526(A008458(n)-A315365(n))`
-/

namespace A316071.P6832791892602823452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315365 n - A004526 (A008458 n - A315365 n).toNat

end

end A316071.P6832791892602823452

namespace A316071

/-- `A315365(n)-A004526(A008458(n)-A315365(n))` -/
def P6832791892602823452.Spec : Prop :=
  ∀ n, P6832791892602823452.a n = A316071 n

end A316071

/-! ## A316071.P8617770851076291912

`A315365(n)-A006370(A008458(n)-A315365(n))`
-/

namespace A316071.P8617770851076291912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315365 n - A006370 (A008458 n - A315365 n).toNat

end

end A316071.P8617770851076291912

namespace A316071

/-- `A315365(n)-A006370(A008458(n)-A315365(n))` -/
def P8617770851076291912.Spec : Prop :=
  ∀ n, P8617770851076291912.a n = A316071 n

end A316071

/-! ## A316071.P5795305855161071017

`2*A315365(n)-A315564(n)`
-/

namespace A316071.P5795305855161071017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315365 n - A315564 n

end

end A316071.P5795305855161071017

namespace A316071

/-- `2*A315365(n)-A315564(n)` -/
def P5795305855161071017.Spec : Prop :=
  ∀ n, P5795305855161071017.a n = A316071 n

theorem P5795305855161071017.correct : P5795305855161071017.Spec := by
  intro n
  simp only [A316071, Nat.add_sub_cancel, A316071.P5795305855161071017.a, A316071.P6549777269613727759.a, A004525, A004525.P4158271949796742323.a, A008458, A008458.P7339383310184415644.a, A315365, A315365.P11913182021215947377.a, A315564, A315564.P2474443744462689244.a, A315823, A315823.P17886553791746179655.a, A004396, A004396.P17032557045289780609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316071

/-! ## A316071.P17605788835396000095

`A008486(A315564(n)-A008574(n))`
-/

namespace A316071.P17605788835396000095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315564 n - A008574 n).toNat

end

end A316071.P17605788835396000095

namespace A316071

/-- `A008486(A315564(n)-A008574(n))` -/
def P17605788835396000095.Spec : Prop :=
  ∀ n, P17605788835396000095.a n = A316071 n

end A316071

/-! ## A316071.P11531302218900017810

`A008486(A315564(n)%A008574(n))`
-/

namespace A316071.P11531302218900017810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A315564 n) (A008574 n)).toNat

end

end A316071.P11531302218900017810

namespace A316071

/-- `A008486(A315564(n)%A008574(n))` -/
def P11531302218900017810.Spec : Prop :=
  ∀ n, P11531302218900017810.a n = A316071 n

end A316071

/-! ## A316071.P18147810372036719433

`A008486(A315564(n)-(A008486(n)+n))`
-/

namespace A316071.P18147810372036719433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315564 n - (A008486 n + (n : ℤ))).toNat

end

end A316071.P18147810372036719433

namespace A316071

/-- `A008486(A315564(n)-(A008486(n)+n))` -/
def P18147810372036719433.Spec : Prop :=
  ∀ n, P18147810372036719433.a n = A316071 n

end A316071

/-! ## A316071.P303774226965001235

`A008486(A315564(n)-n-A008486(n))`
-/

namespace A316071.P303774226965001235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315564 n - (n : ℤ) - A008486 n).toNat

end

end A316071.P303774226965001235

namespace A316071

/-- `A008486(A315564(n)-n-A008486(n))` -/
def P303774226965001235.Spec : Prop :=
  ∀ n, P303774226965001235.a n = A316071 n

end A316071

/-! ## A316071.P5701516900801220516

`A315564(n)-A005843(A008458(n)-A315564(n))`
-/

namespace A316071.P5701516900801220516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315564 n - A005843 (A008458 n - A315564 n).toNat

end

end A316071.P5701516900801220516

namespace A316071

/-- `A315564(n)-A005843(A008458(n)-A315564(n))` -/
def P5701516900801220516.Spec : Prop :=
  ∀ n, P5701516900801220516.a n = A316071 n

end A316071

/-! ## A316071.P10360446201063279627

`A008486(n)+A004526(A315823(n))`
-/

namespace A316071.P10360446201063279627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315823 n).toNat

end

end A316071.P10360446201063279627

namespace A316071

/-- `A008486(n)+A004526(A315823(n))` -/
def P10360446201063279627.Spec : Prop :=
  ∀ n, P10360446201063279627.a n = A316071 n

end A316071

/-! ## A316071.P16569938409321298657

`A008585(n)+A004525(A315823(n))`
-/

namespace A316071.P16569938409321298657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A315823 n).toNat

end

end A316071.P16569938409321298657

namespace A316071

/-- `A008585(n)+A004525(A315823(n))` -/
def P16569938409321298657.Spec : Prop :=
  ∀ n, P16569938409321298657.a n = A316071 n

end A316071

/-!
# A316073: a(n) is the n-th term of the inverse Weigh transform of j-> n^(j-1).

The programs for A316073, there is no canonical definition to state claims against.
-/

/-! ## A316073.P11744934783683590654

`A383033((n+1)²+n²)`
-/

namespace A316073.P11744934783683590654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383033 ((n + 1) ^ 2 + n ^ 2)

end

end A316073.P11744934783683590654

/-! ## A316073.P4080739134468560293

`A372358(n+1)+A022838(A052880(n))`
-/

namespace A316073.P4080739134468560293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372358 (n + 1) + A022838 (A052880 n).toNat

end

end A316073.P4080739134468560293

/-!
# A316074: Sequence a_k of column k shifts left k places under Weigh transform and equals signum(n) for n<k; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A316074, there is no canonical definition to state claims against.
-/

/-! ## A316074.P16054541325184823792

`A339660(A209439(n)+3)`
-/

namespace A316074.P16054541325184823792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339660 (A209439 n + 3).toNat

end

end A316074.P16054541325184823792

/-! ## A316074.P17368571953105367023

`A108954(A331162(A258709(n)))`
-/

namespace A316074.P17368571953105367023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A331162 (A258709 n).toNat).toNat

end

end A316074.P17368571953105367023

/-! ## A316074.P18044041344996498595

`gcd(A000196(A335109(n+2)), A264704(n+1))`
-/

namespace A316074.P18044041344996498595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000196 (A335109 (n + 2)).toNat) (A264704 (n + 1))

end

end A316074.P18044041344996498595

/-! ## A316074.P782019776799371052

`A020492(floor(sqrt(A070979(n+1))))`
-/

namespace A316074.P782019776799371052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (Int.sqrt (A070979 (n + 1))).toNat

end

end A316074.P782019776799371052

/-! ## A316074.P15398669660769093959

`A070926(floor(sqrt(A070979(n+1))))`
-/

namespace A316074.P15398669660769093959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070926 (Int.sqrt (A070979 (n + 1))).toNat

end

end A316074.P15398669660769093959

/-!
# A316075: Sequence shifts left three places under Weigh transform with a(n) = signum(n) for n<3.

The programs for A316075, there is no canonical definition to state claims against.
-/

/-! ## A316075.P15026500928638016328

`ceil(A316074(A152949(n+1))-acot(n))`
-/

namespace A316075.P15026500928638016328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A316074 (A152949 (n + 1)).toNat : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A316075.P15026500928638016328

/-! ## A316075.P18326124689313528306

`A316074(A152949(n+1))-A000007(n)`
-/

namespace A316075.P18326124689313528306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (A152949 (n + 1)).toNat - A000007 n

end

end A316075.P18326124689313528306

/-! ## A316075.P9675851433800360546

`A316074(A152949(n+1))%A289892(n)`
-/

namespace A316075.P9675851433800360546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316074 (A152949 (n + 1)).toNat) (A289892 n)

end

end A316075.P9675851433800360546

/-! ## A316075.P3808752292956599141

`-(A057428(n)*A316074(A152949(n+1)))`
-/

namespace A316075.P3808752292956599141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A057428 n * A316074 (A152949 (n + 1)).toNat)

end

end A316075.P3808752292956599141

/-! ## A316075.P14225846006221241399

`A316074(A152949(n+1))-A008574(n)%2`
-/

namespace A316075.P14225846006221241399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (A152949 (n + 1)).toNat - Int.tmod (A008574 n) 2

end

end A316075.P14225846006221241399

/-! ## A316075.P13736804169565846763

`A316074(A152949(n+1))+n-A028310(n)`
-/

namespace A316075.P13736804169565846763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (A152949 (n + 1)).toNat + ((n : ℤ) - A028310 n)

end

end A316075.P13736804169565846763

/-! ## A316075.P9409605665646165250

`char[A064989(n+1)]*A316074(A152949(n+1))`
-/

namespace A316075.P9409605665646165250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A316074 (A152949 (n + 1)).toNat

end

end A316075.P9409605665646165250

/-!
# A316076: Sequence shifts left four places under Weigh transform with a(n) = signum(n) for n<4.

The programs for A316076, there is no canonical definition to state claims against.
-/

/-! ## A316076.P11438075477836312023

`ceil(A047781(n)/A051043(n))`
-/

namespace A316076.P11438075477836312023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A047781 n : ℚ) / (A051043 n : ℚ)⌉

end

end A316076.P11438075477836312023

/-! ## A316076.P17737929937387287863

`ceil(A000129(n)/A004275(A295756(n)))`
-/

namespace A316076.P17737929937387287863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000129 n : ℚ) / (A004275 (A295756 n).toNat : ℚ)⌉

end

end A316076.P17737929937387287863

/-! ## A316076.P6687853939923730042

`A316074(A076027(n+1))%A051043(n)`
-/

namespace A316076.P6687853939923730042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316074 (A076027 (n + 1)).toNat) (A051043 n)

end

end A316076.P6687853939923730042

/-! ## A316076.P1680491496994019937

`A135660(A316078(2*n)+A000006(n+1))`
-/

namespace A316076.P1680491496994019937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A316078 (2 * n) + A000006 (n + 1)).toNat

end

end A316076.P1680491496994019937

/-! ## A316076.P5117172078975122107

`A135660(A316078(2*n)+A000196(3*n+1))`
-/

namespace A316076.P5117172078975122107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A316078 (2 * n) + A000196 (3 * n + 1)).toNat

end

end A316076.P5117172078975122107

/-!
# A316077: Sequence shifts left five places under Weigh transform with a(n) = signum(n) for n<5.

The programs for A316077, there is no canonical definition to state claims against.
-/

/-! ## A316077.P8368520972675798190

`ceil(A056881(2*(n+2))/A000045(2*(n+2)))`
-/

namespace A316077.P8368520972675798190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056881 (2 * (n + 2)) : ℚ) / (A000045 (2 * (n + 2)) : ℚ)⌉

end

end A316077.P8368520972675798190

/-! ## A316077.P1844304603021303647

`ceil(A351008(3*n+2)/A235266(n+3))`
-/

namespace A316077.P1844304603021303647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A351008 (3 * n + 2) : ℚ) / (A235266 (n + 3) : ℚ)⌉

end

end A316077.P1844304603021303647

/-! ## A316077.P5661816239730238906

`ceil(A239482(3*n+5)/A035338(2*n+1))`
-/

namespace A316077.P5661816239730238906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A239482 (3 * n + 5) : ℚ) / (A035338 (2 * n + 1) : ℚ)⌉

end

end A316077.P5661816239730238906

/-! ## A316077.P9981100038504871015

`A204551(A060455(n))-A067158(n)`
-/

namespace A316077.P9981100038504871015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A060455 n).toNat - A067158 (n + 11)

end

end A316077.P9981100038504871015

/-! ## A316077.P10313935120240675003

`A204551(A060455(n))%A028260(n+1)`
-/

namespace A316077.P10313935120240675003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204551 (A060455 n).toNat) (A028260 (n + 1))

end

end A316077.P10313935120240675003

/-!
# A316083: Product_{k>=1} (1 + a(k)*x^k) = Sum_{k>=0} (k*x)^k.

The programs for A316083, there is no canonical definition to state claims against.
-/

/-! ## A316083.P16404496678647732880

`A189671(∏[A075328(n)])`
-/

namespace A316083.P16404496678647732880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A316083.P16404496678647732880

/-!
# A316084: Product_{k>=1} 1/(1 - a(k)*x^k) = Sum_{k>=0} k!*x^k.

The programs for A316084, there is no canonical definition to state claims against.
-/

/-! ## A316084.P9776368116249068690

`xor(A112354(n+1), A249422(A129315(n+1)))`
-/

namespace A316084.P9776368116249068690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A112354 (n + 1)) (A249422 (A129315 (n + 1)).toNat)

end

end A316084.P9776368116249068690

/-! ## A316084.P12064303815702619817

`A112354(n+1)-A184156(A184184(3*n+2))`
-/

namespace A316084.P12064303815702619817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112354 (n + 1) - A184156 (A184184 (3 * n + 2)).toNat

end

end A316084.P12064303815702619817

/-!
# A316085: Product_{k>=1} 1/(1 - a(k)*x^k) = Sum_{k>=0} (k*x)^k.

The programs for A316085, there is no canonical definition to state claims against.
-/

/-! ## A316085.P3637340690132175452

`A028310(or(A052590(n), A215143(n)))`
-/

namespace A316085.P3637340690132175452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A052590 n) (A215143 n)).toNat

end

end A316085.P3637340690132175452

/-!
# A316087: Expansion of 1/(1 + Sum_{k>=1} k^2 * x^k).

The programs for A316087, the canonical program `A316087.P18205932350151207741` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316087 has offset 0).

The definition of A316087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316087.P18205932350151207741

`ogf((1-3x+3x^2-x^3)/(1-2x+4x^2-x^3))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A316087

/-- `ogf((1-3x+3x^2-x^3)/(1-2x+4x^2-x^3))` -/
def P18205932350151207741.Spec : Prop :=
  ∀ n, P18205932350151207741.a n = A316087 n

theorem P18205932350151207741.correct : P18205932350151207741.Spec := by
  intro n
  simp only [A316087]

end A316087

/-!
# A316088: Expansion of 1/(1 + Sum_{k>=1} k^3 * x^k).

The programs for A316088, the canonical program `A316088.P17423804625064477979` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316088 has offset 0).

The definition of A316088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A316088.P17423804625064477979

`ogf((1-4x+6x^2-4x^3+x^4)/(1-3x+10x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A316088

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1-3x+10x^2-3x^3+x^4))` -/
def P17423804625064477979.Spec : Prop :=
  ∀ n, P17423804625064477979.a n = A316088 n

theorem P17423804625064477979.correct : P17423804625064477979.Spec := by
  intro n
  simp only [A316088]

end A316088

/-!
# A316089: Number of ordered (k_1, k_2, ..., k_r) such that (Z/nZ)* is isomorphic to C_{k_1} X C_{k_2} X ... X C_{k_r}. Here (Z/nZ)* is the multiplicative group of integers modulo n, r = rank((Z/nZ)*).

The programs for A316089, there is no canonical definition to state claims against.
-/

/-! ## A316089.P5953573120907637240

`A081373(A046072(n+1)^A270032(n+1))`
-/

namespace A316089.P5953573120907637240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (SequenceMachineLib.roundAway ((A046072 (n + 1) : ℚ) ^ (A270032 (n + 1) : ℤ))).toNat

end

end A316089.P5953573120907637240

/-! ## A316089.P5426539278925173027

`A046072(A046072(n+1)^A308211(n+1))`
-/

namespace A316089.P5426539278925173027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (SequenceMachineLib.roundAway ((A046072 (n + 1) : ℚ) ^ (A308211 (n + 1) : ℤ))).toNat

end

end A316089.P5426539278925173027

/-! ## A316089.P11019320814577023894

`A046072(A046072(n+1)^A308213(n+1))`
-/

namespace A316089.P11019320814577023894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (SequenceMachineLib.roundAway ((A046072 (n + 1) : ℚ) ^ (A308213 (n + 1) : ℤ))).toNat

end

end A316089.P11019320814577023894

/-! ## A316089.P1977787832647376619

`A046072(A290084(n+1)^A191613(n+1))`
-/

namespace A316089.P1977787832647376619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (SequenceMachineLib.roundAway ((A290084 (n + 1) : ℚ) ^ (A191613 (n + 1) : ℤ))).toNat

end

end A316089.P1977787832647376619

/-! ## A316089.P6435224565178060375

`A046072(A046072(n+1)^A373069(n+4))`
-/

namespace A316089.P6435224565178060375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (SequenceMachineLib.roundAway ((A046072 (n + 1) : ℚ) ^ (A373069 (n + 4) : ℤ))).toNat

end

end A316089.P6435224565178060375

/-!
# A316091: Heinz numbers of integer partitions of prime numbers.

The programs for A316091, there is no canonical definition to state claims against.
-/

/-! ## A316091.P11013079933992191885

`eq[1, ∑{e}[A056239(n+1), #]]+1`
-/

namespace A316091.P11013079933992191885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A316091.P11013079933992191885

/-! ## A316091.P4544448920597265607

`eq[1, A003415(A056239(n+1))]+1`
-/

namespace A316091.P4544448920597265607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A056239 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316091.P4544448920597265607

/-! ## A316091.P2849840011717624092

`eq[1, A321452(A056239(n+2))]+2`
-/

namespace A316091.P2849840011717624092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321452 (A056239 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A316091.P2849840011717624092

/-! ## A316091.P464979525217006075

`eq[2, A074206(A056239(n+1)²)]+1`
-/

namespace A316091.P464979525217006075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A056239 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316091.P464979525217006075

/-! ## A316091.P2214030847374929065

`eq[1, A032741(A056239(A028310(n)))]`
-/

namespace A316091.P2214030847374929065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A056239 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316091.P2214030847374929065

/-! ## A316091.P2089398711104965374

`eq[2, A000005(A056239(A233583(n+1)))]`
-/

namespace A316091.P2089398711104965374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056239 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316091.P2089398711104965374

/-!
# A316092: Heinz numbers of integer partitions of prime numbers into prime parts.

The programs for A316092, there is no canonical definition to state claims against.
-/

/-! ## A316092.P12471597373132602079

`∪[A316151(n+1), A316153(n+1)]%A316153(2*(n+2))`
-/

namespace A316092.P12471597373132602079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316153 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A316153 (2 * (n + 2)))

end

end A316092.P12471597373132602079

/-! ## A316092.P2908811622019293022

`∩[A076610(n+1), A316091(n+1)]`
-/

namespace A316092.P2908811622019293022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316092.P2908811622019293022

/-! ## A316092.P5624633239292273040

`A076610(A228912(n)+A007916(n+1))`
-/

namespace A316092.P5624633239292273040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (A228912 n + A007916 (n + 1)).toNat

end

end A316092.P5624633239292273040

/-! ## A316092.P14875459339536058257

`A076610(A317090(n+1)%A226366(n+1))`
-/

namespace A316092.P14875459339536058257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (Int.tmod (A317090 (n + 1)) (A226366 (n + 1))).toNat

end

end A316092.P14875459339536058257

/-! ## A316092.P14245442147467023356

`A076610(A341646(n+1)%A211134(n+3))`
-/

namespace A316092.P14245442147467023356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (Int.tmod (A341646 (n + 1)) (A211134 (n + 3))).toNat

end

end A316092.P14245442147467023356

/-!
# A316094: FDH numbers of strict integer partitions with odd parts.

The programs for A316094, there is no canonical definition to state claims against.
-/

/-! ## A316094.P2324357021413864113

`eq[A065251(2*n+1), A119395(A006094(n+1))]`
-/

namespace A316094.P2324357021413864113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065251 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 (A006094 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316094.P2324357021413864113

/-! ## A316094.P2150694106132316668

`eq[A345927(n), A345932(A218510(n))]`
-/

namespace A316094.P2150694106132316668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345927 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345932 (A218510 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316094.P2150694106132316668

/-! ## A316094.P13964382440245828669

`eq[A123536(A123545(n+1)), A345927(n)]`
-/

namespace A316094.P13964382440245828669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123536 (A123545 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316094.P13964382440245828669

/-! ## A316094.P10736831136138502745

`eq[A345927(n), A372601(A139318(2*n+5))]`
-/

namespace A316094.P10736831136138502745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345927 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372601 (A139318 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316094.P10736831136138502745

/-! ## A316094.P4221380568445903968

`eq[A291168(n), A345927(n)]`
-/

namespace A316094.P4221380568445903968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316094.P4221380568445903968

/-!
# A316095: Numbers m such that A(m+1) = A(m) + 3, where A() = A005101() are the abundant numbers.

The programs for A316095, the canonical program `A316095.P1509550343665641608` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316095 has offset 1).

The definition of A316095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316095.P10410099290684662686

`A091194(A228382(n+1))`
-/

namespace A316095.P10410099290684662686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A228382 (n + 1)).toNat

end

end A316095.P10410099290684662686

namespace A316095

/-- `A091194(A228382(n+1))` -/
def P10410099290684662686.Spec : Prop :=
  ∀ n, P10410099290684662686.a n = A316095 (n + 1)

end A316095

/-! ## A316095.P1509550343665641608

`eq[3, A125115(A028310(n))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A316095

/-- `eq[3, A125115(A028310(n))]` -/
def P1509550343665641608.Spec : Prop :=
  ∀ n, (P1509550343665641608.a n : ℤ) = A316095 (n + 1)

theorem P1509550343665641608.correct : P1509550343665641608.Spec := by
  intro n
  simp only [A316095, Nat.add_sub_cancel]

end A316095

/-!
# A316096: Numbers m such that A(m+1) = A(m) + 4, where A() = A005101() are the abundant numbers.

The programs for A316096, the canonical program `A316096.P2456358805564774649` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316096 has offset 1).

The definition of A316096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3055 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316096.P5050686991002764011

`A091194(A316098(n+1))`
-/

namespace A316096.P5050686991002764011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A316098 (n + 1)).toNat

end

end A316096.P5050686991002764011

namespace A316096

/-- `A091194(A316098(n+1))` -/
def P5050686991002764011.Spec : Prop :=
  ∀ n, P5050686991002764011.a n = A316096 (n + 1)

end A316096

/-! ## A316096.P2456358805564774649

`eq[4, A125115(n+1)]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A316096

/-- `eq[4, A125115(n+1)]+1` -/
def P2456358805564774649.Spec : Prop :=
  ∀ n, (P2456358805564774649.a n : ℤ) = A316096 (n + 1)

theorem P2456358805564774649.correct : P2456358805564774649.Spec := by
  intro n
  simp only [A316096, Nat.add_sub_cancel]

end A316096

/-! ## A316096.P10819203748390936654

`eq[4, Δ[A005101(n+1)]]+1`
-/

namespace A316096.P10819203748390936654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316096.P10819203748390936654

namespace A316096

/-- `eq[4, Δ[A005101(n+1)]]+1` -/
def P10819203748390936654.Spec : Prop :=
  ∀ n, (P10819203748390936654.a n : ℤ) = A316096 (n + 1)

theorem P10819203748390936654.correct : P10819203748390936654.Spec := by
  intro n
  simp only [A316096, Nat.add_sub_cancel, A316096.P10819203748390936654.f1, A316096.P10819203748390936654.f3, A316096.P10819203748390936654.f2, A316096.P10819203748390936654.a, A316096.P2456358805564774649.f1, A316096.P2456358805564774649.f2, A316096.P2456358805564774649.a, A005101, A005101.P6705997063366613997.f1, A005101.P6705997063366613997.f2, A005101.P6705997063366613997.a, A125115, A125115.P9586527931005899637.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A316096

/-! ## A316096.P10087548840002259434

`eq[4, A125115(A028310(n))]`
-/

namespace A316096.P10087548840002259434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316096.P10087548840002259434

namespace A316096

/-- `eq[4, A125115(A028310(n))]` -/
def P10087548840002259434.Spec : Prop :=
  ∀ n, (P10087548840002259434.a n : ℤ) = A316096 (n + 1)

end A316096

/-! ## A316096.P3331861709045206964

`A020725(eq[4, A125115(n+1)])`
-/

namespace A316096.P3331861709045206964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316096.P3331861709045206964

namespace A316096

/-- `A020725(eq[4, A125115(n+1)])` -/
def P3331861709045206964.Spec : Prop :=
  ∀ n, P3331861709045206964.a n = A316096 (n + 1)

end A316096

/-! ## A316096.P12303420255270887491

`A114637(eq[4, A125115(n+1)])`
-/

namespace A316096.P12303420255270887491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316096.P12303420255270887491

namespace A316096

/-- `A114637(eq[4, A125115(n+1)])` -/
def P12303420255270887491.Spec : Prop :=
  ∀ n, P12303420255270887491.a n = A316096 (n + 1)

end A316096

/-! ## A316096.P4381444187493722142

`eq[4, A125115(A065033(2*n))]`
-/

namespace A316096.P4381444187493722142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316096.P4381444187493722142

namespace A316096

/-- `eq[4, A125115(A065033(2*n))]` -/
def P4381444187493722142.Spec : Prop :=
  ∀ n, (P4381444187493722142.a n : ℤ) = A316096 (n + 1)

end A316096

/-! ## A316096.P2921875926927785482

`eq[4, runs[A091194(n+1)]]`
-/

namespace A316096.P2921875926927785482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316096.P2921875926927785482

namespace A316096

/-- `eq[4, runs[A091194(n+1)]]` -/
def P2921875926927785482.Spec : Prop :=
  ∀ n, (P2921875926927785482.a n : ℤ) = A316096 (n + 1)

end A316096

/-! ## A316096.P9955250040223608002

`eq[4, A125115(A233583(n+1))]`
-/

namespace A316096.P9955250040223608002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316096.P9955250040223608002

namespace A316096

/-- `eq[4, A125115(A233583(n+1))]` -/
def P9955250040223608002.Spec : Prop :=
  ∀ n, (P9955250040223608002.a n : ℤ) = A316096 (n + 1)

end A316096

/-!
# A316097: Numbers m such that A(m+1) = A(m) + 6, where A() = A005101() are the abundant numbers.

The programs for A316097, the canonical program `A316097.P17193600129069061208` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316097 has offset 1).

The definition of A316097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3517 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316097.P11428203613495213934

`A091194(A316099(n+1))`
-/

namespace A316097.P11428203613495213934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A316099 (n + 1)).toNat

end

end A316097.P11428203613495213934

namespace A316097

/-- `A091194(A316099(n+1))` -/
def P11428203613495213934.Spec : Prop :=
  ∀ n, P11428203613495213934.a n = A316097 (n + 1)

end A316097

/-! ## A316097.P17193600129069061208

`lt[4, A061496(n+1)]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A316097

/-- `lt[4, A061496(n+1)]+1` -/
def P17193600129069061208.Spec : Prop :=
  ∀ n, (P17193600129069061208.a n : ℤ) = A316097 (n + 1)

theorem P17193600129069061208.correct : P17193600129069061208.Spec := by
  intro n
  simp only [A316097, Nat.add_sub_cancel]

end A316097

/-! ## A316097.P2214423198770037561

`lt[4, A125115(n+1)]+1`
-/

namespace A316097.P2214423198770037561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A316097.P2214423198770037561

namespace A316097

/-- `lt[4, A125115(n+1)]+1` -/
def P2214423198770037561.Spec : Prop :=
  ∀ n, (P2214423198770037561.a n : ℤ) = A316097 (n + 1)

end A316097

/-! ## A316097.P3646427589416024822

`eq[6, A125115(abs(1-n)+1)]`
-/

namespace A316097.P3646427589416024822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316097.P3646427589416024822

namespace A316097

/-- `eq[6, A125115(abs(1-n)+1)]` -/
def P3646427589416024822.Spec : Prop :=
  ∀ n, (P3646427589416024822.a n : ℤ) = A316097 (n + 1)

end A316097

/-! ## A316097.P13735810569735186745

`eq[6, A125115(C(n+1, n))]+1`
-/

namespace A316097.P13735810569735186745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (Nat.choose (n + 1) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316097.P13735810569735186745

namespace A316097

/-- `eq[6, A125115(C(n+1, n))]+1` -/
def P13735810569735186745.Spec : Prop :=
  ∀ n, (P13735810569735186745.a n : ℤ) = A316097 (n + 1)

end A316097

/-! ## A316097.P6466412971652677733

`lt[2, Δ[A005101(n+1)]/2]+1`
-/

namespace A316097.P6466412971652677733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A316097.P6466412971652677733

namespace A316097

/-- `lt[2, Δ[A005101(n+1)]/2]+1` -/
def P6466412971652677733.Spec : Prop :=
  ∀ n, (P6466412971652677733.a n : ℤ) = A316097 (n + 1)

end A316097

/-! ## A316097.P12928405022406920363

`eq[6, A125115(2*n-n+1)]+1`
-/

namespace A316097.P12928405022406920363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 ((2 * n : ℤ) - (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A316097.P12928405022406920363

namespace A316097

/-- `eq[6, A125115(2*n-n+1)]+1` -/
def P12928405022406920363.Spec : Prop :=
  ∀ n, (P12928405022406920363.a n : ℤ) = A316097 (n + 1)

end A316097

/-! ## A316097.P9826668418943631009

`eq[6, A061496(A000038(n)+n)]`
-/

namespace A316097.P9826668418943631009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061496 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316097.P9826668418943631009

namespace A316097

/-- `eq[6, A061496(A000038(n)+n)]` -/
def P9826668418943631009.Spec : Prop :=
  ∀ n, (P9826668418943631009.a n : ℤ) = A316097 (n + 1)

end A316097

/-! ## A316097.P338117516406416932

`record[A008612(n*A125115(n+1))]`
-/

namespace A316097.P338117516406416932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 ((n : ℤ) * A125115 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316097.P338117516406416932

namespace A316097

/-- `record[A008612(n*A125115(n+1))]` -/
def P338117516406416932.Spec : Prop :=
  ∀ n, P338117516406416932.a n = A316097 (n + 1)

end A316097

/-!
# A316098: Abundant numbers that differ from the next abundant number by 4.

The programs for A316098, the canonical program `A316098.P17152426692604565992` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316098 has offset 1).

The definition of A316098 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A316096, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A316098.P17152426692604565992

`A005101(A316096(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A316098

/-- `A005101(A316096(n+1))` -/
def P17152426692604565992.Spec : Prop :=
  ∀ n, P17152426692604565992.a n = A316098 (n + 1)

theorem P17152426692604565992.correct : P17152426692604565992.Spec := by
  intro n
  simp only [A316098, Nat.add_sub_cancel]

end A316098

/-! ## A316098.P17548395523620122861

`A005101(eq[4, A125115(n+1)]+1)`
-/

namespace A316098.P17548395523620122861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A316098.P17548395523620122861

namespace A316098

/-- `A005101(eq[4, A125115(n+1)]+1)` -/
def P17548395523620122861.Spec : Prop :=
  ∀ n, P17548395523620122861.a n = A316098 (n + 1)

end A316098

/-! ## A316098.P3113850094576092300

`A005101(eq[4, Δ[A005101(n+1)]]+1)`
-/

namespace A316098.P3113850094576092300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A316098.P3113850094576092300

namespace A316098

/-- `A005101(eq[4, Δ[A005101(n+1)]]+1)` -/
def P3113850094576092300.Spec : Prop :=
  ∀ n, P3113850094576092300.a n = A316098 (n + 1)

end A316098

/-! ## A316098.P10172600656685109763

`A224907(eq[4, A125115(n+1)]+1)/2`
-/

namespace A316098.P10172600656685109763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2

end

end A316098.P10172600656685109763

namespace A316098

/-- `A224907(eq[4, A125115(n+1)]+1)/2` -/
def P10172600656685109763.Spec : Prop :=
  ∀ n, P10172600656685109763.a n = (A316098 (n + 1) : ℚ)

end A316098

/-! ## A316098.P17790647729124899818

`A005101(eq[4, A005101(n+2)-A005101(n+1)]+1)`
-/

namespace A316098.P17790647729124899818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 2) - A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A316098.P17790647729124899818

namespace A316098

/-- `A005101(eq[4, A005101(n+2)-A005101(n+1)]+1)` -/
def P17790647729124899818.Spec : Prop :=
  ∀ n, P17790647729124899818.a n = A316098 (n + 1)

end A316098

/-! ## A316098.P16407039553132435373

`A005101(eq[4, A005101(n+2)%A005101(n+1)]+1)`
-/

namespace A316098.P16407039553132435373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005101 (n + 2)) (A005101 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A316098.P16407039553132435373

namespace A316098

/-- `A005101(eq[4, A005101(n+2)%A005101(n+1)]+1)` -/
def P16407039553132435373.Spec : Prop :=
  ∀ n, P16407039553132435373.a n = A316098 (n + 1)

end A316098

/-!
# A316099: Abundant numbers that differ from the next abundant number by 6.

The programs for A316099, the canonical program `A316099.P17206935582006049341` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316099 has offset 1).

The definition of A316099 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, A316097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A316099.P17206935582006049341

`A005101(A316097(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A316099

/-- `A005101(A316097(n+1))` -/
def P17206935582006049341.Spec : Prop :=
  ∀ n, P17206935582006049341.a n = A316099 (n + 1)

theorem P17206935582006049341.correct : P17206935582006049341.Spec := by
  intro n
  simp only [A316099, Nat.add_sub_cancel]

end A316099

/-! ## A316099.P1606192049540334333

`A005101(eq[6, A061496(n+1)]+1)`
-/

namespace A316099.P1606192049540334333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A316099.P1606192049540334333

namespace A316099

/-- `A005101(eq[6, A061496(n+1)]+1)` -/
def P1606192049540334333.Spec : Prop :=
  ∀ n, P1606192049540334333.a n = A316099 (n + 1)

end A316099

/-! ## A316099.P201853016516532438

`A005101(eq[6, A125115(n+1)]+1)`
-/

namespace A316099.P201853016516532438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A316099.P201853016516532438

namespace A316099

/-- `A005101(eq[6, A125115(n+1)]+1)` -/
def P201853016516532438.Spec : Prop :=
  ∀ n, P201853016516532438.a n = A316099 (n + 1)

end A316099

/-! ## A316099.P7616963003254757716

`A224907(eq[6, A125115(n+1)]+1)/2`
-/

namespace A316099.P7616963003254757716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2

end

end A316099.P7616963003254757716

namespace A316099

/-- `A224907(eq[6, A125115(n+1)]+1)/2` -/
def P7616963003254757716.Spec : Prop :=
  ∀ n, P7616963003254757716.a n = (A316099 (n + 1) : ℚ)

end A316099

/-! ## A316099.P7598448856955235397

`record[gcd(6-A005101(n+2), A005101(n+1))]`
-/

namespace A316099.P7598448856955235397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (6 - A005101 (n + 2)) (A005101 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316099.P7598448856955235397

namespace A316099

/-- `record[gcd(6-A005101(n+2), A005101(n+1))]` -/
def P7598448856955235397.Spec : Prop :=
  ∀ n, (P7598448856955235397.a n : ℤ) = A316099 (n + 1)

end A316099

/-! ## A316099.P8429770928241232854

`A005101(eq[6, A005101(n+2)-A005101(n+1)]+1)`
-/

namespace A316099.P8429770928241232854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 2) - A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A316099.P8429770928241232854

namespace A316099

/-- `A005101(eq[6, A005101(n+2)-A005101(n+1)]+1)` -/
def P8429770928241232854.Spec : Prop :=
  ∀ n, P8429770928241232854.a n = A316099 (n + 1)

end A316099

/-! ## A316099.P16189852716948858611

`A005101(eq[6, A005101(n+2)%A005101(n+1)]+1)`
-/

namespace A316099.P16189852716948858611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005101 (n + 2)) (A005101 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A316099.P16189852716948858611

namespace A316099

/-- `A005101(eq[6, A005101(n+2)%A005101(n+1)]+1)` -/
def P16189852716948858611.Spec : Prop :=
  ∀ n, P16189852716948858611.a n = A316099 (n + 1)

end A316099

