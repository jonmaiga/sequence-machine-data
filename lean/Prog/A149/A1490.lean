import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C025

/-!
# A149000: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 1, -1), (1, 1, 0)}.

The programs for A149000, there is no canonical definition to state claims against.
-/

/-! ## A149000.P5780974922401245886

`or(A057498(A026008(n)), A148999(n))`
-/

namespace A149000.P5780974922401245886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057498 (A026008 n).toNat) (A148999 n)

end

end A149000.P5780974922401245886

/-! ## A149000.P1148400956982789223

`or(A148999(n), A210502(A149009(n)))`
-/

namespace A149000.P1148400956982789223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148999 n) (A210502 (A149009 n).toNat)

end

end A149000.P1148400956982789223

/-! ## A149000.P13380940012392843167

`A368094(A376940(n+1))+A323790(n)`
-/

namespace A149000.P13380940012392843167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368094 (A376940 (n + 1)).toNat + A323790 n

end

end A149000.P13380940012392843167

/-!
# A149001: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149001, there is no canonical definition to state claims against.
-/

/-! ## A149001.P7637251209955449113

`A330557(A000085(n)*A006330(n))`
-/

namespace A149001.P7637251209955449113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330557 (A000085 n * A006330 n).toNat

end

end A149001.P7637251209955449113

/-! ## A149001.P11802879588603545431

`A078898(or(A305570(n+1), A305578(n)))`
-/

namespace A149001.P11802879588603545431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.lor (A305570 (n + 1)) (A305578 n)).toNat

end

end A149001.P11802879588603545431

/-!
# A149002: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A149002, there is no canonical definition to state claims against.
-/

/-! ## A149002.P6975684149155885874

`A156562(A151436(n))`
-/

namespace A149002.P6975684149155885874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A151436 n).toNat

end

end A149002.P6975684149155885874

/-! ## A149002.P18003154719435306623

`A323790(n)+A093555(A124423(n))`
-/

namespace A149002.P18003154719435306623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323790 n + A093555 (A124423 n).toNat

end

end A149002.P18003154719435306623

/-! ## A149002.P13643030018804065610

`A339659(A003418(n))+A323790(n)`
-/

namespace A149002.P13643030018804065610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339659 (A003418 n).toNat + A323790 n

end

end A149002.P13643030018804065610

/-!
# A149003: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A149003, there is no canonical definition to state claims against.
-/

/-! ## A149003.P7434049825974119168

`A149004(A073788(n))`
-/

namespace A149003.P7434049825974119168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149004 (A073788 n).toNat

end

end A149003.P7434049825974119168

/-! ## A149003.P11148356160606628514

`A149004(A171596(n))`
-/

namespace A149003.P11148356160606628514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149004 (A171596 n).toNat

end

end A149003.P11148356160606628514

/-! ## A149003.P6836506477355400565

`A255408(A149004(n))`
-/

namespace A149003.P6836506477355400565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A149004 n).toNat

end

end A149003.P6836506477355400565

/-!
# A149004: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, -1, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A149004, there is no canonical definition to state claims against.
-/

/-! ## A149004.P5631203445238854574

`or(A149003(n), A231723(A149027(n)))`
-/

namespace A149004.P5631203445238854574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149003 n) (A231723 (A149027 n).toNat)

end

end A149004.P5631203445238854574

/-!
# A149005: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A149005, there is no canonical definition to state claims against.
-/

/-! ## A149005.P11349604232165480840

`A049317(A023872(n))+A045668(n)`
-/

namespace A149005.P11349604232165480840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (A023872 n).toNat + A045668 n

end

end A149005.P11349604232165480840

/-! ## A149005.P12762036335227719042

`A149004(n)+A107782(A006225(n))`
-/

namespace A149005.P12762036335227719042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149004 n + A107782 (A006225 n).toNat

end

end A149005.P12762036335227719042

/-! ## A149005.P7257665976789953886

`A212619(A193649(n))+A149003(n)`
-/

namespace A149005.P7257665976789953886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A193649 n).toNat + A149003 n

end

end A149005.P7257665976789953886

/-!
# A149006: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A149006, there is no canonical definition to state claims against.
-/

/-! ## A149006.P8634490051662187692

`A149007(n)-A058348(A133263(n))`
-/

namespace A149006.P8634490051662187692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149007 n - A058348 (A133263 n).toNat

end

end A149006.P8634490051662187692

/-! ## A149006.P18098554060015489351

`A149007(A073788(n))`
-/

namespace A149006.P18098554060015489351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149007 (A073788 n).toNat

end

end A149006.P18098554060015489351

/-! ## A149006.P11207706021924270589

`A149007(A171596(n))`
-/

namespace A149006.P11207706021924270589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149007 (A171596 n).toNat

end

end A149006.P11207706021924270589

/-!
# A149007: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149007, there is no canonical definition to state claims against.
-/

/-! ## A149007.P15760840949334647084

`A149006(n)+A058348(A133263(n))`
-/

namespace A149007.P15760840949334647084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149006 n + A058348 (A133263 n).toNat

end

end A149007.P15760840949334647084

/-! ## A149007.P623599635698629776

`or(A149006(n), A180601(A024175(n)))`
-/

namespace A149007.P623599635698629776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149006 n) (A180601 (A024175 n).toNat)

end

end A149007.P623599635698629776

/-! ## A149007.P1870233476486697893

`or(A149006(n), A231723(A149027(n)))`
-/

namespace A149007.P1870233476486697893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149006 n) (A231723 (A149027 n).toNat)

end

end A149007.P1870233476486697893

/-!
# A149008: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A149008, there is no canonical definition to state claims against.
-/

/-! ## A149008.P2524007963551510950

`A261585(A195160(n)+4^n+3)`
-/

namespace A149008.P2524007963551510950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A195160 n + (4 ^ n : ℤ) + 3).toNat

end

end A149008.P2524007963551510950

/-! ## A149008.P7762360329206276330

`A266350(A286761(n))-A003714(n)`
-/

namespace A149008.P7762360329206276330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266350 (A286761 n).toNat - A003714 n

end

end A149008.P7762360329206276330

/-!
# A149009: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, -1, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A149009, there is no canonical definition to state claims against.
-/

/-! ## A149009.P15700228350757724538

`A028310(A149010(n)-A011844(n))`
-/

namespace A149009.P15700228350757724538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A149010 n - A011844 n).toNat

end

end A149009.P15700228350757724538

/-! ## A149009.P15331545120412860880

`A149010(n)-A044941(A000302(n))`
-/

namespace A149009.P15331545120412860880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149010 n - A044941 (A000302 n).toNat

end

end A149009.P15331545120412860880

/-! ## A149009.P14257363527499398674

`A149010(n)-A056594(A148995(n))`
-/

namespace A149009.P14257363527499398674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149010 n - A056594 (A148995 n).toNat

end

end A149009.P14257363527499398674

/-! ## A149009.P7488380722933595474

`A028310(A149010(n)-A281154(n))`
-/

namespace A149009.P7488380722933595474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A149010 n - A281154 n).toNat

end

end A149009.P7488380722933595474

/-!
# A149010: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A149010, there is no canonical definition to state claims against.
-/

/-! ## A149010.P13881575773626452734

`A185284(ceil((3^(2/5))^n))+A149009(n)`
-/

namespace A149010.P13881575773626452734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 ⌈((3 : ℝ) ^ ((2 : ℚ) / 5 : ℝ)) ^ n⌉.toNat + A149009 n

end

end A149010.P13881575773626452734

/-! ## A149010.P5032710955429962026

`A028310(A149009(n)+A011844(n))`
-/

namespace A149010.P5032710955429962026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A149009 n + A011844 n).toNat

end

end A149010.P5032710955429962026

/-! ## A149010.P15566875755398557427

`A149009(n)+A044941(A000302(n))`
-/

namespace A149010.P15566875755398557427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149009 n + A044941 (A000302 n).toNat

end

end A149010.P15566875755398557427

/-! ## A149010.P1194181026967178807

`A149009(n)+A014159(A149011(n))`
-/

namespace A149010.P1194181026967178807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149009 n + A014159 (A149011 n).toNat

end

end A149010.P1194181026967178807

/-! ## A149010.P9259509170570002877

`A149009(n)+A056594(A148995(n))`
-/

namespace A149010.P9259509170570002877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149009 n + A056594 (A148995 n).toNat

end

