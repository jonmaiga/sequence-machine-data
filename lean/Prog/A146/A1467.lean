import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A146700: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1100-1111-0010 pattern in any orientation.

The programs for A146700, there is no canonical definition to state claims against.
-/

/-! ## A146700.P15268380330276065591

`filter[A146708(n+1), A022924(#)]`
-/

namespace A146700.P15268380330276065591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022924 (f1 j).toNat = 1) n)

end

end A146700.P15268380330276065591

/-! ## A146700.P15842859766202039966

`filter[A146708(n+1), A022928(#)]`
-/

namespace A146700.P15842859766202039966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022928 (f1 j).toNat = 1) n)

end

end A146700.P15842859766202039966

/-! ## A146700.P6696415793224540133

`filter[A146708(n+1), A030190(#)]`
-/

namespace A146700.P6696415793224540133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030190 (f1 j).toNat = 1) n)

end

end A146700.P6696415793224540133

/-! ## A146700.P6262094415871702662

`filter[A146708(n+1), A030302(#)]`
-/

namespace A146700.P6262094415871702662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030302 (f1 j).toNat = 1) n)

end

end A146700.P6262094415871702662

/-! ## A146700.P11983640344455118626

`filter[A146708(n+1), A039985(#)]`
-/

namespace A146700.P11983640344455118626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039985 (f1 j).toNat = 1) n)

end

end A146700.P11983640344455118626

/-!
# A146701: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-1111-0010 pattern in any orientation.

The programs for A146701, there is no canonical definition to state claims against.
-/

/-! ## A146701.P3005080995685982817

`A146703(2*n+3)`
-/

namespace A146701.P3005080995685982817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146703 (2 * n + 3)

end

end A146701.P3005080995685982817

/-! ## A146701.P11076279842075171075

`or(1, A146703(A144396(n+1)))`
-/

namespace A146701.P11076279842075171075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146703 (A144396 (n + 1)).toNat)

end

end A146701.P11076279842075171075

/-! ## A146701.P4964554322540793004

`or(1, A146703(A160217(n+1)))`
-/

namespace A146701.P4964554322540793004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146703 (A160217 (n + 1)).toNat)

end

end A146701.P4964554322540793004

/-! ## A146701.P728194608345316367

`or(1, A146703(A346302(n+1)))`
-/

namespace A146701.P728194608345316367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146703 (A346302 (n + 1)).toNat)

end

end A146701.P728194608345316367

/-! ## A146701.P10610737630587277090

`∏{d}[A144396(n+1), A146703(#)]`
-/

namespace A146701.P10610737630587277090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146703 d

end

end A146701.P10610737630587277090

/-!
# A146702: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-1111-0010 pattern in any orientation.

The programs for A146702, there is no canonical definition to state claims against.
-/

/-! ## A146702.P4906936112458383990

`A184955(A147266(n+4))+A146710(n+1)`
-/

namespace A146702.P4906936112458383990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A147266 (n + 4)).toNat + A146710 (n + 1)

end

end A146702.P4906936112458383990

/-! ## A146702.P16567100355354063900

`A281116(A146716(n+4))+A146710(n+1)`
-/

namespace A146702.P16567100355354063900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A146716 (n + 4)).toNat + A146710 (n + 1)

end

end A146702.P16567100355354063900

/-! ## A146702.P1829160044494955902

`and(A033553(A146670(n+3)), A146670(n+1))`
-/

namespace A146702.P1829160044494955902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033553 (A146670 (n + 3)).toNat) (A146670 (n + 1))

end

end A146702.P1829160044494955902

/-! ## A146702.P6476500340455986962

`A000188(A146734(n+1)²)`
-/

namespace A146702.P6476500340455986962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A146734 (n + 1) ^ 2).toNat

end

end A146702.P6476500340455986962

/-! ## A146702.P14952853938283254829

`A019555(A146734(n+1)^2)`
-/

namespace A146702.P14952853938283254829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A146734 (n + 1) ^ 2).toNat

end

end A146702.P14952853938283254829

/-!
# A146703: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1100-1111-0010 pattern in any orientation.

The programs for A146703, there is no canonical definition to state claims against.
-/

/-! ## A146703.P15289031627350402430

`A146701(A003108(2*(n+2))+1)`
-/

namespace A146703.P15289031627350402430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146701 (A003108 (2 * (n + 2)) + 1).toNat

end

end A146703.P15289031627350402430

/-!
# A146704: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-1111-0010 pattern in any orientation.

The programs for A146704, there is no canonical definition to state claims against.
-/

/-! ## A146704.P14050361414667027345

`A383515(A146371(n+1))`
-/

namespace A146704.P14050361414667027345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383515 (A146371 (n + 1)).toNat

end

end A146704.P14050361414667027345

/-! ## A146704.P1277875100945953312

`A383515(A146379(n+1))`
-/

namespace A146704.P1277875100945953312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383515 (A146379 (n + 1)).toNat

end

end A146704.P1277875100945953312

/-!
# A146705: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-1111-0010 pattern in any orientation.

The programs for A146705, there is no canonical definition to state claims against.
-/

/-! ## A146705.P11786686161179859646

`A326546(A147232(n+1))+A147222(n+1)`
-/

namespace A146705.P11786686161179859646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326546 (A147232 (n + 1)).toNat + A147222 (n + 1)

end

end A146705.P11786686161179859646

/-!
# A146706: Number of n X n binary arrays with all ones connected only in a 1100-1111-0100 pattern in any orientation.

The programs for A146706, there is no canonical definition to state claims against.
-/

/-! ## A146706.P9682173135919814175

`A146708(2*(n+2))`
-/

namespace A146706.P9682173135919814175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146708 (2 * (n + 2))

end

end A146706.P9682173135919814175

/-! ## A146706.P11821219645631357300

`A146708(A054406(n+1))^A146684(n+1)`
-/

namespace A146706.P11821219645631357300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146708 (A054406 (n + 1)).toNat : ℚ) ^ (A146684 (n + 1) : ℤ)

end

end A146706.P11821219645631357300

/-! ## A146706.P7835837248077003354

`A146708(A054406(n+1))^A146692(n+1)`
-/

namespace A146706.P7835837248077003354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146708 (A054406 (n + 1)).toNat : ℚ) ^ (A146692 (n + 1) : ℤ)

end

end A146706.P7835837248077003354

/-! ## A146706.P6168063613421223014

`A146708(A054406(n+1))^A146708(n+1)`
-/

namespace A146706.P6168063613421223014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146708 (A054406 (n + 1)).toNat : ℚ) ^ (A146708 (n + 1) : ℤ)

end

end A146706.P6168063613421223014

/-!
# A146709: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-1111-0100 pattern in any orientation.

The programs for A146709, there is no canonical definition to state claims against.
-/

/-! ## A146709.P15556498502200874282

`A146711(2*n+3)`
-/

namespace A146709.P15556498502200874282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146711 (2 * n + 3)

end

end A146709.P15556498502200874282

/-! ## A146709.P4692381409343294875

`or(1, A146711(A144396(n+1)))`
-/

namespace A146709.P4692381409343294875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146711 (A144396 (n + 1)).toNat)

end

end A146709.P4692381409343294875

/-! ## A146709.P5036249399503404550

`or(1, A146711(A160217(n+1)))`
-/

namespace A146709.P5036249399503404550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146711 (A160217 (n + 1)).toNat)

end

end A146709.P5036249399503404550

/-! ## A146709.P11698247189825803086

`or(1, A146711(A346302(n+1)))`
-/

namespace A146709.P11698247189825803086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146711 (A346302 (n + 1)).toNat)

end

end A146709.P11698247189825803086

/-! ## A146709.P14182327518018982607

`gcd(C(2, n+2), A146711(A005408(n+1)))`
-/

namespace A146709.P14182327518018982607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A146711 (A005408 (n + 1)).toNat)

end

end A146709.P14182327518018982607

/-!
# A146710: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-1111-0100 pattern in any orientation.

The programs for A146710, there is no canonical definition to state claims against.
-/

/-! ## A146710.P9583389184376981156

`A185035(A185035(n))+A146630(n+1)`
-/

namespace A146710.P9583389184376981156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185035 (A185035 n).toNat + A146630 (n + 1)

end

end A146710.P9583389184376981156

/-!
# A146712: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-1111-0100 pattern in any orientation.

The programs for A146712, there is no canonical definition to state claims against.
-/

/-! ## A146712.P5576568206241164411

`A175542(or(3, A185231(n)))`
-/

namespace A146712.P5576568206241164411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (Int.lor 3 (A185231 n)).toNat

end

end A146712.P5576568206241164411

/-! ## A146712.P11757184331959016792

`A109613(and(A123470(n+1), A290993(n)))`
-/

namespace A146712.P11757184331959016792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (Int.land (A123470 (n + 1)) (A290993 n)).toNat

end

end A146712.P11757184331959016792

/-! ## A146712.P1222304702218839239

`and(A007947(A146422(n+1)), A146411(n+1))`
-/

namespace A146712.P1222304702218839239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007947 (A146422 (n + 1)).toNat) (A146411 (n + 1))

end

end A146712.P1222304702218839239

/-! ## A146712.P7768866755123565545

`A114396(A212385(n))`
-/

namespace A146712.P7768866755123565545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114396 (A212385 n).toNat

end

end A146712.P7768866755123565545

/-! ## A146712.P468087102486752302

`A114396(A306847(n))`
-/

namespace A146712.P468087102486752302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114396 (A306847 n).toNat

end

end A146712.P468087102486752302

/-!
# A146713: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-1111-0100 pattern in any orientation.

The programs for A146713, there is no canonical definition to state claims against.
-/

/-! ## A146713.P9903195862616009329

`or(A000332(n), A028234(A000088(n)))`
-/

namespace A146713.P9903195862616009329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000332 n) (A028234 (A000088 n).toNat)

end

end A146713.P9903195862616009329

/-! ## A146713.P15192310716217545510

`A146593(n+1)-A345298(A146603(n+1)²)`
-/

namespace A146713.P15192310716217545510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146593 (n + 1) - A345298 (A146603 (n + 1) ^ 2).toNat

end

end A146713.P15192310716217545510

/-!
# A146714: Number of n X n binary arrays with all ones connected only in a 1100-1111-1000 pattern in any orientation.

The programs for A146714, there is no canonical definition to state claims against.
-/

/-! ## A146714.P1192654284040619290

`A146716(2*(n+2))`
-/

namespace A146714.P1192654284040619290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146716 (2 * (n + 2))

end

end A146714.P1192654284040619290

/-! ## A146714.P10082122033866997791

`or(1, A146716(A144396(n+1)))`
-/

namespace A146714.P10082122033866997791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146716 (A144396 (n + 1)).toNat)

end

end A146714.P10082122033866997791

/-! ## A146714.P17044168196181773160

`or(1, A146716(A005843(n+2)))`
-/

namespace A146714.P17044168196181773160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146716 (A005843 (n + 2)).toNat)

end

end A146714.P17044168196181773160

/-! ## A146714.P12128725108945443924

`∏{d}[A144396(n+1), A146716(#)]`
-/

namespace A146714.P12128725108945443924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146716 d

end

end A146714.P12128725108945443924

/-! ## A146714.P4771321509082954092

`or(1, A146716(Δ[A331221(n+1)]))`
-/

namespace A146714.P4771321509082954092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146716 (f1 (n + 1) - f1 n).toNat)

end

end A146714.P4771321509082954092

/-!
# A146716: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1100-1111-1000 pattern in any orientation.

The programs for A146716, there is no canonical definition to state claims against.
-/

/-! ## A146716.P4021817448272527610

`A146714(∏{e}[A038754(n), #])`
-/

namespace A146716.P4021817448272527610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146714 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A146716.P4021817448272527610

/-! ## A146716.P14066461559945451880

`∏{p}[A146849(n+1)², #]`
-/

namespace A146716.P14066461559945451880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146849 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A146716.P14066461559945451880

/-! ## A146716.P4181286030668551688

`A146849(or(n, A146836(n+1)))`
-/

namespace A146716.P4181286030668551688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146849 (Int.lor (n : ℤ) (A146836 (n + 1))).toNat

end

end A146716.P4181286030668551688

/-! ## A146716.P7200996143748870780

`A146849(or(n, A146852(n+1)))`
-/

namespace A146716.P7200996143748870780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146849 (Int.lor (n : ℤ) (A146852 (n + 1))).toNat

end

end A146716.P7200996143748870780

/-! ## A146716.P8131257891296394398

`A146849(or(n, A146860(n+1)))`
-/

namespace A146716.P8131257891296394398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146849 (Int.lor (n : ℤ) (A146860 (n + 1))).toNat

end

end A146716.P8131257891296394398

/-!
# A146717: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1100-1111-1000 pattern in any orientation.

The programs for A146717, there is no canonical definition to state claims against.
-/

/-! ## A146717.P801855729976725528

