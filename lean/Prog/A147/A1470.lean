import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B010.C000
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

/-!
# A147001: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 00100-00100-11111 pattern in any orientation.

The programs for A147001, there is no canonical definition to state claims against.
-/

/-! ## A147001.P14828058026335630856

`A143053(A146435(n+1))`
-/

namespace A147001.P14828058026335630856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143053 (A146435 (n + 1)).toNat

end

end A147001.P14828058026335630856

/-!
# A147002: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 00100-00100-11111 pattern in any orientation.

The programs for A147002, there is no canonical definition to state claims against.
-/

/-! ## A147002.P7112348744315671630

`A038569(xor(A000608(n), A038569(n+2)))`
-/

namespace A147002.P7112348744315671630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (Int.xor (A000608 n) (A038569 (n + 2))).toNat

end

end A147002.P7112348744315671630

/-!
# A147003: Number of n X n binary arrays with all ones connected only in a 00100-11111-00100 pattern in any orientation.

The programs for A147003, there is no canonical definition to state claims against.
-/

/-! ## A147003.P11256450745651304365

`A147005(2*(n+2))`
-/

namespace A147003.P11256450745651304365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147005 (2 * (n + 2))

end

end A147003.P11256450745651304365

/-!
# A147004: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 00100-11111-00100 pattern in any orientation.

The programs for A147004, there is no canonical definition to state claims against.
-/

/-! ## A147004.P7513397323606342231

`A334548(n)+A053186(A065237(n))`
-/

namespace A147004.P7513397323606342231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334548 n + A053186 (A065237 n).toNat

end

end A147004.P7513397323606342231

/-! ## A147004.P16945554794530578573

`A300362(A293222(n+1)+A059570(n+1))`
-/

namespace A147004.P16945554794530578573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300362 (A293222 (n + 1) + A059570 (n + 1)).toNat

end

end A147004.P16945554794530578573

/-! ## A147004.P9277577991018967090

`gcd(A076243(A076286(n+1)), A076244(2*n+1))`
-/

namespace A147004.P9277577991018967090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076243 (A076286 (n + 1)).toNat) (A076244 (2 * n + 1))

end

end A147004.P9277577991018967090

/-!
# A147005: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 00100-11111-00100 pattern in any orientation.

The programs for A147005, there is no canonical definition to state claims against.
-/

/-! ## A147005.P11105570973532361552

`gcd(A007360(A321655(n)), A286172(n))`
-/

namespace A147005.P11105570973532361552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007360 (A321655 n).toNat) (A286172 n)

end

end A147005.P11105570973532361552

/-! ## A147005.P1258827672025212800

`A004197(3*n)+A003983(A143568(n))`
-/

namespace A147005.P1258827672025212800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (3 * n) + A003983 (A143568 n).toNat

end

end A147005.P1258827672025212800

/-! ## A147005.P758893027782925134

`gcd(A047263(A068972(n+1)), A136628(n))`
-/

namespace A147005.P758893027782925134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047263 (A068972 (n + 1)).toNat) (A136628 n)

end

end A147005.P758893027782925134

/-! ## A147005.P4542425278610009004

`gcd(A000217(A073603(5*n+2)), A304121(n))`
-/

namespace A147005.P4542425278610009004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A073603 (5 * n + 2)).toNat) (A304121 n)

end

end A147005.P4542425278610009004

/-!
# A147006: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 00100-11111-00100 pattern in any orientation.

The programs for A147006, there is no canonical definition to state claims against.
-/

/-! ## A147006.P1118351506111855341

`A147321(n+1)-A101606(A147326(n+1))`
-/

namespace A147006.P1118351506111855341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147321 (n + 1) - A101606 (A147326 (n + 1)).toNat

end

end A147006.P1118351506111855341

/-! ## A147006.P7625242410507606304

`A147321(n+1)-A287528(A147345(n+1))`
-/

namespace A147006.P7625242410507606304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147321 (n + 1) - A287528 (A147345 (n + 1)).toNat

end

end A147006.P7625242410507606304

/-! ## A147006.P3525540117592801061

`A146938(A137507(n))`
-/

namespace A147006.P3525540117592801061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146938 (A137507 n).toNat

end

end A147006.P3525540117592801061

/-! ## A147006.P8296306744030216901

`A225636(A288111(n))`
-/

namespace A147006.P8296306744030216901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225636 (A288111 n).toNat

end

end A147006.P8296306744030216901

/-! ## A147006.P13653079736813617792

`A255239(A375135(n))`
-/

namespace A147006.P13653079736813617792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255239 (A375135 n).toNat

end

end A147006.P13653079736813617792

/-!
# A147009: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 00100-11111-00100 pattern in any orientation.

The programs for A147009, there is no canonical definition to state claims against.
-/

/-! ## A147009.P1507088933199811016

`A347707(A380431(n))`
-/

namespace A147009.P1507088933199811016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347707 (A380431 n).toNat

end

end A147009.P1507088933199811016

/-! ## A147009.P13430664731419178633

`A146931(n+1)-A033665(A147053(n+1))`
-/

namespace A147009.P13430664731419178633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146931 (n + 1) - A033665 (A147053 (n + 1)).toNat

end

end A147009.P13430664731419178633

/-! ## A147009.P10234480567665785438

`A335570(A118807(n))+2%A033999(n)*A242889(n+2)`
-/

namespace A147009.P10234480567665785438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A118807 n).toNat + Int.tmod 2 (A033999 n) * A242889 (n + 2)

end

end A147009.P10234480567665785438

/-!
# A147010: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 00100-11111-00100 pattern in any orientation.

The programs for A147010, there is no canonical definition to state claims against.
-/

/-! ## A147010.P9679689541587245241