end A149010.P9259509170570002877

/-!
# A149011: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A149011, there is no canonical definition to state claims against.
-/

/-! ## A149011.P14354274528186377347

`A195072(A150184(n))`
-/

namespace A149011.P14354274528186377347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (A150184 n).toNat

end

end A149011.P14354274528186377347

/-! ## A149011.P10184238648102155313

`A233386(A148887(n))+A148928(n)`
-/

namespace A149011.P10184238648102155313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233386 (A148887 n).toNat + A148928 n

end

end A149011.P10184238648102155313

/-! ## A149011.P7827538790830838187

`or(A220658(A150792(n)), A257564(n))`
-/

namespace A149011.P7827538790830838187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A220658 (A150792 n).toNat) (A257564 n)

end

end A149011.P7827538790830838187

/-!
# A149012: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149012, there is no canonical definition to state claims against.
-/

/-! ## A149012.P3267352218261582695

`A065033(A149018(n)+A148998(n))`
-/

namespace A149012.P3267352218261582695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A149018 n + A148998 n).toNat

end

end A149012.P3267352218261582695

/-! ## A149012.P6173052825969505405

`A209081(A149585(n))`
-/

namespace A149012.P6173052825969505405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209081 (A149585 n).toNat

end

end A149012.P6173052825969505405

/-! ## A149012.P3184658243896854090

`A276798(A192882(n+1))`
-/

namespace A149012.P3184658243896854090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A192882 (n + 1)).toNat

end

end A149012.P3184658243896854090

/-!
# A149013: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A149013, there is no canonical definition to state claims against.
-/

/-! ## A149013.P9793398047780590589

`A149014(n)-A275947(A135881(n))`
-/

namespace A149013.P9793398047780590589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149014 n - A275947 (A135881 n).toNat

end

end A149013.P9793398047780590589

/-! ## A149013.P11237079478432862002

`A149014(A073788(n))`
-/

namespace A149013.P11237079478432862002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149014 (A073788 n).toNat

end

end A149013.P11237079478432862002

/-! ## A149013.P14695072123178298482

`A117922(A149014(n))`
-/

namespace A149013.P14695072123178298482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117922 (A149014 n).toNat

end

end A149013.P14695072123178298482

/-!
# A149014: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A149014, there is no canonical definition to state claims against.
-/

/-! ## A149014.P16351936082806797512

`A275947(A135881(n))+A149013(n)`
-/

namespace A149014.P16351936082806797512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 (A135881 n).toNat + A149013 n

end

end A149014.P16351936082806797512

/-! ## A149014.P2387089833842283384

`or(A000161(A177476(n)), A149013(n))`
-/

namespace A149014.P2387089833842283384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000161 (A177476 n).toNat) (A149013 n)

end

end A149014.P2387089833842283384

/-! ## A149014.P10062712798551181448

`or(A149013(n), A202954(A010352(n+1)))`
-/

namespace A149014.P10062712798551181448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149013 n) (A202954 (A010352 (n + 1)).toNat)

end

end A149014.P10062712798551181448

/-! ## A149014.P604440404906334477

`or(A149013(n), A202954(A318849(n+1)))`
-/

namespace A149014.P604440404906334477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149013 n) (A202954 (A318849 (n + 1)).toNat)

end

end A149014.P604440404906334477

/-!
# A149015: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 0, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A149015, there is no canonical definition to state claims against.
-/

/-! ## A149015.P7434324704955240000

`A138311(A149013(n))`
-/

namespace A149015.P7434324704955240000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A149013 n).toNat

end

end A149015.P7434324704955240000

/-! ## A149015.P11022351705551662204

`A138311(A149014(n))`
-/

namespace A149015.P11022351705551662204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A149014 n).toNat

end

end A149015.P11022351705551662204

/-! ## A149015.P3131045156409321296

`A265384(A105476(n))`
-/

namespace A149015.P3131045156409321296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265384 (A105476 n).toNat

end

end A149015.P3131045156409321296

/-!
# A149016: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, -1, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A149016, there is no canonical definition to state claims against.
-/

/-! ## A149016.P14932658674990248578

`A248231(A188312(n)+A003415(n))`
-/

namespace A149016.P14932658674990248578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A188312 n + A003415 n).toNat

end

end A149016.P14932658674990248578

/-! ## A149016.P12061093755440584704

`or(A001949(2*(n+1)), A291295(A275176(n+2)))`
-/

namespace A149016.P12061093755440584704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001949 (2 * (n + 1))) (A291295 (A275176 (n + 2)).toNat)

end

end A149016.P12061093755440584704

/-!
# A149017: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149017, there is no canonical definition to state claims against.
-/

/-! ## A149017.P6187068609422787522

`A138999(A148433(n+2))`
-/

namespace A149017.P6187068609422787522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A148433 (n + 2)).toNat

end

end A149017.P6187068609422787522

/-! ## A149017.P17973718404059628456

`or(A149013(n), A185711(A005651(n)))`
-/

namespace A149017.P17973718404059628456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149013 n) (A185711 (A005651 n).toNat)

end

end A149017.P17973718404059628456

/-! ## A149017.P12716314117153276641

`A162371(or(A056827(n), A149016(n)))`
-/

namespace A149017.P12716314117153276641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162371 (Int.lor (A056827 n) (A149016 n)).toNat

end

end A149017.P12716314117153276641

/-!
# A149018: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A149018, there is no canonical definition to state claims against.
-/

/-! ## A149018.P9335198533377190673

`A256502(A149465(n)+A005822(n))`
-/

namespace A149018.P9335198533377190673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A149465 n + A005822 n).toNat

end

end A149018.P9335198533377190673

/-! ## A149018.P13817509437913529860

`A007078(A005773(n))`
-/

namespace A149018.P13817509437913529860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007078 (A005773 n).toNat

end

end A149018.P13817509437913529860

/-!
# A149019: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149019, there is no canonical definition to state claims against.
-/

/-! ## A149019.P13964443537056511559

`A002212(n)-A282290(A100071(n))`
-/

namespace A149019.P13964443537056511559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n - A282290 (A100071 n).toNat

end

end A149019.P13964443537056511559

/-! ## A149019.P16873239318110840092

`A002212(n)-A343030(A342326(n))`
-/

namespace A149019.P16873239318110840092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n - A343030 (A342326 n).toNat

end

end A149019.P16873239318110840092

/-! ## A149019.P1054951147318207454

`or(A002095(n), A248180(A071357(n)))`
-/

namespace A149019.P1054951147318207454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002095 n) (A248180 (A071357 n).toNat)

end

end A149019.P1054951147318207454

/-!
# A149020: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A149020, there is no canonical definition to state claims against.
-/

/-! ## A149020.P4941904370647216561

`A142727(and(A148977(n), A148985(n)))`
-/

namespace A149020.P4941904370647216561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142727 (Int.land (A148977 n) (A148985 n)).toNat

end

end A149020.P4941904370647216561

/-! ## A149020.P4176799413024269370

`A110656(or(A255449(n), A352659(n)))`
-/

namespace A149020.P4176799413024269370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Int.lor (A255449 n) (A352659 n)).toNat

end

end A149020.P4176799413024269370

/-! ## A149020.P14626436187250490859

`A247908(A149562(n)-A006667(n+1))`
-/

namespace A149020.P14626436187250490859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A149562 n - A006667 (n + 1)).toNat

end

end A149020.P14626436187250490859

/-!
# A149021: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149021, there is no canonical definition to state claims against.
-/

/-! ## A149021.P9452338616147394174

`A004277(A149024(n))-A149026(n)`
-/

namespace A149021.P9452338616147394174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149024 n).toNat - A149026 n

end

end A149021.P9452338616147394174

/-! ## A149021.P668414107821523256

`2*A149024(n)-A038810(A149613(n))`
-/

namespace A149021.P668414107821523256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A149024 n - A038810 (A149613 n).toNat

end

end A149021.P668414107821523256

/-! ## A149021.P8848700993956247157

`or(A256701(A012855(n+2)), A287822(2*n+3))`
-/

namespace A149021.P8848700993956247157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A256701 (A012855 (n + 2)).toNat) (A287822 (2 * n + 3))

end

end A149021.P8848700993956247157

/-!
# A149022: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149022, there is no canonical definition to state claims against.
-/

/-! ## A149022.P5715917140962251187

`A004277(A149025(n))-A149027(n)`
-/

