import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A028700: Expansion of (theta_3(z)*theta_3(2z)*theta_3(4z)+theta_2(z)*theta_2(2z)*theta_2(4z))^3.

The programs for A028700, there is no canonical definition to state claims against.
-/

/-! ## A028700.P5357039406888385626

`A000005(A254437(n+1))*A062275(n)`
-/

namespace A028700.P5357039406888385626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A254437 (n + 1)).toNat * A062275 n

end

end A028700.P5357039406888385626

/-! ## A028700.P18043644902804502454

`and(A006005(A157221(n)), A007239(n+1))`
-/

namespace A028700.P18043644902804502454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006005 (A157221 n).toNat) (A007239 (n + 1))

end

end A028700.P18043644902804502454

/-!
# A028701: Expansion of (theta_3(z)*theta_3(2z)*theta_3(4z)+theta_2(z)*theta_2(2z)*theta_2(4z))^4.

The programs for A028701, there is no canonical definition to state claims against.
-/

/-! ## A028701.P2025102967460491102

`and(A000217(A049614(n)), A008665(n))`
-/

namespace A028701.P2025102967460491102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A049614 n).toNat) (A008665 n)

end

end A028701.P2025102967460491102

/-! ## A028701.P410617441174813086

`and(A000010(A148270(n)), A206650(n+1))`
-/

namespace A028701.P410617441174813086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A148270 n).toNat) (A206650 (n + 1))

end

end A028701.P410617441174813086

/-! ## A028701.P4460652853403398825

`and(A000010(A148270(n)), A208434(n+1))`
-/

namespace A028701.P4460652853403398825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A148270 n).toNat) (A208434 (n + 1))

end

end A028701.P4460652853403398825

/-! ## A028701.P11457426234767365232

`and(A057339(A160461(n)), A218372(n+1))`
-/

namespace A028701.P11457426234767365232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057339 (A160461 n).toNat) (A218372 (n + 1))

end

end A028701.P11457426234767365232

/-! ## A028701.P16238025225047435566

`A151930(A248875(n))`
-/

namespace A028701.P16238025225047435566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151930 (A248875 n).toNat

end

end A028701.P16238025225047435566

/-!
# A028702: Expansion of (theta_3(z)*theta_3(3z)*theta_3(9z)+theta_2(z)*theta_2(3z)*theta_2(9z)).

The programs for A028702, there is no canonical definition to state claims against.
-/

/-! ## A028702.P11976845188857571832

`and(A217220(n), A267177(A317011(n+1)))`
-/

namespace A028702.P11976845188857571832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A217220 n) (A267177 (A317011 (n + 1)).toNat)

end

end A028702.P11976845188857571832

/-! ## A028702.P12447285600844374666

`and(A139252(A076919(n+1)), A217220(n))`
-/

namespace A028702.P12447285600844374666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139252 (A076919 (n + 1)).toNat) (A217220 n)

end

end A028702.P12447285600844374666

/-! ## A028702.P13803602501743637198

`and(A004016(n), A271114(A212747(n)))`
-/

namespace A028702.P13803602501743637198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004016 n) (A271114 (A212747 n).toNat)

end

end A028702.P13803602501743637198

/-! ## A028702.P32739300042328151

`and(A217220(n), A271114(A212747(n)))`
-/

namespace A028702.P32739300042328151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A217220 n) (A271114 (A212747 n).toNat)

end

end A028702.P32739300042328151

/-! ## A028702.P16506548868737557794

`and(A000578(A024966(2*n+1)), A004016(n))`
-/

namespace A028702.P16506548868737557794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000578 (A024966 (2 * n + 1)).toNat) (A004016 n)

end

end A028702.P16506548868737557794

/-!
# A028703: Expansion of (theta_3(z)*theta_3(3z)*theta_3(9z)+theta_2(z)*theta_2(3z)*theta_2(9z))^2.

The programs for A028703, there is no canonical definition to state claims against.
-/

/-! ## A028703.P14669841938412085307

`and(A270681(A270691(n)), A299561(n+1))`
-/

namespace A028703.P14669841938412085307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A270681 (A270691 n).toNat) (A299561 (n + 1))

end

end A028703.P14669841938412085307

/-!
# A028705: Expansion of (theta_3(z)*theta_3(3z)*theta_3(9z)+theta_2(z)*theta_2(3z)*theta_2(9z))^4.

The programs for A028705, there is no canonical definition to state claims against.
-/

/-! ## A028705.P5734717093776944104

`and(A005476(A010022(n+2)), A111284(n+1))`
-/

namespace A028705.P5734717093776944104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005476 (A010022 (n + 2)).toNat) (A111284 (n + 1))

end

end A028705.P5734717093776944104

/-! ## A028705.P12716102206235610466

`and(A057191(n+1)², A097692(n))`
-/

namespace A028705.P12716102206235610466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057191 (n + 1) ^ 2) (A097692 n)

end

end A028705.P12716102206235610466

/-! ## A028705.P8279165584514815291

`and(A057191(n+1)², A025487(n+1))`
-/

namespace A028705.P8279165584514815291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057191 (n + 1) ^ 2) (A025487 (n + 1))

end

end A028705.P8279165584514815291

/-! ## A028705.P16378948729125090647

`A028616(n)+A028573(A089581(n+1))`
-/

namespace A028705.P16378948729125090647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028616 n + A028573 (A089581 (n + 1)).toNat

end

end A028705.P16378948729125090647

/-! ## A028705.P10976208412855360423

`A028637(A273873(n+1))+A028616(n)`
-/

namespace A028705.P10976208412855360423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028637 (A273873 (n + 1)).toNat + A028616 n

end

end A028705.P10976208412855360423

/-!
# A028706: Expansion of (theta_3(z)*theta_3(4z)*theta_3(16z)+theta_2(z)*theta_2(4z)*theta_2(16z)).

The programs for A028706, there is no canonical definition to state claims against.
-/

/-! ## A028706.P15529307619337698137

`and(A028708(n), A174273(A094958(n+1)))`
-/

namespace A028706.P15529307619337698137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028708 n) (A174273 (A094958 (n + 1)).toNat)

end

end A028706.P15529307619337698137

/-!
# A028708: Expansion of (theta_3(z)*theta_3(4z)*theta_3(16z)+theta_2(z)*theta_2(4z)*theta_2(16z))^3.

The programs for A028708, there is no canonical definition to state claims against.
-/

/-! ## A028708.P10959708044504512368

`A028712(n)*A156755(A000045(n))`
-/

namespace A028708.P10959708044504512368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028712 n * A156755 (A000045 n).toNat

end

end A028708.P10959708044504512368

/-! ## A028708.P15232805461426053303

`A014963(A176836(n+1))*A028712(n)`
-/

namespace A028708.P15232805461426053303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A176836 (n + 1)).toNat * A028712 n

end

end A028708.P15232805461426053303

/-! ## A028708.P1930847511979074950

`A028655(n)*A050873(A028628(n))`
-/

namespace A028708.P1930847511979074950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028655 n * A050873 (A028628 n).toNat

end

end A028708.P1930847511979074950

/-!
# A028709: Expansion of (theta_3(z)*theta_3(4z)*theta_3(16z)+theta_2(z)*theta_2(4z)*theta_2(16z))^4.

The programs for A028709, there is no canonical definition to state claims against.
-/

/-! ## A028709.P7403227222512647292

`and(A088705(3*n+4), A228691(n+1))`
-/

namespace A028709.P7403227222512647292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088705 (3 * n + 4)) (A228691 (n + 1))

end

end A028709.P7403227222512647292

/-! ## A028709.P11674811981659400083

`and(A056926(A125911(n+4)), A076722(n+1))`
-/

namespace A028709.P11674811981659400083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056926 (A125911 (n + 4)).toNat) (A076722 (n + 1))

end

end A028709.P11674811981659400083

/-! ## A028709.P15581678119175613257

`A000035(A100175(n+1))*A028585(n)`
-/

namespace A028709.P15581678119175613257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A100175 (n + 1)).toNat * A028585 n

end

end A028709.P15581678119175613257

/-! ## A028709.P2646331228406365601

`and(A069038(A028713(n)), A247442(n+2))`
-/

namespace A028709.P2646331228406365601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069038 (A028713 n).toNat) (A247442 (n + 2))

end

end A028709.P2646331228406365601

/-! ## A028709.P14823919984644370874

`and(A069038(A028717(n)), A247442(n+2))`
-/

namespace A028709.P14823919984644370874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069038 (A028717 n).toNat) (A247442 (n + 2))

end

end A028709.P14823919984644370874

/-!
# A028710: Expansion of (theta_3(z)*theta_3(5z)*theta_3(25z)+theta_2(z)*theta_2(5z)*theta_2(25z)).

The programs for A028710, there is no canonical definition to state claims against.
-/

/-! ## A028710.P4878341682390865653

`lcm(A033737(n), A102560(n))`
-/

namespace A028710.P4878341682390865653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033737 n) (A102560 n)

end

end A028710.P4878341682390865653

/-! ## A028710.P12019230060689021796

`∑[A163805(n)]*A033737(n)`
-/

namespace A028710.P12019230060689021796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033737 n

end

end A028710.P12019230060689021796

/-! ## A028710.P11736037612341925990

`Δ[A004525(n)]*A033737(n)`
-/

namespace A028710.P11736037612341925990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033737 n

end

end A028710.P11736037612341925990

/-! ## A028710.P703822000743461881

`char[A014601(n)]*A033737(n)`
-/

namespace A028710.P703822000743461881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A033737 n

end

end A028710.P703822000743461881

/-! ## A028710.P16474885746103351376

`and(1, A080513(n))*A033737(n)`
-/

namespace A028710.P16474885746103351376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A080513 n) * A033737 n

end

end A028710.P16474885746103351376

/-! ## A028710.P771469127263118647

`A000035(A008612(n))*A033737(n)`
-/

namespace A028710.P771469127263118647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008612 n).toNat * A033737 n

end

end A028710.P771469127263118647

/-! ## A028710.P3471566070872755571

`A000035(A028242(n))*A033737(n)`
-/

namespace A028710.P3471566070872755571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A028242 n).toNat * A033737 n

end

end A028710.P3471566070872755571

/-! ## A028710.P4455029747253642846

`and(A033737(n), A033999(A080513(n)))`
-/

namespace A028710.P4455029747253642846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033737 n) (A033999 (A080513 n).toNat)

end

end A028710.P4455029747253642846

/-! ## A028710.P9405738016318358218

`and(A033737(n), A359066(n+1))`
-/

namespace A028710.P9405738016318358218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033737 n) (A359066 (n + 1))

end

end A028710.P9405738016318358218

/-!
# A028711: Expansion of (theta_3(z)*theta_3(5z)*theta_3(25z)+theta_2(z)*theta_2(5z)*theta_2(25z))^2.

The programs for A028711, there is no canonical definition to state claims against.
-/

/-! ## A028711.P9410393159237670676

`A107701(n+1)%A040142(n)`
-/

namespace A028711.P9410393159237670676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107701 (n + 1)) (A040142 n)

end

end A028711.P9410393159237670676

/-! ## A028711.P9944744009465303191

`A046109(n)*A323239(A062124(n))`
-/

namespace A028711.P9944744009465303191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n * A323239 (A062124 n).toNat

end

end A028711.P9944744009465303191

/-! ## A028711.P9875382956684421003

`A053824(A028715(n)^A053824(n))`
-/

namespace A028711.P9875382956684421003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (SequenceMachineLib.roundAway ((A028715 n : ℚ) ^ (A053824 n : ℤ))).toNat

end

end A028711.P9875382956684421003

/-! ## A028711.P13707867268373055534

`A231349(n+1)*A323239(A062124(n))`
-/

namespace A028711.P13707867268373055534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231349 (n + 1) * A323239 (A062124 n).toNat

end

end A028711.P13707867268373055534