`A146719(2*(n+2))`
-/

namespace A146717.P801855729976725528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146719 (2 * (n + 2))

end

end A146717.P801855729976725528

/-! ## A146717.P2350710685966628258

`or(1, A146719(A144396(n+1)))`
-/

namespace A146717.P2350710685966628258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146719 (A144396 (n + 1)).toNat)

end

end A146717.P2350710685966628258

/-! ## A146717.P2038906802262930930

`or(1, A146719(A160217(n+1)))`
-/

namespace A146717.P2038906802262930930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146719 (A160217 (n + 1)).toNat)

end

end A146717.P2038906802262930930

/-! ## A146717.P8819505928332767430

`or(1, A146719(A187225(n+1)))`
-/

namespace A146717.P8819505928332767430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146719 (A187225 (n + 1)).toNat)

end

end A146717.P8819505928332767430

/-! ## A146717.P1407398008480008394

`or(1, A146719(A325038(n+1)))`
-/

namespace A146717.P1407398008480008394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146719 (A325038 (n + 1)).toNat)

end

end A146717.P1407398008480008394

/-!
# A146718: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1100-1111-1000 pattern in any orientation.

The programs for A146718, there is no canonical definition to state claims against.
-/

/-! ## A146718.P11948284259991540562

`or(A127325(n), A147258(n+1))`
-/

namespace A146718.P11948284259991540562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A127325 n) (A147258 (n + 1))

end

end A146718.P11948284259991540562

/-! ## A146718.P2445732748637086831

`or(A147258(n+1), A178252(n))`
-/

namespace A146718.P2445732748637086831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147258 (n + 1)) (A178252 n)

end

end A146718.P2445732748637086831

/-! ## A146718.P15856645935445762779

`or(A147258(n+1), A242249(n))`
-/

namespace A146718.P15856645935445762779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147258 (n + 1)) (A242249 n)

end

end A146718.P15856645935445762779

/-! ## A146718.P5070561331923335918

`or(A147258(n+1), A326636(n))`
-/

namespace A146718.P5070561331923335918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147258 (n + 1)) (A326636 n)

end

end A146718.P5070561331923335918

/-! ## A146718.P5536173912155662825

`A319687(n+3)+A147258(n+1)`
-/

namespace A146718.P5536173912155662825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319687 (n + 3) + A147258 (n + 1)

end

end A146718.P5536173912155662825

/-!
# A146720: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1100-1111-1000 pattern in any orientation.

The programs for A146720, there is no canonical definition to state claims against.
-/

/-! ## A146720.P14124509517793850017

`or(1, A265513(A218626(n)))`
-/

namespace A146720.P14124509517793850017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A265513 (A218626 n).toNat)

end

end A146720.P14124509517793850017

/-! ## A146720.P15327431439162804316

`and(A146181(n+1), A344416(A146184(n+1)))`
-/

namespace A146720.P15327431439162804316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146181 (n + 1)) (A344416 (A146184 (n + 1)).toNat)

end

end A146720.P15327431439162804316

/-!
# A146721: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1100-1111-1000 pattern in any orientation.

The programs for A146721, there is no canonical definition to state claims against.
-/

/-! ## A146721.P12107078477599080826

`A134719(A117604(n+1)+A004525(n))`
-/

namespace A146721.P12107078477599080826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134719 (A117604 (n + 1) + A004525 n).toNat

end

end A146721.P12107078477599080826

/-!
# A146722: Number of n X n binary arrays with all ones connected only in a 1101-0111 pattern in any orientation.

The programs for A146722, there is no canonical definition to state claims against.
-/

/-! ## A146722.P419003532642285852

`A146724(2*(n+2))`
-/

namespace A146722.P419003532642285852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146724 (2 * (n + 2))

end

end A146722.P419003532642285852

/-! ## A146722.P16849482223191180899

`or(1, A146724(A144396(n+1)))`
-/

namespace A146722.P16849482223191180899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146724 (A144396 (n + 1)).toNat)

end

end A146722.P16849482223191180899

/-! ## A146722.P17847078646853125038

`A146724(A005408(n+1))^ceil(acot(n))`
-/

namespace A146722.P17847078646853125038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146724 (A005408 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A146722.P17847078646853125038

/-! ## A146722.P10404544962712297656

`A146724(comp[n²]+n)/A146695(n+1)`
-/

namespace A146722.P10404544962712297656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146724 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℚ) / (A146695 (n + 1) : ℚ)

end

end A146722.P10404544962712297656

/-! ## A146722.P14334855429026175664

`A146724(comp[n²]+n)/A146703(n+1)`
-/

namespace A146722.P14334855429026175664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146724 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℚ) / (A146703 (n + 1) : ℚ)

end

end A146722.P14334855429026175664

/-!
# A146723: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1101-0111 pattern in any orientation.

The programs for A146723, there is no canonical definition to state claims against.
-/

/-! ## A146723.P3234716623244489606

`or(A146719(A000013(n)), A146739(n+1))`
-/

namespace A146723.P3234716623244489606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146719 (A000013 n).toNat) (A146739 (n + 1))

end

end A146723.P3234716623244489606

/-! ## A146723.P11572527474005524788

`or(A146719(A146702(n+2)), A146739(n+1))`
-/

namespace A146723.P11572527474005524788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146719 (A146702 (n + 2)).toNat) (A146739 (n + 1))

end

end A146723.P11572527474005524788

/-! ## A146723.P43237655973837169

`or(A146719(A146734(n+2)), A146739(n+1))`
-/

namespace A146723.P43237655973837169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146719 (A146734 (n + 2)).toNat) (A146739 (n + 1))

end

end A146723.P43237655973837169

/-!
# A146724: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1101-0111 pattern in any orientation.

The programs for A146724, there is no canonical definition to state claims against.
-/

/-! ## A146724.P8480213977342166417

`A146740(A262038(n)+1)`
-/

namespace A146724.P8480213977342166417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146740 (A262038 n + 1).toNat

end

end A146724.P8480213977342166417

/-! ## A146724.P16738417167124928063

`filter[A146740(n+1), A003849(#)]`
-/

namespace A146724.P16738417167124928063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A003849 (f1 j).toNat = 1) n)

end

end A146724.P16738417167124928063

/-! ## A146724.P971862274402325394

`filter[A146740(n+1), A010055(#)]`
-/

namespace A146724.P971862274402325394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A146724.P971862274402325394

/-! ## A146724.P11704689829963961209

`filter[A146740(n+1), A011655(#)]`
-/

namespace A146724.P11704689829963961209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A146724.P11704689829963961209

/-! ## A146724.P131823004178245176

`filter[A146740(n+1), A030308(#)]`
-/

namespace A146724.P131823004178245176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030308 (f1 j).toNat = 1) n)

end

end A146724.P131823004178245176

/-!
# A146725: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1101-0111 pattern in any orientation.

The programs for A146725, there is no canonical definition to state claims against.
-/

/-! ## A146725.P18016058909862295116

`A146727(2*(n+2))`
-/

namespace A146725.P18016058909862295116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146727 (2 * (n + 2))

end

end A146725.P18016058909862295116

/-! ## A146725.P3605380597526061025

`or(1, A146727(A120200(n+1)))`
-/

namespace A146725.P3605380597526061025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146727 (A120200 (n + 1)).toNat)

end

end A146725.P3605380597526061025

/-! ## A146725.P11815470892012054810

`or(1, A146727(A144396(n+1)))`
-/

namespace A146725.P11815470892012054810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146727 (A144396 (n + 1)).toNat)

end

end A146725.P11815470892012054810

/-! ## A146725.P13868565253975044872

`or(1, A146727(A160217(n+1)))`
-/

namespace A146725.P13868565253975044872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146727 (A160217 (n + 1)).toNat)

end

end A146725.P13868565253975044872

/-! ## A146725.P2609753598075479238

`or(1, A146727(A325038(n+1)))`
-/

namespace A146725.P2609753598075479238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146727 (A325038 (n + 1)).toNat)

end

end A146725.P2609753598075479238

/-!
# A146726: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1101-0111 pattern in any orientation.

The programs for A146726, there is no canonical definition to state claims against.
-/

/-! ## A146726.P13185586133868366752

`or(A080080(A147108(n+1)), A147127(n+3))`
-/

namespace A146726.P13185586133868366752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080080 (A147108 (n + 1)).toNat) (A147127 (n + 3))

end

end A146726.P13185586133868366752

/-! ## A146726.P7793789474926634318

`or(A080080(A147116(n+1)), A147127(n+3))`
-/

namespace A146726.P7793789474926634318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080080 (A147116 (n + 1)).toNat) (A147127 (n + 3))

end

end A146726.P7793789474926634318

/-! ## A146726.P4333071719010947500

`or(A147127(n+3), A147136(A147087(n+1)))`
-/

namespace A146726.P4333071719010947500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147127 (n + 3)) (A147136 (A147087 (n + 1)).toNat)

end

end A146726.P4333071719010947500

/-! ## A146726.P6733704924356531636

`A378278(n)^Δ[C(n, floor(n/6))]`
-/

namespace A146726.P6733704924356531636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 6⌋.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378278 n : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A146726.P6733704924356531636

/-! ## A146726.P5692933031830218188

`A138095(A068042(n))`
-/

namespace A146726.P5692933031830218188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138095 (A068042 n).toNat

end

end A146726.P5692933031830218188

/-!
# A146727: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1101-0111 pattern in any orientation.

The programs for A146727, there is no canonical definition to state claims against.
-/

/-! ## A146727.P5233519908413155326

`A293689(A147013(n+1))`
-/

namespace A146727.P5233519908413155326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293689 (A147013 (n + 1)).toNat

end

end A146727.P5233519908413155326

/-!
# A146728: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1101-0111 pattern in any orientation.

The programs for A146728, there is no canonical definition to state claims against.
-/

/-! ## A146728.P13271963235462892206

`A238256(A146184(n+2))`
-/

namespace A146728.P13271963235462892206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238256 (A146184 (n + 2)).toNat

end

end A146728.P13271963235462892206

/-! ## A146728.P6358991329965042075

`A140129(6*A073190(n))`
-/

namespace A146728.P6358991329965042075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140129 (6 * A073190 n).toNat

end

end A146728.P6358991329965042075

/-! ## A146728.P2984822031064157193

`A066657(A350655(n)%A303160(n))`
-/

namespace A146728.P2984822031064157193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (Int.tmod (A350655 n) (A303160 n)).toNat

end

end A146728.P2984822031064157193

/-! ## A146728.P11811510402165151296

`or(A023425(n), A231010(A023425(n)))`
-/

namespace A146728.P11811510402165151296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023425 n) (A231010 (A023425 n).toNat)

end

end A146728.P11811510402165151296

/-! ## A146728.P13766879359198249502

`A119288(xor(A002145(n+1), A241710(n+2)))`
-/

namespace A146728.P13766879359198249502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (Int.xor (A002145 (n + 1)) (A241710 (n + 2))).toNat

end

end A146728.P13766879359198249502

/-!
# A146729: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1101-0111 pattern in any orientation.

The programs for A146729, there is no canonical definition to state claims against.
-/

/-! ## A146729.P7970978827901130203

`A359567(A374727(n+1))`
-/

namespace A146729.P7970978827901130203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359567 (A374727 (n + 1)).toNat

end

end A146729.P7970978827901130203

/-! ## A146729.P15809741855365863461

`A099375(A192372(n+1)+1)`
-/

namespace A146729.P15809741855365863461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A192372 (n + 1) + 1).toNat

end

end A146729.P15809741855365863461

/-! ## A146729.P1887216972340131924

`A197401(A000108(n))%A191037(2*(n+1))`
-/

namespace A146729.P1887216972340131924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197401 (A000108 n).toNat) (A191037 (2 * (n + 1)))

end

end A146729.P1887216972340131924

/-!
# A146730: Number of n X n binary arrays with all ones connected only in a 1110-0111-0100 pattern in any orientation.

The programs for A146730, there is no canonical definition to state claims against.
-/

/-! ## A146730.P14113565238603007553

`A146732(2*(n+2))`
-/

namespace A146730.P14113565238603007553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146732 (2 * (n + 2))

end

end A146730.P14113565238603007553

/-! ## A146730.P6022097666029110652

`or(1, A146732(A144396(n+1)))`
-/

namespace A146730.P6022097666029110652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146732 (A144396 (n + 1)).toNat)

end

end A146730.P6022097666029110652

/-! ## A146730.P16601889593458102031

`or(1, A146732(A160217(n+1)))`
-/

namespace A146730.P16601889593458102031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146732 (A160217 (n + 1)).toNat)

end

end A146730.P16601889593458102031

/-! ## A146730.P5876111245048919230

`or(1, A146732(A346302(n+1)))`
-/

namespace A146730.P5876111245048919230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146732 (A346302 (n + 1)).toNat)

end

end A146730.P5876111245048919230