namespace A149022.P5715917140962251187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149025 n).toNat - A149027 n

end

end A149022.P5715917140962251187

/-! ## A149022.P17296589083201233665

`A318118(n)-A319514(A015461(n))`
-/

namespace A149022.P17296589083201233665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318118 n - A319514 (A015461 n).toNat

end

end A149022.P17296589083201233665

/-! ## A149022.P3304113619512071027

`2*A149025(n)-A302478(A148883(n))`
-/

namespace A149022.P3304113619512071027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A149025 n - A302478 (A148883 n).toNat

end

end A149022.P3304113619512071027

/-!
# A149023: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149023, there is no canonical definition to state claims against.
-/

/-! ## A149023.P15888710142936926822

`A244970(10*a(n-3)+3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=9`
-/

namespace A149023.P15888710142936926822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 9] fun n a =>
  A244970 (10 * a (n - 3) + 3).toNat

end

end A149023.P15888710142936926822

/-! ## A149023.P14153169116191955424

`A007078(A131408(n))`
-/

namespace A149023.P14153169116191955424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007078 (A131408 n).toNat

end

end A149023.P14153169116191955424

/-!
# A149024: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149024, there is no canonical definition to state claims against.
-/

/-! ## A149024.P4780753786645289409

`A004526(A149026(n)+A149021(n))`
-/

namespace A149024.P4780753786645289409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149026 n + A149021 n).toNat

end

end A149024.P4780753786645289409

/-! ## A149024.P10934334892198959125

`A110654(A149026(n)+A149021(n))`
-/

namespace A149024.P10934334892198959125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A149026 n + A149021 n).toNat

end

end A149024.P10934334892198959125

/-! ## A149024.P1990064734364797243

`A325563(A149026(n)+A149021(n))`
-/

namespace A149024.P1990064734364797243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (A149026 n + A149021 n).toNat

end

end A149024.P1990064734364797243

/-! ## A149024.P8207264939464124687

`A110654(A149021(n)-(1-A149026(n)))`
-/

namespace A149024.P8207264939464124687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A149021 n - (1 - A149026 n)).toNat

end

end A149024.P8207264939464124687

/-!
# A149025: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149025, there is no canonical definition to state claims against.
-/

/-! ## A149025.P12527950615702667408

`A004526(A149027(n)+A149022(n))`
-/

namespace A149025.P12527950615702667408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149027 n + A149022 n).toNat

end

end A149025.P12527950615702667408

/-! ## A149025.P12220904256093770437

`A110654(A149027(n)+A149022(n))`
-/

namespace A149025.P12220904256093770437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A149027 n + A149022 n).toNat

end

end A149025.P12220904256093770437

/-! ## A149025.P4045367221830033889

`A123108(A149027(n)+A149022(n))`
-/

namespace A149025.P4045367221830033889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A149027 n + A149022 n).toNat

end

end A149025.P4045367221830033889

/-! ## A149025.P10785059611213889093

`A110654(A149022(n)-(1-A149027(n)))`
-/

namespace A149025.P10785059611213889093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A149022 n - (1 - A149027 n)).toNat

end

end A149025.P10785059611213889093

/-!
# A149026: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149026, there is no canonical definition to state claims against.
-/

/-! ## A149026.P525200874183152585

`A004277(A149024(n))-A149021(n)`
-/

namespace A149026.P525200874183152585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149024 n).toNat - A149021 n

end

end A149026.P525200874183152585

/-! ## A149026.P14926932877218552243

`A038810(A149613(n))`
-/

namespace A149026.P14926932877218552243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038810 (A149613 n).toNat

end

end A149026.P14926932877218552243

/-!
# A149027: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149027, there is no canonical definition to state claims against.
-/

/-! ## A149027.P8563265866159843437

`A004277(A149025(n))-A149022(n)`
-/

namespace A149027.P8563265866159843437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A149025 n).toNat - A149022 n

end

end A149027.P8563265866159843437

/-! ## A149027.P3174395607090489561

`A302478(A148883(n))`
-/

namespace A149027.P3174395607090489561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (A148883 n).toNat

end

end A149027.P3174395607090489561

/-!
# A149028: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A149028, there is no canonical definition to state claims against.
-/

/-! ## A149028.P13185471150968646559

`A108954((∑[n+2]-1)*a(n-1)+1)` with `a(0)=1`
-/

namespace A149028.P13185471150968646559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108954 ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * a (n - 1) + 1).toNat

end

end A149028.P13185471150968646559

/-! ## A149028.P17959693516134798357

`A349536(A148924(n))`
-/

namespace A149028.P17959693516134798357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A148924 n).toNat

end

end A149028.P17959693516134798357

/-! ## A149028.P11278807953491919364

`A241183(6*A149039(n))`
-/

namespace A149028.P11278807953491919364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241183 (6 * A149039 n).toNat

end

end A149028.P11278807953491919364

/-!
# A149029: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A149029, there is no canonical definition to state claims against.
-/

/-! ## A149029.P1847857119332166240

`A192419(A052872(n))`
-/

namespace A149029.P1847857119332166240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192419 (A052872 n).toNat

end

end A149029.P1847857119332166240

/-! ## A149029.P17047628411424704555

`A192419(A122452(n))`
-/

namespace A149029.P17047628411424704555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192419 (A122452 n).toNat

end

end A149029.P17047628411424704555

/-! ## A149029.P4491090077481003901

`A192419(A148993(n))`
-/

namespace A149029.P4491090077481003901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192419 (A148993 n).toNat

end

end A149029.P4491090077481003901

/-!
# A149030: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A149030, there is no canonical definition to state claims against.
-/

/-! ## A149030.P17600631017151026078

`A220658(A150815(n))`
-/

namespace A149030.P17600631017151026078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A150815 n).toNat

end

end A149030.P17600631017151026078

/-! ## A149030.P12898098657657590781

`A195174(2*A063032(n+2))`
-/

namespace A149030.P12898098657657590781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (2 * A063032 (n + 2)).toNat

end

end A149030.P12898098657657590781

/-!
# A149031: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (1, -1, 0), (1, 0, 1)}.

The programs for A149031, there is no canonical definition to state claims against.
-/

/-! ## A149031.P12234232087360538787

`A332086(A277871(n))`
-/

namespace A149031.P12234232087360538787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A277871 n).toNat

end

end A149031.P12234232087360538787

/-! ## A149031.P8209248836963041285

`A256502(A192882(n)+A016116(n))`
-/

namespace A149031.P8209248836963041285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A192882 n + A016116 n).toNat

end

end A149031.P8209248836963041285

/-! ## A149031.P15206589647804465467

`A248231(A239230(n)+A219260(n))`
-/

namespace A149031.P15206589647804465467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A239230 n + A219260 n).toNat

end

end A149031.P15206589647804465467

/-!
# A149032: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A149032, there is no canonical definition to state claims against.
-/

/-! ## A149032.P3962059689973239977

`A110655(A337268(n)-A007051(n))`
-/

namespace A149032.P3962059689973239977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A337268 n - A007051 n).toNat

end

end A149032.P3962059689973239977

/-! ## A149032.P5559967179955507802

`round((A001222(A103333(n))+n)^(n/3))`
-/

namespace A149032.P5559967179955507802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001222 (A103333 n).toNat + (n : ℤ) : ℝ) ^ ((n : ℚ) / 3 : ℝ))

end

end A149032.P5559967179955507802

/-! ## A149032.P18400312654345389232

`A332872(n)+A127886(A008987(n))`
-/

namespace A149032.P18400312654345389232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332872 n + A127886 (A008987 n).toNat

end

end A149032.P18400312654345389232

/-!
# A149033: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A149033, there is no canonical definition to state claims against.
-/

/-! ## A149033.P10361009619112558582

`A070564(A151089(n))`
-/

namespace A149033.P10361009619112558582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070564 (A151089 n).toNat

end

end A149033.P10361009619112558582

/-! ## A149033.P17073543476203438499

`A247913(A148490(n))`
-/

namespace A149033.P17073543476203438499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247913 (A148490 n).toNat

end

end A149033.P17073543476203438499

/-! ## A149033.P3537345023544163720

`A229950(n)+A124288(A000085(n))`
-/

namespace A149033.P3537345023544163720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229950 n + A124288 (A000085 n).toNat

end

end A149033.P3537345023544163720

/-!
# A149034: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, -1, 0), (1, 0, 1)}.