/-! ## A028711.P15415206302037592017

`A139251((C(and(n+2, -(2*n+1)), n+1)/2)%A332583(3*n+4))`
-/

namespace A028711.P15415206302037592017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (Int.tmod (SequenceMachineLib.roundAway ((Nat.choose (Int.land (n + 2 : ℤ) (-(2 * n + 1 : ℤ))).toNat (n + 1) : ℚ) / 2)) (A332583 (3 * n + 4))).toNat

end

end A028711.P15415206302037592017

/-!
# A028712: Expansion of (theta_3(z)*theta_3(5z)*theta_3(25z)+theta_2(z)*theta_2(5z)*theta_2(25z))^3.

The programs for A028712, there is no canonical definition to state claims against.
-/

/-! ## A028712.P9337110877765735530

`A004013(n^A017827(A088440(n)))`
-/

namespace A028712.P9337110877765735530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A017827 (A088440 n).toNat : ℤ))).toNat

end

end A028712.P9337110877765735530

/-! ## A028712.P4588034179215674275

`A028708(n)/A014963(A176836(n+1))`
-/

namespace A028712.P4588034179215674275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028708 n : ℚ) / (A014963 (A176836 (n + 1)).toNat : ℚ)

end

end A028712.P4588034179215674275

/-! ## A028712.P16160300784090019289

`A028663(lt[A157402(n+1), A057473(n+1)])`
-/

namespace A028712.P16160300784090019289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028663 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028712.P16160300784090019289

/-!
# A028713: Expansion of (theta_3(z)*theta_3(5z)*theta_3(25z)+theta_2(z)*theta_2(5z)*theta_2(25z))^4.

The programs for A028713, there is no canonical definition to state claims against.
-/

/-! ## A028713.P11631965482495769830

`A233971(A028664(n))`
-/

namespace A028713.P11631965482495769830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233971 (A028664 n).toNat

end

end A028713.P11631965482495769830

/-! ## A028713.P18033984361708383302

`A233971(A028717(n))`
-/

namespace A028713.P18033984361708383302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233971 (A028717 n).toNat

end

end A028713.P18033984361708383302

/-! ## A028713.P13181862092952196921

`A233971(A028721(n))`
-/

namespace A028713.P13181862092952196921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233971 (A028721 n).toNat

end

end A028713.P13181862092952196921

/-! ## A028713.P5301731925192433240

`A233971(A028632(n)*A102560(n))`
-/

namespace A028713.P5301731925192433240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233971 (A028632 n * A102560 n).toNat

end

end A028713.P5301731925192433240

/-! ## A028713.P14069205935189204839

`A233971(lcm(A028632(n), A102560(n)))`
-/

namespace A028713.P14069205935189204839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233971 (Int.lcm (A028632 n) (A102560 n))

end

end A028713.P14069205935189204839

/-!
# A028714: Expansion of (theta_3(z)*theta_3(6z)*theta_3(36z)+theta_2(z)*theta_2(6z)*theta_2(36z)).

The programs for A028714, there is no canonical definition to state claims against.
-/

/-! ## A028714.P1995840182851834092

`and(A028590(n), A180185(n))`
-/

namespace A028714.P1995840182851834092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028590 n) (A180185 n)

end

end A028714.P1995840182851834092

/-! ## A028714.P3944886978829528296

`and(A028590(n), A245171(n))`
-/

namespace A028714.P3944886978829528296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028590 n) (A245171 n)

end

end A028714.P3944886978829528296

/-! ## A028714.P11814989184990016658

`and(A008486(A054275(n)), A028590(n))`
-/

namespace A028714.P11814989184990016658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008486 (A054275 n).toNat) (A028590 n)

end

end A028714.P11814989184990016658

/-! ## A028714.P17985751571311452453

`and(A008486(A054275(n)), A046113(n))`
-/

namespace A028714.P17985751571311452453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008486 (A054275 n).toNat) (A046113 n)

end

end A028714.P17985751571311452453

/-! ## A028714.P13630133323327003517

`and(A028590(n), A370979(n+1))`
-/

namespace A028714.P13630133323327003517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028590 n) (A370979 (n + 1))

end

end A028714.P13630133323327003517

/-!
# A028715: Expansion of (theta_3(z)*theta_3(6z)*theta_3(36z)+theta_2(z)*theta_2(6z)*theta_2(36z))^2.

The programs for A028715, there is no canonical definition to state claims against.
-/

/-! ## A028715.P6821564211530550735

`A028591(n)%A038664(A214063(3*n+4))`
-/

namespace A028715.P6821564211530550735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028591 n) (A038664 (A214063 (3 * n + 4)).toNat)

end

end A028715.P6821564211530550735

/-! ## A028715.P15478425470049432079

`C(A028591(n), A028577(A028584(2*n+3)))`
-/

namespace A028715.P15478425470049432079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028591 n).toNat (A028577 (A028584 (2 * n + 3)).toNat).toNat

end

end A028715.P15478425470049432079

/-! ## A028715.P10715631761518170151

`A028719(n)+A028718(A028749(n+1))`
-/

namespace A028715.P10715631761518170151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028719 n + A028718 (A028749 (n + 1)).toNat

end

end A028715.P10715631761518170151

/-! ## A028715.P1571226277187504521

`and(A028591(n), A071817(n+1))`
-/

namespace A028715.P1571226277187504521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028591 n) (A071817 (n + 1))

end

end A028715.P1571226277187504521

/-!
# A028716: Expansion of (theta_3(z)*theta_3(6z)*theta_3(36z)+theta_2(z)*theta_2(6z)*theta_2(36z))^3.

The programs for A028716, there is no canonical definition to state claims against.
-/

/-! ## A028716.P1862898882090090327

`A028592(A088440(n))%record[A198277(n)]`
-/

namespace A028716.P1862898882090090327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028592 (A088440 n).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A028716.P1862898882090090327

/-! ## A028716.P491461376933379032

`A178333(A045947(n))+A028592(A088440(n))`
-/

namespace A028716.P491461376933379032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (A045947 n).toNat + A028592 (A088440 n).toNat

end

end A028716.P491461376933379032

/-! ## A028716.P10724026020634529479

`A001492(A241416(n))*A028592(A088440(n))`
-/

namespace A028716.P10724026020634529479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 (A241416 n).toNat * A028592 (A088440 n).toNat

end

end A028716.P10724026020634529479

/-! ## A028716.P4184301028552354388

`A028592(A088440(n))*A124010(A185446(n+1))`
-/

namespace A028716.P4184301028552354388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028592 (A088440 n).toNat * A124010 (A185446 (n + 1)).toNat

end

end A028716.P4184301028552354388

/-! ## A028716.P16816373732470612017

`A001221(A088486(n+1))*A028592(A088440(n))`
-/

namespace A028716.P16816373732470612017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A088486 (n + 1)).toNat * A028592 (A088440 n).toNat

end

end A028716.P16816373732470612017

/-!
# A028718: Expansion of (theta_3(z)*theta_3(7z)*theta_3(49z)+theta_2(z)*theta_2(7z)*theta_2(49z)).

The programs for A028718, there is no canonical definition to state claims against.
-/

/-! ## A028718.P13442711671327474196

`A033719(lt[A217463(n+1), A023918(n)])`
-/

namespace A028718.P13442711671327474196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028718.P13442711671327474196

/-! ## A028718.P4767901075036502185

`A033719(lt[A217869(n+1), A023918(n)])`
-/

namespace A028718.P4767901075036502185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028718.P4767901075036502185

/-! ## A028718.P11528506726509860959

`A033719(lcm(A047324(n+1), A047328(n+1)))`
-/

namespace A028718.P11528506726509860959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 (Int.lcm (A047324 (n + 1)) (A047328 (n + 1)))

end

end A028718.P11528506726509860959

/-! ## A028718.P392038558393034530

`A033719(lcm(A047328(n+1), A266303(n)))`
-/

namespace A028718.P392038558393034530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 (Int.lcm (A047328 (n + 1)) (A266303 n))

end

end A028718.P392038558393034530

/-! ## A028718.P12490232350375649372

`A033719(A047328(n+1)%A309292(n+1))`
-/

namespace A028718.P12490232350375649372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 (Int.tmod (A047328 (n + 1)) (A309292 (n + 1))).toNat

end

end A028718.P12490232350375649372

/-!
# A028719: Expansion of (theta_3(z)*theta_3(7z)*theta_3(49z)+theta_2(z)*theta_2(7z)*theta_2(49z))^2.

The programs for A028719, there is no canonical definition to state claims against.
-/

/-! ## A028719.P5077684553677576131

`A028621(lcm(6, A195142(n)))`
-/

namespace A028719.P5077684553677576131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028621 (Int.lcm 6 (A195142 n))

end

end A028719.P5077684553677576131

/-! ## A028719.P11828892506495343644

`and(A005503(n), A028638(n))`
-/

namespace A028719.P11828892506495343644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005503 n) (A028638 n)

end

end A028719.P11828892506495343644

/-! ## A028719.P573162819520263686

`and(A005503(n), A028662(n))`
-/

namespace A028719.P573162819520263686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005503 n) (A028662 n)

end

end A028719.P573162819520263686

/-! ## A028719.P14084910532187142365

`A004018(C(or(2*n, n%4), A317905(2*n+3)))`
-/

namespace A028719.P14084910532187142365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (Nat.choose (Nat.lor (2 * n) (n % 4)) (A317905 (2 * n + 3)).toNat)

end

end A028719.P14084910532187142365

/-! ## A028719.P18047210051309702874

`A000035(∑[A068228(n+1)])*A004531(n)`
-/

namespace A028719.P18047210051309702874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A004531 n

end

end A028719.P18047210051309702874

/-!
# A028720: Expansion of (theta_3(z)*theta_3(7z)*theta_3(49z)+theta_2(z)*theta_2(7z)*theta_2(49z))^3.

The programs for A028720, there is no canonical definition to state claims against.
-/

/-! ## A028720.P12806332445774504098

`A004013(gcd(A097256(n), A110146(n)))`
-/

namespace A028720.P12806332445774504098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (Int.gcd (A097256 n) (A110146 n))

end

end A028720.P12806332445774504098

/-! ## A028720.P10785952499230994469

`and(A028663(n), A177378(n+1))`
-/

namespace A028720.P10785952499230994469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028663 n) (A177378 (n + 1))

end

end A028720.P10785952499230994469

/-! ## A028720.P13155632977366947468

`A004013(n)*A010052(A016116(n))`
-/

namespace A028720.P13155632977366947468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 n * A010052 (A016116 n).toNat

end

end A028720.P13155632977366947468

/-! ## A028720.P15369774112152145606

`A005875(n)*A059841(A006003(n))`
-/

namespace A028720.P15369774112152145606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n * A059841 (A006003 n).toNat

end

end A028720.P15369774112152145606

/-! ## A028720.P8897996895375933983

`A121262(A067389(n))*A319078(n)`
-/

namespace A028720.P8897996895375933983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A067389 n).toNat * A319078 n

end

end A028720.P8897996895375933983

/-!
# A028721: Expansion of (theta_3(z)*theta_3(7z)*theta_3(49z)+theta_2(z)*theta_2(7z)*theta_2(49z))^4.

The programs for A028721, there is no canonical definition to state claims against.
-/

/-! ## A028721.P15592977822291320745

`A236925(lcm(2, n)+n%2)^A236939(n)`
-/

namespace A028721.P15592977822291320745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236925 (Nat.lcm 2 n + n % 2) : ℚ) ^ (A236939 (n + 10) : ℤ)

end

end A028721.P15592977822291320745

/-! ## A028721.P9459126751275657403

`A002487(A077957(n))*A028640(n)`
-/

namespace A028721.P9459126751275657403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A077957 n).toNat * A028640 n

end

end A028721.P9459126751275657403

/-! ## A028721.P13986461897815839542

