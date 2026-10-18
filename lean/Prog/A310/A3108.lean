import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

/-!
# A310800: Coordination sequence Gal.6.435.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310800, there is no canonical definition to state claims against.
-/

/-! ## A310800.P11664534670132176154

`A250120(n)-A000120(A058534(n))`
-/

namespace A310800.P11664534670132176154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A000120 (A058534 n).toNat

end

end A310800.P11664534670132176154

/-! ## A310800.P10753085881266388907

`A285959(n+1)-A010873(A030186(n))`
-/

namespace A310800.P10753085881266388907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285959 (n + 1) - A010873 (A030186 n).toNat

end

end A310800.P10753085881266388907

/-! ## A310800.P16316405075343835075

`A238468(n)+A311347(n)-A241173(A018275(n+1))`
-/

namespace A310800.P16316405075343835075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238468 n + (A311347 n - A241173 (A018275 (n + 1)).toNat)

end

end A310800.P16316405075343835075

/-! ## A310800.P12783140110410440110

`A133137(A238468(n)+A008574(n)*A115576(n+1))`
-/

namespace A310800.P12783140110410440110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A238468 n + A008574 n * A115576 (n + 1)).toNat

end

end A310800.P12783140110410440110

/-! ## A310800.P14838565344566013735

`A133137(A238468(n)+A008574(n)*A115581(n+1))`
-/

namespace A310800.P14838565344566013735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A238468 n + A008574 n * A115581 (n + 1)).toNat

end

end A310800.P14838565344566013735

/-!
# A310801: Coordination sequence Gal.4.21.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310801, there is no canonical definition to state claims against.
-/

/-! ## A310801.P9837734102548845800

`A315024(n)-A001221(A001700(n))`
-/

namespace A310801.P9837734102548845800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315024 n - A001221 (A001700 n).toNat

end

end A310801.P9837734102548845800

/-! ## A310801.P2371661176464052104

`A311804(n)-A059841(A127297(n))`
-/

namespace A310801.P2371661176464052104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311804 n - A059841 (A127297 n).toNat

end

end A310801.P2371661176464052104

/-! ## A310801.P14784788245026438760

`A312348(n)-A060952(A279986(n))`
-/

namespace A310801.P14784788245026438760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312348 n - A060952 (A279986 n).toNat

end

end A310801.P14784788245026438760

/-! ## A310801.P1916957183554488773

`A353187(2*(n+1))+A010815(A148347(n))`
-/

namespace A310801.P1916957183554488773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353187 (2 * (n + 1)) + A010815 (A148347 n).toNat

end

end A310801.P1916957183554488773

/-! ## A310801.P9612333817729902320

`A008574(n)-A078580(A165545(n))`
-/

namespace A310801.P9612333817729902320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A078580 (A165545 n).toNat

end

end A310801.P9612333817729902320

/-!
# A310802: Coordination sequence Gal.6.78.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310802, there is no canonical definition to state claims against.
-/

/-! ## A310802.P17786585257383921627

`A310803(A087051(n))`
-/

namespace A310802.P17786585257383921627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310803 (A087051 n).toNat

end

end A310802.P17786585257383921627

/-! ## A310802.P15199199947533611872

`A310803(A227549(n+1))`
-/

namespace A310802.P15199199947533611872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310803 (A227549 (n + 1)).toNat

end

end A310802.P15199199947533611872

/-! ## A310802.P3951871020111677476

`A310803(A396204(n+1))`
-/

namespace A310802.P3951871020111677476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310803 (A396204 (n + 1)).toNat

end

end A310802.P3951871020111677476

/-! ## A310802.P6284389175735860692

`A310803(n*A035041(n)!)`
-/

namespace A310802.P6284389175735860692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310803 (n * Nat.factorial (A035041 n).toNat)

end

end A310802.P6284389175735860692

/-! ## A310802.P12899793022527722757

`A310803(A326627(n)²²+n)`
-/

namespace A310802.P12899793022527722757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310803 ((A326627 n ^ 2) ^ 2 + (n : ℤ)).toNat

end

end A310802.P12899793022527722757

/-!
# A310804: Coordination sequence Gal.6.66.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310804, there is no canonical definition to state claims against.
-/

/-! ## A310804.P16859915889980707167

`A337475(A098614(n))+A320495(n)`
-/

namespace A310804.P16859915889980707167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337475 (A098614 n).toNat + A320495 n

end

end A310804.P16859915889980707167

/-! ## A310804.P3194155623676180388

`A315023(n)-A001221(A267596(n))`
-/

namespace A310804.P3194155623676180388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315023 n - A001221 (A267596 n).toNat

end

end A310804.P3194155623676180388

/-! ## A310804.P15988367061394886511

`A312483(n)-A001221(or(n, A327015(n)))`
-/

namespace A310804.P15988367061394886511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312483 n - A001221 (Int.lor (n : ℤ) (A327015 n)).toNat

end

end A310804.P15988367061394886511

/-! ## A310804.P3839810878503427192

`A250120(n)-A308967(A270339(2*n+1))`
-/

namespace A310804.P3839810878503427192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A308967 (A270339 (2 * n + 1)).toNat

end

end A310804.P3839810878503427192

/-! ## A310804.P9471896834266206108

`A354711(2*n+1)-A124760(A007716(n+1))`
-/

namespace A310804.P9471896834266206108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354711 (2 * n + 1) - A124760 (A007716 (n + 1)).toNat

end

end A310804.P9471896834266206108

/-!
# A310805: Coordination sequence Gal.5.25.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310805, there is no canonical definition to state claims against.
-/

/-! ## A310805.P16278103049919620760

`record[A002260(A350324(n+1))-9]`
-/

namespace A310805.P16278103049919620760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A350324 (n + 1)).toNat - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310805.P16278103049919620760

/-! ## A310805.P3500335578499223152

`A250120(n)-A048675(A074964(n+1))`
-/

namespace A310805.P3500335578499223152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A048675 (A074964 (n + 1)).toNat

end

end A310805.P3500335578499223152

/-! ## A310805.P5733188813575146302

`A255173(n+1)-A269175(A251706(2*(n+1)))`
-/

namespace A310805.P5733188813575146302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255173 (n + 1) - A269175 (A251706 (2 * (n + 1))).toNat

end

end A310805.P5733188813575146302

/-! ## A310805.P4107531753303261406

`A250120(n)-A064547(A000984(n))`
-/

namespace A310805.P4107531753303261406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A064547 (A000984 n).toNat

end

end A310805.P4107531753303261406

/-! ## A310805.P8003713198886138692

`A250120(n)-A001222(A332979(n))`
-/

namespace A310805.P8003713198886138692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001222 (A332979 n).toNat

end

end A310805.P8003713198886138692

/-!
# A310806: Coordination sequence Gal.3.31.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310806, there is no canonical definition to state claims against.
-/

/-! ## A310806.P10953430967829446392

`(A311140(n)+A310621(n))/2`
-/

namespace A310806.P10953430967829446392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311140 n + A310621 n : ℚ) / 2

end

end A310806.P10953430967829446392

/-! ## A310806.P17701587885086653694

`A004525(A311140(n)+A310621(n))`
-/

namespace A310806.P17701587885086653694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311140 n + A310621 n).toNat

end

end A310806.P17701587885086653694

/-! ## A310806.P3366362359785511655

`A030451(A311140(n)+A310621(n))`
-/

namespace A310806.P3366362359785511655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A311140 n + A310621 n).toNat

end

end A310806.P3366362359785511655

/-! ## A310806.P1592386790727366845

`A004524(A310621(n)+A311140(n)+1)`
-/

namespace A310806.P1592386790727366845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A310621 n + (A311140 n + 1)).toNat

end

end A310806.P1592386790727366845

/-! ## A310806.P3460301783869823646

`A111234(A311140(n)+A310621(n))-2`
-/

namespace A310806.P3460301783869823646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (A311140 n + A310621 n).toNat - 2

end

end A310806.P3460301783869823646

/-!
# A310807: Coordination sequence Gal.5.173.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310807, there is no canonical definition to state claims against.
-/

/-! ## A310807.P2818063037522428614

`A310814(n)-A010893(A023547(n+1))`
-/

namespace A310807.P2818063037522428614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310814 n - A010893 ((A023547 (n + 1)).toNat + 13)

end

end A310807.P2818063037522428614

/-! ## A310807.P1904831935855217203

`A310815(n)-A010893(A023547(n+1))`
-/

namespace A310807.P1904831935855217203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310815 n - A010893 ((A023547 (n + 1)).toNat + 13)

end

end A310807.P1904831935855217203

/-! ## A310807.P15508555493116477692

`A310806(n)+A025458(A004154(n))`
-/

namespace A310807.P15508555493116477692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310806 n + A025458 (A004154 n).toNat

end

end A310807.P15508555493116477692

/-! ## A310807.P8349420336039108913

`A310814(n)-A107652(A047749(n))`
-/

namespace A310807.P8349420336039108913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310814 n - A107652 (A047749 n).toNat

end

end A310807.P8349420336039108913

/-! ## A310807.P11212646012676944789

`A310815(n)-A107652(A047749(n))`
-/

namespace A310807.P11212646012676944789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310815 n - A107652 (A047749 n).toNat

end

end A310807.P11212646012676944789

/-!
# A310808: Coordination sequence Gal.5.182.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310808, there is no canonical definition to state claims against.
-/

/-! ## A310808.P5230766121809247212

`A310878(n)-A007814(A120588(n))`
-/

namespace A310808.P5230766121809247212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310878 n - A007814 (A120588 n).toNat

end

end A310808.P5230766121809247212

/-! ## A310808.P6115989578992537313

`A310809(n)-A185284(A310796(n))`
-/

namespace A310808.P6115989578992537313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310809 n - A185284 (A310796 n).toNat

end

end A310808.P6115989578992537313

/-! ## A310808.P5737075534123588777

`A310809(n)-A185284(A310799(n))`
-/

namespace A310808.P5737075534123588777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310809 n - A185284 (A310799 n).toNat

end

end A310808.P5737075534123588777

/-! ## A310808.P13356858077064974792

`A310809(n)-A185284(A156745(n+1))`
-/

namespace A310808.P13356858077064974792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310809 n - A185284 (A156745 (n + 1)).toNat

end

end A310808.P13356858077064974792

/-! ## A310808.P17684508057209490743

`A312715(n)-A001221(A006920(n+1))`
-/

namespace A310808.P17684508057209490743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312715 n - A001221 (A006920 (n + 1)).toNat

end

end A310808.P17684508057209490743

/-!
# A310809: Coordination sequence Gal.6.286.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310809, there is no canonical definition to state claims against.
-/

/-! ## A310809.P2727099629617589821

`A310808(n)+Δ[A182631(A126085(n+1))]`
-/

namespace A310809.P2727099629617589821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182631 (A126085 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310808 n + (f1 (n + 1) - f1 n)

end

end A310809.P2727099629617589821

/-! ## A310809.P790215834345689741

`A310808(n)+A185284(A310796(n))`
-/

namespace A310809.P790215834345689741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310808 n + A185284 (A310796 n).toNat

end

end A310809.P790215834345689741

/-! ## A310809.P1529823881395286461

`A310808(n)+A185284(A310799(n))`
-/

namespace A310809.P1529823881395286461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310808 n + A185284 (A310799 n).toNat

end

end A310809.P1529823881395286461

/-! ## A310809.P7688844230988982392

`A310885(n)-A083025(A007716(n))`
-/

namespace A310809.P7688844230988982392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310885 n - A083025 (A007716 n).toNat

end

end A310809.P7688844230988982392

/-! ## A310809.P18111291297521945063

`or(A059841(A228180(n)), A310808(n))`
-/

namespace A310809.P18111291297521945063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 (A228180 n).toNat) (A310808 n)

end

end A310809.P18111291297521945063

/-!
# A310810: Coordination sequence Gal.6.420.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310810, there is no canonical definition to state claims against.
-/

/-! ## A310810.P14705793068052475287

`A310905(n)-A189084(A004110(n))`
-/

namespace A310810.P14705793068052475287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310905 n - A189084 (A004110 n).toNat

end

end A310810.P14705793068052475287

/-! ## A310810.P3005755785737792843

`A310873(n)-A093692(A139199(n+1))`
-/

namespace A310810.P3005755785737792843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310873 n - A093692 (A139199 (n + 1)).toNat

end

end A310810.P3005755785737792843