The programs for A149034, there is no canonical definition to state claims against.
-/

/-! ## A149034.P7043049667150678130

`A138999(2^n+4^n-(2^n-1)*(2^n-2)/6)`
-/

namespace A149034.P7043049667150678130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (SequenceMachineLib.roundAway ((2 ^ n + 4 ^ n : ℚ) - ((2 ^ n : ℤ) - 1 : ℚ) * (((2 ^ n : ℤ) - 2 : ℚ) / 6))).toNat

end

end A149034.P7043049667150678130

/-! ## A149034.P11688190997705020519

`A195177(A149967(n+1))`
-/

namespace A149034.P11688190997705020519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A149967 (n + 1)).toNat

end

end A149034.P11688190997705020519

/-! ## A149034.P4418984154971562124

`A127757(∑[n]*A155888(n)+1)`
-/

namespace A149034.P4418984154971562124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A155888 n + 1).toNat

end

end A149034.P4418984154971562124

/-!
# A149035: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A149035, there is no canonical definition to state claims against.
-/

/-! ## A149035.P10563747158519548942

`A004525(A181879(n))+(n-1)^(n%2)`
-/

namespace A149035.P10563747158519548942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A181879 n).toNat + ((n : ℤ) - 1) ^ (n % 2)

end

end A149035.P10563747158519548942

/-! ## A149035.P13627446181842249428

`A124625(n)+A004525(A181879(n))`
-/

namespace A149035.P13627446181842249428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n + A004525 (A181879 n).toNat

end

end A149035.P13627446181842249428

/-! ## A149035.P9761940300504937797

`A320536(A149488(n)+A078789(n))`
-/

namespace A149035.P9761940300504937797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A149488 n + A078789 n).toNat

end

end A149035.P9761940300504937797

/-!
# A149036: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A149036, there is no canonical definition to state claims against.
-/

/-! ## A149036.P14890236797732715021

`or(A088218(n), A130845(A126752(n+1)))`
-/

namespace A149036.P14890236797732715021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088218 n) (A130845 (A126752 (n + 1)).toNat)

end

end A149036.P14890236797732715021

/-! ## A149036.P4961511273383936373

`or(A088218(n), A233780(A177723(n+1)))`
-/

namespace A149036.P4961511273383936373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088218 n) (A233780 (A177723 (n + 1)).toNat)

end

end A149036.P4961511273383936373

/-! ## A149036.P16564043553677266045

`C(A000523(2*C(3*n, n)/(n+1)), 2^floor(n/2))`
-/

namespace A149036.P16564043553677266045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000523 (SequenceMachineLib.roundAway (2 * ((Nat.choose (3 * n) n : ℚ) / (n + 1 : ℚ)))).toNat).toNat (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A149036.P16564043553677266045

/-!
# A149037: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A149037, there is no canonical definition to state claims against.
-/

/-! ## A149037.P4758533446108262908

`A358374(A332052(n))-n`
-/

namespace A149037.P4758533446108262908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358374 (A332052 n).toNat - (n : ℤ)

end

end A149037.P4758533446108262908

/-! ## A149037.P13505192138483982543

`A341143(A347775(n)+∑[n])`
-/

namespace A149037.P13505192138483982543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341143 ((A347775 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat + 22)

end

end A149037.P13505192138483982543

/-! ## A149037.P1751280846279142535

`A003080(n)+A003074(A150892(n))`
-/

namespace A149037.P1751280846279142535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003080 n + A003074 (A150892 n).toNat

end

end A149037.P1751280846279142535

/-!
# A149038: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A149038, there is no canonical definition to state claims against.
-/

/-! ## A149038.P12531950769023912533

`A002212(n)-A037823(A005340(n))`
-/

namespace A149038.P12531950769023912533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n - A037823 (A005340 (n + 12)).toNat

end

end A149038.P12531950769023912533

/-! ## A149038.P2143095513707784888

`A002212(n)-A031346(A272395(n))`
-/

namespace A149038.P2143095513707784888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n - A031346 (A272395 n).toNat

end

end A149038.P2143095513707784888

/-! ## A149038.P4799856795257554039

`A002212(n)-A352822(A103620(n))`
-/

namespace A149038.P4799856795257554039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n - A352822 (A103620 n).toNat

end

end A149038.P4799856795257554039

/-!
# A149039: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A149039, there is no canonical definition to state claims against.
-/

/-! ## A149039.P758443523155671799

`A008676(A083706(2*n)+5)`
-/

namespace A149039.P758443523155671799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A083706 (2 * n) + 5).toNat

end

end A149039.P758443523155671799

/-! ## A149039.P10224008969979089292

`A008676(A055938(n+2)+2*4^n-n%2+1)`
-/

namespace A149039.P10224008969979089292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A055938 (n + 2) + (2 * 4 ^ n : ℤ) - ((n % 2 : ℕ) : ℤ) + 1).toNat

end

end A149039.P10224008969979089292

/-! ## A149039.P15632088000814279023

`A008612(n)+A008612(A135343(n))`
-/

namespace A149039.P15632088000814279023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n + A008612 (A135343 n).toNat

end

end A149039.P15632088000814279023

/-!
# A149040: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A149040, there is no canonical definition to state claims against.
-/

/-! ## A149040.P7331201873064735736

`A317081(n)*A324701(A293994(n))`
-/

namespace A149040.P7331201873064735736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317081 n * A324701 (A293994 n).toNat

end

end A149040.P7331201873064735736

/-! ## A149040.P4630456568282287192

`A354579(3*(n+1))+A162342(A011782(n))`
-/

namespace A149040.P4630456568282287192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (3 * (n + 1)) + A162342 (A011782 n).toNat

end

end A149040.P4630456568282287192

/-! ## A149040.P4578646706579332776

`A162342(A011782(n))+A058060(3*n+2)`
-/

namespace A149040.P4578646706579332776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162342 (A011782 n).toNat + A058060 (3 * n + 2)

end

end A149040.P4578646706579332776

/-!
# A149041: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A149041, there is no canonical definition to state claims against.
-/

/-! ## A149041.P2874984211316303332

`A156562(A149442(n))`
-/

namespace A149041.P2874984211316303332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A149442 n).toNat

end

end A149041.P2874984211316303332

/-! ## A149041.P17140478609403715400

`A213908(A106228(n))`
-/

namespace A149041.P17140478609403715400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213908 (A106228 n).toNat

end

end A149041.P17140478609403715400

/-! ## A149041.P17620204856050019073

`A248180(A150115(n))`
-/

namespace A149041.P17620204856050019073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A150115 n).toNat

end

end A149041.P17620204856050019073

/-!
# A149042: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A149042, there is no canonical definition to state claims against.
-/

/-! ## A149042.P116948275023958721

`A213908(A148493(n))`
-/

namespace A149042.P116948275023958721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213908 (A148493 n).toNat

end

end A149042.P116948275023958721

/-! ## A149042.P6299125762288305762

`A213908(A148494(n))`
-/

namespace A149042.P6299125762288305762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213908 (A148494 n).toNat

end

end A149042.P6299125762288305762

/-! ## A149042.P4628012049345879895

`A256700(A247195(n+1))`
-/

namespace A149042.P4628012049345879895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256700 (A247195 (n + 1)).toNat

end

end A149042.P4628012049345879895

/-!
# A149043: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A149043, there is no canonical definition to state claims against.
-/

/-! ## A149043.P8484170878541714416

`A194467(A219261(n))`
-/

namespace A149043.P8484170878541714416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194467 (A219261 n).toNat

end

end A149043.P8484170878541714416

/-! ## A149043.P15994421310875321130

`A292381(A000142(n))+A081610(A046992(n+1))`
-/

namespace A149043.P15994421310875321130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292381 (A000142 n).toNat + A081610 (A046992 (n + 1)).toNat

end

end A149043.P15994421310875321130

/-!
# A149044: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A149044, there is no canonical definition to state claims against.
-/

/-! ## A149044.P5441013165025458845

`A132145(A129247(n))-1`
-/

namespace A149044.P5441013165025458845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132145 (A129247 n).toNat - 1

end

end A149044.P5441013165025458845

/-! ## A149044.P15625490899494331980

`A008616(4*A150345(n))`
-/

namespace A149044.P15625490899494331980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (4 * A150345 n).toNat

end

end A149044.P15625490899494331980

/-! ## A149044.P12074657991704221453