`A325391(a(n-1)+n)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A147010.P9679689541587245241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A325391 (a (n - 1) + (n : ℤ)).toNat

end

end A147010.P9679689541587245241

/-! ## A147010.P1372987464829399700

`A105048(A344491(n))`
-/

namespace A147010.P1372987464829399700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105048 (A344491 n).toNat

end

end A147010.P1372987464829399700

/-! ## A147010.P2496966431308397981

`A351467(A275443(n)+1)`
-/

namespace A147010.P2496966431308397981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351467 (A275443 n + 1).toNat

end

end A147010.P2496966431308397981

/-! ## A147010.P8497553804318705281

`A351467(or(A000322(n), A132440(n)))`
-/

namespace A147010.P8497553804318705281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351467 (Int.lor (A000322 n) (A132440 n)).toNat

end

end A147010.P8497553804318705281

/-!
# A147011: Number of n X n binary arrays with all ones connected only in a 01000-11111-00010 pattern in any orientation.

The programs for A147011, there is no canonical definition to state claims against.
-/

/-! ## A147011.P2810143460972764744

`A147013(2*(n+2))`
-/

namespace A147011.P2810143460972764744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147013 (2 * (n + 2))

end

end A147011.P2810143460972764744

/-! ## A147011.P10640037776993618097

`gcd(A000038(n), A147013(A336066(n+1)))`
-/

namespace A147011.P10640037776993618097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A147013 (A336066 (n + 1)).toNat)

end

end A147011.P10640037776993618097

/-! ## A147011.P11437277367734438471

`A147013(A336066(n+1))/A147013(A147013(n+1)²)`
-/

namespace A147011.P11437277367734438471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147013 (A336066 (n + 1)).toNat : ℚ) / (A147013 (A147013 (n + 1) ^ 2).toNat : ℚ)

end

end A147011.P11437277367734438471

/-!
# A147012: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 01000-11111-00010 pattern in any orientation.

The programs for A147012, there is no canonical definition to state claims against.
-/

/-! ## A147012.P10523257749460106791

`A366189(A383835(n))`
-/

namespace A147012.P10523257749460106791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366189 (A383835 n).toNat

end

end A147012.P10523257749460106791

/-! ## A147012.P13846964660812188139

`A329450(A146184(n+1))`
-/

namespace A147012.P13846964660812188139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329450 (A146184 (n + 1)).toNat

end

end A147012.P13846964660812188139

/-! ## A147012.P272259957631421747

`A329450(A058058(n+2))`
-/

namespace A147012.P272259957631421747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329450 (A058058 (n + 2)).toNat

end

end A147012.P272259957631421747

/-! ## A147012.P3277263912776109604

`A351490(A147407(n+2))`
-/

namespace A147012.P3277263912776109604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351490 (A147407 (n + 2)).toNat

end

end A147012.P3277263912776109604

/-!
# A147013: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 01000-11111-00010 pattern in any orientation.

The programs for A147013, there is no canonical definition to state claims against.
-/

/-! ## A147013.P9993738983990362628

`A132017(A146132(n+1))`
-/

namespace A147013.P9993738983990362628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132017 (A146132 (n + 1)).toNat

end

end A147013.P9993738983990362628

/-! ## A147013.P10362555268257474248

`A089867(A147187(n+1))`
-/

namespace A147013.P10362555268257474248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A147187 (n + 1)).toNat

end

end A147013.P10362555268257474248

/-! ## A147013.P15739951350880289833

`A101222(A146132(n+1))`
-/

namespace A147013.P15739951350880289833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101222 (A146132 (n + 1)).toNat

end

end A147013.P15739951350880289833

/-! ## A147013.P973016439969582471

`A114889(A147378(n+1))`
-/

namespace A147013.P973016439969582471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114889 (A147378 (n + 1)).toNat

end

end A147013.P973016439969582471

/-! ## A147013.P9322932405158824356

`A128008(A147249(n+1))`
-/

namespace A147013.P9322932405158824356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128008 (A147249 (n + 1)).toNat

end

end A147013.P9322932405158824356

/-!
# A147014: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 01000-11111-00010 pattern in any orientation.

The programs for A147014, there is no canonical definition to state claims against.
-/

/-! ## A147014.P7887671370512451439

`A147016(2*(n+2))`
-/

namespace A147014.P7887671370512451439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147016 (2 * (n + 2))

end

end A147014.P7887671370512451439

/-! ## A147014.P18303809567980285105

`or(1, A147016(comp[(2*n)%or(6, n)]))`
-/

namespace A147014.P18303809567980285105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % Nat.lor 6 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147016 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A147014.P18303809567980285105

/-! ## A147014.P6903964650113192319

`A147016(A287777(n+1))+A090318(n+1)`
-/

namespace A147014.P6903964650113192319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147016 (A287777 (n + 1)).toNat + A090318 (n + 1)

end

end A147014.P6903964650113192319

/-! ## A147014.P6437461411168451707

`A147016(A287777(n+1))^A147016(n+1)`
-/

namespace A147014.P6437461411168451707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147016 (A287777 (n + 1)).toNat : ℚ) ^ (A147016 (n + 1) : ℤ)

end

end A147014.P6437461411168451707

/-! ## A147014.P15017279874165965694

`A147022(n+1)+A028645(A147022(n+1))`
-/

namespace A147014.P15017279874165965694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147022 (n + 1) + A028645 (A147022 (n + 1)).toNat

end

end A147014.P15017279874165965694

/-!
# A147015: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 01000-11111-00010 pattern in any orientation.

The programs for A147015, there is no canonical definition to state claims against.
-/

/-! ## A147015.P394116038831402163

`A147023(A077168(n))`
-/

namespace A147015.P394116038831402163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147023 (A077168 n).toNat

end

end A147015.P394116038831402163

/-! ## A147015.P59589644353045779

`A147023(A043319(n+1))`
-/

namespace A147015.P59589644353045779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147023 (A043319 (n + 1)).toNat

end

end A147015.P59589644353045779

/-! ## A147015.P4008960785120959845

`A147023(A044916(n+1))`
-/

namespace A147015.P4008960785120959845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147023 (A044916 (n + 1)).toNat

end

end A147015.P4008960785120959845

/-! ## A147015.P10431171039949452906

`A147023(A055646(n+1))`
-/

namespace A147015.P10431171039949452906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147023 (A055646 (n + 1)).toNat

end

end A147015.P10431171039949452906

/-! ## A147015.P14475294291500611427

`A147023(A060695(n+1))`
-/

namespace A147015.P14475294291500611427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147023 (A060695 (n + 1)).toNat

end

end A147015.P14475294291500611427

/-!
# A147016: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 01000-11111-00010 pattern in any orientation.

The programs for A147016, there is no canonical definition to state claims against.
-/

/-! ## A147016.P14851246148700146853

`A147014(A287864(n+1))`
-/

namespace A147016.P14851246148700146853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147014 (A287864 (n + 1)).toNat

end

end A147016.P14851246148700146853

/-! ## A147016.P10092029278818760172

`A101435(A147502(n+1))`
-/

namespace A147016.P10092029278818760172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (A147502 (n + 1)).toNat

end

end A147016.P10092029278818760172

/-! ## A147016.P5471579277906747426

`A102800(A147494(n+1))`
-/

namespace A147016.P5471579277906747426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (A147494 (n + 1)).toNat

end

end A147016.P5471579277906747426

/-! ## A147016.P5302539742320240576

`A101279(A147159(n+1)%p?[A088699(2*(n+1))])`
-/

namespace A147016.P5302539742320240576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (Int.tmod (A147159 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A147016.P5302539742320240576

/-! ## A147016.P492958965295215364

`A151570(C(A274842(n), A054404(n+1)))`
-/

namespace A147016.P492958965295215364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 (Nat.choose (A274842 n).toNat (A054404 (n + 1)).toNat)

end

end A147016.P492958965295215364

/-!
# A147017: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 01000-11111-00010 pattern in any orientation.

The programs for A147017, there is no canonical definition to state claims against.
-/

/-! ## A147017.P4679024428816579582

`A147025(3*9*char[12]+n+1)`
-/

namespace A147017.P4679024428816579582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147025 (3 * (9 * (if ∃ j, f1 j = n then 1 else 0)) + n + 1)

end

end A147017.P4679024428816579582

/-! ## A147017.P7465094966938150759

`A130734(A147025(n+1)+1)`
-/

namespace A147017.P7465094966938150759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A147025 (n + 1) + 1).toNat

end

end A147017.P7465094966938150759

/-! ## A147017.P14092368598493746651

`A097448(A147025(n+1))`
-/

namespace A147017.P14092368598493746651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A147025 (n + 1)).toNat

end

end A147017.P14092368598493746651

/-! ## A147017.P354740337873544414

`A164529(A146435(n+1))`
-/

namespace A147017.P354740337873544414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164529 (A146435 (n + 1)).toNat

end

end A147017.P354740337873544414

/-!
# A147019: Number of n X n binary arrays with all ones connected only in a 01000-11111-01000 pattern in any orientation.

The programs for A147019, there is no canonical definition to state claims against.
-/

/-! ## A147019.P11654116264183829493

`A147021(2*(n+2))`
-/

namespace A147019.P11654116264183829493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147021 (2 * (n + 2))

end

end A147019.P11654116264183829493

/-! ## A147019.P7373384784292259705

`or(A147011(n+1), A147016(A025487(n+1)))`
-/

namespace A147019.P7373384784292259705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147011 (n + 1)) (A147016 (A025487 (n + 1)).toNat)

end

end A147019.P7373384784292259705

/-! ## A147019.P189938825819205146

`or(A147011(n+1), A343342(A147010(n+1)))`
-/

namespace A147019.P189938825819205146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147011 (n + 1)) (A343342 (A147010 (n + 1)).toNat)

end

end A147019.P189938825819205146

/-!
# A147020: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 01000-11111-01000 pattern in any orientation.

The programs for A147020, there is no canonical definition to state claims against.
-/

/-! ## A147020.P11735375325898069942

`A053575(A280577(n+1)+A053557(n))`
-/

namespace A147020.P11735375325898069942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (A280577 (n + 1) + A053557 n).toNat

end

end A147020.P11735375325898069942

/-! ## A147020.P538083376972058428

`A325391(A215047(n+1)%A089259(n))`
-/

namespace A147020.P538083376972058428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325391 (Int.tmod (A215047 (n + 1)) (A089259 n)).toNat

end

end A147020.P538083376972058428

/-! ## A147020.P15670161481988559933

`A147453(n+1)+A111660(A147468(n+1))`
-/

namespace A147020.P15670161481988559933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147453 (n + 1) + A111660 (A147468 (n + 1)).toNat

end

end A147020.P15670161481988559933

/-! ## A147020.P11537158620210549317

`A324394(A102659(n+1)*A347120(n+1))`
-/

namespace A147020.P11537158620210549317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324394 (A102659 (n + 1) * A347120 (n + 1)).toNat

end

end A147020.P11537158620210549317

/-! ## A147020.P14123770754022977843

`A318577(n+2)*A318586(A318621(n+1))`
-/

namespace A147020.P14123770754022977843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318577 (n + 2) * A318586 (A318621 (n + 1)).toNat

end

end A147020.P14123770754022977843

/-!
# A147022: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 01000-11111-01000 pattern in any orientation.

The programs for A147022, there is no canonical definition to state claims against.
-/

/-! ## A147022.P3951141948722131376

`A147024(2*(n+2))`
-/

namespace A147022.P3951141948722131376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147024 (2 * (n + 2))

end

end A147022.P3951141948722131376

/-!
# A147023: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 01000-11111-01000 pattern in any orientation.

The programs for A147023, there is no canonical definition to state claims against.
-/

/-! ## A147023.P475600341971844049

`A335520(A002865(n+3))+A147015(n+1)`
-/

namespace A147023.P475600341971844049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A002865 (n + 3)).toNat + A147015 (n + 1)

end

end A147023.P475600341971844049

/-!
# A147026: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 01000-11111-01000 pattern in any orientation.

The programs for A147026, there is no canonical definition to state claims against.
-/

/-! ## A147026.P10819763121434622260

`and(A147090(n+1), A147114(A001742(n+1)))`
-/

namespace A147026.P10819763121434622260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A147090 (n + 1)) (A147114 (A001742 (n + 1)).toNat)

end

end A147026.P10819763121434622260

/-!
# A147027: Number of n X n binary arrays with all ones connected only in a 0100-0100-1111-0010 pattern in any orientation.

The programs for A147027, there is no canonical definition to state claims against.
-/

/-! ## A147027.P14277606204253046183

`A147029(2*(n+2))`
-/

namespace A147027.P14277606204253046183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147029 (2 * (n + 2))

end

end A147027.P14277606204253046183

/-! ## A147027.P8412416077914004884

`or(1, A147029(comp[(2*n)%or(6, n)]))`
-/

namespace A147027.P8412416077914004884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % Nat.lor 6 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147029 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A147027.P8412416077914004884

/-! ## A147027.P5750594591378713151

`or(1, A147029(A131392(n+1)))`
-/

namespace A147027.P5750594591378713151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147029 (A131392 (n + 1)).toNat)

end

end A147027.P5750594591378713151

/-! ## A147027.P10816353447864653688

`or(1, A147029(A322660(n+1)))`
-/

namespace A147027.P10816353447864653688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147029 (A322660 (n + 1)).toNat)

end

end A147027.P10816353447864653688

/-! ## A147027.P15604395697838057968

`A147029(A131392(n+1))+A059995(n)`
-/

namespace A147027.P15604395697838057968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147029 (A131392 (n + 1)).toNat + A059995 n

end

end A147027.P15604395697838057968

/-!
# A147028: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 0100-0100-1111-0010 pattern in any orientation.

The programs for A147028, there is no canonical definition to state claims against.
-/

/-! ## A147028.P11403680564334223342

`A141018(A037954(n+1))`
-/

namespace A147028.P11403680564334223342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141018 (A037954 (n + 1)).toNat

end

end A147028.P11403680564334223342

/-! ## A147028.P10250316636514566448

`A000926(C(A007094(n), n))`
-/

namespace A147028.P10250316636514566448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (Nat.choose (A007094 n).toNat n)

end

end A147028.P10250316636514566448

/-! ## A147028.P10066694368112349465

`A000926(C(A329298(n+1), n))`
-/

namespace A147028.P10066694368112349465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (Nat.choose (A329298 (n + 1)).toNat n)

end

end A147028.P10066694368112349465

/-! ## A147028.P2821498782956067715

`A000926(A008805(2*n))^A378149(n+1)`
-/

namespace A147028.P2821498782956067715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000926 (A008805 (2 * n)).toNat : ℚ) ^ (A378149 (n + 1) : ℤ)

end

end A147028.P2821498782956067715

/-! ## A147028.P17245871401598543880

`A146366(A146393(n+1))%A158932(n+1)`
-/

namespace A147028.P17245871401598543880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146366 (A146393 (n + 1)).toNat) (A158932 (n + 1))

end

end A147028.P17245871401598543880

/-!
# A147030: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0100-0100-1111-0010 pattern in any orientation.

The programs for A147030, there is no canonical definition to state claims against.
-/

/-! ## A147030.P14297548558570270264

`A147032(2*(n+2))`
-/

namespace A147030.P14297548558570270264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147032 (2 * (n + 2))

end

end A147030.P14297548558570270264

/-! ## A147030.P2139979023194525544

`or(1, A147032(comp[(2*n)%or(6, n)]))`
-/

namespace A147030.P2139979023194525544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % Nat.lor 6 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A147030.P2139979023194525544

/-! ## A147030.P2015281820139997474

`or(1, A147032(A144396(n+1)))`
-/

namespace A147030.P2015281820139997474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147032 (A144396 (n + 1)).toNat)

end

end A147030.P2015281820139997474

/-! ## A147030.P5334428834600285752

`or(1, A147032(A160217(n+1)))`
-/

namespace A147030.P5334428834600285752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147032 (A160217 (n + 1)).toNat)

end

end A147030.P5334428834600285752

/-! ## A147030.P15019111523403208884

`or(1, A147032(A187477(n+1)))`
-/

namespace A147030.P15019111523403208884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147032 (A187477 (n + 1)).toNat)

end

end A147030.P15019111523403208884

/-!
# A147031: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0100-0100-1111-0010 pattern in any orientation.

The programs for A147031, there is no canonical definition to state claims against.
-/

/-! ## A147031.P15801577350375614730

`A147220(A051038(n+1))`
-/

namespace A147031.P15801577350375614730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147220 (A051038 (n + 1)).toNat

end

end A147031.P15801577350375614730

/-! ## A147031.P17409274931236667308

`A147220(A193457(n+1))`
-/

namespace A147031.P17409274931236667308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147220 (A193457 (n + 1)).toNat

end

end A147031.P17409274931236667308

/-! ## A147031.P150175072287859304

`A282289(A117791(n))+1`
-/

namespace A147031.P150175072287859304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282289 (A117791 n).toNat + 1

end

end A147031.P150175072287859304

/-! ## A147031.P5364087563994199410

`A147220(A008679(n)+n)`
-/

namespace A147031.P5364087563994199410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147220 (A008679 n + (n : ℤ)).toNat

end

end A147031.P5364087563994199410

/-!
# A147032: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 0100-0100-1111-0010 pattern in any orientation.

The programs for A147032, there is no canonical definition to state claims against.
-/

/-! ## A147032.P2135355788539036041

`A302798(A147433(n+1))`
-/

namespace A147032.P2135355788539036041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302798 (A147433 (n + 1)).toNat

end

end A147032.P2135355788539036041

/-! ## A147032.P13039161915519909801

`A356903(A146607(n+1))-A360676(A147136(n+1))`
-/

namespace A147032.P13039161915519909801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356903 (A146607 (n + 1)).toNat - A360676 (A147136 (n + 1)).toNat

end

end A147032.P13039161915519909801

/-!
# A147033: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0100-0100-1111-0010 pattern in any orientation.

The programs for A147033, there is no canonical definition to state claims against.
-/

/-! ## A147033.P13357764422158276125

`A219852(ceil(n!/exp(n)))-2`
-/

namespace A147033.P13357764422158276125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219852 ⌈(Nat.factorial n : ℝ) / Real.exp (n : ℝ)⌉.toNat - 2

end

end A147033.P13357764422158276125

/-! ## A147033.P543109363618152060

`A144871(A116845(n+1))`
-/

namespace A147033.P543109363618152060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A116845 (n + 1)).toNat

end

end A147033.P543109363618152060

/-! ## A147033.P5447553324497483590

`A338263(A288545(n+7))`
-/

namespace A147033.P5447553324497483590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338263 (A288545 (n + 7)).toNat

end

end A147033.P5447553324497483590

/-! ## A147033.P1091702851698739371

`filter[A147336(n+2), A029692(#)]`
-/

namespace A147033.P1091702851698739371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147336 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A029692 (f1 j).toNat = 1) n)