/-! ## A146730.P1285709595864620329

`or(1, A146732(A004273(n+2)))`
-/

namespace A146730.P1285709595864620329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146732 (A004273 (n + 2)).toNat)

end

end A146730.P1285709595864620329

/-!
# A146731: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1110-0111-0100 pattern in any orientation.

The programs for A146731, there is no canonical definition to state claims against.
-/

/-! ## A146731.P11526580632175793704

`A026741(A146667(n+1)-A005873(n))`
-/

namespace A146731.P11526580632175793704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A146667 (n + 1) - A005873 n).toNat

end

end A146731.P11526580632175793704

/-! ## A146731.P10759727856089695903

`A028310(A146667(n+1)-A005873(n))`
-/

namespace A146731.P10759727856089695903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A146667 (n + 1) - A005873 n).toNat

end

end A146731.P10759727856089695903

/-! ## A146731.P14744291862285094623

`A060819(A146667(n+1)-A005873(n))`
-/

namespace A146731.P14744291862285094623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A146667 (n + 1) - A005873 n).toNat

end

end A146731.P14744291862285094623

/-! ## A146731.P10644253722250093202

`A106617(A146667(n+1)-A005873(n))`
-/

namespace A146731.P10644253722250093202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A146667 (n + 1) - A005873 n).toNat

end

end A146731.P10644253722250093202

/-! ## A146731.P13836434591190395062

`A146667(n+1)-A184955(A004956(n))`
-/

namespace A146731.P13836434591190395062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146667 (n + 1) - A184955 (A004956 n).toNat

end

end A146731.P13836434591190395062

/-!
# A146732: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1110-0111-0100 pattern in any orientation.

The programs for A146732, there is no canonical definition to state claims against.
-/

/-! ## A146732.P1656019342570073073

`A146730(n+2-A027923(n+1))`
-/

namespace A146732.P1656019342570073073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146730 ((n + 2 : ℤ) - A027923 (n + 1)).toNat

end

end A146732.P1656019342570073073

/-!
# A146733: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1110-0111-0100 pattern in any orientation.

The programs for A146733, there is no canonical definition to state claims against.
-/

/-! ## A146733.P7784154251544689764

`A146735(2*n+3)`
-/

namespace A146733.P7784154251544689764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146735 (2 * n + 3)

end

end A146733.P7784154251544689764

/-! ## A146733.P11128628005953254535

`or(1, A146735(A144396(n+1)))`
-/

namespace A146733.P11128628005953254535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146735 (A144396 (n + 1)).toNat)

end

end A146733.P11128628005953254535

/-! ## A146733.P8029918589029820311

`or(1, A146735(A160217(n+1)))`
-/

namespace A146733.P8029918589029820311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146735 (A160217 (n + 1)).toNat)

end

end A146733.P8029918589029820311

/-! ## A146733.P3895673384189389384

`or(1, A146735(A327213(n+1)))`
-/

namespace A146733.P3895673384189389384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146735 (A327213 (n + 1)).toNat)

end

end A146733.P3895673384189389384

/-! ## A146733.P10789162073164885166

`or(1, A146735(A346302(n+1)))`
-/

namespace A146733.P10789162073164885166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146735 (A346302 (n + 1)).toNat)

end

end A146733.P10789162073164885166

/-!
# A146736: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1110-0111-0100 pattern in any orientation.

The programs for A146736, there is no canonical definition to state claims against.
-/

/-! ## A146736.P9701837600347101276

`A196416(A138002(n²+1+n))`
-/

namespace A146736.P9701837600347101276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196416 (A138002 (n ^ 2 + 1 + n)).toNat

end

end A146736.P9701837600347101276

/-! ## A146736.P4016273664440076482

`or(A110029(A146632(n+1)), A256268(n))`
-/

namespace A146736.P4016273664440076482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A110029 (A146632 (n + 1)).toNat) (A256268 n)

end

end A146736.P4016273664440076482

/-! ## A146736.P11076276800411097094

`A110029(A146632(n+1)+A256268(n)-1)`
-/

namespace A146736.P11076276800411097094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110029 (A146632 (n + 1) + (A256268 n - 1)).toNat

end

end A146736.P11076276800411097094

/-! ## A146736.P16864705763122295272

`or(A001221(2*n+1), A110029(A146632(n+1)))`
-/

namespace A146736.P16864705763122295272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (2 * n + 1)) (A110029 (A146632 (n + 1)).toNat)

end

end A146736.P16864705763122295272

/-! ## A146736.P5020587689490519206

`A140274(A261478(n))`
-/

namespace A146736.P5020587689490519206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140274 (A261478 n).toNat

end

end A146736.P5020587689490519206

/-!
# A146737: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1110-0111-0100 pattern in any orientation.

The programs for A146737, there is no canonical definition to state claims against.
-/

/-! ## A146737.P5027102800433647693

`∑[A321411(A305924(n))²]`
-/

namespace A146737.P5027102800433647693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321411 (A305924 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146737.P5027102800433647693

/-! ## A146737.P3584126211074129718

`or(A146862(n+1), A161492(A213173(n)))`
-/

namespace A146737.P3584126211074129718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146862 (n + 1)) (A161492 (A213173 n).toNat)

end

end A146737.P3584126211074129718

/-! ## A146737.P8990727761797005667

`or(A146813(A146825(n+3)), A146862(n+1))`
-/

namespace A146737.P8990727761797005667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146813 (A146825 (n + 3)).toNat) (A146862 (n + 1))

end

end A146737.P8990727761797005667

/-! ## A146737.P10863161282139295312

`or(A146852(A146841(n+3)), A146862(n+1))`
-/

namespace A146737.P10863161282139295312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146852 (A146841 (n + 3)).toNat) (A146862 (n + 1))

end

end A146737.P10863161282139295312

/-!
# A146738: Number of n X n binary arrays with all ones connected only in a 1110-1111 pattern in any orientation.

The programs for A146738, there is no canonical definition to state claims against.
-/

/-! ## A146738.P13526456517100669934

`A146740(2*(n+2))`
-/

namespace A146738.P13526456517100669934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146740 (2 * (n + 2))

end

end A146738.P13526456517100669934

/-! ## A146738.P4878607771839008126

`or(1, A146740(A144396(n+1)))`
-/

namespace A146738.P4878607771839008126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146740 (A144396 (n + 1)).toNat)

end

end A146738.P4878607771839008126

/-! ## A146738.P9449991709741359354

`or(1, A146740(A160217(n+1)))`
-/

namespace A146738.P9449991709741359354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146740 (A160217 (n + 1)).toNat)

end

end A146738.P9449991709741359354

/-! ## A146738.P7843813884614547568

`A146740(A144396(n+1))+A079694(n)`
-/

namespace A146738.P7843813884614547568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146740 (A144396 (n + 1)).toNat + A079694 n

end

end A146738.P7843813884614547568

/-! ## A146738.P17008130560550808731

`A146740(A144396(n+1))+A088116(n)`
-/

namespace A146738.P17008130560550808731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146740 (A144396 (n + 1)).toNat + A088116 n

end

end A146738.P17008130560550808731

/-!
# A146741: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1110-1111 pattern in any orientation.

The programs for A146741, there is no canonical definition to state claims against.
-/

/-! ## A146741.P8930948749861494670

`A175019(∑[A243244(n+1)])`
-/

namespace A146741.P8930948749861494670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175019 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146741.P8930948749861494670

/-! ## A146741.P5715805910862818366

`A220122(A006785(n+1)+4)`
-/

namespace A146741.P5715805910862818366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (A006785 (n + 1) + 4).toNat

end

end A146741.P5715805910862818366

/-! ## A146741.P14385545425924083406

`A263110(A123521(n)+A116540(n))`
-/

namespace A146741.P14385545425924083406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263110 (A123521 n + A116540 n).toNat

end

end A146741.P14385545425924083406

/-! ## A146741.P3647877534924416856

`and(A049150(n), A117838(A049158(n)))`
-/

namespace A146741.P3647877534924416856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049150 n) (A117838 (A049158 n).toNat)

end

end A146741.P3647877534924416856

/-!
# A146742: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1110-1111 pattern in any orientation.

The programs for A146742, there is no canonical definition to state claims against.
-/

/-! ## A146742.P7846489639977934432

`A354994(A146268(n+1))`
-/

namespace A146742.P7846489639977934432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354994 (A146268 (n + 1)).toNat

end

end A146742.P7846489639977934432

/-!
# A146743: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1110-1111 pattern in any orientation.

The programs for A146743, there is no canonical definition to state claims against.
-/

/-! ## A146743.P16416768155145122849

`or(A000196(A146137(n+1)), A146140(n+1))`
-/

namespace A146743.P16416768155145122849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 (A146137 (n + 1)).toNat) (A146140 (n + 1))

end

end A146743.P16416768155145122849

/-! ## A146743.P11726572075694550442

`∑[and(C(n, 2), A006362(2*n+1))]+1`
-/

namespace A146743.P11726572075694550442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.choose n 2 : ℤ) (A006362 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A146743.P11726572075694550442

/-! ## A146743.P15002796705069425910

`A289997(A146236(n+2))`
-/

namespace A146743.P15002796705069425910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289997 (A146236 (n + 2)).toNat

end

end A146743.P15002796705069425910

/-! ## A146743.P1306940155423997291

`or(1, A181578(A000332(n)))`
-/

namespace A146743.P1306940155423997291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A181578 (A000332 n).toNat)

end

end A146743.P1306940155423997291

/-! ## A146743.P16750026507798595393

`A290097(C(A117144(2*n+1), 7))`
-/

namespace A146743.P16750026507798595393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290097 (Nat.choose (A117144 (2 * n + 1)).toNat 7)

end

end A146743.P16750026507798595393

/-!
# A146744: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1110-1111 pattern in any orientation.

The programs for A146744, there is no canonical definition to state claims against.
-/

/-! ## A146744.P14564052002325275278

`A123541(∑[A007215(n)])`
-/

namespace A146744.P14564052002325275278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146744.P14564052002325275278

/-! ## A146744.P3461180024075131234

`A162235(A095344(n+1))`
-/

namespace A146744.P3461180024075131234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162235 (A095344 (n + 1)).toNat

end

end A146744.P3461180024075131234

/-! ## A146744.P3317878846296244699

`∑[A353403(A275972(∑[n]%3+2*n))]`
-/

namespace A146744.P3317878846296244699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353403 (A275972 ((∑ j ∈ Finset.range (n + 1), f2 j) % 3 + 2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146744.P3317878846296244699

/-!
# A146746: Numbers n such that sigma_1(n+1)*sigma_1(n)/(sigma_1(n+1)+sigma_1(n))=c, c an integer.

The programs for A146746, there is no canonical definition to state claims against.
-/

/-! ## A146746.P289608396098475062

`A073541(n+1)+char[43]`
-/

namespace A146746.P289608396098475062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073541 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A146746.P289608396098475062

/-! ## A146746.P9909011848378684851

`A073541(A044923(n+1))`
-/

namespace A146746.P9909011848378684851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073541 (A044923 (n + 1)).toNat

end

end A146746.P9909011848378684851

/-! ## A146746.P11702371673603948128

`A073541(A167976(n+1))`
-/

namespace A146746.P11702371673603948128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073541 (A167976 (n + 1)).toNat

end

end A146746.P11702371673603948128

/-! ## A146746.P5580722191762485137

`A073541(A179797(n+1))`
-/

namespace A146746.P5580722191762485137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073541 (A179797 (n + 1)).toNat

end

end A146746.P5580722191762485137

/-! ## A146746.P7610047108598564417

`A073541(A180925(n+1))`
-/

namespace A146746.P7610047108598564417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073541 (A180925 (n + 1)).toNat

end

end A146746.P7610047108598564417

/-!
# A146748: Numbers of the form j^k * k^j, where j,k > 1.

The programs for A146748, there is no canonical definition to state claims against.
-/

/-! ## A146748.P18158176493102977871

`A066800(A005159(n))*A326709(n+1)`
-/

namespace A146748.P18158176493102977871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066800 (A005159 n).toNat * A326709 (n + 1)

end

end A146748.P18158176493102977871

/-!
# A146749: Coefficients of the Pascal sequence minus the Eulerian numbers: q(x,n)= = (1 - x)^(n + 1)*PolyLog[ -n, x]; p(x,n) = (q(x, n)/x - (x + 1)^(n - 1))/x.

The programs for A146749, there is no canonical definition to state claims against.
-/

/-! ## A146749.P13784111979069331435

`A014449(n+1)-(A014430(n)+1)`
-/

namespace A146749.P13784111979069331435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014449 (n + 1) - (A014430 n + 1)

end

end A146749.P13784111979069331435

/-! ## A146749.P14771265137294511498

`A014449(n+1)-A014410(n+2)`
-/

namespace A146749.P14771265137294511498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014449 (n + 1) - A014410 (n + 2)

end

end A146749.P14771265137294511498

/-! ## A146749.P14375892268266594699

`sqrt(A014732(n+1))-A014410(n+2)`
-/

namespace A146749.P14375892268266594699
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014732 (n + 1) : ℝ) - (A014410 (n + 2) : ℝ)

end

end A146749.P14375892268266594699

/-! ## A146749.P7724786238961016238

`A014449(n+1)-sqrt(A014719(n+2))`
-/

namespace A146749.P7724786238961016238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014449 (n + 1) : ℝ) - Real.sqrt (A014719 (n + 2) : ℝ)