`or(∏{p}[n, #]-1, A156562(A149386(n)))`
-/

namespace A149044.P12074657991704221453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - 1) (A156562 (A149386 n).toNat)

end

end A149044.P12074657991704221453

/-!
# A149045: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A149045, there is no canonical definition to state claims against.
-/

/-! ## A149045.P14096355701870857813

`A156562(A149386(n)+char[4])`
-/

namespace A149045.P14096355701870857813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A149386 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A149045.P14096355701870857813

/-! ## A149045.P13694720496094839578

`A113545(A057693(n)+n²%3)-and(1, n)`
-/

namespace A149045.P13694720496094839578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113545 (A057693 n + ((n ^ 2 % 3 : ℕ) : ℤ)).toNat - (Nat.land 1 n : ℤ)

end

end A149045.P13694720496094839578

/-! ## A149045.P4030779034763905591

`A156562(A149386(n))+A063730(n)`
-/

namespace A149045.P4030779034763905591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A149386 n).toNat + A063730 n

end

end A149045.P4030779034763905591

/-!
# A149046: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A149046, there is no canonical definition to state claims against.
-/

/-! ## A149046.P15745739614040444635

`A217538(A150933(n))`
-/

namespace A149046.P15745739614040444635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217538 (A150933 n).toNat

end

end A149046.P15745739614040444635

/-! ## A149046.P3236624968466726112

`A356005(A150787(n))`
-/

namespace A149046.P3236624968466726112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356005 (A150787 n).toNat

end

end A149046.P3236624968466726112

/-!
# A149047: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A149047, there is no canonical definition to state claims against.
-/

/-! ## A149047.P13269418906960115011

`A241085(A354399(n+2))`
-/

namespace A149047.P13269418906960115011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241085 (A354399 (n + 2)).toNat

end

end A149047.P13269418906960115011

/-! ## A149047.P3203623257817504890

`A241085(A357370(n+2))`
-/

namespace A149047.P3203623257817504890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241085 (A357370 (n + 2)).toNat

end

end A149047.P3203623257817504890

/-!
# A149048: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A149048, there is no canonical definition to state claims against.
-/

/-! ## A149048.P10644693489813674953

`A194640(A149603(n))`
-/

namespace A149048.P10644693489813674953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A149603 n).toNat

end

end A149048.P10644693489813674953

/-! ## A149048.P13766828291280483018

`A149219(n)-A196096(A149209(n))`
-/

namespace A149048.P13766828291280483018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149219 n - A196096 (A149209 n).toNat

end

end A149048.P13766828291280483018

/-! ## A149048.P8961240770391376746

`A318118(n)-A360118(A001187(n))`
-/

namespace A149048.P8961240770391376746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318118 n - A360118 (A001187 n).toNat

end

end A149048.P8961240770391376746

/-!
# A149049: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149049, there is no canonical definition to state claims against.
-/

/-! ## A149049.P15638897850066461850

`A358374(or(1, 2^n-1))`
-/

namespace A149049.P15638897850066461850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358374 (Int.lor 1 ((2 ^ n : ℤ) - 1)).toNat

end

end A149049.P15638897850066461850

/-! ## A149049.P8624642445582652645

`A109950(2^n+abs(1-n))`
-/

namespace A149049.P8624642445582652645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109950 ((2 ^ n : ℤ) + |1 - (n : ℤ)|).toNat

end

end A149049.P8624642445582652645

/-!
# A149050: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A149050, there is no canonical definition to state claims against.
-/

/-! ## A149050.P10321252648031902290

`A137588(A151127(n)+A135312(n))`
-/

namespace A149050.P10321252648031902290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A151127 n + A135312 n).toNat

end

end A149050.P10321252648031902290

/-! ## A149050.P8876934003810303727

`A002265(A202124(n+1)+A192402(n))`
-/

namespace A149050.P8876934003810303727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A202124 (n + 1) + A192402 n).toNat

end

end A149050.P8876934003810303727

/-! ## A149050.P4571182752761129657

`A110657(A151055(n))-A227625(n+1)`
-/

namespace A149050.P4571182752761129657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A151055 n).toNat - A227625 (n + 1)

end

end A149050.P4571182752761129657

/-!
# A149051: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149051, there is no canonical definition to state claims against.
-/

/-! ## A149051.P14818258145557900672

`or(∑[char[3*n]], A108161(A182028(n)))`
-/

namespace A149051.P14818258145557900672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A108161 (A182028 n).toNat)

end

end A149051.P14818258145557900672

/-! ## A149051.P2507693745006963541

`A149352(n)-A001222(A162633(n))`
-/

namespace A149051.P2507693745006963541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149352 n - A001222 (A162633 n).toNat

end

end A149051.P2507693745006963541

/-!
# A149052: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149052, there is no canonical definition to state claims against.
-/

/-! ## A149052.P7537121865806098048

`A194979(A149697(n)-A345334(n+1))`
-/

namespace A149052.P7537121865806098048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A149697 n - A345334 (n + 1)).toNat

end

end A149052.P7537121865806098048

/-! ## A149052.P1492867821674831758

`A136509(n)-A123580(A000225(n))`
-/

namespace A149052.P1492867821674831758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136509 n - A123580 (A000225 n).toNat

end

end A149052.P1492867821674831758

/-! ## A149052.P3863900763938700336

`A000598(n)*A003055(A115308(n+1))`
-/

namespace A149052.P3863900763938700336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000598 n * A003055 (A115308 (n + 1)).toNat

end

end A149052.P3863900763938700336

/-!
# A149053: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149053, there is no canonical definition to state claims against.
-/

/-! ## A149053.P17253656095686580104

`A122797(Δ[A006901(n+1)]-A004525(n))`
-/

namespace A149053.P17253656095686580104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (f1 (n + 1) - f1 n - A004525 n).toNat

end

end A149053.P17253656095686580104

/-! ## A149053.P15927659962060568366

`A175230(a(n-1))+2` with `a(0)=1, a(1)=1`
-/

namespace A149053.P15927659962060568366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A175230 (a (n - 1)).toNat + 2

end

end A149053.P15927659962060568366

/-!
# A149054: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149054, there is no canonical definition to state claims against.
-/

/-! ## A149054.P15222935676855413845

`A138311(A149055(n))`
-/

namespace A149054.P15222935676855413845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A149055 n).toNat

end

end A149054.P15222935676855413845

/-! ## A149054.P3860123067289793109

`A064288(A213324(n))+A006095(n)`
-/

namespace A149054.P3860123067289793109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064288 (A213324 n).toNat + A006095 n

end

end A149054.P3860123067289793109

/-! ## A149054.P12156601848238096703

`A149055(n)-A011695(A004211(n))`
-/

namespace A149054.P12156601848238096703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149055 n - A011695 (A004211 n).toNat

end

end A149054.P12156601848238096703

/-!
# A149055: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149055, there is no canonical definition to state claims against.
-/

/-! ## A149055.P6698660023248188641

`A138311(A149054(n))`
-/

namespace A149055.P6698660023248188641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A149054 n).toNat

end

end A149055.P6698660023248188641

/-! ## A149055.P18192047994655117998

`A149054(n)+A055641(A081568(n))`
-/

namespace A149055.P18192047994655117998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149054 n + A055641 (A081568 n).toNat

end

end A149055.P18192047994655117998

/-!
# A149056: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149056, there is no canonical definition to state claims against.
-/

/-! ## A149056.P14392384271823669657

`A149057(n)-A086826(A325918(n))`
-/

namespace A149056.P14392384271823669657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149057 n - A086826 (A325918 n).toNat

end

end A149056.P14392384271823669657

/-! ## A149056.P5597684393661604750

`A276183(or(61, ∑[2^n+3*4^n]))-char[6]`
-/

namespace A149056.P5597684393661604750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 3 * 4 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (Nat.lor 61 (∑ j ∈ Finset.range (n + 1), f1 j)) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A149056.P5597684393661604750

/-! ## A149056.P13219375267106544225

`A138311(A149057(n))`
-/

namespace A149056.P13219375267106544225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A149057 n).toNat

end

end A149056.P13219375267106544225

/-!
# A149057: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149057, there is no canonical definition to state claims against.
-/

/-! ## A149057.P2518763188665507871

`A149056(n)+A086826(A325918(n))`
-/

namespace A149057.P2518763188665507871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149056 n + A086826 (A325918 n).toNat