end

end A147033.P1091702851698739371

/-! ## A147033.P11011979059434491041

`filter[A147336(n+2), A074937(#)]`
-/

namespace A147033.P11011979059434491041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147336 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A074937 (f1 j).toNat = 1) n)

end

end A147033.P11011979059434491041

/-!
# A147035: Number of n X n binary arrays with all ones connected only in a 0100-0100-1111-0100 pattern in any orientation.

The programs for A147035, there is no canonical definition to state claims against.
-/

/-! ## A147035.P13519161486354484099

`A147037(2*n+3)`
-/

namespace A147035.P13519161486354484099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147037 (2 * n + 3)

end

end A147035.P13519161486354484099

/-! ## A147035.P16659190066211847031

`or(1, A147037(comp[(2*n)%or(6, n)]))`
-/

namespace A147035.P16659190066211847031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % Nat.lor 6 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147037 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A147035.P16659190066211847031

/-! ## A147035.P7515666891261189418

`or(1, A033107(A005053(n)))`
-/

namespace A147035.P7515666891261189418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033107 (A005053 n).toNat)

end

end A147035.P7515666891261189418

/-!
# A147036: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 0100-0100-1111-0100 pattern in any orientation.

The programs for A147036, there is no canonical definition to state claims against.
-/

/-! ## A147036.P12120198614656602499

`A147044((n+1)^(∑{digits}[n, 10^#]%9))`
-/

namespace A147036.P12120198614656602499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147044 ((n + 1) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9))

end

end A147036.P12120198614656602499

/-! ## A147036.P8014443887426450830

`A355879(A148369(n))`
-/

namespace A147036.P8014443887426450830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355879 (A148369 n).toNat

end

end A147036.P8014443887426450830

/-! ## A147036.P12740170940618309758

`A355879(A148370(n))`
-/

namespace A147036.P12740170940618309758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355879 (A148370 n).toNat

end

end A147036.P12740170940618309758

/-! ## A147036.P80003821858762583

`A327005(A380590(n))`
-/

namespace A147036.P80003821858762583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327005 (A380590 n).toNat

end

end A147036.P80003821858762583

/-! ## A147036.P15640720663784356839

`A224342(n^A308991(n))`
-/

namespace A147036.P15640720663784356839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224342 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A308991 n : ℤ))).toNat

end

end A147036.P15640720663784356839

/-!
# A147037: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 0100-0100-1111-0100 pattern in any orientation.

The programs for A147037, there is no canonical definition to state claims against.
-/

/-! ## A147037.P500134007166849399

`A147035(A244325(n+1)+1)`
-/

namespace A147037.P500134007166849399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147035 (A244325 (n + 1) + 1).toNat

end

end A147037.P500134007166849399

/-! ## A147037.P11931227133865431886

`A147035((n+1)%A065033(n+4)+1)`
-/

namespace A147037.P11931227133865431886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147035 (Int.tmod (n + 1 : ℤ) (A065033 (n + 4)) + 1).toNat

end

end A147037.P11931227133865431886

/-! ## A147037.P6152850934294758149

`floor(root(A139019(n+1), 10))`
-/

namespace A147037.P6152850934294758149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139019 (n + 1) : ℝ) ^ (1 / (10 : ℝ))⌋

end

end A147037.P6152850934294758149

/-! ## A147037.P3146221360270993770

`A147469(A077168(n))`
-/

namespace A147037.P3146221360270993770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147469 (A077168 n).toNat

end

end A147037.P3146221360270993770

/-! ## A147037.P1242284870132994620

`A147469(A032949(n+1))`
-/

namespace A147037.P1242284870132994620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147469 (A032949 (n + 1)).toNat

end

end A147037.P1242284870132994620

/-!
# A147038: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0100-0100-1111-0100 pattern in any orientation.

The programs for A147038, there is no canonical definition to state claims against.
-/

/-! ## A147038.P17819582074376790330

`A147040(2*(n+2))`
-/

namespace A147038.P17819582074376790330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147040 (2 * (n + 2))

end

end A147038.P17819582074376790330

/-! ## A147038.P6213903212973295706

`or(1, A147040(comp[(2*n)%or(6, n)]))`
-/

namespace A147038.P6213903212973295706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % Nat.lor 6 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A147038.P6213903212973295706

/-! ## A147038.P3318983316061614886

`A000265(A147040(Δ[(n+1)²]))`
-/

namespace A147038.P3318983316061614886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A147040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A147038.P3318983316061614886

/-!
# A147039: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0100-0100-1111-0100 pattern in any orientation.

The programs for A147039, there is no canonical definition to state claims against.
-/

/-! ## A147039.P1964199268578004573

`or(ceil(A305595(n+1)/35), A147093(n+1))`
-/

namespace A147039.P1964199268578004573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(A305595 (n + 1) : ℚ) / 35⌉ (A147093 (n + 1))

end

end A147039.P1964199268578004573

/-! ## A147039.P3483585050605426163