end

end A146749.P7724786238961016238

/-!
# A146750: Coefficients of the Pascal sequence minus the Eulerian numbers with first and last columns subtracted: f(n)=2^n - 2n; q(x,n)= = (1 - x)^(n + 1)*PolyLog[ -n, x]; p(x,n) = ((q(x, n)/x - (x + 1)^(n - 1))/x - f[n] - f[n]*x^(n - 3))/x.

The programs for A146750, there is no canonical definition to state claims against.
-/

/-! ## A146750.P1644374656364818439

`2*A290448(lt[1, A004197(n)])`
-/

namespace A146750.P1644374656364818439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290448 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A146750.P1644374656364818439

/-! ## A146750.P2094435655000841649

`filter[A146749(n+3), A288520(#)]`
-/

namespace A146750.P2094435655000841649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146749 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288520 (f1 j).toNat = 1) n)

end

end A146750.P2094435655000841649

/-!
# A146751: Coefficients of a new recursive polynomial: a = 11; b = 19; c = -8; r(x,n)=(a*x + b)*r(x, n - 1) + c*r(x, n - 2).

The programs for A146751, there is no canonical definition to state claims against.
-/

/-! ## A146751.P7556353185496326326

`A209969(n+1)+A123431(A188881(n+1))`
-/

namespace A146751.P7556353185496326326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (n + 1) + A123431 (A188881 (n + 1)).toNat

end

end A146751.P7556353185496326326

/-! ## A146751.P8888027341973412204

`A123431(A188881(n+1))+A209848(n+1)-A209829(n+1)`
-/

namespace A146751.P8888027341973412204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123431 (A188881 (n + 1)).toNat + (A209848 (n + 1) - A209829 (n + 1))

end

end A146751.P8888027341973412204

/-!
# A146753: a(n) = denominator((1/2)*(1 + Product_{k=0..n-1} 2*(1 + 3*k)/(5 + 6*k))).

The programs for A146753, there is no canonical definition to state claims against.
-/

/-! ## A146753.P7535853571894933993

`2*A349161(3*A349161(a(n-1)))` with `a(0)=1`
-/

namespace A146753.P7535853571894933993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A349161 (3 * A349161 (a (n - 1)).toNat).toNat

end

end A146753.P7535853571894933993

/-!
# A146755: Alliterative numbers: Positive integers n such that all words in n's name begin with the same letter; ignore numbers with one-word names.

The programs for A146755, there is no canonical definition to state claims against.
-/

/-! ## A146755.P10634952483585287064

`eq[2, A351653(n-A103181(n))]`
-/

namespace A146755.P10634952483585287064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351653 ((n : ℤ) - A103181 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A146755.P10634952483585287064

/-! ## A146755.P6555965262470481017

`eq[A257588(A106746(n)), A259567(n)]`
-/

namespace A146755.P6555965262470481017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257588 (A106746 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A146755.P6555965262470481017

/-! ## A146755.P9056162532489064207

`lt[A259567(n), A107846(A106747(n))]`
-/

namespace A146755.P9056162532489064207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A106747 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A146755.P9056162532489064207

/-!
# A146757: Number of primes p < 10^n such that s - p is prime, where s is the next square greater than p.

The programs for A146757, there is no canonical definition to state claims against.
-/

/-! ## A146757.P9926055887074159218

`A026785(n+2)+A000005(A317546(3*n+1))`
-/

namespace A146757.P9926055887074159218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026785 (n + 2) + A000005 (A317546 (3 * n + 1)).toNat

end

end A146757.P9926055887074159218

/-!
# A146758: Last prime subtrahend at 10^n in A146757.

The programs for A146758, there is no canonical definition to state claims against.
-/

/-! ## A146758.P5086086551407262060

`A000040(A057793(n+1)-A224918(n+1))`
-/

namespace A146758.P5086086551407262060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A057793 (n + 1) - A224918 (n + 1)).toNat

end

end A146758.P5086086551407262060

/-!
# A146759: Number of primes p < 10^n such that c - p is prime, where c is the next cube greater than p.

The programs for A146759, there is no canonical definition to state claims against.
-/

/-! ## A146759.P13986179827598209372

`A213363(A059182(n+1))+A000400(n)`
-/

namespace A146759.P13986179827598209372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213363 (A059182 (n + 1)).toNat + A000400 n

end

end A146759.P13986179827598209372

/-!
# A146761: Period 6: repeat [0, 0, 6, 6, 3, 3].

The programs for A146761, the canonical program `A146761.P2499493355366120269` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146761 has offset 0).

The definition of A146761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146761.P2499493355366120269

`a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=6, a(4)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A146761

/-- `a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` -/
def P2499493355366120269.Spec : Prop :=
  ∀ n, P2499493355366120269.a n = A146761 n

theorem P2499493355366120269.correct : P2499493355366120269.Spec := by
  intro n
  simp only [A146761]

end A146761

/-!
# A146762: Terms of A061039 that are multiple of 10, in the order in which they appear.

The programs for A146762, the canonical program `A146762.P6350047856969355060` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146762 has offset 1).

The definition of A146762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146762.P6350047856969355060

`A144448(A047219(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A146762

/-- `A144448(A047219(n+1))` -/
def P6350047856969355060.Spec : Prop :=
  ∀ n, P6350047856969355060.a n = A146762 (n + 1)

theorem P6350047856969355060.correct : P6350047856969355060.Spec := by
  intro n
  simp only [A146762, Nat.add_sub_cancel]

end A146762

/-! ## A146762.P17234287128895113108

`A144448(A016777(n)-A059169(2*n+1))`
-/

namespace A146762.P17234287128895113108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144448 (A016777 n - A059169 (2 * n + 1)).toNat

end

end A146762.P17234287128895113108

namespace A146762

/-- `A144448(A016777(n)-A059169(2*n+1))` -/
def P17234287128895113108.Spec : Prop :=
  ∀ n, P17234287128895113108.a n = A146762 (n + 1)

end A146762

/-! ## A146762.P6945112962165667831

`A061039(A063226(n+1))`
-/

namespace A146762.P6945112962165667831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (A063226 (n + 1)).toNat

end

end A146762.P6945112962165667831

namespace A146762

/-- `A061039(A063226(n+1))` -/
def P6945112962165667831.Spec : Prop :=
  ∀ n, P6945112962165667831.a n = A146762 (n + 1)

end A146762

/-! ## A146762.P1529213342520171638

`A061039(A146763(n)+3)`
-/

namespace A146762.P1529213342520171638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (A146763 n + 3).toNat

end

end A146762.P1529213342520171638

namespace A146762

/-- `A061039(A146763(n)+3)` -/
def P1529213342520171638.Spec : Prop :=
  ∀ n, P1529213342520171638.a n = A146762 (n + 1)

end A146762

/-! ## A146762.P3536335256293556322

`A061039(or(1, A016873(n)))`
-/

namespace A146762.P3536335256293556322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (Int.lor 1 (A016873 n)).toNat

end

end A146762.P3536335256293556322

namespace A146762

/-- `A061039(or(1, A016873(n)))` -/
def P3536335256293556322.Spec : Prop :=
  ∀ n, P3536335256293556322.a n = A146762 (n + 1)

end A146762

/-! ## A146762.P7727218346594391983

`A061039(A047235(n+1)+2*n+1)`
-/

namespace A146762.P7727218346594391983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (A047235 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A146762.P7727218346594391983

namespace A146762

/-- `A061039(A047235(n+1)+2*n+1)` -/
def P7727218346594391983.Spec : Prop :=
  ∀ n, P7727218346594391983.a n = A146762 (n + 1)

end A146762

/-!
# A146763: Rank of terms ending in 0 in A061039.

The programs for A146763, the canonical program `A146763.P7672107579147738351` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146763 has offset 0).

The definition of A146763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146763.P7672107579147738351

`5*n-n%2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A146763

/-- `5*n-n%2` -/
def P7672107579147738351.Spec : Prop :=
  ∀ n, P7672107579147738351.a n = A146763 n

theorem P7672107579147738351.correct : P7672107579147738351.Spec := by
  intro n
  simp only [A146763]

end A146763

/-! ## A146763.P7314227232809404403

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=4, a(2)=10`
-/

namespace A146763.P7314227232809404403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 10] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A146763.P7314227232809404403

namespace A146763

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P7314227232809404403.Spec : Prop :=
  ∀ n, P7314227232809404403.a n = A146763 n

end A146763

/-! ## A146763.P8702859625592020182

`and(5*n, -2)`
-/

namespace A146763.P8702859625592020182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (5 * n : ℤ) (-2)

end

end A146763.P8702859625592020182

namespace A146763

/-- `and(5*n, -2)` -/
def P8702859625592020182.Spec : Prop :=
  ∀ n, P8702859625592020182.a n = A146763 n

end A146763

/-! ## A146763.P4897431144560976979

`or(1, 5*n)-1`
-/

namespace A146763.P4897431144560976979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (5 * n) : ℤ) - 1

end

end A146763.P4897431144560976979

namespace A146763

/-- `or(1, 5*n)-1` -/
def P4897431144560976979.Spec : Prop :=
  ∀ n, P4897431144560976979.a n = A146763 n

end A146763

/-! ## A146763.P3376341076345302928

`xor(1, or(1, 5*n))`
-/

namespace A146763.P3376341076345302928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 (5 * n))

end

end A146763.P3376341076345302928

namespace A146763

/-- `xor(1, or(1, 5*n))` -/
def P3376341076345302928.Spec : Prop :=
  ∀ n, (P3376341076345302928.a n : ℤ) = A146763 n

end A146763

/-! ## A146763.P15442531698535838043

`a(n-2)+10` with `a(0)=0, a(1)=4`
-/

namespace A146763.P15442531698535838043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + 10

end

end A146763.P15442531698535838043

namespace A146763

/-- `a(n-2)+10` -/
def P15442531698535838043.Spec : Prop :=
  ∀ n, (P15442531698535838043.a n : ℤ) = A146763 n

end A146763

/-! ## A146763.P10791637886464630481

`2*floor(5*n/2)`
-/

namespace A146763.P10791637886464630481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊5 * ((n : ℚ) / 2)⌋

end

end A146763.P10791637886464630481

namespace A146763

/-- `2*floor(5*n/2)` -/
def P10791637886464630481.Spec : Prop :=
  ∀ n, P10791637886464630481.a n = A146763 n

end A146763

/-! ## A146763.P1286649189146078292

`comp[or(2, n)]+3*n`
-/

namespace A146763.P1286649189146078292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3 * n

end

end A146763.P1286649189146078292

namespace A146763

/-- `comp[or(2, n)]+3*n` -/
def P1286649189146078292.Spec : Prop :=
  ∀ n, (P1286649189146078292.a n : ℤ) = A146763 n

end A146763

/-! ## A146763.P11892636777919612847

`∑[2*∑{d}[n, C(2, #)]]`
-/

namespace A146763.P11892636777919612847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f2 n), Nat.choose 2 d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146763.P11892636777919612847

namespace A146763

/-- `∑[2*∑{d}[n, C(2, #)]]` -/
def P11892636777919612847.Spec : Prop :=
  ∀ n, (P11892636777919612847.a n : ℤ) = A146763 n

end A146763

/-! ## A146763.P181535674437545393

`∑[abs(a(n-2))]` with `a(0)=0, a(1)=4, a(2)=6`
-/

namespace A146763.P181535674437545393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146763.P181535674437545393

namespace A146763

/-- `∑[abs(a(n-2))]` -/
def P181535674437545393.Spec : Prop :=
  ∀ n, (P181535674437545393.a n : ℤ) = A146763 n

end A146763

/-! ## A146763.P10366328589630457674

`∑[10-a(n-1)]` with `a(0)=0, a(1)=4`
-/

namespace A146763.P10366328589630457674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146763.P10366328589630457674

namespace A146763

/-- `∑[10-a(n-1)]` -/
def P10366328589630457674.Spec : Prop :=
  ∀ n, P10366328589630457674.a n = A146763 n

end A146763

/-! ## A146763.P12168381946427931173

`gcd(2, n)-2+5*n`
-/

namespace A146763.P12168381946427931173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) - 2 + (5 * n : ℤ)

end

end A146763.P12168381946427931173

namespace A146763

/-- `gcd(2, n)-2+5*n` -/
def P12168381946427931173.Spec : Prop :=
  ∀ n, P12168381946427931173.a n = A146763 n