end

end A149057.P2518763188665507871

/-! ## A149057.P15532077175076571044

`A276183(or(61, ∑[2^n+3*4^n]))`
-/

namespace A149057.P15532077175076571044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 3 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (Nat.lor 61 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A149057.P15532077175076571044

/-! ## A149057.P15512619072508085624

`A138311(A149056(n))`
-/

namespace A149057.P15512619072508085624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A149056 n).toNat

end

end A149057.P15512619072508085624

/-!
# A149058: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149058, there is no canonical definition to state claims against.
-/

/-! ## A149058.P3319697608377663763

`A109085(n)+A006667(A081135(n)+1)`
-/

namespace A149058.P3319697608377663763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109085 n + A006667 (A081135 n + 1).toNat

end

end A149058.P3319697608377663763

/-! ## A149058.P16248252342377742637

`A194640(A026525(n))`
-/

namespace A149058.P16248252342377742637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A026525 n).toNat

end

end A149058.P16248252342377742637

/-!
# A149059: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149059, there is no canonical definition to state claims against.
-/

/-! ## A149059.P11083403596621692322

`2*A000005((n*a(n-1))²)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A149059.P11083403596621692322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * A000005 (((n : ℤ) * a (n - 1)) ^ 2).toNat

end

end A149059.P11083403596621692322

/-! ## A149059.P18046109150392758629

`A000010(round(sqrt(n+1))²^n+2)/2`
-/

namespace A149059.P18046109150392758629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2) ^ n + 2).toNat : ℚ) / 2

end

end A149059.P18046109150392758629

/-!
# A149060: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A149060, there is no canonical definition to state claims against.
-/

/-! ## A149060.P466525912681133585

`A187185(4^n+2*n+1)`
-/

namespace A149060.P466525912681133585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (4 ^ n + 2 * n + 1)

end

end A149060.P466525912681133585

/-! ## A149060.P13359203108446831821

`A217538(A150951(n))`
-/

namespace A149060.P13359203108446831821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217538 (A150951 n).toNat

end

end A149060.P13359203108446831821

/-! ## A149060.P10974072937506939616

`A248180(A148482(n+1))`
-/

namespace A149060.P10974072937506939616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A148482 (n + 1)).toNat

end

end A149060.P10974072937506939616

/-!
# A149061: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, 1, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A149061, there is no canonical definition to state claims against.
-/

/-! ## A149061.P4830607596564142069

`A136250(A372375(n+1))`
-/

namespace A149061.P4830607596564142069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136250 (A372375 (n + 1)).toNat

end

end A149061.P4830607596564142069

/-! ## A149061.P9304618904188904614

`or(1, A008621(A012493(n)))`
-/

namespace A149061.P9304618904188904614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008621 (A012493 n).toNat)

end

end A149061.P9304618904188904614

/-!
# A149062: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, 1, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A149062, there is no canonical definition to state claims against.
-/

/-! ## A149062.P13475867366494377199

`or(1, A292648(A165535(n)))`
-/

namespace A149062.P13475867366494377199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A292648 (A165535 n).toNat)

end

end A149062.P13475867366494377199

/-! ## A149062.P13147386120050368246

`or(record[A084888(n)], A149061(n))`
-/

namespace A149062.P13147386120050368246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A149061 n)

end

end A149062.P13147386120050368246

/-! ## A149062.P13726080013935409830

`A266193(A000302(n))-(2^n-2)`
-/

namespace A149062.P13726080013935409830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (A000302 n).toNat - ((2 ^ n : ℤ) - 2)

end

end A149062.P13726080013935409830

/-!
# A149063: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A149063, there is no canonical definition to state claims against.
-/

/-! ## A149063.P8065212923162178389

`A070564(A151171(n))`
-/

namespace A149063.P8065212923162178389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070564 (A151171 n).toNat

end

end A149063.P8065212923162178389

/-! ## A149063.P5460583510686157899

`A138999(A150134(n+1))`
-/

namespace A149063.P5460583510686157899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A150134 (n + 1)).toNat

end

end A149063.P5460583510686157899

/-! ## A149063.P18200351640175248954

`A248180(A112806(n+1))`
-/

namespace A149063.P18200351640175248954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A112806 (n + 1)).toNat

end

end A149063.P18200351640175248954

/-!
# A149064: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A149064, there is no canonical definition to state claims against.
-/

/-! ## A149064.P2904317826301112791

`A008621(Δ[A149977(n)])`
-/

namespace A149064.P2904317826301112791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f1 (n + 1) - f1 n).toNat

end

end A149064.P2904317826301112791

/-! ## A149064.P4814104449505797547

`A110655(A339037(n+1))`
-/

namespace A149064.P4814104449505797547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A339037 (n + 1)).toNat

end

end A149064.P4814104449505797547

/-! ## A149064.P2693822444723444060

`A187182(A339037(n+1)+1)`
-/

namespace A149064.P2693822444723444060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187182 (A339037 (n + 1) + 1).toNat

end

end A149064.P2693822444723444060

/-!
# A149065: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A149065, there is no canonical definition to state claims against.
-/

/-! ## A149065.P6144364371457046842

`Δ[A103221(∑[A150020(n)])]`
-/

namespace A149065.P6144364371457046842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A149065.P6144364371457046842

/-! ## A149065.P6190669440851815867

`A337635(round(sqrt(A363509(2*n))))`
-/

namespace A149065.P6190669440851815867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 (SequenceMachineLib.roundAway (Real.sqrt (A363509 (2 * n) : ℝ))).toNat

end

end A149065.P6190669440851815867

/-! ## A149065.P365653602833531027

`A187185(A095938(n+1)+A026674(n+1))`
-/

namespace A149065.P365653602833531027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A095938 (n + 1) + A026674 (n + 1)).toNat

end

end A149065.P365653602833531027

/-!
# A149066: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A149066, there is no canonical definition to state claims against.
-/

/-! ## A149066.P16792775298032206872

`A064775(A150774(n))`
-/

namespace A149066.P16792775298032206872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064775 (A150774 n).toNat

end

end A149066.P16792775298032206872

/-! ## A149066.P5716079356273827842

`or(1, A194920(A202834(n)))`
-/

namespace A149066.P5716079356273827842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A194920 (A202834 n).toNat)

end

end A149066.P5716079356273827842

/-! ## A149066.P2949521211451005022

`2*A157271(A149067(n))-1`
-/

namespace A149066.P2949521211451005022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157271 (A149067 n).toNat - 1

end

end A149066.P2949521211451005022

/-!
# A149067: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A149067, there is no canonical definition to state claims against.
-/

/-! ## A149067.P16659408402095747878

`A192419(A149066(n))`
-/

namespace A149067.P16659408402095747878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192419 (A149066 n).toNat

end

end A149067.P16659408402095747878

/-! ## A149067.P11282898740058448677

`char[6]+or(1, A194920(A202834(n)))`
-/

namespace A149067.P11282898740058448677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.lor 1 (A194920 (A202834 n).toNat)

end

end A149067.P11282898740058448677

/-! ## A149067.P12777948585160731365

`A200074(n)+A054899(A015531(n))`
-/

namespace A149067.P12777948585160731365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200074 n + A054899 (A015531 n).toNat

end

end A149067.P12777948585160731365

/-!
# A149068: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A149068, there is no canonical definition to state claims against.
-/

/-! ## A149068.P10889126103155473934

`xor(A002265(A001077(n)), A065033(n))`
-/

namespace A149068.P10889126103155473934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002265 (A001077 n).toNat) (A065033 n)

end

end A149068.P10889126103155473934

/-! ## A149068.P1091189678694776395

`xor(A002265(A001077(n)), A248180(n))`
-/

namespace A149068.P1091189678694776395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002265 (A001077 n).toNat) (A248180 n)

end

end A149068.P1091189678694776395

/-! ## A149068.P13479678494360747448

`A002265(xor(A001077(n), A099247(n+3)))`
-/

namespace A149068.P13479678494360747448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.xor (A001077 n) (A099247 (n + 3))).toNat

end

end A149068.P13479678494360747448

/-!
# A149069: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A149069, there is no canonical definition to state claims against.
-/

/-! ## A149069.P4721989051527079131

`A149066(n)+A008651(A052898(n))`
-/

namespace A149069.P4721989051527079131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149066 n + A008651 (A052898 n).toNat

end

end A149069.P4721989051527079131

/-! ## A149069.P2390935175531499639

`A008615(A150876(n)+A069006(n))`
-/

namespace A149069.P2390935175531499639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A150876 n + A069006 n).toNat

end

end A149069.P2390935175531499639

/-! ## A149069.P12194779831045240494

`A211854(n)-A006926(A038020(n))`
-/

namespace A149069.P12194779831045240494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211854 n - A006926 (A038020 n).toNat

end

end A149069.P12194779831045240494

/-!
# A149070: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149070, there is no canonical definition to state claims against.
-/

/-! ## A149070.P15014152710807513764

`A004396(A150240(n)-A082679(n))`
-/

namespace A149070.P15014152710807513764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A150240 n - A082679 n).toNat

end

end A149070.P15014152710807513764

/-! ## A149070.P2475257598764848244

`A004396(A150241(n)-A082679(n))`
-/

namespace A149070.P2475257598764848244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A150241 n - A082679 n).toNat

end

end A149070.P2475257598764848244

/-! ## A149070.P4743276745078758735

`A387141(A119976(n))`
-/

namespace A149070.P4743276745078758735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387141 (A119976 n).toNat

end

end A149070.P4743276745078758735

/-!
# A149071: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149071, there is no canonical definition to state claims against.
-/

/-! ## A149071.P1137527277411288693

`A149072(n)-A107846(A149094(n))`
-/

namespace A149071.P1137527277411288693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149072 n - A107846 (A149094 n).toNat

end

end A149071.P1137527277411288693

/-! ## A149071.P8517098546614719998

`A149072(n)-A085617(A195805(n+1))`
-/

namespace A149071.P8517098546614719998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149072 n - A085617 (A195805 (n + 1)).toNat

end

end A149071.P8517098546614719998

/-! ## A149071.P18429669718135862831

`A000026(A149072(n))`
-/

namespace A149071.P18429669718135862831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A149072 n).toNat

end

end A149071.P18429669718135862831

/-! ## A149071.P13722060119115176708

`A149072(A073789(n))`
-/

namespace A149071.P13722060119115176708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149072 (A073789 n).toNat

end

end A149071.P13722060119115176708

/-!
# A149072: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149072, there is no canonical definition to state claims against.
-/

/-! ## A149072.P2980434043923020340

`A149071(n)+A107846(A149094(n))`
-/

namespace A149072.P2980434043923020340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149071 n + A107846 (A149094 n).toNat

end

end A149072.P2980434043923020340

/-! ## A149072.P5541941868625141051

`A149071(n)+A085617(A195805(n+1))`
-/

namespace A149072.P5541941868625141051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149071 n + A085617 (A195805 (n + 1)).toNat

end

end A149072.P5541941868625141051

/-!
# A149073: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A149073, there is no canonical definition to state claims against.
-/

/-! ## A149073.P2176421342233749955

`A333217(abs(A086456(n))+1)`
-/

namespace A149073.P2176421342233749955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (|A086456 n| + 1).toNat

end

end A149073.P2176421342233749955

/-! ## A149073.P14867630369319511071

`A275851(n)+A185217(∑[n+6]-6)`
-/

namespace A149073.P14867630369319511071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275851 n + A185217 (∑ j ∈ Finset.range (n + 1), f1 j - 6)

end

end A149073.P14867630369319511071

/-! ## A149073.P3398595812087353748

`A002265(A151074(n))+A000055(n)`
-/

namespace A149073.P3398595812087353748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A151074 n).toNat + A000055 n

end

end A149073.P3398595812087353748

/-!
# A149074: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 0, 1), (-1, 1, 0), (1, 0, 0)}.

The programs for A149074, there is no canonical definition to state claims against.
-/

/-! ## A149074.P543173387842286163

`A148529(n)+A004526(A148531(n))`
-/

namespace A149074.P543173387842286163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148529 n + A004526 (A148531 n).toNat

end

end A149074.P543173387842286163

/-! ## A149074.P8955706801041047378

`A148529(n)+A004526(A148532(n))`
-/

namespace A149074.P8955706801041047378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148529 n + A004526 (A148532 n).toNat

end

end A149074.P8955706801041047378

/-! ## A149074.P16336186608424858888

`A148531(n)+A004526(A148524(n))`
-/

namespace A149074.P16336186608424858888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148531 n + A004526 (A148524 n).toNat

end

end A149074.P16336186608424858888

/-! ## A149074.P118712000803915737

`A148532(n)+A004526(A148524(n))`
-/

namespace A149074.P118712000803915737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148532 n + A004526 (A148524 n).toNat

end

end A149074.P118712000803915737

/-! ## A149074.P4319674118965338965

`A005843(A148524(n))-A148053(n)`
-/

namespace A149074.P4319674118965338965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A148524 n).toNat - A148053 n

end

end A149074.P4319674118965338965

/-!
# A149075: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A149075, there is no canonical definition to state claims against.
-/

/-! ## A149075.P2559133214313337182

`A000006(A202234(n+1)-A009375(n))`
-/

namespace A149075.P2559133214313337182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A202234 (n + 1) - A009375 n).toNat

end

end A149075.P2559133214313337182

/-!
# A149076: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 0, 1), (0, 1, -1), (1, 0, -1)}.

The programs for A149076, there is no canonical definition to state claims against.
-/

/-! ## A149076.P15821190782834496380

`A350348(A362650(n))`
-/

namespace A149076.P15821190782834496380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A362650 n).toNat

end

end A149076.P15821190782834496380

/-! ## A149076.P10667069130896135630

`A149552(n)-A002265(A150640(n))`
-/

namespace A149076.P10667069130896135630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149552 n - A002265 (A150640 n).toNat

end

end A149076.P10667069130896135630

/-! ## A149076.P1834653554941608901

`A362650(n)-A138710(A008000(n))`
-/

namespace A149076.P1834653554941608901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362650 n - A138710 (A008000 n).toNat

end

end A149076.P1834653554941608901

/-!
# A149077: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, -1), (1, 1, 1)}.

The programs for A149077, there is no canonical definition to state claims against.
-/

/-! ## A149077.P2935289938614472267

`A149078(A073789(n))`
-/

namespace A149077.P2935289938614472267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149078 (A073789 n).toNat

end

end A149077.P2935289938614472267

/-! ## A149077.P11965218498471950687

`A129607(A149078(n))`
-/

namespace A149077.P11965218498471950687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 (A149078 n).toNat

end

end A149077.P11965218498471950687

/-! ## A149077.P9352810401258751439

`A149078(A171644(n))`
-/

namespace A149077.P9352810401258751439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149078 (A171644 n).toNat

end

end A149077.P9352810401258751439

/-! ## A149077.P7849627761138245201

`A149078(A004869(n+1))`
-/

namespace A149077.P7849627761138245201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149078 (A004869 (n + 1)).toNat

end

end A149077.P7849627761138245201

/-!
# A149079: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149079, there is no canonical definition to state claims against.
-/

/-! ## A149079.P10812407935019916320

`A160715(C(n, floor(n/2)))`
-/

namespace A149079.P10812407935019916320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160715 (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat)

end

end A149079.P10812407935019916320

/-! ## A149079.P12125171260752075648

`A160715((∏[2*or(1, n)/(n+1)]-2)/2+1)`
-/

namespace A149079.P12125171260752075648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160715 (SequenceMachineLib.roundAway ((∏ j ∈ Finset.range (n + 1), f1 j - 2) / 2 + 1)).toNat

end

end A149079.P12125171260752075648

/-! ## A149079.P5422903234421064816

`A160715(A001405(n))`
-/

namespace A149079.P5422903234421064816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160715 (A001405 n).toNat

end

end A149079.P5422903234421064816

/-!
# A149080: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, -1), (1, 1, 1)}.

The programs for A149080, there is no canonical definition to state claims against.
-/

/-! ## A149080.P9089908645906361135

`A333222(A006951(n))-(∑{d}[n+1, #]-2*(n+1))`
-/

namespace A149080.P9089908645906361135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333222 (A006951 n).toNat - (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (2 * (n + 1) : ℤ))

end

end A149080.P9089908645906361135

/-! ## A149080.P14504211333483943137

`A153859(A218196(n+1)+A153827(n))`
-/

namespace A149080.P14504211333483943137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153859 (A218196 (n + 1) + A153827 n).toNat

end

end A149080.P14504211333483943137

/-! ## A149080.P17956319535160790188

`A347703(A300323(n)+A092953(n+1))`
-/

namespace A149080.P17956319535160790188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347703 (A300323 n + A092953 (n + 1)).toNat

end

end A149080.P17956319535160790188

/-!
# A149081: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (1, 1, 0)}.

The programs for A149081, there is no canonical definition to state claims against.
-/

/-! ## A149081.P11045835331820190417

`A222254(A149082(n)%A089675(2*(n+2)))`
-/

namespace A149081.P11045835331820190417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (Int.tmod (A149082 n) (A089675 (2 * (n + 2)))).toNat

end

end A149081.P11045835331820190417

/-!
# A149082: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 0), (-1, 1, 1), (1, 0, 0)}.

The programs for A149082, there is no canonical definition to state claims against.
-/

/-! ## A149082.P13831828944357620101

`A030601((n+1)*A279564(n))`
-/

namespace A149082.P13831828944357620101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030601 ((n + 1 : ℤ) * A279564 n).toNat

end

end A149082.P13831828944357620101

/-! ## A149082.P7181430915426711636

`A222254(A149081(n)%A208356(n+2))`
-/

namespace A149082.P7181430915426711636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (Int.tmod (A149081 n) (A208356 (n + 2))).toNat

end

end A149082.P7181430915426711636

/-! ## A149082.P5371221856139620348

`A222254(A149081(n))%A089675(2*(n+2))`
-/

namespace A149082.P5371221856139620348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222254 (A149081 n).toNat) (A089675 (2 * (n + 2)))

end

end A149082.P5371221856139620348

/-!
# A149083: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (0, -1, 0), (1, 1, 0)}.

The programs for A149083, there is no canonical definition to state claims against.
-/

/-! ## A149083.P793814841712398268

`A149084(A073789(n))`
-/

namespace A149083.P793814841712398268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149084 (A073789 n).toNat

end

end A149083.P793814841712398268

/-! ## A149083.P11873428996270474364

`A129607(A149084(n))`
-/

namespace A149083.P11873428996270474364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 (A149084 n).toNat

end

end A149083.P11873428996270474364

/-! ## A149083.P1903447383731804424

`A149084(A171644(n))`
-/

namespace A149083.P1903447383731804424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149084 (A171644 n).toNat

end

end A149083.P1903447383731804424

/-! ## A149083.P5037534825608867703

`A149084(A004869(n+1))`
-/

namespace A149083.P5037534825608867703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149084 (A004869 (n + 1)).toNat

end

end A149083.P5037534825608867703

/-!
# A149086: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149086, there is no canonical definition to state claims against.
-/

/-! ## A149086.P1380310004785141946

`A138291(A000244(n)-A345290(2*n+1))`
-/

namespace A149086.P1380310004785141946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138291 (A000244 n - A345290 (2 * n + 1)).toNat

end

end A149086.P1380310004785141946

/-!
# A149087: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A149087, there is no canonical definition to state claims against.
-/

/-! ## A149087.P8494820432849448219

`A023193(A035594(n)*A077998(n))`
-/

namespace A149087.P8494820432849448219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A035594 n * A077998 n).toNat