`or(ceil(A305595(n+1)/35), A147195(n+1))`
-/

namespace A147039.P3483585050605426163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(A305595 (n + 1) : ℚ) / 35⌉ (A147195 (n + 1))

end

end A147039.P3483585050605426163

/-! ## A147039.P16489944609821847334

`or(1, A010423(A028304(n)))`
-/

namespace A147039.P16489944609821847334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010423 (A028304 n).toNat)

end

end A147039.P16489944609821847334

/-! ## A147039.P8629876993428727668

`or(1, A236456(A350434(n+1)))`
-/

namespace A147039.P8629876993428727668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A236456 (A350434 (n + 1)).toNat)

end

end A147039.P8629876993428727668

/-! ## A147039.P7846607784292867377

`A373509(A102679(n)+A087051(n))`
-/

namespace A147039.P7846607784292867377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373509 (A102679 n + A087051 n).toNat

end

end A147039.P7846607784292867377

/-!
# A147040: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 0100-0100-1111-0100 pattern in any orientation.

The programs for A147040, there is no canonical definition to state claims against.
-/

/-! ## A147040.P13769014328602220196

`A071912(A147045(n+1))`
-/

namespace A147040.P13769014328602220196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (A147045 (n + 1)).toNat

end

end A147040.P13769014328602220196

/-! ## A147040.P11490054961407559143

`A328869(A147472(n+1))`
-/

namespace A147040.P11490054961407559143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328869 (A147472 (n + 1)).toNat

end

end A147040.P11490054961407559143

/-!
# A147041: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0100-0100-1111-0100 pattern in any orientation.

The programs for A147041, there is no canonical definition to state claims against.
-/

/-! ## A147041.P4399261523803031817

`or(A146702(n+1), A327704(A146702(n+1)))`
-/

namespace A147041.P4399261523803031817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146702 (n + 1)) (A327704 (A146702 (n + 1)).toNat)

end

end A147041.P4399261523803031817

/-! ## A147041.P2437218634789677768

`or(A146734(n+1), A327704(A146734(n+1)))`
-/

namespace A147041.P2437218634789677768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146734 (n + 1)) (A327704 (A146734 (n + 1)).toNat)

end

end A147041.P2437218634789677768

/-! ## A147041.P8243573722957160164

`A321901(A147017(n+1))`
-/

namespace A147041.P8243573722957160164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321901 (A147017 (n + 1)).toNat

end

end A147041.P8243573722957160164

/-! ## A147041.P16865307308870182138

`A321901(A147025(n+1))`
-/

namespace A147041.P16865307308870182138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321901 (A147025 (n + 1)).toNat

end

end A147041.P16865307308870182138

/-! ## A147041.P7930169215399475799

`filter[A147087(n+2), A102511(#)]`
-/

namespace A147041.P7930169215399475799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147087 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102511 (f1 j).toNat = 1) n)

end

end A147041.P7930169215399475799

/-!
# A147042: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0100-0100-1111-0100 pattern in any orientation.

The programs for A147042, there is no canonical definition to state claims against.
-/

/-! ## A147042.P1672051892955196408

`A126337(A304710(n)+1)`
-/

namespace A147042.P1672051892955196408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126337 (A304710 n + 1).toNat

end

end A147042.P1672051892955196408

/-!
# A147043: Number of n X n binary arrays with all ones connected only in a 0100-1100-0111-0010 pattern in any orientation.

The programs for A147043, there is no canonical definition to state claims against.
-/

/-! ## A147043.P7800650837384257983

`A147045(2*(n+2))`
-/

namespace A147043.P7800650837384257983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147045 (2 * (n + 2))

end

end A147043.P7800650837384257983

/-! ## A147043.P6650718798069533318

`or(1, A147045(comp[(2*n)%or(6, n)]))`
-/

namespace A147043.P6650718798069533318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % Nat.lor 6 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A147043.P6650718798069533318

/-! ## A147043.P5994883035410794463

`or(1, A147045(A144396(n+1)))`
-/

namespace A147043.P5994883035410794463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147045 (A144396 (n + 1)).toNat)

end

end A147043.P5994883035410794463

/-! ## A147043.P2365873241174587613

`A185264(n)+A147045(A005843(n+2))`
-/

namespace A147043.P2365873241174587613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 n + A147045 (A005843 (n + 2)).toNat

end

end A147043.P2365873241174587613

/-! ## A147043.P14565031403046050056

`A147045(A144396(n+1))%A338510(n)`
-/

namespace A147043.P14565031403046050056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147045 (A144396 (n + 1)).toNat) (A338510 n)

end

end A147043.P14565031403046050056

/-!
# A147045: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 0100-1100-0111-0010 pattern in any orientation.

The programs for A147045, there is no canonical definition to state claims against.
-/

/-! ## A147045.P402377005336548801

`A147195(A077168(n))`
-/

namespace A147045.P402377005336548801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147195 (A077168 n).toNat

end

end A147045.P402377005336548801

/-! ## A147045.P12027213353282287319

`A147399(record[A077168(n)])`
-/

namespace A147045.P12027213353282287319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147399 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147045.P12027213353282287319

/-! ## A147045.P14540148536172773031

`A147195(A032949(n+1))`
-/

namespace A147045.P14540148536172773031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147195 (A032949 (n + 1)).toNat

end

end A147045.P14540148536172773031

/-! ## A147045.P17425468213412346980

`A147195(A043319(n+1))`
-/

namespace A147045.P17425468213412346980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147195 (A043319 (n + 1)).toNat

end

end A147045.P17425468213412346980

/-! ## A147045.P6892282680015370502

`A147195(A044916(n+1))`
-/

namespace A147045.P6892282680015370502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147195 (A044916 (n + 1)).toNat

end

end A147045.P6892282680015370502

/-!
# A147046: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0100-1100-0111-0010 pattern in any orientation.

The programs for A147046, there is no canonical definition to state claims against.
-/

/-! ## A147046.P17021177849193917341

`A147048(2*n+3)`
-/

namespace A147046.P17021177849193917341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147048 (2 * n + 3)

end

end A147046.P17021177849193917341

/-! ## A147046.P12580182035819494731

`or(1, A147048(comp[(2*n)%or(6, n)]))`
-/

namespace A147046.P12580182035819494731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % Nat.lor 6 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147048 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A147046.P12580182035819494731

/-! ## A147046.P18037811138910216807

`or(1, A147048(A144396(n+1)))`
-/

namespace A147046.P18037811138910216807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147048 (A144396 (n + 1)).toNat)

end

end A147046.P18037811138910216807

/-! ## A147046.P11658370068705315521

`or(1, A147048(A033041(n+2)))`
-/

namespace A147046.P11658370068705315521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147048 (A033041 (n + 2)).toNat)

end

end A147046.P11658370068705315521

/-!
# A147047: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0100-1100-0111-0010 pattern in any orientation.

The programs for A147047, there is no canonical definition to state claims against.
-/

/-! ## A147047.P455181455210129444

`and(A002061(n), A336467(A205503(n)))`
-/

namespace A147047.P455181455210129444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002061 n) (A336467 (A205503 n).toNat)

end

end A147047.P455181455210129444

/-!
# A147048: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 0100-1100-0111-0010 pattern in any orientation.

The programs for A147048, there is no canonical definition to state claims against.
-/

/-! ## A147048.P8914069985840274811

`A147046(gcd(A000142(n), A004526(n)))`
-/

namespace A147048.P8914069985840274811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147046 (Int.gcd (A000142 n) (A004526 n))

end

end A147048.P8914069985840274811

/-!
# A147049: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0100-1100-0111-0010 pattern in any orientation.

The programs for A147049, there is no canonical definition to state claims against.
-/

/-! ## A147049.P1682150197713628501

`A212996(A091585(n+1))`
-/

namespace A147049.P1682150197713628501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212996 (A091585 (n + 1)).toNat

end

end A147049.P1682150197713628501

/-! ## A147049.P14767725055671199654

`A241986(A002839(n+1))%A335149(2*n+1)`
-/

namespace A147049.P14767725055671199654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241986 (A002839 (n + 1)).toNat) (A335149 (2 * n + 1))

end

end A147049.P14767725055671199654

/-!
# A147050: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0100-1100-0111-0010 pattern in any orientation.

The programs for A147050, there is no canonical definition to state claims against.
-/

/-! ## A147050.P15364935109358009823

`A065718(2*A075211(n+1))+1`
-/

namespace A147050.P15364935109358009823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 (2 * A075211 (n + 1)).toNat + 1

end

end A147050.P15364935109358009823

/-! ## A147050.P8718678172611766487

`A209914(A146238(n+1))+A146185(2*(n+1))`
-/

namespace A147050.P8718678172611766487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209914 (A146238 (n + 1)).toNat + A146185 (2 * (n + 1))

end

end A147050.P8718678172611766487

/-!
# A147051: Number of n X n binary arrays with all ones connected only in a 0100-1101-0111 pattern in any orientation.

The programs for A147051, there is no canonical definition to state claims against.
-/

/-! ## A147051.P14438703822799788367

`A147053(2*(n+2))`
-/

namespace A147051.P14438703822799788367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147053 (2 * (n + 2))

end

end A147051.P14438703822799788367

/-! ## A147051.P18392437662497672853

`or(1, A147053(comp[(2*n)%or(6, n)]))`
-/

namespace A147051.P18392437662497672853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % Nat.lor 6 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147053 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A147051.P18392437662497672853

/-! ## A147051.P13445810445125870077

`A000265(A147053(Δ[(n+1)²]))`
-/

namespace A147051.P13445810445125870077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A147053 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A147051.P13445810445125870077

/-! ## A147051.P16920845503834808182

`A147053(A054406(n+1))^A147053(n+1)`
-/

namespace A147051.P16920845503834808182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147053 (A054406 (n + 1)).toNat : ℚ) ^ (A147053 (n + 1) : ℤ)