end A146763

/-! ## A146763.P732611045204432425

`xor(5*n, (n+2)%2)`
-/

namespace A146763.P732611045204432425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (5 * n) ((n + 2) % 2)

end

end A146763.P732611045204432425

namespace A146763

/-- `xor(5*n, (n+2)%2)` -/
def P732611045204432425.Spec : Prop :=
  ∀ n, (P732611045204432425.a n : ℤ) = A146763 n

end A146763

/-! ## A146763.P11852770228393573047

`10-floor(-a(n-2))` with `a(0)=0, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A146763.P11852770228393573047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  10 - (-a (n - 2))

end

end A146763.P11852770228393573047

namespace A146763

/-- `10-floor(-a(n-2))` -/
def P11852770228393573047.Spec : Prop :=
  ∀ n, P11852770228393573047.a n = A146763 n

end A146763

/-! ## A146763.P16165417591886280518

`10-ceil(-a(n-2))` with `a(0)=0, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A146763.P16165417591886280518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  10 - (-a (n - 2))

end

end A146763.P16165417591886280518

namespace A146763

/-- `10-ceil(-a(n-2))` -/
def P16165417591886280518.Spec : Prop :=
  ∀ n, P16165417591886280518.a n = A146763 n

end A146763

/-! ## A146763.P8631792524680273379

