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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A314000: Coordination sequence Gal.6.670.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314000, there is no canonical definition to state claims against.
-/

/-! ## A314000.P9954571172812668963

`∑[dr(A086599(A064761(n)))]`
-/

namespace A314000.P9954571172812668963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A086599 (A064761 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314000.P9954571172812668963

/-! ## A314000.P10487502466712298061

`xor(A028999(A000245(n)), A314035(n))`
-/

namespace A314000.P10487502466712298061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028999 (A000245 n).toNat) (A314035 n)

end

end A314000.P10487502466712298061

/-! ## A314000.P17953910976524784435

`A315662(n)-A001221(A216042(n+1))`
-/

namespace A314000.P17953910976524784435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315662 n - A001221 (A216042 (n + 1)).toNat

end

end A314000.P17953910976524784435

/-! ## A314000.P10900072354484918667

`A026356(2*n+1)-A277822(A333681(n+1))`
-/

namespace A314000.P10900072354484918667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (2 * n + 1) - A277822 (A333681 (n + 1)).toNat

end

end A314000.P10900072354484918667

/-! ## A314000.P304493458357902307

`A314056(n)+A249832(3^n)-A047263(A334055(n+1))`
-/

namespace A314000.P304493458357902307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314056 n + A249832 (3 ^ n) - A047263 (A334055 (n + 1)).toNat

end

end A314000.P304493458357902307

/-!
# A314001: Coordination sequence Gal.5.330.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314001, there is no canonical definition to state claims against.
-/

/-! ## A314001.P4606099189146077078

`or(A313836(n)+A185018(A263955(n+1)), A144962(A287379(n+1)))`
-/

namespace A314001.P4606099189146077078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A313836 n + A185018 (A263955 (n + 1)).toNat) (A144962 (A287379 (n + 1)).toNat)

end

end A314001.P4606099189146077078

/-! ## A314001.P8995626823938004651

`or(A315418(n)-A267463(A260920(n+1)), A144962(A287379(n+1)))`
-/

namespace A314001.P8995626823938004651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A315418 n - A267463 (A260920 (n + 1)).toNat) (A144962 (A287379 (n + 1)).toNat)

end

end A314001.P8995626823938004651

/-! ## A314001.P11683648663092703336

`or(A168324(A088578(n)), A301678(n))`
-/

namespace A314001.P11683648663092703336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A168324 (A088578 n).toNat) (A301678 n)

end

end A314001.P11683648663092703336

/-! ## A314001.P4332113328445534564

`or(A240473(A277236(n)), A301678(n))`
-/

namespace A314001.P4332113328445534564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A240473 (A277236 n).toNat) (A301678 n)

end

end A314001.P4332113328445534564

/-! ## A314001.P10337658037989934762

`or(A315427(n)-A001222(A084869(n)), A144962(A287379(n+1)))`
-/

namespace A314001.P10337658037989934762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A315427 n - A001222 (A084869 n).toNat) (A144962 (A287379 (n + 1)).toNat)

end

end A314001.P10337658037989934762

/-!
# A314002: Coordination sequence Gal.5.286.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314002, there is no canonical definition to state claims against.
-/

/-! ## A314002.P2721984016322445428

`and(A314004(A087051(n)), A314005(n))`
-/

namespace A314002.P2721984016322445428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A314004 (A087051 n).toNat) (A314005 n)

end

end A314002.P2721984016322445428

/-! ## A314002.P15044885955488701207

`A313452(n)+A000035(A185544(n))`
-/

namespace A314002.P15044885955488701207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313452 n + A000035 (A185544 n).toNat

end

end A314002.P15044885955488701207

/-! ## A314002.P538124396968616997

`A314004(n)-A011742(A317408(n))`
-/

namespace A314002.P538124396968616997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314004 n - A011742 (A317408 n).toNat

end

end A314002.P538124396968616997

/-!
# A314003: Coordination sequence Gal.6.611.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314003, there is no canonical definition to state claims against.
-/

/-! ## A314003.P17818016600199891635

`or(A022932(A284350(n+3)), A314002(n))`
-/

namespace A314003.P17818016600199891635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022932 (A284350 (n + 3)).toNat) (A314002 n)

end

end A314003.P17818016600199891635

/-! ## A314003.P18333363929908202252

`or(A244895(A039623(n+5)), A314002(n))`
-/

namespace A314003.P18333363929908202252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A244895 (A039623 (n + 5)).toNat) (A314002 n)

end

end A314003.P18333363929908202252

/-! ## A314003.P3334569835159079876

`or(A267841(A254716(n)), A314002(n))`
-/

namespace A314003.P3334569835159079876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267841 (A254716 n).toNat) (A314002 n)

end

end A314003.P3334569835159079876

/-!
# A314004: Coordination sequence Gal.6.609.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314004, there is no canonical definition to state claims against.
-/

/-! ## A314004.P14025394297190790686

`or(A044941(A237252(n+1)), A314002(n))`
-/

namespace A314004.P14025394297190790686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044941 (A237252 (n + 1)).toNat) (A314002 n)

end

end A314004.P14025394297190790686

/-! ## A314004.P50853497818005650

`or(A314002(n), A349082(A147596(n+1)))`
-/

namespace A314004.P50853497818005650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314002 n) (A349082 (A147596 (n + 1)).toNat)

end

end A314004.P50853497818005650

/-! ## A314004.P13219172421083480947

`A314002(n)+A011742(A317408(n))`
-/

namespace A314004.P13219172421083480947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314002 n + A011742 (A317408 n).toNat

end

end A314004.P13219172421083480947

/-! ## A314004.P15715664826745640783

`or(A104245(A337464(n)), A314002(n))`
-/

namespace A314004.P15715664826745640783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104245 (A337464 n).toNat) (A314002 n)

end

end A314004.P15715664826745640783

/-!
# A314005: Coordination sequence Gal.6.610.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314005, there is no canonical definition to state claims against.
-/

/-! ## A314005.P6970783683365299844

`or(A054868(A148311(n)), A314002(n))`
-/

namespace A314005.P6970783683365299844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054868 (A148311 n).toNat) (A314002 n)

end

end A314005.P6970783683365299844

/-! ## A314005.P446669292376064059

`A313456(n)+A051904(A000142(n))`
-/

namespace A314005.P446669292376064059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313456 n + A051904 (A000142 n).toNat

end

end A314005.P446669292376064059

/-! ## A314005.P7200315545898528901

`A313456(n)+A043545(A009736(n))`
-/

namespace A314005.P7200315545898528901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313456 n + A043545 (A009736 n).toNat

end

end A314005.P7200315545898528901

/-! ## A314005.P13896298777872113134

`A313456(n)+A066247(A027741(n))`
-/

namespace A314005.P13896298777872113134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313456 n + A066247 (A027741 n).toNat

end

end A314005.P13896298777872113134

/-! ## A314005.P7895122842730395536

`A313456(n)+A051904(A317776(n))`
-/

namespace A314005.P7895122842730395536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313456 n + A051904 (A317776 n).toNat

end

end A314005.P7895122842730395536

/-!
# A314006: Coordination sequence Gal.6.523.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314006, there is no canonical definition to state claims against.
-/

/-! ## A314006.P12395959128089735313

`A314007(n)-A185037(A013609(n))`
-/

namespace A314006.P12395959128089735313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314007 n - A185037 (A013609 n).toNat

end

end A314006.P12395959128089735313

/-! ## A314006.P16762348146688051961

`A314007(n)-A184944(A162663(n))`
-/

namespace A314006.P16762348146688051961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314007 n - A184944 (A162663 n).toNat

end

end A314006.P16762348146688051961

/-! ## A314006.P2283871168338964750

`A314007(n)-A185284(A005180(n+1))`
-/

namespace A314006.P2283871168338964750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314007 n - A185284 (A005180 (n + 1)).toNat

end

end A314006.P2283871168338964750

/-! ## A314006.P14547336701612401421

`A314007(n)-A036427(n)%A258035(n)`
-/

namespace A314006.P14547336701612401421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314007 n - Int.tmod (A036427 n) (A258035 n)

end

end A314006.P14547336701612401421

/-!
# A314007: Coordination sequence Gal.6.522.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314007, there is no canonical definition to state claims against.
-/

/-! ## A314007.P9230441671555315568

`or(A185284(3*n+1), A314006(n))`
-/

namespace A314007.P9230441671555315568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (3 * n + 1)) (A314006 n)

end

end A314007.P9230441671555315568

/-! ## A314007.P612379365463280084

`A314006(n)+A184944(A162663(n))`
-/

namespace A314007.P612379365463280084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314006 n + A184944 (A162663 n).toNat

end

end A314007.P612379365463280084

/-! ## A314007.P11831265762220962351

`A314006(n)+A185284(A005180(n+1))`
-/

namespace A314007.P11831265762220962351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314006 n + A185284 (A005180 (n + 1)).toNat

end

end A314007.P11831265762220962351

/-!
# A314008: Coordination sequence Gal.6.576.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314008, there is no canonical definition to state claims against.
-/

/-! ## A314008.P7132926094279582585

`gcd(A016921(n)!, A314009(n))`
-/

namespace A314008.P7132926094279582585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A016921 n).toNat : ℤ) (A314009 n)

end

end A314008.P7132926094279582585

/-! ## A314008.P2047972945909379904

`A314009(n)%A300398(n+1)`
-/

namespace A314008.P2047972945909379904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A314009 n) (A300398 (n + 1))

end

end A314008.P2047972945909379904

/-! ## A314008.P9921221551915132282

`A314009(n)+A000007(A000294(n))`
-/

namespace A314008.P9921221551915132282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314009 n + A000007 (A000294 n).toNat

end

end A314008.P9921221551915132282

/-! ## A314008.P6028270246427039610

`A314009(n)+A000038(A001006(n))`
-/

namespace A314008.P6028270246427039610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314009 n + A000038 (A001006 n).toNat

end

end A314008.P6028270246427039610

/-! ## A314008.P13737912699790416966

`A314009(n)+A000038(A068156(n))`
-/

namespace A314008.P13737912699790416966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314009 n + A000038 (A068156 n).toNat

end

end A314008.P13737912699790416966

/-!
# A314010: Coordination sequence Gal.6.426.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314010, there is no canonical definition to state claims against.
-/

/-! ## A314010.P15524173680591156309

`A314011(n)-A151713(A250120(n))`
-/

namespace A314010.P15524173680591156309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314011 n - A151713 (A250120 n).toNat

end

end A314010.P15524173680591156309

/-! ## A314010.P12147349774538136431

`A314011(n)-A151713(A313993(n))`
-/

namespace A314010.P12147349774538136431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314011 n - A151713 (A313993 n).toNat

end

end A314010.P12147349774538136431

/-! ## A314010.P9154442131828209942

`A314011(n)-A151713(A022144(n)+1-A047412(2*(n+1)))`
-/

namespace A314010.P9154442131828209942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314011 n - A151713 (A022144 n + 1 - A047412 (2 * (n + 1))).toNat

end

end A314010.P9154442131828209942

/-! ## A314010.P16229671661620991656

`A314011(n)-A151713(A047363(2*n+1)+A028310(2*n))`
-/

namespace A314010.P16229671661620991656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314011 n - A151713 (A047363 (2 * n + 1) + A028310 (2 * n)).toNat

end

end A314010.P16229671661620991656

/-! ## A314010.P14231462337614438682

`∏{e}[3^n, A314011(#)]`
-/

namespace A314010.P14231462337614438682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A314011 (Nat.factorization (f1 n) p)

end

end A314010.P14231462337614438682

/-!
# A314011: Coordination sequence Gal.6.425.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314011, there is no canonical definition to state claims against.
-/

/-! ## A314011.P10445823270208337233

`A314010(n)+A151713(A250120(n))`
-/

namespace A314011.P10445823270208337233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314010 n + A151713 (A250120 n).toNat

end

end A314011.P10445823270208337233

/-! ## A314011.P12856688862583484137

`A314010(n)+A151713(A313993(n))`
-/

namespace A314011.P12856688862583484137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314010 n + A151713 (A313993 n).toNat

end

end A314011.P12856688862583484137

/-! ## A314011.P12674077462377248714

`or(A074290(A007755(n+1)), A314010(n))`
-/

namespace A314011.P12674077462377248714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074290 (A007755 (n + 1)).toNat) (A314010 n)

end

end A314011.P12674077462377248714

/-! ## A314011.P14635990330128463488

`A314010(n)+A151713(A022144(n)+1-A047412(2*(n+1)))`
-/

namespace A314011.P14635990330128463488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314010 n + A151713 (A022144 n + 1 - A047412 (2 * (n + 1))).toNat

end

end A314011.P14635990330128463488

/-! ## A314011.P10628261216416204589

`A314010(n)+A151713(A047363(2*n+1)+A028310(2*n))`
-/

namespace A314011.P10628261216416204589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314010 n + A151713 (A047363 (2 * n + 1) + A028310 (2 * n)).toNat

end

end A314011.P10628261216416204589

/-!
# A314012: Coordination sequence Gal.6.409.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314012, there is no canonical definition to state claims against.
-/

/-! ## A314012.P17483117086562806268

`A314013(n)+A178798(A321728(n))`
-/

namespace A314012.P17483117086562806268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314013 n + A178798 (A321728 n).toNat

end

end A314012.P17483117086562806268

/-! ## A314012.P13361952433236305939

`A314013(n)-A185284(A047363(2*n+1))`
-/

namespace A314012.P13361952433236305939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314013 n - A185284 (A047363 (2 * n + 1)).toNat

end

end A314012.P13361952433236305939

/-! ## A314012.P983840567371553142

`A314013(n)%Δ[A096763(n+1)]`
-/

namespace A314012.P983840567371553142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A314013 n) (f1 (n + 1) - f1 n)

end

end A314012.P983840567371553142

/-! ## A314012.P3020102555526168608

`or(A270599(A136252(n)), A314013(n))`
-/

namespace A314012.P3020102555526168608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A270599 (A136252 n).toNat) (A314013 n)

end

end A314012.P3020102555526168608

/-! ## A314012.P13912737792761387711

`A073752(A023195(n+1))*A314013(n)`
-/

namespace A314012.P13912737792761387711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073752 (A023195 (n + 1)).toNat * A314013 n

end

end A314012.P13912737792761387711

/-!
# A314013: Coordination sequence Gal.6.408.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314013, there is no canonical definition to state claims against.
-/

/-! ## A314013.P947937262379315065

`A314012(n)-A178798(A321728(n))`
-/

namespace A314013.P947937262379315065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314012 n - A178798 (A321728 n).toNat

end

end A314013.P947937262379315065

/-!
# A314014: Coordination sequence Gal.6.462.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314014, there is no canonical definition to state claims against.
-/

/-! ## A314014.P8821347030313381513

`A313510(n)+A001221(A089976(n))`
-/

namespace A314014.P8821347030313381513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + A001221 (A089976 n).toNat

end

end A314014.P8821347030313381513

/-! ## A314014.P8641154645580987600

`A328594(6*n+2)-A163300(n+1)`
-/

namespace A314014.P8641154645580987600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328594 (6 * n + 2) - A163300 (n + 1)

end

end A314014.P8641154645580987600

/-! ## A314014.P946551819885486920

`A290082(floor(2/acot(3*n))^A147120(n+1))`
-/

namespace A314014.P946551819885486920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290082 (SequenceMachineLib.roundAway ((⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋ : ℚ) ^ (A147120 (n + 1) : ℤ))).toNat

end

end A314014.P946551819885486920

/-! ## A314014.P1942461977733620877

`A290082(floor(2/acot(3*n))^A147167(n+1))`
-/

namespace A314014.P1942461977733620877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290082 (SequenceMachineLib.roundAway ((⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋ : ℚ) ^ (A147167 (n + 1) : ℤ))).toNat

end

end A314014.P1942461977733620877

/-! ## A314014.P11601635186116119383

`A284620(A006946(n+2))+A075326(n)`
-/

namespace A314014.P11601635186116119383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (A006946 (n + 2)).toNat + A075326 n

end

end A314014.P11601635186116119383

/-!
# A314015: Coordination sequence Gal.4.100.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314015, the canonical program `A314015.P14627959362492580989` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314015 has offset 0).

The definition of A314015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314015.P14627959362492580989

`A301729(A298786(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A314015

/-- `A301729(A298786(n))` -/
def P14627959362492580989.Spec : Prop :=
  ∀ n, P14627959362492580989.a n = A314015 n

theorem P14627959362492580989.correct : P14627959362492580989.Spec := by
  intro n
  simp only [A314015]

end A314015

/-! ## A314015.P13456344028336038836

`A047273(A298786(n)+1)`
-/

namespace A314015.P13456344028336038836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (A298786 n + 1).toNat

end

end A314015.P13456344028336038836

namespace A314015

/-- `A047273(A298786(n)+1)` -/
def P13456344028336038836.Spec : Prop :=
  ∀ n, P13456344028336038836.a n = A314015 n

end A314015

/-! ## A314015.P13824483546260873944

`A310461(n)+A128834(n)`
-/

namespace A314015.P13824483546260873944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310461 n + A128834 n

end

end A314015.P13824483546260873944

namespace A314015

/-- `A310461(n)+A128834(n)` -/
def P13824483546260873944.Spec : Prop :=
  ∀ n, P13824483546260873944.a n = A314015 n

end A314015

/-! ## A314015.P4949279140439922293

`A313280(n)+A186809(n)`
-/

namespace A314015.P4949279140439922293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313280 n + A186809 n

end

end A314015.P4949279140439922293

namespace A314015

/-- `A313280(n)+A186809(n)` -/
def P4949279140439922293.Spec : Prop :=
  ∀ n, P4949279140439922293.a n = A314015 n

end A314015

/-! ## A314015.P11167663562552796703

`A315693(n)-A004396(n)`
-/

namespace A314015.P11167663562552796703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315693 n - A004396 n

end

end A314015.P11167663562552796703

namespace A314015

/-- `A315693(n)-A004396(n)` -/
def P11167663562552796703.Spec : Prop :=
  ∀ n, P11167663562552796703.a n = A314015 n

end A314015

/-! ## A314015.P9259051208362470589

`A315257(n)-A102283(n)`
-/

namespace A314015.P9259051208362470589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315257 n - A102283 n

end

end A314015.P9259051208362470589

namespace A314015

/-- `A315257(n)-A102283(n)` -/
def P9259051208362470589.Spec : Prop :=
  ∀ n, P9259051208362470589.a n = A314015 n

end A314015

/-! ## A314015.P3024471120874689956

`A008706(n)+∑[A131736(n)]`
-/

namespace A314015.P3024471120874689956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314015.P3024471120874689956

namespace A314015

/-- `A008706(n)+∑[A131736(n)]` -/
def P3024471120874689956.Spec : Prop :=
  ∀ n, P3024471120874689956.a n = A314015 n

end A314015

/-! ## A314015.P162878512514482257

`A313510(n)+∑[A022003(n)]`
-/

namespace A314015.P162878512514482257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314015.P162878512514482257

namespace A314015

/-- `A313510(n)+∑[A022003(n)]` -/
def P162878512514482257.Spec : Prop :=
  ∀ n, P162878512514482257.a n = A314015 n

end A314015

/-! ## A314015.P3233118136226717426

`A008706(n)-A134667(n+3)`
-/

namespace A314015.P3233118136226717426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A134667 (n + 3)

end

end A314015.P3233118136226717426

namespace A314015

/-- `A008706(n)-A134667(n+3)` -/
def P3233118136226717426.Spec : Prop :=
  ∀ n, P3233118136226717426.a n = A314015 n

end A314015

/-! ## A314015.P3578391453484600138

`A315257(n)-A128834(2*n)`
-/

namespace A314015.P3578391453484600138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315257 n - A128834 (2 * n)

end

end A314015.P3578391453484600138

namespace A314015

/-- `A315257(n)-A128834(2*n)` -/
def P3578391453484600138.Spec : Prop :=
  ∀ n, P3578391453484600138.a n = A314015 n

end A314015

/-! ## A314015.P6063376357889143864

`A313510(n)+n-A004396(n)`
-/

namespace A314015.P6063376357889143864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + ((n : ℤ) - A004396 n)

end

end A314015.P6063376357889143864

namespace A314015

/-- `A313510(n)+n-A004396(n)` -/
def P6063376357889143864.Spec : Prop :=
  ∀ n, P6063376357889143864.a n = A314015 n

end A314015

/-! ## A314015.P4160033234455627998

`A315693(n)-A002264(2*n+1)`
-/

namespace A314015.P4160033234455627998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315693 n - A002264 (2 * n + 1)

end

end A314015.P4160033234455627998

namespace A314015

/-- `A315693(n)-A002264(2*n+1)` -/
def P4160033234455627998.Spec : Prop :=
  ∀ n, P4160033234455627998.a n = A314015 n

end A314015

/-! ## A314015.P9952922648778392908

`A312926(2*n)-(A047424(2*n+1)+n)`
-/

namespace A314015.P9952922648778392908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 (2 * n) - (A047424 (2 * n + 1) + (n : ℤ))

end

end A314015.P9952922648778392908

namespace A314015

/-- `A312926(2*n)-(A047424(2*n+1)+n)` -/
def P9952922648778392908.Spec : Prop :=
  ∀ n, P9952922648778392908.a n = A314015 n

end A314015

/-! ## A314015.P9640468378247573783

`A128834(n-A128834(n))+A008706(n)`
-/

namespace A314015.P9640468378247573783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 ((n : ℤ) - A128834 n).toNat + A008706 n

end

end A314015.P9640468378247573783

namespace A314015

/-- `A128834(n-A128834(n))+A008706(n)` -/
def P9640468378247573783.Spec : Prop :=
  ∀ n, P9640468378247573783.a n = A314015 n

end A314015

/-! ## A314015.P8668329622458951447

`A008486(n)+A313510(n)-A008576(n)`
-/

namespace A314015.P8668329622458951447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313510 n - A008576 n)

end

end A314015.P8668329622458951447

namespace A314015

/-- `A008486(n)+A313510(n)-A008576(n)` -/
def P8668329622458951447.Spec : Prop :=
  ∀ n, P8668329622458951447.a n = A314015 n

end A314015

/-! ## A314015.P14125439721403449739

`A008458(n)+A008574(n)-A315075(n)`
-/

namespace A314015.P14125439721403449739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315075 n)

end

end A314015.P14125439721403449739

namespace A314015

/-- `A008458(n)+A008574(n)-A315075(n)` -/
def P14125439721403449739.Spec : Prop :=
  ∀ n, P14125439721403449739.a n = A314015 n

end A314015

/-! ## A314015.P6565727977476548734

`A315405(n)-A134667(n)`
-/

namespace A314015.P6565727977476548734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315405 n - A134667 n

end

end A314015.P6565727977476548734

namespace A314015

/-- `A315405(n)-A134667(n)` -/
def P6565727977476548734.Spec : Prop :=
  ∀ n, P6565727977476548734.a n = A314015 n

end A314015

/-! ## A314015.P10236951367732478515

`A074067(A315075(n))`
-/

namespace A314015.P10236951367732478515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315075 n).toNat

end

end A314015.P10236951367732478515

namespace A314015

/-- `A074067(A315075(n))` -/
def P10236951367732478515.Spec : Prop :=
  ∀ n, P10236951367732478515.a n = A314015 n

end A314015

/-! ## A314015.P6652902730037296453

`A314706(2*n)-(A042965(2*n+1)+n)`
-/

namespace A314015.P6652902730037296453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314706 (2 * n) - (A042965 (2 * n + 1) + (n : ℤ))

end

end A314015.P6652902730037296453

namespace A314015

/-- `A314706(2*n)-(A042965(2*n+1)+n)` -/
def P6652902730037296453.Spec : Prop :=
  ∀ n, P6652902730037296453.a n = A314015 n

end A314015

/-! ## A314015.P17197691320565361571

`A314825(2*n)-(A042965(2*n+1)+n)`
-/

namespace A314015.P17197691320565361571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 (2 * n) - (A042965 (2 * n + 1) + (n : ℤ))

end

end A314015.P17197691320565361571

namespace A314015

/-- `A314825(2*n)-(A042965(2*n+1)+n)` -/
def P17197691320565361571.Spec : Prop :=
  ∀ n, P17197691320565361571.a n = A314015 n

end A314015

/-!
# A314016: Coordination sequence Gal.6.595.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314016, there is no canonical definition to state claims against.
-/

/-! ## A314016.P4950521964867206019

`A020753(2*n+1)+comp[gcd(n+1, val(n+1, 2)*∑[n])]`
-/

namespace A314016.P4950521964867206019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (SequenceMachineLib.valuation (n + 1) 2 * (∑ j ∈ Finset.range (n + 1), f2 j))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (2 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A314016.P4950521964867206019

/-! ## A314016.P6025299735326712221

`A310380(n)+A121561(Δ[floor(4^(n-1))])`
-/

namespace A314016.P6025299735326712221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310380 n + A121561 (f1 (n + 1) - f1 n).toNat

end

end A314016.P6025299735326712221

/-! ## A314016.P15164114162654927863

`A313711(n)+A000035(A333071(n))`
-/

namespace A314016.P15164114162654927863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313711 n + A000035 (A333071 n).toNat

end

end A314016.P15164114162654927863

/-! ## A314016.P1379604309630824675

`A314123(n)-A084143(A002212(n))`
-/

namespace A314016.P1379604309630824675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314123 n - A084143 (A002212 n).toNat

end

end A314016.P1379604309630824675

/-! ## A314016.P5995281187403465761

`A315638(n)-A010060(A098557(n))`
-/

namespace A314016.P5995281187403465761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315638 n - A010060 (A098557 n).toNat

end

end A314016.P5995281187403465761

/-!
# A314017: Coordination sequence Gal.5.278.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314017, there is no canonical definition to state claims against.
-/

/-! ## A314017.P16917697643659043180

`A314018(A062399(n))-char[10]`
-/

namespace A314017.P16917697643659043180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314018 (A062399 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A314017.P16917697643659043180

/-! ## A314017.P11064171850158948551

`A314018(n)-A185284(A212804(n))`
-/

namespace A314017.P11064171850158948551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314018 n - A185284 (A212804 n).toNat

end

end A314017.P11064171850158948551

/-! ## A314017.P17738695684985603736

`A314018(A087051(n))`
-/

namespace A314017.P17738695684985603736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314018 (A087051 n).toNat

end

end A314017.P17738695684985603736

/-! ## A314017.P15030005648964473888

`A314018(A227549(n+1))`
-/

namespace A314017.P15030005648964473888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314018 (A227549 (n + 1)).toNat

end

end A314017.P15030005648964473888

/-! ## A314017.P8590326326219542506

`A314018(A396204(n+1))`
-/

namespace A314017.P8590326326219542506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314018 (A396204 (n + 1)).toNat

end

end A314017.P8590326326219542506

/-!
# A314018: Coordination sequence Gal.5.277.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314018, there is no canonical definition to state claims against.
-/

/-! ## A314018.P12814801313902174081

`A314017(n)+A185284(A212804(n))`
-/

namespace A314018.P12814801313902174081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314017 n + A185284 (A212804 n).toNat

end

end A314018.P12814801313902174081

/-! ## A314018.P12321570707150378829

`or(A314017(n), A354099(A000111(n)))`
-/

namespace A314018.P12321570707150378829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314017 n) (A354099 (A000111 n).toNat)

end

end A314018.P12321570707150378829

/-!
# A314019: Coordination sequence Gal.6.152.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314019, the canonical program `A314019.P6060083836539470850` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314019 has offset 0).

The definition of A314019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314019.P15909307683660276086

`A314092(n)-Δ[A011864(n)]`
-/

namespace A314019.P15909307683660276086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314092 n - (f1 (n + 1) - f1 n)

end

end A314019.P15909307683660276086

namespace A314019

/-- `A314092(n)-Δ[A011864(n)]` -/
def P15909307683660276086.Spec : Prop :=
  ∀ n, P15909307683660276086.a n = A314019 n

theorem P15909307683660276086.correct : P15909307683660276086.Spec := by
  intro n
  simp only [A314019, Nat.add_sub_cancel, A314019.P15909307683660276086.f1, A314019.P15909307683660276086.a, A314019.P6060083836539470850.a, A008592, A008592.P4981059802862696142.a, A011864, A011864.P3547417513882699266.a, A314092, A314092.P14005736283755848745.f1, A314092.P14005736283755848745.a, A315070, A315070.P1003336142198801993.a, A004396, A004396.P17032557045289780609.a, A312163, A312163.P10738351713839419242.a, A310455, A310455.P786279696323869961.a, A313118, A313118.P9114111145320884075.f1, A313118.P9114111145320884075.a, A310413, A310413.P8448103510463690505.a, A310496, A310496.P10218133312535367939.a, A312976, A312976.P18215844327102758922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314019

/-! ## A314019.P6060083836539470850

`abs(A008592(n)-A315070(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A314019

/-- `abs(A008592(n)-A315070(n))` -/
def P6060083836539470850.Spec : Prop :=
  ∀ n, P6060083836539470850.a n = A314019 n

theorem P6060083836539470850.correct : P6060083836539470850.Spec := by
  intro n
  simp only [A314019]

end A314019

/-! ## A314019.P7864652290832341398

`2*A008706(n)-A315070(n)`
-/

namespace A314019.P7864652290832341398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315070 n

end

end A314019.P7864652290832341398

namespace A314019

/-- `2*A008706(n)-A315070(n)` -/
def P7864652290832341398.Spec : Prop :=
  ∀ n, P7864652290832341398.a n = A314019 n

end A314019

/-! ## A314019.P1316907077333923753

`A008458(n)+A008574(n)-A315070(n)`
-/

namespace A314019.P1316907077333923753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315070 n)

end

end A314019.P1316907077333923753

namespace A314019

/-- `A008458(n)+A008574(n)-A315070(n)` -/
def P1316907077333923753.Spec : Prop :=
  ∀ n, P1316907077333923753.a n = A314019 n

end A314019

/-! ## A314019.P15779238038600945450

`A005843(A008706(n))-A315070(n)`
-/

namespace A314019.P15779238038600945450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315070 n

end

end A314019.P15779238038600945450

namespace A314019

/-- `A005843(A008706(n))-A315070(n)` -/
def P15779238038600945450.Spec : Prop :=
  ∀ n, P15779238038600945450.a n = A314019 n

end A314019

/-! ## A314019.P14910739223116538053

`A004396(A315643(n)+2*n)`
-/

namespace A314019.P14910739223116538053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315643 n + (2 * n : ℤ)).toNat

end

end A314019.P14910739223116538053

namespace A314019

/-- `A004396(A315643(n)+2*n)` -/
def P14910739223116538053.Spec : Prop :=
  ∀ n, P14910739223116538053.a n = A314019 n

end A314019

/-! ## A314019.P3750204460625444302

`A004396(A315678(n)+2*n)`
-/

namespace A314019.P3750204460625444302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315678 n + (2 * n : ℤ)).toNat

end

end A314019.P3750204460625444302

namespace A314019

/-- `A004396(A315678(n)+2*n)` -/
def P3750204460625444302.Spec : Prop :=
  ∀ n, P3750204460625444302.a n = A314019 n

end A314019

/-! ## A314019.P12756700157124258798

`A004396(2*(A313534(n)-n))`
-/

namespace A314019.P12756700157124258798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313534 n - (n : ℤ))).toNat

end

end A314019.P12756700157124258798

namespace A314019

/-- `A004396(2*(A313534(n)-n))` -/
def P12756700157124258798.Spec : Prop :=
  ∀ n, P12756700157124258798.a n = A314019 n

end A314019

/-! ## A314019.P17575156583240296405

`A004396(A315643(n)+n+n)`
-/

namespace A314019.P17575156583240296405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315643 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314019.P17575156583240296405

namespace A314019

/-- `A004396(A315643(n)+n+n)` -/
def P17575156583240296405.Spec : Prop :=
  ∀ n, P17575156583240296405.a n = A314019 n

end A314019

/-! ## A314019.P4298131884699336107

`A004396(A315678(n)+n+n)`
-/

namespace A314019.P4298131884699336107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315678 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314019.P4298131884699336107

namespace A314019

/-- `A004396(A315678(n)+n+n)` -/
def P4298131884699336107.Spec : Prop :=
  ∀ n, P4298131884699336107.a n = A314019 n

end A314019

/-!
# A314020: Coordination sequence Gal.6.247.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314020, the canonical program `A314020.P15849566854326766126` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314020 has offset 0).

The definition of A314020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2392 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314020.P3137469034650825120

`A312979(n)+A253262(n)`
-/

namespace A314020.P3137469034650825120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312979 n + A253262 n

end

end A314020.P3137469034650825120

namespace A314020

/-- `A312979(n)+A253262(n)` -/
def P3137469034650825120.Spec : Prop :=
  ∀ n, P3137469034650825120.a n = A314020 n

end A314020

/-! ## A314020.P5366303165376589031

`A330025(n)+A310398(n)`
-/

namespace A314020.P5366303165376589031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A310398 n

end

end A314020.P5366303165376589031

namespace A314020

/-- `A330025(n)+A310398(n)` -/
def P5366303165376589031.Spec : Prop :=
  ∀ n, P5366303165376589031.a n = A314020 n

theorem P5366303165376589031.correct : P5366303165376589031.Spec := by
  intro n
  simp only [A314020, Nat.add_sub_cancel, A314020.P5366303165376589031.a, A314020.P15849566854326766126.f1, A314020.P15849566854326766126.a, A011858, A011858.P16234308487928340219.a, A310398, A310398.P3945335365291150677.f1, A310398.P3945335365291150677.a, A313476, A313476.P1237108097731061015.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, A312903, A312903.P5186887365123370171.a, A311384, A311384.P2354907441128154650.a, A008486, A008486.P11623131867527198563.a, A047363, A047363.P7486090247302327639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A314020

/-! ## A314020.P15849566854326766126

`A313476(n)+Δ[A011858(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A314020

/-- `A313476(n)+Δ[A011858(n)]` -/
def P15849566854326766126.Spec : Prop :=
  ∀ n, P15849566854326766126.a n = A314020 n

theorem P15849566854326766126.correct : P15849566854326766126.Spec := by
  intro n
  simp only [A314020]

end A314020

/-! ## A314020.P1385550051156364868

`A313610(n)-A014019(n+3)`
-/

namespace A314020.P1385550051156364868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313610 n - A014019 (n + 3)

end

end A314020.P1385550051156364868

namespace A314020

/-- `A313610(n)-A014019(n+3)` -/
def P1385550051156364868.Spec : Prop :=
  ∀ n, P1385550051156364868.a n = A314020 n

end A314020

/-! ## A314020.P13191220498921162385

`A253262(n)+A313610(n)-A330025(n)`
-/

namespace A314020.P13191220498921162385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 n + (A313610 n - A330025 n)

end

end A314020.P13191220498921162385

namespace A314020

/-- `A253262(n)+A313610(n)-A330025(n)` -/
def P13191220498921162385.Spec : Prop :=
  ∀ n, P13191220498921162385.a n = A314020 n

end A314020

/-! ## A314020.P5110667321718739083

`A253262(n)+A310398(n)+A014019(n+3)`
-/

namespace A314020.P5110667321718739083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 n + (A310398 n + A014019 (n + 3))

end

end A314020.P5110667321718739083

namespace A314020

/-- `A253262(n)+A310398(n)+A014019(n+3)` -/
def P5110667321718739083.Spec : Prop :=
  ∀ n, P5110667321718739083.a n = A314020 n

end A314020

/-! ## A314020.P9583367378300425064

`abs(A008592(n)-A315069(n))`
-/

namespace A314020.P9583367378300425064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315069 n|

end

end A314020.P9583367378300425064

namespace A314020

/-- `abs(A008592(n)-A315069(n))` -/
def P9583367378300425064.Spec : Prop :=
  ∀ n, P9583367378300425064.a n = A314020 n

end A314020

/-! ## A314020.P5753805165800534198

`A008458(n)+A008574(n)-A315069(n)`
-/

namespace A314020.P5753805165800534198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315069 n)

end

end A314020.P5753805165800534198

namespace A314020

/-- `A008458(n)+A008574(n)-A315069(n)` -/
def P5753805165800534198.Spec : Prop :=
  ∀ n, P5753805165800534198.a n = A314020 n

end A314020

/-! ## A314020.P5726743634850861091

`A008574(n)+A315742(n)-A250120(n)`
-/

namespace A314020.P5726743634850861091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315742 n - A250120 n)

end

end A314020.P5726743634850861091

namespace A314020

/-- `A008574(n)+A315742(n)-A250120(n)` -/
def P5726743634850861091.Spec : Prop :=
  ∀ n, P5726743634850861091.a n = A314020 n

end A314020

/-! ## A314020.P6586787735341680226

`round(A008576(A315684(n))/3)`
-/

namespace A314020.P6586787735341680226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008576 (A315684 n).toNat : ℚ) / 3)

end

end A314020.P6586787735341680226

namespace A314020

/-- `round(A008576(A315684(n))/3)` -/
def P6586787735341680226.Spec : Prop :=
  ∀ n, P6586787735341680226.a n = A314020 n

end A314020

/-! ## A314020.P13617734418733449629

`A004396(A315644(n)+2*n)`
-/

namespace A314020.P13617734418733449629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315644 n + (2 * n : ℤ)).toNat

end

end A314020.P13617734418733449629

namespace A314020

/-- `A004396(A315644(n)+2*n)` -/
def P13617734418733449629.Spec : Prop :=
  ∀ n, P13617734418733449629.a n = A314020 n

end A314020

/-! ## A314020.P16307639133185102015

`A004396(A315679(n)+2*n)`
-/

namespace A314020.P16307639133185102015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315679 n + (2 * n : ℤ)).toNat

end

end A314020.P16307639133185102015

namespace A314020

/-- `A004396(A315679(n)+2*n)` -/
def P16307639133185102015.Spec : Prop :=
  ∀ n, P16307639133185102015.a n = A314020 n

end A314020

/-! ## A314020.P7430263888335095527

`A004396(2*(A313537(n)-n))`
-/

namespace A314020.P7430263888335095527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313537 n - (n : ℤ))).toNat

end

end A314020.P7430263888335095527

namespace A314020

/-- `A004396(2*(A313537(n)-n))` -/
def P7430263888335095527.Spec : Prop :=
  ∀ n, P7430263888335095527.a n = A314020 n

end A314020

/-! ## A314020.P5505218887330305487

`A004396(A315644(n)+n+n)`
-/

namespace A314020.P5505218887330305487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315644 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314020.P5505218887330305487

namespace A314020

/-- `A004396(A315644(n)+n+n)` -/
def P5505218887330305487.Spec : Prop :=
  ∀ n, P5505218887330305487.a n = A314020 n

end A314020

/-! ## A314020.P7778829627810051466

`A004396(A315679(n)+n+n)`
-/

namespace A314020.P7778829627810051466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315679 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314020.P7778829627810051466

namespace A314020

/-- `A004396(A315679(n)+n+n)` -/
def P7778829627810051466.Spec : Prop :=
  ∀ n, P7778829627810051466.a n = A314020 n

end A314020

/-! ## A314020.P1930708603718440831

`A064429(A312979(2*n))-A312979(n)`
-/

namespace A314020.P1930708603718440831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A312979 (2 * n)).toNat - A312979 n

end

end A314020.P1930708603718440831

namespace A314020

/-- `A064429(A312979(2*n))-A312979(n)` -/
def P1930708603718440831.Spec : Prop :=
  ∀ n, P1930708603718440831.a n = A314020 n

end A314020

/-! ## A314020.P10459476631499644831

`A092695(5*A312892(n))`
-/

namespace A314020.P10459476631499644831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092695 (5 * A312892 n).toNat

end

end A314020.P10459476631499644831

namespace A314020

/-- `A092695(5*A312892(n))` -/
def P10459476631499644831.Spec : Prop :=
  ∀ n, P10459476631499644831.a n = A314020 n

end A314020

/-!
# A314021: Coordination sequence Gal.5.84.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314021, there is no canonical definition to state claims against.
-/

/-! ## A314021.P8996748763010034303

`A315696(n)-A004396(n)`
-/

namespace A314021.P8996748763010034303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315696 n - A004396 n

end

end A314021.P8996748763010034303

/-! ## A314021.P15911750436278577839

`A315696(n)-A002264(2*n+1)`
-/

namespace A314021.P15911750436278577839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315696 n - A002264 (2 * n + 1)

end

end A314021.P15911750436278577839

/-! ## A314021.P14165529938176452443

`A310369(n)+A004396(A004396(n))`
-/

namespace A314021.P14165529938176452443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310369 n + A004396 (A004396 n).toNat

end

end A314021.P14165529938176452443

/-! ## A314021.P14132063269843197793

`A313538(n)+A004396(n-A004396(n))`
-/

namespace A314021.P14132063269843197793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313538 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A314021.P14132063269843197793

/-! ## A314021.P11385956377205037810

`abs(A008592(n)-A315068(n))`
-/

namespace A314021.P11385956377205037810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315068 n|

end

end A314021.P11385956377205037810

/-! ## A314021.P513632055633591739

`A008458(n)+A008574(n)-A315068(n)`
-/

namespace A314021.P513632055633591739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315068 n)

end

end A314021.P513632055633591739

/-! ## A314021.P8147284676467977885

`A315646(n)-A004396(A004396(n))`
-/

namespace A314021.P8147284676467977885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315646 n - A004396 (A004396 n).toNat

end

end A314021.P8147284676467977885

/-! ## A314021.P4315157811785226977

`A315757(n)-A004396(2*A004396(n))`
-/

namespace A314021.P4315157811785226977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315757 n - A004396 (2 * A004396 n).toNat

end

end A314021.P4315157811785226977

/-! ## A314021.P9218927320112093975

`A004396(2*n)+A004396(A315646(n))`
-/

namespace A314021.P9218927320112093975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A315646 n).toNat

end

end A314021.P9218927320112093975

/-! ## A314021.P10073286172139167585

`A004396(2*n)+A004396(A315680(n))`
-/

namespace A314021.P10073286172139167585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A315680 n).toNat

end

end A314021.P10073286172139167585

/-! ## A314021.P4538577226601968598

`A004396(A315646(n)+2*n)`
-/

namespace A314021.P4538577226601968598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315646 n + (2 * n : ℤ)).toNat

end

end A314021.P4538577226601968598

/-! ## A314021.P5790894583657691967

`A004396(A315680(n)+2*n)`
-/

namespace A314021.P5790894583657691967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315680 n + (2 * n : ℤ)).toNat

end

end A314021.P5790894583657691967

/-! ## A314021.P5192878172562276806

`A004396(2*(A313538(n)-n))`
-/

namespace A314021.P5192878172562276806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313538 n - (n : ℤ))).toNat

end

end A314021.P5192878172562276806

/-! ## A314021.P8302238373149316948

`A004396(A315646(n)+n+n)`
-/

namespace A314021.P8302238373149316948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315646 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314021.P8302238373149316948

/-! ## A314021.P10734466863811539938

`A004396(A315680(n)+n+n)`
-/

namespace A314021.P10734466863811539938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315680 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314021.P10734466863811539938

/-! ## A314021.P8639393199851217366

`A004396(A313538(n)-(A005843(n)-A313538(n)))`
-/

namespace A314021.P8639393199851217366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313538 n - (A005843 n - A313538 n)).toNat

end

end A314021.P8639393199851217366

/-!
# A314022: Coordination sequence Gal.6.203.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314022, the canonical program `A314022.P5759349393798454835` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314022 has offset 0).

The definition of A314022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314022.P14964566338964371559

`abs(A008592(n)-A315067(n))`
-/

namespace A314022.P14964566338964371559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315067 n|

end

end A314022.P14964566338964371559

namespace A314022

/-- `abs(A008592(n)-A315067(n))` -/
def P14964566338964371559.Spec : Prop :=
  ∀ n, P14964566338964371559.a n = A314022 n

end A314022

/-! ## A314022.P14230924386147214615

`floor(A010015(n)/A315067(n))`
-/

namespace A314022.P14230924386147214615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315067 n : ℚ)⌋

end

end A314022.P14230924386147214615

namespace A314022

/-- `floor(A010015(n)/A315067(n))` -/
def P14230924386147214615.Spec : Prop :=
  ∀ n, P14230924386147214615.a n = A314022 n

end A314022

/-! ## A314022.P15611608231813315105

`2*A008706(n)-A315067(n)`
-/

namespace A314022.P15611608231813315105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315067 n

end

end A314022.P15611608231813315105

namespace A314022

/-- `2*A008706(n)-A315067(n)` -/
def P15611608231813315105.Spec : Prop :=
  ∀ n, P15611608231813315105.a n = A314022 n

end A314022

/-! ## A314022.P5759349393798454835

`A310393(n)+A004525(A004396(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314022

/-- `A310393(n)+A004525(A004396(n))` -/
def P5759349393798454835.Spec : Prop :=
  ∀ n, P5759349393798454835.a n = A314022 n

theorem P5759349393798454835.correct : P5759349393798454835.Spec := by
  intro n
  simp only [A314022]

end A314022

/-! ## A314022.P9190294816173482046

`A313540(n)+A004396(n-A004525(n))`
-/

namespace A314022.P9190294816173482046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A314022.P9190294816173482046

namespace A314022

/-- `A313540(n)+A004396(n-A004525(n))` -/
def P9190294816173482046.Spec : Prop :=
  ∀ n, P9190294816173482046.a n = A314022 n

end A314022

/-! ## A314022.P6465152965799995755

`A313546(n)+A004525(n-A004396(n))`
-/

namespace A314022.P6465152965799995755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313546 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A314022.P6465152965799995755

namespace A314022

/-- `A313546(n)+A004525(n-A004396(n))` -/
def P6465152965799995755.Spec : Prop :=
  ∀ n, P6465152965799995755.a n = A314022 n

theorem P6465152965799995755.correct : P6465152965799995755.Spec := by
  intro n
  simp only [A314022, Nat.add_sub_cancel, A314022.P6465152965799995755.a, A314022.P5759349393798454835.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A310393, A310393.P12744869705430097846.a, A313546, A313546.P16396448915990125891.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314022

/-! ## A314022.P12899956901985010637

`A008458(n)+A008574(n)-A315067(n)`
-/

namespace A314022.P12899956901985010637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315067 n)

end

end A314022.P12899956901985010637

namespace A314022

/-- `A008458(n)+A008574(n)-A315067(n)` -/
def P12899956901985010637.Spec : Prop :=
  ∀ n, P12899956901985010637.a n = A314022 n

end A314022

/-! ## A314022.P4195860236927453197

`A310470(n)+A128834(n)`
-/

namespace A314022.P4195860236927453197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310470 n + A128834 n

end

end A314022.P4195860236927453197

namespace A314022

/-- `A310470(n)+A128834(n)` -/
def P4195860236927453197.Spec : Prop :=
  ∀ n, P4195860236927453197.a n = A314022 n

end A314022

/-! ## A314022.P13240163238806731845

`A310470(n)-A010892(n+2)`
-/

namespace A314022.P13240163238806731845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310470 n - A010892 (n + 2)

end

end A314022.P13240163238806731845

namespace A314022

/-- `A310470(n)-A010892(n+2)` -/
def P13240163238806731845.Spec : Prop :=
  ∀ n, P13240163238806731845.a n = A314022 n

end A314022

/-! ## A314022.P7086181356642417242

`A004396(A004525(n))+A314043(n)-A004525(n)`
-/

namespace A314022.P7086181356642417242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A314043 n - A004525 n)

end

end A314022.P7086181356642417242

namespace A314022

/-- `A004396(A004525(n))+A314043(n)-A004525(n)` -/
def P7086181356642417242.Spec : Prop :=
  ∀ n, P7086181356642417242.a n = A314022 n

theorem P7086181356642417242.correct : P7086181356642417242.Spec := by
  intro n
  simp only [A314022, Nat.add_sub_cancel, A314022.P7086181356642417242.a, A314022.P5759349393798454835.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A310393, A310393.P12744869705430097846.a, A314043, A314043.P3377773668893100370.a, A310410, A310410.P13699142073105713236.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314022

/-! ## A314022.P462810672330831988

`A004525(A004396(n))+A314048(n)-A004525(n)`
-/

namespace A314022.P462810672330831988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A314048 n - A004525 n)

end

end A314022.P462810672330831988

namespace A314022

/-- `A004525(A004396(n))+A314048(n)-A004525(n)` -/
def P462810672330831988.Spec : Prop :=
  ∀ n, P462810672330831988.a n = A314022 n

theorem P462810672330831988.correct : P462810672330831988.Spec := by
  intro n
  simp only [A314022, Nat.add_sub_cancel, A314022.P462810672330831988.a, A314022.P5759349393798454835.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A310393, A310393.P12744869705430097846.a, A314048, A314048.P6753169348479549005.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314022

/-! ## A314022.P17245192250302968427

`A314097(n)-Δ[A011865(n)]`
-/

namespace A314022.P17245192250302968427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314097 n - (f1 (n + 1) - f1 n)

end

end A314022.P17245192250302968427

namespace A314022

/-- `A314097(n)-Δ[A011865(n)]` -/
def P17245192250302968427.Spec : Prop :=
  ∀ n, P17245192250302968427.a n = A314022 n

end A314022

/-! ## A314022.P10821320455695022299

`A004525(A004396(n))+A314142(n)-A004396(n)`
-/

namespace A314022.P10821320455695022299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A314142 n - A004396 n)

end

end A314022.P10821320455695022299

namespace A314022

/-- `A004525(A004396(n))+A314142(n)-A004396(n)` -/
def P10821320455695022299.Spec : Prop :=
  ∀ n, P10821320455695022299.a n = A314022 n

theorem P10821320455695022299.correct : P10821320455695022299.Spec := by
  intro n
  simp only [A314022, Nat.add_sub_cancel, A314022.P10821320455695022299.a, A314022.P5759349393798454835.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A310393, A310393.P12744869705430097846.a, A314142, A314142.P8377752906736418581.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314022

/-! ## A314022.P12959012207999330126

`A315649(n)-A004525(n)`
-/

namespace A314022.P12959012207999330126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315649 n - A004525 n

end

end A314022.P12959012207999330126

namespace A314022

/-- `A315649(n)-A004525(n)` -/
def P12959012207999330126.Spec : Prop :=
  ∀ n, P12959012207999330126.a n = A314022 n

theorem P12959012207999330126.correct : P12959012207999330126.Spec := by
  intro n
  simp only [A314022, Nat.add_sub_cancel, A314022.P12959012207999330126.a, A314022.P5759349393798454835.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A310393, A310393.P12744869705430097846.a, A315649, A315649.P5476829177456958284.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314022

/-! ## A314022.P13515330208693727545

`A315649(n)-Δ[A054925(n)]`
-/

namespace A314022.P13515330208693727545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315649 n - (f1 (n + 1) - f1 n)

end

end A314022.P13515330208693727545

namespace A314022

/-- `A315649(n)-Δ[A054925(n)]` -/
def P13515330208693727545.Spec : Prop :=
  ∀ n, P13515330208693727545.a n = A314022 n

end A314022

/-! ## A314022.P18343468150337608943

`A074067(A315067(n))`
-/

namespace A314022.P18343468150337608943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315067 n).toNat

end

end A314022.P18343468150337608943

namespace A314022

/-- `A074067(A315067(n))` -/
def P18343468150337608943.Spec : Prop :=
  ∀ n, P18343468150337608943.a n = A314022 n

end A314022

/-! ## A314022.P6692078985490160442

`A005843(A008706(n))-A315067(n)`
-/

namespace A314022.P6692078985490160442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315067 n

end

end A314022.P6692078985490160442

namespace A314022

/-- `A005843(A008706(n))-A315067(n)` -/
def P6692078985490160442.Spec : Prop :=
  ∀ n, P6692078985490160442.a n = A314022 n

end A314022

/-!
# A314023: Coordination sequence Gal.6.463.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314023, there is no canonical definition to state claims against.
-/

/-! ## A314023.P11075623808001953956

`or(A163541(A226494(n+1)), A315053(n))`
-/

namespace A314023.P11075623808001953956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A163541 (A226494 (n + 1)).toNat) (A315053 n)

end

end A314023.P11075623808001953956

/-! ## A314023.P8518920169296539065

`A314043(n)-A094091(A094087(n+1))`
-/

namespace A314023.P8518920169296539065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314043 n - A094091 (A094087 (n + 1)).toNat

end

end A314023.P8518920169296539065

/-! ## A314023.P13175631091722648020

`or(A070176(A128238(n+3)), A314022(n))`
-/

namespace A314023.P13175631091722648020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070176 (A128238 (n + 3)).toNat) (A314022 n)

end

end A314023.P13175631091722648020

/-! ## A314023.P6232607190865146253

`xor(A314040(n), A327928(n!))`
-/

namespace A314023.P6232607190865146253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A314040 n) (A327928 (Nat.factorial n))

end

end A314023.P6232607190865146253

/-! ## A314023.P12110618160285508238

`or(A008683(A242764(n))², A314022(n))`
-/

namespace A314023.P12110618160285508238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (A242764 n).toNat ^ 2) (A314022 n)

end

end A314023.P12110618160285508238

/-!
# A314024: Coordination sequence Gal.6.156.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314024, the canonical program `A314024.P187168839629835134` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314024 has offset 0).

The definition of A314024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314024.P187168839629835134

`A315697(n)-A004396(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A314024

/-- `A315697(n)-A004396(n)` -/
def P187168839629835134.Spec : Prop :=
  ∀ n, P187168839629835134.a n = A314024 n

theorem P187168839629835134.correct : P187168839629835134.Spec := by
  intro n
  simp only [A314024]

end A314024

/-! ## A314024.P3325145068226332379

`A313533(n)+∑[A022003(n)]`
-/

namespace A314024.P3325145068226332379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313533 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314024.P3325145068226332379

namespace A314024

/-- `A313533(n)+∑[A022003(n)]` -/
def P3325145068226332379.Spec : Prop :=
  ∀ n, P3325145068226332379.a n = A314024 n

end A314024

/-! ## A314024.P1055961319822871128

`A313533(n)+A002264(n+1)`
-/

namespace A314024.P1055961319822871128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313533 n + A002264 (n + 1)

end

end A314024.P1055961319822871128

namespace A314024

/-- `A313533(n)+A002264(n+1)` -/
def P1055961319822871128.Spec : Prop :=
  ∀ n, P1055961319822871128.a n = A314024 n

end A314024

/-! ## A314024.P15118551754364461226

`A313533(n)+n-A004396(n)`
-/

namespace A314024.P15118551754364461226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313533 n + ((n : ℤ) - A004396 n)

end

end A314024.P15118551754364461226

namespace A314024

/-- `A313533(n)+n-A004396(n)` -/
def P15118551754364461226.Spec : Prop :=
  ∀ n, P15118551754364461226.a n = A314024 n

theorem P15118551754364461226.correct : P15118551754364461226.Spec := by
  intro n
  simp only [A314024, Nat.add_sub_cancel, A314024.P15118551754364461226.a, A314024.P187168839629835134.a, A004396, A004396.P17032557045289780609.a, A313533, A313533.P10490888896929360716.a, A315697, A315697.P15638358996916271384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314024

/-! ## A314024.P4998475509756132447

`∑[A022003(n)]+A315697(n)-n`
-/

namespace A314024.P4998475509756132447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315697 n - (n : ℤ))

end

end A314024.P4998475509756132447

namespace A314024

/-- `∑[A022003(n)]+A315697(n)-n` -/
def P4998475509756132447.Spec : Prop :=
  ∀ n, P4998475509756132447.a n = A314024 n

end A314024

/-! ## A314024.P7761392702042412166

`A315697(n)-A002264(2*n+1)`
-/

namespace A314024.P7761392702042412166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315697 n - A002264 (2 * n + 1)

end

end A314024.P7761392702042412166

namespace A314024

/-- `A315697(n)-A002264(2*n+1)` -/
def P7761392702042412166.Spec : Prop :=
  ∀ n, P7761392702042412166.a n = A314024 n

theorem P7761392702042412166.correct : P7761392702042412166.Spec := by
  intro n
  simp only [A314024, Nat.add_sub_cancel, A314024.P7761392702042412166.a, A314024.P187168839629835134.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A315697, A315697.P15638358996916271384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314024

/-! ## A314024.P17529637676860366275

`A002264(n+1)+A315697(n)-n`
-/

namespace A314024.P17529637676860366275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1) + (A315697 n - (n : ℤ))

end

end A314024.P17529637676860366275

namespace A314024

/-- `A002264(n+1)+A315697(n)-n` -/
def P17529637676860366275.Spec : Prop :=
  ∀ n, P17529637676860366275.a n = A314024 n

end A314024

/-! ## A314024.P830137625095993476

`A313533(n)+n-A004525(A004773(n))`
-/

namespace A314024.P830137625095993476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313533 n + ((n : ℤ) - A004525 (A004773 n).toNat)

end

end A314024.P830137625095993476

namespace A314024

/-- `A313533(n)+n-A004525(A004773(n))` -/
def P830137625095993476.Spec : Prop :=
  ∀ n, P830137625095993476.a n = A314024 n

end A314024

/-! ## A314024.P17256751471076052236

`A008486(n)+A313533(n)-A008576(n)`
-/

namespace A314024.P17256751471076052236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313533 n - A008576 n)

end

end A314024.P17256751471076052236

namespace A314024

/-- `A008486(n)+A313533(n)-A008576(n)` -/
def P17256751471076052236.Spec : Prop :=
  ∀ n, P17256751471076052236.a n = A314024 n

end A314024

/-! ## A314024.P10412830122523835109

`A314098(n)-Δ[A011865(n)]`
-/

namespace A314024.P10412830122523835109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314098 n - (f1 (n + 1) - f1 n)

end

end A314024.P10412830122523835109

namespace A314024

/-- `A314098(n)-Δ[A011865(n)]` -/
def P10412830122523835109.Spec : Prop :=
  ∀ n, P10412830122523835109.a n = A314024 n

end A314024

/-! ## A314024.P8585494907500424679

`abs(A008592(n)-A315064(n))`
-/

namespace A314024.P8585494907500424679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315064 n|

end

end A314024.P8585494907500424679

namespace A314024

/-- `abs(A008592(n)-A315064(n))` -/
def P8585494907500424679.Spec : Prop :=
  ∀ n, P8585494907500424679.a n = A314024 n

end A314024

/-! ## A314024.P5559319939875856555

`A008458(n)+A008574(n)-A315064(n)`
-/

namespace A314024.P5559319939875856555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315064 n)

end

end A314024.P5559319939875856555

namespace A314024

/-- `A008458(n)+A008574(n)-A315064(n)` -/
def P5559319939875856555.Spec : Prop :=
  ∀ n, P5559319939875856555.a n = A314024 n

end A314024

/-! ## A314024.P8021841478091953603

`A004525(2*A313474(n)+n)`
-/

namespace A314024.P8021841478091953603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A313474 n + (n : ℤ)).toNat

end

end A314024.P8021841478091953603

namespace A314024

/-- `A004525(2*A313474(n)+n)` -/
def P8021841478091953603.Spec : Prop :=
  ∀ n, P8021841478091953603.a n = A314024 n

end A314024

/-! ## A314024.P2825330943274061372

`A004525(2*A315683(n)-n)`
-/

namespace A314024.P2825330943274061372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A315683 n - (n : ℤ)).toNat

end

end A314024.P2825330943274061372

namespace A314024

/-- `A004525(2*A315683(n)-n)` -/
def P2825330943274061372.Spec : Prop :=
  ∀ n, P2825330943274061372.a n = A314024 n

end A314024

/-! ## A314024.P3583342954903516766

`A004525(2*A315688(n)-n)`
-/

namespace A314024.P3583342954903516766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A315688 n - (n : ℤ)).toNat

end

end A314024.P3583342954903516766

namespace A314024

/-- `A004525(2*A315688(n)-n)` -/
def P3583342954903516766.Spec : Prop :=
  ∀ n, P3583342954903516766.a n = A314024 n

end A314024

/-! ## A314024.P9992251096940136943

`or(and(1, n), A004526(2*A313474(n)+n))`
-/

namespace A314024.P9992251096940136943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 n : ℤ) (A004526 (2 * A313474 n + (n : ℤ)).toNat)

end

end A314024.P9992251096940136943

namespace A314024

/-- `or(and(1, n), A004526(2*A313474(n)+n))` -/
def P9992251096940136943.Spec : Prop :=
  ∀ n, P9992251096940136943.a n = A314024 n

end A314024

/-! ## A314024.P3604295099678388868

`A004525(A313474(n)+A313474(n)+n)`
-/

namespace A314024.P3604295099678388868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313474 n + (A313474 n + (n : ℤ))).toNat

end

end A314024.P3604295099678388868

namespace A314024

/-- `A004525(A313474(n)+A313474(n)+n)` -/
def P3604295099678388868.Spec : Prop :=
  ∀ n, P3604295099678388868.a n = A314024 n

end A314024

/-! ## A314024.P46751400230010105

`A004525(A315683(n)+A315683(n)-n)`
-/

namespace A314024.P46751400230010105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315683 n + (A315683 n - (n : ℤ))).toNat

end

end A314024.P46751400230010105

namespace A314024

/-- `A004525(A315683(n)+A315683(n)-n)` -/
def P46751400230010105.Spec : Prop :=
  ∀ n, P46751400230010105.a n = A314024 n

end A314024

/-! ## A314024.P8287584072107073705

`A004525(A315688(n)+A315688(n)-n)`
-/

namespace A314024.P8287584072107073705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315688 n + (A315688 n - (n : ℤ))).toNat

end

end A314024.P8287584072107073705

namespace A314024

/-- `A004525(A315688(n)+A315688(n)-n)` -/
def P8287584072107073705.Spec : Prop :=
  ∀ n, P8287584072107073705.a n = A314024 n

end A314024

/-!
# A314025: Coordination sequence Gal.6.250.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314025, the canonical program `A314025.P13685615418460974247` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314025 has offset 0).

The definition of A314025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314025.P16194921444119779045

`abs(A008592(n)-A315062(n))`
-/

namespace A314025.P16194921444119779045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315062 n|

end

end A314025.P16194921444119779045

namespace A314025

/-- `abs(A008592(n)-A315062(n))` -/
def P16194921444119779045.Spec : Prop :=
  ∀ n, P16194921444119779045.a n = A314025 n

end A314025

/-! ## A314025.P10384833866139775255

`2*A008706(n)-A315062(n)`
-/

namespace A314025.P10384833866139775255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315062 n

end

end A314025.P10384833866139775255

namespace A314025

/-- `2*A008706(n)-A315062(n)` -/
def P10384833866139775255.Spec : Prop :=
  ∀ n, P10384833866139775255.a n = A314025 n

end A314025

/-! ## A314025.P10188312452133567972

`A008458(n)+A008574(n)-A315062(n)`
-/

namespace A314025.P10188312452133567972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315062 n)

end

end A314025.P10188312452133567972

namespace A314025

/-- `A008458(n)+A008574(n)-A315062(n)` -/
def P10188312452133567972.Spec : Prop :=
  ∀ n, P10188312452133567972.a n = A314025 n

end A314025

/-! ## A314025.P13685615418460974247

`2*n+A004396(A310367(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A314025

/-- `2*n+A004396(A310367(n))` -/
def P13685615418460974247.Spec : Prop :=
  ∀ n, P13685615418460974247.a n = A314025 n

theorem P13685615418460974247.correct : P13685615418460974247.Spec := by
  intro n
  simp only [A314025]

end A314025

/-! ## A314025.P12590651692953091846

`A004396(A313475(n))+2*n`
-/

namespace A314025.P12590651692953091846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313475 n).toNat + (2 * n : ℤ)

end

end A314025.P12590651692953091846

namespace A314025

/-- `A004396(A313475(n))+2*n` -/
def P12590651692953091846.Spec : Prop :=
  ∀ n, P12590651692953091846.a n = A314025 n

end A314025

/-! ## A314025.P1022752840567681853

`A005843(n)+A004396(A313475(n))`
-/

namespace A314025.P1022752840567681853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A313475 n).toNat

end

end A314025.P1022752840567681853

namespace A314025

/-- `A005843(n)+A004396(A313475(n))` -/
def P1022752840567681853.Spec : Prop :=
  ∀ n, P1022752840567681853.a n = A314025 n

end A314025

/-! ## A314025.P9251692607309426175

`A008585(n)-(n-A004396(A310367(n)))`
-/

namespace A314025.P9251692607309426175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A310367 n).toNat)

end

end A314025.P9251692607309426175

namespace A314025

/-- `A008585(n)-(n-A004396(A310367(n)))` -/
def P9251692607309426175.Spec : Prop :=
  ∀ n, P9251692607309426175.a n = A314025 n

theorem P9251692607309426175.correct : P9251692607309426175.Spec := by
  intro n
  simp only [A314025, Nat.add_sub_cancel, A314025.P9251692607309426175.a, A314025.P13685615418460974247.a, A004396, A004396.P17032557045289780609.a, A008585, A008585.P13732812384316341435.a, A310367, A310367.P12244695363259660047.a, A001316, A001316.P6850078358198232129.a, A004525, A004525.P4158271949796742323.a, A014963, A014963.P5975177236000282614.a, A312927, A312927.P540762951115705510.f1, A312927.P540762951115705510.a, A000120, A000120.P2816527436160941581.a, A011864, A011864.P3547417513882699266.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, A313045, A313045.P11830860627486211470.f1, A313045.P11830860627486211470.a, A005187, A005187.P3874015513960485494.a, A008458, A008458.P10936398443463225625.a, A047486, A047486.P6506762595393263252.a, A080304, A080304.P9910366703239988167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A314025

/-! ## A314025.P14279335113684982189

`A004396(2*A312891(n)-n)`
-/

namespace A314025.P14279335113684982189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A312891 n - (n : ℤ)).toNat

end

end A314025.P14279335113684982189

namespace A314025

/-- `A004396(2*A312891(n)-n)` -/
def P14279335113684982189.Spec : Prop :=
  ∀ n, P14279335113684982189.a n = A314025 n

end A314025

/-! ## A314025.P7346348865655281219

`A004396(A310367(n)+A008486(n))`
-/

namespace A314025.P7346348865655281219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310367 n + A008486 n).toNat

end

end A314025.P7346348865655281219

namespace A314025

/-- `A004396(A310367(n)+A008486(n))` -/
def P7346348865655281219.Spec : Prop :=
  ∀ n, P7346348865655281219.a n = A314025 n

end A314025

/-! ## A314025.P5624939925128619904

`A004396(A310367(n)+A008585(n))`
-/

namespace A314025.P5624939925128619904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310367 n + A008585 n).toNat

end

end A314025.P5624939925128619904

namespace A314025

/-- `A004396(A310367(n)+A008585(n))` -/
def P5624939925128619904.Spec : Prop :=
  ∀ n, P5624939925128619904.a n = A314025 n

end A314025

/-! ## A314025.P7868641521976177620

`A004396(A313475(n)+A008486(n))`
-/

namespace A314025.P7868641521976177620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313475 n + A008486 n).toNat

end

end A314025.P7868641521976177620

namespace A314025

/-- `A004396(A313475(n)+A008486(n))` -/
def P7868641521976177620.Spec : Prop :=
  ∀ n, P7868641521976177620.a n = A314025 n

end A314025

/-! ## A314025.P8041886002123603963

`A004396(A312891(n)+A312891(n)-n)`
-/

namespace A314025.P8041886002123603963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312891 n + (A312891 n - (n : ℤ))).toNat

end

end A314025.P8041886002123603963

namespace A314025

/-- `A004396(A312891(n)+A312891(n)-n)` -/
def P8041886002123603963.Spec : Prop :=
  ∀ n, P8041886002123603963.a n = A314025 n

end A314025

/-! ## A314025.P7546828073213607637

`A004396(A312891(n)-(n-A312891(n)))`
-/

namespace A314025.P7546828073213607637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312891 n - ((n : ℤ) - A312891 n)).toNat

end

end A314025.P7546828073213607637

namespace A314025

/-- `A004396(A312891(n)-(n-A312891(n)))` -/
def P7546828073213607637.Spec : Prop :=
  ∀ n, P7546828073213607637.a n = A314025 n

end A314025

/-! ## A314025.P2110610014920655877

`A068962(2*A315756(n)+n)`
-/

namespace A314025.P2110610014920655877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (2 * A315756 n + (n : ℤ)).toNat

end

end A314025.P2110610014920655877

namespace A314025

/-- `A068962(2*A315756(n)+n)` -/
def P2110610014920655877.Spec : Prop :=
  ∀ n, P2110610014920655877.a n = A314025 n

end A314025

/-! ## A314025.P5394399611719238418

`A068962(A315756(n)+A315756(n)+n)`
-/

namespace A314025.P5394399611719238418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A315756 n + (A315756 n + (n : ℤ))).toNat

end

end A314025.P5394399611719238418

namespace A314025

/-- `A068962(A315756(n)+A315756(n)+n)` -/
def P5394399611719238418.Spec : Prop :=
  ∀ n, P5394399611719238418.a n = A314025 n

end A314025

/-!
# A314026: Coordination sequence Gal.5.130.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314026, the canonical program `A314026.P8836136784884511113` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314026 has offset 0).

The definition of A314026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2380 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314026.P13533875052402740064

`A310370(n)+A004525(n)`
-/

namespace A314026.P13533875052402740064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310370 n + A004525 n

end

end A314026.P13533875052402740064

namespace A314026

/-- `A310370(n)+A004525(n)` -/
def P13533875052402740064.Spec : Prop :=
  ∀ n, P13533875052402740064.a n = A314026 n

end A314026

/-! ## A314026.P4961749604264029421

`A315306(n)-A075553(n)`
-/

namespace A314026.P4961749604264029421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315306 n - A075553 n

end

end A314026.P4961749604264029421

namespace A314026

/-- `A315306(n)-A075553(n)` -/
def P4961749604264029421.Spec : Prop :=
  ∀ n, P4961749604264029421.a n = A314026 n

end A314026

/-! ## A314026.P9278655345692950045

`A315447(n)-A188510(n)`
-/

namespace A314026.P9278655345692950045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315447 n - A188510 n

end

end A314026.P9278655345692950045

namespace A314026

/-- `A315447(n)-A188510(n)` -/
def P9278655345692950045.Spec : Prop :=
  ∀ n, P9278655345692950045.a n = A314026 n

end A314026

/-! ## A314026.P7381401831592761104

`A310370(n)+Δ[A054925(n)]`
-/

namespace A314026.P7381401831592761104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310370 n + (f1 (n + 1) - f1 n)

end

end A314026.P7381401831592761104

namespace A314026

/-- `A310370(n)+Δ[A054925(n)]` -/
def P7381401831592761104.Spec : Prop :=
  ∀ n, P7381401831592761104.a n = A314026 n

end A314026

/-! ## A314026.P6197618136014433558

`A008706(n)-A014017(n+2)`
-/

namespace A314026.P6197618136014433558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A014017 (n + 2)

end

end A314026.P6197618136014433558

namespace A314026

/-- `A008706(n)-A014017(n+2)` -/
def P6197618136014433558.Spec : Prop :=
  ∀ n, P6197618136014433558.a n = A314026 n

end A314026

/-! ## A314026.P11146104533863544974

`A014017(n+6)+A008706(n)`
-/

namespace A314026.P11146104533863544974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (n + 6) + A008706 n

end

end A314026.P11146104533863544974

namespace A314026

/-- `A014017(n+6)+A008706(n)` -/
def P11146104533863544974.Spec : Prop :=
  ∀ n, P11146104533863544974.a n = A314026 n

end A314026

/-! ## A314026.P15946319917574290164

`A046978(and(n, n+1))+A008706(n)`
-/

namespace A314026.P15946319917574290164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (Nat.land n (n + 1)) + A008706 n

end

end A314026.P15946319917574290164

namespace A314026

/-- `A046978(and(n, n+1))+A008706(n)` -/
def P15946319917574290164.Spec : Prop :=
  ∀ n, P15946319917574290164.a n = A314026 n

end A314026

/-! ## A314026.P8836136784884511113

`A310397(n)+A004525(A004525(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314026

/-- `A310397(n)+A004525(A004525(n))` -/
def P8836136784884511113.Spec : Prop :=
  ∀ n, P8836136784884511113.a n = A314026 n

theorem P8836136784884511113.correct : P8836136784884511113.Spec := by
  intro n
  simp only [A314026]

end A314026

/-! ## A314026.P7924139999976518029

`A046978(A022998(n)-n)+A008706(n)`
-/

namespace A314026.P7924139999976518029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A022998 n - (n : ℤ)).toNat + A008706 n

end

end A314026.P7924139999976518029

namespace A314026

/-- `A046978(A022998(n)-n)+A008706(n)` -/
def P7924139999976518029.Spec : Prop :=
  ∀ n, P7924139999976518029.a n = A314026 n

end A314026

/-! ## A314026.P13945265749234699982

`A313561(n)+A004525(n-A004525(n))`
-/

namespace A314026.P13945265749234699982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A314026.P13945265749234699982

namespace A314026

/-- `A313561(n)+A004525(n-A004525(n))` -/
def P13945265749234699982.Spec : Prop :=
  ∀ n, P13945265749234699982.a n = A314026 n

end A314026

/-! ## A314026.P16942936426186296239

`A313635(n)+A046978(n-A046978(n))`
-/

namespace A314026.P16942936426186296239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313635 n + A046978 ((n : ℤ) - A046978 n).toNat

end

end A314026.P16942936426186296239

namespace A314026

/-- `A313635(n)+A046978(n-A046978(n))` -/
def P16942936426186296239.Spec : Prop :=
  ∀ n, P16942936426186296239.a n = A314026 n

end A314026

/-! ## A314026.P2351691480865384431

`A315632(n)-A046978(n)`
-/

namespace A314026.P2351691480865384431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315632 n - A046978 n

end

end A314026.P2351691480865384431

namespace A314026

/-- `A315632(n)-A046978(n)` -/
def P2351691480865384431.Spec : Prop :=
  ∀ n, P2351691480865384431.a n = A314026 n

end A314026

/-! ## A314026.P17005474860122576159

`A310419(n)+A046978(n)`
-/

namespace A314026.P17005474860122576159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310419 n + A046978 n

end

end A314026.P17005474860122576159

namespace A314026

/-- `A310419(n)+A046978(n)` -/
def P17005474860122576159.Spec : Prop :=
  ∀ n, P17005474860122576159.a n = A314026 n

end A314026

/-! ## A314026.P5830712311392745183

`A310458(n)+A046978(A046978(n)+n)`
-/

namespace A314026.P5830712311392745183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310458 n + A046978 (A046978 n + (n : ℤ)).toNat

end

end A314026.P5830712311392745183

namespace A314026

/-- `A310458(n)+A046978(A046978(n)+n)` -/
def P5830712311392745183.Spec : Prop :=
  ∀ n, P5830712311392745183.a n = A314026 n

end A314026

/-! ## A314026.P15456542518649591532

`A008458(n)+A008574(n)-A315061(n)`
-/

namespace A314026.P15456542518649591532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315061 n)

end

end A314026.P15456542518649591532

namespace A314026

/-- `A008458(n)+A008574(n)-A315061(n)` -/
def P15456542518649591532.Spec : Prop :=
  ∀ n, P15456542518649591532.a n = A314026 n

end A314026

/-! ## A314026.P6340644153143911756

`A301710(n)-A201629(A201629(n)/2)`
-/

namespace A314026.P6340644153143911756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A201629 (SequenceMachineLib.roundAway ((A201629 n : ℚ) / 2)).toNat

end

end A314026.P6340644153143911756

namespace A314026

/-- `A301710(n)-A201629(A201629(n)/2)` -/
def P6340644153143911756.Spec : Prop :=
  ∀ n, P6340644153143911756.a n = A314026 n

end A314026

/-! ## A314026.P2515240066002095566

`A004396(A313480(n))+2*n`
-/

namespace A314026.P2515240066002095566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313480 n).toNat + (2 * n : ℤ)

end

end A314026.P2515240066002095566

namespace A314026

/-- `A004396(A313480(n))+2*n` -/
def P2515240066002095566.Spec : Prop :=
  ∀ n, P2515240066002095566.a n = A314026 n

end A314026

/-! ## A314026.P15954413307901077804

`A315704(n)-A004525(A004525(n)+n)`
-/

namespace A314026.P15954413307901077804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315704 n - A004525 (A004525 n + (n : ℤ)).toNat

end

end A314026.P15954413307901077804

namespace A314026

/-- `A315704(n)-A004525(A004525(n)+n)` -/
def P15954413307901077804.Spec : Prop :=
  ∀ n, P15954413307901077804.a n = A314026 n

end A314026

/-! ## A314026.P818224079152479166

`A315651(n)-A004525(n)`
-/

namespace A314026.P818224079152479166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315651 n - A004525 n

end

end A314026.P818224079152479166

namespace A314026

/-- `A315651(n)-A004525(n)` -/
def P818224079152479166.Spec : Prop :=
  ∀ n, P818224079152479166.a n = A314026 n

theorem P818224079152479166.correct : P818224079152479166.Spec := by
  intro n
  simp only [A314026, Nat.add_sub_cancel, A314026.P818224079152479166.a, A314026.P8836136784884511113.a, A004525, A004525.P4158271949796742323.a, A310397, A310397.P3562784380377388061.a, A315651, A315651.P9904955794810219643.a, A312943, A312943.P15149972139158582154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314026

/-! ## A314026.P1646084201157918180

`A074067(A315061(n))`
-/

namespace A314026.P1646084201157918180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315061 n).toNat

end

end A314026.P1646084201157918180

namespace A314026

/-- `A074067(A315061(n))` -/
def P1646084201157918180.Spec : Prop :=
  ∀ n, P1646084201157918180.a n = A314026 n

end A314026

/-!
# A314027: Coordination sequence Gal.5.87.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314027, the canonical program `A314027.P7798730939346477280` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314027 has offset 0).

The definition of A314027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314027.P17854039060841520796

`abs(A008592(n)-A315060(n))`
-/

namespace A314027.P17854039060841520796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315060 n|

end

end A314027.P17854039060841520796

namespace A314027

/-- `abs(A008592(n)-A315060(n))` -/
def P17854039060841520796.Spec : Prop :=
  ∀ n, P17854039060841520796.a n = A314027 n

end A314027

/-! ## A314027.P10313944948834163485

`floor(A010015(n)/A315060(n))`
-/

namespace A314027.P10313944948834163485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315060 n : ℚ)⌋

end

end A314027.P10313944948834163485

namespace A314027

/-- `floor(A010015(n)/A315060(n))` -/
def P10313944948834163485.Spec : Prop :=
  ∀ n, P10313944948834163485.a n = A314027 n

end A314027

/-! ## A314027.P7798730939346477280

`A313506(n)+Δ[A011858(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314027

/-- `A313506(n)+Δ[A011858(n)]` -/
def P7798730939346477280.Spec : Prop :=
  ∀ n, P7798730939346477280.a n = A314027 n

theorem P7798730939346477280.correct : P7798730939346477280.Spec := by
  intro n
  simp only [A314027]

end A314027

/-! ## A314027.P16842196103008107093

`2*A008706(n)-A315060(n)`
-/

namespace A314027.P16842196103008107093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315060 n

end

end A314027.P16842196103008107093

namespace A314027

/-- `2*A008706(n)-A315060(n)` -/
def P16842196103008107093.Spec : Prop :=
  ∀ n, P16842196103008107093.a n = A314027 n

end A314027

/-! ## A314027.P11857159011756009337

`A312892(n)+A057354(2*n+1)`
-/

namespace A314027.P11857159011756009337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312892 n + A057354 (2 * n + 1)

end

end A314027.P11857159011756009337

namespace A314027

/-- `A312892(n)+A057354(2*n+1)` -/
def P11857159011756009337.Spec : Prop :=
  ∀ n, P11857159011756009337.a n = A314027 n

end A314027

/-! ## A314027.P10502587034071266635

`A008458(n)+A008574(n)-A315060(n)`
-/

namespace A314027.P10502587034071266635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315060 n)

end

end A314027.P10502587034071266635

namespace A314027

/-- `A008458(n)+A008574(n)-A315060(n)` -/
def P10502587034071266635.Spec : Prop :=
  ∀ n, P10502587034071266635.a n = A314027 n

end A314027

/-! ## A314027.P3362586906121492228

`A330025(n-A330025(n))+A313589(n)`
-/

namespace A314027.P3362586906121492228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A313589 n

end

end A314027.P3362586906121492228

namespace A314027

/-- `A330025(n-A330025(n))+A313589(n)` -/
def P3362586906121492228.Spec : Prop :=
  ∀ n, P3362586906121492228.a n = A314027 n

end A314027

/-! ## A314027.P3244885309532358212

`A314111(n)-A008676(A016777(n))`
-/

namespace A314027.P3244885309532358212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314111 n - A008676 (A016777 n).toNat

end

end A314027.P3244885309532358212

namespace A314027

/-- `A314111(n)-A008676(A016777(n))` -/
def P3244885309532358212.Spec : Prop :=
  ∀ n, P3244885309532358212.a n = A314027 n

end A314027

/-! ## A314027.P14263899037392561922

`A008574(n)+A315749(n)-A250120(n)`
-/

namespace A314027.P14263899037392561922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A315749 n - A250120 n)

end

end A314027.P14263899037392561922

namespace A314027

/-- `A008574(n)+A315749(n)-A250120(n)` -/
def P14263899037392561922.Spec : Prop :=
  ∀ n, P14263899037392561922.a n = A314027 n

end A314027

/-! ## A314027.P16869402162657078042

`A074067(A315060(n))`
-/

namespace A314027.P16869402162657078042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315060 n).toNat

end

end A314027.P16869402162657078042

namespace A314027

/-- `A074067(A315060(n))` -/
def P16869402162657078042.Spec : Prop :=
  ∀ n, P16869402162657078042.a n = A314027 n

end A314027

/-! ## A314027.P13938952670213893208

`A004525(A314093(n)+A008587(n))`
-/

namespace A314027.P13938952670213893208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314093 n + A008587 n).toNat

end

end A314027.P13938952670213893208

namespace A314027

/-- `A004525(A314093(n)+A008587(n))` -/
def P13938952670213893208.Spec : Prop :=
  ∀ n, P13938952670213893208.a n = A314027 n

end A314027

/-! ## A314027.P17986930618421040612

`A004525(A314093(n)+A008706(n))`
-/

namespace A314027.P17986930618421040612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314093 n + A008706 n).toNat

end

end A314027.P17986930618421040612

namespace A314027

/-- `A004525(A314093(n)+A008706(n))` -/
def P17986930618421040612.Spec : Prop :=
  ∀ n, P17986930618421040612.a n = A314027 n

end A314027

/-! ## A314027.P4880179690255913535

`A004525(A315412(n)+A008587(n))`
-/

namespace A314027.P4880179690255913535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315412 n + A008587 n).toNat

end

end A314027.P4880179690255913535

namespace A314027

/-- `A004525(A315412(n)+A008587(n))` -/
def P4880179690255913535.Spec : Prop :=
  ∀ n, P4880179690255913535.a n = A314027 n

end A314027

/-! ## A314027.P2044137306981795990

`A004525(A315412(n)+A008706(n))`
-/

namespace A314027.P2044137306981795990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315412 n + A008706 n).toNat

end

end A314027.P2044137306981795990

namespace A314027

/-- `A004525(A315412(n)+A008706(n))` -/
def P2044137306981795990.Spec : Prop :=
  ∀ n, P2044137306981795990.a n = A314027 n

end A314027

/-!
# A314028: Coordination sequence Gal.6.198.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314028, the canonical program `A314028.P2289077075418662032` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314028 has offset 0).

The definition of A314028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314028.P18392104518939268434

`abs(A008592(n)-A315058(n))`
-/

namespace A314028.P18392104518939268434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315058 n|

end

end A314028.P18392104518939268434

namespace A314028

/-- `abs(A008592(n)-A315058(n))` -/
def P18392104518939268434.Spec : Prop :=
  ∀ n, P18392104518939268434.a n = A314028 n

end A314028

/-! ## A314028.P8193028119015557536

`floor(A010015(n)/A315058(n))`
-/

namespace A314028.P8193028119015557536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315058 n : ℚ)⌋

end

end A314028.P8193028119015557536

namespace A314028

/-- `floor(A010015(n)/A315058(n))` -/
def P8193028119015557536.Spec : Prop :=
  ∀ n, P8193028119015557536.a n = A314028 n

end A314028

/-! ## A314028.P14382991719139772800

`A313540(n)+A002264(n+1)`
-/

namespace A314028.P14382991719139772800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + A002264 (n + 1)

end

end A314028.P14382991719139772800

namespace A314028

/-- `A313540(n)+A002264(n+1)` -/
def P14382991719139772800.Spec : Prop :=
  ∀ n, P14382991719139772800.a n = A314028 n

end A314028

/-! ## A314028.P18218385663639901110

`A313540(n)+n-A004396(n)`
-/

namespace A314028.P18218385663639901110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + ((n : ℤ) - A004396 n)

end

end A314028.P18218385663639901110

namespace A314028

/-- `A313540(n)+n-A004396(n)` -/
def P18218385663639901110.Spec : Prop :=
  ∀ n, P18218385663639901110.a n = A314028 n

end A314028

/-! ## A314028.P2289077075418662032

`A310393(n)+A004396(A004525(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314028

/-- `A310393(n)+A004396(A004525(n))` -/
def P2289077075418662032.Spec : Prop :=
  ∀ n, P2289077075418662032.a n = A314028 n

theorem P2289077075418662032.correct : P2289077075418662032.Spec := by
  intro n
  simp only [A314028]

end A314028

/-! ## A314028.P16358788968028437719

`A313569(n)+A004525(n-A004396(n))`
-/

namespace A314028.P16358788968028437719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A314028.P16358788968028437719

namespace A314028

/-- `A313569(n)+A004525(n-A004396(n))` -/
def P16358788968028437719.Spec : Prop :=
  ∀ n, P16358788968028437719.a n = A314028 n

end A314028

/-! ## A314028.P3492806059851018940

`A008486(n)+A313540(n)-A008576(n)`
-/

namespace A314028.P3492806059851018940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313540 n - A008576 n)

end

end A314028.P3492806059851018940

namespace A314028

/-- `A008486(n)+A313540(n)-A008576(n)` -/
def P3492806059851018940.Spec : Prop :=
  ∀ n, P3492806059851018940.a n = A314028 n

end A314028

/-! ## A314028.P6242717228731824762

`A008458(n)+A008574(n)-A315058(n)`
-/

namespace A314028.P6242717228731824762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315058 n)

end

end A314028.P6242717228731824762

namespace A314028

/-- `A008458(n)+A008574(n)-A315058(n)` -/
def P6242717228731824762.Spec : Prop :=
  ∀ n, P6242717228731824762.a n = A314028 n

end A314028

/-! ## A314028.P16680964848126586429

`A004525(n)+A314107(n)-A004396(n)`
-/

namespace A314028.P16680964848126586429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314107 n - A004396 n)

end

end A314028.P16680964848126586429

namespace A314028

/-- `A004525(n)+A314107(n)-A004396(n)` -/
def P16680964848126586429.Spec : Prop :=
  ∀ n, P16680964848126586429.a n = A314028 n

end A314028

/-! ## A314028.P16937947275235752922

`A004396(A004525(n))+A314048(n)-A004525(n)`
-/

namespace A314028.P16937947275235752922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A314048 n - A004525 n)

end

end A314028.P16937947275235752922

namespace A314028

/-- `A004396(A004525(n))+A314048(n)-A004525(n)` -/
def P16937947275235752922.Spec : Prop :=
  ∀ n, P16937947275235752922.a n = A314028 n

theorem P16937947275235752922.correct : P16937947275235752922.Spec := by
  intro n
  simp only [A314028, Nat.add_sub_cancel, A314028.P16937947275235752922.a, A314028.P2289077075418662032.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A310393, A310393.P12744869705430097846.a, A314048, A314048.P6753169348479549005.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314028

/-! ## A314028.P10908222721322881249

`A004396(A004525(n))+A314142(n)-A004396(n)`
-/

namespace A314028.P10908222721322881249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A314142 n - A004396 n)

end

end A314028.P10908222721322881249

namespace A314028

/-- `A004396(A004525(n))+A314142(n)-A004396(n)` -/
def P10908222721322881249.Spec : Prop :=
  ∀ n, P10908222721322881249.a n = A314028 n

theorem P10908222721322881249.correct : P10908222721322881249.Spec := by
  intro n
  simp only [A314028, Nat.add_sub_cancel, A314028.P10908222721322881249.a, A314028.P2289077075418662032.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A310393, A310393.P12744869705430097846.a, A314142, A314142.P8377752906736418581.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314028

/-! ## A314028.P14689243508316500147

`A004396(A310373(n))+2*n`
-/

namespace A314028.P14689243508316500147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310373 n).toNat + (2 * n : ℤ)

end

end A314028.P14689243508316500147

namespace A314028

/-- `A004396(A310373(n))+2*n` -/
def P14689243508316500147.Spec : Prop :=
  ∀ n, P14689243508316500147.a n = A314028 n

end A314028

/-! ## A314028.P7883857230384996843

`A004396(A313485(n))+2*n`
-/

namespace A314028.P7883857230384996843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313485 n).toNat + (2 * n : ℤ)

end

end A314028.P7883857230384996843

namespace A314028

/-- `A004396(A313485(n))+2*n` -/
def P7883857230384996843.Spec : Prop :=
  ∀ n, P7883857230384996843.a n = A314028 n

end A314028

/-! ## A314028.P12377073110964629985

`A315700(n)-round(2*n/3)`
-/

namespace A314028.P12377073110964629985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A314028.P12377073110964629985

namespace A314028

/-- `A315700(n)-round(2*n/3)` -/
def P12377073110964629985.Spec : Prop :=
  ∀ n, P12377073110964629985.a n = A314028 n

end A314028

/-! ## A314028.P15095770935757297984

`A074067(A315058(n))`
-/

namespace A314028.P15095770935757297984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315058 n).toNat

end

end A314028.P15095770935757297984

namespace A314028

/-- `A074067(A315058(n))` -/
def P15095770935757297984.Spec : Prop :=
  ∀ n, P15095770935757297984.a n = A314028 n

end A314028

/-! ## A314028.P17975274963710446395

`A004396(2*n)+A004396(A315649(n))`
-/

namespace A314028.P17975274963710446395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A315649 n).toNat

end

end A314028.P17975274963710446395

namespace A314028

/-- `A004396(2*n)+A004396(A315649(n))` -/
def P17975274963710446395.Spec : Prop :=
  ∀ n, P17975274963710446395.a n = A314028 n

end A314028

/-! ## A314028.P16285227362162056325

`A004396(A315649(n)+2*n)`
-/

namespace A314028.P16285227362162056325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315649 n + (2 * n : ℤ)).toNat

end

end A314028.P16285227362162056325

namespace A314028

/-- `A004396(A315649(n)+2*n)` -/
def P16285227362162056325.Spec : Prop :=
  ∀ n, P16285227362162056325.a n = A314028 n

end A314028

/-! ## A314028.P10952640768457819091

`A004396(A315649(n)+n+n)`
-/

namespace A314028.P10952640768457819091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315649 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314028.P10952640768457819091

namespace A314028

/-- `A004396(A315649(n)+n+n)` -/
def P10952640768457819091.Spec : Prop :=
  ∀ n, P10952640768457819091.a n = A314028 n

end A314028

/-! ## A314028.P958578415055131522

`A004525(2*A310373(n)+n)`
-/

namespace A314028.P958578415055131522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A310373 n + (n : ℤ)).toNat

end

end A314028.P958578415055131522

namespace A314028

/-- `A004525(2*A310373(n)+n)` -/
def P958578415055131522.Spec : Prop :=
  ∀ n, P958578415055131522.a n = A314028 n

end A314028

/-! ## A314028.P16763946811204290854

`A004525(2*A313485(n)+n)`
-/

namespace A314028.P16763946811204290854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A313485 n + (n : ℤ)).toNat

end

end A314028.P16763946811204290854

namespace A314028

/-- `A004525(2*A313485(n)+n)` -/
def P16763946811204290854.Spec : Prop :=
  ∀ n, P16763946811204290854.a n = A314028 n

end A314028

/-!
# A314029: Coordination sequence Gal.6.328.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314029, the canonical program `A314029.P11928005688573589694` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314029 has offset 0).

The definition of A314029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314029.P4444661703157716892

`abs(A008592(n)-A315056(n))`
-/

namespace A314029.P4444661703157716892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315056 n|

end

end A314029.P4444661703157716892

namespace A314029

/-- `abs(A008592(n)-A315056(n))` -/
def P4444661703157716892.Spec : Prop :=
  ∀ n, P4444661703157716892.a n = A314029 n

end A314029

/-! ## A314029.P16050417644636393864

`2*A008706(n)-A315056(n)`
-/

namespace A314029.P16050417644636393864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315056 n

end

end A314029.P16050417644636393864

namespace A314029

/-- `2*A008706(n)-A315056(n)` -/
def P16050417644636393864.Spec : Prop :=
  ∀ n, P16050417644636393864.a n = A314029 n

end A314029

/-! ## A314029.P11706976799759406935

`A008458(n)+A008574(n)-A315056(n)`
-/

namespace A314029.P11706976799759406935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315056 n)

end

end A314029.P11706976799759406935

namespace A314029

/-- `A008458(n)+A008574(n)-A315056(n)` -/
def P11706976799759406935.Spec : Prop :=
  ∀ n, P11706976799759406935.a n = A314029 n

end A314029

/-! ## A314029.P11928005688573589694

`abs(8*n-A004396(A312472(n)))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314029

/-- `abs(8*n-A004396(A312472(n)))` -/
def P11928005688573589694.Spec : Prop :=
  ∀ n, P11928005688573589694.a n = A314029 n

theorem P11928005688573589694.correct : P11928005688573589694.Spec := by
  intro n
  simp only [A314029]

end A314029

/-! ## A314029.P1216930091081831636

`A005843(A008706(n))-A315056(n)`
-/

namespace A314029.P1216930091081831636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315056 n

end

end A314029.P1216930091081831636

namespace A314029

/-- `A005843(A008706(n))-A315056(n)` -/
def P1216930091081831636.Spec : Prop :=
  ∀ n, P1216930091081831636.a n = A314029 n

end A314029

/-! ## A314029.P15865343769582254307

`A004396(A315655(n)+2*n)`
-/

namespace A314029.P15865343769582254307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315655 n + (2 * n : ℤ)).toNat

end

end A314029.P15865343769582254307

namespace A314029

/-- `A004396(A315655(n)+2*n)` -/
def P15865343769582254307.Spec : Prop :=
  ∀ n, P15865343769582254307.a n = A314029 n

end A314029

/-! ## A314029.P4026319623911029267

`A004396(A315692(n)+2*n)`
-/

namespace A314029.P4026319623911029267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315692 n + (2 * n : ℤ)).toNat

end

end A314029.P4026319623911029267

namespace A314029

/-- `A004396(A315692(n)+2*n)` -/
def P4026319623911029267.Spec : Prop :=
  ∀ n, P4026319623911029267.a n = A314029 n

end A314029

/-! ## A314029.P9139123109807213339

`A274616(A315655(n)+2*n)`
-/

namespace A314029.P9139123109807213339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A315655 n + (2 * n : ℤ)).toNat

end

end A314029.P9139123109807213339

namespace A314029

/-- `A274616(A315655(n)+2*n)` -/
def P9139123109807213339.Spec : Prop :=
  ∀ n, P9139123109807213339.a n = A314029 n

end A314029

/-! ## A314029.P15756028673009632268

`A004396(A315655(n)+n+n)`
-/

namespace A314029.P15756028673009632268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315655 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314029.P15756028673009632268

namespace A314029

/-- `A004396(A315655(n)+n+n)` -/
def P15756028673009632268.Spec : Prop :=
  ∀ n, P15756028673009632268.a n = A314029 n

end A314029

/-! ## A314029.P10450209427943253949

`A004396(A315692(n)+n+n)`
-/

namespace A314029.P10450209427943253949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315692 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314029.P10450209427943253949

namespace A314029

/-- `A004396(A315692(n)+n+n)` -/
def P10450209427943253949.Spec : Prop :=
  ∀ n, P10450209427943253949.a n = A314029 n

end A314029

/-! ## A314029.P2353654069382358906

`A274616(A315655(n)+n+n)`
-/

namespace A314029.P2353654069382358906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A315655 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314029.P2353654069382358906

namespace A314029

/-- `A274616(A315655(n)+n+n)` -/
def P2353654069382358906.Spec : Prop :=
  ∀ n, P2353654069382358906.a n = A314029 n

end A314029

/-! ## A314029.P7943469077657624516

`A314885(2*n)-4*n`
-/

namespace A314029.P7943469077657624516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314885 (2 * n) - (4 * n : ℤ)

end

end A314029.P7943469077657624516

namespace A314029

/-- `A314885(2*n)-4*n` -/
def P7943469077657624516.Spec : Prop :=
  ∀ n, P7943469077657624516.a n = A314029 n

end A314029

/-! ## A314029.P17601850537618260690

`2*A008574(2*n)-A314133(2*n)`
-/

namespace A314029.P17601850537618260690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314133 (2 * n)

end

end A314029.P17601850537618260690

namespace A314029

/-- `2*A008574(2*n)-A314133(2*n)` -/
def P17601850537618260690.Spec : Prop :=
  ∀ n, P17601850537618260690.a n = A314029 n

end A314029

/-! ## A314029.P2290007213072927686

`A180004(2*A313543(n))-A313543(n)`
-/

namespace A314029.P2290007213072927686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (2 * A313543 n).toNat - A313543 n

end

end A314029.P2290007213072927686

namespace A314029

/-- `A180004(2*A313543(n))-A313543(n)` -/
def P2290007213072927686.Spec : Prop :=
  ∀ n, P2290007213072927686.a n = A314029 n

end A314029

/-! ## A314029.P12588095664154940601

`A004525(A313869(2*n))`
-/

namespace A314029.P12588095664154940601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313869 (2 * n)).toNat

end

end A314029.P12588095664154940601

namespace A314029

/-- `A004525(A313869(2*n))` -/
def P12588095664154940601.Spec : Prop :=
  ∀ n, P12588095664154940601.a n = A314029 n

end A314029

/-! ## A314029.P4241643205954571110

`A004525(A314106(2*n))`
-/

namespace A314029.P4241643205954571110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314106 (2 * n)).toNat

end

end A314029.P4241643205954571110

namespace A314029

/-- `A004525(A314106(2*n))` -/
def P4241643205954571110.Spec : Prop :=
  ∀ n, P4241643205954571110.a n = A314029 n

end A314029

/-! ## A314029.P8644003630539417363

`A004525(A315316(2*n))`
-/

namespace A314029.P8644003630539417363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315316 (2 * n)).toNat

end

end A314029.P8644003630539417363

namespace A314029

/-- `A004525(A315316(2*n))` -/
def P8644003630539417363.Spec : Prop :=
  ∀ n, P8644003630539417363.a n = A314029 n

end A314029

/-! ## A314029.P15611872552734836966

`A004525(A315326(2*n))`
-/

namespace A314029.P15611872552734836966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315326 (2 * n)).toNat

end

end A314029.P15611872552734836966

namespace A314029

/-- `A004525(A315326(2*n))` -/
def P15611872552734836966.Spec : Prop :=
  ∀ n, P15611872552734836966.a n = A314029 n

end A314029

/-! ## A314029.P6737668940672516559

`A004525(A315464(2*n))`
-/

namespace A314029.P6737668940672516559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315464 (2 * n)).toNat

end

end A314029.P6737668940672516559

namespace A314029

/-- `A004525(A315464(2*n))` -/
def P6737668940672516559.Spec : Prop :=
  ∀ n, P6737668940672516559.a n = A314029 n

end A314029

/-! ## A314029.P14130047524179197133

`A004525(A315466(2*n))`
-/

namespace A314029.P14130047524179197133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315466 (2 * n)).toNat

end

end A314029.P14130047524179197133

namespace A314029

/-- `A004525(A315466(2*n))` -/
def P14130047524179197133.Spec : Prop :=
  ∀ n, P14130047524179197133.a n = A314029 n

end A314029

/-!
# A314030: Coordination sequence Gal.4.104.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314030, there is no canonical definition to state claims against.
-/

/-! ## A314030.P3583304591138987275

`or(A279048(A148527(n)), A313439(n))`
-/

namespace A314030.P3583304591138987275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279048 (A148527 n).toNat) (A313439 n)

end

end A314030.P3583304591138987275

/-! ## A314030.P6310292428327025695

`floor(42*n/8)-A324026((n+1)²)+2`
-/

namespace A314030.P6310292428327025695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊42 * ((n : ℚ) / 8)⌋ - A324026 ((n + 1) ^ 2) + 2

end

end A314030.P6310292428327025695

/-! ## A314030.P1294426521801334602

`∑[A108728(A042948(5*n+1))]`
-/

namespace A314030.P1294426521801334602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108728 (A042948 (5 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314030.P1294426521801334602

/-! ## A314030.P10097996459949753892

`A313411(n)+A001221(A256208(n))`
-/

namespace A314030.P10097996459949753892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313411 n + A001221 (A256208 n).toNat

end

end A314030.P10097996459949753892

/-! ## A314030.P5719226259211572931

`A371571(A318727(3*n+5))+A016813(n)`
-/

namespace A314030.P5719226259211572931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371571 (A318727 (3 * n + 5)).toNat + A016813 n

end

end A314030.P5719226259211572931

/-!
# A314031: Coordination sequence Gal.6.340.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314031, the canonical program `A314031.P9700743857444675486` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314031 has offset 0).

The definition of A314031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314031.P693655141171900974

`A310373(n)+A004525(n)`
-/

namespace A314031.P693655141171900974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310373 n + A004525 n

end

end A314031.P693655141171900974

namespace A314031

/-- `A310373(n)+A004525(n)` -/
def P693655141171900974.Spec : Prop :=
  ∀ n, P693655141171900974.a n = A314031 n

theorem P693655141171900974.correct : P693655141171900974.Spec := by
  intro n
  simp only [A314031, Nat.add_sub_cancel, A314031.P693655141171900974.a, A314031.P9700743857444675486.a, A002264, A002264.P5647656940077635922.a, A004525, A004525.P4158271949796742323.a, A310373, A310373.P7906756891214118992.a, A313556, A313556.P12127503874440300930.a, A312890, A312890.P5869710039852604831.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314031

/-! ## A314031.P6269627485076884248

`A315271(n)-A102283(n)`
-/

namespace A314031.P6269627485076884248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315271 n - A102283 n

end

end A314031.P6269627485076884248

namespace A314031

/-- `A315271(n)-A102283(n)` -/
def P6269627485076884248.Spec : Prop :=
  ∀ n, P6269627485076884248.a n = A314031 n

end A314031

/-! ## A314031.P14391349693210720776

`A315413(n)-A134667(n)`
-/

namespace A314031.P14391349693210720776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315413 n - A134667 n

end

end A314031.P14391349693210720776

namespace A314031

/-- `A315413(n)-A134667(n)` -/
def P14391349693210720776.Spec : Prop :=
  ∀ n, P14391349693210720776.a n = A314031 n

end A314031

/-! ## A314031.P13132324944970729013

`abs(A008592(n)-A315053(n))`
-/

namespace A314031.P13132324944970729013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315053 n|

end

end A314031.P13132324944970729013

namespace A314031

/-- `abs(A008592(n)-A315053(n))` -/
def P13132324944970729013.Spec : Prop :=
  ∀ n, P13132324944970729013.a n = A314031 n

end A314031

/-! ## A314031.P13888396835641020238

`floor(A010015(n)/A315053(n))`
-/

namespace A314031.P13888396835641020238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315053 n : ℚ)⌋

end

end A314031.P13888396835641020238

namespace A314031

/-- `floor(A010015(n)/A315053(n))` -/
def P13888396835641020238.Spec : Prop :=
  ∀ n, P13888396835641020238.a n = A314031 n

end A314031

/-! ## A314031.P9700743857444675486

`A313556(n)+A002264(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314031

/-- `A313556(n)+A002264(n+1)` -/
def P9700743857444675486.Spec : Prop :=
  ∀ n, P9700743857444675486.a n = A314031 n

theorem P9700743857444675486.correct : P9700743857444675486.Spec := by
  intro n
  simp only [A314031]

end A314031

/-! ## A314031.P16304581935371199143

`A313556(n)+n-A004396(n)`
-/

namespace A314031.P16304581935371199143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + ((n : ℤ) - A004396 n)

end

end A314031.P16304581935371199143

namespace A314031

/-- `A313556(n)+n-A004396(n)` -/
def P16304581935371199143.Spec : Prop :=
  ∀ n, P16304581935371199143.a n = A314031 n

end A314031

/-! ## A314031.P15204868557174656037

`A008486(n)+A313556(n)-A008576(n)`
-/

namespace A314031.P15204868557174656037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313556 n - A008576 n)

end

end A314031.P15204868557174656037

namespace A314031

/-- `A008486(n)+A313556(n)-A008576(n)` -/
def P15204868557174656037.Spec : Prop :=
  ∀ n, P15204868557174656037.a n = A314031 n

end A314031

/-! ## A314031.P17397125099190348356

`A008458(n)+A008574(n)-A315053(n)`
-/

namespace A314031.P17397125099190348356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315053 n)

end

end A314031.P17397125099190348356

namespace A314031

/-- `A008458(n)+A008574(n)-A315053(n)` -/
def P17397125099190348356.Spec : Prop :=
  ∀ n, P17397125099190348356.a n = A314031 n

end A314031

/-! ## A314031.P4829386449929224204

`A313778(n)+A128834(n-A128834(n))`
-/

namespace A314031.P4829386449929224204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n + A128834 ((n : ℤ) - A128834 n).toNat

end

end A314031.P4829386449929224204

namespace A314031

/-- `A313778(n)+A128834(n-A128834(n))` -/
def P4829386449929224204.Spec : Prop :=
  ∀ n, P4829386449929224204.a n = A314031 n

end A314031

/-! ## A314031.P9407689217941766482

`A315413(n)-A128834(A128834(n)+n)`
-/

namespace A314031.P9407689217941766482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315413 n - A128834 (A128834 n + (n : ℤ)).toNat

end

end A314031.P9407689217941766482

namespace A314031

/-- `A315413(n)-A128834(A128834(n)+n)` -/
def P9407689217941766482.Spec : Prop :=
  ∀ n, P9407689217941766482.a n = A314031 n

end A314031

/-! ## A314031.P14499542940568565612

`A315703(n)-A004396(n)`
-/

namespace A314031.P14499542940568565612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315703 n - A004396 n

end

end A314031.P14499542940568565612

namespace A314031

/-- `A315703(n)-A004396(n)` -/
def P14499542940568565612.Spec : Prop :=
  ∀ n, P14499542940568565612.a n = A314031 n

end A314031

/-! ## A314031.P15073036169703654833

`A315703(n)-A002264(2*n+1)`
-/

namespace A314031.P15073036169703654833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315703 n - A002264 (2 * n + 1)

end

end A314031.P15073036169703654833

namespace A314031

/-- `A315703(n)-A002264(2*n+1)` -/
def P15073036169703654833.Spec : Prop :=
  ∀ n, P15073036169703654833.a n = A314031 n

end A314031

/-! ## A314031.P13814036605193678257

`A074067(A315053(n))`
-/

namespace A314031.P13814036605193678257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315053 n).toNat

end

end A314031.P13814036605193678257

namespace A314031

/-- `A074067(A315053(n))` -/
def P13814036605193678257.Spec : Prop :=
  ∀ n, P13814036605193678257.a n = A314031 n

end A314031

/-! ## A314031.P11885625216504626609

`A004396(2*n)+A004396(A315697(n))`
-/

namespace A314031.P11885625216504626609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A315697 n).toNat

end

end A314031.P11885625216504626609

namespace A314031

/-- `A004396(2*n)+A004396(A315697(n))` -/
def P11885625216504626609.Spec : Prop :=
  ∀ n, P11885625216504626609.a n = A314031 n

end A314031

/-!
# A314032: Coordination sequence Gal.6.324.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314032, the canonical program `A314032.P4483602225519338393` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314032 has offset 0).

The definition of A314032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314032.P1460002412085588285

`abs(A008592(n)-A315052(n))`
-/

namespace A314032.P1460002412085588285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315052 n|

end

end A314032.P1460002412085588285

namespace A314032

/-- `abs(A008592(n)-A315052(n))` -/
def P1460002412085588285.Spec : Prop :=
  ∀ n, P1460002412085588285.a n = A314032 n

end A314032

/-! ## A314032.P6599617352302686602

`2*A008706(n)-A315052(n)`
-/

namespace A314032.P6599617352302686602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315052 n

end

end A314032.P6599617352302686602

namespace A314032

/-- `2*A008706(n)-A315052(n)` -/
def P6599617352302686602.Spec : Prop :=
  ∀ n, P6599617352302686602.a n = A314032 n

end A314032

/-! ## A314032.P8772436572736764381

`A008458(n)+A008574(n)-A315052(n)`
-/

namespace A314032.P8772436572736764381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315052 n)

end

end A314032.P8772436572736764381

namespace A314032

/-- `A008458(n)+A008574(n)-A315052(n)` -/
def P8772436572736764381.Spec : Prop :=
  ∀ n, P8772436572736764381.a n = A314032 n

end A314032

/-! ## A314032.P12837984094505650619

`∑{d}[A008592(n)-A315052(n), A000010(#)]`
-/

namespace A314032.P12837984094505650619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A314032.P12837984094505650619

namespace A314032

/-- `∑{d}[A008592(n)-A315052(n), A000010(#)]` -/
def P12837984094505650619.Spec : Prop :=
  ∀ n, P12837984094505650619.a n = A314032 n

end A314032

/-! ## A314032.P4483602225519338393

`abs(A008592(n)-(A315329(n)+A312507(n))/2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A314032

/-- `abs(A008592(n)-(A315329(n)+A312507(n))/2)` -/
def P4483602225519338393.Spec : Prop :=
  ∀ n, P4483602225519338393.a n = (A314032 n : ℚ)

end A314032

/-! ## A314032.P11492307342417116899

`(A315650(n)+A310378(n))/2`
-/

namespace A314032.P11492307342417116899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315650 n + A310378 n : ℚ) / 2

end

end A314032.P11492307342417116899

namespace A314032

/-- `(A315650(n)+A310378(n))/2` -/
def P11492307342417116899.Spec : Prop :=
  ∀ n, P11492307342417116899.a n = (A314032 n : ℚ)

end A314032

/-! ## A314032.P14534686181346317148

`A005843(A008706(n))-A315052(n)`
-/

namespace A314032.P14534686181346317148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315052 n

end

end A314032.P14534686181346317148

namespace A314032

/-- `A005843(A008706(n))-A315052(n)` -/
def P14534686181346317148.Spec : Prop :=
  ∀ n, P14534686181346317148.a n = A314032 n

end A314032

/-! ## A314032.P4134870250894445624

`A000007(a(n-1)+2)+A008592(n)-A315052(n)` with `a(0)=1`
-/

namespace A314032.P4134870250894445624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000007 (a (n - 1) + 2).toNat + (A008592 n - A315052 n)

end

end A314032.P4134870250894445624

namespace A314032

/-- `A000007(a(n-1)+2)+A008592(n)-A315052(n)` -/
def P4134870250894445624.Spec : Prop :=
  ∀ n, P4134870250894445624.a n = A314032 n

end A314032

/-! ## A314032.P12014538739991268634

`A065502(A008458(n))-A315052(n)`
-/

namespace A314032.P12014538739991268634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315052 n

end

end A314032.P12014538739991268634

namespace A314032

/-- `A065502(A008458(n))-A315052(n)` -/
def P12014538739991268634.Spec : Prop :=
  ∀ n, P12014538739991268634.a n = A314032 n

end A314032

/-! ## A314032.P3818908786055257038

`2*A008574(2*n)-A315478(2*n)`
-/

namespace A314032.P3818908786055257038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315478 (2 * n)

end

end A314032.P3818908786055257038

namespace A314032

/-- `2*A008574(2*n)-A315478(2*n)` -/
def P3818908786055257038.Spec : Prop :=
  ∀ n, P3818908786055257038.a n = A314032 n

end A314032

/-! ## A314032.P17694049404054797690

`A180004(2*A313560(n))-A313560(n)`
-/

namespace A314032.P17694049404054797690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (2 * A313560 n).toNat - A313560 n

end

end A314032.P17694049404054797690

namespace A314032

/-- `A180004(2*A313560(n))-A313560(n)` -/
def P17694049404054797690.Spec : Prop :=
  ∀ n, P17694049404054797690.a n = A314032 n

end A314032

/-! ## A314032.P7257555471142828718

`A313089(2*n)-4*n`
-/

namespace A314032.P7257555471142828718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313089 (2 * n) - (4 * n : ℤ)

end

end A314032.P7257555471142828718

namespace A314032

/-- `A313089(2*n)-4*n` -/
def P7257555471142828718.Spec : Prop :=
  ∀ n, P7257555471142828718.a n = A314032 n

end A314032

/-! ## A314032.P5609988489068025065

`ceil(A310517(2*n)/2)`
-/

namespace A314032.P5609988489068025065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A310517 (2 * n) : ℚ) / 2⌉

end

end A314032.P5609988489068025065

namespace A314032

/-- `ceil(A310517(2*n)/2)` -/
def P5609988489068025065.Spec : Prop :=
  ∀ n, P5609988489068025065.a n = A314032 n

end A314032

/-! ## A314032.P5378837008149150841

`A004525(A310517(2*n))`
-/

namespace A314032.P5378837008149150841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310517 (2 * n)).toNat

end

end A314032.P5378837008149150841

namespace A314032

/-- `A004525(A310517(2*n))` -/
def P5378837008149150841.Spec : Prop :=
  ∀ n, P5378837008149150841.a n = A314032 n

end A314032

/-! ## A314032.P15663457338655386285

`A004526(A310517(2*n)+1)`
-/

namespace A314032.P15663457338655386285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310517 (2 * n) + 1).toNat

end

end A314032.P15663457338655386285

namespace A314032

/-- `A004526(A310517(2*n)+1)` -/
def P15663457338655386285.Spec : Prop :=
  ∀ n, P15663457338655386285.a n = A314032 n

end A314032

/-! ## A314032.P8754649544712205292

`A008619(A310517(2*n)-1)`
-/

namespace A314032.P8754649544712205292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A310517 (2 * n) - 1).toNat

end

end A314032.P8754649544712205292

namespace A314032

/-- `A008619(A310517(2*n)-1)` -/
def P8754649544712205292.Spec : Prop :=
  ∀ n, P8754649544712205292.a n = A314032 n

end A314032

/-! ## A314032.P994020896680588627

`A310517(2*n)/(4*n+1-A004273(2*n))`
-/

namespace A314032.P994020896680588627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310517 (2 * n) : ℚ) / ((4 * n + 1 : ℤ) - A004273 (2 * n) : ℚ)

end

end A314032.P994020896680588627

namespace A314032

/-- `A310517(2*n)/(4*n+1-A004273(2*n))` -/
def P994020896680588627.Spec : Prop :=
  ∀ n, P994020896680588627.a n = (A314032 n : ℚ)

end A314032

/-! ## A314032.P4132106347813044408

`A310517(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A314032.P4132106347813044408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310517 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A314032.P4132106347813044408

namespace A314032

/-- `A310517(2*n)/(4*n+2-A004277(2*n))` -/
def P4132106347813044408.Spec : Prop :=
  ∀ n, P4132106347813044408.a n = (A314032 n : ℚ)

end A314032

/-! ## A314032.P4219994266768151569

`A008458(A008574(n))-A313689(A008574(n))`
-/

namespace A314032.P4219994266768151569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008574 n).toNat - A313689 (A008574 n).toNat

end

end A314032.P4219994266768151569

namespace A314032

/-- `A008458(A008574(n))-A313689(A008574(n))` -/
def P4219994266768151569.Spec : Prop :=
  ∀ n, P4219994266768151569.a n = A314032 n

end A314032

/-!
# A314033: Coordination sequence Gal.6.494.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314033, there is no canonical definition to state claims against.
-/

/-! ## A314033.P781234256777928655

`A028310(A313251(2*n)-A313248(n))`
-/

namespace A314033.P781234256777928655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A313251 (2 * n) - A313248 n).toNat

end

end A314033.P781234256777928655

/-! ## A314033.P6829958941647708420

`A372466(A355384(n))+A005117(3*n+1)`
-/

namespace A314033.P6829958941647708420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372466 (A355384 n).toNat + A005117 (3 * n + 1)

end

end A314033.P6829958941647708420

/-! ## A314033.P8071142969126745924

`A250120(n)+A112606(A320553(n+3))`
-/

namespace A314033.P8071142969126745924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A112606 (A320553 (n + 3)).toNat

end

end A314033.P8071142969126745924

/-! ## A314033.P4674215505148461049

`A005117(3*(n+1))-A053669(A356604(2*n))`
-/

namespace A314033.P4674215505148461049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * (n + 1)) - A053669 (A356604 (2 * n)).toNat

end

end A314033.P4674215505148461049

/-!
# A314034: Coordination sequence Gal.5.132.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314034, the canonical program `A314034.P16932690787039607146` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314034 has offset 0).

The definition of A314034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314034.P1008690015197561183

`abs(A008592(n)-A315050(n))`
-/

namespace A314034.P1008690015197561183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315050 n|

end

end A314034.P1008690015197561183

namespace A314034

/-- `abs(A008592(n)-A315050(n))` -/
def P1008690015197561183.Spec : Prop :=
  ∀ n, P1008690015197561183.a n = A314034 n

end A314034

/-! ## A314034.P16932690787039607146

`A219529(n)-Δ[A011862(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A314034

/-- `A219529(n)-Δ[A011862(n)]` -/
def P16932690787039607146.Spec : Prop :=
  ∀ n, P16932690787039607146.a n = A314034 n

theorem P16932690787039607146.correct : P16932690787039607146.Spec := by
  intro n
  simp only [A314034]

end A314034

/-! ## A314034.P5291060422816636241

`A008576(2*n)-Δ[A011862(n)]`
-/

namespace A314034.P5291060422816636241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - (f1 (n + 1) - f1 n)

end

end A314034.P5291060422816636241

namespace A314034

/-- `A008576(2*n)-Δ[A011862(n)]` -/
def P5291060422816636241.Spec : Prop :=
  ∀ n, P5291060422816636241.a n = A314034 n

end A314034

/-! ## A314034.P7894459719960605239

`A298024(n)+A004396(A004396(n))`
-/

namespace A314034.P7894459719960605239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + A004396 (A004396 n).toNat

end

end A314034.P7894459719960605239

namespace A314034

/-- `A298024(n)+A004396(A004396(n))` -/
def P7894459719960605239.Spec : Prop :=
  ∀ n, P7894459719960605239.a n = A314034 n

end A314034

/-! ## A314034.P13028335984560404220

`A008458(n)-A004396(2*A004396(n))`
-/

namespace A314034.P13028335984560404220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004396 (2 * A004396 n).toNat

end

end A314034.P13028335984560404220

namespace A314034

/-- `A008458(n)-A004396(2*A004396(n))` -/
def P13028335984560404220.Spec : Prop :=
  ∀ n, P13028335984560404220.a n = A314034 n

end A314034

/-! ## A314034.P7148319944539905521

`A008458(n)-A042965(A086161(2*n))`
-/

namespace A314034.P7148319944539905521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A042965 (A086161 (2 * n)).toNat

end

end A314034.P7148319944539905521

namespace A314034

/-- `A008458(n)-A042965(A086161(2*n))` -/
def P7148319944539905521.Spec : Prop :=
  ∀ n, P7148319944539905521.a n = A314034 n

end A314034

/-! ## A314034.P3206194066738316491

`A313580(n)+A004396(n-A004396(n))`
-/

namespace A314034.P3206194066738316491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313580 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A314034.P3206194066738316491

namespace A314034

/-- `A313580(n)+A004396(n-A004396(n))` -/
def P3206194066738316491.Spec : Prop :=
  ∀ n, P3206194066738316491.a n = A314034 n

end A314034

/-! ## A314034.P8433424244554827031

`A008458(n)+A008574(n)-A315050(n)`
-/

namespace A314034.P8433424244554827031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315050 n)

end

end A314034.P8433424244554827031

namespace A314034

/-- `A008458(n)+A008574(n)-A315050(n)` -/
def P8433424244554827031.Spec : Prop :=
  ∀ n, P8433424244554827031.a n = A314034 n

end A314034

/-! ## A314034.P10904017326509358664

`A004396(n)+A136290(n)+A004396(A004396(n))`
-/

namespace A314034.P10904017326509358664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A136290 n + A004396 (A004396 n).toNat)

end

end A314034.P10904017326509358664

namespace A314034

/-- `A004396(n)+A136290(n)+A004396(A004396(n))` -/
def P10904017326509358664.Spec : Prop :=
  ∀ n, P10904017326509358664.a n = A314034 n

end A314034

/-! ## A314034.P3729957750386211349

`A004396(A004396(n))+A219529(n)-A004396(n)`
-/

namespace A314034.P3729957750386211349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A219529 n - A004396 n)

end

end A314034.P3729957750386211349

namespace A314034

/-- `A004396(A004396(n))+A219529(n)-A004396(n)` -/
def P3729957750386211349.Spec : Prop :=
  ∀ n, P3729957750386211349.a n = A314034 n

end A314034

/-! ## A314034.P2934750801882994782

`A004396(A004396(n))+A313510(n)-A134667(n)`
-/

namespace A314034.P2934750801882994782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A313510 n - A134667 n)

end

end A314034.P2934750801882994782

namespace A314034

/-- `A004396(A004396(n))+A313510(n)-A134667(n)` -/
def P2934750801882994782.Spec : Prop :=
  ∀ n, P2934750801882994782.a n = A314034 n

end A314034

/-! ## A314034.P10786322793535438481

`A315653(n)-A004396(A004396(n))`
-/

namespace A314034.P10786322793535438481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315653 n - A004396 (A004396 n).toNat

end

end A314034.P10786322793535438481

namespace A314034

/-- `A315653(n)-A004396(A004396(n))` -/
def P10786322793535438481.Spec : Prop :=
  ∀ n, P10786322793535438481.a n = A314034 n

end A314034

/-! ## A314034.P9321856217973942760

`A315706(n)-A004396(n)`
-/

namespace A314034.P9321856217973942760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315706 n - A004396 n

end

end A314034.P9321856217973942760

namespace A314034

/-- `A315706(n)-A004396(n)` -/
def P9321856217973942760.Spec : Prop :=
  ∀ n, P9321856217973942760.a n = A314034 n

theorem P9321856217973942760.correct : P9321856217973942760.Spec := by
  intro n
  simp only [A314034, Nat.add_sub_cancel, A314034.P9321856217973942760.a, A314034.P16932690787039607146.f1, A314034.P16932690787039607146.a, A004396, A004396.P17032557045289780609.a, A011862, A011862.P9485299441699197278.a, A219529, A219529.P11562670573213702759.a, A315706, A315706.P7813840819616838291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314034

/-! ## A314034.P13146316345337977088

`A315706(n)-A002264(2*n+1)`
-/

namespace A314034.P13146316345337977088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315706 n - A002264 (2 * n + 1)

end

end A314034.P13146316345337977088

namespace A314034

/-- `A315706(n)-A002264(2*n+1)` -/
def P13146316345337977088.Spec : Prop :=
  ∀ n, P13146316345337977088.a n = A314034 n

theorem P13146316345337977088.correct : P13146316345337977088.Spec := by
  intro n
  simp only [A314034, Nat.add_sub_cancel, A314034.P13146316345337977088.a, A314034.P16932690787039607146.f1, A314034.P16932690787039607146.a, A002264, A002264.P5647656940077635922.a, A011862, A011862.P9485299441699197278.a, A219529, A219529.P11562670573213702759.a, A315706, A315706.P7813840819616838291.a, A004396, A004396.P17032557045289780609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314034

/-! ## A314034.P17521222805010784663

`A004396(A298784(2*n)+n)`
-/

namespace A314034.P17521222805010784663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A298784 (2 * n) + (n : ℤ)).toNat

end

end A314034.P17521222805010784663

namespace A314034

/-- `A004396(A298784(2*n)+n)` -/
def P17521222805010784663.Spec : Prop :=
  ∀ n, P17521222805010784663.a n = A314034 n

end A314034

/-! ## A314034.P1354531064504143840

`A004396(2*A298786(n)+n)`
-/

namespace A314034.P1354531064504143840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A298786 n + (n : ℤ)).toNat

end

end A314034.P1354531064504143840

namespace A314034

/-- `A004396(2*A298786(n)+n)` -/
def P1354531064504143840.Spec : Prop :=
  ∀ n, P1354531064504143840.a n = A314034 n

end A314034

/-! ## A314034.P7556162716942081230

`A004396(A316317(2*n)+n)`
-/

namespace A314034.P7556162716942081230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A316317 (2 * n) + (n : ℤ)).toNat

end

end A314034.P7556162716942081230

namespace A314034

/-- `A004396(A316317(2*n)+n)` -/
def P7556162716942081230.Spec : Prop :=
  ∀ n, P7556162716942081230.a n = A314034 n

end A314034

/-! ## A314034.P7550224626825709752

`A004396(2*A312901(n)-n)`
-/

namespace A314034.P7550224626825709752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A312901 n - (n : ℤ)).toNat

end

end A314034.P7550224626825709752

namespace A314034

/-- `A004396(2*A312901(n)-n)` -/
def P7550224626825709752.Spec : Prop :=
  ∀ n, P7550224626825709752.a n = A314034 n

end A314034

/-! ## A314034.P10452562061347127419

`A004396(A005843(A298786(n))+n)`
-/

namespace A314034.P10452562061347127419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 (A298786 n).toNat + (n : ℤ)).toNat

end

end A314034.P10452562061347127419

namespace A314034

/-- `A004396(A005843(A298786(n))+n)` -/
def P10452562061347127419.Spec : Prop :=
  ∀ n, P10452562061347127419.a n = A314034 n

end A314034

/-! ## A314034.P2508946974759257232

`A004396(A312065(2*n)-n)`
-/

namespace A314034.P2508946974759257232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312065 (2 * n) - (n : ℤ)).toNat

end

end A314034.P2508946974759257232

namespace A314034

/-- `A004396(A312065(2*n)-n)` -/
def P2508946974759257232.Spec : Prop :=
  ∀ n, P2508946974759257232.a n = A314034 n

end A314034

/-!
# A314035: Coordination sequence Gal.6.499.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314035, there is no canonical definition to state claims against.
-/

/-! ## A314035.P4344429267042720370

`A219529(n)-A287397(A120588(n))`
-/

namespace A314035.P4344429267042720370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A287397 (A120588 n).toNat

end

end A314035.P4344429267042720370

/-! ## A314035.P15474565609733560910

`A301726(n)-A082858(A000043(n+1))`
-/

namespace A314035.P15474565609733560910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n - A082858 (A000043 (n + 1)).toNat

end

end A314035.P15474565609733560910

/-! ## A314035.P7807324324925287486

`A184855(n+1)+A024693(A058333(n+1))`
-/

namespace A314035.P7807324324925287486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184855 (n + 1) + A024693 (A058333 (n + 1)).toNat

end

end A314035.P7807324324925287486

/-! ## A314035.P3061373534397876103

`A313570(n)+A001221(A149686(n))`
-/

namespace A314035.P3061373534397876103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313570 n + A001221 (A149686 n).toNat

end

end A314035.P3061373534397876103

/-!
# A314036: Coordination sequence Gal.4.103.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314036, there is no canonical definition to state claims against.
-/

/-! ## A314036.P10431367965347167039

`A344174(A129361(n))+A313520(n)`
-/

namespace A314036.P10431367965347167039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344174 (A129361 n).toNat + A313520 n

end

end A314036.P10431367965347167039

/-! ## A314036.P14242365637194661725

`A047293(A032555(n+1))+A020497(n+1)`
-/

namespace A314036.P14242365637194661725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047293 (A032555 (n + 1)).toNat + A020497 (n + 1)

end

end A314036.P14242365637194661725

/-! ## A314036.P10671381754987051331

`A275341(3*n+2)-A025280(A306422(n+1))`
-/

namespace A314036.P10671381754987051331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275341 (3 * n + 2) - A025280 (A306422 (n + 1)).toNat

end

end A314036.P10671381754987051331

/-!
# A314037: Coordination sequence Gal.5.209.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314037, there is no canonical definition to state claims against.
-/

/-! ## A314037.P136229096295998478

`A313739(n)+A007814(A000110(n))`
-/

namespace A314037.P136229096295998478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n + A007814 (A000110 n).toNat

end

end A314037.P136229096295998478

/-! ## A314037.P14326644749095335234

`A315216(n)-A057078(A006483(n))`
-/

namespace A314037.P14326644749095335234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315216 n - A057078 (A006483 n).toNat

end

end A314037.P14326644749095335234

/-! ## A314037.P7374307145818972390

`A301714(n)-A266608(A258347(n))`
-/

namespace A314037.P7374307145818972390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301714 n - A266608 (A258347 n).toNat

end

end A314037.P7374307145818972390

/-! ## A314037.P16043864297277327027

`or(A001222(A079820(n)), A310419(n))`
-/

namespace A314037.P16043864297277327027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A079820 n).toNat) (A310419 n)

end

end A314037.P16043864297277327027

/-! ## A314037.P5416172279575683214

`or(A001222(A079820(n)), A313258(n))`
-/

namespace A314037.P5416172279575683214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A079820 n).toNat) (A313258 n)

end

end A314037.P5416172279575683214

/-!
# A314038: Coordination sequence Gal.6.616.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314038, the canonical program `A314038.P12633839293519020832` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314038 has offset 0).

The definition of A314038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314038.P8128710271623620408

`A315326(n)-A011582(n)`
-/

namespace A314038.P8128710271623620408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315326 n - A011582 n

end

end A314038.P8128710271623620408

namespace A314038

/-- `A315326(n)-A011582(n)` -/
def P8128710271623620408.Spec : Prop :=
  ∀ n, P8128710271623620408.a n = A314038 n

end A314038

/-! ## A314038.P12633839293519020832

`abs(A008592(n)-A315034(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314038

/-- `abs(A008592(n)-A315034(n))` -/
def P12633839293519020832.Spec : Prop :=
  ∀ n, P12633839293519020832.a n = A314038 n

theorem P12633839293519020832.correct : P12633839293519020832.Spec := by
  intro n
  simp only [A314038]

end A314038

/-! ## A314038.P7519662398699837787

`A008458(n)+A008574(n)-A315034(n)`
-/

namespace A314038.P7519662398699837787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315034 n)

end

end A314038.P7519662398699837787

namespace A314038

/-- `A008458(n)+A008574(n)-A315034(n)` -/
def P7519662398699837787.Spec : Prop :=
  ∀ n, P7519662398699837787.a n = A314038 n

end A314038

/-! ## A314038.P5215294383910917262

`A314117(n)-Δ[A011864(n)]`
-/

namespace A314038.P5215294383910917262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314117 n - (f1 (n + 1) - f1 n)

end

end A314038.P5215294383910917262

namespace A314038

/-- `A314117(n)-Δ[A011864(n)]` -/
def P5215294383910917262.Spec : Prop :=
  ∀ n, P5215294383910917262.a n = A314038 n

end A314038

/-! ## A314038.P13249965033900408240

`A004396(A315699(n)+2*n)`
-/

namespace A314038.P13249965033900408240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315699 n + (2 * n : ℤ)).toNat

end

end A314038.P13249965033900408240

namespace A314038

/-- `A004396(A315699(n)+2*n)` -/
def P13249965033900408240.Spec : Prop :=
  ∀ n, P13249965033900408240.a n = A314038 n

end A314038

/-! ## A314038.P8663203691883990030

`A004396(A315699(n)+n+n)`
-/

namespace A314038.P8663203691883990030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315699 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314038.P8663203691883990030

namespace A314038

/-- `A004396(A315699(n)+n+n)` -/
def P8663203691883990030.Spec : Prop :=
  ∀ n, P8663203691883990030.a n = A314038 n

end A314038

/-! ## A314038.P17546368604962399980

`A314752(2*n)+A008574(n+1)-(8*n+4)`
-/

namespace A314038.P17546368604962399980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314752 (2 * n) + (A008574 (n + 1) - (8 * n + 4 : ℤ))

end

end A314038.P17546368604962399980

namespace A314038

/-- `A314752(2*n)+A008574(n+1)-(8*n+4)` -/
def P17546368604962399980.Spec : Prop :=
  ∀ n, P17546368604962399980.a n = A314038 n

end A314038

/-! ## A314038.P7124864903294924318

`A008574(2*n)+A314752(2*n)-A008458(2*n)`
-/

namespace A314038.P7124864903294924318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) + (A314752 (2 * n) - A008458 (2 * n))

end

end A314038.P7124864903294924318

namespace A314038

/-- `A008574(2*n)+A314752(2*n)-A008458(2*n)` -/
def P7124864903294924318.Spec : Prop :=
  ∀ n, P7124864903294924318.a n = A314038 n

end A314038

/-! ## A314038.P1560960845399198931

`2*A008574(2*n)-A314194(2*n)`
-/

namespace A314038.P1560960845399198931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314194 (2 * n)

end

end A314038.P1560960845399198931

namespace A314038

/-- `2*A008574(2*n)-A314194(2*n)` -/
def P1560960845399198931.Spec : Prop :=
  ∀ n, P1560960845399198931.a n = A314038 n

end A314038

/-! ## A314038.P16390704625692305070

`A004525(A313772(2*n))`
-/

namespace A314038.P16390704625692305070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313772 (2 * n)).toNat

end

end A314038.P16390704625692305070

namespace A314038

/-- `A004525(A313772(2*n))` -/
def P16390704625692305070.Spec : Prop :=
  ∀ n, P16390704625692305070.a n = A314038 n

end A314038

/-! ## A314038.P17591809931934530620

`A004525(A313779(2*n))`
-/

namespace A314038.P17591809931934530620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313779 (2 * n)).toNat

end

end A314038.P17591809931934530620

namespace A314038

/-- `A004525(A313779(2*n))` -/
def P17591809931934530620.Spec : Prop :=
  ∀ n, P17591809931934530620.a n = A314038 n

end A314038

/-! ## A314038.P17030419676116180813

`A004525(A315272(2*n))`
-/

namespace A314038.P17030419676116180813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315272 (2 * n)).toNat

end

end A314038.P17030419676116180813

namespace A314038

/-- `A004525(A315272(2*n))` -/
def P17030419676116180813.Spec : Prop :=
  ∀ n, P17030419676116180813.a n = A314038 n

end A314038

/-! ## A314038.P8795024055922897709

`A004525(A312891(n)+6*n)`
-/

namespace A314038.P8795024055922897709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312891 n + (6 * n : ℤ)).toNat

end

end A314038.P8795024055922897709

namespace A314038

/-- `A004525(A312891(n)+6*n)` -/
def P8795024055922897709.Spec : Prop :=
  ∀ n, P8795024055922897709.a n = A314038 n

end A314038

/-! ## A314038.P2990106041573273560

`A008458(A008574(n))-A315019(A008574(n))`
-/

namespace A314038.P2990106041573273560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008574 n).toNat - A315019 (A008574 n).toNat

end

end A314038.P2990106041573273560

namespace A314038

/-- `A008458(A008574(n))-A315019(A008574(n))` -/
def P2990106041573273560.Spec : Prop :=
  ∀ n, P2990106041573273560.a n = A314038 n

end A314038

/-!
# A314039: Coordination sequence Gal.5.299.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314039, the canonical program `A314039.P14436885910708461975` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314039 has offset 0).

The definition of A314039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314039.P14436885910708461975

`abs(A008592(n)-A315033(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314039

/-- `abs(A008592(n)-A315033(n))` -/
def P14436885910708461975.Spec : Prop :=
  ∀ n, P14436885910708461975.a n = A314039 n

theorem P14436885910708461975.correct : P14436885910708461975.Spec := by
  intro n
  simp only [A314039]

end A314039

/-! ## A314039.P2234105028298619510

`A008458(n)+A008574(n)-A315033(n)`
-/

namespace A314039.P2234105028298619510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315033 n)

end

end A314039.P2234105028298619510

namespace A314039

/-- `A008458(n)+A008574(n)-A315033(n)` -/
def P2234105028298619510.Spec : Prop :=
  ∀ n, P2234105028298619510.a n = A314039 n

end A314039

/-! ## A314039.P8053708638471937502

`A008458(n)-A004525(A008458(n)-A312893(n))`
-/

namespace A314039.P8053708638471937502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A312893 n).toNat

end

end A314039.P8053708638471937502

namespace A314039

/-- `A008458(n)-A004525(A008458(n)-A312893(n))` -/
def P8053708638471937502.Spec : Prop :=
  ∀ n, P8053708638471937502.a n = A314039 n

end A314039

/-! ## A314039.P1187970991553084043

`A314141(n)-Δ[A011862(n)]`
-/

namespace A314039.P1187970991553084043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n - (f1 (n + 1) - f1 n)

end

end A314039.P1187970991553084043

namespace A314039

/-- `A314141(n)-Δ[A011862(n)]` -/
def P1187970991553084043.Spec : Prop :=
  ∀ n, P1187970991553084043.a n = A314039 n

end A314039

/-! ## A314039.P3799955580919505418

`A004396(A004396(n))+A314141(n)-A004396(n)`
-/

namespace A314039.P3799955580919505418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A314141 n - A004396 n)

end

end A314039.P3799955580919505418

namespace A314039

/-- `A004396(A004396(n))+A314141(n)-A004396(n)` -/
def P3799955580919505418.Spec : Prop :=
  ∀ n, P3799955580919505418.a n = A314039 n

end A314039

/-! ## A314039.P3614486110357264610

`A314231(n)-Δ[2*A011862(n)]`
-/

namespace A314039.P3614486110357264610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314231 n - (f1 (n + 1) - f1 n)

end

end A314039.P3614486110357264610

namespace A314039

/-- `A314231(n)-Δ[2*A011862(n)]` -/
def P3614486110357264610.Spec : Prop :=
  ∀ n, P3614486110357264610.a n = A314039 n

end A314039

/-! ## A314039.P12421078901074731368

`2*n+A004396(A313538(n))`
-/

namespace A314039.P12421078901074731368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A313538 n).toNat

end

end A314039.P12421078901074731368

namespace A314039

/-- `2*n+A004396(A313538(n))` -/
def P12421078901074731368.Spec : Prop :=
  ∀ n, P12421078901074731368.a n = A314039 n

end A314039

/-! ## A314039.P10600097351791349218

`A008585(n)-(n-A004396(A313538(n)))`
-/

namespace A314039.P10600097351791349218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A313538 n).toNat)

end

end A314039.P10600097351791349218

namespace A314039

/-- `A008585(n)-(n-A004396(A313538(n)))` -/
def P10600097351791349218.Spec : Prop :=
  ∀ n, P10600097351791349218.a n = A314039 n

end A314039

/-! ## A314039.P493390965243414303

`A005843(n)+A004396(A315646(n)-A004396(n))`
-/

namespace A314039.P493390965243414303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315646 n - A004396 n).toNat

end

end A314039.P493390965243414303

namespace A314039

/-- `A005843(n)+A004396(A315646(n)-A004396(n))` -/
def P493390965243414303.Spec : Prop :=
  ∀ n, P493390965243414303.a n = A314039 n

end A314039

/-! ## A314039.P11134427327888020172

`A004396(A313538(n)+A008486(n))`
-/

namespace A314039.P11134427327888020172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313538 n + A008486 n).toNat

end

end A314039.P11134427327888020172

namespace A314039

/-- `A004396(A313538(n)+A008486(n))` -/
def P11134427327888020172.Spec : Prop :=
  ∀ n, P11134427327888020172.a n = A314039 n

end A314039

/-! ## A314039.P663708620790359952

`A004396(A313538(n)+A008585(n))`
-/

namespace A314039.P663708620790359952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313538 n + A008585 n).toNat

end

end A314039.P663708620790359952

namespace A314039

/-- `A004396(A313538(n)+A008585(n))` -/
def P663708620790359952.Spec : Prop :=
  ∀ n, P663708620790359952.a n = A314039 n

end A314039

/-! ## A314039.P1461398057228384042

`A099479(A133655(n)+A004396(n))-A004396(n)`
-/

namespace A314039.P1461398057228384042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (A133655 n + A004396 n).toNat - A004396 n

end

end A314039.P1461398057228384042

namespace A314039

/-- `A099479(A133655(n)+A004396(n))-A004396(n)` -/
def P1461398057228384042.Spec : Prop :=
  ∀ n, P1461398057228384042.a n = A314039 n

end A314039

/-! ## A314039.P13834211693059883348

`A314231(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A314039.P13834211693059883348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314231 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A314039.P13834211693059883348

namespace A314039

/-- `A314231(2*n)+A008458(n+1)-(12*n+6)` -/
def P13834211693059883348.Spec : Prop :=
  ∀ n, P13834211693059883348.a n = A314039 n

end A314039

/-! ## A314039.P10697103235847131613

`A004525(A312893(n)+A008458(n))`
-/

namespace A314039.P10697103235847131613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312893 n + A008458 n).toNat

end

end A314039.P10697103235847131613

namespace A314039

/-- `A004525(A312893(n)+A008458(n))` -/
def P10697103235847131613.Spec : Prop :=
  ∀ n, P10697103235847131613.a n = A314039 n

end A314039

/-! ## A314039.P17123445671419367927

`A004525(A312893(n)+A008588(n))`
-/

namespace A314039.P17123445671419367927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312893 n + A008588 n).toNat

end

end A314039.P17123445671419367927

namespace A314039

/-- `A004525(A312893(n)+A008588(n))` -/
def P17123445671419367927.Spec : Prop :=
  ∀ n, P17123445671419367927.a n = A314039 n

end A314039

/-! ## A314039.P1305801669792256863

`A004525(A314051(n)+A008706(n))`
-/

namespace A314039.P1305801669792256863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314051 n + A008706 n).toNat

end

end A314039.P1305801669792256863

namespace A314039

/-- `A004525(A314051(n)+A008706(n))` -/
def P1305801669792256863.Spec : Prop :=
  ∀ n, P1305801669792256863.a n = A314039 n

end A314039

/-! ## A314039.P18331339146544548215

`A004525(A312484(2*n)+A004396(2*n))`
-/

namespace A314039.P18331339146544548215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312484 (2 * n) + A004396 (2 * n)).toNat

end

end A314039.P18331339146544548215

namespace A314039

/-- `A004525(A312484(2*n)+A004396(2*n))` -/
def P18331339146544548215.Spec : Prop :=
  ∀ n, P18331339146544548215.a n = A314039 n

end A314039

/-! ## A314039.P8272529936954146142

`A004525(A312932(2*n)+A004396(2*n))`
-/

namespace A314039.P8272529936954146142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312932 (2 * n) + A004396 (2 * n)).toNat

end

end A314039.P8272529936954146142

namespace A314039

/-- `A004525(A312932(2*n)+A004396(2*n))` -/
def P8272529936954146142.Spec : Prop :=
  ∀ n, P8272529936954146142.a n = A314039 n

end A314039

/-!
# A314040: Coordination sequence Gal.4.133.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314040, the canonical program `A314040.P6532766928928957764` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314040 has offset 0).

The definition of A314040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314040.P6532766928928957764

`A191275(A008486(n)+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A314040

/-- `A191275(A008486(n)+1)` -/
def P6532766928928957764.Spec : Prop :=
  ∀ n, P6532766928928957764.a n = A314040 n

theorem P6532766928928957764.correct : P6532766928928957764.Spec := by
  intro n
  simp only [A314040]

end A314040

/-! ## A314040.P5875152050801056771

`A191275(A033627(n+2))`
-/

namespace A314040.P5875152050801056771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (A033627 (n + 2)).toNat

end

end A314040.P5875152050801056771

namespace A314040

/-- `A191275(A033627(n+2))` -/
def P5875152050801056771.Spec : Prop :=
  ∀ n, P5875152050801056771.a n = A314040 n

end A314040

/-! ## A314040.P12218861216184204361

`A310503(n)+A175629(n)`
-/

namespace A314040.P12218861216184204361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n + A175629 n

end

end A314040.P12218861216184204361

namespace A314040

/-- `A310503(n)+A175629(n)` -/
def P12218861216184204361.Spec : Prop :=
  ∀ n, P12218861216184204361.a n = A314040 n

end A314040

/-! ## A314040.P9401003779479766464

`abs(A008592(n)-A315032(n))`
-/

namespace A314040.P9401003779479766464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315032 n|

end

end A314040.P9401003779479766464

namespace A314040

/-- `abs(A008592(n)-A315032(n))` -/
def P9401003779479766464.Spec : Prop :=
  ∀ n, P9401003779479766464.a n = A314040 n

end A314040

/-! ## A314040.P7149032912387199739

`A191275(A028310(3*n)+1)`
-/

namespace A314040.P7149032912387199739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (A028310 (3 * n) + 1).toNat

end

end A314040.P7149032912387199739

namespace A314040

/-- `A191275(A028310(3*n)+1)` -/
def P7149032912387199739.Spec : Prop :=
  ∀ n, P7149032912387199739.a n = A314040 n

end A314040

/-! ## A314040.P10471206189172882209

`A191275(A008574(n)+1-n)`
-/

namespace A314040.P10471206189172882209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (A008574 n + (1 - (n : ℤ))).toNat

end

end A314040.P10471206189172882209

namespace A314040

/-- `A191275(A008574(n)+1-n)` -/
def P10471206189172882209.Spec : Prop :=
  ∀ n, P10471206189172882209.a n = A314040 n

end A314040

/-! ## A314040.P12394302859608198877

`A191275(1-(n-A008574(n)))`
-/

namespace A314040.P12394302859608198877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (1 - ((n : ℤ) - A008574 n)).toNat

end

end A314040.P12394302859608198877

namespace A314040

/-- `A191275(1-(n-A008574(n)))` -/
def P12394302859608198877.Spec : Prop :=
  ∀ n, P12394302859608198877.a n = A314040 n

end A314040

/-! ## A314040.P8289162444915029980

`(A310341(n)+A008458(n))/2`
-/

namespace A314040.P8289162444915029980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310341 n + A008458 n : ℚ) / 2

end

end A314040.P8289162444915029980

namespace A314040

/-- `(A310341(n)+A008458(n))/2` -/
def P8289162444915029980.Spec : Prop :=
  ∀ n, P8289162444915029980.a n = (A314040 n : ℚ)

end A314040

/-! ## A314040.P11997928143296786901

`2*A008706(n)-A315032(n)`
-/

namespace A314040.P11997928143296786901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315032 n

end

end A314040.P11997928143296786901

namespace A314040

/-- `2*A008706(n)-A315032(n)` -/
def P11997928143296786901.Spec : Prop :=
  ∀ n, P11997928143296786901.a n = A314040 n

end A314040

/-! ## A314040.P2281406179750074849

`A008458(n)+A008574(n)-A315032(n)`
-/

namespace A314040.P2281406179750074849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315032 n)

end

end A314040.P2281406179750074849

namespace A314040

/-- `A008458(n)+A008574(n)-A315032(n)` -/
def P2281406179750074849.Spec : Prop :=
  ∀ n, P2281406179750074849.a n = A314040 n

end A314040

/-! ## A314040.P3479244218985558498

`A004525(A047588(2*n+1))+A004275(2*n+1)`
-/

namespace A314040.P3479244218985558498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047588 (2 * n + 1)).toNat + A004275 (2 * n + 1)

end

end A314040.P3479244218985558498

namespace A314040

/-- `A004525(A047588(2*n+1))+A004275(2*n+1)` -/
def P3479244218985558498.Spec : Prop :=
  ∀ n, P3479244218985558498.a n = A314040 n

end A314040

/-! ## A314040.P18114553485952353795

`A008458(n)-A004526(A008458(n)-A310341(n))`
-/

namespace A314040.P18114553485952353795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A310341 n).toNat

end

end A314040.P18114553485952353795

namespace A314040

/-- `A008458(n)-A004526(A008458(n)-A310341(n))` -/
def P18114553485952353795.Spec : Prop :=
  ∀ n, P18114553485952353795.a n = A314040 n

end A314040

/-! ## A314040.P1171436725349749864

`A314096(n)+A238469(2*n)`
-/

namespace A314040.P1171436725349749864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314096 n + A238469 (2 * n)

end

end A314040.P1171436725349749864

namespace A314040

/-- `A314096(n)+A238469(2*n)` -/
def P1171436725349749864.Spec : Prop :=
  ∀ n, P1171436725349749864.a n = A314040 n

end A314040

/-! ## A314040.P1511732043114016859

`A315423(n)-A238469(n)`
-/

namespace A314040.P1511732043114016859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315423 n - A238469 n

end

end A314040.P1511732043114016859

namespace A314040

/-- `A315423(n)-A238469(n)` -/
def P1511732043114016859.Spec : Prop :=
  ∀ n, P1511732043114016859.a n = A314040 n

theorem P1511732043114016859.correct : P1511732043114016859.Spec := by
  intro n
  simp only [A314040, Nat.add_sub_cancel, A314040.P1511732043114016859.a, A314040.P6532766928928957764.a, A008486, A008486.P11623131867527198563.a, A191275, A191275.P11393128651894986378.a, A238469, A238469.P12053234808981461841.a, A315423, A315423.P11276488432511767782.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314040

/-! ## A314040.P12043997493900378007

`A315423(n)-A238470(2*n)`
-/

namespace A314040.P12043997493900378007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315423 n - A238470 (2 * n)

end

end A314040.P12043997493900378007

namespace A314040

/-- `A315423(n)-A238470(2*n)` -/
def P12043997493900378007.Spec : Prop :=
  ∀ n, P12043997493900378007.a n = A314040 n

end A314040

/-! ## A314040.P947962476075180321

`A238468(n)+A047263(A310341(n)+1)`
-/

namespace A314040.P947962476075180321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238468 n + A047263 (A310341 n + 1).toNat

end

end A314040.P947962476075180321

namespace A314040

/-- `A238468(n)+A047263(A310341(n)+1)` -/
def P947962476075180321.Spec : Prop :=
  ∀ n, P947962476075180321.a n = A314040 n

end A314040

/-! ## A314040.P4840589114668750903

`A313780(n)+A238470(n)`
-/

namespace A314040.P4840589114668750903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313780 n + A238470 n

end

end A314040.P4840589114668750903

namespace A314040

/-- `A313780(n)+A238470(n)` -/
def P4840589114668750903.Spec : Prop :=
  ∀ n, P4840589114668750903.a n = A314040 n

end A314040

/-! ## A314040.P9161886938936918314

`A005843(A008706(n))-A315032(n)`
-/

namespace A314040.P9161886938936918314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315032 n

end

end A314040.P9161886938936918314

namespace A314040

/-- `A005843(A008706(n))-A315032(n)` -/
def P9161886938936918314.Spec : Prop :=
  ∀ n, P9161886938936918314.a n = A314040 n

end A314040

/-! ## A314040.P16078907252331148130

`A313836(n)-A238468(n)`
-/

namespace A314040.P16078907252331148130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n - A238468 n

end

end A314040.P16078907252331148130

namespace A314040

/-- `A313836(n)-A238468(n)` -/
def P16078907252331148130.Spec : Prop :=
  ∀ n, P16078907252331148130.a n = A314040 n

end A314040

/-! ## A314040.P4952284676073025320

`A004396(A315701(n)+2*n)`
-/

namespace A314040.P4952284676073025320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315701 n + (2 * n : ℤ)).toNat

end

end A314040.P4952284676073025320

namespace A314040

/-- `A004396(A315701(n)+2*n)` -/
def P4952284676073025320.Spec : Prop :=
  ∀ n, P4952284676073025320.a n = A314040 n

end A314040

/-!
# A314041: Coordination sequence Gal.6.646.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314041, there is no canonical definition to state claims against.
-/

/-! ## A314041.P3553051655614171959

`A146763(n)+A034380(A146717(n+1))`
-/

namespace A314041.P3553051655614171959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146763 n + A034380 (A146717 (n + 1)).toNat

end

end A314041.P3553051655614171959

/-! ## A314041.P12536793276664086598

`A313735(n)+A169674(A313735(n)-A001222(3^n))`
-/

namespace A314041.P12536793276664086598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313735 n + A169674 (A313735 n - A001222 (3 ^ n)).toNat

end

end A314041.P12536793276664086598

/-! ## A314041.P14399246501710016985

`A243223(A026150(n))+or(1, 5*n)`
-/

namespace A314041.P14399246501710016985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243223 (A026150 n).toNat + (Nat.lor 1 (5 * n) : ℤ)

end

end A314041.P14399246501710016985

/-! ## A314041.P13600661123402983854

`A219529(n)-A367098(A007689(n))`
-/

namespace A314041.P13600661123402983854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A367098 (A007689 n).toNat

end

end A314041.P13600661123402983854

/-! ## A314041.P11259702113305703146

`A250219(A060455(n))+A065502(3*n+1)`
-/

namespace A314041.P11259702113305703146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250219 (A060455 n).toNat + A065502 (3 * n + 1)

end

end A314041.P11259702113305703146

/-!
# A314042: Coordination sequence Gal.6.649.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314042, there is no canonical definition to state claims against.
-/

/-! ## A314042.P12093492994303653488

`A130573(or(A314128(n), A320079(n)))`
-/

namespace A314042.P12093492994303653488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (Int.lor (A314128 n) (A320079 n)).toNat

end

end A314042.P12093492994303653488

/-! ## A314042.P4992591062863803457

`A314045(n)-A085974(A052542(n))`
-/

namespace A314042.P4992591062863803457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314045 n - A085974 (A052542 n).toNat

end

end A314042.P4992591062863803457

/-! ## A314042.P17298946397832799420

`A047461(n+1)+A003434(A173927(n+1))`
-/

namespace A314042.P17298946397832799420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (n + 1) + A003434 (A173927 (n + 1)).toNat

end

end A314042.P17298946397832799420

/-! ## A314042.P8683972757484702736

`A187715(n+1)+A046698(A205567(n+1))`
-/

namespace A314042.P8683972757484702736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (n + 1) + A046698 (A205567 (n + 1)).toNat

end

end A314042.P8683972757484702736

/-! ## A314042.P14293488820272546752

`A175312(2*n+1)+A051731(A085986(3*n+4))`
-/

namespace A314042.P14293488820272546752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175312 (2 * n + 1) + A051731 (A085986 (3 * n + 4)).toNat

end

end A314042.P14293488820272546752

/-!
# A314043: Coordination sequence Gal.6.618.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314043, the canonical program `A314043.P3377773668893100370` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314043 has offset 0).

The definition of A314043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314043.P2632123177370603272

`abs(A008592(n)-A315030(n))`
-/

namespace A314043.P2632123177370603272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315030 n|

end

end A314043.P2632123177370603272

namespace A314043

/-- `abs(A008592(n)-A315030(n))` -/
def P2632123177370603272.Spec : Prop :=
  ∀ n, P2632123177370603272.a n = A314043 n

end A314043

/-! ## A314043.P3377773668893100370

`A310410(n)+A004525(A004396(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314043

/-- `A310410(n)+A004525(A004396(n))` -/
def P3377773668893100370.Spec : Prop :=
  ∀ n, P3377773668893100370.a n = A314043 n

theorem P3377773668893100370.correct : P3377773668893100370.Spec := by
  intro n
  simp only [A314043]

end A314043

/-! ## A314043.P13529968295133138544

`A313611(n)+A004396(n-A004525(n))`
-/

namespace A314043.P13529968295133138544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313611 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A314043.P13529968295133138544

namespace A314043

/-- `A313611(n)+A004396(n-A004525(n))` -/
def P13529968295133138544.Spec : Prop :=
  ∀ n, P13529968295133138544.a n = A314043 n

end A314043

/-! ## A314043.P7114732360582956575

`A008458(n)+A008574(n)-A315030(n)`
-/

namespace A314043.P7114732360582956575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315030 n)

end

end A314043.P7114732360582956575

namespace A314043

/-- `A008458(n)+A008574(n)-A315030(n)` -/
def P7114732360582956575.Spec : Prop :=
  ∀ n, P7114732360582956575.a n = A314043 n

end A314043

/-! ## A314043.P14258092564812083017

`A314124(n)-Δ[A011865(n)]`
-/

namespace A314043.P14258092564812083017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314124 n - (f1 (n + 1) - f1 n)

end

end A314043.P14258092564812083017

namespace A314043

/-- `A314124(n)-Δ[A011865(n)]` -/
def P14258092564812083017.Spec : Prop :=
  ∀ n, P14258092564812083017.a n = A314043 n

end A314043

/-! ## A314043.P6854388727942885974

`A315649(n)-A004396(A004525(n))`
-/

namespace A314043.P6854388727942885974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315649 n - A004396 (A004525 n).toNat

end

end A314043.P6854388727942885974

namespace A314043

/-- `A315649(n)-A004396(A004525(n))` -/
def P6854388727942885974.Spec : Prop :=
  ∀ n, P6854388727942885974.a n = A314043 n

theorem P6854388727942885974.correct : P6854388727942885974.Spec := by
  intro n
  simp only [A314043, Nat.add_sub_cancel, A314043.P6854388727942885974.a, A314043.P3377773668893100370.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A310410, A310410.P13699142073105713236.a, A315649, A315649.P5476829177456958284.a, A310393, A310393.P12744869705430097846.a, A314022, A314022.P5759349393798454835.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314043

/-! ## A314043.P5138571586577257910

`A004525(A314048(2*n))`
-/

namespace A314043.P5138571586577257910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314048 (2 * n)).toNat

end

end A314043.P5138571586577257910

namespace A314043

/-- `A004525(A314048(2*n))` -/
def P5138571586577257910.Spec : Prop :=
  ∀ n, P5138571586577257910.a n = A314043 n

end A314043

/-! ## A314043.P8922339049746770340

`A004525(A314107(2*n))`
-/

namespace A314043.P8922339049746770340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314107 (2 * n)).toNat

end

end A314043.P8922339049746770340

namespace A314043

/-- `A004525(A314107(2*n))` -/
def P8922339049746770340.Spec : Prop :=
  ∀ n, P8922339049746770340.a n = A314043 n

end A314043

/-! ## A314043.P9648233704507506435

`A004525(A314110(2*n))`
-/

namespace A314043.P9648233704507506435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314110 (2 * n)).toNat

end

end A314043.P9648233704507506435

namespace A314043

/-- `A004525(A314110(2*n))` -/
def P9648233704507506435.Spec : Prop :=
  ∀ n, P9648233704507506435.a n = A314043 n

end A314043

/-! ## A314043.P8838384901829118936

`A004525(A314185(2*n))`
-/

namespace A314043.P8838384901829118936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314185 (2 * n)).toNat

end

end A314043.P8838384901829118936

namespace A314043

/-- `A004525(A314185(2*n))` -/
def P8838384901829118936.Spec : Prop :=
  ∀ n, P8838384901829118936.a n = A314043 n

end A314043

/-! ## A314043.P2702793111791356711

`A004525(A315425(2*n))`
-/

namespace A314043.P2702793111791356711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315425 (2 * n)).toNat

end

end A314043.P2702793111791356711

namespace A314043

/-- `A004525(A315425(2*n))` -/
def P2702793111791356711.Spec : Prop :=
  ∀ n, P2702793111791356711.a n = A314043 n

end A314043

/-! ## A314043.P16802355819029897915

`A004525(A315467(2*n))`
-/

namespace A314043.P16802355819029897915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315467 (2 * n)).toNat

end

end A314043.P16802355819029897915

namespace A314043

/-- `A004525(A315467(2*n))` -/
def P16802355819029897915.Spec : Prop :=
  ∀ n, P16802355819029897915.a n = A314043 n

end A314043

/-! ## A314043.P11808150408033268777

`A004525(A315474(2*n))`
-/

namespace A314043.P11808150408033268777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315474 (2 * n)).toNat

end

end A314043.P11808150408033268777

namespace A314043

/-- `A004525(A315474(2*n))` -/
def P11808150408033268777.Spec : Prop :=
  ∀ n, P11808150408033268777.a n = A314043 n

end A314043

/-! ## A314043.P10742149861172127437

`A004525(A310393(2*n)+n)`
-/

namespace A314043.P10742149861172127437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310393 (2 * n) + (n : ℤ)).toNat

end

end A314043.P10742149861172127437

namespace A314043

/-- `A004525(A310393(2*n)+n)` -/
def P10742149861172127437.Spec : Prop :=
  ∀ n, P10742149861172127437.a n = A314043 n

end A314043

/-! ## A314043.P8109898859486487311

`A004525(A313540(2*n)+n)`
-/

namespace A314043.P8109898859486487311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313540 (2 * n) + (n : ℤ)).toNat

end

end A314043.P8109898859486487311

namespace A314043

/-- `A004525(A313540(2*n)+n)` -/
def P8109898859486487311.Spec : Prop :=
  ∀ n, P8109898859486487311.a n = A314043 n

end A314043

/-! ## A314043.P5101155879980951777

`A004525(A313556(2*n)+n)`
-/

namespace A314043.P5101155879980951777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313556 (2 * n) + (n : ℤ)).toNat

end

end A314043.P5101155879980951777

namespace A314043

/-- `A004525(A313556(2*n)+n)` -/
def P5101155879980951777.Spec : Prop :=
  ∀ n, P5101155879980951777.a n = A314043 n

end A314043

/-! ## A314043.P2153993862585988462

`A004525(A313684(2*n)+n)`
-/

namespace A314043.P2153993862585988462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313684 (2 * n) + (n : ℤ)).toNat

end

end A314043.P2153993862585988462

namespace A314043

/-- `A004525(A313684(2*n)+n)` -/
def P2153993862585988462.Spec : Prop :=
  ∀ n, P2153993862585988462.a n = A314043 n

end A314043

/-! ## A314043.P8116604439956394183

`A004525(A313688(2*n)+n)`
-/

namespace A314043.P8116604439956394183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313688 (2 * n) + (n : ℤ)).toNat

end

end A314043.P8116604439956394183

namespace A314043

/-- `A004525(A313688(2*n)+n)` -/
def P8116604439956394183.Spec : Prop :=
  ∀ n, P8116604439956394183.a n = A314043 n

end A314043

/-! ## A314043.P405009821095265856

`A004525(A315700(2*n)-n)`
-/

namespace A314043.P405009821095265856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315700 (2 * n) - (n : ℤ)).toNat

end

end A314043.P405009821095265856

namespace A314043

/-- `A004525(A315700(2*n)-n)` -/
def P405009821095265856.Spec : Prop :=
  ∀ n, P405009821095265856.a n = A314043 n

end A314043

/-! ## A314043.P15972639454094823595

`A004525(A315703(2*n)-n)`
-/

namespace A314043.P15972639454094823595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315703 (2 * n) - (n : ℤ)).toNat

end

end A314043.P15972639454094823595

namespace A314043

/-- `A004525(A315703(2*n)-n)` -/
def P15972639454094823595.Spec : Prop :=
  ∀ n, P15972639454094823595.a n = A314043 n

end A314043

/-!
# A314044: Coordination sequence Gal.6.649.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314044, there is no canonical definition to state claims against.
-/

/-! ## A314044.P8657283260707525203

`A314040(n)+A000035(A019161(n+3))`
-/

namespace A314044.P8657283260707525203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314040 n + A000035 (A019161 (n + 3)).toNat

end

end A314044.P8657283260707525203

/-! ## A314044.P1932287903062098613

`A313615(n)+A297038(A153893(n))`
-/

namespace A314044.P1932287903062098613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313615 n + A297038 (A153893 n).toNat

end

end A314044.P1932287903062098613

/-! ## A314044.P9309333534959429499

`A314051(n)-A065202(A280064(n+1))`
-/

namespace A314044.P9309333534959429499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314051 n - A065202 (A280064 (n + 1)).toNat

end

end A314044.P9309333534959429499

/-! ## A314044.P11497664077528160918

`A314051(n)-A065202(A280069(∑[n+3]+1))`
-/

namespace A314044.P11497664077528160918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314051 n - A065202 (A280069 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A314044.P11497664077528160918

/-! ## A314044.P10909653114215333918

`A313772(n)+A080343(A033844(n))`
-/

namespace A314044.P10909653114215333918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313772 n + A080343 (A033844 n).toNat

end

end A314044.P10909653114215333918

/-!
# A314045: Coordination sequence Gal.6.648.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314045, there is no canonical definition to state claims against.
-/

/-! ## A314045.P965514125414169055

`A314141(n)-A025435(A119827(n))`
-/

namespace A314045.P965514125414169055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n - A025435 (A119827 n).toNat

end

end A314045.P965514125414169055

/-! ## A314045.P12310926158810748427

`A330025(A305542(n+1))+A313627(n)`
-/

namespace A314045.P12310926158810748427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A305542 (n + 1)).toNat + A313627 n

end

end A314045.P12310926158810748427

/-! ## A314045.P17113289823769967573

`A330025(A305542(n+1))+A313628(n)`
-/

namespace A314045.P17113289823769967573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A305542 (n + 1)).toNat + A313628 n

end

end A314045.P17113289823769967573

/-! ## A314045.P6739868368886293603

`A219529(n)-A106220(A020338(n+1))`
-/

namespace A314045.P6739868368886293603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A106220 (A020338 (n + 1)).toNat

end

end A314045.P6739868368886293603

/-! ## A314045.P11313896751860565947

`A219529(n)-A144628(A121364(n+1))`
-/

namespace A314045.P11313896751860565947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A144628 (A121364 (n + 1)).toNat

end

end A314045.P11313896751860565947

/-!
# A314046: Coordination sequence Gal.5.309.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314046, there is no canonical definition to state claims against.
-/

/-! ## A314046.P5028005652277693903

`A193453(A289501(n))+and(5*n, -2)`
-/

namespace A314046.P5028005652277693903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193453 (A289501 n).toNat + Int.land (5 * n : ℤ) (-2)

end

end A314046.P5028005652277693903

/-! ## A314046.P17968134660856355594

`A314042(n)+A169673(A102233(n))`
-/

namespace A314046.P17968134660856355594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314042 n + A169673 (A102233 n).toNat

end

end A314046.P17968134660856355594

/-! ## A314046.P15965775633547367830

`A314045(n)+A185284(A108362(n))`
-/

namespace A314046.P15965775633547367830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314045 n + A185284 (A108362 n).toNat

end

end A314046.P15965775633547367830

/-! ## A314046.P3382849814886925412

`A314045(n)+A055641(A287972(n))`
-/

namespace A314046.P3382849814886925412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314045 n + A055641 (A287972 n).toNat

end

end A314046.P3382849814886925412

/-!
# A314047: Coordination sequence Gal.5.308.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314047, the canonical program `A314047.P6128783489068935556` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314047 has offset 0).

The definition of A314047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314047.P6128783489068935556

`A310412(n)+A004525(A004396(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314047

/-- `A310412(n)+A004525(A004396(n))` -/
def P6128783489068935556.Spec : Prop :=
  ∀ n, P6128783489068935556.a n = A314047 n

theorem P6128783489068935556.correct : P6128783489068935556.Spec := by
  intro n
  simp only [A314047]

end A314047

/-! ## A314047.P16785435136423071441

`A310412(n)+A314677(n)-A008574(n)`
-/

namespace A314047.P16785435136423071441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310412 n + (A314677 n - A008574 n)

end

end A314047.P16785435136423071441

namespace A314047

/-- `A310412(n)+A314677(n)-A008574(n)` -/
def P16785435136423071441.Spec : Prop :=
  ∀ n, P16785435136423071441.a n = A314047 n

end A314047

/-! ## A314047.P12091567751610452843

`A004525(A004396(n))+A004277(A265187(2*n+1))`
-/

namespace A314047.P12091567751610452843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + A004277 (A265187 (2 * n + 1)).toNat

end

end A314047.P12091567751610452843

namespace A314047

/-- `A004525(A004396(n))+A004277(A265187(2*n+1))` -/
def P12091567751610452843.Spec : Prop :=
  ∀ n, P12091567751610452843.a n = A314047 n

theorem P12091567751610452843.correct : P12091567751610452843.Spec := by
  intro n
  simp only [A314047, Nat.add_sub_cancel, A314047.P12091567751610452843.a, A314047.P6128783489068935556.a, A004277, A004277.P16255821370285667660.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A265187, A265187.P4262766928689560207.a, A310412, A310412.P6181630566762096242.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314047

/-! ## A314047.P6854556089634456371

`A004525(A004396(n))+2*A312932(n)-A008574(n)`
-/

namespace A314047.P6854556089634456371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (2 * A312932 n - A008574 n)

end

end A314047.P6854556089634456371

namespace A314047

/-- `A004525(A004396(n))+2*A312932(n)-A008574(n)` -/
def P6854556089634456371.Spec : Prop :=
  ∀ n, P6854556089634456371.a n = A314047 n

end A314047

/-! ## A314047.P15796806300476174055

`A004525(A004396(n))+A004275(A265187(2*n+1)+1)`
-/

namespace A314047.P15796806300476174055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + A004275 (A265187 (2 * n + 1) + 1).toNat

end

end A314047.P15796806300476174055

namespace A314047

/-- `A004525(A004396(n))+A004275(A265187(2*n+1)+1)` -/
def P15796806300476174055.Spec : Prop :=
  ∀ n, P15796806300476174055.a n = A314047 n

end A314047

/-! ## A314047.P17626108482006778552

`A004525(A004396(n))+A000007(n)+2*A265187(2*n+1)`
-/

namespace A314047.P17626108482006778552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A000007 n + 2 * A265187 (2 * n + 1))

end

end A314047.P17626108482006778552

namespace A314047

/-- `A004525(A004396(n))+A000007(n)+2*A265187(2*n+1)` -/
def P17626108482006778552.Spec : Prop :=
  ∀ n, P17626108482006778552.a n = A314047 n

end A314047

/-! ## A314047.P238861885825217941

`A004525(A004396(n))+A029833(2*(n+1))+2*A265187(2*n+1)`
-/

namespace A314047.P238861885825217941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A029833 (2 * (n + 1)) + 2 * A265187 (2 * n + 1))

end

end A314047.P238861885825217941

namespace A314047

/-- `A004525(A004396(n))+A029833(2*(n+1))+2*A265187(2*n+1)` -/
def P238861885825217941.Spec : Prop :=
  ∀ n, P238861885825217941.a n = A314047 n

end A314047

/-! ## A314047.P9868253101776326684

`A004525(A004396(n))+2*A311816(2*n)-A008458(2*n)`
-/

namespace A314047.P9868253101776326684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (2 * A311816 (2 * n) - A008458 (2 * n))

end

end A314047.P9868253101776326684

namespace A314047

/-- `A004525(A004396(n))+2*A311816(2*n)-A008458(2*n)` -/
def P9868253101776326684.Spec : Prop :=
  ∀ n, P9868253101776326684.a n = A314047 n

end A314047

/-! ## A314047.P2879165952748303511

`A004525(A004396(n))+A312484(2*n)-4*n`
-/

namespace A314047.P2879165952748303511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312484 (2 * n) - (4 * n : ℤ))

end

end A314047.P2879165952748303511

namespace A314047

/-- `A004525(A004396(n))+A312484(2*n)-4*n` -/
def P2879165952748303511.Spec : Prop :=
  ∀ n, P2879165952748303511.a n = A314047 n

end A314047

/-!
# A314048: Coordination sequence Gal.6.618.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314048, the canonical program `A314048.P6753169348479549005` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314048 has offset 0).

The definition of A314048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314048.P6753169348479549005

`A310393(n)+A004525(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314048

/-- `A310393(n)+A004525(n)` -/
def P6753169348479549005.Spec : Prop :=
  ∀ n, P6753169348479549005.a n = A314048 n

theorem P6753169348479549005.correct : P6753169348479549005.Spec := by
  intro n
  simp only [A314048]

end A314048

/-! ## A314048.P13478303649470317679

`abs(A008592(n)-A315026(n))`
-/

namespace A314048.P13478303649470317679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315026 n|

end

end A314048.P13478303649470317679

namespace A314048

/-- `abs(A008592(n)-A315026(n))` -/
def P13478303649470317679.Spec : Prop :=
  ∀ n, P13478303649470317679.a n = A314048 n

end A314048

/-! ## A314048.P8402325738135409110

`A313611(n)+∑[A022003(n)]`
-/

namespace A314048.P8402325738135409110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313611 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314048.P8402325738135409110

namespace A314048

/-- `A313611(n)+∑[A022003(n)]` -/
def P8402325738135409110.Spec : Prop :=
  ∀ n, P8402325738135409110.a n = A314048 n

end A314048

/-! ## A314048.P5331899540348736527

`A310393(n)+Δ[A054925(n)]`
-/

namespace A314048.P5331899540348736527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310393 n + (f1 (n + 1) - f1 n)

end

end A314048.P5331899540348736527

namespace A314048

/-- `A310393(n)+Δ[A054925(n)]` -/
def P5331899540348736527.Spec : Prop :=
  ∀ n, P5331899540348736527.a n = A314048 n

end A314048

/-! ## A314048.P12533187945865903812

`A219529(n)-Δ[A011865(n)]`
-/

namespace A314048.P12533187945865903812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - (f1 (n + 1) - f1 n)

end

end A314048.P12533187945865903812

namespace A314048

/-- `A219529(n)-Δ[A011865(n)]` -/
def P12533187945865903812.Spec : Prop :=
  ∀ n, P12533187945865903812.a n = A314048 n

end A314048

/-! ## A314048.P17882176199557461452

`A313611(n)+n-A004396(n)`
-/

namespace A314048.P17882176199557461452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313611 n + ((n : ℤ) - A004396 n)

end

end A314048.P17882176199557461452

namespace A314048

/-- `A313611(n)+n-A004396(n)` -/
def P17882176199557461452.Spec : Prop :=
  ∀ n, P17882176199557461452.a n = A314048 n

end A314048

/-! ## A314048.P7744348740085234998

`A008576(2*n)-Δ[A011865(n)]`
-/

namespace A314048.P7744348740085234998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - (f1 (n + 1) - f1 n)

end

end A314048.P7744348740085234998

namespace A314048

/-- `A008576(2*n)-Δ[A011865(n)]` -/
def P7744348740085234998.Spec : Prop :=
  ∀ n, P7744348740085234998.a n = A314048 n

end A314048

/-! ## A314048.P10619298980222329481

`A313611(n)+A008615(2*n+1)`
-/

namespace A314048.P10619298980222329481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313611 n + A008615 (2 * n + 1)

end

end A314048.P10619298980222329481

namespace A314048

/-- `A313611(n)+A008615(2*n+1)` -/
def P10619298980222329481.Spec : Prop :=
  ∀ n, P10619298980222329481.a n = A314048 n

end A314048

/-! ## A314048.P3666497052498498989

`A310410(n)+A004396(A004525(n))`
-/

namespace A314048.P3666497052498498989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310410 n + A004396 (A004525 n).toNat

end

end A314048.P3666497052498498989

namespace A314048

/-- `A310410(n)+A004396(A004525(n))` -/
def P3666497052498498989.Spec : Prop :=
  ∀ n, P3666497052498498989.a n = A314048 n

theorem P3666497052498498989.correct : P3666497052498498989.Spec := by
  intro n
  simp only [A314048, Nat.add_sub_cancel, A314048.P3666497052498498989.a, A314048.P6753169348479549005.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A310393, A310393.P12744869705430097846.a, A310410, A310410.P13699142073105713236.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314048

/-! ## A314048.P11668652174759130461

`A008486(n)+A313611(n)-A008576(n)`
-/

namespace A314048.P11668652174759130461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313611 n - A008576 n)

end

end A314048.P11668652174759130461

namespace A314048

/-- `A008486(n)+A313611(n)-A008576(n)` -/
def P11668652174759130461.Spec : Prop :=
  ∀ n, P11668652174759130461.a n = A314048 n

end A314048

/-! ## A314048.P7880330955148345500

`A008458(n)+A008574(n)-A315026(n)`
-/

namespace A314048.P7880330955148345500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315026 n)

end

end A314048.P7880330955148345500

namespace A314048

/-- `A008458(n)+A008574(n)-A315026(n)` -/
def P7880330955148345500.Spec : Prop :=
  ∀ n, P7880330955148345500.a n = A314048 n

end A314048

/-! ## A314048.P6402221058998178278

`A004525(n)+A314142(n)-A004396(n)`
-/

namespace A314048.P6402221058998178278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314142 n - A004396 n)

end

end A314048.P6402221058998178278

namespace A314048

/-- `A004525(n)+A314142(n)-A004396(n)` -/
def P6402221058998178278.Spec : Prop :=
  ∀ n, P6402221058998178278.a n = A314048 n

theorem P6402221058998178278.correct : P6402221058998178278.Spec := by
  intro n
  simp only [A314048, Nat.add_sub_cancel, A314048.P6402221058998178278.a, A314048.P6753169348479549005.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A310393, A310393.P12744869705430097846.a, A314142, A314142.P8377752906736418581.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314048

/-! ## A314048.P13972897008960020160

`A315649(n)-A004525(A004396(n))`
-/

namespace A314048.P13972897008960020160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315649 n - A004525 (A004396 n).toNat

end

end A314048.P13972897008960020160

namespace A314048

/-- `A315649(n)-A004525(A004396(n))` -/
def P13972897008960020160.Spec : Prop :=
  ∀ n, P13972897008960020160.a n = A314048 n

theorem P13972897008960020160.correct : P13972897008960020160.Spec := by
  intro n
  simp only [A314048, Nat.add_sub_cancel, A314048.P13972897008960020160.a, A314048.P6753169348479549005.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A310393, A310393.P12744869705430097846.a, A315649, A315649.P5476829177456958284.a, A312933, A312933.P2044792691388858937.a, A314022, A314022.P5759349393798454835.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314048

/-! ## A314048.P3273694759689088253

`A004525(A310472(2*n))`
-/

namespace A314048.P3273694759689088253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310472 (2 * n)).toNat

end

end A314048.P3273694759689088253

namespace A314048

/-- `A004525(A310472(2*n))` -/
def P3273694759689088253.Spec : Prop :=
  ∀ n, P3273694759689088253.a n = A314048 n

end A314048

/-! ## A314048.P1097857129727735872

`A004525(A310511(2*n))`
-/

namespace A314048.P1097857129727735872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310511 (2 * n)).toNat

end

end A314048.P1097857129727735872

namespace A314048

/-- `A004525(A310511(2*n))` -/
def P1097857129727735872.Spec : Prop :=
  ∀ n, P1097857129727735872.a n = A314048 n

end A314048

/-! ## A314048.P17261230976451031903

`A004525(A313781(2*n))`
-/

namespace A314048.P17261230976451031903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313781 (2 * n)).toNat

end

end A314048.P17261230976451031903

namespace A314048

/-- `A004525(A313781(2*n))` -/
def P17261230976451031903.Spec : Prop :=
  ∀ n, P17261230976451031903.a n = A314048 n

end A314048

/-! ## A314048.P6282195408677695094

`A004525(A313791(2*n))`
-/

namespace A314048.P6282195408677695094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313791 (2 * n)).toNat

end

end A314048.P6282195408677695094

namespace A314048

/-- `A004525(A313791(2*n))` -/
def P6282195408677695094.Spec : Prop :=
  ∀ n, P6282195408677695094.a n = A314048 n

end A314048

/-! ## A314048.P3583625085936227386

`A004525(A313862(2*n))`
-/

namespace A314048.P3583625085936227386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313862 (2 * n)).toNat

end

end A314048.P3583625085936227386

namespace A314048

/-- `A004525(A313862(2*n))` -/
def P3583625085936227386.Spec : Prop :=
  ∀ n, P3583625085936227386.a n = A314048 n

end A314048

/-! ## A314048.P345838534390113174

`A004525(A313872(2*n))`
-/

namespace A314048.P345838534390113174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313872 (2 * n)).toNat

end

end A314048.P345838534390113174

namespace A314048

/-- `A004525(A313872(2*n))` -/
def P345838534390113174.Spec : Prop :=
  ∀ n, P345838534390113174.a n = A314048 n

end A314048

/-!
# A314049: Coordination sequence Gal.3.51.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314049, the canonical program `A314049.P18135787733633464436` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314049 has offset 0).

The definition of A314049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314049.P1153337266963320344

`abs(10*n-A250120(n))`
-/

namespace A314049.P1153337266963320344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A250120 n|

end

end A314049.P1153337266963320344

namespace A314049

/-- `abs(10*n-A250120(n))` -/
def P1153337266963320344.Spec : Prop :=
  ∀ n, P1153337266963320344.a n = A314049 n

end A314049

/-! ## A314049.P5808786543517279435

`A250120(4*n)-14*n`
-/

namespace A314049.P5808786543517279435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (4 * n) - (14 * n : ℤ)

end

end A314049.P5808786543517279435

namespace A314049

/-- `A250120(4*n)-14*n` -/
def P5808786543517279435.Spec : Prop :=
  ∀ n, P5808786543517279435.a n = A314049 n

end A314049

/-! ## A314049.P15690310782460407746

`A047412(2*(n+1))+comp[2*(n+1)]`
-/

namespace A314049.P15690310782460407746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047412 (2 * (n + 1)) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A314049.P15690310782460407746

namespace A314049

/-- `A047412(2*(n+1))+comp[2*(n+1)]` -/
def P15690310782460407746.Spec : Prop :=
  ∀ n, P15690310782460407746.a n = A314049 n

end A314049

/-! ## A314049.P8912573620385110597

`A310518(n)+A244895(n)`
-/

namespace A314049.P8912573620385110597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310518 n + A244895 n

end

end A314049.P8912573620385110597

namespace A314049

/-- `A310518(n)+A244895(n)` -/
def P8912573620385110597.Spec : Prop :=
  ∀ n, P8912573620385110597.a n = A314049 n

end A314049

/-! ## A314049.P6849198487594030137

`A330025(n)+A310422(n)`
-/

namespace A314049.P6849198487594030137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A310422 n

end

end A314049.P6849198487594030137

namespace A314049

/-- `A330025(n)+A310422(n)` -/
def P6849198487594030137.Spec : Prop :=
  ∀ n, P6849198487594030137.a n = A314049 n

end A314049

/-! ## A314049.P9438963836511807025

`A315610(n)-A244895(n)`
-/

namespace A314049.P9438963836511807025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315610 n - A244895 n

end

end A314049.P9438963836511807025

namespace A314049

/-- `A315610(n)-A244895(n)` -/
def P9438963836511807025.Spec : Prop :=
  ∀ n, P9438963836511807025.a n = A314049 n

end A314049

/-! ## A314049.P4519844309663744789

`A315644(n)-A330025(n)`
-/

namespace A314049.P4519844309663744789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315644 n - A330025 n

end

end A314049.P4519844309663744789

namespace A314049

/-- `A315644(n)-A330025(n)` -/
def P4519844309663744789.Spec : Prop :=
  ∀ n, P4519844309663744789.a n = A314049 n

end A314049

/-! ## A314049.P18135787733633464436

`A313568(n)+Δ[A011858(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A314049

/-- `A313568(n)+Δ[A011858(n)]` -/
def P18135787733633464436.Spec : Prop :=
  ∀ n, P18135787733633464436.a n = A314049 n

theorem P18135787733633464436.correct : P18135787733633464436.Spec := by
  intro n
  simp only [A314049]

end A314049

/-! ## A314049.P6891518243928674053

`A313568(n)+A057354(n+1)`
-/

namespace A314049.P6891518243928674053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n + A057354 (n + 1)

end

end A314049.P6891518243928674053

namespace A314049

/-- `A313568(n)+A057354(n+1)` -/
def P6891518243928674053.Spec : Prop :=
  ∀ n, P6891518243928674053.a n = A314049 n

end A314049

/-! ## A314049.P12905736106438158117

`2*A008706(n)-A250120(n)`
-/

namespace A314049.P12905736106438158117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A250120 n

end

end A314049.P12905736106438158117

namespace A314049

/-- `2*A008706(n)-A250120(n)` -/
def P12905736106438158117.Spec : Prop :=
  ∀ n, P12905736106438158117.a n = A314049 n

end A314049

/-! ## A314049.P12983773848398142762

`A004525(A072154(n))+4*n`
-/

namespace A314049.P12983773848398142762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A072154 n).toNat + (4 * n : ℤ)

end

end A314049.P12983773848398142762

namespace A314049

/-- `A004525(A072154(n))+4*n` -/
def P12983773848398142762.Spec : Prop :=
  ∀ n, P12983773848398142762.a n = A314049 n

end A314049

/-! ## A314049.P9063185554716184404

`A068962(A008486(n))+4*n`
-/

namespace A314049.P9063185554716184404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A008486 n).toNat + (4 * n : ℤ)

end

end A314049.P9063185554716184404

namespace A314049

/-- `A068962(A008486(n))+4*n` -/
def P9063185554716184404.Spec : Prop :=
  ∀ n, P9063185554716184404.a n = A314049 n

end A314049

/-! ## A314049.P1849165864511963769

`A047486(2*n+1)+A004277(n)`
-/

namespace A314049.P1849165864511963769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (2 * n + 1) + A004277 n

end

end A314049.P1849165864511963769

namespace A314049

/-- `A047486(2*n+1)+A004277(n)` -/
def P1849165864511963769.Spec : Prop :=
  ∀ n, P1849165864511963769.a n = A314049 n

end A314049

/-! ## A314049.P8926026922229473907

`A022144(n)-A047363(2*n+1)`
-/

namespace A314049.P8926026922229473907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A047363 (2 * n + 1)

end

end A314049.P8926026922229473907

namespace A314049

/-- `A022144(n)-A047363(2*n+1)` -/
def P8926026922229473907.Spec : Prop :=
  ∀ n, P8926026922229473907.a n = A314049 n

end A314049

/-! ## A314049.P11762097658912218560

`A047486(2*n+1)+A004275(n+1)`
-/

namespace A314049.P11762097658912218560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (2 * n + 1) + A004275 (n + 1)

end

end A314049.P11762097658912218560

namespace A314049

/-- `A047486(2*n+1)+A004275(n+1)` -/
def P11762097658912218560.Spec : Prop :=
  ∀ n, P11762097658912218560.a n = A314049 n

end A314049

/-! ## A314049.P14835602145888332819

`A047486(2*n+1)+A028310(2*n)`
-/

namespace A314049.P14835602145888332819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (2 * n + 1) + A028310 (2 * n)

end

end A314049.P14835602145888332819

namespace A314049

/-- `A047486(2*n+1)+A028310(2*n)` -/
def P14835602145888332819.Spec : Prop :=
  ∀ n, P14835602145888332819.a n = A314049 n

end A314049

/-! ## A314049.P8753252711438362860

`A008574(2*n)-A047363(2*n+1)`
-/

namespace A314049.P8753252711438362860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A047363 (2 * n + 1)

end

end A314049.P8753252711438362860

namespace A314049

/-- `A008574(2*n)-A047363(2*n+1)` -/
def P8753252711438362860.Spec : Prop :=
  ∀ n, P8753252711438362860.a n = A314049 n

end A314049

/-! ## A314049.P721989701701632108

`A047486(2*n+1)+A004280(n+2)-1`
-/

namespace A314049.P721989701701632108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (2 * n + 1) + (A004280 (n + 2) - 1)

end

end A314049.P721989701701632108

namespace A314049

/-- `A047486(2*n+1)+A004280(n+2)-1` -/
def P721989701701632108.Spec : Prop :=
  ∀ n, P721989701701632108.a n = A314049 n

end A314049

/-! ## A314049.P13527112882609780721

`A008458(n)-A004525(A047486(n+1))`
-/

namespace A314049.P13527112882609780721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A047486 (n + 1)).toNat

end

end A314049.P13527112882609780721

namespace A314049

/-- `A008458(n)-A004525(A047486(n+1))` -/
def P13527112882609780721.Spec : Prop :=
  ∀ n, P13527112882609780721.a n = A314049 n

end A314049

/-! ## A314049.P8227374328367317940

`A008458(n)+A008574(n)-A250120(n)`
-/

namespace A314049.P8227374328367317940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A250120 n)

end

end A314049.P8227374328367317940

namespace A314049

/-- `A008458(n)+A008574(n)-A250120(n)` -/
def P8227374328367317940.Spec : Prop :=
  ∀ n, P8227374328367317940.a n = A314049 n

end A314049

/-!
# A314050: Coordination sequence Gal.6.500.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314050, there is no canonical definition to state claims against.
-/

/-! ## A314050.P9844561528806003417

`(A314279(n)+A301678(n))/2`
-/

namespace A314050.P9844561528806003417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314279 n + A301678 n : ℚ) / 2

end

end A314050.P9844561528806003417

/-! ## A314050.P8631916776463916112

`A014682(A314279(n)+A301678(n))`
-/

namespace A314050.P8631916776463916112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A314279 n + A301678 n).toNat

end

end A314050.P8631916776463916112

/-! ## A314050.P18256280118372565335

`A004525(A314279(n)+A301678(n))`
-/

namespace A314050.P18256280118372565335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314279 n + A301678 n).toNat

end

end A314050.P18256280118372565335

/-! ## A314050.P1670090236302874318

`A004526(A314279(n)+A301678(n))`
-/

namespace A314050.P1670090236302874318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A314279 n + A301678 n).toNat

end

end A314050.P1670090236302874318

/-! ## A314050.P14674734289420031210

`A078898(A314279(n)+A301678(n))`
-/

namespace A314050.P14674734289420031210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A314279 n + A301678 n).toNat

end

end A314050.P14674734289420031210

/-!
# A314051: Coordination sequence Gal.5.308.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314051, the canonical program `A314051.P823501490617282787` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314051 has offset 0).

The definition of A314051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314051.P823501490617282787

`A313614(n)+∑[A022003(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314051

/-- `A313614(n)+∑[A022003(n)]` -/
def P823501490617282787.Spec : Prop :=
  ∀ n, P823501490617282787.a n = A314051 n

theorem P823501490617282787.correct : P823501490617282787.Spec := by
  intro n
  simp only [A314051]

end A314051

/-! ## A314051.P12413145090572909175

`A313614(n)+A002264(n+1)`
-/

namespace A314051.P12413145090572909175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313614 n + A002264 (n + 1)

end

end A314051.P12413145090572909175

namespace A314051

/-- `A313614(n)+A002264(n+1)` -/
def P12413145090572909175.Spec : Prop :=
  ∀ n, P12413145090572909175.a n = A314051 n

end A314051

/-! ## A314051.P3945782425966261917

`A312932(n)+n-Δ[A011862(n)]`
-/

namespace A314051.P3945782425966261917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312932 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314051.P3945782425966261917

namespace A314051

/-- `A312932(n)+n-Δ[A011862(n)]` -/
def P3945782425966261917.Spec : Prop :=
  ∀ n, P3945782425966261917.a n = A314051 n

end A314051

/-! ## A314051.P8814278820148952705

`A313614(n)+A008615(2*n+1)`
-/

namespace A314051.P8814278820148952705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313614 n + A008615 (2 * n + 1)

end

end A314051.P8814278820148952705

namespace A314051

/-- `A313614(n)+A008615(2*n+1)` -/
def P8814278820148952705.Spec : Prop :=
  ∀ n, P8814278820148952705.a n = A314051 n

end A314051

/-! ## A314051.P13069585147338888529

`A313614(n)+A008647(A016813(n))`
-/

namespace A314051.P13069585147338888529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313614 n + A008647 (A016813 n).toNat

end

end A314051.P13069585147338888529

namespace A314051

/-- `A313614(n)+A008647(A016813(n))` -/
def P13069585147338888529.Spec : Prop :=
  ∀ n, P13069585147338888529.a n = A314051 n

end A314051

/-! ## A314051.P17043501690109981024

`A314039(n)+A002264(A086161(n))`
-/

namespace A314051.P17043501690109981024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314039 n + A002264 (A086161 n).toNat

end

end A314051.P17043501690109981024

namespace A314051

/-- `A314039(n)+A002264(A086161(n))` -/
def P17043501690109981024.Spec : Prop :=
  ∀ n, P17043501690109981024.a n = A314051 n

end A314051

/-! ## A314051.P11598060430599198507

`A313614(n)+A110654(A004523(n))`
-/

namespace A314051.P11598060430599198507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313614 n + A110654 (A004523 n).toNat

end

end A314051.P11598060430599198507

namespace A314051

/-- `A313614(n)+A110654(A004523(n))` -/
def P11598060430599198507.Spec : Prop :=
  ∀ n, P11598060430599198507.a n = A314051 n

end A314051

/-! ## A314051.P11667412738730947551

`A008486(n)+A313614(n)-A008576(n)`
-/

namespace A314051.P11667412738730947551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313614 n - A008576 n)

end

end A314051.P11667412738730947551

namespace A314051

/-- `A008486(n)+A313614(n)-A008576(n)` -/
def P11667412738730947551.Spec : Prop :=
  ∀ n, P11667412738730947551.a n = A314051 n

end A314051

/-! ## A314051.P4634988965044918127

`A004396(A314067(n)+n)+n`
-/

namespace A314051.P4634988965044918127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314067 n + (n : ℤ)).toNat + (n : ℤ)

end

end A314051.P4634988965044918127

namespace A314051

/-- `A004396(A314067(n)+n)+n` -/
def P4634988965044918127.Spec : Prop :=
  ∀ n, P4634988965044918127.a n = A314051 n

end A314051

/-! ## A314051.P1791073994363904972

`A004396(A313201(2*n))-n`
-/

namespace A314051.P1791073994363904972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313201 (2 * n)).toNat - (n : ℤ)

end

end A314051.P1791073994363904972

namespace A314051

/-- `A004396(A313201(2*n))-n` -/
def P1791073994363904972.Spec : Prop :=
  ∀ n, P1791073994363904972.a n = A314051 n

end A314051

/-!
# A314052: Coordination sequence Gal.6.639.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314052, the canonical program `A314052.P7255477605862144474` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314052 has offset 0).

The definition of A314052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314052.P10567840349044095065

`abs(A008592(n)-A315024(n))`
-/

namespace A314052.P10567840349044095065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315024 n|

end

end A314052.P10567840349044095065

namespace A314052

/-- `abs(A008592(n)-A315024(n))` -/
def P10567840349044095065.Spec : Prop :=
  ∀ n, P10567840349044095065.a n = A314052 n

end A314052

/-! ## A314052.P17612795437204323932

`A008458(n)+A008574(n)-A315024(n)`
-/

namespace A314052.P17612795437204323932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315024 n)

end

end A314052.P17612795437204323932

namespace A314052

/-- `A008458(n)+A008574(n)-A315024(n)` -/
def P17612795437204323932.Spec : Prop :=
  ∀ n, P17612795437204323932.a n = A314052 n

end A314052

/-! ## A314052.P255114541062247922

`A314133(n)-Δ[A011864(n)]`
-/

namespace A314052.P255114541062247922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314133 n - (f1 (n + 1) - f1 n)

end

end A314052.P255114541062247922

namespace A314052

/-- `A314133(n)-Δ[A011864(n)]` -/
def P255114541062247922.Spec : Prop :=
  ∀ n, P255114541062247922.a n = A314052 n

theorem P255114541062247922.correct : P255114541062247922.Spec := by
  intro n
  simp only [A314052, Nat.add_sub_cancel, A314052.P255114541062247922.f1, A314052.P255114541062247922.a, A314052.P7255477605862144474.a, A004396, A004396.P17032557045289780609.a, A011864, A011864.P3547417513882699266.a, A310413, A310413.P8448103510463690505.a, A314133, A314133.P10587469180771269075.f1, A314133.P10587469180771269075.a, A008592, A008592.P4981059802862696142.a, A315307, A315307.P8009587205543921801.a, A008574, A008574.P1300280032690682112.a, A314837, A314837.P13056047557632493089.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314052

/-! ## A314052.P7255477605862144474

`2*n+A004396(A310413(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314052

/-- `2*n+A004396(A310413(n))` -/
def P7255477605862144474.Spec : Prop :=
  ∀ n, P7255477605862144474.a n = A314052 n

theorem P7255477605862144474.correct : P7255477605862144474.Spec := by
  intro n
  simp only [A314052]

end A314052

/-! ## A314052.P17805008979571002220

`A004396(A313572(n))+2*n`
-/

namespace A314052.P17805008979571002220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313572 n).toNat + (2 * n : ℤ)

end

end A314052.P17805008979571002220

namespace A314052

/-- `A004396(A313572(n))+2*n` -/
def P17805008979571002220.Spec : Prop :=
  ∀ n, P17805008979571002220.a n = A314052 n

end A314052

/-! ## A314052.P16615829420838192246

`A005843(n)+A004396(A313572(n))`
-/

namespace A314052.P16615829420838192246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A313572 n).toNat

end

end A314052.P16615829420838192246

namespace A314052

/-- `A005843(n)+A004396(A313572(n))` -/
def P16615829420838192246.Spec : Prop :=
  ∀ n, P16615829420838192246.a n = A314052 n

end A314052

/-! ## A314052.P17667309574975079510

`A008585(n)-(n-A004396(A310413(n)))`
-/

namespace A314052.P17667309574975079510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A310413 n).toNat)

end

end A314052.P17667309574975079510

namespace A314052

/-- `A008585(n)-(n-A004396(A310413(n)))` -/
def P17667309574975079510.Spec : Prop :=
  ∀ n, P17667309574975079510.a n = A314052 n

theorem P17667309574975079510.correct : P17667309574975079510.Spec := by
  intro n
  simp only [A314052, Nat.add_sub_cancel, A314052.P17667309574975079510.a, A314052.P7255477605862144474.a, A004396, A004396.P17032557045289780609.a, A008585, A008585.P13732812384316341435.a, A310413, A310413.P8448103510463690505.a, A008592, A008592.P4981059802862696142.a, A315307, A315307.P8009587205543921801.a, A008574, A008574.P1300280032690682112.a, A314837, A314837.P13056047557632493089.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314052

/-! ## A314052.P15104145352139580499

`A274616(A310413(n)+3*n)`
-/

namespace A314052.P15104145352139580499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A310413 n + (3 * n : ℤ)).toNat

end

end A314052.P15104145352139580499

namespace A314052

/-- `A274616(A310413(n)+3*n)` -/
def P15104145352139580499.Spec : Prop :=
  ∀ n, P15104145352139580499.a n = A314052 n

end A314052

/-! ## A314052.P1121660046815499627

`A004396(A310413(n)+A008486(n))`
-/

namespace A314052.P1121660046815499627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310413 n + A008486 n).toNat

end

end A314052.P1121660046815499627

namespace A314052

/-- `A004396(A310413(n)+A008486(n))` -/
def P1121660046815499627.Spec : Prop :=
  ∀ n, P1121660046815499627.a n = A314052 n

end A314052

/-! ## A314052.P14227707474706507600

`A004396(A310413(n)+A008585(n))`
-/

namespace A314052.P14227707474706507600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310413 n + A008585 n).toNat

end

end A314052.P14227707474706507600

namespace A314052

/-- `A004396(A310413(n)+A008585(n))` -/
def P14227707474706507600.Spec : Prop :=
  ∀ n, P14227707474706507600.a n = A314052 n

end A314052

/-! ## A314052.P12297250454110601428

`A004396(A315492(2*n)-A008585(n))`
-/

namespace A314052.P12297250454110601428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315492 (2 * n) - A008585 n).toNat

end

end A314052.P12297250454110601428

namespace A314052

/-- `A004396(A315492(2*n)-A008585(n))` -/
def P12297250454110601428.Spec : Prop :=
  ∀ n, P12297250454110601428.a n = A314052 n

end A314052

/-! ## A314052.P2553793489531600429

`A004396(A315340(2*n)-A008585(n))`
-/

namespace A314052.P2553793489531600429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315340 (2 * n) - A008585 n).toNat

end

end A314052.P2553793489531600429

namespace A314052

/-- `A004396(A315340(2*n)-A008585(n))` -/
def P2553793489531600429.Spec : Prop :=
  ∀ n, P2553793489531600429.a n = A314052 n

end A314052

/-! ## A314052.P5230510552878766104

`A028310(A313887(2*n)-A313887(n))`
-/

namespace A314052.P5230510552878766104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A313887 (2 * n) - A313887 n).toNat

end

end A314052.P5230510552878766104

namespace A314052

/-- `A028310(A313887(2*n)-A313887(n))` -/
def P5230510552878766104.Spec : Prop :=
  ∀ n, P5230510552878766104.a n = A314052 n

end A314052

/-! ## A314052.P17860569136707969659

`A004525(A315277(2*n))`
-/

namespace A314052.P17860569136707969659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315277 (2 * n)).toNat

end

end A314052.P17860569136707969659

namespace A314052

/-- `A004525(A315277(2*n))` -/
def P17860569136707969659.Spec : Prop :=
  ∀ n, P17860569136707969659.a n = A314052 n

end A314052

/-! ## A314052.P14300310756092204211

`A004525(A315486(2*n))`
-/

namespace A314052.P14300310756092204211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315486 (2 * n)).toNat

end

end A314052.P14300310756092204211

namespace A314052

/-- `A004525(A315486(2*n))` -/
def P14300310756092204211.Spec : Prop :=
  ∀ n, P14300310756092204211.a n = A314052 n

end A314052

/-! ## A314052.P14918175742835779479

`A004396(A315340(2*n))-A005843(n)`
-/

namespace A314052.P14918175742835779479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315340 (2 * n)).toNat - A005843 n

end

end A314052.P14918175742835779479

namespace A314052

/-- `A004396(A315340(2*n))-A005843(n)` -/
def P14918175742835779479.Spec : Prop :=
  ∀ n, P14918175742835779479.a n = A314052 n

end A314052

/-! ## A314052.P8928279847729056354

`A004396(A315492(2*n))-A005843(n)`
-/

namespace A314052.P8928279847729056354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315492 (2 * n)).toNat - A005843 n

end

end A314052.P8928279847729056354

namespace A314052

/-- `A004396(A315492(2*n))-A005843(n)` -/
def P8928279847729056354.Spec : Prop :=
  ∀ n, P8928279847729056354.a n = A314052 n

end A314052

/-!
# A314053: Coordination sequence Gal.5.311.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314053, there is no canonical definition to state claims against.
-/

/-! ## A314053.P14901791117383137087

`A004277(A022144(n))-A314126(2*n)`
-/

namespace A314053.P14901791117383137087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A022144 n).toNat - A314126 (2 * n)

end

end A314053.P14901791117383137087

/-! ## A314053.P4275201292716353693

`2*A022144(n)-A314126(A005843(n))`
-/

namespace A314053.P4275201292716353693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022144 n - A314126 (A005843 n).toNat

end

end A314053.P4275201292716353693

/-! ## A314053.P9935762547736348136

`A005843(A022144(n))-A314126(A005843(n))`
-/

namespace A314053.P9935762547736348136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A022144 n).toNat - A314126 (A005843 n).toNat

end

end A314053.P9935762547736348136

/-! ## A314053.P17624025170848778198

`A004525(A314075(n)+A314046(n))`
-/

namespace A314053.P17624025170848778198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314075 n + A314046 n).toNat

end

end A314053.P17624025170848778198

/-! ## A314053.P5545217859835745897

`A314126(n)-A188510(A204519(n+1))`
-/

namespace A314053.P5545217859835745897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314126 n - A188510 (A204519 (n + 1)).toNat

end

end A314053.P5545217859835745897

/-!
# A314054: Coordination sequence Gal.4.142.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314054, the canonical program `A314054.P9922859689794149841` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314054 has offset 0).

The definition of A314054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314054.P17782573239533765354

`A008458(n)-A004525(A008458(n)-A314691(n))`
-/

namespace A314054.P17782573239533765354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A314691 n).toNat

end

end A314054.P17782573239533765354

namespace A314054

/-- `A008458(n)-A004525(A008458(n)-A314691(n))` -/
def P17782573239533765354.Spec : Prop :=
  ∀ n, P17782573239533765354.a n = A314054 n

end A314054

/-! ## A314054.P9922859689794149841

`A313754(n)+A128834(A142150(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314054

/-- `A313754(n)+A128834(A142150(n))` -/
def P9922859689794149841.Spec : Prop :=
  ∀ n, P9922859689794149841.a n = A314054 n

theorem P9922859689794149841.correct : P9922859689794149841.Spec := by
  intro n
  simp only [A314054]

end A314054

/-! ## A314054.P2607217272189918879

`A315639(n)-A102283(A004525(n))`
-/

namespace A314054.P2607217272189918879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315639 n - A102283 (A004525 n).toNat

end

end A314054.P2607217272189918879

namespace A314054

/-- `A315639(n)-A102283(A004525(n))` -/
def P2607217272189918879.Spec : Prop :=
  ∀ n, P2607217272189918879.a n = A314054 n

end A314054

/-! ## A314054.P18195984226483608073

`A315639(n)+A102283(2*A004525(n))`
-/

namespace A314054.P18195984226483608073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315639 n + A102283 (2 * A004525 n).toNat

end

end A314054.P18195984226483608073

namespace A314054

/-- `A315639(n)+A102283(2*A004525(n))` -/
def P18195984226483608073.Spec : Prop :=
  ∀ n, P18195984226483608073.a n = A314054 n

end A314054

/-! ## A314054.P15879492903762896463

`A315641(n)-A134667(A004525(n))`
-/

namespace A314054.P15879492903762896463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315641 n - A134667 (A004525 n).toNat

end

end A314054.P15879492903762896463

namespace A314054

/-- `A315641(n)-A134667(A004525(n))` -/
def P15879492903762896463.Spec : Prop :=
  ∀ n, P15879492903762896463.a n = A314054 n

end A314054

/-! ## A314054.P3656225359927469213

`A314134(n)-Δ[A011865(n)]`
-/

namespace A314054.P3656225359927469213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314134 n - (f1 (n + 1) - f1 n)

end

end A314054.P3656225359927469213

namespace A314054

/-- `A314134(n)-Δ[A011865(n)]` -/
def P3656225359927469213.Spec : Prop :=
  ∀ n, P3656225359927469213.a n = A314054 n

end A314054

/-! ## A314054.P3155864033076753745

`A314254(n)-A004524(A030118(n))`
-/

namespace A314054.P3155864033076753745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314254 n - A004524 (A030118 n).toNat

end

end A314054.P3155864033076753745

namespace A314054

/-- `A314254(n)-A004524(A030118(n))` -/
def P3155864033076753745.Spec : Prop :=
  ∀ n, P3155864033076753745.a n = A314054 n

end A314054

/-! ## A314054.P5355430596130277175

`A004396(2*A312933(n)-n)`
-/

namespace A314054.P5355430596130277175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A312933 n - (n : ℤ)).toNat

end

end A314054.P5355430596130277175

namespace A314054

/-- `A004396(2*A312933(n)-n)` -/
def P5355430596130277175.Spec : Prop :=
  ∀ n, P5355430596130277175.a n = A314054 n

end A314054

/-! ## A314054.P4765041463591607672

`A004396(A312933(n)+A312933(n)-n)`
-/

namespace A314054.P4765041463591607672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312933 n + (A312933 n - (n : ℤ))).toNat

end

end A314054.P4765041463591607672

namespace A314054

/-- `A004396(A312933(n)+A312933(n)-n)` -/
def P4765041463591607672.Spec : Prop :=
  ∀ n, P4765041463591607672.a n = A314054 n

end A314054

/-! ## A314054.P12847665724302848148

`A004396(A312933(n)-(n-A312933(n)))`
-/

namespace A314054.P12847665724302848148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312933 n - ((n : ℤ) - A312933 n)).toNat

end

end A314054.P12847665724302848148

namespace A314054

/-- `A004396(A312933(n)-(n-A312933(n)))` -/
def P12847665724302848148.Spec : Prop :=
  ∀ n, P12847665724302848148.a n = A314054 n

end A314054

/-! ## A314054.P17169811629597578305

`A004525(A314691(n)+A008458(n))`
-/

namespace A314054.P17169811629597578305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314691 n + A008458 n).toNat

end

end A314054.P17169811629597578305

namespace A314054

/-- `A004525(A314691(n)+A008458(n))` -/
def P17169811629597578305.Spec : Prop :=
  ∀ n, P17169811629597578305.a n = A314054 n

end A314054

/-! ## A314054.P9651069729039956018

`A004525(A314691(n)+A008588(n))`
-/

namespace A314054.P9651069729039956018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314691 n + A008588 n).toNat

end

end A314054.P9651069729039956018

namespace A314054

/-- `A004525(A314691(n)+A008588(n))` -/
def P9651069729039956018.Spec : Prop :=
  ∀ n, P9651069729039956018.a n = A314054 n

end A314054

/-! ## A314054.P967871402928281399

`A004525(A313592(n)+A301710(n))`
-/

namespace A314054.P967871402928281399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313592 n + A301710 n).toNat

end

end A314054.P967871402928281399

namespace A314054

/-- `A004525(A313592(n)+A301710(n))` -/
def P967871402928281399.Spec : Prop :=
  ∀ n, P967871402928281399.a n = A314054 n

end A314054

/-! ## A314054.P7062123575403383457

`A004525(A314066(n)+A310466(n))`
-/

namespace A314054.P7062123575403383457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314066 n + A310466 n).toNat

end

end A314054.P7062123575403383457

namespace A314054

/-- `A004525(A314066(n)+A310466(n))` -/
def P7062123575403383457.Spec : Prop :=
  ∀ n, P7062123575403383457.a n = A314054 n

end A314054

/-! ## A314054.P1041107773589485495

`A004525(A064429(n)+2*A310400(n))`
-/

namespace A314054.P1041107773589485495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A064429 n + 2 * A310400 n).toNat

end

end A314054.P1041107773589485495

namespace A314054

/-- `A004525(A064429(n)+2*A310400(n))` -/
def P1041107773589485495.Spec : Prop :=
  ∀ n, P1041107773589485495.a n = A314054 n

end A314054

/-! ## A314054.P3240565646259911329

`A004525(A310400(n)+A310400(n)+A064429(n))`
-/

namespace A314054.P3240565646259911329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310400 n + (A310400 n + A064429 n)).toNat

end

end A314054.P3240565646259911329

namespace A314054

/-- `A004525(A310400(n)+A310400(n)+A064429(n))` -/
def P3240565646259911329.Spec : Prop :=
  ∀ n, P3240565646259911329.a n = A314054 n

end A314054

/-!
# A314055: Coordination sequence Gal.4.143.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314055, the canonical program `A314055.P1017858823170680272` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314055 has offset 0).

The definition of A314055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314055.P1017858823170680272

`A072154(n)+A310411(n)-A004277(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314055

/-- `A072154(n)+A310411(n)-A004277(n)` -/
def P1017858823170680272.Spec : Prop :=
  ∀ n, P1017858823170680272.a n = A314055 n

theorem P1017858823170680272.correct : P1017858823170680272.Spec := by
  intro n
  simp only [A314055]

end A314055

/-! ## A314055.P8228226426502491802

`A022144(n)+A072154(n)-A315309(n)`
-/

namespace A314055.P8228226426502491802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n + (A072154 n - A315309 n)

end

end A314055.P8228226426502491802

namespace A314055

/-- `A022144(n)+A072154(n)-A315309(n)` -/
def P8228226426502491802.Spec : Prop :=
  ∀ n, P8228226426502491802.a n = A314055 n

end A314055

/-! ## A314055.P4772586576589343624

`A008458(n)+A314685(n)-A315309(n)`
-/

namespace A314055.P4772586576589343624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A314685 n - A315309 n)

end

end A314055.P4772586576589343624

namespace A314055

/-- `A008458(n)+A314685(n)-A315309(n)` -/
def P4772586576589343624.Spec : Prop :=
  ∀ n, P4772586576589343624.a n = A314055 n

end A314055

/-! ## A314055.P769112641518230289

`A072154(n)+A005843(A008458(n)-A314838(n))`
-/

namespace A314055.P769112641518230289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + A005843 (A008458 n - A314838 n).toNat

end

end A314055.P769112641518230289

namespace A314055

/-- `A072154(n)+A005843(A008458(n)-A314838(n))` -/
def P769112641518230289.Spec : Prop :=
  ∀ n, P769112641518230289.a n = A314055 n

end A314055

/-! ## A314055.P14830962664871749732

`2*A314148(n)-A301718(n)`
-/

namespace A314055.P14830962664871749732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314148 n - A301718 n

end

end A314055.P14830962664871749732

namespace A314055

/-- `2*A314148(n)-A301718(n)` -/
def P14830962664871749732.Spec : Prop :=
  ∀ n, P14830962664871749732.a n = A314055 n

end A314055

/-! ## A314055.P11403967073675789784

`A008458(n)+A310411(n)-A301718(n)`
-/

namespace A314055.P11403967073675789784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A310411 n - A301718 n)

end

end A314055.P11403967073675789784

namespace A314055

/-- `A008458(n)+A310411(n)-A301718(n)` -/
def P11403967073675789784.Spec : Prop :=
  ∀ n, P11403967073675789784.a n = A314055 n

end A314055

/-! ## A314055.P16603777479479388666

`A310411(n)+A008588(n)%A301718(n)`
-/

namespace A314055.P16603777479479388666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310411 n + Int.tmod (A008588 n) (A301718 n)

end

end A314055.P16603777479479388666

namespace A314055

/-- `A310411(n)+A008588(n)%A301718(n)` -/
def P16603777479479388666.Spec : Prop :=
  ∀ n, P16603777479479388666.a n = A314055 n

end A314055

/-! ## A314055.P16818650723988890782

`A301718(n)-A315309(n)%A072154(n)`
-/

namespace A314055.P16818650723988890782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - Int.tmod (A315309 n) (A072154 n)

end

end A314055.P16818650723988890782

namespace A314055

/-- `A301718(n)-A315309(n)%A072154(n)` -/
def P16818650723988890782.Spec : Prop :=
  ∀ n, P16818650723988890782.a n = A314055 n

end A314055

/-! ## A314055.P1404042449934895579

`A301718(n)-A005843(A301718(n)-A314148(n))`
-/

namespace A314055.P1404042449934895579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A005843 (A301718 n - A314148 n).toNat

end

end A314055.P1404042449934895579

namespace A314055

/-- `A301718(n)-A005843(A301718(n)-A314148(n))` -/
def P1404042449934895579.Spec : Prop :=
  ∀ n, P1404042449934895579.a n = A314055 n

end A314055

/-! ## A314055.P4288991678547741328

`A250120(A008486(n))%A005843(A314838(n))`
-/

namespace A314055.P4288991678547741328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250120 (A008486 n).toNat) (A005843 (A314838 n).toNat)

end

end A314055.P4288991678547741328

namespace A314055

/-- `A250120(A008486(n))%A005843(A314838(n))` -/
def P4288991678547741328.Spec : Prop :=
  ∀ n, P4288991678547741328.a n = A314055 n

end A314055

/-! ## A314055.P8633679136454248897

`A005843(A314148(n))-A301718(n)`
-/

namespace A314055.P8633679136454248897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314148 n).toNat - A301718 n

end

end A314055.P8633679136454248897

namespace A314055

/-- `A005843(A314148(n))-A301718(n)` -/
def P8633679136454248897.Spec : Prop :=
  ∀ n, P8633679136454248897.a n = A314055 n

end A314055

/-! ## A314055.P3211566315919249874

`A072154(A008458(n))-2*A314838(n)`
-/

namespace A314055.P3211566315919249874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (A008458 n).toNat - 2 * A314838 n

end

end A314055.P3211566315919249874

namespace A314055

/-- `A072154(A008458(n))-2*A314838(n)` -/
def P3211566315919249874.Spec : Prop :=
  ∀ n, P3211566315919249874.a n = A314055 n

end A314055

/-! ## A314055.P13567122904695240855

`A072154(A008458(n))-A005843(A314838(n))`
-/

namespace A314055.P13567122904695240855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (A008458 n).toNat - A005843 (A314838 n).toNat

end

end A314055.P13567122904695240855

namespace A314055

/-- `A072154(A008458(n))-A005843(A314838(n))` -/
def P13567122904695240855.Spec : Prop :=
  ∀ n, P13567122904695240855.a n = A314055 n

end A314055

/-! ## A314055.P5457976105911937295

`A072154(A008588(n))%A005843(A314838(n))`
-/

namespace A314055.P5457976105911937295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072154 (A008588 n).toNat) (A005843 (A314838 n).toNat)

end

end A314055.P5457976105911937295

namespace A314055

/-- `A072154(A008588(n))%A005843(A314838(n))` -/
def P5457976105911937295.Spec : Prop :=
  ∀ n, P5457976105911937295.a n = A314055 n

end A314055

/-!
# A314056: Coordination sequence Gal.4.135.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314056, the canonical program `A314056.P914995745377123050` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314056 has offset 0).

The definition of A314056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314056.P914995745377123050

`A310397(n)+A004525(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314056

/-- `A310397(n)+A004525(n)` -/
def P914995745377123050.Spec : Prop :=
  ∀ n, P914995745377123050.a n = A314056 n

theorem P914995745377123050.correct : P914995745377123050.Spec := by
  intro n
  simp only [A314056]

end A314056

/-! ## A314056.P14729015221975094676

`A315320(n)-A075553(n)`
-/

namespace A314056.P14729015221975094676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315320 n - A075553 n

end

end A314056.P14729015221975094676

namespace A314056

/-- `A315320(n)-A075553(n)` -/
def P14729015221975094676.Spec : Prop :=
  ∀ n, P14729015221975094676.a n = A314056 n

end A314056

/-! ## A314056.P5730369835767136147

`A315469(n)-A188510(n)`
-/

namespace A314056.P5730369835767136147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n - A188510 n

end

end A314056.P5730369835767136147

namespace A314056

/-- `A315469(n)-A188510(n)` -/
def P5730369835767136147.Spec : Prop :=
  ∀ n, P5730369835767136147.a n = A314056 n

end A314056

/-! ## A314056.P9770514551317219207

`abs(A008592(n)-A315020(n))`
-/

namespace A314056.P9770514551317219207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315020 n|

end

end A314056.P9770514551317219207

namespace A314056

/-- `abs(A008592(n)-A315020(n))` -/
def P9770514551317219207.Spec : Prop :=
  ∀ n, P9770514551317219207.a n = A314056 n

end A314056

/-! ## A314056.P14402894620413820293

`A310397(n)+Δ[A054925(n)]`
-/

namespace A314056.P14402894620413820293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310397 n + (f1 (n + 1) - f1 n)

end

end A314056.P14402894620413820293

namespace A314056

/-- `A310397(n)+Δ[A054925(n)]` -/
def P14402894620413820293.Spec : Prop :=
  ∀ n, P14402894620413820293.a n = A314056 n

end A314056

/-! ## A314056.P9089935851890155037

`A301729(A301729(n))+A157932(n+1)`
-/

namespace A314056.P9089935851890155037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 (A301729 n).toNat + A157932 (n + 1)

end

end A314056.P9089935851890155037

namespace A314056

/-- `A301729(A301729(n))+A157932(n+1)` -/
def P9089935851890155037.Spec : Prop :=
  ∀ n, P9089935851890155037.a n = A314056 n

end A314056

/-! ## A314056.P16733183342562773003

`A008458(n)-A004525(A004525(3*n))`
-/

namespace A314056.P16733183342562773003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A004525 (3 * n)).toNat

end

end A314056.P16733183342562773003

namespace A314056

/-- `A008458(n)-A004525(A004525(3*n))` -/
def P16733183342562773003.Spec : Prop :=
  ∀ n, P16733183342562773003.a n = A314056 n

end A314056

/-! ## A314056.P7945954110857672347

`A313635(n)+A004525(n-A004525(n))`
-/

namespace A314056.P7945954110857672347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313635 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A314056.P7945954110857672347

namespace A314056

/-- `A313635(n)+A004525(n-A004525(n))` -/
def P7945954110857672347.Spec : Prop :=
  ∀ n, P7945954110857672347.a n = A314056 n

theorem P7945954110857672347.correct : P7945954110857672347.Spec := by
  intro n
  simp only [A314056, Nat.add_sub_cancel, A314056.P7945954110857672347.a, A314056.P914995745377123050.a, A004525, A004525.P4158271949796742323.a, A310397, A310397.P3562784380377388061.a, A313635, A313635.P6006493494866348002.a, A312943, A312943.P15149972139158582154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314056

/-! ## A314056.P7986139120887313403

`A008458(n)+A008574(n)-A315020(n)`
-/

namespace A314056.P7986139120887313403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315020 n)

end

end A314056.P7986139120887313403

namespace A314056

/-- `A008458(n)+A008574(n)-A315020(n)` -/
def P7986139120887313403.Spec : Prop :=
  ∀ n, P7986139120887313403.a n = A314056 n

end A314056

/-! ## A314056.P6203699556320790255

`A314161(n)-Δ[A011861(n)]`
-/

namespace A314056.P6203699556320790255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n - (f1 (n + 1) - f1 n)

end

end A314056.P6203699556320790255

namespace A314056

/-- `A314161(n)-Δ[A011861(n)]` -/
def P6203699556320790255.Spec : Prop :=
  ∀ n, P6203699556320790255.a n = A314056 n

end A314056

/-! ## A314056.P12507327034189835727

`A315651(n)-A004525(A004525(n))`
-/

namespace A314056.P12507327034189835727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315651 n - A004525 (A004525 n).toNat

end

end A314056.P12507327034189835727

namespace A314056

/-- `A315651(n)-A004525(A004525(n))` -/
def P12507327034189835727.Spec : Prop :=
  ∀ n, P12507327034189835727.a n = A314056 n

theorem P12507327034189835727.correct : P12507327034189835727.Spec := by
  intro n
  simp only [A314056, Nat.add_sub_cancel, A314056.P12507327034189835727.a, A314056.P914995745377123050.a, A004525, A004525.P4158271949796742323.a, A310397, A310397.P3562784380377388061.a, A315651, A315651.P9904955794810219643.a, A312943, A312943.P15149972139158582154.a, A314026, A314026.P8836136784884511113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314056

/-! ## A314056.P17694488679139192148

`A004525(A314112(2*n))`
-/

namespace A314056.P17694488679139192148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314112 (2 * n)).toNat

end

end A314056.P17694488679139192148

namespace A314056

/-- `A004525(A314112(2*n))` -/
def P17694488679139192148.Spec : Prop :=
  ∀ n, P17694488679139192148.a n = A314056 n

end A314056

/-! ## A314056.P1762785200034497364

`A004525(A315469(2*n))`
-/

namespace A314056.P1762785200034497364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315469 (2 * n)).toNat

end

end A314056.P1762785200034497364

namespace A314056

/-- `A004525(A315469(2*n))` -/
def P1762785200034497364.Spec : Prop :=
  ∀ n, P1762785200034497364.a n = A314056 n

end A314056

/-! ## A314056.P13457999478997764169

`A004525(A313561(2*n)+n)`
-/

namespace A314056.P13457999478997764169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313561 (2 * n) + (n : ℤ)).toNat

end

end A314056.P13457999478997764169

namespace A314056

/-- `A004525(A313561(2*n)+n)` -/
def P13457999478997764169.Spec : Prop :=
  ∀ n, P13457999478997764169.a n = A314056 n

end A314056

/-! ## A314056.P6651921277149710957

`A004525(A313685(2*n)+n)`
-/

namespace A314056.P6651921277149710957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313685 (2 * n) + (n : ℤ)).toNat

end

end A314056.P6651921277149710957

namespace A314056

/-- `A004525(A313685(2*n)+n)` -/
def P6651921277149710957.Spec : Prop :=
  ∀ n, P6651921277149710957.a n = A314056 n

end A314056

/-! ## A314056.P5180103816562057640

`A004525(A315704(2*n)-n)`
-/

namespace A314056.P5180103816562057640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315704 (2 * n) - (n : ℤ)).toNat

end

end A314056.P5180103816562057640

namespace A314056

/-- `A004525(A315704(2*n)-n)` -/
def P5180103816562057640.Spec : Prop :=
  ∀ n, P5180103816562057640.a n = A314056 n

end A314056

/-! ## A314056.P9952619464321417162

`A004525(A301291(n)+6*n)`
-/

namespace A314056.P9952619464321417162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A301291 n + (6 * n : ℤ)).toNat

end

end A314056.P9952619464321417162

namespace A314056

/-- `A004525(A301291(n)+6*n)` -/
def P9952619464321417162.Spec : Prop :=
  ∀ n, P9952619464321417162.a n = A314056 n

end A314056

/-! ## A314056.P8624825345645723757

`A004525(A008706(2*n)+A004525(n))`
-/

namespace A314056.P8624825345645723757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008706 (2 * n) + A004525 n).toNat

end

end A314056.P8624825345645723757

namespace A314056

/-- `A004525(A008706(2*n)+A004525(n))` -/
def P8624825345645723757.Spec : Prop :=
  ∀ n, P8624825345645723757.a n = A314056 n

end A314056

/-! ## A314056.P15327072533649361042

`A004525(A310457(2*n)+A004525(n))`
-/

namespace A314056.P15327072533649361042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310457 (2 * n) + A004525 n).toNat

end

end A314056.P15327072533649361042

namespace A314056

/-- `A004525(A310457(2*n)+A004525(n))` -/
def P15327072533649361042.Spec : Prop :=
  ∀ n, P15327072533649361042.a n = A314056 n

end A314056

/-! ## A314056.P10399748538336367732

`A004525(A310458(2*n)+A004525(n))`
-/

namespace A314056.P10399748538336367732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310458 (2 * n) + A004525 n).toNat

end

end A314056.P10399748538336367732

namespace A314056

/-- `A004525(A310458(2*n)+A004525(n))` -/
def P10399748538336367732.Spec : Prop :=
  ∀ n, P10399748538336367732.a n = A314056 n

end A314056

/-!
# A314057: Coordination sequence Gal.6.635.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314057, the canonical program `A314057.P17750692989560915075` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314057 has offset 0).

The definition of A314057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314057.P18317231071194626603

`abs(A008592(n)-A315019(n))`
-/

namespace A314057.P18317231071194626603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315019 n|

end

end A314057.P18317231071194626603

namespace A314057

/-- `abs(A008592(n)-A315019(n))` -/
def P18317231071194626603.Spec : Prop :=
  ∀ n, P18317231071194626603.a n = A314057 n

end A314057

/-! ## A314057.P18226609611674542766

`2*A008706(n)-A315019(n)`
-/

namespace A314057.P18226609611674542766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315019 n

end

end A314057.P18226609611674542766

namespace A314057

/-- `2*A008706(n)-A315019(n)` -/
def P18226609611674542766.Spec : Prop :=
  ∀ n, P18226609611674542766.a n = A314057 n

end A314057

/-! ## A314057.P14948692261674043173

`A008458(n)+A008574(n)-A315019(n)`
-/

namespace A314057.P14948692261674043173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315019 n)

end

end A314057.P14948692261674043173

namespace A314057

/-- `A008458(n)+A008574(n)-A315019(n)` -/
def P14948692261674043173.Spec : Prop :=
  ∀ n, P14948692261674043173.a n = A314057 n

end A314057

/-! ## A314057.P10208703314685302325

`2*n+A004396(A310404(n))`
-/

namespace A314057.P10208703314685302325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A310404 n).toNat

end

end A314057.P10208703314685302325

namespace A314057

/-- `2*n+A004396(A310404(n))` -/
def P10208703314685302325.Spec : Prop :=
  ∀ n, P10208703314685302325.a n = A314057 n

end A314057

/-! ## A314057.P17750692989560915075

`A004396(A313620(n))+2*n`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314057

/-- `A004396(A313620(n))+2*n` -/
def P17750692989560915075.Spec : Prop :=
  ∀ n, P17750692989560915075.a n = A314057 n

theorem P17750692989560915075.correct : P17750692989560915075.Spec := by
  intro n
  simp only [A314057]

end A314057

/-! ## A314057.P6549725967748141504

`A005843(n)+A004396(A313620(n))`
-/

namespace A314057.P6549725967748141504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A313620 n).toNat

end

end A314057.P6549725967748141504

namespace A314057

/-- `A005843(n)+A004396(A313620(n))` -/
def P6549725967748141504.Spec : Prop :=
  ∀ n, P6549725967748141504.a n = A314057 n

theorem P6549725967748141504.correct : P6549725967748141504.Spec := by
  intro n
  simp only [A314057, Nat.add_sub_cancel, A314057.P6549725967748141504.a, A314057.P17750692989560915075.a, A004396, A004396.P17032557045289780609.a, A005843, A005843.P3167286115683555970.a, A313620, A313620.P513798064610013280.a, A008592, A008592.P4981059802862696142.a, A313831, A313831.P17675149220499265565.f1, A313831.P17675149220499265565.a, A011864, A011864.P3547417513882699266.a, A313722, A313722.P17589787555355658090.f1, A313722.P17589787555355658090.a, A008706, A008706.P2829034798076193717.a, A011875, A011875.P9145820491585483445.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314057

/-! ## A314057.P16985062148309387212

`A008585(n)-(n-A004396(A310404(n)))`
-/

namespace A314057.P16985062148309387212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A310404 n).toNat)

end

end A314057.P16985062148309387212

namespace A314057

/-- `A008585(n)-(n-A004396(A310404(n)))` -/
def P16985062148309387212.Spec : Prop :=
  ∀ n, P16985062148309387212.a n = A314057 n

end A314057

/-! ## A314057.P4522575177224974135

`A004396(A310404(n)+A008486(n))`
-/

namespace A314057.P4522575177224974135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310404 n + A008486 n).toNat

end

end A314057.P4522575177224974135

namespace A314057

/-- `A004396(A310404(n)+A008486(n))` -/
def P4522575177224974135.Spec : Prop :=
  ∀ n, P4522575177224974135.a n = A314057 n

end A314057

/-! ## A314057.P3714778257946016095

`A004396(A310404(n)+A008585(n))`
-/

namespace A314057.P3714778257946016095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310404 n + A008585 n).toNat

end

end A314057.P3714778257946016095

namespace A314057

/-- `A004396(A310404(n)+A008585(n))` -/
def P3714778257946016095.Spec : Prop :=
  ∀ n, P3714778257946016095.a n = A314057 n

end A314057

/-! ## A314057.P2988430548100965484

`A004396(A310526(2*n)-A008585(n))`
-/

namespace A314057.P2988430548100965484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310526 (2 * n) - A008585 n).toNat

end

end A314057.P2988430548100965484

namespace A314057

/-- `A004396(A310526(2*n)-A008585(n))` -/
def P2988430548100965484.Spec : Prop :=
  ∀ n, P2988430548100965484.a n = A314057 n

end A314057

/-! ## A314057.P13949222274141402695

`A314244(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A314057.P13949222274141402695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314244 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A314057.P13949222274141402695

namespace A314057

/-- `A314244(2*n)+A008458(n+1)-(12*n+6)` -/
def P13949222274141402695.Spec : Prop :=
  ∀ n, P13949222274141402695.a n = A314057 n

end A314057

/-! ## A314057.P13295189625259572817

`A004525(A310523(2*n))`
-/

namespace A314057.P13295189625259572817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310523 (2 * n)).toNat

end

end A314057.P13295189625259572817

namespace A314057

/-- `A004525(A310523(2*n))` -/
def P13295189625259572817.Spec : Prop :=
  ∀ n, P13295189625259572817.a n = A314057 n

end A314057

/-! ## A314057.P6757820291930729742

`A004525(A313913(2*n))`
-/

namespace A314057.P6757820291930729742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313913 (2 * n)).toNat

end

end A314057.P6757820291930729742

namespace A314057

/-- `A004525(A313913(2*n))` -/
def P6757820291930729742.Spec : Prop :=
  ∀ n, P6757820291930729742.a n = A314057 n

end A314057

/-! ## A314057.P5427890936160030304

`A004525(A312944(n)+6*n)`
-/

namespace A314057.P5427890936160030304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312944 n + (6 * n : ℤ)).toNat

end

end A314057.P5427890936160030304

namespace A314057

/-- `A004525(A312944(n)+6*n)` -/
def P5427890936160030304.Spec : Prop :=
  ∀ n, P5427890936160030304.a n = A314057 n

end A314057

/-! ## A314057.P2650973845930675657

`A004525(A314720(n)+6*n)`
-/

namespace A314057.P2650973845930675657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314720 n + (6 * n : ℤ)).toNat

end

end A314057.P2650973845930675657

namespace A314057

/-- `A004525(A314720(n)+6*n)` -/
def P2650973845930675657.Spec : Prop :=
  ∀ n, P2650973845930675657.a n = A314057 n

end A314057

/-! ## A314057.P299028734440522401

`A004396(A310526(2*n))-A005843(n)`
-/

namespace A314057.P299028734440522401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310526 (2 * n)).toNat - A005843 n

end

end A314057.P299028734440522401

namespace A314057

/-- `A004396(A310526(2*n))-A005843(n)` -/
def P299028734440522401.Spec : Prop :=
  ∀ n, P299028734440522401.a n = A314057 n

end A314057

/-! ## A314057.P6239858074375865030

`A004396(A314157(2*n))-A005843(n)`
-/

namespace A314057.P6239858074375865030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314157 (2 * n)).toNat - A005843 n

end

end A314057.P6239858074375865030

namespace A314057

/-- `A004396(A314157(2*n))-A005843(n)` -/
def P6239858074375865030.Spec : Prop :=
  ∀ n, P6239858074375865030.a n = A314057 n

end A314057

/-! ## A314057.P650977313319797999

`A004396(A314234(2*n))-A005843(n)`
-/

namespace A314057.P650977313319797999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314234 (2 * n)).toNat - A005843 n

end

end A314057.P650977313319797999

namespace A314057

/-- `A004396(A314234(2*n))-A005843(n)` -/
def P650977313319797999.Spec : Prop :=
  ∀ n, P650977313319797999.a n = A314057 n

end A314057

/-!
# A314058: Coordination sequence Gal.6.648.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314058, there is no canonical definition to state claims against.
-/

/-! ## A314058.P16838029473098838849

`A315475(n)-A010054(A308193(n+1))`
-/

namespace A314058.P16838029473098838849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n - A010054 (A308193 (n + 1)).toNat

end

end A314058.P16838029473098838849

/-! ## A314058.P8408043414025729788

`A301726(n)-A133872(A330644(2*n+3))`
-/

namespace A314058.P8408043414025729788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n - A133872 (A330644 (2 * n + 3)).toNat

end

end A314058.P8408043414025729788

/-! ## A314058.P14152189269359990351

`∑[A023969(3*n+1)]+A163810((A016116(n+1)+1)²)+5*n`
-/

namespace A314058.P14152189269359990351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A163810 ((A016116 (n + 1) + 1) ^ 2).toNat + (5 * n : ℤ))

end

end A314058.P14152189269359990351

/-! ## A314058.P12658811784616599590

`A315475(n)+A015731(A000051(n))`
-/

namespace A314058.P12658811784616599590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n + A015731 (A000051 n).toNat

end

end A314058.P12658811784616599590

/-! ## A314058.P75052008798205415

`A276881(2*n+1)+A210455(A006882(n))`
-/

namespace A314058.P75052008798205415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276881 (2 * n + 1) + A210455 (A006882 n).toNat

end

end A314058.P75052008798205415

/-!
# A314059: Coordination sequence Gal.6.652.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314059, the canonical program `A314059.P15361203540330467185` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314059 has offset 0).

The definition of A314059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2279 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314059.P15361203540330467185

`A310398(n)+A004525(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A314059

/-- `A310398(n)+A004525(n)` -/
def P15361203540330467185.Spec : Prop :=
  ∀ n, P15361203540330467185.a n = A314059 n

theorem P15361203540330467185.correct : P15361203540330467185.Spec := by
  intro n
  simp only [A314059]

end A314059

/-! ## A314059.P12603161884417806434

`A310398(n)+Δ[A054925(n)]`
-/

namespace A314059.P12603161884417806434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + (f1 (n + 1) - f1 n)

end

end A314059.P12603161884417806434

namespace A314059

/-- `A310398(n)+Δ[A054925(n)]` -/
def P12603161884417806434.Spec : Prop :=
  ∀ n, P12603161884417806434.a n = A314059 n

end A314059

/-! ## A314059.P12663674027504821458

`A310398(n)+A004526(A098180(n))`
-/

namespace A314059.P12663674027504821458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A004526 (A098180 n).toNat

end

end A314059.P12663674027504821458

namespace A314059

/-- `A310398(n)+A004526(A098180(n))` -/
def P12663674027504821458.Spec : Prop :=
  ∀ n, P12663674027504821458.a n = A314059 n

end A314059

/-! ## A314059.P4760696343827056431

`A310398(n)+A026741(A186421(n))`
-/

namespace A314059.P4760696343827056431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A026741 (A186421 n).toNat

end

end A314059.P4760696343827056431

namespace A314059

/-- `A310398(n)+A026741(A186421(n))` -/
def P4760696343827056431.Spec : Prop :=
  ∀ n, P4760696343827056431.a n = A314059 n

end A314059

/-! ## A314059.P13224568823227382719

`A310398(n)-A001489(Δ[A054925(n)])`
-/

namespace A314059.P13224568823227382719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n - A001489 (f1 (n + 1) - f1 n).toNat

end

end A314059.P13224568823227382719

namespace A314059

/-- `A310398(n)-A001489(Δ[A054925(n)])` -/
def P13224568823227382719.Spec : Prop :=
  ∀ n, P13224568823227382719.a n = A314059 n

end A314059

/-! ## A314059.P5187399508341265373

`A310398(n)+A002265(A047493(n+1))`
-/

namespace A314059.P5187399508341265373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A002265 (A047493 (n + 1)).toNat

end

end A314059.P5187399508341265373

namespace A314059

/-- `A310398(n)+A002265(A047493(n+1))` -/
def P5187399508341265373.Spec : Prop :=
  ∀ n, P5187399508341265373.a n = A314059 n

end A314059

/-!
# A314060: Coordination sequence Gal.6.636.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314060, the canonical program `A314060.P2827960434284084605` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314060 has offset 0).

The definition of A314060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314060.P2827960434284084605

`A310400(n)+A004525(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314060

/-- `A310400(n)+A004525(n)` -/
def P2827960434284084605.Spec : Prop :=
  ∀ n, P2827960434284084605.a n = A314060 n

theorem P2827960434284084605.correct : P2827960434284084605.Spec := by
  intro n
  simp only [A314060]

end A314060

/-! ## A314060.P12891758175429404162

`abs(A008592(n)-A315018(n))`
-/

namespace A314060.P12891758175429404162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315018 n|

end

end A314060.P12891758175429404162

namespace A314060

/-- `abs(A008592(n)-A315018(n))` -/
def P12891758175429404162.Spec : Prop :=
  ∀ n, P12891758175429404162.a n = A314060 n

end A314060

/-! ## A314060.P17086975025462300878

`A313622(n)+∑[A022003(n)]`
-/

namespace A314060.P17086975025462300878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313622 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314060.P17086975025462300878

namespace A314060

/-- `A313622(n)+∑[A022003(n)]` -/
def P17086975025462300878.Spec : Prop :=
  ∀ n, P17086975025462300878.a n = A314060 n

end A314060

/-! ## A314060.P16927539715066114903

`A310400(n)+Δ[A054925(n)]`
-/

namespace A314060.P16927539715066114903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310400 n + (f1 (n + 1) - f1 n)

end

end A314060.P16927539715066114903

namespace A314060

/-- `A310400(n)+Δ[A054925(n)]` -/
def P16927539715066114903.Spec : Prop :=
  ∀ n, P16927539715066114903.a n = A314060 n

end A314060

/-! ## A314060.P6845884603615821064

`A008486(n)+A313622(n)-A008576(n)`
-/

namespace A314060.P6845884603615821064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313622 n - A008576 n)

end

end A314060.P6845884603615821064

namespace A314060

/-- `A008486(n)+A313622(n)-A008576(n)` -/
def P6845884603615821064.Spec : Prop :=
  ∀ n, P6845884603615821064.a n = A314060 n

end A314060

/-! ## A314060.P15366092476857802581

`A008458(n)+A008574(n)-A315018(n)`
-/

namespace A314060.P15366092476857802581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315018 n)

end

end A314060.P15366092476857802581

namespace A314060

/-- `A008458(n)+A008574(n)-A315018(n)` -/
def P15366092476857802581.Spec : Prop :=
  ∀ n, P15366092476857802581.a n = A314060 n

end A314060

/-! ## A314060.P3198849218531631867

`A004525(n)+A314151(n)-A004396(n)`
-/

namespace A314060.P3198849218531631867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314151 n - A004396 n)

end

end A314060.P3198849218531631867

namespace A314060

/-- `A004525(n)+A314151(n)-A004396(n)` -/
def P3198849218531631867.Spec : Prop :=
  ∀ n, P3198849218531631867.a n = A314060 n

end A314060

/-! ## A314060.P385843027458529077

`A004525(n)+A314151(n)-A004525(A004773(n))`
-/

namespace A314060.P385843027458529077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314151 n - A004525 (A004773 n).toNat)

end

end A314060.P385843027458529077

namespace A314060

/-- `A004525(n)+A314151(n)-A004525(A004773(n))` -/
def P385843027458529077.Spec : Prop :=
  ∀ n, P385843027458529077.a n = A314060 n

end A314060

/-! ## A314060.P16330116590776100509

`A004396(A310405(n))+2*n`
-/

namespace A314060.P16330116590776100509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310405 n).toNat + (2 * n : ℤ)

end

end A314060.P16330116590776100509

namespace A314060

/-- `A004396(A310405(n))+2*n` -/
def P16330116590776100509.Spec : Prop :=
  ∀ n, P16330116590776100509.a n = A314060 n

end A314060

/-! ## A314060.P14476305623694115867

`A004396(A313583(n))+2*n`
-/

namespace A314060.P14476305623694115867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313583 n).toNat + (2 * n : ℤ)

end

end A314060.P14476305623694115867

namespace A314060

/-- `A004396(A313583(n))+2*n` -/
def P14476305623694115867.Spec : Prop :=
  ∀ n, P14476305623694115867.a n = A314060 n

end A314060

/-! ## A314060.P10043458970755233184

`A004525(2*A313569(n)+n)`
-/

namespace A314060.P10043458970755233184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A313569 n + (n : ℤ)).toNat

end

end A314060.P10043458970755233184

namespace A314060

/-- `A004525(2*A313569(n)+n)` -/
def P10043458970755233184.Spec : Prop :=
  ∀ n, P10043458970755233184.a n = A314060 n

end A314060

/-! ## A314060.P5797109245747713173

`A004525(2*A313575(n)+n)`
-/

namespace A314060.P5797109245747713173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A313575 n + (n : ℤ)).toNat

end

end A314060.P5797109245747713173

namespace A314060

/-- `A004525(2*A313575(n)+n)` -/
def P5797109245747713173.Spec : Prop :=
  ∀ n, P5797109245747713173.a n = A314060 n

end A314060

/-! ## A314060.P7002125823959641367

`A004525(2*A315710(n)-n)`
-/

namespace A314060.P7002125823959641367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A315710 n - (n : ℤ)).toNat

end

end A314060.P7002125823959641367

namespace A314060

/-- `A004525(2*A315710(n)-n)` -/
def P7002125823959641367.Spec : Prop :=
  ∀ n, P7002125823959641367.a n = A314060 n

end A314060

/-! ## A314060.P2466176623578746743

`A004525(2*A219529(n)-(n%4-2)%2)`
-/

namespace A314060.P2466176623578746743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A219529 n - Int.tmod (((n % 4 : ℕ) : ℤ) - 2) 2).toNat

end

end A314060.P2466176623578746743

namespace A314060

/-- `A004525(2*A219529(n)-(n%4-2)%2)` -/
def P2466176623578746743.Spec : Prop :=
  ∀ n, P2466176623578746743.a n = A314060 n

end A314060

/-! ## A314060.P8939855215699265246

`A004525(A313569(n)+A313569(n)+n)`
-/

namespace A314060.P8939855215699265246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313569 n + (A313569 n + (n : ℤ))).toNat

end

end A314060.P8939855215699265246

namespace A314060

/-- `A004525(A313569(n)+A313569(n)+n)` -/
def P8939855215699265246.Spec : Prop :=
  ∀ n, P8939855215699265246.a n = A314060 n

end A314060

/-! ## A314060.P2283128003398946049

`A004525(A313575(n)+A313575(n)+n)`
-/

namespace A314060.P2283128003398946049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313575 n + (A313575 n + (n : ℤ))).toNat

end

end A314060.P2283128003398946049

namespace A314060

/-- `A004525(A313575(n)+A313575(n)+n)` -/
def P2283128003398946049.Spec : Prop :=
  ∀ n, P2283128003398946049.a n = A314060 n

end A314060

/-! ## A314060.P966982280557648981

`A004525(A315710(n)+A315710(n)-n)`
-/

namespace A314060.P966982280557648981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315710 n + (A315710 n - (n : ℤ))).toNat

end

end A314060.P966982280557648981

namespace A314060

/-- `A004525(A315710(n)+A315710(n)-n)` -/
def P966982280557648981.Spec : Prop :=
  ∀ n, P966982280557648981.a n = A314060 n

end A314060

/-! ## A314060.P3228721189721686965

`A004525(A315710(n)-(n-A315710(n)))`
-/

namespace A314060.P3228721189721686965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315710 n - ((n : ℤ) - A315710 n)).toNat

end

end A314060.P3228721189721686965

namespace A314060

/-- `A004525(A315710(n)-(n-A315710(n)))` -/
def P3228721189721686965.Spec : Prop :=
  ∀ n, P3228721189721686965.a n = A314060 n

end A314060

/-!
# A314061: Coordination sequence Gal.6.647.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314061, the canonical program `A314061.P15550018159768013123` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314061 has offset 0).

The definition of A314061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314061.P15550018159768013123

`A312943(n)+A134119(4*n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A314061

/-- `A312943(n)+A134119(4*n)` -/
def P15550018159768013123.Spec : Prop :=
  ∀ n, P15550018159768013123.a n = A314061 n

theorem P15550018159768013123.correct : P15550018159768013123.Spec := by
  intro n
  simp only [A314061]

end A314061

/-! ## A314061.P18361824622753948959

`A312943(n)+A057354(2*n+1)`
-/

namespace A314061.P18361824622753948959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A057354 (2 * n + 1)

end

end A314061.P18361824622753948959

namespace A314061

/-- `A312943(n)+A057354(2*n+1)` -/
def P18361824622753948959.Spec : Prop :=
  ∀ n, P18361824622753948959.a n = A314061 n

end A314061

/-! ## A314061.P10103675136779646029

`A313568(n)+∑[A021913(A028242(n))]`
-/

namespace A314061.P10103675136779646029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314061.P10103675136779646029

namespace A314061

/-- `A313568(n)+∑[A021913(A028242(n))]` -/
def P10103675136779646029.Spec : Prop :=
  ∀ n, P10103675136779646029.a n = A314061 n

end A314061

/-! ## A314061.P8696781138772467740

`A314161(n)-A002266(n+2)`
-/

namespace A314061.P8696781138772467740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n - A002266 (n + 2)

end

end A314061.P8696781138772467740

namespace A314061

/-- `A314161(n)-A002266(n+2)` -/
def P8696781138772467740.Spec : Prop :=
  ∀ n, P8696781138772467740.a n = A314061 n

end A314061

/-! ## A314061.P35226802963131124

`A314161(n)-A047263(n+1)+n`
-/

namespace A314061.P35226802963131124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n - A047263 (n + 1) + (n : ℤ)

end

end A314061.P35226802963131124

namespace A314061

/-- `A314161(n)-A047263(n+1)+n` -/
def P35226802963131124.Spec : Prop :=
  ∀ n, P35226802963131124.a n = A314061 n

end A314061

/-! ## A314061.P8158245407796231671

`A314161(n)-A110654(A057354(n))`
-/

namespace A314061.P8158245407796231671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n - A110654 (A057354 n).toNat

end

end A314061.P8158245407796231671

namespace A314061

/-- `A314161(n)-A110654(A057354(n))` -/
def P8158245407796231671.Spec : Prop :=
  ∀ n, P8158245407796231671.a n = A314061 n

end A314061

/-! ## A314061.P10156092597186177790

`A314161(n)-Δ[A057354(A054925(n))]`
-/

namespace A314061.P10156092597186177790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A054925 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n - (f1 (n + 1) - f1 n)

end

end A314061.P10156092597186177790

namespace A314061

/-- `A314161(n)-Δ[A057354(A054925(n))]` -/
def P10156092597186177790.Spec : Prop :=
  ∀ n, P10156092597186177790.a n = A314061 n

end A314061

/-!
# A314062: Coordination sequence Gal.5.331.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314062, there is no canonical definition to state claims against.
-/

/-! ## A314062.P14202039879807118417

`A301714(n)+A057078(A002878(n))`
-/

namespace A314062.P14202039879807118417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301714 n + A057078 (A002878 n).toNat

end

end A314062.P14202039879807118417

/-! ## A314062.P1546516085767130167

`A301714(n)-A010051(A047974(n))`
-/

namespace A314062.P1546516085767130167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301714 n - A010051 (A047974 n).toNat

end

end A314062.P1546516085767130167

/-! ## A314062.P17109602092597322318

`A301714(n)-A059841(A007716(n))`
-/

namespace A314062.P17109602092597322318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301714 n - A059841 (A007716 n).toNat

end

end A314062.P17109602092597322318

/-! ## A314062.P838565015260615399

`A301714(n)-A082784(A050614(n))`
-/

namespace A314062.P838565015260615399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301714 n - A082784 (A050614 n).toNat

end

end A314062.P838565015260615399

/-! ## A314062.P7924005252366611848

`A301714(n)-A000035(A137212(n))`
-/

namespace A314062.P7924005252366611848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301714 n - A000035 (A137212 n).toNat

end

end A314062.P7924005252366611848

/-!
# A314063: Coordination sequence Gal.6.672.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314063, there is no canonical definition to state claims against.
-/

/-! ## A314063.P3028211420711883232

`or(A001222(A027741(n)), A313274(n))`
-/

namespace A314063.P3028211420711883232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A027741 n).toNat) (A313274 n)

end

end A314063.P3028211420711883232

/-! ## A314063.P17308545596833821957

`A315621(n)-A007877(A059825(n))`
-/

namespace A314063.P17308545596833821957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315621 n - A007877 (A059825 n).toNat

end

end A314063.P17308545596833821957

/-! ## A314063.P10793398035397612608

`or(A008687(A047142(n)), A314041(n))`
-/

namespace A314063.P10793398035397612608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008687 (A047142 n).toNat) (A314041 n)

end

end A314063.P10793398035397612608

/-! ## A314063.P8289419978427406628

`or(A089413(A122301(n)), A314041(n))`
-/

namespace A314063.P8289419978427406628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089413 (A122301 n).toNat) (A314041 n)

end

end A314063.P8289419978427406628

/-! ## A314063.P14751625960118548074

`A313468(n)+A302242(A006206(3*n+4))`
-/

namespace A314063.P14751625960118548074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313468 n + A302242 (A006206 (3 * n + 4)).toNat

end

end A314063.P14751625960118548074

/-!
# A314064: Coordination sequence Gal.6.673.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314064, there is no canonical definition to state claims against.
-/

/-! ## A314064.P13531367796893019316

`or(A109129(A056324(n)), A313772(n))`
-/

namespace A314064.P13531367796893019316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A109129 (A056324 n).toNat) (A313772 n)

end

end A314064.P13531367796893019316

/-! ## A314064.P11450822866596865954

`or(A001222(A189568(n)), A313772(n))`
-/

namespace A314064.P11450822866596865954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A189568 n).toNat) (A313772 n)

end

end A314064.P11450822866596865954

/-! ## A314064.P1116696126305244525

`or(A001222(A189568(n)), A314039(n))`
-/

namespace A314064.P1116696126305244525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A189568 n).toNat) (A314039 n)

end

end A314064.P1116696126305244525

/-! ## A314064.P14122361471329122417

`or(5*n, A099551(A053556(n)))`
-/

namespace A314064.P14122361471329122417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (5 * n : ℤ) (A099551 (A053556 n).toNat)

end

end A314064.P14122361471329122417

/-! ## A314064.P3062446250484090984

`or(5*n, A006530(A320921(n)))`
-/

namespace A314064.P3062446250484090984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (5 * n : ℤ) (A006530 (A320921 n).toNat)

end

end A314064.P3062446250484090984

/-!
# A314065: Coordination sequence Gal.4.143.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314065, the canonical program `A314065.P12648711868558918415` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314065 has offset 0).

The definition of A314065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314065.P12648711868558918415

`A313613(n)+Δ[A011858(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314065

/-- `A313613(n)+Δ[A011858(n)]` -/
def P12648711868558918415.Spec : Prop :=
  ∀ n, P12648711868558918415.a n = A314065 n

theorem P12648711868558918415.correct : P12648711868558918415.Spec := by
  intro n
  simp only [A314065]

end A314065

/-! ## A314065.P6361422497082284221

`A313613(n)+A057354(n+1)`
-/

namespace A314065.P6361422497082284221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n + A057354 (n + 1)

end

end A314065.P6361422497082284221

namespace A314065

/-- `A313613(n)+A057354(n+1)` -/
def P6361422497082284221.Spec : Prop :=
  ∀ n, P6361422497082284221.a n = A314065 n

end A314065

/-! ## A314065.P3194174437629940225

`A313613(n)+A134119(2*n)`
-/

namespace A314065.P3194174437629940225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n + A134119 (2 * n)

end

end A314065.P3194174437629940225

namespace A314065

/-- `A313613(n)+A134119(2*n)` -/
def P3194174437629940225.Spec : Prop :=
  ∀ n, P3194174437629940225.a n = A314065 n

end A314065

/-! ## A314065.P18241070972635151507

`A047486(n+1)+A313613(n)-A047263(n+1)`
-/

namespace A314065.P18241070972635151507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A313613 n - A047263 (n + 1))

end

end A314065.P18241070972635151507

namespace A314065

/-- `A047486(n+1)+A313613(n)-A047263(n+1)` -/
def P18241070972635151507.Spec : Prop :=
  ∀ n, P18241070972635151507.a n = A314065 n

end A314065

/-! ## A314065.P12232843922248844218

`A313886(n)-A238468(n)`
-/

namespace A314065.P12232843922248844218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313886 n - A238468 n

end

end A314065.P12232843922248844218

namespace A314065

/-- `A313886(n)-A238468(n)` -/
def P12232843922248844218.Spec : Prop :=
  ∀ n, P12232843922248844218.a n = A314065 n

theorem P12232843922248844218.correct : P12232843922248844218.Spec := by
  intro n
  simp only [A314065, Nat.add_sub_cancel, A314065.P12232843922248844218.a, A314065.P12648711868558918415.f1, A314065.P12648711868558918415.a, A011858, A011858.P16234308487928340219.a, A238468, A238468.P4933202717561499868.f1, A238468.P4933202717561499868.a, A313613, A313613.P7914765852516180846.a, A313886, A313886.P7964654084848802356.a, A008574, A008574.P1300280032690682112.a, A074232, A074232.P14046966601635823854.f2, A074232.P14046966601635823854.f1, A074232.P14046966601635823854.a, A234044, A234044.P13328901318595551424.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314065

/-!
# A314066: Coordination sequence Gal.4.144.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314066, the canonical program `A314066.P16209138057789803329` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314066 has offset 0).

The definition of A314066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314066.P16209138057789803329

`2*A314043(n)-A314022(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314066

/-- `2*A314043(n)-A314022(n)` -/
def P16209138057789803329.Spec : Prop :=
  ∀ n, P16209138057789803329.a n = A314066 n

theorem P16209138057789803329.correct : P16209138057789803329.Spec := by
  intro n
  simp only [A314066]

end A314066

/-! ## A314066.P11005176212595297772

`2*A314048(n)-A314031(n)`
-/

namespace A314066.P11005176212595297772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314048 n - A314031 n

end

end A314066.P11005176212595297772

namespace A314066

/-- `2*A314048(n)-A314031(n)` -/
def P11005176212595297772.Spec : Prop :=
  ∀ n, P11005176212595297772.a n = A314066 n

end A314066

/-! ## A314066.P1011344106834261405

`A313789(n)+A014021(n+10)`
-/

namespace A314066.P1011344106834261405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n + A014021 (n + 10)

end

end A314066.P1011344106834261405

namespace A314066

/-- `A313789(n)+A014021(n+10)` -/
def P1011344106834261405.Spec : Prop :=
  ∀ n, P1011344106834261405.a n = A314066 n

end A314066

/-! ## A314066.P12671401511652673590

`A310400(n)+A004525(A064429(n))`
-/

namespace A314066.P12671401511652673590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310400 n + A004525 (A064429 n).toNat

end

end A314066.P12671401511652673590

namespace A314066

/-- `A310400(n)+A004525(A064429(n))` -/
def P12671401511652673590.Spec : Prop :=
  ∀ n, P12671401511652673590.a n = A314066 n

end A314066

/-! ## A314066.P4619593516265766677

`A315641(n)-A102283(A004525(n))`
-/

namespace A314066.P4619593516265766677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315641 n - A102283 (A004525 n).toNat

end

end A314066.P4619593516265766677

namespace A314066

/-- `A315641(n)-A102283(A004525(n))` -/
def P4619593516265766677.Spec : Prop :=
  ∀ n, P4619593516265766677.a n = A314066 n

end A314066

/-! ## A314066.P13951219762745791248

`A315641(n)+A102283(2*A004525(n))`
-/

namespace A314066.P13951219762745791248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315641 n + A102283 (2 * A004525 n).toNat

end

end A314066.P13951219762745791248

namespace A314066

/-- `A315641(n)+A102283(2*A004525(n))` -/
def P13951219762745791248.Spec : Prop :=
  ∀ n, P13951219762745791248.a n = A314066 n

end A314066

/-! ## A314066.P13094936195721200650

`A004525(n)+A314043(n)-A004396(A004525(n))`
-/

namespace A314066.P13094936195721200650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314043 n - A004396 (A004525 n).toNat)

end

end A314066.P13094936195721200650

namespace A314066

/-- `A004525(n)+A314043(n)-A004396(A004525(n))` -/
def P13094936195721200650.Spec : Prop :=
  ∀ n, P13094936195721200650.a n = A314066 n

theorem P13094936195721200650.correct : P13094936195721200650.Spec := by
  intro n
  simp only [A314066, Nat.add_sub_cancel, A314066.P13094936195721200650.a, A314066.P16209138057789803329.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A314022, A314022.P5759349393798454835.a, A314043, A314043.P3377773668893100370.a, A310393, A310393.P12744869705430097846.a, A310410, A310410.P13699142073105713236.a, A312933, A312933.P2044792691388858937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314066

/-! ## A314066.P17372621311443912990

`A314151(n)-Δ[A011865(n)]`
-/

namespace A314066.P17372621311443912990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n - (f1 (n + 1) - f1 n)

end

end A314066.P17372621311443912990

namespace A314066

/-- `A314151(n)-Δ[A011865(n)]` -/
def P17372621311443912990.Spec : Prop :=
  ∀ n, P17372621311443912990.a n = A314066 n

end A314066

/-! ## A314066.P2583562654199247769

`A314151(n)+A001489(Δ[A011865(n)])`
-/

namespace A314066.P2583562654199247769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n + A001489 (f1 (n + 1) - f1 n).toNat

end

end A314066.P2583562654199247769

namespace A314066

/-- `A314151(n)+A001489(Δ[A011865(n)])` -/
def P2583562654199247769.Spec : Prop :=
  ∀ n, P2583562654199247769.a n = A314066 n

end A314066

/-! ## A314066.P2643273986587590981

`A314222(n)-Δ[2*A011865(n)]`
-/

namespace A314066.P2643273986587590981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314222 n - (f1 (n + 1) - f1 n)

end

end A314066.P2643273986587590981

namespace A314066

/-- `A314222(n)-Δ[2*A011865(n)]` -/
def P2643273986587590981.Spec : Prop :=
  ∀ n, P2643273986587590981.a n = A314066 n

end A314066

/-! ## A314066.P17958623149325417208

`A314222(n)-Δ[A005408(A011865(n))]`
-/

namespace A314066.P17958623149325417208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A011865 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314222 n - (f1 (n + 1) - f1 n)

end

end A314066.P17958623149325417208

namespace A314066

/-- `A314222(n)-Δ[A005408(A011865(n))]` -/
def P17958623149325417208.Spec : Prop :=
  ∀ n, P17958623149325417208.a n = A314066 n

end A314066

/-!
# A314067: Coordination sequence Gal.3.53.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314067, the canonical program `A314067.P8522433514397796165` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314067 has offset 0).

The definition of A314067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314067.P8522433514397796165

`A093390(A004767(n))+A008574(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A314067

/-- `A093390(A004767(n))+A008574(n)` -/
def P8522433514397796165.Spec : Prop :=
  ∀ n, P8522433514397796165.a n = A314067 n

theorem P8522433514397796165.correct : P8522433514397796165.Spec := by
  intro n
  simp only [A314067]

end A314067

/-! ## A314067.P15909429449351646169

`A310412(n)+A004396(A004396(n))`
-/

namespace A314067.P15909429449351646169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310412 n + A004396 (A004396 n).toNat

end

end A314067.P15909429449351646169

namespace A314067

/-- `A310412(n)+A004396(A004396(n))` -/
def P15909429449351646169.Spec : Prop :=
  ∀ n, P15909429449351646169.a n = A314067 n

end A314067

/-! ## A314067.P1202189501285234990

`A310521(n)+A102283(A004396(n))`
-/

namespace A314067.P1202189501285234990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310521 n + A102283 (A004396 n).toNat

end

end A314067.P1202189501285234990

namespace A314067

/-- `A310521(n)+A102283(A004396(n))` -/
def P1202189501285234990.Spec : Prop :=
  ∀ n, P1202189501285234990.a n = A314067 n

end A314067

/-! ## A314067.P13082717216327838820

`A315646(n)-A128834(A004396(n))`
-/

namespace A314067.P13082717216327838820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315646 n - A128834 (A004396 n).toNat

end

end A314067.P13082717216327838820

namespace A314067

/-- `A315646(n)-A128834(A004396(n))` -/
def P13082717216327838820.Spec : Prop :=
  ∀ n, P13082717216327838820.a n = A314067 n

end A314067

/-! ## A314067.P2758382012380705265

`A315475(n)-A128834(A006369(n))`
-/

namespace A314067.P2758382012380705265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n - A128834 (A006369 n).toNat

end

end A314067.P2758382012380705265

namespace A314067

/-- `A315475(n)-A128834(A006369(n))` -/
def P2758382012380705265.Spec : Prop :=
  ∀ n, P2758382012380705265.a n = A314067 n

end A314067

/-! ## A314067.P16867869092333193926

`A093390(A062545(2*n))+A008574(n)`
-/

namespace A314067.P16867869092333193926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 (A062545 (2 * n)).toNat + A008574 n

end

end A314067.P16867869092333193926

namespace A314067

/-- `A093390(A062545(2*n))+A008574(n)` -/
def P16867869092333193926.Spec : Prop :=
  ∀ n, P16867869092333193926.a n = A314067 n

end A314067

/-! ## A314067.P12311609703581878877

`A310521(n)-A102283(2*A004396(n))`
-/

namespace A314067.P12311609703581878877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310521 n - A102283 (2 * A004396 n).toNat

end

end A314067.P12311609703581878877

namespace A314067

/-- `A310521(n)-A102283(2*A004396(n))` -/
def P12311609703581878877.Spec : Prop :=
  ∀ n, P12311609703581878877.a n = A314067 n

end A314067

/-! ## A314067.P2842239708610933106

`A315475(n)-A102283(A004396(2*n))`
-/

namespace A314067.P2842239708610933106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n - A102283 (A004396 (2 * n)).toNat

end

end A314067.P2842239708610933106

namespace A314067

/-- `A315475(n)-A102283(A004396(2*n))` -/
def P2842239708610933106.Spec : Prop :=
  ∀ n, P2842239708610933106.a n = A314067 n

end A314067

/-! ## A314067.P1553335099893928783

`A313894(n)-A102283(A006369(2*n))`
-/

namespace A314067.P1553335099893928783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A102283 (A006369 (2 * n)).toNat

end

end A314067.P1553335099893928783

namespace A314067

/-- `A313894(n)-A102283(A006369(2*n))` -/
def P1553335099893928783.Spec : Prop :=
  ∀ n, P1553335099893928783.a n = A314067 n

end A314067

/-! ## A314067.P11653998093116267258

`A313799(n)-A134667(A006369(2*n))`
-/

namespace A314067.P11653998093116267258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n - A134667 (A006369 (2 * n)).toNat

end

end A314067.P11653998093116267258

namespace A314067

/-- `A313799(n)-A134667(A006369(2*n))` -/
def P11653998093116267258.Spec : Prop :=
  ∀ n, P11653998093116267258.a n = A314067 n

end A314067

/-! ## A314067.P12119564423145499649

`A315475(n)+A102283(A004396(n)+n)`
-/

namespace A314067.P12119564423145499649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n + A102283 (A004396 n + (n : ℤ)).toNat

end

end A314067.P12119564423145499649

namespace A314067

/-- `A315475(n)+A102283(A004396(n)+n)` -/
def P12119564423145499649.Spec : Prop :=
  ∀ n, P12119564423145499649.a n = A314067 n

end A314067

/-! ## A314067.P2279827442400147283

`A313894(n)-A128834(A042965(2*n+1))`
-/

namespace A314067.P2279827442400147283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A128834 (A042965 (2 * n + 1)).toNat

end

end A314067.P2279827442400147283

namespace A314067

/-- `A313894(n)-A128834(A042965(2*n+1))` -/
def P2279827442400147283.Spec : Prop :=
  ∀ n, P2279827442400147283.a n = A314067 n

end A314067

/-! ## A314067.P13509781834707685674

`A313799(n)-A134667(A042965(2*n+1))`
-/

namespace A314067.P13509781834707685674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n - A134667 (A042965 (2 * n + 1)).toNat

end

end A314067.P13509781834707685674

namespace A314067

/-- `A313799(n)-A134667(A042965(2*n+1))` -/
def P13509781834707685674.Spec : Prop :=
  ∀ n, P13509781834707685674.a n = A314067 n

end A314067

/-! ## A314067.P13977553824115848833

`A313894(n)+A102283(A006369(n)-A102283(n))`
-/

namespace A314067.P13977553824115848833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + A102283 (A006369 n - A102283 n).toNat

end

end A314067.P13977553824115848833

namespace A314067

/-- `A313894(n)+A102283(A006369(n)-A102283(n))` -/
def P13977553824115848833.Spec : Prop :=
  ∀ n, P13977553824115848833.a n = A314067 n

end A314067

/-! ## A314067.P8188644193789870183

`A313201(2*n)+A008574(n+1)-(8*n+4)`
-/

namespace A314067.P8188644193789870183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313201 (2 * n) + (A008574 (n + 1) - (8 * n + 4 : ℤ))

end

end A314067.P8188644193789870183

namespace A314067

/-- `A313201(2*n)+A008574(n+1)-(8*n+4)` -/
def P8188644193789870183.Spec : Prop :=
  ∀ n, P8188644193789870183.a n = A314067 n

end A314067

/-! ## A314067.P14536684524814055640

`A004396(A313201(2*n)-A004396(2*n))`
-/

namespace A314067.P14536684524814055640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313201 (2 * n) - A004396 (2 * n)).toNat

end

end A314067.P14536684524814055640

namespace A314067

/-- `A004396(A313201(2*n)-A004396(2*n))` -/
def P14536684524814055640.Spec : Prop :=
  ∀ n, P14536684524814055640.a n = A314067 n

end A314067

/-! ## A314067.P7161473853719220826

`A008574(2*n)+A313201(2*n)-A008458(2*n)`
-/

namespace A314067.P7161473853719220826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) + (A313201 (2 * n) - A008458 (2 * n))

end

end A314067.P7161473853719220826

namespace A314067

/-- `A008574(2*n)+A313201(2*n)-A008458(2*n)` -/
def P7161473853719220826.Spec : Prop :=
  ∀ n, P7161473853719220826.a n = A314067 n

end A314067

/-! ## A314067.P3661779197946985043

`2*A008574(2*n)-A315427(2*n)`
-/

namespace A314067.P3661779197946985043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315427 (2 * n)

end

end A314067.P3661779197946985043

namespace A314067

/-- `2*A008574(2*n)-A315427(2*n)` -/
def P3661779197946985043.Spec : Prop :=
  ∀ n, P3661779197946985043.a n = A314067 n

end A314067

/-! ## A314067.P5969860855619616163

`A004525(A310538(2*n))`
-/

namespace A314067.P5969860855619616163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310538 (2 * n)).toNat

end

end A314067.P5969860855619616163

namespace A314067

/-- `A004525(A310538(2*n))` -/
def P5969860855619616163.Spec : Prop :=
  ∀ n, P5969860855619616163.a n = A314067 n

end A314067

/-! ## A314067.P6642318638050472862

`A068962(A315427(n)+A008590(n))`
-/

namespace A314067.P6642318638050472862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A315427 n + A008590 n).toNat

end

end A314067.P6642318638050472862

namespace A314067

/-- `A068962(A315427(n)+A008590(n))` -/
def P6642318638050472862.Spec : Prop :=
  ∀ n, P6642318638050472862.a n = A314067 n

end A314067

/-!
# A314068: Coordination sequence Gal.3.55.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314068, the canonical program `A314068.P13841784540353294122` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314068 has offset 0).

The definition of A314068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314068.P13841784540353294122

`A310409(n)+A004525(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314068

/-- `A310409(n)+A004525(n)` -/
def P13841784540353294122.Spec : Prop :=
  ∀ n, P13841784540353294122.a n = A314068 n

theorem P13841784540353294122.correct : P13841784540353294122.Spec := by
  intro n
  simp only [A314068]

end A314068

/-! ## A314068.P17194516383951979934

`A310409(n)+Δ[A054925(n)]`
-/

namespace A314068.P17194516383951979934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310409 n + (f1 (n + 1) - f1 n)

end

end A314068.P17194516383951979934

namespace A314068

/-- `A310409(n)+Δ[A054925(n)]` -/
def P17194516383951979934.Spec : Prop :=
  ∀ n, P17194516383951979934.a n = A314068 n

end A314068

/-! ## A314068.P1568848176423137830

`A151988(A008574(n))+A004525(n)`
-/

namespace A314068.P1568848176423137830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008574 n).toNat + A004525 n

end

end A314068.P1568848176423137830

namespace A314068

/-- `A151988(A008574(n))+A004525(n)` -/
def P1568848176423137830.Spec : Prop :=
  ∀ n, P1568848176423137830.a n = A314068 n

end A314068

/-! ## A314068.P7331574126317592485

`A310409(n)+A004526(A098180(n))`
-/

namespace A314068.P7331574126317592485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310409 n + A004526 (A098180 n).toNat

end

end A314068.P7331574126317592485

namespace A314068

/-- `A310409(n)+A004526(A098180(n))` -/
def P7331574126317592485.Spec : Prop :=
  ∀ n, P7331574126317592485.a n = A314068 n

end A314068

/-! ## A314068.P3967559497052880130

`A302405(A239492(n))+A301291(n)`
-/

namespace A314068.P3967559497052880130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302405 (A239492 n).toNat + A301291 n

end

end A314068.P3967559497052880130

namespace A314068

/-- `A302405(A239492(n))+A301291(n)` -/
def P3967559497052880130.Spec : Prop :=
  ∀ n, P3967559497052880130.a n = A314068 n

end A314068

/-! ## A314068.P15055955890513335769

`A310409(n)+A002265(A047493(n+1))`
-/

namespace A314068.P15055955890513335769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310409 n + A002265 (A047493 (n + 1)).toNat

end

end A314068.P15055955890513335769

namespace A314068

/-- `A310409(n)+A002265(A047493(n+1))` -/
def P15055955890513335769.Spec : Prop :=
  ∀ n, P15055955890513335769.a n = A314068 n

end A314068

/-! ## A314068.P15924357126216744897

`A301291(n)+A005843(A057354(n+1))`
-/

namespace A314068.P15924357126216744897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A005843 (A057354 (n + 1)).toNat

end

end A314068.P15924357126216744897

namespace A314068

/-- `A301291(n)+A005843(A057354(n+1))` -/
def P15924357126216744897.Spec : Prop :=
  ∀ n, P15924357126216744897.a n = A314068 n

end A314068

/-! ## A314068.P698778630510883820

`A301291(n)+A004524(A047412(n+2))`
-/

namespace A314068.P698778630510883820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A004524 (A047412 (n + 2)).toNat

end

end A314068.P698778630510883820

namespace A314068

/-- `A301291(n)+A004524(A047412(n+2))` -/
def P698778630510883820.Spec : Prop :=
  ∀ n, P698778630510883820.a n = A314068 n

end A314068

/-! ## A314068.P5658759361290418856

`2*A314161(n)-A314227(n)`
-/

namespace A314068.P5658759361290418856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314161 n - A314227 n

end

end A314068.P5658759361290418856

namespace A314068

/-- `2*A314161(n)-A314227(n)` -/
def P5658759361290418856.Spec : Prop :=
  ∀ n, P5658759361290418856.a n = A314068 n

theorem P5658759361290418856.correct : P5658759361290418856.Spec := by
  intro n
  simp only [A314068, Nat.add_sub_cancel, A314068.P5658759361290418856.a, A314068.P13841784540353294122.a, A004525, A004525.P4158271949796742323.a, A310409, A310409.P15130947317478675071.a, A314161, A314161.P400528877634276167.a, A314227, A314227.P16301604767465595439.a, A004277, A004277.P16255821370285667660.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314068

/-! ## A314068.P11527715161125255604

`A314227(n)-A005843(A314227(n)-A314161(n))`
-/

namespace A314068.P11527715161125255604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314227 n - A005843 (A314227 n - A314161 n).toNat

end

end A314068.P11527715161125255604

namespace A314068

/-- `A314227(n)-A005843(A314227(n)-A314161(n))` -/
def P11527715161125255604.Spec : Prop :=
  ∀ n, P11527715161125255604.a n = A314068 n

end A314068

/-! ## A314068.P10652844731922567287

`A301291(n)+A301718(n)-A250120(n)`
-/

namespace A314068.P10652844731922567287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + (A301718 n - A250120 n)

end

end A314068.P10652844731922567287

namespace A314068

/-- `A301291(n)+A301718(n)-A250120(n)` -/
def P10652844731922567287.Spec : Prop :=
  ∀ n, P10652844731922567287.a n = A314068 n

end A314068

/-! ## A314068.P12926608299729146737

`A005843(A314161(n))-A314227(n)`
-/

namespace A314068.P12926608299729146737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314161 n).toNat - A314227 n

end

end A314068.P12926608299729146737

namespace A314068

/-- `A005843(A314161(n))-A314227(n)` -/
def P12926608299729146737.Spec : Prop :=
  ∀ n, P12926608299729146737.a n = A314068 n

end A314068

/-! ## A314068.P16085490975550029469

`A004396(A315543(n)+A265188(n+1))`
-/

namespace A314068.P16085490975550029469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315543 n + A265188 (n + 1)).toNat

end

end A314068.P16085490975550029469

namespace A314068

/-- `A004396(A315543(n)+A265188(n+1))` -/
def P16085490975550029469.Spec : Prop :=
  ∀ n, P16085490975550029469.a n = A314068 n

end A314068

/-! ## A314068.P12183469321289869920

`A004525(A312658(2*n))+A004525(n)`
-/

namespace A314068.P12183469321289869920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312658 (2 * n)).toNat + A004525 n

end

end A314068.P12183469321289869920

namespace A314068

/-- `A004525(A312658(2*n))+A004525(n)` -/
def P12183469321289869920.Spec : Prop :=
  ∀ n, P12183469321289869920.a n = A314068 n

end A314068

/-! ## A314068.P9788068142071191842

`A004525(A312658(2*n)+n)`
-/

namespace A314068.P9788068142071191842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312658 (2 * n) + (n : ℤ)).toNat

end

end A314068.P9788068142071191842

namespace A314068

/-- `A004525(A312658(2*n)+n)` -/
def P9788068142071191842.Spec : Prop :=
  ∀ n, P9788068142071191842.a n = A314068 n

end A314068

/-!
# A314069: Coordination sequence Gal.6.652.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314069, the canonical program `A314069.P10164089610408818193` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314069 has offset 0).

The definition of A314069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314069.P10164089610408818193

`A314061(n)+A314111(n)-A314100(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314069

/-- `A314061(n)+A314111(n)-A314100(n)` -/
def P10164089610408818193.Spec : Prop :=
  ∀ n, P10164089610408818193.a n = A314069 n

theorem P10164089610408818193.correct : P10164089610408818193.Spec := by
  intro n
  simp only [A314069]

end A314069

/-! ## A314069.P739012765983252142

`A314061(n)+A314068(n)-A314059(n)`
-/

namespace A314069.P739012765983252142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314061 n + (A314068 n - A314059 n)

end

end A314069.P739012765983252142

namespace A314069

/-- `A314061(n)+A314068(n)-A314059(n)` -/
def P739012765983252142.Spec : Prop :=
  ∀ n, P739012765983252142.a n = A314069 n

end A314069

/-! ## A314069.P6497580280019459531

`A314049(n)+A011712(A185087(n))`
-/

namespace A314069.P6497580280019459531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n + A011712 (A185087 n).toNat

end

end A314069.P6497580280019459531

namespace A314069

/-- `A314049(n)+A011712(A185087(n))` -/
def P6497580280019459531.Spec : Prop :=
  ∀ n, P6497580280019459531.a n = A314069 n

end A314069

/-! ## A314069.P4404578213462337564

`A314049(n)+A285530(A003611(n+1))`
-/

namespace A314069.P4404578213462337564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n + A285530 (A003611 (n + 1)).toNat

end

end A314069.P4404578213462337564

namespace A314069

/-- `A314049(n)+A285530(A003611(n+1))` -/
def P4404578213462337564.Spec : Prop :=
  ∀ n, P4404578213462337564.a n = A314069 n

end A314069

/-! ## A314069.P16696893476787506650

`A314049(n)+A114482(9*n+4)`
-/

namespace A314069.P16696893476787506650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n + A114482 (9 * n + 4)

end

end A314069.P16696893476787506650

namespace A314069

/-- `A314049(n)+A114482(9*n+4)` -/
def P16696893476787506650.Spec : Prop :=
  ∀ n, P16696893476787506650.a n = A314069 n

end A314069

/-!
# A314070: Coordination sequence Gal.6.657.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314070, there is no canonical definition to state claims against.
-/

/-! ## A314070.P2870627436480832177

`A314049(n)+A037832(A129847(n))`
-/

namespace A314070.P2870627436480832177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n + A037832 (A129847 n).toNat

end

end A314070.P2870627436480832177

/-! ## A314070.P10438177098003188841

`A314145(n)-A266434(A225266(n+1))`
-/

namespace A314070.P10438177098003188841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314145 n - A266434 (A225266 (n + 1)).toNat

end

end A314070.P10438177098003188841

/-! ## A314070.P17063752711107336093

`A011712(A245814(n+1))+A314049(n)+A114482(9*n+4)`
-/

namespace A314070.P17063752711107336093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011712 (A245814 (n + 1)).toNat + (A314049 n + A114482 (9 * n + 4))

end

end A314070.P17063752711107336093

/-! ## A314070.P1896338787587097313

`A314056(n)+A102683(A002426(n))`
-/

namespace A314070.P1896338787587097313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314056 n + A102683 (A002426 n).toNat

end

end A314070.P1896338787587097313

/-! ## A314070.P8872006743439085020

`A301678(n)+A243840(A000041(n+2))`
-/

namespace A314070.P8872006743439085020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n + A243840 (A000041 (n + 2)).toNat

end

end A314070.P8872006743439085020

/-!
# A314071: Coordination sequence Gal.5.311.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314071, the canonical program `A314071.P11668273062377731027` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314071 has offset 0).

The definition of A314071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314071.P7347647698794973766

`A004396(A163818(n)+A022144(n))`
-/

namespace A314071.P7347647698794973766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A163818 n + A022144 n).toNat

end

end A314071.P7347647698794973766

namespace A314071

/-- `A004396(A163818(n)+A022144(n))` -/
def P7347647698794973766.Spec : Prop :=
  ∀ n, P7347647698794973766.a n = A314071 n

end A314071

/-! ## A314071.P11668273062377731027

`A004396(A315707(n)+A265188(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A314071

/-- `A004396(A315707(n)+A265188(n+1))` -/
def P11668273062377731027.Spec : Prop :=
  ∀ n, P11668273062377731027.a n = A314071 n

theorem P11668273062377731027.correct : P11668273062377731027.Spec := by
  intro n
  simp only [A314071]

end A314071

/-! ## A314071.P7561459009151088100

`A004396(A163818(n)+A008574(2*n))`
-/

namespace A314071.P7561459009151088100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A163818 n + A008574 (2 * n)).toNat

end

end A314071.P7561459009151088100

namespace A314071

/-- `A004396(A163818(n)+A008574(2*n))` -/
def P7561459009151088100.Spec : Prop :=
  ∀ n, P7561459009151088100.a n = A314071 n

end A314071

/-! ## A314071.P16705594122882719125

`A004396(A244895(3*n)+A022144(n))`
-/

namespace A314071.P16705594122882719125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A244895 (3 * n) + A022144 n).toNat

end

end A314071.P16705594122882719125

namespace A314071

/-- `A004396(A244895(3*n)+A022144(n))` -/
def P16705594122882719125.Spec : Prop :=
  ∀ n, P16705594122882719125.a n = A314071 n

end A314071

/-! ## A314071.P1541464433754550733

`A004396(A022144(n)-A244895(2*n))`
-/

namespace A314071.P1541464433754550733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A022144 n - A244895 (2 * n)).toNat

end

end A314071.P1541464433754550733

namespace A314071

/-- `A004396(A022144(n)-A244895(2*n))` -/
def P1541464433754550733.Spec : Prop :=
  ∀ n, P1541464433754550733.a n = A314071 n

end A314071

/-! ## A314071.P15811425809886036692

`A004396(A312928(n)+A265227(2*n+1))`
-/

namespace A314071.P15811425809886036692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312928 n + A265227 (2 * n + 1)).toNat

end

end A314071.P15811425809886036692

namespace A314071

/-- `A004396(A312928(n)+A265227(2*n+1))` -/
def P15811425809886036692.Spec : Prop :=
  ∀ n, P15811425809886036692.a n = A314071 n

end A314071

/-! ## A314071.P12124327070465995125

`A004396(A310409(n)+A004396(A310409(n)))`
-/

namespace A314071.P12124327070465995125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310409 n + A004396 (A310409 n).toNat).toNat

end

end A314071.P12124327070465995125

namespace A314071

/-- `A004396(A310409(n)+A004396(A310409(n)))` -/
def P12124327070465995125.Spec : Prop :=
  ∀ n, P12124327070465995125.a n = A314071 n

end A314071

/-! ## A314071.P10972016628783771475

`A274616(A163818(n)+A022144(n))`
-/

namespace A314071.P10972016628783771475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A163818 n + A022144 n).toNat

end

end A314071.P10972016628783771475

namespace A314071

/-- `A274616(A163818(n)+A022144(n))` -/
def P10972016628783771475.Spec : Prop :=
  ∀ n, P10972016628783771475.a n = A314071 n

end A314071

/-! ## A314071.P10526588717385540098

`A274616(A315707(n)+A265188(n+1))`
-/

namespace A314071.P10526588717385540098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A315707 n + A265188 (n + 1)).toNat

end

end A314071.P10526588717385540098

namespace A314071

/-- `A274616(A315707(n)+A265188(n+1))` -/
def P10526588717385540098.Spec : Prop :=
  ∀ n, P10526588717385540098.a n = A314071 n

end A314071

/-!
# A314072: Coordination sequence Gal.5.312.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314072, the canonical program `A314072.P13997368567095779612` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314072 has offset 0).

The definition of A314072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314072.P13997368567095779612

`A314129(n)-A238470(3*n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A314072

/-- `A314129(n)-A238470(3*n)` -/
def P13997368567095779612.Spec : Prop :=
  ∀ n, P13997368567095779612.a n = A314072 n

theorem P13997368567095779612.correct : P13997368567095779612.Spec := by
  intro n
  simp only [A314072]

end A314072

/-! ## A314072.P8019603453499339065

`A314074(n)+A314123(n)-A314125(n)`
-/

namespace A314072.P8019603453499339065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314074 n + (A314123 n - A314125 n)

end

end A314072.P8019603453499339065

namespace A314072

/-- `A314074(n)+A314123(n)-A314125(n)` -/
def P8019603453499339065.Spec : Prop :=
  ∀ n, P8019603453499339065.a n = A314072 n

theorem P8019603453499339065.correct : P8019603453499339065.Spec := by
  intro n
  simp only [A314072, Nat.add_sub_cancel, A314072.P8019603453499339065.a, A314072.P13997368567095779612.a, A238470, A238470.P1028853406756724010.a, A314074, A314074.P2496956023396408743.a, A314123, A314123.P17491408075998672522.a, A314125, A314125.P17964618951199002530.a, A314129, A314129.P3295900941499139215.a, A004525, A004525.P4158271949796742323.a, A008586, A008586.P15642444062404201100.a, A242062, A242062.P1082147046428175291.a, A310372, A310372.P13571883006595967654.a, A313115, A313115.P1984220492497243584.a, A313957, A313957.P3646171935266098749.a, A313966, A313966.P14662508330527286566.a, A004275, A004275.P5432371984586133349.a, A004523, A004523.P10612776629676351712.a, A004776, A004776.P12492855655341303098.a, A028310, A028310.P18130301328277559831.a, A145569, A145569.P12552234012801179723.a, A311501, A311501.P3617403906977629789.a, A315020, A315020.P9897744658843174856.f1, A315020.P9897744658843174856.a, A011861, A011861.P4500963193198654930.a, A301291, A301291.P14013868135471218190.a, A314829, A314829.P8333159363270422796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314072

/-! ## A314072.P4219460782731504823

`A314074(n)+A314129(n)-A314130(n)`
-/

namespace A314072.P4219460782731504823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314074 n + (A314129 n - A314130 n)

end

end A314072.P4219460782731504823

namespace A314072

/-- `A314074(n)+A314129(n)-A314130(n)` -/
def P4219460782731504823.Spec : Prop :=
  ∀ n, P4219460782731504823.a n = A314072 n

theorem P4219460782731504823.correct : P4219460782731504823.Spec := by
  intro n
  simp only [A314072, Nat.add_sub_cancel, A314072.P4219460782731504823.a, A314072.P13997368567095779612.a, A238470, A238470.P1028853406756724010.a, A314074, A314074.P2496956023396408743.a, A314129, A314129.P3295900941499139215.a, A314130, A314130.P11569106488579326638.a, A313957, A313957.P3646171935266098749.a, A313966, A313966.P14662508330527286566.a, A314123, A314123.P17491408075998672522.a, A314125, A314125.P17964618951199002530.a, A004523, A004523.P10612776629676351712.a, A004525, A004525.P4158271949796742323.a, A008586, A008586.P15642444062404201100.a, A028310, A028310.P18130301328277559831.a, A145569, A145569.P12552234012801179723.a, A242062, A242062.P1082147046428175291.a, A310372, A310372.P13571883006595967654.a, A313115, A313115.P1984220492497243584.a, A315020, A315020.P9897744658843174856.f1, A315020.P9897744658843174856.a, A004275, A004275.P5432371984586133349.a, A004776, A004776.P12492855655341303098.a, A011861, A011861.P4500963193198654930.a, A311501, A311501.P3617403906977629789.a, A314829, A314829.P8333159363270422796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314072

/-! ## A314072.P12241432696494040896

`or(A011712(A027974(n)), A314069(n))`
-/

namespace A314072.P12241432696494040896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011712 (A027974 n).toNat) (A314069 n)

end

end A314072.P12241432696494040896

namespace A314072

/-- `or(A011712(A027974(n)), A314069(n))` -/
def P12241432696494040896.Spec : Prop :=
  ∀ n, P12241432696494040896.a n = A314072 n

end A314072

/-! ## A314072.P3783704897499594072

`or(A106030(A113370(n)), A301678(n))`
-/

namespace A314072.P3783704897499594072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106030 (A113370 n).toNat) (A301678 n)

end

end A314072.P3783704897499594072

namespace A314072

/-- `or(A106030(A113370(n)), A301678(n))` -/
def P3783704897499594072.Spec : Prop :=
  ∀ n, P3783704897499594072.a n = A314072 n

end A314072

/-!
# A314073: Coordination sequence Gal.6.489.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314073, there is no canonical definition to state claims against.
-/

/-! ## A314073.P4387660594300657141

`A334739(A022182(n))+A314072(n)`
-/

namespace A314073.P4387660594300657141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334739 (A022182 n).toNat + A314072 n

end

end A314073.P4387660594300657141

/-! ## A314073.P9920689659902874906

`A314056(n)+A185651(A351870(n))`
-/

namespace A314073.P9920689659902874906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314056 n + A185651 (A351870 n).toNat

end

end A314073.P9920689659902874906

/-! ## A314073.P7770835154857567155

`or(A000005(A061396(n)), A315061(n))`
-/

namespace A314073.P7770835154857567155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A061396 n).toNat) (A315061 n)

end

end A314073.P7770835154857567155

/-! ## A314073.P7084220564284819662

`or(A004526(n), A313758(A062399(n)))`
-/

namespace A314073.P7084220564284819662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004526 n) (A313758 (A062399 n).toNat)

end

end A314073.P7084220564284819662

/-! ## A314073.P4532735677527738657

`or(A004526(n), A313758(A351870(n)))`
-/

namespace A314073.P4532735677527738657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004526 n) (A313758 (A351870 n).toNat)

end

end A314073.P4532735677527738657

/-!
# A314074: Coordination sequence Gal.5.310.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314074, the canonical program `A314074.P2496956023396408743` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314074 has offset 0).

The definition of A314074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314074.P2496956023396408743

`A314072(n)+A314125(n)-A314123(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A314074

/-- `A314072(n)+A314125(n)-A314123(n)` -/
def P2496956023396408743.Spec : Prop :=
  ∀ n, P2496956023396408743.a n = A314074 n

theorem P2496956023396408743.correct : P2496956023396408743.Spec := by
  intro n
  simp only [A314074]

end A314074

/-! ## A314074.P8402423765029378205

`A314130(n)+A238469(2*n)`
-/

namespace A314074.P8402423765029378205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314130 n + A238469 (2 * n)

end

end A314074.P8402423765029378205

namespace A314074

/-- `A314130(n)+A238469(2*n)` -/
def P8402423765029378205.Spec : Prop :=
  ∀ n, P8402423765029378205.a n = A314074 n

end A314074

/-! ## A314074.P9120894031842664431

`A314130(n)+A238470(4*n)`
-/

namespace A314074.P9120894031842664431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314130 n + A238470 (4 * n)

end

end A314074.P9120894031842664431

namespace A314074

/-- `A314130(n)+A238470(4*n)` -/
def P9120894031842664431.Spec : Prop :=
  ∀ n, P9120894031842664431.a n = A314074 n

end A314074

/-! ## A314074.P11628113470159421621

`A314072(n)+A314130(n)-A314129(n)`
-/

namespace A314074.P11628113470159421621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314072 n + (A314130 n - A314129 n)

end

end A314074.P11628113470159421621

namespace A314074

/-- `A314072(n)+A314130(n)-A314129(n)` -/
def P11628113470159421621.Spec : Prop :=
  ∀ n, P11628113470159421621.a n = A314074 n

theorem P11628113470159421621.correct : P11628113470159421621.Spec := by
  intro n
  simp only [A314074, Nat.add_sub_cancel, A314074.P11628113470159421621.a, A314074.P2496956023396408743.a, A314072, A314072.P13997368567095779612.a, A314123, A314123.P17491408075998672522.a, A314125, A314125.P17964618951199002530.a, A314129, A314129.P3295900941499139215.a, A314130, A314130.P11569106488579326638.a, A004525, A004525.P4158271949796742323.a, A008586, A008586.P15642444062404201100.a, A238470, A238470.P1028853406756724010.a, A242062, A242062.P1082147046428175291.a, A310372, A310372.P13571883006595967654.a, A313115, A313115.P1984220492497243584.a, A313957, A313957.P3646171935266098749.a, A313966, A313966.P14662508330527286566.a, A004275, A004275.P5432371984586133349.a, A004523, A004523.P10612776629676351712.a, A004776, A004776.P12492855655341303098.a, A028310, A028310.P18130301328277559831.a, A145569, A145569.P12552234012801179723.a, A311501, A311501.P3617403906977629789.a, A315020, A315020.P9897744658843174856.f1, A315020.P9897744658843174856.a, A011861, A011861.P4500963193198654930.a, A301291, A301291.P14013868135471218190.a, A314829, A314829.P8333159363270422796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314074

/-! ## A314074.P6672778467881442181

`A028310(A314130(n)-A238470(3*n))`
-/

namespace A314074.P6672778467881442181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A314130 n - A238470 (3 * n)).toNat

end

end A314074.P6672778467881442181

namespace A314074

/-- `A028310(A314130(n)-A238470(3*n))` -/
def P6672778467881442181.Spec : Prop :=
  ∀ n, P6672778467881442181.a n = A314074 n

end A314074

/-!
# A314075: Coordination sequence Gal.5.315.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314075, there is no canonical definition to state claims against.
-/

/-! ## A314075.P11960887334314906084

`A206903(3*n+1)-A205083(A251704(n+4))`
-/

namespace A314075.P11960887334314906084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206903 (3 * n + 1) - A205083 (A251704 (n + 4)).toNat

end

end A314075.P11960887334314906084

/-! ## A314075.P2844930934997891995

`A314057(n)+A230106(A299398(n+1))`
-/

namespace A314075.P2844930934997891995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314057 n + A230106 (A299398 (n + 1)).toNat

end

end A314075.P2844930934997891995

/-! ## A314075.P16607932778912196019

`A314148(n)-A037806(A264484(n+1))`
-/

namespace A314075.P16607932778912196019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314148 n - A037806 (A264484 (n + 1)).toNat

end

end A314075.P16607932778912196019

/-! ## A314075.P12018585079124582834

`A310456(n)+A193759(A167499(n))`
-/

namespace A314075.P12018585079124582834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310456 n + A193759 (A167499 n).toNat

end

end A314075.P12018585079124582834

/-!
# A314076: Coordination sequence Gal.5.324.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314076, there is no canonical definition to state claims against.
-/

/-! ## A314076.P4792823761330886255

`A314156(n)-A342753(A000032(n))`
-/

namespace A314076.P4792823761330886255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314156 n - A342753 (A000032 n).toNat

end

end A314076.P4792823761330886255

/-! ## A314076.P3449012657371420058

`A315651(n)-A023969(A267946(n+1))`
-/

namespace A314076.P3449012657371420058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315651 n - A023969 (A267946 (n + 1)).toNat

end

end A314076.P3449012657371420058

/-! ## A314076.P16226938196385932423

`A160755(A314156(n))+char[A057064(n+2)]`
-/

namespace A314076.P16226938196385932423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057064 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A314156 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A314076.P16226938196385932423

/-! ## A314076.P7566673176340076924

`A310412(n)+A001222(A064641(n))`
-/

namespace A314076.P7566673176340076924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310412 n + A001222 (A064641 n).toNat

end

end A314076.P7566673176340076924

/-! ## A314076.P13921134002497041421

`A314057(n)+A213728(A093160(n))`
-/

namespace A314076.P13921134002497041421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314057 n + A213728 (A093160 n).toNat

end

end A314076.P13921134002497041421

/-!
# A314077: Coordination sequence Gal.6.630.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314077, there is no canonical definition to state claims against.
-/

/-! ## A314077.P7628329342935081286

`A008706(n)+A005811(A000387(n))`
-/

namespace A314077.P7628329342935081286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A005811 (A000387 n).toNat

end

end A314077.P7628329342935081286

/-! ## A314077.P9383215099634547747

`A301678(n)+A001222(A042569(n))`
-/

namespace A314077.P9383215099634547747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n + A001222 (A042569 n).toNat

end

end A314077.P9383215099634547747

/-! ## A314077.P11012187536253786039

`A315339(n)+A008683(A041150(n))`
-/

namespace A314077.P11012187536253786039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315339 n + A008683 (A041150 n).toNat

end

end A314077.P11012187536253786039

/-! ## A314077.P5068755191228190579

`A313663(n)+A019269(A136304(n))`
-/

namespace A314077.P5068755191228190579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313663 n + A019269 (A136304 n).toNat

end

end A314077.P5068755191228190579

/-! ## A314077.P6795877189545802715

`A301708(n)-A128834(A001906(n+2))`
-/

namespace A314077.P6795877189545802715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n - A128834 (A001906 (n + 2)).toNat

end

end A314077.P6795877189545802715

/-!
# A314078: Coordination sequence Gal.6.658.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314078, the canonical program `A314078.P129206603809902003` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314078 has offset 0).

The definition of A314078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314078.P129206603809902003

`2*A314057(n)-A314025(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A314078

/-- `2*A314057(n)-A314025(n)` -/
def P129206603809902003.Spec : Prop :=
  ∀ n, P129206603809902003.a n = A314078 n

theorem P129206603809902003.correct : P129206603809902003.Spec := by
  intro n
  simp only [A314078]

end A314078

/-! ## A314078.P244174347993393971

`2*A313639(n)-A314720(n)`
-/

namespace A314078.P244174347993393971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313639 n - A314720 n

end

end A314078.P244174347993393971

namespace A314078

/-- `2*A313639(n)-A314720(n)` -/
def P244174347993393971.Spec : Prop :=
  ∀ n, P244174347993393971.a n = A314078 n

end A314078

/-! ## A314078.P857981327575289706

`A008458(n)+A310420(n)-A314210(n)`
-/

namespace A314078.P857981327575289706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A310420 n - A314210 n)

end

end A314078.P857981327575289706

namespace A314078

/-- `A008458(n)+A310420(n)-A314210(n)` -/
def P857981327575289706.Spec : Prop :=
  ∀ n, P857981327575289706.a n = A314078 n

end A314078

/-! ## A314078.P6955594927877918041

`A310404(n)+A314765(n)-A008574(n)`
-/

namespace A314078.P6955594927877918041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310404 n + (A314765 n - A008574 n)

end

end A314078.P6955594927877918041

namespace A314078

/-- `A310404(n)+A314765(n)-A008574(n)` -/
def P6955594927877918041.Spec : Prop :=
  ∀ n, P6955594927877918041.a n = A314078 n

end A314078

/-! ## A314078.P17574618274022858076

`A312944(n)+A313639(n)-A008574(n)`
-/

namespace A314078.P17574618274022858076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312944 n + (A313639 n - A008574 n)

end

end A314078.P17574618274022858076

namespace A314078

/-- `A312944(n)+A313639(n)-A008574(n)` -/
def P17574618274022858076.Spec : Prop :=
  ∀ n, P17574618274022858076.a n = A314078 n

end A314078

/-! ## A314078.P11803961903436475785

`A310404(n)+A313620(n)-A312891(n)`
-/

namespace A314078.P11803961903436475785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310404 n + (A313620 n - A312891 n)

end

end A314078.P11803961903436475785

namespace A314078

/-- `A310404(n)+A313620(n)-A312891(n)` -/
def P11803961903436475785.Spec : Prop :=
  ∀ n, P11803961903436475785.a n = A314078 n

end A314078

/-! ## A314078.P4178571844945849718

`A310420(n)+A314720(n)%A004277(n)`
-/

namespace A314078.P4178571844945849718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310420 n + Int.tmod (A314720 n) (A004277 n)

end

end A314078.P4178571844945849718

namespace A314078

/-- `A310420(n)+A314720(n)%A004277(n)` -/
def P4178571844945849718.Spec : Prop :=
  ∀ n, P4178571844945849718.a n = A314078 n

end A314078

/-! ## A314078.P1917960140107137589

`A310404(n)+A314765(n)%A004277(n)`
-/

namespace A314078.P1917960140107137589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310404 n + Int.tmod (A314765 n) (A004277 n)

end

end A314078.P1917960140107137589

namespace A314078

/-- `A310404(n)+A314765(n)%A004277(n)` -/
def P1917960140107137589.Spec : Prop :=
  ∀ n, P1917960140107137589.a n = A314078 n

end A314078

/-! ## A314078.P3783554836788477291

`A311626(n)+A314025(n)%A004277(n)`
-/

namespace A314078.P3783554836788477291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311626 n + Int.tmod (A314025 n) (A004277 n)

end

end A314078.P3783554836788477291

namespace A314078

/-- `A311626(n)+A314025(n)%A004277(n)` -/
def P3783554836788477291.Spec : Prop :=
  ∀ n, P3783554836788477291.a n = A314078 n

end A314078

/-! ## A314078.P2436875811996682116

`A314025(n)+A005843(A314057(n)-A314025(n))`
-/

namespace A314078.P2436875811996682116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314025 n + A005843 (A314057 n - A314025 n).toNat

end

end A314078.P2436875811996682116

namespace A314078

/-- `A314025(n)+A005843(A314057(n)-A314025(n))` -/
def P2436875811996682116.Spec : Prop :=
  ∀ n, P2436875811996682116.a n = A314078 n

end A314078

/-! ## A314078.P5328611532808008559

`A314720(n)+A005843(A313639(n)-A314720(n))`
-/

namespace A314078.P5328611532808008559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314720 n + A005843 (A313639 n - A314720 n).toNat

end

end A314078.P5328611532808008559

namespace A314078

/-- `A314720(n)+A005843(A313639(n)-A314720(n))` -/
def P5328611532808008559.Spec : Prop :=
  ∀ n, P5328611532808008559.a n = A314078 n

end A314078

/-! ## A314078.P10055930287889014592

`A005843(A313639(n))-A314720(n)`
-/

namespace A314078.P10055930287889014592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313639 n).toNat - A314720 n

end

end A314078.P10055930287889014592

namespace A314078

/-- `A005843(A313639(n))-A314720(n)` -/
def P10055930287889014592.Spec : Prop :=
  ∀ n, P10055930287889014592.a n = A314078 n

end A314078

/-! ## A314078.P11696482929184407358

`A005843(A314057(n))-A314025(n)`
-/

namespace A314078.P11696482929184407358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314057 n).toNat - A314025 n

end

end A314078.P11696482929184407358

namespace A314078

/-- `A005843(A314057(n))-A314025(n)` -/
def P11696482929184407358.Spec : Prop :=
  ∀ n, P11696482929184407358.a n = A314078 n

end A314078

/-! ## A314078.P4080700433402609692

`A004277(A312944(n)+n)-A314210(n)`
-/

namespace A314078.P4080700433402609692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312944 n + (n : ℤ)).toNat - A314210 n

end

end A314078.P4080700433402609692

namespace A314078

/-- `A004277(A312944(n)+n)-A314210(n)` -/
def P4080700433402609692.Spec : Prop :=
  ∀ n, P4080700433402609692.a n = A314078 n

end A314078

/-!
# A314079: Coordination sequence Gal.6.659.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314079, there is no canonical definition to state claims against.
-/

/-! ## A314079.P13644304690746958537

`∑[A001223(Δ[A130495(n+1)])]`
-/

namespace A314079.P13644304690746958537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130495 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314079.P13644304690746958537

/-! ## A314079.P12108297883119279021

`or(1, A351393(A007093(3*(n+1))))`
-/

namespace A314079.P12108297883119279021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A351393 (A007093 (3 * (n + 1))).toNat)

end

end A314079.P12108297883119279021

/-! ## A314079.P4699535984229745746

`A008458(n)-A353630(floor(4^n/3))`
-/

namespace A314079.P4699535984229745746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A353630 ⌊(4 ^ n : ℚ) / 3⌋.toNat

end

end A314079.P4699535984229745746

/-! ## A314079.P7703647744257537146

`∑[A145339(∑{e}[A007093(n), #]+(n+1)²)]`
-/

namespace A314079.P7703647744257537146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145339 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314079.P7703647744257537146

/-! ## A314079.P18029358020361225965

`A310531(n)+A175629(A121248(n+1))`
-/

namespace A314079.P18029358020361225965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310531 n + A175629 (A121248 (n + 1)).toNat

end

end A314079.P18029358020361225965

/-!
# A314081: Coordination sequence Gal.6.463.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314081, there is no canonical definition to state claims against.
-/

/-! ## A314081.P7608338627692414980

`A132284(A016861(n))+A014473(n)`
-/

namespace A314081.P7608338627692414980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132284 (A016861 n).toNat + A014473 n

end

end A314081.P7608338627692414980

/-! ## A314081.P14143591133038237893

`A007318(n)+A132284(A016861(n))-1`
-/

namespace A314081.P14143591133038237893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A132284 (A016861 n).toNat - 1)

end

end A314081.P14143591133038237893

/-! ## A314081.P14996203863519498234

`A007318(n)-(A029135(n)-A132284(A016861(n)))`
-/

namespace A314081.P14996203863519498234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (A029135 n - A132284 (A016861 n).toNat)

end

end A314081.P14996203863519498234

/-! ## A314081.P17384198104610053291

`A007318(n)-(A033999(2*n)-A132284(A016861(n)))`
-/

namespace A314081.P17384198104610053291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (A033999 (2 * n) - A132284 (A016861 n).toNat)

end

end A314081.P17384198104610053291

/-!
# A314082: Coordination sequence Gal.6.440.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314082, there is no canonical definition to state claims against.
-/

/-! ## A314082.P17706429523771883752

`A314083(n-A083894(A126291(n)))`
-/

namespace A314082.P17706429523771883752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314083 ((n : ℤ) - A083894 (A126291 n).toNat).toNat

end

end A314082.P17706429523771883752

/-! ## A314082.P9206123494386453348

`A314083(n)-A238403(A238497(n+1))`
-/

namespace A314082.P9206123494386453348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314083 n - A238403 (A238497 (n + 1)).toNat

end

end A314082.P9206123494386453348

/-! ## A314082.P153464589068094444

`∏{e}[3^n, A314083(#)]`
-/

namespace A314082.P153464589068094444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A314083 (Nat.factorization (f1 n) p)

end

end A314082.P153464589068094444

/-! ## A314082.P15323259316590174922

`A314083(A307298(∑[n]))`
-/

namespace A314082.P15323259316590174922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314083 (A307298 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A314082.P15323259316590174922

/-! ## A314082.P10269009359450044682

`A314083(A307299(∑[n]))`
-/

namespace A314082.P10269009359450044682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314083 (A307299 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A314082.P10269009359450044682

/-!
# A314083: Coordination sequence Gal.6.439.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314083, there is no canonical definition to state claims against.
-/

/-! ## A314083.P5100961532684288427

`or(A037908(A001405(n)), A314082(n))`
-/

namespace A314083.P5100961532684288427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037908 (A001405 n).toNat) (A314082 n)

end

end A314083.P5100961532684288427

/-! ## A314083.P534093288084716708

`A314082(n)+A083894(A126291(n))`
-/

namespace A314083.P534093288084716708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314082 n + A083894 (A126291 n).toNat

end

end A314083.P534093288084716708

/-! ## A314083.P8197364744694441185

`or(A104637(A236538(n+1)), A314082(n))`
-/

namespace A314083.P8197364744694441185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104637 (A236538 (n + 1)).toNat) (A314082 n)

end

end A314083.P8197364744694441185

/-! ## A314083.P16838475564576835058

`or(A252488(A130903(n+1)), A314082(n))`
-/

namespace A314083.P16838475564576835058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A252488 (A130903 (n + 1)).toNat) (A314082 n)

end

end A314083.P16838475564576835058

/-!
# A314084: Coordination sequence Gal.6.491.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314084, there is no canonical definition to state claims against.
-/

/-! ## A314084.P8198670112237019607

`A204542(n+1)+A000523(A343398(n))`
-/

namespace A314084.P8198670112237019607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204542 (n + 1) + A000523 (A343398 n).toNat

end

end A314084.P8198670112237019607

/-! ## A314084.P8110737541239747012

`A156900(3*n+1)+A010051(A113571(2*n+3))`
-/

namespace A314084.P8110737541239747012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156900 (3 * n + 1) + A010051 (A113571 (2 * n + 3)).toNat

end

end A314084.P8110737541239747012

/-!
# A314085: Coordination sequence Gal.6.132.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314085, the canonical program `A314085.P6510588875040797776` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314085 has offset 0).

The definition of A314085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314085.P6510588875040797776

`A315670(n)-A004525(A004396(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A314085

/-- `A315670(n)-A004525(A004396(n))` -/
def P6510588875040797776.Spec : Prop :=
  ∀ n, P6510588875040797776.a n = A314085 n

theorem P6510588875040797776.correct : P6510588875040797776.Spec := by
  intro n
  simp only [A314085]

end A314085

/-! ## A314085.P10367912957084893832

`A315681(n)-A004525(n)`
-/

namespace A314085.P10367912957084893832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315681 n - A004525 n

end

end A314085.P10367912957084893832

namespace A314085

/-- `A315681(n)-A004525(n)` -/
def P10367912957084893832.Spec : Prop :=
  ∀ n, P10367912957084893832.a n = A314085 n

theorem P10367912957084893832.correct : P10367912957084893832.Spec := by
  intro n
  simp only [A314085, Nat.add_sub_cancel, A314085.P10367912957084893832.a, A314085.P6510588875040797776.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A315670, A315670.P4155248808049658205.f1, A315670.P4155248808049658205.a, A315681, A315681.P15551591667760656861.a, A021913, A021913.P3902253882929539198.a, A315395, A315395.P11298806320610192218.a, A046978, A046978.P71107966793699888.a, A313485, A313485.P7677676480922091384.a, A047424, A047424.P18276099413945376937.f1, A047424.P18276099413945376937.f2, A047424.P18276099413945376937.a, A312890, A312890.P5869710039852604831.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314085

/-! ## A314085.P8101913755663612664

`A315681(n)-Δ[A054925(n)]`
-/

namespace A314085.P8101913755663612664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315681 n - (f1 (n + 1) - f1 n)

end

end A314085.P8101913755663612664

namespace A314085

/-- `A315681(n)-Δ[A054925(n)]` -/
def P8101913755663612664.Spec : Prop :=
  ∀ n, P8101913755663612664.a n = A314085 n

end A314085

/-! ## A314085.P17701691525366105678

`A315738(n)-A004396(n)`
-/

namespace A314085.P17701691525366105678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315738 n - A004396 n

end

end A314085.P17701691525366105678

namespace A314085

/-- `A315738(n)-A004396(n)` -/
def P17701691525366105678.Spec : Prop :=
  ∀ n, P17701691525366105678.a n = A314085 n

end A314085

/-! ## A314085.P18167435287020845624

`A315738(n)-A002264(2*n+1)`
-/

namespace A314085.P18167435287020845624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315738 n - A002264 (2 * n + 1)

end

end A314085.P18167435287020845624

namespace A314085

/-- `A315738(n)-A002264(2*n+1)` -/
def P18167435287020845624.Spec : Prop :=
  ∀ n, P18167435287020845624.a n = A314085 n

end A314085

/-! ## A314085.P6111511898401236954

`abs(A008592(n)-A314974(n))`
-/

namespace A314085.P6111511898401236954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314974 n|

end

end A314085.P6111511898401236954

namespace A314085

/-- `abs(A008592(n)-A314974(n))` -/
def P6111511898401236954.Spec : Prop :=
  ∀ n, P6111511898401236954.a n = A314085 n

end A314085

/-! ## A314085.P2900584471444950209

`2*A008706(n)-A314974(n)`
-/

namespace A314085.P2900584471444950209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314974 n

end

end A314085.P2900584471444950209

namespace A314085

/-- `2*A008706(n)-A314974(n)` -/
def P2900584471444950209.Spec : Prop :=
  ∀ n, P2900584471444950209.a n = A314085 n

end A314085

/-! ## A314085.P5079337984717446579

`A008458(n)+A008574(n)-A314974(n)`
-/

namespace A314085.P5079337984717446579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314974 n)

end

end A314085.P5079337984717446579

namespace A314085

/-- `A008458(n)+A008574(n)-A314974(n)` -/
def P5079337984717446579.Spec : Prop :=
  ∀ n, P5079337984717446579.a n = A314085 n

end A314085

/-! ## A314085.P18189140787469953079

`A004773(A313680(n))-A004773(n)`
-/

namespace A314085.P18189140787469953079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A313680 n).toNat - A004773 n

end

end A314085.P18189140787469953079

namespace A314085

/-- `A004773(A313680(n))-A004773(n)` -/
def P18189140787469953079.Spec : Prop :=
  ∀ n, P18189140787469953079.a n = A314085 n

end A314085

/-! ## A314085.P6104699223314238875

`(A008576(A313680(n))-A008576(n))/2`
-/

namespace A314085.P6104699223314238875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008576 (A313680 n).toNat - A008576 n : ℚ) / 2

end

end A314085.P6104699223314238875

namespace A314085

/-- `(A008576(A313680(n))-A008576(n))/2` -/
def P6104699223314238875.Spec : Prop :=
  ∀ n, P6104699223314238875.a n = (A314085 n : ℚ)

end A314085

/-! ## A314085.P10030716292168658963

`A005843(A008706(n))-A314974(n)`
-/

namespace A314085.P10030716292168658963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314974 n

end

end A314085.P10030716292168658963

namespace A314085

/-- `A005843(A008706(n))-A314974(n)` -/
def P10030716292168658963.Spec : Prop :=
  ∀ n, P10030716292168658963.a n = A314085 n

end A314085

/-! ## A314085.P13778213346641802130

`A004396(2*(A313680(n)-n))`
-/

namespace A314085.P13778213346641802130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313680 n - (n : ℤ))).toNat

end

end A314085.P13778213346641802130

namespace A314085

/-- `A004396(2*(A313680(n)-n))` -/
def P13778213346641802130.Spec : Prop :=
  ∀ n, P13778213346641802130.a n = A314085 n

end A314085

/-! ## A314085.P760668007981943914

`A004396(A005843(A313680(n)-n))`
-/

namespace A314085.P760668007981943914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 (A313680 n - (n : ℤ)).toNat).toNat

end

end A314085.P760668007981943914

namespace A314085

/-- `A004396(A005843(A313680(n)-n))` -/
def P760668007981943914.Spec : Prop :=
  ∀ n, P760668007981943914.a n = A314085 n

end A314085

/-!
# A314086: Coordination sequence Gal.6.232.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314086, the canonical program `A314086.P8308006086047164656` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314086 has offset 0).

The definition of A314086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314086.P6313041468854001619

`(A315725(n)+A310367(n))/2`
-/

namespace A314086.P6313041468854001619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315725 n + A310367 n : ℚ) / 2

end

end A314086.P6313041468854001619

namespace A314086

/-- `(A315725(n)+A310367(n))/2` -/
def P6313041468854001619.Spec : Prop :=
  ∀ n, P6313041468854001619.a n = (A314086 n : ℚ)

end A314086

/-! ## A314086.P8308006086047164656

`A310367(n)+A004525(A315725(n)-A310367(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A314086

/-- `A310367(n)+A004525(A315725(n)-A310367(n))` -/
def P8308006086047164656.Spec : Prop :=
  ∀ n, P8308006086047164656.a n = A314086 n

theorem P8308006086047164656.correct : P8308006086047164656.Spec := by
  intro n
  simp only [A314086]

end A314086

/-! ## A314086.P118492337390166967

`abs(A008592(n)-A314973(n))`
-/

namespace A314086.P118492337390166967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314973 n|

end

end A314086.P118492337390166967

namespace A314086

/-- `abs(A008592(n)-A314973(n))` -/
def P118492337390166967.Spec : Prop :=
  ∀ n, P118492337390166967.a n = A314086 n

end A314086

/-! ## A314086.P10576171759007554176

`2*A008706(n)-A314973(n)`
-/

namespace A314086.P10576171759007554176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314973 n

end

end A314086.P10576171759007554176

namespace A314086

/-- `2*A008706(n)-A314973(n)` -/
def P10576171759007554176.Spec : Prop :=
  ∀ n, P10576171759007554176.a n = A314086 n

end A314086

/-! ## A314086.P11095878018469742933

`A008458(n)+A008574(n)-A314973(n)`
-/

namespace A314086.P11095878018469742933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314973 n)

end

end A314086.P11095878018469742933

namespace A314086

/-- `A008458(n)+A008574(n)-A314973(n)` -/
def P11095878018469742933.Spec : Prop :=
  ∀ n, P11095878018469742933.a n = A314086 n

end A314086

/-! ## A314086.P961920760699006272

`A005843(A008706(n))-A314973(n)`
-/

namespace A314086.P961920760699006272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314973 n

end

end A314086.P961920760699006272

namespace A314086

/-- `A005843(A008706(n))-A314973(n)` -/
def P961920760699006272.Spec : Prop :=
  ∀ n, P961920760699006272.a n = A314086 n

end A314086

/-! ## A314086.P12459438091575578899

`A004396(A315725(n)+2*n)`
-/

namespace A314086.P12459438091575578899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315725 n + (2 * n : ℤ)).toNat

end

end A314086.P12459438091575578899

namespace A314086

/-- `A004396(A315725(n)+2*n)` -/
def P12459438091575578899.Spec : Prop :=
  ∀ n, P12459438091575578899.a n = A314086 n

end A314086

/-! ## A314086.P1636684538102776287

`A004396(2*(A313681(n)-n))`
-/

namespace A314086.P1636684538102776287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313681 n - (n : ℤ))).toNat

end

end A314086.P1636684538102776287

namespace A314086

/-- `A004396(2*(A313681(n)-n))` -/
def P1636684538102776287.Spec : Prop :=
  ∀ n, P1636684538102776287.a n = A314086 n

end A314086

/-! ## A314086.P10794627229658705811

`A004396(A315725(n)+n+n)`
-/

namespace A314086.P10794627229658705811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315725 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314086.P10794627229658705811

namespace A314086

/-- `A004396(A315725(n)+n+n)` -/
def P10794627229658705811.Spec : Prop :=
  ∀ n, P10794627229658705811.a n = A314086 n

end A314086

/-! ## A314086.P1986952426002372269

`A274616(A315725(n)+2*n)`
-/

namespace A314086.P1986952426002372269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A315725 n + (2 * n : ℤ)).toNat

end

end A314086.P1986952426002372269

namespace A314086

/-- `A274616(A315725(n)+2*n)` -/
def P1986952426002372269.Spec : Prop :=
  ∀ n, P1986952426002372269.a n = A314086 n

end A314086

/-! ## A314086.P2545793281479080962

`A274616(A315725(n)+n+n)`
-/

namespace A314086.P2545793281479080962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A315725 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314086.P2545793281479080962

namespace A314086

/-- `A274616(A315725(n)+n+n)` -/
def P2545793281479080962.Spec : Prop :=
  ∀ n, P2545793281479080962.a n = A314086 n

end A314086

/-! ## A314086.P4599846711409360760

`A004525(A315444(n)+A310491(n))`
-/

namespace A314086.P4599846711409360760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315444 n + A310491 n).toNat

end

end A314086.P4599846711409360760

namespace A314086

/-- `A004525(A315444(n)+A310491(n))` -/
def P4599846711409360760.Spec : Prop :=
  ∀ n, P4599846711409360760.a n = A314086 n

end A314086

/-! ## A314086.P13322383227023414100

`A004525(A315725(n)+A310367(n))`
-/

namespace A314086.P13322383227023414100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315725 n + A310367 n).toNat

end

end A314086.P13322383227023414100

namespace A314086

/-- `A004525(A315725(n)+A310367(n))` -/
def P13322383227023414100.Spec : Prop :=
  ∀ n, P13322383227023414100.a n = A314086 n

end A314086

/-!
# A314087: Coordination sequence Gal.5.67.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314087, the canonical program `A314087.P6203034715714524951` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314087 has offset 0).

The definition of A314087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314087.P16328441107357011726

`A330025(n)+A310439(n)`
-/

namespace A314087.P16328441107357011726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A310439 n

end

end A314087.P16328441107357011726

namespace A314087

/-- `A330025(n)+A310439(n)` -/
def P16328441107357011726.Spec : Prop :=
  ∀ n, P16328441107357011726.a n = A314087 n

end A314087

/-! ## A314087.P6203034715714524951

`A330025(n-A330025(n))+A313692(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314087

/-- `A330025(n-A330025(n))+A313692(n)` -/
def P6203034715714524951.Spec : Prop :=
  ∀ n, P6203034715714524951.a n = A314087 n

theorem P6203034715714524951.correct : P6203034715714524951.Spec := by
  intro n
  simp only [A314087]

end A314087

/-! ## A314087.P8279816685858534581

`A313116(n)+A253262(n)`
-/

namespace A314087.P8279816685858534581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n + A253262 n

end

end A314087.P8279816685858534581

namespace A314087

/-- `A313116(n)+A253262(n)` -/
def P8279816685858534581.Spec : Prop :=
  ∀ n, P8279816685858534581.a n = A314087 n

end A314087

/-! ## A314087.P11573269928924774844

`abs(A008592(n)-A314972(n))`
-/

namespace A314087.P11573269928924774844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314972 n|

end

end A314087.P11573269928924774844

namespace A314087

/-- `abs(A008592(n)-A314972(n))` -/
def P11573269928924774844.Spec : Prop :=
  ∀ n, P11573269928924774844.a n = A314087 n

end A314087

/-! ## A314087.P9631901335222038061

`2*A008706(n)-A314972(n)`
-/

namespace A314087.P9631901335222038061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314972 n

end

end A314087.P9631901335222038061

namespace A314087

/-- `2*A008706(n)-A314972(n)` -/
def P9631901335222038061.Spec : Prop :=
  ∀ n, P9631901335222038061.a n = A314087 n

end A314087

/-! ## A314087.P18000511362410973278

`A008458(n)+A008574(n)-A314972(n)`
-/

namespace A314087.P18000511362410973278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314972 n)

end

end A314087.P18000511362410973278

namespace A314087

/-- `A008458(n)+A008574(n)-A314972(n)` -/
def P18000511362410973278.Spec : Prop :=
  ∀ n, P18000511362410973278.a n = A314087 n

end A314087

/-! ## A314087.P9585795507224544934

`A005843(A008706(n))-A314972(n)`
-/

namespace A314087.P9585795507224544934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314972 n

end

end A314087.P9585795507224544934

namespace A314087

/-- `A005843(A008706(n))-A314972(n)` -/
def P9585795507224544934.Spec : Prop :=
  ∀ n, P9585795507224544934.a n = A314087 n

end A314087

/-! ## A314087.P17925566760157650210

`round(A008576(A315737(n))/3)`
-/

namespace A314087.P17925566760157650210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008576 (A315737 n).toNat : ℚ) / 3)

end

end A314087.P17925566760157650210

namespace A314087

/-- `round(A008576(A315737(n))/3)` -/
def P17925566760157650210.Spec : Prop :=
  ∀ n, P17925566760157650210.a n = A314087 n

end A314087

/-! ## A314087.P15076986048587229905

`A004396(A315726(n)+2*n)`
-/

namespace A314087.P15076986048587229905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315726 n + (2 * n : ℤ)).toNat

end

end A314087.P15076986048587229905

namespace A314087

/-- `A004396(A315726(n)+2*n)` -/
def P15076986048587229905.Spec : Prop :=
  ∀ n, P15076986048587229905.a n = A314087 n

end A314087

/-! ## A314087.P13724296801833017832

`A004396(2*(A313682(n)-n))`
-/

namespace A314087.P13724296801833017832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313682 n - (n : ℤ))).toNat

end

end A314087.P13724296801833017832

namespace A314087

/-- `A004396(2*(A313682(n)-n))` -/
def P13724296801833017832.Spec : Prop :=
  ∀ n, P13724296801833017832.a n = A314087 n

end A314087

/-! ## A314087.P7344521590916145746

`A004396(A315726(n)+n+n)`
-/

namespace A314087.P7344521590916145746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315726 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314087.P7344521590916145746

namespace A314087

/-- `A004396(A315726(n)+n+n)` -/
def P7344521590916145746.Spec : Prop :=
  ∀ n, P7344521590916145746.a n = A314087 n

end A314087

/-! ## A314087.P11464918842012544412

`A004396(2*A004396(A315737(n)))`
-/

namespace A314087.P11464918842012544412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A004396 (A315737 n).toNat).toNat

end

end A314087.P11464918842012544412

namespace A314087

/-- `A004396(2*A004396(A315737(n)))` -/
def P11464918842012544412.Spec : Prop :=
  ∀ n, P11464918842012544412.a n = A314087 n

end A314087

/-! ## A314087.P3413632526725022541

`A004396(A005843(A313682(n)-n))`
-/

namespace A314087.P3413632526725022541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 (A313682 n - (n : ℤ)).toNat).toNat

end

end A314087.P3413632526725022541

namespace A314087

/-- `A004396(A005843(A313682(n)-n))` -/
def P3413632526725022541.Spec : Prop :=
  ∀ n, P3413632526725022541.a n = A314087 n

end A314087

/-!
# A314088: Coordination sequence Gal.5.111.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314088, the canonical program `A314088.P4296014599447221606` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314088 has offset 0).

The definition of A314088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314088.P4296014599447221606

`A042965(A313683(n)+1-n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314088

/-- `A042965(A313683(n)+1-n)` -/
def P4296014599447221606.Spec : Prop :=
  ∀ n, P4296014599447221606.a n = A314088 n

theorem P4296014599447221606.correct : P4296014599447221606.Spec := by
  intro n
  simp only [A314088]

end A314088

/-! ## A314088.P16606893556167340773

`A042965(1-(n-A313683(n)))`
-/

namespace A314088.P16606893556167340773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (1 - ((n : ℤ) - A313683 n)).toNat

end

end A314088.P16606893556167340773

namespace A314088

/-- `A042965(1-(n-A313683(n)))` -/
def P16606893556167340773.Spec : Prop :=
  ∀ n, P16606893556167340773.a n = A314088 n

theorem P16606893556167340773.correct : P16606893556167340773.Spec := by
  intro n
  simp only [A314088, Nat.add_sub_cancel, A314088.P16606893556167340773.a, A314088.P4296014599447221606.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A314088

/-! ## A314088.P15925663334689564327

`A313683(n)+A004396(n-A004396(n))`
-/

namespace A314088.P15925663334689564327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A314088.P15925663334689564327

namespace A314088

/-- `A313683(n)+A004396(n-A004396(n))` -/
def P15925663334689564327.Spec : Prop :=
  ∀ n, P15925663334689564327.a n = A314088 n

end A314088

/-! ## A314088.P7501665354931876915

`abs(A008592(n)-A314971(n))`
-/

namespace A314088.P7501665354931876915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314971 n|

end

end A314088.P7501665354931876915

namespace A314088

/-- `abs(A008592(n)-A314971(n))` -/
def P7501665354931876915.Spec : Prop :=
  ∀ n, P7501665354931876915.a n = A314088 n

end A314088

/-! ## A314088.P656153072407229937

`2*A008706(n)-A314971(n)`
-/

namespace A314088.P656153072407229937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314971 n

end

end A314088.P656153072407229937

namespace A314088

/-- `2*A008706(n)-A314971(n)` -/
def P656153072407229937.Spec : Prop :=
  ∀ n, P656153072407229937.a n = A314088 n

end A314088

/-! ## A314088.P11602466401275984760

`A008458(n)+A008574(n)-A314971(n)`
-/

namespace A314088.P11602466401275984760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314971 n)

end

end A314088.P11602466401275984760

namespace A314088

/-- `A008458(n)+A008574(n)-A314971(n)` -/
def P11602466401275984760.Spec : Prop :=
  ∀ n, P11602466401275984760.a n = A314088 n

end A314088

/-! ## A314088.P8733124028627315033

`∑{d}[A008592(n)-A314971(n), A000010(#)]`
-/

namespace A314088.P8733124028627315033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A314088.P8733124028627315033

namespace A314088

/-- `∑{d}[A008592(n)-A314971(n), A000010(#)]` -/
def P8733124028627315033.Spec : Prop :=
  ∀ n, P8733124028627315033.a n = A314088 n

end A314088

/-! ## A314088.P18089107319798859173

`A315680(n)-A004396(A004396(n))`
-/

namespace A314088.P18089107319798859173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315680 n - A004396 (A004396 n).toNat

end

end A314088.P18089107319798859173

namespace A314088

/-- `A315680(n)-A004396(A004396(n))` -/
def P18089107319798859173.Spec : Prop :=
  ∀ n, P18089107319798859173.a n = A314088 n

end A314088

/-! ## A314088.P2719620019590421498

`A315739(n)-A004396(n)`
-/

namespace A314088.P2719620019590421498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315739 n - A004396 n

end

end A314088.P2719620019590421498

namespace A314088

/-- `A315739(n)-A004396(n)` -/
def P2719620019590421498.Spec : Prop :=
  ∀ n, P2719620019590421498.a n = A314088 n

end A314088

/-! ## A314088.P15729431107786068062

`A315739(n)-A002264(2*n+1)`
-/

namespace A314088.P15729431107786068062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315739 n - A002264 (2 * n + 1)

end

end A314088.P15729431107786068062

namespace A314088

/-- `A315739(n)-A002264(2*n+1)` -/
def P15729431107786068062.Spec : Prop :=
  ∀ n, P15729431107786068062.a n = A314088 n

end A314088

/-! ## A314088.P6316101687520477488

`A004773(A313683(n))-A004773(n)`
-/

namespace A314088.P6316101687520477488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A313683 n).toNat - A004773 n

end

end A314088.P6316101687520477488

namespace A314088

/-- `A004773(A313683(n))-A004773(n)` -/
def P6316101687520477488.Spec : Prop :=
  ∀ n, P6316101687520477488.a n = A314088 n

end A314088

/-! ## A314088.P11140786279224111913

`A005843(A008706(n))-A314971(n)`
-/

namespace A314088.P11140786279224111913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314971 n

end

end A314088.P11140786279224111913

namespace A314088

/-- `A005843(A008706(n))-A314971(n)` -/
def P11140786279224111913.Spec : Prop :=
  ∀ n, P11140786279224111913.a n = A314088 n

end A314088

/-! ## A314088.P11138791789927277180

`A004396(2*n)+A004396(A315727(n))`
-/

namespace A314088.P11138791789927277180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A315727 n).toNat

end

end A314088.P11138791789927277180

namespace A314088

/-- `A004396(2*n)+A004396(A315727(n))` -/
def P11138791789927277180.Spec : Prop :=
  ∀ n, P11138791789927277180.a n = A314088 n

end A314088

/-! ## A314088.P5008217216620284716

`A005843(n)-(A004396(n)-A004396(A315727(n)))`
-/

namespace A314088.P5008217216620284716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (A004396 n - A004396 (A315727 n).toNat)

end

end A314088.P5008217216620284716

namespace A314088

/-- `A005843(n)-(A004396(n)-A004396(A315727(n)))` -/
def P5008217216620284716.Spec : Prop :=
  ∀ n, P5008217216620284716.a n = A314088 n

end A314088

/-! ## A314088.P7049644923527596333

`A004396(A315727(n)+2*n)`
-/

namespace A314088.P7049644923527596333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315727 n + (2 * n : ℤ)).toNat

end

end A314088.P7049644923527596333

namespace A314088

/-- `A004396(A315727(n)+2*n)` -/
def P7049644923527596333.Spec : Prop :=
  ∀ n, P7049644923527596333.a n = A314088 n

end A314088

/-! ## A314088.P9007485910634056116

`A004396(2*(A313683(n)-n))`
-/

namespace A314088.P9007485910634056116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A313683 n - (n : ℤ))).toNat

end

end A314088.P9007485910634056116

namespace A314088

/-- `A004396(2*(A313683(n)-n))` -/
def P9007485910634056116.Spec : Prop :=
  ∀ n, P9007485910634056116.a n = A314088 n

end A314088

/-! ## A314088.P2995378807094290080

`A004396(A315727(n)+n+n)`
-/

namespace A314088.P2995378807094290080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315727 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314088.P2995378807094290080

namespace A314088

/-- `A004396(A315727(n)+n+n)` -/
def P2995378807094290080.Spec : Prop :=
  ∀ n, P2995378807094290080.a n = A314088 n

end A314088

/-! ## A314088.P14072277047366674196

`A004396(A008486(n)-(n-A315727(n)))`
-/

namespace A314088.P14072277047366674196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008486 n - ((n : ℤ) - A315727 n)).toNat

end

end A314088.P14072277047366674196

namespace A314088

/-- `A004396(A008486(n)-(n-A315727(n)))` -/
def P14072277047366674196.Spec : Prop :=
  ∀ n, P14072277047366674196.a n = A314088 n

end A314088

/-! ## A314088.P14196924108213083955

`A004396(A008585(n)-(n-A315727(n)))`
-/

namespace A314088.P14196924108213083955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008585 n - ((n : ℤ) - A315727 n)).toNat

end

end A314088.P14196924108213083955

namespace A314088

/-- `A004396(A008585(n)-(n-A315727(n)))` -/
def P14196924108213083955.Spec : Prop :=
  ∀ n, P14196924108213083955.a n = A314088 n

end A314088

/-!
# A314089: Coordination sequence Gal.6.260.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314089, the canonical program `A314089.P3546042962349282069` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314089 has offset 0).

The definition of A314089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314089.P4062219991324908299

`A315683(n)-A004525(n)`
-/

namespace A314089.P4062219991324908299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 n - A004525 n

end

end A314089.P4062219991324908299

namespace A314089

/-- `A315683(n)-A004525(n)` -/
def P4062219991324908299.Spec : Prop :=
  ∀ n, P4062219991324908299.a n = A314089 n

end A314089

/-! ## A314089.P3546042962349282069

`A313474(n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314089

/-- `A313474(n)+∑[A021913(n)]` -/
def P3546042962349282069.Spec : Prop :=
  ∀ n, P3546042962349282069.a n = A314089 n

theorem P3546042962349282069.correct : P3546042962349282069.Spec := by
  intro n
  simp only [A314089]

end A314089

/-! ## A314089.P16086249283116697236

`A313474(n)+Δ[A011848(n)]`
-/

namespace A314089.P16086249283116697236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + (f1 (n + 1) - f1 n)

end

end A314089.P16086249283116697236

namespace A314089

/-- `A313474(n)+Δ[A011848(n)]` -/
def P16086249283116697236.Spec : Prop :=
  ∀ n, P16086249283116697236.a n = A314089 n

end A314089

/-! ## A314089.P11891433897270369475

`A315683(n)-Δ[A054925(n)]`
-/

namespace A314089.P11891433897270369475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 n - (f1 (n + 1) - f1 n)

end

end A314089.P11891433897270369475

namespace A314089

/-- `A315683(n)-Δ[A054925(n)]` -/
def P11891433897270369475.Spec : Prop :=
  ∀ n, P11891433897270369475.a n = A314089 n

end A314089

/-! ## A314089.P9665465938233297894

`A313474(n)+n-A004525(n)`
-/

namespace A314089.P9665465938233297894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + ((n : ℤ) - A004525 n)

end

end A314089.P9665465938233297894

namespace A314089

/-- `A313474(n)+n-A004525(n)` -/
def P9665465938233297894.Spec : Prop :=
  ∀ n, P9665465938233297894.a n = A314089 n

end A314089

/-! ## A314089.P3810824477336386

`∑[A021913(n)]+A315683(n)-n`
-/

namespace A314089.P3810824477336386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315683 n - (n : ℤ))

end

end A314089.P3810824477336386

namespace A314089

/-- `∑[A021913(n)]+A315683(n)-n` -/
def P3810824477336386.Spec : Prop :=
  ∀ n, P3810824477336386.a n = A314089 n

theorem P3810824477336386.correct : P3810824477336386.Spec := by
  intro n
  simp only [A314089, Nat.add_sub_cancel, A314089.P3810824477336386.f1, A314089.P3810824477336386.a, A314089.P3546042962349282069.f1, A314089.P3546042962349282069.a, A021913, A021913.P3902253882929539198.a, A313474, A313474.P13131872544688635231.a, A315683, A315683.P6946226476358261575.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A313533, A313533.P10490888896929360716.a, A315697, A315697.P15638358996916271384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314089

/-! ## A314089.P5862035884628286248

`Δ[A011848(n)]+A315683(n)-n`
-/

namespace A314089.P5862035884628286248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315683 n - (n : ℤ))

end

end A314089.P5862035884628286248

namespace A314089

/-- `Δ[A011848(n)]+A315683(n)-n` -/
def P5862035884628286248.Spec : Prop :=
  ∀ n, P5862035884628286248.a n = A314089 n

end A314089

/-! ## A314089.P16706911468983253027

`A313474(n)+n-Δ[A054925(n)]`
-/

namespace A314089.P16706911468983253027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314089.P16706911468983253027

namespace A314089

/-- `A313474(n)+n-Δ[A054925(n)]` -/
def P16706911468983253027.Spec : Prop :=
  ∀ n, P16706911468983253027.a n = A314089 n

end A314089

/-! ## A314089.P15737497118221237840

`A004525(A004396(n))+A314108(n)-A004525(n)`
-/

namespace A314089.P15737497118221237840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A314108 n - A004525 n)

end

end A314089.P15737497118221237840

namespace A314089

/-- `A004525(A004396(n))+A314108(n)-A004525(n)` -/
def P15737497118221237840.Spec : Prop :=
  ∀ n, P15737497118221237840.a n = A314089 n

end A314089

/-! ## A314089.P13174384239673838256

`A315673(n)-A004396(A004525(n))`
-/

namespace A314089.P13174384239673838256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315673 n - A004396 (A004525 n).toNat

end

end A314089.P13174384239673838256

namespace A314089

/-- `A315673(n)-A004396(A004525(n))` -/
def P13174384239673838256.Spec : Prop :=
  ∀ n, P13174384239673838256.a n = A314089 n

end A314089

/-! ## A314089.P7089603665039879791

`abs(A008592(n)-A314970(n))`
-/

namespace A314089.P7089603665039879791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314970 n|

end

end A314089.P7089603665039879791

namespace A314089

/-- `abs(A008592(n)-A314970(n))` -/
def P7089603665039879791.Spec : Prop :=
  ∀ n, P7089603665039879791.a n = A314089 n

end A314089

/-! ## A314089.P427623909014639485

`A008458(n)+A008574(n)-A314970(n)`
-/

namespace A314089.P427623909014639485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314970 n)

end

end A314089.P427623909014639485

namespace A314089

/-- `A008458(n)+A008574(n)-A314970(n)` -/
def P427623909014639485.Spec : Prop :=
  ∀ n, P427623909014639485.a n = A314089 n

end A314089

/-! ## A314089.P12357896770350323285

`A315409(n)-A101455(n)`
-/

namespace A314089.P12357896770350323285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315409 n - A101455 n

end

end A314089.P12357896770350323285

namespace A314089

/-- `A315409(n)-A101455(n)` -/
def P12357896770350323285.Spec : Prop :=
  ∀ n, P12357896770350323285.a n = A314089 n

end A314089

/-!
# A314090: Coordination sequence Gal.4.54.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314090, the canonical program `A314090.P9494810813166851977` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314090 has offset 0).

The definition of A314090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314090.P9494810813166851977

`A315685(n)-A004525(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A314090

/-- `A315685(n)-A004525(n)` -/
def P9494810813166851977.Spec : Prop :=
  ∀ n, P9494810813166851977.a n = A314090 n

theorem P9494810813166851977.correct : P9494810813166851977.Spec := by
  intro n
  simp only [A314090]

end A314090

/-! ## A314090.P2022565483949442271

`A315411(n)-A101455(n)`
-/

namespace A314090.P2022565483949442271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315411 n - A101455 n

end

end A314090.P2022565483949442271

namespace A314090

/-- `A315411(n)-A101455(n)` -/
def P2022565483949442271.Spec : Prop :=
  ∀ n, P2022565483949442271.a n = A314090 n

end A314090

/-! ## A314090.P9335318344555043145

`abs(A008592(n)-A314969(n))`
-/

namespace A314090.P9335318344555043145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314969 n|

end

end A314090.P9335318344555043145

namespace A314090

/-- `abs(A008592(n)-A314969(n))` -/
def P9335318344555043145.Spec : Prop :=
  ∀ n, P9335318344555043145.a n = A314090 n

end A314090

/-! ## A314090.P9936966723858443701

`floor(A010015(n)/A314969(n))`
-/

namespace A314090.P9936966723858443701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A314969 n : ℚ)⌋

end

end A314090.P9936966723858443701

namespace A314090

/-- `floor(A010015(n)/A314969(n))` -/
def P9936966723858443701.Spec : Prop :=
  ∀ n, P9936966723858443701.a n = A314090 n

end A314090

/-! ## A314090.P8102581570314857634

`A313480(n)+∑[A021913(n)]`
-/

namespace A314090.P8102581570314857634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314090.P8102581570314857634

namespace A314090

/-- `A313480(n)+∑[A021913(n)]` -/
def P8102581570314857634.Spec : Prop :=
  ∀ n, P8102581570314857634.a n = A314090 n

end A314090

/-! ## A314090.P3736723068038415411

`A313480(n)+Δ[A011848(n)]`
-/

namespace A314090.P3736723068038415411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n + (f1 (n + 1) - f1 n)

end

end A314090.P3736723068038415411

namespace A314090

/-- `A313480(n)+Δ[A011848(n)]` -/
def P3736723068038415411.Spec : Prop :=
  ∀ n, P3736723068038415411.a n = A314090 n

end A314090

/-! ## A314090.P1623185560084698741

`A315685(n)-Δ[A054925(n)]`
-/

namespace A314090.P1623185560084698741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 n - (f1 (n + 1) - f1 n)

end

end A314090.P1623185560084698741

namespace A314090

/-- `A315685(n)-Δ[A054925(n)]` -/
def P1623185560084698741.Spec : Prop :=
  ∀ n, P1623185560084698741.a n = A314090 n

end A314090

/-! ## A314090.P10365467916137025854

`A315411(n)-A046978(2*n)`
-/

namespace A314090.P10365467916137025854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315411 n - A046978 (2 * n)

end

end A314090.P10365467916137025854

namespace A314090

/-- `A315411(n)-A046978(2*n)` -/
def P10365467916137025854.Spec : Prop :=
  ∀ n, P10365467916137025854.a n = A314090 n

end A314090

/-! ## A314090.P18258097379671566288

`A313480(n)+n-A004525(n)`
-/

namespace A314090.P18258097379671566288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n + ((n : ℤ) - A004525 n)

end

end A314090.P18258097379671566288

namespace A314090

/-- `A313480(n)+n-A004525(n)` -/
def P18258097379671566288.Spec : Prop :=
  ∀ n, P18258097379671566288.a n = A314090 n

theorem P18258097379671566288.correct : P18258097379671566288.Spec := by
  intro n
  simp only [A314090, Nat.add_sub_cancel, A314090.P18258097379671566288.a, A314090.P9494810813166851977.a, A004525, A004525.P4158271949796742323.a, A313480, A313480.P5748992067713966907.a, A315685, A315685.P11286154691469663950.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314090

/-! ## A314090.P9344885055846213419

`∑[A021913(n)]+A315685(n)-n`
-/

namespace A314090.P9344885055846213419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315685 n - (n : ℤ))

end

end A314090.P9344885055846213419

namespace A314090

/-- `∑[A021913(n)]+A315685(n)-n` -/
def P9344885055846213419.Spec : Prop :=
  ∀ n, P9344885055846213419.a n = A314090 n

end A314090

/-! ## A314090.P6378363428805652363

`Δ[A011848(n)]+A315685(n)-n`
-/

namespace A314090.P6378363428805652363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315685 n - (n : ℤ))

end

end A314090.P6378363428805652363

namespace A314090

/-- `Δ[A011848(n)]+A315685(n)-n` -/
def P6378363428805652363.Spec : Prop :=
  ∀ n, P6378363428805652363.a n = A314090 n

end A314090

/-! ## A314090.P1386218251605393569

`A315306(n)+A075553(A075553(n)+n)`
-/

namespace A314090.P1386218251605393569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315306 n + A075553 (A075553 n + (n : ℤ)).toNat

end

end A314090.P1386218251605393569

namespace A314090

/-- `A315306(n)+A075553(A075553(n)+n)` -/
def P1386218251605393569.Spec : Prop :=
  ∀ n, P1386218251605393569.a n = A314090 n

end A314090

/-! ## A314090.P15985612992009889999

`A046978(n-A046978(n))+A008706(n)`
-/

namespace A314090.P15985612992009889999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 ((n : ℤ) - A046978 n).toNat + A008706 n

end

end A314090.P15985612992009889999

namespace A314090

/-- `A046978(n-A046978(n))+A008706(n)` -/
def P15985612992009889999.Spec : Prop :=
  ∀ n, P15985612992009889999.a n = A314090 n

end A314090

/-! ## A314090.P12178260578174234240

`A313685(n)+A004525(n-A004525(n))`
-/

namespace A314090.P12178260578174234240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A314090.P12178260578174234240

namespace A314090

/-- `A313685(n)+A004525(n-A004525(n))` -/
def P12178260578174234240.Spec : Prop :=
  ∀ n, P12178260578174234240.a n = A314090 n

end A314090

/-! ## A314090.P16779601018420133533

`A008458(n)+A008574(n)-A314969(n)`
-/

namespace A314090.P16779601018420133533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314969 n)

end

end A314090.P16779601018420133533

namespace A314090

/-- `A008458(n)+A008574(n)-A314969(n)` -/
def P16779601018420133533.Spec : Prop :=
  ∀ n, P16779601018420133533.a n = A314090 n

end A314090

/-! ## A314090.P17950045070903849325

`A315632(n)-A046978(A046978(n)+n)`
-/

namespace A314090.P17950045070903849325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315632 n - A046978 (A046978 n + (n : ℤ)).toNat

end

end A314090.P17950045070903849325

namespace A314090

/-- `A315632(n)-A046978(A046978(n)+n)` -/
def P17950045070903849325.Spec : Prop :=
  ∀ n, P17950045070903849325.a n = A314090 n

end A314090

/-! ## A314090.P6444256534614133012

`A310458(n)+A046978(n)`
-/

namespace A314090.P6444256534614133012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310458 n + A046978 n

end

end A314090.P6444256534614133012

namespace A314090

/-- `A310458(n)+A046978(n)` -/
def P6444256534614133012.Spec : Prop :=
  ∀ n, P6444256534614133012.a n = A314090 n

end A314090

/-! ## A314090.P15234233811047684289

`A004525(A004525(n))+A314112(n)-A004525(n)`
-/

namespace A314090.P15234233811047684289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A314112 n - A004525 n)

end

end A314090.P15234233811047684289

namespace A314090

/-- `A004525(A004525(n))+A314112(n)-A004525(n)` -/
def P15234233811047684289.Spec : Prop :=
  ∀ n, P15234233811047684289.a n = A314090 n

end A314090

/-! ## A314090.P3566768673329411599

`A315671(n)-A004525(A004525(n))`
-/

namespace A314090.P3566768673329411599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315671 n - A004525 (A004525 n).toNat

end

end A314090.P3566768673329411599

namespace A314090

/-- `A315671(n)-A004525(A004525(n))` -/
def P3566768673329411599.Spec : Prop :=
  ∀ n, P3566768673329411599.a n = A314090 n

end A314090

/-! ## A314090.P15536922173951515258

`A074067(A314969(n))`
-/

namespace A314090.P15536922173951515258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A314969 n).toNat

end

end A314090.P15536922173951515258

namespace A314090

/-- `A074067(A314969(n))` -/
def P15536922173951515258.Spec : Prop :=
  ∀ n, P15536922173951515258.a n = A314090 n

end A314090

/-!
# A314091: Coordination sequence Gal.6.153.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314091, the canonical program `A314091.P13894877024748748489` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314091 has offset 0).

The definition of A314091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314091.P13894877024748748489

`A315688(n)-A004525(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314091

/-- `A315688(n)-A004525(n)` -/
def P13894877024748748489.Spec : Prop :=
  ∀ n, P13894877024748748489.a n = A314091 n

theorem P13894877024748748489.correct : P13894877024748748489.Spec := by
  intro n
  simp only [A314091]

end A314091

/-! ## A314091.P5968848332413511770

`A313680(n)+∑[A022003(n)]`
-/

namespace A314091.P5968848332413511770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313680 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314091.P5968848332413511770

namespace A314091

/-- `A313680(n)+∑[A022003(n)]` -/
def P5968848332413511770.Spec : Prop :=
  ∀ n, P5968848332413511770.a n = A314091 n

end A314091

/-! ## A314091.P17672602011794839900

`A315688(n)-Δ[A054925(n)]`
-/

namespace A314091.P17672602011794839900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315688 n - (f1 (n + 1) - f1 n)

end

end A314091.P17672602011794839900

namespace A314091

/-- `A315688(n)-Δ[A054925(n)]` -/
def P17672602011794839900.Spec : Prop :=
  ∀ n, P17672602011794839900.a n = A314091 n

end A314091

/-! ## A314091.P16090576049661455712

`A313680(n)+A002264(n+1)`
-/

namespace A314091.P16090576049661455712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313680 n + A002264 (n + 1)

end

end A314091.P16090576049661455712

namespace A314091

/-- `A313680(n)+A002264(n+1)` -/
def P16090576049661455712.Spec : Prop :=
  ∀ n, P16090576049661455712.a n = A314091 n

theorem P16090576049661455712.correct : P16090576049661455712.Spec := by
  intro n
  simp only [A314091, Nat.add_sub_cancel, A314091.P16090576049661455712.a, A314091.P13894877024748748489.a, A002264, A002264.P5647656940077635922.a, A004525, A004525.P4158271949796742323.a, A313680, A313680.P17138657541205040173.a, A315688, A315688.P5634328764802733599.a, A004396, A004396.P17032557045289780609.a, A046978, A046978.P71107966793699888.a, A219529, A219529.P11562670573213702759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314091

/-! ## A314091.P14958227650256969880

`A313680(n)+n-A004396(n)`
-/

namespace A314091.P14958227650256969880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313680 n + ((n : ℤ) - A004396 n)

end

end A314091.P14958227650256969880

namespace A314091

/-- `A313680(n)+n-A004396(n)` -/
def P14958227650256969880.Spec : Prop :=
  ∀ n, P14958227650256969880.a n = A314091 n

end A314091

/-! ## A314091.P7434910484097918300

`A313680(n)+A008615(2*n+1)`
-/

namespace A314091.P7434910484097918300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313680 n + A008615 (2 * n + 1)

end

end A314091.P7434910484097918300

namespace A314091

/-- `A313680(n)+A008615(2*n+1)` -/
def P7434910484097918300.Spec : Prop :=
  ∀ n, P7434910484097918300.a n = A314091 n

end A314091

/-! ## A314091.P17981280948503671942

`A312963(A008574(n))/2-A312963(n)`
-/

namespace A314091.P17981280948503671942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312963 (A008574 n).toNat : ℚ) / 2 - (A312963 n : ℚ)

end

end A314091.P17981280948503671942

namespace A314091

/-- `A312963(A008574(n))/2-A312963(n)` -/
def P17981280948503671942.Spec : Prop :=
  ∀ n, P17981280948503671942.a n = (A314091 n : ℚ)

end A314091

/-! ## A314091.P9365630734149089182

`A008486(n)+A313680(n)-A008576(n)`
-/

namespace A314091.P9365630734149089182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313680 n - A008576 n)

end

end A314091.P9365630734149089182

namespace A314091

/-- `A008486(n)+A313680(n)-A008576(n)` -/
def P9365630734149089182.Spec : Prop :=
  ∀ n, P9365630734149089182.a n = A314091 n

end A314091

/-! ## A314091.P7656541926386654078

`A004396(A005843(n))-(n-A313680(n))`
-/

namespace A314091.P7656541926386654078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 n).toNat - ((n : ℤ) - A313680 n)

end

end A314091.P7656541926386654078

namespace A314091

/-- `A004396(A005843(n))-(n-A313680(n))` -/
def P7656541926386654078.Spec : Prop :=
  ∀ n, P7656541926386654078.a n = A314091 n

end A314091

/-! ## A314091.P7328692568854273576

`A313693(n)+A128834(n-A004525(n))`
-/

namespace A314091.P7328692568854273576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n + A128834 ((n : ℤ) - A004525 n).toNat

end

end A314091.P7328692568854273576

namespace A314091

/-- `A313693(n)+A128834(n-A004525(n))` -/
def P7328692568854273576.Spec : Prop :=
  ∀ n, P7328692568854273576.a n = A314091 n

end A314091

/-! ## A314091.P11002451271324657366

`A004396(A004525(n))+A314108(n)-A004525(n)`
-/

namespace A314091.P11002451271324657366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A314108 n - A004525 n)

end

end A314091.P11002451271324657366

namespace A314091

/-- `A004396(A004525(n))+A314108(n)-A004525(n)` -/
def P11002451271324657366.Spec : Prop :=
  ∀ n, P11002451271324657366.a n = A314091 n

end A314091

/-! ## A314091.P6069359068910527719

`A315673(n)-A004525(A004396(n))`
-/

namespace A314091.P6069359068910527719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315673 n - A004525 (A004396 n).toNat

end

end A314091.P6069359068910527719

namespace A314091

/-- `A315673(n)-A004525(A004396(n))` -/
def P6069359068910527719.Spec : Prop :=
  ∀ n, P6069359068910527719.a n = A314091 n

end A314091

/-! ## A314091.P10514908011238971133

`abs(A008592(n)-A314964(n))`
-/

namespace A314091.P10514908011238971133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314964 n|

end

end A314091.P10514908011238971133

namespace A314091

/-- `abs(A008592(n)-A314964(n))` -/
def P10514908011238971133.Spec : Prop :=
  ∀ n, P10514908011238971133.a n = A314091 n

end A314091

/-! ## A314091.P1524159987722645519

`A008458(n)+A008574(n)-A314964(n)`
-/

namespace A314091.P1524159987722645519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314964 n)

end

end A314091.P1524159987722645519

namespace A314091

/-- `A008458(n)+A008574(n)-A314964(n)` -/
def P1524159987722645519.Spec : Prop :=
  ∀ n, P1524159987722645519.a n = A314091 n

end A314091

/-! ## A314091.P4086026108032607978

`A315741(n)-A004396(n)`
-/

namespace A314091.P4086026108032607978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315741 n - A004396 n

end

end A314091.P4086026108032607978

namespace A314091

/-- `A315741(n)-A004396(n)` -/
def P4086026108032607978.Spec : Prop :=
  ∀ n, P4086026108032607978.a n = A314091 n

end A314091

/-! ## A314091.P16572462499262739961

`∑[A022003(n)]+A315741(n)-n`
-/

namespace A314091.P16572462499262739961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315741 n - (n : ℤ))

end

end A314091.P16572462499262739961

namespace A314091

/-- `∑[A022003(n)]+A315741(n)-n` -/
def P16572462499262739961.Spec : Prop :=
  ∀ n, P16572462499262739961.a n = A314091 n

end A314091

/-! ## A314091.P16132781689204367483

`A315741(n)-A002264(2*n+1)`
-/

namespace A314091.P16132781689204367483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315741 n - A002264 (2 * n + 1)

end

end A314091.P16132781689204367483

namespace A314091

/-- `A315741(n)-A002264(2*n+1)` -/
def P16132781689204367483.Spec : Prop :=
  ∀ n, P16132781689204367483.a n = A314091 n

end A314091

/-!
# A314092: Coordination sequence Gal.6.248.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314092, the canonical program `A314092.P14005736283755848745` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314092 has offset 0).

The definition of A314092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314092.P14005736283755848745

`A314019(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A314092

/-- `A314019(n)+Δ[A011864(n)]` -/
def P14005736283755848745.Spec : Prop :=
  ∀ n, P14005736283755848745.a n = A314092 n

theorem P14005736283755848745.correct : P14005736283755848745.Spec := by
  intro n
  simp only [A314092]

end A314092

/-! ## A314092.P1273961050990105267

`A047263(A314109(n)+1-n)`
-/

namespace A314092.P1273961050990105267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A314109 n + (1 - (n : ℤ))).toNat

end

end A314092.P1273961050990105267

namespace A314092

/-- `A047263(A314109(n)+1-n)` -/
def P1273961050990105267.Spec : Prop :=
  ∀ n, P1273961050990105267.a n = A314092 n

end A314092

/-! ## A314092.P8311055253982112103

`A047263(1-(n-A314109(n)))`
-/

namespace A314092.P8311055253982112103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (1 - ((n : ℤ) - A314109 n)).toNat

end

end A314092.P8311055253982112103

namespace A314092

/-- `A047263(1-(n-A314109(n)))` -/
def P8311055253982112103.Spec : Prop :=
  ∀ n, P8311055253982112103.a n = A314092 n

end A314092

/-! ## A314092.P12341357563811043446

`abs(A008592(n)-A314963(n))`
-/

namespace A314092.P12341357563811043446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314963 n|

end

end A314092.P12341357563811043446

namespace A314092

/-- `abs(A008592(n)-A314963(n))` -/
def P12341357563811043446.Spec : Prop :=
  ∀ n, P12341357563811043446.a n = A314092 n

end A314092

/-! ## A314092.P1077094947870168796

`2*A008706(n)-A314963(n)`
-/

namespace A314092.P1077094947870168796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314963 n

end

end A314092.P1077094947870168796

namespace A314092

/-- `2*A008706(n)-A314963(n)` -/
def P1077094947870168796.Spec : Prop :=
  ∀ n, P1077094947870168796.a n = A314092 n

end A314092

/-! ## A314092.P14422830262465040114

`A135042(2*n+1)-A314963(n)`
-/

namespace A314092.P14422830262465040114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A314963 n

end

end A314092.P14422830262465040114

namespace A314092

/-- `A135042(2*n+1)-A314963(n)` -/
def P14422830262465040114.Spec : Prop :=
  ∀ n, P14422830262465040114.a n = A314092 n

end A314092

/-! ## A314092.P7611198611087398548

`A008458(n)+A008574(n)-A314963(n)`
-/

namespace A314092.P7611198611087398548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314963 n)

end

end A314092.P7611198611087398548

namespace A314092

/-- `A008458(n)+A008574(n)-A314963(n)` -/
def P7611198611087398548.Spec : Prop :=
  ∀ n, P7611198611087398548.a n = A314092 n

end A314092

/-! ## A314092.P14816393525081883233

`(A315730(n)+A310367(n))/2`
-/

namespace A314092.P14816393525081883233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315730 n + A310367 n : ℚ) / 2

end

end A314092.P14816393525081883233

namespace A314092

/-- `(A315730(n)+A310367(n))/2` -/
def P14816393525081883233.Spec : Prop :=
  ∀ n, P14816393525081883233.a n = (A314092 n : ℚ)

end A314092

/-! ## A314092.P1407310496971591508

`A005843(A008706(n))-A314963(n)`
-/

namespace A314092.P1407310496971591508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314963 n

end

end A314092.P1407310496971591508

namespace A314092

/-- `A005843(A008706(n))-A314963(n)` -/
def P1407310496971591508.Spec : Prop :=
  ∀ n, P1407310496971591508.a n = A314092 n

end A314092

/-! ## A314092.P13582535117667876670

`A065502(A008458(n))-A314963(n)`
-/

namespace A314092.P13582535117667876670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A314963 n

end

end A314092.P13582535117667876670

namespace A314092

/-- `A065502(A008458(n))-A314963(n)` -/
def P13582535117667876670.Spec : Prop :=
  ∀ n, P13582535117667876670.a n = A314092 n

end A314092

/-! ## A314092.P6468636819371532302

`A233583(A017281(n))-A314963(n)`
-/

namespace A314092.P6468636819371532302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A314963 n

end

end A314092.P6468636819371532302

namespace A314092

/-- `A233583(A017281(n))-A314963(n)` -/
def P6468636819371532302.Spec : Prop :=
  ∀ n, P6468636819371532302.a n = A314092 n

end A314092

/-!
# A314093: Coordination sequence Gal.5.137.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314093, the canonical program `A314093.P5564140878793647355` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314093 has offset 0).

The definition of A314093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314093.P5564140878793647355

`A313127(n)+A253262(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A314093

/-- `A313127(n)+A253262(n)` -/
def P5564140878793647355.Spec : Prop :=
  ∀ n, P5564140878793647355.a n = A314093 n

theorem P5564140878793647355.correct : P5564140878793647355.Spec := by
  intro n
  simp only [A314093]

end A314093

/-! ## A314093.P1224386276778377437

`A330025(n)+A310446(n)`
-/

namespace A314093.P1224386276778377437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A310446 n

end

end A314093.P1224386276778377437

namespace A314093

/-- `A330025(n)+A310446(n)` -/
def P1224386276778377437.Spec : Prop :=
  ∀ n, P1224386276778377437.a n = A314093 n

theorem P1224386276778377437.correct : P1224386276778377437.Spec := by
  intro n
  simp only [A314093, Nat.add_sub_cancel, A314093.P1224386276778377437.a, A314093.P5564140878793647355.a, A253262, A253262.P6184646248567078382.a, A310446, A310446.P3653762091158241676.a, A313127, A313127.P3112124540791628005.a, A330025, A330025.P16976327817596103196.a, A008574, A008574.P1300280032690682112.a, A011558, A011558.P14291727921269463220.a, A315668, A315668.P3744435370898828979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A314093

/-! ## A314093.P8544121194379072514

`A315270(n)-A330033(n)`
-/

namespace A314093.P8544121194379072514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315270 n - A330033 n

end

end A314093.P8544121194379072514

namespace A314093

/-- `A315270(n)-A330033(n)` -/
def P8544121194379072514.Spec : Prop :=
  ∀ n, P8544121194379072514.a n = A314093 n

end A314093

/-! ## A314093.P7903799871973052475

`A315668(n)-A330025(n)`
-/

namespace A314093.P7903799871973052475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315668 n - A330025 n

end

end A314093.P7903799871973052475

namespace A314093

/-- `A315668(n)-A330025(n)` -/
def P7903799871973052475.Spec : Prop :=
  ∀ n, P7903799871973052475.a n = A314093 n

theorem P7903799871973052475.correct : P7903799871973052475.Spec := by
  intro n
  simp only [A314093, Nat.add_sub_cancel, A314093.P7903799871973052475.a, A314093.P5564140878793647355.a, A253262, A253262.P6184646248567078382.a, A313127, A313127.P3112124540791628005.a, A315668, A315668.P3744435370898828979.a, A330025, A330025.P16976327817596103196.a, A008574, A008574.P1300280032690682112.a, A011558, A011558.P14291727921269463220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A314093

/-! ## A314093.P8597268602426692359

`abs(A008592(n)-A314961(n))`
-/

namespace A314093.P8597268602426692359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314961 n|

end

end A314093.P8597268602426692359

namespace A314093

/-- `abs(A008592(n)-A314961(n))` -/
def P8597268602426692359.Spec : Prop :=
  ∀ n, P8597268602426692359.a n = A314093 n

end A314093

/-! ## A314093.P5571749370928545433

`A008706(n)-A014019(n+3)`
-/

namespace A314093.P5571749370928545433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A014019 (n + 3)

end

end A314093.P5571749370928545433

namespace A314093

/-- `A008706(n)-A014019(n+3)` -/
def P5571749370928545433.Spec : Prop :=
  ∀ n, P5571749370928545433.a n = A314093 n

end A314093

/-! ## A314093.P2452577407309606534

`2*A008706(n)-A314961(n)`
-/

namespace A314093.P2452577407309606534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314961 n

end

end A314093.P2452577407309606534

namespace A314093

/-- `2*A008706(n)-A314961(n)` -/
def P2452577407309606534.Spec : Prop :=
  ∀ n, P2452577407309606534.a n = A314093 n

end A314093

/-! ## A314093.P4496593199128944229

`A014019(n+8)+A008706(n)`
-/

namespace A314093.P4496593199128944229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (n + 8) + A008706 n

end

end A314093.P4496593199128944229

namespace A314093

/-- `A014019(n+8)+A008706(n)` -/
def P4496593199128944229.Spec : Prop :=
  ∀ n, P4496593199128944229.a n = A314093 n

end A314093

/-! ## A314093.P4412439476262266021

`A008458(n)+A008574(n)-A314961(n)`
-/

namespace A314093.P4412439476262266021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314961 n)

end

end A314093.P4412439476262266021

namespace A314093

/-- `A008458(n)+A008574(n)-A314961(n)` -/
def P4412439476262266021.Spec : Prop :=
  ∀ n, P4412439476262266021.a n = A314093 n

end A314093

/-! ## A314093.P11459515398472895147

`(A315732(n)+A310368(n))/2`
-/

namespace A314093.P11459515398472895147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315732 n + A310368 n : ℚ) / 2

end

end A314093.P11459515398472895147

namespace A314093

/-- `(A315732(n)+A310368(n))/2` -/
def P11459515398472895147.Spec : Prop :=
  ∀ n, P11459515398472895147.a n = (A314093 n : ℚ)

end A314093

/-! ## A314093.P13180427682927520188

`A074067(A314961(n))`
-/

namespace A314093.P13180427682927520188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A314961 n).toNat

end

end A314093.P13180427682927520188

namespace A314093

/-- `A074067(A314961(n))` -/
def P13180427682927520188.Spec : Prop :=
  ∀ n, P13180427682927520188.a n = A314093 n

end A314093

/-! ## A314093.P8682406246946093121

`A005843(A008706(n))-A314961(n)`
-/

namespace A314093.P8682406246946093121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314961 n

end

end A314093.P8682406246946093121

namespace A314093

/-- `A005843(A008706(n))-A314961(n)` -/
def P8682406246946093121.Spec : Prop :=
  ∀ n, P8682406246946093121.a n = A314093 n

end A314093

/-!
# A314094: Coordination sequence Gal.6.345.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314094, the canonical program `A314094.P14203817368862660609` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314094 has offset 0).

The definition of A314094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2369 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314094.P14203817368862660609

`A047263(A312890(n)+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314094

/-- `A047263(A312890(n)+1)` -/
def P14203817368862660609.Spec : Prop :=
  ∀ n, P14203817368862660609.a n = A314094 n

theorem P14203817368862660609.correct : P14203817368862660609.Spec := by
  intro n
  simp only [A314094]

end A314094

/-! ## A314094.P12013286370381408777

`A304804(A312890(n)-1)`
-/

namespace A314094.P12013286370381408777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304804 (A312890 n - 1).toNat

end

end A314094.P12013286370381408777

namespace A314094

/-- `A304804(A312890(n)-1)` -/
def P12013286370381408777.Spec : Prop :=
  ∀ n, P12013286370381408777.a n = A314094 n

end A314094

/-! ## A314094.P1463985524285200076

`abs(A008592(n)-A314959(n))`
-/

namespace A314094.P1463985524285200076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314959 n|

end

end A314094.P1463985524285200076

namespace A314094

/-- `abs(A008592(n)-A314959(n))` -/
def P1463985524285200076.Spec : Prop :=
  ∀ n, P1463985524285200076.a n = A314094 n

end A314094

/-! ## A314094.P14950507636497127456

`2*A008706(n)-A314959(n)`
-/

namespace A314094.P14950507636497127456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314959 n

end

end A314094.P14950507636497127456

namespace A314094

/-- `2*A008706(n)-A314959(n)` -/
def P14950507636497127456.Spec : Prop :=
  ∀ n, P14950507636497127456.a n = A314094 n

end A314094

/-! ## A314094.P9706940764468871825

`A313693(n)+A004525(n-A004396(n))`
-/

namespace A314094.P9706940764468871825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A314094.P9706940764468871825

namespace A314094

/-- `A313693(n)+A004525(n-A004396(n))` -/
def P9706940764468871825.Spec : Prop :=
  ∀ n, P9706940764468871825.a n = A314094 n

end A314094

/-! ## A314094.P7617525742975408937

`A008458(n)+A008574(n)-A314959(n)`
-/

namespace A314094.P7617525742975408937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314959 n)

end

end A314094.P7617525742975408937

namespace A314094

/-- `A008458(n)+A008574(n)-A314959(n)` -/
def P7617525742975408937.Spec : Prop :=
  ∀ n, P7617525742975408937.a n = A314094 n

end A314094

/-! ## A314094.P4225086257188538078

`A313684(n)+A002264(n+1)`
-/

namespace A314094.P4225086257188538078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313684 n + A002264 (n + 1)

end

end A314094.P4225086257188538078

namespace A314094

/-- `A313684(n)+A002264(n+1)` -/
def P4225086257188538078.Spec : Prop :=
  ∀ n, P4225086257188538078.a n = A314094 n

theorem P4225086257188538078.correct : P4225086257188538078.Spec := by
  intro n
  simp only [A314094, Nat.add_sub_cancel, A314094.P4225086257188538078.a, A314094.P14203817368862660609.a, A002264, A002264.P5647656940077635922.a, A047263, A047263.P10177617567604490545.a, A312890, A312890.P5869710039852604831.a, A313684, A313684.P7430096167787627216.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314094

/-! ## A314094.P8029403186231522488

`A008486(n)+A313684(n)-A008576(n)`
-/

namespace A314094.P8029403186231522488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313684 n - A008576 n)

end

end A314094.P8029403186231522488

namespace A314094

/-- `A008486(n)+A313684(n)-A008576(n)` -/
def P8029403186231522488.Spec : Prop :=
  ∀ n, P8029403186231522488.a n = A314094 n

end A314094

/-! ## A314094.P7420135826785102036

`A315675(n)-A004525(A004396(n))`
-/

namespace A314094.P7420135826785102036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315675 n - A004525 (A004396 n).toNat

end

end A314094.P7420135826785102036

namespace A314094

/-- `A315675(n)-A004525(A004396(n))` -/
def P7420135826785102036.Spec : Prop :=
  ∀ n, P7420135826785102036.a n = A314094 n

end A314094

/-! ## A314094.P17100801757367627666

`A315689(n)-A004525(n)`
-/

namespace A314094.P17100801757367627666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315689 n - A004525 n

end

end A314094.P17100801757367627666

namespace A314094

/-- `A315689(n)-A004525(n)` -/
def P17100801757367627666.Spec : Prop :=
  ∀ n, P17100801757367627666.a n = A314094 n

theorem P17100801757367627666.correct : P17100801757367627666.Spec := by
  intro n
  simp only [A314094, Nat.add_sub_cancel, A314094.P17100801757367627666.a, A314094.P14203817368862660609.a, A004525, A004525.P4158271949796742323.a, A047263, A047263.P10177617567604490545.a, A312890, A312890.P5869710039852604831.a, A315689, A315689.P11366853551913023718.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314094

/-! ## A314094.P8375035171395305292

`A315744(n)-A004396(n)`
-/

namespace A314094.P8375035171395305292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315744 n - A004396 n

end

end A314094.P8375035171395305292

namespace A314094

/-- `A315744(n)-A004396(n)` -/
def P8375035171395305292.Spec : Prop :=
  ∀ n, P8375035171395305292.a n = A314094 n

theorem P8375035171395305292.correct : P8375035171395305292.Spec := by
  intro n
  simp only [A314094, Nat.add_sub_cancel, A314094.P8375035171395305292.a, A314094.P14203817368862660609.a, A004396, A004396.P17032557045289780609.a, A047263, A047263.P10177617567604490545.a, A312890, A312890.P5869710039852604831.a, A315744, A315744.P16771703429452510069.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314094

/-! ## A314094.P3357492092707698360

`A315744(n)-A002264(2*n+1)`
-/

namespace A314094.P3357492092707698360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315744 n - A002264 (2 * n + 1)

end

end A314094.P3357492092707698360

namespace A314094

/-- `A315744(n)-A002264(2*n+1)` -/
def P3357492092707698360.Spec : Prop :=
  ∀ n, P3357492092707698360.a n = A314094 n

theorem P3357492092707698360.correct : P3357492092707698360.Spec := by
  intro n
  simp only [A314094, Nat.add_sub_cancel, A314094.P3357492092707698360.a, A314094.P14203817368862660609.a, A002264, A002264.P5647656940077635922.a, A047263, A047263.P10177617567604490545.a, A312890, A312890.P5869710039852604831.a, A315744, A315744.P16771703429452510069.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314094

/-! ## A314094.P557833763579542430

`A074067(A314959(n))`
-/

namespace A314094.P557833763579542430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A314959 n).toNat

end

end A314094.P557833763579542430

namespace A314094

/-- `A074067(A314959(n))` -/
def P557833763579542430.Spec : Prop :=
  ∀ n, P557833763579542430.a n = A314094 n

end A314094

/-! ## A314094.P14047984338363450636

`A005843(A008706(n))-A314959(n)`
-/

namespace A314094.P14047984338363450636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314959 n

end

end A314094.P14047984338363450636

namespace A314094

/-- `A005843(A008706(n))-A314959(n)` -/
def P14047984338363450636.Spec : Prop :=
  ∀ n, P14047984338363450636.a n = A314094 n

end A314094

/-!
# A314095: Coordination sequence Gal.6.204.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314095, the canonical program `A314095.P10319490928376575526` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314095 has offset 0).

The definition of A314095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314095.P6804156128234140270

`abs(A008592(n)-A314955(n))`
-/

namespace A314095.P6804156128234140270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314955 n|

end

end A314095.P6804156128234140270

namespace A314095

/-- `abs(A008592(n)-A314955(n))` -/
def P6804156128234140270.Spec : Prop :=
  ∀ n, P6804156128234140270.a n = A314095 n

end A314095

/-! ## A314095.P11053788047584915053

`2*A008706(n)-A314955(n)`
-/

namespace A314095.P11053788047584915053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314955 n

end

end A314095.P11053788047584915053

namespace A314095

/-- `2*A008706(n)-A314955(n)` -/
def P11053788047584915053.Spec : Prop :=
  ∀ n, P11053788047584915053.a n = A314095 n

end A314095

/-! ## A314095.P15087807233358656721

`A000038(n)+A008592(n)-A314955(n)`
-/

namespace A314095.P15087807233358656721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A314955 n)

end

end A314095.P15087807233358656721

namespace A314095

/-- `A000038(n)+A008592(n)-A314955(n)` -/
def P15087807233358656721.Spec : Prop :=
  ∀ n, P15087807233358656721.a n = A314095 n

end A314095

/-! ## A314095.P6301376122541272820

`A008458(n)+A008574(n)-A314955(n)`
-/

namespace A314095.P6301376122541272820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314955 n)

end

end A314095.P6301376122541272820

namespace A314095

/-- `A008458(n)+A008574(n)-A314955(n)` -/
def P6301376122541272820.Spec : Prop :=
  ∀ n, P6301376122541272820.a n = A314095 n

end A314095

/-! ## A314095.P8297685768024100589

`∑{d}[A008592(n)-A314955(n), A000010(#)]`
-/

namespace A314095.P8297685768024100589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A314095.P8297685768024100589

namespace A314095

/-- `∑{d}[A008592(n)-A314955(n), A000010(#)]` -/
def P8297685768024100589.Spec : Prop :=
  ∀ n, P8297685768024100589.a n = A314095 n

end A314095

/-! ## A314095.P14823631420433444342

`A005843(A008706(n))-A314955(n)`
-/

namespace A314095.P14823631420433444342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314955 n

end

end A314095.P14823631420433444342

namespace A314095

/-- `A005843(A008706(n))-A314955(n)` -/
def P14823631420433444342.Spec : Prop :=
  ∀ n, P14823631420433444342.a n = A314095 n

end A314095

/-! ## A314095.P3500096486825840378

`A004396(A315733(n)+2*n)`
-/

namespace A314095.P3500096486825840378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315733 n + (2 * n : ℤ)).toNat

end

end A314095.P3500096486825840378

namespace A314095

/-- `A004396(A315733(n)+2*n)` -/
def P3500096486825840378.Spec : Prop :=
  ∀ n, P3500096486825840378.a n = A314095 n

end A314095

/-! ## A314095.P10077492967048565033

`A004396(A315733(n)+n+n)`
-/

namespace A314095.P10077492967048565033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315733 n + (n : ℤ) + (n : ℤ)).toNat

end

end A314095.P10077492967048565033

namespace A314095

/-- `A004396(A315733(n)+n+n)` -/
def P10077492967048565033.Spec : Prop :=
  ∀ n, P10077492967048565033.a n = A314095 n

end A314095

/-! ## A314095.P10319490928376575526

`A099479(A315743(n)+A004273(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A314095

/-- `A099479(A315743(n)+A004273(n))` -/
def P10319490928376575526.Spec : Prop :=
  ∀ n, P10319490928376575526.a n = A314095 n

theorem P10319490928376575526.correct : P10319490928376575526.Spec := by
  intro n
  simp only [A314095]

end A314095

/-!
# A314096: Coordination sequence Gal.4.73.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314096, the canonical program `A314096.P5315638873282229111` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314096 has offset 0).

The definition of A314096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314096.P5315638873282229111

`A191276(A033627(n+2))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A314096

/-- `A191276(A033627(n+2))` -/
def P5315638873282229111.Spec : Prop :=
  ∀ n, P5315638873282229111.a n = A314096 n

theorem P5315638873282229111.correct : P5315638873282229111.Spec := by
  intro n
  simp only [A314096]

end A314096

/-! ## A314096.P8886071569561936584

`abs(A008592(n)-A314954(n))`
-/

namespace A314096.P8886071569561936584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314954 n|

end

end A314096.P8886071569561936584

namespace A314096

/-- `abs(A008592(n)-A314954(n))` -/
def P8886071569561936584.Spec : Prop :=
  ∀ n, P8886071569561936584.a n = A314096 n

end A314096

/-! ## A314096.P5446945751944822362

`A191276(A028310(3*n)+1)`
-/

namespace A314096.P5446945751944822362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (A028310 (3 * n) + 1).toNat

end

end A314096.P5446945751944822362

namespace A314096

/-- `A191276(A028310(3*n)+1)` -/
def P5446945751944822362.Spec : Prop :=
  ∀ n, P5446945751944822362.a n = A314096 n

end A314096

/-! ## A314096.P11495961103117314938

`A191276(A004277(n)+1+n)`
-/

namespace A314096.P11495961103117314938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (A004277 n + 1 + (n : ℤ)).toNat

end

end A314096.P11495961103117314938

namespace A314096

/-- `A191276(A004277(n)+1+n)` -/
def P11495961103117314938.Spec : Prop :=
  ∀ n, P11495961103117314938.a n = A314096 n

end A314096

/-! ## A314096.P14516610638691552953

`2*A008706(n)-A314954(n)`
-/

namespace A314096.P14516610638691552953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314954 n

end

end A314096.P14516610638691552953

namespace A314096

/-- `2*A008706(n)-A314954(n)` -/
def P14516610638691552953.Spec : Prop :=
  ∀ n, P14516610638691552953.a n = A314096 n

end A314096

/-! ## A314096.P16927170379663750841

`A314040(n)-A238469(2*n)`
-/

namespace A314096.P16927170379663750841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314040 n - A238469 (2 * n)

end

end A314096.P16927170379663750841

namespace A314096

/-- `A314040(n)-A238469(2*n)` -/
def P16927170379663750841.Spec : Prop :=
  ∀ n, P16927170379663750841.a n = A314096 n

end A314096

/-! ## A314096.P15015872595227859068

`A314674(n)+n-A242062(n)`
-/

namespace A314096.P15015872595227859068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314674 n + ((n : ℤ) - A242062 n)

end

end A314096.P15015872595227859068

namespace A314096

/-- `A314674(n)+n-A242062(n)` -/
def P15015872595227859068.Spec : Prop :=
  ∀ n, P15015872595227859068.a n = A314096 n

end A314096

/-! ## A314096.P10486381614275752364

`A008458(n)+A008574(n)-A314954(n)`
-/

namespace A314096.P10486381614275752364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314954 n)

end

end A314096.P10486381614275752364

namespace A314096

/-- `A008458(n)+A008574(n)-A314954(n)` -/
def P10486381614275752364.Spec : Prop :=
  ∀ n, P10486381614275752364.a n = A314096 n

end A314096

/-! ## A314096.P16196420912066487403

`A314040(n)-A238468(A238468(n)+n)`
-/

namespace A314096.P16196420912066487403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314040 n - A238468 (A238468 n + (n : ℤ)).toNat

end

end A314096.P16196420912066487403

namespace A314096

/-- `A314040(n)-A238468(A238468(n)+n)` -/
def P16196420912066487403.Spec : Prop :=
  ∀ n, P16196420912066487403.a n = A314096 n

end A314096

/-! ## A314096.P14240116722432359554

`∑{d}[A008592(n)-A314954(n), A000010(#)]`
-/

namespace A314096.P14240116722432359554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A314096.P14240116722432359554

namespace A314096

/-- `∑{d}[A008592(n)-A314954(n), A000010(#)]` -/
def P14240116722432359554.Spec : Prop :=
  ∀ n, P14240116722432359554.a n = A314096 n

end A314096

/-! ## A314096.P16307820414389352191

`A004275(2*n+1)+A004776(2*(n+1))-A004776(n+2)`
-/

namespace A314096.P16307820414389352191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n + 1) + (A004776 (2 * (n + 1)) - A004776 (n + 2))

end

end A314096.P16307820414389352191

namespace A314096

/-- `A004275(2*n+1)+A004776(2*(n+1))-A004776(n+2)` -/
def P16307820414389352191.Spec : Prop :=
  ∀ n, P16307820414389352191.a n = A314096 n

end A314096

/-! ## A314096.P16103037838876653238

`A047263(A312895(n)+1)`
-/

namespace A314096.P16103037838876653238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A312895 n + 1).toNat

end

end A314096.P16103037838876653238

namespace A314096

/-- `A047263(A312895(n)+1)` -/
def P16103037838876653238.Spec : Prop :=
  ∀ n, P16103037838876653238.a n = A314096 n

end A314096

/-! ## A314096.P10742608063032045681

`A047263(A238468(n)+A310341(n)+1)`
-/

namespace A314096.P10742608063032045681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A238468 n + (A310341 n + 1)).toNat

end

end A314096.P10742608063032045681

namespace A314096

/-- `A047263(A238468(n)+A310341(n)+1)` -/
def P10742608063032045681.Spec : Prop :=
  ∀ n, P10742608063032045681.a n = A314096 n

end A314096

/-! ## A314096.P11374225803400957014

`A047263(A271114(n)-A083033(n+1))`
-/

namespace A314096.P11374225803400957014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A271114 n - A083033 (n + 1)).toNat

end

end A314096.P11374225803400957014

namespace A314096

/-- `A047263(A271114(n)-A083033(n+1))` -/
def P11374225803400957014.Spec : Prop :=
  ∀ n, P11374225803400957014.a n = A314096 n

end A314096

/-! ## A314096.P17506931910729091119

`A315452(n)-A238469(n)`
-/

namespace A314096.P17506931910729091119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315452 n - A238469 n

end

end A314096.P17506931910729091119

namespace A314096

/-- `A315452(n)-A238469(n)` -/
def P17506931910729091119.Spec : Prop :=
  ∀ n, P17506931910729091119.a n = A314096 n

theorem P17506931910729091119.correct : P17506931910729091119.Spec := by
  intro n
  simp only [A314096, Nat.add_sub_cancel, A314096.P17506931910729091119.a, A314096.P5315638873282229111.a, A033627, A033627.P10512786693713400032.a, A191276, A191276.P7055579163183776945.a, A238469, A238469.P12053234808981461841.a, A315452, A315452.P9156352442981607618.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314096

/-! ## A314096.P5810092994663080576

`A315452(n)-A238470(2*n)`
-/

namespace A314096.P5810092994663080576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315452 n - A238470 (2 * n)

end

end A314096.P5810092994663080576

namespace A314096

/-- `A315452(n)-A238470(2*n)` -/
def P5810092994663080576.Spec : Prop :=
  ∀ n, P5810092994663080576.a n = A314096 n

end A314096

/-! ## A314096.P403458635466504609

`A047263(A314211(n)+1-A047263(n+1))`
-/

namespace A314096.P403458635466504609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A314211 n + (1 - A047263 (n + 1))).toNat

end

end A314096.P403458635466504609

namespace A314096

/-- `A047263(A314211(n)+1-A047263(n+1))` -/
def P403458635466504609.Spec : Prop :=
  ∀ n, P403458635466504609.a n = A314096 n

end A314096

/-! ## A314096.P5397828858726658541

`A005843(A008706(n))-A314954(n)`
-/

namespace A314096.P5397828858726658541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314954 n

end

end A314096.P5397828858726658541

namespace A314096

/-- `A005843(A008706(n))-A314954(n)` -/
def P5397828858726658541.Spec : Prop :=
  ∀ n, P5397828858726658541.a n = A314096 n

end A314096

/-! ## A314096.P3436567739915936246

`A313836(n)+A238470(n)`
-/

namespace A314096.P3436567739915936246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n + A238470 n

end

end A314096.P3436567739915936246

namespace A314096

/-- `A313836(n)+A238470(n)` -/
def P3436567739915936246.Spec : Prop :=
  ∀ n, P3436567739915936246.a n = A314096 n

end A314096

/-! ## A314096.P18329814384101651955

`A314674(n)+A242062(6*n)`
-/

namespace A314096.P18329814384101651955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314674 n + A242062 (6 * n)

end

end A314096.P18329814384101651955

namespace A314096

/-- `A314674(n)+A242062(6*n)` -/
def P18329814384101651955.Spec : Prop :=
  ∀ n, P18329814384101651955.a n = A314096 n

end A314096

/-!
# A314097: Coordination sequence Gal.6.354.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314097, the canonical program `A314097.P8368931035641708472` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314097 has offset 0).

The definition of A314097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314097.P12760402943157940549

`A310511(n)+A128834(n)`
-/

namespace A314097.P12760402943157940549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n + A128834 n

end

end A314097.P12760402943157940549

namespace A314097

/-- `A310511(n)+A128834(n)` -/
def P12760402943157940549.Spec : Prop :=
  ∀ n, P12760402943157940549.a n = A314097 n

end A314097

/-! ## A314097.P17626281849336191054

`A315693(n)-A004525(n)`
-/

namespace A314097.P17626281849336191054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315693 n - A004525 n

end

end A314097.P17626281849336191054

namespace A314097

/-- `A315693(n)-A004525(n)` -/
def P17626281849336191054.Spec : Prop :=
  ∀ n, P17626281849336191054.a n = A314097 n

end A314097

/-! ## A314097.P15521306332650024823

`abs(A008592(n)-A314953(n))`
-/

namespace A314097.P15521306332650024823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314953 n|

end

end A314097.P15521306332650024823

namespace A314097

/-- `abs(A008592(n)-A314953(n))` -/
def P15521306332650024823.Spec : Prop :=
  ∀ n, P15521306332650024823.a n = A314097 n

end A314097

/-! ## A314097.P8368931035641708472

`A313510(n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A314097

/-- `A313510(n)+∑[A021913(n)]` -/
def P8368931035641708472.Spec : Prop :=
  ∀ n, P8368931035641708472.a n = A314097 n

theorem P8368931035641708472.correct : P8368931035641708472.Spec := by
  intro n
  simp only [A314097]

end A314097

/-! ## A314097.P10082939704563034984

`A313510(n)+Δ[A011848(n)]`
-/

namespace A314097.P10082939704563034984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + (f1 (n + 1) - f1 n)

end

end A314097.P10082939704563034984

namespace A314097

/-- `A313510(n)+Δ[A011848(n)]` -/
def P10082939704563034984.Spec : Prop :=
  ∀ n, P10082939704563034984.a n = A314097 n

end A314097

/-! ## A314097.P9715183283661649181

`A314022(n)+Δ[A011865(n)]`
-/

namespace A314097.P9715183283661649181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314022 n + (f1 (n + 1) - f1 n)

end

end A314097.P9715183283661649181

namespace A314097

/-- `A314022(n)+Δ[A011865(n)]` -/
def P9715183283661649181.Spec : Prop :=
  ∀ n, P9715183283661649181.a n = A314097 n

end A314097

/-! ## A314097.P3476074241965296161

`A315693(n)-Δ[A054925(n)]`
-/

namespace A314097.P3476074241965296161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315693 n - (f1 (n + 1) - f1 n)

end

end A314097.P3476074241965296161

namespace A314097

/-- `A315693(n)-Δ[A054925(n)]` -/
def P3476074241965296161.Spec : Prop :=
  ∀ n, P3476074241965296161.a n = A314097 n

end A314097

/-! ## A314097.P941165393117162660

`A310511(n)-A010892(n+2)`
-/

namespace A314097.P941165393117162660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n - A010892 (n + 2)

end

end A314097.P941165393117162660

namespace A314097

/-- `A310511(n)-A010892(n+2)` -/
def P941165393117162660.Spec : Prop :=
  ∀ n, P941165393117162660.a n = A314097 n

end A314097

/-! ## A314097.P7517531356626299218

`A313510(n)+n-A004525(n)`
-/

namespace A314097.P7517531356626299218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + ((n : ℤ) - A004525 n)

end

end A314097.P7517531356626299218

namespace A314097

/-- `A313510(n)+n-A004525(n)` -/
def P7517531356626299218.Spec : Prop :=
  ∀ n, P7517531356626299218.a n = A314097 n

end A314097

/-! ## A314097.P11872852481802420457

`A313687(n)+n-A004396(n)`
-/

namespace A314097.P11872852481802420457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313687 n + ((n : ℤ) - A004396 n)

end

end A314097.P11872852481802420457

namespace A314097

/-- `A313687(n)+n-A004396(n)` -/
def P11872852481802420457.Spec : Prop :=
  ∀ n, P11872852481802420457.a n = A314097 n

end A314097

/-! ## A314097.P8819942308494813110

`∑[A021913(n)]+A315693(n)-n`
-/

namespace A314097.P8819942308494813110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315693 n - (n : ℤ))

end

end A314097.P8819942308494813110

namespace A314097

/-- `∑[A021913(n)]+A315693(n)-n` -/
def P8819942308494813110.Spec : Prop :=
  ∀ n, P8819942308494813110.a n = A314097 n

end A314097

/-! ## A314097.P12892943997095475072

`Δ[A011848(n)]+A315693(n)-n`
-/

namespace A314097.P12892943997095475072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315693 n - (n : ℤ))

end

end A314097.P12892943997095475072

namespace A314097

/-- `Δ[A011848(n)]+A315693(n)-n` -/
def P12892943997095475072.Spec : Prop :=
  ∀ n, P12892943997095475072.a n = A314097 n

end A314097

/-! ## A314097.P6322595718694992364

`A313510(n)+n-Δ[A054925(n)]`
-/

namespace A314097.P6322595718694992364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A314097.P6322595718694992364

namespace A314097

/-- `A313510(n)+n-Δ[A054925(n)]` -/
def P6322595718694992364.Spec : Prop :=
  ∀ n, P6322595718694992364.a n = A314097 n

end A314097

/-! ## A314097.P3368085598390842000

`A313693(n)+A004396(n-A004525(n))`
-/

namespace A314097.P3368085598390842000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A314097.P3368085598390842000

namespace A314097

/-- `A313693(n)+A004396(n-A004525(n))` -/
def P3368085598390842000.Spec : Prop :=
  ∀ n, P3368085598390842000.a n = A314097 n

end A314097

/-! ## A314097.P17547462848511342206

`A313698(n)+A004525(n-A004396(n))`
-/

namespace A314097.P17547462848511342206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A314097.P17547462848511342206

namespace A314097

/-- `A313698(n)+A004525(n-A004396(n))` -/
def P17547462848511342206.Spec : Prop :=
  ∀ n, P17547462848511342206.a n = A314097 n

end A314097

/-! ## A314097.P13918684741273996393

`A008486(n)+A313687(n)-A008576(n)`
-/

namespace A314097.P13918684741273996393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313687 n - A008576 n)

end

end A314097.P13918684741273996393

namespace A314097

/-- `A008486(n)+A313687(n)-A008576(n)` -/
def P13918684741273996393.Spec : Prop :=
  ∀ n, P13918684741273996393.a n = A314097 n

end A314097

/-! ## A314097.P5856879313539491311

`A008458(n)+A008574(n)-A314953(n)`
-/

namespace A314097.P5856879313539491311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314953 n)

end

end A314097.P5856879313539491311

namespace A314097

/-- `A008458(n)+A008574(n)-A314953(n)` -/
def P5856879313539491311.Spec : Prop :=
  ∀ n, P5856879313539491311.a n = A314097 n

end A314097

/-! ## A314097.P14545019026102233183

`A004525(A004396(n))+A219529(n)-A004525(n)`
-/

namespace A314097.P14545019026102233183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A219529 n - A004525 n)

end

end A314097.P14545019026102233183

namespace A314097

/-- `A004525(A004396(n))+A219529(n)-A004525(n)` -/
def P14545019026102233183.Spec : Prop :=
  ∀ n, P14545019026102233183.a n = A314097 n

end A314097

/-! ## A314097.P13541614753585356490

`A315417(n)-A101455(n)`
-/

namespace A314097.P13541614753585356490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315417 n - A101455 n

end

end A314097.P13541614753585356490

namespace A314097

/-- `A315417(n)-A101455(n)` -/
def P13541614753585356490.Spec : Prop :=
  ∀ n, P13541614753585356490.a n = A314097 n

end A314097

/-! ## A314097.P4404118040657317332

`A004525(A315760(2*n))-A004525(n)`
-/

namespace A314097.P4404118040657317332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315760 (2 * n)).toNat - A004525 n

end

end A314097.P4404118040657317332

namespace A314097

/-- `A004525(A315760(2*n))-A004525(n)` -/
def P4404118040657317332.Spec : Prop :=
  ∀ n, P4404118040657317332.a n = A314097 n

end A314097

/-!
# A314098: Coordination sequence Gal.6.339.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314098, the canonical program `A314098.P9077349121147278503` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314098 has offset 0).

The definition of A314098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314098.P9077349121147278503

`a(n-1)+a(n-2)-2*a(n-4)+a(n-6)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=16, a(4)=20, a(5)=26, a(6)=30, a(7)=34, a(8)=40`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A314098

/-- `a(n-1)+a(n-2)-2*a(n-4)+a(n-6)+a(n-7)-a(n-8)` -/
def P9077349121147278503.Spec : Prop :=
  ∀ n, P9077349121147278503.a n = A314098 n

theorem P9077349121147278503.correct : P9077349121147278503.Spec := by
  intro n
  simp only [A314098]

end A314098

/-! ## A314098.P17753692971268070683

`abs(A008592(n)-A314947(n))`
-/

namespace A314098.P17753692971268070683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314947 n|

end

end A314098.P17753692971268070683

namespace A314098

/-- `abs(A008592(n)-A314947(n))` -/
def P17753692971268070683.Spec : Prop :=
  ∀ n, P17753692971268070683.a n = A314098 n

end A314098

/-! ## A314098.P5210589734529288469

`floor(A010015(n)/A314947(n))`
-/

namespace A314098.P5210589734529288469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A314947 n : ℚ)⌋

end

end A314098.P5210589734529288469

namespace A314098

/-- `floor(A010015(n)/A314947(n))` -/
def P5210589734529288469.Spec : Prop :=
  ∀ n, P5210589734529288469.a n = A314098 n

end A314098

/-! ## A314098.P4758783497692594401

`A313688(n)+∑[A022003(n)]`
-/

namespace A314098.P4758783497692594401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A314098.P4758783497692594401

namespace A314098

/-- `A313688(n)+∑[A022003(n)]` -/
def P4758783497692594401.Spec : Prop :=
  ∀ n, P4758783497692594401.a n = A314098 n

end A314098

/-! ## A314098.P17553741344845204420

`A314024(n)+Δ[A011865(n)]`
-/

namespace A314098.P17553741344845204420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314024 n + (f1 (n + 1) - f1 n)

end

end A314098.P17553741344845204420

namespace A314098

/-- `A314024(n)+Δ[A011865(n)]` -/
def P17553741344845204420.Spec : Prop :=
  ∀ n, P17553741344845204420.a n = A314098 n

end A314098

/-! ## A314098.P3292360188131783046

`A313688(n)+A002264(n+1)`
-/

namespace A314098.P3292360188131783046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + A002264 (n + 1)

end

end A314098.P3292360188131783046

namespace A314098

/-- `A313688(n)+A002264(n+1)` -/
def P3292360188131783046.Spec : Prop :=
  ∀ n, P3292360188131783046.a n = A314098 n

end A314098

/-! ## A314098.P2433883246289677692

`A313688(n)+n-A004396(n)`
-/

namespace A314098.P2433883246289677692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + ((n : ℤ) - A004396 n)

end

end A314098.P2433883246289677692

namespace A314098

/-- `A313688(n)+n-A004396(n)` -/
def P2433883246289677692.Spec : Prop :=
  ∀ n, P2433883246289677692.a n = A314098 n

end A314098

/-! ## A314098.P10848113904920608366

`A008486(n)+A313688(n)-A008576(n)`
-/

namespace A314098.P10848113904920608366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313688 n - A008576 n)

end

end A314098.P10848113904920608366

namespace A314098

/-- `A008486(n)+A313688(n)-A008576(n)` -/
def P10848113904920608366.Spec : Prop :=
  ∀ n, P10848113904920608366.a n = A314098 n

end A314098

/-! ## A314098.P14379930722866743360

`A008458(n)+A008574(n)-A314947(n)`
-/

namespace A314098.P14379930722866743360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314947 n)

end

end A314098.P14379930722866743360

namespace A314098

/-- `A008458(n)+A008574(n)-A314947(n)` -/
def P14379930722866743360.Spec : Prop :=
  ∀ n, P14379930722866743360.a n = A314098 n

end A314098

/-! ## A314098.P16024750065538921029

`A315315(n)-A102283(n)`
-/

namespace A314098.P16024750065538921029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315315 n - A102283 n

end

end A314098.P16024750065538921029

namespace A314098

/-- `A315315(n)-A102283(n)` -/
def P16024750065538921029.Spec : Prop :=
  ∀ n, P16024750065538921029.a n = A314098 n

theorem P16024750065538921029.correct : P16024750065538921029.Spec := by
  intro n
  simp only [A314098, Nat.add_sub_cancel, A314098.P16024750065538921029.a, A314098.P9077349121147278503.a, A102283, A102283.P18218274576938374007.a, A315315, A315315.P14535342207384651808.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314098

/-! ## A314098.P6845250657269337808

`A315747(n)-A004396(n)`
-/

namespace A314098.P6845250657269337808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315747 n - A004396 n

end

end A314098.P6845250657269337808

namespace A314098

/-- `A315747(n)-A004396(n)` -/
def P6845250657269337808.Spec : Prop :=
  ∀ n, P6845250657269337808.a n = A314098 n

end A314098

/-! ## A314098.P14998503931645103206

`A315747(n)-A002264(2*n+1)`
-/

namespace A314098.P14998503931645103206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315747 n - A002264 (2 * n + 1)

end

end A314098.P14998503931645103206

namespace A314098

/-- `A315747(n)-A002264(2*n+1)` -/
def P14998503931645103206.Spec : Prop :=
  ∀ n, P14998503931645103206.a n = A314098 n

end A314098

/-! ## A314098.P2130824076699402343

`A074067(A314947(n))`
-/

namespace A314098.P2130824076699402343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A314947 n).toNat

end

end A314098.P2130824076699402343

namespace A314098

/-- `A074067(A314947(n))` -/
def P2130824076699402343.Spec : Prop :=
  ∀ n, P2130824076699402343.a n = A314098 n

end A314098

/-! ## A314098.P3324711892513880237

`A004396(2*n)+A004396(A315741(n))`
-/

namespace A314098.P3324711892513880237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A315741 n).toNat

end

end A314098.P3324711892513880237

namespace A314098

/-- `A004396(2*n)+A004396(A315741(n))` -/
def P3324711892513880237.Spec : Prop :=
  ∀ n, P3324711892513880237.a n = A314098 n

end A314098

/-!
# A314099: Coordination sequence Gal.5.131.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A314099, the canonical program `A314099.P18395783485758796748` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A314099 has offset 0).

The definition of A314099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A314099.P5903175221301349144

`abs(A008592(n)-A314945(n))`
-/

namespace A314099.P5903175221301349144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314945 n|

end

end A314099.P5903175221301349144

namespace A314099

/-- `abs(A008592(n)-A314945(n))` -/
def P5903175221301349144.Spec : Prop :=
  ∀ n, P5903175221301349144.a n = A314099 n

end A314099

/-! ## A314099.P3033595060710333317

`2*A008706(n)-A314945(n)`
-/

namespace A314099.P3033595060710333317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314945 n

end

end A314099.P3033595060710333317

namespace A314099

/-- `2*A008706(n)-A314945(n)` -/
def P3033595060710333317.Spec : Prop :=
  ∀ n, P3033595060710333317.a n = A314099 n

end A314099

/-! ## A314099.P6185389122013649513

`A315690(n)-A004396(A004396(n))`
-/

namespace A314099.P6185389122013649513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n - A004396 (A004396 n).toNat

end

end A314099.P6185389122013649513

namespace A314099

/-- `A315690(n)-A004396(A004396(n))` -/
def P6185389122013649513.Spec : Prop :=
  ∀ n, P6185389122013649513.a n = A314099 n

end A314099

/-! ## A314099.P18395783485758796748

`A312893(n)+A004396(A042965(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A314099

/-- `A312893(n)+A004396(A042965(n+1))` -/
def P18395783485758796748.Spec : Prop :=
  ∀ n, P18395783485758796748.a n = A314099 n

theorem P18395783485758796748.correct : P18395783485758796748.Spec := by
  intro n
  simp only [A314099]

end A314099

/-! ## A314099.P3497070461158367186

`A008458(n)-A047513(A004396(n)+1)`
-/

namespace A314099.P3497070461158367186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A047513 (A004396 n + 1).toNat

end

end A314099.P3497070461158367186

namespace A314099

/-- `A008458(n)-A047513(A004396(n)+1)` -/
def P3497070461158367186.Spec : Prop :=
  ∀ n, P3497070461158367186.a n = A314099 n

end A314099

/-! ## A314099.P5178646430898193685

`A312893(n)+A004396(A004396(2*n))`
-/

namespace A314099.P5178646430898193685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312893 n + A004396 (A004396 (2 * n)).toNat

end

end A314099.P5178646430898193685

namespace A314099

/-- `A312893(n)+A004396(A004396(2*n))` -/
def P5178646430898193685.Spec : Prop :=
  ∀ n, P5178646430898193685.a n = A314099 n

end A314099

/-! ## A314099.P17339758058518903305

`A313703(n)+A004396(n-A004396(n))`
-/

namespace A314099.P17339758058518903305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313703 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A314099.P17339758058518903305

namespace A314099

/-- `A313703(n)+A004396(n-A004396(n))` -/
def P17339758058518903305.Spec : Prop :=
  ∀ n, P17339758058518903305.a n = A314099 n

end A314099

/-! ## A314099.P11546776290127864158

`A008458(n)+A008574(n)-A314945(n)`
-/

namespace A314099.P11546776290127864158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314945 n)

end

end A314099.P11546776290127864158

namespace A314099

/-- `A008458(n)+A008574(n)-A314945(n)` -/
def P11546776290127864158.Spec : Prop :=
  ∀ n, P11546776290127864158.a n = A314099 n

end A314099

/-! ## A314099.P3022389016656269070

`A314945(n)+A005843(A008706(n)-A314945(n))`
-/

namespace A314099.P3022389016656269070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314945 n + A005843 (A008706 n - A314945 n).toNat

end

end A314099.P3022389016656269070

namespace A314099

/-- `A314945(n)+A005843(A008706(n)-A314945(n))` -/
def P3022389016656269070.Spec : Prop :=
  ∀ n, P3022389016656269070.a n = A314099 n

end A314099

/-! ## A314099.P12680766866204825818

`A315748(n)-A004396(n)`
-/

namespace A314099.P12680766866204825818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315748 n - A004396 n

end

end A314099.P12680766866204825818

namespace A314099

/-- `A315748(n)-A004396(n)` -/
def P12680766866204825818.Spec : Prop :=
  ∀ n, P12680766866204825818.a n = A314099 n

theorem P12680766866204825818.correct : P12680766866204825818.Spec := by
  intro n
  simp only [A314099, Nat.add_sub_cancel, A314099.P12680766866204825818.a, A314099.P18395783485758796748.a, A004396, A004396.P17032557045289780609.a, A042965, A042965.P10256174339092268817.a, A312893, A312893.P922128372979076951.a, A315748, A315748.P2319200276665506335.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314099

/-! ## A314099.P15673290352682383094

`A315748(n)-A002264(2*n+1)`
-/

namespace A314099.P15673290352682383094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315748 n - A002264 (2 * n + 1)

end

end A314099.P15673290352682383094

namespace A314099

/-- `A315748(n)-A002264(2*n+1)` -/
def P15673290352682383094.Spec : Prop :=
  ∀ n, P15673290352682383094.a n = A314099 n

theorem P15673290352682383094.correct : P15673290352682383094.Spec := by
  intro n
  simp only [A314099, Nat.add_sub_cancel, A314099.P15673290352682383094.a, A314099.P18395783485758796748.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A042965, A042965.P10256174339092268817.a, A312893, A312893.P922128372979076951.a, A315748, A315748.P2319200276665506335.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A314099

/-! ## A314099.P10327106891742279440

`A315748(n)-A004525(A004773(n))`
-/

namespace A314099.P10327106891742279440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315748 n - A004525 (A004773 n).toNat

end

end A314099.P10327106891742279440

namespace A314099

/-- `A315748(n)-A004525(A004773(n))` -/
def P10327106891742279440.Spec : Prop :=
  ∀ n, P10327106891742279440.a n = A314099 n

end A314099

/-! ## A314099.P3160828258635782844

`A005843(A008706(n))-A314945(n)`
-/

namespace A314099.P3160828258635782844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314945 n

end

end A314099.P3160828258635782844

namespace A314099

/-- `A005843(A008706(n))-A314945(n)` -/
def P3160828258635782844.Spec : Prop :=
  ∀ n, P3160828258635782844.a n = A314099 n

end A314099

/-! ## A314099.P5079854051275809353

`A313773(2*n)+A313773(n+1)-A313773(2*n+1)`
-/

namespace A314099.P5079854051275809353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313773 (2 * n) + (A313773 (n + 1) - A313773 (2 * n + 1))

end

end A314099.P5079854051275809353

namespace A314099

/-- `A313773(2*n)+A313773(n+1)-A313773(2*n+1)` -/
def P5079854051275809353.Spec : Prop :=
  ∀ n, P5079854051275809353.a n = A314099 n

end A314099