end

end A147051.P16920845503834808182

/-!
# A147052: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 0100-1101-0111 pattern in any orientation.

The programs for A147052, there is no canonical definition to state claims against.
-/

/-! ## A147052.P18238320701558339363

`A147132(n+1)-A241470(A023422(n))`
-/

namespace A147052.P18238320701558339363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147132 (n + 1) - A241470 (A023422 n).toNat

end

end A147052.P18238320701558339363

/-! ## A147052.P562685095620504441

`A222217(A146715(n+1)^A001221(n+1))`
-/

namespace A147052.P562685095620504441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (SequenceMachineLib.roundAway ((A146715 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ))).toNat

end

end A147052.P562685095620504441

/-! ## A147052.P11684840583719234770

`A222217(A146715(n+1)^A028236(n+1))`
-/

namespace A147052.P11684840583719234770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (SequenceMachineLib.roundAway ((A146715 (n + 1) : ℚ) ^ (A028236 (n + 1) : ℤ))).toNat

end

end A147052.P11684840583719234770

/-! ## A147052.P6421610465875935800

`A222217(A146715(n+1)^A104617(n+1))`
-/

namespace A147052.P6421610465875935800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (SequenceMachineLib.roundAway ((A146715 (n + 1) : ℚ) ^ (A104617 (n + 1) : ℤ))).toNat

end

end A147052.P6421610465875935800

/-!
# A147053: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 0100-1101-0111 pattern in any orientation.

The programs for A147053, there is no canonical definition to state claims against.
-/

/-! ## A147053.P8003008962266210192

`or(A146777(n+1), A146781(A146820(n+1)))`
-/

namespace A147053.P8003008962266210192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146777 (n + 1)) (A146781 (A146820 (n + 1)).toNat)

end

end A147053.P8003008962266210192

/-! ## A147053.P12501675115165590531

`or(A146777(n+1), A146823(A146796(n+1)))`
-/

namespace A147053.P12501675115165590531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146777 (n + 1)) (A146823 (A146796 (n + 1)).toNat)

end

end A147053.P12501675115165590531

/-! ## A147053.P12368015594366871354

`or(A146777(n+1), A146781(A147214(n+1)))`
-/

namespace A147053.P12368015594366871354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146777 (n + 1)) (A146781 (A147214 (n + 1)).toNat)

end

end A147053.P12368015594366871354

/-! ## A147053.P1780517988912061748

`or(A146777(n+1), A146781(A147244(n+1)))`
-/

namespace A147053.P1780517988912061748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146777 (n + 1)) (A146781 (A147244 (n + 1)).toNat)

end

end A147053.P1780517988912061748

/-! ## A147053.P6680793732142087040

`or(A146777(n+1), A147195(A147198(n+1)))`
-/

namespace A147053.P6680793732142087040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146777 (n + 1)) (A147195 (A147198 (n + 1)).toNat)

end

end A147053.P6680793732142087040

/-!
# A147054: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0100-1101-0111 pattern in any orientation.

The programs for A147054, there is no canonical definition to state claims against.
-/

/-! ## A147054.P2188274297361712581

`A147056(2*(n+2))`
-/

namespace A147054.P2188274297361712581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147056 (2 * (n + 2))

end

end A147054.P2188274297361712581

/-! ## A147054.P16188901117883228807

`or(1, A147056(A144396(n+1)))`
-/

namespace A147054.P16188901117883228807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147056 (A144396 (n + 1)).toNat)

end

end A147054.P16188901117883228807

/-! ## A147054.P11604916333975299090

`or(1, A147056(A284534(n+1)))`
-/

namespace A147054.P11604916333975299090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147056 (A284534 (n + 1)).toNat)

end

end A147054.P11604916333975299090

/-! ## A147054.P13613226743877606440

`or(1, A147056(A346302(n+1)))`
-/

namespace A147054.P13613226743877606440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147056 (A346302 (n + 1)).toNat)

end

end A147054.P13613226743877606440

/-! ## A147054.P15692525604163742285

`or(1, A147056(A122080(n+2)))`
-/

namespace A147054.P15692525604163742285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147056 (A122080 (n + 2)).toNat)

end

end A147054.P15692525604163742285

/-!
# A147055: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0100-1101-0111 pattern in any orientation.

The programs for A147055, there is no canonical definition to state claims against.
-/

/-! ## A147055.P8844829259900679187

`A146638(n+1)-A067168(A146803(n+1))`
-/

namespace A147055.P8844829259900679187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146638 (n + 1) - A067168 ((A146803 (n + 1)).toNat + 10)

end

end A147055.P8844829259900679187

/-!
# A147056: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 0100-1101-0111 pattern in any orientation.

The programs for A147056, there is no canonical definition to state claims against.
-/

/-! ## A147056.P2953499429541491736

`A147054(n%(∑[n%2]+1)+1)`
-/

namespace A147056.P2953499429541491736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147054 (n % (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1)

end

end A147056.P2953499429541491736

/-!
# A147057: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0100-1101-0111 pattern in any orientation.

The programs for A147057, there is no canonical definition to state claims against.
-/

/-! ## A147057.P7089683433755421071

`or(A146805(n+1), A339089(A023361(n)))`
-/

namespace A147057.P7089683433755421071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146805 (n + 1)) (A339089 (A023361 n).toNat)

end

end A147057.P7089683433755421071

/-! ## A147057.P3984770716782430343

`or(A146805(n+1), A211159(A146824(n+1)))`
-/

namespace A147057.P3984770716782430343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146805 (n + 1)) (A211159 (A146824 (n + 1)).toNat)

end

end A147057.P3984770716782430343

/-! ## A147057.P11554870547584364537

`or(A146805(n+1), A353501(A231182(n)))`
-/

namespace A147057.P11554870547584364537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146805 (n + 1)) (A353501 (A231182 n).toNat)

end

end A147057.P11554870547584364537

/-!
# A147058: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0100-1101-0111 pattern in any orientation.

The programs for A147058, there is no canonical definition to state claims against.
-/

/-! ## A147058.P1350499524068518868

`A182318(A002850(n!))`
-/

namespace A147058.P1350499524068518868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182318 (A002850 (Nat.factorial n)).toNat

end

end A147058.P1350499524068518868

/-! ## A147058.P17237072903425706317

`abs(3-A233583(A146838(n+1)))`
-/

namespace A147058.P17237072903425706317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A233583 (A146838 (n + 1)).toNat|

end

end A147058.P17237072903425706317

/-! ## A147058.P9579705450695427673

`A110656(A126097(n+1)+A052778(n))`
-/

namespace A147058.P9579705450695427673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A126097 (n + 1) + A052778 n).toNat

end

end A147058.P9579705450695427673

/-! ## A147058.P10397429374210572057

`A360628(or(A361244(n), A361290(n+2)))`
-/

namespace A147058.P10397429374210572057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360628 (Int.lor (A361244 n) (A361290 (n + 2))).toNat

end

end A147058.P10397429374210572057

/-!
# A147059: Number of n X n binary arrays with all ones connected only in a 01010-11111 pattern in any orientation.

The programs for A147059, there is no canonical definition to state claims against.
-/

/-! ## A147059.P9044575232611986362

`A147061(2*(n+2))`
-/

namespace A147059.P9044575232611986362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147061 (2 * (n + 2))

end

end A147059.P9044575232611986362

/-! ## A147059.P4441548043503816356

`A147061(A325038(n+1))/A147072(n+1)`
-/

namespace A147059.P4441548043503816356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147061 (A325038 (n + 1)).toNat : ℚ) / (A147072 (n + 1) : ℚ)

end

end A147059.P4441548043503816356

/-! ## A147059.P2187661780507264018

`A147061(A325038(n+1))^A237291(n+1)`
-/

namespace A147059.P2187661780507264018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147061 (A325038 (n + 1)).toNat : ℚ) ^ (A237291 (n + 1) : ℤ)

end

end A147059.P2187661780507264018

/-! ## A147059.P1223942288271947436

`A147061(A325038(n+1))^A147072(n+2)`
-/

namespace A147059.P1223942288271947436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147061 (A325038 (n + 1)).toNat : ℚ) ^ (A147072 (n + 2) : ℤ)

end

end A147059.P1223942288271947436

/-! ## A147059.P15258182117491999393

`A147061(A325038(n+1))%A299049(n+1)`
-/

namespace A147059.P15258182117491999393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147061 (A325038 (n + 1)).toNat) (A299049 (n + 1))

end

end A147059.P15258182117491999393

/-!
# A147061: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 01010-11111 pattern in any orientation.

The programs for A147061, there is no canonical definition to state claims against.
-/

/-! ## A147061.P571313693786421489

`A147225(C(round(8*n/7), n))`
-/

namespace A147061.P571313693786421489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147225 (Nat.choose (SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))).toNat n)

end

end A147061.P571313693786421489

/-! ## A147061.P15322799421838899369

`A147225(n+1)^a(n-1)` with `a(0)=1`
-/

namespace A147061.P15322799421838899369
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A147225 (n + 1) : ℝ) ^ (a (n - 1))

end

end A147061.P15322799421838899369

/-! ## A147061.P3594426663356802327

`A147225(A043316(n+1))`
-/

namespace A147061.P3594426663356802327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147225 (A043316 (n + 1)).toNat

end

end A147061.P3594426663356802327

/-! ## A147061.P11030566504466953953

`A147225(A044913(n+1))`
-/

namespace A147061.P11030566504466953953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147225 (A044913 (n + 1)).toNat

end

end A147061.P11030566504466953953

/-! ## A147061.P2191209729275510064

`A147225(A049872(n+1))`
-/

namespace A147061.P2191209729275510064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147225 (A049872 (n + 1)).toNat

end

end A147061.P2191209729275510064

/-!
# A147062: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 01010-11111 pattern in any orientation.

The programs for A147062, there is no canonical definition to state claims against.
-/