/-! ## A310810.P14886604327958373515

`A072670(A029858(n+1))+A008574(n)-A001222(n+1)`
-/

namespace A310810.P14886604327958373515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A029858 (n + 1)).toNat + A008574 n - A001222 (n + 1)

end

end A310810.P14886604327958373515

/-! ## A310810.P13336637308611261925

`or(A190198(A190197(n+1)), A310872(n))-A093692(A139199(n+1))`
-/

namespace A310810.P13336637308611261925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A190198 (A190197 (n + 1)).toNat) (A310872 n) - A093692 (A139199 (n + 1)).toNat

end

end A310810.P13336637308611261925

/-!
# A310811: Coordination sequence Gal.5.161.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310811, there is no canonical definition to state claims against.
-/

/-! ## A310811.P8378835412458166292

`A310816(n)-A010893(A114192(n))`
-/

namespace A310811.P8378835412458166292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310816 n - A010893 ((A114192 n).toNat + 13)

end

end A310811.P8378835412458166292

/-! ## A310811.P7831185141654994271

`A308062(A050369(n+1))+A255059(2*n+1)`
-/

namespace A310811.P7831185141654994271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308062 (A050369 (n + 1)).toNat + A255059 (2 * n + 1)

end

end A310811.P7831185141654994271

/-! ## A310811.P4408629719998104126

`A310809(n)+A178798(n²)²`
-/

namespace A310811.P4408629719998104126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310809 n + A178798 (n ^ 2) ^ 2

end

end A310811.P4408629719998104126

/-! ## A310811.P13708053396322768594

`A310875(n)-A045634(A001733(n))`
-/

namespace A310811.P13708053396322768594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310875 n - A045634 (A001733 n).toNat

end

end A310811.P13708053396322768594

/-! ## A310811.P8119249586822285133

`A310875(n)-A066829(A366608(n))`
-/

namespace A310811.P8119249586822285133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310875 n - A066829 (A366608 n).toNat

end

end A310811.P8119249586822285133

/-!
# A310812: Coordination sequence Gal.6.181.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310812, there is no canonical definition to state claims against.
-/

/-! ## A310812.P10197929362233088264

`A310813(n)-A269250(A281874(n+3))`
-/

namespace A310812.P10197929362233088264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310813 n - A269250 (A281874 (n + 3)).toNat

end

end A310812.P10197929362233088264

/-! ## A310812.P4216115119392004236

`A193386(A127917(n+1))+n`
-/

namespace A310812.P4216115119392004236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193386 (A127917 (n + 1)).toNat + (n : ℤ)

end

end A310812.P4216115119392004236

/-! ## A310812.P3745573028940794182

`record[A310814(n)-A052403(n+1)]`
-/

namespace A310812.P3745573028940794182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310814 n - A052403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310812.P3745573028940794182

/-! ## A310812.P3461787003165624194

`record[A310815(n)-A052403(n+1)]`
-/

namespace A310812.P3461787003165624194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310815 n - A052403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310812.P3461787003165624194

/-! ## A310812.P5355415525650493083

`record[A310816(n)-A052403(n+1)]`
-/

namespace A310812.P5355415525650493083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310816 n - A052403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310812.P5355415525650493083

/-!
# A310813: Coordination sequence Gal.6.272.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310813, there is no canonical definition to state claims against.
-/

/-! ## A310813.P14032280163307084573

`A310816(n)-A124762(A242882(n))`
-/

namespace A310813.P14032280163307084573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310816 n - A124762 (A242882 n).toNat

end

end A310813.P14032280163307084573

/-! ## A310813.P11271791073573092515

`A310812(n)+A269250(A281874(n+3))`
-/

namespace A310813.P11271791073573092515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310812 n + A269250 (A281874 (n + 3)).toNat

end

end A310813.P11271791073573092515

/-! ## A310813.P4230420509785947483

`A315013(n)-A001221(A069008(n))`
-/

namespace A310813.P4230420509785947483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315013 n - A001221 (A069008 n).toNat

end

end A310813.P4230420509785947483

/-! ## A310813.P12618629566608430432

`A312317(n)-A008683(A242167(n))`
-/

namespace A310813.P12618629566608430432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A008683 (A242167 (n + 10)).toNat

end

end A310813.P12618629566608430432

/-! ## A310813.P7825814924815521799

`A315067(n)-A001222(A266668(n))`
-/

namespace A310813.P7825814924815521799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315067 n - A001222 (A266668 n).toNat

end

end A310813.P7825814924815521799

/-!
# A310814: Coordination sequence Gal.6.438.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310814, there is no canonical definition to state claims against.
-/

/-! ## A310814.P5632112230523580920

`and(A310815(n^A349703(n)), A310816(n))`
-/

namespace A310814.P5632112230523580920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A310815 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A349703 n : ℤ))).toNat) (A310816 n)

end

end A310814.P5632112230523580920

/-! ## A310814.P7536841241009863411

`A310815(n)-A278700(A265447(n+1))`
-/

namespace A310814.P7536841241009863411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310815 n - A278700 (A265447 (n + 1)).toNat

end

end A310814.P7536841241009863411

/-! ## A310814.P11262807050539000431

`A310815(A087051(n))`
-/

namespace A310814.P11262807050539000431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310815 (A087051 n).toNat

end

end A310814.P11262807050539000431

/-! ## A310814.P9009273273760306682

`A310815(A227549(n+1))`
-/

namespace A310814.P9009273273760306682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310815 (A227549 (n + 1)).toNat

end

end A310814.P9009273273760306682

/-! ## A310814.P224394380023925789

`A310815(A396204(n+1))`
-/

namespace A310814.P224394380023925789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310815 (A396204 (n + 1)).toNat

end

end A310814.P224394380023925789

/-!
# A310815: Coordination sequence Gal.6.165.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310815, there is no canonical definition to state claims against.
-/

/-! ## A310815.P11311464446260214922

`A310814(n)+A278700(A265447(n+1))`
-/

namespace A310815.P11311464446260214922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310814 n + A278700 (A265447 (n + 1)).toNat

end

end A310815.P11311464446260214922

/-!
# A310816: Coordination sequence Gal.6.394.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310816, there is no canonical definition to state claims against.
-/

/-! ## A310816.P11017840448741919136

`A318361(A139250(2*n+3))+A310811(n)`
-/

namespace A310816.P11017840448741919136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318361 (A139250 (2 * n + 3)).toNat + A310811 n

end

end A310816.P11017840448741919136

/-! ## A310816.P13707206091854150413

`A310814(n)+A067898(A133432(n+1))`
-/

namespace A310816.P13707206091854150413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310814 n + A067898 (A133432 (n + 1)).toNat

end

end A310816.P13707206091854150413

/-! ## A310816.P4346523390460347358

`A310811(n)+A010893(A114192(n))`
-/

namespace A310816.P4346523390460347358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310811 n + A010893 ((A114192 n).toNat + 13)

end

end A310816.P4346523390460347358

/-! ## A310816.P14583279553458689667

`A340988(A004680(n+1))+A310814(n)`
-/

namespace A310816.P14583279553458689667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A004680 (n + 1)).toNat + 91) + A310814 n

end

end A310816.P14583279553458689667

/-! ## A310816.P17528290547740412792

`A310807(n)+A240122(A098361(n))`
-/

namespace A310816.P17528290547740412792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310807 n + A240122 (A098361 n).toNat

end

end A310816.P17528290547740412792

/-!
# A310817: Coordination sequence Gal.6.504.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310817, there is no canonical definition to state claims against.
-/

/-! ## A310817.P16160681955982486905

`record[A312160(n)-A101707(n)]`
-/

namespace A310817.P16160681955982486905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n - A101707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310817.P16160681955982486905

/-! ## A310817.P12655441954155727161

`A311928(n)+A057078(A191700(n))`
-/

namespace A310817.P12655441954155727161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311928 n + A057078 (A191700 n).toNat

end

end A310817.P12655441954155727161

/-! ## A310817.P17046854781524106531

`A312561(n)-A001222(A004211(n))`
-/

namespace A310817.P17046854781524106531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n - A001222 (A004211 n).toNat

end

end A310817.P17046854781524106531

/-! ## A310817.P5547172969743591689

`A312555(n)-A104638(A351880(n))`
-/

namespace A310817.P5547172969743591689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312555 n - A104638 (A351880 n).toNat

end

end A310817.P5547172969743591689

/-! ## A310817.P8930018620879357739

`A084616(3*n+1)+A035531(A015448(n))`
-/

namespace A310817.P8930018620879357739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084616 (3 * n + 1) + A035531 (A015448 n).toNat

end

end A310817.P8930018620879357739

/-!
# A310818: Coordination sequence Gal.6.60.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310818, there is no canonical definition to state claims against.
-/

/-! ## A310818.P3223676864840146483

`record[A173978(n+1)-A300450(n+1)]`
-/

namespace A310818.P3223676864840146483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173978 (n + 1) - A300450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310818.P3223676864840146483

/-! ## A310818.P13501075544108187056

`A140595(A311347(n))-A029119(n)`
-/

namespace A310818.P13501075544108187056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140595 (A311347 n).toNat - A029119 n

end

end A310818.P13501075544108187056

/-! ## A310818.P3710344183562158857

`A202822(n+1)+A104488(A120031(n))`
-/

namespace A310818.P3710344183562158857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1) + A104488 (A120031 n).toNat

end

end A310818.P3710344183562158857

/-! ## A310818.P13184352176357998521

`A202822(n+1)+A118174(A254686(n))`
-/

namespace A310818.P13184352176357998521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1) + A118174 (A254686 n).toNat

end

end A310818.P13184352176357998521

/-! ## A310818.P8486390736491641769

`A314548(n)-A069010(A014301(n+1))`
-/

namespace A310818.P8486390736491641769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314548 n - A069010 (A014301 (n + 1)).toNat

end

end A310818.P8486390736491641769

/-!
# A310819: Coordination sequence Gal.5.233.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310819, there is no canonical definition to state claims against.
-/

/-! ## A310819.P13896274643678320568

`A312104(n)-A102669(A001835(n))`
-/

namespace A310819.P13896274643678320568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312104 n - A102669 (A001835 n).toNat

end

end A310819.P13896274643678320568

/-! ## A310819.P14408888149506360711

`A311856(n)-A289174(A056403(n+1))`
-/

namespace A310819.P14408888149506360711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311856 n - A289174 (A056403 (n + 1)).toNat

end

end A310819.P14408888149506360711

/-! ## A310819.P10863050398323006968

`A112604(A003604(n))+A004273(2*n)`
-/

namespace A310819.P10863050398323006968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112604 (A003604 n).toNat + A004273 (2 * n)

end

end A310819.P10863050398323006968

/-! ## A310819.P16492434115620740978

`A319451(n)+A319420(A319411(3*n+5))`
-/

namespace A310819.P16492434115620740978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319451 n + A319420 (A319411 (3 * n + 5)).toNat

end

end A310819.P16492434115620740978

/-! ## A310819.P10765041617610723220

`A312100(n)-A001222(A208226(n))-A330025((10^n)%(n+1))`
-/

namespace A310819.P10765041617610723220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n - A001222 (A208226 n).toNat - A330025 (10 ^ n % (n + 1))

end

end A310819.P10765041617610723220

/-!
# A310820: Coordination sequence Gal.6.505.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310820, there is no canonical definition to state claims against.
-/

/-! ## A310820.P9808787377708990146

`A008579(n)-A286129(A088218(n))`
-/

namespace A310820.P9808787377708990146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A286129 (A088218 n).toNat

end

end A310820.P9808787377708990146

/-!
# A310821: Coordination sequence Gal.6.24.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310821, there is no canonical definition to state claims against.
-/

/-! ## A310821.P3837143803716134180

`A311213(n)+A013595(A337283(n))`
-/

namespace A310821.P3837143803716134180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311213 n + A013595 (A337283 n).toNat

end

end A310821.P3837143803716134180

/-! ## A310821.P14568861816647448215

`A311214(n)+A013595(A337283(n))`
-/

namespace A310821.P14568861816647448215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311214 n + A013595 (A337283 n).toNat

end

end A310821.P14568861816647448215

/-! ## A310821.P16329141319069505228

`A310752(n)+A087117(A276123(n))`
-/

namespace A310821.P16329141319069505228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310752 n + A087117 (A276123 n).toNat

end

end A310821.P16329141319069505228