`A002487(A077957(n))*A236925(n)`
-/

namespace A028721.P13986461897815839542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A077957 n).toNat * A236925 n

end

end A028721.P13986461897815839542

/-! ## A028721.P4012596343248529618

`A028600(n)%A173380(A028655(n))`
-/

namespace A028721.P4012596343248529618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028600 n) (A173380 (A028655 n).toNat)

end

end A028721.P4012596343248529618

/-! ## A028721.P4733921767161541060

`lcm(A028656(n), A169988(n))`
-/

namespace A028721.P4733921767161541060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028656 n) (A169988 n)

end

end A028721.P4733921767161541060

/-!
# A028724: a(n) = (1/2)*floor(n/2)*floor((n-1)/2)*floor((n-2)/2).

The programs for A028724, the canonical program `A028724.P11795025935540611268` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028724 has offset 0).

The definition of A028724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028724.P11795025935540611268

`1/2*floor(n/2)*floor((n-1)/2)*floor((n-2)/2)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028724

/-- `1/2*floor(n/2)*floor((n-1)/2)*floor((n-2)/2)` -/
def P11795025935540611268.Spec : Prop :=
  ∀ n, P11795025935540611268.a n = (A028724 n : ℚ)

end A028724

/-! ## A028724.P10479213338031446064

`∑[A123596(n-2%(n+1))]`
-/

namespace A028724.P10479213338031446064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123596 (n - 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028724.P10479213338031446064

namespace A028724

/-- `∑[A123596(n-2%(n+1))]` -/
def P10479213338031446064.Spec : Prop :=
  ∀ n, P10479213338031446064.a n = A028724 n

end A028724

/-! ## A028724.P13058170518437651800

`A307182(n+1)/A131055(n+1)`
-/

namespace A028724.P13058170518437651800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307182 (n + 1) : ℚ) / (A131055 (n + 1) : ℚ)

end

end A028724.P13058170518437651800

namespace A028724

/-- `A307182(n+1)/A131055(n+1)` -/
def P13058170518437651800.Spec : Prop :=
  ∀ n, P13058170518437651800.a n = (A028724 n : ℚ)

end A028724

/-! ## A028724.P4170604961234181316

`∑[A124093(xor(1, A082285(n)%(n+1)))]`
-/

namespace A028724.P4170604961234181316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (Int.xor 1 (Int.tmod (A082285 n) (n + 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028724.P4170604961234181316

namespace A028724

/-- `∑[A124093(xor(1, A082285(n)%(n+1)))]` -/
def P4170604961234181316.Spec : Prop :=
  ∀ n, P4170604961234181316.a n = A028724 n

end A028724

/-! ## A028724.P9785646000663749881

`Δ[A000241(n)]`
-/

namespace A028724.P9785646000663749881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028724.P9785646000663749881

namespace A028724

/-- `Δ[A000241(n)]` -/
def P9785646000663749881.Spec : Prop :=
  ∀ n, P9785646000663749881.a n = A028724 n

end A028724

/-! ## A028724.P17519155249512031632

`A000241(n+1)-A000241(n)`
-/

namespace A028724.P17519155249512031632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000241 (n + 1) - A000241 n

end

end A028724.P17519155249512031632

namespace A028724

/-- `A000241(n+1)-A000241(n)` -/
def P17519155249512031632.Spec : Prop :=
  ∀ n, P17519155249512031632.a n = A028724 n

end A028724

/-! ## A028724.P5842824626198933640

`A062707(A000982(n)-n)`
-/

namespace A028724.P5842824626198933640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 (A000982 n - (n : ℤ)).toNat

end

end A028724.P5842824626198933640

namespace A028724

/-- `A062707(A000982(n)-n)` -/
def P5842824626198933640.Spec : Prop :=
  ∀ n, P5842824626198933640.a n = A028724 n

end A028724

/-! ## A028724.P5188410450284967657

`A062707(2*(Δ[A173196(n)]-n))`
-/

namespace A028724.P5188410450284967657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 (2 * (f1 (n + 1) - f1 n - (n : ℤ))).toNat

end

end A028724.P5188410450284967657

namespace A028724

/-- `A062707(2*(Δ[A173196(n)]-n))` -/
def P5188410450284967657.Spec : Prop :=
  ∀ n, P5188410450284967657.a n = A028724 n

end A028724

/-! ## A028724.P170816198302660402

`A172101(A077169(n+1)-1)`
-/

namespace A028724.P170816198302660402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172101 (A077169 (n + 1) - 1).toNat

end

end A028724.P170816198302660402

namespace A028724

/-- `A172101(A077169(n+1)-1)` -/
def P170816198302660402.Spec : Prop :=
  ∀ n, P170816198302660402.a n = A028724 n

end A028724

/-!
# A028725: a(n) = floor(n/2) * floor((n-1)/2) * floor((n-2)/2) * floor((n-3)/2) * floor((n-4)/2) / 12.

The programs for A028725, the canonical program `A028725.P8918157640377848180` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028725 has offset 0).

The definition of A028725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028725.P8918157640377848180

`Δ[A331574(abs(1-n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A028725

/-- `Δ[A331574(abs(1-n))]` -/
def P8918157640377848180.Spec : Prop :=
  ∀ n, P8918157640377848180.a n = A028725 n

theorem P8918157640377848180.correct : P8918157640377848180.Spec := by
  intro n
  simp only [A028725]

end A028725

/-! ## A028725.P16698131426089892529

`3/A065033(n)*A331574(n)`
-/

namespace A028725.P16698131426089892529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (A065033 n : ℚ) * (A331574 n : ℚ)

end

end A028725.P16698131426089892529

namespace A028725

/-- `3/A065033(n)*A331574(n)` -/
def P16698131426089892529.Spec : Prop :=
  ∀ n, P16698131426089892529.a n = (A028725 n : ℚ)

end A028725

/-! ## A028725.P8481585072439140140

`A331574(n)-A331574(abs(1-n))`
-/

namespace A028725.P8481585072439140140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331574 n - A331574 |1 - (n : ℤ)|.toNat

end

end A028725.P8481585072439140140

namespace A028725

/-- `A331574(n)-A331574(abs(1-n))` -/
def P8481585072439140140.Spec : Prop :=
  ∀ n, P8481585072439140140.a n = A028725 n

theorem P8481585072439140140.correct : P8481585072439140140.Spec := by
  intro n
  simp only [A028725, Nat.add_sub_cancel, A028725.P8481585072439140140.a, A028725.P8918157640377848180.f1, A028725.P8918157640377848180.a, SequenceMachineLib.memo_apply]
  try simp

end A028725

/-! ## A028725.P17316312517316367901

`A330300(n)-A333319(A289207(n)+1)`
-/

namespace A028725.P17316312517316367901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330300 n - A333319 (A289207 n + 1).toNat

end

end A028725.P17316312517316367901

namespace A028725

/-- `A330300(n)-A333319(A289207(n)+1)` -/
def P17316312517316367901.Spec : Prop :=
  ∀ n, P17316312517316367901.a n = A028725 n

end A028725

/-!
# A028740: Nonsquares mod 27.

The programs for A028740, there is no canonical definition to state claims against.
-/

/-! ## A028740.P7065621924244772379

`comp[∪[3*n+1, n²]]`
-/

namespace A028740.P7065621924244772379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028740.P7065621924244772379

/-! ## A028740.P8191336132799259018

`comp[n^((2*(n+1))%3)]`
-/

namespace A028740.P8191336132799259018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (2 * (n + 1) % 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028740.P8191336132799259018

/-! ## A028740.P14936205422716060337

`comp[(1-n)²%(7*n+4)]`
-/

namespace A028740.P14936205422716060337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - (n : ℤ)) ^ 2) (7 * n + 4 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028740.P14936205422716060337

/-!
# A028741: Nonsquares mod 28.

The programs for A028741, there is no canonical definition to state claims against.
-/

/-! ## A028741.P12763298402358057263

`comp[lcm(n, n²%31)]`
-/

namespace A028741.P12763298402358057263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n ^ 2 % 31)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028741.P12763298402358057263

/-! ## A028741.P9251925007736644851

`comp[ceil((n/∏{e}[n, #])²)]`
-/

namespace A028741.P9251925007736644851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)) ^ 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028741.P9251925007736644851

/-! ## A028741.P12708357357565447040

`∩[comp[n²]-28, comp[n²]]`
-/

namespace A028741.P12708357357565447040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - 28

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = x) n

end

end A028741.P12708357357565447040

/-! ## A028741.P3723294195169618650

`comp[(n²-n)%(-28)+n]`
-/

namespace A028741.P3723294195169618650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - (n : ℤ)) (-28) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028741.P3723294195169618650

/-! ## A028741.P13715143509334759764

`comp[2*n-(n^4)%28]`
-/

namespace A028741.P13715143509334759764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n ^ 4 % 28 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028741.P13715143509334759764

/-!
# A028742: Nonsquares mod 29.

The programs for A028742, there is no canonical definition to state claims against.
-/

/-! ## A028742.P16832515442323167382

`comp[n-(n²+n)%29]%47`
-/

namespace A028742.P16832515442323167382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n ^ 2 + n) % 29 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 47

end

end A028742.P16832515442323167382

/-! ## A028742.P15577856145541631154

`A063988(n+47)`
-/

namespace A028742.P15577856145541631154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063988 (n + 47)

end

end A028742.P15577856145541631154

/-! ## A028742.P13513695430588559528

`comp[A010391(n+1)]`
-/

namespace A028742.P13513695430588559528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028742.P13513695430588559528

/-! ## A028742.P2511232831889751475

`A028771(comp[24*n])`
-/

namespace A028742.P2511232831889751475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028771 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A028742.P2511232831889751475

/-! ## A028742.P5283376055012994679

`comp[n*A011587(n)]`
-/

namespace A028742.P5283376055012994679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028742.P5283376055012994679

/-!
# A028743: Nonsquares mod 30.

The programs for A028743, there is no canonical definition to state claims against.
-/

/-! ## A028743.P1005832593134928621

`∑[∑[∑[∑[n+5]]]%3]+n`
-/

namespace A028743.P1005832593134928621
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A028743.P1005832593134928621

/-! ## A028743.P15285357903015252568

`lt[(n²+1)%5-1, C(n², 3)%(n+1)]`
-/

namespace A028743.P15285357903015252568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 + 1) % 5 : ℕ) : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 3 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028743.P15285357903015252568

/-! ## A028743.P12039821437354773156

`comp[A053836(n²)]`
-/

namespace A028743.P12039821437354773156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028743.P12039821437354773156

/-! ## A028743.P12094434994817054054

`eq[A028625(n), A353495(n)]`
-/

namespace A028743.P12094434994817054054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028743.P12094434994817054054

/-!
# A028744: Nonsquares mod 31.

The programs for A028744, there is no canonical definition to state claims against.
-/

/-! ## A028744.P7075924193584314573

`comp[record[n*((n^5)%31)%2]]`
-/

namespace A028744.P7075924193584314573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 5 % 31 % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028744.P7075924193584314573

/-! ## A028744.P1421140613075946434

`comp[2^val(n+1, 2)*n²%31]`
-/

namespace A028744.P1421140613075946434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * (n ^ 2 % 31)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028744.P1421140613075946434

/-! ## A028744.P10304570131215965739

`comp[n*A011588(n)]`
-/

namespace A028744.P10304570131215965739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028744.P10304570131215965739

/-! ## A028744.P6218441239918120402

`eq[0, A123063(2*n)]`
-/

namespace A028744.P6218441239918120402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028744.P6218441239918120402

/-! ## A028744.P12876763664373389990

`A028775(A005496(n))`
-/

namespace A028744.P12876763664373389990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028775 (A005496 n).toNat

end

end A028744.P12876763664373389990

/-!
# A028745: Nonsquares mod 32.

The programs for A028745, there is no canonical definition to state claims against.
-/