`10-round(-a(n-2))` with `a(0)=0, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A146763.P8631792524680273379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  10 - (-a (n - 2))

end

end A146763.P8631792524680273379

namespace A146763

/-- `10-round(-a(n-2))` -/
def P8631792524680273379.Spec : Prop :=
  ∀ n, P8631792524680273379.a n = A146763 n

end A146763

/-! ## A146763.P2265223648615148047

`5*n-val(n²+1, 2)`
-/

namespace A146763.P2265223648615148047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - (SequenceMachineLib.valuation (n ^ 2 + 1) 2 : ℤ)

end

end A146763.P2265223648615148047

namespace A146763

/-- `5*n-val(n²+1, 2)` -/
def P2265223648615148047.Spec : Prop :=
  ∀ n, P2265223648615148047.a n = A146763 n

end A146763

/-! ## A146763.P14601087714428594973

`xor(5*n, char[2*n+1])`
-/

namespace A146763.P14601087714428594973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (5 * n) (if ∃ j, f1 j = n then 1 else 0)

end

end A146763.P14601087714428594973

namespace A146763

/-- `xor(5*n, char[2*n+1])` -/
def P14601087714428594973.Spec : Prop :=
  ∀ n, (P14601087714428594973.a n : ℤ) = A146763 n

end A146763

/-!
# A146764: Primes not in A075255.

The programs for A146764, there is no canonical definition to state claims against.
-/

/-! ## A146764.P3159835936771935237

`p?[comp[n-A107463(n)]]`
-/

namespace A146764.P3159835936771935237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A107463 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A146764.P3159835936771935237

/-! ## A146764.P7618097107766767599

`eq[A067565(n+1), A067566(n+1)]+1`
-/

namespace A146764.P7618097107766767599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067566 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A146764.P7618097107766767599

/-! ## A146764.P15200033087218044151

`A006512(lt[A369227(3*n+5), A039692(n+1)])`
-/

namespace A146764.P15200033087218044151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369227 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A146764.P15200033087218044151

/-!
# A146765: Triangle read by rows: expansion of p(x,n)=If[n == 0, 1, (x + 1)^n + 2^(n - 1)*Sum[Binomial[n, m]*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146765, there is no canonical definition to state claims against.
-/

/-! ## A146765.P9238956451817701903

`2*A146766(n)-A007318(n)`
-/

namespace A146765.P9238956451817701903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146766 n - A007318 n

end

end A146765.P9238956451817701903

/-! ## A146765.P16013528420742690172

`2*A146766(n)-abs(A108086(n))`
-/

namespace A146765.P16013528420742690172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146766 n - |A108086 n|

end

end A146765.P16013528420742690172

/-! ## A146765.P13352950658690711187

`2*A146766(n)-abs(A117440(n))`
-/

namespace A146765.P13352950658690711187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146766 n - |A117440 n|

end

end A146765.P13352950658690711187

/-! ## A146765.P8800283370060415551

`2*A146766(n)-abs(A130595(n))`
-/

namespace A146765.P8800283370060415551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146766 n - |A130595 n|

end

end A146765.P8800283370060415551

/-! ## A146765.P4319229137945130925

`2*A146766(n)-Δ[A102363(n)]`
-/

namespace A146765.P4319229137945130925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146766 n - (f1 (n + 1) - f1 n)

end

end A146765.P4319229137945130925

/-! ## A146765.P15084336871462520637

`2*A146766(n)-(A014473(n)+1)`
-/

namespace A146765.P15084336871462520637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146766 n - (A014473 n + 1)

end

end A146765.P15084336871462520637

/-! ## A146765.P9481129315072134278

`A007318(n)+A038208(n)%A256890(n)`
-/

namespace A146765.P9481129315072134278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + Int.tmod (A038208 n) (A256890 n)

end

end A146765.P9481129315072134278

/-! ## A146765.P16504185463360564309

`A007318(n)*A005408(A113402(n+1)%A174690(n))`
-/

namespace A146765.P16504185463360564309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A005408 (Int.tmod (A113402 (n + 1)) (A174690 n)).toNat

end

end A146765.P16504185463360564309

/-!
# A146766: Triangle read by rows: expansion of p(x,n)=If[n == 0, 1, (x + 1)^n + 2^(n - 2)*Sum[Binomial[n, m]*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146766, there is no canonical definition to state claims against.
-/

/-! ## A146766.P17458479349599861697

`2*A146767(n)-A007318(n)`
-/

namespace A146766.P17458479349599861697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146767 n - A007318 n

end

end A146766.P17458479349599861697

/-! ## A146766.P17809126683930055172

`2*A146767(n)-sqrt(A008459(n))`
-/

namespace A146766.P17809126683930055172
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A146767 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A146766.P17809126683930055172

/-! ## A146766.P16780322529085487299

`2*A146767(n)-Δ[A102363(n)]`
-/

namespace A146766.P16780322529085487299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146767 n - (f1 (n + 1) - f1 n)

end

end A146766.P16780322529085487299

/-! ## A146766.P2021285063714843444

`2*A146767(n)-(A014473(n)+1)`
-/

namespace A146766.P2021285063714843444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146767 n - (A014473 n + 1)

end

end A146766.P2021285063714843444

/-! ## A146766.P1356133270573081681

`A007318(n)*A004273(A154221(n))`
-/

namespace A146766.P1356133270573081681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A004273 (A154221 n).toNat

end

end A146766.P1356133270573081681

/-! ## A146766.P9407918926381247598

`Δ[A102363(n)]*A004273(A154221(n))`
-/

namespace A146766.P9407918926381247598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004273 (A154221 n).toNat

end

end A146766.P9407918926381247598

/-! ## A146766.P9936993010526024339

`2*A146767(n)-A004526(A028326(n))`
-/

namespace A146766.P9936993010526024339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146767 n - A004526 (A028326 n).toNat

end

end A146766.P9936993010526024339

/-! ## A146766.P850566807247030503

`A028326(n)/2*A004273(A154221(n))`
-/

namespace A146766.P850566807247030503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A004273 (A154221 n).toNat : ℚ)

end

end A146766.P850566807247030503

/-! ## A146766.P17143315183320568710

`A004273(A154221(n))*A004526(A028326(n))`
-/

namespace A146766.P17143315183320568710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A154221 n).toNat * A004526 (A028326 n).toNat

end

end A146766.P17143315183320568710

/-!
# A146767: Triangle read by rows: expansion of p(x,n)=If[n == 0, 1, (x + 1)^n + 2^(n - 3)*Sum[Binomial[n, m]*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146767, there is no canonical definition to state claims against.
-/

/-! ## A146767.P8872630246576523177

`A007318(n)*A154221(n)`
-/

namespace A146767.P8872630246576523177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A154221 n

end

end A146767.P8872630246576523177

/-! ## A146767.P4816715527751923

`abs(A108086(n)*A154221(n))`
-/

namespace A146767.P4816715527751923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A154221 n|

end

end A146767.P4816715527751923

/-! ## A146767.P11285219845451052436

`abs(A117440(n)*A154221(n))`
-/

namespace A146767.P11285219845451052436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n * A154221 n|

end

end A146767.P11285219845451052436

/-! ## A146767.P17462908322694841579

`abs(A130595(n)*A154221(n))`
-/

namespace A146767.P17462908322694841579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A154221 n|

end

end A146767.P17462908322694841579

/-! ## A146767.P15885792162521613089

`sqrt(A008459(n))*A154221(n)`
-/

namespace A146767.P15885792162521613089
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A154221 n : ℝ)

end

end A146767.P15885792162521613089

/-! ## A146767.P6932295824988666687

`Δ[A102363(n)]*A154221(n)`
-/

namespace A146767.P6932295824988666687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A154221 n

end

end A146767.P6932295824988666687

/-! ## A146767.P2787989925865449102

`2*A146769(n)-A007318(n)`
-/

namespace A146767.P2787989925865449102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146769 n - A007318 n

end

end A146767.P2787989925865449102

/-! ## A146767.P4364800889038690015

`A028326(n)/2*A154221(n)`
-/

namespace A146767.P4364800889038690015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A154221 n : ℚ)

end

end A146767.P4364800889038690015

/-! ## A146767.P3440398397470111019

`A004525(A028326(n))*A154221(n)`
-/

namespace A146767.P3440398397470111019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat * A154221 n

end

end A146767.P3440398397470111019

/-! ## A146767.P3591745963122216389

`(A146766(n)+A007318(n))/2`
-/

namespace A146767.P3591745963122216389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146766 n + A007318 n : ℚ) / 2

end

end A146767.P3591745963122216389

/-!
# A146768: a(n) is the number k such that 2^(2k+1)-1 = A000668(n+1).

The programs for A146768, there is no canonical definition to state claims against.
-/

/-! ## A146768.P16460204750503026895

`(A000043(n+2)-1)/2`
-/

namespace A146768.P16460204750503026895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000043 (n + 2) - 1 : ℚ) / 2

end

end A146768.P16460204750503026895

/-! ## A146768.P2603126032288148259

`A138576(n+1)-1`
-/

namespace A146768.P2603126032288148259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138576 (n + 1) - 1

end

end A146768.P2603126032288148259

/-! ## A146768.P16785504855570363332

`A139481(n+2)+1`
-/

namespace A146768.P16785504855570363332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139481 (n + 2) + 1

end

end A146768.P16785504855570363332

/-! ## A146768.P8110720233837614664

`A090748(n+2)/2`
-/

namespace A146768.P8110720233837614664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090748 (n + 2) : ℚ) / 2

end

end A146768.P8110720233837614664

/-! ## A146768.P2567955405384671046

`floor(A174265(n+1)/2)`
-/

namespace A146768.P2567955405384671046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174265 (n + 1) : ℚ) / 2⌋

end

end A146768.P2567955405384671046

/-!
# A146769: Coefficients of polynomial P(n) by rows, with P(n) = (x+1)^n + 2^(n-3)*((x+1)^n - x^n - 1) for n > 0 and P(0) = 1.

The programs for A146769, there is no canonical definition to state claims against.
-/

/-! ## A146769.P6734467019178264910

`(A146767(n)+A007318(n))/2`
-/

namespace A146769.P6734467019178264910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146767 n + A007318 n : ℚ) / 2

end

end A146769.P6734467019178264910

/-! ## A146769.P15296653937646563988

`(A146767(n)+sqrt(A008459(n)))/2`
-/

namespace A146769.P15296653937646563988
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A146767 n : ℝ) + Real.sqrt (A008459 n : ℝ)) / 2

end

end A146769.P15296653937646563988

/-! ## A146769.P14744643144508981143

`(A146767(n)+Δ[A102363(n)])/2`
-/

namespace A146769.P14744643144508981143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146767 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A146769.P14744643144508981143

/-! ## A146769.P14589867586964060090

`A014682(A146767(n)+A007318(n))`
-/

namespace A146769.P14589867586964060090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A146767 n + A007318 n).toNat

end

end A146769.P14589867586964060090

/-! ## A146769.P12398539097713966027

`A273943(A146767(n)+A007318(n))`
-/

namespace A146769.P12398539097713966027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A146767 n + A007318 n).toNat

end

end A146769.P12398539097713966027

/-! ## A146769.P15969488443174172115

`A014682(A146767(n)+Δ[A102363(n)])`
-/

namespace A146769.P15969488443174172115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A146767 n + (f1 (n + 1) - f1 n)).toNat

end

end A146769.P15969488443174172115

/-! ## A146769.P16131685560247793922

`A273943(A146767(n)+Δ[A102363(n)])`
-/

namespace A146769.P16131685560247793922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A146767 n + (f1 (n + 1) - f1 n)).toNat

end

end A146769.P16131685560247793922

/-! ## A146769.P13912191978617737910

`(A146767(n)+A004526(A028326(n)))/2`
-/

namespace A146769.P13912191978617737910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146767 n + A004526 (A028326 n).toNat : ℚ) / 2

end

end A146769.P13912191978617737910

/-!
# A146770: Triangle read by rows: expansion of p(x,n)=If[n == 0, 1, (x + 1)^n + Sum[Binomial[n-m, m]*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146770, there is no canonical definition to state claims against.
-/

/-! ## A146770.P16923348979205536667

`A137813(xor(3, A022167(n)))`
-/

namespace A146770.P16923348979205536667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137813 (Int.xor 3 (A022167 n)).toNat

end

end A146770.P16923348979205536667

/-! ## A146770.P7435455882314389461

`A049108(floor((A277945(n+1)+1)*sqrt(2)))`
-/

namespace A146770.P7435455882314389461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 ⌊(A277945 (n + 1) + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋.toNat

end

end A146770.P7435455882314389461

/-! ## A146770.P16153817714926048756

`A214868(n)+A001221(A158116(n))`
-/

namespace A146770.P16153817714926048756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214868 n + A001221 (A158116 n).toNat

end

end A146770.P16153817714926048756

/-! ## A146770.P6995320639568620256

`or(A025432(n), A161920(A001263(n+1)))`
-/

namespace A146770.P6995320639568620256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025432 n) (A161920 (A001263 (n + 1)).toNat)

end

end A146770.P6995320639568620256

/-! ## A146770.P3463879797311122116

`A054725(A157274(n))`
-/

namespace A146770.P3463879797311122116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A157274 n).toNat

end

end A146770.P3463879797311122116

/-!
# A146771: Triangle read by rows: expansion of p(x,n)=If[n == 0, 1, (x + 1)^n + 2^(n-2)*Sum[Binomial[n-m, m]*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146771, there is no canonical definition to state claims against.
-/

/-! ## A146771.P9886655595669662533

`(A146772(n)+A007318(n))/2`
-/

namespace A146771.P9886655595669662533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146772 n + A007318 n : ℚ) / 2

end

end A146771.P9886655595669662533

/-! ## A146771.P8635115662477823707

`(A146772(n)+abs(A130595(n)))/2`
-/

namespace A146771.P8635115662477823707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146772 n + |A130595 n| : ℚ) / 2

end

end A146771.P8635115662477823707

/-! ## A146771.P10071422098097516646

`(A146772(n)+sqrt(A008459(n)))/2`
-/

namespace A146771.P10071422098097516646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A146772 n : ℝ) + Real.sqrt (A008459 n : ℝ)) / 2

end

end A146771.P10071422098097516646

/-! ## A146771.P11577256086478222777

`floor((A146772(n)+A132749(n))/2)`
-/

namespace A146771.P11577256086478222777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A146772 n + A132749 n : ℚ) / 2⌋

end

end A146771.P11577256086478222777

/-! ## A146771.P11013188904414412996

`ceil((A146772(n)+A014473(n))/2)`
-/

namespace A146771.P11013188904414412996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A146772 n + A014473 n : ℚ) / 2⌉

end

end A146771.P11013188904414412996

/-! ## A146771.P9091770754007058188

`(A146772(n)+Δ[A102363(n)])/2`
-/

namespace A146771.P9091770754007058188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146772 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A146771.P9091770754007058188

/-! ## A146771.P15396074926562109422

`A014682(A146772(n)+A007318(n))`
-/

namespace A146771.P15396074926562109422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A146772 n + A007318 n).toNat

end

end A146771.P15396074926562109422

/-! ## A146771.P6142209632160673418

`A302032(A146772(n)+A007318(n))`
-/

namespace A146771.P6142209632160673418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A146772 n + A007318 n).toNat

end

end A146771.P6142209632160673418

/-! ## A146771.P15170835514090450455

`A302032(A146772(n)+A132749(n))`
-/

namespace A146771.P15170835514090450455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A146772 n + A132749 n).toNat

end

end A146771.P15170835514090450455

/-! ## A146771.P13176677230485909185

`A302042(A146772(n)+A132749(n))`
-/

namespace A146771.P13176677230485909185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A146772 n + A132749 n).toNat

end

end A146771.P13176677230485909185

/-!
# A146772: Triangle read by rows: expansion of p(x,n)=If[n == 0, 1, (x + 1)^n + 2^(n-1)*Sum[Binomial[n-m, m]*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146772, there is no canonical definition to state claims against.
-/

/-! ## A146772.P18359905610164845942

`2*A146771(n)-A007318(n)`
-/

namespace A146772.P18359905610164845942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146771 n - A007318 n

end

end A146772.P18359905610164845942

/-! ## A146772.P17556110860697744560

`2*A146771(n)-abs(A117440(n))`
-/

namespace A146772.P17556110860697744560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146771 n - |A117440 n|

end

end A146772.P17556110860697744560

/-! ## A146772.P927492713707863857

`2*A146771(n)-abs(A130595(n))`
-/

namespace A146772.P927492713707863857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146771 n - |A130595 n|

end

end A146772.P927492713707863857

/-! ## A146772.P4207739203040582516

`2*A146771(n)-Δ[A102363(n)]`
-/

namespace A146772.P4207739203040582516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146771 n - (f1 (n + 1) - f1 n)

end

end A146772.P4207739203040582516

/-! ## A146772.P8144889795815853138

`2*A146771(n)-(A014473(n)+1)`
-/

namespace A146772.P8144889795815853138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146771 n - (A014473 n + 1)

end

end A146772.P8144889795815853138

/-! ## A146772.P9621423528986376398

`A005843(A146771(n))-A007318(n)`
-/

namespace A146772.P9621423528986376398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A146771 n).toNat - A007318 n

end

end A146772.P9621423528986376398

/-! ## A146772.P6410495997224034351

`A004273(A146771(n))-A014473(n)`
-/

namespace A146772.P6410495997224034351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A146771 n).toNat - A014473 n

end

end A146772.P6410495997224034351

/-! ## A146772.P17541534753931674965

`A005843(A146771(n))-abs(A117440(n))`
-/

namespace A146772.P17541534753931674965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A146771 n).toNat - |A117440 n|

end

end A146772.P17541534753931674965

/-! ## A146772.P12548698514609287458

`A001057(A028326(n))+2*A146771(n)`
-/

namespace A146772.P12548698514609287458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A028326 n).toNat + 2 * A146771 n

end

end A146772.P12548698514609287458

/-! ## A146772.P16874318828810455895

`(A146773(n)+A007318(n))/2`
-/

namespace A146772.P16874318828810455895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146773 n + A007318 n : ℚ) / 2

end

end A146772.P16874318828810455895

/-!
# A146773: Triangle read by rows: expansion of p(x,n)=If[n == 0, 1, (x + 1)^n + 2^(n)*Sum[Binomial[n-m, m]*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146773, there is no canonical definition to state claims against.
-/

/-! ## A146773.P14919664066337315046

`2*A146772(n)-A007318(n)`
-/

namespace A146773.P14919664066337315046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146772 n - A007318 n

end

end A146773.P14919664066337315046

/-! ## A146773.P9564399383047494128

`2*A146772(n)-abs(A130595(n))`
-/

namespace A146773.P9564399383047494128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146772 n - |A130595 n|

end

end A146773.P9564399383047494128

/-! ## A146773.P1414032474568147724

`2*A146772(n)-sqrt(A008459(n))`
-/

namespace A146773.P1414032474568147724
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A146772 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A146773.P1414032474568147724

/-! ## A146773.P13582648652886793204

`2*A146772(n)-Δ[A102363(n)]`
-/

namespace A146773.P13582648652886793204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146772 n - (f1 (n + 1) - f1 n)

end

end A146773.P13582648652886793204

/-! ## A146773.P16078205964536090182

`2*A146772(n)-A001057(A109128(n))`
-/

namespace A146773.P16078205964536090182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146772 n - A001057 (A109128 n).toNat

end

end A146773.P16078205964536090182

/-! ## A146773.P6473259081334998230

`2*A146772(n)+A007318(n)*A008683(A101772(n+1))`
-/

namespace A146773.P6473259081334998230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146772 n + A007318 n * A008683 (A101772 (n + 1)).toNat

end

end A146773.P6473259081334998230

/-! ## A146773.P12519285595943506020

`A005843(A146772(n))-A007318(n)`
-/

namespace A146773.P12519285595943506020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A146772 n).toNat - A007318 n

end

end A146773.P12519285595943506020

/-! ## A146773.P288868963225939254

`A004273(A146772(n))-A014473(n)`
-/

namespace A146773.P288868963225939254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A146772 n).toNat - A014473 n

end

end A146773.P288868963225939254

/-! ## A146773.P4384328855144605505

`(A146774(n)+A007318(n))/2`
-/

namespace A146773.P4384328855144605505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146774 n + A007318 n : ℚ) / 2

end

end A146773.P4384328855144605505

/-! ## A146773.P14645726381634172485

`A302042(A146774(n)+A132749(n))`
-/

namespace A146773.P14645726381634172485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A146774 n + A132749 n).toNat

end

end A146773.P14645726381634172485

/-!
# A146774: Triangle read by rows: expansion of p(x,n)=If[n == 0, 1, (x + 1)^n + 2^(n+1)*Sum[Binomial[n-m, m]*x^m*(1 + x^(n - 2*m)), {m, 1, n - 1}]].

The programs for A146774, there is no canonical definition to state claims against.
-/

/-! ## A146774.P6711679078119508678

`2*A146773(n)-A007318(n)`
-/

namespace A146774.P6711679078119508678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146773 n - A007318 n

end

end A146774.P6711679078119508678

/-! ## A146774.P16323404018159670270

`2*A146773(n)-abs(A130595(n))`
-/

namespace A146774.P16323404018159670270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146773 n - |A130595 n|

end

end A146774.P16323404018159670270

/-! ## A146774.P15820267555311135799

`2*A146773(n)-sqrt(A008459(n))`
-/

namespace A146774.P15820267555311135799
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A146773 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A146774.P15820267555311135799

/-! ## A146774.P1915514269114543612

`2*A146773(n)-Δ[A102363(n)]`
-/

namespace A146774.P1915514269114543612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146773 n - (f1 (n + 1) - f1 n)

end

end A146774.P1915514269114543612

/-!
# A146775: Number of n X n binary arrays with all ones connected only in a 0010-1010-1111 pattern in any orientation.

The programs for A146775, there is no canonical definition to state claims against.
-/

/-! ## A146775.P12041763671376358687

`A146777(2*(n+2))`
-/

namespace A146775.P12041763671376358687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146777 (2 * (n + 2))

end

end A146775.P12041763671376358687

/-! ## A146775.P9347880756252140815

`or(1, A146777(A077797(n+1)))`
-/

namespace A146775.P9347880756252140815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146777 (A077797 (n + 1)).toNat)

end

end A146775.P9347880756252140815

/-! ## A146775.P18135514792114611224

`or(1, A146777(A081874(n+1)))`
-/

namespace A146775.P18135514792114611224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146777 (A081874 (n + 1)).toNat)

end

end A146775.P18135514792114611224

/-! ## A146775.P13902799940025010754

`A146777(A005843(n+2))/A065648(n)`
-/

namespace A146775.P13902799940025010754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146777 (A005843 (n + 2)).toNat : ℚ) / (A065648 n : ℚ)

end

end A146775.P13902799940025010754

/-! ## A146775.P6618213978874271809

`A146777(A077797(n+1))/A146780(n+1)`
-/

namespace A146775.P6618213978874271809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146777 (A077797 (n + 1)).toNat : ℚ) / (A146780 (n + 1) : ℚ)

end

end A146775.P6618213978874271809

/-!
# A146776: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 0010-1010-1111 pattern in any orientation.

The programs for A146776, there is no canonical definition to state claims against.
-/

/-! ## A146776.P18221657318011703489

`A152889(A152880(n+1))+A147202(n+1)`
-/

namespace A146776.P18221657318011703489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152889 (A152880 (n + 1)).toNat + A147202 (n + 1)

end

end A146776.P18221657318011703489

/-! ## A146776.P10780859132910195719

`A147202(a(n-3)+n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A146776.P10780859132910195719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A147202 (a (n - 3) + (n : ℤ)).toNat

end

end A146776.P10780859132910195719

/-! ## A146776.P4376641569686646642

`A147202(A001104(n+1))`
-/

namespace A146776.P4376641569686646642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147202 (A001104 (n + 1)).toNat

end

end A146776.P4376641569686646642

/-! ## A146776.P13767733523518403064

`A147202(A068189(n+1))`
-/

namespace A146776.P13767733523518403064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147202 (A068189 (n + 1)).toNat

end

end A146776.P13767733523518403064

/-! ## A146776.P1050477040246039624

`A147202(n+1)%A000615(n)`
-/

namespace A146776.P1050477040246039624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147202 (n + 1)) (A000615 n)