/-! ## A310821.P2319069922215450599

`A301676(n)+A295304(A165960(n))`
-/

namespace A310821.P2319069922215450599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A295304 (A165960 n).toNat

end

end A310821.P2319069922215450599

/-! ## A310821.P12332113350421869434

`A311867(n)-A055029(A000244(n))`
-/

namespace A310821.P12332113350421869434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311867 n - A055029 (A000244 n).toNat

end

end A310821.P12332113350421869434

/-!
# A310823: Coordination sequence Gal.6.511.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310823, there is no canonical definition to state claims against.
-/

/-! ## A310823.P4490185336761812941

`A085516(A315052(n)-A000720(n+1))`
-/

namespace A310823.P4490185336761812941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A315052 n - A000720 (n + 1)).toNat

end

end A310823.P4490185336761812941

/-!
# A310824: Coordination sequence Gal.6.54.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310824, there is no canonical definition to state claims against.
-/

/-! ## A310824.P17779732359741448396

`A250120(n)-A001221(A116773(n+1))`
-/

namespace A310824.P17779732359741448396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A116773 (n + 1)).toNat

end

end A310824.P17779732359741448396

/-! ## A310824.P16527942748688311275

`A250120(n)-A001221(A116801(n+1))`
-/

namespace A310824.P16527942748688311275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A116801 (n + 1)).toNat

end

end A310824.P16527942748688311275

/-! ## A310824.P3786278784718173981

`A072154(2*n)-A001221(A116801(n+1))`
-/

namespace A310824.P3786278784718173981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A001221 (A116801 (n + 1)).toNat

end

end A310824.P3786278784718173981

/-! ## A310824.P14899353052215077553

`record[A072154(n)/(-1)^n]-A001221(A116801(n+1))`
-/

namespace A310824.P14899353052215077553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072154 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A001221 (A116801 (n + 1)).toNat : ℚ)

end

end A310824.P14899353052215077553

/-! ## A310824.P7366638889607838104

`A047486(A008486(n)+1)-A001221(A116801(n+1))`
-/

namespace A310824.P7366638889607838104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008486 n + 1).toNat - A001221 (A116801 (n + 1)).toNat

end

end A310824.P7366638889607838104

/-!
# A310826: Coordination sequence Gal.6.288.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310826, there is no canonical definition to state claims against.
-/

/-! ## A310826.P5469424109991285336

`A310847(n)-A330025(A005978(n+1))`
-/

namespace A310826.P5469424109991285336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310847 n - A330025 (A005978 (n + 1)).toNat

end

end A310826.P5469424109991285336

/-! ## A310826.P16573715535056783091

`A310837(n)-A225099(A310837(2*n+1))`
-/

namespace A310826.P16573715535056783091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310837 n - A225099 (A310837 (2 * n + 1)).toNat

end

end A310826.P16573715535056783091

/-! ## A310826.P10205744110376035902

`A047999(3*n)+A310836(n)^A154638(A269250(n))-1`
-/

namespace A310826.P10205744110376035902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047999 (3 * n) : ℚ) + ((A310836 n : ℚ) ^ (A154638 (A269250 n).toNat : ℤ) - 1)

end

end A310826.P10205744110376035902

/-! ## A310826.P2518509594484498707

`A296910(n)+A010051(A042427(n))`
-/

namespace A310826.P2518509594484498707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + A010051 (A042427 n).toNat

end

end A310826.P2518509594484498707

/-! ## A310826.P10019354664564354738

`A296910(n)+A061007(A072266(n))`
-/

namespace A310826.P10019354664564354738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + A061007 (A072266 n).toNat

end

end A310826.P10019354664564354738

/-!
# A310828: Coordination sequence Gal.5.121.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310828, there is no canonical definition to state claims against.
-/

/-! ## A310828.P16545340963661074499

`A314529(n)-A001221(A175934(n))`
-/

namespace A310828.P16545340963661074499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314529 n - A001221 (A175934 n).toNat

end

end A310828.P16545340963661074499

/-! ## A310828.P14584258801517331477

`A310838(n)-A064911(A127883(n+1))`
-/

namespace A310828.P14584258801517331477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310838 n - A064911 (A127883 (n + 1)).toNat

end

end A310828.P14584258801517331477

/-! ## A310828.P7657339397424110034

`A312233(n)-A358775(A107242(n+2))`
-/

namespace A310828.P7657339397424110034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312233 n - A358775 (A107242 (n + 2)).toNat

end

end A310828.P7657339397424110034

/-! ## A310828.P3020907328232818254

`A310838(n)-A016389(A310844(3*n+4))`
-/

namespace A310828.P3020907328232818254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310838 n - A016389 (A310844 (3 * n + 4)).toNat

end

end A310828.P3020907328232818254

/-!
# A310829: Coordination sequence Gal.6.26.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310829, there is no canonical definition to state claims against.
-/

/-! ## A310829.P14130460020272718330

`A047524(n+1)-A001222(A102980(2*(n+2)))`
-/

namespace A310829.P14130460020272718330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047524 (n + 1) - A001222 (A102980 (2 * (n + 2))).toNat

end

end A310829.P14130460020272718330

/-! ## A310829.P76035123480269821

`lt[A302242(2*n+3)², A275024(3*(n+1))]`
-/

namespace A310829.P76035123480269821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (2 * n + 3) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310829.P76035123480269821

/-! ## A310829.P15690776901324530048

`A275852(2*n+1)-A275849(A275863(n+1))`
-/

namespace A310829.P15690776901324530048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275852 (2 * n + 1) - A275849 (A275863 (n + 1)).toNat

end

end A310829.P15690776901324530048

/-! ## A310829.P12786698314167681317

`eq[A237591(A027746(n+1)), A355735(2*n+3)]`
-/

namespace A310829.P12786698314167681317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (A027746 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355735 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310829.P12786698314167681317

/-! ## A310829.P6052260360890685367

`A344572(2*n+3)-A344590(A059966(2*(n+2)))`
-/

namespace A310829.P6052260360890685367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344572 (2 * n + 3) - A344590 (A059966 (2 * (n + 2))).toNat

end

end A310829.P6052260360890685367

/-!
# A310830: Coordination sequence Gal.6.183.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310830, there is no canonical definition to state claims against.
-/

/-! ## A310830.P4713847815646040305

`A310834(n)-A359474(record[A127613(n+1)])`
-/

namespace A310830.P4713847815646040305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310834 n - A359474 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A310830.P4713847815646040305

/-! ## A310830.P3570298546982543812

`A111660(A312475(n)+A296910(n))`
-/

namespace A310830.P3570298546982543812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A312475 n + A296910 n).toNat

end

end A310830.P3570298546982543812

/-! ## A310830.P8428794720505050571

`A310834(n)-A011731(A154956(n))`
-/

namespace A310830.P8428794720505050571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310834 n - A011731 (A154956 n).toNat

end

end A310830.P8428794720505050571

/-! ## A310830.P8658693926713086350

`A310835(n)-A011731(A154956(n))`
-/

namespace A310830.P8658693926713086350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310835 n - A011731 (A154956 n).toNat

end

end A310830.P8658693926713086350

/-! ## A310830.P9519427789724704470

`A312278(n)-A124761(A071062(n+1))`
-/

namespace A310830.P9519427789724704470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312278 n - A124761 (A071062 (n + 1)).toNat

end

end A310830.P9519427789724704470

/-!
# A310831: Coordination sequence Gal.5.78.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310831, there is no canonical definition to state claims against.
-/

/-! ## A310831.P3048056416798057261

`eq[A001221(3*n+1)², A104610(3*n+1)]`
-/

namespace A310831.P3048056416798057261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104610 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310831.P3048056416798057261

/-! ## A310831.P12285161044451017377

`A320495(n)+A001221(A358609(n))`
-/

namespace A310831.P12285161044451017377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320495 n + A001221 (A358609 n).toNat

end

end A310831.P12285161044451017377

/-! ## A310831.P13133363184248759488

`A310841(n)-A118135(A036592(n+1))`
-/

namespace A310831.P13133363184248759488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310841 n - A118135 (A036592 (n + 1)).toNat

end

end A310831.P13133363184248759488

/-! ## A310831.P11007159823954756836

`A310843(n)-A276791(A000111(n+1))`
-/

namespace A310831.P11007159823954756836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 n - A276791 (A000111 (n + 1)).toNat

end

end A310831.P11007159823954756836

/-!
# A310832: Coordination sequence Gal.6.529.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310832, there is no canonical definition to state claims against.
-/

/-! ## A310832.P11737374605302066583

`A310833(n)-A001842(A293025(n))`
-/

namespace A310832.P11737374605302066583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310833 n - A001842 (A293025 n).toNat

end

end A310832.P11737374605302066583

/-! ## A310832.P5115473081119431503

`A310833(n)-A102683(A154383(n))`
-/

namespace A310832.P5115473081119431503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310833 n - A102683 (A154383 n).toNat

end

end A310832.P5115473081119431503

/-! ## A310832.P18337405699301968499

`A310833(n)-A025469(A109975(n))`
-/

namespace A310832.P18337405699301968499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310833 n - A025469 (A109975 n).toNat

end

end A310832.P18337405699301968499

/-! ## A310832.P12404580622985479164

`A310833(n)-A014184(A232230(n))`
-/

namespace A310832.P12404580622985479164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310833 n - A014184 (A232230 n).toNat

end

end A310832.P12404580622985479164

/-! ## A310832.P10049847993576488946

`A310833(A062399(n))`
-/

namespace A310832.P10049847993576488946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310833 (A062399 n).toNat

end

end A310832.P10049847993576488946

/-!
# A310833: Coordination sequence Gal.6.402.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310833, there is no canonical definition to state claims against.
-/

/-! ## A310833.P5341852234348831643

`A310832(n)+A102683(A154383(n))`
-/

namespace A310833.P5341852234348831643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310832 n + A102683 (A154383 n).toNat

end

end A310833.P5341852234348831643

/-! ## A310833.P8485193275810105252

`A310832(n)+A025469(A109975(n))`
-/

namespace A310833.P8485193275810105252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310832 n + A025469 (A109975 n).toNat

end

end A310833.P8485193275810105252

/-!
# A310834: Coordination sequence Gal.5.238.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310834, there is no canonical definition to state claims against.
-/

/-! ## A310834.P10027683932113581925

`A310836(n)-A025469(A000105(n))`
-/

namespace A310834.P10027683932113581925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310836 n - A025469 (A000105 n).toNat

end

end A310834.P10027683932113581925

/-! ## A310834.P14636321849109788979

`A310835(n)-A025465(A173610(n))`
-/

namespace A310834.P14636321849109788979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310835 n - A025465 (A173610 n).toNat

end

end A310834.P14636321849109788979

/-! ## A310834.P11919504342167855543

`A310836(n)-A011731(A274054(n))`
-/

namespace A310834.P11919504342167855543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310836 n - A011731 (A274054 n).toNat

end

end A310834.P11919504342167855543

/-! ## A310834.P9283635444364756089

`A310835(n)-A037911(A037926(n)²)`
-/

namespace A310834.P9283635444364756089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310835 n - A037911 (A037926 n ^ 2).toNat

end

end A310834.P9283635444364756089

/-! ## A310834.P2357851873554792485

`A310836(n)-A037911(A037926(n)²)`
-/

namespace A310834.P2357851873554792485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310836 n - A037911 (A037926 n ^ 2).toNat

end

end A310834.P2357851873554792485

/-!
# A310835: Coordination sequence Gal.5.162.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310835, there is no canonical definition to state claims against.
-/

/-! ## A310835.P6426621818884324375

`A310836(n)-A025469(A000996(n))`
-/

namespace A310835.P6426621818884324375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310836 n - A025469 (A000996 n).toNat

end

end A310835.P6426621818884324375

/-! ## A310835.P6319299509674430047

`A310836(n)-A037911(A037926(n))`
-/

namespace A310835.P6319299509674430047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310836 n - A037911 (A037926 n).toNat

end

end A310835.P6319299509674430047

/-! ## A310835.P13016430217082594368

`A310836(n)+A000007(A006356(n))`
-/

namespace A310835.P13016430217082594368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310836 n + A000007 (A006356 n).toNat

end

end A310835.P13016430217082594368

/-! ## A310835.P15604780269016111127

`A310836(A062399(n))`
-/

namespace A310835.P15604780269016111127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310836 (A062399 n).toNat

end