end

end A149087.P8494820432849448219

/-!
# A149088: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 0), (1, -1, -1), (1, 1, 0)}.

The programs for A149088, there is no canonical definition to state claims against.
-/

/-! ## A149088.P15752200992724542190

`A110266(∑[A121724(n)])`
-/

namespace A149088.P15752200992724542190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149088.P15752200992724542190

/-! ## A149088.P13197064707241549173

`A097381(A246747(n+1))+A091453(A289541(n))`
-/

namespace A149088.P13197064707241549173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097381 (A246747 (n + 1)).toNat + A091453 (A289541 n).toNat

end

end A149088.P13197064707241549173

/-!
# A149091: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (0, 0, -1), (1, 1, 0)}.

The programs for A149091, there is no canonical definition to state claims against.
-/

/-! ## A149091.P14824578484195898455

`A081277(n)+A055679(A090042(n))`
-/

namespace A149091.P14824578484195898455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081277 n + A055679 (A090042 n).toNat

end

end A149091.P14824578484195898455

/-! ## A149091.P5322940219302088032

`A181853(n)+A055679(A090042(n))`
-/

namespace A149091.P5322940219302088032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181853 n + A055679 (A090042 n).toNat

end

end A149091.P5322940219302088032

/-!
# A149092: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, -1), (1, 1, -1)}.