/-! ## A147062.P2786479879095646792

`A147064(2*(n+2))`
-/

namespace A147062.P2786479879095646792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147064 (2 * (n + 2))

end

end A147062.P2786479879095646792

/-! ## A147062.P17773653435428046089

`A147064(A325038(n+1))/A147072(n+1)`
-/

namespace A147062.P17773653435428046089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147064 (A325038 (n + 1)).toNat : ℚ) / (A147072 (n + 1) : ℚ)

end

end A147062.P17773653435428046089

/-! ## A147062.P2478077033985721092

`A147064(A325038(n+1))^A147072(n+2)`
-/

namespace A147062.P2478077033985721092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147064 (A325038 (n + 1)).toNat : ℚ) ^ (A147072 (n + 2) : ℤ)

end

end A147062.P2478077033985721092

/-! ## A147062.P4768959210915420817

`A147064(A325038(n+1))%A187058(n+3)`
-/

namespace A147062.P4768959210915420817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147064 (A325038 (n + 1)).toNat) (A187058 (n + 3))

end

end A147062.P4768959210915420817

/-! ## A147062.P3480446406390742145

`or(n%2, A261585(A279551(n)))`
-/

namespace A147062.P3480446406390742145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A261585 (A279551 n).toNat)

end

end A147062.P3480446406390742145

/-!
# A147063: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 01010-11111 pattern in any orientation.

The programs for A147063, there is no canonical definition to state claims against.
-/

/-! ## A147063.P4704039808133023453

`or(A067169(A003178(n)), A147227(n+1))`
-/

namespace A147063.P4704039808133023453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067169 ((A003178 n).toNat + 11)) (A147227 (n + 1))

end

end A147063.P4704039808133023453

/-! ## A147063.P6579156285645137688

`A147364(n+1)+A051777(A147057(n+1))`
-/

namespace A147063.P6579156285645137688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147364 (n + 1) + A051777 (A147057 (n + 1)).toNat

end

end A147063.P6579156285645137688

/-! ## A147063.P18367486835123697580

`A120951(A147227(n+1))`
-/

namespace A147063.P18367486835123697580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120951 (A147227 (n + 1)).toNat

end

end A147063.P18367486835123697580

/-! ## A147063.P96881557896982308

`A120951(A147364(n+1))`
-/

namespace A147063.P96881557896982308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120951 (A147364 (n + 1)).toNat

end

end A147063.P96881557896982308

/-! ## A147063.P10014679716428947134

`A130696(A147227(n+1)+1)`
-/

namespace A147063.P10014679716428947134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A147227 (n + 1) + 1).toNat

end

end A147063.P10014679716428947134

/-!
# A147064: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 01010-11111 pattern in any orientation.

The programs for A147064, there is no canonical definition to state claims against.
-/

/-! ## A147064.P13311554677145504370

`A147365(A076084(n+1))`
-/

namespace A147064.P13311554677145504370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147365 (A076084 (n + 1)).toNat

end

end A147064.P13311554677145504370

/-! ## A147064.P10713372815272953824

`A115060(A147365(n+1))`
-/

namespace A147064.P10713372815272953824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A147365 (n + 1)).toNat

end

end A147064.P10713372815272953824

/-! ## A147064.P1619363351073056415

`A147365(A151764(n+1))`
-/

namespace A147064.P1619363351073056415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147365 (A151764 (n + 1)).toNat

end

end A147064.P1619363351073056415

/-! ## A147064.P15702753568456929876

`A147365(A285054(n+1))`
-/

namespace A147064.P15702753568456929876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147365 (A285054 (n + 1)).toNat

end

end A147064.P15702753568456929876

/-! ## A147064.P7129064064016493852

`A147365(A023771(n+1)+1)`
-/

namespace A147064.P7129064064016493852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147365 (A023771 (n + 1) + 1).toNat

end

end A147064.P7129064064016493852

/-!
# A147067: Number of n X n binary arrays with all ones connected only in a 10000-11111-00001 pattern in any orientation.

The programs for A147067, there is no canonical definition to state claims against.
-/

/-! ## A147067.P11362286268937876303

`A147069(2*(n+2))`
-/

namespace A147067.P11362286268937876303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147069 (2 * (n + 2))

end

end A147067.P11362286268937876303

/-! ## A147067.P7425794450880183919

`or(1, A147069(A325038(n+1)))`
-/

namespace A147067.P7425794450880183919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147069 (A325038 (n + 1)).toNat)

end

end A147067.P7425794450880183919

/-! ## A147067.P13850567684377493381

`A147069(A325038(n+1))/A147072(n+1)`
-/

namespace A147067.P13850567684377493381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147069 (A325038 (n + 1)).toNat : ℚ) / (A147072 (n + 1) : ℚ)

end

end A147067.P13850567684377493381

/-! ## A147067.P10730684290564526914

`A147069(A325038(n+1))^A147072(n+2)`
-/

namespace A147067.P10730684290564526914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147069 (A325038 (n + 1)).toNat : ℚ) ^ (A147072 (n + 2) : ℤ)

end

end A147067.P10730684290564526914

/-! ## A147067.P10845069338541800461

`A147069(A325038(n+1))%A299048(n+1)`
-/

namespace A147067.P10845069338541800461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147069 (A325038 (n + 1)).toNat) (A299048 (n + 1))

end

end A147067.P10845069338541800461

/-!
# A147069: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 10000-11111-00001 pattern in any orientation.

The programs for A147069, there is no canonical definition to state claims against.
-/

/-! ## A147069.P7104674967861012772

`A147067(A065648(2*(round((n-1)/2)+2)))`
-/

namespace A147069.P7104674967861012772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147067 (A065648 (2 * (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2)).toNat).toNat

end

end A147069.P7104674967861012772

/-! ## A147069.P14846879246541685309

`gcd(65, A005117(∏[gcd(1-n, n%2)]))`
-/

namespace A147069.P14846879246541685309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 65 (A005117 (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A147069.P14846879246541685309

/-! ## A147069.P2295182710370311171

`A102800(A147187(n+1))`
-/

namespace A147069.P2295182710370311171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (A147187 (n + 1)).toNat

end

end A147069.P2295182710370311171

/-! ## A147069.P16298788139752247550

`A108376(A147378(n+1))`
-/

namespace A147069.P16298788139752247550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108376 (A147378 (n + 1)).toNat

end

end A147069.P16298788139752247550

/-! ## A147069.P2541201062024267329

`A114886(A147013(n+1))`
-/

namespace A147069.P2541201062024267329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (A147013 (n + 1)).toNat

end

end A147069.P2541201062024267329

/-!
# A147070: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 10000-11111-00001 pattern in any orientation.

The programs for A147070, there is no canonical definition to state claims against.
-/

/-! ## A147070.P16422794485244425183

`A147072(2*n+3)`
-/

namespace A147070.P16422794485244425183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147072 (2 * n + 3)

end

end A147070.P16422794485244425183

/-! ## A147070.P13323006402546899511

`or(1, A147072(A138830(n+1)))`
-/

namespace A147070.P13323006402546899511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147072 (A138830 (n + 1)).toNat)

end

end A147070.P13323006402546899511

/-! ## A147070.P15824818350674990213

`A147072(A138830(n+1))/A147072(n+1)`
-/

namespace A147070.P15824818350674990213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147072 (A138830 (n + 1)).toNat : ℚ) / (A147072 (n + 1) : ℚ)

end

end A147070.P15824818350674990213

/-! ## A147070.P5724870171301636154

`A147072(A138830(n+1))%A000040(2^n)`
-/

namespace A147070.P5724870171301636154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147072 (A138830 (n + 1)).toNat) (A000040 (2 ^ n))

end

end A147070.P5724870171301636154

/-! ## A147070.P5059258916395936122

`A147072(A138830(n+1))^A014963(∑[n+1])`
-/

namespace A147070.P5059258916395936122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147072 (A138830 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A147070.P5059258916395936122

/-!
# A147071: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 10000-11111-00001 pattern in any orientation.

The programs for A147071, there is no canonical definition to state claims against.
-/

/-! ## A147071.P2135858561494256120

`A102705(A146905(n+1))`
-/

namespace A147071.P2135858561494256120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A146905 (n + 1)).toNat

end

end A147071.P2135858561494256120

/-! ## A147071.P12487354590061951193

`filter[A218452(n+3), A100060(#)]`
-/

namespace A147071.P12487354590061951193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218452 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100060 (f1 j).toNat = 1) n)

end

end A147071.P12487354590061951193

/-! ## A147071.P5705448005413548067

`filter[A218452(n+3), A189921(#)]`
-/

namespace A147071.P5705448005413548067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218452 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189921 (f1 j).toNat = 1) n)

end

end A147071.P5705448005413548067

/-! ## A147071.P14285795678759209591

`lt[A103323(A033638(n)), 2*n]-n`
-/

namespace A147071.P14285795678759209591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103323 (A033638 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A147071.P14285795678759209591

/-! ## A147071.P15591987973149398282

`or(A251672(n), A353756(A001006(n)))`
-/

namespace A147071.P15591987973149398282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A251672 n) (A353756 (A001006 n).toNat)

end

end A147071.P15591987973149398282

/-!
# A147073: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 10000-11111-00001 pattern in any orientation.

The programs for A147073, there is no canonical definition to state claims against.
-/

/-! ## A147073.P13013782338851269822

`A113218(A068043(n))`
-/

namespace A147073.P13013782338851269822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113218 (A068043 n).toNat

end

end A147073.P13013782338851269822

/-! ## A147073.P6362163868909541163

`A156724(A369345(n+1))`
-/

namespace A147073.P6362163868909541163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A369345 (n + 1)).toNat

end

end A147073.P6362163868909541163

/-! ## A147073.P14373010676985998287

`A120562(A161715(n)-A007913(n+1))`
-/