end A310835.P15604780269016111127

/-! ## A310835.P5515058866877329786

`A310836(A120126(n))`
-/

namespace A310835.P5515058866877329786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310836 (A120126 n).toNat

end

end A310835.P5515058866877329786

/-!
# A310836: Coordination sequence Gal.6.274.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310836, there is no canonical definition to state claims against.
-/

/-! ## A310836.P8042180134513599022

`A310835(n)+A037911(A037926(n))`
-/

namespace A310836.P8042180134513599022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310835 n + A037911 (A037926 n).toNat

end

end A310836.P8042180134513599022

/-! ## A310836.P7799546898874357748

`A310835(n)+A102683(A035040(n))`
-/

namespace A310836.P7799546898874357748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310835 n + A102683 (A035040 n).toNat

end

end A310836.P7799546898874357748

/-! ## A310836.P13653968630859702069

`A310837(n)-A055641(A002531(n))`
-/

namespace A310836.P13653968630859702069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310837 n - A055641 (A002531 n).toNat

end

end A310836.P13653968630859702069

/-! ## A310836.P1475323513264758920

`A310837(A130403(∑[n]))`
-/

namespace A310836.P1475323513264758920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310837 (A130403 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A310836.P1475323513264758920

/-! ## A310836.P4574547006182819938

`A310837(n)%A124165(n+4)`
-/

namespace A310836.P4574547006182819938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310837 n) (A124165 (n + 4))

end

end A310836.P4574547006182819938

/-!
# A310837: Coordination sequence Gal.6.167.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310837, there is no canonical definition to state claims against.
-/

/-! ## A310837.P15500827763631305598

`A310836(n)+A017909(A187829(n+1))`
-/

namespace A310837.P15500827763631305598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310836 n + A017909 (A187829 (n + 1)).toNat

end

end A310837.P15500827763631305598

/-!
# A310838: Coordination sequence Gal.6.242.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310838, there is no canonical definition to state claims against.
-/

/-! ## A310838.P4153382813031729245

`A312236(n)-A010051(A037278(n+1))`
-/

namespace A310838.P4153382813031729245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312236 n - A010051 (A037278 (n + 1)).toNat

end

end A310838.P4153382813031729245

/-! ## A310838.P7170966264656874728

`A310843(n)-A055641(3*n*2^(n-1)+1)-char[6]`
-/