/-! ## A028745.P8590314695024600659

`comp[and(n, n²)]`
-/

namespace A028745.P8590314695024600659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028745.P8590314695024600659

/-! ## A028745.P4374807793672980063

`comp[n*n%16]`
-/

namespace A028745.P4374807793672980063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 16)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028745.P4374807793672980063

/-! ## A028745.P4296291473360568127

`lt[char[and(n, n²)], 1]`
-/

namespace A028745.P4296291473360568127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n ^ 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A028745.P4296291473360568127

/-! ## A028745.P4742967542506315782

`comp[∪[n², ∑[n²²]]]`
-/

namespace A028745.P4742967542506315782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028745.P4742967542506315782

/-!
# A028746: Nonsquares mod 33.

The programs for A028746, there is no canonical definition to state claims against.
-/

/-! ## A028746.P10496732655664113687

`A028779(n+1)%33`
-/

namespace A028746.P10496732655664113687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028779 (n + 1)) 33

end

end A028746.P10496732655664113687

/-! ## A028746.P12971871409474072487

`A028779(A348553(n))`
-/

namespace A028746.P12971871409474072487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028779 (A348553 n).toNat

end

end A028746.P12971871409474072487

/-! ## A028746.P9054467191770354103

`A028779(A387051(n))`
-/

namespace A028746.P9054467191770354103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028779 (A387051 n).toNat

end

end A028746.P9054467191770354103

/-! ## A028746.P4120853993191857684

`A028779(A387108(n))`
-/

namespace A028746.P4120853993191857684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028779 (A387108 n).toNat

end

end A028746.P4120853993191857684

/-! ## A028746.P11283235694897441440

`A028779(A387109(n))`
-/

namespace A028746.P11283235694897441440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028779 (A387109 n).toNat

end

end A028746.P11283235694897441440

/-!
# A028747: Nonsquares mod 34.

The programs for A028747, there is no canonical definition to state claims against.
-/

/-! ## A028747.P2474755055010110953

`lt[(n²²²+1)%17-1, -char[1]]`
-/

namespace A028747.P2474755055010110953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((((n ^ 2) ^ 2) ^ 2 + 1) % 17 : ℕ) : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028747.P2474755055010110953

/-! ## A028747.P3797499468935059024

`A136806(comp[39*n])`
-/

namespace A028747.P3797499468935059024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136806 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A028747.P3797499468935059024

/-! ## A028747.P16062896959750320805

`A136806(n+1)%32`
-/

namespace A028747.P16062896959750320805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136806 (n + 1)) 32

end

end A028747.P16062896959750320805

/-! ## A028747.P11117970909414748833

`lt[A011584(n)+n, n]`
-/

namespace A028747.P11117970909414748833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028747.P11117970909414748833

/-! ## A028747.P2295898071677923823

`comp[A025581(17*n+1)]`
-/

namespace A028747.P2295898071677923823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (17 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028747.P2295898071677923823

/-!
# A028748: Nonsquares mod 35.

The programs for A028748, there is no canonical definition to state claims against.
-/

/-! ## A028748.P16873973809848464635

`comp[lcm(n^(n%2), n²%35)]`
-/

namespace A028748.P16873973809848464635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n ^ (n % 2)) (n ^ 2 % 35)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028748.P16873973809848464635

/-! ## A028748.P17751421249218240097

`A028783(n+1)+char[30]`
-/

namespace A028748.P17751421249218240097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028783 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A028748.P17751421249218240097

/-! ## A028748.P12771653574565232423

`A028783(A348553(n))`
-/

namespace A028748.P12771653574565232423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028783 (A348553 n).toNat

end

end A028748.P12771653574565232423

/-! ## A028748.P3377531382946055422

`A028783(A387051(n))`
-/

namespace A028748.P3377531382946055422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028783 (A387051 n).toNat

end

end A028748.P3377531382946055422

/-! ## A028748.P9858634690092285854

`A028783(A387108(n))`
-/

namespace A028748.P9858634690092285854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028783 (A387108 n).toNat

end

end A028748.P9858634690092285854

/-!
# A028749: Nonsquares mod 36.

The programs for A028749, there is no canonical definition to state claims against.
-/

/-! ## A028749.P13123861758859120283

`comp[n*n%12]`
-/

namespace A028749.P13123861758859120283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 12)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028749.P13123861758859120283

/-! ## A028749.P4564887662450065426

`comp[a(n-2)+12]` with `a(0)=0, a(1)=9, a(2)=1, a(3)=4`
-/

namespace A028749.P4564887662450065426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9, 1, 4] fun n f1 =>
  f1 (n - 2) + 12

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028749.P4564887662450065426

/-! ## A028749.P12164361039683023206

`comp[n²%(6^∑{e}[n+1, #])]`
-/

namespace A028749.P12164361039683023206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 6 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028749.P12164361039683023206

/-! ## A028749.P13330070896607551607

`comp[∪[(n+10)*(n-2), (n+1)²]]`
-/

namespace A028749.P13330070896607551607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 10 : ℤ) * ((n : ℤ) - 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028749.P13330070896607551607

/-! ## A028749.P16810173829394088991

`comp[A007953(n)*A383248(n+1)]`
-/

namespace A028749.P16810173829394088991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n * A383248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028749.P16810173829394088991

/-!
# A028750: Nonsquares mod 37.

The programs for A028750, there is no canonical definition to state claims against.
-/

/-! ## A028750.P9970809708443264537

`A063988(n+76)`
-/

namespace A028750.P9970809708443264537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063988 (n + 76)

end

end A028750.P9970809708443264537

/-! ## A028750.P3750791515985615933

`comp[A010398(n+1)]`
-/

namespace A028750.P3750791515985615933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028750.P3750791515985615933

/-! ## A028750.P10282878198142598599

`comp[n*A011589(n)]`
-/

namespace A028750.P10282878198142598599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011589 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028750.P10282878198142598599

/-! ## A028750.P9927399888143419771

`A028787(n+1)%37`
-/

namespace A028750.P9927399888143419771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028787 (n + 1)) 37

end

end A028750.P9927399888143419771

/-! ## A028750.P7060242144670129057

`A028787(A291769(n))`
-/

namespace A028750.P7060242144670129057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028787 (A291769 n).toNat

end

end A028750.P7060242144670129057

/-!
# A028751: Nonsquares mod 38.

The programs for A028751, there is no canonical definition to state claims against.
-/

/-! ## A028751.P11469551880528987406

`lt[n*A011585(n), 0]`
-/

namespace A028751.P11469551880528987406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011585 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028751.P11469551880528987406

/-! ## A028751.P5067789024062853753

`eq[A011585(n), A260196(n)]`
-/

namespace A028751.P5067789024062853753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028751.P5067789024062853753

/-! ## A028751.P12798169703197770874

`eq[A011585(n), A300547(n)]`
-/

namespace A028751.P12798169703197770874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300547 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028751.P12798169703197770874

/-! ## A028751.P7094514719091784829

`lt[A011585(n), A025455(n)]`
-/

namespace A028751.P7094514719091784829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028751.P7094514719091784829

/-! ## A028751.P15991896403843327235

`comp[A010399(n+1)]`
-/

namespace A028751.P15991896403843327235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028751.P15991896403843327235

/-!
# A028752: Nonsquares mod 39.

The programs for A028752, there is no canonical definition to state claims against.
-/

/-! ## A028752.P11177622221886972906

`comp[n²%(13*∏{e}[4*n+2, C(#+2, 2)]/3)]`
-/

namespace A028752.P11177622221886972906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (SequenceMachineLib.roundAway (13 * (((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 2) 2 : ℕ) : ℚ) / 3)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028752.P11177622221886972906

/-! ## A028752.P10044458489319620302

`A028791(A348553(n))`
-/

namespace A028752.P10044458489319620302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028791 (A348553 n).toNat

end

end A028752.P10044458489319620302

/-! ## A028752.P3883008116737878454

`A028791(A387051(n))`
-/

namespace A028752.P3883008116737878454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028791 (A387051 n).toNat

end

end A028752.P3883008116737878454

/-! ## A028752.P9893063448892313078

`A028791(A387108(n))`
-/

namespace A028752.P9893063448892313078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028791 (A387108 n).toNat

end

end A028752.P9893063448892313078

/-!
# A028753: Nonsquares mod 40.

The programs for A028753, there is no canonical definition to state claims against.
-/

/-! ## A028753.P17182238681106061735

`comp[A114327(20*n)+1]`
-/

namespace A028753.P17182238681106061735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (20 * n) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028753.P17182238681106061735

/-! ## A028753.P13029389786864382523

`comp[Δ[A026729(2*n)²]]`
-/

namespace A028753.P13029389786864382523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (2 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028753.P13029389786864382523

/-! ## A028753.P16755757399983825146

`comp[Δ[A109466(2*n)²]]`
-/

namespace A028753.P16755757399983825146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 (2 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028753.P16755757399983825146

/-! ## A028753.P17816259416160842790

`∩[comp[n²], comp[A298040(n)]]`
-/

namespace A028753.P17816259416160842790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298040 n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = x) n

end

end A028753.P17816259416160842790

/-! ## A028753.P7464535680581292762

`A028793(A160544(n+1))`
-/

namespace A028753.P7464535680581292762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028793 (A160544 (n + 1)).toNat

end

end A028753.P7464535680581292762

/-!
# A028754: Nonsquares mod 41.

The programs for A028754, there is no canonical definition to state claims against.
-/

/-! ## A028754.P13348300024115646759

`comp[n-(n²+n)%41]%41`
-/

namespace A028754.P13348300024115646759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n ^ 2 + n) % 41 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 41

end

end A028754.P13348300024115646759

/-! ## A028754.P14420108602678327163

`A063988(n+94)`
-/

namespace A028754.P14420108602678327163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063988 (n + 94)

end

end A028754.P14420108602678327163

/-! ## A028754.P6376194152929828409

`comp[n*A011590(n)]`
-/

namespace A028754.P6376194152929828409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028754.P6376194152929828409

/-! ## A028754.P14172065730578655363

`A028795(n+1)%41`
-/

namespace A028754.P14172065730578655363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028795 (n + 1)) 41

end

end A028754.P14172065730578655363

/-! ## A028754.P18270562159256910161

`A028795(A348553(n))`
-/

namespace A028754.P18270562159256910161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028795 (A348553 n).toNat

end

end A028754.P18270562159256910161

/-!
# A028755: Nonsquares mod 42.

The programs for A028755, there is no canonical definition to state claims against.
-/

/-! ## A028755.P17716600414119022196

`comp[A005843(n)-A070585(n)]`
-/

namespace A028755.P17716600414119022196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A070585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028755.P17716600414119022196

/-! ## A028755.P8216068150617065336

`∪[A016789(n), A047327(n+1)]`
-/

namespace A028755.P8216068150617065336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028755.P8216068150617065336

/-! ## A028755.P8706521131973135965

`∪[A031210(n), A047327(n+1)]`
-/

namespace A028755.P8706521131973135965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031210 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028755.P8706521131973135965

/-! ## A028755.P12083137978862789124

`∪[A047327(n+1), A165334(n+1)]`
-/

namespace A028755.P12083137978862789124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028755.P12083137978862789124

/-!
# A028756: Nonsquares mod 43.

The programs for A028756, there is no canonical definition to state claims against.
-/

/-! ## A028756.P11603758359203477434

`comp[n*A011591(n)]`
-/

namespace A028756.P11603758359203477434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028756.P11603758359203477434

/-! ## A028756.P2307834511189681125

`A028799(n+1)+char[24]`
-/

namespace A028756.P2307834511189681125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028799 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A028756.P2307834511189681125

/-! ## A028756.P4135562588433162083

`comp[n²%A165864(n+1)]`
-/

namespace A028756.P4135562588433162083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A165864 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028756.P4135562588433162083

/-! ## A028756.P5722533116275971007