The programs for A149092, there is no canonical definition to state claims against.
-/

/-! ## A149092.P4723998401361623068

`A002375(3*A137535(n+1))`
-/

namespace A149092.P4723998401361623068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (3 * A137535 (n + 1)).toNat

end

end A149092.P4723998401361623068

/-!
# A149093: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A149093, there is no canonical definition to state claims against.
-/

/-! ## A149093.P9252854794589067162

`A149094(A073789(n))`
-/

namespace A149093.P9252854794589067162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149094 (A073789 n).toNat

end

end A149093.P9252854794589067162

/-! ## A149093.P11302459642330530196

`A154439(A149094(n))`
-/

namespace A149093.P11302459642330530196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (A149094 n).toNat

end

end A149093.P11302459642330530196

/-! ## A149093.P1233499019465684372

`A149094(A171644(n))`
-/

namespace A149093.P1233499019465684372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149094 (A171644 n).toNat

end

end A149093.P1233499019465684372

/-! ## A149093.P16486521954380170008

`A149094(A004869(n+1))`
-/

namespace A149093.P16486521954380170008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149094 (A004869 (n + 1)).toNat

end

end A149093.P16486521954380170008

/-!
# A149095: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 0, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A149095, there is no canonical definition to state claims against.
-/

/-! ## A149095.P10829300391787959999

`A149096(A073789(n))`
-/

namespace A149095.P10829300391787959999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149096 (A073789 n).toNat

end

end A149095.P10829300391787959999

/-! ## A149095.P8262512841058950446

`A154439(A149096(n))`
-/

namespace A149095.P8262512841058950446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (A149096 n).toNat

end

end A149095.P8262512841058950446

/-! ## A149095.P16238878656999362191

`A149096(A171644(n))`
-/

namespace A149095.P16238878656999362191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149096 (A171644 n).toNat

end

end A149095.P16238878656999362191

/-! ## A149095.P11698439931771145021

`A149096(A004869(n+1))`
-/

namespace A149095.P11698439931771145021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149096 (A004869 (n + 1)).toNat

end

end A149095.P11698439931771145021

/-!
# A149097: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A149097, there is no canonical definition to state claims against.
-/

/-! ## A149097.P3719149619339295285

`or(A033665(A318947(n)), A149095(n))`
-/

namespace A149097.P3719149619339295285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033665 (A318947 n).toNat) (A149095 n)

end

end A149097.P3719149619339295285

/-! ## A149097.P13366649451344024721

`or(A033665(A318947(n)), A149096(n))`
-/

namespace A149097.P13366649451344024721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033665 (A318947 n).toNat) (A149096 n)

end

end A149097.P13366649451344024721

/-! ## A149097.P15458802377489368058

`A308583(A308588(n+8))+A149095(n)`
-/

namespace A149097.P15458802377489368058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308583 (A308588 (n + 8)).toNat + A149095 n

end

end A149097.P15458802377489368058

/-! ## A149097.P16961532067259683472

`A308583(A308588(n+8))+A149096(n)`
-/

namespace A149097.P16961532067259683472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308583 (A308588 (n + 8)).toNat + A149096 n

end

end A149097.P16961532067259683472

/-!
# A149098: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (0, -1, 1), (1, 1, 0)}.

The programs for A149098, there is no canonical definition to state claims against.
-/

/-! ## A149098.P1708257980748401456

`A328434(n)+A221469(A294251(n))`
-/

namespace A149098.P1708257980748401456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328434 n + A221469 (A294251 n).toNat

end

end A149098.P1708257980748401456

/-! ## A149098.P15554092646647404981

`A149123(n)-A295515(A276742(n))`
-/

namespace A149098.P15554092646647404981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149123 n - A295515 (A276742 n).toNat

end

end A149098.P15554092646647404981

/-! ## A149098.P9632500886453153160

`A077766(A361119(2*n+5)+A319924(n))`
-/

namespace A149098.P9632500886453153160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077766 (A361119 (2 * n + 5) + A319924 n).toNat

end

end A149098.P9632500886453153160