namespace A310838.P7170966264656874728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 n - A055641 (SequenceMachineLib.roundAway (3 * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A310838.P7170966264656874728

/-! ## A310838.P18222675971113914490

`A310841(n)-A024316(A000108(n))`
-/

namespace A310838.P18222675971113914490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310841 n - A024316 (A000108 n).toNat

end

end A310838.P18222675971113914490

/-! ## A310838.P13454984623021999379

`A310841(n)-A118135(A036592(n))`
-/

namespace A310838.P13454984623021999379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310841 n - A118135 (A036592 n).toNat

end

end A310838.P13454984623021999379

/-! ## A310838.P5682757287142248317

`A310843(n)-A276791(A000111(n))`
-/

namespace A310838.P5682757287142248317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 n - A276791 (A000111 n).toNat

end

end A310838.P5682757287142248317

/-!
# A310839: Coordination sequence Gal.6.146.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310839, there is no canonical definition to state claims against.
-/

/-! ## A310839.P11096277522590557268

`A310842(n)-A284388(A001519(n))`
-/

namespace A310839.P11096277522590557268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310842 n - A284388 (A001519 n).toNat

end

end A310839.P11096277522590557268

/-! ## A310839.P14651933497202760714

`A310844(n)-A340988(A310837(2*(n+2)))`
-/

namespace A310839.P14651933497202760714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310844 n - A340988 ((A310837 (2 * (n + 2))).toNat + 91)

end

end A310839.P14651933497202760714

/-! ## A310839.P6187424620744118221

`A310841(n)-A185284(A310868(n))`
-/

namespace A310839.P6187424620744118221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310841 n - A185284 (A310868 n).toNat

end

end A310839.P6187424620744118221

/-! ## A310839.P5984382401676028946

`A312236(n)-A342910(A106518(2*(n+1)))`
-/

namespace A310839.P5984382401676028946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312236 n - A342910 (A106518 (2 * (n + 1))).toNat

end

end A310839.P5984382401676028946

/-!
# A310840: Coordination sequence Gal.4.117.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310840, there is no canonical definition to state claims against.
-/

/-! ## A310840.P2371477312540810660

`A310842(n)-A055641(A005773(n))`
-/

namespace A310840.P2371477312540810660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310842 n - A055641 (A005773 n).toNat

end

end A310840.P2371477312540810660

/-! ## A310840.P7144179993564183769

`A310843(n)-A055641(A005773(n))`
-/

namespace A310840.P7144179993564183769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 n - A055641 (A005773 n).toNat

end

end A310840.P7144179993564183769

/-! ## A310840.P17911445255325718353

`A310844(n)-A055641(A005773(n))`
-/

namespace A310840.P17911445255325718353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310844 n - A055641 (A005773 n).toNat

end

end A310840.P17911445255325718353

/-! ## A310840.P9514637580669729012

`A310845(n)-A055641(A005773(n))`
-/

namespace A310840.P9514637580669729012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310845 n - A055641 (A005773 n).toNat

end

end A310840.P9514637580669729012

/-! ## A310840.P10536665161210623820

`A310843(n)-A079365(A159288(n))`
-/

namespace A310840.P10536665161210623820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 n - A079365 (A159288 n).toNat

end

end A310840.P10536665161210623820

/-!
# A310841: Coordination sequence Gal.4.86.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310841, there is no canonical definition to state claims against.
-/

/-! ## A310841.P17732500130959913043

`A310842(n)-A072401(A000105(n))`
-/

namespace A310841.P17732500130959913043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310842 n - A072401 (A000105 n).toNat

end

end A310841.P17732500130959913043

/-! ## A310841.P10864287602297973114

`A310843(n)-A072401(A000105(n))`
-/

namespace A310841.P10864287602297973114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 n - A072401 (A000105 n).toNat

end

end A310841.P10864287602297973114

/-! ## A310841.P9306559150056773190

`A310844(n)-A072401(A000105(n))`
-/

namespace A310841.P9306559150056773190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310844 n - A072401 (A000105 n).toNat

end

end A310841.P9306559150056773190

/-! ## A310841.P13836892725144478287

`A310842(A062399(n))-A033665(n)`
-/

namespace A310841.P13836892725144478287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310842 (A062399 n).toNat - A033665 n

end

end A310841.P13836892725144478287

/-! ## A310841.P14438966603343463470

`A310843(n)-A033665(A062399(n))`
-/

namespace A310841.P14438966603343463470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 n - A033665 (A062399 n).toNat

end

end A310841.P14438966603343463470

/-!
# A310842: Coordination sequence Gal.6.139.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310842, there is no canonical definition to state claims against.
-/

/-! ## A310842.P5768468392453986270

`A310843(A181940(∑[n]))`
-/

namespace A310842.P5768468392453986270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 (A181940 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A310842.P5768468392453986270

/-! ## A310842.P11709689954520724477

`record[A310843(A181940(n))]`
-/

namespace A310842.P11709689954520724477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 (A181940 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310842.P11709689954520724477

/-! ## A310842.P9100283302249571847

`A310843(A077168(n)-1)`
-/

namespace A310842.P9100283302249571847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 (A077168 n - 1).toNat

end

end A310842.P9100283302249571847

/-! ## A310842.P17495495397889981709

`A310843(n)%A124165(n+4)`
-/

namespace A310842.P17495495397889981709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310843 n) (A124165 (n + 4))

end

end A310842.P17495495397889981709

/-! ## A310842.P15814632526990442575

`A310843(n)+A000007(A140504(n))`
-/

namespace A310842.P15814632526990442575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 n + A000007 (A140504 n).toNat

end

end A310842.P15814632526990442575

/-!
# A310845: Coordination sequence Gal.5.118.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310845, there is no canonical definition to state claims against.
-/

/-! ## A310845.P3411561342353837406

`A310843(n)+A025465(A126646(n))`
-/

namespace A310845.P3411561342353837406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 n + A025465 (A126646 n).toNat

end

end A310845.P3411561342353837406

/-! ## A310845.P1473509090135261249

`A310843(n)+A217096(A124390(n))`
-/

namespace A310845.P1473509090135261249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 n + A217096 (A124390 n).toNat

end

end A310845.P1473509090135261249

/-! ## A310845.P13061716125808936516

`A310857(n)-A328979(A130781(n))`
-/

namespace A310845.P13061716125808936516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310857 n - A328979 (A130781 n).toNat

end

end A310845.P13061716125808936516

/-! ## A310845.P7133958390145004487

`A310843(A077168(n)-1)+char[A059404(n+1)]`
-/

namespace A310845.P7133958390145004487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 (A077168 n - 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A310845.P7133958390145004487

/-! ## A310845.P6771731468165710757

`A310843(A077168(n)-1)+char[A255411(2*(n+1))]`
-/

namespace A310845.P6771731468165710757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 (A077168 n - 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A310845.P6771731468165710757

/-!
# A310846: Coordination sequence Gal.6.519.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310846, there is no canonical definition to state claims against.
-/

/-! ## A310846.P18224107301657317158

`A312299(n)-A189632(A003946(n))`
-/

namespace A310846.P18224107301657317158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312299 n - A189632 (A003946 n).toNat

end

end A310846.P18224107301657317158

/-! ## A310846.P4825415272974562187

`A310833(n)+A096936(A014095(n+4))`
-/

namespace A310846.P4825415272974562187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310833 n + A096936 (A014095 (n + 4)).toNat

end

end A310846.P4825415272974562187

/-! ## A310846.P13323198446174484920

`A065514(n+1)+A056239(A017912(3*n))`
-/

namespace A310846.P13323198446174484920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065514 (n + 1) + A056239 (A017912 (3 * n)).toNat

end

end A310846.P13323198446174484920

/-!
# A310847: Coordination sequence Gal.6.286.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310847, there is no canonical definition to state claims against.
-/

/-! ## A310847.P5083995675968208784

`A310867(n)-A073490(A003480(n))`
-/

namespace A310847.P5083995675968208784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310867 n - A073490 (A003480 n).toNat

end

end A310847.P5083995675968208784

/-! ## A310847.P6777626298098257440

`A310866(n)-A104714(A241458(n+1))`
-/

namespace A310847.P6777626298098257440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310866 n - A104714 (A241458 (n + 1)).toNat

end

end A310847.P6777626298098257440

/-! ## A310847.P7691804730550460563

`or(A285427(A211941(n+1)), A310607(n))`
-/

namespace A310847.P7691804730550460563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285427 (A211941 (n + 1)).toNat) (A310607 n)

end

end A310847.P7691804730550460563

/-!
# A310848: Coordination sequence Gal.6.289.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310848, there is no canonical definition to state claims against.
-/

/-! ## A310848.P2164792790057777733

`A310878(n)-A325135(A141081(n))`
-/

namespace A310848.P2164792790057777733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310878 n - A325135 (A141081 n).toNat

end

end A310848.P2164792790057777733

/-! ## A310848.P17794138925379454735

`A310881(n)-A325135(A141081(n))`
-/

namespace A310848.P17794138925379454735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310881 n - A325135 (A141081 n).toNat

end

end A310848.P17794138925379454735

/-! ## A310848.P4469961612936024257

`A310882(n)-A325135(A141081(n))`
-/

namespace A310848.P4469961612936024257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n - A325135 (A141081 n).toNat

end

end A310848.P4469961612936024257

/-!
# A310849: Coordination sequence Gal.4.70.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310849, there is no canonical definition to state claims against.
-/

/-! ## A310849.P5190163050466685795

`A310850(n)-A037913(A042262(n))`
-/

namespace A310849.P5190163050466685795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310850 n - A037913 (A042262 n).toNat

end

end A310849.P5190163050466685795

/-! ## A310849.P12682501498567844324

`A310850(n)-A055641(A218956(n))`
-/

namespace A310849.P12682501498567844324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310850 n - A055641 (A218956 n).toNat

end

end A310849.P12682501498567844324

/-! ## A310849.P17096924976318931110

`A310850(n)-A321013(A000110(n))`
-/

namespace A310849.P17096924976318931110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310850 n - A321013 (A000110 n).toNat

end

end A310849.P17096924976318931110

/-! ## A310849.P17483981602117138867

`A310867(n)-A193238(A149173(n))`
-/

namespace A310849.P17483981602117138867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310867 n - A193238 (A149173 n).toNat

end

end A310849.P17483981602117138867

/-! ## A310849.P7059066124258181185

`A310850(n)-(A070109(A001349(n))+A070102(n+1))`
-/

namespace A310849.P7059066124258181185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310850 n - (A070109 (A001349 n).toNat + A070102 (n + 1))

end

end A310849.P7059066124258181185

/-!
# A310850: Coordination sequence Gal.6.287.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310850, there is no canonical definition to state claims against.
-/

/-! ## A310850.P15747240310605112256

`A310611(n)+A079260(A093129(n))`
-/

namespace A310850.P15747240310605112256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310611 n + A079260 (A093129 n).toNat

end

end A310850.P15747240310605112256

/-! ## A310850.P17896076411635347303

`A310835(n)+A236109(A001595(n))`
-/

namespace A310850.P17896076411635347303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310835 n + A236109 (A001595 n).toNat

end

end A310850.P17896076411635347303

/-! ## A310850.P2355308001284113775

`A310849(n)+A055641(A218956(n))`
-/

namespace A310850.P2355308001284113775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310849 n + A055641 (A218956 n).toNat

end

end A310850.P2355308001284113775

/-! ## A310850.P15330153835414677879

`A310871(n)-A193238(A149173(n))`
-/

namespace A310850.P15330153835414677879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310871 n - A193238 (A149173 n).toNat

end

end A310850.P15330153835414677879

/-! ## A310850.P3361209529813518384

`or(A010051(A295533(n)), A310611(n))`
-/

namespace A310850.P3361209529813518384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A295533 n).toNat) (A310611 n)

end

end A310850.P3361209529813518384

/-!
# A310851: Coordination sequence Gal.6.304.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310851, there is no canonical definition to state claims against.
-/

/-! ## A310851.P15399153335179718578

`A310879(n)-A277031(A126324(n))`
-/

namespace A310851.P15399153335179718578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310879 n - A277031 (A126324 n).toNat

end

end A310851.P15399153335179718578

/-! ## A310851.P5431738190794059971

`A310880(n)-A277031(A126324(n))`
-/

namespace A310851.P5431738190794059971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310880 n - A277031 (A126324 n).toNat

end

end A310851.P5431738190794059971

/-! ## A310851.P14057615574088465970

`A310881(n)-A277031(A126324(n))`
-/

namespace A310851.P14057615574088465970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310881 n - A277031 (A126324 n).toNat

end

end A310851.P14057615574088465970

/-!
# A310852: Coordination sequence Gal.6.431.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310852, there is no canonical definition to state claims against.
-/

/-! ## A310852.P12591444769270294615

`A337176(A146383(n+1))+A310836(n)`
-/

namespace A310852.P12591444769270294615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337176 (A146383 (n + 1)).toNat + A310836 n

end

end A310852.P12591444769270294615

/-! ## A310852.P12697389309526806608

`A325194(A325603(n+1))+A310851(n)`
-/

namespace A310852.P12697389309526806608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325194 (A325603 (n + 1)).toNat + A310851 n

end

end A310852.P12697389309526806608

/-! ## A310852.P18223894499323881913

`A344771(3*n+1)+A001414(A081294(n))`
-/

namespace A310852.P18223894499323881913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344771 (3 * n + 1) + A001414 (A081294 n).toNat

end

end A310852.P18223894499323881913

/-!
# A310853: Coordination sequence Gal.6.72.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310853, there is no canonical definition to state claims against.
-/

/-! ## A310853.P8243705053065107214

`∑[dr(A130517(A003946(n)))]`
-/

namespace A310853.P8243705053065107214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A130517 (A003946 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310853.P8243705053065107214

/-! ## A310853.P14657036341083533567

`∑[dr(A130517(A166328(n)))]`
-/

namespace A310853.P14657036341083533567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A130517 (A166328 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310853.P14657036341083533567

/-! ## A310853.P14036411920711668434

`∑[dr(A130517(A169449(n)))]`
-/

namespace A310853.P14036411920711668434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A130517 (A169449 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310853.P14036411920711668434

/-! ## A310853.P4355579192072313955

`A250120(n)-A007814(A125248(n+1))`
-/

namespace A310853.P4355579192072313955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A007814 (A125248 (n + 1)).toNat

end

end A310853.P4355579192072313955

/-! ## A310853.P5372349262018183416

`A057976(n)+A001222(A155435(n+4))`
-/

namespace A310853.P5372349262018183416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057976 n + A001222 (A155435 (n + 4)).toNat

end

end A310853.P5372349262018183416

/-!
# A310854: Coordination sequence Gal.6.61.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310854, there is no canonical definition to state claims against.
-/

/-! ## A310854.P12098656419091742899

`A312302(n)-A010060(A209117(n+1))`
-/

namespace A310854.P12098656419091742899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312302 n - A010060 (A209117 (n + 1)).toNat

end

end A310854.P12098656419091742899

/-! ## A310854.P16258221389853088536

`or(A001222(A010750(2*n)), A250122(2*n))-A057354(n+1)`
-/

namespace A310854.P16258221389853088536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A010750 (2 * n)).toNat) (A250122 (2 * n)) - A057354 (n + 1)

end

end A310854.P16258221389853088536

/-!
# A310855: Coordination sequence Gal.6.181.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310855, there is no canonical definition to state claims against.
-/

/-! ## A310855.P8625785400434822815

`A310884(n)-A339170(A045918(n))`
-/

namespace A310855.P8625785400434822815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310884 n - A339170 (A045918 n).toNat

end

end A310855.P8625785400434822815

/-! ## A310855.P7711023695108586105

`A310884(n)-A339170(A239125(n))`
-/

namespace A310855.P7711023695108586105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310884 n - A339170 (A239125 n).toNat

end

end A310855.P7711023695108586105

/-!
# A310856: Coordination sequence Gal.6.516.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310856, there is no canonical definition to state claims against.
-/

/-! ## A310856.P2420450898062052547

`A310837(n)+A055641(A162584(n))`
-/

namespace A310856.P2420450898062052547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310837 n + A055641 (A162584 n).toNat

end

end A310856.P2420450898062052547

/-! ## A310856.P4661414783028104393

`A310837(n)+A225099(A310837(2*n+1))`
-/

namespace A310856.P4661414783028104393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310837 n + A225099 (A310837 (2 * n + 1)).toNat

end

end A310856.P4661414783028104393

/-! ## A310856.P12613209359100026255

`A312286(n)-A000035(A177862(3*n+1))`
-/

namespace A310856.P12613209359100026255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312286 n - A000035 (A177862 (3 * n + 1)).toNat

end

end A310856.P12613209359100026255

/-! ## A310856.P4398334334763077720

`A310836(n)^A154638(A269250(n))+1-A047999(3*n)`
-/

namespace A310856.P4398334334763077720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310836 n : ℚ) ^ (A154638 (A269250 n).toNat : ℤ) + 1 - (A047999 (3 * n) : ℚ)

end

end A310856.P4398334334763077720

/-! ## A310856.P6233033261100068113

`A123497(A126591(n))`
-/

namespace A310856.P6233033261100068113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123497 (A126591 n).toNat

end

end A310856.P6233033261100068113

/-!
# A310857: Coordination sequence Gal.5.244.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310857, there is no canonical definition to state claims against.
-/

/-! ## A310857.P14048960560650934045

`A301293(n)-A086134(A278662(n))`
-/

namespace A310857.P14048960560650934045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A086134 (A278662 n).toNat

end

end A310857.P14048960560650934045

/-! ## A310857.P5733112138875578683

`A301293(n)+A101676(A124302(n))`
-/

namespace A310857.P5733112138875578683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A101676 (A124302 n).toNat

end

end A310857.P5733112138875578683

/-! ## A310857.P3265611234645457102

`A310843(n)+A284878(A197655(n))`
-/

namespace A310857.P3265611234645457102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 n + A284878 (A197655 n).toNat

end

end A310857.P3265611234645457102

/-! ## A310857.P10396595751380971518

`A310844(n)+A284878(A197655(n))`
-/

namespace A310857.P10396595751380971518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310844 n + A284878 (A197655 n).toNat

end

end A310857.P10396595751380971518

/-! ## A310857.P9533380085775225825

`A310841(n)+A025455(A001287(n))`
-/

namespace A310857.P9533380085775225825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310841 n + A025455 (A001287 (n + 10)).toNat

end

end A310857.P9533380085775225825

/-!
# A310858: Coordination sequence Gal.6.530.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310858, there is no canonical definition to state claims against.
-/

/-! ## A310858.P14965696739524906989

`A310857(n)+A082858(A232467(n))`
-/

namespace A310858.P14965696739524906989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310857 n + A082858 (A232467 n).toNat

end

end A310858.P14965696739524906989

/-! ## A310858.P706928192288551037

`A250120(n)-A374741(A082216(n))`
-/

namespace A310858.P706928192288551037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A374741 (A082216 n).toNat

end

end A310858.P706928192288551037

/-! ## A310858.P2547568318184323398

`A329267(A318389(n+1))+A310857(n)`
-/

namespace A310858.P2547568318184323398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329267 (A318389 (n + 1)).toNat + A310857 n

end

end A310858.P2547568318184323398

/-! ## A310858.P12628466235944040999

`A312295(n)-A188079(A212232(n+1))`
-/

namespace A310858.P12628466235944040999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312295 n - A188079 (A212232 (n + 1)).toNat

end

end A310858.P12628466235944040999

/-! ## A310858.P9424076589791395708

`A105772(n+1)+A104246(A299169(n))`
-/

namespace A310858.P9424076589791395708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1) + A104246 (A299169 n).toNat

end

end A310858.P9424076589791395708

/-!
# A310859: Coordination sequence Gal.6.165.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310859, there is no canonical definition to state claims against.
-/

/-! ## A310859.P4831770412468900342

`A310861(n)-A102683(A269309(n+1))`
-/

namespace A310859.P4831770412468900342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310861 n - A102683 (A269309 (n + 1)).toNat

end

end A310859.P4831770412468900342

/-! ## A310859.P16989581746558231939

`A073490(2*(n+1))+A310867(n)-A073490(A003480(n))`
-/

namespace A310859.P16989581746558231939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (2 * (n + 1)) + (A310867 n - A073490 (A003480 n).toNat)

end

end A310859.P16989581746558231939

/-!
# A310860: Coordination sequence Gal.6.272.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310860, there is no canonical definition to state claims against.
-/

/-! ## A310860.P10848053974339768795

`A310861(n)-A046660(A003080(n))`
-/

namespace A310860.P10848053974339768795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310861 n - A046660 (A003080 n).toNat

end

end A310860.P10848053974339768795

/-! ## A310860.P11719640732156100253

`A310861(n*A287377(n))`
-/

namespace A310860.P11719640732156100253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310861 ((n : ℤ) * A287377 n).toNat

end

end A310860.P11719640732156100253

/-! ## A310860.P15138804585026359156

`A310861(n*A287378(n))`
-/

namespace A310860.P15138804585026359156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310861 ((n : ℤ) * A287378 n).toNat

end

end A310860.P15138804585026359156

/-! ## A310860.P16828978540682175558

`A310861(n^A287377(n))`
-/

namespace A310860.P16828978540682175558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310861 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A287377 n : ℤ))).toNat

end

end A310860.P16828978540682175558

/-! ## A310860.P16861400901726722444

`A310861(n^A287378(n))`
-/

namespace A310860.P16861400901726722444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310861 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A287378 n : ℤ))).toNat

end

end A310860.P16861400901726722444

/-!
# A310861: Coordination sequence Gal.6.184.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310861, there is no canonical definition to state claims against.
-/

/-! ## A310861.P4377909283600820658

`A310860(n)+A046660(A003080(n))`
-/

namespace A310861.P4377909283600820658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310860 n + A046660 (A003080 n).toNat

end

end A310861.P4377909283600820658

/-! ## A310861.P1647244220930242234

`A310867(n)-A341996(A106228(n))`
-/

namespace A310861.P1647244220930242234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310867 n - A341996 (A106228 n).toNat

end

end A310861.P1647244220930242234

/-! ## A310861.P16370299301139183383

`A310867(n)-A181923(A027764(n+3))`
-/

namespace A310861.P16370299301139183383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310867 n - A181923 (A027764 (n + 3)).toNat