`A028799(A348553(n))`
-/

namespace A028756.P5722533116275971007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028799 (A348553 n).toNat

end

end A028756.P5722533116275971007

/-! ## A028756.P13417424707913621392

`A028799(A387051(n))`
-/

namespace A028756.P13417424707913621392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028799 (A387051 n).toNat

end

end A028756.P13417424707913621392

/-!
# A028757: Nonsquares mod 44.

The programs for A028757, there is no canonical definition to state claims against.
-/

/-! ## A028757.P1643448228488501353

`lt[or(1, ∑[n*(1-and(2, n))]), ((n^5)%11)²]`
-/

namespace A028757.P1643448228488501353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - (Nat.land 2 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 5 % 11) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A028757.P1643448228488501353

/-! ## A028757.P2822280222741729206

`∪[A042964(n+1), A267541(n)]`
-/

namespace A028757.P2822280222741729206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028757.P2822280222741729206

/-! ## A028757.P14740100565014704323

`comp[A010405(n+1)]`
-/

namespace A028757.P14740100565014704323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028757.P14740100565014704323

/-!
# A028758: Nonsquares mod 45.

The programs for A028758, there is no canonical definition to state claims against.
-/

/-! ## A028758.P2868056013819976345

`comp[(n²-n)%(-90)+n]%45`
-/

namespace A028758.P2868056013819976345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - (n : ℤ)) (-90) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 45

end

end A028758.P2868056013819976345

/-! ## A028758.P6929842813331287893

`A028803(n+1)%45`
-/

namespace A028758.P6929842813331287893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028803 (n + 1)) 45

end

end A028758.P6929842813331287893

/-! ## A028758.P11811685356653046355

`A044923(A028803(n+1))`
-/

namespace A028758.P11811685356653046355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044923 (A028803 (n + 1)).toNat

end

end A028758.P11811685356653046355

/-! ## A028758.P14045765969089986958

`A028803(A044922(n+1))`
-/

namespace A028758.P14045765969089986958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028803 (A044922 (n + 1)).toNat

end

end A028758.P14045765969089986958

/-! ## A028758.P8695811551962627333

`A028803(A071669(n+1))`
-/

namespace A028758.P8695811551962627333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028803 (A071669 (n + 1)).toNat

end

end A028758.P8695811551962627333

/-!
# A028759: Nonsquares mod 46.

The programs for A028759, there is no canonical definition to state claims against.
-/

/-! ## A028759.P14095643856867012545

`A278579(n+1)%63`
-/

namespace A028759.P14095643856867012545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278579 (n + 1)) 63

end

end A028759.P14095643856867012545

/-! ## A028759.P331215566969492642

`A278579(comp[2*a(n-1)-a(n-2)])` with `a(0)=23, a(1)=0, a(2)=23`
-/

namespace A028759.P331215566969492642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [23, 0, 23] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A028759.P331215566969492642

/-! ## A028759.P1254347905399684401

`A278579(A348553(n))`
-/

namespace A028759.P1254347905399684401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (A348553 n).toNat

end

end A028759.P1254347905399684401

/-! ## A028759.P6624885553116858516

`A278579(A387051(n))`
-/

namespace A028759.P6624885553116858516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (A387051 n).toNat

end

end A028759.P6624885553116858516

/-! ## A028759.P15812882201354654541

`A278579(A387108(n))`
-/

namespace A028759.P15812882201354654541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (A387108 n).toNat

end

end A028759.P15812882201354654541

/-!
# A028760: Nonsquares mod 47.

The programs for A028760, there is no canonical definition to state claims against.
-/

/-! ## A028760.P13889113584719588783

`comp[n*A011592(n)]`
-/

namespace A028760.P13889113584719588783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028760.P13889113584719588783

/-! ## A028760.P11646120375364062518

`A028807(n+1)+char[35]`
-/

namespace A028760.P11646120375364062518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028807 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A028760.P11646120375364062518

/-! ## A028760.P15517452472832094007

`eq[0, A033759(64*n)²]`
-/

namespace A028760.P15517452472832094007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033759 (64 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028760.P15517452472832094007

/-! ## A028760.P5697628323578154399

`eq[0, A035143(n+1)]+1`
-/

namespace A028760.P5697628323578154399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035143 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028760.P5697628323578154399

/-! ## A028760.P8832764968142984042

`A028807(A348553(n))`
-/

namespace A028760.P8832764968142984042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028807 (A348553 n).toNat

end

end A028760.P8832764968142984042

/-!
# A028761: Nonsquares mod 48.

The programs for A028761, there is no canonical definition to state claims against.
-/

/-! ## A028761.P9874414952189894200

`comp[n*and(n, -33)]`
-/

namespace A028761.P9874414952189894200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-33)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028761.P9874414952189894200

/-! ## A028761.P4041829025697633186

`comp[and(19*n², n²)]`
-/

namespace A028761.P4041829025697633186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (19 * n ^ 2) (n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028761.P4041829025697633186

/-! ## A028761.P1335457913375820834

`comp[∪[(n+1)*n²-3, n²]]`
-/

namespace A028761.P1335457913375820834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * n ^ 2 : ℤ) - 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028761.P1335457913375820834

/-! ## A028761.P14344932355361066274

`comp[(n-7*floor(n/10))*comp[or(7, n)]]`
-/

namespace A028761.P14344932355361066274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 7 * ⌊(n : ℚ) / 10⌋) * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028761.P14344932355361066274

/-! ## A028761.P1577967417879032864

`comp[lcm(∏{digits}[n, #+1]-1, n*∏{digits}[n, #])]`
-/