end

end A146776.P1050477040246039624

/-!
# A146777: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 0010-1010-1111 pattern in any orientation.

The programs for A146777, there is no canonical definition to state claims against.
-/

/-! ## A146777.P4450067629333611738

`A147203(or(n, A146780(n+1)))`
-/

namespace A146777.P4450067629333611738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147203 (Int.lor (n : ℤ) (A146780 (n + 1))).toNat

end

end A146777.P4450067629333611738

/-! ## A146777.P10308518725053131225

`A147203(or(n, A147167(n+1)))`
-/

namespace A146777.P10308518725053131225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147203 (Int.lor (n : ℤ) (A147167 (n + 1))).toNat

end

end A146777.P10308518725053131225

/-! ## A146777.P7598128975448454802

`A147203(or(n, A147206(n+1)))`
-/

namespace A146777.P7598128975448454802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147203 (Int.lor (n : ℤ) (A147206 (n + 1))).toNat

end

end A146777.P7598128975448454802

/-! ## A146777.P3625405490998824144

`A147203(or(n, A147214(n+1)))`
-/

namespace A146777.P3625405490998824144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147203 (Int.lor (n : ℤ) (A147214 (n + 1))).toNat

end

end A146777.P3625405490998824144

/-! ## A146777.P6889748862342905925

`A147203(or(n, A147244(n+1)))`
-/

namespace A146777.P6889748862342905925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147203 (Int.lor (n : ℤ) (A147244 (n + 1))).toNat

end

end A146777.P6889748862342905925

/-!
# A146778: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0010-1010-1111 pattern in any orientation.

The programs for A146778, there is no canonical definition to state claims against.
-/

/-! ## A146778.P14598425747680757481

`A146780(2*(n+2))`
-/

namespace A146778.P14598425747680757481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146780 (2 * (n + 2))

end

end A146778.P14598425747680757481

/-! ## A146778.P628544765811038765

`or(1, A146780(A005408(n+1)))`
-/

namespace A146778.P628544765811038765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146780 (A005408 (n + 1)).toNat)

end

end A146778.P628544765811038765

/-! ## A146778.P6433000373616808613

`or(1, A146780(A077797(n+1)))`
-/

namespace A146778.P6433000373616808613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146780 (A077797 (n + 1)).toNat)

end

end A146778.P6433000373616808613

/-! ## A146778.P1758256601130494279

`or(1, A146780(A081874(n+1)))`
-/

namespace A146778.P1758256601130494279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146780 (A081874 (n + 1)).toNat)

end

end A146778.P1758256601130494279

/-! ## A146778.P8584479248831380009

`or(1, A146780(A144396(n+1)))`
-/

namespace A146778.P8584479248831380009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146780 (A144396 (n + 1)).toNat)

end

end A146778.P8584479248831380009

/-!
# A146779: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0010-1010-1111 pattern in any orientation.

The programs for A146779, there is no canonical definition to state claims against.
-/

/-! ## A146779.P2384316734215355010

`A351870(A146835(n+1))`
-/

namespace A146779.P2384316734215355010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A146835 (n + 1)).toNat

end

end A146779.P2384316734215355010

/-! ## A146779.P7785263186330869531

`A000196(A146795(n+1)²)`
-/

namespace A146779.P7785263186330869531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A146795 (n + 1) ^ 2).toNat

end

end A146779.P7785263186330869531

/-! ## A146779.P1461530814118594486

`A000196(A146795(n+1)^2)`
-/

namespace A146779.P1461530814118594486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A146795 (n + 1) ^ 2).toNat

end

end A146779.P1461530814118594486

/-! ## A146779.P9729300551808721238

`filter[A146795(n+1), A071035(#)]`
-/

namespace A146779.P9729300551808721238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071035 (f1 j).toNat = 1) n)

end

end A146779.P9729300551808721238

/-! ## A146779.P2917758075009942792

`filter[A146795(n+1), A089939(#)]`
-/

namespace A146779.P2917758075009942792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089939 (f1 j).toNat = 1) n)

end

end A146779.P2917758075009942792

/-!
# A146780: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 0010-1010-1111 pattern in any orientation.

The programs for A146780, there is no canonical definition to state claims against.
-/

/-! ## A146780.P3917954843050538948

`A038124(A147510(n+1))`
-/

namespace A146780.P3917954843050538948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038124 (A147510 (n + 1)).toNat

end

end A146780.P3917954843050538948

/-! ## A146780.P14689730184486419099

`A105362(A146370(n+1))`
-/

namespace A146780.P14689730184486419099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105362 (A146370 (n + 1)).toNat

end

end A146780.P14689730184486419099

/-! ## A146780.P9809003812765279495

`A121294(A147449(n+1))`
-/

namespace A146780.P9809003812765279495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121294 (A147449 (n + 1)).toNat

end

end A146780.P9809003812765279495

/-! ## A146780.P3556007323382864707

`A000188(A146860(n+1)²)`
-/

namespace A146780.P3556007323382864707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A146860 (n + 1) ^ 2).toNat

end

end A146780.P3556007323382864707

/-! ## A146780.P12917441322230112665

`A135034(A146860(n+1)²)`
-/

namespace A146780.P12917441322230112665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (A146860 (n + 1) ^ 2).toNat

end

end A146780.P12917441322230112665

/-!
# A146781: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0010-1010-1111 pattern in any orientation.

The programs for A146781, there is no canonical definition to state claims against.
-/

/-! ## A146781.P1892848094792908863

`A130011(A146904(n+1))`
-/

namespace A146781.P1892848094792908863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130011 (A146904 (n + 1)).toNat

end

end A146781.P1892848094792908863

/-! ## A146781.P14954748595272632034

`and(A010362(n+1), A116091(n))+1`
-/

namespace A146781.P14954748595272632034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010362 (n + 1)) (A116091 n) + 1

end

end A146781.P14954748595272632034

/-! ## A146781.P12781412263801007877

`A016813(record[A371097(n+1)]-(n+1))`
-/

namespace A146781.P12781412263801007877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)).toNat

end

end A146781.P12781412263801007877

/-! ## A146781.P1246173489978066144

`∑[and(A004043(n+8), A141416(2*n))]`
-/

namespace A146781.P1246173489978066144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004043 (n + 8)) (A141416 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146781.P1246173489978066144

/-! ## A146781.P519778828311882162

`and(A116092(n)/2^n, A010362(n+1))+1`
-/

namespace A146781.P519778828311882162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A116092 n : ℚ) / (2 ^ n : ℚ))) (A010362 (n + 1)) + 1

end

end A146781.P519778828311882162

/-!
# A146782: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0010-1010-1111 pattern in any orientation.

The programs for A146782, there is no canonical definition to state claims against.
-/

/-! ## A146782.P17029303453934211294

`A175505(A064989(n!))`
-/

namespace A146782.P17029303453934211294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175505 (A064989 (Nat.factorial n)).toNat

end

end A146782.P17029303453934211294

/-! ## A146782.P5331910813812682493

`A175505(A139550(round(n*(5*n-14)/12)+1))`
-/

namespace A146782.P5331910813812682493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175505 (A139550 (SequenceMachineLib.roundAway ((n : ℚ) * (((5 * n : ℤ) - 14 : ℚ) / 12)) + 1).toNat).toNat

end

end A146782.P5331910813812682493

/-! ## A146782.P14040317752233814347

`A071766(A215327(2*n)%A207386(n))`
-/

namespace A146782.P14040317752233814347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (Int.tmod (A215327 (2 * n)) (A207386 n)).toNat

end

end A146782.P14040317752233814347

/-!
# A146783: Number of n X n binary arrays with all ones connected only in a 0100-1100-1111 pattern in any orientation.

The programs for A146783, there is no canonical definition to state claims against.
-/

/-! ## A146783.P5696194099511094243

`A146785(2*(n+2))`
-/

namespace A146783.P5696194099511094243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146785 (2 * (n + 2))

end

end A146783.P5696194099511094243

/-! ## A146783.P9875862341046873231

`or(1, A146785(A077797(n+1)))`
-/

namespace A146783.P9875862341046873231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146785 (A077797 (n + 1)).toNat)

end

end A146783.P9875862341046873231

/-! ## A146783.P14923858029952866643

`or(1, A146785(A081874(n+1)))`
-/

namespace A146783.P14923858029952866643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146785 (A081874 (n + 1)).toNat)

end

end A146783.P14923858029952866643

/-! ## A146783.P9062581360542088828

`or(1, A146785(A144396(n+1)))`
-/

namespace A146783.P9062581360542088828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146785 (A144396 (n + 1)).toNat)

end

end A146783.P9062581360542088828

/-! ## A146783.P4326759249331141389

`∏{d}[A077797(n+1), A146785(#)]`
-/

namespace A146783.P4326759249331141389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146785 d

end

end A146783.P4326759249331141389

/-!
# A146784: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 0100-1100-1111 pattern in any orientation.

The programs for A146784, there is no canonical definition to state claims against.
-/

/-! ## A146784.P781070673162163265

`or(A025460(A177547(n)), A146776(n+1))`
-/

namespace A146784.P781070673162163265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025460 (A177547 n).toNat) (A146776 (n + 1))

end

end A146784.P781070673162163265

/-! ## A146784.P3010678717908520452

`or(A025460(A177547(n)), A147202(n+1))`
-/

namespace A146784.P3010678717908520452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025460 (A177547 n).toNat) (A147202 (n + 1))

end

end A146784.P3010678717908520452

/-! ## A146784.P7051368742640255835

`or(A078882(A212385(n)), A146808(n+1))`
-/

namespace A146784.P7051368742640255835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A078882 (A212385 n).toNat) (A146808 (n + 1))

end

end A146784.P7051368742640255835

/-! ## A146784.P5369439315720575841

`or(A146808(n+1), A187794(A291242(n)))`
-/

namespace A146784.P5369439315720575841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146808 (n + 1)) (A187794 (A291242 n).toNat)

end

end A146784.P5369439315720575841

/-! ## A146784.P10059071114405441942

`A020397(n+1)%A141256(A146151(n+1))`
-/

namespace A146784.P10059071114405441942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020397 (n + 1)) (A141256 (A146151 (n + 1)).toNat)

end

end A146784.P10059071114405441942

/-!
# A146786: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0100-1100-1111 pattern in any orientation.

The programs for A146786, there is no canonical definition to state claims against.
-/

/-! ## A146786.P13492258414433430841

`A146788(2*(n+2))`
-/

namespace A146786.P13492258414433430841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146788 (2 * (n + 2))

end

end A146786.P13492258414433430841

/-! ## A146786.P2881892304660258862

`or(1, A146788(A005408(n+1)))`
-/

namespace A146786.P2881892304660258862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146788 (A005408 (n + 1)).toNat)

end

end A146786.P2881892304660258862

/-! ## A146786.P14821772253702389695

`or(1, A146788(A077797(n+1)))`
-/

namespace A146786.P14821772253702389695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146788 (A077797 (n + 1)).toNat)

end

end A146786.P14821772253702389695

/-! ## A146786.P6253556605027839918

`or(1, A146788(A081874(n+1)))`
-/

namespace A146786.P6253556605027839918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146788 (A081874 (n + 1)).toNat)

end

end A146786.P6253556605027839918

/-! ## A146786.P11716191716319557619

`A028310(A146788(n+4+n))`
-/

namespace A146786.P11716191716319557619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A146788 (n + 4 + n)).toNat

end

end A146786.P11716191716319557619

/-!
# A146787: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0100-1100-1111 pattern in any orientation.

The programs for A146787, there is no canonical definition to state claims against.
-/

/-! ## A146787.P12736713405569594270

`A147243(n+1)-A343380(A147227(n+1))`
-/

namespace A146787.P12736713405569594270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147243 (n + 1) - A343380 (A147227 (n + 1)).toNat

end

end A146787.P12736713405569594270

/-! ## A146787.P3555474440160696502

`A147243(n+1)-A348341(A147156(n+1))`
-/

namespace A146787.P3555474440160696502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147243 (n + 1) - A348341 (A147156 (n + 1)).toNat

end

end A146787.P3555474440160696502

/-! ## A146787.P15626734056326026633

`A321405(n)-round(n²/12)`
-/

namespace A146787.P15626734056326026633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321405 n - SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

end

end A146787.P15626734056326026633

/-! ## A146787.P9682052591635276510

`A147243(∏{p}[n+1, #]^∏{e}[n+1, #])`
-/

namespace A146787.P9682052591635276510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147243 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A146787.P9682052591635276510

/-! ## A146787.P4603126311143374808

`A239931(A068041(n))`
-/

namespace A146787.P4603126311143374808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239931 (A068041 n).toNat

end