end

end A310861.P16370299301139183383

/-!
# A310863: Coordination sequence Gal.6.182.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310863, there is no canonical definition to state claims against.
-/

/-! ## A310863.P13170884461134275661

`A310809(n)+A133008(A175351(n+1))+1-A329744(n+1)`
-/

namespace A310863.P13170884461134275661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310809 n + A133008 (A175351 (n + 1)).toNat + 1 - A329744 (n + 1)

end

end A310863.P13170884461134275661

/-! ## A310863.P4701353746603392654

`A310882(n)-A326291(n²+11)`
-/

namespace A310863.P4701353746603392654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n - A326291 (n ^ 2 + 11)

end

end A310863.P4701353746603392654

/-! ## A310863.P4395130699995894547

`A310798(n)+A102679(A238803(n))`
-/

namespace A310863.P4395130699995894547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310798 n + A102679 (A238803 n).toNat

end

end A310863.P4395130699995894547

/-! ## A310863.P6558279305096421304

`A310882(n)-A325135(A102917(n))`
-/

namespace A310863.P6558279305096421304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n - A325135 (A102917 n).toNat

end

end A310863.P6558279305096421304

/-! ## A310863.P5899863422888035307

`A087686(2*n+1)-A135534(A053709(n+1))`
-/

namespace A310863.P5899863422888035307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (2 * n + 1) - A135534 (A053709 (n + 1)).toNat

end

end A310863.P5899863422888035307

/-!
# A310864: Coordination sequence Gal.4.50.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310864, there is no canonical definition to state claims against.
-/

/-! ## A310864.P15565314540939946082

`A312309(n)-A033461(A099118(2*n+3))`
-/

namespace A310864.P15565314540939946082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312309 n - A033461 (A099118 (2 * n + 3)).toNat

end

end A310864.P15565314540939946082

/-!
# A310865: Coordination sequence Gal.5.173.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310865, there is no canonical definition to state claims against.
-/

/-! ## A310865.P6891258749650148763

`A312315(n)-A023969(A139634(n+1))`
-/

namespace A310865.P6891258749650148763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312315 n - A023969 (A139634 (n + 1)).toNat

end

end A310865.P6891258749650148763

/-! ## A310865.P15716294817941100828

`A312315(n)-A107846(A077446(n+1))`
-/

namespace A310865.P15716294817941100828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312315 n - A107846 (A077446 (n + 1)).toNat

end

end A310865.P15716294817941100828

/-!
# A310866: Coordination sequence Gal.6.519.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310866, there is no canonical definition to state claims against.
-/

/-! ## A310866.P13428151280966052696

`A310868(n)-2*A084904(A319642(n))`
-/

namespace A310866.P13428151280966052696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310868 n - 2 * A084904 (A319642 n).toNat

end

end A310866.P13428151280966052696

/-! ## A310866.P13634894684456789595

`A310867(n)-A189463(A309862(n))`
-/

namespace A310866.P13634894684456789595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310867 n - A189463 (A309862 n).toNat

end

end A310866.P13634894684456789595

/-! ## A310866.P2780759675451274778

`A310868(n)-2*A189463(A309862(n))`
-/

namespace A310866.P2780759675451274778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310868 n - 2 * A189463 (A309862 n).toNat

end

end A310866.P2780759675451274778

/-! ## A310866.P9882321825863563304

`A310868(n)-A189463(A309862(n)²²)`
-/

namespace A310866.P9882321825863563304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310868 n - A189463 ((A309862 n ^ 2) ^ 2).toNat

end

end A310866.P9882321825863563304

/-!
# A310867: Coordination sequence Gal.6.168.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310867, there is no canonical definition to state claims against.
-/

/-! ## A310867.P11797449076237044901

`A310847(n)+A073490(A003480(n))`
-/

namespace A310867.P11797449076237044901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310847 n + A073490 (A003480 n).toNat

end

end A310867.P11797449076237044901

/-! ## A310867.P18184216314595224249

`A310866(n)+A049310(A309862(n))`
-/

namespace A310867.P18184216314595224249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310866 n + A049310 (A309862 n).toNat

end

end A310867.P18184216314595224249

/-! ## A310867.P15385059179209044314

`A341996(A106228(n))+A310861(n)`
-/

namespace A310867.P15385059179209044314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (A106228 n).toNat + A310861 n

end

end A310867.P15385059179209044314

/-!
# A310868: Coordination sequence Gal.6.275.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310868, there is no canonical definition to state claims against.
-/

/-! ## A310868.P16911486209895026780

`A310867(n)+A189463(A309862(n))`
-/

namespace A310868.P16911486209895026780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310867 n + A189463 (A309862 n).toNat

end

end A310868.P16911486209895026780

/-! ## A310868.P10273738548772400950

`A310848(n)+A054656(A128269(n+1))`
-/

namespace A310868.P10273738548772400950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310848 n + A054656 (A128269 (n + 1)).toNat

end

end A310868.P10273738548772400950

/-! ## A310868.P355638552674700240

`A310867(n)+A181923(A309862(n)+3)`
-/

namespace A310868.P355638552674700240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310867 n + A181923 (A309862 n + 3).toNat

end

end A310868.P355638552674700240

/-!
# A310869: Coordination sequence Gal.5.163.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310869, there is no canonical definition to state claims against.
-/

/-! ## A310869.P2659613809931803862

`A310867(n)+A001222(A309861(n))`
-/

namespace A310869.P2659613809931803862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310867 n + A001222 (A309861 n).toNat

end

end A310869.P2659613809931803862

/-! ## A310869.P11585152054459448086

`A310868(n)+A001221(A309861(n))`
-/

namespace A310869.P11585152054459448086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310868 n + A001221 (A309861 n).toNat

end

end A310869.P11585152054459448086

/-! ## A310869.P87954706410786153

`A310866(n)+A002262(A309861(n))`
-/

namespace A310869.P87954706410786153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310866 n + A002262 (A309861 n).toNat

end

end A310869.P87954706410786153

/-! ## A310869.P15218861537437778298

`A310868(n)+A185284(A310841(n))`
-/

namespace A310869.P15218861537437778298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310868 n + A185284 (A310841 n).toNat

end

end A310869.P15218861537437778298

/-! ## A310869.P3612824059501739242

`A310867(n)+A001222(A309862(n+1))`
-/

namespace A310869.P3612824059501739242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310867 n + A001222 (A309862 (n + 1)).toNat

end

end A310869.P3612824059501739242

/-!
# A310870: Coordination sequence Gal.5.107.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310870, there is no canonical definition to state claims against.
-/

/-! ## A310870.P2032903630007246142

`A310882(n)+A310926(n)-A310927(n)`
-/

namespace A310870.P2032903630007246142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n + (A310926 n - A310927 n)

end

end A310870.P2032903630007246142

/-! ## A310870.P16039776834800436034

`A310879(n)+A079998(A051354(n))-A319471(n)`
-/

namespace A310870.P16039776834800436034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310879 n + A079998 (A051354 n).toNat - A319471 n

end

end A310870.P16039776834800436034

/-! ## A310870.P1542643462607743189

`A310882(n)+A079998(A051354(n))-A319471(n)`
-/

namespace A310870.P1542643462607743189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n + A079998 (A051354 n).toNat - A319471 n

end

end A310870.P1542643462607743189

/-!
# A310871: Coordination sequence Gal.6.287.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310871, there is no canonical definition to state claims against.
-/

/-! ## A310871.P4556312253745930700

`A312320(n)-A071906(A261235(n))`
-/

namespace A310871.P4556312253745930700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312320 n - A071906 (A261235 n).toNat

end

end A310871.P4556312253745930700

/-! ## A310871.P3159337034175261385

`A310878(n)-A014017(A078918(n+1))`
-/

namespace A310871.P3159337034175261385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310878 n - A014017 (A078918 (n + 1)).toNat

end

end A310871.P3159337034175261385

/-! ## A310871.P10981022069542350460

`A310881(n)-A084904(n²)-A014017(A078918(n+1))`
-/

namespace A310871.P10981022069542350460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310881 n - A084904 (n ^ 2) - A014017 (A078918 (n + 1)).toNat

end

end A310871.P10981022069542350460

/-! ## A310871.P194711349236915738

`A310867(n)+A037913(A042262(n))`
-/

namespace A310871.P194711349236915738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310867 n + A037913 (A042262 n).toNat

end

end A310871.P194711349236915738

/-! ## A310871.P8948542065041241730

`A310868(n)+A025469(A083591(n))`
-/

namespace A310871.P8948542065041241730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310868 n + A025469 (A083591 n).toNat

end

end A310871.P8948542065041241730

/-!
# A310873: Coordination sequence Gal.6.403.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310873, there is no canonical definition to state claims against.
-/

/-! ## A310873.P13043225041761207755

`or(A103493(A147125(n+3)), A310866(n))`
-/

namespace A310873.P13043225041761207755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103493 (A147125 (n + 3)).toNat) (A310866 n)

end

end A310873.P13043225041761207755

/-! ## A310873.P11721846624689927170

`or(A025465(A024023(n)), A310872(n))`
-/

namespace A310873.P11721846624689927170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025465 (A024023 n).toNat) (A310872 n)

end

end A310873.P11721846624689927170

/-! ## A310873.P14518358800994510197

`A310810(n)+A093692(A139199(n+1))`
-/

namespace A310873.P14518358800994510197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310810 n + A093692 (A139199 (n + 1)).toNat

end

end A310873.P14518358800994510197

/-! ## A310873.P5888163417187135168

`A350950(A315051(2*n))+A310872(n)`
-/

namespace A310873.P5888163417187135168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350950 (A315051 (2 * n)).toNat + A310872 n

end

end A310873.P5888163417187135168

/-! ## A310873.P1047070827753805119

`or(A190198(A190197(n+1)), A310872(n))`
-/

namespace A310873.P1047070827753805119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A190198 (A190197 (n + 1)).toNat) (A310872 n)

end

end A310873.P1047070827753805119

/-!
# A310874: Coordination sequence Gal.6.166.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310874, there is no canonical definition to state claims against.
-/

/-! ## A310874.P1698172772695172457

`A312276(n)+A033716(A041974(n))-A281154(A190708(n+1))`
-/

namespace A310874.P1698172772695172457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312276 n + A033716 (A041974 n).toNat - A281154 (A190708 (n + 1)).toNat

end

end A310874.P1698172772695172457

/-! ## A310874.P9038863893398074371

`A310808(n)+A288466(A149016(n))`
-/

namespace A310874.P9038863893398074371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310808 n + A288466 (A149016 n).toNat

end

end A310874.P9038863893398074371

/-! ## A310874.P14586162533452944178

`A310875(n)-A321936(A218255(n))`
-/

namespace A310874.P14586162533452944178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310875 n - A321936 (A218255 n).toNat

end

end A310874.P14586162533452944178

/-! ## A310874.P5362443019816030053

`A310876(n)-A188187(A002619(n+1))`
-/

namespace A310874.P5362443019816030053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310876 n - A188187 (A002619 (n + 1)).toNat

end

end A310874.P5362443019816030053

/-!
# A310875: Coordination sequence Gal.6.273.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310875, there is no canonical definition to state claims against.
-/

/-! ## A310875.P18377951531372822642

`A310809(n)+A133008(A175351(n+1))`
-/

namespace A310875.P18377951531372822642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310809 n + A133008 (A175351 (n + 1)).toNat

end

end A310875.P18377951531372822642

/-! ## A310875.P6733514102303525808

`A321936(A218255(n))+A310874(n)`
-/

namespace A310875.P6733514102303525808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A218255 n).toNat + A310874 n

end

end A310875.P6733514102303525808

/-! ## A310875.P7374655816262380163

`A312717(n)-A001221(A111063(n))`
-/

namespace A310875.P7374655816262380163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312717 n - A001221 (A111063 n).toNat

end

end A310875.P7374655816262380163

/-! ## A310875.P9120605360538360259

`xor(A007814(A276725(n)), A310627(n))`
-/

namespace A310875.P9120605360538360259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007814 (A276725 n).toNat) (A310627 n)

end

end A310875.P9120605360538360259

/-!
# A310876: Coordination sequence Gal.5.62.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310876, there is no canonical definition to state claims against.
-/

/-! ## A310876.P12535266890634089734

`A310878(n)-A046660(A034731(n+1))`
-/