namespace A028761.P1577967417879032864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x + 1).prod : ℕ) : ℤ) - 1) ((n * ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028761.P1577967417879032864

/-!
# A028762: Nonsquares mod 49.

The programs for A028762, there is no canonical definition to state claims against.
-/

/-! ## A028762.P690396641827242604

`∑[ceil(exp(cos(11*n)))]`
-/

namespace A028762.P690396641827242604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (Real.cos (11 * n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028762.P690396641827242604

/-! ## A028762.P9740728777800028230

`comp[n*(n^3)%7]`
-/

namespace A028762.P9740728777800028230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 3 % 7)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028762.P9740728777800028230

/-! ## A028762.P14277337096665813077

`∑[3-ceil(sqrt(n%4))]`
-/

namespace A028762.P14277337096665813077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ⌈Real.sqrt ((n % 4 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028762.P14277337096665813077

/-! ## A028762.P17534269225501494440

`∑[3-ceil(sqrt(and(3, n)))]`
-/

namespace A028762.P17534269225501494440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ⌈Real.sqrt (Nat.land 3 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028762.P17534269225501494440

/-! ## A028762.P2906266057276943420

`record[∑[3-n²%7]]`
-/

namespace A028762.P2906266057276943420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n ^ 2 % 7 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028762.P2906266057276943420

/-!
# A028763: Nonsquares mod 50.

The programs for A028763, there is no canonical definition to state claims against.
-/

/-! ## A028763.P4755737385275748217

`comp[∪[comp[round(5*n/3)], n²]]`
-/

namespace A028763.P4755737385275748217
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((n : ℚ) / 3))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028763.P4755737385275748217

/-! ## A028763.P18268280483613304442

`comp[a(n-2)+5]` with `a(0)=0, a(1)=25, a(2)=1, a(3)=4, a(4)=6`
-/

namespace A028763.P18268280483613304442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 25, 1, 4, 6] fun n f1 =>
  f1 (n - 2) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028763.P18268280483613304442

/-! ## A028763.P6872807887144121376

`comp[round(5*n/4)^gcd(2, ∏{p}[n, #])]`
-/

namespace A028763.P6872807887144121376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((n : ℚ) / 4)) ^ Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f2 n), p)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028763.P6872807887144121376

/-! ## A028763.P15819860676861790990

`lt[(n²+1)%5-1, log2(2-char[n²])]`
-/

namespace A028763.P15819860676861790990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 + 1) % 5 : ℕ) : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (2 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A028763.P15819860676861790990

/-! ## A028763.P11273216612494077189

`comp[A010411(n+1)]`
-/

namespace A028763.P11273216612494077189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028763.P11273216612494077189

/-!
# A028764: Nonsquares mod 51.

The programs for A028764, there is no canonical definition to state claims against.
-/

/-! ## A028764.P18267820095320841827

`lt[atan((n²²²+1)%17-1), val(abs(1-2*n), 3)]`
-/

namespace A028764.P18267820095320841827
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan ((((((n ^ 2) ^ 2) ^ 2 + 1) % 17 : ℕ) : ℤ) - 1 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |1 - (2 * n : ℤ)|.toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A028764.P18267820095320841827

/-! ## A028764.P6588314451998345009

`comp[A114327(26*n)+n]+1`
-/

namespace A028764.P6588314451998345009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (26 * n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A028764.P6588314451998345009

/-! ## A028764.P17119391757999147444

`lt[(n²²²+1)%17-1, log(A078688(2*(n+6)))]`
-/

namespace A028764.P17119391757999147444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((((n ^ 2) ^ 2) ^ 2 + 1) % 17 : ℕ) : ℤ) - 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A078688 (2 * (n + 6)) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A028764.P17119391757999147444

/-! ## A028764.P2107157670340205782

`lt[(n²²²+1)%17-1, A001652(A116373(n+1))]`
-/

namespace A028764.P2107157670340205782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((((n ^ 2) ^ 2) ^ 2 + 1) % 17 : ℕ) : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 (A116373 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028764.P2107157670340205782

/-! ## A028764.P3507462286038419861

`comp[A010412(n+1)]`
-/

namespace A028764.P3507462286038419861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028764.P3507462286038419861

/-!
# A028765: Nonsquares mod 52.

The programs for A028765, there is no canonical definition to state claims against.
-/

/-! ## A028765.P9034109316574025031

`comp[A068527(52*n+1)]+1`
-/

namespace A028765.P9034109316574025031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (52 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A028765.P9034109316574025031

/-! ## A028765.P4187014531798887057

`lt[A011583(n), A113036(n+1)]`
-/

namespace A028765.P4187014531798887057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028765.P4187014531798887057

/-! ## A028765.P8988572828674733907

`comp[A010413(n+1)]`
-/

namespace A028765.P8988572828674733907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028765.P8988572828674733907

/-! ## A028765.P16566499812557755310

`comp[record[A010413(A065648(n))]]`
-/

namespace A028765.P16566499812557755310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010413 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028765.P16566499812557755310

/-! ## A028765.P995234109859351495

`comp[record[A010413(A067595(n))]]`
-/

namespace A028765.P995234109859351495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010413 (A067595 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028765.P995234109859351495

/-!
# A028766: Nonsquares mod 53.

The programs for A028766, there is no canonical definition to state claims against.
-/

/-! ## A028766.P15113563864254583899

`comp[A010414(n+1)]`
-/

namespace A028766.P15113563864254583899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028766.P15113563864254583899

/-! ## A028766.P14391264929655699133

`comp[n*A011593(n)]`
-/

namespace A028766.P14391264929655699133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028766.P14391264929655699133

/-! ## A028766.P3400183346432116984

`lt[1, n*A011593(2*n)]`
-/

namespace A028766.P3400183346432116984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011593 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028766.P3400183346432116984

/-! ## A028766.P2163803931788355796

`comp[and(n+1, -A011593(n+1))]`
-/

namespace A028766.P2163803931788355796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-A011593 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028766.P2163803931788355796

/-! ## A028766.P13286787357569849603

`eq[A011593(n), A260196(n)]`
-/

namespace A028766.P13286787357569849603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028766.P13286787357569849603

/-!
# A028767: Nonsquares mod 54.

The programs for A028767, there is no canonical definition to state claims against.
-/

/-! ## A028767.P10083699535773597903

`lt[n+1, A028967(n)²]`
-/

namespace A028767.P10083699535773597903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028767.P10083699535773597903

/-! ## A028767.P15074841745934842188

`comp[record[n+1-n%3-A279329(n)]]`
-/

namespace A028767.P15074841745934842188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((n % 3 : ℕ) : ℤ) - A279329 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028767.P15074841745934842188

/-! ## A028767.P18227977402698508302

`A028794(A133137(n+1))`
-/

namespace A028767.P18227977402698508302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028794 (A133137 (n + 1)).toNat

end

end A028767.P18227977402698508302

/-! ## A028767.P11866510352994884649

`A028794(A160543(n+1))`
-/

namespace A028767.P11866510352994884649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028794 (A160543 (n + 1)).toNat

end

end A028767.P11866510352994884649

/-! ## A028767.P1968952099265835218

`A028794(A023810(n+2))`
-/

namespace A028767.P1968952099265835218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028794 (A023810 (n + 2)).toNat

end

end A028767.P1968952099265835218

/-!
# A028768: Nonsquares mod 55.

The programs for A028768, there is no canonical definition to state claims against.
-/

/-! ## A028768.P6790005091951412394

`∪[A047221(n+1), A267541(n)]`
-/

namespace A028768.P6790005091951412394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028768.P6790005091951412394

/-! ## A028768.P11215545237419715302

`∪[A233998(n+1), A267541(n)]`
-/

namespace A028768.P11215545237419715302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028768.P11215545237419715302

/-! ## A028768.P6241469641839326432

`comp[n²%A000045(A031195(n))]`
-/

namespace A028768.P6241469641839326432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A000045 (A031195 n).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028768.P6241469641839326432

/-! ## A028768.P1754840464890170516

`comp[A010416(n+1)]`
-/

namespace A028768.P1754840464890170516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028768.P1754840464890170516

/-!
# A028769: Nonsquares mod 56.

The programs for A028769, there is no canonical definition to state claims against.
-/

/-! ## A028769.P8494878519772826379

`comp[A114327(4*7*n)+1]`
-/

namespace A028769.P8494878519772826379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (4 * (7 * n)) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028769.P8494878519772826379

/-! ## A028769.P5399838136351643753

`lt[A205974(lcm(n, -1%∏{e}[n, #])), n]`
-/

namespace A028769.P5399838136351643753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205974 (Int.lcm (n : ℤ) (Int.tmod (-1) ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A028769.P5399838136351643753

/-! ## A028769.P10459187939554252882

`eq[0, A033719(n)*A051699(n)]`
-/

namespace A028769.P10459187939554252882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 n * A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028769.P10459187939554252882

/-! ## A028769.P2155518929971803893

`∪[A034035(n+1), A255068(n)]`
-/

namespace A028769.P2155518929971803893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028769.P2155518929971803893

/-! ## A028769.P10785758877909685007

`∪[A034035(n+1), A047586(n+1)]`
-/

namespace A028769.P10785758877909685007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028769.P10785758877909685007

/-!
# A028770: Nonsquares mod 57.

The programs for A028770, there is no canonical definition to state claims against.
-/

/-! ## A028770.P15598880392869246860

`lt[2*A011585(n), (n+1)*Δ[floor(n/3)]]`
-/

namespace A028770.P15598880392869246860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011585 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f3 (n + 1) - f3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028770.P15598880392869246860

/-! ## A028770.P6327444448929502820

`lt[A011585(n), A183063(A133310(2*n+3))]`
-/

namespace A028770.P6327444448929502820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A133310 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028770.P6327444448929502820

/-! ## A028770.P7582986699059079342

`comp[A010418(n+1)]`
-/

namespace A028770.P7582986699059079342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028770.P7582986699059079342

/-! ## A028770.P11031335427957642132

`comp[record[A010418(A133310(n))]]`
-/

namespace A028770.P11031335427957642132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010418 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028770.P11031335427957642132

/-! ## A028770.P333012358076576101

`eq[char[A010418(n+1)], A160145(n+3)]`
-/

namespace A028770.P333012358076576101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010418 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160145 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A028770.P333012358076576101

/-!
# A028771: Nonsquares mod 58.

The programs for A028771, there is no canonical definition to state claims against.
-/

/-! ## A028771.P10601123946837518698

`comp[n-(n²+n)%29]`
-/

namespace A028771.P10601123946837518698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n ^ 2 + n) % 29 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028771.P10601123946837518698

/-! ## A028771.P14680301629258840273

`comp[A010419(n+1)]`
-/

namespace A028771.P14680301629258840273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028771.P14680301629258840273

/-! ## A028771.P14072633952838556951

`lt[A011587(n)+n, n]`
-/

namespace A028771.P14072633952838556951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 n + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028771.P14072633952838556951

/-! ## A028771.P1465329479358143715

`lt[n, n*A186305(n)]`
-/

namespace A028771.P1465329479358143715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A186305 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028771.P1465329479358143715

/-! ## A028771.P16702683601735078507

`A096013(A317594(n+1))`
-/

namespace A028771.P16702683601735078507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096013 (A317594 (n + 1)).toNat

end

end A028771.P16702683601735078507

/-!
# A028772: Nonsquares mod 59.

The programs for A028772, there is no canonical definition to state claims against.
-/

/-! ## A028772.P15242613376724921041

`comp[n*A011594(n)]`
-/

namespace A028772.P15242613376724921041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011594 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028772.P15242613376724921041

/-! ## A028772.P1889889530342374518

`lt[1, n*A011594(2*n)]`
-/

namespace A028772.P1889889530342374518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011594 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028772.P1889889530342374518

/-! ## A028772.P1974532794090785387

`comp[(n+1)²%(59^A001222(n+1))]`
-/

namespace A028772.P1974532794090785387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (SequenceMachineLib.roundAway ((59 : ℚ) ^ (A001222 (n + 1) : ℤ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028772.P1974532794090785387

/-! ## A028772.P4775519161588150816

`eq[A011594(n), A260196(n)]`
-/

namespace A028772.P4775519161588150816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028772.P4775519161588150816

/-! ## A028772.P16740357007637497597

`comp[A010420(n+1)]`
-/

namespace A028772.P16740357007637497597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028772.P16740357007637497597

/-!
# A028773: Nonsquares mod 60.

The programs for A028773, there is no canonical definition to state claims against.
-/

/-! ## A028773.P4300107353352982801

`comp[A369183(A028310(n²))]`
-/

namespace A028773.P4300107353352982801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369183 (A028310 (n ^ 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028773.P4300107353352982801

/-! ## A028773.P7884328265215747686

`comp[A369183(A329048(n)²)]`
-/

namespace A028773.P7884328265215747686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369183 (A329048 n ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028773.P7884328265215747686

/-! ## A028773.P7187099243725085891

`comp[A010421(n+1)]`
-/

namespace A028773.P7187099243725085891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028773.P7187099243725085891

/-! ## A028773.P13259361774448442668

`A028753(n+1)-A070140(n+1)`
-/

namespace A028773.P13259361774448442668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028753 (n + 1) - A070140 (n + 1)

end

end A028773.P13259361774448442668

/-! ## A028773.P11834944803857905287

`A028753(n+1)-A295884(n+1)`
-/

namespace A028773.P11834944803857905287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028753 (n + 1) - A295884 (n + 1)

end

end A028773.P11834944803857905287

/-!
# A028774: Nonsquares mod 61.

The programs for A028774, there is no canonical definition to state claims against.
-/

/-! ## A028774.P14297919783822769197

`comp[n-(n²+n)%61]`
-/

namespace A028774.P14297919783822769197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n ^ 2 + n) % 61 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028774.P14297919783822769197

/-! ## A028774.P6110817607623357713

`comp[A010422(n+1)]`
-/

namespace A028774.P6110817607623357713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028774.P6110817607623357713

/-! ## A028774.P10728368551828218735

`comp[n*A011595(n)]`
-/

namespace A028774.P10728368551828218735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011595 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028774.P10728368551828218735

/-! ## A028774.P5451955844317204875

`lt[sin(n), A011595(2*n)]`
-/

namespace A028774.P5451955844317204875
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A028774.P5451955844317204875

/-! ## A028774.P9683917170148526571

`eq[A011595(n), A260196(n)]`
-/

namespace A028774.P9683917170148526571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028774.P9683917170148526571

/-!
# A028775: Nonsquares mod 62.

The programs for A028775, there is no canonical definition to state claims against.
-/

/-! ## A028775.P7884626692783228471

`comp[(n+2)²%or(62, C(n, 62))]`
-/

namespace A028775.P7884626692783228471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 % Nat.lor 62 (Nat.choose n 62)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028775.P7884626692783228471

/-! ## A028775.P10173963006903494626

`lt[A011588(n)+n, n]`
-/

namespace A028775.P10173963006903494626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028775.P10173963006903494626

/-! ## A028775.P7458233030627595790

`eq[A011588(n), A260196(n)]`
-/

namespace A028775.P7458233030627595790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028775.P7458233030627595790

/-! ## A028775.P9988162493192529813

`lt[A011588(n), A025443(n)]`
-/

namespace A028775.P9988162493192529813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028775.P9988162493192529813

/-! ## A028775.P16320648167270207707

`comp[A010423(n+1)]`
-/

namespace A028775.P16320648167270207707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028775.P16320648167270207707

/-!
# A028776: Nonsquares mod 63.

The programs for A028776, there is no canonical definition to state claims against.
-/

/-! ## A028776.P3418883700775092924

`eq[0, A170770(2*n)]`
-/

namespace A028776.P3418883700775092924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170770 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028776.P3418883700775092924

/-! ## A028776.P11656887166870886691

`eq[and(1, n), A170770(n)]/2`
-/

namespace A028776.P11656887166870886691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170770 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A028776.P11656887166870886691

/-! ## A028776.P9112933103913707886

`lt[A170770(2*(n+1)), 1]+1`
-/

namespace A028776.P9112933103913707886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170770 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A028776.P9112933103913707886

/-! ## A028776.P2432282248727946403

`lt[A170770(A005843(n)), 1]`
-/

namespace A028776.P2432282248727946403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170770 (A005843 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028776.P2432282248727946403

/-! ## A028776.P4089680045762306323

`∪[A016789(n), A257346(n+1)]`
-/

namespace A028776.P4089680045762306323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028776.P4089680045762306323

/-!
# A028777: Nonsquares mod 64.

The programs for A028777, there is no canonical definition to state claims against.
-/

/-! ## A028777.P1666007711360830332

`comp[and((n+2)², or(30, n))]`
-/

namespace A028777.P1666007711360830332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land ((n + 2) ^ 2) (Nat.lor 30 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028777.P1666007711360830332

/-! ## A028777.P12006110675372204727

`comp[and((n%4+n)/2, n²)]`
-/

namespace A028777.P12006110675372204727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (((n % 4 + n : ℕ) : ℚ) / 2)) (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028777.P12006110675372204727

/-! ## A028777.P1477208749717872037

`comp[n²%(2^ceil(log2(n+1)))]`
-/

namespace A028777.P1477208749717872037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028777.P1477208749717872037

/-! ## A028777.P12130672576039740328

`comp[and(n², floor(13*n²/4))]`
-/

namespace A028777.P12130672576039740328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n ^ 2 : ℤ) ⌊(13 * n ^ 2 : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028777.P12130672576039740328

/-! ## A028777.P15745079858749735587

`comp[and(n, -(n+2))-(n-floor(sqrt(n))²)]`
-/

namespace A028777.P15745079858749735587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ)) - ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028777.P15745079858749735587

/-! ## A028777.P13015413923133976382

`comp[A344851(n)]`
-/

namespace A028777.P13015413923133976382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344851 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028777.P13015413923133976382

/-! ## A028777.P4812423693719134335

`A028962(n+2)`
-/

namespace A028777.P4812423693719134335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028962 (n + 2)

end

end A028777.P4812423693719134335

/-! ## A028777.P10407985469659336979

`lt[1, A028963(n)]`
-/

namespace A028777.P10407985469659336979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028777.P10407985469659336979

/-! ## A028777.P11943907687586938515

`lt[1, A029681(n)]`
-/

namespace A028777.P11943907687586938515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028777.P11943907687586938515

/-! ## A028777.P10883333013279383800

`filter[A004774(n+2), A049240(#)]`
-/

namespace A028777.P10883333013279383800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004774 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A028777.P10883333013279383800

/-!
# A028778: Nonsquares mod 65.

The programs for A028778, there is no canonical definition to state claims against.
-/

/-! ## A028778.P8296531361038197554

`comp[A010426(n+1)]`
-/

namespace A028778.P8296531361038197554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028778.P8296531361038197554

/-! ## A028778.P5852328816639597257

`comp[n²%A351308(3*n+2)]`
-/

namespace A028778.P5852328816639597257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A351308 (3 * n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028778.P5852328816639597257

/-! ## A028778.P17572233281656464180

`comp[record[A010426(A065648(n))]]`
-/

namespace A028778.P17572233281656464180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010426 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028778.P17572233281656464180

/-! ## A028778.P5235312045791275854

`comp[record[A010426(A133310(n))]]`
-/

namespace A028778.P5235312045791275854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010426 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028778.P5235312045791275854

/-! ## A028778.P7898593938901850849

`comp[Δ[A010426(A152271(n))]]`
-/

namespace A028778.P7898593938901850849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010426 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028778.P7898593938901850849

/-!
# A028779: Nonsquares mod 66.

The programs for A028779, there is no canonical definition to state claims against.
-/

/-! ## A028779.P17453786248745305903

`comp[n-(n^6)%33]`
-/

namespace A028779.P17453786248745305903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n ^ 6 % 33 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028779.P17453786248745305903

/-! ## A028779.P11435572066529740817

`comp[n-A070656(n)]`
-/

namespace A028779.P11435572066529740817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A070656 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028779.P11435572066529740817

/-! ## A028779.P14366943479397794274

`∪[A016789(n), A267541(n)]`
-/

namespace A028779.P14366943479397794274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028779.P14366943479397794274

/-! ## A028779.P15748301004582228848

`∪[A180486(n+1), A267541(n)]`
-/

namespace A028779.P15748301004582228848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028779.P15748301004582228848

/-! ## A028779.P453712623870476589

`∪[A267541(n), A292661(n+1)]`
-/

namespace A028779.P453712623870476589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028779.P453712623870476589

/-!
# A028780: Nonsquares mod 67.

The programs for A028780, there is no canonical definition to state claims against.
-/

/-! ## A028780.P15839094134977559948

`comp[n*A011596(n)]`
-/

namespace A028780.P15839094134977559948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028780.P15839094134977559948

/-! ## A028780.P2714769195047975917

`lt[1, n*A011596(2*n)]`
-/

namespace A028780.P2714769195047975917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011596 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028780.P2714769195047975917

/-! ## A028780.P18086630311518461108

`record[and(n+2, A011596(n+2))]`
-/

namespace A028780.P18086630311518461108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (A011596 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028780.P18086630311518461108

/-! ## A028780.P1497307591401768902

`record[(n+2)*A011596(2*(n+2))]`
-/

namespace A028780.P1497307591401768902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A011596 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028780.P1497307591401768902

/-! ## A028780.P7212070587242932599

`eq[A011596(n), A260196(n)]`
-/

namespace A028780.P7212070587242932599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028780.P7212070587242932599

/-!
# A028781: Nonsquares mod 68.

The programs for A028781, there is no canonical definition to state claims against.
-/

/-! ## A028781.P17583812445946827663

`lt[1-and(2, n), and(n, (n²²²+1)%17-1)]`
-/

namespace A028781.P17583812445946827663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((((((n ^ 2) ^ 2) ^ 2 + 1) % 17 : ℕ) : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028781.P17583812445946827663

/-! ## A028781.P9404659760216155583

`lt[A011584(n), A000096(A050605(n))]`
-/

namespace A028781.P9404659760216155583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A050605 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028781.P9404659760216155583

/-! ## A028781.P15939461634041099477

`comp[A010429(n+1)]`
-/

namespace A028781.P15939461634041099477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028781.P15939461634041099477

/-! ## A028781.P8297182543535799614

`comp[record[A010429(A133310(n))]]`
-/

namespace A028781.P8297182543535799614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010429 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028781.P8297182543535799614

/-! ## A028781.P17681044569431436816

`lt[(-1)^C(n, 2), A331904(A323607(3*n+2))]`
-/

namespace A028781.P17681044569431436816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ Nat.choose n 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (A323607 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028781.P17681044569431436816

/-!
# A028782: Nonsquares mod 69.

The programs for A028782, there is no canonical definition to state claims against.
-/

/-! ## A028782.P3382531412399174515

`∪[3*n+2, A278579(n+1)]`
-/

namespace A028782.P3382531412399174515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028782.P3382531412399174515

/-! ## A028782.P11651725917790002004

`∪[A278579(n+1), A292661(n+1)]`
-/

namespace A028782.P11651725917790002004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028782.P11651725917790002004

/-! ## A028782.P15778058236871521843

`comp[A010430(n+1)]`
-/

namespace A028782.P15778058236871521843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028782.P15778058236871521843

/-! ## A028782.P1341376926383652009

`comp[record[A010430(A133310(n))]]`
-/

namespace A028782.P1341376926383652009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010430 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028782.P1341376926383652009

/-! ## A028782.P12126008051026406239

`comp[Δ[A010430(A152271(n))]]`
-/

namespace A028782.P12126008051026406239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010430 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028782.P12126008051026406239

/-!
# A028783: Nonsquares mod 70.

The programs for A028783, there is no canonical definition to state claims against.
-/

/-! ## A028783.P17901821111800626167

`comp[A114327(35*n)+1]`
-/

namespace A028783.P17901821111800626167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (35 * n) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028783.P17901821111800626167

/-! ## A028783.P15503249442548413400

`∪[A047221(n+1), A047327(n+1)]`
-/

namespace A028783.P15503249442548413400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028783.P15503249442548413400

/-! ## A028783.P9840610345510918794

`comp[∩[A008854(n+1), A047351(n+1)]]`
-/

namespace A028783.P9840610345510918794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047351 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028783.P9840610345510918794

/-! ## A028783.P2553951809182244831

`comp[A010431(n+1)]`
-/

namespace A028783.P2553951809182244831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028783.P2553951809182244831

/-!
# A028784: Nonsquares mod 71.

The programs for A028784, there is no canonical definition to state claims against.
-/

/-! ## A028784.P4971817468467142057

`comp[n*A011597(n)]`
-/

namespace A028784.P4971817468467142057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011597 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028784.P4971817468467142057

/-! ## A028784.P214631778088283402

`lt[A011597(2*n), sin(n)]`
-/

namespace A028784.P214631778088283402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 (2 * n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A028784.P214631778088283402

/-! ## A028784.P17596736209837130571

`comp[A068527(72*n-n)]`
-/

namespace A028784.P17596736209837130571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (72 * n - n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028784.P17596736209837130571

/-! ## A028784.P13393038350753401778

`eq[n+1, n-A011597(3*n)]`
-/

namespace A028784.P13393038350753401778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011597 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028784.P13393038350753401778

/-! ## A028784.P6157919237448138763

`eq[A011597(n), A260196(n)]`
-/

namespace A028784.P6157919237448138763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028784.P6157919237448138763

/-!
# A028785: Nonsquares mod 72.

The programs for A028785, there is no canonical definition to state claims against.
-/

/-! ## A028785.P15502418066089096163

`comp[∪[12*n+4, record[∑{digits}[n, #²]]]]`
-/

namespace A028785.P15502418066089096163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 4

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f5 n)).map fun (x : ℕ) => x ^ 2).sum

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028785.P15502418066089096163

/-! ## A028785.P4954776866955373490

`comp[∪[4*(2*n+1+n), n²]]`
-/

namespace A028785.P4954776866955373490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (2 * n + 1 + n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028785.P4954776866955373490

/-! ## A028785.P3661015743194042033

`comp[and(-(-1)^n, ceil(n/2))*A006370(n)]`
-/

namespace A028785.P3661015743194042033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-((-1) ^ n)) ⌈(n : ℚ) / 2⌉ * A006370 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028785.P3661015743194042033

/-! ## A028785.P3057171907479748200

`eq[A000122(n), A047752(n+1)]`
-/

namespace A028785.P3057171907479748200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028785.P3057171907479748200

/-! ## A028785.P1761536501419262115

`eq[A002448(n), A047752(n+1)]`
-/

namespace A028785.P1761536501419262115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028785.P1761536501419262115

/-! ## A028785.P7090971233639647953

`eq[A010052(n), A047752(n+1)]`
-/

namespace A028785.P7090971233639647953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028785.P7090971233639647953

/-! ## A028785.P12895972135203192294

`eq[A037213(n), A047751(n+1)]`
-/

namespace A028785.P12895972135203192294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028785.P12895972135203192294

/-! ## A028785.P15132205446471706281

`eq[A047752(n+1), A089807(n)]`
-/

namespace A028785.P15132205446471706281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028785.P15132205446471706281

/-! ## A028785.P9667909060729888603

`eq[A047752(n+1), A089810(n)]`
-/

namespace A028785.P9667909060729888603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028785.P9667909060729888603

/-! ## A028785.P17348539854103629028

`eq[A047751(n+1), A258998(n)]`
-/

namespace A028785.P17348539854103629028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028785.P17348539854103629028

/-!
# A028786: Nonsquares mod 73.

The programs for A028786, there is no canonical definition to state claims against.
-/

/-! ## A028786.P9860563285877580525

`comp[A010434(n+1)]`
-/

namespace A028786.P9860563285877580525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028786.P9860563285877580525

/-! ## A028786.P12018443385811875949

`comp[n*A011598(n)]`
-/

namespace A028786.P12018443385811875949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011598 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028786.P12018443385811875949

/-! ## A028786.P15232074863757643530

`lt[A011598(3*n), sin(n)]`
-/

namespace A028786.P15232074863757643530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011598 (3 * n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A028786.P15232074863757643530

/-! ## A028786.P9916996749259769160

`lt[n, n-A011598(2*n)]`
-/

namespace A028786.P9916996749259769160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011598 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028786.P9916996749259769160

/-!
# A028787: Nonsquares mod 74.

The programs for A028787, there is no canonical definition to state claims against.
-/

/-! ## A028787.P14878902288875753488

`comp[A010435(n+1)]`
-/

namespace A028787.P14878902288875753488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028787.P14878902288875753488

/-! ## A028787.P1557294061631310244

`comp[A053186(37*n)]`
-/

namespace A028787.P1557294061631310244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (37 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028787.P1557294061631310244

/-! ## A028787.P1006143187988632997

`lt[A011589(n)+n, n]`
-/

namespace A028787.P1006143187988632997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028787.P1006143187988632997

/-! ## A028787.P5691605002323774673

`comp[lt[n*A011589(2*n), 1]]`
-/

namespace A028787.P5691605002323774673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011589 (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028787.P5691605002323774673

/-! ## A028787.P517375827742148701

`eq[A011589(n), A260196(n)]`
-/

namespace A028787.P517375827742148701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028787.P517375827742148701

/-!
# A028788: Nonsquares mod 75.

The programs for A028788, there is no canonical definition to state claims against.
-/

/-! ## A028788.P11585141231376595130

`comp[∪[A047201(and(3*n+1, -3)), n²]]`
-/

namespace A028788.P11585141231376595130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (Int.land (3 * n + 1 : ℤ) (-3)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028788.P11585141231376595130

/-! ## A028788.P3984503237763041821

`comp[eq[A028973(4*n), A128771(5*n)]]`
-/

namespace A028788.P3984503237763041821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028973 (4 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128771 (5 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028788.P3984503237763041821

/-! ## A028788.P16503008684399479647

`comp[A010436(n+1)]`
-/

namespace A028788.P16503008684399479647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028788.P16503008684399479647

/-! ## A028788.P10361080533455729828

`comp[record[A010436(A065648(n))]]`
-/

namespace A028788.P10361080533455729828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010436 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028788.P10361080533455729828

/-! ## A028788.P2356033314418134046

`comp[record[A010436(A133310(n))]]`
-/

namespace A028788.P2356033314418134046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010436 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028788.P2356033314418134046

/-!
# A028789: Nonsquares mod 76.

The programs for A028789, there is no canonical definition to state claims against.
-/

/-! ## A028789.P4418095941979377035

`lt[A011585(n), A046922(A000217(n+3))]`
-/

namespace A028789.P4418095941979377035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (A000217 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028789.P4418095941979377035

/-! ## A028789.P7734558317381623146

`eq[(A011585(n)+2)*A137828(n), A137828(n)]`
-/

namespace A028789.P7734558317381623146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011585 n + 2) * A137828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028789.P7734558317381623146

/-! ## A028789.P8023244404506201747

`lt[A009001(n), (1-A011585(n))*A099506(n+1)]`
-/

namespace A028789.P8023244404506201747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A011585 n) * A099506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028789.P8023244404506201747

/-! ## A028789.P6272239244225265928

`lt[A009001(n), (A011585(2*n)+1)*A099506(n+1)]`
-/

namespace A028789.P6272239244225265928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011585 (2 * n) + 1) * A099506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028789.P6272239244225265928

/-! ## A028789.P9553692601698050864

`comp[A010437(n+1)]`
-/

namespace A028789.P9553692601698050864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028789.P9553692601698050864

/-!
# A028790: Nonsquares mod 77.

The programs for A028790, there is no canonical definition to state claims against.
-/

/-! ## A028790.P16185028251799861314

`∪[A047327(n+1), A267541(n)]`
-/

namespace A028790.P16185028251799861314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028790.P16185028251799861314

/-! ## A028790.P17100389408561738168

`comp[A010438(n+1)]`
-/

namespace A028790.P17100389408561738168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028790.P17100389408561738168

/-! ## A028790.P14916437910160779010

`comp[record[A010438(A117910(n))]]`
-/

namespace A028790.P14916437910160779010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010438 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028790.P14916437910160779010

/-! ## A028790.P10921668778868077934

`comp[record[A010438(A133310(n))]]`
-/

namespace A028790.P10921668778868077934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010438 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028790.P10921668778868077934

/-! ## A028790.P54003646870365513

`comp[record[A010438(A134478(n))]]`
-/

namespace A028790.P54003646870365513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010438 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028790.P54003646870365513

/-!
# A028791: Nonsquares mod 78.

The programs for A028791, there is no canonical definition to state claims against.
-/

/-! ## A028791.P4695943316764660607

`comp[3%comp[∑[n]]+n-A070461(n)]`
-/

namespace A028791.P4695943316764660607
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n : ℕ) : ℤ) - A070461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028791.P4695943316764660607

/-! ## A028791.P939323091428497007

`comp[A010439(n+1)]`
-/

namespace A028791.P939323091428497007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028791.P939323091428497007

/-!
# A028792: Nonsquares mod 79.

The programs for A028792, there is no canonical definition to state claims against.
-/

/-! ## A028792.P14176578135372616683

`comp[n*A011599(n)]`
-/

namespace A028792.P14176578135372616683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011599 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028792.P14176578135372616683

/-! ## A028792.P7336488076588453559

`lt[A011599(2*n)+n, n]`
-/

namespace A028792.P7336488076588453559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 (2 * n) + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028792.P7336488076588453559

/-! ## A028792.P17359955306783513492

`eq[A011599(n), A260196(n)]`
-/

namespace A028792.P17359955306783513492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028792.P17359955306783513492

/-! ## A028792.P6758015240545521173

`lt[A011599(n), A010060(n)]`
-/

namespace A028792.P6758015240545521173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028792.P6758015240545521173

/-! ## A028792.P9323160138119774401

`comp[A010440(n+1)]`
-/

namespace A028792.P9323160138119774401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028792.P9323160138119774401

/-!
# A028793: Nonsquares mod 80.

The programs for A028793, there is no canonical definition to state claims against.
-/

/-! ## A028793.P15068713095415214746

`comp[A236104(n+1)%A151789(2*(n+1))]`
-/

namespace A028793.P15068713095415214746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236104 (n + 1)) (A151789 (2 * (n + 1)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028793.P15068713095415214746

/-! ## A028793.P11569129993653428014

`lt[A295555(A255328(n+2)), A002828(n)]`
-/

namespace A028793.P11569129993653428014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295555 (A255328 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028793.P11569129993653428014

/-! ## A028793.P13718385380055435928

`lt[A002325(A000096(2*n+1)), A211097(n+1)]`
-/

namespace A028793.P13718385380055435928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A000096 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028793.P13718385380055435928

/-! ## A028793.P4858167955385287395

`comp[A010441(n+1)]`
-/

namespace A028793.P4858167955385287395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028793.P4858167955385287395

/-!
# A028794: Nonsquares mod 81.

The programs for A028794, there is no canonical definition to state claims against.
-/

/-! ## A028794.P1721074432498404869

`comp[n²%∏{e}[n, 3*#]²]`
-/

namespace A028794.P1721074432498404869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % (∏ p ∈ Nat.primeFactors (f2 n), 3 * Nat.factorization (f2 n) p) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028794.P1721074432498404869

/-! ## A028794.P10140546922203992613

`comp[A339023(n)]`
-/

namespace A028794.P10140546922203992613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028794.P10140546922203992613

/-! ## A028794.P16750485237059611725

`A028966(n+1)`
-/

namespace A028794.P16750485237059611725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028966 (n + 1)

end

end A028794.P16750485237059611725

/-! ## A028794.P10993510541452394612

`lt[1, A028967(n)]`
-/

namespace A028794.P10993510541452394612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028794.P10993510541452394612

/-! ## A028794.P1527622988046461022

`lt[1, A224822(2*n)]`
-/

namespace A028794.P1527622988046461022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224822 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028794.P1527622988046461022

/-! ## A028794.P5289909045425141918

`lt[1, A224822(n)]/2`
-/

namespace A028794.P5289909045425141918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224822 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A028794.P5289909045425141918

/-! ## A028794.P4115551789446110434

`record[A028966(abs(1-n))]`
-/

namespace A028794.P4115551789446110434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028966 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028794.P4115551789446110434

/-! ## A028794.P11721115558508550055

`∩[A028966(n), A045506(n)]`
-/

namespace A028794.P11721115558508550055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045506 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028794.P11721115558508550055

/-! ## A028794.P16405117627984345709

`∪[A026344(n+1), A189716(n+1)]`
-/

namespace A028794.P16405117627984345709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028794.P16405117627984345709

/-!
# A028795: Nonsquares mod 82.

The programs for A028795, there is no canonical definition to state claims against.
-/

/-! ## A028795.P3086915035543200992

`comp[n-(n²+n)%41]`
-/

namespace A028795.P3086915035543200992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n ^ 2 + n) % 41 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028795.P3086915035543200992

/-! ## A028795.P5587828768017082995

`comp[A010443(n+1)]`
-/

namespace A028795.P5587828768017082995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028795.P5587828768017082995

/-! ## A028795.P12894162097859768807

`lt[n^A011590(n), 1]`
-/

namespace A028795.P12894162097859768807
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A011590 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A028795.P12894162097859768807

/-! ## A028795.P5944790619704735221

`eq[A011590(n), A260196(n)]`
-/

namespace A028795.P5944790619704735221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028795.P5944790619704735221

/-! ## A028795.P3884818393516732988

`lt[A011590(n), A188967(n+1)]`
-/

namespace A028795.P3884818393516732988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028795.P3884818393516732988

/-!
# A028796: Nonsquares mod 83.

The programs for A028796, there is no canonical definition to state claims against.
-/

/-! ## A028796.P3959196944304769133

`comp[n*A011600(n)]`
-/

namespace A028796.P3959196944304769133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011600 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028796.P3959196944304769133

/-! ## A028796.P8347046033402740986

`lt[sin(n), A011600(2*n)]`
-/

namespace A028796.P8347046033402740986
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A028796.P8347046033402740986

/-! ## A028796.P6316804522301039434

`eq[1, gcd(2, A036178(n+1))]+1`
-/

namespace A028796.P6316804522301039434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A036178 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A028796.P6316804522301039434

/-! ## A028796.P9102407137685831113

`eq[A011600(n), A260196(n)]`
-/

namespace A028796.P9102407137685831113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028796.P9102407137685831113

/-! ## A028796.P5120707916703085440

`comp[A010444(n+1)]`
-/

namespace A028796.P5120707916703085440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028796.P5120707916703085440

/-!
# A028797: Nonsquares mod 84.

The programs for A028797, there is no canonical definition to state claims against.
-/

/-! ## A028797.P17347541958523193812

`comp[A010445(n+1)]`
-/

namespace A028797.P17347541958523193812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028797.P17347541958523193812

/-! ## A028797.P1227377775680267408

`∪[A028755(n+1), A042964(n+1)]`
-/

namespace A028797.P1227377775680267408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028797.P1227377775680267408

/-! ## A028797.P16199512844275152930

`∪[A028755(n+1), A047552(n+1)]`
-/

namespace A028797.P16199512844275152930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028797.P16199512844275152930

/-! ## A028797.P11662950384164770688

`∪[A028755(n+1), A286054(n+1)]`
-/

namespace A028797.P11662950384164770688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028797.P11662950384164770688

/-! ## A028797.P915517979035633341

`∪[A028755(n+1), A307414(n+1)]`
-/

namespace A028797.P915517979035633341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028797.P915517979035633341

/-!
# A028798: Nonsquares mod 85.

The programs for A028798, there is no canonical definition to state claims against.
-/

/-! ## A028798.P17129134973404780495

`comp[n-(n²+n)%85]`
-/

namespace A028798.P17129134973404780495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n ^ 2 + n) % 85 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028798.P17129134973404780495

/-! ## A028798.P4184269305447287611

`comp[A010446(n+1)]`
-/

namespace A028798.P4184269305447287611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028798.P4184269305447287611

/-! ## A028798.P226343101261920116

`comp[Δ[A010446(A158416(n))]]`
-/

namespace A028798.P226343101261920116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010446 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028798.P226343101261920116

/-! ## A028798.P249728425671291507

`lt[A000122(n), A321742(A184240(2*n+3))]`
-/

namespace A028798.P249728425671291507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321742 (A184240 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028798.P249728425671291507

/-! ## A028798.P11481692110178178284

`A004526(A230201(n+2)+A126295(n))`
-/

namespace A028798.P11481692110178178284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A230201 (n + 2) + A126295 n).toNat

end

end A028798.P11481692110178178284

/-!
# A028799: Nonsquares mod 86.

The programs for A028799, there is no canonical definition to state claims against.
-/

/-! ## A028799.P5451476346476185838

`lt[A011591(n)+n, n]`
-/

namespace A028799.P5451476346476185838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028799.P5451476346476185838

/-! ## A028799.P8616006705937996871

`lt[1, n*A011591(2*n)]`
-/

namespace A028799.P8616006705937996871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011591 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028799.P8616006705937996871

/-! ## A028799.P572079056402121668

`eq[A011591(n), A260196(n)]`
-/

namespace A028799.P572079056402121668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028799.P572079056402121668

/-! ## A028799.P15433585274875432174

`lt[A011591(n), A063524(n)]`
-/

namespace A028799.P15433585274875432174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028799.P15433585274875432174

/-! ## A028799.P3156980999165320765

`comp[A010447(n+1)]`
-/

namespace A028799.P3156980999165320765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028799.P3156980999165320765