namespace A147073.P14373010676985998287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A161715 n - A007913 (n + 1)).toNat

end

end A147073.P14373010676985998287

/-! ## A147073.P16707824510934430419

`A006843(A322298(n+3)+A322283(n))`
-/

namespace A147073.P16707824510934430419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006843 (A322298 (n + 3) + A322283 n).toNat

end

end A147073.P16707824510934430419

/-!
# A147074: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 10000-11111-00001 pattern in any orientation.

The programs for A147074, there is no canonical definition to state claims against.
-/

/-! ## A147074.P9811282495336399564

`A147496(A061219(n+1))-A173451(n+1)`
-/

namespace A147074.P9811282495336399564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147496 (A061219 (n + 1)).toNat - A173451 (n + 1)

end

end A147074.P9811282495336399564

/-!
# A147075: Number of n X n binary arrays with all ones connected only in a 10000-11111-10000 pattern in any orientation.

The programs for A147075, there is no canonical definition to state claims against.
-/

/-! ## A147075.P8420020435822708358

`A147077(2*(n+2))`
-/

namespace A147075.P8420020435822708358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147077 (2 * (n + 2))

end

end A147075.P8420020435822708358

/-! ## A147075.P6837022615618263713

`A147077(A325038(n+1))+A088116(n)`
-/

namespace A147075.P6837022615618263713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147077 (A325038 (n + 1)).toNat + A088116 n

end

end A147075.P6837022615618263713

/-! ## A147075.P14854504992881325335

`A321797(n)+A147077(A325038(n+1))`
-/

namespace A147075.P14854504992881325335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n + A147077 (A325038 (n + 1)).toNat

end

end A147075.P14854504992881325335

/-! ## A147075.P12066109513085287384

`A147077(A325038(n+1))%A016843(n)`
-/

namespace A147075.P12066109513085287384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147077 (A325038 (n + 1)).toNat) (A016843 n)

end

end A147075.P12066109513085287384

/-! ## A147075.P14250096081055191701

`or(A000035(n), A147077(A325038(n+1)))`
-/

namespace A147075.P14250096081055191701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A147077 (A325038 (n + 1)).toNat)

end

end A147075.P14250096081055191701

/-!
# A147076: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 10000-11111-10000 pattern in any orientation.

The programs for A147076, there is no canonical definition to state claims against.
-/

/-! ## A147076.P8176947998446479361

`or(A215861(2*n), A342084(A293994(n)))`
-/

namespace A147076.P8176947998446479361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A215861 (2 * n)) (A342084 (A293994 n).toNat)

end

end A147076.P8176947998446479361

/-! ## A147076.P6078663786523177789

`A146056(n+1)-A028930(A146062(n+1))`
-/

namespace A147076.P6078663786523177789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146056 (n + 1) - A028930 (A146062 (n + 1)).toNat

end

end A147076.P6078663786523177789

/-!
# A147078: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 10000-11111-10000 pattern in any orientation.

The programs for A147078, there is no canonical definition to state claims against.
-/

/-! ## A147078.P14281424660380559762

`A147080(2*(n+2))`
-/

namespace A147078.P14281424660380559762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147080 (2 * (n + 2))

end

end A147078.P14281424660380559762

/-! ## A147078.P1776190267171833021

`or(n%2, A147080(A325038(n+1)))`
-/

namespace A147078.P1776190267171833021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A147080 (A325038 (n + 1)).toNat)

end

end A147078.P1776190267171833021

/-! ## A147078.P16539254023838457144

`A147080(A325038(n+1))%A000051(n)`
-/

namespace A147078.P16539254023838457144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147080 (A325038 (n + 1)).toNat) (A000051 n)

end

end A147078.P16539254023838457144

/-! ## A147078.P13249831397124259156

`A147080(A004277(n+2))%A000051(n)`
-/

namespace A147078.P13249831397124259156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147080 (A004277 (n + 2)).toNat) (A000051 n)

end

end A147078.P13249831397124259156

/-! ## A147078.P4094415090054661978

`or(A000035(n), A147080(A325038(n+1)))`
-/

namespace A147078.P4094415090054661978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A147080 (A325038 (n + 1)).toNat)

end

end A147078.P4094415090054661978

/-!
# A147081: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 10000-11111-10000 pattern in any orientation.

The programs for A147081, there is no canonical definition to state claims against.
-/

/-! ## A147081.P14233457764936741368

`A019568(A363720(n))-A117546(n)`
-/

namespace A147081.P14233457764936741368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019568 (A363720 n).toNat - A117546 n

end

end A147081.P14233457764936741368

/-! ## A147081.P10196854979436769935

`A004736(A213851(n+1)+A001465(n))`
-/

namespace A147081.P10196854979436769935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A213851 (n + 1) + A001465 n).toNat

end

end A147081.P10196854979436769935

/-! ## A147081.P1514506395438462373

`A390551(A005710(n+1)%A358404(2*(n+2)))`
-/

namespace A147081.P1514506395438462373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390551 (Int.tmod (A005710 (n + 1)) (A358404 (2 * (n + 2)))).toNat

end

end A147081.P1514506395438462373

/-!
# A147082: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 10000-11111-10000 pattern in any orientation.

The programs for A147082, there is no canonical definition to state claims against.
-/

/-! ## A147082.P12515768315607120714

`A020986(16*A241465(n+1))`
-/

namespace A147082.P12515768315607120714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 (16 * A241465 (n + 1)).toNat

end

end A147082.P12515768315607120714

/-! ## A147082.P14352267927469659066

`A158405(A029572(n)+A008480(n+1))`
-/

namespace A147082.P14352267927469659066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (A029572 n + A008480 (n + 1)).toNat

end

end A147082.P14352267927469659066

/-! ## A147082.P3439323911675120117

`A347832(A146367(n+4))+A146368(n+1)`
-/

namespace A147082.P3439323911675120117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347832 (A146367 (n + 4)).toNat + A146368 (n + 1)

end

end A147082.P3439323911675120117

/-! ## A147082.P10425267224612632606

`A347832(A146367(n+4))+A146370(2*(n+2))`
-/

namespace A147082.P10425267224612632606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347832 (A146367 (n + 4)).toNat + A146370 (2 * (n + 2))

end

end A147082.P10425267224612632606

/-!
# A147083: Number of n X n binary arrays with all ones connected only in a 10001-11111 pattern in any orientation.

The programs for A147083, there is no canonical definition to state claims against.
-/

/-! ## A147083.P4183762333414469003

`A147085(2*(n+2))`
-/

namespace A147083.P4183762333414469003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147085 (2 * (n + 2))

end

end A147083.P4183762333414469003

/-! ## A147083.P17959021658912005636

`or(1, A147085(A307782(n+1)))`
-/

namespace A147083.P17959021658912005636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147085 (A307782 (n + 1)).toNat)

end

end A147083.P17959021658912005636

/-! ## A147083.P17452589966270685164

`or(1, A147085(A325038(n+1)))`
-/

namespace A147083.P17452589966270685164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147085 (A325038 (n + 1)).toNat)

end

end A147083.P17452589966270685164

/-! ## A147083.P1993431615330830652

`A147085(A307782(n+1))/A139549(n)`
-/

namespace A147083.P1993431615330830652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147085 (A307782 (n + 1)).toNat : ℚ) / (A139549 n : ℚ)

end

end A147083.P1993431615330830652

/-! ## A147083.P11346609064463534062

`lcm(A131554(n), A147085(A307782(n+1)))`
-/

namespace A147083.P11346609064463534062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131554 n) (A147085 (A307782 (n + 1)).toNat)

end

end A147083.P11346609064463534062

/-!
# A147086: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 10001-11111 pattern in any orientation.

The programs for A147086, there is no canonical definition to state claims against.
-/

/-! ## A147086.P16660481314769415427

`A147088(2*(n+2))`
-/

namespace A147086.P16660481314769415427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147088 (2 * (n + 2))

end

end A147086.P16660481314769415427

/-! ## A147086.P8360284318219171620

`or(1, A147088(A325038(n+1)))`
-/

namespace A147086.P8360284318219171620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147088 (A325038 (n + 1)).toNat)

end

end A147086.P8360284318219171620

/-! ## A147086.P15516419090246265433

`A147088(A325038(n+1))%A038009(n)`
-/

namespace A147086.P15516419090246265433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147088 (A325038 (n + 1)).toNat) (A038009 n)

end

end A147086.P15516419090246265433

/-! ## A147086.P1157205234626929150

`A147088(A325038(n+1))/A147072(n+1)`
-/

namespace A147086.P1157205234626929150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147088 (A325038 (n + 1)).toNat : ℚ) / (A147072 (n + 1) : ℚ)

end

end A147086.P1157205234626929150

/-! ## A147086.P3846227583438476675

`A147088(A325038(n+1))^A147072(n+2)`
-/

namespace A147086.P3846227583438476675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147088 (A325038 (n + 1)).toNat : ℚ) ^ (A147072 (n + 2) : ℤ)

end

end A147086.P3846227583438476675

/-!
# A147087: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 10001-11111 pattern in any orientation.

The programs for A147087, there is no canonical definition to state claims against.
-/

/-! ## A147087.P1971747890853966041

`A194966(A147425(n+1))`
-/

namespace A147087.P1971747890853966041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194966 (A147425 (n + 1)).toNat

end

end A147087.P1971747890853966041

/-!
# A147091: Number of n X n binary arrays with all ones connected only in a 1000-1000-1000-1111 pattern in any orientation.

The programs for A147091, there is no canonical definition to state claims against.
-/

/-! ## A147091.P13840753717027697583

`A147093(2*(n+2))`
-/

namespace A147091.P13840753717027697583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147093 (2 * (n + 2))

end

end A147091.P13840753717027697583

/-! ## A147091.P2077480239734221978

`or(1, A147093(A250051(n+1)))`
-/

namespace A147091.P2077480239734221978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147093 (A250051 (n + 1)).toNat)