namespace A310876.P12535266890634089734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310878 n - A046660 (A034731 (n + 1)).toNat

end

end A310876.P12535266890634089734

/-! ## A310876.P1070390419859359500

`A312316(n)-A108730(A291631(n+1))`
-/

namespace A310876.P1070390419859359500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312316 n - A108730 (A291631 (n + 1)).toNat

end

end A310876.P1070390419859359500

/-! ## A310876.P3035263964545281198

`A310874(n)+A133010(n²+4)`
-/

namespace A310876.P3035263964545281198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310874 n + A133010 (n ^ 2 + 4)

end

end A310876.P3035263964545281198

/-! ## A310876.P1930835912304344166

`A312314(n)-A070109(A053493(n))`
-/

namespace A310876.P1930835912304344166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312314 n - A070109 (A053493 n).toNat

end

end A310876.P1930835912304344166

/-! ## A310876.P9596228488752595230

`A312314(n)-A029832(A230231(n))`
-/

namespace A310876.P9596228488752595230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312314 n - A029832 (A230231 n).toNat

end

end A310876.P9596228488752595230

/-!
# A310877: Coordination sequence Gal.6.228.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310877, there is no canonical definition to state claims against.
-/

/-! ## A310877.P13701827298026942591

`A310886(n)-A135500(A135510(n+1))`
-/

namespace A310877.P13701827298026942591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310886 n - A135500 (A135510 (n + 1)).toNat

end

end A310877.P13701827298026942591

/-! ## A310877.P14342508754875228210

`A312317(n)-A044940(A001700(n))`
-/

namespace A310877.P14342508754875228210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A044940 (A001700 n).toNat

end

end A310877.P14342508754875228210

/-! ## A310877.P6391218127644103238

`A312315(n)-A003982(A042835(n))`
-/

namespace A310877.P6391218127644103238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312315 n - A003982 (A042835 n).toNat

end

end A310877.P6391218127644103238

/-! ## A310877.P3983982548336211241

`A310882(n)-A055641(A000108(n))`
-/

namespace A310877.P3983982548336211241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n - A055641 (A000108 n).toNat

end

end A310877.P3983982548336211241

/-!
# A310878: Coordination sequence Gal.6.127.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310878, there is no canonical definition to state claims against.
-/

/-! ## A310878.P6574478046501176351

`A312316(n)-A034876(A000244(n))`
-/

namespace A310878.P6574478046501176351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312316 n - A034876 (A000244 n).toNat

end

end A310878.P6574478046501176351

/-! ## A310878.P2611578711345064205

`A310881(n)-A025469(A148197(n))`
-/

namespace A310878.P2611578711345064205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310881 n - A025469 (A148197 n).toNat

end

end A310878.P2611578711345064205

/-! ## A310878.P12604007823844656090

`A310882(n)-A025469(A148197(n))`
-/

namespace A310878.P12604007823844656090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n - A025469 (A148197 n).toNat

end

end A310878.P12604007823844656090

/-!
# A310879: Coordination sequence Gal.6.123.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310879, there is no canonical definition to state claims against.
-/

/-! ## A310879.P9837920553125819942

`A310880(n)-A316863(A229890(n))`
-/

namespace A310879.P9837920553125819942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310880 n - A316863 (A229890 n).toNat

end

end A310879.P9837920553125819942

/-! ## A310879.P8023253183674927389

`filter[A310880(n), A242718(#)]`
-/

namespace A310879.P8023253183674927389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A310879.P8023253183674927389

/-! ## A310879.P15094417829807585742

`A310880(A135381(2*n)-n)`
-/

namespace A310879.P15094417829807585742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310880 (A135381 (2 * n) - (n : ℤ)).toNat

end

end A310879.P15094417829807585742

/-! ## A310879.P8659066538414645245

`A310880(n)+A000007(A282106(n))`
-/

namespace A310879.P8659066538414645245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310880 n + A000007 (A282106 n).toNat

end

end A310879.P8659066538414645245

/-! ## A310879.P16508864082296909986

`A310880(n)+A000007(A288018(n))`
-/

namespace A310879.P16508864082296909986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310880 n + A000007 (A288018 n).toNat

end

end A310879.P16508864082296909986

/-!
# A310880: Coordination sequence Gal.6.224.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310880, there is no canonical definition to state claims against.
-/

/-! ## A310880.P18405394334292089104

`A316863(A229890(n))+A310879(n)`
-/

namespace A310880.P18405394334292089104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A229890 n).toNat + A310879 n

end

end A310880.P18405394334292089104

/-! ## A310880.P11185800321669290505

`A310881(n)-A025466(A099036(n))`
-/

namespace A310880.P11185800321669290505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310881 n - A025466 (A099036 n).toNat

end

end A310880.P11185800321669290505

/-! ## A310880.P5958601466714920935

`A310879(A374249(n+1)%A332989(3*n+1))`
-/

namespace A310880.P5958601466714920935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310879 (Int.tmod (A374249 (n + 1)) (A332989 (3 * n + 1))).toNat

end

end A310880.P5958601466714920935

/-!
# A310881: Coordination sequence Gal.5.58.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310881, there is no canonical definition to state claims against.
-/

/-! ## A310881.P16044704312349476103

`A316863(A229890(n+1))+A310880(n)`
-/

namespace A310881.P16044704312349476103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A229890 (n + 1)).toNat + A310880 n

end

end A310881.P16044704312349476103

/-! ## A310881.P2035567655849059244

`A310880(n)+A025466(A099036(n))`
-/

namespace A310881.P2035567655849059244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310880 n + A025466 (A099036 n).toNat

end

end A310881.P2035567655849059244

/-! ## A310881.P14855277180025455543

`A025466(A099036(n))-(A025466(n)-A310880(n))`
-/

namespace A310881.P14855277180025455543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (A099036 n).toNat - (A025466 n - A310880 n)

end

end A310881.P14855277180025455543

/-! ## A310881.P16439256585254636409

`and(A310882(n), A341931(A314555(n)))`
-/

namespace A310881.P16439256585254636409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A310882 n) (A341931 (A314555 n).toNat)

end

end A310881.P16439256585254636409

/-!
# A310882: Coordination sequence Gal.5.103.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310882, there is no canonical definition to state claims against.
-/

/-! ## A310882.P16874502551789130580

`A310870(n)+A310927(n)-A310926(n)`
-/

namespace A310882.P16874502551789130580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310870 n + (A310927 n - A310926 n)

end

end A310882.P16874502551789130580

/-! ## A310882.P4150116013174310247

`A310881(n)+A025466(A099036(n+1))`
-/

namespace A310882.P4150116013174310247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310881 n + A025466 (A099036 (n + 1)).toNat

end

end A310882.P4150116013174310247

/-! ## A310882.P6622381332689561711

`A340998(A052905(n))+A310881(n)`
-/

namespace A310882.P6622381332689561711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A052905 n).toNat + 140) + A310881 n

end

end A310882.P6622381332689561711

/-! ## A310882.P12811770953740667679

`A312317(n)-A055641(A027437(n))`
-/

namespace A310882.P12811770953740667679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A055641 (A027437 n).toNat

end

end A310882.P12811770953740667679

/-!
# A310883: Coordination sequence Gal.4.46.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310883, there is no canonical definition to state claims against.
-/

/-! ## A310883.P5978122216459985218

`A340998(A084376(n))+A310882(n)`
-/

namespace A310883.P5978122216459985218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A084376 n).toNat + 140) + A310882 n

end

end A310883.P5978122216459985218

/-! ## A310883.P17362641016836783156

`A310881(n)+A102683(A000085(n))`
-/

namespace A310883.P17362641016836783156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310881 n + A102683 (A000085 n).toNat

end

end A310883.P17362641016836783156

/-! ## A310883.P13534024815304334188

`A310882(n)+A102683(A000085(n))`
-/

namespace A310883.P13534024815304334188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n + A102683 (A000085 n).toNat

end

end A310883.P13534024815304334188

/-! ## A310883.P56539175203971213

`A310878(n)+A102681(A001654(n))`
-/

namespace A310883.P56539175203971213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310878 n + A102681 (A001654 n).toNat

end

end A310883.P56539175203971213

/-! ## A310883.P11437778913928413979

`A310881(n)+A010894(A301676(n))`
-/

namespace A310883.P11437778913928413979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310881 n + A010894 ((A301676 n).toNat + 21)

end

end A310883.P11437778913928413979

/-!
# A310884: Coordination sequence Gal.4.66.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310884, there is no canonical definition to state claims against.
-/

/-! ## A310884.P14651402809709034617

`xor(A310885(n), A356923(A022144(n)))`
-/

namespace A310884.P14651402809709034617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A310885 n) (A356923 (A022144 n).toNat)

end

end A310884.P14651402809709034617

/-! ## A310884.P9498785573937201024

`record[A294186(n+1)]+A312315(n)-n-char[2]`
-/

namespace A310884.P9498785573937201024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294186 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A312315 n - (n : ℤ)) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A310884.P9498785573937201024

/-! ## A310884.P4138890564061113002

`A310881(n)+A010894(A310398(n))`
-/

namespace A310884.P4138890564061113002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310881 n + A010894 ((A310398 n).toNat + 21)

end

end A310884.P4138890564061113002

/-! ## A310884.P813066347503947234

`A310882(n)+A010894(A310398(n))`
-/

namespace A310884.P813066347503947234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n + A010894 ((A310398 n).toNat + 21)

end

end A310884.P813066347503947234

/-! ## A310884.P9743834763817832565

`A310883(n)+A010894(A310398(n))`
-/

namespace A310884.P9743834763817832565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310883 n + A010894 ((A310398 n).toNat + 21)

end

end A310884.P9743834763817832565

/-!
# A310885: Coordination sequence Gal.3.29.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310885, there is no canonical definition to state claims against.
-/

/-! ## A310885.P12675498411184764541

`xor(A310884(n), A356923(A022144(n)))`
-/

namespace A310885.P12675498411184764541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A310884 n) (A356923 (A022144 n).toNat)

end

end A310885.P12675498411184764541

/-! ## A310885.P7593851342703713567

`A310809(n)+A083025(A007716(n))`
-/

namespace A310885.P7593851342703713567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310809 n + A083025 (A007716 n).toNat

end

end A310885.P7593851342703713567

/-! ## A310885.P12768710478632023755

`A310884(n)+A265245(A001750(n+1))`
-/

namespace A310885.P12768710478632023755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310884 n + A265245 (A001750 (n + 1)).toNat

end

end A310885.P12768710478632023755

/-! ## A310885.P17161450158505677442

`A340998(A107847(n+1))+A310879(n)`
-/

namespace A310885.P17161450158505677442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A107847 (n + 1)).toNat + 140) + A310879 n

end

end A310885.P17161450158505677442

/-! ## A310885.P1534206091271926806

`A340998(A107847(n+1))+A310881(n)`
-/

namespace A310885.P1534206091271926806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A107847 (n + 1)).toNat + 140) + A310881 n

end

end A310885.P1534206091271926806

/-!
# A310886: Coordination sequence Gal.6.182.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310886, there is no canonical definition to state claims against.
-/

/-! ## A310886.P3643974712535267764

`A310879(n)+A079998(A051354(n))`
-/

namespace A310886.P3643974712535267764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310879 n + A079998 (A051354 n).toNat

end

end A310886.P3643974712535267764

/-! ## A310886.P12561745543426641257

`A310882(n)+A079998(A051354(n))`
-/

namespace A310886.P12561745543426641257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n + A079998 (A051354 n).toNat

end

end A310886.P12561745543426641257

/-! ## A310886.P14949487910547535541

`A310882(n)+A124761(A114997(n+1))`
-/

namespace A310886.P14949487910547535541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n + A124761 (A114997 (n + 1)).toNat

end

end A310886.P14949487910547535541

/-! ## A310886.P11415337901924538406

`A345760(A000010(n+1))+A310851(n)`
-/

namespace A310886.P11415337901924538406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345760 (A000010 (n + 1)).toNat + A310851 n

end

end A310886.P11415337901924538406

/-! ## A310886.P2105764126470913758

`A310877(n)+A044940(A333788(n+1))`
-/

namespace A310886.P2105764126470913758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310877 n + A044940 (A333788 (n + 1)).toNat

end

end A310886.P2105764126470913758

/-!
# A310887: Coordination sequence Gal.6.273.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310887, there is no canonical definition to state claims against.
-/