end A146787.P4603126311143374808

/-!
# A146788: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 0100-1100-1111 pattern in any orientation.

The programs for A146788, there is no canonical definition to state claims against.
-/

/-! ## A146788.P15160427612119126277

`A289791(A146068(n+1))`
-/

namespace A146788.P15160427612119126277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289791 (A146068 (n + 1)).toNat

end

end A146788.P15160427612119126277

/-!
# A146789: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0100-1100-1111 pattern in any orientation.

The programs for A146789, there is no canonical definition to state claims against.
-/

/-! ## A146789.P1550173761544143387

`A267508(A146584(n+1))`
-/

namespace A146789.P1550173761544143387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (A146584 (n + 1)).toNat

end

end A146789.P1550173761544143387

/-! ## A146789.P4461772310877937631

`xor(A103956(A218627(n)), A218627(n))`
-/

namespace A146789.P4461772310877937631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103956 (A218627 n).toNat) (A218627 n)

end

end A146789.P4461772310877937631

/-! ## A146789.P16230889258966316303

`A146576(n+1)-A146527(A146616(n+1))`
-/

namespace A146789.P16230889258966316303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146576 (n + 1) - A146527 (A146616 (n + 1)).toNat

end

end A146789.P16230889258966316303

/-! ## A146789.P12386953392968899632

`A227737(floor(n/3)^floor((n/3)²))`
-/

namespace A146789.P12386953392968899632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227737 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / 3⌋ : ℚ) ^ (⌊((n : ℚ) / 3) ^ 2⌋ : ℤ))).toNat

end

end A146789.P12386953392968899632

/-! ## A146789.P2429683417020751575

`A357990(A298404(n))`
-/

namespace A146789.P2429683417020751575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357990 (A298404 n).toNat

end

end A146789.P2429683417020751575

/-!
# A146790: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0100-1100-1111 pattern in any orientation.

The programs for A146790, there is no canonical definition to state claims against.
-/

/-! ## A146790.P15099222018236547110

`or(1, A026921((12*n+11)²))`
-/

namespace A146790.P15099222018236547110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A026921 ((12 * n + 11) ^ 2))

end

end A146790.P15099222018236547110

/-! ## A146790.P6546484441987020941

`A318612(or(1, A137247(n)))`
-/

namespace A146790.P6546484441987020941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318612 (Int.lor 1 (A137247 n)).toNat

end

end A146790.P6546484441987020941

/-! ## A146790.P13680087056447853279

`A007306(abs(∑[A242652(n)]))`
-/

namespace A146790.P13680087056447853279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A146790.P13680087056447853279

/-! ## A146790.P16743394644548210058

`or(1, A070106(A227937(n+3)))`
-/

namespace A146790.P16743394644548210058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A070106 (A227937 (n + 3)).toNat)

end

end A146790.P16743394644548210058

/-!
# A146791: Number of n X n binary arrays with all ones connected only in a 0110-0100-1111 pattern in any orientation.

The programs for A146791, there is no canonical definition to state claims against.
-/

/-! ## A146791.P14698569292645267407

`A146793(2*(n+2))`
-/

namespace A146791.P14698569292645267407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146793 (2 * (n + 2))

end

end A146791.P14698569292645267407

/-! ## A146791.P6854825268049096511

`or(1, A146793(A005408(n+1)))`
-/

namespace A146791.P6854825268049096511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146793 (A005408 (n + 1)).toNat)

end

end A146791.P6854825268049096511

/-! ## A146791.P10430809400527481572

`or(1, A146793(A077797(n+1)))`
-/

namespace A146791.P10430809400527481572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146793 (A077797 (n + 1)).toNat)

end

end A146791.P10430809400527481572

/-! ## A146791.P884036283704739477

`or(1, A146793(A081874(n+1)))`
-/

namespace A146791.P884036283704739477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146793 (A081874 (n + 1)).toNat)

end

end A146791.P884036283704739477

/-! ## A146791.P7120611711486079131

`∏{d}[A005408(n+1), A146793(#)]`
-/

namespace A146791.P7120611711486079131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A146793 d

end

end A146791.P7120611711486079131

/-!
# A146792: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 0110-0100-1111 pattern in any orientation.

The programs for A146792, there is no canonical definition to state claims against.
-/

/-! ## A146792.P3075744796746958006

`or(A146872(n+1), A146898(A146902(n+1)))`
-/

namespace A146792.P3075744796746958006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146872 (n + 1)) (A146898 (A146902 (n + 1)).toNat)

end

end A146792.P3075744796746958006

/-! ## A146792.P1314994733175668799

`or(A146872(n+1), A146898(A146910(n+1)))`
-/

namespace A146792.P1314994733175668799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146872 (n + 1)) (A146898 (A146910 (n + 1)).toNat)

end

end A146792.P1314994733175668799

/-! ## A146792.P3207378171860121960

`or(A146872(n+1), A146877(A146927(n+1)))`
-/

namespace A146792.P3207378171860121960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146872 (n + 1)) (A146877 (A146927 (n + 1)).toNat)

end

end A146792.P3207378171860121960

/-! ## A146792.P15945121386768559743

`or(A146872(n+1), A151509(A146865(n+1)))`
-/

namespace A146792.P15945121386768559743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146872 (n + 1)) (A151509 (A146865 (n + 1)).toNat)

end

end A146792.P15945121386768559743

/-! ## A146792.P10929647813509846507

`or(A146815(A146852(n+5)), A146872(n+1))`
-/

namespace A146792.P10929647813509846507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146815 (A146852 (n + 5)).toNat) (A146872 (n + 1))

end

end A146792.P10929647813509846507

/-!
# A146793: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 0110-0100-1111 pattern in any orientation.

The programs for A146793, there is no canonical definition to state claims against.
-/

/-! ## A146793.P14392795019414389832

`filter[A146873(n+1), A022924(#)]`
-/

namespace A146793.P14392795019414389832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022924 (f1 j).toNat = 1) n)

end

end A146793.P14392795019414389832

/-! ## A146793.P4178648276756709832

`filter[A146873(n+1), A030190(#)]`
-/

namespace A146793.P4178648276756709832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030190 (f1 j).toNat = 1) n)

end

end A146793.P4178648276756709832

/-! ## A146793.P15913240786575626972

`filter[A146873(n+1), A030302(#)]`
-/

namespace A146793.P15913240786575626972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030302 (f1 j).toNat = 1) n)

end

end A146793.P15913240786575626972

/-! ## A146793.P3947162342756815227

`filter[A146873(n+1), A030308(#)]`
-/

namespace A146793.P3947162342756815227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030308 (f1 j).toNat = 1) n)

end

end A146793.P3947162342756815227

/-! ## A146793.P14674904462314995349

`filter[A146873(n+1), A055088(#)]`
-/

namespace A146793.P14674904462314995349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A055088 (f1 j).toNat = 1) n)

end

end A146793.P14674904462314995349

/-!
# A146794: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0110-0100-1111 pattern in any orientation.

The programs for A146794, there is no canonical definition to state claims against.
-/

/-! ## A146794.P11990317864855289353

`A146796(2*(n+2))`
-/

namespace A146794.P11990317864855289353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146796 (2 * (n + 2))

end

end A146794.P11990317864855289353

/-! ## A146794.P2159156514347668541

`or(1, A146796(A144396(n+1)))`
-/

namespace A146794.P2159156514347668541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146796 (A144396 (n + 1)).toNat)

end

end A146794.P2159156514347668541

/-! ## A146794.P9431185565810403878

`or(1, A146796(A329838(n+1)))`
-/

namespace A146794.P9431185565810403878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146796 (A329838 (n + 1)).toNat)

end

end A146794.P9431185565810403878

/-! ## A146794.P12179355864968851160

`A000027(A146796(Δ[(n+1)²]))`
-/

namespace A146794.P12179355864968851160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A146796 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A146794.P12179355864968851160

/-! ## A146794.P14031415217089937747

`∏{d}[n+1, A146796(A144396(#))]`
-/

namespace A146794.P14031415217089937747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A146796 (A144396 d).toNat

end

end A146794.P14031415217089937747

/-!
# A146796: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 0110-0100-1111 pattern in any orientation.

The programs for A146796, there is no canonical definition to state claims against.
-/

/-! ## A146796.P1577109800903631100

`A146794(A028310(floor(n/2)))`
-/

namespace A146796.P1577109800903631100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146794 (A028310 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A146796.P1577109800903631100

/-! ## A146796.P2963911561909087267

`A368729(A146607(n+1))`
-/

namespace A146796.P2963911561909087267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368729 (A146607 (n + 1)).toNat

end

end A146796.P2963911561909087267

/-! ## A146796.P7841555054780680585

`A089868(A146836(n+1))`
-/

namespace A146796.P7841555054780680585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A146836 (n + 1)).toNat

end

end A146796.P7841555054780680585

/-! ## A146796.P1059907743328691811

`A175857(A146370(n+1))`
-/

namespace A146796.P1059907743328691811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175857 (A146370 (n + 1)).toNat

end

end A146796.P1059907743328691811

/-! ## A146796.P10693967669824649153

`A362265(A147510(n+1))`
-/

namespace A146796.P10693967669824649153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362265 (A147510 (n + 1)).toNat

end

end A146796.P10693967669824649153

/-!
# A146797: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0110-0100-1111 pattern in any orientation.

The programs for A146797, there is no canonical definition to state claims against.
-/

/-! ## A146797.P6522695828551634885

`A101435(A393247(n))`
-/

namespace A146797.P6522695828551634885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (A393247 n).toNat

end

end A146797.P6522695828551634885

/-! ## A146797.P7689802873709924434

`A101435(A100135(n+1))`
-/

namespace A146797.P7689802873709924434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (A100135 (n + 1)).toNat

end

end A146797.P7689802873709924434

/-! ## A146797.P15519010629481890084

`A352950(A068043(n+1))`
-/

namespace A146797.P15519010629481890084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352950 (A068043 (n + 1)).toNat

end

end A146797.P15519010629481890084

/-! ## A146797.P5421284645857417963

`A101435(A393250(n+1))`
-/

namespace A146797.P5421284645857417963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (A393250 (n + 1)).toNat

end

end A146797.P5421284645857417963

/-! ## A146797.P2597026437744011463

`A020651(∑[(n-1)*a(n-1)+(n-1)*(n-2)*a(n-3)])` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A146797.P2597026437744011463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1) + ((n : ℤ) - 1) * (((n : ℤ) - 2) * f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146797.P2597026437744011463

/-!
# A146798: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0110-0100-1111 pattern in any orientation.

The programs for A146798, there is no canonical definition to state claims against.
-/

/-! ## A146798.P6127694522863201418

`A159786(A168049(n))+1`
-/

namespace A146798.P6127694522863201418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159786 (A168049 n).toNat + 1

end

end A146798.P6127694522863201418

/-! ## A146798.P9440933652451981731

`A178334(A064898(n)+42)`
-/

namespace A146798.P9440933652451981731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A064898 n + 42).toNat

end

end A146798.P9440933652451981731

/-! ## A146798.P17856518611715713439

`A178334(A115140(n)²+7)`
-/

namespace A146798.P17856518611715713439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A115140 n ^ 2 + 7).toNat

end

end A146798.P17856518611715713439

/-! ## A146798.P6365146956825369290

`A178334(A120588(n)²+7)`
-/

namespace A146798.P6365146956825369290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A120588 n ^ 2 + 7).toNat

end

end A146798.P6365146956825369290

/-!
# A146799: Number of n X n binary arrays with all 1's connected only in a 0110-1100-0111 pattern in any orientation.

The programs for A146799, there is no canonical definition to state claims against.
-/

/-! ## A146799.P9491775717748698602

`A146801(2*(n+2))`
-/

namespace A146799.P9491775717748698602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146801 (2 * (n + 2))

end

end A146799.P9491775717748698602

/-! ## A146799.P14875519137862802478

`A146801(A005843(n+2))/A065648(n)`
-/

namespace A146799.P14875519137862802478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146801 (A005843 (n + 2)).toNat : ℚ) / (A065648 n : ℚ)

end

end A146799.P14875519137862802478

/-! ## A146799.P9622805475618724464

`A146801(A005843(n+2))/A146796(n+1)`
-/

namespace A146799.P9622805475618724464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146801 (A005843 (n + 2)).toNat : ℚ) / (A146796 (n + 1) : ℚ)

end

end A146799.P9622805475618724464

/-! ## A146799.P10592543830552882144

`or(1, A146801(A168045(n+1)))`
-/

namespace A146799.P10592543830552882144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146801 (A168045 (n + 1)).toNat)

end

end A146799.P10592543830552882144

/-! ## A146799.P11551533570561874722

`A146801(A168045(n+1))+A025462(n)`
-/

namespace A146799.P11551533570561874722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146801 (A168045 (n + 1)).toNat + A025462 n

end

end A146799.P11551533570561874722