end

end A147091.P2077480239734221978

/-! ## A147091.P4224896773224829405

`C(A147093(A250051(n+1)), A069292(n+1)²²)`
-/

namespace A147091.P4224896773224829405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A147093 (A250051 (n + 1)).toNat).toNat ((A069292 (n + 1) ^ 2) ^ 2).toNat

end

end A147091.P4224896773224829405

/-!
# A147092: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1000-1000-1000-1111 pattern in any orientation.

The programs for A147092, there is no canonical definition to state claims against.
-/

/-! ## A147092.P6655894122724304630

`A056609(A284349(n)+1)`
-/

namespace A147092.P6655894122724304630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056609 (A284349 n + 1).toNat

end

end A147092.P6655894122724304630

/-! ## A147092.P6631787613049821517

`A318719(A146902(n+1))`
-/

namespace A147092.P6631787613049821517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (A146902 (n + 1)).toNat

end

end A147092.P6631787613049821517

/-! ## A147092.P9905878267787204163

`A307207(A368871(n+1))`
-/

namespace A147092.P9905878267787204163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307207 (A368871 (n + 1)).toNat

end

end A147092.P9905878267787204163

/-! ## A147092.P6174460652466745222

`A307207(A369341(n+1))`
-/

namespace A147092.P6174460652466745222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307207 (A369341 (n + 1)).toNat

end

end A147092.P6174460652466745222

/-! ## A147092.P3263946914714851821

`A051995(A107742(n))^A079684(n)`
-/

namespace A147092.P3263946914714851821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051995 (A107742 n).toNat : ℚ) ^ (A079684 n : ℤ)

end

end A147092.P3263946914714851821

/-!
# A147093: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 1000-1000-1000-1111 pattern in any orientation.

The programs for A147093, there is no canonical definition to state claims against.
-/

/-! ## A147093.P15993217934768633922

`A147091(floor(∑[n/(2*n+1)])+1)`
-/

namespace A147093.P15993217934768633922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 * n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147091 (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1).toNat

end

end A147093.P15993217934768633922

/-! ## A147093.P4235286685636694848

`A147101(A077168(n))`
-/

namespace A147093.P4235286685636694848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147101 (A077168 n).toNat

end

end A147093.P4235286685636694848

/-! ## A147093.P14906810832596760734

`A147101(A032949(n+1))`
-/

namespace A147093.P14906810832596760734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147101 (A032949 (n + 1)).toNat

end

end A147093.P14906810832596760734

/-! ## A147093.P225365489658436365

`A147101(A043319(n+1))`
-/

namespace A147093.P225365489658436365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147101 (A043319 (n + 1)).toNat

end

end A147093.P225365489658436365

/-! ## A147093.P15839544448159791712

`A147101(A044916(n+1))`
-/

namespace A147093.P15839544448159791712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147101 (A044916 (n + 1)).toNat

end

end A147093.P15839544448159791712

/-!
# A147094: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1000-1000-1111 pattern in any orientation.

The programs for A147094, there is no canonical definition to state claims against.
-/

/-! ## A147094.P17522779508864097168

`A147096(2*n+3)`
-/

namespace A147094.P17522779508864097168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147096 (2 * n + 3)

end

end A147094.P17522779508864097168

/-! ## A147094.P12867236418510403952

`or(1, A147096(A250051(n+1)))`
-/

namespace A147094.P12867236418510403952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147096 (A250051 (n + 1)).toNat)

end

end A147094.P12867236418510403952

/-! ## A147094.P12097605254567497351

`gcd(A147096(A250051(n+1)), A169585(n))`
-/

namespace A147094.P12097605254567497351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A147096 (A250051 (n + 1)).toNat) (A169585 n)

end

end A147094.P12097605254567497351

/-! ## A147094.P10649562466343011584

`A147096(A250051(n+1))/A069292(n+1)`
-/

namespace A147094.P10649562466343011584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147096 (A250051 (n + 1)).toNat : ℚ) / (A069292 (n + 1) : ℚ)

end

end A147094.P10649562466343011584

/-! ## A147094.P4178343852609896354

`A147096(A250051(n+1))%A050248(n+1)`
-/

namespace A147094.P4178343852609896354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147096 (A250051 (n + 1)).toNat) (A050248 (n + 1))

end

end A147094.P4178343852609896354

/-!
# A147095: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 1000-1000-1000-1111 pattern in any orientation.

The programs for A147095, there is no canonical definition to state claims against.
-/

/-! ## A147095.P5972511157727370920

`A325119(A328114(n)+A321412(n))`
-/

namespace A147095.P5972511157727370920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325119 (A328114 n + A321412 n).toNat

end

end A147095.P5972511157727370920

/-! ## A147095.P17195092133003493589

`A056813(3^A023894(n))`
-/

namespace A147095.P17195092133003493589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A023894 n : ℤ))).toNat

end

end A147095.P17195092133003493589

/-! ## A147095.P9524008502041120959

`or(1, A054526(A006866(n+4)))`
-/

namespace A147095.P9524008502041120959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A054526 (A006866 (n + 4)).toNat)

end

end A147095.P9524008502041120959

/-! ## A147095.P15672540621116494508

`A006530(∏{p}[A186638(n), #-1])`
-/

namespace A147095.P15672540621116494508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)).toNat

end

end A147095.P15672540621116494508

/-! ## A147095.P10290286087589061050

`or(∑[((n-3)/2)^(n%2)], A293993(A047169(n+1)))`
-/

namespace A147095.P10290286087589061050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 3 : ℚ) / 2) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (A293993 (A047169 (n + 1)).toNat)

end

end A147095.P10290286087589061050

/-!
# A147096: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 1000-1000-1000-1111 pattern in any orientation.

The programs for A147096, there is no canonical definition to state claims against.
-/

/-! ## A147096.P12230518392016439603

`or(1, A232753(A147093(n+1)))`
-/

namespace A147096.P12230518392016439603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232753 (A147093 (n + 1)).toNat)

end

end A147096.P12230518392016439603

/-! ## A147096.P18179765541063437780

`A147301(round(2^round((n-3)/2))+2)`
-/

namespace A147096.P18179765541063437780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147301 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) / 2) : ℤ)) + 2).toNat

end

end A147096.P18179765541063437780

/-! ## A147096.P3646401649169968326

`A069290(∏[A317086(n)])`
-/

namespace A147096.P3646401649169968326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147096.P3646401649169968326

/-! ## A147096.P115200149474924687

`A132197(A146903(n+1))`
-/

namespace A147096.P115200149474924687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132197 (A146903 (n + 1)).toNat

end

end A147096.P115200149474924687

/-! ## A147096.P15332256331742978921

`A132197(A147048(n+1))`
-/

namespace A147096.P15332256331742978921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132197 (A147048 (n + 1)).toNat

end

end A147096.P15332256331742978921

/-!
# A147097: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1000-1000-1111 pattern in any orientation.

The programs for A147097, there is no canonical definition to state claims against.
-/

/-! ## A147097.P1828696479210914711

`A167904(A147017(n+1))`
-/

namespace A147097.P1828696479210914711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167904 (A147017 (n + 1)).toNat

end

end A147097.P1828696479210914711

/-! ## A147097.P13258558597313956373

`A167904(A147025(n+1))`
-/

namespace A147097.P13258558597313956373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167904 (A147025 (n + 1)).toNat

end

end A147097.P13258558597313956373

/-! ## A147097.P5307081349713176908

`A239086(A147351(n+1))+A174615(n)`
-/

namespace A147097.P5307081349713176908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A147351 (n + 1)).toNat + A174615 n

end

end A147097.P5307081349713176908

/-! ## A147097.P3872629043404341039

`A156070(A156098(n+7)+A007590(n))`
-/

namespace A147097.P3872629043404341039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156070 (A156098 (n + 7) + A007590 n).toNat

end

end A147097.P3872629043404341039

/-! ## A147097.P15883153277168779794

`A329420(n+1)%A189395(A006723(n))`
-/

namespace A147097.P15883153277168779794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329420 (n + 1)) (A189395 (A006723 n).toNat)

end

end A147097.P15883153277168779794

/-!
# A147098: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1000-1000-1000-1111 pattern in any orientation.

The programs for A147098, there is no canonical definition to state claims against.
-/

/-! ## A147098.P9653869515616968266

`or(A002635(A000110(n)), A217876(n))`
-/

namespace A147098.P9653869515616968266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002635 (A000110 n).toNat) (A217876 n)

end

end A147098.P9653869515616968266

/-!
# A147099: Number of n X n binary arrays with all ones connected only in a 1000-1000-1100-0111 pattern in any orientation.

The programs for A147099, there is no canonical definition to state claims against.
-/

/-! ## A147099.P11555878354292278955

`A147101(2*(n+2))`
-/

namespace A147099.P11555878354292278955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147101 (2 * (n + 2))

end

end A147099.P11555878354292278955

/-! ## A147099.P5951831725930322260

`or(1, A147101(A144396(n+1)))`
-/

namespace A147099.P5951831725930322260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147101 (A144396 (n + 1)).toNat)

end

end A147099.P5951831725930322260

/-! ## A147099.P12744739501542877679

`A185284(n)+A147101(A144396(n+1))`
-/

namespace A147099.P12744739501542877679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A147101 (A144396 (n + 1)).toNat

end

end A147099.P12744739501542877679

/-! ## A147099.P12640376340964289392

`A147101(A144396(n+1))/A069292(n+1)`
-/

namespace A147099.P12640376340964289392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147101 (A144396 (n + 1)).toNat : ℚ) / (A069292 (n + 1) : ℚ)

end

end A147099.P12640376340964289392

/-! ## A147099.P10207359040196331100

`or(1, A147101(A250051(n+1)))`
-/

namespace A147099.P10207359040196331100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147101 (A250051 (n + 1)).toNat)

end

end A147099.P10207359040196331100