/-! ## A310887.P6143855025045196307

`A340998(A312561(2*n+1))+A310881(n)`
-/

namespace A310887.P6143855025045196307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A312561 (2 * n + 1)).toNat + 140) + A310881 n

end

end A310887.P6143855025045196307

/-! ## A310887.P1587677355953093889

`A340998(A312561(2*n+1))+A310882(n)`
-/

namespace A310887.P1587677355953093889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A312561 (2 * n + 1)).toNat + 140) + A310882 n

end

end A310887.P1587677355953093889

/-! ## A310887.P6596431320044381761

`A310886(n)+A011730(A143955(n))`
-/

namespace A310887.P6596431320044381761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310886 n + A011730 (A143955 n).toNat

end

end A310887.P6596431320044381761

/-! ## A310887.P5987507171126709606

`A353482(A149235(n))+A310886(n)`
-/

namespace A310887.P5987507171126709606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353482 (A149235 n).toNat + A310886 n

end

end A310887.P5987507171126709606

/-! ## A310887.P13178855134378697864

`A239086(A310886(n*A275064(n)))`
-/

namespace A310887.P13178855134378697864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A310886 ((n : ℤ) * A275064 n).toNat).toNat

end

end A310887.P13178855134378697864

/-!
# A310888: Coordination sequence Gal.6.166.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310888, there is no canonical definition to state claims against.
-/

/-! ## A310888.P9202214860465735579

`A310882(n)+A287401(A206685(n+1))`
-/

namespace A310888.P9202214860465735579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n + A287401 (A206685 (n + 1)).toNat

end

end A310888.P9202214860465735579

/-! ## A310888.P7776479109418478847

`or(A131364(A112877(n+1)), A310881(n))`
-/

namespace A310888.P7776479109418478847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131364 (A112877 (n + 1)).toNat) (A310881 n)

end

end A310888.P7776479109418478847

/-! ## A310888.P6499295826292978724

`A310875(n)+A184955(A303763(n))`
-/

namespace A310888.P6499295826292978724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310875 n + A184955 (A303763 n).toNat

end

end A310888.P6499295826292978724

/-! ## A310888.P15039607751702754069

`A314529(n)-A309754(A055436(n+1))`
-/

namespace A310888.P15039607751702754069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314529 n - A309754 (A055436 (n + 1)).toNat

end

end A310888.P15039607751702754069

/-!
# A310890: Coordination sequence Gal.6.289.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310890, there is no canonical definition to state claims against.
-/

/-! ## A310890.P13084097649540965858

`A310910(n)+A310916(n)-A310920(n)`
-/

namespace A310890.P13084097649540965858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310910 n + (A310916 n - A310920 n)

end

end A310890.P13084097649540965858

/-! ## A310890.P9016517206926784942

`A312391(n)-A059841(∑[(3-char[1])^n])`
-/

namespace A310890.P9016517206926784942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312391 n - A059841 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A310890.P9016517206926784942

/-! ## A310890.P11148023543787327818

`A312391(n)+A081729(A259208(n))`
-/

namespace A310890.P11148023543787327818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312391 n + A081729 (A259208 n).toNat

end

end A310890.P11148023543787327818

/-! ## A310890.P10285142363912788062

`A107631(A312786(n)+A312778(n))`
-/

namespace A310890.P10285142363912788062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107631 (A312786 n + A312778 n).toNat

end

end A310890.P10285142363912788062

/-! ## A310890.P6680041753933409374

`A107631(A312787(n)+A312778(n))`
-/

namespace A310890.P6680041753933409374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107631 (A312787 n + A312778 n).toNat

end

end A310890.P6680041753933409374

/-!
# A310891: Coordination sequence Gal.5.163.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310891, there is no canonical definition to state claims against.
-/

/-! ## A310891.P4426468208330054573

`A310892(n)-A178798(A326078(n))`
-/

namespace A310891.P4426468208330054573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310892 n - A178798 (A326078 n).toNat

end

end A310891.P4426468208330054573

/-! ## A310891.P15481780610599475818

`A310895(n)-A325194(A265070(n))`
-/

namespace A310891.P15481780610599475818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310895 n - A325194 (A265070 n).toNat

end

end A310891.P15481780610599475818

/-! ## A310891.P9253934094993682540

`or(A310875(n), A328615(A068587(n)))`
-/

namespace A310891.P9253934094993682540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A310875 n) (A328615 (A068587 n).toNat)

end

end A310891.P9253934094993682540

/-! ## A310891.P5114727106739806939

`or(A310876(n), A328615(A068587(n)))`
-/

namespace A310891.P5114727106739806939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A310876 n) (A328615 (A068587 n).toNat)

end

end A310891.P5114727106739806939

/-! ## A310891.P4369218789495169407

`A310893(n)-2*A178798(A326078(n))`
-/

namespace A310891.P4369218789495169407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310893 n - 2 * A178798 (A326078 n).toNat

end

end A310891.P4369218789495169407

/-!
# A310892: Coordination sequence Gal.6.299.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310892, there is no canonical definition to state claims against.
-/

/-! ## A310892.P2153107052951869622

`A310891(n)+A178798(A326078(n))`
-/

namespace A310892.P2153107052951869622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310891 n + A178798 (A326078 n).toNat

end

end A310892.P2153107052951869622

/-! ## A310892.P17493327578341066399

`A310893(A178798(A326078(n))+n)`
-/

namespace A310892.P17493327578341066399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310893 (A178798 (A326078 n).toNat + (n : ℤ)).toNat

end

end A310892.P17493327578341066399

/-! ## A310892.P7003757226132351314

`A310893(n)-A178798(A326078(n))`
-/

namespace A310892.P7003757226132351314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310893 n - A178798 (A326078 n).toNat

end

end A310892.P7003757226132351314

/-! ## A310892.P17680900298068290357

`A310895(n)-A101606(A006248(n+1))`
-/

namespace A310892.P17680900298068290357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310895 n - A101606 (A006248 (n + 1)).toNat

end

end A310892.P17680900298068290357

/-! ## A310892.P9793936912010424066

`A312392(n)-A357637(A108951(n+4))`
-/

namespace A310892.P9793936912010424066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312392 n - A357637 (A108951 (n + 4)).toNat

end

end A310892.P9793936912010424066

/-!
# A310893: Coordination sequence Gal.6.184.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310893, there is no canonical definition to state claims against.
-/

/-! ## A310893.P9463040339366701075

`A036741(A310283(n)+A001057(n))`
-/

namespace A310893.P9463040339366701075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036741 (A310283 n + A001057 n).toNat

end

end A310893.P9463040339366701075

/-! ## A310893.P16900015020418130219

`A310890(n)+A286484(A100307(n))`
-/

namespace A310893.P16900015020418130219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310890 n + A286484 (A100307 n).toNat

end

end A310893.P16900015020418130219

/-! ## A310893.P15387666919177413591

`A310892(n)+A178798(A326078(n))`
-/

namespace A310893.P15387666919177413591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310892 n + A178798 (A326078 n).toNat

end

end A310893.P15387666919177413591

/-! ## A310893.P3716547975253779685

`A323462(A310894(n)+A310892(n))`
-/

namespace A310893.P3716547975253779685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323462 (A310894 n + A310892 n).toNat

end

end A310893.P3716547975253779685

/-! ## A310893.P12449472903073635765

`A310894(n)-A178798(A326078(n))`
-/

namespace A310893.P12449472903073635765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310894 n - A178798 (A326078 n).toNat

end

end A310893.P12449472903073635765

/-!
# A310894: Coordination sequence Gal.6.275.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310894, there is no canonical definition to state claims against.
-/

/-! ## A310894.P3965551241227606904

`xor(A000038(A286080(n)), A310916(n))`
-/

namespace A310894.P3965551241227606904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (A286080 n).toNat) (A310916 n)

end

end A310894.P3965551241227606904

/-! ## A310894.P13226528893942984867

`A310893(n)+A178798(A326078(n))`
-/

namespace A310894.P13226528893942984867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310893 n + A178798 (A326078 n).toNat

end

end A310894.P13226528893942984867

/-! ## A310894.P10365047323609349040

`A310892(n)+2*A178798(A326078(n))`
-/

namespace A310894.P10365047323609349040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310892 n + 2 * A178798 (A326078 n).toNat

end

end A310894.P10365047323609349040

/-!
# A310895: Coordination sequence Gal.6.168.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310895, there is no canonical definition to state claims against.
-/

/-! ## A310895.P2624940801457077027

`A310887(n)+A063725(A029571(n))`
-/

namespace A310895.P2624940801457077027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310887 n + A063725 (A029571 n).toNat

end

end A310895.P2624940801457077027

/-! ## A310895.P17553645060826819392

`A328615(A068587(n))+A310876(n)`
-/

namespace A310895.P17553645060826819392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (A068587 n).toNat + A310876 n

end

end A310895.P17553645060826819392

/-! ## A310895.P13880645542169410314

`A325194(A265070(n))+A310891(n)`
-/

namespace A310895.P13880645542169410314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325194 (A265070 n).toNat + A310891 n

end

end A310895.P13880645542169410314

/-! ## A310895.P10936298661514316309

`A310892(n)+A101606(A006248(n+1))`
-/

namespace A310895.P10936298661514316309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310892 n + A101606 (A006248 (n + 1)).toNat

end

end A310895.P10936298661514316309

/-!
# A310896: Coordination sequence Gal.6.434.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310896, there is no canonical definition to state claims against.
-/

/-! ## A310896.P7690434343543280094

`A326291(n²+11)+A310882(n)`
-/

namespace A310896.P7690434343543280094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n ^ 2 + 11) + A310882 n

end

end A310896.P7690434343543280094

/-! ## A310896.P17560259450776549704

`A310887(n)+A014082(A101169(n))`
-/

namespace A310896.P17560259450776549704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310887 n + A014082 (A101169 n).toNat

end

end A310896.P17560259450776549704

/-! ## A310896.P13293121471417746292

`A325135(A102917(n))+A310882(n)`
-/

namespace A310896.P13293121471417746292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A102917 n).toNat + A310882 n

end

end A310896.P13293121471417746292

/-! ## A310896.P6086696885618140399

`A310872(n)+A293435(A293507(n))`
-/

namespace A310896.P6086696885618140399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310872 n + A293435 (A293507 n).toNat

end

end A310896.P6086696885618140399

/-!
# A310897: Coordination sequence Gal.6.414.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310897, there is no canonical definition to state claims against.
-/

/-! ## A310897.P4386245337114835127

`A310898(n)-A055641(A094678(n+1))`
-/

namespace A310897.P4386245337114835127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310898 n - A055641 (A094678 (n + 1)).toNat

end

end A310897.P4386245337114835127

/-! ## A310897.P14166909905513659340

`A301674(n)-A035187(A000071(2*(n+2)))`
-/

namespace A310897.P14166909905513659340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301674 n - A035187 (A000071 (2 * (n + 2))).toNat

end

end A310897.P14166909905513659340

/-!
# A310898: Coordination sequence Gal.5.180.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310898, there is no canonical definition to state claims against.
-/

/-! ## A310898.P17039812868721362385

`A310897(n)+A055641(A094678(n+1))`
-/

namespace A310898.P17039812868721362385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310897 n + A055641 (A094678 (n + 1)).toNat

end

end A310898.P17039812868721362385

/-! ## A310898.P466575578332621419

`A310897(n)+A086015(A239663(n+1))`
-/

namespace A310898.P466575578332621419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310897 n + A086015 (A239663 (n + 1)).toNat

end

end A310898.P466575578332621419

/-! ## A310898.P13970021231416951773

`or(A105700(A006248(n+1)), A310897(n))`
-/

namespace A310898.P13970021231416951773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105700 (A006248 (n + 1)).toNat) (A310897 n)

end

end A310898.P13970021231416951773

/-! ## A310898.P16250509956202043720

`and(-A212987(A213002(2*n)), A310899(n))`
-/

namespace A310898.P16250509956202043720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A212987 (A213002 (2 * n)).toNat) (A310899 n)

end

end A310898.P16250509956202043720

/-!
# A310899: Coordination sequence Gal.6.397.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310899, there is no canonical definition to state claims against.
-/

/-! ## A310899.P3961349142112087720

`A301674(n)-A238468(A148838(n))`
-/

namespace A310899.P3961349142112087720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301674 n - A238468 (A148838 n).toNat

end

end A310899.P3961349142112087720

